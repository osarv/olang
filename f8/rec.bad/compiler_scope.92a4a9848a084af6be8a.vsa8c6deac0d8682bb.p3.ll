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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/scope:walked" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fsBody", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:instTree", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:instTree", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fsBody" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:instTree" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/scope:placedRow" = type { %"compiler/source:Span", i64 }
%"compiler/types:DtorWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:SiteInfo" = type { i32, %"compiler/source:Span" }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", %"compiler/scope:instTree", i1, i1, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/typed:DerivedArg" = type { i64, i64, { i64, [2 x i64] } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/scope:verAtom" = type { i64, i64, i64, i64, i64, i64, i1, i64 }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/scope:followItem" = type { { i64, ptr }, %"compiler/scope:fnRec", %"compiler/scope:fnRecs", i32 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/scope:fsRow" = type { i64, { i64, [2 x i64] } }
%"compiler/scope:fsOpen" = type { i32, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/scope:instNode" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:markRead" = type { i64, i64, { i64, [1 x i64] } }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local ptr @compiler_2fscope_2eadapterRecv(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %rv = alloca ptr
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
  br label %bb17
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
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { i32, ptr, i32 }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  store ptr %t31, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_9f0c519cc5cbfc38_501f2fba46fc3fe4)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_a49123b9ad752209_94dfdd7272e659d5)
  unreachable
bb22:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local void @compiler_2fscope_2ecollectFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l48 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/scope:walked", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %l2, !tbaa !23
  %t21 = sext i32 %t19 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t18, i64 %t21)
  br label %bb6
bb6:
  br label %bb32
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t25 = load ptr, ptr %l21, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l21, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 3}
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l22, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t35, i32 0, i32 0
  %t37 = load i32, ptr %t36
  store i32 %t37, ptr %l3, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t41, i32 0, i32 1
  %t43 = load { i64, ptr }, ptr %t42
  store { i64, ptr } %t43, ptr %l4, !tbaa !27
  br label %bb12
bb11:
  br label %bb23
bb12:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr %"compiler/scope:walked", ptr %t45, i32 0, i32 0
  %t48 = load i32, ptr %l3, !tbaa !23
  %t50 = sext i32 %t48 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t47, i64 %t50)
  br label %bb13
bb13:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/scope:walked", ptr %t53, i32 0, i32 13
  %t56 = load i32, ptr %l3, !tbaa !23
  %t58 = sext i32 %t56 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t55, i64 %t58)
  br label %bb14
bb14:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/scope:walked", ptr %t61, i32 0, i32 14
  %t64 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftyped_3aCapture_26__Hbce50ad940bb00a7deeff65a4c93e11e(ptr %v1, ptr %v0, ptr %t63, { i64, ptr } %t64)
  br label %bb15
bb15:
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t68, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t70 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  store i64 %t72, ptr %l7, !tbaa !24
  br label %bb16
bb16:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t82, ptr %l48, !tbaa !27
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr ptr, ptr %t86, i64 %t83
  %t88 = load ptr, ptr %t87, !tbaa !39
  %t92 = getelementptr %"compiler/typed:Capture", ptr %t88, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t93, ptr %t95)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t98 = load i64, ptr %l6, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l6, !tbaa !24
  br label %bb16
bb22:
  br label %bb32
bb23:
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t103 = load ptr, ptr %l57, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t106 = load ptr, ptr %l57, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 3}
  %t109 = icmp eq i64 %t107, 2
  store i1 %t109, ptr %l58, !tbaa !21
  br label %bb25
bb25:
  %t110 = load i1, ptr %l58, !tbaa !21
  br i1 %t110, label %bb26, label %bb27
bb26:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { i32, ptr, i32 }, ptr %t113, i32 0, i32 0
  %t115 = load i32, ptr %t114
  store i32 %t115, ptr %l9, !tbaa !23
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { i32, ptr, i32 }, ptr %t119, i32 0, i32 1
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l10, !tbaa !29
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/scope:walked", ptr %t123, i32 0, i32 0
  %t126 = load i32, ptr %l9, !tbaa !23
  %t128 = sext i32 %t126 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t125, i64 %t128)
  br label %bb29
bb29:
  %t131 = load ptr, ptr %l10, !tbaa !29
  %t133 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t131, ptr %t133)
  br label %bb30
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_c53cc50814d3a50f_a9e24a9fc415868b)
  unreachable
bb32:
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 26
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

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eFoldStats(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %l18 = alloca i32
  %l21 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l54 = alloca %"compiler/typed:Plan"
  %l56 = alloca %"compiler/typed:Plan"
  %l62 = alloca i64
  %l65 = alloca i64
  %l86 = alloca %"compiler/typed:Plan"
  %l88 = alloca %"compiler/typed:Plan"
  %l89 = alloca { i64, ptr }
  %l98 = alloca i1
  %l105 = alloca i64
  %l108 = alloca i64
  %l110 = alloca i1
  %l115 = alloca %"compiler/typed:BlockInfo"
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t67 = alloca %"compiler/typed:Plan", align 8
  %t70 = alloca %"compiler/typed:Plan", align 8
  %t127 = alloca %"compiler/typed:Plan", align 8
  %t130 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 2
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load i64, ptr %l21, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l28, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l28, !tbaa !24
  store i64 %t33, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l25, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb53
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l49
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l49, !tbaa !29
  store ptr %t60, ptr %l9, !tbaa !29
  %t61 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t61, ptr %l50
  br label %bb13
bb13:
  %t62 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t62, ptr %l10
  store %olang.scope zeroinitializer, ptr %s3
  store i64 0, ptr %l11, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 2
  %t66 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t67, ptr %v0, ptr %v0, ptr %t65, i64 %t66)
  call void @llvm.memmove.p0.p0.i64(ptr %l54, ptr %t67, i64 584, i1 false)
  br label %bb14
bb14:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t70, ptr %s3, ptr %l54)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t70, i64 584, i1 false)
  br label %bb15
bb15:
  %t72 = getelementptr %"compiler/typed:Plan", ptr %l56, i32 0, i32 0
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t77 = load i64, ptr %l12, !tbaa !24
  %t78 = load i64, ptr %l11, !tbaa !24
  %t81 = icmp sgt i64 %t77, %t78
  br i1 %t81, label %bb16, label %bb17
bb16:
  %t83 = load i64, ptr %l13, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb21
bb18:
  %t87 = load i64, ptr %l12, !tbaa !24
  %t88 = load i64, ptr %l11, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t92 = load i64, ptr %l13, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l13, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  store i64 %t101, ptr %l65, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb20
bb20:
  %t103 = load i64, ptr %l65, !tbaa !24
  store i64 %t103, ptr %l62, !tbaa !24
  br label %bb21
bb21:
  %t104 = load i64, ptr %l62, !tbaa !24
  store i64 %t104, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t105 = load i64, ptr %l15, !tbaa !24
  %t106 = load i64, ptr %l14, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb51
bb24:
  br label %bb25
bb25:
  %t113 = load i64, ptr %l11, !tbaa !24
  %t114 = load i64, ptr %l15, !tbaa !24
  %t115 = load i64, ptr %l13, !tbaa !24
  %t118 = mul i64 %t114, %t115
  %t121 = add i64 %t113, %t118
  store i64 %t121, ptr %l16, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %t123, i32 0, i32 2
  %t126 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t127, ptr %v0, ptr %v0, ptr %t125, i64 %t126)
  call void @llvm.memmove.p0.p0.i64(ptr %l86, ptr %t127, i64 584, i1 false)
  br label %bb26
bb26:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t130, ptr %s4, ptr %l86)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %t130, i64 584, i1 false)
  br label %bb27
bb27:
  %t132 = getelementptr %"compiler/typed:Plan", ptr %l88, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l89, !tbaa !27
  %t134 = load i64, ptr %l16, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, [2 x i64] }, ptr %t137, i64 %t134
  %t139 = load { i64, [2 x i64] }, ptr %t138
  store { i64, [2 x i64] } %t139, ptr %l17
  %t141 = load { i64, [2 x i64] }, ptr %l17
  %t143 = extractvalue { i64, [2 x i64] } %t141, 0
  %t144 = icmp eq i64 %t143, 1
  br i1 %t144, label %bb28, label %bb29
bb28:
  %t146 = getelementptr { i64, [2 x i64] }, ptr %l17, i32 0, i32 1
  %t147 = getelementptr { i32 }, ptr %t146, i32 0, i32 0
  %t148 = load i32, ptr %t147
  store i32 %t148, ptr %l18, !tbaa !23
  br label %bb30
bb29:
  br label %bb44
bb30:
  %t150 = load i32, ptr %l18, !tbaa !23
  %t152 = sext i32 %t150 to i64
  %t155 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s2, ptr %l10, i64 %t152)
  store i1 %t155, ptr %l98
  br label %bb31
bb31:
  %t156 = load i1, ptr %l98, !tbaa !21
  br i1 %t156, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s4)
  br label %bb50
bb33:
  br label %bb34
bb34:
  %t157 = load i32, ptr %l18, !tbaa !23
  %t159 = sext i32 %t157 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s2, ptr %l10, i64 %t159, i1 true)
  br label %bb35
bb35:
  %t162 = load i64, ptr %l2, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l2, !tbaa !24
  %t166 = load i32, ptr %l18, !tbaa !23
  %t168 = sext i32 %t166 to i64
  store i64 %t168, ptr %l105, !tbaa !24
  %t169 = load ptr, ptr %l9, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Body", ptr %t169, i32 0, i32 8
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %t171)
  store i64 %t173, ptr %l108
  br label %bb36
bb36:
  %t174 = load i64, ptr %l105, !tbaa !24
  %t175 = load i64, ptr %l108, !tbaa !24
  %t176 = icmp slt i64 %t174, %t175
  br i1 %t176, label %bb37, label %bb38
bb37:
  %t178 = load ptr, ptr %l9, !tbaa !29
  %t180 = getelementptr %"compiler/typed:Body", ptr %t178, i32 0, i32 8
  %t181 = load i32, ptr %l18, !tbaa !23
  %t183 = sext i32 %t181 to i64
  %t186 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t180, i64 %t183)
  store %"compiler/typed:BlockInfo" %t186, ptr %l115
  br label %bb39
bb38:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb40
bb39:
  %t187 = getelementptr %"compiler/typed:BlockInfo", ptr %l115, i32 0, i32 1
  %t188 = load i32, ptr %t187, !range !{i32 0, i32 10}
  %t190 = trunc i64 1 to i32
  %t191 = icmp eq i32 %t188, %t190
  store i1 %t191, ptr %l110, !tbaa !21
  br label %bb40
bb40:
  %t193 = load i1, ptr %l110, !tbaa !21
  br i1 %t193, label %bb41, label %bb42
bb41:
  %t194 = load i64, ptr %l1, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l1, !tbaa !24
  br label %bb43
bb42:
  br label %bb43
bb43:
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_c4dcb08f8057e6b4_879f1d415f5e90f0)
  unreachable
bb49:
  call void @__olang_scope_close(ptr %s4)
  br label %bb50
bb50:
  %t198 = load i64, ptr %l15, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l15, !tbaa !24
  br label %bb22
bb51:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb52
bb52:
  %t202 = load i64, ptr %l7, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l7, !tbaa !24
  br label %bb8
bb53:
  %t206 = load i64, ptr %l2, !tbaa !24
  %t207 = load i64, ptr %l1, !tbaa !24
  %t208 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t209 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t211 = call i64 @__olang_fmt_i64(ptr null, i64 %t206)
  %t212 = add i64 %t209, %t211
  %t213 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t217 = call i64 @__olang_fmt_i64(ptr null, i64 %t207)
  %t218 = add i64 %t215, %t217
  %t219 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t218)
  call void @olang_textcopy(ptr %t219, ptr %t208, i64 %t209)
  %t220 = getelementptr i8, ptr %t219, i64 %t209
  %t221 = call i64 @__olang_fmt_i64(ptr %t220, i64 %t206)
  %t222 = getelementptr i8, ptr %t220, i64 %t211
  call void @olang_textcopy(ptr %t222, ptr %t213, i64 %t214)
  %t223 = getelementptr i8, ptr %t222, i64 %t214
  %t224 = call i64 @__olang_fmt_i64(ptr %t223, i64 %t207)
  %t225 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t219, 1
  store { i64, ptr } %t226, ptr %rv
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 263
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l13, !tbaa !27
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
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t89 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = add i64 %t88, %t91
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l42, !tbaa !27
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 157
  %t5 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H135723289cd67fccd962ee530d90cf81(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 164
  %t10 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l6
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 159
  %t15 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l9
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 158
  %t20 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H135723289cd67fccd962ee530d90cf81(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l12
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 163
  %t25 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l15
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 232
  %t30 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hb48ebc0aec2f1394686d895000e23a7c(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l18
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 233
  %t35 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l21
  br label %bb7
bb7:
  %t36 = load i64, ptr %l18, !tbaa !24
  %t37 = load i64, ptr %l21, !tbaa !24
  %t38 = sub i64 %t36, %t37
  store i64 %t38, ptr %l22, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 233
  %t43 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l25
  br label %bb8
bb8:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 216
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = call i64 @__olang_fmt_i64(ptr null, i64 %t50)
  %t52 = add i64 %t49, %t51
  %t53 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t58 = add i64 %t55, %t57
  %t59 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = call i64 @__olang_fmt_i64(ptr null, i64 %t62)
  %t64 = add i64 %t61, %t63
  %t65 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = load i64, ptr %l12, !tbaa !24
  %t69 = call i64 @__olang_fmt_i64(ptr null, i64 %t68)
  %t70 = add i64 %t67, %t69
  %t71 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t74 = load i64, ptr %l15, !tbaa !24
  %t75 = call i64 @__olang_fmt_i64(ptr null, i64 %t74)
  %t76 = add i64 %t73, %t75
  %t77 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = load i64, ptr %l22, !tbaa !24
  %t81 = call i64 @__olang_fmt_i64(ptr null, i64 %t80)
  %t82 = add i64 %t79, %t81
  %t83 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = load i64, ptr %l25, !tbaa !24
  %t87 = call i64 @__olang_fmt_i64(ptr null, i64 %t86)
  %t88 = add i64 %t85, %t87
  %t89 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t93 = call i64 @__olang_fmt_i64(ptr null, i64 %t47)
  %t94 = add i64 %t91, %t93
  %t95 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
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

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ePlacements(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i64
  %l5 = alloca %"compiler/scope:placedRow"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"compiler/types:DtorWalk"
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"compiler/scope:Placement"
  %l17 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l18 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l23 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l25 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l26 = alloca i32
  %l28 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i64
  %l36 = alloca i64
  %l38 = alloca i1
  %l42 = alloca i1
  %l44 = alloca %"compiler/scope:placedRow"
  %l48 = alloca %"compiler/scope:placedRow"
  %l49 = alloca i32
  %l53 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l73 = alloca i64
  %l78 = alloca ptr
  %l82 = alloca %"compiler/typed:Local"
  %l84 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l92 = alloca %"compiler/typed:Local"
  %l94 = alloca { i64, [2 x i64] }
  %l98 = alloca { i64, [2 x i64] }
  %l99 = alloca i32
  %l104 = alloca %"compiler/types:DtorWalk"
  %l105 = alloca ptr
  %l109 = alloca %"compiler/typed:Local"
  %l111 = alloca i1
  %l112 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l118 = alloca i64
  %l121 = alloca i64
  %l126 = alloca %"compiler/typed:SiteInfo"
  %l128 = alloca { i64, [2 x i64] }
  %l130 = alloca ptr
  %l133 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l134 = alloca { i64, [2 x i64] }
  %l135 = alloca i32
  %l137 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l145 = alloca i64
  %l156 = alloca %"compiler/scope:Placement"
  %l158 = alloca %"compiler/scope:Placement"
  %l164 = alloca { i64, ptr }
  %l165 = alloca %"compiler/scope:Placement"
  %l167 = alloca %"compiler/scope:Placement"
  %l169 = alloca i1
  %l171 = alloca ptr
  %l172 = alloca %"compiler/scope:Placement"
  %l174 = alloca %"compiler/scope:Placement"
  %l177 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l178 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l180 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l181 = alloca i32
  %l183 = alloca i1
  %l186 = alloca i1
  %l187 = alloca i64
  %l190 = alloca i64
  %l192 = alloca i1
  %l196 = alloca i1
  %l198 = alloca ptr
  %l199 = alloca %"compiler/scope:Placement"
  %l203 = alloca %"compiler/scope:Placement"
  %l204 = alloca i32
  %l206 = alloca %"compiler/scope:Placement"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t100 = alloca { i64, [2 x i64] }, align 8
  %t205 = alloca { i64, [2 x i64] }, align 8
  %t270 = alloca { i64, [2 x i64] }, align 8
  %t380 = alloca { %"compiler/scope:Placement", ptr }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 224
  %t9 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H8375087ffb2db44d2139bbf5f3813fdb(ptr %v0, ptr %v0, ptr %t7)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t9, ptr %l22
  br label %bb2
bb2:
  %t10 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l22
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t10, ptr %l2
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t12 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H43c13732de188ecff49d86731966d00e(ptr %v0, ptr %l2)
  %t13 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t12, 1
  %t14 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t12, 0
  store i32 %t14, ptr %l26
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb5, label %ok.16, !prof !99
ok.16:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t13, ptr %l25
  br label %bb4
bb4:
  %t17 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l25
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t17, ptr %l23
  br label %bb7
bb5:
  %t18 = load i32, ptr %l26, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  store i1 %t21, ptr %l28, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb91
bb7:
  %t22 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l23
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t22, ptr %l3
  %t23 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 0
  %t24 = load i64, ptr %t23, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = icmp slt i64 %t26, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb11
bb9:
  %t30 = load i64, ptr %l4, !tbaa !24
  store i64 %t30, ptr %l33, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 1
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l36
  br label %bb10
bb10:
  %t36 = load i64, ptr %l33, !tbaa !24
  %t37 = load i64, ptr %l36, !tbaa !24
  %t38 = icmp sge i64 %t36, %t37
  store i1 %t38, ptr %l32, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l32, !tbaa !21
  br i1 %t40, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb15
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 12
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t43, i64 %t44)
  store i1 %t47, ptr %l42
  br label %bb14
bb14:
  %t48 = load i1, ptr %l42, !tbaa !21
  %t49 = xor i1 %t48, true
  store i1 %t49, ptr %l38, !tbaa !21
  br label %bb15
bb15:
  %t51 = load i1, ptr %l38, !tbaa !21
  br i1 %t51, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb90
bb17:
  br label %bb18
bb18:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 224
  %t55 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t58 = call { i32, %"compiler/scope:placedRow" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0cf9aca3cf50919d11cd2cbbeb8bc986(ptr %v0, ptr %t54, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t55)
  %t59 = extractvalue { i32, %"compiler/scope:placedRow" } %t58, 1
  %t60 = extractvalue { i32, %"compiler/scope:placedRow" } %t58, 0
  store i32 %t60, ptr %l49
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb20, label %ok.62, !prof !99
ok.62:
  store %"compiler/scope:placedRow" %t59, ptr %l48
  br label %bb19
bb19:
  %t63 = load %"compiler/scope:placedRow", ptr %l48
  store %"compiler/scope:placedRow" %t63, ptr %l44
  br label %bb22
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb90
bb22:
  %t64 = load %"compiler/scope:placedRow", ptr %l44
  store %"compiler/scope:placedRow" %t64, ptr %l5
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 1
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l53
  br label %bb23
bb23:
  %t72 = load ptr, ptr %l53, !tbaa !29
  store ptr %t72, ptr %l6, !tbaa !29
  %t73 = getelementptr %"compiler/scope:placedRow", ptr %l5, i32 0, i32 1
  %t74 = load i64, ptr %t73, !tbaa !24
  store i64 %t74, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr @G_2ecompiler_2fscope_2ePlacePart, !tbaa !24
  %t80 = icmp eq i64 %t76, %t77
  br i1 %t80, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l55, !tbaa !27
  br label %bb40
bb27:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceCapture, !tbaa !24
  %t86 = icmp eq i64 %t82, %t83
  br i1 %t86, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l55, !tbaa !27
  br label %bb40
bb31:
  %t88 = load i64, ptr %l7, !tbaa !24
  %t89 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceTail, !tbaa !24
  %t92 = icmp eq i64 %t88, %t89
  br i1 %t92, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l55, !tbaa !27
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l55, !tbaa !27
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_347839398561f9fa_f8990cdcbc0ed18e)
  unreachable
bb40:
  %t94 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t94, ptr %l8, !tbaa !27
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l65, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t95, ptr %l9, !tbaa !27
  %t97 = getelementptr %"compiler/scope:placedRow", ptr %l5, i32 0, i32 0
  %t98 = load %"compiler/source:Span", ptr %t97
  store %"compiler/source:Span" %t98, ptr %l10
  store { i64, [2 x i64] } zeroinitializer, ptr %t100
  %t101 = getelementptr { i64, [2 x i64] }, ptr %t100, i32 0, i32 0
  store i64 0, ptr %t101
  %t102 = load { i64, [2 x i64] }, ptr %t100
  store { i64, [2 x i64] } %t102, ptr %l11
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l69, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t104, ptr %l12, !tbaa !27
  %t106 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  %t109 = icmp sge i64 %t107, 0
  br i1 %t109, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s9
  %t111 = ptrtoint ptr %s2 to i64
  store i64 %t111, ptr %l73, !tbaa !24
  %t112 = load i1, ptr @olang_2esole_2ecompiler__2fscope__2ecompiler__2fscope__3aScoper__2ePlacements_2elocal_2e9
  br i1 %t112, label %bb43, label %bb44
bb42:
  store %olang.scope zeroinitializer, ptr %s12
  %t114 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t115 = load i64, ptr %t114, !tbaa !24
  %t117 = sub i64 -1, %t115
  store i64 %t117, ptr %l14, !tbaa !24
  %t119 = load i64, ptr %l14, !tbaa !24
  store i64 %t119, ptr %l118, !tbaa !24
  %t120 = load ptr, ptr %l6, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Body", ptr %t120, i32 0, i32 9
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eLen_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t122)
  store i64 %t124, ptr %l121
  br label %bb64
bb43:
  %t125 = call ptr @__olang_region_make(ptr %s2)
  %t126 = ptrtoint ptr %t125 to i64
  store i64 %t126, ptr %l73, !tbaa !24
  br label %bb44
bb44:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/scope:Scoper", ptr %t127, i32 0, i32 0
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 0
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/load:Loader", ptr %t133, i32 0, i32 3
  %t136 = load ptr, ptr %t135, !tbaa !29
  store ptr %t136, ptr %l78, !tbaa !29
  %t137 = load ptr, ptr %l6, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Body", ptr %t137, i32 0, i32 7
  %t140 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t141 = load i64, ptr %t140, !tbaa !24
  %t144 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t139, i64 %t141)
  store %"compiler/typed:Local" %t144, ptr %l82
  br label %bb45
bb45:
  %t145 = getelementptr %"compiler/typed:Local", ptr %l82, i32 0, i32 0
  %t146 = load i32, ptr %t145, !tbaa !23
  %t147 = load ptr, ptr %l78, !tbaa !29
  %t149 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s9, ptr %t147, i32 %t146)
  store { i64, ptr } %t149, ptr %l84
  br label %bb46
bb46:
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t151 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t152 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = add i64 %t151, %t154
  %t156 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t158 = add i64 %t155, %t157
  %t159 = load i64, ptr %l73
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = call ptr @__olang_scope_alloc(ptr %t160, i64 %t158)
  call void @olang_textcopy(ptr %t161, ptr %t150, i64 %t151)
  %t162 = getelementptr i8, ptr %t161, i64 %t151
  call void @olang_textcopy(ptr %t162, ptr %t153, i64 %t154)
  %t163 = getelementptr i8, ptr %t162, i64 %t154
  call void @olang_textcopy(ptr %t163, ptr %t156, i64 %t157)
  %t164 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t161, 1
  store { i64, ptr } %t165, ptr %l85, !tbaa !27
  %t166 = load i1, ptr @olang_2esole_2ecompiler__2fscope__2ecompiler__2fscope__3aScoper__2ePlacements_2elocal_2e9
  br i1 %t166, label %bb47, label %bb48
bb47:
  %t168 = load i64, ptr %l73
  %t169 = inttoptr i64 %t168 to ptr
  %t170 = load { i64, ptr }, ptr %l85
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_region_or(ptr %t171, ptr null)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr null
  %t175 = icmp eq ptr %t174, %t169
  call void @__olang_region_settle(ptr %t169, i1 %t175)
  br label %bb48
bb48:
  %t176 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t176, ptr %l87, !tbaa !27
  %t177 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t177, ptr %l9, !tbaa !27
  %t178 = load i1, ptr @olang_2esole_2ecompiler__2fscope__2ecompiler__2fscope__3aScoper__2ePlacements_2elocal_2e9
  br i1 %t178, label %bb49, label %bb50
bb49:
  %t180 = load { i64, ptr }, ptr %l87
  %t181 = extractvalue { i64, ptr } %t180, 1
  call void @__olang_region_release(ptr %t181)
  store { i64, ptr } zeroinitializer, ptr %l87
  br label %bb50
bb50:
  %t182 = load ptr, ptr %l6, !tbaa !29
  %t184 = getelementptr %"compiler/typed:Body", ptr %t182, i32 0, i32 7
  %t185 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t186 = load i64, ptr %t185, !tbaa !24
  %t189 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t184, i64 %t186)
  store %"compiler/typed:Local" %t189, ptr %l92
  br label %bb51
bb51:
  %t190 = getelementptr %"compiler/typed:Local", ptr %l92, i32 0, i32 1
  %t191 = load %"compiler/source:Span", ptr %t190
  store %"compiler/source:Span" %t191, ptr %l10
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/scope:Scoper", ptr %t193, i32 0, i32 157
  %t196 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t199 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t195, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t196)
  %t200 = extractvalue { i32, { i64, [2 x i64] } } %t199, 1
  %t201 = extractvalue { i32, { i64, [2 x i64] } } %t199, 0
  store i32 %t201, ptr %l99
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb53, label %ok.203, !prof !99
ok.203:
  store { i64, [2 x i64] } %t200, ptr %l98
  br label %bb52
bb52:
  %t204 = load { i64, [2 x i64] }, ptr %l98
  store { i64, [2 x i64] } %t204, ptr %l94
  br label %bb55
bb53:
  br label %bb54
bb54:
  store { i64, [2 x i64] } zeroinitializer, ptr %t205
  %t206 = getelementptr { i64, [2 x i64] }, ptr %t205, i32 0, i32 0
  store i64 0, ptr %t206
  %t207 = load { i64, [2 x i64] }, ptr %t205
  store { i64, [2 x i64] } %t207, ptr %l94
  br label %bb55
bb55:
  %t209 = load { i64, [2 x i64] }, ptr %l94
  store { i64, [2 x i64] } %t209, ptr %l11
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/scope:Scoper", ptr %t210, i32 0, i32 0
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = getelementptr %"compiler/generic:Program", ptr %t213, i32 0, i32 2
  %t217 = call %"compiler/types:DtorWalk" @compiler_2ftypes_3aDtorWalk_2ector(ptr %v0, ptr %s9, ptr %t215)
  store %"compiler/types:DtorWalk" %t217, ptr %l104
  br label %bb56
bb56:
  %t218 = load %"compiler/types:DtorWalk", ptr %l104
  store %"compiler/types:DtorWalk" %t218, ptr %l13
  store ptr %l13, ptr %l105, !tbaa !29
  %t219 = load ptr, ptr %l6, !tbaa !29
  %t221 = getelementptr %"compiler/typed:Body", ptr %t219, i32 0, i32 7
  %t222 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t223 = load i64, ptr %t222, !tbaa !24
  %t226 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t221, i64 %t223)
  store %"compiler/typed:Local" %t226, ptr %l109
  br label %bb57
bb57:
  %t227 = getelementptr %"compiler/typed:Local", ptr %l109, i32 0, i32 2
  %t228 = load i32, ptr %t227, !tbaa !23
  %t229 = load ptr, ptr %l105, !tbaa !29
  %t231 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %s9, ptr %v0, ptr %t229, i32 %t228)
  store i1 %t231, ptr %l111
  br label %bb58
bb58:
  %t232 = load i1, ptr %l111, !tbaa !21
  br i1 %t232, label %bb59, label %bb60
bb59:
  store { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l112, !tbaa !27
  %t233 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t234 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t234, ptr %l114, !tbaa !27
  store { i64, ptr } %t233, ptr %l12, !tbaa !27
  %t236 = load i1, ptr @olang_2esole_2ecompiler__2fscope__2ecompiler__2fscope__3aScoper__2ePlacements_2elocal_2e12
  br i1 %t236, label %bb61, label %bb62
bb60:
  br label %bb63
bb61:
  %t238 = load { i64, ptr }, ptr %l114
  %t239 = extractvalue { i64, ptr } %t238, 1
  call void @__olang_region_release(ptr %t239)
  store { i64, ptr } zeroinitializer, ptr %l114
  br label %bb62
bb62:
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s9)
  br label %bb74
bb64:
  %t240 = load i64, ptr %l118, !tbaa !24
  %t241 = load i64, ptr %l121, !tbaa !24
  %t242 = icmp slt i64 %t240, %t241
  br i1 %t242, label %bb65, label %bb66
bb65:
  %t244 = load ptr, ptr %l6, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Body", ptr %t244, i32 0, i32 9
  %t247 = load i64, ptr %l14, !tbaa !24
  %t250 = call %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t246, i64 %t247)
  store %"compiler/typed:SiteInfo" %t250, ptr %l126
  br label %bb67
bb66:
  br label %bb68
bb67:
  %t251 = getelementptr %"compiler/typed:SiteInfo", ptr %l126, i32 0, i32 1
  %t252 = load %"compiler/source:Span", ptr %t251
  store %"compiler/source:Span" %t252, ptr %l10
  br label %bb68
bb68:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/scope:Scoper", ptr %t254, i32 0, i32 158
  store ptr %t256, ptr %l130, !tbaa !29
  %t257 = load i64, ptr %l4, !tbaa !24
  %t258 = load i64, ptr %l14, !tbaa !24
  %t261 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s12, i64 %t257, i64 %t258)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t261, ptr %l133
  br label %bb69
bb69:
  %t262 = load ptr, ptr %l130, !tbaa !29
  %t263 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l133
  %t264 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t262, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t263)
  %t265 = extractvalue { i32, { i64, [2 x i64] } } %t264, 1
  %t266 = extractvalue { i32, { i64, [2 x i64] } } %t264, 0
  store i32 %t266, ptr %l135
  %t267 = icmp ne i32 %t266, 0
  br i1 %t267, label %bb71, label %ok.268, !prof !99
ok.268:
  store { i64, [2 x i64] } %t265, ptr %l134
  br label %bb70
bb70:
  %t269 = load { i64, [2 x i64] }, ptr %l134
  store { i64, [2 x i64] } %t269, ptr %l128
  br label %bb73
bb71:
  br label %bb72
bb72:
  store { i64, [2 x i64] } zeroinitializer, ptr %t270
  %t271 = getelementptr { i64, [2 x i64] }, ptr %t270, i32 0, i32 0
  store i64 0, ptr %t271
  %t272 = load { i64, [2 x i64] }, ptr %t270
  store { i64, [2 x i64] } %t272, ptr %l128
  br label %bb73
bb73:
  %t274 = load { i64, [2 x i64] }, ptr %l128
  store { i64, [2 x i64] } %t274, ptr %l11
  call void @__olang_scope_close(ptr %s12)
  br label %bb74
bb74:
  %t275 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t275, ptr %l137, !tbaa !27
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load i64, ptr %l4, !tbaa !24
  %t278 = load { i64, [2 x i64] }, ptr %l11
  %t282 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplacedScope(ptr %v0, ptr %s2, ptr %t276, i64 %t277, { i64, [2 x i64] } %t278)
  store { i64, ptr } %t282, ptr %l141
  br label %bb75
bb75:
  %t283 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t284 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t285 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t286 = extractvalue { i64, ptr } %t285, 1
  %t287 = extractvalue { i64, ptr } %t285, 0
  %t288 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t289 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t290 = add i64 %t287, %t289
  %t291 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 1
  %t293 = extractvalue { i64, ptr } %t291, 0
  %t294 = add i64 %t290, %t293
  %t295 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t296 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t297 = add i64 %t294, %t296
  %t299 = extractvalue { i64, ptr } %t283, 1
  %t300 = extractvalue { i64, ptr } %t283, 0
  %t301 = add i64 %t297, %t300
  %t303 = extractvalue { i64, ptr } %t284, 1
  %t304 = extractvalue { i64, ptr } %t284, 0
  %t305 = add i64 %t301, %t304
  %t306 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t305)
  call void @olang_textcopy(ptr %t306, ptr %t286, i64 %t287)
  %t307 = getelementptr i8, ptr %t306, i64 %t287
  call void @olang_textcopy(ptr %t307, ptr %t288, i64 %t289)
  %t308 = getelementptr i8, ptr %t307, i64 %t289
  call void @olang_textcopy(ptr %t308, ptr %t292, i64 %t293)
  %t309 = getelementptr i8, ptr %t308, i64 %t293
  call void @olang_textcopy(ptr %t309, ptr %t295, i64 %t296)
  %t310 = getelementptr i8, ptr %t309, i64 %t296
  call void @olang_textcopy(ptr %t310, ptr %t299, i64 %t300)
  %t311 = getelementptr i8, ptr %t310, i64 %t300
  call void @olang_textcopy(ptr %t311, ptr %t303, i64 %t304)
  %t312 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr %t306, 1
  store { i64, ptr } %t313, ptr %l15, !tbaa !27
  %t315 = ptrtoint ptr %s2 to i64
  store i64 %t315, ptr %l145, !tbaa !24
  %t316 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3aPlacement_2e4
  br i1 %t316, label %bb76, label %bb77
bb76:
  %t318 = call ptr @__olang_region_make_part(ptr %s2)
  %t319 = ptrtoint ptr %t318 to i64
  store i64 %t319, ptr %l145, !tbaa !24
  br label %bb77
bb77:
  %t320 = load ptr, ptr %l6, !tbaa !29
  %t322 = getelementptr %"compiler/typed:Body", ptr %t320, i32 0, i32 3
  %t323 = load i64, ptr %t322, !tbaa !24
  %t324 = getelementptr %"compiler/scope:placedRow", ptr %l5, i32 0, i32 0
  %t325 = getelementptr %"compiler/source:Span", ptr %t324, i32 0, i32 0
  %t326 = load i32, ptr %t325, !tbaa !23
  %t328 = sext i32 %t326 to i64
  %t329 = getelementptr %"compiler/scope:placedRow", ptr %l5, i32 0, i32 0
  %t330 = getelementptr %"compiler/source:Span", ptr %t329, i32 0, i32 1
  %t331 = load i32, ptr %t330, !tbaa !23
  %t333 = sext i32 %t331 to i64
  %t334 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t335 = load i32, ptr %t334, !tbaa !23
  %t337 = sext i32 %t335 to i64
  %t338 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t339 = load i64, ptr %l145
  %t340 = inttoptr i64 %t339 to ptr
  %t346 = call %"compiler/scope:Placement" @compiler_2fscope_3aPlacement_2ector(ptr %t340, i64 %t323, i64 %t328, i64 %t333, i64 %t337, { i64, ptr } %t338)
  store %"compiler/scope:Placement" %t346, ptr %l156
  br label %bb78
bb78:
  %t347 = load i64, ptr %l145
  %t348 = inttoptr i64 %t347 to ptr
  %t350 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %t348, ptr %l156)
  store %"compiler/scope:Placement" %t350, ptr %l158
  br label %bb79
bb79:
  %t351 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3aPlacement_2e4
  br i1 %t351, label %bb80, label %bb81
bb80:
  %t353 = load i64, ptr %l145
  %t354 = inttoptr i64 %t353 to ptr
  %t355 = getelementptr %"compiler/scope:Placement", ptr %l158, i32 0, i32 4
  %t356 = load { i64, ptr }, ptr %t355
  %t357 = extractvalue { i64, ptr } %t356, 1
  %t358 = call ptr @__olang_region_or(ptr %t357, ptr null)
  %t359 = call ptr @__olang_region_home(ptr %t358)
  %t360 = icmp ne ptr %t359, null
  %t361 = select i1 %t360, ptr %t359, ptr null
  %t362 = icmp eq ptr %t361, %t354
  call void @__olang_region_settle(ptr %t354, i1 %t362)
  br label %bb81
bb81:
  %t363 = load %"compiler/scope:Placement", ptr %l158
  store %"compiler/scope:Placement" %t363, ptr %l16
  %t364 = getelementptr %"compiler/scope:placedRow", ptr %l5, i32 0, i32 1
  %t365 = load i64, ptr %t364, !tbaa !24
  %t366 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceTail, !tbaa !24
  %t369 = icmp eq i64 %t365, %t366
  %t371 = getelementptr %"compiler/scope:Placement", ptr %l16, i32 0, i32 5
  store i1 %t369, ptr %t371, !tbaa !21
  %t372 = load ptr, ptr %lp1
  %t374 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eView_Hfd31642e5710980eb0ccca6eae09c547(ptr %v1, ptr %v1, ptr %t372)
  store { i64, ptr } %t374, ptr %l164
  br label %bb82
bb82:
  %t375 = load %"compiler/scope:Placement", ptr %l16
  store %"compiler/scope:Placement" %t375, ptr %l165
  %t377 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %s0, ptr %l165)
  store %"compiler/scope:Placement" %t377, ptr %l167
  br label %bb83
bb83:
  %t378 = getelementptr { %"compiler/scope:Placement", ptr }, ptr null, i32 1
  %t379 = ptrtoint ptr %t378 to i64
  %t381 = getelementptr { %"compiler/scope:Placement", ptr }, ptr %t380, i32 0, i32 0
  %t382 = load %"compiler/scope:Placement", ptr %l167
  store %"compiler/scope:Placement" %t382, ptr %t381, !tbaa !28
  call void @__olang_scope_escape(ptr %s2)
  %t383 = getelementptr { %"compiler/scope:Placement", ptr }, ptr %t380, i32 0, i32 1
  store ptr %s2, ptr %t383, !tbaa !28
  %t384 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_26, 0
  %t385 = insertvalue { ptr, ptr } %t384, ptr %t380, 1
  %t386 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t388 = extractvalue { ptr, ptr } %t385, 0
  %t389 = extractvalue { ptr, ptr } %t385, 1
  %t390 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fscope_3aPlacement_3e_2eSome_3ccompiler_2fscope_3aPlacement_2c_20_3f_3e(ptr %v1, ptr %s2, { i64, ptr } %t386, ptr %t388, ptr %t389)
  store i1 %t390, ptr %l169
  br label %bb84
bb84:
  %t391 = load i1, ptr %l169, !tbaa !21
  %t392 = xor i1 %t391, true
  br i1 %t392, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s15
  %t394 = load ptr, ptr %lp1
  store ptr %t394, ptr %l171, !tbaa !29
  %t395 = load %"compiler/scope:Placement", ptr %l16
  store %"compiler/scope:Placement" %t395, ptr %l172
  %t397 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %s15, ptr %l172)
  store %"compiler/scope:Placement" %t397, ptr %l174
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t398 = load ptr, ptr %l171, !tbaa !29
  %t399 = load %"compiler/scope:Placement", ptr %l174
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2ePush_He23e71a7c6af30775864ddd89edaca69(ptr %v1, ptr %s15, ptr %t398, %"compiler/scope:Placement" %t399)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s15)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s2)
  br label %bb90
bb90:
  br label %bb3
bb91:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/scope:Scoper", ptr %t400, i32 0, i32 33
  %t404 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcd982a7eb283446502b9b6ab8bf79c41(ptr %v0, ptr %v0, ptr %t402)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t404, ptr %l177
  br label %bb92
bb92:
  %t405 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l177
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t405, ptr %l17
  br label %bb93
bb93:
  store %olang.scope zeroinitializer, ptr %s17
  %t407 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H4509341a51d3fed710a11c02e240319c(ptr %v0, ptr %l17)
  %t408 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t407, 1
  %t409 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t407, 0
  store i32 %t409, ptr %l181
  %t410 = icmp ne i32 %t409, 0
  br i1 %t410, label %bb95, label %ok.411, !prof !99
ok.411:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t408, ptr %l180
  br label %bb94
bb94:
  %t412 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l180
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t412, ptr %l178
  br label %bb97
bb95:
  %t413 = load i32, ptr %l181, !tbaa !23
  %t414 = ashr i32 %t413, 16
  %t416 = icmp eq i32 %t414, 1
  store i1 %t416, ptr %l183, !tbaa !21
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s17)
  br label %bb116
bb97:
  %t417 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l178
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t417, ptr %l18
  %t418 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l18, i32 0, i32 0
  %t419 = load i64, ptr %t418, !tbaa !24
  %t421 = icmp slt i64 %t419, 0
  br i1 %t421, label %bb98, label %bb99
bb98:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb101
bb99:
  %t423 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l18, i32 0, i32 0
  %t424 = load i64, ptr %t423, !tbaa !24
  store i64 %t424, ptr %l187, !tbaa !24
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/scope:Scoper", ptr %t425, i32 0, i32 1
  %t429 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t427)
  store i64 %t429, ptr %l190
  br label %bb100
bb100:
  %t430 = load i64, ptr %l187, !tbaa !24
  %t431 = load i64, ptr %l190, !tbaa !24
  %t432 = icmp sge i64 %t430, %t431
  store i1 %t432, ptr %l186, !tbaa !21
  br label %bb101
bb101:
  %t434 = load i1, ptr %l186, !tbaa !21
  br i1 %t434, label %bb102, label %bb103
bb102:
  store i1 true, ptr %l192, !tbaa !21
  br label %bb105
bb103:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = getelementptr %"compiler/scope:Scoper", ptr %t435, i32 0, i32 12
  %t438 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l18, i32 0, i32 0
  %t439 = load i64, ptr %t438, !tbaa !24
  %t442 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t437, i64 %t439)
  store i1 %t442, ptr %l196
  br label %bb104
bb104:
  %t443 = load i1, ptr %l196, !tbaa !21
  %t444 = xor i1 %t443, true
  store i1 %t444, ptr %l192, !tbaa !21
  br label %bb105
bb105:
  %t446 = load i1, ptr %l192, !tbaa !21
  br i1 %t446, label %bb106, label %bb107
bb106:
  call void @__olang_scope_close(ptr %s17)
  br label %bb115
bb107:
  br label %bb108
bb108:
  %t447 = load ptr, ptr %lp1
  store ptr %t447, ptr %l198, !tbaa !29
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/scope:Scoper", ptr %t448, i32 0, i32 33
  %t451 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l18
  %t454 = call { i32, %"compiler/scope:Placement" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H37e4a6df969d175d46971efed901ceea(ptr %v0, ptr %v0, ptr %t450, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t451)
  %t455 = extractvalue { i32, %"compiler/scope:Placement" } %t454, 1
  %t456 = extractvalue { i32, %"compiler/scope:Placement" } %t454, 0
  store i32 %t456, ptr %l204
  %t457 = icmp ne i32 %t456, 0
  br i1 %t457, label %bb110, label %ok.458, !prof !99
ok.458:
  store %"compiler/scope:Placement" %t455, ptr %l203
  br label %bb109
bb109:
  %t460 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %s17, ptr %l203)
  store %"compiler/scope:Placement" %t460, ptr %l206
  br label %bb112
bb110:
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s17)
  br label %bb115
bb112:
  %t461 = load %"compiler/scope:Placement", ptr %l206
  store %"compiler/scope:Placement" %t461, ptr %l199
  br label %bb113
bb113:
  %t462 = load ptr, ptr %l198, !tbaa !29
  %t463 = load %"compiler/scope:Placement", ptr %l199
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2ePush_He23e71a7c6af30775864ddd89edaca69(ptr %v1, ptr %v0, ptr %t462, %"compiler/scope:Placement" %t463)
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s17)
  br label %bb115
bb115:
  br label %bb93
bb116:
  %t464 = load ptr, ptr %lp1
  %t465 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_27, 0
  %t466 = insertvalue { ptr, ptr } %t465, ptr null, 1
  %t469 = extractvalue { ptr, ptr } %t466, 0
  %t470 = extractvalue { ptr, ptr } %t466, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eSort_Hf8fa0083f3b3e812ad36e905e9f72c80(ptr %v1, ptr %s0, ptr %t464, ptr %t469, ptr %t470)
  br label %bb117
bb117:
  %t471 = load ptr, ptr %lp1
  %t472 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t471
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t472, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinBody(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 236
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

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eVarRels(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/scope:rel"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i1
  %l10 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i1
  %l19 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca %"compiler/scope:rel"
  %l40 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca ptr
  %l48 = alloca i64
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp slt i64 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 6
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l13
  br label %bb4
bb4:
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l13, !tbaa !24
  %t15 = icmp sge i64 %t13, %t14
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l9, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb9
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 12
  %t21 = load i64, ptr %l1, !tbaa !24
  %t24 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t20, i64 %t21)
  store i1 %t24, ptr %l19
  br label %bb8
bb8:
  %t25 = load i1, ptr %l19, !tbaa !21
  %t26 = xor i1 %t25, true
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t30 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s1, ptr %l2)
  store { i64, ptr } %t30, ptr %l22
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t31, ptr %l23, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l24, !tbaa !24
  %t34 = load i64, ptr %l24, !tbaa !24
  %t35 = mul i64 %t34, 8
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l25, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l24, !tbaa !24
  %t44 = mul i64 %t43, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %t42, i64 %t44, i1 false)
  %t45 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t45, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t46 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t46, ptr %rv
  br label %ret
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 6
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l29
  br label %bb14
bb14:
  %t54 = load ptr, ptr %l29, !tbaa !29
  %t56 = getelementptr %"compiler/scope:summary", ptr %t54, i32 0, i32 0
  store ptr %t56, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l4, !tbaa !24
  store i64 %t58, ptr %l32, !tbaa !24
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l34
  br label %bb16
bb16:
  %t62 = load i64, ptr %l32, !tbaa !24
  %t63 = load i64, ptr %l34, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb17, label %bb18
bb17:
  br label %bb30
bb18:
  br label %bb19
bb19:
  %t68 = load ptr, ptr %l3, !tbaa !29
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t68, i64 %t69)
  store %"compiler/scope:rel" %t72, ptr %l39
  br label %bb20
bb20:
  %t73 = load %"compiler/scope:rel", ptr %l39
  store %"compiler/scope:rel" %t73, ptr %l5
  store ptr %l2, ptr %l40, !tbaa !29
  %t74 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 0
  %t75 = load { i64, [2 x i64] }, ptr %t74
  %t77 = call i64 @compiler_2fscope_2erelVar({ i64, [2 x i64] } %t75)
  store i64 %t77, ptr %l42
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = load i64, ptr %l42, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t78, i64 %t79)
  br label %bb22
bb22:
  store ptr %l2, ptr %l43, !tbaa !29
  %t80 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 1
  %t81 = load { i64, [2 x i64] }, ptr %t80
  %t83 = call i64 @compiler_2fscope_2erelVar({ i64, [2 x i64] } %t81)
  store i64 %t83, ptr %l45
  br label %bb23
bb23:
  %t84 = load ptr, ptr %l43, !tbaa !29
  %t85 = load i64, ptr %l45, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t84, i64 %t85)
  br label %bb24
bb24:
  store ptr %l2, ptr %l46, !tbaa !29
  %t86 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 2
  %t87 = load i1, ptr %t86, !tbaa !21
  br i1 %t87, label %bb25, label %bb26
bb25:
  store i64 1, ptr %l48, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb27
bb27:
  %t89 = load ptr, ptr %l46, !tbaa !29
  %t90 = load i64, ptr %l48, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t89, i64 %t90)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t91 = load i64, ptr %l4, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l4, !tbaa !24
  br label %bb15
bb30:
  %t96 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t96, ptr %l52
  br label %bb31
bb31:
  %t97 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t97, ptr %l53, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  store i64 %t99, ptr %l54, !tbaa !24
  %t100 = load i64, ptr %l54, !tbaa !24
  %t101 = mul i64 %t100, 8
  %t102 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t101)
  %t103 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l55, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l54, !tbaa !24
  %t110 = mul i64 %t109, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t106, ptr %t108, i64 %t110, i1 false)
  %t111 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t111, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t112 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t112, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i32
  %l17 = alloca i32
  %l24 = alloca i32
  %l32 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l50 = alloca i1
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
  store i32 %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load i32, ptr %l12, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l17
  br label %bb2
bb2:
  %t22 = load i32, ptr %l17, !range !{i32 0, i32 33}
  store i32 %t22, ptr %l3
  %t23 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t25 = trunc i64 19 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l24
  br label %bb6
bb6:
  %t38 = load i32, ptr %l24, !tbaa !23
  %t39 = icmp eq i32 %t38, 0
  store i1 %t39, ptr %rv
  br label %ret
bb7:
  %t41 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t43 = trunc i64 22 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  %t46 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t48 = trunc i64 23 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb25
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  store ptr %t56, ptr %l32, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l2, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l37
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l32, !tbaa !29
  %t68 = load i32, ptr %l37, !tbaa !23
  %t69 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t67, i32 %t68)
  store { i64, ptr } %t69, ptr %l38
  br label %bb14
bb14:
  %t70 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t70, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t75 = load i64, ptr %l5, !tbaa !24
  %t76 = load i64, ptr %l6, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t83 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t83, ptr %l45, !tbaa !27
  %t84 = load i64, ptr %l5, !tbaa !24
  %t86 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i32, ptr %t87, i64 %t84
  %t89 = load i32, ptr %t88, !tbaa !33
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t95 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t91, i32 %t89)
  store i1 %t95, ptr %l50
  br label %bb19
bb19:
  %t96 = load i1, ptr %l50, !tbaa !21
  br i1 %t96, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t98 = load i64, ptr %l5, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l5, !tbaa !24
  br label %bb15
bb24:
  store i1 false, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_8f68a290e3e064b2_7dbc8da9638b50f6)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t33 = load i64, ptr %l10, !tbaa !24
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
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
  %t114 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeBorrows(ptr %v0)
  store %"compiler/diagmsg:Msg" %t114, ptr %l75
  br label %bb22
bb22:
  %t115 = load ptr, ptr %l73, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l74
  %t117 = load %"compiler/diagmsg:Msg", ptr %l75
  %t118 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t115, %"compiler/source:Span" %t116, %"compiler/diagmsg:Msg" %t117)
  store i64 %t118, ptr %l76
  br label %bb23
bb23:
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
  %t132 = load i64, ptr %l14, !tbaa !24
  %t133 = load i64, ptr %l15, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb27, label %bb28
bb27:
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
  %t171 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeBorrows(ptr %v0)
  store %"compiler/diagmsg:Msg" %t171, ptr %l103
  br label %bb40
bb40:
  %t172 = load ptr, ptr %l99, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l102
  %t174 = load %"compiler/diagmsg:Msg", ptr %l103
  %t175 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t172, %"compiler/source:Span" %t173, %"compiler/diagmsg:Msg" %t174)
  store i64 %t175, ptr %l104
  br label %bb41
bb41:
  br label %bb43
bb42:
  %t176 = load i64, ptr %l14, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l14, !tbaa !24
  br label %bb26
bb43:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/scope:Scoper", ptr %t180, i32 0, i32 27
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
  %t189 = getelementptr %"compiler/scope:Scoper", ptr %t187, i32 0, i32 27
  %t190 = load ptr, ptr %t189, !tbaa !29
  store ptr %t190, ptr %l17, !tbaa !29
  %t192 = load ptr, ptr %l17, !tbaa !29
  %t194 = getelementptr %"compiler/typed:Body", ptr %t192, i32 0, i32 5
  store ptr %t194, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb47
bb47:
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
  %t277 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeHeldParam(ptr %v0, ptr %v0, { i64, ptr } %t276)
  store %"compiler/diagmsg:Msg" %t277, ptr %l153
  br label %bb68
bb68:
  %t278 = load ptr, ptr %l143, !tbaa !29
  %t279 = load %"compiler/source:Span", ptr %l146
  %t280 = load %"compiler/diagmsg:Msg", ptr %l153
  %t281 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t278, %"compiler/source:Span" %t279, %"compiler/diagmsg:Msg" %t280)
  store i64 %t281, ptr %l154
  br label %bb69
bb69:
  br label %bb71
bb70:
  %t282 = load i64, ptr %l19, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l19, !tbaa !24
  br label %bb47
bb71:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/scope:Scoper", ptr %t286, i32 0, i32 43
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l22 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
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
  store ptr %t5, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t6 = load ptr, ptr %l9, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb15
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l15, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l17, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l18, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t24)
  store i32 %t26, ptr %l20
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l18, !tbaa !29
  %t28 = load i32, ptr %l20, !tbaa !23
  %t29 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstType(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t29, ptr %l21
  br label %bb10
bb10:
  %t30 = load i1, ptr %l21, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t31 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  store i64 %t31, ptr %l22, !tbaa !24
  br label %bb13
bb12:
  %t33 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  store i64 %t33, ptr %l22, !tbaa !24
  br label %bb13
bb13:
  %t35 = load ptr, ptr %l15, !tbaa !29
  %t36 = load ptr, ptr %l17, !tbaa !29
  %t37 = load i64, ptr %l22, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t35, ptr %t36, i64 %t37)
  br label %bb14
bb14:
  br label %bb49
bb15:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb16, label %bb17
bb16:
  %t42 = load ptr, ptr %l25, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb17
bb17:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb18, label %bb19
bb18:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l3, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t53, ptr %t54)
  br label %bb21
bb21:
  br label %bb49
bb22:
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t59 = load ptr, ptr %l34, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb23, label %bb24
bb23:
  %t62 = load ptr, ptr %l34, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 8}
  %t65 = icmp eq i64 %t63, 4
  store i1 %t65, ptr %l35, !tbaa !21
  br label %bb24
bb24:
  %t66 = load i1, ptr %l35, !tbaa !21
  br i1 %t66, label %bb25, label %bb26
bb25:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t69, i32 0, i32 2
  %t71 = load ptr, ptr %t70
  store ptr %t71, ptr %l4, !tbaa !29
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l4, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Elem", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t73, ptr %t77)
  br label %bb28
bb28:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l4, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Elem", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t81, ptr %t85, i64 %t87)
  br label %bb29
bb29:
  br label %bb49
bb30:
  %t91 = load ptr, ptr %l1, !tbaa !29
  store ptr %t91, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t92 = load ptr, ptr %l49, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb31, label %bb32
bb31:
  %t95 = load ptr, ptr %l49, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 8}
  %t98 = icmp eq i64 %t96, 5
  store i1 %t98, ptr %l50, !tbaa !21
  br label %bb32
bb32:
  %t99 = load i1, ptr %l50, !tbaa !21
  br i1 %t99, label %bb33, label %bb34
bb33:
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr { i64, [4 x i64] }, ptr %t100, i32 0, i32 1
  %t103 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t102, i32 0, i32 2
  %t104 = load ptr, ptr %t103
  store ptr %t104, ptr %l5, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Payload", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t106, ptr %t110)
  br label %bb36
bb36:
  br label %bb49
bb37:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t115 = load ptr, ptr %l59, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb38, label %bb39
bb38:
  %t118 = load ptr, ptr %l59, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 8}
  %t121 = icmp eq i64 %t119, 6
  store i1 %t121, ptr %l60, !tbaa !21
  br label %bb39
bb39:
  %t122 = load i1, ptr %l60, !tbaa !21
  br i1 %t122, label %bb40, label %bb41
bb40:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t125, i32 0, i32 2
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l6, !tbaa !29
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l6, !tbaa !29
  %t132 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t129, ptr %t130, i64 %t132)
  br label %bb43
bb43:
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_bd4ca23a40cfc0db_43a814c1b1d9691f)
  unreachable
bb49:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundEdges(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l35 = alloca i32
  %l39 = alloca i1
  %l45 = alloca i1
  %l51 = alloca i64
  %l54 = alloca i64
  %l73 = alloca { i64, ptr }
  %l76 = alloca i1
  %l78 = alloca i1
  %l84 = alloca i1
  %l86 = alloca ptr
  %l89 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l91 = alloca i1
  %l93 = alloca { i64, ptr }
  %l96 = alloca i1
  %l97 = alloca ptr
  %l100 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l107 = alloca { i64, ptr }
  %l114 = alloca i64
  %l117 = alloca i64
  %l148 = alloca i64
  %l160 = alloca i64
  %l161 = alloca ptr
  %l164 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l166 = alloca { i64, ptr }
  %l169 = alloca i1
  %l170 = alloca ptr
  %l173 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l21
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/scope:Scoper", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  store ptr %t8, ptr %l24, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l29
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l24, !tbaa !29
  %t20 = load i32, ptr %l29, !tbaa !23
  %t21 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t19, i32 %t20)
  store { i64, ptr } %t21, ptr %l30
  br label %bb3
bb3:
  %t22 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l35
  br label %bb4
bb4:
  %t33 = load i32, ptr %l35, !tbaa !23
  store i32 %t33, ptr %l4, !tbaa !23
  %t34 = load i32, ptr %l4, !tbaa !23
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t38 = icmp ne i32 %t34, %t35
  br i1 %t38, label %bb5, label %bb6
bb5:
  %t40 = load i32, ptr %l4, !tbaa !23
  %t41 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t44 = icmp ne i32 %t40, %t41
  store i1 %t44, ptr %l39, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb7
bb7:
  %t46 = load i1, ptr %l39, !tbaa !21
  br i1 %t46, label %bb8, label %bb9
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l4, !tbaa !23
  %t51 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l45
  br label %bb10
bb9:
  br label %bb42
bb10:
  %t52 = load i1, ptr %l45, !tbaa !21
  store i1 %t52, ptr %l5, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb16
bb13:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = sub i64 %t67, %t68
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = sub i64 %t75, 1
  %t78 = load i64, ptr %l8, !tbaa !24
  %t81 = sdiv i64 %t77, %t78
  store i64 %t81, ptr %l54, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb15
bb15:
  %t83 = load i64, ptr %l54, !tbaa !24
  store i64 %t83, ptr %l51, !tbaa !24
  br label %bb16
bb16:
  %t84 = load i64, ptr %l51, !tbaa !24
  store i64 %t84, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t85 = load i64, ptr %l10, !tbaa !24
  %t86 = load i64, ptr %l9, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb41
bb19:
  br label %bb20
bb20:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t94 = load i64, ptr %l10, !tbaa !24
  %t95 = load i64, ptr %l8, !tbaa !24
  %t98 = mul i64 %t94, %t95
  %t101 = add i64 %t93, %t98
  store i64 %t101, ptr %l11, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t104, ptr %l73, !tbaa !27
  %t105 = load i64, ptr %l11, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i32, ptr %t108, i64 %t105
  %t110 = load i32, ptr %t109, !tbaa !33
  %t113 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t103, i32 %t110)
  store i1 %t113, ptr %l76
  br label %bb21
bb21:
  %t114 = load i1, ptr %l76, !tbaa !21
  %t115 = xor i1 %t114, true
  br i1 %t115, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb25
bb23:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/scope:Scoper", ptr %t117, i32 0, i32 0
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l1, !tbaa !23
  %t124 = load i64, ptr %l11, !tbaa !24
  %t128 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eMayBorrow(ptr %v0, ptr %t122, i32 %t123, i64 %t124)
  store i1 %t128, ptr %l84
  br label %bb24
bb24:
  %t129 = load i1, ptr %l84, !tbaa !21
  %t130 = xor i1 %t129, true
  store i1 %t130, ptr %l78, !tbaa !21
  br label %bb25
bb25:
  %t132 = load i1, ptr %l78, !tbaa !21
  br i1 %t132, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb27:
  br label %bb28
bb28:
  store ptr %l2, ptr %l86, !tbaa !29
  %t133 = load i64, ptr %l11, !tbaa !24
  %t134 = load i64, ptr @G_2ecompiler_2fscope_2ePosResult, !tbaa !24
  %t137 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t133, i64 %t134)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t137, ptr %l89
  br label %bb29
bb29:
  %t138 = load ptr, ptr %l86, !tbaa !29
  %t139 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l89
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v1, ptr %t138, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t139)
  br label %bb30
bb30:
  %t140 = load i1, ptr %l5, !tbaa !21
  br i1 %t140, label %bb31, label %bb32
bb31:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t143, ptr %l93, !tbaa !27
  %t144 = load i64, ptr %l11, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i32, ptr %t147, i64 %t144
  %t149 = load i32, ptr %t148, !tbaa !33
  %t152 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t142, i32 %t149)
  store i1 %t152, ptr %l96
  br label %bb33
bb32:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb34
bb33:
  %t153 = load i1, ptr %l96, !tbaa !21
  store i1 %t153, ptr %l91, !tbaa !21
  br label %bb34
bb34:
  %t154 = load i1, ptr %l91, !tbaa !21
  br i1 %t154, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s5
  store ptr %l2, ptr %l97, !tbaa !29
  %t155 = load i64, ptr @G_2ecompiler_2fscope_2ePosResult, !tbaa !24
  %t156 = load i64, ptr %l11, !tbaa !24
  %t159 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s5, i64 %t155, i64 %t156)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t159, ptr %l100
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t160 = load ptr, ptr %l97, !tbaa !29
  %t161 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l100
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v1, ptr %t160, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t161)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s5)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb40:
  %t162 = load i64, ptr %l10, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l10, !tbaa !24
  br label %bb17
bb41:
  br label %bb42
bb42:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/scope:Scoper", ptr %t166, i32 0, i32 0
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  %t172 = load i32, ptr %l1, !tbaa !23
  %t175 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %s0, ptr %t171, i32 %t172)
  store { i64, ptr } %t175, ptr %l107
  br label %bb43
bb43:
  %t176 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t176, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t181 = sdiv i64 %t179, 3
  store i64 %t181, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t183 = load i64, ptr %l14, !tbaa !24
  %t184 = load i64, ptr %l13, !tbaa !24
  %t187 = icmp sgt i64 %t183, %t184
  br i1 %t187, label %bb44, label %bb45
bb44:
  %t189 = load i64, ptr %l15, !tbaa !24
  %t191 = icmp sgt i64 %t189, 0
  br i1 %t191, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb49
bb46:
  %t193 = load i64, ptr %l14, !tbaa !24
  %t194 = load i64, ptr %l13, !tbaa !24
  %t197 = sub i64 %t193, %t194
  %t198 = load i64, ptr %l15, !tbaa !24
  %t201 = add i64 %t197, %t198
  %t203 = sub i64 %t201, 1
  %t204 = load i64, ptr %l15, !tbaa !24
  %t207 = sdiv i64 %t203, %t204
  store i64 %t207, ptr %l117, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb48
bb48:
  %t209 = load i64, ptr %l117, !tbaa !24
  store i64 %t209, ptr %l114, !tbaa !24
  br label %bb49
bb49:
  %t210 = load i64, ptr %l114, !tbaa !24
  store i64 %t210, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb50
bb50:
  store %olang.scope zeroinitializer, ptr %s8
  %t211 = load i64, ptr %l17, !tbaa !24
  %t212 = load i64, ptr %l16, !tbaa !24
  %t215 = icmp slt i64 %t211, %t212
  %t217 = xor i1 %t215, true
  br i1 %t217, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s8)
  br label %bb70
bb52:
  br label %bb53
bb53:
  %t219 = load i64, ptr %l13, !tbaa !24
  %t220 = load i64, ptr %l17, !tbaa !24
  %t221 = load i64, ptr %l15, !tbaa !24
  %t224 = mul i64 %t220, %t221
  %t227 = add i64 %t219, %t224
  store i64 %t227, ptr %l18, !tbaa !24
  %t229 = load i64, ptr %l18, !tbaa !24
  %t231 = mul i64 3, %t229
  %t233 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i64, ptr %t234, i64 %t231
  %t236 = load i64, ptr %t235, !tbaa !34
  store i64 %t236, ptr %l19, !tbaa !24
  %t238 = load i64, ptr %l19, !tbaa !24
  %t239 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t244 = icmp sge i64 %t238, %t241
  br i1 %t244, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s8)
  br label %bb69
bb55:
  br label %bb56
bb56:
  %t246 = load i64, ptr %l18, !tbaa !24
  %t248 = mul i64 3, %t246
  %t250 = add i64 %t248, 1
  %t252 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr i64, ptr %t253, i64 %t250
  %t255 = load i64, ptr %t254, !tbaa !34
  %t256 = load i64, ptr @G_2ecompiler_2ftypes_2eKeepsHome, !tbaa !24
  %t259 = icmp eq i64 %t255, %t256
  br i1 %t259, label %bb57, label %bb58
bb57:
  %t261 = load i64, ptr @G_2ecompiler_2fscope_2ePosHome, !tbaa !24
  store i64 %t261, ptr %l148, !tbaa !24
  br label %bb60
bb58:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i32, ptr %l1, !tbaa !23
  %t265 = load i64, ptr %l18, !tbaa !24
  %t267 = mul i64 3, %t265
  %t269 = add i64 %t267, 1
  %t271 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = getelementptr i64, ptr %t272, i64 %t269
  %t274 = load i64, ptr %t273, !tbaa !34
  %t275 = load i64, ptr %l18, !tbaa !24
  %t277 = mul i64 3, %t275
  %t279 = add i64 %t277, 2
  %t281 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr i64, ptr %t282, i64 %t279
  %t284 = load i64, ptr %t283, !tbaa !34
  %t289 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldPos(ptr %v0, ptr %t263, i32 %t264, i64 %t274, i64 %t284)
  store i64 %t289, ptr %l160
  br label %bb59
bb59:
  %t290 = load i64, ptr %l160, !tbaa !24
  store i64 %t290, ptr %l148, !tbaa !24
  br label %bb60
bb60:
  %t291 = load i64, ptr %l148, !tbaa !24
  store i64 %t291, ptr %l20, !tbaa !24
  store ptr %l2, ptr %l161, !tbaa !29
  %t292 = load i64, ptr %l19, !tbaa !24
  %t293 = load i64, ptr %l20, !tbaa !24
  %t296 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s8, i64 %t292, i64 %t293)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t296, ptr %l164
  br label %bb61
bb61:
  %t297 = load ptr, ptr %l161, !tbaa !29
  %t298 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l164
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v1, ptr %t297, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t298)
  br label %bb62
bb62:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t300, ptr %l166, !tbaa !27
  %t301 = load i64, ptr %l19, !tbaa !24
  %t303 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = getelementptr i32, ptr %t304, i64 %t301
  %t306 = load i32, ptr %t305, !tbaa !33
  %t309 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t299, i32 %t306)
  store i1 %t309, ptr %l169
  br label %bb63
bb63:
  %t310 = load i1, ptr %l169, !tbaa !21
  br i1 %t310, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s10
  store ptr %l2, ptr %l170, !tbaa !29
  %t311 = load i64, ptr %l20, !tbaa !24
  %t312 = load i64, ptr %l19, !tbaa !24
  %t315 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s10, i64 %t311, i64 %t312)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t315, ptr %l173
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t316 = load ptr, ptr %l170, !tbaa !29
  %t317 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l173
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v1, ptr %t316, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t317)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s10)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s8)
  br label %bb69
bb69:
  %t318 = load i64, ptr %l17, !tbaa !24
  %t320 = add i64 %t318, 1
  store i64 %t320, ptr %l17, !tbaa !24
  br label %bb50
bb70:
  %t322 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t322, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l6 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i1
  %l24 = alloca i1
  %l32 = alloca i1
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
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t11, i64 %t12)
  store ptr %t15, ptr %l12
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l12, !tbaa !29
  store ptr %t16, ptr %l3, !tbaa !29
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = getelementptr %"compiler/scope:summary", ptr %t17, i32 0, i32 21
  %t20 = load i1, ptr %t19, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  %t22 = load i64, ptr %l2, !tbaa !24
  store i64 %t22, ptr %l15, !tbaa !24
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/scope:summary", ptr %t23, i32 0, i32 1
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t25)
  store i64 %t27, ptr %l18
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t28 = load i64, ptr %l15, !tbaa !24
  %t29 = load i64, ptr %l18, !tbaa !24
  %t30 = icmp slt i64 %t28, %t29
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = getelementptr %"compiler/scope:summary", ptr %t32, i32 0, i32 1
  %t35 = load i64, ptr %l2, !tbaa !24
  %t38 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t34, i64 %t35)
  store i1 %t38, ptr %l24
  br label %bb13
bb12:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb14
bb13:
  %t39 = load i1, ptr %l24, !tbaa !21
  store i1 %t39, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t40 = load i1, ptr %l20, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
bb15:
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = getelementptr %"compiler/scope:summary", ptr %t41, i32 0, i32 20
  %t44 = load i1, ptr %t43, !tbaa !21
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  %t55 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumBuilds(ptr %v0, ptr %t49, i64 %t50, i64 %t51)
  store i1 %t55, ptr %l32
  br label %bb19
bb19:
  %t56 = load i1, ptr %l32, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i1
  %l26 = alloca i64
  %l30 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i1
  %l41 = alloca ptr
  %l45 = alloca i64
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
  store ptr %t6, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t7 = load ptr, ptr %l8, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t25 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i64 %t25, ptr %l16
  br label %bb9
bb9:
  %t26 = load i64, ptr %l16, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
bb10:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l17, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 17
  store i1 %t34, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l18, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t47 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltCall(ptr %v0, ptr %v1, ptr %t42, ptr %t43)
  store i64 %t47, ptr %l26
  br label %bb16
bb16:
  %t48 = load i64, ptr %l26, !tbaa !24
  store i64 %t48, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_fa1185dea4599dae_9f267a70691b2)
  unreachable
bb22:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t54 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t49, ptr %t50)
  store i1 %t54, ptr %l30
  br label %bb23
bb23:
  %t55 = load i1, ptr %l30, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb24, label %bb25
bb24:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t59)
  store i32 %t61, ptr %l35
  br label %bb26
bb25:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb28
bb26:
  %t62 = load ptr, ptr %l33, !tbaa !29
  %t63 = load i32, ptr %l35, !tbaa !23
  %t64 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t62, i32 %t63)
  store i1 %t64, ptr %l36
  br label %bb27
bb27:
  %t65 = load i1, ptr %l36, !tbaa !21
  %t66 = xor i1 %t65, true
  store i1 %t66, ptr %l32, !tbaa !21
  br label %bb28
bb28:
  %t68 = load i1, ptr %l32, !tbaa !21
  br i1 %t68, label %bb29, label %bb30
bb29:
  store i64 -1, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t73 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t70)
  store ptr %t73, ptr %l41
  br label %bb32
bb32:
  %t74 = load ptr, ptr %l41, !tbaa !29
  store ptr %t74, ptr %l4, !tbaa !29
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = icmp eq ptr %t75, null
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb33, label %bb34
bb33:
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Call", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %t83, !tbaa !23
  %t86 = sext i32 %t84 to i64
  store i64 %t86, ptr %l45, !tbaa !24
  br label %bb35
bb34:
  store i64 -1, ptr %l45, !tbaa !24
  br label %bb35
bb35:
  %t88 = load i64, ptr %l45, !tbaa !24
  store i64 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleePutsArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca i64
  %l29 = alloca i1
  %l32 = alloca ptr
  %l36 = alloca i1
  %l39 = alloca ptr
  %l43 = alloca i1
  %l44 = alloca i64
  %l47 = alloca ptr
  %l50 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l76 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t7 = load ptr, ptr %l8, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb28
bb5:
  %t21 = load i32, ptr %l4, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l5, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store ptr %t29, ptr %l18
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l18, !tbaa !29
  %t32 = getelementptr %"compiler/scope:summary", ptr %t30, i32 0, i32 21
  %t33 = load i1, ptr %t32, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l21, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store ptr %t40, ptr %l24
  br label %bb9
bb8:
  br label %bb16
bb9:
  %t41 = load ptr, ptr %l24, !tbaa !29
  %t43 = getelementptr %"compiler/scope:summary", ptr %t41, i32 0, i32 7
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l27
  br label %bb10
bb10:
  %t46 = load i64, ptr %l21, !tbaa !24
  %t47 = load i64, ptr %l27, !tbaa !24
  %t48 = icmp slt i64 %t46, %t47
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t50, i64 %t51)
  store ptr %t54, ptr %l32
  br label %bb13
bb12:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb15
bb13:
  %t55 = load ptr, ptr %l32, !tbaa !29
  %t57 = getelementptr %"compiler/scope:summary", ptr %t55, i32 0, i32 7
  %t58 = load i64, ptr %l2, !tbaa !24
  %t61 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t57, i64 %t58)
  store i1 %t61, ptr %l36
  br label %bb14
bb14:
  %t62 = load i1, ptr %l36, !tbaa !21
  store i1 %t62, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l29, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l5, !tbaa !24
  %t68 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t64, i64 %t65)
  store ptr %t68, ptr %l39
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l39, !tbaa !29
  %t71 = getelementptr %"compiler/scope:summary", ptr %t69, i32 0, i32 20
  %t72 = load i1, ptr %t71, !tbaa !21
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb22
bb19:
  %t76 = load i64, ptr %l2, !tbaa !24
  store i64 %t76, ptr %l44, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l5, !tbaa !24
  %t81 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t77, i64 %t78)
  store ptr %t81, ptr %l47
  br label %bb20
bb20:
  %t82 = load ptr, ptr %l47, !tbaa !29
  %t84 = getelementptr %"compiler/scope:summary", ptr %t82, i32 0, i32 7
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t84)
  store i64 %t86, ptr %l50
  br label %bb21
bb21:
  %t87 = load i64, ptr %l44, !tbaa !24
  %t88 = load i64, ptr %l50, !tbaa !24
  %t89 = icmp sge i64 %t87, %t88
  store i1 %t89, ptr %l43, !tbaa !21
  br label %bb22
bb22:
  %t91 = load i1, ptr %l43, !tbaa !21
  br i1 %t91, label %bb23, label %bb24
bb23:
  store i1 true, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l5, !tbaa !24
  %t97 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t93, i64 %t94)
  store ptr %t97, ptr %l55
  br label %bb26
bb26:
  %t98 = load ptr, ptr %l55, !tbaa !29
  %t100 = getelementptr %"compiler/scope:summary", ptr %t98, i32 0, i32 7
  %t101 = load i64, ptr %l2, !tbaa !24
  %t104 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t100, i64 %t101)
  store i1 %t104, ptr %l59
  br label %bb27
bb27:
  %t105 = load i1, ptr %l59, !tbaa !21
  store i1 %t105, ptr %rv
  br label %ret
bb28:
  %t106 = load ptr, ptr %l3, !tbaa !29
  store ptr %t106, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t107 = load ptr, ptr %l60, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb29, label %bb30
bb29:
  %t110 = load ptr, ptr %l60, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 5}
  %t113 = icmp eq i64 %t111, 1
  store i1 %t113, ptr %l61, !tbaa !21
  br label %bb30
bb30:
  %t114 = load i1, ptr %l61, !tbaa !21
  br i1 %t114, label %bb31, label %bb32
bb31:
  br label %bb37
bb32:
  %t115 = load ptr, ptr %l3, !tbaa !29
  store ptr %t115, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t116 = load ptr, ptr %l64, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb33, label %bb34
bb33:
  %t119 = load ptr, ptr %l64, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 5}
  %t122 = icmp eq i64 %t120, 4
  store i1 %t122, ptr %l65, !tbaa !21
  br label %bb34
bb34:
  %t123 = load i1, ptr %l65, !tbaa !21
  br i1 %t123, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i1 false, ptr %rv
  br label %ret
bb38:
  %t125 = load ptr, ptr %l3, !tbaa !29
  store ptr %t125, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t126 = load ptr, ptr %l69, !tbaa !29
  %t127 = icmp ne ptr %t126, null
  br i1 %t127, label %bb39, label %bb40
bb39:
  %t129 = load ptr, ptr %l69, !tbaa !29
  %t130 = load i64, ptr %t129, !range !{i64 0, i64 5}
  %t132 = icmp eq i64 %t130, 2
  store i1 %t132, ptr %l70, !tbaa !21
  br label %bb40
bb40:
  %t133 = load i1, ptr %l70, !tbaa !21
  br i1 %t133, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l1, !tbaa !29
  %t136 = load i64, ptr %l2, !tbaa !24
  %t140 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueArgBy(ptr %v0, ptr %v1, ptr %t134, ptr %t135, i64 %t136, i64 1)
  store i1 %t140, ptr %l76
  br label %bb44
bb44:
  %t141 = load i1, ptr %l76, !tbaa !21
  store i1 %t141, ptr %rv
  br label %ret
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i1 true, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_afca299d588086d2_4faebb8dc8bed846)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i32
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l6
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %rv
  br label %ret
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 128
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %t13, i64 %t14)
  %t18 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t17, 1
  %t19 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t17, 0
  store i32 %t19, ptr %l12
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb7, label %ok.21, !prof !99
ok.21:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l11
  br label %bb6
bb6:
  %t23 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v1, ptr %l11)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l14
  br label %bb9
bb7:
  br label %bb8
bb8:
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l15
  br label %bb10
bb9:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l7
  br label %bb11
bb10:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l7
  br label %bb11
bb11:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i32, i64 } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOfWord(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l3 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %rv = alloca { i32, i64 }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call { i32, i32 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFindDecl(ptr %v0, ptr %v1, ptr %t6, { i64, ptr } %a1)
  %t11 = extractvalue { i32, i32 } %t10, 1
  %t12 = extractvalue { i32, i32 } %t10, 0
  store i32 %t12, ptr %l9
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb2, label %ok.14, !prof !99
ok.14:
  store i32 %t11, ptr %l8
  br label %bb1
bb1:
  %t15 = load i32, ptr %l8, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t17 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t17, ptr %rv
  br label %ret
bb4:
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = sext i32 %t18 to i64
  %t23 = insertvalue { i32, i64 } zeroinitializer, i64 %t21, 1
  store { i32, i64 } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edefaultFits(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, %"compiler/scope:Val" %a2, i1 %a3) #0 {
entry:
  %l1 = alloca %"compiler/scope:Val"
  %l2 = alloca %"compiler/scope:Val"
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i1
  %l6 = alloca i32
  %l8 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i1
  %l23 = alloca { i64, [2 x i64] }
  %l25 = alloca { i64, [2 x i64] }
  %l27 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i1
  %l35 = alloca i64
  %rv = alloca i1
  store %"compiler/scope:Val" %a1, ptr %l1
  store %"compiler/scope:Val" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l4
  %t4 = load { i64, [2 x i64] }, ptr %l4
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 5
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %bb5
bb2:
  %t9 = load { i64, [2 x i64] }, ptr %l4
  %t11 = extractvalue { i64, [2 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 6
  br i1 %t12, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_44f08e273b94dac1_2814062679ab87ad)
  unreachable
bb11:
  %t14 = load i1, ptr %l8, !tbaa !21
  store i1 %t14, ptr %l5, !tbaa !21
  %t15 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 0
  %t16 = load i32, ptr %t15, !range !{i32 0, i32 5}
  store i32 %t16, ptr %l6
  %t18 = load i32, ptr %l6, !range !{i32 0, i32 5}
  %t20 = trunc i64 3 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb29
bb14:
  %t23 = load i1, ptr %l5, !tbaa !21
  br i1 %t23, label %bb15, label %bb16
bb15:
  %t25 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t26 = load { i64, [2 x i64] }, ptr %t25
  %t28 = extractvalue { i64, [2 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 0
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l18, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb17
bb17:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb18, label %bb19
bb18:
  %t34 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 1
  %t35 = load { i64, [2 x i64] }, ptr %t34
  store { i64, [2 x i64] } %t35, ptr %l23
  %t36 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t37 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t37, ptr %l25
  %t40 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l23, ptr %l25)
  store i1 %t40, ptr %l27
  br label %bb20
bb19:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb28
bb20:
  %t41 = load i1, ptr %l27, !tbaa !21
  br i1 %t41, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb27
bb22:
  %t44 = xor i1 %a3, true
  br i1 %t44, label %bb23, label %bb24
bb23:
  %t47 = getelementptr %"compiler/scope:Val", ptr %l2, i32 0, i32 1
  %t48 = load { i64, [2 x i64] }, ptr %t47
  %t49 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t50 = load { i64, [2 x i64] }, ptr %t49
  %t54 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %t48, { i64, [2 x i64] } %t50)
  store i64 %t54, ptr %l35
  br label %bb25
bb24:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb26
bb25:
  %t55 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t56 = load i64, ptr %l35, !tbaa !24
  %t58 = icmp eq i64 %t56, %t55
  store i1 %t58, ptr %l31, !tbaa !21
  br label %bb26
bb26:
  %t60 = load i1, ptr %l31, !tbaa !21
  store i1 %t60, ptr %l28, !tbaa !21
  br label %bb27
bb27:
  %t61 = load i1, ptr %l28, !tbaa !21
  store i1 %t61, ptr %l22, !tbaa !21
  br label %bb28
bb28:
  %t62 = load i1, ptr %l22, !tbaa !21
  store i1 %t62, ptr %l14, !tbaa !21
  br label %bb40
bb29:
  %t63 = load i32, ptr %l6, !range !{i32 0, i32 5}
  %t65 = trunc i64 2 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  %t68 = load i32, ptr %l6, !range !{i32 0, i32 5}
  %t70 = trunc i64 4 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t73 = load i1, ptr %l5, !tbaa !21
  store i1 %t73, ptr %l14, !tbaa !21
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_319b840e5d0a9b30_92f3157cb26da7fc)
  unreachable
bb40:
  %t75 = load i1, ptr %l14, !tbaa !21
  store i1 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedThroughElem(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l9 = alloca i1
  %l15 = alloca i1
  %l18 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l24 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store { i64, [2 x i64] } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb12
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Call", ptr %t15, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t23 = icmp slt i64 %t14, %t20
  store i1 %t23, ptr %l9, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l9, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Call", ptr %t27, i32 0, i32 1
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l18, !tbaa !27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 %t31
  %t36 = load ptr, ptr %t35, !tbaa !39
  %t40 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s1, ptr %a0, ptr %t36)
  store ptr %t40, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb11
bb9:
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t43 = call i1 @compiler_2fscope_2ethroughElemExpr(ptr %s1, ptr %t41)
  store i1 %t43, ptr %l24
  br label %bb10
bb10:
  %t44 = load i1, ptr %l24, !tbaa !21
  store i1 %t44, ptr %l15, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  %t45 = load i1, ptr %l15, !tbaa !21
  store i1 %t45, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_cad6ea40519e9749_ea608eb2fc6ab735)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edone(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l24 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb8
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l5, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 6
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store ptr %t29, ptr %l19
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t32 = getelementptr %"compiler/scope:summary", ptr %t30, i32 0, i32 20
  store i1 true, ptr %t32, !tbaa !21
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 6
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t35, i64 %t36)
  store ptr %t39, ptr %l24
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t42 = getelementptr %"compiler/scope:summary", ptr %t40, i32 0, i32 21
  store i1 false, ptr %t42, !tbaa !21
  br label %bb7
bb7:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb1
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDerived(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i64
  %l20 = alloca i1
  %l23 = alloca i1
  %l27 = alloca ptr
  %l30 = alloca i64
  %l34 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l66 = alloca i64
  %l68 = alloca { i64, [2 x i64] }
  %l69 = alloca ptr
  %l70 = alloca i64
  %l74 = alloca i64
  %l75 = alloca { i64, [2 x i64] }
  %l79 = alloca i1
  %l80 = alloca i1
  %l83 = alloca i1
  %l87 = alloca { i64, [2 x i64] }
  %l90 = alloca { i64, [2 x i64] }
  %l91 = alloca ptr
  %l95 = alloca i64
  %l99 = alloca i64
  %l101 = alloca %"compiler/typed:DerivedArg"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t115 = alloca { i64, [2 x i64] }, align 8
  %t125 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t2)
  store i32 %t4, ptr %l16
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l14, !tbaa !29
  %t6 = load i32, ptr %l16, !tbaa !23
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorBody(ptr %v0, ptr %t5, i32 %t6)
  store i64 %t7, ptr %l17
  br label %bb2
bb2:
  %t8 = load i64, ptr %l17, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb6
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %t13, i64 %t14)
  store i1 %t17, ptr %l23
  br label %bb5
bb5:
  %t18 = load i1, ptr %l23, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l20, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store ptr %t26, ptr %l27
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l27, !tbaa !29
  store ptr %t27, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/scope:summary", ptr %t28, i32 0, i32 14
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l30
  br label %bb11
bb11:
  %t33 = load i64, ptr %l30, !tbaa !24
  %t34 = icmp eq i64 %t33, 0
  br i1 %t34, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t40 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRec(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  store i64 %t40, ptr %l34
  br label %bb15
bb15:
  %t41 = load i64, ptr %l34, !tbaa !24
  store i64 %t41, ptr %l4, !tbaa !24
  %t42 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l35
  br label %bb16
bb16:
  %t43 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr %"compiler/scope:summary", ptr %t44, i32 0, i32 14
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t46)
  store i64 %t48, ptr %l38
  br label %bb17
bb17:
  %t49 = load i64, ptr %l38, !tbaa !24
  store i64 %t49, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp sgt i64 %t50, %t51
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t56 = load i64, ptr %l8, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb23
bb20:
  %t60 = load i64, ptr %l7, !tbaa !24
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = sub i64 %t60, %t61
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = add i64 %t64, %t65
  %t70 = sub i64 %t68, 1
  %t71 = load i64, ptr %l8, !tbaa !24
  %t74 = sdiv i64 %t70, %t71
  store i64 %t74, ptr %l45, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb22
bb22:
  %t76 = load i64, ptr %l45, !tbaa !24
  store i64 %t76, ptr %l42, !tbaa !24
  br label %bb23
bb23:
  %t77 = load i64, ptr %l42, !tbaa !24
  store i64 %t77, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t78 = load i64, ptr %l10, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb49
bb26:
  br label %bb27
bb27:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l10, !tbaa !24
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = mul i64 %t87, %t88
  %t94 = add i64 %t86, %t91
  store i64 %t94, ptr %l11, !tbaa !24
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t98 = getelementptr %"compiler/scope:summary", ptr %t96, i32 0, i32 14
  %t99 = load i64, ptr %l11, !tbaa !24
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t98, i64 %t99)
  store i64 %t102, ptr %l66
  br label %bb28
bb28:
  %t103 = load i64, ptr %l66, !tbaa !24
  %t104 = icmp eq i64 %t103, 0
  br i1 %t104, label %bb29, label %bb30
bb29:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l69, !tbaa !29
  %t107 = load i64, ptr %l4, !tbaa !24
  store i64 %t107, ptr %l70, !tbaa !24
  %t108 = load ptr, ptr %l3, !tbaa !29
  %t110 = getelementptr %"compiler/scope:summary", ptr %t108, i32 0, i32 15
  %t111 = load i64, ptr %l11, !tbaa !24
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t110, i64 %t111)
  store i64 %t114, ptr %l74
  br label %bb31
bb30:
  store { i64, [2 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [2 x i64] }, ptr %t115, i32 0, i32 0
  store i64 0, ptr %t116
  %t117 = load { i64, [2 x i64] }, ptr %t115
  store { i64, [2 x i64] } %t117, ptr %l68
  br label %bb33
bb31:
  %t119 = load ptr, ptr %l69, !tbaa !29
  %t120 = load i64, ptr %l70, !tbaa !24
  %t121 = load i64, ptr %l74, !tbaa !24
  %t122 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecAt(ptr %v0, ptr %t119, i64 %t120, i64 %t121)
  store { i64, [2 x i64] } %t122, ptr %l75
  br label %bb32
bb32:
  %t123 = load { i64, [2 x i64] }, ptr %l75
  store { i64, [2 x i64] } %t123, ptr %l68
  br label %bb33
bb33:
  %t124 = load { i64, [2 x i64] }, ptr %l68
  store { i64, [2 x i64] } %t124, ptr %l12
  store { i64, [2 x i64] } zeroinitializer, ptr %t125
  %t126 = getelementptr { i64, [2 x i64] }, ptr %t125, i32 0, i32 0
  store i64 0, ptr %t126
  %t127 = load { i64, [2 x i64] }, ptr %t125
  store { i64, [2 x i64] } %t127, ptr %l13
  %t129 = load { i64, [2 x i64] }, ptr %l12
  %t131 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t129)
  store i1 %t131, ptr %l79
  br label %bb34
bb34:
  %t132 = load i1, ptr %l79, !tbaa !21
  br i1 %t132, label %bb35, label %bb36
bb35:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load { i64, [2 x i64] }, ptr %l12
  %t137 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %t133, { i64, [2 x i64] } %t134)
  store i1 %t137, ptr %l83
  br label %bb37
bb36:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb38
bb37:
  %t138 = load i1, ptr %l83, !tbaa !21
  %t139 = xor i1 %t138, true
  store i1 %t139, ptr %l80, !tbaa !21
  br label %bb38
bb38:
  %t141 = load i1, ptr %l80, !tbaa !21
  br i1 %t141, label %bb39, label %bb40
bb39:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load { i64, [2 x i64] }, ptr %l12
  %t146 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t142, { i64, [2 x i64] } %t143)
  store { i64, [2 x i64] } %t146, ptr %l87
  br label %bb41
bb40:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load { i64, [2 x i64] }, ptr %l12
  %t151 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %t147, { i64, [2 x i64] } %t148, i64 -1)
  store { i64, [2 x i64] } %t151, ptr %l90
  br label %bb42
bb41:
  %t152 = load { i64, [2 x i64] }, ptr %l87
  store { i64, [2 x i64] } %t152, ptr %l13
  br label %bb43
bb42:
  %t153 = load { i64, [2 x i64] }, ptr %l90
  store { i64, [2 x i64] } %t153, ptr %l13
  br label %bb43
bb43:
  store ptr %l5, ptr %l91, !tbaa !29
  %t154 = load ptr, ptr %l3, !tbaa !29
  %t156 = getelementptr %"compiler/scope:summary", ptr %t154, i32 0, i32 14
  %t157 = load i64, ptr %l11, !tbaa !24
  %t160 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t156, i64 %t157)
  store i64 %t160, ptr %l95
  br label %bb44
bb44:
  %t161 = load ptr, ptr %l3, !tbaa !29
  %t163 = getelementptr %"compiler/scope:summary", ptr %t161, i32 0, i32 15
  %t164 = load i64, ptr %l11, !tbaa !24
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t163, i64 %t164)
  store i64 %t167, ptr %l99
  br label %bb45
bb45:
  %t168 = load { i64, [2 x i64] }, ptr %l13
  %t169 = load i64, ptr %l95, !tbaa !24
  %t170 = load i64, ptr %l99, !tbaa !24
  %t172 = call %"compiler/typed:DerivedArg" @compiler_2ftyped_3aDerivedArg_2ector(ptr %s4, i64 %t169, i64 %t170, { i64, [2 x i64] } %t168)
  store %"compiler/typed:DerivedArg" %t172, ptr %l101
  br label %bb46
bb46:
  %t173 = load ptr, ptr %l91, !tbaa !29
  %t174 = load %"compiler/typed:DerivedArg", ptr %l101
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ePus_Hd9c60b9bc3eb0bc15b58bce924fabf2c(ptr %s0, ptr %t173, %"compiler/typed:DerivedArg" %t174)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s4)
  br label %bb48
bb48:
  %t175 = load i64, ptr %l10, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l10, !tbaa !24
  br label %bb24
bb49:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/scope:Scoper", ptr %t179, i32 0, i32 34
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t183 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropDerived(ptr %v0, ptr %v1, ptr %s0, ptr %t181, ptr %t182, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efileOfIdentity(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %l20 = alloca i1
  %rv = alloca { i32, i64 }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  store ptr %t9, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l11
  br label %bb2
bb2:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t16 = load i64, ptr %l11, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store ptr %t25, ptr %l16
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l16, !tbaa !29
  store ptr %t26, ptr %l4, !tbaa !29
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = getelementptr %"compiler/load:Module", ptr %t27, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t30, { i64, ptr } %a1)
  store i1 %t34, ptr %l20
  br label %bb7
bb7:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr %"compiler/load:Module", ptr %t36, i32 0, i32 4
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = insertvalue { i32, i64 } zeroinitializer, i64 %t39, 1
  store { i32, i64 } %t41, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  %t47 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t47, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 38
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 38
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
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 27
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
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 27
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

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efromAtoms(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/scope:verAtom"
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca { i64, [2 x i64] }
  %l25 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb3
bb3:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb11
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %v1, ptr %t15, i64 %t16)
  store %"compiler/scope:verAtom" %t19, ptr %l15
  br label %bb7
bb7:
  %t20 = load %"compiler/scope:verAtom", ptr %l15
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l16, !tbaa !29
  store ptr %l2, ptr %l17, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t26 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomTerm(ptr %v0, ptr %t22, %"compiler/scope:verAtom" %t20)
  store { i64, [2 x i64] } %t26, ptr %l20
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t29 = load { i64, [2 x i64] }, ptr %l20
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %s0, ptr %t27, ptr %t28, { i64, [2 x i64] } %t29)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l4, !tbaa !24
  br label %bb2
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t37 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermOf(ptr %v0, ptr %s0, ptr %t34, ptr %l2)
  store { i64, [2 x i64] } %t37, ptr %l25
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load { i64, [2 x i64] }, ptr %l25
  store { i64, [2 x i64] } %t38, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferRounds(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l14 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 155
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 156
  store i1 false, ptr %t6, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 193
  store i1 false, ptr %t9, !tbaa !21
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 218
  store i1 false, ptr %t12, !tbaa !21
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 220
  store i1 false, ptr %t15, !tbaa !21
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %t16, i64 %t17, i1 false)
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 155
  store i1 false, ptr %t22, !tbaa !21
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 156
  %t26 = load i1, ptr %t25, !tbaa !21
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb3, label %bb4
bb3:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 220
  %t33 = load i1, ptr %t32, !tbaa !21
  store i1 %t33, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l14, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 219
  store i1 true, ptr %t38, !tbaa !21
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 156
  %t42 = load i1, ptr %t41, !tbaa !21
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 193
  %t49 = load i1, ptr %t48, !tbaa !21
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDefs(ptr %v0, ptr %t51, i64 %t52, i1 true)
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 0, ptr %l2, !tbaa !24
  br label %bb20
bb15:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = icmp eq i64 %t59, 8
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 180
  %t66 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t65, i64 %t66, i1 true)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb1
bb21:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einner(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %rv = alloca { i64, [2 x i64] }
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t3 = load { i64, [2 x i64] }, ptr %l2
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %t2, { i64, [2 x i64] } %t3)
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp eq i64 %t9, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstCapturedAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"compiler/scope:fnRec"
  %l9 = alloca %"compiler/scope:fnRec"
  %l10 = alloca %"compiler/scope:fnRec"
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca %"compiler/scope:fnRec"
  %l15 = alloca { i64, [2 x i64] }
  %l21 = alloca i64
  %l24 = alloca { i64, ptr }
  %l28 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca ptr
  %l43 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca i32
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i1
  %l54 = alloca i64
  %l56 = alloca i64
  %l58 = alloca i1
  %l61 = alloca %"compiler/scope:followItem"
  %l63 = alloca %"compiler/scope:followItem"
  %l67 = alloca %"compiler/scope:followItem"
  %l69 = alloca %"compiler/scope:followItem"
  %l71 = alloca i64
  %l73 = alloca i64
  %l75 = alloca i1
  %l76 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i1
  %l81 = alloca i1
  %l83 = alloca i1
  %l85 = alloca i1
  %l90 = alloca %"compiler/scope:followItem"
  %l92 = alloca %"compiler/scope:followItem"
  %l93 = alloca %"compiler/scope:fnRec"
  %l95 = alloca %"compiler/scope:fnRec"
  %l99 = alloca %"compiler/scope:followItem"
  %l101 = alloca %"compiler/scope:followItem"
  %l103 = alloca i64
  %l105 = alloca i64
  %l110 = alloca %"compiler/scope:fnRec"
  %l112 = alloca %"compiler/scope:fnRec"
  %l116 = alloca i1
  %l120 = alloca i64
  %l122 = alloca i64
  %l124 = alloca { i64, [2 x i64] }
  %l127 = alloca { i64, [2 x i64] }
  %l131 = alloca i1
  %l135 = alloca i1
  %l136 = alloca { i64, [2 x i64] }
  %l138 = alloca { i64, [2 x i64] }
  %l140 = alloca i1
  %l149 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t33 = alloca { i64, [2 x i64] }, align 8
  %t86 = alloca %"compiler/scope:followItem", align 8
  %t89 = alloca %"compiler/scope:followItem", align 8
  %t95 = alloca %"compiler/scope:followItem", align 8
  %t98 = alloca %"compiler/scope:followItem", align 8
  %t130 = alloca { i64, [2 x i64] }, align 8
  %t135 = alloca %"compiler/scope:followItem", align 8
  %t138 = alloca %"compiler/scope:followItem", align 8
  %t145 = alloca { i64, [2 x i64] }, align 8
  %t150 = alloca %"compiler/scope:followItem", align 8
  %t153 = alloca %"compiler/scope:followItem", align 8
  %t206 = alloca { i64, [2 x i64] }, align 8
  %t234 = alloca { i64, [2 x i64] }, align 8
  %t253 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Call", ptr %t2, i32 0, i32 1
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp slt i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Call", ptr %t13, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %l24, !tbaa !27
  %t17 = load i64, ptr %l1, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr ptr, ptr %t20, i64 %t17
  %t22 = load ptr, ptr %t21, !tbaa !39
  %t26 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstOf(ptr %v0, ptr %v1, ptr %t12, ptr %t22)
  store i64 %t26, ptr %l28
  br label %bb3
bb2:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb4
bb3:
  %t27 = load i64, ptr %l28, !tbaa !24
  store i64 %t27, ptr %l21, !tbaa !24
  br label %bb4
bb4:
  %t28 = load i64, ptr %l21, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t31 = icmp slt i64 %t29, 0
  br i1 %t31, label %bb5, label %bb6
bb5:
  store { i64, [2 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 0
  store i64 6, ptr %t34
  %t35 = load { i64, [2 x i64] }, ptr %t33
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t35, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t37 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l32
  br label %bb8
bb8:
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l6
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efollowItems(ptr %v0, ptr %s0, ptr %s0, ptr %t39, i64 %t40, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, i64 0, ptr %l6)
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 247
  store ptr %t46, ptr %l38, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Call", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %t49, !tbaa !23
  %t52 = sext i32 %t50 to i64
  %t53 = load i64, ptr %l1, !tbaa !24
  %t56 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t52, i64 %t53)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t56, ptr %l43
  br label %bb10
bb10:
  %t57 = load ptr, ptr %l38, !tbaa !29
  %t58 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l43
  %t59 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hb7439a76facf4127f6396e41a6c979ea(ptr %v0, ptr %v0, ptr %t57, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t58)
  %t60 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t59, 1
  %t61 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t59, 0
  store i32 %t61, ptr %l45
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb12, label %ok.63, !prof !99
ok.63:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l44
  br label %bb11
bb11:
  %t65 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e(ptr %s0, ptr %l44)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l47
  br label %bb14
bb12:
  br label %bb13
bb13:
  %t66 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l48
  br label %bb15
bb14:
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l36
  br label %bb16
bb15:
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l36
  br label %bb16
bb16:
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l7
  %t70 = load i64, ptr %l2, !tbaa !24
  store i64 %t70, ptr %l49, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eLen_H179c871bd324feda0fb0949b8c691d2f(ptr %s0, ptr %l6)
  store i64 %t72, ptr %l51
  br label %bb17
bb17:
  %t73 = load i64, ptr %l49, !tbaa !24
  %t74 = load i64, ptr %l51, !tbaa !24
  %t75 = icmp sge i64 %t73, %t74
  br i1 %t75, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb21
bb19:
  %t77 = load i64, ptr %l2, !tbaa !24
  store i64 %t77, ptr %l54, !tbaa !24
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eLen_H179c871bd324feda0fb0949b8c691d2f(ptr %s0, ptr %l7)
  store i64 %t79, ptr %l56
  br label %bb20
bb20:
  %t80 = load i64, ptr %l54, !tbaa !24
  %t81 = load i64, ptr %l56, !tbaa !24
  %t82 = icmp sge i64 %t80, %t81
  store i1 %t82, ptr %l53, !tbaa !21
  br label %bb21
bb21:
  %t84 = load i1, ptr %l53, !tbaa !21
  br i1 %t84, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb37
bb23:
  %t85 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eAt__Hcba85181f1f46e0ef99a47a3ca1cb265(ptr %t86, ptr %s0, ptr %s0, ptr %l6, i64 %t85)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t86, i64 176, i1 false)
  br label %bb24
bb24:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afollowItem(ptr %t89, ptr %s0, ptr %l61)
  call void @llvm.memmove.p0.p0.i64(ptr %l63, ptr %t89, i64 176, i1 false)
  br label %bb25
bb25:
  %t91 = getelementptr %"compiler/scope:followItem", ptr %l63, i32 0, i32 1
  %t92 = load %"compiler/scope:fnRec", ptr %t91
  store %"compiler/scope:fnRec" %t92, ptr %l8
  %t94 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eAt__Hcba85181f1f46e0ef99a47a3ca1cb265(ptr %t95, ptr %s0, ptr %s0, ptr %l7, i64 %t94)
  call void @llvm.memmove.p0.p0.i64(ptr %l67, ptr %t95, i64 176, i1 false)
  br label %bb26
bb26:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afollowItem(ptr %t98, ptr %s0, ptr %l67)
  call void @llvm.memmove.p0.p0.i64(ptr %l69, ptr %t98, i64 176, i1 false)
  br label %bb27
bb27:
  %t100 = getelementptr %"compiler/scope:followItem", ptr %l69, i32 0, i32 1
  %t101 = load %"compiler/scope:fnRec", ptr %t100
  store %"compiler/scope:fnRec" %t101, ptr %l9
  %t103 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 0
  %t104 = load i64, ptr %t103, !tbaa !24
  store i64 %t104, ptr %l71, !tbaa !24
  %t105 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 0
  %t106 = load i64, ptr %t105, !tbaa !24
  store i64 %t106, ptr %l73, !tbaa !24
  %t109 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eI64(ptr %l71, ptr %l73)
  store i1 %t109, ptr %l75
  br label %bb28
bb28:
  %t110 = load i1, ptr %l75, !tbaa !21
  br i1 %t110, label %bb29, label %bb30
bb29:
  %t111 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 1
  %t112 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 1
  %t115 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eEq_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %s0, ptr %t111, ptr %t112)
  store i1 %t115, ptr %l79
  br label %bb31
bb30:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb32
bb31:
  %t116 = load i1, ptr %l79, !tbaa !21
  store i1 %t116, ptr %l76, !tbaa !21
  br label %bb32
bb32:
  %t117 = load i1, ptr %l76, !tbaa !21
  br i1 %t117, label %bb33, label %bb34
bb33:
  %t118 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 2
  %t119 = load i1, ptr %t118, !tbaa !21
  store i1 %t119, ptr %l81, !tbaa !21
  %t120 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 2
  %t121 = load i1, ptr %t120, !tbaa !21
  store i1 %t121, ptr %l83, !tbaa !21
  %t124 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %l81, ptr %l83)
  store i1 %t124, ptr %l85
  br label %bb35
bb34:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb36
bb35:
  %t125 = load i1, ptr %l85, !tbaa !21
  store i1 %t125, ptr %l80, !tbaa !21
  br label %bb36
bb36:
  %t126 = load i1, ptr %l80, !tbaa !21
  %t127 = xor i1 %t126, true
  store i1 %t127, ptr %l58, !tbaa !21
  br label %bb37
bb37:
  %t129 = load i1, ptr %l58, !tbaa !21
  br i1 %t129, label %bb38, label %bb39
bb38:
  store { i64, [2 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [2 x i64] }, ptr %t130, i32 0, i32 0
  store i64 6, ptr %t131
  %t132 = load { i64, [2 x i64] }, ptr %t130
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t132, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t134 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eAt__Hcba85181f1f46e0ef99a47a3ca1cb265(ptr %t135, ptr %s0, ptr %s0, ptr %l6, i64 %t134)
  call void @llvm.memmove.p0.p0.i64(ptr %l90, ptr %t135, i64 176, i1 false)
  br label %bb41
bb41:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afollowItem(ptr %t138, ptr %s0, ptr %l90)
  call void @llvm.memmove.p0.p0.i64(ptr %l92, ptr %t138, i64 176, i1 false)
  br label %bb42
bb42:
  %t140 = getelementptr %"compiler/scope:followItem", ptr %l92, i32 0, i32 1
  %t141 = load %"compiler/scope:fnRec", ptr %t140
  store %"compiler/scope:fnRec" %t141, ptr %l93
  %t143 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s0, ptr %l93)
  store %"compiler/scope:fnRec" %t143, ptr %l95
  br label %bb43
bb43:
  %t144 = load %"compiler/scope:fnRec", ptr %l95
  store %"compiler/scope:fnRec" %t144, ptr %l10
  store { i64, [2 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [2 x i64] }, ptr %t145, i32 0, i32 0
  store i64 0, ptr %t146
  %t147 = load { i64, [2 x i64] }, ptr %t145
  store { i64, [2 x i64] } %t147, ptr %l11
  store %olang.scope zeroinitializer, ptr %s3
  %t149 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eAt__Hcba85181f1f46e0ef99a47a3ca1cb265(ptr %t150, ptr %s0, ptr %s0, ptr %l6, i64 %t149)
  call void @llvm.memmove.p0.p0.i64(ptr %l99, ptr %t150, i64 176, i1 false)
  br label %bb44
bb44:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afollowItem(ptr %t153, ptr %s0, ptr %l99)
  call void @llvm.memmove.p0.p0.i64(ptr %l101, ptr %t153, i64 176, i1 false)
  br label %bb45
bb45:
  %t155 = getelementptr %"compiler/scope:followItem", ptr %l101, i32 0, i32 2
  %t156 = getelementptr %"compiler/scope:fnRecs", ptr %t155, i32 0, i32 0
  store ptr %t156, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s4
  %t158 = load i64, ptr %l13, !tbaa !24
  store i64 %t158, ptr %l103, !tbaa !24
  %t159 = load ptr, ptr %l12, !tbaa !29
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s3, ptr %t159)
  store i64 %t161, ptr %l105
  br label %bb47
bb47:
  %t162 = load i64, ptr %l103, !tbaa !24
  %t163 = load i64, ptr %l105, !tbaa !24
  %t164 = icmp slt i64 %t162, %t163
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s4)
  br label %bb75
bb49:
  br label %bb50
bb50:
  %t168 = load ptr, ptr %l12, !tbaa !29
  %t169 = load i64, ptr %l13, !tbaa !24
  %t172 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s3, ptr %s3, ptr %t168, i64 %t169)
  store %"compiler/scope:fnRec" %t172, ptr %l110
  br label %bb51
bb51:
  %t174 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s4, ptr %l110)
  store %"compiler/scope:fnRec" %t174, ptr %l112
  br label %bb52
bb52:
  %t175 = load %"compiler/scope:fnRec", ptr %l112
  store %"compiler/scope:fnRec" %t175, ptr %l14
  %t176 = getelementptr %"compiler/scope:fnRec", ptr %l14, i32 0, i32 0
  %t177 = load i64, ptr %t176, !tbaa !24
  %t178 = getelementptr %"compiler/scope:fnRec", ptr %l10, i32 0, i32 0
  %t179 = load i64, ptr %t178, !tbaa !24
  %t182 = icmp ne i64 %t177, %t179
  br i1 %t182, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb55
bb54:
  %t184 = getelementptr %"compiler/scope:fnRec", ptr %l14, i32 0, i32 2
  %t185 = load i1, ptr %t184, !tbaa !21
  %t186 = getelementptr %"compiler/scope:fnRec", ptr %l10, i32 0, i32 2
  %t187 = load i1, ptr %t186, !tbaa !21
  %t190 = icmp ne i1 %t185, %t187
  store i1 %t190, ptr %l116, !tbaa !21
  br label %bb55
bb55:
  %t192 = load i1, ptr %l116, !tbaa !21
  br i1 %t192, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s4)
  br label %bb74
bb57:
  br label %bb58
bb58:
  %t193 = load i64, ptr %l3, !tbaa !24
  store i64 %t193, ptr %l120, !tbaa !24
  %t194 = getelementptr %"compiler/scope:fnRec", ptr %l14, i32 0, i32 1
  %t196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %s4, ptr %t194)
  store i64 %t196, ptr %l122
  br label %bb59
bb59:
  %t197 = load i64, ptr %l120, !tbaa !24
  %t198 = load i64, ptr %l122, !tbaa !24
  %t199 = icmp slt i64 %t197, %t198
  br i1 %t199, label %bb60, label %bb61
bb60:
  %t201 = getelementptr %"compiler/scope:fnRec", ptr %l14, i32 0, i32 1
  %t202 = load i64, ptr %l3, !tbaa !24
  %t205 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %s4, ptr %t201, i64 %t202)
  store { i64, [2 x i64] } %t205, ptr %l127
  br label %bb62
bb61:
  store { i64, [2 x i64] } zeroinitializer, ptr %t206
  %t207 = getelementptr { i64, [2 x i64] }, ptr %t206, i32 0, i32 0
  store i64 0, ptr %t207
  %t208 = load { i64, [2 x i64] }, ptr %t206
  store { i64, [2 x i64] } %t208, ptr %l124
  br label %bb63
bb62:
  %t210 = load { i64, [2 x i64] }, ptr %l127
  store { i64, [2 x i64] } %t210, ptr %l124
  br label %bb63
bb63:
  %t211 = load { i64, [2 x i64] }, ptr %l124
  store { i64, [2 x i64] } %t211, ptr %l15
  %t212 = load { i64, [2 x i64] }, ptr %l15
  %t214 = extractvalue { i64, [2 x i64] } %t212, 0
  %t215 = icmp eq i64 %t214, 0
  br i1 %t215, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb70
bb65:
  %t217 = load { i64, [2 x i64] }, ptr %l11
  %t219 = extractvalue { i64, [2 x i64] } %t217, 0
  %t220 = icmp eq i64 %t219, 0
  %t222 = xor i1 %t220, true
  br i1 %t222, label %bb66, label %bb67
bb66:
  %t224 = load { i64, [2 x i64] }, ptr %l11
  store { i64, [2 x i64] } %t224, ptr %l136
  %t225 = load { i64, [2 x i64] }, ptr %l15
  store { i64, [2 x i64] } %t225, ptr %l138
  %t228 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l136, ptr %l138)
  store i1 %t228, ptr %l140
  br label %bb68
bb67:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb69
bb68:
  %t229 = load i1, ptr %l140, !tbaa !21
  %t230 = xor i1 %t229, true
  store i1 %t230, ptr %l135, !tbaa !21
  br label %bb69
bb69:
  %t232 = load i1, ptr %l135, !tbaa !21
  store i1 %t232, ptr %l131, !tbaa !21
  br label %bb70
bb70:
  %t233 = load i1, ptr %l131, !tbaa !21
  br i1 %t233, label %bb71, label %bb72
bb71:
  store { i64, [2 x i64] } zeroinitializer, ptr %t234
  %t235 = getelementptr { i64, [2 x i64] }, ptr %t234, i32 0, i32 0
  store i64 6, ptr %t235
  %t236 = load { i64, [2 x i64] }, ptr %t234
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t236, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  %t238 = load { i64, [2 x i64] }, ptr %l15
  store { i64, [2 x i64] } %t238, ptr %l11
  call void @__olang_scope_close(ptr %s4)
  br label %bb74
bb74:
  %t240 = load i64, ptr %l13, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l13, !tbaa !24
  br label %bb46
bb75:
  call void @__olang_scope_close(ptr %s3)
  %t244 = load { i64, [2 x i64] }, ptr %l11
  %t246 = extractvalue { i64, [2 x i64] } %t244, 0
  %t247 = icmp eq i64 %t246, 0
  %t249 = xor i1 %t247, true
  br i1 %t249, label %bb76, label %bb77
bb76:
  %t251 = load { i64, [2 x i64] }, ptr %l11
  store { i64, [2 x i64] } %t251, ptr %l149
  br label %bb78
bb77:
  store { i64, [2 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [2 x i64] }, ptr %t253, i32 0, i32 0
  store i64 6, ptr %t254
  %t255 = load { i64, [2 x i64] }, ptr %t253
  store { i64, [2 x i64] } %t255, ptr %l149
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s0)
  %t257 = load { i64, [2 x i64] }, ptr %l149
  store { i64, [2 x i64] } %t257, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstStart(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l4 = alloca i64
  %l5 = alloca %"compiler/scope:instTree"
  %l6 = alloca ptr
  %l7 = alloca %"compiler/scope:instTree"
  %l16 = alloca ptr
  %l17 = alloca %"compiler/scope:instTree"
  %l29 = alloca i32
  %l32 = alloca ptr
  %l34 = alloca i1
  %l37 = alloca i1
  %l45 = alloca i1
  %l49 = alloca i1
  %l51 = alloca i1
  %l56 = alloca { i64, ptr }
  %l59 = alloca i1
  %l60 = alloca ptr
  %l65 = alloca i32
  %l66 = alloca i1
  %l74 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l75 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i32
  %l80 = alloca i1
  %l81 = alloca %"compiler/scope:instTree"
  %l85 = alloca %"compiler/scope:instTree"
  %l86 = alloca i32
  %l88 = alloca %"compiler/scope:instTree"
  %l89 = alloca %"compiler/scope:instTree"
  %l91 = alloca i64
  %l94 = alloca ptr
  %l95 = alloca i64
  %l99 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = call %"compiler/scope:instTree" @compiler_2fscope_3ainstTree_2ector(ptr %v0)
  store %"compiler/scope:instTree" %t2, ptr %l7
  br label %bb1
bb1:
  %t3 = load %"compiler/scope:instTree", ptr %l7
  %t4 = load ptr, ptr %l6, !tbaa !29
  %t5 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 241
  store %"compiler/scope:instTree" %t3, ptr %t5
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 242
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t8)
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 243
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t12)
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 247
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H844a4c8d36c5711874668040024501ec(ptr %v0, ptr %t16)
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 250
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t20)
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = call %"compiler/scope:instTree" @compiler_2fscope_3ainstTree_2ector(ptr %v0)
  store %"compiler/scope:instTree" %t23, ptr %l17
  br label %bb6
bb6:
  %t24 = load %"compiler/scope:instTree", ptr %l17
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 245
  store %"compiler/scope:instTree" %t24, ptr %t26
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 27
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  br i1 %t32, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_123350225994a843_51ae8a17768a608f)
  unreachable
bb8:
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 27
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Body", ptr %t37, i32 0, i32 2
  %t41 = load i32, ptr %t40, !tbaa !23
  store i32 %t41, ptr %l1, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l1, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l29
  br label %bb10
bb10:
  %t53 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t55 = trunc i64 21 to i32
  %t56 = icmp eq i32 %t53, %t55
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l32, !tbaa !29
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/scope:Scoper", ptr %t61, i32 0, i32 105
  %t64 = load i1, ptr %t63, !tbaa !21
  br i1 %t64, label %bb13, label %bb14
bb12:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb23
bb13:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb18
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 27
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_df1679ac0239a2b4_926146d867d3a5b0)
  unreachable
bb16:
  br label %bb17
bb17:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/scope:Scoper", ptr %t73, i32 0, i32 27
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Body", ptr %t76, i32 0, i32 14
  %t80 = load i1, ptr %t79, !tbaa !21
  store i1 %t80, ptr %l37, !tbaa !21
  br label %bb18
bb18:
  %t82 = load i1, ptr %l37, !tbaa !21
  br i1 %t82, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb22
bb20:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/scope:Scoper", ptr %t84, i32 0, i32 28
  %t87 = load i64, ptr %t86, !tbaa !24
  %t90 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenBody(ptr %v0, ptr %t83, i64 %t87)
  store i1 %t90, ptr %l49
  br label %bb21
bb21:
  %t91 = load i1, ptr %l49, !tbaa !21
  store i1 %t91, ptr %l45, !tbaa !21
  br label %bb22
bb22:
  %t92 = load i1, ptr %l45, !tbaa !21
  %t93 = xor i1 %t92, true
  store i1 %t93, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t95 = load i1, ptr %l34, !tbaa !21
  br i1 %t95, label %bb24, label %bb25
bb24:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l1, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t101, i32 %t102)
  store { i64, ptr } %t105, ptr %l56
  br label %bb26
bb25:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb27
bb26:
  %t106 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  %t109 = icmp eq i64 %t107, 1
  store i1 %t109, ptr %l51, !tbaa !21
  br label %bb27
bb27:
  %t111 = load i1, ptr %l51, !tbaa !21
  br i1 %t111, label %bb28, label %bb29
bb28:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l60, !tbaa !29
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/scope:Scoper", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %l1, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t118, i32 %t119)
  store i32 %t122, ptr %l65
  br label %bb30
bb29:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb32
bb30:
  %t123 = load ptr, ptr %l60, !tbaa !29
  %t124 = load i32, ptr %l65, !tbaa !23
  %t125 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstType(ptr %v0, ptr %t123, i32 %t124)
  store i1 %t125, ptr %l66
  br label %bb31
bb31:
  %t126 = load i1, ptr %l66, !tbaa !21
  store i1 %t126, ptr %l59, !tbaa !21
  br label %bb32
bb32:
  %t127 = load i1, ptr %l59, !tbaa !21
  %t128 = load ptr, ptr %l32, !tbaa !29
  %t129 = getelementptr %"compiler/scope:Scoper", ptr %t128, i32 0, i32 246
  store i1 %t127, ptr %t129, !tbaa !21
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/scope:Scoper", ptr %t130, i32 0, i32 28
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/scope:Scoper", ptr %t134, i32 0, i32 239
  %t137 = load i64, ptr %t136, !tbaa !24
  %t140 = icmp ne i64 %t133, %t137
  br i1 %t140, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  br label %bb35
bb35:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/scope:Scoper", ptr %t142, i32 0, i32 244
  %t146 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3_H3b2fdbab8fa29b176fdfd3c254556d5a(ptr %v0, ptr %v0, ptr %t144)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t146, ptr %l74
  br label %bb36
bb36:
  %t147 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l74
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t147, ptr %l3
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s3
  %t149 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20compiler_2fscope_3ains_Hfae636decfc25ec3f914076facfb6035(ptr %v0, ptr %l3)
  %t150 = extractvalue { i32, i64 } %t149, 1
  %t151 = extractvalue { i32, i64 } %t149, 0
  store i32 %t151, ptr %l78
  %t152 = icmp ne i32 %t151, 0
  br i1 %t152, label %bb39, label %ok.153, !prof !99
ok.153:
  store i64 %t150, ptr %l77
  br label %bb38
bb38:
  %t154 = load i64, ptr %l77, !tbaa !24
  store i64 %t154, ptr %l75, !tbaa !24
  br label %bb41
bb39:
  %t155 = load i32, ptr %l78, !tbaa !23
  %t156 = ashr i32 %t155, 16
  %t158 = icmp eq i32 %t156, 1
  store i1 %t158, ptr %l80, !tbaa !21
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s3)
  br label %bb55
bb41:
  %t159 = load i64, ptr %l75, !tbaa !24
  store i64 %t159, ptr %l4, !tbaa !24
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/scope:Scoper", ptr %t160, i32 0, i32 244
  %t163 = load i64, ptr %l4, !tbaa !24
  %t166 = call { i32, %"compiler/scope:instTree" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3_H35fef28f9fe1c3270accf417057fa9eb(ptr %v0, ptr %v0, ptr %t162, i64 %t163)
  %t167 = extractvalue { i32, %"compiler/scope:instTree" } %t166, 1
  %t168 = extractvalue { i32, %"compiler/scope:instTree" } %t166, 0
  store i32 %t168, ptr %l86
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb43, label %ok.170, !prof !99
ok.170:
  store %"compiler/scope:instTree" %t167, ptr %l85
  br label %bb42
bb42:
  %t172 = call %"compiler/scope:instTree" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstTree(ptr %s3, ptr %l85)
  store %"compiler/scope:instTree" %t172, ptr %l88
  br label %bb45
bb43:
  br label %bb44
bb44:
  %t173 = call %"compiler/scope:instTree" @compiler_2fscope_3ainstTree_2ector(ptr %v0)
  store %"compiler/scope:instTree" %t173, ptr %l89
  br label %bb46
bb45:
  %t174 = load %"compiler/scope:instTree", ptr %l88
  store %"compiler/scope:instTree" %t174, ptr %l81
  br label %bb47
bb46:
  %t175 = load %"compiler/scope:instTree", ptr %l89
  store %"compiler/scope:instTree" %t175, ptr %l81
  br label %bb47
bb47:
  %t176 = load %"compiler/scope:instTree", ptr %l81
  store %"compiler/scope:instTree" %t176, ptr %l5
  %t177 = getelementptr %"compiler/scope:instTree", ptr %l5, i32 0, i32 0
  %t179 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eLen_3ccompiler_2fscope_3ainstNode_3e(ptr %s3, ptr %t177)
  store i64 %t179, ptr %l91
  br label %bb48
bb48:
  %t180 = load i64, ptr %l91, !tbaa !24
  %t181 = icmp sgt i64 %t180, 0
  br i1 %t181, label %bb49, label %bb50
bb49:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/scope:Scoper", ptr %t183, i32 0, i32 243
  store ptr %t185, ptr %l94, !tbaa !29
  %t186 = load i64, ptr %l4, !tbaa !24
  store i64 %t186, ptr %l95, !tbaa !24
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/scope:Scoper", ptr %t187, i32 0, i32 241
  %t192 = call i64 @compiler_2fscope_2ecopyNode(ptr %s3, ptr %v0, ptr %l5, i64 0, ptr %t189)
  store i64 %t192, ptr %l99
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t193 = load ptr, ptr %l94, !tbaa !29
  %t194 = load i64, ptr %l95, !tbaa !24
  %t195 = load i64, ptr %l99, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t193, i64 %t194, i64 %t195)
  br label %bb52
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s3)
  br label %bb54
bb54:
  br label %bb37
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstStruct(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca i32
  %l14 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i1
  %l20 = alloca i32
  %rv = alloca i32
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
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load i1, ptr %l8, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l14
  br label %bb4
bb3:
  %t23 = load i32, ptr %l1, !tbaa !23
  store i32 %t23, ptr %l9, !tbaa !23
  br label %bb5
bb4:
  %t25 = load i32, ptr %l14, !tbaa !23
  store i32 %t25, ptr %l9, !tbaa !23
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t27 = load i32, ptr %l9, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load i32, ptr %l16, !tbaa !23
  store i32 %t29, ptr %l2, !tbaa !23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l2, !tbaa !23
  %t34 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t30, i32 %t31)
  store i1 %t34, ptr %l19
  br label %bb7
bb7:
  %t35 = load i1, ptr %l19, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t36 = load i32, ptr %l2, !tbaa !23
  store i32 %t36, ptr %l20, !tbaa !23
  br label %bb10
bb9:
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t38, ptr %l20, !tbaa !23
  br label %bb10
bb10:
  %t40 = load i32, ptr %l20, !tbaa !23
  store i32 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i64
  %l26 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 167
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, 0
  store i1 %t10, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l5, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb9
bb5:
  %t13 = load i64, ptr %l1, !tbaa !24
  store i64 %t13, ptr %l9, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 167
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = icmp eq ptr %t17, null
  br i1 %t19, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_8c5cdaf113a9adb2_ca6187f954f52aa6)
  unreachable
bb7:
  br label %bb8
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 167
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Versions", ptr %t24, i32 0, i32 2
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = load i64, ptr %l9, !tbaa !24
  %t33 = icmp sge i64 %t31, %t30
  store i1 %t33, ptr %l8, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l8, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 167
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  br i1 %t42, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_919120fb9e46bed9_9145256340cf48d)
  unreachable
bb14:
  br label %bb15
bb15:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 167
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t50 = getelementptr %"compiler/typed:Versions", ptr %t47, i32 0, i32 2
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  store { i64, ptr } %t51, ptr %l26, !tbaa !27
  %t52 = load i64, ptr %l1, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i1, ptr %t55, i64 %t52
  %t57 = load i1, ptr %t56, !tbaa !31
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 27
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_6e9c200a4ae12bfa_506dc59c2cdd99de)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 27
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 5
  store ptr %t14, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t16 = load i64, ptr %l3, !tbaa !24
  store i64 %t16, ptr %l12, !tbaa !24
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load i64, ptr %l12, !tbaa !24
  %t21 = load i64, ptr %l14, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t26, i64 %t27)
  store i32 %t30, ptr %l19
  br label %bb9
bb9:
  %t31 = load i32, ptr %l19, !tbaa !23
  %t34 = sext i32 %t31 to i64
  %t38 = icmp eq i64 %t34, %a1
  br i1 %t38, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb4
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca i64
  %l33 = alloca { i64, ptr }
  %l35 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 1
  %t4 = load { i64, [2 x i64] }, ptr %t3
  store { i64, [2 x i64] } %t4, ptr %l2
  %t6 = load { i64, [2 x i64] }, ptr %l2
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t12 = getelementptr { i64 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  store i64 %t13, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb19
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l12, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t22, i64 %t23)
  store i64 %t26, ptr %l16
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l12, !tbaa !29
  %t28 = load i64, ptr %l16, !tbaa !24
  %t29 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t29, ptr %l17
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l17, !tbaa !29
  store ptr %t30, ptr %l4, !tbaa !29
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Func", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb9
bb7:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Body", ptr %t38, i32 0, i32 5
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t40)
  store i64 %t42, ptr %l24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l24, !tbaa !24
  %t44 = icmp ne i64 %t43, 1
  store i1 %t44, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l21, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/load:Loader", ptr %t54, i32 0, i32 3
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = getelementptr %"compiler/ast:Func", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %t60, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t57, i32 %t61)
  store { i64, ptr } %t64, ptr %l33
  br label %bb13
bb13:
  %t65 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t65, ptr %l5, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t66, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t68, ptr %l35
  br label %bb14
bb14:
  %t69 = load i1, ptr %l35, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb18
bb16:
  %t70 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t70, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t72, ptr %l38
  br label %bb17
bb17:
  %t73 = load i1, ptr %l38, !tbaa !21
  store i1 %t73, ptr %l36, !tbaa !21
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s1)
  %t74 = load i1, ptr %l36, !tbaa !21
  store i1 %t74, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_23c81803d40008f7_62b49cfbea8bbbfb)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l8 = alloca { i64, [2 x i64] }
  %l10 = alloca { i64, [2 x i64] }
  %l12 = alloca i1
  %l16 = alloca i1
  %l33 = alloca i1
  %l34 = alloca { i64, [2 x i64] }
  %l39 = alloca i1
  %l44 = alloca i64
  %rv = alloca { i64, [2 x i64] }
  %t26 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t6, ptr %l8
  %t7 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t7, ptr %l10
  %t10 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l8, ptr %l10)
  store i1 %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i1, ptr %l12, !tbaa !21
  store i1 %t11, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t12 = load i1, ptr %l7, !tbaa !21
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t13 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t13, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t15 = load { i64, [2 x i64] }, ptr %l1
  %t17 = extractvalue { i64, [2 x i64] } %t15, 0
  %t18 = icmp eq i64 %t17, 3
  br i1 %t18, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb9:
  %t20 = load { i64, [2 x i64] }, ptr %l2
  %t22 = extractvalue { i64, [2 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 3
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t25 = load i1, ptr %l16, !tbaa !21
  br i1 %t25, label %bb11, label %bb12
bb11:
  store { i64, [2 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 0
  store i64 3, ptr %t27
  %t28 = load { i64, [2 x i64] }, ptr %t26
  store { i64, [2 x i64] } %t28, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t30 = load { i64, [2 x i64] }, ptr %l1
  %t32 = extractvalue { i64, [2 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 1
  br i1 %t33, label %bb14, label %bb15
bb14:
  %t35 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t36 = getelementptr { i32 }, ptr %t35, i32 0, i32 0
  %t37 = load i32, ptr %t36
  store i32 %t37, ptr %l3, !tbaa !23
  br label %bb16
bb15:
  br label %bb32
bb16:
  %t39 = load { i64, [2 x i64] }, ptr %l2
  %t41 = extractvalue { i64, [2 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 1
  br i1 %t42, label %bb17, label %bb18
bb17:
  %t44 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t45 = getelementptr { i32 }, ptr %t44, i32 0, i32 0
  %t46 = load i32, ptr %t45
  store i32 %t46, ptr %l4, !tbaa !23
  br label %bb19
bb18:
  br label %bb27
bb19:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 27
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_762e8eb07b800621_dae241c340f20eed)
  unreachable
bb21:
  br label %bb22
bb22:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 27
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load i32, ptr %l3, !tbaa !23
  %t60 = load i32, ptr %l4, !tbaa !23
  %t64 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t58, i32 %t59, i32 %t60)
  store i1 %t64, ptr %l33
  br label %bb23
bb23:
  %t65 = load i1, ptr %l33, !tbaa !21
  br i1 %t65, label %bb24, label %bb25
bb24:
  %t66 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t66, ptr %l34
  br label %bb26
bb25:
  %t68 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t68, ptr %l34
  br label %bb26
bb26:
  %t70 = load { i64, [2 x i64] }, ptr %l34
  store { i64, [2 x i64] } %t70, ptr %rv
  br label %ret
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t71 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t71, ptr %rv
  br label %ret
bb31:
  call void @__olang_check_failed(ptr @olang_loc_461ac7e38f90e4f9_622b75bf47879645)
  unreachable
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_c8908c94a663d482_19394df8c95d78e)
  unreachable
bb37:
  %t73 = load { i64, [2 x i64] }, ptr %l2
  %t75 = call i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %t73)
  store i1 %t75, ptr %l39
  br label %bb38
bb38:
  %t76 = load i1, ptr %l39, !tbaa !21
  br i1 %t76, label %bb39, label %bb40
bb39:
  %t77 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t77, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load { i64, [2 x i64] }, ptr %l2
  %t81 = load { i64, [2 x i64] }, ptr %l1
  %t85 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t79, { i64, [2 x i64] } %t80, { i64, [2 x i64] } %t81)
  store i64 %t85, ptr %l44
  br label %bb42
bb42:
  %t86 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t87 = load i64, ptr %l44, !tbaa !24
  %t89 = icmp eq i64 %t87, %t86
  br i1 %t89, label %bb43, label %bb44
bb43:
  %t91 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t91, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t93 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t93, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepsAtHome(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l21 = alloca i64
  %l24 = alloca i64
  %l47 = alloca i1
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
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %s0, ptr %t6, i32 %a1)
  store { i64, ptr } %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t16 = sdiv i64 %t14, 3
  store i64 %t16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb2, label %bb3
bb2:
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb4:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l24, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t44 = load i64, ptr %l24, !tbaa !24
  store i64 %t44, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l21, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb9, label %bb10
bb9:
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t66 = mul i64 3, %t64
  %t68 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i64, ptr %t69, i64 %t66
  %t71 = load i64, ptr %t70, !tbaa !34
  %t75 = icmp eq i64 %t71, %a2
  br i1 %t75, label %bb12, label %bb13
bb12:
  %t77 = load i64, ptr %l9, !tbaa !24
  %t79 = mul i64 3, %t77
  %t81 = add i64 %t79, 1
  %t83 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i64, ptr %t84, i64 %t81
  %t86 = load i64, ptr %t85, !tbaa !34
  %t87 = load i64, ptr @G_2ecompiler_2ftypes_2eKeepsHome, !tbaa !24
  %t90 = icmp eq i64 %t86, %t87
  store i1 %t90, ptr %l47, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb14
bb14:
  %t92 = load i1, ptr %l47, !tbaa !21
  br i1 %t92, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t94 = load i64, ptr %l8, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l8, !tbaa !24
  br label %bb8
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/scope:rel"
  %l6 = alloca { i64, [2 x i64] }
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca i32
  %l10 = alloca i32
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"compiler/scope:rel"
  %l28 = alloca { i64, [1 x i64] }
  %l35 = alloca ptr
  %l40 = alloca %"compiler/typed:Local"
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l59 = alloca %"compiler/typed:Local"
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l12, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v2, ptr %t4)
  store i64 %t6, ptr %l14
  br label %bb2
bb2:
  %t7 = load i64, ptr %l12, !tbaa !24
  %t8 = load i64, ptr %l14, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb32
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v2, ptr %t13, i64 %t14)
  store %"compiler/scope:rel" %t17, ptr %l19
  br label %bb6
bb6:
  %t18 = load %"compiler/scope:rel", ptr %l19
  store %"compiler/scope:rel" %t18, ptr %l5
  %t19 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 0
  %t20 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t20, ptr %l6
  %t22 = load { i64, [2 x i64] }, ptr %l6
  %t24 = extractvalue { i64, [2 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 2
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  br label %bb31
bb8:
  br label %bb9
bb9:
  %t29 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t30 = getelementptr { i64 }, ptr %t29, i32 0, i32 0
  %t31 = load i64, ptr %t30
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 6
  %t39 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v1, ptr %t35, i64 %t31)
  store { i64, [1 x i64] } %t39, ptr %l28
  br label %bb10
bb10:
  %t40 = load { i64, [1 x i64] }, ptr %l28
  store { i64, [1 x i64] } %t40, ptr %l8
  %t41 = load { i64, [1 x i64] }, ptr %l8
  %t43 = extractvalue { i64, [1 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 0
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = getelementptr { i64, [1 x i64] }, ptr %l8, i32 0, i32 1
  %t47 = getelementptr { i32 }, ptr %t46, i32 0, i32 0
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l9, !tbaa !23
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/load:Loader", ptr %t56, i32 0, i32 3
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l35, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 7
  %t63 = load i32, ptr %l9, !tbaa !23
  %t65 = sext i32 %t63 to i64
  %t68 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t62, i64 %t65)
  store %"compiler/typed:Local" %t68, ptr %l40
  br label %bb14
bb14:
  %t69 = getelementptr %"compiler/typed:Local", ptr %l40, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t71 = load ptr, ptr %l35, !tbaa !29
  %t73 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v3, ptr %t71, i32 %t70)
  store { i64, ptr } %t73, ptr %l42
  br label %bb15
bb15:
  %t74 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t74, ptr %l43, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  store i64 %t76, ptr %l44, !tbaa !24
  %t77 = load i64, ptr %l44, !tbaa !24
  %t78 = mul i64 %t77, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t78)
  %t80 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l45, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = load i64, ptr %l44, !tbaa !24
  %t87 = mul i64 %t86, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t83, ptr %t85, i64 %t87, i1 false)
  %t88 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t88, ptr %l43, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t89, ptr %rv
  br label %ret
bb16:
  %t90 = load { i64, [1 x i64] }, ptr %l8
  %t92 = extractvalue { i64, [1 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 4
  br i1 %t93, label %bb17, label %bb18
bb17:
  %t95 = getelementptr { i64, [1 x i64] }, ptr %l8, i32 0, i32 1
  %t96 = getelementptr { i32 }, ptr %t95, i32 0, i32 0
  %t97 = load i32, ptr %t96
  store i32 %t97, ptr %l10, !tbaa !23
  br label %bb19
bb18:
  br label %bb25
bb19:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Body", ptr %t99, i32 0, i32 14
  %t102 = load i1, ptr %t101, !tbaa !21
  br i1 %t102, label %bb20, label %bb21
bb20:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/load:Loader", ptr %t110, i32 0, i32 3
  %t113 = load ptr, ptr %t112, !tbaa !29
  store ptr %t113, ptr %l54, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Body", ptr %t114, i32 0, i32 7
  %t117 = load i32, ptr %l10, !tbaa !23
  %t119 = sext i32 %t117 to i64
  %t122 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t116, i64 %t119)
  store %"compiler/typed:Local" %t122, ptr %l59
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t123 = getelementptr %"compiler/typed:Local", ptr %l59, i32 0, i32 0
  %t124 = load i32, ptr %t123, !tbaa !23
  %t125 = load ptr, ptr %l54, !tbaa !29
  %t127 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v3, ptr %t125, i32 %t124)
  store { i64, ptr } %t127, ptr %l61
  br label %bb23
bb23:
  %t128 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t128, ptr %l62, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  store i64 %t130, ptr %l63, !tbaa !24
  %t131 = load i64, ptr %l63, !tbaa !24
  %t132 = mul i64 %t131, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l64, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = load i64, ptr %l63, !tbaa !24
  %t141 = mul i64 %t140, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t137, ptr %t139, i64 %t141, i1 false)
  %t142 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t142, ptr %l62, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_2906ca9d29f69631_82ae3e269cbacfc5)
  unreachable
bb30:
  br label %bb31
bb31:
  %t144 = load i64, ptr %l4, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l4, !tbaa !24
  br label %bb1
bb32:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l67, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t148, ptr %l68, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  store i64 %t150, ptr %l69, !tbaa !24
  %t151 = load i64, ptr %l69, !tbaa !24
  %t152 = mul i64 %t151, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t152)
  %t154 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l70, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l69, !tbaa !24
  %t161 = mul i64 %t160, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t157, ptr %t159, i64 %t161, i1 false)
  %t162 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t162, ptr %l68, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t163, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwHanded(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %s0 = alloca %olang.scope
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
  br label %bb8
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %s0, ptr %t23, ptr %t24)
  br label %bb7
bb7:
  br label %bb22
bb8:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l17, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 10
  store i1 %t34, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l18, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l4, !tbaa !29
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Slice", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %s0, ptr %t42, ptr %t46)
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Slice", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %s0, ptr %t49, ptr %t53, i1 true)
  br label %bb15
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Slice", ptr %t58, i32 0, i32 2
  %t61 = load ptr, ptr %t60, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %s0, ptr %t57, ptr %t61, i1 true)
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
  call void @__olang_check_failed(ptr @olang_loc_4f09217bbbe73e28_17ebc948c6ad3e44)
  unreachable
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l41 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l53 = alloca %"compiler/source:Span"
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 11
  store ptr %t3, ptr %l9, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 27
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_d50f79fefbee4394_12c4367532f3ae80)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 27
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l18
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l17
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t28 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  store i64 %t31, ptr %l3, !tbaa !24
  %t33 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t34 = load i32, ptr %t33, !tbaa !23
  %t36 = sext i32 %t34 to i64
  store i64 %t36, ptr %l4, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t44 = icmp sgt i64 %t38, %t41
  br i1 %t44, label %bb8, label %bb9
bb8:
  %t46 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t46, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t48 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t48, ptr %l5
  br label %bb11
bb11:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  br label %bb31
bb13:
  br label %bb14
bb14:
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t58, ptr %l33, !tbaa !27
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i8, ptr %t62, i64 %t59
  %t64 = load i8, ptr %t63, !tbaa !32
  %t66 = call i1 @compiler_2fscope_2eisNameChar(i8 %t64)
  store i1 %t66, ptr %l36
  br label %bb15
bb15:
  %t67 = load i1, ptr %l36, !tbaa !21
  br i1 %t67, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t68 = load i64, ptr %l3, !tbaa !24
  store i64 %t68, ptr %l6, !tbaa !24
  br label %bb18
bb17:
  br label %bb29
bb18:
  %t70 = load i64, ptr %l3, !tbaa !24
  %t71 = load i64, ptr %l4, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  br i1 %t74, label %bb19, label %bb20
bb19:
  %t76 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t76, ptr %l42, !tbaa !27
  %t77 = load i64, ptr %l3, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 %t77
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = call i1 @compiler_2fscope_2eisNameChar(i8 %t82)
  store i1 %t84, ptr %l45
  br label %bb21
bb20:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t85 = load i1, ptr %l45, !tbaa !21
  store i1 %t85, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l41, !tbaa !21
  %t87 = xor i1 %t86, true
  br i1 %t87, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t89 = load i64, ptr %l3, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l3, !tbaa !24
  br label %bb26
bb26:
  br label %bb18
bb27:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = trunc i64 %t93 to i32
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = trunc i64 %t96 to i32
  %t101 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t95, i32 %t98)
  store %"compiler/source:Span" %t101, ptr %l53
  br label %bb28
bb28:
  %t102 = load %"compiler/source:Span", ptr %l53
  store %"compiler/source:Span" %t102, ptr %l5
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb29:
  %t103 = load i64, ptr %l3, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l3, !tbaa !24
  br label %bb30
bb30:
  br label %bb11
bb31:
  %t107 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t107, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftedVal(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, { i64, [2 x i64] } %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:Val"
  %l3 = alloca { i64, [2 x i64] }
  %l6 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l11 = alloca { i64, [2 x i64] }
  %l13 = alloca { i64, [2 x i64] }
  %l15 = alloca i1
  %l18 = alloca %"compiler/scope:Val"
  %rv = alloca %"compiler/scope:Val"
  store ptr %a0, ptr %l0
  store %"compiler/scope:Val" %a1, ptr %l1
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, [2 x i64] } %a2, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t8 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t6)
  store i1 %t8, ptr %l8
  br label %bb3
bb3:
  %t9 = load i1, ptr %l8, !tbaa !21
  %t10 = xor i1 %t9, true
  store i1 %t10, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t12 = load i1, ptr %l6, !tbaa !21
  br i1 %t12, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb8
bb6:
  %t13 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t14 = load { i64, [2 x i64] }, ptr %t13
  store { i64, [2 x i64] } %t14, ptr %l11
  %t15 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t15, ptr %l13
  %t18 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l11, ptr %l13)
  store i1 %t18, ptr %l15
  br label %bb7
bb7:
  %t19 = load i1, ptr %l15, !tbaa !21
  store i1 %t19, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t20 = load i1, ptr %l10, !tbaa !21
  br i1 %t20, label %bb9, label %bb10
bb9:
  %t21 = load %"compiler/scope:Val", ptr %l1
  store %"compiler/scope:Val" %t21, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t23 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t24 = load { i64, [2 x i64] }, ptr %t23
  %t26 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t24)
  store %"compiler/scope:Val" %t26, ptr %l18
  br label %bb12
bb12:
  %t27 = load %"compiler/scope:Val", ptr %l18
  store %"compiler/scope:Val" %t27, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l9 = alloca %"compiler/typed:Local"
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/typed:Body", ptr %a1, i32 0, i32 7
  %t6 = sext i32 %a2 to i64
  %t9 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t3, i64 %t6)
  store %"compiler/typed:Local" %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = getelementptr %"compiler/typed:Local", ptr %l9, i32 0, i32 0
  %t11 = load i32, ptr %t10, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t13 = load i32, ptr %l4, !tbaa !23
  %t15 = icmp eq i32 %t13, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t17, ptr %l13, !tbaa !27
  br label %bb5
bb3:
  %t20 = load i32, ptr %l4, !tbaa !23
  %t23 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v2, ptr %s0, ptr %a3, i32 %t20)
  store { i64, ptr } %t23, ptr %l18
  br label %bb4
bb4:
  %t24 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t27 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t25, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l13, !tbaa !27
  br label %bb5
bb5:
  %t31 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l20, !tbaa !24
  %t33 = load i64, ptr %l20, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l21, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l20, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t44, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeCase(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %a1)
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
  %t15 = icmp eq i64 %t13, 7
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
  br label %bb7
bb6:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Make", ptr %t23, i32 0, i32 0
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 5}
  %t28 = trunc i64 1 to i32
  %t29 = icmp eq i32 %t26, %t28
  store i1 %t29, ptr %l8, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_ebf3252f75f0963d_4d00f10623fd4f01)
  unreachable
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t31 = load i1, ptr %l8, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l44 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l74 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l84 = alloca i1
  %l85 = alloca i1
  %l89 = alloca i1
  %l91 = alloca { i64, ptr }
  %l94 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i1
  %l110 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca i1
  %l120 = alloca i1
  %l121 = alloca i1
  %l126 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l135 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
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
  %t13 = icmp eq i64 %t11, 6
  store i1 %t13, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l17, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t16 = load ptr, ptr %l20, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l20, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 7
  store i1 %t22, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l21, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t25 = load ptr, ptr %l24, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l24, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 8
  store i1 %t31, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l25, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb103
bb17:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t34 = load ptr, ptr %l28, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb18, label %bb19
bb18:
  %t37 = load ptr, ptr %l28, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 18}
  %t40 = icmp eq i64 %t38, 5
  store i1 %t40, ptr %l29, !tbaa !21
  br label %bb19
bb19:
  %t41 = load i1, ptr %l29, !tbaa !21
  br i1 %t41, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  %t42 = load ptr, ptr %l1, !tbaa !29
  store ptr %t42, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t43 = load ptr, ptr %l32, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb22, label %bb23
bb22:
  %t46 = load ptr, ptr %l32, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 18}
  %t49 = icmp eq i64 %t47, 16
  store i1 %t49, ptr %l33, !tbaa !21
  br label %bb23
bb23:
  %t50 = load i1, ptr %l33, !tbaa !21
  br i1 %t50, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb103
bb27:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t52 = load ptr, ptr %l36, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb28, label %bb29
bb28:
  %t55 = load ptr, ptr %l36, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 18}
  %t58 = icmp eq i64 %t56, 0
  store i1 %t58, ptr %l37, !tbaa !21
  br label %bb29
bb29:
  %t59 = load i1, ptr %l37, !tbaa !21
  br i1 %t59, label %bb30, label %bb31
bb30:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t62, i32 0, i32 1
  %t64 = load i32, ptr %t63
  store i32 %t64, ptr %l2, !tbaa !23
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l2, !tbaa !23
  %t70 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t66, i32 %t67)
  store i1 %t70, ptr %l44
  br label %bb33
bb33:
  %t71 = load i1, ptr %l44, !tbaa !21
  store i1 %t71, ptr %l15, !tbaa !21
  br label %bb103
bb34:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t73 = load ptr, ptr %l45, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb35, label %bb36
bb35:
  %t76 = load ptr, ptr %l45, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 18}
  %t79 = icmp eq i64 %t77, 14
  store i1 %t79, ptr %l46, !tbaa !21
  br label %bb36
bb36:
  %t80 = load i1, ptr %l46, !tbaa !21
  br i1 %t80, label %bb37, label %bb38
bb37:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l3, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l3, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Try", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t94 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t87, ptr %t91)
  store i1 %t94, ptr %l54
  br label %bb40
bb40:
  %t95 = load i1, ptr %l54, !tbaa !21
  store i1 %t95, ptr %l15, !tbaa !21
  br label %bb103
bb41:
  %t96 = load ptr, ptr %l1, !tbaa !29
  store ptr %t96, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t97 = load ptr, ptr %l55, !tbaa !29
  %t98 = icmp ne ptr %t97, null
  br i1 %t98, label %bb42, label %bb43
bb42:
  %t100 = load ptr, ptr %l55, !tbaa !29
  %t101 = load i64, ptr %t100, !range !{i64 0, i64 18}
  %t103 = icmp eq i64 %t101, 17
  store i1 %t103, ptr %l56, !tbaa !21
  br label %bb43
bb43:
  %t104 = load i1, ptr %l56, !tbaa !21
  br i1 %t104, label %bb44, label %bb45
bb44:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t105, i32 0, i32 1
  %t108 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t107, i32 0, i32 2
  %t109 = load ptr, ptr %t108
  store ptr %t109, ptr %l4, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l4, !tbaa !29
  %t116 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t111, ptr %t112)
  store i1 %t116, ptr %l64
  br label %bb47
bb47:
  %t117 = load i1, ptr %l64, !tbaa !21
  store i1 %t117, ptr %l15, !tbaa !21
  br label %bb103
bb48:
  %t118 = load ptr, ptr %l1, !tbaa !29
  store ptr %t118, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t119 = load ptr, ptr %l65, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb49, label %bb50
bb49:
  %t122 = load ptr, ptr %l65, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 18}
  %t125 = icmp eq i64 %t123, 12
  store i1 %t125, ptr %l66, !tbaa !21
  br label %bb50
bb50:
  %t126 = load i1, ptr %l66, !tbaa !21
  br i1 %t126, label %bb51, label %bb52
bb51:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t129, i32 0, i32 2
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l5, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l5, !tbaa !29
  %t136 = getelementptr %"compiler/typed:Seq", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t140 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t133, ptr %t137)
  store i1 %t140, ptr %l74
  br label %bb54
bb54:
  %t141 = load i1, ptr %l74, !tbaa !21
  store i1 %t141, ptr %l15, !tbaa !21
  br label %bb103
bb55:
  %t142 = load ptr, ptr %l1, !tbaa !29
  store ptr %t142, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t143 = load ptr, ptr %l75, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb56, label %bb57
bb56:
  %t146 = load ptr, ptr %l75, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 18}
  %t149 = icmp eq i64 %t147, 9
  store i1 %t149, ptr %l76, !tbaa !21
  br label %bb57
bb57:
  %t150 = load i1, ptr %l76, !tbaa !21
  br i1 %t150, label %bb58, label %bb59
bb58:
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = getelementptr { i64, [5 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t153, i32 0, i32 2
  %t155 = load i32, ptr %t154, !range !{i32 0, i32 51}
  store i32 %t155, ptr %l6
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr { i64, [5 x i64] }, ptr %t157, i32 0, i32 1
  %t160 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t159, i32 0, i32 4
  %t161 = load { i64, ptr }, ptr %t160
  store { i64, ptr } %t161, ptr %l7, !tbaa !27
  br label %bb60
bb59:
  br label %bb69
bb60:
  %t163 = load i32, ptr %l6, !range !{i32 0, i32 51}
  %t165 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t163)
  store i1 %t165, ptr %l84
  br label %bb61
bb61:
  %t166 = load i1, ptr %l84, !tbaa !21
  br i1 %t166, label %bb62, label %bb63
bb62:
  %t167 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t171 = icmp sgt i64 %t169, 0
  store i1 %t171, ptr %l85, !tbaa !21
  br label %bb64
bb63:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb64
bb64:
  %t173 = load i1, ptr %l85, !tbaa !21
  br i1 %t173, label %bb65, label %bb66
bb65:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t175, ptr %l91, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr ptr, ptr %t177, i64 0
  %t179 = load ptr, ptr %t178, !tbaa !39
  %t183 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t174, ptr %t179)
  store i1 %t183, ptr %l94
  br label %bb67
bb66:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb68
bb67:
  %t184 = load i1, ptr %l94, !tbaa !21
  store i1 %t184, ptr %l89, !tbaa !21
  br label %bb68
bb68:
  %t185 = load i1, ptr %l89, !tbaa !21
  store i1 %t185, ptr %l15, !tbaa !21
  br label %bb103
bb69:
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t187 = load ptr, ptr %l95, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb70, label %bb71
bb70:
  %t190 = load ptr, ptr %l95, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 18}
  %t193 = icmp eq i64 %t191, 2
  store i1 %t193, ptr %l96, !tbaa !21
  br label %bb71
bb71:
  %t194 = load i1, ptr %l96, !tbaa !21
  br i1 %t194, label %bb72, label %bb73
bb72:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t197, i32 0, i32 1
  %t199 = load i32, ptr %t198
  store i32 %t199, ptr %l8, !tbaa !23
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr { i64, [5 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t203, i32 0, i32 2
  %t205 = load ptr, ptr %t204
  store ptr %t205, ptr %l9, !tbaa !29
  br label %bb74
bb73:
  br label %bb80
bb74:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l9, !tbaa !29
  %t211 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldPart(ptr %v0, ptr %v1, ptr %t207, ptr %t208)
  store i1 %t211, ptr %l105
  br label %bb75
bb75:
  %t212 = load i1, ptr %l105, !tbaa !21
  br i1 %t212, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l106, !tbaa !21
  br label %bb79
bb77:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l9, !tbaa !29
  %t215 = load i32, ptr %l8, !tbaa !23
  %t219 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstCopy(ptr %v0, ptr %v1, ptr %t213, ptr %t214, i32 %t215)
  store i1 %t219, ptr %l110
  br label %bb78
bb78:
  %t220 = load i1, ptr %l110, !tbaa !21
  store i1 %t220, ptr %l106, !tbaa !21
  br label %bb79
bb79:
  %t221 = load i1, ptr %l106, !tbaa !21
  store i1 %t221, ptr %l15, !tbaa !21
  br label %bb103
bb80:
  %t222 = load ptr, ptr %l1, !tbaa !29
  store ptr %t222, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t223 = load ptr, ptr %l111, !tbaa !29
  %t224 = icmp ne ptr %t223, null
  br i1 %t224, label %bb81, label %bb82
bb81:
  %t226 = load ptr, ptr %l111, !tbaa !29
  %t227 = load i64, ptr %t226, !range !{i64 0, i64 18}
  %t229 = icmp eq i64 %t227, 11
  store i1 %t229, ptr %l112, !tbaa !21
  br label %bb82
bb82:
  %t230 = load i1, ptr %l112, !tbaa !21
  br i1 %t230, label %bb83, label %bb84
bb83:
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = getelementptr { i64, [5 x i64] }, ptr %t231, i32 0, i32 1
  %t234 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t233, i32 0, i32 2
  %t235 = load ptr, ptr %t234
  store ptr %t235, ptr %l10, !tbaa !29
  br label %bb85
bb84:
  br label %bb91
bb85:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load ptr, ptr %l10, !tbaa !29
  %t240 = getelementptr %"compiler/typed:Cond", ptr %t238, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t244 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t237, ptr %t241)
  store i1 %t244, ptr %l120
  br label %bb86
bb86:
  %t245 = load i1, ptr %l120, !tbaa !21
  br i1 %t245, label %bb87, label %bb88
bb87:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l10, !tbaa !29
  %t249 = getelementptr %"compiler/typed:Cond", ptr %t247, i32 0, i32 2
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t254 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t246, ptr %t250)
  store i1 %t254, ptr %l126
  br label %bb89
bb88:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb90
bb89:
  %t255 = load i1, ptr %l126, !tbaa !21
  store i1 %t255, ptr %l121, !tbaa !21
  br label %bb90
bb90:
  %t256 = load i1, ptr %l121, !tbaa !21
  store i1 %t256, ptr %l15, !tbaa !21
  br label %bb103
bb91:
  %t257 = load ptr, ptr %l1, !tbaa !29
  store ptr %t257, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t258 = load ptr, ptr %l127, !tbaa !29
  %t259 = icmp ne ptr %t258, null
  br i1 %t259, label %bb92, label %bb93
bb92:
  %t261 = load ptr, ptr %l127, !tbaa !29
  %t262 = load i64, ptr %t261, !range !{i64 0, i64 18}
  %t264 = icmp eq i64 %t262, 13
  store i1 %t264, ptr %l128, !tbaa !21
  br label %bb93
bb93:
  %t265 = load i1, ptr %l128, !tbaa !21
  br i1 %t265, label %bb94, label %bb95
bb94:
  %t266 = load ptr, ptr %l1, !tbaa !29
  %t268 = getelementptr { i64, [5 x i64] }, ptr %t266, i32 0, i32 1
  %t269 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t268, i32 0, i32 2
  %t270 = load ptr, ptr %t269
  store ptr %t270, ptr %l11, !tbaa !29
  br label %bb96
bb95:
  br label %bb98
bb96:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load ptr, ptr %l11, !tbaa !29
  %t276 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ematchMadeHere(ptr %v0, ptr %v1, ptr %t272, ptr %t273)
  store i1 %t276, ptr %l135
  br label %bb97
bb97:
  %t277 = load i1, ptr %l135, !tbaa !21
  store i1 %t277, ptr %l15, !tbaa !21
  br label %bb103
bb98:
  br i1 true, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_717fbf6233ca6ed7_9b693e4aa4ffeed3)
  unreachable
bb103:
  %t278 = load i1, ptr %l15, !tbaa !21
  store i1 %t278, ptr %rv
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, [2 x i64] }
  %l17 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l31 = alloca %"compiler/typed:Local"
  %l33 = alloca i64
  %l36 = alloca ptr
  %l38 = alloca ptr
  %l41 = alloca i1
  %l44 = alloca i1
  %l51 = alloca i1
  %l55 = alloca i64
  %l58 = alloca i64
  %l66 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i64
  %l72 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca i32
  %l83 = alloca i64
  %l86 = alloca i64
  %l110 = alloca { i64, [2 x i64] }
  %l114 = alloca i64
  %l116 = alloca i64
  %l118 = alloca i1
  %l121 = alloca { i64, [2 x i64] }
  %l123 = alloca { i64, [2 x i64] }
  %l125 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t224 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 57
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 59
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t10, i64 %t11)
  store i1 %t14, ptr %l21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l21, !tbaa !21
  store i1 %t15, ptr %l17, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l17, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l22, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 27
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = icmp eq ptr %t21, null
  br i1 %t23, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_1413c8e18d6f3dc3_591c44f3990b2a7f)
  unreachable
bb9:
  br label %bb10
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 27
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 7
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t31, i64 %t32)
  store %"compiler/typed:Local" %t35, ptr %l31
  br label %bb11
bb11:
  %t36 = getelementptr %"compiler/typed:Local", ptr %l31, i32 0, i32 2
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t40 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParams(ptr %v0, ptr %t38, i32 %t37)
  store i64 %t40, ptr %l33
  br label %bb12
bb12:
  %t41 = load i64, ptr %l33, !tbaa !24
  store i64 %t41, ptr %l3, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t46 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %s0, ptr %t42, ptr %a2)
  store ptr %t46, ptr %l36
  br label %bb13
bb13:
  %t47 = load ptr, ptr %l36, !tbaa !29
  %t49 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s0, ptr %s0, ptr %t47)
  store ptr %t49, ptr %l38
  br label %bb14
bb14:
  %t50 = load ptr, ptr %l38, !tbaa !29
  store ptr %t50, ptr %l4, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  %t53 = icmp eq i64 %t51, 0
  br i1 %t53, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb17
bb16:
  %t55 = load ptr, ptr %l4, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  store i1 %t57, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t59 = load i1, ptr %l41, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb20
bb19:
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Call", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %t62, !tbaa !23
  %t65 = sext i32 %t63 to i64
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 61
  %t69 = load i64, ptr %t68, !tbaa !24
  %t72 = icmp ne i64 %t65, %t69
  store i1 %t72, ptr %l44, !tbaa !21
  br label %bb20
bb20:
  %t74 = load i1, ptr %l44, !tbaa !21
  br i1 %t74, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb24
bb22:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t75, i32 0, i32 62
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = load i64, ptr %l3, !tbaa !24
  %t82 = add i64 %t78, %t79
  store i64 %t82, ptr %l55, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 48
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l58
  br label %bb23
bb23:
  %t88 = load i64, ptr %l55, !tbaa !24
  %t89 = load i64, ptr %l58, !tbaa !24
  %t90 = icmp sgt i64 %t88, %t89
  store i1 %t90, ptr %l51, !tbaa !21
  br label %bb24
bb24:
  %t92 = load i1, ptr %l51, !tbaa !21
  br i1 %t92, label %bb25, label %bb26
bb25:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/scope:Scoper", ptr %t93, i32 0, i32 59
  %t96 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t95, i64 %t96, i1 true)
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb28:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/scope:Scoper", ptr %t99, i32 0, i32 58
  %t102 = load i64, ptr %l1, !tbaa !24
  %t105 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H6af57464cd91f7f507562fe7a967832c(ptr %v0, ptr %t101, i64 %t102)
  store i1 %t105, ptr %l66
  br label %bb29
bb29:
  %t106 = load i1, ptr %l66, !tbaa !21
  %t107 = xor i1 %t106, true
  store i1 %t107, ptr %l5, !tbaa !21
  %t109 = load i1, ptr %l5, !tbaa !21
  br i1 %t109, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s3
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/scope:Scoper", ptr %t111, i32 0, i32 58
  store ptr %t113, ptr %l70, !tbaa !29
  %t114 = load i64, ptr %l1, !tbaa !24
  store i64 %t114, ptr %l71, !tbaa !24
  %t115 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %l72
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t116 = load ptr, ptr %l70, !tbaa !29
  %t117 = load i64, ptr %l71, !tbaa !24
  %t118 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l72
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H326cc72ba47e1bb28c462bec900fbfa4(ptr %v0, ptr %s3, ptr %t116, i64 %t117, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t118)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb34:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %t119, i32 0, i32 58
  %t122 = load i64, ptr %l1, !tbaa !24
  %t125 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H4e11f1e0078421f65d9ed48903f301c5(ptr %v0, ptr %v0, ptr %t121, i64 %t122)
  %t126 = extractvalue { i32, ptr } %t125, 1
  %t127 = extractvalue { i32, ptr } %t125, 0
  store i32 %t127, ptr %l78
  %t128 = icmp ne i32 %t127, 0
  br i1 %t128, label %bb36, label %ok.129, !prof !99
ok.129:
  store ptr %t126, ptr %l77
  br label %bb35
bb35:
  %t130 = load ptr, ptr %l77, !tbaa !29
  store ptr %t130, ptr %l73, !tbaa !29
  br label %bb38
bb36:
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb38:
  %t131 = load ptr, ptr %l73, !tbaa !29
  store ptr %t131, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  %t132 = load i64, ptr %l3, !tbaa !24
  store i64 %t132, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t134 = load i64, ptr %l8, !tbaa !24
  %t135 = load i64, ptr %l7, !tbaa !24
  %t138 = icmp sgt i64 %t134, %t135
  br i1 %t138, label %bb39, label %bb40
bb39:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = icmp sgt i64 %t140, 0
  br i1 %t142, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb44
bb41:
  %t144 = load i64, ptr %l8, !tbaa !24
  %t145 = load i64, ptr %l7, !tbaa !24
  %t148 = sub i64 %t144, %t145
  %t149 = load i64, ptr %l9, !tbaa !24
  %t152 = add i64 %t148, %t149
  %t154 = sub i64 %t152, 1
  %t155 = load i64, ptr %l9, !tbaa !24
  %t158 = sdiv i64 %t154, %t155
  store i64 %t158, ptr %l86, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb43
bb43:
  %t160 = load i64, ptr %l86, !tbaa !24
  store i64 %t160, ptr %l83, !tbaa !24
  br label %bb44
bb44:
  %t161 = load i64, ptr %l83, !tbaa !24
  store i64 %t161, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb45
bb45:
  %t162 = load i64, ptr %l11, !tbaa !24
  %t163 = load i64, ptr %l10, !tbaa !24
  %t166 = icmp slt i64 %t162, %t163
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb46, label %bb47
bb46:
  br label %bb65
bb47:
  br label %bb48
bb48:
  %t170 = load i64, ptr %l7, !tbaa !24
  %t171 = load i64, ptr %l11, !tbaa !24
  %t172 = load i64, ptr %l9, !tbaa !24
  %t175 = mul i64 %t171, %t172
  %t178 = add i64 %t170, %t175
  store i64 %t178, ptr %l12, !tbaa !24
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/scope:Scoper", ptr %t180, i32 0, i32 48
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/scope:Scoper", ptr %t183, i32 0, i32 62
  %t186 = load i64, ptr %t185, !tbaa !24
  %t187 = load i64, ptr %l12, !tbaa !24
  %t190 = add i64 %t186, %t187
  %t193 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t182, i64 %t190)
  store { i64, [2 x i64] } %t193, ptr %l110
  br label %bb49
bb49:
  %t194 = load { i64, [2 x i64] }, ptr %l110
  store { i64, [2 x i64] } %t194, ptr %l13
  %t195 = load i1, ptr %l5, !tbaa !21
  br i1 %t195, label %bb50, label %bb51
bb50:
  %t197 = load ptr, ptr %l6, !tbaa !29
  %t198 = load { i64, [2 x i64] }, ptr %l13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t197, { i64, [2 x i64] } %t198)
  br label %bb52
bb51:
  %t201 = load i64, ptr %l12, !tbaa !24
  store i64 %t201, ptr %l114, !tbaa !24
  %t202 = load ptr, ptr %l6, !tbaa !29
  %t204 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t202)
  store i64 %t204, ptr %l116
  br label %bb53
bb52:
  br label %bb63
bb53:
  %t205 = load i64, ptr %l114, !tbaa !24
  %t206 = load i64, ptr %l116, !tbaa !24
  %t207 = icmp slt i64 %t205, %t206
  br i1 %t207, label %bb54, label %bb55
bb54:
  %t209 = load ptr, ptr %l6, !tbaa !29
  %t210 = load i64, ptr %l12, !tbaa !24
  %t213 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t209, i64 %t210)
  store { i64, [2 x i64] } %t213, ptr %l121
  br label %bb56
bb55:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb58
bb56:
  %t214 = load { i64, [2 x i64] }, ptr %l13
  store { i64, [2 x i64] } %t214, ptr %l123
  %t217 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l121, ptr %l123)
  store i1 %t217, ptr %l125
  br label %bb57
bb57:
  %t218 = load i1, ptr %l125, !tbaa !21
  %t219 = xor i1 %t218, true
  store i1 %t219, ptr %l118, !tbaa !21
  br label %bb58
bb58:
  %t221 = load i1, ptr %l118, !tbaa !21
  br i1 %t221, label %bb59, label %bb60
bb59:
  %t222 = load ptr, ptr %l6, !tbaa !29
  %t223 = load i64, ptr %l12, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t224
  %t225 = getelementptr { i64, [2 x i64] }, ptr %t224, i32 0, i32 0
  store i64 6, ptr %t225
  %t226 = load { i64, [2 x i64] }, ptr %t224
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t222, i64 %t223, { i64, [2 x i64] } %t226)
  br label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t230 = load i64, ptr %l11, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l11, !tbaa !24
  br label %bb45
bb65:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteRefill(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/typed:Local"
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l21 = alloca ptr
  %l30 = alloca %"compiler/typed:Local"
  %l32 = alloca { i64, ptr }
  %l42 = alloca i64
  %l45 = alloca i1
  %l49 = alloca i1
  %l58 = alloca %"compiler/typed:Local"
  %l62 = alloca i32
  %l65 = alloca i1
  %l66 = alloca i32
  %l71 = alloca i32
  %l74 = alloca ptr
  %l75 = alloca i32
  %l80 = alloca i32
  %l81 = alloca i64
  %l83 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l94 = alloca i32
  %l96 = alloca %"compiler/source:Span"
  %l102 = alloca i1
  %l114 = alloca %"compiler/typed:Local"
  %l115 = alloca ptr
  %l116 = alloca i64
  %l123 = alloca i64
  %l124 = alloca ptr
  %l125 = alloca %"compiler/source:Span"
  %l131 = alloca { i64, ptr }
  %l132 = alloca %"compiler/source:Span"
  %l133 = alloca { i64, ptr }
  %l135 = alloca i64
  %l137 = alloca i64
  %l138 = alloca i64
  %l144 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l12, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t2)
  store i64 %t4, ptr %l14
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l12, !tbaa !29
  %t6 = load i64, ptr %l14, !tbaa !24
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eshownLocal(ptr %v0, ptr %t5, i64 %t6, i64 0)
  store i64 %t7, ptr %l15
  br label %bb2
bb2:
  %t8 = load i64, ptr %l15, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/load:Loader", ptr %t19, i32 0, i32 3
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l21, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 27
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d1e09ab5654512c3_1949347ac845fe07)
  unreachable
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 27
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 7
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t36, i64 %t37)
  store %"compiler/typed:Local" %t40, ptr %l30
  br label %bb9
bb9:
  %t41 = getelementptr %"compiler/typed:Local", ptr %l30, i32 0, i32 0
  %t42 = load i32, ptr %t41, !tbaa !23
  %t43 = load ptr, ptr %l21, !tbaa !29
  %t45 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t43, i32 %t42)
  store { i64, ptr } %t45, ptr %l32
  br label %bb10
bb10:
  %t46 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t46, ptr %l5, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l1, !tbaa !24
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v2, ptr %v0, ptr %t47, i64 %t48, ptr %t49, i64 %t51, { i64, ptr } %t52, i64 0)
  br label %bb11
bb11:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t63 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v2, ptr %t58, ptr %t59, i64 0)
  store i64 %t63, ptr %l42
  br label %bb12
bb12:
  %t64 = load i64, ptr %l42, !tbaa !24
  store i64 %t64, ptr %l6, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t67 = icmp slt i64 %t65, 0
  br i1 %t67, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb15
bb14:
  %t69 = load i64, ptr %l6, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t73 = icmp eq i64 %t69, %t70
  store i1 %t73, ptr %l45, !tbaa !21
  br label %bb15
bb15:
  %t75 = load i1, ptr %l45, !tbaa !21
  br i1 %t75, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb22
bb17:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/scope:Scoper", ptr %t76, i32 0, i32 27
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = icmp eq ptr %t79, null
  br i1 %t81, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_9ec3c43f0dea0d34_4e7830eaf7e3a0e8)
  unreachable
bb19:
  br label %bb20
bb20:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 27
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Body", ptr %t86, i32 0, i32 7
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t89, i64 %t90)
  store %"compiler/typed:Local" %t93, ptr %l58
  br label %bb21
bb21:
  %t94 = getelementptr %"compiler/typed:Local", ptr %l58, i32 0, i32 0
  %t95 = load i32, ptr %t94, !tbaa !23
  %t97 = icmp eq i32 %t95, 0
  store i1 %t97, ptr %l49, !tbaa !21
  br label %bb22
bb22:
  %t99 = load i1, ptr %l49, !tbaa !21
  br i1 %t99, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  br label %bb25
bb25:
  %t100 = load ptr, ptr %l3, !tbaa !29
  %t102 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t100)
  store i32 %t102, ptr %l62
  br label %bb26
bb26:
  %t103 = load i32, ptr %l62, !tbaa !23
  store i32 %t103, ptr %l7, !tbaa !23
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i32, ptr %l7, !tbaa !23
  %t108 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t104, i32 %t105)
  store i1 %t108, ptr %l65
  br label %bb27
bb27:
  %t109 = load i1, ptr %l65, !tbaa !21
  br i1 %t109, label %bb28, label %bb29
bb28:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l7, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l71
  br label %bb30
bb29:
  %t120 = load i32, ptr %l7, !tbaa !23
  store i32 %t120, ptr %l66, !tbaa !23
  br label %bb31
bb30:
  %t122 = load i32, ptr %l71, !tbaa !23
  store i32 %t122, ptr %l66, !tbaa !23
  br label %bb31
bb31:
  %t123 = load i32, ptr %l66, !tbaa !23
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 0
  %t127 = load ptr, ptr %t126, !tbaa !29
  store ptr %t127, ptr %l74, !tbaa !29
  store i32 %t123, ptr %l75, !tbaa !23
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/scope:Scoper", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 0
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/load:Loader", ptr %t135, i32 0, i32 3
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t138, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i32 %t140, ptr %l80
  br label %bb32
bb32:
  %t141 = load ptr, ptr %l74, !tbaa !29
  %t142 = load i32, ptr %l75, !tbaa !23
  %t143 = load i32, ptr %l80, !tbaa !23
  %t144 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t141, i32 %t142, i32 %t143)
  store i64 %t144, ptr %l81
  br label %bb33
bb33:
  %t145 = load i64, ptr %l81, !tbaa !24
  %t146 = icmp slt i64 %t145, 0
  br i1 %t146, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb35:
  br label %bb36
bb36:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/scope:Scoper", ptr %t148, i32 0, i32 11
  store ptr %t150, ptr %l85, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/scope:Scoper", ptr %t151, i32 0, i32 27
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = icmp eq ptr %t154, null
  br i1 %t156, label %bb37, label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_60a9277e2c5e0f29_25801f0e1d4bc5bd)
  unreachable
bb38:
  br label %bb39
bb39:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/scope:Scoper", ptr %t158, i32 0, i32 27
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t164 = getelementptr %"compiler/typed:Body", ptr %t161, i32 0, i32 3
  %t165 = load i64, ptr %t164, !tbaa !24
  %t166 = load ptr, ptr %l85, !tbaa !29
  %t168 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t166, i64 %t165)
  %t169 = extractvalue { i32, { i64, ptr } } %t168, 1
  %t170 = extractvalue { i32, { i64, ptr } } %t168, 0
  store i32 %t170, ptr %l94
  %t171 = icmp ne i32 %t170, 0
  br i1 %t171, label %bb41, label %ok.172, !prof !99
ok.172:
  store { i64, ptr } %t169, ptr %l93
  br label %bb40
bb40:
  %t173 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t173, ptr %l83, !tbaa !27
  br label %bb43
bb41:
  br label %bb42
bb42:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l83, !tbaa !27
  br label %bb43
bb43:
  %t174 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t174, ptr %l9, !tbaa !27
  %t175 = load ptr, ptr %l2, !tbaa !29
  %t177 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t175)
  store %"compiler/source:Span" %t177, ptr %l96
  br label %bb44
bb44:
  %t178 = load %"compiler/source:Span", ptr %l96
  store %"compiler/source:Span" %t178, ptr %l10
  %t179 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t180 = load i32, ptr %t179, !tbaa !23
  %t182 = sext i32 %t180 to i64
  %t183 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t188 = icmp sgt i64 %t182, %t185
  br i1 %t188, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb47
bb46:
  %t190 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t191 = load i32, ptr %t190, !tbaa !23
  %t192 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t193 = load i32, ptr %t192, !tbaa !23
  %t196 = icmp sge i32 %t191, %t193
  store i1 %t196, ptr %l102, !tbaa !21
  br label %bb47
bb47:
  %t198 = load i1, ptr %l102, !tbaa !21
  br i1 %t198, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb49:
  br label %bb50
bb50:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/scope:Scoper", ptr %t199, i32 0, i32 27
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = icmp eq ptr %t202, null
  br i1 %t204, label %bb51, label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_32a2617be6fc2342_ed6c13319ae659d6)
  unreachable
bb52:
  br label %bb53
bb53:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/scope:Scoper", ptr %t206, i32 0, i32 27
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t212 = getelementptr %"compiler/typed:Body", ptr %t209, i32 0, i32 7
  %t213 = load i64, ptr %l6, !tbaa !24
  %t216 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t212, i64 %t213)
  store %"compiler/typed:Local" %t216, ptr %l114
  br label %bb54
bb54:
  %t217 = load %"compiler/typed:Local", ptr %l114
  store %"compiler/typed:Local" %t217, ptr %l11
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l115, !tbaa !29
  %t219 = load i64, ptr %l1, !tbaa !24
  store i64 %t219, ptr %l116, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/scope:Scoper", ptr %t220, i32 0, i32 27
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = icmp eq ptr %t223, null
  br i1 %t225, label %bb55, label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_466c52b9c16c208f_a374cdad5045efdb)
  unreachable
bb56:
  br label %bb57
bb57:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/scope:Scoper", ptr %t227, i32 0, i32 27
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t233 = getelementptr %"compiler/typed:Body", ptr %t230, i32 0, i32 3
  %t234 = load i64, ptr %t233, !tbaa !24
  store i64 %t234, ptr %l123, !tbaa !24
  %t235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t235, ptr %l124, !tbaa !29
  %t236 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 1
  %t237 = load %"compiler/source:Span", ptr %t236
  store %"compiler/source:Span" %t237, ptr %l125
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/scope:Scoper", ptr %t238, i32 0, i32 0
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t243 = getelementptr %"compiler/generic:Program", ptr %t241, i32 0, i32 0
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t246 = getelementptr %"compiler/load:Loader", ptr %t244, i32 0, i32 3
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t248 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 0
  %t249 = load i32, ptr %t248, !tbaa !23
  %t252 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t247, i32 %t249)
  store { i64, ptr } %t252, ptr %l131
  br label %bb58
bb58:
  %t253 = load ptr, ptr %l124, !tbaa !29
  %t254 = load %"compiler/source:Span", ptr %l125
  %t255 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t256 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v0, ptr %t253, %"compiler/source:Span" %t254, { i64, ptr } %t255)
  store %"compiler/source:Span" %t256, ptr %l132
  br label %bb59
bb59:
  %t257 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t257, ptr %l133, !tbaa !27
  %t258 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t259 = load i32, ptr %t258, !tbaa !23
  %t261 = sext i32 %t259 to i64
  store i64 %t261, ptr %l135, !tbaa !24
  %t262 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t263 = load i32, ptr %t262, !tbaa !23
  %t265 = sext i32 %t263 to i64
  store i64 %t265, ptr %l137, !tbaa !24
  %t266 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t266, 0
  store i64 %t267, ptr %l138, !tbaa !24
  %t268 = load i64, ptr %l135, !tbaa !24
  %t269 = icmp sge i64 %t268, 0
  br i1 %t269, label %bb60, label %bb61
bb60:
  %t271 = load i64, ptr %l135, !tbaa !24
  %t272 = load i64, ptr %l137, !tbaa !24
  %t273 = icmp sle i64 %t271, %t272
  br i1 %t273, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_f99d36ce04cd5358_3c9954da82c615c4)
  unreachable
bb62:
  %t275 = load i64, ptr %l137, !tbaa !24
  %t276 = load i64, ptr %l138, !tbaa !24
  %t277 = icmp sle i64 %t275, %t276
  br i1 %t277, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_f99d36ce04cd5358_3c9954da82c615c4)
  unreachable
bb64:
  %t279 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !27
  %t281 = load i64, ptr %l135, !tbaa !24
  %t282 = load i64, ptr %l137, !tbaa !24
  %t283 = getelementptr i8, ptr %t280, i64 %t281
  %t284 = sub i64 %t282, %t281
  %t285 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t283, 1
  %t287 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t290 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteRefillKept(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t286, { i64, ptr } %t287)
  store %"compiler/diagmsg:Msg" %t290, ptr %l144
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_f99d36ce04cd5358_3c9954da82c615c4)
  unreachable
bb66:
  %t291 = load ptr, ptr %l115, !tbaa !29
  %t292 = load i64, ptr %l116, !tbaa !24
  %t293 = load i64, ptr %l123, !tbaa !24
  %t294 = load %"compiler/source:Span", ptr %l132
  %t295 = load %"compiler/diagmsg:Msg", ptr %l144
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t291, i64 %t292, i64 %t293, %"compiler/source:Span" %t294, %"compiler/diagmsg:Msg" %t295)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteResBind(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca i64
  %l15 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l29 = alloca i1
  %l38 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i64
  %l45 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i32
  %l55 = alloca i64
  %l58 = alloca i64
  %l79 = alloca i1
  %l82 = alloca i64
  %l85 = alloca i64
  %l92 = alloca { i64, [2 x i64] }
  %l93 = alloca i1
  %l112 = alloca i64
  %l115 = alloca i64
  %l117 = alloca i1
  %l121 = alloca { i64, [2 x i64] }
  %l123 = alloca { i64, [2 x i64] }
  %l125 = alloca i1
  %s0 = alloca %olang.scope
  %t123 = alloca { i64, [2 x i64] }, align 8
  %t186 = alloca { i64, [2 x i64] }, align 8
  %t232 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l15, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t2)
  store i32 %t4, ptr %l17
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l15, !tbaa !29
  %t6 = load i32, ptr %l17, !tbaa !23
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParams(ptr %v0, ptr %t5, i32 %t6)
  store i64 %t7, ptr %l18
  br label %bb2
bb2:
  %t8 = load i64, ptr %l18, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t17 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %s0, ptr %t13, ptr %t14)
  store ptr %t17, ptr %l23
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l23, !tbaa !29
  %t20 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s0, ptr %s0, ptr %t18)
  store ptr %t20, ptr %l25
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l25, !tbaa !29
  store ptr %t21, ptr %l4, !tbaa !29
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Call", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %t30, !tbaa !23
  %t33 = sext i32 %t31 to i64
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 61
  %t37 = load i64, ptr %t36, !tbaa !24
  %t40 = icmp eq i64 %t33, %t37
  store i1 %t40, ptr %l29, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l29, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 62
  %t46 = load i64, ptr %t45, !tbaa !24
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb22
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l38, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t53 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %v1, ptr %t49, ptr %t50)
  store ptr %t53, ptr %l41
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l38, !tbaa !29
  %t55 = load ptr, ptr %l41, !tbaa !29
  %t56 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %v1, ptr %t54, ptr %t55)
  store i64 %t56, ptr %l42
  br label %bb14
bb14:
  %t57 = load i64, ptr %l42, !tbaa !24
  store i64 %t57, ptr %l5, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = icmp sge i64 %t58, 0
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 47
  %t65 = load i64, ptr %l5, !tbaa !24
  %t68 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t64, i64 %t65)
  %t69 = extractvalue { i32, i64 } %t68, 1
  %t70 = extractvalue { i32, i64 } %t68, 0
  store i32 %t70, ptr %l50
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb18, label %ok.72, !prof !99
ok.72:
  store i64 %t69, ptr %l49
  br label %bb17
bb16:
  br label %bb21
bb17:
  %t73 = load i64, ptr %l49, !tbaa !24
  store i64 %t73, ptr %l45, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  store i64 -1, ptr %l45, !tbaa !24
  br label %bb20
bb20:
  %t74 = load i64, ptr %l45, !tbaa !24
  store i64 %t74, ptr %l3, !tbaa !24
  br label %bb21
bb21:
  br label %bb22
bb22:
  store i64 0, ptr %l6, !tbaa !24
  %t75 = load i64, ptr %l2, !tbaa !24
  store i64 %t75, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = icmp sgt i64 %t77, %t78
  br i1 %t81, label %bb23, label %bb24
bb23:
  %t83 = load i64, ptr %l8, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb28
bb25:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t88 = load i64, ptr %l6, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t92 = load i64, ptr %l8, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  store i64 %t101, ptr %l58, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb27
bb27:
  %t103 = load i64, ptr %l58, !tbaa !24
  store i64 %t103, ptr %l55, !tbaa !24
  br label %bb28
bb28:
  %t104 = load i64, ptr %l55, !tbaa !24
  store i64 %t104, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb29
bb29:
  %t105 = load i64, ptr %l10, !tbaa !24
  %t106 = load i64, ptr %l9, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb30, label %bb31
bb30:
  br label %bb74
bb31:
  br label %bb32
bb32:
  %t113 = load i64, ptr %l6, !tbaa !24
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l8, !tbaa !24
  %t118 = mul i64 %t114, %t115
  %t121 = add i64 %t113, %t118
  store i64 %t121, ptr %l11, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [2 x i64] }, ptr %t123, i32 0, i32 0
  store i64 6, ptr %t124
  %t125 = load { i64, [2 x i64] }, ptr %t123
  store { i64, [2 x i64] } %t125, ptr %l12
  %t127 = load i64, ptr %l3, !tbaa !24
  %t129 = icmp sge i64 %t127, 0
  br i1 %t129, label %bb33, label %bb34
bb33:
  %t131 = load i64, ptr %l3, !tbaa !24
  %t132 = load i64, ptr %l11, !tbaa !24
  %t135 = add i64 %t131, %t132
  store i64 %t135, ptr %l82, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/scope:Scoper", ptr %t136, i32 0, i32 48
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t138)
  store i64 %t140, ptr %l85
  br label %bb35
bb34:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb36
bb35:
  %t141 = load i64, ptr %l82, !tbaa !24
  %t142 = load i64, ptr %l85, !tbaa !24
  %t143 = icmp slt i64 %t141, %t142
  store i1 %t143, ptr %l79, !tbaa !21
  br label %bb36
bb36:
  %t145 = load i1, ptr %l79, !tbaa !21
  br i1 %t145, label %bb37, label %bb38
bb37:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/scope:Scoper", ptr %t146, i32 0, i32 48
  %t149 = load i64, ptr %l3, !tbaa !24
  %t150 = load i64, ptr %l11, !tbaa !24
  %t153 = add i64 %t149, %t150
  %t156 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t148, i64 %t153)
  store { i64, [2 x i64] } %t156, ptr %l92
  br label %bb39
bb38:
  br label %bb58
bb39:
  %t157 = load { i64, [2 x i64] }, ptr %l92
  store { i64, [2 x i64] } %t157, ptr %l12
  %t158 = load { i64, [2 x i64] }, ptr %l12
  %t160 = extractvalue { i64, [2 x i64] } %t158, 0
  %t161 = icmp eq i64 %t160, 2
  br i1 %t161, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  %t163 = load { i64, [2 x i64] }, ptr %l12
  %t165 = extractvalue { i64, [2 x i64] } %t163, 0
  %t166 = icmp eq i64 %t165, 3
  br i1 %t166, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb54
bb45:
  %t168 = load { i64, [2 x i64] }, ptr %l12
  %t170 = extractvalue { i64, [2 x i64] } %t168, 0
  %t171 = icmp eq i64 %t170, 4
  br i1 %t171, label %bb46, label %bb47
bb46:
  %t173 = getelementptr { i64, [2 x i64] }, ptr %l12, i32 0, i32 1
  %t174 = getelementptr { i64, i64 }, ptr %t173, i32 0, i32 0
  %t175 = load i64, ptr %t174
  store i64 %t175, ptr %l13, !tbaa !24
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t177 = load i64, ptr %l13, !tbaa !24
  %t179 = icmp sge i64 %t177, 0
  store i1 %t179, ptr %l93, !tbaa !21
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_656a50bef236af79_704de06f4de36bbd)
  unreachable
bb54:
  %t181 = load i1, ptr %l93, !tbaa !21
  %t184 = xor i1 %t181, true
  br i1 %t184, label %bb55, label %bb56
bb55:
  store { i64, [2 x i64] } zeroinitializer, ptr %t186
  %t187 = getelementptr { i64, [2 x i64] }, ptr %t186, i32 0, i32 0
  store i64 6, ptr %t187
  %t188 = load { i64, [2 x i64] }, ptr %t186
  store { i64, [2 x i64] } %t188, ptr %l12
  br label %bb57
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/scope:Scoper", ptr %t190, i32 0, i32 64
  %t193 = load i1, ptr %t192, !tbaa !21
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb59, label %bb60
bb59:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/scope:Scoper", ptr %t197, i32 0, i32 63
  %t200 = load { i64, [2 x i64] }, ptr %l12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t199, { i64, [2 x i64] } %t200)
  br label %bb61
bb60:
  %t203 = load i64, ptr %l11, !tbaa !24
  store i64 %t203, ptr %l112, !tbaa !24
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %t204, i32 0, i32 63
  %t208 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t206)
  store i64 %t208, ptr %l115
  br label %bb62
bb61:
  br label %bb72
bb62:
  %t209 = load i64, ptr %l112, !tbaa !24
  %t210 = load i64, ptr %l115, !tbaa !24
  %t211 = icmp slt i64 %t209, %t210
  br i1 %t211, label %bb63, label %bb64
bb63:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/scope:Scoper", ptr %t213, i32 0, i32 63
  %t216 = load i64, ptr %l11, !tbaa !24
  %t219 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t215, i64 %t216)
  store { i64, [2 x i64] } %t219, ptr %l121
  br label %bb65
bb64:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb67
bb65:
  %t220 = load { i64, [2 x i64] }, ptr %l12
  store { i64, [2 x i64] } %t220, ptr %l123
  %t223 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l121, ptr %l123)
  store i1 %t223, ptr %l125
  br label %bb66
bb66:
  %t224 = load i1, ptr %l125, !tbaa !21
  %t225 = xor i1 %t224, true
  store i1 %t225, ptr %l117, !tbaa !21
  br label %bb67
bb67:
  %t227 = load i1, ptr %l117, !tbaa !21
  br i1 %t227, label %bb68, label %bb69
bb68:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/scope:Scoper", ptr %t228, i32 0, i32 63
  %t231 = load i64, ptr %l11, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t232
  %t233 = getelementptr { i64, [2 x i64] }, ptr %t232, i32 0, i32 0
  store i64 6, ptr %t233
  %t234 = load { i64, [2 x i64] }, ptr %t232
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t230, i64 %t231, { i64, [2 x i64] } %t234)
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb71
bb71:
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t238 = load i64, ptr %l10, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l10, !tbaa !24
  br label %bb29
bb74:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/scope:Scoper", ptr %t242, i32 0, i32 64
  store i1 true, ptr %t244, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l39 = alloca { i64, ptr }
  %l45 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a2, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l7, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l7, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l20, !tbaa !24
  store i64 %t33, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l17, !tbaa !24
  store i64 %t34, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l9, !tbaa !24
  %t36 = load i64, ptr %l8, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t54, ptr %l39, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr ptr, ptr %t58, i64 %t51
  %t60 = load ptr, ptr %t59, !tbaa !39
  %t68 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmt(ptr %v0, ptr %v1, ptr %a0, ptr %t60, i64 %a3, i1 %a4)
  store i1 %t68, ptr %l45
  br label %bb11
bb11:
  %t69 = load i1, ptr %l45, !tbaa !21
  %t70 = xor i1 %t69, true
  br i1 %t70, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t73 = load i64, ptr %l9, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l9, !tbaa !24
  br label %bb7
bb16:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonlyForCall(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:rel"
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca i1
  %l25 = alloca i1
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca %"compiler/scope:rel"
  %l42 = alloca i1
  %l46 = alloca i1
  %l49 = alloca i1
  %l59 = alloca ptr
  %l62 = alloca i64
  %l69 = alloca i1
  %l72 = alloca ptr
  %l76 = alloca ptr
  %l79 = alloca i64
  %l83 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i32
  %l91 = alloca { i64, ptr }
  %l96 = alloca i1
  %l99 = alloca i1
  %l101 = alloca i64
  %l105 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t5, i64 %t6)
  store ptr %t9, ptr %l17
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l17, !tbaa !29
  %t12 = getelementptr %"compiler/scope:summary", ptr %t10, i32 0, i32 20
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  store i1 %t15, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l14, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb8
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i64, ptr %l1, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t24 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %t18, i64 %t19, i64 %t20)
  store i1 %t24, ptr %l25
  br label %bb7
bb7:
  %t25 = load i1, ptr %l25, !tbaa !21
  store i1 %t25, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l21, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i64, ptr %l1, !tbaa !24
  %t32 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store ptr %t32, ptr %l29
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l29, !tbaa !29
  %t35 = getelementptr %"compiler/scope:summary", ptr %t33, i32 0, i32 0
  store ptr %t35, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb13
bb13:
  %t37 = load i64, ptr %l5, !tbaa !24
  store i64 %t37, ptr %l32, !tbaa !24
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l34
  br label %bb14
bb14:
  %t41 = load i64, ptr %l32, !tbaa !24
  %t42 = load i64, ptr %l34, !tbaa !24
  %t43 = icmp slt i64 %t41, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb15, label %bb16
bb15:
  br label %bb32
bb16:
  br label %bb17
bb17:
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t47, i64 %t48)
  store %"compiler/scope:rel" %t51, ptr %l39
  br label %bb18
bb18:
  %t52 = load %"compiler/scope:rel", ptr %l39
  store %"compiler/scope:rel" %t52, ptr %l6
  %t53 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 1
  %t54 = load { i64, [2 x i64] }, ptr %t53
  %t56 = extractvalue { i64, [2 x i64] } %t54, 0
  %t57 = icmp eq i64 %t56, 2
  br i1 %t57, label %bb19, label %bb20
bb19:
  %t59 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 1
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t59, i32 0, i32 1
  %t61 = getelementptr { i64 }, ptr %t60, i32 0, i32 0
  %t62 = load i64, ptr %t61
  %t63 = load i64, ptr %l3, !tbaa !24
  %t66 = icmp eq i64 %t62, %t63
  store i1 %t66, ptr %l42, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb21
bb21:
  %t68 = load i1, ptr %l42, !tbaa !21
  br i1 %t68, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb27
bb23:
  %t69 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t70 = load { i64, [2 x i64] }, ptr %t69
  %t72 = extractvalue { i64, [2 x i64] } %t70, 0
  %t73 = icmp eq i64 %t72, 2
  br i1 %t73, label %bb24, label %bb25
bb24:
  %t75 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t76 = getelementptr { i64, [2 x i64] }, ptr %t75, i32 0, i32 1
  %t77 = getelementptr { i64 }, ptr %t76, i32 0, i32 0
  %t78 = load i64, ptr %t77
  %t79 = load i64, ptr %l3, !tbaa !24
  %t82 = icmp eq i64 %t78, %t79
  store i1 %t82, ptr %l49, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb26
bb26:
  %t84 = load i1, ptr %l49, !tbaa !21
  store i1 %t84, ptr %l46, !tbaa !21
  br label %bb27
bb27:
  %t85 = load i1, ptr %l46, !tbaa !21
  br i1 %t85, label %bb28, label %bb29
bb28:
  store i1 false, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t87 = load i64, ptr %l5, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l5, !tbaa !24
  br label %bb13
bb32:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scope:Scoper", ptr %t91, i32 0, i32 1
  %t94 = load i64, ptr %l1, !tbaa !24
  %t97 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t93, i64 %t94)
  store ptr %t97, ptr %l59
  br label %bb33
bb33:
  %t98 = load ptr, ptr %l59, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Body", ptr %t98, i32 0, i32 1
  %t101 = load { i64, [2 x i64] }, ptr %t100
  store { i64, [2 x i64] } %t101, ptr %l7
  %t103 = load { i64, [2 x i64] }, ptr %l7
  %t105 = extractvalue { i64, [2 x i64] } %t103, 0
  %t106 = icmp eq i64 %t105, 0
  br i1 %t106, label %bb34, label %bb35
bb34:
  %t108 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t109 = getelementptr { i64 }, ptr %t108, i32 0, i32 0
  %t110 = load i64, ptr %t109
  store i64 %t110, ptr %l8, !tbaa !24
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t112 = load i64, ptr %l8, !tbaa !24
  store i64 %t112, ptr %l62, !tbaa !24
  br label %bb42
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_8b585ab756abfc85_570ab475a36add99)
  unreachable
bb42:
  %t114 = load i64, ptr %l62, !tbaa !24
  store i64 %t114, ptr %l9, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t117 = icmp slt i64 %t115, 0
  br i1 %t117, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb47
bb44:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %t119, i32 0, i32 0
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  store ptr %t124, ptr %l72, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 1
  %t128 = load i64, ptr %l1, !tbaa !24
  %t131 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t127, i64 %t128)
  store ptr %t131, ptr %l76
  br label %bb45
bb45:
  %t132 = load ptr, ptr %l76, !tbaa !29
  %t134 = getelementptr %"compiler/typed:Body", ptr %t132, i32 0, i32 2
  %t135 = load i32, ptr %t134, !tbaa !23
  %t136 = load ptr, ptr %l72, !tbaa !29
  %t138 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t136, i32 %t135)
  store i64 %t138, ptr %l79
  br label %bb46
bb46:
  %t139 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t140 = load i64, ptr %l79, !tbaa !24
  %t142 = icmp eq i64 %t140, %t139
  store i1 %t142, ptr %l69, !tbaa !21
  br label %bb47
bb47:
  %t144 = load i1, ptr %l69, !tbaa !21
  br i1 %t144, label %bb48, label %bb49
bb48:
  store i1 false, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/scope:Scoper", ptr %t146, i32 0, i32 0
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/load:Loader", ptr %t152, i32 0, i32 6
  %t155 = load i64, ptr %l9, !tbaa !24
  %t158 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t154, i64 %t155)
  %t159 = extractvalue { i32, i64 } %t158, 1
  %t160 = extractvalue { i32, i64 } %t158, 0
  store i32 %t160, ptr %l90
  %t161 = icmp ne i32 %t160, 0
  br i1 %t161, label %bb52, label %ok.162, !prof !99
ok.162:
  store i64 %t159, ptr %l89
  br label %bb51
bb51:
  %t163 = load i64, ptr %l89, !tbaa !24
  store i64 %t163, ptr %l83, !tbaa !24
  br label %bb54
bb52:
  br label %bb53
bb53:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb54
bb54:
  %t164 = load i64, ptr %l83, !tbaa !24
  store i64 %t164, ptr %l10, !tbaa !24
  store { i64, ptr } %a2, ptr %l91, !tbaa !27
  %t166 = load i64, ptr %l3, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i64, ptr %t169, i64 %t166
  %t171 = load i64, ptr %t170, !tbaa !34
  store i64 %t171, ptr %l11, !tbaa !24
  %t173 = load i64, ptr %l11, !tbaa !24
  %t175 = icmp sge i64 %t173, 0
  br i1 %t175, label %bb55, label %bb56
bb55:
  %t177 = load i64, ptr %l11, !tbaa !24
  %t179 = icmp slt i64 %t177, 62
  store i1 %t179, ptr %l96, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb57
bb57:
  %t181 = load i1, ptr %l96, !tbaa !21
  br i1 %t181, label %bb58, label %bb59
bb58:
  %t182 = load i64, ptr %l10, !tbaa !24
  %t183 = load i64, ptr %l11, !tbaa !24
  store i64 %t183, ptr %l101, !tbaa !24
  %t184 = load i64, ptr %l101, !tbaa !24
  %t185 = load i64, ptr %l101, !tbaa !24
  %t186 = shl i64 1, %t185
  %t189 = and i64 %t182, %t186
  %t191 = icmp eq i64 %t189, 0
  store i1 %t191, ptr %l99, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb60
bb60:
  %t193 = load i1, ptr %l99, !tbaa !21
  br i1 %t193, label %bb61, label %bb62
bb61:
  %t194 = load i64, ptr %l10, !tbaa !24
  %t195 = load i64, ptr @G_2ecompiler_2ftyped_2eViewOther, !tbaa !24
  %t198 = and i64 %t194, %t195
  %t200 = icmp eq i64 %t198, 0
  store i1 %t200, ptr %l105, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb63
bb63:
  %t202 = load i1, ptr %l105, !tbaa !21
  store i1 %t202, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownsUnshared(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l6 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i1
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l11
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  %t19 = load i1, ptr %l11, !tbaa !21
  store i1 %t19, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l6, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t30, ptr %l17
  br label %bb8
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb9
bb8:
  %t31 = load i1, ptr %l17, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l12, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamTerm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2, ptr %a3) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l14 = alloca { i64, [1 x i64] }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  br label %bb6
bb3:
  store ptr %a0, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l10, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 6
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v1, ptr %t14, i64 %t15)
  store { i64, [1 x i64] } %t18, ptr %l14
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l9, !tbaa !29
  %t21 = load ptr, ptr %l10, !tbaa !29
  %t22 = load { i64, [1 x i64] }, ptr %l14
  %t24 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamVarName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t20, ptr %t21, { i64, [1 x i64] } %t22, ptr %a3)
  store { i64, ptr } %t24, ptr %l16
  br label %bb5
bb5:
  %t25 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t25, ptr %l5, !tbaa !27
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_9101b79997fee27f_70c5b8c6234d8c2b)
  unreachable
bb11:
  %t28 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l19, !tbaa !24
  %t30 = load i64, ptr %l19, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l20, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l19, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t41, ptr %l5, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t42, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epassedScope(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, { i64, [2 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l23 = alloca { i64, [2 x i64] }
  %l29 = alloca i64
  %l32 = alloca i64
  %l50 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca { i64, [2 x i64] }
  %l69 = alloca { i64, [2 x i64] }
  %l70 = alloca { i64, [2 x i64] }
  %l75 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store { i64, [2 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l4
  %t3 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i1, ptr %l13, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb4
bb3:
  %t5 = load { i64, [2 x i64] }, ptr %l4
  %t7 = extractvalue { i64, [2 x i64] } %t5, 0
  %t8 = icmp eq i64 %t7, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t10 = load i1, ptr %l14, !tbaa !21
  br i1 %t10, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb8
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load { i64, [2 x i64] }, ptr %l4
  %t15 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %t11, { i64, [2 x i64] } %t12)
  store i1 %t15, ptr %l20
  br label %bb7
bb7:
  %t16 = load i1, ptr %l20, !tbaa !21
  store i1 %t16, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t17 = load i1, ptr %l17, !tbaa !21
  br i1 %t17, label %bb9, label %bb10
bb9:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load { i64, [2 x i64] }, ptr %l4
  %t22 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t18, { i64, [2 x i64] } %t19)
  store { i64, [2 x i64] } %t22, ptr %l23
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t23 = load { i64, [2 x i64] }, ptr %l23
  store { i64, [2 x i64] } %t23, ptr %rv
  br label %ret
bb12:
  store i64 0, ptr %l5, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t34 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb18
bb15:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l32, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb17
bb17:
  %t54 = load i64, ptr %l32, !tbaa !24
  store i64 %t54, ptr %l29, !tbaa !24
  br label %bb18
bb18:
  %t55 = load i64, ptr %l29, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb19
bb19:
  %t56 = load i64, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb20, label %bb21
bb20:
  br label %bb33
bb21:
  br label %bb22
bb22:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l10, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t74, ptr %l50, !tbaa !27
  %t75 = load i64, ptr %l10, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 %t75
  %t80 = load i64, ptr %t79, !tbaa !34
  %t84 = icmp ne i64 %t80, %a3
  br i1 %t84, label %bb23, label %bb24
bb23:
  br label %bb32
bb24:
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 1
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  store { i64, ptr } %t90, ptr %l57, !tbaa !27
  %t91 = load i64, ptr %l10, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr ptr, ptr %t94, i64 %t91
  %t96 = load ptr, ptr %t95, !tbaa !39
  %t99 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRoot(ptr %v0, ptr %v1, ptr %v1, ptr %t86, ptr %t96)
  store ptr %t99, ptr %l60
  br label %bb26
bb26:
  %t100 = load ptr, ptr %l60, !tbaa !29
  store ptr %t100, ptr %l11, !tbaa !29
  %t101 = load ptr, ptr %l11, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l64, !tbaa !29
  %t108 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t108, ptr %l65
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %t109, i32 0, i32 34
  %t112 = load ptr, ptr %l11, !tbaa !29
  %t115 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %t111, ptr %t112)
  store { i64, [2 x i64] } %t115, ptr %l69
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t116 = load ptr, ptr %l64, !tbaa !29
  %t117 = load { i64, [2 x i64] }, ptr %l65
  %t118 = load { i64, [2 x i64] }, ptr %l69
  %t119 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efoundOr(ptr %v0, ptr %t116, { i64, [2 x i64] } %t117, { i64, [2 x i64] } %t118)
  store { i64, [2 x i64] } %t119, ptr %l70
  br label %bb30
bb30:
  %t120 = load { i64, [2 x i64] }, ptr %l70
  store { i64, [2 x i64] } %t120, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l9, !tbaa !24
  br label %bb19
bb33:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load { i64, [2 x i64] }, ptr %l4
  %t129 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t125, { i64, [2 x i64] } %t126)
  store { i64, [2 x i64] } %t129, ptr %l75
  br label %bb34
bb34:
  %t130 = load { i64, [2 x i64] }, ptr %l75
  store { i64, [2 x i64] } %t130, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 199
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 199
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 199
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp eq i64 %t13, 1
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 200
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t19)
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 42
  %t25 = load %"compiler/source:Span", ptr %t24
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 223
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
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 199
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = sub i64 %t40, 1
  %t44 = load ptr, ptr %l19, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 199
  store i64 %t42, ptr %t45, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 199
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = icmp eq i64 %t49, 0
  br i1 %t51, label %bb6, label %bb7
bb6:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 221
  store i64 0, ptr %t55, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
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
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 215
  %t49 = load i1, ptr %t48, !tbaa !21
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 218
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
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 215
  %t127 = load i1, ptr %t126, !tbaa !21
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb37, label %bb38
bb36:
  br label %bb51
bb37:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/scope:Scoper", ptr %t131, i32 0, i32 218
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
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %t209, i32 0, i32 215
  %t212 = load i1, ptr %t211, !tbaa !21
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb59, label %bb60
bb59:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/scope:Scoper", ptr %t216, i32 0, i32 218
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
  %t237 = getelementptr %"compiler/scope:Scoper", ptr %t235, i32 0, i32 215
  %t238 = load i1, ptr %t237, !tbaa !21
  %t240 = xor i1 %t238, true
  br i1 %t240, label %bb66, label %bb67
bb66:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/scope:Scoper", ptr %t242, i32 0, i32 218
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadCursor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i32
  %l37 = alloca i64
  %l39 = alloca i64
  %l41 = alloca ptr
  %l44 = alloca i64
  %l46 = alloca i64
  %l48 = alloca i64
  %l50 = alloca i64
  %l55 = alloca i64
  %l59 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i32
  %l66 = alloca i32
  %l67 = alloca i32
  %l70 = alloca i1
  %l71 = alloca i32
  %l75 = alloca i32
  %l77 = alloca i32
  %l80 = alloca ptr
  %l81 = alloca i32
  %l91 = alloca %"compiler/typed:BlockInfo"
  %l93 = alloca i32
  %l97 = alloca i1
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l102 = alloca ptr
  %l106 = alloca { i64, [2 x i64] }
  %l110 = alloca i64
  %l112 = alloca i64
  %l114 = alloca i64
  %l119 = alloca %"compiler/scope:verAtom"
  %l132 = alloca ptr
  %l135 = alloca i64
  %l142 = alloca i1
  %l143 = alloca i1
  %l144 = alloca ptr
  %l147 = alloca { i64, [2 x i64] }
  %l149 = alloca i1
  %l153 = alloca ptr
  %l161 = alloca ptr
  %l169 = alloca ptr
  %l170 = alloca i64
  %l173 = alloca { i64, [2 x i64] }
  %l174 = alloca ptr
  %l179 = alloca i1
  %l183 = alloca i1
  %l191 = alloca ptr
  %l200 = alloca %"compiler/typed:Local"
  %l202 = alloca { i64, ptr }
  %l203 = alloca ptr
  %l205 = alloca %"compiler/source:Span"
  %l207 = alloca %"compiler/diagmsg:Msg"
  %l208 = alloca i64
  %l209 = alloca ptr
  %l210 = alloca i64
  %l217 = alloca i64
  %l221 = alloca %"compiler/source:Span"
  %l223 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 167
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_d3a06237a99546a5_940688e3c77e01a9)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 167
  %t11 = load ptr, ptr %t10, !tbaa !29
  store ptr %t11, ptr %l3, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereachFor(ptr %v0, ptr %s0, ptr %t13, i64 %t14, i64 -1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l27
  br label %bb4
bb4:
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l4
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 38
  store ptr %t21, ptr %l29, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 38
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l32
  br label %bb5
bb5:
  %t27 = load i64, ptr %l32, !tbaa !24
  %t28 = sub i64 %t27, 1
  %t29 = load ptr, ptr %l29, !tbaa !29
  %t31 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t29, i64 %t28)
  store i32 %t31, ptr %l34
  br label %bb6
bb6:
  %t32 = load i32, ptr %l34, !tbaa !23
  store i32 %t32, ptr %l5, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 171
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l37
  br label %bb7
bb7:
  %t38 = load i64, ptr %l37, !tbaa !24
  %t39 = icmp sgt i64 %t38, 0
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 171
  store ptr %t43, ptr %l41, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 171
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t46)
  store i64 %t48, ptr %l44
  br label %bb10
bb9:
  store i64 -1, ptr %l39, !tbaa !24
  br label %bb12
bb10:
  %t49 = load i64, ptr %l44, !tbaa !24
  %t50 = sub i64 %t49, 1
  %t51 = load ptr, ptr %l41, !tbaa !29
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t51, i64 %t50)
  store i64 %t53, ptr %l46
  br label %bb11
bb11:
  %t54 = load i64, ptr %l46, !tbaa !24
  store i64 %t54, ptr %l39, !tbaa !24
  br label %bb12
bb12:
  %t55 = load i64, ptr %l39, !tbaa !24
  store i64 %t55, ptr %l6, !tbaa !24
  store i64 -1, ptr %l7, !tbaa !24
  store ptr %l4, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t57 = load i64, ptr %l9, !tbaa !24
  store i64 %t57, ptr %l48, !tbaa !24
  %t58 = load ptr, ptr %l8, !tbaa !29
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t58)
  store i64 %t60, ptr %l50
  br label %bb14
bb14:
  %t61 = load i64, ptr %l48, !tbaa !24
  %t62 = load i64, ptr %l50, !tbaa !24
  %t63 = icmp slt i64 %t61, %t62
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb15, label %bb16
bb15:
  br label %bb110
bb16:
  br label %bb17
bb17:
  %t67 = load ptr, ptr %l8, !tbaa !29
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t67, i64 %t68)
  store i64 %t71, ptr %l55
  br label %bb18
bb18:
  %t72 = load i64, ptr %l55, !tbaa !24
  store i64 %t72, ptr %l10, !tbaa !24
  store i32 -1, ptr %l11, !tbaa !23
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Versions", ptr %t73, i32 0, i32 7
  %t76 = load i64, ptr %l10, !tbaa !24
  %t79 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t75, i64 %t76)
  store i1 %t79, ptr %l59
  br label %bb19
bb19:
  %t80 = load i1, ptr %l59, !tbaa !21
  %t81 = xor i1 %t80, true
  br i1 %t81, label %bb20, label %bb21
bb20:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l61, !tbaa !29
  %t84 = load i32, ptr %l5, !tbaa !23
  store i32 %t84, ptr %l62, !tbaa !23
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Versions", ptr %t85, i32 0, i32 5
  %t88 = load i64, ptr %l10, !tbaa !24
  %t91 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t87, i64 %t88)
  store i32 %t91, ptr %l66
  br label %bb22
bb21:
  br label %bb38
bb22:
  %t92 = load ptr, ptr %l61, !tbaa !29
  %t93 = load i32, ptr %l62, !tbaa !23
  %t94 = load i32, ptr %l66, !tbaa !23
  %t95 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elcaBlock(ptr %v0, ptr %t92, i32 %t93, i32 %t94)
  store i32 %t95, ptr %l67
  br label %bb23
bb23:
  %t96 = load i32, ptr %l67, !tbaa !23
  store i32 %t96, ptr %l11, !tbaa !23
  %t97 = load ptr, ptr %l3, !tbaa !29
  %t98 = load i64, ptr %l6, !tbaa !24
  %t101 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eNamed(ptr %v0, ptr %t97, i64 %t98)
  store i1 %t101, ptr %l70
  br label %bb24
bb24:
  %t102 = load i1, ptr %l70, !tbaa !21
  br i1 %t102, label %bb25, label %bb26
bb25:
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t104 = load i64, ptr %l6, !tbaa !24
  %t105 = load i64, ptr %l10, !tbaa !24
  %t109 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eAcross(ptr %v0, ptr %t103, i64 %t104, i64 %t105)
  store i32 %t109, ptr %l75
  br label %bb27
bb26:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoutermostLoop(ptr %v0, ptr %t110)
  store i32 %t112, ptr %l77
  br label %bb28
bb27:
  %t113 = load i32, ptr %l75, !tbaa !23
  store i32 %t113, ptr %l71, !tbaa !23
  br label %bb29
bb28:
  %t114 = load i32, ptr %l77, !tbaa !23
  store i32 %t114, ptr %l71, !tbaa !23
  br label %bb29
bb29:
  %t115 = load i32, ptr %l71, !tbaa !23
  store i32 %t115, ptr %l12, !tbaa !23
  %t116 = load i32, ptr %l12, !tbaa !23
  %t118 = icmp sge i32 %t116, 0
  br i1 %t118, label %bb30, label %bb31
bb30:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l80, !tbaa !29
  %t121 = load i32, ptr %l11, !tbaa !23
  store i32 %t121, ptr %l81, !tbaa !23
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/scope:Scoper", ptr %t122, i32 0, i32 27
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = icmp eq ptr %t125, null
  br i1 %t127, label %bb32, label %bb33
bb31:
  br label %bb37
bb32:
  call void @__olang_check_failed(ptr @olang_loc_15c19e60d04569fe_65ffc2e1821c15c2)
  unreachable
bb33:
  br label %bb34
bb34:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/scope:Scoper", ptr %t129, i32 0, i32 27
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Body", ptr %t132, i32 0, i32 8
  %t136 = load i32, ptr %l12, !tbaa !23
  %t138 = sext i32 %t136 to i64
  %t141 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t135, i64 %t138)
  store %"compiler/typed:BlockInfo" %t141, ptr %l91
  br label %bb35
bb35:
  %t142 = getelementptr %"compiler/typed:BlockInfo", ptr %l91, i32 0, i32 0
  %t143 = load i32, ptr %t142, !tbaa !23
  %t144 = load ptr, ptr %l80, !tbaa !29
  %t145 = load i32, ptr %l81, !tbaa !23
  %t147 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elcaBlock(ptr %v0, ptr %t144, i32 %t145, i32 %t143)
  store i32 %t147, ptr %l93
  br label %bb36
bb36:
  %t148 = load i32, ptr %l93, !tbaa !23
  store i32 %t148, ptr %l11, !tbaa !23
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/scope:Scoper", ptr %t149, i32 0, i32 173
  %t152 = load i64, ptr %l10, !tbaa !24
  %t155 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t151, i64 %t152)
  store i1 %t155, ptr %l97
  br label %bb39
bb39:
  %t156 = load i1, ptr %l97, !tbaa !21
  %t157 = xor i1 %t156, true
  br i1 %t157, label %bb40, label %bb41
bb40:
  %t159 = load i64, ptr %l7, !tbaa !24
  %t161 = icmp slt i64 %t159, 0
  br i1 %t161, label %bb42, label %bb43
bb41:
  br label %bb63
bb42:
  store %olang.scope zeroinitializer, ptr %s6
  %t163 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ector(ptr %s6, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t163, ptr %l101
  br label %bb44
bb43:
  br label %bb57
bb44:
  %t164 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %l13
  %t165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t165, ptr %l102, !tbaa !29
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/scope:Scoper", ptr %t166, i32 0, i32 35
  %t169 = load i64, ptr %l1, !tbaa !24
  %t172 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t168, i64 %t169)
  store { i64, [2 x i64] } %t172, ptr %l106
  br label %bb45
bb45:
  %t173 = load ptr, ptr %l102, !tbaa !29
  %t174 = load { i64, [2 x i64] }, ptr %l106
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etoAtoms(ptr %v0, ptr %s6, ptr %t173, { i64, [2 x i64] } %t174, ptr %l13)
  br label %bb46
bb46:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/scope:Scoper", ptr %t176, i32 0, i32 177
  %t180 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t178)
  store i64 %t180, ptr %l110
  br label %bb47
bb47:
  %t181 = load i64, ptr %l110, !tbaa !24
  store i64 %t181, ptr %l7, !tbaa !24
  store ptr %l13, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb48
bb48:
  %t183 = load i64, ptr %l15, !tbaa !24
  store i64 %t183, ptr %l112, !tbaa !24
  %t184 = load ptr, ptr %l14, !tbaa !29
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %s6, ptr %t184)
  store i64 %t186, ptr %l114
  br label %bb49
bb49:
  %t187 = load i64, ptr %l112, !tbaa !24
  %t188 = load i64, ptr %l114, !tbaa !24
  %t189 = icmp slt i64 %t187, %t188
  %t191 = xor i1 %t189, true
  br i1 %t191, label %bb50, label %bb51
bb50:
  br label %bb56
bb51:
  br label %bb52
bb52:
  %t193 = load ptr, ptr %l14, !tbaa !29
  %t194 = load i64, ptr %l15, !tbaa !24
  %t197 = call %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %s6, ptr %t193, i64 %t194)
  store %"compiler/scope:verAtom" %t197, ptr %l119
  br label %bb53
bb53:
  %t198 = load %"compiler/scope:verAtom", ptr %l119
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/scope:Scoper", ptr %t199, i32 0, i32 177
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ePush_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t201, %"compiler/scope:verAtom" %t198)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t205 = load i64, ptr %l15, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l15, !tbaa !24
  br label %bb48
bb56:
  call void @__olang_scope_close(ptr %s6)
  br label %bb57
bb57:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %t209, i32 0, i32 174
  %t212 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t211, i64 %t212)
  br label %bb58
bb58:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/scope:Scoper", ptr %t215, i32 0, i32 175
  %t218 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t217, i64 %t218)
  br label %bb59
bb59:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/scope:Scoper", ptr %t221, i32 0, i32 176
  store ptr %t223, ptr %l132, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/scope:Scoper", ptr %t224, i32 0, i32 177
  %t228 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t226)
  store i64 %t228, ptr %l135
  br label %bb60
bb60:
  %t229 = load ptr, ptr %l132, !tbaa !29
  %t230 = load i64, ptr %l135, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t229, i64 %t230)
  br label %bb61
bb61:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/scope:Scoper", ptr %t231, i32 0, i32 183
  %t234 = load i32, ptr %l11, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t233, i32 %t234)
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t237 = load ptr, ptr %l3, !tbaa !29
  %t239 = getelementptr %"compiler/typed:Versions", ptr %t237, i32 0, i32 7
  %t240 = load i64, ptr %l10, !tbaa !24
  %t243 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t239, i64 %t240)
  store i1 %t243, ptr %l142
  br label %bb64
bb64:
  %t244 = load i1, ptr %l142, !tbaa !21
  br i1 %t244, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l143, !tbaa !21
  br label %bb69
bb66:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l144, !tbaa !29
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i64, ptr %l10, !tbaa !24
  %t250 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edefTermAt(ptr %v0, ptr %t246, i64 %t247)
  store { i64, [2 x i64] } %t250, ptr %l147
  br label %bb67
bb67:
  %t251 = load i32, ptr %l11, !tbaa !23
  %t252 = load ptr, ptr %l144, !tbaa !29
  %t253 = load { i64, [2 x i64] }, ptr %l147
  %t255 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopenAt(ptr %v0, ptr %t252, { i64, [2 x i64] } %t253, i32 %t251)
  store i1 %t255, ptr %l149
  br label %bb68
bb68:
  %t256 = load i1, ptr %l149, !tbaa !21
  store i1 %t256, ptr %l143, !tbaa !21
  br label %bb69
bb69:
  %t257 = load i1, ptr %l143, !tbaa !21
  br i1 %t257, label %bb70, label %bb71
bb70:
  br label %bb109
bb71:
  br label %bb72
bb72:
  %t258 = load ptr, ptr %l3, !tbaa !29
  %t260 = getelementptr %"compiler/typed:Versions", ptr %t258, i32 0, i32 6
  %t261 = load i64, ptr %l10, !tbaa !24
  %t264 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v0, ptr %t260, i64 %t261)
  store ptr %t264, ptr %l153
  br label %bb73
bb73:
  %t265 = load ptr, ptr %l153, !tbaa !29
  store ptr %t265, ptr %l17, !tbaa !29
  %t266 = load ptr, ptr %l17, !tbaa !29
  %t268 = icmp eq ptr %t266, null
  %t270 = xor i1 %t268, true
  br i1 %t270, label %bb74, label %bb75
bb74:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v0, ptr %t272, ptr %t273)
  br label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb77
bb77:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/scope:Scoper", ptr %t276, i32 0, i32 155
  %t279 = load i1, ptr %t278, !tbaa !21
  br i1 %t279, label %bb78, label %bb79
bb78:
  %t281 = load ptr, ptr %l0, !tbaa !29
  store ptr %t281, ptr %l161, !tbaa !29
  %t282 = load ptr, ptr %l161, !tbaa !29
  %t283 = getelementptr %"compiler/scope:Scoper", ptr %t282, i32 0, i32 199
  %t284 = load i64, ptr %t283, !tbaa !24
  %t286 = add i64 %t284, 1
  %t288 = load ptr, ptr %l161, !tbaa !29
  %t289 = getelementptr %"compiler/scope:Scoper", ptr %t288, i32 0, i32 199
  store i64 %t286, ptr %t289, !tbaa !24
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/scope:Scoper", ptr %t290, i32 0, i32 199
  %t293 = load i64, ptr %t292, !tbaa !24
  %t295 = icmp eq i64 %t293, 1
  br i1 %t295, label %bb80, label %bb81
bb79:
  br label %bb86
bb80:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/scope:Scoper", ptr %t297, i32 0, i32 200
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t299)
  br label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb83
bb83:
  %t301 = load ptr, ptr %l0, !tbaa !29
  store ptr %t301, ptr %l169, !tbaa !29
  %t302 = load i64, ptr %l10, !tbaa !24
  store i64 %t302, ptr %l170, !tbaa !24
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load i32, ptr %l11, !tbaa !23
  %t307 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t303, i32 %t304)
  store { i64, [2 x i64] } %t307, ptr %l173
  br label %bb84
bb84:
  %t308 = load ptr, ptr %l169, !tbaa !29
  %t309 = load i64, ptr %l170, !tbaa !24
  %t310 = load { i64, [2 x i64] }, ptr %l173
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeDef(ptr %v0, ptr %t308, i64 %t309, { i64, [2 x i64] } %t310)
  br label %bb85
bb85:
  %t311 = load ptr, ptr %l0, !tbaa !29
  store ptr %t311, ptr %l174, !tbaa !29
  %t312 = load ptr, ptr %l174, !tbaa !29
  %t313 = getelementptr %"compiler/scope:Scoper", ptr %t312, i32 0, i32 199
  %t314 = load i64, ptr %t313, !tbaa !24
  %t316 = sub i64 %t314, 1
  %t318 = load ptr, ptr %l174, !tbaa !29
  %t319 = getelementptr %"compiler/scope:Scoper", ptr %t318, i32 0, i32 199
  store i64 %t316, ptr %t319, !tbaa !24
  br label %bb86
bb86:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/scope:Scoper", ptr %t320, i32 0, i32 29
  %t323 = load i1, ptr %t322, !tbaa !21
  br i1 %t323, label %bb87, label %bb88
bb87:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/scope:Scoper", ptr %t325, i32 0, i32 201
  %t328 = load i64, ptr %l10, !tbaa !24
  %t331 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t327, i64 %t328)
  store i1 %t331, ptr %l183
  br label %bb89
bb88:
  store i1 false, ptr %l179, !tbaa !21
  br label %bb90
bb89:
  %t332 = load i1, ptr %l183, !tbaa !21
  %t333 = xor i1 %t332, true
  store i1 %t333, ptr %l179, !tbaa !21
  br label %bb90
bb90:
  %t335 = load i1, ptr %l179, !tbaa !21
  br i1 %t335, label %bb91, label %bb92
bb91:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/scope:Scoper", ptr %t336, i32 0, i32 201
  %t339 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t338, i64 %t339, i1 true)
  br label %bb93
bb92:
  br label %bb108
bb93:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/scope:Scoper", ptr %t342, i32 0, i32 0
  %t345 = load ptr, ptr %t344, !tbaa !29
  %t347 = getelementptr %"compiler/generic:Program", ptr %t345, i32 0, i32 0
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t350 = getelementptr %"compiler/load:Loader", ptr %t348, i32 0, i32 3
  %t351 = load ptr, ptr %t350, !tbaa !29
  store ptr %t351, ptr %l191, !tbaa !29
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/scope:Scoper", ptr %t352, i32 0, i32 27
  %t355 = load ptr, ptr %t354, !tbaa !29
  %t357 = icmp eq ptr %t355, null
  br i1 %t357, label %bb94, label %bb95
bb94:
  call void @__olang_check_failed(ptr @olang_loc_f2b7972a64306daf_53dfc1b00650543)
  unreachable
bb95:
  br label %bb96
bb96:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/scope:Scoper", ptr %t359, i32 0, i32 27
  %t362 = load ptr, ptr %t361, !tbaa !29
  %t365 = getelementptr %"compiler/typed:Body", ptr %t362, i32 0, i32 7
  %t366 = load i64, ptr %l1, !tbaa !24
  %t369 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t365, i64 %t366)
  store %"compiler/typed:Local" %t369, ptr %l200
  br label %bb97
bb97:
  %t370 = getelementptr %"compiler/typed:Local", ptr %l200, i32 0, i32 0
  %t371 = load i32, ptr %t370, !tbaa !23
  %t372 = load ptr, ptr %l191, !tbaa !29
  %t374 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t372, i32 %t371)
  store { i64, ptr } %t374, ptr %l202
  br label %bb98
bb98:
  %t375 = load { i64, ptr }, ptr %l202, !tbaa !27
  store { i64, ptr } %t375, ptr %l18, !tbaa !27
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l203, !tbaa !29
  %t379 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %a2)
  store %"compiler/source:Span" %t379, ptr %l205
  br label %bb99
bb99:
  %t380 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t382 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadAfterScope(ptr %v0, ptr %v0, { i64, ptr } %t380)
  store %"compiler/diagmsg:Msg" %t382, ptr %l207
  br label %bb100
bb100:
  %t383 = load ptr, ptr %l203, !tbaa !29
  %t384 = load %"compiler/source:Span", ptr %l205
  %t385 = load %"compiler/diagmsg:Msg", ptr %l207
  %t386 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t383, %"compiler/source:Span" %t384, %"compiler/diagmsg:Msg" %t385)
  store i64 %t386, ptr %l208
  br label %bb101
bb101:
  %t387 = load i64, ptr %l208, !tbaa !24
  %t388 = load ptr, ptr %l0, !tbaa !29
  store ptr %t388, ptr %l209, !tbaa !29
  store i64 %t387, ptr %l210, !tbaa !24
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t392 = getelementptr %"compiler/scope:Scoper", ptr %t390, i32 0, i32 27
  %t393 = load ptr, ptr %t392, !tbaa !29
  %t395 = icmp eq ptr %t393, null
  br i1 %t395, label %bb102, label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_219fee4953632850_d22125a4a909ffb4)
  unreachable
bb103:
  br label %bb104
bb104:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/scope:Scoper", ptr %t397, i32 0, i32 27
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t403 = getelementptr %"compiler/typed:Body", ptr %t400, i32 0, i32 3
  %t404 = load i64, ptr %t403, !tbaa !24
  store i64 %t404, ptr %l217, !tbaa !24
  %t405 = load ptr, ptr %l3, !tbaa !29
  %t407 = getelementptr %"compiler/typed:Versions", ptr %t405, i32 0, i32 4
  %t408 = load i64, ptr %l10, !tbaa !24
  %t411 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t407, i64 %t408)
  store %"compiler/source:Span" %t411, ptr %l221
  br label %bb105
bb105:
  %t412 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t414 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteAssignedHere(ptr %v0, ptr %v0, { i64, ptr } %t412)
  store %"compiler/diagmsg:Msg" %t414, ptr %l223
  br label %bb106
bb106:
  %t415 = load ptr, ptr %l209, !tbaa !29
  %t416 = load i64, ptr %l210, !tbaa !24
  %t417 = load i64, ptr %l217, !tbaa !24
  %t418 = load %"compiler/source:Span", ptr %l221
  %t419 = load %"compiler/diagmsg:Msg", ptr %l223
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t415, i64 %t416, i64 %t417, %"compiler/source:Span" %t418, %"compiler/diagmsg:Msg" %t419)
  br label %bb107
bb107:
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t420 = load i64, ptr %l9, !tbaa !24
  %t422 = add i64 %t420, 1
  store i64 %t422, ptr %l9, !tbaa !24
  br label %bb13
bb110:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadFsets(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/scope:fsBody"
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i32
  %l26 = alloca i1
  %l27 = alloca %"compiler/scope:fsBody"
  %l29 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l40 = alloca i1
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i64
  %l52 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l63 = alloca i1
  %l64 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i32
  %l70 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca i64
  %l77 = alloca { i64, ptr }
  %l78 = alloca i64
  %l79 = alloca i32
  %l80 = alloca i64
  %l81 = alloca i32
  %l82 = alloca { i64, [2 x i64] }
  %l83 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l86 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i64
  %l95 = alloca { i64, [2 x i64] }
  %l96 = alloca i32
  %l98 = alloca i1
  %l102 = alloca i1
  %l106 = alloca ptr
  %l109 = alloca %"compiler/scope:fsRow"
  %l113 = alloca i1
  %l114 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca { i64, ptr }
  %l122 = alloca i64
  %l123 = alloca i64
  %l128 = alloca i32
  %l133 = alloca ptr
  %l135 = alloca { i64, ptr }
  %l138 = alloca %"compiler/scope:fsOpen"
  %l143 = alloca ptr
  %l144 = alloca i64
  %l145 = alloca %"compiler/scope:fsBody"
  %l147 = alloca %"compiler/scope:fsBody"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %t197 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 318
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l22
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l21
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t12, ptr %l17, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t13 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t13, ptr %l2, !tbaa !27
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 318
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H6a106b2d9d5f427d992f43f68fb1fef7(ptr %v0, ptr %t16, i64 %t17)
  store i1 %t20, ptr %l26
  br label %bb5
bb5:
  %t21 = call %"compiler/scope:fsBody" @compiler_2fscope_3afsBody_2ector(ptr %s0)
  store %"compiler/scope:fsBody" %t21, ptr %l27
  br label %bb6
bb6:
  %t22 = load %"compiler/scope:fsBody", ptr %l27
  store %"compiler/scope:fsBody" %t22, ptr %l3
  store i1 false, ptr %l4, !tbaa !21
  store %olang.scope zeroinitializer, ptr %s2
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t25 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s2, ptr %s2, { i64, ptr } %t23, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store { i64, ptr } %t25, ptr %l29
  br label %bb7
bb7:
  %t26 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb91
bb10:
  br label %bb11
bb11:
  %t39 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t39, ptr %l36, !tbaa !27
  %t40 = load i64, ptr %l6, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %t43, i64 %t40
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !37
  store { i64, ptr } %t45, ptr %l8, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s2, ptr %s3, { i64, ptr } %t47, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t49, ptr %l40
  br label %bb12
bb12:
  %t50 = load i1, ptr %l40, !tbaa !21
  br i1 %t50, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s4
  %t51 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t53 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s2, ptr %s4, { i64, ptr } %t51, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t53, ptr %l42
  br label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s11
  %t54 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s2, ptr %s11, { i64, ptr } %t54, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t56, ptr %l113
  br label %bb70
bb15:
  %t57 = load i1, ptr %l42, !tbaa !21
  store i1 %t57, ptr %l4, !tbaa !21
  store %olang.scope zeroinitializer, ptr %s5
  %t58 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t58, ptr %l43, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t59, 0
  store i64 %t62, ptr %l46, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l47, !tbaa !24
  %t65 = icmp sge i64 3, 0
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t67 = load i64, ptr %l46, !tbaa !24
  %t68 = icmp sle i64 3, %t67
  br i1 %t68, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_cecdf5a164437124_6cc9acea80adaa98)
  unreachable
bb18:
  %t70 = load i64, ptr %l46, !tbaa !24
  %t71 = load i64, ptr %l47, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_cecdf5a164437124_6cc9acea80adaa98)
  unreachable
bb20:
  %t74 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = load i64, ptr %l46, !tbaa !24
  %t77 = getelementptr i8, ptr %t75, i64 3
  %t78 = sub i64 %t76, 3
  %t79 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t77, 1
  %t82 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s2, ptr %s5, ptr %s5, { i64, ptr } %t80, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store { i64, ptr } %t82, ptr %l52
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_cecdf5a164437124_6cc9acea80adaa98)
  unreachable
bb22:
  %t83 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t83, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  store i64 %t86, ptr %l11, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t88 = load i64, ptr %l10, !tbaa !24
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s6)
  br label %bb69
bb25:
  br label %bb26
bb26:
  %t96 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t96, ptr %l59, !tbaa !27
  %t97 = load i64, ptr %l10, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %t100, i64 %t97
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !37
  store { i64, ptr } %t102, ptr %l12, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t106 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %s6, { i64, ptr } %t104, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t106, ptr %l63
  br label %bb27
bb27:
  %t107 = load i1, ptr %l63, !tbaa !21
  br i1 %t107, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s6)
  br label %bb68
bb29:
  br label %bb30
bb30:
  %t108 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t110 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s5, ptr %s6, { i64, ptr } %t108, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) })
  %t111 = extractvalue { i32, i64 } %t110, 1
  %t112 = extractvalue { i32, i64 } %t110, 0
  store i32 %t112, ptr %l67
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb32, label %ok.114, !prof !99
ok.114:
  store i64 %t111, ptr %l66
  br label %bb31
bb31:
  %t115 = load i64, ptr %l66, !tbaa !24
  store i64 %t115, ptr %l64, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  store i64 -1, ptr %l64, !tbaa !24
  br label %bb34
bb34:
  %t116 = load i64, ptr %l64, !tbaa !24
  store i64 %t116, ptr %l13, !tbaa !24
  store i64 -1, ptr %l14, !tbaa !24
  %t117 = load i64, ptr %l13, !tbaa !24
  %t119 = icmp sgt i64 %t117, 0
  br i1 %t119, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s8
  %t121 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t121, ptr %l71, !tbaa !27
  %t122 = load i64, ptr %l13, !tbaa !24
  store i64 %t122, ptr %l72, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l73, !tbaa !24
  %t125 = icmp sge i64 0, 0
  br i1 %t125, label %bb37, label %bb38
bb36:
  br label %bb49
bb37:
  %t127 = load i64, ptr %l72, !tbaa !24
  %t128 = icmp sle i64 0, %t127
  br i1 %t128, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_bedb01e7abfdb211_6cf177c6e28dc1f5)
  unreachable
bb39:
  %t130 = load i64, ptr %l72, !tbaa !24
  %t131 = load i64, ptr %l73, !tbaa !24
  %t132 = icmp sle i64 %t130, %t131
  br i1 %t132, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_bedb01e7abfdb211_6cf177c6e28dc1f5)
  unreachable
bb41:
  %t134 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = load i64, ptr %l72, !tbaa !24
  %t137 = getelementptr i8, ptr %t135, i64 0
  %t138 = sub i64 %t136, 0
  %t139 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t137, 1
  store { i64, ptr } %t140, ptr %l77, !tbaa !27
  %t141 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s8, i64 10)
  %t142 = extractvalue { i32, i64 } %t141, 1
  %t143 = extractvalue { i32, i64 } %t141, 0
  store i32 %t143, ptr %l79
  %t144 = icmp ne i32 %t143, 0
  br i1 %t144, label %bb44, label %ok.145, !prof !99
ok.145:
  store i64 %t142, ptr %l78
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_bedb01e7abfdb211_6cf177c6e28dc1f5)
  unreachable
bb43:
  %t146 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t147 = load i64, ptr %l78, !tbaa !24
  %t148 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s5, { i64, ptr } %t146, i64 %t147)
  %t149 = extractvalue { i32, i64 } %t148, 1
  %t150 = extractvalue { i32, i64 } %t148, 0
  store i32 %t150, ptr %l81
  %t151 = icmp ne i32 %t150, 0
  br i1 %t151, label %bb47, label %ok.152, !prof !99
ok.152:
  store i64 %t149, ptr %l80
  br label %bb46
bb44:
  br label %bb45
bb45:
  store i64 -1, ptr %l70, !tbaa !24
  br label %bb48
bb46:
  %t153 = load i64, ptr %l80, !tbaa !24
  store i64 %t153, ptr %l70, !tbaa !24
  br label %bb48
bb47:
  br label %bb45
bb48:
  %t154 = load i64, ptr %l70, !tbaa !24
  store i64 %t154, ptr %l14, !tbaa !24
  call void @__olang_scope_close(ptr %s8)
  br label %bb49
bb49:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l83, !tbaa !29
  %t156 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t156, ptr %l84, !tbaa !27
  %t157 = load i64, ptr %l13, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l86, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t160, 0
  store i64 %t163, ptr %l89, !tbaa !24
  %t164 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  store i64 %t165, ptr %l90, !tbaa !24
  %t166 = load i64, ptr %l86, !tbaa !24
  %t167 = icmp sge i64 %t166, 0
  br i1 %t167, label %bb50, label %bb51
bb50:
  %t169 = load i64, ptr %l86, !tbaa !24
  %t170 = load i64, ptr %l89, !tbaa !24
  %t171 = icmp sle i64 %t169, %t170
  br i1 %t171, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_8011bd44a005a812_c615cbe07a9a1b16)
  unreachable
bb52:
  %t173 = load i64, ptr %l89, !tbaa !24
  %t174 = load i64, ptr %l90, !tbaa !24
  %t175 = icmp sle i64 %t173, %t174
  br i1 %t175, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_8011bd44a005a812_c615cbe07a9a1b16)
  unreachable
bb54:
  %t177 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = load i64, ptr %l86, !tbaa !24
  %t180 = load i64, ptr %l89, !tbaa !24
  %t181 = getelementptr i8, ptr %t178, i64 %t179
  %t182 = sub i64 %t180, %t179
  %t183 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t181, 1
  %t185 = load ptr, ptr %l83, !tbaa !29
  %t187 = call { i32, { i64, [2 x i64] } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermOfWord(ptr %v0, ptr %s5, ptr %t185, { i64, ptr } %t184)
  %t188 = extractvalue { i32, { i64, [2 x i64] } } %t187, 1
  %t189 = extractvalue { i32, { i64, [2 x i64] } } %t187, 0
  store i32 %t189, ptr %l96
  %t190 = icmp ne i32 %t189, 0
  br i1 %t190, label %bb57, label %ok.191, !prof !99
ok.191:
  store { i64, [2 x i64] } %t188, ptr %l95
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_8011bd44a005a812_c615cbe07a9a1b16)
  unreachable
bb56:
  %t192 = load { i64, [2 x i64] }, ptr %l95
  store { i64, [2 x i64] } %t192, ptr %l82
  br label %bb59
bb57:
  %t193 = load i32, ptr %l96, !tbaa !23
  %t194 = ashr i32 %t193, 16
  %t196 = icmp eq i32 %t194, 1
  store i1 %t196, ptr %l98, !tbaa !21
  br label %bb58
bb58:
  store { i64, [2 x i64] } zeroinitializer, ptr %t197
  %t198 = getelementptr { i64, [2 x i64] }, ptr %t197, i32 0, i32 0
  store i64 5, ptr %t198
  %t199 = insertvalue { i64 } undef, i64 -1, 0
  %t200 = getelementptr { i64, [2 x i64] }, ptr %t197, i32 0, i32 1
  store { i64 } %t199, ptr %t200
  %t201 = load { i64, [2 x i64] }, ptr %t197
  store { i64, [2 x i64] } %t201, ptr %l82
  br label %bb59
bb59:
  %t203 = load { i64, [2 x i64] }, ptr %l82
  store { i64, [2 x i64] } %t203, ptr %l15
  %t204 = load i64, ptr %l14, !tbaa !24
  %t206 = icmp slt i64 %t204, 0
  br i1 %t206, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb62
bb61:
  %t208 = load { i64, [2 x i64] }, ptr %l15
  %t210 = extractvalue { i64, [2 x i64] } %t208, 0
  %t211 = icmp eq i64 %t210, 5
  store i1 %t211, ptr %l102, !tbaa !21
  br label %bb62
bb62:
  %t213 = load i1, ptr %l102, !tbaa !21
  br i1 %t213, label %bb63, label %bb64
bb63:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/scope:Scoper", ptr %t214, i32 0, i32 295
  store i1 true, ptr %t216, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb64:
  br label %bb65
bb65:
  %t217 = getelementptr %"compiler/scope:fsBody", ptr %l3, i32 0, i32 0
  store ptr %t217, ptr %l106, !tbaa !29
  %t218 = load i64, ptr %l14, !tbaa !24
  %t219 = load { i64, [2 x i64] }, ptr %l15
  %t222 = call %"compiler/scope:fsRow" @compiler_2fscope_3afsRow_2ector(ptr %s6, i64 %t218, { i64, [2 x i64] } %t219)
  store %"compiler/scope:fsRow" %t222, ptr %l109
  br label %bb66
bb66:
  %t223 = load ptr, ptr %l106, !tbaa !29
  %t224 = load %"compiler/scope:fsRow", ptr %l109
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afsRow_3e_2ePush_3ccompiler_2fscope_3afsRow_3e(ptr %s0, ptr %t223, %"compiler/scope:fsRow" %t224)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s6)
  br label %bb68
bb68:
  %t225 = load i64, ptr %l10, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l10, !tbaa !24
  br label %bb23
bb69:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  br label %bb89
bb70:
  %t229 = load i1, ptr %l113, !tbaa !21
  br i1 %t229, label %bb71, label %bb72
bb71:
  %t230 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  %t234 = icmp sgt i64 %t232, 2
  store i1 %t234, ptr %l114, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb73
bb73:
  %t236 = load i1, ptr %l114, !tbaa !21
  br i1 %t236, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s12
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l118, !tbaa !29
  %t238 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t238, ptr %l119, !tbaa !27
  %t239 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t239, 0
  store i64 %t242, ptr %l122, !tbaa !24
  %t243 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 0
  store i64 %t244, ptr %l123, !tbaa !24
  %t245 = icmp sge i64 2, 0
  br i1 %t245, label %bb76, label %bb77
bb75:
  br label %bb88
bb76:
  %t247 = load i64, ptr %l122, !tbaa !24
  %t248 = icmp sle i64 2, %t247
  br i1 %t248, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_8b3272632203020f_5bf10d2405a373)
  unreachable
bb78:
  %t250 = load i64, ptr %l122, !tbaa !24
  %t251 = load i64, ptr %l123, !tbaa !24
  %t252 = icmp sle i64 %t250, %t251
  br i1 %t252, label %bb80, label %bb81
bb79:
  call void @__olang_check_failed(ptr @olang_loc_8b3272632203020f_5bf10d2405a373)
  unreachable
bb80:
  %t254 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = load i64, ptr %l122, !tbaa !24
  %t257 = getelementptr i8, ptr %t255, i64 2
  %t258 = sub i64 %t256, 2
  %t259 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t257, 1
  %t261 = load ptr, ptr %l118, !tbaa !29
  %t263 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etypeOfCanon(ptr %v0, ptr %s2, ptr %t261, { i64, ptr } %t260)
  store i32 %t263, ptr %l128
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_8b3272632203020f_5bf10d2405a373)
  unreachable
bb82:
  %t264 = load i32, ptr %l128, !tbaa !23
  store i32 %t264, ptr %l16, !tbaa !23
  %t265 = load i32, ptr %l16, !tbaa !23
  %t266 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t269 = icmp eq i32 %t265, %t266
  br i1 %t269, label %bb83, label %bb84
bb83:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/scope:Scoper", ptr %t271, i32 0, i32 295
  store i1 true, ptr %t273, !tbaa !21
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb84:
  br label %bb85
bb85:
  %t274 = getelementptr %"compiler/scope:fsBody", ptr %l3, i32 0, i32 1
  store ptr %t274, ptr %l133, !tbaa !29
  %t275 = load i32, ptr %l16, !tbaa !23
  %t276 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t276, ptr %l135, !tbaa !27
  %t277 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = getelementptr i8, ptr %t278, i64 1
  %t280 = load i8, ptr %t279, !tbaa !32
  %t282 = icmp eq i8 %t280, 49
  %t285 = call %"compiler/scope:fsOpen" @compiler_2fscope_3afsOpen_2ector(ptr %s12, i32 %t275, i1 %t282)
  store %"compiler/scope:fsOpen" %t285, ptr %l138
  br label %bb86
bb86:
  %t286 = load ptr, ptr %l133, !tbaa !29
  %t287 = load %"compiler/scope:fsOpen", ptr %l138
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afsOpen_3e_2ePush_3ccompiler_2fscope_3afsOpen_3e(ptr %s0, ptr %t286, %"compiler/scope:fsOpen" %t287)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s12)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s11)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s3)
  br label %bb90
bb90:
  %t288 = load i64, ptr %l6, !tbaa !24
  %t290 = add i64 %t288, 1
  store i64 %t290, ptr %l6, !tbaa !24
  br label %bb8
bb91:
  call void @__olang_scope_close(ptr %s2)
  %t292 = load i1, ptr %l4, !tbaa !21
  br i1 %t292, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s15
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/scope:Scoper", ptr %t294, i32 0, i32 51
  store ptr %t296, ptr %l143, !tbaa !29
  %t297 = load i64, ptr %l1, !tbaa !24
  store i64 %t297, ptr %l144, !tbaa !24
  %t298 = load %"compiler/scope:fsBody", ptr %l3
  store %"compiler/scope:fsBody" %t298, ptr %l145
  %t300 = call %"compiler/scope:fsBody" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afsBody(ptr %s15, ptr %l145)
  store %"compiler/scope:fsBody" %t300, ptr %l147
  br label %bb94
bb93:
  br label %bb96
bb94:
  %t301 = load ptr, ptr %l143, !tbaa !29
  %t302 = load i64, ptr %l144, !tbaa !24
  %t303 = load %"compiler/scope:fsBody", ptr %l147
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afsBody_3e__Ha9ca97d13139ad52dca62b441a5c13c0(ptr %v0, ptr %s15, ptr %t301, i64 %t302, %"compiler/scope:fsBody" %t303)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s15)
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadsSince(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l43 = alloca i64
  %l49 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 301
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l11, !tbaa !24
  %t9 = sub i64 %t7, %t6
  store i64 %t9, ptr %l13, !tbaa !24
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l13, !tbaa !24
  %t14 = icmp sle i64 %t13, 1152921504606846975
  br i1 %t14, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_b0386a143db8506e_dfd8a002a8dad66a)
  unreachable
bb4:
  %t16 = load i64, ptr %l13, !tbaa !24
  %t17 = mul i64 %t16, 8
  %t18 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t17)
  %t19 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t21, ptr %lp2
  %t23 = load ptr, ptr %lp2
  store { i64, ptr } %t20, ptr %t23, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t24 = load ptr, ptr %lp2
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_b0386a143db8506e_dfd8a002a8dad66a)
  unreachable
bb6:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb11
bb8:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l25, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb10
bb10:
  %t55 = load i64, ptr %l25, !tbaa !24
  store i64 %t55, ptr %l22, !tbaa !24
  br label %bb11
bb11:
  %t56 = load i64, ptr %l22, !tbaa !24
  store i64 %t56, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l5, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  store i64 %t73, ptr %l8, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  store i64 %t75, ptr %l43, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/scope:Scoper", ptr %t76, i32 0, i32 301
  %t79 = load i64, ptr %l1, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t78, i64 %t83)
  store i64 %t86, ptr %l49
  br label %bb16
bb16:
  %t87 = load i64, ptr %l49, !tbaa !24
  %t88 = load ptr, ptr %lp2
  %t89 = load i64, ptr %l43, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i64, ptr %t91, i64 %t89
  store i64 %t87, ptr %t92, !tbaa !34
  br label %bb17
bb17:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l7, !tbaa !24
  br label %bb12
bb18:
  %t97 = load ptr, ptr %lp2
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 127
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
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 127
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
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 127
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l20
  br label %bb11
bb10:
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l26, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 126
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
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 126
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
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 27
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
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t75, i32 0, i32 27
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
  %t95 = getelementptr %"compiler/scope:Scoper", ptr %t93, i32 0, i32 126
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

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erequiredIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:rel"
  %l7 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca %"compiler/scope:rel"
  %l21 = alloca i1
  %l35 = alloca i1
  %l36 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l57 = alloca i1
  %l58 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  %t127 = alloca { i64, [2 x i64] }, align 8
  %t135 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l5, !tbaa !24
  store i64 %t3, ptr %l11, !tbaa !24
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l13
  br label %bb2
bb2:
  %t7 = load i64, ptr %l11, !tbaa !24
  %t8 = load i64, ptr %l13, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb44
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t13, i64 %t14)
  store %"compiler/scope:rel" %t17, ptr %l18
  br label %bb6
bb6:
  %t18 = load %"compiler/scope:rel", ptr %l18
  store %"compiler/scope:rel" %t18, ptr %l6
  %t19 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t20 = load { i64, [2 x i64] }, ptr %t19
  %t22 = extractvalue { i64, [2 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 2
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 1
  %t27 = getelementptr { i64 }, ptr %t26, i32 0, i32 0
  %t28 = load i64, ptr %t27
  %t32 = icmp eq i64 %t28, %a2
  store i1 %t32, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l21, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb10, label %bb11
bb10:
  br label %bb43
bb11:
  br label %bb12
bb12:
  %t37 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t38 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 1
  %t39 = getelementptr { i64 }, ptr %t38, i32 0, i32 0
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l7, !tbaa !24
  %t42 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 1
  %t43 = load { i64, [2 x i64] }, ptr %t42
  store { i64, [2 x i64] } %t43, ptr %l8
  %t45 = load { i64, [2 x i64] }, ptr %l8
  %t47 = extractvalue { i64, [2 x i64] } %t45, 0
  %t48 = icmp eq i64 %t47, 2
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t51 = getelementptr { i64 }, ptr %t50, i32 0, i32 0
  %t52 = load i64, ptr %t51
  store i64 %t52, ptr %l9, !tbaa !24
  br label %bb15
bb14:
  br label %bb33
bb15:
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t60 = icmp slt i64 %t54, %t57
  br i1 %t60, label %bb16, label %bb17
bb16:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l36, !tbaa !27
  %t63 = load i64, ptr %l9, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr { i64, [2 x i64] }, ptr %t66, i64 %t63
  %t68 = load { i64, [2 x i64] }, ptr %t67
  %t70 = extractvalue { i64, [2 x i64] } %t68, 0
  %t71 = icmp eq i64 %t70, 0
  %t73 = xor i1 %t71, true
  store i1 %t73, ptr %l35, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb18
bb18:
  %t75 = load i1, ptr %l35, !tbaa !21
  br i1 %t75, label %bb19, label %bb20
bb19:
  %t76 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t76, ptr %l42, !tbaa !27
  %t77 = load i64, ptr %l9, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t80, i64 %t77
  %t82 = load { i64, [2 x i64] }, ptr %t81
  %t84 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t82)
  store i1 %t84, ptr %l45
  br label %bb21
bb20:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t85 = load i1, ptr %l45, !tbaa !21
  store i1 %t85, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l41, !tbaa !21
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t87 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t87, ptr %l46, !tbaa !27
  %t88 = load i64, ptr %l9, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr { i64, [2 x i64] }, ptr %t91, i64 %t88
  %t93 = load { i64, [2 x i64] }, ptr %t92
  store { i64, [2 x i64] } %t93, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t95 = load i64, ptr %l9, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = icmp slt i64 %t95, %t98
  br i1 %t101, label %bb26, label %bb27
bb26:
  %t103 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t103, ptr %l54, !tbaa !27
  %t104 = load i64, ptr %l9, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { i64, [2 x i64] }, ptr %t107, i64 %t104
  %t109 = load { i64, [2 x i64] }, ptr %t108
  %t111 = call i1 @compiler_2fscope_2ecapTerm({ i64, [2 x i64] } %t109)
  store i1 %t111, ptr %l57
  br label %bb28
bb27:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb29
bb28:
  %t112 = load i1, ptr %l57, !tbaa !21
  store i1 %t112, ptr %l53, !tbaa !21
  br label %bb29
bb29:
  %t113 = load i1, ptr %l53, !tbaa !21
  br i1 %t113, label %bb30, label %bb31
bb30:
  %t114 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t114, ptr %l58, !tbaa !27
  %t115 = load i64, ptr %l9, !tbaa !24
  %t117 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr { i64, [2 x i64] }, ptr %t118, i64 %t115
  %t120 = load { i64, [2 x i64] }, ptr %t119
  store { i64, [2 x i64] } %t120, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb42
bb33:
  %t122 = load { i64, [2 x i64] }, ptr %l8
  %t124 = extractvalue { i64, [2 x i64] } %t122, 0
  %t125 = icmp eq i64 %t124, 3
  br i1 %t125, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store { i64, [2 x i64] } zeroinitializer, ptr %t127
  %t128 = getelementptr { i64, [2 x i64] }, ptr %t127, i32 0, i32 0
  store i64 3, ptr %t128
  %t129 = load { i64, [2 x i64] }, ptr %t127
  store { i64, [2 x i64] } %t129, ptr %rv
  br label %ret
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_ed814b94f6a98b8c_ead1babe88bc22e8)
  unreachable
bb42:
  br label %bb43
bb43:
  %t131 = load i64, ptr %l5, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l5, !tbaa !24
  br label %bb1
bb44:
  store { i64, [2 x i64] } zeroinitializer, ptr %t135
  %t136 = getelementptr { i64, [2 x i64] }, ptr %t135, i32 0, i32 0
  store i64 0, ptr %t136
  %t137 = load { i64, [2 x i64] }, ptr %t135
  store { i64, [2 x i64] } %t137, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i64
  %l46 = alloca ptr
  %l48 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca i1
  %l66 = alloca { i64, ptr }
  %l78 = alloca i1
  %l85 = alloca { i64, ptr }
  %l89 = alloca ptr
  %l90 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i1
  %l118 = alloca { i64, ptr }
  %l131 = alloca ptr
  %l140 = alloca ptr
  %l141 = alloca i1
  %l158 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l180 = alloca ptr
  %l181 = alloca i1
  %l190 = alloca ptr
  %l191 = alloca i1
  %l200 = alloca ptr
  %l201 = alloca i1
  %l210 = alloca i1
  %l214 = alloca i1
  %l215 = alloca ptr
  %l216 = alloca { i64, ptr }
  %l218 = alloca i32
  %l219 = alloca i1
  %l221 = alloca { i64, ptr }
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
  store ptr %t5, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t6 = load ptr, ptr %l31, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l31, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l32, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l32, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l4, !tbaa !29
  br label %bb8
bb7:
  br label %bb19
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t30, ptr %l41
  br label %bb9
bb9:
  %t31 = load i1, ptr %l41, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t32)
  store i64 %t34, ptr %l44
  br label %bb12
bb11:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb13
bb12:
  %t35 = load i64, ptr %l44, !tbaa !24
  %t36 = icmp sge i64 %t35, 0
  store i1 %t36, ptr %l42, !tbaa !21
  br label %bb13
bb13:
  %t38 = load i1, ptr %l42, !tbaa !21
  br i1 %t38, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l2, !tbaa !29
  store ptr %t39, ptr %l46, !tbaa !29
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t40)
  store i64 %t42, ptr %l48
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t43 = load ptr, ptr %l46, !tbaa !29
  %t44 = load i64, ptr %l48, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t43, i64 %t44)
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb127
bb19:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t46 = load ptr, ptr %l49, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb20, label %bb21
bb20:
  %t49 = load ptr, ptr %l49, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 7
  store i1 %t52, ptr %l50, !tbaa !21
  br label %bb21
bb21:
  %t53 = load i1, ptr %l50, !tbaa !21
  br i1 %t53, label %bb22, label %bb23
bb22:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l5, !tbaa !29
  br label %bb24
bb23:
  br label %bb42
bb24:
  %t60 = load ptr, ptr %l5, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Make", ptr %t60, i32 0, i32 0
  %t63 = load i32, ptr %t62, !range !{i32 0, i32 5}
  %t65 = trunc i64 0 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb25, label %bb26
bb25:
  %t68 = load ptr, ptr %l5, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Make", ptr %t68, i32 0, i32 2
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l8, !tbaa !24
  br label %bb27
bb26:
  br label %bb34
bb27:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb28, label %bb29
bb28:
  br label %bb33
bb29:
  br label %bb30
bb30:
  %t85 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t85, ptr %l66, !tbaa !27
  %t86 = load i64, ptr %l7, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr ptr, ptr %t89, i64 %t86
  %t91 = load ptr, ptr %t90, !tbaa !39
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t93, ptr %t91, ptr %t96)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t100 = load i64, ptr %l7, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l7, !tbaa !24
  br label %bb27
bb33:
  br label %bb34
bb34:
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Make", ptr %t104, i32 0, i32 0
  %t107 = load i32, ptr %t106, !range !{i32 0, i32 5}
  %t109 = trunc i64 4 to i32
  %t110 = icmp eq i32 %t107, %t109
  br i1 %t110, label %bb35, label %bb36
bb35:
  %t112 = load ptr, ptr %l5, !tbaa !29
  %t114 = getelementptr %"compiler/typed:Make", ptr %t112, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t119 = icmp eq i64 %t117, 1
  store i1 %t119, ptr %l78, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb37
bb37:
  %t121 = load i1, ptr %l78, !tbaa !21
  br i1 %t121, label %bb38, label %bb39
bb38:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l5, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Make", ptr %t123, i32 0, i32 2
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  store { i64, ptr } %t126, ptr %l85, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr ptr, ptr %t128, i64 0
  %t130 = load ptr, ptr %t129, !tbaa !39
  %t132 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t122, ptr %t130, ptr %t132)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb127
bb42:
  %t136 = load ptr, ptr %l1, !tbaa !29
  store ptr %t136, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t137 = load ptr, ptr %l89, !tbaa !29
  %t138 = icmp ne ptr %t137, null
  br i1 %t138, label %bb43, label %bb44
bb43:
  %t140 = load ptr, ptr %l89, !tbaa !29
  %t141 = load i64, ptr %t140, !range !{i64 0, i64 18}
  %t143 = icmp eq i64 %t141, 11
  store i1 %t143, ptr %l90, !tbaa !21
  br label %bb44
bb44:
  %t144 = load i1, ptr %l90, !tbaa !21
  br i1 %t144, label %bb45, label %bb46
bb45:
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t147 = getelementptr { i64, [5 x i64] }, ptr %t145, i32 0, i32 1
  %t148 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t147, i32 0, i32 2
  %t149 = load ptr, ptr %t148
  store ptr %t149, ptr %l10, !tbaa !29
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l10, !tbaa !29
  %t154 = getelementptr %"compiler/typed:Cond", ptr %t152, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t156 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t151, ptr %t155, ptr %t156)
  br label %bb48
bb48:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l10, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Cond", ptr %t161, i32 0, i32 2
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t160, ptr %t164, ptr %t166)
  br label %bb49
bb49:
  br label %bb127
bb50:
  %t170 = load ptr, ptr %l1, !tbaa !29
  store ptr %t170, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t171 = load ptr, ptr %l104, !tbaa !29
  %t172 = icmp ne ptr %t171, null
  br i1 %t172, label %bb51, label %bb52
bb51:
  %t174 = load ptr, ptr %l104, !tbaa !29
  %t175 = load i64, ptr %t174, !range !{i64 0, i64 18}
  %t177 = icmp eq i64 %t175, 13
  store i1 %t177, ptr %l105, !tbaa !21
  br label %bb52
bb52:
  %t178 = load i1, ptr %l105, !tbaa !21
  br i1 %t178, label %bb53, label %bb54
bb53:
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr { i64, [5 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t181, i32 0, i32 2
  %t183 = load ptr, ptr %t182
  store ptr %t183, ptr %l11, !tbaa !29
  br label %bb55
bb54:
  br label %bb70
bb55:
  %t185 = load ptr, ptr %l11, !tbaa !29
  %t187 = getelementptr %"compiler/typed:Match", ptr %t185, i32 0, i32 1
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  store { i64, ptr } %t188, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t190 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t190, 0
  store i64 %t192, ptr %l14, !tbaa !24
  br label %bb56
bb56:
  %t194 = load i64, ptr %l13, !tbaa !24
  %t195 = load i64, ptr %l14, !tbaa !24
  %t198 = icmp slt i64 %t194, %t195
  %t200 = xor i1 %t198, true
  br i1 %t200, label %bb57, label %bb58
bb57:
  br label %bb62
bb58:
  br label %bb59
bb59:
  %t202 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t202, ptr %l118, !tbaa !27
  %t203 = load i64, ptr %l13, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr ptr, ptr %t206, i64 %t203
  %t208 = load ptr, ptr %t207, !tbaa !39
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Arm", ptr %t208, i32 0, i32 4
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t215 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t210, ptr %t214, ptr %t215)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t219 = load i64, ptr %l13, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l13, !tbaa !24
  br label %bb56
bb62:
  %t223 = load ptr, ptr %l11, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Match", ptr %t223, i32 0, i32 2
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t228 = icmp eq ptr %t226, null
  %t230 = xor i1 %t228, true
  br i1 %t230, label %bb63, label %bb64
bb63:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l131, !tbaa !29
  %t233 = load ptr, ptr %l11, !tbaa !29
  %t235 = getelementptr %"compiler/typed:Match", ptr %t233, i32 0, i32 2
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = icmp eq ptr %t236, null
  br i1 %t238, label %bb65, label %bb66
bb64:
  br label %bb69
bb65:
  call void @__olang_check_failed(ptr @olang_loc_eebfc4319566ad8a_fa3c553f7bca103e)
  unreachable
bb66:
  br label %bb67
bb67:
  %t240 = load ptr, ptr %l11, !tbaa !29
  %t242 = getelementptr %"compiler/typed:Match", ptr %t240, i32 0, i32 2
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Arm", ptr %t243, i32 0, i32 4
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t248 = load ptr, ptr %l2, !tbaa !29
  %t249 = load ptr, ptr %l131, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t249, ptr %t247, ptr %t248)
  br label %bb68
bb68:
  br label %bb69
bb69:
  br label %bb127
bb70:
  %t252 = load ptr, ptr %l1, !tbaa !29
  store ptr %t252, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t253 = load ptr, ptr %l140, !tbaa !29
  %t254 = icmp ne ptr %t253, null
  br i1 %t254, label %bb71, label %bb72
bb71:
  %t256 = load ptr, ptr %l140, !tbaa !29
  %t257 = load i64, ptr %t256, !range !{i64 0, i64 18}
  %t259 = icmp eq i64 %t257, 14
  store i1 %t259, ptr %l141, !tbaa !21
  br label %bb72
bb72:
  %t260 = load i1, ptr %l141, !tbaa !21
  br i1 %t260, label %bb73, label %bb74
bb73:
  %t261 = load ptr, ptr %l1, !tbaa !29
  %t263 = getelementptr { i64, [5 x i64] }, ptr %t261, i32 0, i32 1
  %t264 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t263, i32 0, i32 2
  %t265 = load ptr, ptr %t264
  store ptr %t265, ptr %l16, !tbaa !29
  br label %bb75
bb74:
  br label %bb90
bb75:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load ptr, ptr %l16, !tbaa !29
  %t270 = getelementptr %"compiler/typed:Try", ptr %t268, i32 0, i32 0
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t272 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t267, ptr %t271, ptr %t272)
  br label %bb76
bb76:
  %t276 = load ptr, ptr %l16, !tbaa !29
  %t278 = getelementptr %"compiler/typed:Try", ptr %t276, i32 0, i32 1
  %t279 = load { i64, ptr }, ptr %t278, !tbaa !27
  store { i64, ptr } %t279, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t281 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t281, 0
  store i64 %t283, ptr %l19, !tbaa !24
  br label %bb77
bb77:
  %t285 = load i64, ptr %l18, !tbaa !24
  %t286 = load i64, ptr %l19, !tbaa !24
  %t289 = icmp slt i64 %t285, %t286
  %t291 = xor i1 %t289, true
  br i1 %t291, label %bb78, label %bb79
bb78:
  br label %bb89
bb79:
  br label %bb80
bb80:
  %t293 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t293, ptr %l158, !tbaa !27
  %t294 = load i64, ptr %l18, !tbaa !24
  %t296 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr ptr, ptr %t297, i64 %t294
  %t299 = load ptr, ptr %t298, !tbaa !39
  %t303 = getelementptr %"compiler/typed:Clause", ptr %t299, i32 0, i32 4
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t306 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t306, 0
  store i64 %t308, ptr %l23, !tbaa !24
  br label %bb81
bb81:
  %t310 = load i64, ptr %l22, !tbaa !24
  %t311 = load i64, ptr %l23, !tbaa !24
  %t314 = icmp slt i64 %t310, %t311
  %t316 = xor i1 %t314, true
  br i1 %t316, label %bb82, label %bb83
bb82:
  br label %bb87
bb83:
  br label %bb84
bb84:
  %t318 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t318, ptr %l169, !tbaa !27
  %t319 = load i64, ptr %l22, !tbaa !24
  %t321 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr ptr, ptr %t322, i64 %t319
  %t324 = load ptr, ptr %t323, !tbaa !39
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t329 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t326, ptr %t324, ptr %t329)
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t333 = load i64, ptr %l22, !tbaa !24
  %t335 = add i64 %t333, 1
  store i64 %t335, ptr %l22, !tbaa !24
  br label %bb81
bb87:
  br label %bb88
bb88:
  %t337 = load i64, ptr %l18, !tbaa !24
  %t339 = add i64 %t337, 1
  store i64 %t339, ptr %l18, !tbaa !24
  br label %bb77
bb89:
  br label %bb127
bb90:
  %t341 = load ptr, ptr %l1, !tbaa !29
  store ptr %t341, ptr %l180, !tbaa !29
  store i1 false, ptr %l181, !tbaa !21
  %t342 = load ptr, ptr %l180, !tbaa !29
  %t343 = icmp ne ptr %t342, null
  br i1 %t343, label %bb91, label %bb92
bb91:
  %t345 = load ptr, ptr %l180, !tbaa !29
  %t346 = load i64, ptr %t345, !range !{i64 0, i64 18}
  %t348 = icmp eq i64 %t346, 12
  store i1 %t348, ptr %l181, !tbaa !21
  br label %bb92
bb92:
  %t349 = load i1, ptr %l181, !tbaa !21
  br i1 %t349, label %bb93, label %bb94
bb93:
  %t350 = load ptr, ptr %l1, !tbaa !29
  %t352 = getelementptr { i64, [5 x i64] }, ptr %t350, i32 0, i32 1
  %t353 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t352, i32 0, i32 2
  %t354 = load ptr, ptr %t353
  store ptr %t354, ptr %l25, !tbaa !29
  br label %bb95
bb94:
  br label %bb97
bb95:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load ptr, ptr %l25, !tbaa !29
  %t359 = getelementptr %"compiler/typed:Seq", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t361 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t356, ptr %t360, ptr %t361)
  br label %bb96
bb96:
  br label %bb127
bb97:
  %t365 = load ptr, ptr %l1, !tbaa !29
  store ptr %t365, ptr %l190, !tbaa !29
  store i1 false, ptr %l191, !tbaa !21
  %t366 = load ptr, ptr %l190, !tbaa !29
  %t367 = icmp ne ptr %t366, null
  br i1 %t367, label %bb98, label %bb99
bb98:
  %t369 = load ptr, ptr %l190, !tbaa !29
  %t370 = load i64, ptr %t369, !range !{i64 0, i64 18}
  %t372 = icmp eq i64 %t370, 17
  store i1 %t372, ptr %l191, !tbaa !21
  br label %bb99
bb99:
  %t373 = load i1, ptr %l191, !tbaa !21
  br i1 %t373, label %bb100, label %bb101
bb100:
  %t374 = load ptr, ptr %l1, !tbaa !29
  %t376 = getelementptr { i64, [5 x i64] }, ptr %t374, i32 0, i32 1
  %t377 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t376, i32 0, i32 2
  %t378 = load ptr, ptr %t377
  store ptr %t378, ptr %l26, !tbaa !29
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load ptr, ptr %l26, !tbaa !29
  %t383 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t380, ptr %t381, ptr %t383)
  br label %bb103
bb103:
  br label %bb127
bb104:
  %t387 = load ptr, ptr %l1, !tbaa !29
  store ptr %t387, ptr %l200, !tbaa !29
  store i1 false, ptr %l201, !tbaa !21
  %t388 = load ptr, ptr %l200, !tbaa !29
  %t389 = icmp ne ptr %t388, null
  br i1 %t389, label %bb105, label %bb106
bb105:
  %t391 = load ptr, ptr %l200, !tbaa !29
  %t392 = load i64, ptr %t391, !range !{i64 0, i64 18}
  %t394 = icmp eq i64 %t392, 9
  store i1 %t394, ptr %l201, !tbaa !21
  br label %bb106
bb106:
  %t395 = load i1, ptr %l201, !tbaa !21
  br i1 %t395, label %bb107, label %bb108
bb107:
  %t396 = load ptr, ptr %l1, !tbaa !29
  %t398 = getelementptr { i64, [5 x i64] }, ptr %t396, i32 0, i32 1
  %t399 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t398, i32 0, i32 2
  %t400 = load i32, ptr %t399, !range !{i32 0, i32 51}
  store i32 %t400, ptr %l27
  %t402 = load ptr, ptr %l1, !tbaa !29
  %t404 = getelementptr { i64, [5 x i64] }, ptr %t402, i32 0, i32 1
  %t405 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t404, i32 0, i32 4
  %t406 = load { i64, ptr }, ptr %t405
  store { i64, ptr } %t406, ptr %l28, !tbaa !27
  br label %bb109
bb108:
  br label %bb122
bb109:
  %t408 = load i32, ptr %l27, !range !{i32 0, i32 51}
  %t410 = trunc i64 20 to i32
  %t411 = icmp eq i32 %t408, %t410
  br i1 %t411, label %bb110, label %bb111
bb110:
  %t413 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t417 = icmp eq i64 %t415, 1
  store i1 %t417, ptr %l210, !tbaa !21
  br label %bb112
bb111:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb112
bb112:
  %t419 = load i1, ptr %l210, !tbaa !21
  br i1 %t419, label %bb113, label %bb114
bb113:
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l215, !tbaa !29
  %t421 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t421, ptr %l216, !tbaa !27
  %t422 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t423 = load ptr, ptr %t422, !tbaa !27
  %t424 = getelementptr ptr, ptr %t423, i64 0
  %t425 = load ptr, ptr %t424, !tbaa !39
  %t427 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t425)
  store i32 %t427, ptr %l218
  br label %bb115
bb114:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb117
bb115:
  %t428 = load ptr, ptr %l215, !tbaa !29
  %t429 = load i32, ptr %l218, !tbaa !23
  %t430 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t428, i32 %t429)
  store i1 %t430, ptr %l219
  br label %bb116
bb116:
  %t431 = load i1, ptr %l219, !tbaa !21
  store i1 %t431, ptr %l214, !tbaa !21
  br label %bb117
bb117:
  %t432 = load i1, ptr %l214, !tbaa !21
  br i1 %t432, label %bb118, label %bb119
bb118:
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t434, ptr %l221, !tbaa !27
  %t435 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t436 = load ptr, ptr %t435, !tbaa !27
  %t437 = getelementptr ptr, ptr %t436, i64 0
  %t438 = load ptr, ptr %t437, !tbaa !39
  %t440 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereturnedArrays(ptr %v0, ptr %v1, ptr %v2, ptr %t433, ptr %t438, ptr %t440)
  br label %bb120
bb119:
  br label %bb121
bb120:
  br label %bb121
bb121:
  br label %bb127
bb122:
  br i1 true, label %bb123, label %bb124
bb123:
  br label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb127
bb126:
  call void @__olang_check_failed(ptr @olang_loc_472824ea9c9f9618_8b7f7100f340f49c)
  unreachable
bb127:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedNode(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/scope:instNode"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/scope:fnRecs"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca %"compiler/scope:fnRec"
  %l17 = alloca ptr
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l35 = alloca %"compiler/scope:instNode"
  %l37 = alloca %"compiler/scope:instNode"
  %l38 = alloca ptr
  %l39 = alloca i32
  %l41 = alloca i64
  %l42 = alloca i64
  %l44 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l71 = alloca %"compiler/scope:fnRecs"
  %l73 = alloca %"compiler/scope:fnRecs"
  %l75 = alloca i1
  %l78 = alloca %"compiler/scope:fnRecs"
  %l80 = alloca %"compiler/scope:fnRecs"
  %l82 = alloca i64
  %l84 = alloca %"compiler/scope:fnRecs"
  %l87 = alloca %"compiler/scope:fnRecs"
  %l89 = alloca %"compiler/scope:fnRecs"
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca i64
  %l95 = alloca i64
  %l100 = alloca %"compiler/scope:fnRec"
  %l102 = alloca %"compiler/scope:fnRec"
  %l106 = alloca ptr
  %l107 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l110 = alloca i64
  %l114 = alloca i64
  %l117 = alloca i64
  %l135 = alloca ptr
  %l139 = alloca i1
  %l140 = alloca { i64, [2 x i64] }
  %l141 = alloca i64
  %l145 = alloca i64
  %l150 = alloca ptr
  %l154 = alloca %"compiler/scope:fnRec"
  %l155 = alloca ptr
  %l165 = alloca ptr
  %l167 = alloca ptr
  %l168 = alloca i64
  %l169 = alloca %"compiler/scope:fnRecs"
  %l171 = alloca %"compiler/scope:fnRecs"
  %l174 = alloca i64
  %l176 = alloca i1
  %l183 = alloca ptr
  %l186 = alloca i64
  %l191 = alloca i64
  %l195 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i64
  %t212 = alloca { i64, [2 x i64] }, align 8
  %t216 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 241
  %t4 = getelementptr %"compiler/scope:instTree", ptr %t3, i32 0, i32 0
  %t8 = call %"compiler/scope:instNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eAt_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %v0, ptr %t4, i64 %a1)
  store %"compiler/scope:instNode" %t8, ptr %l35
  br label %bb1
bb1:
  %t10 = call %"compiler/scope:instNode" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstNode(ptr %s0, ptr %l35)
  store %"compiler/scope:instNode" %t10, ptr %l37
  br label %bb2
bb2:
  %t11 = load %"compiler/scope:instNode", ptr %l37
  store %"compiler/scope:instNode" %t11, ptr %l5
  %t12 = load ptr, ptr %l3, !tbaa !29
  store ptr %t12, ptr %l38, !tbaa !29
  %t13 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 0
  %t14 = load i32, ptr %t13, !tbaa !23
  store i32 %t14, ptr %l39, !tbaa !23
  %t15 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 1
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eLen_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %t15)
  store i64 %t17, ptr %l41
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l38, !tbaa !29
  %t19 = load i32, ptr %l39, !tbaa !23
  %t20 = load i64, ptr %l41, !tbaa !24
  %t21 = call i64 @compiler_2fscope_2enewNode(ptr %v1, ptr %t18, i32 %t19, i64 %t20)
  store i64 %t21, ptr %l42
  br label %bb4
bb4:
  %t22 = load i64, ptr %l42, !tbaa !24
  store i64 %t22, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t23 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 1
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eLen_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %t23)
  store i64 %t25, ptr %l44
  br label %bb5
bb5:
  %t26 = load i64, ptr %l44, !tbaa !24
  store i64 %t26, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t27 = load i64, ptr %l8, !tbaa !24
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = icmp sgt i64 %t27, %t28
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = load i64, ptr %l9, !tbaa !24
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb11
bb8:
  %t37 = load i64, ptr %l8, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = sub i64 %t37, %t38
  %t42 = load i64, ptr %l9, !tbaa !24
  %t45 = add i64 %t41, %t42
  %t47 = sub i64 %t45, 1
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = sdiv i64 %t47, %t48
  store i64 %t51, ptr %l51, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb10
bb10:
  %t53 = load i64, ptr %l51, !tbaa !24
  store i64 %t53, ptr %l48, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l48, !tbaa !24
  store i64 %t54, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t55 = load i64, ptr %l11, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb14:
  br label %bb15
bb15:
  %t63 = load i64, ptr %l7, !tbaa !24
  %t64 = load i64, ptr %l11, !tbaa !24
  %t65 = load i64, ptr %l9, !tbaa !24
  %t68 = mul i64 %t64, %t65
  %t71 = add i64 %t63, %t68
  store i64 %t71, ptr %l12, !tbaa !24
  %t73 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 1
  %t74 = load i64, ptr %l12, !tbaa !24
  %t77 = call %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %s2, ptr %t73, i64 %t74)
  store %"compiler/scope:fnRecs" %t77, ptr %l71
  br label %bb16
bb16:
  %t79 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s2, ptr %l71)
  store %"compiler/scope:fnRecs" %t79, ptr %l73
  br label %bb17
bb17:
  %t80 = getelementptr %"compiler/scope:fnRecs", ptr %l73, i32 0, i32 1
  %t81 = load i1, ptr %t80, !tbaa !21
  br i1 %t81, label %bb18, label %bb19
bb18:
  %t83 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 1
  %t84 = load i64, ptr %l12, !tbaa !24
  %t87 = call %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %s0, ptr %t83, i64 %t84)
  store %"compiler/scope:fnRecs" %t87, ptr %l78
  br label %bb20
bb19:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb23
bb20:
  %t89 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s2, ptr %l78)
  store %"compiler/scope:fnRecs" %t89, ptr %l80
  br label %bb21
bb21:
  %t90 = getelementptr %"compiler/scope:fnRecs", ptr %l80, i32 0, i32 0
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t90)
  store i64 %t92, ptr %l82
  br label %bb22
bb22:
  %t93 = load i64, ptr %l82, !tbaa !24
  %t94 = icmp sgt i64 %t93, 0
  store i1 %t94, ptr %l75, !tbaa !21
  br label %bb23
bb23:
  %t96 = load i1, ptr %l75, !tbaa !21
  br i1 %t96, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s3
  %t97 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %s3)
  store %"compiler/scope:fnRecs" %t97, ptr %l84
  br label %bb26
bb25:
  br label %bb65
bb26:
  %t98 = load %"compiler/scope:fnRecs", ptr %l84
  store %"compiler/scope:fnRecs" %t98, ptr %l13
  %t99 = getelementptr %"compiler/scope:fnRecs", ptr %l13, i32 0, i32 1
  store i1 true, ptr %t99, !tbaa !21
  store %olang.scope zeroinitializer, ptr %s4
  %t100 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 1
  %t101 = load i64, ptr %l12, !tbaa !24
  %t104 = call %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %s0, ptr %t100, i64 %t101)
  store %"compiler/scope:fnRecs" %t104, ptr %l87
  br label %bb27
bb27:
  %t106 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s0, ptr %l87)
  store %"compiler/scope:fnRecs" %t106, ptr %l89
  br label %bb28
bb28:
  %t107 = getelementptr %"compiler/scope:fnRecs", ptr %l89, i32 0, i32 0
  %t109 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2esortedRecs(ptr %s0, ptr %s4, ptr %t107)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l91
  br label %bb29
bb29:
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  %t111 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %t111
  store ptr %t111, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t113 = load i64, ptr %l15, !tbaa !24
  store i64 %t113, ptr %l93, !tbaa !24
  %t114 = load ptr, ptr %l14, !tbaa !29
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s4, ptr %t114)
  store i64 %t116, ptr %l95
  br label %bb31
bb31:
  %t117 = load i64, ptr %l93, !tbaa !24
  %t118 = load i64, ptr %l95, !tbaa !24
  %t119 = icmp slt i64 %t117, %t118
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb33:
  br label %bb34
bb34:
  %t123 = load ptr, ptr %l14, !tbaa !29
  %t124 = load i64, ptr %l15, !tbaa !24
  %t127 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s4, ptr %s4, ptr %t123, i64 %t124)
  store %"compiler/scope:fnRec" %t127, ptr %l100
  br label %bb35
bb35:
  %t129 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s5, ptr %l100)
  store %"compiler/scope:fnRec" %t129, ptr %l102
  br label %bb36
bb36:
  %t130 = load %"compiler/scope:fnRec", ptr %l102
  store %"compiler/scope:fnRec" %t130, ptr %l16
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/scope:Scoper", ptr %t131, i32 0, i32 1
  %t134 = getelementptr %"compiler/scope:fnRec", ptr %l16, i32 0, i32 0
  %t135 = load i64, ptr %t134, !tbaa !24
  %t138 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t133, i64 %t135)
  store ptr %t138, ptr %l106
  br label %bb37
bb37:
  %t139 = load ptr, ptr %l106, !tbaa !29
  store ptr %t139, ptr %l17, !tbaa !29
  %t140 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %l107
  br label %bb38
bb38:
  %t141 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l107
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %l18
  store i64 0, ptr %l19, !tbaa !24
  %t142 = load ptr, ptr %l17, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Body", ptr %t142, i32 0, i32 6
  %t146 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t144)
  store i64 %t146, ptr %l110
  br label %bb39
bb39:
  %t147 = load i64, ptr %l110, !tbaa !24
  store i64 %t147, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t148 = load i64, ptr %l20, !tbaa !24
  %t149 = load i64, ptr %l19, !tbaa !24
  %t152 = icmp sgt i64 %t148, %t149
  br i1 %t152, label %bb40, label %bb41
bb40:
  %t154 = load i64, ptr %l21, !tbaa !24
  %t156 = icmp sgt i64 %t154, 0
  br i1 %t156, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb45
bb42:
  %t158 = load i64, ptr %l20, !tbaa !24
  %t159 = load i64, ptr %l19, !tbaa !24
  %t162 = sub i64 %t158, %t159
  %t163 = load i64, ptr %l21, !tbaa !24
  %t166 = add i64 %t162, %t163
  %t168 = sub i64 %t166, 1
  %t169 = load i64, ptr %l21, !tbaa !24
  %t172 = sdiv i64 %t168, %t169
  store i64 %t172, ptr %l117, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb44
bb44:
  %t174 = load i64, ptr %l117, !tbaa !24
  store i64 %t174, ptr %l114, !tbaa !24
  br label %bb45
bb45:
  %t175 = load i64, ptr %l114, !tbaa !24
  store i64 %t175, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb46
bb46:
  %t176 = load i64, ptr %l23, !tbaa !24
  %t177 = load i64, ptr %l22, !tbaa !24
  %t180 = icmp slt i64 %t176, %t177
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb47, label %bb48
bb47:
  br label %bb57
bb48:
  br label %bb49
bb49:
  %t184 = load i64, ptr %l19, !tbaa !24
  %t185 = load i64, ptr %l23, !tbaa !24
  %t186 = load i64, ptr %l21, !tbaa !24
  %t189 = mul i64 %t185, %t186
  %t192 = add i64 %t184, %t189
  store i64 %t192, ptr %l24, !tbaa !24
  store ptr %l18, ptr %l135, !tbaa !29
  %t194 = load ptr, ptr %l17, !tbaa !29
  %t195 = load i64, ptr %l24, !tbaa !24
  %t196 = getelementptr %"compiler/scope:fnRec", ptr %l16, i32 0, i32 2
  %t197 = load i1, ptr %t196, !tbaa !21
  %t201 = call i1 @compiler_2fscope_2ecapVarOf(ptr %v0, ptr %t194, i64 %t195, i1 %t197)
  store i1 %t201, ptr %l139
  br label %bb50
bb50:
  %t202 = load i1, ptr %l139, !tbaa !21
  br i1 %t202, label %bb51, label %bb52
bb51:
  %t203 = load i64, ptr %l2, !tbaa !24
  store i64 %t203, ptr %l141, !tbaa !24
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %t204, i32 0, i32 249
  %t207 = load i64, ptr %t206, !tbaa !24
  %t208 = load i64, ptr %l24, !tbaa !24
  %t211 = call i64 @compiler_2fscope_2ecapCode(i64 %t207, i64 %t208)
  store i64 %t211, ptr %l145
  br label %bb53
bb52:
  store { i64, [2 x i64] } zeroinitializer, ptr %t212
  %t213 = getelementptr { i64, [2 x i64] }, ptr %t212, i32 0, i32 0
  store i64 0, ptr %t213
  %t214 = load { i64, [2 x i64] }, ptr %t212
  store { i64, [2 x i64] } %t214, ptr %l140
  br label %bb54
bb53:
  store { i64, [2 x i64] } zeroinitializer, ptr %t216
  %t217 = getelementptr { i64, [2 x i64] }, ptr %t216, i32 0, i32 0
  store i64 4, ptr %t217
  %t218 = load i64, ptr %l141, !tbaa !24
  %t219 = insertvalue { i64, i64 } undef, i64 %t218, 0
  %t220 = load i64, ptr %l145, !tbaa !24
  %t221 = insertvalue { i64, i64 } %t219, i64 %t220, 1
  %t222 = getelementptr { i64, [2 x i64] }, ptr %t216, i32 0, i32 1
  store { i64, i64 } %t221, ptr %t222
  %t223 = load { i64, [2 x i64] }, ptr %t216
  store { i64, [2 x i64] } %t223, ptr %l140
  br label %bb54
bb54:
  %t225 = load ptr, ptr %l135, !tbaa !29
  %t226 = load { i64, [2 x i64] }, ptr %l140
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %s5, ptr %t225, { i64, [2 x i64] } %t226)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t227 = load i64, ptr %l23, !tbaa !24
  %t229 = add i64 %t227, 1
  store i64 %t229, ptr %l23, !tbaa !24
  br label %bb46
bb57:
  %t231 = getelementptr %"compiler/scope:fnRecs", ptr %l13, i32 0, i32 0
  store ptr %t231, ptr %l150, !tbaa !29
  %t232 = getelementptr %"compiler/scope:fnRec", ptr %l16, i32 0, i32 0
  %t233 = load i64, ptr %t232, !tbaa !24
  %t234 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  %t235 = getelementptr %"compiler/scope:fnRec", ptr %l16, i32 0, i32 2
  %t236 = load i1, ptr %t235, !tbaa !21
  %t240 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s5, ptr %s5, i64 %t233, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, i1 %t236)
  store %"compiler/scope:fnRec" %t240, ptr %l154
  br label %bb58
bb58:
  %t241 = load ptr, ptr %l150, !tbaa !29
  %t242 = load %"compiler/scope:fnRec", ptr %l154
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %s3, ptr %s5, ptr %t241, %"compiler/scope:fnRec" %t242)
  br label %bb59
bb59:
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l155, !tbaa !29
  %t244 = load ptr, ptr %l155, !tbaa !29
  %t245 = getelementptr %"compiler/scope:Scoper", ptr %t244, i32 0, i32 249
  %t246 = load i64, ptr %t245, !tbaa !24
  %t248 = add i64 %t246, 1
  %t250 = load ptr, ptr %l155, !tbaa !29
  %t251 = getelementptr %"compiler/scope:Scoper", ptr %t250, i32 0, i32 249
  store i64 %t248, ptr %t251, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  br label %bb60
bb60:
  %t252 = load i64, ptr %l15, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l15, !tbaa !24
  br label %bb30
bb61:
  call void @__olang_scope_close(ptr %s4)
  %t256 = load i64, ptr %l6, !tbaa !24
  %t258 = load i64, ptr %l12, !tbaa !24
  store i64 %t258, ptr %l26, !tbaa !24
  %t260 = load ptr, ptr %l3, !tbaa !29
  %t262 = getelementptr %"compiler/scope:instTree", ptr %t260, i32 0, i32 0
  %t266 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v1, ptr %v1, ptr %t262, i64 %t256)
  store ptr %t266, ptr %l165
  br label %bb62
bb62:
  %t267 = load ptr, ptr %l165, !tbaa !29
  %t270 = getelementptr %"compiler/scope:instNode", ptr %t267, i32 0, i32 1
  store ptr %t270, ptr %l167, !tbaa !29
  %t271 = load i64, ptr %l26, !tbaa !24
  store i64 %t271, ptr %l168, !tbaa !24
  %t272 = load %"compiler/scope:fnRecs", ptr %l13
  store %"compiler/scope:fnRecs" %t272, ptr %l169
  %t274 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s3, ptr %l169)
  store %"compiler/scope:fnRecs" %t274, ptr %l171
  br label %bb63
bb63:
  %t275 = load ptr, ptr %l167, !tbaa !29
  %t276 = load i64, ptr %l168, !tbaa !24
  %t277 = load %"compiler/scope:fnRecs", ptr %l171
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eSetAt_3ccompiler_2fscope_3afnRecs_3e(ptr %v1, ptr %s3, ptr %t275, i64 %t276, %"compiler/scope:fnRecs" %t277)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s3)
  br label %bb65
bb65:
  %t278 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 2
  %t279 = load i64, ptr %l12, !tbaa !24
  %t282 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t278, i64 %t279)
  store i64 %t282, ptr %l174
  br label %bb66
bb66:
  %t283 = load i64, ptr %l174, !tbaa !24
  %t284 = icmp sge i64 %t283, 0
  br i1 %t284, label %bb67, label %bb68
bb67:
  %t286 = load i64, ptr %l4, !tbaa !24
  %t288 = add i64 %t286, 1
  %t289 = load i64, ptr @G_2ecompiler_2fscope_2eInstDepth, !tbaa !24
  %t292 = icmp slt i64 %t288, %t289
  store i1 %t292, ptr %l176, !tbaa !21
  br label %bb69
bb68:
  store i1 false, ptr %l176, !tbaa !21
  br label %bb69
bb69:
  %t294 = load i1, ptr %l176, !tbaa !21
  br i1 %t294, label %bb70, label %bb71
bb70:
  %t295 = load i64, ptr %l6, !tbaa !24
  store i64 %t295, ptr %l28, !tbaa !24
  %t297 = load i64, ptr %l12, !tbaa !24
  store i64 %t297, ptr %l29, !tbaa !24
  %t299 = load ptr, ptr %l0, !tbaa !29
  store ptr %t299, ptr %l183, !tbaa !29
  %t300 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 2
  %t301 = load i64, ptr %l12, !tbaa !24
  %t304 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t300, i64 %t301)
  store i64 %t304, ptr %l186
  br label %bb72
bb71:
  br label %bb76
bb72:
  %t305 = load i64, ptr %l2, !tbaa !24
  %t306 = load ptr, ptr %l3, !tbaa !29
  %t307 = load i64, ptr %l4, !tbaa !24
  %t309 = add i64 %t307, 1
  %t310 = load ptr, ptr %l183, !tbaa !29
  %t311 = load i64, ptr %l186, !tbaa !24
  %t315 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedNode(ptr %v0, ptr %v1, ptr %t310, i64 %t311, i64 %t305, ptr %t306, i64 %t309)
  store i64 %t315, ptr %l191
  br label %bb73
bb73:
  %t316 = load i64, ptr %l191, !tbaa !24
  store i64 %t316, ptr %l30, !tbaa !24
  %t317 = load ptr, ptr %l3, !tbaa !29
  %t319 = getelementptr %"compiler/scope:instTree", ptr %t317, i32 0, i32 0
  %t320 = load i64, ptr %l28, !tbaa !24
  %t323 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v1, ptr %v1, ptr %t319, i64 %t320)
  store ptr %t323, ptr %l195
  br label %bb74
bb74:
  %t324 = load ptr, ptr %l195, !tbaa !29
  %t327 = getelementptr %"compiler/scope:instNode", ptr %t324, i32 0, i32 2
  %t328 = load i64, ptr %l29, !tbaa !24
  %t329 = load i64, ptr %l30, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v1, ptr %t327, i64 %t328, i64 %t329)
  br label %bb75
bb75:
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb77:
  %t333 = load i64, ptr %l11, !tbaa !24
  %t335 = add i64 %t333, 1
  store i64 %t335, ptr %l11, !tbaa !24
  br label %bb12
bb78:
  %t337 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t337, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlockBy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t3, ptr %t4)
  br label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
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
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
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
  %l57 = alloca i32
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i64
  %l62 = alloca i32
  %l64 = alloca i32
  %l65 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l72 = alloca ptr
  %l75 = alloca i1
  %l78 = alloca ptr
  %l79 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i1
  %l93 = alloca i1
  %l96 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l115 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca i1
  %l129 = alloca i1
  %l145 = alloca ptr
  %l146 = alloca i1
  %l156 = alloca ptr
  %l157 = alloca i1
  %l164 = alloca ptr
  %l165 = alloca i1
  %l180 = alloca i64
  %l183 = alloca i64
  %l202 = alloca { i64, ptr }
  %l207 = alloca i1
  %l210 = alloca i1
  %l212 = alloca i1
  %l216 = alloca i1
  %l226 = alloca ptr
  %l227 = alloca i1
  %l244 = alloca { i64, ptr }
  %l253 = alloca ptr
  %l254 = alloca i1
  %l268 = alloca ptr
  %l269 = alloca i1
  %l283 = alloca { i64, ptr }
  %l288 = alloca i1
  %l290 = alloca i1
  %l292 = alloca i1
  %l295 = alloca i1
  %l302 = alloca ptr
  %l303 = alloca i1
  %l322 = alloca ptr
  %l323 = alloca i1
  %l336 = alloca { i64, ptr }
  %l349 = alloca ptr
  %l350 = alloca i1
  %l363 = alloca { i64, ptr }
  %l380 = alloca { i64, ptr }
  %l393 = alloca ptr
  %l394 = alloca i1
  %l411 = alloca { i64, ptr }
  %l426 = alloca { i64, ptr }
  %l437 = alloca ptr
  %l438 = alloca i1
  %l443 = alloca ptr
  %l444 = alloca i1
  %l460 = alloca { i64, ptr }
  %l469 = alloca ptr
  %l470 = alloca i1
  %l482 = alloca ptr
  %l483 = alloca i1
  %l496 = alloca { i64, ptr }
  %l499 = alloca ptr
  %l500 = alloca i1
  %l503 = alloca i1
  %l507 = alloca i1
  %l510 = alloca i1
  %l520 = alloca ptr
  %l521 = alloca i1
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
  store i1 true, ptr %l75, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 146
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l75, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l75, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t12 = load ptr, ptr %l78, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l78, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 18}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l79, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l79, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t21 = load ptr, ptr %l82, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb11, label %bb12
bb11:
  %t24 = load ptr, ptr %l82, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 1
  store i1 %t27, ptr %l83, !tbaa !21
  br label %bb12
bb12:
  %t28 = load i1, ptr %l83, !tbaa !21
  br i1 %t28, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb276
bb16:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t30 = load ptr, ptr %l86, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb17, label %bb18
bb17:
  %t33 = load ptr, ptr %l86, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 18}
  %t36 = icmp eq i64 %t34, 2
  store i1 %t36, ptr %l87, !tbaa !21
  br label %bb18
bb18:
  %t37 = load i1, ptr %l87, !tbaa !21
  br i1 %t37, label %bb19, label %bb20
bb19:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb30
bb21:
  %t44 = load i1, ptr %l2, !tbaa !21
  br i1 %t44, label %bb22, label %bb23
bb22:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t50 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  store i1 %t50, ptr %l96
  br label %bb24
bb23:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb25
bb24:
  %t51 = load i1, ptr %l96, !tbaa !21
  store i1 %t51, ptr %l93, !tbaa !21
  br label %bb25
bb25:
  %t52 = load i1, ptr %l93, !tbaa !21
  br i1 %t52, label %bb26, label %bb27
bb26:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 146
  store i1 true, ptr %t55, !tbaa !21
  br label %ret
bb27:
  br label %bb28
bb28:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l3, !tbaa !29
  %t58 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t56, ptr %t57, i1 %t58)
  br label %bb29
bb29:
  br label %bb276
bb30:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t63 = load ptr, ptr %l101, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb31, label %bb32
bb31:
  %t66 = load ptr, ptr %l101, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 18}
  %t69 = icmp eq i64 %t67, 3
  store i1 %t69, ptr %l102, !tbaa !21
  br label %bb32
bb32:
  %t70 = load i1, ptr %l102, !tbaa !21
  br i1 %t70, label %bb33, label %bb34
bb33:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l4, !tbaa !29
  br label %bb39
bb34:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t78 = load ptr, ptr %l107, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb35, label %bb36
bb35:
  %t81 = load ptr, ptr %l107, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 18}
  %t84 = icmp eq i64 %t82, 4
  store i1 %t84, ptr %l108, !tbaa !21
  br label %bb36
bb36:
  %t85 = load i1, ptr %l108, !tbaa !21
  br i1 %t85, label %bb37, label %bb38
bb37:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l4, !tbaa !29
  br label %bb39
bb38:
  br label %bb45
bb39:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t96 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %t92, ptr %t93)
  store i1 %t96, ptr %l115
  br label %bb40
bb40:
  %t97 = load i1, ptr %l115, !tbaa !21
  br i1 %t97, label %bb41, label %bb42
bb41:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/scope:Scoper", ptr %t98, i32 0, i32 146
  store i1 true, ptr %t100, !tbaa !21
  br label %ret
bb42:
  br label %bb43
bb43:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l4, !tbaa !29
  %t103 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t101, ptr %t102, i1 %t103)
  br label %bb44
bb44:
  br label %bb276
bb45:
  %t107 = load ptr, ptr %l1, !tbaa !29
  store ptr %t107, ptr %l120, !tbaa !29
  store i1 false, ptr %l121, !tbaa !21
  %t108 = load ptr, ptr %l120, !tbaa !29
  %t109 = icmp ne ptr %t108, null
  br i1 %t109, label %bb46, label %bb47
bb46:
  %t111 = load ptr, ptr %l120, !tbaa !29
  %t112 = load i64, ptr %t111, !range !{i64 0, i64 18}
  %t114 = icmp eq i64 %t112, 10
  store i1 %t114, ptr %l121, !tbaa !21
  br label %bb47
bb47:
  %t115 = load i1, ptr %l121, !tbaa !21
  br i1 %t115, label %bb48, label %bb49
bb48:
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr { i64, [5 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t118, i32 0, i32 2
  %t120 = load ptr, ptr %t119
  store ptr %t120, ptr %l5, !tbaa !29
  br label %bb50
bb49:
  br label %bb58
bb50:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l5, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Slice", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t129 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %t122, ptr %t126)
  store i1 %t129, ptr %l129
  br label %bb51
bb51:
  %t130 = load i1, ptr %l129, !tbaa !21
  br i1 %t130, label %bb52, label %bb53
bb52:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/scope:Scoper", ptr %t131, i32 0, i32 146
  store i1 true, ptr %t133, !tbaa !21
  br label %ret
bb53:
  br label %bb54
bb54:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l5, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Slice", ptr %t135, i32 0, i32 0
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t139 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t134, ptr %t138, i1 %t139)
  br label %bb55
bb55:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l5, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Slice", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t143, ptr %t147, i1 %t149)
  br label %bb56
bb56:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l5, !tbaa !29
  %t156 = getelementptr %"compiler/typed:Slice", ptr %t154, i32 0, i32 2
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t153, ptr %t157, i1 %t159)
  br label %bb57
bb57:
  br label %bb276
bb58:
  %t163 = load ptr, ptr %l1, !tbaa !29
  store ptr %t163, ptr %l145, !tbaa !29
  store i1 false, ptr %l146, !tbaa !21
  %t164 = load ptr, ptr %l145, !tbaa !29
  %t165 = icmp ne ptr %t164, null
  br i1 %t165, label %bb59, label %bb60
bb59:
  %t167 = load ptr, ptr %l145, !tbaa !29
  %t168 = load i64, ptr %t167, !range !{i64 0, i64 18}
  %t170 = icmp eq i64 %t168, 5
  store i1 %t170, ptr %l146, !tbaa !21
  br label %bb60
bb60:
  %t171 = load i1, ptr %l146, !tbaa !21
  br i1 %t171, label %bb61, label %bb62
bb61:
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = getelementptr { i64, [5 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t174, i32 0, i32 2
  %t176 = load ptr, ptr %t175
  store ptr %t176, ptr %l6, !tbaa !29
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load ptr, ptr %l6, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Promote", ptr %t179, i32 0, i32 0
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t178, ptr %t182, i1 %t184)
  br label %bb64
bb64:
  br label %bb276
bb65:
  %t188 = load ptr, ptr %l1, !tbaa !29
  store ptr %t188, ptr %l156, !tbaa !29
  store i1 false, ptr %l157, !tbaa !21
  %t189 = load ptr, ptr %l156, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb66, label %bb67
bb66:
  %t192 = load ptr, ptr %l156, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 18}
  %t195 = icmp eq i64 %t193, 6
  store i1 %t195, ptr %l157, !tbaa !21
  br label %bb67
bb67:
  %t196 = load i1, ptr %l157, !tbaa !21
  br i1 %t196, label %bb68, label %bb69
bb68:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr { i64, [5 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t199, i32 0, i32 2
  %t201 = load ptr, ptr %t200
  store ptr %t201, ptr %l7, !tbaa !29
  br label %bb70
bb69:
  br label %bb104
bb70:
  %t203 = load ptr, ptr %l7, !tbaa !29
  %t205 = getelementptr %"compiler/typed:Call", ptr %t203, i32 0, i32 0
  %t206 = load ptr, ptr %t205, !tbaa !29
  store ptr %t206, ptr %l8, !tbaa !29
  %t208 = load ptr, ptr %l8, !tbaa !29
  store ptr %t208, ptr %l164, !tbaa !29
  store i1 false, ptr %l165, !tbaa !21
  %t209 = load ptr, ptr %l164, !tbaa !29
  %t210 = icmp ne ptr %t209, null
  br i1 %t210, label %bb71, label %bb72
bb71:
  %t212 = load ptr, ptr %l164, !tbaa !29
  %t213 = load i64, ptr %t212, !range !{i64 0, i64 5}
  %t215 = icmp eq i64 %t213, 2
  store i1 %t215, ptr %l165, !tbaa !21
  br label %bb72
bb72:
  %t216 = load i1, ptr %l165, !tbaa !21
  br i1 %t216, label %bb73, label %bb74
bb73:
  %t217 = load ptr, ptr %l8, !tbaa !29
  %t219 = getelementptr { i64, [3 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { ptr }, ptr %t219, i32 0, i32 0
  %t221 = load ptr, ptr %t220
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t223, ptr %t221, i1 %t226)
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb76
bb76:
  store i64 0, ptr %l10, !tbaa !24
  %t230 = load ptr, ptr %l7, !tbaa !29
  %t232 = getelementptr %"compiler/typed:Call", ptr %t230, i32 0, i32 1
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t233, 0
  store i64 %t235, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t237 = load i64, ptr %l11, !tbaa !24
  %t238 = load i64, ptr %l10, !tbaa !24
  %t241 = icmp sgt i64 %t237, %t238
  br i1 %t241, label %bb77, label %bb78
bb77:
  %t243 = load i64, ptr %l12, !tbaa !24
  %t245 = icmp sgt i64 %t243, 0
  br i1 %t245, label %bb79, label %bb80
bb78:
  store i64 0, ptr %l180, !tbaa !24
  br label %bb82
bb79:
  %t247 = load i64, ptr %l11, !tbaa !24
  %t248 = load i64, ptr %l10, !tbaa !24
  %t251 = sub i64 %t247, %t248
  %t252 = load i64, ptr %l12, !tbaa !24
  %t255 = add i64 %t251, %t252
  %t257 = sub i64 %t255, 1
  %t258 = load i64, ptr %l12, !tbaa !24
  %t261 = sdiv i64 %t257, %t258
  store i64 %t261, ptr %l183, !tbaa !24
  br label %bb81
bb80:
  store i64 0, ptr %l183, !tbaa !24
  br label %bb81
bb81:
  %t263 = load i64, ptr %l183, !tbaa !24
  store i64 %t263, ptr %l180, !tbaa !24
  br label %bb82
bb82:
  %t264 = load i64, ptr %l180, !tbaa !24
  store i64 %t264, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb83
bb83:
  %t265 = load i64, ptr %l14, !tbaa !24
  %t266 = load i64, ptr %l13, !tbaa !24
  %t269 = icmp slt i64 %t265, %t266
  %t271 = xor i1 %t269, true
  br i1 %t271, label %bb84, label %bb85
bb84:
  br label %bb103
bb85:
  br label %bb86
bb86:
  %t273 = load i64, ptr %l10, !tbaa !24
  %t274 = load i64, ptr %l14, !tbaa !24
  %t275 = load i64, ptr %l12, !tbaa !24
  %t278 = mul i64 %t274, %t275
  %t281 = add i64 %t273, %t278
  store i64 %t281, ptr %l15, !tbaa !24
  %t283 = load ptr, ptr %l7, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Call", ptr %t283, i32 0, i32 1
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  store { i64, ptr } %t286, ptr %l202, !tbaa !27
  %t287 = load i64, ptr %l15, !tbaa !24
  %t289 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr ptr, ptr %t290, i64 %t287
  %t292 = load ptr, ptr %t291, !tbaa !39
  store ptr %t292, ptr %l16, !tbaa !29
  %t294 = load i1, ptr %l2, !tbaa !21
  %t296 = xor i1 %t294, true
  br i1 %t296, label %bb87, label %bb88
bb87:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load ptr, ptr %l16, !tbaa !29
  %t302 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %t298, ptr %t299)
  store i1 %t302, ptr %l210
  br label %bb89
bb88:
  store i1 false, ptr %l207, !tbaa !21
  br label %bb90
bb89:
  %t303 = load i1, ptr %l210, !tbaa !21
  store i1 %t303, ptr %l207, !tbaa !21
  br label %bb90
bb90:
  %t304 = load i1, ptr %l207, !tbaa !21
  store i1 %t304, ptr %l17, !tbaa !21
  %t305 = load i1, ptr %l17, !tbaa !21
  br i1 %t305, label %bb91, label %bb92
bb91:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load ptr, ptr %l7, !tbaa !29
  %t309 = load i64, ptr %l15, !tbaa !24
  %t313 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %t307, ptr %t308, i64 %t309)
  store i1 %t313, ptr %l216
  br label %bb93
bb92:
  store i1 false, ptr %l212, !tbaa !21
  br label %bb94
bb93:
  %t314 = load i1, ptr %l216, !tbaa !21
  store i1 %t314, ptr %l212, !tbaa !21
  br label %bb94
bb94:
  %t315 = load i1, ptr %l212, !tbaa !21
  br i1 %t315, label %bb95, label %bb96
bb95:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/scope:Scoper", ptr %t316, i32 0, i32 146
  store i1 true, ptr %t318, !tbaa !21
  br label %bb97
bb96:
  br label %bb97
bb97:
  %t319 = load i1, ptr %l17, !tbaa !21
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb98, label %bb99
bb98:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load ptr, ptr %l16, !tbaa !29
  %t326 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t323, ptr %t324, i1 %t326)
  br label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t330 = load i64, ptr %l14, !tbaa !24
  %t332 = add i64 %t330, 1
  store i64 %t332, ptr %l14, !tbaa !24
  br label %bb83
bb103:
  br label %bb276
bb104:
  %t334 = load ptr, ptr %l1, !tbaa !29
  store ptr %t334, ptr %l226, !tbaa !29
  store i1 false, ptr %l227, !tbaa !21
  %t335 = load ptr, ptr %l226, !tbaa !29
  %t336 = icmp ne ptr %t335, null
  br i1 %t336, label %bb105, label %bb106
bb105:
  %t338 = load ptr, ptr %l226, !tbaa !29
  %t339 = load i64, ptr %t338, !range !{i64 0, i64 18}
  %t341 = icmp eq i64 %t339, 7
  store i1 %t341, ptr %l227, !tbaa !21
  br label %bb106
bb106:
  %t342 = load i1, ptr %l227, !tbaa !21
  br i1 %t342, label %bb107, label %bb108
bb107:
  %t343 = load ptr, ptr %l1, !tbaa !29
  %t345 = getelementptr { i64, [5 x i64] }, ptr %t343, i32 0, i32 1
  %t346 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t345, i32 0, i32 2
  %t347 = load ptr, ptr %t346
  store ptr %t347, ptr %l18, !tbaa !29
  br label %bb109
bb108:
  br label %bb118
bb109:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load ptr, ptr %l18, !tbaa !29
  %t352 = getelementptr %"compiler/typed:Make", ptr %t350, i32 0, i32 3
  %t353 = load ptr, ptr %t352, !tbaa !29
  %t354 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t349, ptr %t353, i1 %t354)
  br label %bb110
bb110:
  %t358 = load ptr, ptr %l18, !tbaa !29
  %t360 = getelementptr %"compiler/typed:Make", ptr %t358, i32 0, i32 2
  %t361 = load { i64, ptr }, ptr %t360, !tbaa !27
  store { i64, ptr } %t361, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t363 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t363, 0
  store i64 %t365, ptr %l21, !tbaa !24
  br label %bb111
bb111:
  %t367 = load i64, ptr %l20, !tbaa !24
  %t368 = load i64, ptr %l21, !tbaa !24
  %t371 = icmp slt i64 %t367, %t368
  %t373 = xor i1 %t371, true
  br i1 %t373, label %bb112, label %bb113
bb112:
  br label %bb117
bb113:
  br label %bb114
bb114:
  %t375 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t375, ptr %l244, !tbaa !27
  %t376 = load i64, ptr %l20, !tbaa !24
  %t378 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = getelementptr ptr, ptr %t379, i64 %t376
  %t381 = load ptr, ptr %t380, !tbaa !39
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t386 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t383, ptr %t381, i1 %t386)
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t390 = load i64, ptr %l20, !tbaa !24
  %t392 = add i64 %t390, 1
  store i64 %t392, ptr %l20, !tbaa !24
  br label %bb111
bb117:
  br label %bb276
bb118:
  %t394 = load ptr, ptr %l1, !tbaa !29
  store ptr %t394, ptr %l253, !tbaa !29
  store i1 false, ptr %l254, !tbaa !21
  %t395 = load ptr, ptr %l253, !tbaa !29
  %t396 = icmp ne ptr %t395, null
  br i1 %t396, label %bb119, label %bb120
bb119:
  %t398 = load ptr, ptr %l253, !tbaa !29
  %t399 = load i64, ptr %t398, !range !{i64 0, i64 18}
  %t401 = icmp eq i64 %t399, 8
  store i1 %t401, ptr %l254, !tbaa !21
  br label %bb120
bb120:
  %t402 = load i1, ptr %l254, !tbaa !21
  br i1 %t402, label %bb121, label %bb122
bb121:
  %t403 = load ptr, ptr %l1, !tbaa !29
  %t405 = getelementptr { i64, [5 x i64] }, ptr %t403, i32 0, i32 1
  %t406 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t405, i32 0, i32 2
  %t407 = load ptr, ptr %t406
  store ptr %t407, ptr %l23, !tbaa !29
  br label %bb123
bb122:
  br label %bb126
bb123:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load ptr, ptr %l23, !tbaa !29
  %t412 = getelementptr %"compiler/typed:Collect", ptr %t410, i32 0, i32 0
  %t413 = load ptr, ptr %t412, !tbaa !29
  %t414 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t409, ptr %t413, i1 %t414)
  br label %bb124
bb124:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t419 = load ptr, ptr %l23, !tbaa !29
  %t421 = getelementptr %"compiler/typed:Collect", ptr %t419, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !29
  %t424 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlockBy(ptr %v0, ptr %v1, ptr %t418, ptr %t422, i1 %t424)
  br label %bb125
bb125:
  br label %bb276
bb126:
  %t428 = load ptr, ptr %l1, !tbaa !29
  store ptr %t428, ptr %l268, !tbaa !29
  store i1 false, ptr %l269, !tbaa !21
  %t429 = load ptr, ptr %l268, !tbaa !29
  %t430 = icmp ne ptr %t429, null
  br i1 %t430, label %bb127, label %bb128
bb127:
  %t432 = load ptr, ptr %l268, !tbaa !29
  %t433 = load i64, ptr %t432, !range !{i64 0, i64 18}
  %t435 = icmp eq i64 %t433, 9
  store i1 %t435, ptr %l269, !tbaa !21
  br label %bb128
bb128:
  %t436 = load i1, ptr %l269, !tbaa !21
  br i1 %t436, label %bb129, label %bb130
bb129:
  %t437 = load ptr, ptr %l1, !tbaa !29
  %t439 = getelementptr { i64, [5 x i64] }, ptr %t437, i32 0, i32 1
  %t440 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t439, i32 0, i32 2
  %t441 = load i32, ptr %t440, !range !{i32 0, i32 51}
  store i32 %t441, ptr %l24
  %t443 = load ptr, ptr %l1, !tbaa !29
  %t445 = getelementptr { i64, [5 x i64] }, ptr %t443, i32 0, i32 1
  %t446 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t445, i32 0, i32 4
  %t447 = load { i64, ptr }, ptr %t446
  store { i64, ptr } %t447, ptr %l25, !tbaa !27
  br label %bb131
bb130:
  br label %bb150
bb131:
  %t449 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t449, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t451 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t451, 0
  store i64 %t453, ptr %l28, !tbaa !24
  br label %bb132
bb132:
  %t455 = load i64, ptr %l27, !tbaa !24
  %t456 = load i64, ptr %l28, !tbaa !24
  %t459 = icmp slt i64 %t455, %t456
  %t461 = xor i1 %t459, true
  br i1 %t461, label %bb133, label %bb134
bb133:
  br label %bb149
bb134:
  br label %bb135
bb135:
  %t463 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t463, ptr %l283, !tbaa !27
  %t464 = load i64, ptr %l27, !tbaa !24
  %t466 = getelementptr { i64, ptr }, ptr %l283, i32 0, i32 1
  %t467 = load ptr, ptr %t466, !tbaa !27
  %t468 = getelementptr ptr, ptr %t467, i64 %t464
  %t469 = load ptr, ptr %t468, !tbaa !39
  store ptr %t469, ptr %l29, !tbaa !29
  %t471 = load i1, ptr %l2, !tbaa !21
  %t473 = xor i1 %t471, true
  br i1 %t473, label %bb136, label %bb137
bb136:
  %t475 = load i32, ptr %l24, !range !{i32 0, i32 51}
  %t477 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t475)
  store i1 %t477, ptr %l290
  br label %bb138
bb137:
  store i1 false, ptr %l288, !tbaa !21
  br label %bb139
bb138:
  %t478 = load i1, ptr %l290, !tbaa !21
  %t479 = xor i1 %t478, true
  store i1 %t479, ptr %l288, !tbaa !21
  br label %bb139
bb139:
  %t481 = load i1, ptr %l288, !tbaa !21
  br i1 %t481, label %bb140, label %bb141
bb140:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t483 = load ptr, ptr %l29, !tbaa !29
  %t486 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %t482, ptr %t483)
  store i1 %t486, ptr %l295
  br label %bb142
bb141:
  store i1 false, ptr %l292, !tbaa !21
  br label %bb143
bb142:
  %t487 = load i1, ptr %l295, !tbaa !21
  store i1 %t487, ptr %l292, !tbaa !21
  br label %bb143
bb143:
  %t488 = load i1, ptr %l292, !tbaa !21
  br i1 %t488, label %bb144, label %bb145
bb144:
  br label %bb148
bb145:
  br label %bb146
bb146:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load ptr, ptr %l29, !tbaa !29
  %t492 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t489, ptr %t490, i1 %t492)
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t496 = load i64, ptr %l27, !tbaa !24
  %t498 = add i64 %t496, 1
  store i64 %t498, ptr %l27, !tbaa !24
  br label %bb132
bb149:
  br label %bb276
bb150:
  %t500 = load ptr, ptr %l1, !tbaa !29
  store ptr %t500, ptr %l302, !tbaa !29
  store i1 false, ptr %l303, !tbaa !21
  %t501 = load ptr, ptr %l302, !tbaa !29
  %t502 = icmp ne ptr %t501, null
  br i1 %t502, label %bb151, label %bb152
bb151:
  %t504 = load ptr, ptr %l302, !tbaa !29
  %t505 = load i64, ptr %t504, !range !{i64 0, i64 18}
  %t507 = icmp eq i64 %t505, 11
  store i1 %t507, ptr %l303, !tbaa !21
  br label %bb152
bb152:
  %t508 = load i1, ptr %l303, !tbaa !21
  br i1 %t508, label %bb153, label %bb154
bb153:
  %t509 = load ptr, ptr %l1, !tbaa !29
  %t511 = getelementptr { i64, [5 x i64] }, ptr %t509, i32 0, i32 1
  %t512 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t511, i32 0, i32 2
  %t513 = load ptr, ptr %t512
  store ptr %t513, ptr %l30, !tbaa !29
  br label %bb155
bb154:
  br label %bb159
bb155:
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load ptr, ptr %l30, !tbaa !29
  %t518 = getelementptr %"compiler/typed:Cond", ptr %t516, i32 0, i32 0
  %t519 = load ptr, ptr %t518, !tbaa !29
  %t521 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t515, ptr %t519, i1 %t521)
  br label %bb156
bb156:
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t526 = load ptr, ptr %l30, !tbaa !29
  %t528 = getelementptr %"compiler/typed:Cond", ptr %t526, i32 0, i32 1
  %t529 = load ptr, ptr %t528, !tbaa !29
  %t530 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t525, ptr %t529, i1 %t530)
  br label %bb157
bb157:
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t535 = load ptr, ptr %l30, !tbaa !29
  %t537 = getelementptr %"compiler/typed:Cond", ptr %t535, i32 0, i32 2
  %t538 = load ptr, ptr %t537, !tbaa !29
  %t540 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t534, ptr %t538, i1 %t540)
  br label %bb158
bb158:
  br label %bb276
bb159:
  %t544 = load ptr, ptr %l1, !tbaa !29
  store ptr %t544, ptr %l322, !tbaa !29
  store i1 false, ptr %l323, !tbaa !21
  %t545 = load ptr, ptr %l322, !tbaa !29
  %t546 = icmp ne ptr %t545, null
  br i1 %t546, label %bb160, label %bb161
bb160:
  %t548 = load ptr, ptr %l322, !tbaa !29
  %t549 = load i64, ptr %t548, !range !{i64 0, i64 18}
  %t551 = icmp eq i64 %t549, 12
  store i1 %t551, ptr %l323, !tbaa !21
  br label %bb161
bb161:
  %t552 = load i1, ptr %l323, !tbaa !21
  br i1 %t552, label %bb162, label %bb163
bb162:
  %t553 = load ptr, ptr %l1, !tbaa !29
  %t555 = getelementptr { i64, [5 x i64] }, ptr %t553, i32 0, i32 1
  %t556 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t555, i32 0, i32 2
  %t557 = load ptr, ptr %t556
  store ptr %t557, ptr %l31, !tbaa !29
  br label %bb164
bb163:
  br label %bb173
bb164:
  %t559 = load ptr, ptr %l31, !tbaa !29
  %t561 = getelementptr %"compiler/typed:Seq", ptr %t559, i32 0, i32 0
  %t562 = load { i64, ptr }, ptr %t561, !tbaa !27
  store { i64, ptr } %t562, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t564 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t566 = extractvalue { i64, ptr } %t564, 0
  store i64 %t566, ptr %l34, !tbaa !24
  br label %bb165
bb165:
  %t568 = load i64, ptr %l33, !tbaa !24
  %t569 = load i64, ptr %l34, !tbaa !24
  %t572 = icmp slt i64 %t568, %t569
  %t574 = xor i1 %t572, true
  br i1 %t574, label %bb166, label %bb167
bb166:
  br label %bb171
bb167:
  br label %bb168
bb168:
  %t576 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t576, ptr %l336, !tbaa !27
  %t577 = load i64, ptr %l33, !tbaa !24
  %t579 = getelementptr { i64, ptr }, ptr %l336, i32 0, i32 1
  %t580 = load ptr, ptr %t579, !tbaa !27
  %t581 = getelementptr ptr, ptr %t580, i64 %t577
  %t582 = load ptr, ptr %t581, !tbaa !39
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t587 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmtBy(ptr %v0, ptr %v1, ptr %t584, ptr %t582, i1 %t587)
  br label %bb169
bb169:
  br label %bb170
bb170:
  %t591 = load i64, ptr %l33, !tbaa !24
  %t593 = add i64 %t591, 1
  store i64 %t593, ptr %l33, !tbaa !24
  br label %bb165
bb171:
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t596 = load ptr, ptr %l31, !tbaa !29
  %t598 = getelementptr %"compiler/typed:Seq", ptr %t596, i32 0, i32 1
  %t599 = load ptr, ptr %t598, !tbaa !29
  %t600 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t595, ptr %t599, i1 %t600)
  br label %bb172
bb172:
  br label %bb276
bb173:
  %t604 = load ptr, ptr %l1, !tbaa !29
  store ptr %t604, ptr %l349, !tbaa !29
  store i1 false, ptr %l350, !tbaa !21
  %t605 = load ptr, ptr %l349, !tbaa !29
  %t606 = icmp ne ptr %t605, null
  br i1 %t606, label %bb174, label %bb175
bb174:
  %t608 = load ptr, ptr %l349, !tbaa !29
  %t609 = load i64, ptr %t608, !range !{i64 0, i64 18}
  %t611 = icmp eq i64 %t609, 13
  store i1 %t611, ptr %l350, !tbaa !21
  br label %bb175
bb175:
  %t612 = load i1, ptr %l350, !tbaa !21
  br i1 %t612, label %bb176, label %bb177
bb176:
  %t613 = load ptr, ptr %l1, !tbaa !29
  %t615 = getelementptr { i64, [5 x i64] }, ptr %t613, i32 0, i32 1
  %t616 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t615, i32 0, i32 2
  %t617 = load ptr, ptr %t616
  store ptr %t617, ptr %l36, !tbaa !29
  br label %bb178
bb177:
  br label %bb194
bb178:
  %t619 = load ptr, ptr %l36, !tbaa !29
  %t621 = getelementptr %"compiler/typed:Match", ptr %t619, i32 0, i32 0
  %t622 = load { i64, ptr }, ptr %t621, !tbaa !27
  store { i64, ptr } %t622, ptr %l37, !tbaa !27
  store i64 0, ptr %l38, !tbaa !24
  %t624 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t626 = extractvalue { i64, ptr } %t624, 0
  store i64 %t626, ptr %l39, !tbaa !24
  br label %bb179
bb179:
  %t628 = load i64, ptr %l38, !tbaa !24
  %t629 = load i64, ptr %l39, !tbaa !24
  %t632 = icmp slt i64 %t628, %t629
  %t634 = xor i1 %t632, true
  br i1 %t634, label %bb180, label %bb181
bb180:
  br label %bb185
bb181:
  br label %bb182
bb182:
  %t636 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t636, ptr %l363, !tbaa !27
  %t637 = load i64, ptr %l38, !tbaa !24
  %t639 = getelementptr { i64, ptr }, ptr %l363, i32 0, i32 1
  %t640 = load ptr, ptr %t639, !tbaa !27
  %t641 = getelementptr ptr, ptr %t640, i64 %t637
  %t642 = load ptr, ptr %t641, !tbaa !39
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t647 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmtBy(ptr %v0, ptr %v1, ptr %t644, ptr %t642, i1 %t647)
  br label %bb183
bb183:
  br label %bb184
bb184:
  %t651 = load i64, ptr %l38, !tbaa !24
  %t653 = add i64 %t651, 1
  store i64 %t653, ptr %l38, !tbaa !24
  br label %bb179
bb185:
  %t655 = load ptr, ptr %l36, !tbaa !29
  %t657 = getelementptr %"compiler/typed:Match", ptr %t655, i32 0, i32 1
  %t658 = load { i64, ptr }, ptr %t657, !tbaa !27
  store { i64, ptr } %t658, ptr %l41, !tbaa !27
  store i64 0, ptr %l42, !tbaa !24
  %t660 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t662 = extractvalue { i64, ptr } %t660, 0
  store i64 %t662, ptr %l43, !tbaa !24
  br label %bb186
bb186:
  %t664 = load i64, ptr %l42, !tbaa !24
  %t665 = load i64, ptr %l43, !tbaa !24
  %t668 = icmp slt i64 %t664, %t665
  %t670 = xor i1 %t668, true
  br i1 %t670, label %bb187, label %bb188
bb187:
  br label %bb192
bb188:
  br label %bb189
bb189:
  %t672 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t672, ptr %l380, !tbaa !27
  %t673 = load i64, ptr %l42, !tbaa !24
  %t675 = getelementptr { i64, ptr }, ptr %l380, i32 0, i32 1
  %t676 = load ptr, ptr %t675, !tbaa !27
  %t677 = getelementptr ptr, ptr %t676, i64 %t673
  %t678 = load ptr, ptr %t677, !tbaa !39
  %t680 = load ptr, ptr %l0, !tbaa !29
  %t683 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleArm(ptr %v0, ptr %v1, ptr %t680, ptr %t678, i1 %t683)
  br label %bb190
bb190:
  br label %bb191
bb191:
  %t687 = load i64, ptr %l42, !tbaa !24
  %t689 = add i64 %t687, 1
  store i64 %t689, ptr %l42, !tbaa !24
  br label %bb186
bb192:
  %t691 = load ptr, ptr %l0, !tbaa !29
  %t692 = load ptr, ptr %l36, !tbaa !29
  %t694 = getelementptr %"compiler/typed:Match", ptr %t692, i32 0, i32 2
  %t695 = load ptr, ptr %t694, !tbaa !29
  %t696 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleArm(ptr %v0, ptr %v1, ptr %t691, ptr %t695, i1 %t696)
  br label %bb193
bb193:
  br label %bb276
bb194:
  %t700 = load ptr, ptr %l1, !tbaa !29
  store ptr %t700, ptr %l393, !tbaa !29
  store i1 false, ptr %l394, !tbaa !21
  %t701 = load ptr, ptr %l393, !tbaa !29
  %t702 = icmp ne ptr %t701, null
  br i1 %t702, label %bb195, label %bb196
bb195:
  %t704 = load ptr, ptr %l393, !tbaa !29
  %t705 = load i64, ptr %t704, !range !{i64 0, i64 18}
  %t707 = icmp eq i64 %t705, 14
  store i1 %t707, ptr %l394, !tbaa !21
  br label %bb196
bb196:
  %t708 = load i1, ptr %l394, !tbaa !21
  br i1 %t708, label %bb197, label %bb198
bb197:
  %t709 = load ptr, ptr %l1, !tbaa !29
  %t711 = getelementptr { i64, [5 x i64] }, ptr %t709, i32 0, i32 1
  %t712 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t711, i32 0, i32 2
  %t713 = load ptr, ptr %t712
  store ptr %t713, ptr %l45, !tbaa !29
  br label %bb199
bb198:
  br label %bb215
bb199:
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t716 = load ptr, ptr %l45, !tbaa !29
  %t718 = getelementptr %"compiler/typed:Try", ptr %t716, i32 0, i32 0
  %t719 = load ptr, ptr %t718, !tbaa !29
  %t720 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t715, ptr %t719, i1 %t720)
  br label %bb200
bb200:
  %t724 = load ptr, ptr %l45, !tbaa !29
  %t726 = getelementptr %"compiler/typed:Try", ptr %t724, i32 0, i32 1
  %t727 = load { i64, ptr }, ptr %t726, !tbaa !27
  store { i64, ptr } %t727, ptr %l46, !tbaa !27
  store i64 0, ptr %l47, !tbaa !24
  %t729 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t731 = extractvalue { i64, ptr } %t729, 0
  store i64 %t731, ptr %l48, !tbaa !24
  br label %bb201
bb201:
  %t733 = load i64, ptr %l47, !tbaa !24
  %t734 = load i64, ptr %l48, !tbaa !24
  %t737 = icmp slt i64 %t733, %t734
  %t739 = xor i1 %t737, true
  br i1 %t739, label %bb202, label %bb203
bb202:
  br label %bb214
bb203:
  br label %bb204
bb204:
  %t741 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t741, ptr %l411, !tbaa !27
  %t742 = load i64, ptr %l47, !tbaa !24
  %t744 = getelementptr { i64, ptr }, ptr %l411, i32 0, i32 1
  %t745 = load ptr, ptr %t744, !tbaa !27
  %t746 = getelementptr ptr, ptr %t745, i64 %t742
  %t747 = load ptr, ptr %t746, !tbaa !39
  store ptr %t747, ptr %l49, !tbaa !29
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t750 = load ptr, ptr %l49, !tbaa !29
  %t752 = getelementptr %"compiler/typed:Clause", ptr %t750, i32 0, i32 3
  %t753 = load ptr, ptr %t752, !tbaa !29
  %t754 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlockBy(ptr %v0, ptr %v1, ptr %t749, ptr %t753, i1 %t754)
  br label %bb205
bb205:
  %t758 = load ptr, ptr %l49, !tbaa !29
  %t760 = getelementptr %"compiler/typed:Clause", ptr %t758, i32 0, i32 4
  %t761 = load { i64, ptr }, ptr %t760, !tbaa !27
  store { i64, ptr } %t761, ptr %l50, !tbaa !27
  store i64 0, ptr %l51, !tbaa !24
  %t763 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t765 = extractvalue { i64, ptr } %t763, 0
  store i64 %t765, ptr %l52, !tbaa !24
  br label %bb206
bb206:
  %t767 = load i64, ptr %l51, !tbaa !24
  %t768 = load i64, ptr %l52, !tbaa !24
  %t771 = icmp slt i64 %t767, %t768
  %t773 = xor i1 %t771, true
  br i1 %t773, label %bb207, label %bb208
bb207:
  br label %bb212
bb208:
  br label %bb209
bb209:
  %t775 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t775, ptr %l426, !tbaa !27
  %t776 = load i64, ptr %l51, !tbaa !24
  %t778 = getelementptr { i64, ptr }, ptr %l426, i32 0, i32 1
  %t779 = load ptr, ptr %t778, !tbaa !27
  %t780 = getelementptr ptr, ptr %t779, i64 %t776
  %t781 = load ptr, ptr %t780, !tbaa !39
  %t783 = load ptr, ptr %l0, !tbaa !29
  %t786 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t783, ptr %t781, i1 %t786)
  br label %bb210
bb210:
  br label %bb211
bb211:
  %t790 = load i64, ptr %l51, !tbaa !24
  %t792 = add i64 %t790, 1
  store i64 %t792, ptr %l51, !tbaa !24
  br label %bb206
bb212:
  br label %bb213
bb213:
  %t794 = load i64, ptr %l47, !tbaa !24
  %t796 = add i64 %t794, 1
  store i64 %t796, ptr %l47, !tbaa !24
  br label %bb201
bb214:
  br label %bb276
bb215:
  %t798 = load ptr, ptr %l1, !tbaa !29
  store ptr %t798, ptr %l437, !tbaa !29
  store i1 false, ptr %l438, !tbaa !21
  %t799 = load ptr, ptr %l437, !tbaa !29
  %t800 = icmp ne ptr %t799, null
  br i1 %t800, label %bb216, label %bb217
bb216:
  %t802 = load ptr, ptr %l437, !tbaa !29
  %t803 = load i64, ptr %t802, !range !{i64 0, i64 18}
  %t805 = icmp eq i64 %t803, 15
  store i1 %t805, ptr %l438, !tbaa !21
  br label %bb217
bb217:
  %t806 = load i1, ptr %l438, !tbaa !21
  br i1 %t806, label %bb218, label %bb219
bb218:
  %t807 = load ptr, ptr %l1, !tbaa !29
  %t809 = getelementptr { i64, [5 x i64] }, ptr %t807, i32 0, i32 1
  %t810 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t809, i32 0, i32 2
  %t811 = load ptr, ptr %t810
  store ptr %t811, ptr %l54, !tbaa !29
  br label %bb220
bb219:
  br label %bb239
bb220:
  %t813 = load ptr, ptr %l54, !tbaa !29
  store ptr %t813, ptr %l443, !tbaa !29
  store i1 false, ptr %l444, !tbaa !21
  %t814 = load ptr, ptr %l443, !tbaa !29
  %t815 = icmp ne ptr %t814, null
  br i1 %t815, label %bb221, label %bb222
bb221:
  %t817 = load ptr, ptr %l443, !tbaa !29
  %t818 = load i64, ptr %t817, !range !{i64 0, i64 3}
  %t820 = icmp eq i64 %t818, 1
  store i1 %t820, ptr %l444, !tbaa !21
  br label %bb222
bb222:
  %t821 = load i1, ptr %l444, !tbaa !21
  br i1 %t821, label %bb223, label %bb224
bb223:
  %t822 = load ptr, ptr %l54, !tbaa !29
  %t824 = getelementptr { i64, [4 x i64] }, ptr %t822, i32 0, i32 1
  %t825 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t824, i32 0, i32 0
  %t826 = load i32, ptr %t825
  store i32 %t826, ptr %l55, !tbaa !23
  %t828 = load ptr, ptr %l54, !tbaa !29
  %t830 = getelementptr { i64, [4 x i64] }, ptr %t828, i32 0, i32 1
  %t831 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t830, i32 0, i32 1
  %t832 = load { i64, ptr }, ptr %t831
  %t834 = load ptr, ptr %l54, !tbaa !29
  %t836 = getelementptr { i64, [4 x i64] }, ptr %t834, i32 0, i32 1
  %t837 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t836, i32 0, i32 2
  %t838 = load i32, ptr %t837
  store i32 %t838, ptr %l57, !tbaa !23
  store { i64, ptr } %t832, ptr %l58, !tbaa !27
  store i64 0, ptr %l59, !tbaa !24
  %t842 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t844 = extractvalue { i64, ptr } %t842, 0
  store i64 %t844, ptr %l60, !tbaa !24
  br label %bb225
bb224:
  br label %bb232
bb225:
  %t846 = load i64, ptr %l59, !tbaa !24
  %t847 = load i64, ptr %l60, !tbaa !24
  %t850 = icmp slt i64 %t846, %t847
  %t852 = xor i1 %t850, true
  br i1 %t852, label %bb226, label %bb227
bb226:
  br label %bb231
bb227:
  br label %bb228
bb228:
  %t854 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t854, ptr %l460, !tbaa !27
  %t855 = load i64, ptr %l59, !tbaa !24
  %t857 = getelementptr { i64, ptr }, ptr %l460, i32 0, i32 1
  %t858 = load ptr, ptr %t857, !tbaa !27
  %t859 = getelementptr ptr, ptr %t858, i64 %t855
  %t860 = load ptr, ptr %t859, !tbaa !39
  %t862 = load ptr, ptr %l0, !tbaa !29
  %t865 = getelementptr %"compiler/typed:Capture", ptr %t860, i32 0, i32 1
  %t866 = load ptr, ptr %t865, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t862, ptr %t866, i1 true)
  br label %bb229
bb229:
  br label %bb230
bb230:
  %t870 = load i64, ptr %l59, !tbaa !24
  %t872 = add i64 %t870, 1
  store i64 %t872, ptr %l59, !tbaa !24
  br label %bb225
bb231:
  br label %bb232
bb232:
  %t874 = load ptr, ptr %l54, !tbaa !29
  store ptr %t874, ptr %l469, !tbaa !29
  store i1 false, ptr %l470, !tbaa !21
  %t875 = load ptr, ptr %l469, !tbaa !29
  %t876 = icmp ne ptr %t875, null
  br i1 %t876, label %bb233, label %bb234
bb233:
  %t878 = load ptr, ptr %l469, !tbaa !29
  %t879 = load i64, ptr %t878, !range !{i64 0, i64 3}
  %t881 = icmp eq i64 %t879, 2
  store i1 %t881, ptr %l470, !tbaa !21
  br label %bb234
bb234:
  %t882 = load i1, ptr %l470, !tbaa !21
  br i1 %t882, label %bb235, label %bb236
bb235:
  %t883 = load ptr, ptr %l54, !tbaa !29
  %t885 = getelementptr { i64, [4 x i64] }, ptr %t883, i32 0, i32 1
  %t886 = getelementptr { i32, ptr, i32 }, ptr %t885, i32 0, i32 0
  %t887 = load i32, ptr %t886
  store i32 %t887, ptr %l62, !tbaa !23
  %t889 = load ptr, ptr %l54, !tbaa !29
  %t891 = getelementptr { i64, [4 x i64] }, ptr %t889, i32 0, i32 1
  %t892 = getelementptr { i32, ptr, i32 }, ptr %t891, i32 0, i32 1
  %t893 = load ptr, ptr %t892
  %t895 = load ptr, ptr %l54, !tbaa !29
  %t897 = getelementptr { i64, [4 x i64] }, ptr %t895, i32 0, i32 1
  %t898 = getelementptr { i32, ptr, i32 }, ptr %t897, i32 0, i32 2
  %t899 = load i32, ptr %t898
  store i32 %t899, ptr %l64, !tbaa !23
  %t901 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t901, ptr %t893, i1 true)
  br label %bb237
bb236:
  br label %bb238
bb237:
  br label %bb238
bb238:
  br label %bb276
bb239:
  %t906 = load ptr, ptr %l1, !tbaa !29
  store ptr %t906, ptr %l482, !tbaa !29
  store i1 false, ptr %l483, !tbaa !21
  %t907 = load ptr, ptr %l482, !tbaa !29
  %t908 = icmp ne ptr %t907, null
  br i1 %t908, label %bb240, label %bb241
bb240:
  %t910 = load ptr, ptr %l482, !tbaa !29
  %t911 = load i64, ptr %t910, !range !{i64 0, i64 18}
  %t913 = icmp eq i64 %t911, 16
  store i1 %t913, ptr %l483, !tbaa !21
  br label %bb241
bb241:
  %t914 = load i1, ptr %l483, !tbaa !21
  br i1 %t914, label %bb242, label %bb243
bb242:
  %t915 = load ptr, ptr %l1, !tbaa !29
  %t917 = getelementptr { i64, [5 x i64] }, ptr %t915, i32 0, i32 1
  %t918 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t917, i32 0, i32 2
  %t919 = load ptr, ptr %t918
  store ptr %t919, ptr %l65, !tbaa !29
  br label %bb244
bb243:
  br label %bb264
bb244:
  %t921 = load ptr, ptr %l65, !tbaa !29
  %t923 = getelementptr %"compiler/typed:Text", ptr %t921, i32 0, i32 0
  %t924 = load { i64, ptr }, ptr %t923, !tbaa !27
  store { i64, ptr } %t924, ptr %l66, !tbaa !27
  store i64 0, ptr %l67, !tbaa !24
  %t926 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t928 = extractvalue { i64, ptr } %t926, 0
  store i64 %t928, ptr %l68, !tbaa !24
  br label %bb245
bb245:
  %t930 = load i64, ptr %l67, !tbaa !24
  %t931 = load i64, ptr %l68, !tbaa !24
  %t934 = icmp slt i64 %t930, %t931
  %t936 = xor i1 %t934, true
  br i1 %t936, label %bb246, label %bb247
bb246:
  br label %bb263
bb247:
  br label %bb248
bb248:
  %t938 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t938, ptr %l496, !tbaa !27
  %t939 = load i64, ptr %l67, !tbaa !24
  %t941 = getelementptr { i64, ptr }, ptr %l496, i32 0, i32 1
  %t942 = load ptr, ptr %t941, !tbaa !27
  %t943 = getelementptr ptr, ptr %t942, i64 %t939
  %t944 = load ptr, ptr %t943, !tbaa !39
  store ptr %t944, ptr %l69, !tbaa !29
  %t946 = load ptr, ptr %l69, !tbaa !29
  store ptr %t946, ptr %l499, !tbaa !29
  store i1 false, ptr %l500, !tbaa !21
  %t947 = load ptr, ptr %l499, !tbaa !29
  %t948 = icmp ne ptr %t947, null
  br i1 %t948, label %bb249, label %bb250
bb249:
  %t950 = load ptr, ptr %l499, !tbaa !29
  %t951 = load i64, ptr %t950, !range !{i64 0, i64 2}
  %t953 = icmp eq i64 %t951, 1
  store i1 %t953, ptr %l500, !tbaa !21
  br label %bb250
bb250:
  %t954 = load i1, ptr %l500, !tbaa !21
  br i1 %t954, label %bb251, label %bb252
bb251:
  %t955 = load ptr, ptr %l69, !tbaa !29
  %t957 = getelementptr { i64, [2 x i64] }, ptr %t955, i32 0, i32 1
  %t958 = getelementptr { ptr }, ptr %t957, i32 0, i32 0
  %t959 = load ptr, ptr %t958
  store ptr %t959, ptr %l70, !tbaa !29
  %t961 = load i1, ptr %l2, !tbaa !21
  br i1 %t961, label %bb253, label %bb254
bb252:
  store i1 false, ptr %l503, !tbaa !21
  br label %bb257
bb253:
  store i1 true, ptr %l507, !tbaa !21
  br label %bb256
bb254:
  %t963 = load ptr, ptr %l0, !tbaa !29
  %t964 = load ptr, ptr %l70, !tbaa !29
  %t967 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %t963, ptr %t964)
  store i1 %t967, ptr %l510
  br label %bb255
bb255:
  %t968 = load i1, ptr %l510, !tbaa !21
  %t969 = xor i1 %t968, true
  store i1 %t969, ptr %l507, !tbaa !21
  br label %bb256
bb256:
  %t971 = load i1, ptr %l507, !tbaa !21
  store i1 %t971, ptr %l503, !tbaa !21
  br label %bb257
bb257:
  %t972 = load i1, ptr %l503, !tbaa !21
  br i1 %t972, label %bb258, label %bb259
bb258:
  %t973 = load ptr, ptr %l69, !tbaa !29
  %t975 = getelementptr { i64, [2 x i64] }, ptr %t973, i32 0, i32 1
  %t976 = getelementptr { ptr }, ptr %t975, i32 0, i32 0
  %t977 = load ptr, ptr %t976
  %t979 = load ptr, ptr %l0, !tbaa !29
  %t982 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t979, ptr %t977, i1 %t982)
  br label %bb260
bb259:
  br label %bb261
bb260:
  br label %bb261
bb261:
  br label %bb262
bb262:
  %t986 = load i64, ptr %l67, !tbaa !24
  %t988 = add i64 %t986, 1
  store i64 %t988, ptr %l67, !tbaa !24
  br label %bb245
bb263:
  br label %bb276
bb264:
  %t990 = load ptr, ptr %l1, !tbaa !29
  store ptr %t990, ptr %l520, !tbaa !29
  store i1 false, ptr %l521, !tbaa !21
  %t991 = load ptr, ptr %l520, !tbaa !29
  %t992 = icmp ne ptr %t991, null
  br i1 %t992, label %bb265, label %bb266
bb265:
  %t994 = load ptr, ptr %l520, !tbaa !29
  %t995 = load i64, ptr %t994, !range !{i64 0, i64 18}
  %t997 = icmp eq i64 %t995, 17
  store i1 %t997, ptr %l521, !tbaa !21
  br label %bb266
bb266:
  %t998 = load i1, ptr %l521, !tbaa !21
  br i1 %t998, label %bb267, label %bb268
bb267:
  %t999 = load ptr, ptr %l1, !tbaa !29
  %t1001 = getelementptr { i64, [5 x i64] }, ptr %t999, i32 0, i32 1
  %t1002 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t1001, i32 0, i32 2
  %t1003 = load ptr, ptr %t1002
  store ptr %t1003, ptr %l72, !tbaa !29
  br label %bb269
bb268:
  br label %bb271
bb269:
  %t1005 = load ptr, ptr %l0, !tbaa !29
  %t1006 = load ptr, ptr %l72, !tbaa !29
  %t1008 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t1005, ptr %t1006, i1 %t1008)
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
  %t1012 = load ptr, ptr %l0, !tbaa !29
  %t1014 = getelementptr %"compiler/scope:Scoper", ptr %t1012, i32 0, i32 146
  store i1 true, ptr %t1014, !tbaa !21
  br label %bb276
bb275:
  call void @__olang_check_failed(ptr @olang_loc_df5619edc5954020_95eed2e83037cdb4)
  unreachable
bb276:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmtBy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictStmt(ptr %v0, ptr %v1, ptr %t3, ptr %t4)
  br label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
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
  %t7 = getelementptr %"compiler/typed:Block", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
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
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictStmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca i1
  %l126 = alloca ptr
  %l127 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l153 = alloca { i64, ptr }
  %l161 = alloca ptr
  %l162 = alloca i1
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
  store i1 true, ptr %l20, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 146
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l20, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l20, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t12 = load ptr, ptr %l23, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l23, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 17}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l24, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l2, !tbaa !29
  br label %bb19
bb10:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t27 = load ptr, ptr %l29, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t30 = load ptr, ptr %l29, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 17}
  %t33 = icmp eq i64 %t31, 2
  store i1 %t33, ptr %l30, !tbaa !21
  br label %bb12
bb12:
  %t34 = load i1, ptr %l30, !tbaa !21
  br i1 %t34, label %bb13, label %bb14
bb13:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [3 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", ptr }, ptr %t37, i32 0, i32 1
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l2, !tbaa !29
  br label %bb19
bb14:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t42 = load ptr, ptr %l35, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb15, label %bb16
bb15:
  %t45 = load ptr, ptr %l35, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 17}
  %t48 = icmp eq i64 %t46, 15
  store i1 %t48, ptr %l36, !tbaa !21
  br label %bb16
bb16:
  %t49 = load i1, ptr %l36, !tbaa !21
  br i1 %t49, label %bb17, label %bb18
bb17:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [3 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", ptr }, ptr %t52, i32 0, i32 1
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l2, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t56, ptr %t57, i1 true)
  br label %bb20
bb20:
  br label %bb106
bb21:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t62 = load ptr, ptr %l44, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb22, label %bb23
bb22:
  %t65 = load ptr, ptr %l44, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 17}
  %t68 = icmp eq i64 %t66, 1
  store i1 %t68, ptr %l45, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l45, !tbaa !21
  br i1 %t69, label %bb24, label %bb25
bb24:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t72, i32 0, i32 1
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l3, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [3 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l4, !tbaa !29
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t82, ptr %t83, i1 true)
  br label %bb27
bb27:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t86, ptr %t87, i1 true)
  br label %bb28
bb28:
  br label %bb106
bb29:
  %t91 = load ptr, ptr %l1, !tbaa !29
  store ptr %t91, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t92 = load ptr, ptr %l57, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb30, label %bb31
bb30:
  %t95 = load ptr, ptr %l57, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 17}
  %t98 = icmp eq i64 %t96, 3
  store i1 %t98, ptr %l58, !tbaa !21
  br label %bb31
bb31:
  %t99 = load i1, ptr %l58, !tbaa !21
  br i1 %t99, label %bb32, label %bb33
bb32:
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr { i64, [3 x i64] }, ptr %t100, i32 0, i32 1
  %t103 = getelementptr { %"compiler/source:Span", ptr }, ptr %t102, i32 0, i32 1
  %t104 = load ptr, ptr %t103
  store ptr %t104, ptr %l5, !tbaa !29
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t109 = getelementptr %"compiler/typed:If", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t106, ptr %t110, i1 true)
  br label %bb35
bb35:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr %"compiler/typed:If", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t114, ptr %t118)
  br label %bb36
bb36:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l5, !tbaa !29
  %t125 = getelementptr %"compiler/typed:If", ptr %t123, i32 0, i32 2
  %t126 = load ptr, ptr %t125, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t122, ptr %t126)
  br label %bb37
bb37:
  br label %bb106
bb38:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t130 = load ptr, ptr %l74, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb39, label %bb40
bb39:
  %t133 = load ptr, ptr %l74, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 17}
  %t136 = icmp eq i64 %t134, 4
  store i1 %t136, ptr %l75, !tbaa !21
  br label %bb40
bb40:
  %t137 = load i1, ptr %l75, !tbaa !21
  br i1 %t137, label %bb41, label %bb42
bb41:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [3 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t140, i32 0, i32 1
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l6, !tbaa !29
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [3 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t146, i32 0, i32 2
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l7, !tbaa !29
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t150, ptr %t151)
  br label %bb44
bb44:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t155, ptr %t156)
  br label %bb45
bb45:
  br label %bb106
bb46:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t160 = load ptr, ptr %l87, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb47, label %bb48
bb47:
  %t163 = load ptr, ptr %l87, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 17}
  %t166 = icmp eq i64 %t164, 6
  store i1 %t166, ptr %l88, !tbaa !21
  br label %bb48
bb48:
  %t167 = load i1, ptr %l88, !tbaa !21
  br i1 %t167, label %bb49, label %bb50
bb49:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [3 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", ptr }, ptr %t170, i32 0, i32 1
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l8, !tbaa !29
  br label %bb59
bb50:
  %t174 = load ptr, ptr %l1, !tbaa !29
  store ptr %t174, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t175 = load ptr, ptr %l93, !tbaa !29
  %t176 = icmp ne ptr %t175, null
  br i1 %t176, label %bb51, label %bb52
bb51:
  %t178 = load ptr, ptr %l93, !tbaa !29
  %t179 = load i64, ptr %t178, !range !{i64 0, i64 17}
  %t181 = icmp eq i64 %t179, 9
  store i1 %t181, ptr %l94, !tbaa !21
  br label %bb52
bb52:
  %t182 = load i1, ptr %l94, !tbaa !21
  br i1 %t182, label %bb53, label %bb54
bb53:
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr { i64, [3 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t185, i32 0, i32 2
  %t187 = load ptr, ptr %t186
  store ptr %t187, ptr %l8, !tbaa !29
  br label %bb59
bb54:
  %t189 = load ptr, ptr %l1, !tbaa !29
  store ptr %t189, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t190 = load ptr, ptr %l99, !tbaa !29
  %t191 = icmp ne ptr %t190, null
  br i1 %t191, label %bb55, label %bb56
bb55:
  %t193 = load ptr, ptr %l99, !tbaa !29
  %t194 = load i64, ptr %t193, !range !{i64 0, i64 17}
  %t196 = icmp eq i64 %t194, 16
  store i1 %t196, ptr %l100, !tbaa !21
  br label %bb56
bb56:
  %t197 = load i1, ptr %l100, !tbaa !21
  br i1 %t197, label %bb57, label %bb58
bb57:
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t200 = getelementptr { i64, [3 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", ptr }, ptr %t200, i32 0, i32 1
  %t202 = load ptr, ptr %t201
  store ptr %t202, ptr %l8, !tbaa !29
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t204, ptr %t205, i1 true)
  br label %bb60
bb60:
  br label %bb106
bb61:
  %t208 = load ptr, ptr %l1, !tbaa !29
  store ptr %t208, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t209 = load ptr, ptr %l107, !tbaa !29
  %t210 = icmp ne ptr %t209, null
  br i1 %t210, label %bb62, label %bb63
bb62:
  %t212 = load ptr, ptr %l107, !tbaa !29
  %t213 = load i64, ptr %t212, !range !{i64 0, i64 17}
  %t215 = icmp eq i64 %t213, 10
  store i1 %t215, ptr %l108, !tbaa !21
  br label %bb63
bb63:
  %t216 = load i1, ptr %l108, !tbaa !21
  br i1 %t216, label %bb64, label %bb65
bb64:
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr { i64, [3 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t219, i32 0, i32 1
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l9, !tbaa !29
  %t223 = load ptr, ptr %l1, !tbaa !29
  %t225 = getelementptr { i64, [3 x i64] }, ptr %t223, i32 0, i32 1
  %t226 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t225, i32 0, i32 2
  %t227 = load ptr, ptr %t226
  store ptr %t227, ptr %l10, !tbaa !29
  br label %bb66
bb65:
  br label %bb69
bb66:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t229, ptr %t230, i1 true)
  br label %bb67
bb67:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t234, ptr %t235, i1 true)
  br label %bb68
bb68:
  br label %bb106
bb69:
  %t238 = load ptr, ptr %l1, !tbaa !29
  store ptr %t238, ptr %l120, !tbaa !29
  store i1 false, ptr %l121, !tbaa !21
  %t239 = load ptr, ptr %l120, !tbaa !29
  %t240 = icmp ne ptr %t239, null
  br i1 %t240, label %bb70, label %bb71
bb70:
  %t242 = load ptr, ptr %l120, !tbaa !29
  %t243 = load i64, ptr %t242, !range !{i64 0, i64 17}
  %t245 = icmp eq i64 %t243, 11
  store i1 %t245, ptr %l121, !tbaa !21
  br label %bb71
bb71:
  %t246 = load i1, ptr %l121, !tbaa !21
  br i1 %t246, label %bb72, label %bb73
bb72:
  %t247 = load ptr, ptr %l1, !tbaa !29
  %t249 = getelementptr { i64, [3 x i64] }, ptr %t247, i32 0, i32 1
  %t250 = getelementptr { %"compiler/source:Span", ptr }, ptr %t249, i32 0, i32 1
  %t251 = load ptr, ptr %t250
  store ptr %t251, ptr %l11, !tbaa !29
  br label %bb78
bb73:
  %t253 = load ptr, ptr %l1, !tbaa !29
  store ptr %t253, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t254 = load ptr, ptr %l126, !tbaa !29
  %t255 = icmp ne ptr %t254, null
  br i1 %t255, label %bb74, label %bb75
bb74:
  %t257 = load ptr, ptr %l126, !tbaa !29
  %t258 = load i64, ptr %t257, !range !{i64 0, i64 17}
  %t260 = icmp eq i64 %t258, 12
  store i1 %t260, ptr %l127, !tbaa !21
  br label %bb75
bb75:
  %t261 = load i1, ptr %l127, !tbaa !21
  br i1 %t261, label %bb76, label %bb77
bb76:
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr { i64, [3 x i64] }, ptr %t262, i32 0, i32 1
  %t265 = getelementptr { %"compiler/source:Span", ptr }, ptr %t264, i32 0, i32 1
  %t266 = load ptr, ptr %t265
  store ptr %t266, ptr %l11, !tbaa !29
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t268, ptr %t269)
  br label %bb79
bb79:
  br label %bb106
bb80:
  %t273 = load ptr, ptr %l1, !tbaa !29
  store ptr %t273, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t274 = load ptr, ptr %l135, !tbaa !29
  %t275 = icmp ne ptr %t274, null
  br i1 %t275, label %bb81, label %bb82
bb81:
  %t277 = load ptr, ptr %l135, !tbaa !29
  %t278 = load i64, ptr %t277, !range !{i64 0, i64 17}
  %t280 = icmp eq i64 %t278, 13
  store i1 %t280, ptr %l136, !tbaa !21
  br label %bb82
bb82:
  %t281 = load i1, ptr %l136, !tbaa !21
  br i1 %t281, label %bb83, label %bb84
bb83:
  %t282 = load ptr, ptr %l1, !tbaa !29
  %t284 = getelementptr { i64, [3 x i64] }, ptr %t282, i32 0, i32 1
  %t285 = getelementptr { %"compiler/source:Span", ptr }, ptr %t284, i32 0, i32 1
  %t286 = load ptr, ptr %t285
  store ptr %t286, ptr %l12, !tbaa !29
  br label %bb85
bb84:
  br label %bb94
bb85:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load ptr, ptr %l12, !tbaa !29
  %t291 = getelementptr %"compiler/typed:Join", ptr %t289, i32 0, i32 0
  %t292 = load ptr, ptr %t291, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t288, ptr %t292)
  br label %bb86
bb86:
  %t296 = load ptr, ptr %l12, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Join", ptr %t296, i32 0, i32 2
  %t299 = load { i64, ptr }, ptr %t298, !tbaa !27
  store { i64, ptr } %t299, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t301 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t301, 0
  store i64 %t303, ptr %l15, !tbaa !24
  br label %bb87
bb87:
  %t305 = load i64, ptr %l14, !tbaa !24
  %t306 = load i64, ptr %l15, !tbaa !24
  %t309 = icmp slt i64 %t305, %t306
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb88, label %bb89
bb88:
  br label %bb93
bb89:
  br label %bb90
bb90:
  %t313 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t313, ptr %l153, !tbaa !27
  %t314 = load i64, ptr %l14, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr ptr, ptr %t317, i64 %t314
  %t319 = load ptr, ptr %t318, !tbaa !39
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/typed:Clause", ptr %t319, i32 0, i32 3
  %t325 = load ptr, ptr %t324, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t321, ptr %t325)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t328 = load i64, ptr %l14, !tbaa !24
  %t330 = add i64 %t328, 1
  store i64 %t330, ptr %l14, !tbaa !24
  br label %bb87
bb93:
  br label %bb106
bb94:
  %t332 = load ptr, ptr %l1, !tbaa !29
  store ptr %t332, ptr %l161, !tbaa !29
  store i1 false, ptr %l162, !tbaa !21
  %t333 = load ptr, ptr %l161, !tbaa !29
  %t334 = icmp ne ptr %t333, null
  br i1 %t334, label %bb95, label %bb96
bb95:
  %t336 = load ptr, ptr %l161, !tbaa !29
  %t337 = load i64, ptr %t336, !range !{i64 0, i64 17}
  %t339 = icmp eq i64 %t337, 14
  store i1 %t339, ptr %l162, !tbaa !21
  br label %bb96
bb96:
  %t340 = load i1, ptr %l162, !tbaa !21
  br i1 %t340, label %bb97, label %bb98
bb97:
  %t341 = load ptr, ptr %l1, !tbaa !29
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t341, i32 0, i32 1
  %t344 = getelementptr { %"compiler/source:Span", ptr }, ptr %t343, i32 0, i32 1
  %t345 = load ptr, ptr %t344
  store ptr %t345, ptr %l17, !tbaa !29
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load ptr, ptr %l17, !tbaa !29
  %t350 = getelementptr %"compiler/typed:Spawn", ptr %t348, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t347, ptr %t351, i1 true)
  br label %bb100
bb100:
  br label %bb106
bb101:
  br i1 true, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_check_failed(ptr @olang_loc_ae81d4d244f6a670_8f3729da339b0a94)
  unreachable
bb106:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorageTerm(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t12 = alloca { i64, [2 x i64] }, align 8
  %t19 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 43
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 43
  %t11 = load i64, ptr %t10, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [2 x i64] }, ptr %t12, i32 0, i32 0
  store i64 2, ptr %t13
  %t15 = insertvalue { i64 } undef, i64 %t11, 0
  %t16 = getelementptr { i64, [2 x i64] }, ptr %t12, i32 0, i32 1
  store { i64 } %t15, ptr %t16
  %t17 = load { i64, [2 x i64] }, ptr %t12
  store { i64, [2 x i64] } %t17, ptr %l4
  br label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t19, i32 0, i32 0
  store i64 3, ptr %t20
  %t21 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t21, ptr %l4
  br label %bb3
bb3:
  %t23 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estrReceiver(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/scope:rel"
  %l4 = alloca i1
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"compiler/scope:rel"
  %l29 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l40 = alloca { i64, [2 x i64] }
  %l42 = alloca { i64, [2 x i64] }
  %l44 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca %"compiler/diagmsg:Msg"
  %l64 = alloca i64
  %l69 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i64
  %l97 = alloca i1
  %l99 = alloca i1
  %l103 = alloca i1
  %l105 = alloca ptr
  %l109 = alloca %"compiler/source:Span"
  %l110 = alloca %"compiler/diagmsg:Msg"
  %l111 = alloca i64
  %l115 = alloca i64
  %l124 = alloca i1
  %l128 = alloca %"compiler/source:Span"
  %l129 = alloca i32
  %l133 = alloca %"compiler/source:Span"
  %l136 = alloca ptr
  %l137 = alloca i64
  %l141 = alloca i64
  %l145 = alloca %"compiler/source:Span"
  %l146 = alloca %"compiler/diagmsg:Msg"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 39
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l17, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l19
  br label %bb2
bb2:
  %t9 = load i64, ptr %l17, !tbaa !24
  %t10 = load i64, ptr %l19, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb39
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/scope:rel" %t19, ptr %l24
  br label %bb6
bb6:
  %t20 = load %"compiler/scope:rel", ptr %l24
  store %"compiler/scope:rel" %t20, ptr %l3
  store i1 false, ptr %l4, !tbaa !21
  %t21 = getelementptr %"compiler/scope:rel", ptr %l3, i32 0, i32 1
  %t22 = load { i64, [2 x i64] }, ptr %t21
  store { i64, [2 x i64] } %t22, ptr %l5
  %t24 = load { i64, [2 x i64] }, ptr %l5
  %t26 = extractvalue { i64, [2 x i64] } %t24, 0
  %t27 = icmp eq i64 %t26, 2
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t30 = getelementptr { i64 }, ptr %t29, i32 0, i32 0
  %t31 = load i64, ptr %t30
  store i64 %t31, ptr %l6, !tbaa !24
  br label %bb9
bb8:
  br label %bb19
bb9:
  %t33 = load i64, ptr %l6, !tbaa !24
  store i64 %t33, ptr %l29, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 74
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l32
  br label %bb10
bb10:
  %t39 = load i64, ptr %l29, !tbaa !24
  %t40 = load i64, ptr %l32, !tbaa !24
  %t41 = icmp slt i64 %t39, %t40
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 74
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t45, i64 %t46)
  store i1 %t49, ptr %l38
  br label %bb13
bb12:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb14
bb13:
  %t50 = load i1, ptr %l38, !tbaa !21
  store i1 %t50, ptr %l34, !tbaa !21
  br label %bb14
bb14:
  %t51 = load i1, ptr %l34, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t52 = getelementptr %"compiler/scope:rel", ptr %l3, i32 0, i32 0
  %t53 = load { i64, [2 x i64] }, ptr %t52
  store { i64, [2 x i64] } %t53, ptr %l40
  %t54 = getelementptr %"compiler/scope:rel", ptr %l3, i32 0, i32 1
  %t55 = load { i64, [2 x i64] }, ptr %t54
  store { i64, [2 x i64] } %t55, ptr %l42
  %t58 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l40, ptr %l42)
  store i1 %t58, ptr %l44
  br label %bb17
bb16:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb18
bb17:
  %t59 = load i1, ptr %l44, !tbaa !21
  %t60 = xor i1 %t59, true
  store i1 %t60, ptr %l39, !tbaa !21
  br label %bb18
bb18:
  %t62 = load i1, ptr %l39, !tbaa !21
  store i1 %t62, ptr %l4, !tbaa !21
  br label %bb28
bb19:
  %t63 = load { i64, [2 x i64] }, ptr %l5
  %t65 = extractvalue { i64, [2 x i64] } %t63, 0
  %t66 = icmp eq i64 %t65, 4
  br i1 %t66, label %bb20, label %bb21
bb20:
  %t68 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t69 = getelementptr { i64, i64 }, ptr %t68, i32 0, i32 0
  %t70 = load i64, ptr %t69
  store i64 %t70, ptr %l7, !tbaa !24
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = icmp sge i64 %t72, 0
  store i1 %t74, ptr %l4, !tbaa !21
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_678543b1c51fd044_bcff5a6e112a6af8)
  unreachable
bb28:
  %t76 = load i1, ptr %l4, !tbaa !21
  br i1 %t76, label %bb29, label %bb30
bb29:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l52, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l53, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %t80, i32 0, i32 27
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  br i1 %t85, label %bb31, label %bb32
bb30:
  br label %bb37
bb31:
  call void @__olang_check_failed(ptr @olang_loc_90a9d28716f9cb6_29834bc9108cc36a)
  unreachable
bb32:
  br label %bb33
bb33:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 27
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Body", ptr %t90, i32 0, i32 3
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = getelementptr %"compiler/scope:rel", ptr %l3, i32 0, i32 3
  %t96 = load %"compiler/source:Span", ptr %t95
  %t97 = load ptr, ptr %l53, !tbaa !29
  %t100 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t97, i64 %t94, %"compiler/source:Span" %t96)
  store %"compiler/source:Span" %t100, ptr %l62
  br label %bb34
bb34:
  %t101 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrStoresInReceiver(ptr %v0)
  store %"compiler/diagmsg:Msg" %t101, ptr %l63
  br label %bb35
bb35:
  %t102 = load ptr, ptr %l52, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l62
  %t104 = load %"compiler/diagmsg:Msg", ptr %l63
  %t105 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t102, %"compiler/source:Span" %t103, %"compiler/diagmsg:Msg" %t104)
  store i64 %t105, ptr %l64
  br label %bb36
bb36:
  br label %ret
bb37:
  br label %bb38
bb38:
  %t106 = load i64, ptr %l2, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l2, !tbaa !24
  br label %bb1
bb39:
  store i64 0, ptr %l8, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 74
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l69
  br label %bb40
bb40:
  %t115 = load i64, ptr %l69, !tbaa !24
  store i64 %t115, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t116 = load i64, ptr %l9, !tbaa !24
  %t117 = load i64, ptr %l8, !tbaa !24
  %t120 = icmp sgt i64 %t116, %t117
  br i1 %t120, label %bb41, label %bb42
bb41:
  %t122 = load i64, ptr %l10, !tbaa !24
  %t124 = icmp sgt i64 %t122, 0
  br i1 %t124, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb46
bb43:
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load i64, ptr %l8, !tbaa !24
  %t130 = sub i64 %t126, %t127
  %t131 = load i64, ptr %l10, !tbaa !24
  %t134 = add i64 %t130, %t131
  %t136 = sub i64 %t134, 1
  %t137 = load i64, ptr %l10, !tbaa !24
  %t140 = sdiv i64 %t136, %t137
  store i64 %t140, ptr %l76, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb45
bb45:
  %t142 = load i64, ptr %l76, !tbaa !24
  store i64 %t142, ptr %l73, !tbaa !24
  br label %bb46
bb46:
  %t143 = load i64, ptr %l73, !tbaa !24
  store i64 %t143, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb47
bb47:
  %t144 = load i64, ptr %l12, !tbaa !24
  %t145 = load i64, ptr %l11, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb48, label %bb49
bb48:
  br label %bb79
bb49:
  br label %bb50
bb50:
  %t152 = load i64, ptr %l8, !tbaa !24
  %t153 = load i64, ptr %l12, !tbaa !24
  %t154 = load i64, ptr %l10, !tbaa !24
  %t157 = mul i64 %t153, %t154
  %t160 = add i64 %t152, %t157
  store i64 %t160, ptr %l13, !tbaa !24
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/scope:Scoper", ptr %t162, i32 0, i32 74
  %t165 = load i64, ptr %l13, !tbaa !24
  %t168 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t164, i64 %t165)
  store i1 %t168, ptr %l97
  br label %bb51
bb51:
  %t169 = load i1, ptr %l97, !tbaa !21
  %t170 = xor i1 %t169, true
  br i1 %t170, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb55
bb53:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/scope:Scoper", ptr %t172, i32 0, i32 66
  %t175 = load i64, ptr %l13, !tbaa !24
  %t178 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t174, i64 %t175)
  store i1 %t178, ptr %l103
  br label %bb54
bb54:
  %t179 = load i1, ptr %l103, !tbaa !21
  %t180 = xor i1 %t179, true
  store i1 %t180, ptr %l99, !tbaa !21
  br label %bb55
bb55:
  %t182 = load i1, ptr %l99, !tbaa !21
  br i1 %t182, label %bb56, label %bb57
bb56:
  br label %bb78
bb57:
  br label %bb58
bb58:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l105, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/scope:Scoper", ptr %t184, i32 0, i32 71
  %t187 = load i64, ptr %l13, !tbaa !24
  %t190 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t186, i64 %t187)
  store %"compiler/source:Span" %t190, ptr %l109
  br label %bb59
bb59:
  %t191 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrStoresInReceiver(ptr %v0)
  store %"compiler/diagmsg:Msg" %t191, ptr %l110
  br label %bb60
bb60:
  %t192 = load ptr, ptr %l105, !tbaa !29
  %t193 = load %"compiler/source:Span", ptr %l109
  %t194 = load %"compiler/diagmsg:Msg", ptr %l110
  %t195 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t192, %"compiler/source:Span" %t193, %"compiler/diagmsg:Msg" %t194)
  store i64 %t195, ptr %l111
  br label %bb61
bb61:
  %t196 = load i64, ptr %l111, !tbaa !24
  store i64 %t196, ptr %l14, !tbaa !24
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/scope:Scoper", ptr %t197, i32 0, i32 72
  %t200 = load i64, ptr %l13, !tbaa !24
  %t203 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t199, i64 %t200)
  store i64 %t203, ptr %l115
  br label %bb62
bb62:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %t204, i32 0, i32 27
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t209 = icmp eq ptr %t207, null
  br i1 %t209, label %bb63, label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_a7a579971a154b67_66936e5e8b24a2eb)
  unreachable
bb64:
  br label %bb65
bb65:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/scope:Scoper", ptr %t211, i32 0, i32 27
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t217 = getelementptr %"compiler/typed:Body", ptr %t214, i32 0, i32 3
  %t218 = load i64, ptr %t217, !tbaa !24
  %t219 = load i64, ptr %l115, !tbaa !24
  %t221 = icmp ne i64 %t219, %t218
  br i1 %t221, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l124, !tbaa !21
  br label %bb70
bb67:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/scope:Scoper", ptr %t223, i32 0, i32 73
  %t226 = load i64, ptr %l13, !tbaa !24
  %t229 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t225, i64 %t226)
  store %"compiler/source:Span" %t229, ptr %l128
  br label %bb68
bb68:
  %t230 = getelementptr %"compiler/source:Span", ptr %l128, i32 0, i32 0
  %t231 = load i32, ptr %t230, !tbaa !23
  store i32 %t231, ptr %l129, !tbaa !23
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/scope:Scoper", ptr %t232, i32 0, i32 71
  %t235 = load i64, ptr %l13, !tbaa !24
  %t238 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t234, i64 %t235)
  store %"compiler/source:Span" %t238, ptr %l133
  br label %bb69
bb69:
  %t239 = getelementptr %"compiler/source:Span", ptr %l133, i32 0, i32 0
  %t240 = load i32, ptr %t239, !tbaa !23
  %t241 = load i32, ptr %l129, !tbaa !23
  %t243 = icmp ne i32 %t241, %t240
  store i1 %t243, ptr %l124, !tbaa !21
  br label %bb70
bb70:
  %t245 = load i1, ptr %l124, !tbaa !21
  br i1 %t245, label %bb71, label %bb72
bb71:
  %t246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t246, ptr %l136, !tbaa !29
  %t247 = load i64, ptr %l14, !tbaa !24
  store i64 %t247, ptr %l137, !tbaa !24
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %t248, i32 0, i32 72
  %t251 = load i64, ptr %l13, !tbaa !24
  %t254 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t250, i64 %t251)
  store i64 %t254, ptr %l141
  br label %bb73
bb72:
  br label %bb77
bb73:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/scope:Scoper", ptr %t255, i32 0, i32 73
  %t258 = load i64, ptr %l13, !tbaa !24
  %t261 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t257, i64 %t258)
  store %"compiler/source:Span" %t261, ptr %l145
  br label %bb74
bb74:
  %t262 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteStrBuildsHere(ptr %v0)
  store %"compiler/diagmsg:Msg" %t262, ptr %l146
  br label %bb75
bb75:
  %t263 = load ptr, ptr %l136, !tbaa !29
  %t264 = load i64, ptr %l137, !tbaa !24
  %t265 = load i64, ptr %l141, !tbaa !24
  %t266 = load %"compiler/source:Span", ptr %l145
  %t267 = load %"compiler/diagmsg:Msg", ptr %l146
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t263, i64 %t264, i64 %t265, %"compiler/source:Span" %t266, %"compiler/diagmsg:Msg" %t267)
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %ret
bb78:
  %t268 = load i64, ptr %l12, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l12, !tbaa !24
  br label %bb47
bb79:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailTakes(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l15 = alloca { i64, ptr }
  %l21 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t31 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakenLocal(ptr %v0, ptr %v1, ptr %a0, ptr %t24)
  store i64 %t31, ptr %l21
  br label %bb5
bb5:
  %t33 = load i64, ptr %l21, !tbaa !24
  %t35 = icmp eq i64 %t33, %a2
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l4, !tbaa !24
  br label %bb1
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakeable(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca ptr
  %l42 = alloca i64
  %l46 = alloca ptr
  %l49 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 270
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Hcb6fae2338a785d6927a8587899f4e85(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v1, ptr %t9)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
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
  store i64 0, ptr %l19, !tbaa !24
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
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l8, !tbaa !24
  %t59 = load ptr, ptr %l2, !tbaa !29
  store ptr %t59, ptr %l40, !tbaa !29
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v1, ptr %t60)
  store i64 %t62, ptr %l42
  br label %bb13
bb13:
  %t63 = load i64, ptr %l42, !tbaa !24
  %t64 = sub i64 %t63, 1
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = sub i64 %t64, %t65
  %t69 = load ptr, ptr %l40, !tbaa !29
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H665b0c71977ef42adbc51fe96e6e85ee(ptr %v1, ptr %v1, ptr %t69, i64 %t68)
  store ptr %t71, ptr %l46
  br label %bb14
bb14:
  %t72 = load ptr, ptr %l46, !tbaa !29
  store ptr %t72, ptr %l9, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t77 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2easItWas(ptr %v0, ptr %v1, ptr %t73, ptr %t74)
  store i1 %t77, ptr %l49
  br label %bb15
bb15:
  %t78 = load i1, ptr %l49, !tbaa !21
  br i1 %t78, label %bb16, label %bb17
bb16:
  %t79 = load ptr, ptr %l9, !tbaa !29
  store ptr %t79, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb9
bb20:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 40
  store ptr %t23, ptr %l15, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 41
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
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 41
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
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 40
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

define dso_local { i32, { i64, [2 x i64] } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermOfWord(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i8
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l21 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l30 = alloca { i64, ptr }
  %l33 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i32
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i32
  %l48 = alloca i64
  %l49 = alloca i32
  %l51 = alloca i64
  %l52 = alloca { i64, ptr }
  %l54 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i32
  %l65 = alloca i64
  %l66 = alloca i32
  %l71 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca i32
  %l75 = alloca i64
  %l76 = alloca i32
  %l78 = alloca { i64, ptr }
  %l80 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i32, { i64, [2 x i64] } }
  %t5 = alloca { i64, [2 x i64] }, align 8
  %t14 = alloca { i64, [2 x i64] }, align 8
  %t23 = alloca { i64, [2 x i64] }, align 8
  %t162 = alloca { i64, [2 x i64] }, align 8
  %t203 = alloca { i64, [2 x i64] }, align 8
  %t215 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load i1, ptr %l9, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t7 = load { i64, [2 x i64] }, ptr %t5
  call void @__olang_scope_close(ptr %s0)
  %t9 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, { i64, [2 x i64] } %t7, 1
  store { i32, { i64, [2 x i64] } } %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t12, ptr %l12
  br label %bb5
bb5:
  %t13 = load i1, ptr %l12, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  store { i64, [2 x i64] } zeroinitializer, ptr %t14
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 0
  store i64 3, ptr %t15
  %t16 = load { i64, [2 x i64] }, ptr %t14
  call void @__olang_scope_close(ptr %s0)
  %t18 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, { i64, [2 x i64] } %t16, 1
  store { i32, { i64, [2 x i64] } } %t18, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t21, ptr %l15
  br label %bb9
bb9:
  %t22 = load i1, ptr %l15, !tbaa !21
  br i1 %t22, label %bb10, label %bb11
bb10:
  store { i64, [2 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t23, i32 0, i32 0
  store i64 6, ptr %t24
  %t25 = load { i64, [2 x i64] }, ptr %t23
  call void @__olang_scope_close(ptr %s0)
  %t27 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, { i64, [2 x i64] } %t25, 1
  store { i32, { i64, [2 x i64] } } %t27, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp slt i64 %t30, 2
  br i1 %t32, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t35 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [2 x i64] } } %t35, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t36, ptr %l21, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t37, 0
  store i64 %t40, ptr %l24, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l25, !tbaa !24
  %t43 = icmp sge i64 1, 0
  br i1 %t43, label %bb16, label %bb17
bb16:
  %t45 = load i64, ptr %l24, !tbaa !24
  %t46 = icmp sle i64 1, %t45
  br i1 %t46, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_495a64aca38662d8_92214166877a2a6c)
  unreachable
bb18:
  %t48 = load i64, ptr %l24, !tbaa !24
  %t49 = load i64, ptr %l25, !tbaa !24
  %t50 = icmp sle i64 %t48, %t49
  br i1 %t50, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_495a64aca38662d8_92214166877a2a6c)
  unreachable
bb20:
  %t52 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l24, !tbaa !24
  %t55 = getelementptr i8, ptr %t53, i64 1
  %t56 = sub i64 %t54, 1
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  store { i64, ptr } %t58, ptr %l2, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t60, ptr %l30, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i8, ptr %t62, i64 0
  %t64 = load i8, ptr %t63, !tbaa !32
  %t66 = icmp eq i8 %t64, 68
  br i1 %t66, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_495a64aca38662d8_92214166877a2a6c)
  unreachable
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t68 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t70 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s5, { i64, ptr } %t68, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) })
  %t71 = extractvalue { i32, i64 } %t70, 1
  %t72 = extractvalue { i32, i64 } %t70, 0
  store i32 %t72, ptr %l36
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb25, label %ok.74, !prof !99
ok.74:
  store i64 %t71, ptr %l35
  br label %bb24
bb23:
  br label %bb52
bb24:
  %t75 = load i64, ptr %l35, !tbaa !24
  store i64 %t75, ptr %l33, !tbaa !24
  br label %bb27
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t77 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [2 x i64] } } %t77, ptr %rv
  br label %ret
bb27:
  %t78 = load i64, ptr %l33, !tbaa !24
  store i64 %t78, ptr %l3, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t79, ptr %l39, !tbaa !27
  %t80 = load i64, ptr %l3, !tbaa !24
  store i64 %t80, ptr %l40, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  store i64 %t82, ptr %l41, !tbaa !24
  %t83 = icmp sge i64 0, 0
  br i1 %t83, label %bb28, label %bb29
bb28:
  %t85 = load i64, ptr %l40, !tbaa !24
  %t86 = icmp sle i64 0, %t85
  br i1 %t86, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_2a6c6ae0366caf35_6888aea225c1c919)
  unreachable
bb30:
  %t88 = load i64, ptr %l40, !tbaa !24
  %t89 = load i64, ptr %l41, !tbaa !24
  %t90 = icmp sle i64 %t88, %t89
  br i1 %t90, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_2a6c6ae0366caf35_6888aea225c1c919)
  unreachable
bb32:
  %t92 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = load i64, ptr %l40, !tbaa !24
  %t95 = getelementptr i8, ptr %t93, i64 0
  %t96 = sub i64 %t94, 0
  %t97 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t95, 1
  store { i64, ptr } %t98, ptr %l45, !tbaa !27
  %t99 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s5, i64 10)
  %t100 = extractvalue { i32, i64 } %t99, 1
  %t101 = extractvalue { i32, i64 } %t99, 0
  store i32 %t101, ptr %l47
  %t102 = icmp ne i32 %t101, 0
  br i1 %t102, label %bb35, label %ok.103, !prof !99
ok.103:
  store i64 %t100, ptr %l46
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_2a6c6ae0366caf35_6888aea225c1c919)
  unreachable
bb34:
  %t104 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t105 = load i64, ptr %l46, !tbaa !24
  %t106 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t104, i64 %t105)
  %t107 = extractvalue { i32, i64 } %t106, 1
  %t108 = extractvalue { i32, i64 } %t106, 0
  store i32 %t108, ptr %l49
  %t109 = icmp ne i32 %t108, 0
  br i1 %t109, label %bb38, label %ok.110, !prof !99
ok.110:
  store i64 %t107, ptr %l48
  br label %bb37
bb35:
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t112 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [2 x i64] } } %t112, ptr %rv
  br label %ret
bb37:
  %t113 = load i64, ptr %l48, !tbaa !24
  store i64 %t113, ptr %l38, !tbaa !24
  br label %bb39
bb38:
  br label %bb36
bb39:
  %t114 = load i64, ptr %l38, !tbaa !24
  store i64 %t114, ptr %l4, !tbaa !24
  %t115 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t115, ptr %l52, !tbaa !27
  %t116 = load i64, ptr %l3, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l54, !tbaa !24
  %t119 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t119, 0
  store i64 %t122, ptr %l57, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l58, !tbaa !24
  %t125 = load i64, ptr %l54, !tbaa !24
  %t126 = icmp sge i64 %t125, 0
  br i1 %t126, label %bb40, label %bb41
bb40:
  %t128 = load i64, ptr %l54, !tbaa !24
  %t129 = load i64, ptr %l57, !tbaa !24
  %t130 = icmp sle i64 %t128, %t129
  br i1 %t130, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_143ec5319fcde756_1f5f68cb8ce257fa)
  unreachable
bb42:
  %t132 = load i64, ptr %l57, !tbaa !24
  %t133 = load i64, ptr %l58, !tbaa !24
  %t134 = icmp sle i64 %t132, %t133
  br i1 %t134, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_143ec5319fcde756_1f5f68cb8ce257fa)
  unreachable
bb44:
  %t136 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = load i64, ptr %l54, !tbaa !24
  %t139 = load i64, ptr %l57, !tbaa !24
  %t140 = getelementptr i8, ptr %t137, i64 %t138
  %t141 = sub i64 %t139, %t138
  %t142 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t140, 1
  store { i64, ptr } %t143, ptr %l62, !tbaa !27
  %t144 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s5, i64 10)
  %t145 = extractvalue { i32, i64 } %t144, 1
  %t146 = extractvalue { i32, i64 } %t144, 0
  store i32 %t146, ptr %l64
  %t147 = icmp ne i32 %t146, 0
  br i1 %t147, label %bb47, label %ok.148, !prof !99
ok.148:
  store i64 %t145, ptr %l63
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_143ec5319fcde756_1f5f68cb8ce257fa)
  unreachable
bb46:
  %t149 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t150 = load i64, ptr %l63, !tbaa !24
  %t151 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t149, i64 %t150)
  %t152 = extractvalue { i32, i64 } %t151, 1
  %t153 = extractvalue { i32, i64 } %t151, 0
  store i32 %t153, ptr %l66
  %t154 = icmp ne i32 %t153, 0
  br i1 %t154, label %bb50, label %ok.155, !prof !99
ok.155:
  store i64 %t152, ptr %l65
  br label %bb49
bb47:
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t157 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [2 x i64] } } %t157, ptr %rv
  br label %ret
bb49:
  %t158 = load i64, ptr %l65, !tbaa !24
  store i64 %t158, ptr %l51, !tbaa !24
  br label %bb51
bb50:
  br label %bb48
bb51:
  %t159 = load i64, ptr %l51, !tbaa !24
  %t160 = load i64, ptr %l4, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t162
  %t163 = getelementptr { i64, [2 x i64] }, ptr %t162, i32 0, i32 0
  store i64 4, ptr %t163
  %t165 = insertvalue { i64, i64 } undef, i64 %t160, 0
  %t167 = insertvalue { i64, i64 } %t165, i64 %t159, 1
  %t168 = getelementptr { i64, [2 x i64] }, ptr %t162, i32 0, i32 1
  store { i64, i64 } %t167, ptr %t168
  %t169 = load { i64, [2 x i64] }, ptr %t162
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t171 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, { i64, [2 x i64] } %t169, 1
  store { i32, { i64, [2 x i64] } } %t171, ptr %rv
  br label %ret
bb52:
  %t172 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t172, ptr %l72, !tbaa !27
  %t173 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t174 = extractvalue { i32, i64 } %t173, 1
  %t175 = extractvalue { i32, i64 } %t173, 0
  store i32 %t175, ptr %l74
  %t176 = icmp ne i32 %t175, 0
  br i1 %t176, label %bb54, label %ok.177, !prof !99
ok.177:
  store i64 %t174, ptr %l73
  br label %bb53
bb53:
  %t178 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t179 = load i64, ptr %l73, !tbaa !24
  %t180 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t178, i64 %t179)
  %t181 = extractvalue { i32, i64 } %t180, 1
  %t182 = extractvalue { i32, i64 } %t180, 0
  store i32 %t182, ptr %l76
  %t183 = icmp ne i32 %t182, 0
  br i1 %t183, label %bb57, label %ok.184, !prof !99
ok.184:
  store i64 %t181, ptr %l75
  br label %bb56
bb54:
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  %t186 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [2 x i64] } } %t186, ptr %rv
  br label %ret
bb56:
  %t187 = load i64, ptr %l75, !tbaa !24
  store i64 %t187, ptr %l71, !tbaa !24
  br label %bb58
bb57:
  br label %bb55
bb58:
  %t188 = load i64, ptr %l71, !tbaa !24
  store i64 %t188, ptr %l6, !tbaa !24
  %t189 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t189, ptr %l78, !tbaa !27
  %t190 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr i8, ptr %t191, i64 0
  %t193 = load i8, ptr %t192, !tbaa !32
  store i8 %t193, ptr %l7, !tbaa !22
  %t195 = load i8, ptr %l7, !tbaa !22
  %t197 = icmp eq i8 %t195, 66
  br i1 %t197, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  %t199 = load i64, ptr %l6, !tbaa !24
  %t201 = trunc i64 %t199 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t203
  %t204 = getelementptr { i64, [2 x i64] }, ptr %t203, i32 0, i32 0
  store i64 1, ptr %t204
  %t206 = insertvalue { i32 } undef, i32 %t201, 0
  %t207 = getelementptr { i64, [2 x i64] }, ptr %t203, i32 0, i32 1
  store { i32 } %t206, ptr %t207
  %t208 = load { i64, [2 x i64] }, ptr %t203
  store { i64, [2 x i64] } %t208, ptr %l80
  br label %bb71
bb62:
  %t210 = load i8, ptr %l7, !tbaa !22
  %t212 = icmp eq i8 %t210, 86
  br i1 %t212, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  %t214 = load i64, ptr %l6, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t215
  %t216 = getelementptr { i64, [2 x i64] }, ptr %t215, i32 0, i32 0
  store i64 2, ptr %t216
  %t218 = insertvalue { i64 } undef, i64 %t214, 0
  %t219 = getelementptr { i64, [2 x i64] }, ptr %t215, i32 0, i32 1
  store { i64 } %t218, ptr %t219
  %t220 = load { i64, [2 x i64] }, ptr %t215
  store { i64, [2 x i64] } %t220, ptr %l80
  br label %bb71
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  call void @__olang_scope_close(ptr %s0)
  %t223 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [2 x i64] } } %t223, ptr %rv
  br label %ret
bb70:
  call void @__olang_check_failed(ptr @olang_loc_10442710de77d7bc_e9bcb9ff6aeb0e0)
  unreachable
bb71:
  call void @__olang_scope_close(ptr %s0)
  %t224 = load { i64, [2 x i64] }, ptr %l80
  %t225 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, { i64, [2 x i64] } %t224, 1
  store { i32, { i64, [2 x i64] } } %t225, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [2 x i64] } }, ptr %rv
  ret { i32, { i64, [2 x i64] } } %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i1
  %l9 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %rv = alloca ptr
  %t28 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t2)
  store i32 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load i1, ptr %l5, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erootOf(ptr %v0, ptr %v1, ptr %v2, ptr %t11, ptr %t12)
  store ptr %t15, ptr %l9
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l9, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb6:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = call i1 @compiler_2ftyped_2ePurePlace(ptr %v1, ptr %t17)
  store i1 %t19, ptr %l11
  br label %bb7
bb7:
  %t20 = load i1, ptr %l11, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t21)
  store %"compiler/source:Span" %t23, ptr %l14
  br label %bb10
bb9:
  store ptr null, ptr %l12, !tbaa !29
  br label %bb12
bb10:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t24)
  store i32 %t26, ptr %l16
  br label %bb11
bb11:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 0
  store i64 2, ptr %t29
  %t30 = load %"compiler/source:Span", ptr %l14
  %t31 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t30, 0
  %t32 = load i32, ptr %l16, !tbaa !23
  %t33 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t31, i32 %t32, 1
  %t35 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t33, ptr %t27, 2
  %t36 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t35, i32 -1, 3
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t36, ptr %t37
  %t38 = load { i64, [5 x i64] }, ptr %t28
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t38, ptr %t40
  store ptr %t40, ptr %l12, !tbaa !29
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l12, !tbaa !29
  store ptr %t42, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinFor(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/scope:fnRec"
  %lp19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca %"compiler/scope:followItem"
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l38 = alloca i1
  %l42 = alloca ptr
  %l46 = alloca i1
  %l49 = alloca i1
  %l55 = alloca ptr
  %l58 = alloca ptr
  %l64 = alloca i32
  %l65 = alloca { i64, ptr }
  %l66 = alloca %"std/prelude/text:StringBuilder"
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l78 = alloca i64
  %l81 = alloca i64
  %l103 = alloca i1
  %l104 = alloca i64
  %l107 = alloca i64
  %l109 = alloca i1
  %l113 = alloca { i64, ptr }
  %l116 = alloca i1
  %l118 = alloca i1
  %l121 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l127 = alloca i1
  %l131 = alloca { i64, ptr }
  %l134 = alloca %"compiler/scope:fnRecs"
  %l136 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l142 = alloca i64
  %l144 = alloca i64
  %l149 = alloca %"compiler/scope:fnRec"
  %l150 = alloca ptr
  %l151 = alloca i64
  %l153 = alloca { i64, ptr }
  %l158 = alloca ptr
  %l162 = alloca i32
  %l163 = alloca i64
  %l167 = alloca %"compiler/scope:fnRecs"
  %l169 = alloca i64
  %l174 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l181 = alloca i64
  %l184 = alloca i64
  %l206 = alloca i1
  %l207 = alloca i64
  %l210 = alloca i64
  %l212 = alloca i1
  %l215 = alloca i1
  %l217 = alloca { i64, ptr }
  %l220 = alloca i1
  %l221 = alloca i1
  %l223 = alloca { i64, ptr }
  %l226 = alloca i1
  %l228 = alloca ptr
  %l229 = alloca i64
  %l233 = alloca i32
  %l235 = alloca i1
  %l238 = alloca { i64, ptr }
  %l241 = alloca i64
  %l244 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l250 = alloca i1
  %l257 = alloca i64
  %l259 = alloca i64
  %l264 = alloca %"compiler/scope:followItem"
  %l266 = alloca %"compiler/scope:followItem"
  %l267 = alloca ptr
  %l268 = alloca { i64, ptr }
  %l269 = alloca i64
  %l271 = alloca { i64, ptr }
  %l276 = alloca ptr
  %l280 = alloca i32
  %l281 = alloca i64
  %l286 = alloca %"compiler/scope:instTree"
  %l288 = alloca ptr
  %l293 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l294 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l296 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l298 = alloca i64
  %l307 = alloca { i64, ptr }
  %l308 = alloca i64
  %l313 = alloca i64
  %l314 = alloca i32
  %l318 = alloca i1
  %l319 = alloca i1
  %l326 = alloca i64
  %l329 = alloca ptr
  %l333 = alloca i1
  %l336 = alloca ptr
  %l339 = alloca i1
  %l340 = alloca i64
  %l343 = alloca i64
  %l345 = alloca i1
  %l349 = alloca i64
  %l354 = alloca i64
  %l359 = alloca i1
  %l364 = alloca i64
  %l371 = alloca i64
  %l376 = alloca i64
  %l381 = alloca i1
  %l391 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %rv = alloca i64
  %t522 = alloca %"compiler/scope:followItem", align 8
  %t525 = alloca %"compiler/scope:followItem", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l33, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 1
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l36
  br label %bb1
bb1:
  %t7 = load i64, ptr %l33, !tbaa !24
  %t8 = load i64, ptr %l36, !tbaa !24
  %t9 = icmp sge i64 %t7, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l42
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l42, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t18, i32 0, i32 11
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = icmp eq ptr %t21, null
  store i1 %t23, ptr %l38, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l38, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb9
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinnable(ptr %v0, ptr %t26, i64 %t27)
  store i1 %t30, ptr %l49
  br label %bb8
bb8:
  %t31 = load i1, ptr %l49, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l46, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l46, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 1
  %t39 = load i64, ptr %l2, !tbaa !24
  %t42 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t38, i64 %t39)
  store ptr %t42, ptr %l55
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l55, !tbaa !29
  store ptr %t43, ptr %l4, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  store ptr %t49, ptr %l58, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Body", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %t58, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t55, i32 %t59)
  store i32 %t62, ptr %l64
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l58, !tbaa !29
  %t64 = load i32, ptr %l64, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t63, i32 %t64)
  store { i64, ptr } %t65, ptr %l65
  br label %bb15
bb15:
  %t66 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t66, ptr %l5, !tbaa !27
  %t67 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t67, ptr %l66
  br label %bb16
bb16:
  %t68 = load %"std/prelude/text:StringBuilder", ptr %l66
  store %"std/prelude/text:StringBuilder" %t68, ptr %l6
  %t69 = load i64, ptr %l2, !tbaa !24
  %t71 = call i64 @__olang_fmt_i64(ptr null, i64 %t69)
  %t72 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t71)
  %t73 = call i64 @__olang_fmt_i64(ptr %t72, i64 %t69)
  %t74 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t72, 1
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t78 = extractvalue { i64, ptr } %t75, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t82)
  br label %bb17
bb17:
  %t85 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t85, ptr %l71
  br label %bb18
bb18:
  %t86 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t86, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Call", ptr %t87, i32 0, i32 1
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  store i64 %t92, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t94 = load i64, ptr %l10, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t98 = icmp sgt i64 %t94, %t95
  br i1 %t98, label %bb19, label %bb20
bb19:
  %t100 = load i64, ptr %l11, !tbaa !24
  %t102 = icmp sgt i64 %t100, 0
  br i1 %t102, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb24
bb21:
  %t104 = load i64, ptr %l10, !tbaa !24
  %t105 = load i64, ptr %l9, !tbaa !24
  %t108 = sub i64 %t104, %t105
  %t109 = load i64, ptr %l11, !tbaa !24
  %t112 = add i64 %t108, %t109
  %t114 = sub i64 %t112, 1
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = sdiv i64 %t114, %t115
  store i64 %t118, ptr %l81, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb23
bb23:
  %t120 = load i64, ptr %l81, !tbaa !24
  store i64 %t120, ptr %l78, !tbaa !24
  br label %bb24
bb24:
  %t121 = load i64, ptr %l78, !tbaa !24
  store i64 %t121, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t122 = load i64, ptr %l13, !tbaa !24
  %t123 = load i64, ptr %l12, !tbaa !24
  %t126 = icmp slt i64 %t122, %t123
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb66
bb27:
  br label %bb28
bb28:
  %t130 = load i64, ptr %l9, !tbaa !24
  %t131 = load i64, ptr %l13, !tbaa !24
  %t132 = load i64, ptr %l11, !tbaa !24
  %t135 = mul i64 %t131, %t132
  %t138 = add i64 %t130, %t135
  store i64 %t138, ptr %l14, !tbaa !24
  %t140 = load i64, ptr %l14, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t146 = icmp sge i64 %t140, %t143
  br i1 %t146, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb32
bb30:
  %t148 = load i64, ptr %l14, !tbaa !24
  store i64 %t148, ptr %l104, !tbaa !24
  %t149 = load ptr, ptr %l4, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Body", ptr %t149, i32 0, i32 5
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t151)
  store i64 %t153, ptr %l107
  br label %bb31
bb31:
  %t154 = load i64, ptr %l104, !tbaa !24
  %t155 = load i64, ptr %l107, !tbaa !24
  %t156 = icmp sge i64 %t154, %t155
  store i1 %t156, ptr %l103, !tbaa !21
  br label %bb32
bb32:
  %t158 = load i1, ptr %l103, !tbaa !21
  br i1 %t158, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb35
bb34:
  %t159 = load i64, ptr %l14, !tbaa !24
  %t161 = icmp sge i64 %t159, 62
  store i1 %t161, ptr %l109, !tbaa !21
  br label %bb35
bb35:
  %t163 = load i1, ptr %l109, !tbaa !21
  br i1 %t163, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s4)
  br label %bb66
bb37:
  br label %bb38
bb38:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t165, ptr %l113, !tbaa !27
  %t166 = load i64, ptr %l14, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i32, ptr %t169, i64 %t166
  %t171 = load i32, ptr %t170, !tbaa !33
  %t174 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t164, i32 %t171)
  store i1 %t174, ptr %l116
  br label %bb39
bb39:
  %t175 = load i1, ptr %l116, !tbaa !21
  %t176 = xor i1 %t175, true
  br i1 %t176, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb43
bb41:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Call", ptr %t179, i32 0, i32 1
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  store { i64, ptr } %t182, ptr %l121, !tbaa !27
  %t183 = load i64, ptr %l14, !tbaa !24
  %t185 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = getelementptr ptr, ptr %t186, i64 %t183
  %t188 = load ptr, ptr %t187, !tbaa !39
  %t189 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t189, ptr %l124, !tbaa !27
  %t190 = load i64, ptr %l14, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr i32, ptr %t193, i64 %t190
  %t195 = load i32, ptr %t194, !tbaa !33
  %t199 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efollowable(ptr %v0, ptr %v1, ptr %t178, ptr %t188, i32 %t195)
  store i1 %t199, ptr %l127
  br label %bb42
bb42:
  %t200 = load i1, ptr %l127, !tbaa !21
  %t201 = xor i1 %t200, true
  store i1 %t201, ptr %l118, !tbaa !21
  br label %bb43
bb43:
  %t203 = load i1, ptr %l118, !tbaa !21
  br i1 %t203, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s4)
  br label %bb65
bb45:
  br label %bb46
bb46:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr %"compiler/typed:Call", ptr %t205, i32 0, i32 1
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  store { i64, ptr } %t208, ptr %l131, !tbaa !27
  %t209 = load i64, ptr %l14, !tbaa !24
  %t211 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr ptr, ptr %t212, i64 %t209
  %t214 = load ptr, ptr %t213, !tbaa !39
  %t217 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeyRecs(ptr %v0, ptr %v1, ptr %s4, ptr %t204, ptr %t214)
  store %"compiler/scope:fnRecs" %t217, ptr %l134
  br label %bb47
bb47:
  %t218 = getelementptr %"compiler/scope:fnRecs", ptr %l134, i32 0, i32 0
  %t220 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2esortedRecs(ptr %s4, ptr %s4, ptr %t218)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t220, ptr %l136
  br label %bb48
bb48:
  %t221 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l136
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t221, ptr %l15
  %t222 = load i64, ptr %l14, !tbaa !24
  %t223 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t226 = call i64 @__olang_fmt_i64(ptr null, i64 %t222)
  %t227 = add i64 %t224, %t226
  %t228 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t229 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t230 = add i64 %t227, %t229
  %t231 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t230)
  call void @olang_textcopy(ptr %t231, ptr %t223, i64 %t224)
  %t232 = getelementptr i8, ptr %t231, i64 %t224
  %t233 = call i64 @__olang_fmt_i64(ptr %t232, i64 %t222)
  %t234 = getelementptr i8, ptr %t232, i64 %t226
  call void @olang_textcopy(ptr %t234, ptr %t228, i64 %t229)
  %t235 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t231, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = extractvalue { i64, ptr } %t236, 1
  %t240 = mul i64 %t238, 1
  %t241 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t240)
  call void @llvm.memcpy.p0.p0.i64(ptr %t241, ptr %t239, i64 %t240, i1 false)
  %t242 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t241, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l6, { i64, ptr } %t243)
  br label %bb49
bb49:
  store ptr %l15, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb50
bb50:
  store %olang.scope zeroinitializer, ptr %s9
  %t247 = load i64, ptr %l17, !tbaa !24
  store i64 %t247, ptr %l142, !tbaa !24
  %t248 = load ptr, ptr %l16, !tbaa !29
  %t250 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s4, ptr %t248)
  store i64 %t250, ptr %l144
  br label %bb51
bb51:
  %t251 = load i64, ptr %l142, !tbaa !24
  %t252 = load i64, ptr %l144, !tbaa !24
  %t253 = icmp slt i64 %t251, %t252
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s9)
  br label %bb61
bb53:
  br label %bb54
bb54:
  %t257 = load ptr, ptr %l16, !tbaa !29
  %t258 = load i64, ptr %l17, !tbaa !24
  %t261 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s4, ptr %s4, ptr %t257, i64 %t258)
  store %"compiler/scope:fnRec" %t261, ptr %l149
  br label %bb55
bb55:
  %t262 = load %"compiler/scope:fnRec", ptr %l149
  store %"compiler/scope:fnRec" %t262, ptr %l18
  store ptr %l6, ptr %l150, !tbaa !29
  %t263 = getelementptr %"compiler/scope:fnRec", ptr %l18, i32 0, i32 0
  %t264 = load i64, ptr %t263, !tbaa !24
  store i64 %t264, ptr %l151, !tbaa !24
  %t265 = getelementptr %"compiler/scope:fnRec", ptr %l18, i32 0, i32 2
  %t266 = load i1, ptr %t265, !tbaa !21
  br i1 %t266, label %bb56, label %bb57
bb56:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l153, !tbaa !27
  br label %bb58
bb57:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l153, !tbaa !27
  br label %bb58
bb58:
  %t268 = load i64, ptr %l151, !tbaa !24
  %t269 = call i64 @__olang_fmt_i64(ptr null, i64 %t268)
  %t270 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = extractvalue { i64, ptr } %t270, 0
  %t273 = add i64 %t269, %t272
  %t274 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t276 = add i64 %t273, %t275
  %t277 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t276)
  %t278 = call i64 @__olang_fmt_i64(ptr %t277, i64 %t268)
  %t279 = getelementptr i8, ptr %t277, i64 %t269
  call void @olang_textcopy(ptr %t279, ptr %t271, i64 %t272)
  %t280 = getelementptr i8, ptr %t279, i64 %t272
  call void @olang_textcopy(ptr %t280, ptr %t274, i64 %t275)
  %t281 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t277, 1
  %t284 = extractvalue { i64, ptr } %t282, 0
  %t285 = extractvalue { i64, ptr } %t282, 1
  %t286 = mul i64 %t284, 1
  %t287 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t286)
  call void @llvm.memcpy.p0.p0.i64(ptr %t287, ptr %t285, i64 %t286, i1 false)
  %t288 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  %t290 = load ptr, ptr %l150, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t290, { i64, ptr } %t289)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s9)
  br label %bb60
bb60:
  %t292 = load i64, ptr %l17, !tbaa !24
  %t294 = add i64 %t292, 1
  store i64 %t294, ptr %l17, !tbaa !24
  br label %bb50
bb61:
  store ptr %l7, ptr %l158, !tbaa !29
  %t296 = load ptr, ptr %l4, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Body", ptr %t296, i32 0, i32 5
  %t299 = load i64, ptr %l14, !tbaa !24
  %t302 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t298, i64 %t299)
  store i32 %t302, ptr %l162
  br label %bb62
bb62:
  %t303 = load i32, ptr %l162, !tbaa !23
  %t304 = sext i32 %t303 to i64
  store i64 %t304, ptr %l163, !tbaa !24
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load i64, ptr %l14, !tbaa !24
  %t310 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedOf(ptr %v0, ptr %s4, ptr %s4, ptr %t305, ptr %l15, i64 %t306)
  store %"compiler/scope:fnRecs" %t310, ptr %l167
  br label %bb63
bb63:
  %t311 = load ptr, ptr %l158, !tbaa !29
  %t312 = load i64, ptr %l163, !tbaa !24
  %t313 = load %"compiler/scope:fnRecs", ptr %l167
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %s0, ptr %s4, ptr %t311, i64 %t312, %"compiler/scope:fnRecs" %t313)
  br label %bb64
bb64:
  %t314 = load i64, ptr %l8, !tbaa !24
  %t315 = load i64, ptr %l14, !tbaa !24
  store i64 %t315, ptr %l169, !tbaa !24
  %t316 = load i64, ptr %l169, !tbaa !24
  %t317 = load i64, ptr %l169, !tbaa !24
  %t318 = shl i64 1, %t317
  %t321 = or i64 %t314, %t318
  store i64 %t321, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb65
bb65:
  %t323 = load i64, ptr %l13, !tbaa !24
  %t325 = add i64 %t323, 1
  store i64 %t325, ptr %l13, !tbaa !24
  br label %bb25
bb66:
  %t327 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3e(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t327, ptr %l174
  br label %bb67
bb67:
  %t328 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t328, ptr %lp19
  %t329 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l174
  %t330 = load ptr, ptr %lp19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t329, ptr %t330
  store i64 0, ptr %l20, !tbaa !24
  %t331 = load ptr, ptr %l1, !tbaa !29
  %t333 = getelementptr %"compiler/typed:Call", ptr %t331, i32 0, i32 1
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t334, 0
  store i64 %t336, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t338 = load i64, ptr %l21, !tbaa !24
  %t339 = load i64, ptr %l20, !tbaa !24
  %t342 = icmp sgt i64 %t338, %t339
  br i1 %t342, label %bb68, label %bb69
bb68:
  %t344 = load i64, ptr %l22, !tbaa !24
  %t346 = icmp sgt i64 %t344, 0
  br i1 %t346, label %bb70, label %bb71
bb69:
  store i64 0, ptr %l181, !tbaa !24
  br label %bb73
bb70:
  %t348 = load i64, ptr %l21, !tbaa !24
  %t349 = load i64, ptr %l20, !tbaa !24
  %t352 = sub i64 %t348, %t349
  %t353 = load i64, ptr %l22, !tbaa !24
  %t356 = add i64 %t352, %t353
  %t358 = sub i64 %t356, 1
  %t359 = load i64, ptr %l22, !tbaa !24
  %t362 = sdiv i64 %t358, %t359
  store i64 %t362, ptr %l184, !tbaa !24
  br label %bb72
bb71:
  store i64 0, ptr %l184, !tbaa !24
  br label %bb72
bb72:
  %t364 = load i64, ptr %l184, !tbaa !24
  store i64 %t364, ptr %l181, !tbaa !24
  br label %bb73
bb73:
  %t365 = load i64, ptr %l181, !tbaa !24
  store i64 %t365, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb74
bb74:
  store %olang.scope zeroinitializer, ptr %s14
  %t366 = load i64, ptr %l24, !tbaa !24
  %t367 = load i64, ptr %l23, !tbaa !24
  %t370 = icmp slt i64 %t366, %t367
  %t372 = xor i1 %t370, true
  br i1 %t372, label %bb75, label %bb76
bb75:
  call void @__olang_scope_close(ptr %s14)
  br label %bb132
bb76:
  br label %bb77
bb77:
  %t374 = load i64, ptr %l20, !tbaa !24
  %t375 = load i64, ptr %l24, !tbaa !24
  %t376 = load i64, ptr %l22, !tbaa !24
  %t379 = mul i64 %t375, %t376
  %t382 = add i64 %t374, %t379
  store i64 %t382, ptr %l25, !tbaa !24
  %t384 = load i64, ptr %l25, !tbaa !24
  %t385 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t387 = extractvalue { i64, ptr } %t385, 0
  %t390 = icmp sge i64 %t384, %t387
  br i1 %t390, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb81
bb79:
  %t392 = load i64, ptr %l25, !tbaa !24
  store i64 %t392, ptr %l207, !tbaa !24
  %t393 = load ptr, ptr %l4, !tbaa !29
  %t395 = getelementptr %"compiler/typed:Body", ptr %t393, i32 0, i32 5
  %t397 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t395)
  store i64 %t397, ptr %l210
  br label %bb80
bb80:
  %t398 = load i64, ptr %l207, !tbaa !24
  %t399 = load i64, ptr %l210, !tbaa !24
  %t400 = icmp sge i64 %t398, %t399
  store i1 %t400, ptr %l206, !tbaa !21
  br label %bb81
bb81:
  %t402 = load i1, ptr %l206, !tbaa !21
  br i1 %t402, label %bb82, label %bb83
bb82:
  store i1 true, ptr %l212, !tbaa !21
  br label %bb84
bb83:
  %t403 = load i64, ptr %l25, !tbaa !24
  %t405 = icmp sge i64 %t403, 62
  store i1 %t405, ptr %l212, !tbaa !21
  br label %bb84
bb84:
  %t407 = load i1, ptr %l212, !tbaa !21
  br i1 %t407, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l215, !tbaa !21
  br label %bb88
bb86:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t409 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t409, ptr %l217, !tbaa !27
  %t410 = load i64, ptr %l25, !tbaa !24
  %t412 = getelementptr { i64, ptr }, ptr %l217, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = getelementptr i32, ptr %t413, i64 %t410
  %t415 = load i32, ptr %t414, !tbaa !33
  %t418 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t408, i32 %t415)
  store i1 %t418, ptr %l220
  br label %bb87
bb87:
  %t419 = load i1, ptr %l220, !tbaa !21
  store i1 %t419, ptr %l215, !tbaa !21
  br label %bb88
bb88:
  %t420 = load i1, ptr %l215, !tbaa !21
  br i1 %t420, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l221, !tbaa !21
  br label %bb92
bb90:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t422, ptr %l223, !tbaa !27
  %t423 = load i64, ptr %l25, !tbaa !24
  %t425 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = getelementptr i32, ptr %t426, i64 %t423
  %t428 = load i32, ptr %t427, !tbaa !33
  %t431 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstType(ptr %v0, ptr %t421, i32 %t428)
  store i1 %t431, ptr %l226
  br label %bb91
bb91:
  %t432 = load i1, ptr %l226, !tbaa !21
  %t433 = xor i1 %t432, true
  store i1 %t433, ptr %l221, !tbaa !21
  br label %bb92
bb92:
  %t435 = load i1, ptr %l221, !tbaa !21
  br i1 %t435, label %bb93, label %bb94
bb93:
  call void @__olang_scope_close(ptr %s14)
  br label %bb131
bb94:
  br label %bb95
bb95:
  %t436 = load ptr, ptr %l0, !tbaa !29
  store ptr %t436, ptr %l228, !tbaa !29
  %t437 = load i64, ptr %l2, !tbaa !24
  store i64 %t437, ptr %l229, !tbaa !24
  %t438 = load ptr, ptr %l4, !tbaa !29
  %t440 = getelementptr %"compiler/typed:Body", ptr %t438, i32 0, i32 5
  %t441 = load i64, ptr %l25, !tbaa !24
  %t444 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t440, i64 %t441)
  store i32 %t444, ptr %l233
  br label %bb96
bb96:
  %t445 = load i32, ptr %l233, !tbaa !23
  %t446 = sext i32 %t445 to i64
  %t447 = load ptr, ptr %l228, !tbaa !29
  %t448 = load i64, ptr %l229, !tbaa !24
  %t450 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignsWhole(ptr %v0, ptr %t447, i64 %t448, i64 %t446)
  store i1 %t450, ptr %l235
  br label %bb97
bb97:
  %t451 = load i1, ptr %l235, !tbaa !21
  br i1 %t451, label %bb98, label %bb99
bb98:
  call void @__olang_scope_close(ptr %s14)
  br label %bb131
bb99:
  br label %bb100
bb100:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load ptr, ptr %l1, !tbaa !29
  %t455 = getelementptr %"compiler/typed:Call", ptr %t453, i32 0, i32 1
  %t456 = load { i64, ptr }, ptr %t455, !tbaa !27
  store { i64, ptr } %t456, ptr %l238, !tbaa !27
  %t457 = load i64, ptr %l25, !tbaa !24
  %t459 = getelementptr { i64, ptr }, ptr %l238, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !27
  %t461 = getelementptr ptr, ptr %t460, i64 %t457
  %t462 = load ptr, ptr %t461, !tbaa !39
  %t465 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeyInst(ptr %v0, ptr %v1, ptr %t452, ptr %t462)
  store i64 %t465, ptr %l241
  br label %bb101
bb101:
  %t466 = load i64, ptr %l241, !tbaa !24
  store i64 %t466, ptr %l26, !tbaa !24
  %t467 = load i64, ptr %l26, !tbaa !24
  %t469 = icmp slt i64 %t467, 0
  br i1 %t469, label %bb102, label %bb103
bb102:
  call void @__olang_scope_close(ptr %s14)
  br label %bb131
bb103:
  br label %bb104
bb104:
  %t471 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2ector(ptr %s14, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t471, ptr %l244
  br label %bb105
bb105:
  %t472 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l244
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t472, ptr %l27
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i64, ptr %l26, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efollowItems(ptr %v0, ptr %s14, ptr %s14, ptr %t473, i64 %t474, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) }, i64 0, ptr %l27)
  br label %bb106
bb106:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t481 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstFollowable(ptr %v0, ptr %s14, ptr %t478, ptr %l27)
  store i1 %t481, ptr %l250
  br label %bb107
bb107:
  %t482 = load i1, ptr %l250, !tbaa !21
  %t483 = xor i1 %t482, true
  br i1 %t483, label %bb108, label %bb109
bb108:
  call void @__olang_scope_close(ptr %s14)
  br label %bb131
bb109:
  br label %bb110
bb110:
  %t485 = load i64, ptr %l25, !tbaa !24
  %t486 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t487 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t489 = call i64 @__olang_fmt_i64(ptr null, i64 %t485)
  %t490 = add i64 %t487, %t489
  %t491 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t492 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t493 = add i64 %t490, %t492
  %t494 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t493)
  call void @olang_textcopy(ptr %t494, ptr %t486, i64 %t487)
  %t495 = getelementptr i8, ptr %t494, i64 %t487
  %t496 = call i64 @__olang_fmt_i64(ptr %t495, i64 %t485)
  %t497 = getelementptr i8, ptr %t495, i64 %t489
  call void @olang_textcopy(ptr %t497, ptr %t491, i64 %t492)
  %t498 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t499 = insertvalue { i64, ptr } %t498, ptr %t494, 1
  %t501 = extractvalue { i64, ptr } %t499, 0
  %t502 = extractvalue { i64, ptr } %t499, 1
  %t503 = mul i64 %t501, 1
  %t504 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t503)
  call void @llvm.memcpy.p0.p0.i64(ptr %t504, ptr %t502, i64 %t503, i1 false)
  %t505 = insertvalue { i64, ptr } undef, i64 %t501, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr %t504, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l6, { i64, ptr } %t506)
  br label %bb111
bb111:
  store ptr %l27, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb112
bb112:
  store %olang.scope zeroinitializer, ptr %s21
  %t510 = load i64, ptr %l29, !tbaa !24
  store i64 %t510, ptr %l257, !tbaa !24
  %t511 = load ptr, ptr %l28, !tbaa !29
  %t513 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eLen_H179c871bd324feda0fb0949b8c691d2f(ptr %s14, ptr %t511)
  store i64 %t513, ptr %l259
  br label %bb113
bb113:
  %t514 = load i64, ptr %l257, !tbaa !24
  %t515 = load i64, ptr %l259, !tbaa !24
  %t516 = icmp slt i64 %t514, %t515
  %t518 = xor i1 %t516, true
  br i1 %t518, label %bb114, label %bb115
bb114:
  call void @__olang_scope_close(ptr %s21)
  br label %bb124
bb115:
  br label %bb116
bb116:
  %t520 = load ptr, ptr %l28, !tbaa !29
  %t521 = load i64, ptr %l29, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eAt__Hcba85181f1f46e0ef99a47a3ca1cb265(ptr %t522, ptr %s14, ptr %s14, ptr %t520, i64 %t521)
  call void @llvm.memmove.p0.p0.i64(ptr %l264, ptr %t522, i64 176, i1 false)
  br label %bb117
bb117:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afollowItem(ptr %t525, ptr %s21, ptr %l264)
  call void @llvm.memmove.p0.p0.i64(ptr %l266, ptr %t525, i64 176, i1 false)
  br label %bb118
bb118:
  call void @llvm.memmove.p0.p0.i64(ptr %l30, ptr %l266, i64 176, i1 false)
  store ptr %l6, ptr %l267, !tbaa !29
  %t527 = getelementptr %"compiler/scope:followItem", ptr %l30, i32 0, i32 0
  %t528 = load { i64, ptr }, ptr %t527, !tbaa !27
  store { i64, ptr } %t528, ptr %l268, !tbaa !27
  %t529 = getelementptr %"compiler/scope:followItem", ptr %l30, i32 0, i32 1
  %t530 = getelementptr %"compiler/scope:fnRec", ptr %t529, i32 0, i32 0
  %t531 = load i64, ptr %t530, !tbaa !24
  store i64 %t531, ptr %l269, !tbaa !24
  %t532 = getelementptr %"compiler/scope:followItem", ptr %l30, i32 0, i32 1
  %t533 = getelementptr %"compiler/scope:fnRec", ptr %t532, i32 0, i32 2
  %t534 = load i1, ptr %t533, !tbaa !21
  br i1 %t534, label %bb119, label %bb120
bb119:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l271, !tbaa !27
  br label %bb121
bb120:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l271, !tbaa !27
  br label %bb121
bb121:
  %t536 = load { i64, ptr }, ptr %l268, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t536, 1
  %t538 = extractvalue { i64, ptr } %t536, 0
  %t539 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t540 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t541 = add i64 %t538, %t540
  %t542 = load i64, ptr %l269, !tbaa !24
  %t543 = call i64 @__olang_fmt_i64(ptr null, i64 %t542)
  %t544 = add i64 %t541, %t543
  %t545 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t546 = extractvalue { i64, ptr } %t545, 1
  %t547 = extractvalue { i64, ptr } %t545, 0
  %t548 = add i64 %t544, %t547
  %t549 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t550 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t551 = add i64 %t548, %t550
  %t552 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t551)
  call void @olang_textcopy(ptr %t552, ptr %t537, i64 %t538)
  %t553 = getelementptr i8, ptr %t552, i64 %t538
  call void @olang_textcopy(ptr %t553, ptr %t539, i64 %t540)
  %t554 = getelementptr i8, ptr %t553, i64 %t540
  %t555 = call i64 @__olang_fmt_i64(ptr %t554, i64 %t542)
  %t556 = getelementptr i8, ptr %t554, i64 %t543
  call void @olang_textcopy(ptr %t556, ptr %t546, i64 %t547)
  %t557 = getelementptr i8, ptr %t556, i64 %t547
  call void @olang_textcopy(ptr %t557, ptr %t549, i64 %t550)
  %t558 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t559 = insertvalue { i64, ptr } %t558, ptr %t552, 1
  %t561 = extractvalue { i64, ptr } %t559, 0
  %t562 = extractvalue { i64, ptr } %t559, 1
  %t563 = mul i64 %t561, 1
  %t564 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t563)
  call void @llvm.memcpy.p0.p0.i64(ptr %t564, ptr %t562, i64 %t563, i1 false)
  %t565 = insertvalue { i64, ptr } undef, i64 %t561, 0
  %t566 = insertvalue { i64, ptr } %t565, ptr %t564, 1
  %t567 = load ptr, ptr %l267, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s21, ptr %t567, { i64, ptr } %t566)
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s21)
  br label %bb123
bb123:
  %t569 = load i64, ptr %l29, !tbaa !24
  %t571 = add i64 %t569, 1
  store i64 %t571, ptr %l29, !tbaa !24
  br label %bb112
bb124:
  %t573 = load ptr, ptr %lp19
  store ptr %t573, ptr %l276, !tbaa !29
  %t574 = load ptr, ptr %l4, !tbaa !29
  %t576 = getelementptr %"compiler/typed:Body", ptr %t574, i32 0, i32 5
  %t577 = load i64, ptr %l25, !tbaa !24
  %t580 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t576, i64 %t577)
  store i32 %t580, ptr %l280
  br label %bb125
bb125:
  %t581 = load i32, ptr %l280, !tbaa !23
  %t582 = sext i32 %t581 to i64
  store i64 %t582, ptr %l281, !tbaa !24
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t584 = load i64, ptr %l26, !tbaa !24
  %t585 = load i64, ptr %l25, !tbaa !24
  %t590 = call %"compiler/scope:instTree" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedInstOf(ptr %v0, ptr %s14, ptr %s14, ptr %t583, i64 %t584, i64 %t585, ptr %l27)
  store %"compiler/scope:instTree" %t590, ptr %l286
  br label %bb126
bb126:
  %t591 = load ptr, ptr %l276, !tbaa !29
  %t592 = load i64, ptr %l281, !tbaa !24
  %t593 = load %"compiler/scope:instTree", ptr %l286
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3_H8a48bcdbf9c548baffce9514fe594775(ptr %v0, ptr %s14, ptr %t591, i64 %t592, %"compiler/scope:instTree" %t593)
  br label %bb127
bb127:
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t596 = getelementptr %"compiler/scope:Scoper", ptr %t594, i32 0, i32 247
  store ptr %t596, ptr %l288, !tbaa !29
  %t597 = load ptr, ptr %l1, !tbaa !29
  %t599 = getelementptr %"compiler/typed:Call", ptr %t597, i32 0, i32 2
  %t600 = load i32, ptr %t599, !tbaa !23
  %t602 = sext i32 %t600 to i64
  %t603 = load i64, ptr %l25, !tbaa !24
  %t606 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s14, i64 %t602, i64 %t603)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t606, ptr %l293
  br label %bb128
bb128:
  %t607 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t607, ptr %l294
  %t609 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e(ptr %s14, ptr %l294)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t609, ptr %l296
  br label %bb129
bb129:
  %t610 = load ptr, ptr %l288, !tbaa !29
  %t611 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l293
  %t612 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l296
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H35cb97c8fad269f48f2366228330e440(ptr %v0, ptr %s14, ptr %t610, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t611, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t612)
  br label %bb130
bb130:
  %t613 = load i64, ptr %l8, !tbaa !24
  %t614 = load i64, ptr %l25, !tbaa !24
  store i64 %t614, ptr %l298, !tbaa !24
  %t615 = load i64, ptr %l298, !tbaa !24
  %t616 = load i64, ptr %l298, !tbaa !24
  %t617 = shl i64 1, %t616
  %t620 = or i64 %t613, %t617
  store i64 %t620, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s14)
  br label %bb131
bb131:
  %t622 = load i64, ptr %l24, !tbaa !24
  %t624 = add i64 %t622, 1
  store i64 %t624, ptr %l24, !tbaa !24
  br label %bb74
bb132:
  %t626 = load i64, ptr %l8, !tbaa !24
  %t628 = icmp eq i64 %t626, 0
  br i1 %t628, label %bb133, label %bb134
bb133:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb134:
  br label %bb135
bb135:
  %t632 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t632, ptr %l307
  br label %bb136
bb136:
  %t633 = load { i64, ptr }, ptr %l307, !tbaa !27
  store { i64, ptr } %t633, ptr %l31, !tbaa !27
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t636 = getelementptr %"compiler/scope:Scoper", ptr %t634, i32 0, i32 236
  %t637 = load ptr, ptr %t636, !tbaa !29
  %t639 = getelementptr %"compiler/scope:twinTab", ptr %t637, i32 0, i32 0
  %t640 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t643 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %v0, ptr %t639, { i64, ptr } %t640)
  %t644 = extractvalue { i32, i64 } %t643, 1
  %t645 = extractvalue { i32, i64 } %t643, 0
  store i32 %t645, ptr %l314
  %t646 = icmp ne i32 %t645, 0
  br i1 %t646, label %bb138, label %ok.647, !prof !99
ok.647:
  store i64 %t644, ptr %l313
  br label %bb137
bb137:
  %t648 = load i64, ptr %l313, !tbaa !24
  store i64 %t648, ptr %l308, !tbaa !24
  br label %bb140
bb138:
  br label %bb139
bb139:
  store i64 -1, ptr %l308, !tbaa !24
  br label %bb140
bb140:
  %t649 = load i64, ptr %l308, !tbaa !24
  store i64 %t649, ptr %l32, !tbaa !24
  %t650 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t653 = getelementptr %"compiler/scope:Scoper", ptr %t651, i32 0, i32 237
  %t654 = load { i64, ptr }, ptr %t653, !tbaa !27
  %t657 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t650, { i64, ptr } %t654)
  store i1 %t657, ptr %l318
  br label %bb141
bb141:
  %t658 = load i1, ptr %l318, !tbaa !21
  br i1 %t658, label %bb142, label %bb143
bb142:
  %t659 = load i64, ptr %l32, !tbaa !24
  %t661 = icmp sge i64 %t659, 0
  store i1 %t661, ptr %l319, !tbaa !21
  br label %bb144
bb143:
  store i1 false, ptr %l319, !tbaa !21
  br label %bb144
bb144:
  %t663 = load i1, ptr %l319, !tbaa !21
  br i1 %t663, label %bb145, label %bb146
bb145:
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t665 = load ptr, ptr %l1, !tbaa !29
  %t666 = load i64, ptr %l32, !tbaa !24
  %t667 = load i64, ptr %l8, !tbaa !24
  %t672 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinMarked(ptr %v0, ptr %v1, ptr %t664, ptr %t665, i64 %t666, i64 %t667)
  store i64 %t672, ptr %l326
  br label %bb147
bb146:
  br label %bb148
bb147:
  call void @__olang_scope_close(ptr %s0)
  %t673 = load i64, ptr %l326, !tbaa !24
  store i64 %t673, ptr %rv
  br label %ret
bb148:
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t675 = load i64, ptr %l2, !tbaa !24
  %t678 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t674, i64 %t675)
  store ptr %t678, ptr %l329
  br label %bb149
bb149:
  %t679 = load ptr, ptr %l329, !tbaa !29
  %t681 = getelementptr %"compiler/scope:summary", ptr %t679, i32 0, i32 20
  %t682 = load i1, ptr %t681, !tbaa !21
  %t684 = xor i1 %t682, true
  br i1 %t684, label %bb150, label %bb151
bb150:
  store i1 true, ptr %l333, !tbaa !21
  br label %bb153
bb151:
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t687 = load i64, ptr %l2, !tbaa !24
  %t690 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t686, i64 %t687)
  store ptr %t690, ptr %l336
  br label %bb152
bb152:
  %t691 = load ptr, ptr %l336, !tbaa !29
  %t693 = getelementptr %"compiler/scope:summary", ptr %t691, i32 0, i32 21
  %t694 = load i1, ptr %t693, !tbaa !21
  store i1 %t694, ptr %l333, !tbaa !21
  br label %bb153
bb153:
  %t696 = load i1, ptr %l333, !tbaa !21
  br i1 %t696, label %bb154, label %bb155
bb154:
  store i1 true, ptr %l339, !tbaa !21
  br label %bb157
bb155:
  %t697 = load i64, ptr %l2, !tbaa !24
  store i64 %t697, ptr %l340, !tbaa !24
  %t698 = load ptr, ptr %l0, !tbaa !29
  %t700 = getelementptr %"compiler/scope:Scoper", ptr %t698, i32 0, i32 255
  %t702 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t700)
  store i64 %t702, ptr %l343
  br label %bb156
bb156:
  %t703 = load i64, ptr %l340, !tbaa !24
  %t704 = load i64, ptr %l343, !tbaa !24
  %t705 = icmp sge i64 %t703, %t704
  store i1 %t705, ptr %l339, !tbaa !21
  br label %bb157
bb157:
  %t707 = load i1, ptr %l339, !tbaa !21
  br i1 %t707, label %bb158, label %bb159
bb158:
  store i1 true, ptr %l345, !tbaa !21
  br label %bb161
bb159:
  %t708 = load ptr, ptr %l0, !tbaa !29
  %t710 = getelementptr %"compiler/scope:Scoper", ptr %t708, i32 0, i32 255
  %t711 = load i64, ptr %l2, !tbaa !24
  %t714 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t710, i64 %t711)
  store i64 %t714, ptr %l349
  br label %bb160
bb160:
  %t715 = load i64, ptr %l349, !tbaa !24
  %t716 = icmp sgt i64 %t715, 1
  store i1 %t716, ptr %l345, !tbaa !21
  br label %bb161
bb161:
  %t718 = load i1, ptr %l345, !tbaa !21
  br i1 %t718, label %bb162, label %bb163
bb162:
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t720 = load ptr, ptr %l1, !tbaa !29
  %t721 = load i64, ptr %l8, !tbaa !24
  %t725 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinLimited(ptr %v0, ptr %v1, ptr %t719, ptr %t720, i64 %t721)
  store i64 %t725, ptr %l354
  br label %bb164
bb163:
  br label %bb165
bb164:
  call void @__olang_scope_close(ptr %s0)
  %t726 = load i64, ptr %l354, !tbaa !24
  store i64 %t726, ptr %rv
  br label %ret
bb165:
  %t727 = load i64, ptr %l32, !tbaa !24
  %t729 = icmp slt i64 %t727, 0
  br i1 %t729, label %bb166, label %bb167
bb166:
  %t731 = load ptr, ptr %l0, !tbaa !29
  %t732 = load i64, ptr %l2, !tbaa !24
  %t735 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinRoom(ptr %v0, ptr %t731, i64 %t732)
  store i1 %t735, ptr %l359
  br label %bb168
bb167:
  br label %bb174
bb168:
  %t736 = load i1, ptr %l359, !tbaa !21
  %t737 = xor i1 %t736, true
  br i1 %t737, label %bb169, label %bb170
bb169:
  %t739 = load ptr, ptr %l0, !tbaa !29
  %t740 = load ptr, ptr %l1, !tbaa !29
  %t741 = load i64, ptr %l8, !tbaa !24
  %t745 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinLimited(ptr %v0, ptr %v1, ptr %t739, ptr %t740, i64 %t741)
  store i64 %t745, ptr %l364
  br label %bb171
bb170:
  br label %bb172
bb171:
  call void @__olang_scope_close(ptr %s0)
  %t746 = load i64, ptr %l364, !tbaa !24
  store i64 %t746, ptr %rv
  br label %ret
bb172:
  %t747 = load ptr, ptr %l0, !tbaa !29
  %t748 = load i64, ptr %l2, !tbaa !24
  %t749 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t750 = load ptr, ptr %lp19
  %t751 = load %"compiler/source:Span", ptr %l3
  %t758 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewTwin(ptr %v0, ptr %s0, ptr %s0, ptr %v0, ptr %t747, i64 %t748, { i64, ptr } %t749, ptr %l7, ptr %t750, %"compiler/source:Span" %t751)
  store i64 %t758, ptr %l371
  br label %bb173
bb173:
  %t759 = load i64, ptr %l371, !tbaa !24
  store i64 %t759, ptr %l32, !tbaa !24
  br label %bb174
bb174:
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t762 = getelementptr %"compiler/scope:Scoper", ptr %t760, i32 0, i32 236
  %t763 = load ptr, ptr %t762, !tbaa !29
  %t765 = getelementptr %"compiler/scope:twinTab", ptr %t763, i32 0, i32 9
  %t766 = load i64, ptr %l32, !tbaa !24
  %t769 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t765, i64 %t766)
  store i64 %t769, ptr %l376
  br label %bb175
bb175:
  %t770 = load ptr, ptr %l0, !tbaa !29
  %t772 = getelementptr %"compiler/scope:Scoper", ptr %t770, i32 0, i32 236
  %t773 = load ptr, ptr %t772, !tbaa !29
  %t775 = getelementptr %"compiler/scope:twinTab", ptr %t773, i32 0, i32 10
  %t776 = load i64, ptr %t775, !tbaa !24
  %t777 = load i64, ptr %l376, !tbaa !24
  %t779 = icmp ne i64 %t777, %t776
  br i1 %t779, label %bb176, label %bb177
bb176:
  store i1 true, ptr %l381, !tbaa !21
  br label %bb178
bb177:
  %t781 = load ptr, ptr %l0, !tbaa !29
  %t783 = getelementptr %"compiler/scope:Scoper", ptr %t781, i32 0, i32 29
  %t784 = load i1, ptr %t783, !tbaa !21
  store i1 %t784, ptr %l381, !tbaa !21
  br label %bb178
bb178:
  %t786 = load i1, ptr %l381, !tbaa !21
  br i1 %t786, label %bb179, label %bb180
bb179:
  %t787 = load ptr, ptr %l0, !tbaa !29
  %t788 = load i64, ptr %l32, !tbaa !24
  %t789 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeTwin(ptr %v0, ptr %t787, i64 %t788, %"compiler/source:Span" %t789)
  br label %bb181
bb180:
  br label %bb182
bb181:
  br label %bb182
bb182:
  %t793 = load ptr, ptr %l0, !tbaa !29
  %t794 = load ptr, ptr %l1, !tbaa !29
  %t795 = load i64, ptr %l32, !tbaa !24
  %t796 = load i64, ptr %l8, !tbaa !24
  %t801 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinMarked(ptr %v0, ptr %v1, ptr %t793, ptr %t794, i64 %t795, i64 %t796)
  store i64 %t801, ptr %l391
  br label %bb183
bb183:
  call void @__olang_scope_close(ptr %s0)
  %t802 = load i64, ptr %l391, !tbaa !24
  store i64 %t802, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinLimited(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 307
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 252
  %t9 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 2
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = sext i32 %t10 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t6, i64 %t12, i64 %a2)
  br label %bb1
bb1:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l34 = alloca i1
  %l39 = alloca i32
  %l43 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i1
  %l70 = alloca i64
  %l73 = alloca i64
  %l93 = alloca { i64, ptr }
  %l97 = alloca ptr
  %l101 = alloca i64
  %l104 = alloca i1
  %l108 = alloca i1
  %l111 = alloca i1
  %l114 = alloca i1
  %l119 = alloca i1
  %l124 = alloca i1
  %l132 = alloca i1
  %l143 = alloca i1
  %l148 = alloca i1
  %l153 = alloca i1
  %l157 = alloca { i64, ptr }
  %l162 = alloca i1
  %s0 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l5, !tbaa !29
  store ptr %t6, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t7 = load ptr, ptr %l22, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l22, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l23, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l23, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { ptr }, ptr %t17, i32 0, i32 0
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l6, !tbaa !29
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t32 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t21, ptr %t22, ptr %t23, i64 %t25, i64 %t26)
  store i1 %t32, ptr %l34
  br label %bb6
bb6:
  %t33 = load i1, ptr %l34, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_9fb611f043b26d24_95688250bda0b8e8)
  unreachable
bb15:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t41 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v2, ptr %t37, ptr %t38)
  store i32 %t41, ptr %l39
  br label %bb16
bb16:
  %t42 = load i32, ptr %l39, !tbaa !23
  store i32 %t42, ptr %l7, !tbaa !23
  %t43 = load i32, ptr %l7, !tbaa !23
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t47 = icmp ne i32 %t43, %t44
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l46, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l7, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l51
  br label %bb19
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i32] }>, ptr @.d60, i32 0, i32 1) }, ptr %l43, !tbaa !27
  br label %bb21
bb19:
  %t65 = load ptr, ptr %l46, !tbaa !29
  %t66 = load i32, ptr %l51, !tbaa !23
  %t67 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t65, i32 %t66)
  store { i64, ptr } %t67, ptr %l52
  br label %bb20
bb20:
  %t68 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t68, ptr %l43, !tbaa !27
  br label %bb21
bb21:
  %t69 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t69, ptr %l8, !tbaa !27
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Call", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  store ptr %t73, ptr %l9, !tbaa !29
  %t75 = load ptr, ptr %l9, !tbaa !29
  store ptr %t75, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t76 = load ptr, ptr %l56, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t79 = load ptr, ptr %l56, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 5}
  %t82 = icmp eq i64 %t80, 0
  store i1 %t82, ptr %l57, !tbaa !21
  br label %bb23
bb23:
  %t83 = load i1, ptr %l57, !tbaa !21
  br i1 %t83, label %bb24, label %bb25
bb24:
  %t84 = load ptr, ptr %l9, !tbaa !29
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { i32 }, ptr %t86, i32 0, i32 0
  %t88 = load i32, ptr %t87
  store i32 %t88, ptr %l10, !tbaa !23
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t90 = load i32, ptr %l10, !tbaa !23
  %t92 = sext i32 %t90 to i64
  store i64 %t92, ptr %l55, !tbaa !24
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i64 -1, ptr %l55, !tbaa !24
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_e8bf6938cb5cdc15_c4d69faab420a8b9)
  unreachable
bb32:
  %t94 = load i64, ptr %l55, !tbaa !24
  store i64 %t94, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Call", ptr %t95, i32 0, i32 1
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  store i64 %t100, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t102 = load i64, ptr %l13, !tbaa !24
  %t103 = load i64, ptr %l12, !tbaa !24
  %t106 = icmp sgt i64 %t102, %t103
  br i1 %t106, label %bb33, label %bb34
bb33:
  %t108 = load i64, ptr %l14, !tbaa !24
  %t110 = icmp sgt i64 %t108, 0
  br i1 %t110, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb38
bb35:
  %t112 = load i64, ptr %l13, !tbaa !24
  %t113 = load i64, ptr %l12, !tbaa !24
  %t116 = sub i64 %t112, %t113
  %t117 = load i64, ptr %l14, !tbaa !24
  %t120 = add i64 %t116, %t117
  %t122 = sub i64 %t120, 1
  %t123 = load i64, ptr %l14, !tbaa !24
  %t126 = sdiv i64 %t122, %t123
  store i64 %t126, ptr %l73, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb37
bb37:
  %t128 = load i64, ptr %l73, !tbaa !24
  store i64 %t128, ptr %l70, !tbaa !24
  br label %bb38
bb38:
  %t129 = load i64, ptr %l70, !tbaa !24
  store i64 %t129, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb39
bb39:
  %t130 = load i64, ptr %l16, !tbaa !24
  %t131 = load i64, ptr %l15, !tbaa !24
  %t134 = icmp slt i64 %t130, %t131
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb40, label %bb41
bb40:
  br label %bb87
bb41:
  br label %bb42
bb42:
  %t138 = load i64, ptr %l12, !tbaa !24
  %t139 = load i64, ptr %l16, !tbaa !24
  %t140 = load i64, ptr %l14, !tbaa !24
  %t143 = mul i64 %t139, %t140
  %t146 = add i64 %t138, %t143
  store i64 %t146, ptr %l17, !tbaa !24
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Call", ptr %t149, i32 0, i32 1
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  store { i64, ptr } %t152, ptr %l93, !tbaa !27
  %t153 = load i64, ptr %l17, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr ptr, ptr %t156, i64 %t153
  %t158 = load ptr, ptr %t157, !tbaa !39
  %t162 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v2, ptr %v2, ptr %t148, ptr %t158)
  store ptr %t162, ptr %l97
  br label %bb43
bb43:
  %t163 = load ptr, ptr %l97, !tbaa !29
  store ptr %t163, ptr %l18, !tbaa !29
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l18, !tbaa !29
  %t166 = load i64, ptr %l3, !tbaa !24
  %t170 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandedOn(ptr %v0, ptr %v2, ptr %t164, ptr %t165, i64 %t166)
  store i64 %t170, ptr %l101
  br label %bb44
bb44:
  %t171 = load i64, ptr %l101, !tbaa !24
  store i64 %t171, ptr %l19, !tbaa !24
  %t172 = load i64, ptr %l19, !tbaa !24
  %t174 = icmp eq i64 %t172, 0
  br i1 %t174, label %bb45, label %bb46
bb45:
  %t176 = load i64, ptr %l4, !tbaa !24
  %t177 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t180 = icmp eq i64 %t176, %t177
  store i1 %t180, ptr %l104, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb47
bb47:
  %t182 = load i1, ptr %l104, !tbaa !21
  br i1 %t182, label %bb48, label %bb49
bb48:
  %t183 = load ptr, ptr %l18, !tbaa !29
  %t184 = load i64, ptr %l3, !tbaa !24
  %t187 = call i1 @compiler_2fscope_2eownView(ptr %v2, ptr %t183, i64 %t184)
  store i1 %t187, ptr %l111
  br label %bb50
bb49:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb51
bb50:
  %t188 = load i1, ptr %l111, !tbaa !21
  store i1 %t188, ptr %l108, !tbaa !21
  br label %bb51
bb51:
  %t189 = load i1, ptr %l108, !tbaa !21
  br i1 %t189, label %bb52, label %bb53
bb52:
  %t190 = load i64, ptr %l11, !tbaa !24
  %t192 = icmp slt i64 %t190, 0
  br i1 %t192, label %bb54, label %bb55
bb53:
  br label %bb68
bb54:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb56
bb55:
  %t194 = load i64, ptr %l17, !tbaa !24
  %t195 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t200 = icmp sge i64 %t194, %t197
  store i1 %t200, ptr %l114, !tbaa !21
  br label %bb56
bb56:
  %t202 = load i1, ptr %l114, !tbaa !21
  br i1 %t202, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb60
bb58:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l11, !tbaa !24
  %t205 = load i64, ptr %l17, !tbaa !24
  %t206 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t211 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %t203, i64 %t204, i64 %t205, i64 %t206)
  store i1 %t211, ptr %l124
  br label %bb59
bb59:
  %t212 = load i1, ptr %l124, !tbaa !21
  %t213 = xor i1 %t212, true
  store i1 %t213, ptr %l119, !tbaa !21
  br label %bb60
bb60:
  %t215 = load i1, ptr %l119, !tbaa !21
  br i1 %t215, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t219 = load ptr, ptr %l18, !tbaa !29
  %t220 = load i64, ptr %l3, !tbaa !24
  %t221 = load i64, ptr %l4, !tbaa !24
  %t227 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueSliceBounds(ptr %v0, ptr %v1, ptr %v2, ptr %t217, ptr %t218, ptr %t219, i64 %t220, i64 %t221)
  store i1 %t227, ptr %l132
  br label %bb64
bb64:
  %t228 = load i1, ptr %l132, !tbaa !21
  %t229 = xor i1 %t228, true
  br i1 %t229, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  br label %bb86
bb68:
  %t232 = load i64, ptr %l19, !tbaa !24
  %t234 = icmp eq i64 %t232, 0
  br i1 %t234, label %bb69, label %bb70
bb69:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t238 = load ptr, ptr %l18, !tbaa !29
  %t240 = load i64, ptr %l3, !tbaa !24
  %t241 = load i64, ptr %l4, !tbaa !24
  %t247 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t236, ptr %t237, ptr %t238, i64 %t240, i64 %t241)
  store i1 %t247, ptr %l143
  br label %bb71
bb70:
  br label %bb75
bb71:
  %t248 = load i1, ptr %l143, !tbaa !21
  %t249 = xor i1 %t248, true
  br i1 %t249, label %bb72, label %bb73
bb72:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  br label %bb86
bb75:
  %t252 = load i64, ptr %l11, !tbaa !24
  %t254 = icmp slt i64 %t252, 0
  br i1 %t254, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l148, !tbaa !21
  br label %bb78
bb77:
  %t256 = load i64, ptr %l17, !tbaa !24
  %t257 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t262 = icmp sge i64 %t256, %t259
  store i1 %t262, ptr %l148, !tbaa !21
  br label %bb78
bb78:
  %t264 = load i1, ptr %l148, !tbaa !21
  br i1 %t264, label %bb79, label %bb80
bb79:
  store i1 true, ptr %l153, !tbaa !21
  br label %bb82
bb80:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load i64, ptr %l11, !tbaa !24
  %t267 = load i64, ptr %l17, !tbaa !24
  %t268 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t268, ptr %l157, !tbaa !27
  %t269 = load i64, ptr %l17, !tbaa !24
  %t271 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = getelementptr i32, ptr %t272, i64 %t269
  %t274 = load i32, ptr %t273, !tbaa !33
  %t275 = load i64, ptr %l19, !tbaa !24
  %t276 = load i64, ptr %l4, !tbaa !24
  %t283 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueHanded(ptr %v0, ptr %t265, i64 %t266, i64 %t267, i32 %t274, i64 %t275, i64 %t276)
  store i1 %t283, ptr %l162
  br label %bb81
bb81:
  %t284 = load i1, ptr %l162, !tbaa !21
  %t285 = xor i1 %t284, true
  store i1 %t285, ptr %l153, !tbaa !21
  br label %bb82
bb82:
  %t287 = load i1, ptr %l153, !tbaa !21
  br i1 %t287, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t289 = load i64, ptr %l16, !tbaa !24
  %t291 = add i64 %t289, 1
  store i64 %t291, ptr %l16, !tbaa !24
  br label %bb39
bb87:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %t2)
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
  %t15 = icmp eq i64 %t13, 5
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
  br label %bb7
bb6:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Promote", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l8, !tbaa !29
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l8, !tbaa !29
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_f9519574182490d7_42fc30f708795ccb)
  unreachable
bb12:
  %t30 = load ptr, ptr %l8, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunderOf(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:verAtom"
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca %"compiler/scope:verAtom"
  %l21 = alloca { i64, [2 x i64] }
  %l33 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t21 = alloca { i64, [2 x i64] }, align 8
  %t84 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/scope:verAtom" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 194
  %t4 = load %"compiler/scope:verAtom", ptr %l1
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H7feb99756ef3806dc9fbf0cf3216792e(ptr %v0, ptr %t3, %"compiler/scope:verAtom" %t4)
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
  store i64 0, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l5, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 2
  %t20 = load i64, ptr %t19, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 0
  store i64 4, ptr %t22
  %t24 = insertvalue { i64, i64 } undef, i64 %t18, 0
  %t26 = insertvalue { i64, i64 } %t24, i64 %t20, 1
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  store { i64, i64 } %t26, ptr %t27
  %t28 = load { i64, [2 x i64] }, ptr %t21
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t28, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l16, !tbaa !29
  %t31 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 3
  %t32 = load i64, ptr %t31, !tbaa !24
  %t33 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 4
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 5
  %t36 = load i64, ptr %t35, !tbaa !24
  %t40 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s0, i64 %t32, i64 %t34, i64 %t36, i64 0, i64 0, i64 0, i1 false, i64 -1)
  store %"compiler/scope:verAtom" %t40, ptr %l20
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l16, !tbaa !29
  %t42 = load %"compiler/scope:verAtom", ptr %l20
  %t43 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomTerm(ptr %v0, ptr %t41, %"compiler/scope:verAtom" %t42)
  store { i64, [2 x i64] } %t43, ptr %l21
  br label %bb9
bb9:
  %t44 = load { i64, [2 x i64] }, ptr %l21
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %t45, i32 0, i32 115
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t47, { i64, [2 x i64] } %t44)
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 116
  %t54 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 6
  %t55 = load i1, ptr %t54, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t53, i1 %t55)
  br label %bb11
bb11:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 117
  %t61 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 7
  %t62 = load i64, ptr %t61, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t60, i64 %t62)
  br label %bb12
bb12:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 115
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t67)
  store i64 %t69, ptr %l33
  br label %bb13
bb13:
  %t70 = load i64, ptr %l33, !tbaa !24
  %t71 = sub i64 0, %t70
  store i64 %t71, ptr %l4, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/scope:Scoper", ptr %t73, i32 0, i32 194
  %t76 = load %"compiler/scope:verAtom", ptr %l1
  %t77 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_Hb2687b8a10fef42af6310eb22cb740bf(ptr %v0, ptr %t75, %"compiler/scope:verAtom" %t76, i64 %t77)
  br label %bb14
bb14:
  %t81 = load i64, ptr %l4, !tbaa !24
  %t82 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 2
  %t83 = load i64, ptr %t82, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t84
  %t85 = getelementptr { i64, [2 x i64] }, ptr %t84, i32 0, i32 0
  store i64 4, ptr %t85
  %t87 = insertvalue { i64, i64 } undef, i64 %t81, 0
  %t89 = insertvalue { i64, i64 } %t87, i64 %t83, 1
  %t90 = getelementptr { i64, [2 x i64] }, ptr %t84, i32 0, i32 1
  store { i64, i64 } %t89, ptr %t90
  %t91 = load { i64, [2 x i64] }, ptr %t84
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t91, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunknownMark(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l16 = alloca %"compiler/typed:Local"
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l27 = alloca ptr
  %l37 = alloca %"compiler/typed:Local"
  %l39 = alloca { i64, ptr }
  %l40 = alloca %"compiler/source:Span"
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 27
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_a0aebb439496dd48_72f2a186105a9dbc)
  unreachable
bb2:
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 27
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 7
  %t25 = load i32, ptr %l1, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t24, i64 %t27)
  store %"compiler/typed:Local" %t30, ptr %l16
  br label %bb4
bb4:
  %t31 = getelementptr %"compiler/typed:Local", ptr %l16, i32 0, i32 0
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = load ptr, ptr %l6, !tbaa !29
  %t35 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t33, i32 %t32)
  store { i64, ptr } %t35, ptr %l18
  br label %bb5
bb5:
  %t36 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t37 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s0, { i64, ptr } %t36)
  store { i64, ptr } %t37, ptr %l19
  br label %bb6
bb6:
  %t38 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t38, ptr %l2, !tbaa !27
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l20, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l21, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 42
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/load:Loader", ptr %t51, i32 0, i32 3
  %t54 = load ptr, ptr %t53, !tbaa !29
  store ptr %t54, ptr %l27, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 27
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  br i1 %t60, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_fe020d14e9f70167_4a4a3d953174892b)
  unreachable
bb8:
  br label %bb9
bb9:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 27
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Body", ptr %t65, i32 0, i32 7
  %t69 = load i32, ptr %l1, !tbaa !23
  %t71 = sext i32 %t69 to i64
  %t74 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t68, i64 %t71)
  store %"compiler/typed:Local" %t74, ptr %l37
  br label %bb10
bb10:
  %t75 = getelementptr %"compiler/typed:Local", ptr %l37, i32 0, i32 0
  %t76 = load i32, ptr %t75, !tbaa !23
  %t77 = load ptr, ptr %l27, !tbaa !29
  %t79 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t77, i32 %t76)
  store { i64, ptr } %t79, ptr %l39
  br label %bb11
bb11:
  %t80 = load ptr, ptr %l21, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l23
  %t82 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t83 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emarkAt(ptr %v0, ptr %v0, ptr %t80, %"compiler/source:Span" %t81, { i64, ptr } %t82)
  store %"compiler/source:Span" %t83, ptr %l40
  br label %bb12
bb12:
  %t84 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t88 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTagUnknownScope(ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t84, { i64, ptr } %t85)
  store %"compiler/diagmsg:Msg" %t88, ptr %l43
  br label %bb13
bb13:
  %t89 = load ptr, ptr %l20, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l40
  %t91 = load %"compiler/diagmsg:Msg", ptr %l43
  %t92 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t89, %"compiler/source:Span" %t90, %"compiler/diagmsg:Msg" %t91)
  store i64 %t92, ptr %l44
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalText(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l24 = alloca i1
  %l33 = alloca %"compiler/scope:Val"
  %l37 = alloca %"compiler/scope:Val"
  %rv = alloca %"compiler/scope:Val"
  %t53 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Text", ptr %t2, i32 0, i32 1
  %t5 = load i32, ptr %t4, !tbaa !23
  %t6 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t1, i32 %t5, { i64, [2 x i64] } %t6)
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Text", ptr %t10, i32 0, i32 0
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  br label %bb5
bb5:
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t27, ptr %l20, !tbaa !27
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr ptr, ptr %t31, i64 %t28
  %t33 = load ptr, ptr %t32, !tbaa !39
  store ptr %t33, ptr %l6, !tbaa !29
  %t35 = load ptr, ptr %l6, !tbaa !29
  store ptr %t35, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t36 = load ptr, ptr %l23, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 2}
  %t42 = icmp eq i64 %t40, 1
  store i1 %t42, ptr %l24, !tbaa !21
  br label %bb7
bb7:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb8, label %bb9
bb8:
  %t44 = load ptr, ptr %l6, !tbaa !29
  %t46 = getelementptr { i64, [2 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { ptr }, ptr %t46, i32 0, i32 0
  %t48 = load ptr, ptr %t47
  %t50 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t53
  %t54 = getelementptr { i64, [2 x i64] }, ptr %t53, i32 0, i32 0
  store i64 0, ptr %t54
  %t55 = load { i64, [2 x i64] }, ptr %t53
  %t59 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t50, ptr %t48, { i64, [2 x i64] } %t55)
  store %"compiler/scope:Val" %t59, ptr %l33
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l4, !tbaa !24
  br label %bb2
bb13:
  %t64 = load { i64, [2 x i64] }, ptr %l2
  %t66 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %t64)
  store %"compiler/scope:Val" %t66, ptr %l37
  br label %bb14
bb14:
  %t67 = load %"compiler/scope:Val", ptr %l37
  store %"compiler/scope:Val" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueArgBy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/scope:fnRecs"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/scope:fnRec"
  %l8 = alloca i64
  %l10 = alloca %"compiler/scope:fnRecs"
  %l16 = alloca %"compiler/scope:fnRecs"
  %l17 = alloca i32
  %l19 = alloca %"compiler/scope:fnRecs"
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/scope:fnRec"
  %l34 = alloca i64
  %l40 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  %l51 = alloca i1
  %l55 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 101
  %t6 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 2
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t12 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v0, ptr %t3, i64 %t9)
  %t13 = extractvalue { i32, %"compiler/scope:fnRecs" } %t12, 1
  %t14 = extractvalue { i32, %"compiler/scope:fnRecs" } %t12, 0
  store i32 %t14, ptr %l17
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb2, label %ok.16, !prof !99
ok.16:
  store %"compiler/scope:fnRecs" %t13, ptr %l16
  br label %bb1
bb1:
  %t18 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s0, ptr %l16)
  store %"compiler/scope:fnRecs" %t18, ptr %l19
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb4:
  %t20 = load %"compiler/scope:fnRecs", ptr %l19
  store %"compiler/scope:fnRecs" %t20, ptr %l10
  br label %bb5
bb5:
  %t21 = load %"compiler/scope:fnRecs", ptr %l10
  store %"compiler/scope:fnRecs" %t21, ptr %l4
  %t22 = getelementptr %"compiler/scope:fnRecs", ptr %l4, i32 0, i32 1
  %t23 = load i1, ptr %t22, !tbaa !21
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = getelementptr %"compiler/scope:fnRecs", ptr %l4, i32 0, i32 0
  store ptr %t28, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t30 = load i64, ptr %l6, !tbaa !24
  store i64 %t30, ptr %l25, !tbaa !24
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t31)
  store i64 %t33, ptr %l27
  br label %bb10
bb10:
  %t34 = load i64, ptr %l25, !tbaa !24
  %t35 = load i64, ptr %l27, !tbaa !24
  %t36 = icmp slt i64 %t34, %t35
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb11, label %bb12
bb11:
  br label %bb31
bb12:
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t40, i64 %t41)
  store %"compiler/scope:fnRec" %t44, ptr %l32
  br label %bb14
bb14:
  %t45 = load %"compiler/scope:fnRec", ptr %l32
  store %"compiler/scope:fnRec" %t45, ptr %l7
  %t46 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 2
  %t47 = load i1, ptr %t46, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l34, !tbaa !24
  br label %bb17
bb16:
  %t53 = load i64, ptr %l2, !tbaa !24
  store i64 %t53, ptr %l34, !tbaa !24
  br label %bb17
bb17:
  %t55 = load i64, ptr %l34, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = icmp eq i64 %t56, 0
  br i1 %t58, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 0
  %t62 = load i64, ptr %t61, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t67 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumKeeps(ptr %v0, ptr %t60, i64 %t62, i64 %t63)
  store i1 %t67, ptr %l44
  br label %bb20
bb19:
  %t68 = load i64, ptr %l3, !tbaa !24
  %t70 = icmp eq i64 %t68, 1
  br i1 %t70, label %bb21, label %bb22
bb20:
  %t72 = load i1, ptr %l44, !tbaa !21
  store i1 %t72, ptr %l40, !tbaa !21
  br label %bb26
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 0
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t80 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumPuts(ptr %v0, ptr %t73, i64 %t75, i64 %t76)
  store i1 %t80, ptr %l51
  br label %bb23
bb22:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  %t88 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %t81, i64 %t83, i64 %t84)
  store i1 %t88, ptr %l55
  br label %bb24
bb23:
  %t89 = load i1, ptr %l51, !tbaa !21
  store i1 %t89, ptr %l47, !tbaa !21
  br label %bb25
bb24:
  %t90 = load i1, ptr %l55, !tbaa !21
  store i1 %t90, ptr %l47, !tbaa !21
  br label %bb25
bb25:
  %t91 = load i1, ptr %l47, !tbaa !21
  store i1 %t91, ptr %l40, !tbaa !21
  br label %bb26
bb26:
  %t92 = load i1, ptr %l40, !tbaa !21
  br i1 %t92, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t96 = load i64, ptr %l6, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l6, !tbaa !24
  br label %bb9
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eversionsDiffer(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l28 = alloca ptr
  %l37 = alloca %"compiler/typed:Local"
  %l39 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca i64
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l51 = alloca i64
  %l56 = alloca i64
  %l60 = alloca %"compiler/source:Span"
  %l63 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i64
  %l74 = alloca i64
  %l78 = alloca %"compiler/source:Span"
  %l80 = alloca %"compiler/diagmsg:Msg"
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 195
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %a2)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l16
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l15
  br label %bb1
bb1:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l11, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l11, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 167
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_902232b6dd8d0696_1dd7740f0a73924a)
  unreachable
bb9:
  br label %bb10
bb10:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 167
  %t29 = load ptr, ptr %t28, !tbaa !29
  store ptr %t29, ptr %l4, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/load:Loader", ptr %t37, i32 0, i32 3
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l28, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 27
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_13bffa23f71fb67d_39ab2ce74b1a8b51)
  unreachable
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 27
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t51, i32 0, i32 7
  %t55 = load i64, ptr %l3, !tbaa !24
  %t58 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t54, i64 %t55)
  store %"compiler/typed:Local" %t58, ptr %l37
  br label %bb14
bb14:
  %t59 = getelementptr %"compiler/typed:Local", ptr %l37, i32 0, i32 0
  %t60 = load i32, ptr %t59, !tbaa !23
  %t61 = load ptr, ptr %l28, !tbaa !29
  %t63 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t61, i32 %t60)
  store { i64, ptr } %t63, ptr %l39
  br label %bb15
bb15:
  %t64 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t64, ptr %l5, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l40, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l41
  %t67 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t69 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVersionsDiffer(ptr %v0, ptr %v0, { i64, ptr } %t67)
  store %"compiler/diagmsg:Msg" %t69, ptr %l43
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l41
  %t72 = load %"compiler/diagmsg:Msg", ptr %l43
  %t73 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t70, %"compiler/source:Span" %t71, %"compiler/diagmsg:Msg" %t72)
  store i64 %t73, ptr %l44
  br label %bb17
bb17:
  %t74 = load i64, ptr %l44, !tbaa !24
  store i64 %t74, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s2
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l3, !tbaa !24
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereachFor(ptr %v0, ptr %s2, ptr %t75, i64 %t76, i64 -1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l47
  br label %bb18
bb18:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  %t81 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  store ptr %t81, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb19
bb19:
  %t83 = load i64, ptr %l9, !tbaa !24
  store i64 %t83, ptr %l49, !tbaa !24
  %t84 = load ptr, ptr %l8, !tbaa !29
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t84)
  store i64 %t86, ptr %l51
  br label %bb20
bb20:
  %t87 = load i64, ptr %l49, !tbaa !24
  %t88 = load i64, ptr %l51, !tbaa !24
  %t89 = icmp slt i64 %t87, %t88
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb21, label %bb22
bb21:
  br label %bb39
bb22:
  br label %bb23
bb23:
  %t93 = load ptr, ptr %l8, !tbaa !29
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t93, i64 %t94)
  store i64 %t97, ptr %l56
  br label %bb24
bb24:
  %t98 = load i64, ptr %l56, !tbaa !24
  store i64 %t98, ptr %l10, !tbaa !24
  %t99 = load ptr, ptr %l4, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Versions", ptr %t99, i32 0, i32 4
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t101, i64 %t102)
  store %"compiler/source:Span" %t105, ptr %l60
  br label %bb25
bb25:
  %t106 = getelementptr %"compiler/source:Span", ptr %l60, i32 0, i32 0
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = icmp slt i32 %t107, 0
  br i1 %t109, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb28
bb27:
  %t111 = load i64, ptr %l7, !tbaa !24
  %t113 = icmp eq i64 %t111, 4
  store i1 %t113, ptr %l63, !tbaa !21
  br label %bb28
bb28:
  %t115 = load i1, ptr %l63, !tbaa !21
  br i1 %t115, label %bb29, label %bb30
bb29:
  br label %bb38
bb30:
  br label %bb31
bb31:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l66, !tbaa !29
  %t117 = load i64, ptr %l6, !tbaa !24
  store i64 %t117, ptr %l67, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/scope:Scoper", ptr %t118, i32 0, i32 27
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = icmp eq ptr %t121, null
  br i1 %t123, label %bb32, label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_bb411cb9985695a8_9ee393c5b6d8495c)
  unreachable
bb33:
  br label %bb34
bb34:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 27
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Body", ptr %t128, i32 0, i32 3
  %t132 = load i64, ptr %t131, !tbaa !24
  store i64 %t132, ptr %l74, !tbaa !24
  %t133 = load ptr, ptr %l4, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Versions", ptr %t133, i32 0, i32 4
  %t136 = load i64, ptr %l10, !tbaa !24
  %t139 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t135, i64 %t136)
  store %"compiler/source:Span" %t139, ptr %l78
  br label %bb35
bb35:
  %t140 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t142 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteAssignedHere(ptr %v0, ptr %v0, { i64, ptr } %t140)
  store %"compiler/diagmsg:Msg" %t142, ptr %l80
  br label %bb36
bb36:
  %t143 = load ptr, ptr %l66, !tbaa !29
  %t144 = load i64, ptr %l67, !tbaa !24
  %t145 = load i64, ptr %l74, !tbaa !24
  %t146 = load %"compiler/source:Span", ptr %l78
  %t147 = load %"compiler/diagmsg:Msg", ptr %l80
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t143, i64 %t144, i64 %t145, %"compiler/source:Span" %t146, %"compiler/diagmsg:Msg" %t147)
  br label %bb37
bb37:
  %t148 = load i64, ptr %l7, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l7, !tbaa !24
  br label %bb38
bb38:
  %t152 = load i64, ptr %l9, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l9, !tbaa !24
  br label %bb19
bb39:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewant(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 229
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i1, ptr %l5, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 275
  %t14 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t13, i64 %t14)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 229
  %t20 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t19, i64 %t20, i1 true)
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 273
  %t26 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t25, i64 %t26)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2econstItems(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l12 = alloca i1
  %l16 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
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
  br label %bb10
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 2 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Make", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t28 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_61, 0
  %t29 = insertvalue { ptr, ptr } %t28, ptr null, 1
  %t32 = extractvalue { ptr, ptr } %t29, 0
  %t33 = extractvalue { ptr, ptr } %t29, 1
  %t34 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2ftyped_3aExpr_26_3e_2eEvery_3ccompiler_2ftyped_3aExpr_26_2c_20_3f_3e(ptr %v0, ptr %s1, { i64, ptr } %t27, ptr %t32, ptr %t33)
  store i1 %t34, ptr %l16
  br label %bb8
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb9
bb8:
  %t35 = load i1, ptr %l16, !tbaa !21
  store i1 %t35, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l12, !tbaa !21
  store i1 %t36, ptr %l2, !tbaa !21
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_3b030e9c71c76e3c_802f138a7c320818)
  unreachable
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t37 = load i1, ptr %l2, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecopyNode(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/scope:instNode"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/scope:fnRecs"
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l22 = alloca %"compiler/scope:instNode"
  %l24 = alloca %"compiler/scope:instNode"
  %l25 = alloca ptr
  %l26 = alloca i32
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i64
  %l60 = alloca %"compiler/scope:fnRecs"
  %l64 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca i64
  %l68 = alloca %"compiler/scope:fnRecs"
  %l70 = alloca %"compiler/scope:fnRecs"
  %l73 = alloca i64
  %l77 = alloca ptr
  %l80 = alloca i64
  %l82 = alloca i64
  %l86 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:instTree", ptr %t1, i32 0, i32 0
  %t7 = call %"compiler/scope:instNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eAt_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/scope:instNode" %t7, ptr %l22
  br label %bb1
bb1:
  %t9 = call %"compiler/scope:instNode" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstNode(ptr %s0, ptr %l22)
  store %"compiler/scope:instNode" %t9, ptr %l24
  br label %bb2
bb2:
  %t10 = load %"compiler/scope:instNode", ptr %l24
  store %"compiler/scope:instNode" %t10, ptr %l3
  %t11 = load ptr, ptr %l2, !tbaa !29
  store ptr %t11, ptr %l25, !tbaa !29
  %t12 = getelementptr %"compiler/scope:instNode", ptr %l3, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l26, !tbaa !23
  %t14 = getelementptr %"compiler/scope:instNode", ptr %l3, i32 0, i32 1
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eLen_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %t14)
  store i64 %t16, ptr %l28
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l25, !tbaa !29
  %t18 = load i32, ptr %l26, !tbaa !23
  %t19 = load i64, ptr %l28, !tbaa !24
  %t20 = call i64 @compiler_2fscope_2enewNode(ptr %v1, ptr %t17, i32 %t18, i64 %t19)
  store i64 %t20, ptr %l29
  br label %bb4
bb4:
  %t21 = load i64, ptr %l29, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t22 = getelementptr %"compiler/scope:instNode", ptr %l3, i32 0, i32 1
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eLen_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %t22)
  store i64 %t24, ptr %l31
  br label %bb5
bb5:
  %t25 = load i64, ptr %l31, !tbaa !24
  store i64 %t25, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb6, label %bb7
bb6:
  %t32 = load i64, ptr %l7, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb11
bb8:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l38, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb10
bb10:
  %t52 = load i64, ptr %l38, !tbaa !24
  store i64 %t52, ptr %l35, !tbaa !24
  br label %bb11
bb11:
  %t53 = load i64, ptr %l35, !tbaa !24
  store i64 %t53, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb14:
  br label %bb15
bb15:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l4, !tbaa !24
  store i64 %t72, ptr %l11, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  store i64 %t74, ptr %l12, !tbaa !24
  %t76 = getelementptr %"compiler/scope:instNode", ptr %l3, i32 0, i32 1
  %t77 = load i64, ptr %l10, !tbaa !24
  %t80 = call %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %s2, ptr %t76, i64 %t77)
  store %"compiler/scope:fnRecs" %t80, ptr %l60
  br label %bb16
bb16:
  %t81 = load %"compiler/scope:fnRecs", ptr %l60
  store %"compiler/scope:fnRecs" %t81, ptr %l13
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t84 = getelementptr %"compiler/scope:instTree", ptr %t82, i32 0, i32 0
  %t85 = load i64, ptr %l11, !tbaa !24
  %t88 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v1, ptr %v1, ptr %t84, i64 %t85)
  store ptr %t88, ptr %l64
  br label %bb17
bb17:
  %t89 = load ptr, ptr %l64, !tbaa !29
  %t92 = getelementptr %"compiler/scope:instNode", ptr %t89, i32 0, i32 1
  store ptr %t92, ptr %l66, !tbaa !29
  %t93 = load i64, ptr %l12, !tbaa !24
  store i64 %t93, ptr %l67, !tbaa !24
  %t94 = load %"compiler/scope:fnRecs", ptr %l13
  store %"compiler/scope:fnRecs" %t94, ptr %l68
  %t96 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s2, ptr %l68)
  store %"compiler/scope:fnRecs" %t96, ptr %l70
  br label %bb18
bb18:
  %t97 = load ptr, ptr %l66, !tbaa !29
  %t98 = load i64, ptr %l67, !tbaa !24
  %t99 = load %"compiler/scope:fnRecs", ptr %l70
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eSetAt_3ccompiler_2fscope_3afnRecs_3e(ptr %v1, ptr %s2, ptr %t97, i64 %t98, %"compiler/scope:fnRecs" %t99)
  br label %bb19
bb19:
  %t100 = getelementptr %"compiler/scope:instNode", ptr %l3, i32 0, i32 2
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t100, i64 %t101)
  store i64 %t104, ptr %l73
  br label %bb20
bb20:
  %t105 = load i64, ptr %l73, !tbaa !24
  %t106 = icmp sge i64 %t105, 0
  br i1 %t106, label %bb21, label %bb22
bb21:
  %t108 = load i64, ptr %l4, !tbaa !24
  store i64 %t108, ptr %l15, !tbaa !24
  %t110 = load i64, ptr %l10, !tbaa !24
  store i64 %t110, ptr %l16, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l77, !tbaa !29
  %t113 = getelementptr %"compiler/scope:instNode", ptr %l3, i32 0, i32 2
  %t114 = load i64, ptr %l10, !tbaa !24
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t113, i64 %t114)
  store i64 %t117, ptr %l80
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t118 = load ptr, ptr %l2, !tbaa !29
  %t119 = load ptr, ptr %l77, !tbaa !29
  %t120 = load i64, ptr %l80, !tbaa !24
  %t122 = call i64 @compiler_2fscope_2ecopyNode(ptr %v0, ptr %v1, ptr %t119, i64 %t120, ptr %t118)
  store i64 %t122, ptr %l82
  br label %bb24
bb24:
  %t123 = load i64, ptr %l82, !tbaa !24
  store i64 %t123, ptr %l17, !tbaa !24
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = getelementptr %"compiler/scope:instTree", ptr %t124, i32 0, i32 0
  %t127 = load i64, ptr %l15, !tbaa !24
  %t130 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v1, ptr %v1, ptr %t126, i64 %t127)
  store ptr %t130, ptr %l86
  br label %bb25
bb25:
  %t131 = load ptr, ptr %l86, !tbaa !29
  %t134 = getelementptr %"compiler/scope:instNode", ptr %t131, i32 0, i32 2
  %t135 = load i64, ptr %l16, !tbaa !24
  %t136 = load i64, ptr %l17, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v1, ptr %t134, i64 %t135, i64 %t136)
  br label %bb26
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l9, !tbaa !24
  br label %bb12
bb29:
  %t144 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t144, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2eparamPos(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 5
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
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
  store i64 0, ptr %l14, !tbaa !24
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
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l17, !tbaa !24
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l14, !tbaa !24
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
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l7, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Body", ptr %t53, i32 0, i32 5
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t55, i64 %t56)
  store i32 %t59, ptr %l38
  br label %bb12
bb12:
  %t61 = load i32, ptr %l38, !tbaa !23
  %t63 = icmp eq i32 %t61, %a1
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load i64, ptr %l7, !tbaa !24
  store i64 %t65, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t67 = load i64, ptr %l6, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l6, !tbaa !24
  br label %bb8
bb17:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2erefLocal(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca i64
  %l19 = alloca i64
  %rv = alloca i64
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
  %t8 = icmp eq i64 %t6, 3
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
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l9, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call i64 @compiler_2fscope_2eregionLocal(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l16
  br label %bb11
bb11:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 -1, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_b4bda19b6c322d17_d43a8f651ddd18b)
  unreachable
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call i64 @compiler_2fscope_2eregionLocal(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l19
  br label %bb21
bb21:
  %t39 = load i64, ptr %l19, !tbaa !24
  store i64 %t39, ptr %rv
  br label %ret
bb22:
  call void @__olang_check_failed(ptr @olang_loc_cc4643223dcd3476_549a757e49af674a)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2etempSite(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 3
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l5, !tbaa !24
  br label %bb32
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i64 @compiler_2fscope_2etempSite(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l21
  br label %bb12
bb12:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  br label %bb32
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l22, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 4
  store i1 %t46, ptr %l23, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Elem", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = call i64 @compiler_2fscope_2etempSite(ptr %v0, ptr %t57)
  store i64 %t59, ptr %l30
  br label %bb19
bb19:
  %t60 = load i64, ptr %l30, !tbaa !24
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb32
bb20:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t65 = load ptr, ptr %l31, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 8}
  %t68 = icmp eq i64 %t66, 5
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t69 = load i1, ptr %l32, !tbaa !21
  br i1 %t69, label %bb23, label %bb24
bb23:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Payload", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = call i64 @compiler_2fscope_2etempSite(ptr %v0, ptr %t79)
  store i64 %t81, ptr %l39
  br label %bb26
bb26:
  %t82 = load i64, ptr %l39, !tbaa !24
  store i64 %t82, ptr %l5, !tbaa !24
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_6c3c94894200ad68_65df54557dc7b93c)
  unreachable
bb32:
  %t83 = load i64, ptr %l5, !tbaa !24
  store i64 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2etermGiven({ i64, [2 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb5
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l0
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 2
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
  call void @__olang_check_failed(ptr @olang_loc_6421b9c211daea5c_85adafb275b4c978)
  unreachable
bb11:
  %t11 = load i1, ptr %l1, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ethroughElem(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb38
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l10, !tbaa !21
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
  %t27 = call i1 @compiler_2fscope_2ethroughElem(ptr %v0, ptr %t25)
  store i1 %t27, ptr %l16
  br label %bb12
bb12:
  %t28 = load i1, ptr %l16, !tbaa !21
  store i1 %t28, ptr %l4, !tbaa !21
  br label %bb38
bb13:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t30 = load ptr, ptr %l17, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb14, label %bb15
bb14:
  %t33 = load ptr, ptr %l17, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 8}
  %t36 = icmp eq i64 %t34, 5
  store i1 %t36, ptr %l18, !tbaa !21
  br label %bb15
bb15:
  %t37 = load i1, ptr %l18, !tbaa !21
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
  %t49 = call i1 @compiler_2fscope_2ethroughElem(ptr %v0, ptr %t47)
  store i1 %t49, ptr %l25
  br label %bb19
bb19:
  %t50 = load i1, ptr %l25, !tbaa !21
  store i1 %t50, ptr %l4, !tbaa !21
  br label %bb38
bb20:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb21, label %bb22
bb21:
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 8}
  %t58 = icmp eq i64 %t56, 2
  store i1 %t58, ptr %l27, !tbaa !21
  br label %bb22
bb22:
  %t59 = load i1, ptr %l27, !tbaa !21
  br i1 %t59, label %bb23, label %bb24
bb23:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l3, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t69 = call i1 @compiler_2fscope_2ethroughElemExpr(ptr %v0, ptr %t66)
  store i1 %t69, ptr %l34
  br label %bb26
bb26:
  %t70 = load i1, ptr %l34, !tbaa !21
  store i1 %t70, ptr %l4, !tbaa !21
  br label %bb38
bb27:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t72 = load ptr, ptr %l35, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb28, label %bb29
bb28:
  %t75 = load ptr, ptr %l35, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 8}
  %t78 = icmp eq i64 %t76, 6
  store i1 %t78, ptr %l36, !tbaa !21
  br label %bb29
bb29:
  %t79 = load i1, ptr %l36, !tbaa !21
  br i1 %t79, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_c25c9d2f1e472363_8be32a0de7941d67)
  unreachable
bb38:
  %t80 = load i1, ptr %l4, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:markRead" @compiler_2fscope_3amarkRead_2ector(ptr %v0, i64 %a0, i64 %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %rv = alloca %"compiler/scope:markRead"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/scope:markRead" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/scope:markRead" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/scope:markRead" %t10, { i64, [1 x i64] } %a2, 2
  store %"compiler/scope:markRead" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:markRead", ptr %rv
  ret %"compiler/scope:markRead" %rr
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

define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/typed:Plan"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 584, i1 false)
  %t2 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 11
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 12
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  %t31 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %t31
  %t32 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 22
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  %t47 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 23
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l21
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t51 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 584, i1 false)
  br label %ret
ret:
  ret void
}

@.d0 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"blocks built into: " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d1 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c", of them plain (what folding could reach): " }>, align 8
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
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d5 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a lambda" }>, align 8
@.d6 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"inferred: " }>, align 8
@.d7 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" locals lifted (" }>, align 8
@.d8 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" for a part of them kept), " }>, align 8
@.d9 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" with their storage, " }>, align 8
@.d10 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" calls landed, " }>, align 8
@.d11 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" needing a W, " }>, align 8
@.d12 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" fields promoted (" }>, align 8
@.d13 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" given back), " }>, align 8
@.d14 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" second phases for views" }>, align 8
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
@.d15 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"for a part of it kept here" }>, align 8
@.d16 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"for a closure of it kept here" }>, align 8
@.d17 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c"for the become here, kept until its chain's first caller lets go of the result" }>, align 8
@.d18 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"for a view of it kept here" }>, align 8
@.d19 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"a temporary" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fscope__2ecompiler__2fscope__3aScoper__2ePlacements_2elocal_2e9 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_release(ptr) noinline
@.d23 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c" - its destructor runs as that scope closes, not at the end of its turn" }>, align 8
@olang_2esole_2ecompiler__2fscope__2ecompiler__2fscope__3aScoper__2ePlacements_2elocal_2e12 = weak hidden constant i1 false
@.d24 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" is built in " }>, align 8
@.d25 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c", a new one each time it is made, " }>, align 8
@olang_2esole_2ecompiler_2fscope_3aPlacement_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make_part(ptr) noinline
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

declare ptr @__olang_region_home(ptr)
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
define internal i1 @olang_lambda_26(ptr %env, ptr %v0, %"compiler/scope:Placement" %a0) #0 {
entry:
  %l0 = alloca %"compiler/scope:Placement"
  %l1 = alloca %"compiler/scope:Placement"
  %l5 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store %"compiler/scope:Placement" %a0, ptr %l0
  %cp0 = getelementptr { %"compiler/scope:Placement", ptr }, ptr %env, i32 0, i32 0
  %cv0 = load %"compiler/scope:Placement", ptr %cp0, !tbaa !28
  store %"compiler/scope:Placement" %cv0, ptr %l1
  %vq0 = getelementptr { %"compiler/scope:Placement", ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/scope:Placement", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp eq i64 %t2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr %"compiler/scope:Placement", ptr %l0, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 1
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = icmp eq i64 %t10, %t12
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = getelementptr %"compiler/scope:Placement", ptr %l0, i32 0, i32 4
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t20 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t19, { i64, ptr } %t21)
  store i1 %t24, ptr %l12
  br label %bb6
bb5:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb7
bb6:
  %t25 = load i1, ptr %l12, !tbaa !21
  store i1 %t25, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load i1, ptr %l9, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define internal i1 @olang_lambda_27(ptr %env, ptr %v0, ptr %v1, %"compiler/scope:Placement" %a0, %"compiler/scope:Placement" %a1) #0 {
entry:
  %l0 = alloca %"compiler/scope:Placement"
  %l1 = alloca %"compiler/scope:Placement"
  %l5 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store %"compiler/scope:Placement" %a0, ptr %l0
  store %"compiler/scope:Placement" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:Placement", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp slt i64 %t2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb6
bb2:
  %t9 = getelementptr %"compiler/scope:Placement", ptr %l0, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = icmp eq i64 %t10, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = getelementptr %"compiler/scope:Placement", ptr %l0, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t23 = icmp slt i64 %t18, %t20
  store i1 %t23, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l9, !tbaa !21
  store i1 %t25, ptr %l5, !tbaa !21
  br label %bb6
bb6:
  %t26 = load i1, ptr %l5, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afollowItem_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afollowItem(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:followItem"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca %"compiler/scope:fnRec"
  %l8 = alloca %"compiler/scope:fnRecs"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 176, i1 false)
  %t2 = getelementptr %"compiler/scope:followItem", ptr %l1, i32 0, i32 0
  %t3 = load { i64, ptr }, ptr %t2, !tbaa !27
  store { i64, ptr } %t3, ptr %l2, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  store i64 %t5, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = mul i64 %t6, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t7)
  %t9 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = mul i64 %t15, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t12, ptr %t14, i64 %t16, i1 false)
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t18 = getelementptr %"compiler/scope:followItem", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t17, ptr %t18, !tbaa !27
  %t19 = getelementptr %"compiler/scope:followItem", ptr %l1, i32 0, i32 1
  %t21 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %v0, ptr %t19)
  store %"compiler/scope:fnRec" %t21, ptr %l6
  br label %bb1
bb1:
  %t22 = load %"compiler/scope:fnRec", ptr %l6
  %t23 = getelementptr %"compiler/scope:followItem", ptr %l1, i32 0, i32 1
  store %"compiler/scope:fnRec" %t22, ptr %t23
  %t24 = getelementptr %"compiler/scope:followItem", ptr %l1, i32 0, i32 2
  %t26 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t24)
  store %"compiler/scope:fnRecs" %t26, ptr %l8
  br label %bb2
bb2:
  %t27 = load %"compiler/scope:fnRecs", ptr %l8
  %t28 = getelementptr %"compiler/scope:followItem", ptr %l1, i32 0, i32 2
  store %"compiler/scope:fnRecs" %t27, ptr %t28
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 176, i1 false)
  br label %ret
ret:
  ret void
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eI64(ptr %a0, ptr %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr %a0, !tbaa !24
  %t4 = load i64, ptr %a1, !tbaa !24
  %t7 = icmp eq i64 %t2, %t4
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define linkonce_odr %"compiler/scope:instTree" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstTree(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:instTree"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:instTree"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:instTree", ptr %a0
  store %"compiler/scope:instTree" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:instTree", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:instTree", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/scope:instTree", ptr %l1
  store %"compiler/scope:instTree" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:instTree", ptr %rv
  ret %"compiler/scope:instTree" %rr
}

@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a hidden local" }>, align 8
@.d34 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Clear" }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fs" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fs1" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"o" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c";" }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
define linkonce_odr %"compiler/scope:fsBody" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afsBody(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:fsBody"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fsBody"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:fsBody", ptr %a0
  store %"compiler/scope:fsBody" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:fsBody", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afsRow_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:fsBody", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/scope:fsBody", ptr %l1, i32 0, i32 1
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afsOpen_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/scope:fsBody", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = load %"compiler/scope:fsBody", ptr %l1
  store %"compiler/scope:fsBody" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fsBody", ptr %rv
  ret %"compiler/scope:fsBody" %rr
}

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
define linkonce_odr %"compiler/scope:instNode" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstNode(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:instNode"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:instNode"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:instNode", ptr %a0
  store %"compiler/scope:instNode" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:instNode", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:instNode", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/scope:instNode", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/scope:instNode", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = load %"compiler/scope:instNode", ptr %l1
  store %"compiler/scope:instNode" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:instNode", ptr %rv
  ret %"compiler/scope:instNode" %rr
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

@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"N" }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"P" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"U" }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2ector(ptr %v0)
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

@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3e_2ector(ptr %v0)
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

@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i:" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d60 = private constant <{ i64, [0 x i32] }> <{ i64 0, [0 x i32] [] }>, align 8
define internal i1 @olang_lambda_61(ptr %env, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  store i1 false, ptr %l2, !tbaa !21
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  store i1 %t9, ptr %rv
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

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afollowItem_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/scope:followItem"
  %rv = alloca { i64, ptr }
  %t16 = alloca %"compiler/scope:followItem", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 176
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
  %t15 = getelementptr %"compiler/scope:followItem", ptr %t14, i64 %t12
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afollowItem(ptr %t16, ptr %v0, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t16, i64 176, i1 false)
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/scope:followItem", ptr %t21, i64 %t19
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l6, i64 176, i1 false)
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t23, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afsRow_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 32
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 32
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afsOpen_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, { i64, ptr } %t4)
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/scope:instNode"
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
  %t4 = mul i64 %t3, 72
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
  %t15 = getelementptr %"compiler/scope:instNode", ptr %t14, i64 %t12
  %t17 = call %"compiler/scope:instNode" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstNode(ptr %v0, ptr %t15)
  store %"compiler/scope:instNode" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/scope:instNode", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/scope:instNode", ptr %t22, i64 %t20
  store %"compiler/scope:instNode" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/scope:fnRecs"
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
  %t4 = mul i64 %t3, 104
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
  %t15 = getelementptr %"compiler/scope:fnRecs", ptr %t14, i64 %t12
  %t17 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t15)
  store %"compiler/scope:fnRecs" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/scope:fnRecs", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/scope:fnRecs", ptr %t22, i64 %t20
  store %"compiler/scope:fnRecs" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
@olang_loc_9f0c519cc5cbfc38_501f2fba46fc3fe4 = external constant [0 x i8]
@olang_loc_a49123b9ad752209_94dfdd7272e659d5 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6f3b4b2e4e301b65_ef2dd15b8f9fe549 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftyped_3aCapture_26__Hbce50ad940bb00a7deeff65a4c93e11e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c53cc50814d3a50f_a9e24a9fc415868b = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %a0)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c4dcb08f8057e6b4_879f1d415f5e90f0 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_d092cc8b6b901f99_2fc50d69972bed85 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H135723289cd67fccd962ee530d90cf81(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hb48ebc0aec2f1394686d895000e23a7c(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H8375087ffb2db44d2139bbf5f3813fdb(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H43c13732de188ecff49d86731966d00e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"compiler/scope:placedRow" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0cf9aca3cf50919d11cd2cbbeb8bc986(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@G_2ecompiler_2fscope_2ePlacePart = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2ePlaceCapture = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2ePlaceTail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@olang_loc_347839398561f9fa_f8990cdcbc0ed18e = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eLen_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/types:DtorWalk" @compiler_2ftypes_3aDtorWalk_2ector(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplacedScope(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:Placement" @compiler_2fscope_3aPlacement_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, { i64, ptr } %a4)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eView_Hfd31642e5710980eb0ccca6eae09c547(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fscope_3aPlacement_3e_2eSome_3ccompiler_2fscope_3aPlacement_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2ePush_He23e71a7c6af30775864ddd89edaca69(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:Placement" %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcd982a7eb283446502b9b6ab8bf79c41(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H4509341a51d3fed710a11c02e240319c(ptr %v0, ptr %a0)
declare { i32, %"compiler/scope:Placement" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H37e4a6df969d175d46971efed901ceea(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eSort_Hf8fa0083f3b3e812ad36e905e9f72c80(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2erelVar({ i64, [2 x i64] } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_8f68a290e3e064b2_7dbc8da9638b50f6 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_5ad8ce5e83291793_3404c81b33ceede7 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeBorrows(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailStorageGiven(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f447ab81603d391c_7aef9466e7fdeac8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeHeldParam(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailRows(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstType(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eBndNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_bd4ca23a40cfc0db_43a814c1b1d9691f = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eMayBorrow(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fscope_2ePosResult = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eKeepsHome = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fscope_2ePosHome = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldPos(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumBuilds(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_fa1185dea4599dae_9f267a70691b2 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_afca299d588086d2_4faebb8dc8bed846 = external constant [0 x i8]
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i32 } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFindDecl(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_44f08e273b94dac1_2814062679ab87ad = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@olang_loc_319b840e5d0a9b30_92f3157cb26da7fc = external constant [0 x i8]
declare i1 @compiler_2fscope_2ethroughElemExpr(ptr %v0, ptr %a0)
@olang_loc_cad6ea40519e9749_ea608eb2fc6ab735 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRec(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %v0, i64 %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare %"compiler/typed:DerivedArg" @compiler_2ftyped_3aDerivedArg_2ector(ptr %v0, i64 %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ePus_Hd9c60b9bc3eb0bc15b58bce924fabf2c(ptr %v0, ptr %a0, %"compiler/typed:DerivedArg" %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropDerived(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_cf803334873ab58c_86e77fabc50c4870 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
@olang_loc_9240ff9e46a5e522_bd3125f7ca002596 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomTerm(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDefs(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efollowItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3, ptr %a4)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hb7439a76facf4127f6396e41a6c979ea(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eLen_H179c871bd324feda0fb0949b8c691d2f(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afollowItem_3e_2eAt__Hcba85181f1f46e0ef99a47a3ca1cb265(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eEq_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/scope:instTree" @compiler_2fscope_3ainstTree_2ector(ptr %v0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H844a4c8d36c5711874668040024501ec(ptr %v0, ptr %a0)
@olang_loc_123350225994a843_51ae8a17768a608f = external constant [0 x i8]
@olang_loc_df1679ac0239a2b4_926146d867d3a5b0 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenBody(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3_H3b2fdbab8fa29b176fdfd3c254556d5a(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20compiler_2fscope_3ains_Hfae636decfc25ec3f914076facfb6035(ptr %v0, ptr %a0)
declare { i32, %"compiler/scope:instTree" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3_H35fef28f9fe1c3270accf417057fa9eb(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eLen_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_a5122b0b395bd8b_9870aa37c8b5f2ef = external constant [0 x i8]
@olang_loc_51a7ef38ab67534a_42b12633f9b5762e = external constant [0 x i8]
@olang_loc_8c5cdaf113a9adb2_ca6187f954f52aa6 = external constant [0 x i8]
@olang_loc_919120fb9e46bed9_9145256340cf48d = external constant [0 x i8]
@olang_loc_6e9c200a4ae12bfa_506dc59c2cdd99de = external constant [0 x i8]
@olang_loc_23c81803d40008f7_62b49cfbea8bbbfb = external constant [0 x i8]
@olang_loc_762e8eb07b800621_dae241c340f20eed = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_461ac7e38f90e4f9_622b75bf47879645 = external constant [0 x i8]
@olang_loc_c8908c94a663d482_19394df8c95d78e = external constant [0 x i8]
declare i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_2906ca9d29f69631_82ae3e269cbacfc5 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_4f09217bbbe73e28_17ebc948c6ad3e44 = external constant [0 x i8]
@olang_loc_d50f79fefbee4394_12c4367532f3ae80 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eisNameChar(i8 %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %a0)
@olang_loc_ebf3252f75f0963d_4d00f10623fd4f01 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ematchMadeHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_717fbf6233ca6ed7_9b693e4aa4ffeed3 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_af2a74d4afc5c43e_94f83f31bbc69a2a = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_71f08f1465b765e5_9e5dc3268d808631 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceDest(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoin(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, %"compiler/scope:Val" %a2, { i64, [2 x i64] } %a3)
@olang_loc_3f9209becdebaa90_11232388f96dbd3c = external constant [0 x i8]
@olang_loc_1413c8e18d6f3dc3_591c44f3990b2a7f = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParams(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H6af57464cd91f7f507562fe7a967832c(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H326cc72ba47e1bb28c462bec900fbfa4(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H4e11f1e0078421f65d9ed48903f301c5(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eshownLocal(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_d1e09ab5654512c3_1949347ac845fe07 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_9ec3c43f0dea0d34_4e7830eaf7e3a0e8 = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_60a9277e2c5e0f29_25801f0e1d4bc5bd = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
@olang_loc_32a2617be6fc2342_ed6c13319ae659d6 = external constant [0 x i8]
@olang_loc_466c52b9c16c208f_a374cdad5045efdb = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_f99d36ce04cd5358_3c9954da82c615c4 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteRefillKept(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/diagmsg:Msg" %a4)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_656a50bef236af79_704de06f4de36bbd = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
@olang_loc_8b585ab756abfc85_570ab475a36add99 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftyped_2eViewOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamVarName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2, ptr %a3)
@olang_loc_9101b79997fee27f_70c5b8c6234d8c2b = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efoundOr(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeFrom(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3, i64 %a4, i1 %a5)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_3aa6b1bdb3eeaea7_b2680d59346154d3 = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fscope_2ePlaceView = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewBase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2econvertedLocal(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeStorage(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
@olang_loc_d3a06237a99546a5_940688e3c77e01a9 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereachFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elcaBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eNamed(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eAcross(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoutermostLoop(ptr %v0, ptr %a0)
@olang_loc_15c19e60d04569fe_65ffc2e1821c15c2 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etoAtoms(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ePush_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edefTermAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopenAt(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeDef(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_f2b7972a64306daf_53dfc1b00650543 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadAfterScope(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_219fee4953632850_d22125a4a909ffb4 = external constant [0 x i8]
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteAssignedHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H6a106b2d9d5f427d992f43f68fb1fef7(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/scope:fsBody" @compiler_2fscope_3afsBody_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_cecdf5a164437124_6cc9acea80adaa98 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_bedb01e7abfdb211_6cf177c6e28dc1f5 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_8011bd44a005a812_c615cbe07a9a1b16 = external constant [0 x i8]
declare %"compiler/scope:fsRow" @compiler_2fscope_3afsRow_2ector(ptr %v0, i64 %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afsRow_3e_2ePush_3ccompiler_2fscope_3afsRow_3e(ptr %v0, ptr %a0, %"compiler/scope:fsRow" %a1)
@olang_loc_8b3272632203020f_5bf10d2405a373 = external constant [0 x i8]
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etypeOfCanon(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/scope:fsOpen" @compiler_2fscope_3afsOpen_2ector(ptr %v0, i32 %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afsOpen_3e_2ePush_3ccompiler_2fscope_3afsOpen_3e(ptr %v0, ptr %a0, %"compiler/scope:fsOpen" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afsBody_3e__Ha9ca97d13139ad52dca62b441a5c13c0(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/scope:fsBody" %a2)
@olang_loc_b0386a143db8506e_dfd8a002a8dad66a = external constant [0 x i8]
@olang_loc_9047b81d628cb92_30df04453bf66e76 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecapTerm({ i64, [2 x i64] } %a0)
@olang_loc_ed814b94f6a98b8c_ead1babe88bc22e8 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
@olang_loc_eebfc4319566ad8a_fa3c553f7bca103e = external constant [0 x i8]
@olang_loc_472824ea9c9f9618_8b7f7100f340f49c = external constant [0 x i8]
declare %"compiler/scope:instNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eAt_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eLen_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2enewNode(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2esortedRecs(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecapVarOf(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @compiler_2fscope_2ecapCode(i64 %a0, i64 %a1)
declare %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eSetAt_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/scope:fnRecs" %a2)
@G_2ecompiler_2fscope_2eInstDepth = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_df5619edc5954020_95eed2e83037cdb4 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ae81d4d244f6a670_8f3729da339b0a94 = external constant [0 x i8]
@olang_loc_678543b1c51fd044_bcff5a6e112a6af8 = external constant [0 x i8]
@olang_loc_90a9d28716f9cb6_29834bc9108cc36a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrStoresInReceiver(ptr %v0)
@olang_loc_a7a579971a154b67_66936e5e8b24a2eb = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteStrBuildsHere(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakenLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Hcb6fae2338a785d6927a8587899f4e85(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H665b0c71977ef42adbc51fe96e6e85ee(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2easItWas(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_495a64aca38662d8_92214166877a2a6c = external constant [0 x i8]
@olang_loc_2a6c6ae0366caf35_6888aea225c1c919 = external constant [0 x i8]
@olang_loc_143ec5319fcde756_1f5f68cb8ce257fa = external constant [0 x i8]
@olang_loc_10442710de77d7bc_e9bcb9ff6aeb0e0 = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erootOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePurePlace(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinnable(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efollowable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeyRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/scope:fnRecs" %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignsWhole(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeyInst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstFollowable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/scope:instTree" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedInstOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3_H8a48bcdbf9c548baffce9514fe594775(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/scope:instTree" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H35cb97c8fad269f48f2366228330e440(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinMarked(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinRoom(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewTwin(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, ptr %a4, %"compiler/source:Span" %a5)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeTwin(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
@olang_loc_9fb611f043b26d24_95688250bda0b8e8 = external constant [0 x i8]
@olang_loc_e8bf6938cb5cdc15_c4d69faab420a8b9 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandedOn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@G_2ecompiler_2fscope_2eUseOwn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2eownView(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueSliceBounds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueHanded(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i64 %a4, i64 %a5)
@olang_loc_f9519574182490d7_42fc30f708795ccb = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H7feb99756ef3806dc9fbf0cf3216792e(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i1 %a6, i64 %a7)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_Hb2687b8a10fef42af6310eb22cb740bf(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1, i64 %a2)
@olang_loc_a0aebb439496dd48_72f2a186105a9dbc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_fe020d14e9f70167_4a4a3d953174892b = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emarkAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTagUnknownScope(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %a0)
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumKeeps(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumPuts(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_902232b6dd8d0696_1dd7740f0a73924a = external constant [0 x i8]
@olang_loc_13bffa23f71fb67d_39ab2ce74b1a8b51 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVersionsDiffer(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_bb411cb9985695a8_9ee393c5b6d8495c = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2ftyped_3aExpr_26_3e_2eEvery_3ccompiler_2ftyped_3aExpr_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
@olang_loc_3b030e9c71c76e3c_802f138a7c320818 = external constant [0 x i8]
declare i64 @compiler_2fscope_2eregionLocal(ptr %v0, ptr %a0)
@olang_loc_b4bda19b6c322d17_d43a8f651ddd18b = external constant [0 x i8]
@olang_loc_cc4643223dcd3476_549a757e49af674a = external constant [0 x i8]
@olang_loc_6c3c94894200ad68_65df54557dc7b93c = external constant [0 x i8]
@olang_loc_6421b9c211daea5c_85adafb275b4c978 = external constant [0 x i8]
@olang_loc_c25c9d2f1e472363_8be32a0de7941d67 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3ainstTree_3e_2ector(ptr %v0)

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
