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
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fsBody", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:instTree", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:instTree", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fsBody" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:instTree" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", %"compiler/scope:instTree", i1, i1, i1, i1 }
%"compiler/scope:instNode" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" = type { { i64, ptr }, i64 }
%"compiler/scope:markRead" = type { i64, i64, { i64, [1 x i64] } }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/scope:compRun" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/diag:Taken", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, ptr, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diag:Taken" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:sumRead" = type { i64, ptr }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
define dso_local i1 @compiler_2fscope_2eanyArrayBox(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l12 = alloca i1
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
  br label %bb9
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 0 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Make", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l12, !tbaa !21
  store i1 %t33, ptr %l2, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_815ce866d8282155_e428af91c79b2b69)
  unreachable
bb14:
  %t34 = load i1, ptr %l2, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinStats(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca i64
  %l18 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l41 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 236
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/scope:twinTab", ptr %t4, i32 0, i32 8
  %t8 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eView_3cBool_3e(ptr %v0, ptr %v0, ptr %t6)
  store { i64, ptr } %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t10 = insertvalue { ptr, ptr } %t9, ptr null, 1
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t13 = extractvalue { ptr, ptr } %t10, 0
  %t14 = extractvalue { ptr, ptr } %t10, 1
  %t15 = call i64 @std_2fprelude_2farray_2eArray_3cBool_3e_2eCount_3cBool_2c_20_3f_3e(ptr %v0, ptr %s0, { i64, ptr } %t11, ptr %t13, ptr %t14)
  store i64 %t15, ptr %l11
  br label %bb2
bb2:
  %t16 = load i64, ptr %l11, !tbaa !24
  store i64 %t16, ptr %l1, !tbaa !24
  %t17 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t17, ptr %l12
  br label %bb3
bb3:
  %t18 = load %"std/prelude/text:StringBuilder", ptr %l12
  store %"std/prelude/text:StringBuilder" %t18, ptr %l2
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 236
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/scope:twinTab", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load i64, ptr %l4, !tbaa !24
  store i64 %t26, ptr %l16, !tbaa !24
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eLen_H327daf8a5f05e7deba4c08807621a9fe(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l18
  br label %bb5
bb5:
  %t30 = load i64, ptr %l16, !tbaa !24
  %t31 = load i64, ptr %l18, !tbaa !24
  %t32 = icmp slt i64 %t30, %t31
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb7:
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eAt__Hb06c5aa34d45867a1decef3b510ab43e(ptr %v0, ptr %s2, ptr %t36, i64 %t37)
  store { i64, ptr } %t40, ptr %l23
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l24, !tbaa !24
  %t43 = load i64, ptr %l24, !tbaa !24
  %t44 = mul i64 %t43, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t44)
  %t46 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l25, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = load i64, ptr %l24, !tbaa !24
  %t53 = mul i64 %t52, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t49, ptr %t51, i64 %t53, i1 false)
  %t54 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t56 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t59 = extractvalue { i64, ptr } %t54, 1
  %t60 = extractvalue { i64, ptr } %t54, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t65 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t64)
  call void @olang_textcopy(ptr %t65, ptr %t56, i64 %t57)
  %t66 = getelementptr i8, ptr %t65, i64 %t57
  call void @olang_textcopy(ptr %t66, ptr %t59, i64 %t60)
  %t67 = getelementptr i8, ptr %t66, i64 %t60
  call void @olang_textcopy(ptr %t67, ptr %t62, i64 %t63)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t65, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = extractvalue { i64, ptr } %t69, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } %t76)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb4
bb12:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 236
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/scope:twinTab", ptr %t86, i32 0, i32 1
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t88)
  store i64 %t90, ptr %l35
  br label %bb13
bb13:
  %t91 = load i64, ptr %l1, !tbaa !24
  store i64 %t91, ptr %l36, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/scope:Scoper", ptr %t92, i32 0, i32 260
  %t96 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hbb62dd24bb9d6650f5b387479de8a86f(ptr %v0, ptr %t94)
  store i64 %t96, ptr %l39
  br label %bb14
bb14:
  %t98 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t98, ptr %l41
  br label %bb15
bb15:
  %t99 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t101 = load i64, ptr %l35, !tbaa !24
  %t102 = call i64 @__olang_fmt_i64(ptr null, i64 %t101)
  %t103 = add i64 %t100, %t102
  %t104 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t106 = add i64 %t103, %t105
  %t107 = load i64, ptr %l36, !tbaa !24
  %t108 = call i64 @__olang_fmt_i64(ptr null, i64 %t107)
  %t109 = add i64 %t106, %t108
  %t110 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t113 = load i64, ptr %l39, !tbaa !24
  %t114 = call i64 @__olang_fmt_i64(ptr null, i64 %t113)
  %t115 = add i64 %t112, %t114
  %t116 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t119 = add i64 %t115, %t118
  %t120 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t119)
  call void @olang_textcopy(ptr %t120, ptr %t99, i64 %t100)
  %t121 = getelementptr i8, ptr %t120, i64 %t100
  %t122 = call i64 @__olang_fmt_i64(ptr %t121, i64 %t101)
  %t123 = getelementptr i8, ptr %t121, i64 %t102
  call void @olang_textcopy(ptr %t123, ptr %t104, i64 %t105)
  %t124 = getelementptr i8, ptr %t123, i64 %t105
  %t125 = call i64 @__olang_fmt_i64(ptr %t124, i64 %t107)
  %t126 = getelementptr i8, ptr %t124, i64 %t108
  call void @olang_textcopy(ptr %t126, ptr %t110, i64 %t111)
  %t127 = getelementptr i8, ptr %t126, i64 %t111
  %t128 = call i64 @__olang_fmt_i64(ptr %t127, i64 %t113)
  %t129 = getelementptr i8, ptr %t127, i64 %t114
  call void @olang_textcopy(ptr %t129, ptr %t117, i64 %t118)
  %t130 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t120, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t131, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 168
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
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 168
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
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 168
  %t46 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H0b5e11c98f28e10a1176da3c2806abb8(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l27
  br label %bb14
bb14:
  %t47 = load i64, ptr %l1, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 192
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t54 = load i64, ptr %l27, !tbaa !24
  %t55 = call i64 @__olang_fmt_i64(ptr null, i64 %t54)
  %t56 = add i64 %t53, %t55
  %t57 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t59 = add i64 %t56, %t58
  %t61 = call i64 @__olang_fmt_i64(ptr null, i64 %t47)
  %t62 = add i64 %t59, %t61
  %t63 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t67 = call i64 @__olang_fmt_i64(ptr null, i64 %t51)
  %t68 = add i64 %t65, %t67
  %t69 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eabsentNow(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l4 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l8 = alloca i64
  %l10 = alloca i1
  %l13 = alloca i64
  %l17 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l18 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l20 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l21 = alloca i32
  %l23 = alloca i1
  %l25 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l34 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l35 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l37 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l38 = alloca i32
  %l40 = alloca i1
  %l42 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca i64
  %l67 = alloca i1
  %l70 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca i64
  %l83 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 305
  %t5 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H337ce25dd8b8f79ee7e6013a63096469(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 306
  %t13 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H337ce25dd8b8f79ee7e6013a63096469(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l13
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t14 = load i64, ptr %l13, !tbaa !24
  %t15 = icmp eq i64 %t14, 0
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 7
  %t22 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hb9981b83434ab0c12edadd9bdcf1af6e(ptr %v0, ptr %v0, ptr %t20)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t22, ptr %l17
  br label %bb8
bb7:
  br label %bb29
bb8:
  %t23 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l17
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t23, ptr %l2
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t25 = call { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2ftypes_3aTypeId_2c_20I64_H73f4835db56e5f687686d7884c2ea7b0(ptr %v0, ptr %l2)
  %t26 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t25, 1
  %t27 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t25, 0
  store i32 %t27, ptr %l21
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb11, label %ok.29, !prof !99
ok.29:
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t26, ptr %l20
  br label %bb10
bb10:
  %t30 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l20
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t30, ptr %l18
  br label %bb13
bb11:
  %t31 = load i32, ptr %l21, !tbaa !23
  %t32 = ashr i32 %t31, 16
  %t34 = icmp eq i32 %t32, 1
  store i1 %t34, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb13:
  %t35 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l18
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t35, ptr %l3
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 305
  store ptr %t38, ptr %l25, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l3, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t48 = inttoptr i64 0 to ptr
  %t51 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonNamed(ptr %v0, ptr %s3, ptr %t48, ptr %t44, i32 %t46)
  store { i64, ptr } %t51, ptr %l31
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l25, !tbaa !29
  %t53 = load { i64, ptr }, ptr %l31, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %t52, { i64, ptr } %t53, i1 true)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb16:
  br label %bb9
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 8
  %t58 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hb9981b83434ab0c12edadd9bdcf1af6e(ptr %v0, ptr %v0, ptr %t56)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t58, ptr %l34
  br label %bb18
bb18:
  %t59 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l34
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t59, ptr %l4
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s5
  %t61 = call { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2ftypes_3aTypeId_2c_20I64_H73f4835db56e5f687686d7884c2ea7b0(ptr %v0, ptr %l4)
  %t62 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t61, 1
  %t63 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t61, 0
  store i32 %t63, ptr %l38
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb21, label %ok.65, !prof !99
ok.65:
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t62, ptr %l37
  br label %bb20
bb20:
  %t66 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l37
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t66, ptr %l35
  br label %bb23
bb21:
  %t67 = load i32, ptr %l38, !tbaa !23
  %t68 = ashr i32 %t67, 16
  %t70 = icmp eq i32 %t68, 1
  store i1 %t70, ptr %l40, !tbaa !21
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s5)
  br label %bb27
bb23:
  %t71 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l35
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t71, ptr %l5
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 306
  store ptr %t74, ptr %l42, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 2
  %t81 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l5, i32 0, i32 0
  %t82 = load i32, ptr %t81, !tbaa !23
  %t84 = inttoptr i64 0 to ptr
  %t87 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonNamed(ptr %v0, ptr %s5, ptr %t84, ptr %t80, i32 %t82)
  store { i64, ptr } %t87, ptr %l48
  br label %bb24
bb24:
  %t88 = load ptr, ptr %l42, !tbaa !29
  %t89 = load { i64, ptr }, ptr %l48, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %t88, { i64, ptr } %t89, i1 true)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb26
bb26:
  br label %bb19
bb27:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %t90, i32 0, i32 305
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l51, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l51, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %t92, { i64, ptr } %t93, i1 true)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t96 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t96, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t98, ptr %l54
  br label %bb30
bb30:
  %t99 = load i1, ptr %l54, !tbaa !21
  br i1 %t99, label %bb31, label %bb32
bb31:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 305
  store ptr %t102, ptr %l56, !tbaa !29
  %t103 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t103, ptr %l57, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t104, 0
  store i64 %t107, ptr %l60, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l61, !tbaa !24
  %t110 = icmp sge i64 6, 0
  br i1 %t110, label %bb33, label %bb34
bb32:
  br label %bb40
bb33:
  %t112 = load i64, ptr %l60, !tbaa !24
  %t113 = icmp sle i64 6, %t112
  br i1 %t113, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_f80e88080d97644_667ddd49073c8210)
  unreachable
bb35:
  %t115 = load i64, ptr %l60, !tbaa !24
  %t116 = load i64, ptr %l61, !tbaa !24
  %t117 = icmp sle i64 %t115, %t116
  br i1 %t117, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_f80e88080d97644_667ddd49073c8210)
  unreachable
bb37:
  %t119 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = load i64, ptr %l60, !tbaa !24
  %t122 = getelementptr i8, ptr %t120, i64 6
  %t123 = sub i64 %t121, 6
  %t124 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t122, 1
  %t127 = load ptr, ptr %l56, !tbaa !29
  %t129 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %t127, { i64, ptr } %t125)
  store i1 %t129, ptr %l67
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_f80e88080d97644_667ddd49073c8210)
  unreachable
bb39:
  %t130 = load i1, ptr %l67, !tbaa !21
  %t131 = xor i1 %t130, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t131, ptr %rv
  br label %ret
bb40:
  %t133 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t133, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t135, ptr %l70
  br label %bb41
bb41:
  %t136 = load i1, ptr %l70, !tbaa !21
  br i1 %t136, label %bb42, label %bb43
bb42:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/scope:Scoper", ptr %t137, i32 0, i32 306
  store ptr %t139, ptr %l72, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t140, ptr %l73, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t141, 0
  store i64 %t144, ptr %l76, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  store i64 %t146, ptr %l77, !tbaa !24
  %t147 = icmp sge i64 6, 0
  br i1 %t147, label %bb44, label %bb45
bb43:
  br label %bb51
bb44:
  %t149 = load i64, ptr %l76, !tbaa !24
  %t150 = icmp sle i64 6, %t149
  br i1 %t150, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_35449251cd7cc7b1_293be060d9d51fed)
  unreachable
bb46:
  %t152 = load i64, ptr %l76, !tbaa !24
  %t153 = load i64, ptr %l77, !tbaa !24
  %t154 = icmp sle i64 %t152, %t153
  br i1 %t154, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_35449251cd7cc7b1_293be060d9d51fed)
  unreachable
bb48:
  %t156 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l76, !tbaa !24
  %t159 = getelementptr i8, ptr %t157, i64 6
  %t160 = sub i64 %t158, 6
  %t161 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t159, 1
  %t164 = load ptr, ptr %l72, !tbaa !29
  %t166 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %t164, { i64, ptr } %t162)
  store i1 %t166, ptr %l83
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_35449251cd7cc7b1_293be060d9d51fed)
  unreachable
bb50:
  %t167 = load i1, ptr %l83, !tbaa !21
  %t168 = xor i1 %t167, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t168, ptr %rv
  br label %ret
bb51:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsAt(ptr %v0, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l19 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i32
  %l36 = alloca i32
  %l46 = alloca i1
  %l47 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca i32
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca i64
  %l65 = alloca i64
  %l70 = alloca i32
  %l74 = alloca i1
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca i64
  %l91 = alloca i64
  %l96 = alloca i32
  %l100 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l107 = alloca i64
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  store i64 %t3, ptr %l15, !tbaa !24
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l17, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb3
bb3:
  %t6 = load i64, ptr %l15, !tbaa !24
  %t7 = load i64, ptr %l17, !tbaa !24
  %t8 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t6, i64 %t7)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %l18
  br label %bb4
bb4:
  %t9 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l18
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t9, ptr %l3
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 10
  %t13 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t16 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t12, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t13)
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l24
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb6, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l23
  br label %bb5
bb5:
  %t21 = load i64, ptr %l23, !tbaa !24
  store i64 %t21, ptr %l19, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t22 = load i64, ptr %l19, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp ne i64 %t23, 0
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp eq i64 %t27, 3
  call void @__olang_scope_close(ptr %s0)
  store i1 %t29, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 10
  %t34 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t33, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34, i64 1)
  br label %bb12
bb12:
  store i1 false, ptr %l5, !tbaa !21
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l36
  br label %bb13
bb13:
  %t47 = load i32, ptr %l36, !range !{i32 0, i32 33}
  store i32 %t47, ptr %l6
  %t48 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t50 = trunc i64 25 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb71
bb17:
  %t53 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t55 = trunc i64 18 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb43
bb20:
  %t58 = load i1, ptr %l2, !tbaa !21
  store i1 %t58, ptr %l7, !tbaa !21
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l1, !tbaa !23
  %t69 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t65, i32 %t66)
  store i1 %t69, ptr %l46
  br label %bb21
bb21:
  %t70 = load i1, ptr %l46, !tbaa !21
  br i1 %t70, label %bb22, label %bb23
bb22:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  store ptr %t76, ptr %l50, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l1, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l55
  br label %bb24
bb23:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb26
bb24:
  %t87 = load ptr, ptr %l50, !tbaa !29
  %t88 = load i32, ptr %l55, !tbaa !23
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t89, ptr %l56
  br label %bb25
bb25:
  %t90 = load i32, ptr %l56, !range !{i32 0, i32 6}
  %t92 = trunc i64 1 to i32
  %t93 = icmp eq i32 %t90, %t92
  store i1 %t93, ptr %l47, !tbaa !21
  br label %bb26
bb26:
  %t95 = load i1, ptr %l47, !tbaa !21
  br i1 %t95, label %bb27, label %bb28
bb27:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb29
bb28:
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s5
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i32, ptr %l1, !tbaa !23
  %t100 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparts(ptr %v0, ptr %s5, ptr %t96, i32 %t97)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l61
  br label %bb30
bb30:
  %t101 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  %t102 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t101, ptr %t102
  store ptr %t102, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb31
bb31:
  %t104 = load i64, ptr %l9, !tbaa !24
  store i64 %t104, ptr %l63, !tbaa !24
  %t105 = load ptr, ptr %l8, !tbaa !29
  %t107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s5, ptr %t105)
  store i64 %t107, ptr %l65
  br label %bb32
bb32:
  %t108 = load i64, ptr %l63, !tbaa !24
  %t109 = load i64, ptr %l65, !tbaa !24
  %t110 = icmp slt i64 %t108, %t109
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb33, label %bb34
bb33:
  br label %bb42
bb34:
  br label %bb35
bb35:
  %t114 = load ptr, ptr %l8, !tbaa !29
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s5, ptr %t114, i64 %t115)
  store i32 %t118, ptr %l70
  br label %bb36
bb36:
  %t119 = load i32, ptr %l70, !tbaa !23
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i1, ptr %l7, !tbaa !21
  %t126 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartAdmits(ptr %v0, ptr %t120, i32 %t119, i1 %t122)
  store i1 %t126, ptr %l74
  br label %bb37
bb37:
  %t127 = load i1, ptr %l74, !tbaa !21
  br i1 %t127, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l9, !tbaa !24
  br label %bb31
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb71
bb43:
  %t132 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t134 = trunc i64 19 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb44, label %bb45
bb44:
  br label %bb52
bb45:
  %t137 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t139 = trunc i64 22 to i32
  %t140 = icmp eq i32 %t137, %t139
  br i1 %t140, label %bb46, label %bb47
bb46:
  br label %bb52
bb47:
  %t142 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t144 = trunc i64 23 to i32
  %t145 = icmp eq i32 %t142, %t144
  br i1 %t145, label %bb48, label %bb49
bb48:
  br label %bb52
bb49:
  %t147 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t149 = trunc i64 24 to i32
  %t150 = icmp eq i32 %t147, %t149
  br i1 %t150, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb66
bb52:
  store %olang.scope zeroinitializer, ptr %s10
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l1, !tbaa !23
  %t156 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparts(ptr %v0, ptr %s10, ptr %t152, i32 %t153)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l87
  br label %bb53
bb53:
  %t157 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  %t158 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t157, ptr %t158
  store ptr %t158, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb54
bb54:
  %t160 = load i64, ptr %l12, !tbaa !24
  store i64 %t160, ptr %l89, !tbaa !24
  %t161 = load ptr, ptr %l11, !tbaa !29
  %t163 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s10, ptr %t161)
  store i64 %t163, ptr %l91
  br label %bb55
bb55:
  %t164 = load i64, ptr %l89, !tbaa !24
  %t165 = load i64, ptr %l91, !tbaa !24
  %t166 = icmp slt i64 %t164, %t165
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb56, label %bb57
bb56:
  br label %bb65
bb57:
  br label %bb58
bb58:
  %t170 = load ptr, ptr %l11, !tbaa !29
  %t171 = load i64, ptr %l12, !tbaa !24
  %t174 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s10, ptr %t170, i64 %t171)
  store i32 %t174, ptr %l96
  br label %bb59
bb59:
  %t175 = load i32, ptr %l96, !tbaa !23
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i1, ptr %l2, !tbaa !21
  %t182 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartAdmits(ptr %v0, ptr %t176, i32 %t175, i1 %t178)
  store i1 %t182, ptr %l100
  br label %bb60
bb60:
  %t183 = load i1, ptr %l100, !tbaa !21
  br i1 %t183, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t184 = load i64, ptr %l12, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l12, !tbaa !24
  br label %bb54
bb65:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_7ac300513ffc0d8b_1ff73281fb7180bf)
  unreachable
bb71:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/scope:Scoper", ptr %t188, i32 0, i32 10
  store ptr %t190, ptr %l104, !tbaa !29
  %t191 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t191, ptr %l105
  %t192 = load i1, ptr %l5, !tbaa !21
  br i1 %t192, label %bb72, label %bb73
bb72:
  store i64 3, ptr %l107, !tbaa !24
  br label %bb74
bb73:
  store i64 2, ptr %l107, !tbaa !24
  br label %bb74
bb74:
  %t194 = load ptr, ptr %l104, !tbaa !29
  %t195 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l105
  %t196 = load i64, ptr %l107, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t194, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t195, i64 %t196)
  br label %bb75
bb75:
  %t197 = load i1, ptr %l5, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t197, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLands(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l4 = alloca { i64, [2 x i64] }
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  store { i64, [2 x i64] } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l4
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  %t11 = xor i1 %t9, true
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargTemps(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, [2 x i64] } %a5, i1 %a6, { i64, [2 x i64] } %a7, { i64, ptr } %a8, { i64, ptr } %a9, { i64, ptr } %a10) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l50 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l60 = alloca i1
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca i1
  %l71 = alloca i1
  %l72 = alloca i1
  %l75 = alloca i1
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l82 = alloca { i64, [2 x i64] }
  %l86 = alloca { i64, ptr }
  %l87 = alloca i64
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l96 = alloca %"compiler/scope:Val"
  %l99 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l103 = alloca %"compiler/diagmsg:Msg"
  %l104 = alloca i64
  %l105 = alloca { i64, ptr }
  %l106 = alloca i64
  %l111 = alloca %"compiler/scope:Val"
  %l112 = alloca { i64, ptr }
  %l116 = alloca i1
  %l120 = alloca i1
  %l121 = alloca i1
  %l124 = alloca i1
  %l127 = alloca { i64, ptr }
  %l131 = alloca i64
  %l134 = alloca i1
  %l140 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l144 = alloca i64
  %l148 = alloca { i64, ptr }
  %l154 = alloca %"compiler/scope:Val"
  %l156 = alloca { i64, ptr }
  %l162 = alloca i1
  %l166 = alloca i1
  %l167 = alloca ptr
  %l169 = alloca i32
  %l170 = alloca i1
  %l171 = alloca { i64, ptr }
  %l172 = alloca i64
  %l173 = alloca ptr
  %l175 = alloca ptr
  %l177 = alloca { i64, [2 x i64] }
  %l182 = alloca %"compiler/scope:Val"
  %t199 = alloca { i64, [2 x i64] }, align 8
  %t340 = alloca { i64, [2 x i64] }, align 8
  %t347 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a8, ptr %l8
  store { i64, ptr } %a9, ptr %l9
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 0, ptr %l12, !tbaa !24
  store i64 %t6, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = load i64, ptr %l12, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load i64, ptr %l14, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb3:
  %t20 = load i64, ptr %l13, !tbaa !24
  %t21 = load i64, ptr %l12, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l14, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l14, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l31, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb5
bb5:
  %t36 = load i64, ptr %l31, !tbaa !24
  store i64 %t36, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l28, !tbaa !24
  store i64 %t37, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l16, !tbaa !24
  %t39 = load i64, ptr %l15, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb8, label %bb9
bb8:
  br label %bb77
bb9:
  br label %bb10
bb10:
  %t46 = load i64, ptr %l12, !tbaa !24
  %t47 = load i64, ptr %l16, !tbaa !24
  %t48 = load i64, ptr %l14, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  store i64 %t54, ptr %l17, !tbaa !24
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Call", ptr %t56, i32 0, i32 1
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l50, !tbaa !27
  %t60 = load i64, ptr %l17, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 %t60
  %t65 = load ptr, ptr %t64, !tbaa !39
  store ptr %t65, ptr %l18, !tbaa !29
  store { i64, ptr } %a10, ptr %l53, !tbaa !27
  %t68 = load i64, ptr %l17, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i1, ptr %t71, i64 %t68
  %t73 = load i1, ptr %t72, !tbaa !31
  br i1 %t73, label %bb11, label %bb12
bb11:
  br label %bb76
bb12:
  br label %bb13
bb13:
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t75, ptr %l56, !tbaa !27
  %t76 = load i64, ptr %l17, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i64, ptr %t79, i64 %t76
  %t81 = load i64, ptr %t80, !tbaa !34
  %t83 = icmp sge i64 %t81, 0
  br i1 %t83, label %bb14, label %bb15
bb14:
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t85, ptr %l61, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t86, ptr %l62, !tbaa !27
  %t87 = load i64, ptr %l17, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i64, ptr %t90, i64 %t87
  %t92 = load i64, ptr %t91, !tbaa !34
  %t94 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, [2 x i64] }, ptr %t95, i64 %t92
  %t97 = load { i64, [2 x i64] }, ptr %t96
  %t99 = call i1 @compiler_2fscope_2ecapTerm({ i64, [2 x i64] } %t97)
  store i1 %t99, ptr %l66
  br label %bb16
bb15:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb17
bb16:
  %t100 = load i1, ptr %l66, !tbaa !21
  store i1 %t100, ptr %l60, !tbaa !21
  br label %bb17
bb17:
  %t101 = load i1, ptr %l60, !tbaa !21
  br i1 %t101, label %bb18, label %bb19
bb18:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l18, !tbaa !29
  %t107 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t102, ptr %t103)
  store i1 %t107, ptr %l71
  br label %bb20
bb19:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb25
bb20:
  %t108 = load i1, ptr %l71, !tbaa !21
  br i1 %t108, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb24
bb22:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l18, !tbaa !29
  %t113 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHeldFresh(ptr %v0, ptr %v1, ptr %t109, ptr %t110)
  store i1 %t113, ptr %l75
  br label %bb23
bb23:
  %t114 = load i1, ptr %l75, !tbaa !21
  store i1 %t114, ptr %l72, !tbaa !21
  br label %bb24
bb24:
  %t115 = load i1, ptr %l72, !tbaa !21
  store i1 %t115, ptr %l67, !tbaa !21
  br label %bb25
bb25:
  %t116 = load i1, ptr %l67, !tbaa !21
  br i1 %t116, label %bb26, label %bb27
bb26:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t118, ptr %l77, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t119, ptr %l78, !tbaa !27
  %t120 = load i64, ptr %l17, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i64, ptr %t123, i64 %t120
  %t125 = load i64, ptr %t124, !tbaa !34
  %t127 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr { i64, [2 x i64] }, ptr %t128, i64 %t125
  %t130 = load { i64, [2 x i64] }, ptr %t129
  %t133 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %t117, { i64, [2 x i64] } %t130, i64 -1)
  store { i64, [2 x i64] } %t133, ptr %l82
  br label %bb28
bb27:
  %t134 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t134, ptr %l112, !tbaa !27
  %t135 = load i64, ptr %l17, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i64, ptr %t138, i64 %t135
  %t140 = load i64, ptr %t139, !tbaa !34
  %t142 = icmp sge i64 %t140, 0
  br i1 %t142, label %bb40, label %bb41
bb28:
  %t144 = load { i64, [2 x i64] }, ptr %l82
  %t146 = extractvalue { i64, [2 x i64] } %t144, 0
  %t147 = icmp eq i64 %t146, 0
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb29, label %bb30
bb29:
  %t151 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t151, ptr %l86, !tbaa !27
  %t152 = load i64, ptr %l17, !tbaa !24
  store i64 %t152, ptr %l87, !tbaa !24
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l18, !tbaa !29
  %t156 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t156, ptr %l91, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t157, ptr %l92, !tbaa !27
  %t158 = load i64, ptr %l17, !tbaa !24
  %t160 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr i64, ptr %t161, i64 %t158
  %t163 = load i64, ptr %t162, !tbaa !34
  %t165 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr { i64, [2 x i64] }, ptr %t166, i64 %t163
  %t168 = load { i64, [2 x i64] }, ptr %t167
  %t172 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t153, ptr %t154, { i64, [2 x i64] } %t168)
  store %"compiler/scope:Val" %t172, ptr %l96
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t173 = load %"compiler/scope:Val", ptr %l96
  %t174 = load i64, ptr %l87, !tbaa !24
  %t175 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr %"compiler/scope:Val", ptr %t176, i64 %t174
  store %"compiler/scope:Val" %t173, ptr %t177
  br label %bb76
bb32:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/scope:Scoper", ptr %t178, i32 0, i32 29
  %t181 = load i1, ptr %t180, !tbaa !21
  br i1 %t181, label %bb33, label %bb34
bb33:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l99, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load ptr, ptr %l18, !tbaa !29
  %t188 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t184, ptr %t185)
  store %"compiler/source:Span" %t188, ptr %l102
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t189 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildIntoCapture(ptr %v0)
  store %"compiler/diagmsg:Msg" %t189, ptr %l103
  br label %bb36
bb36:
  %t190 = load ptr, ptr %l99, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l102
  %t192 = load %"compiler/diagmsg:Msg", ptr %l103
  %t193 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t190, %"compiler/source:Span" %t191, %"compiler/diagmsg:Msg" %t192)
  store i64 %t193, ptr %l104
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t194 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t194, ptr %l105, !tbaa !27
  %t195 = load i64, ptr %l17, !tbaa !24
  store i64 %t195, ptr %l106, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l18, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t199
  %t200 = getelementptr { i64, [2 x i64] }, ptr %t199, i32 0, i32 0
  store i64 0, ptr %t200
  %t201 = load { i64, [2 x i64] }, ptr %t199
  %t205 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t196, ptr %t197, { i64, [2 x i64] } %t201)
  store %"compiler/scope:Val" %t205, ptr %l111
  br label %bb39
bb39:
  %t206 = load %"compiler/scope:Val", ptr %l111
  %t207 = load i64, ptr %l106, !tbaa !24
  %t208 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr %"compiler/scope:Val", ptr %t209, i64 %t207
  store %"compiler/scope:Val" %t206, ptr %t210
  br label %bb75
bb40:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load ptr, ptr %l18, !tbaa !29
  %t216 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t211, ptr %t212)
  store i1 %t216, ptr %l120
  br label %bb42
bb41:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb47
bb42:
  %t217 = load i1, ptr %l120, !tbaa !21
  br i1 %t217, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l121, !tbaa !21
  br label %bb46
bb44:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load ptr, ptr %l18, !tbaa !29
  %t222 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHeldFresh(ptr %v0, ptr %v1, ptr %t218, ptr %t219)
  store i1 %t222, ptr %l124
  br label %bb45
bb45:
  %t223 = load i1, ptr %l124, !tbaa !21
  store i1 %t223, ptr %l121, !tbaa !21
  br label %bb46
bb46:
  %t224 = load i1, ptr %l121, !tbaa !21
  store i1 %t224, ptr %l116, !tbaa !21
  br label %bb47
bb47:
  %t225 = load i1, ptr %l116, !tbaa !21
  br i1 %t225, label %bb48, label %bb49
bb48:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t228, ptr %l127, !tbaa !27
  %t229 = load i64, ptr %l17, !tbaa !24
  %t231 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr i64, ptr %t232, i64 %t229
  %t234 = load i64, ptr %t233, !tbaa !34
  %t240 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindingArg(ptr %v0, ptr %v3, ptr %t226, i64 %a2, i64 %t234, { i64, ptr } %a4)
  store i64 %t240, ptr %l131
  br label %bb50
bb49:
  %t241 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t241, ptr %l156, !tbaa !27
  %t242 = load i64, ptr %l17, !tbaa !24
  %t244 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = getelementptr i64, ptr %t245, i64 %t242
  %t247 = load i64, ptr %t246, !tbaa !34
  %t249 = icmp slt i64 %t247, 0
  br i1 %t249, label %bb59, label %bb60
bb50:
  %t251 = load i64, ptr %l131, !tbaa !24
  store i64 %t251, ptr %l19, !tbaa !24
  %t252 = load i64, ptr %l19, !tbaa !24
  %t254 = icmp sge i64 %t252, 0
  br i1 %t254, label %bb51, label %bb52
bb51:
  %t256 = load i64, ptr %l19, !tbaa !24
  %t257 = load i64, ptr %l17, !tbaa !24
  %t260 = icmp ne i64 %t256, %t257
  store i1 %t260, ptr %l134, !tbaa !21
  br label %bb53
bb52:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb53
bb53:
  %t262 = load i1, ptr %l134, !tbaa !21
  br i1 %t262, label %bb54, label %bb55
bb54:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t266 = getelementptr %"compiler/typed:Call", ptr %t264, i32 0, i32 1
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  store { i64, ptr } %t267, ptr %l140, !tbaa !27
  %t268 = load i64, ptr %l19, !tbaa !24
  %t270 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr ptr, ptr %t271, i64 %t268
  %t273 = load ptr, ptr %t272, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaseFrom(ptr %v0, ptr %v1, ptr %t263, ptr %t273)
  br label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb57
bb57:
  %t276 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t276, ptr %l143, !tbaa !27
  %t277 = load i64, ptr %l17, !tbaa !24
  store i64 %t277, ptr %l144, !tbaa !24
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load ptr, ptr %l18, !tbaa !29
  %t280 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t281 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t281, ptr %l148, !tbaa !27
  %t282 = load i64, ptr %l17, !tbaa !24
  %t284 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !27
  %t286 = getelementptr i64, ptr %t285, i64 %t282
  %t287 = load i64, ptr %t286, !tbaa !34
  %t298 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargTemp(ptr %v0, ptr %v1, ptr %v4, ptr %t278, ptr %t279, { i64, ptr } %t280, i64 %t287, { i64, [2 x i64] } %a5, i1 %a6, { i64, [2 x i64] } %a7)
  store %"compiler/scope:Val" %t298, ptr %l154
  br label %bb58
bb58:
  %t299 = load %"compiler/scope:Val", ptr %l154
  %t300 = load i64, ptr %l144, !tbaa !24
  %t301 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr %"compiler/scope:Val", ptr %t302, i64 %t300
  store %"compiler/scope:Val" %t299, ptr %t303
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/scope:Scoper", ptr %t304, i32 0, i32 206
  store i64 -1, ptr %t306, !tbaa !24
  br label %bb74
bb59:
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t309 = getelementptr %"compiler/typed:Call", ptr %t307, i32 0, i32 4
  %t310 = load i1, ptr %t309, !tbaa !21
  br i1 %t310, label %bb61, label %bb62
bb60:
  br label %bb73
bb61:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/scope:Scoper", ptr %t312, i32 0, i32 43
  %t315 = load i64, ptr %t314, !tbaa !24
  %t317 = icmp sge i64 %t315, 0
  store i1 %t317, ptr %l162, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb63
bb63:
  %t319 = load i1, ptr %l162, !tbaa !21
  br i1 %t319, label %bb64, label %bb65
bb64:
  %t320 = load ptr, ptr %l0, !tbaa !29
  store ptr %t320, ptr %l167, !tbaa !29
  %t321 = load ptr, ptr %l18, !tbaa !29
  %t323 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t321)
  store i32 %t323, ptr %l169
  br label %bb66
bb65:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb68
bb66:
  %t324 = load ptr, ptr %l167, !tbaa !29
  %t325 = load i32, ptr %l169, !tbaa !23
  %t326 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t324, i32 %t325)
  store i1 %t326, ptr %l170
  br label %bb67
bb67:
  %t327 = load i1, ptr %l170, !tbaa !21
  store i1 %t327, ptr %l166, !tbaa !21
  br label %bb68
bb68:
  %t328 = load i1, ptr %l166, !tbaa !21
  %t329 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t329, ptr %l171, !tbaa !27
  %t330 = load i64, ptr %l17, !tbaa !24
  store i64 %t330, ptr %l172, !tbaa !24
  %t331 = load ptr, ptr %l0, !tbaa !29
  store ptr %t331, ptr %l173, !tbaa !29
  %t332 = load ptr, ptr %l18, !tbaa !29
  store ptr %t332, ptr %l175, !tbaa !29
  br i1 %t328, label %bb69, label %bb70
bb69:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/scope:Scoper", ptr %t336, i32 0, i32 43
  %t339 = load i64, ptr %t338, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t340
  %t341 = getelementptr { i64, [2 x i64] }, ptr %t340, i32 0, i32 0
  store i64 2, ptr %t341
  %t343 = insertvalue { i64 } undef, i64 %t339, 0
  %t344 = getelementptr { i64, [2 x i64] }, ptr %t340, i32 0, i32 1
  store { i64 } %t343, ptr %t344
  %t345 = load { i64, [2 x i64] }, ptr %t340
  store { i64, [2 x i64] } %t345, ptr %l177
  br label %bb71
bb70:
  store { i64, [2 x i64] } zeroinitializer, ptr %t347
  %t348 = getelementptr { i64, [2 x i64] }, ptr %t347, i32 0, i32 0
  store i64 0, ptr %t348
  %t349 = load { i64, [2 x i64] }, ptr %t347
  store { i64, [2 x i64] } %t349, ptr %l177
  br label %bb71
bb71:
  %t351 = load ptr, ptr %l173, !tbaa !29
  %t352 = load ptr, ptr %l175, !tbaa !29
  %t353 = load { i64, [2 x i64] }, ptr %l177
  %t354 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t351, ptr %t352, { i64, [2 x i64] } %t353)
  store %"compiler/scope:Val" %t354, ptr %l182
  br label %bb72
bb72:
  %t355 = load %"compiler/scope:Val", ptr %l182
  %t356 = load i64, ptr %l172, !tbaa !24
  %t357 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = getelementptr %"compiler/scope:Val", ptr %t358, i64 %t356
  store %"compiler/scope:Val" %t355, ptr %t359
  br label %bb73
bb73:
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t360 = load i64, ptr %l16, !tbaa !24
  %t362 = add i64 %t360, 1
  store i64 %t362, ptr %l16, !tbaa !24
  br label %bb7
bb77:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignsWhole(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l19 = alloca i64
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 1
  store i64 %t3, ptr %l10, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 16
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = icmp sge i64 %t9, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 16
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t16, i64 %t17)
  store i64 %t20, ptr %l19
  br label %bb5
bb5:
  %t21 = load i64, ptr %l19, !tbaa !24
  store i64 %t21, ptr %l3, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 16
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = add i64 %t25, 1
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t24, i64 %t27)
  store i64 %t30, ptr %l24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l24, !tbaa !24
  store i64 %t31, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb12
bb9:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l31, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb11
bb11:
  %t58 = load i64, ptr %l31, !tbaa !24
  store i64 %t58, ptr %l28, !tbaa !24
  br label %bb12
bb12:
  %t59 = load i64, ptr %l28, !tbaa !24
  store i64 %t59, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t60 = load i64, ptr %l7, !tbaa !24
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  br label %bb16
bb16:
  %t68 = load i64, ptr %l3, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l5, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Scoper", ptr %t78, i32 0, i32 17
  %t84 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t80, i64 %t76)
  store i64 %t84, ptr %l52
  br label %bb17
bb17:
  %t86 = load i64, ptr %l52, !tbaa !24
  %t88 = icmp eq i64 %t86, %a2
  br i1 %t88, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t91 = load i64, ptr %l7, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l7, !tbaa !24
  br label %bb13
bb22:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
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
  %t36 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t30, ptr %t34, i64 %t36)
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
  %t71 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t65, ptr %t69, i64 %t71)
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
  %t88 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t83, ptr %t87, i64 %t88)
  br label %bb18
bb18:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Arm", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t92, ptr %t96)
  br label %bb19
bb19:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Arm", ptr %t100, i32 0, i32 4
  %t103 = load ptr, ptr %t102, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t99, ptr %t103, i64 %a2)
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndCallTree(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/scope:instTree"
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"compiler/scope:fnRecs"
  %l20 = alloca ptr
  %l21 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i1
  %l37 = alloca i64
  %l40 = alloca i64
  %l46 = alloca ptr
  %l55 = alloca i64
  %l58 = alloca %"compiler/scope:instTree"
  %l63 = alloca ptr
  %l68 = alloca ptr
  %l72 = alloca %"compiler/scope:instTree"
  %l74 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l82 = alloca i32
  %l86 = alloca i1
  %l89 = alloca i1
  %l94 = alloca ptr
  %l99 = alloca i32
  %l100 = alloca { i64, ptr }
  %l105 = alloca i64
  %l111 = alloca i64
  %l114 = alloca i64
  %l135 = alloca i1
  %l136 = alloca i64
  %l140 = alloca i64
  %l143 = alloca i1
  %l150 = alloca { i64, ptr }
  %l153 = alloca i1
  %l154 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca { i64, ptr }
  %l162 = alloca %"compiler/scope:fnRecs"
  %l164 = alloca i64
  %l166 = alloca i64
  %l171 = alloca %"compiler/scope:fnRec"
  %l173 = alloca %"compiler/scope:fnRec"
  %l183 = alloca ptr
  %l189 = alloca { i64, ptr }
  %l192 = alloca i1
  %l196 = alloca { i64, ptr }
  %l203 = alloca i64
  %l209 = alloca ptr
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Call", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i64 %t8, ptr %l33
  br label %bb1
bb1:
  %t9 = load i64, ptr %l33, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb5
bb3:
  %t14 = load i64, ptr %l5, !tbaa !24
  store i64 %t14, ptr %l37, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 6
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l40
  br label %bb4
bb4:
  %t20 = load i64, ptr %l37, !tbaa !24
  %t21 = load i64, ptr %l40, !tbaa !24
  %t22 = icmp sge i64 %t20, %t21
  store i1 %t22, ptr %l36, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l36, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 1
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store ptr %t32, ptr %l46
  br label %bb9
bb9:
  %t33 = load ptr, ptr %l46, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 1
  %t36 = load { i64, [2 x i64] }, ptr %t35
  %t38 = extractvalue { i64, [2 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 1
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 34
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Call", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %t48, !tbaa !23
  %t52 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eTwin(ptr %v0, ptr %t45, i32 %t49)
  store i64 %t52, ptr %l55
  br label %bb12
bb11:
  br label %bb24
bb12:
  %t53 = load i64, ptr %l55, !tbaa !24
  store i64 %t53, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t56 = icmp sge i64 %t54, 0
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 236
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/scope:twinTab", ptr %t61, i32 0, i32 5
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store ptr %t67, ptr %l63
  br label %bb15
bb14:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store ptr %t72, ptr %l68
  br label %bb16
bb15:
  %t73 = load ptr, ptr %l63, !tbaa !29
  %t75 = getelementptr %"compiler/scope:summary", ptr %t73, i32 0, i32 17
  %t76 = load %"compiler/scope:instTree", ptr %t75
  store %"compiler/scope:instTree" %t76, ptr %l58
  br label %bb17
bb16:
  %t78 = load ptr, ptr %l68, !tbaa !29
  %t80 = getelementptr %"compiler/scope:summary", ptr %t78, i32 0, i32 17
  %t81 = load %"compiler/scope:instTree", ptr %t80
  store %"compiler/scope:instTree" %t81, ptr %l58
  br label %bb17
bb17:
  %t84 = call %"compiler/scope:instTree" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstTree(ptr %s2, ptr %l58)
  store %"compiler/scope:instTree" %t84, ptr %l72
  br label %bb18
bb18:
  %t85 = load %"compiler/scope:instTree", ptr %l72
  store %"compiler/scope:instTree" %t85, ptr %l7
  %t86 = getelementptr %"compiler/scope:instTree", ptr %l7, i32 0, i32 0
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eLen_3ccompiler_2fscope_3ainstNode_3e(ptr %s2, ptr %t86)
  store i64 %t88, ptr %l74
  br label %bb19
bb19:
  %t89 = load i64, ptr %l74, !tbaa !24
  %t90 = icmp sgt i64 %t89, 0
  br i1 %t90, label %bb20, label %bb21
bb20:
  %t92 = load ptr, ptr %l3, !tbaa !29
  %t95 = call i64 @compiler_2fscope_2ecopyNode(ptr %s2, ptr %v2, ptr %l7, i64 0, ptr %t92)
  store i64 %t95, ptr %l79
  br label %bb22
bb21:
  store i64 -1, ptr %l76, !tbaa !24
  br label %bb23
bb22:
  %t96 = load i64, ptr %l79, !tbaa !24
  store i64 %t96, ptr %l76, !tbaa !24
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s2)
  %t97 = load i64, ptr %l76, !tbaa !24
  store i64 %t97, ptr %rv
  br label %ret
bb24:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t102 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstStruct(ptr %v0, ptr %t98, i32 %a2)
  store i32 %t102, ptr %l82
  br label %bb25
bb25:
  %t103 = load i32, ptr %l82, !tbaa !23
  store i32 %t103, ptr %l8, !tbaa !23
  %t104 = load i32, ptr %l8, !tbaa !23
  %t105 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t108 = icmp eq i32 %t104, %t105
  br i1 %t108, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb29
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l8, !tbaa !23
  %t114 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstType(ptr %v0, ptr %t110, i32 %t111)
  store i1 %t114, ptr %l89
  br label %bb28
bb28:
  %t115 = load i1, ptr %l89, !tbaa !21
  %t116 = xor i1 %t115, true
  store i1 %t116, ptr %l86, !tbaa !21
  br label %bb29
bb29:
  %t118 = load i1, ptr %l86, !tbaa !21
  br i1 %t118, label %bb30, label %bb31
bb30:
  store i64 -1, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/scope:Scoper", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 2
  store ptr %t125, ptr %l94, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/scope:Scoper", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l8, !tbaa !23
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l99
  br label %bb33
bb33:
  %t136 = load ptr, ptr %l94, !tbaa !29
  %t137 = load i32, ptr %l99, !tbaa !23
  %t138 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t136, i32 %t137)
  store { i64, ptr } %t138, ptr %l100
  br label %bb34
bb34:
  %t139 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t139, ptr %l9, !tbaa !27
  %t140 = load ptr, ptr %l3, !tbaa !29
  %t141 = load i32, ptr %l8, !tbaa !23
  %t142 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t148 = call i64 @compiler_2fscope_2enewNode(ptr %v2, ptr %t140, i32 %t141, i64 %t144)
  store i64 %t148, ptr %l105
  br label %bb35
bb35:
  %t149 = load i64, ptr %l105, !tbaa !24
  store i64 %t149, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  store i64 %t152, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t154 = load i64, ptr %l12, !tbaa !24
  %t155 = load i64, ptr %l11, !tbaa !24
  %t158 = icmp sgt i64 %t154, %t155
  br i1 %t158, label %bb36, label %bb37
bb36:
  %t160 = load i64, ptr %l13, !tbaa !24
  %t162 = icmp sgt i64 %t160, 0
  br i1 %t162, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb41
bb38:
  %t164 = load i64, ptr %l12, !tbaa !24
  %t165 = load i64, ptr %l11, !tbaa !24
  %t168 = sub i64 %t164, %t165
  %t169 = load i64, ptr %l13, !tbaa !24
  %t172 = add i64 %t168, %t169
  %t174 = sub i64 %t172, 1
  %t175 = load i64, ptr %l13, !tbaa !24
  %t178 = sdiv i64 %t174, %t175
  store i64 %t178, ptr %l114, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb40
bb40:
  %t180 = load i64, ptr %l114, !tbaa !24
  store i64 %t180, ptr %l111, !tbaa !24
  br label %bb41
bb41:
  %t181 = load i64, ptr %l111, !tbaa !24
  store i64 %t181, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb42
bb42:
  %t182 = load i64, ptr %l15, !tbaa !24
  %t183 = load i64, ptr %l14, !tbaa !24
  %t186 = icmp slt i64 %t182, %t183
  %t188 = xor i1 %t186, true
  br i1 %t188, label %bb43, label %bb44
bb43:
  br label %bb84
bb44:
  br label %bb45
bb45:
  %t190 = load i64, ptr %l11, !tbaa !24
  %t191 = load i64, ptr %l15, !tbaa !24
  %t192 = load i64, ptr %l13, !tbaa !24
  %t195 = mul i64 %t191, %t192
  %t198 = add i64 %t190, %t195
  store i64 %t198, ptr %l16, !tbaa !24
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i32, ptr %l8, !tbaa !23
  %t202 = load i64, ptr %l16, !tbaa !24
  %t206 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efixedField(ptr %v0, ptr %t200, i32 %t201, i64 %t202)
  store i1 %t206, ptr %l135
  br label %bb46
bb46:
  %t207 = load i1, ptr %l135, !tbaa !21
  br i1 %t207, label %bb47, label %bb48
bb47:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i32, ptr %l8, !tbaa !23
  %t210 = load i64, ptr %l16, !tbaa !24
  %t214 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorFieldParam(ptr %v0, ptr %t208, i32 %t209, i64 %t210)
  store i64 %t214, ptr %l140
  br label %bb49
bb48:
  store i64 -1, ptr %l136, !tbaa !24
  br label %bb50
bb49:
  %t215 = load i64, ptr %l140, !tbaa !24
  store i64 %t215, ptr %l136, !tbaa !24
  br label %bb50
bb50:
  %t216 = load i64, ptr %l136, !tbaa !24
  store i64 %t216, ptr %l17, !tbaa !24
  %t217 = load i64, ptr %l17, !tbaa !24
  %t219 = icmp slt i64 %t217, 0
  br i1 %t219, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l143, !tbaa !21
  br label %bb53
bb52:
  %t221 = load i64, ptr %l17, !tbaa !24
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t224 = getelementptr %"compiler/typed:Call", ptr %t222, i32 0, i32 1
  %t225 = load { i64, ptr }, ptr %t224, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t225, 0
  %t230 = icmp sge i64 %t221, %t227
  store i1 %t230, ptr %l143, !tbaa !21
  br label %bb53
bb53:
  %t232 = load i1, ptr %l143, !tbaa !21
  br i1 %t232, label %bb54, label %bb55
bb54:
  br label %bb83
bb55:
  br label %bb56
bb56:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t234, ptr %l150, !tbaa !27
  %t235 = load i64, ptr %l16, !tbaa !24
  %t237 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr i32, ptr %t238, i64 %t235
  %t240 = load i32, ptr %t239, !tbaa !33
  %t243 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t233, i32 %t240)
  store i1 %t243, ptr %l153
  br label %bb57
bb57:
  %t244 = load i1, ptr %l153, !tbaa !21
  br i1 %t244, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s7
  %t245 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %s7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t245, ptr %l154
  br label %bb60
bb59:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t247, ptr %l189, !tbaa !27
  %t248 = load i64, ptr %l16, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr i32, ptr %t251, i64 %t248
  %t253 = load i32, ptr %t252, !tbaa !33
  %t256 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t246, i32 %t253)
  store i1 %t256, ptr %l192
  br label %bb75
bb60:
  %t257 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l154
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t257, ptr %l18
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load ptr, ptr %l1, !tbaa !29
  %t261 = getelementptr %"compiler/typed:Call", ptr %t259, i32 0, i32 1
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !27
  store { i64, ptr } %t262, ptr %l157, !tbaa !27
  %t263 = load i64, ptr %l17, !tbaa !24
  %t265 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr ptr, ptr %t266, i64 %t263
  %t268 = load ptr, ptr %t267, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %s7, ptr %t258, ptr %t268, ptr %l18)
  br label %bb61
bb61:
  %t273 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %s7)
  store %"compiler/scope:fnRecs" %t273, ptr %l162
  br label %bb62
bb62:
  %t274 = load %"compiler/scope:fnRecs", ptr %l162
  store %"compiler/scope:fnRecs" %t274, ptr %l19
  %t275 = getelementptr %"compiler/scope:fnRecs", ptr %l19, i32 0, i32 1
  store i1 true, ptr %t275, !tbaa !21
  store ptr %l18, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s9
  %t277 = load i64, ptr %l21, !tbaa !24
  store i64 %t277, ptr %l164, !tbaa !24
  %t278 = load ptr, ptr %l20, !tbaa !29
  %t280 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s7, ptr %t278)
  store i64 %t280, ptr %l166
  br label %bb64
bb64:
  %t281 = load i64, ptr %l164, !tbaa !24
  %t282 = load i64, ptr %l166, !tbaa !24
  %t283 = icmp slt i64 %t281, %t282
  %t285 = xor i1 %t283, true
  br i1 %t285, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s9)
  br label %bb72
bb66:
  br label %bb67
bb67:
  %t287 = load ptr, ptr %l20, !tbaa !29
  %t288 = load i64, ptr %l21, !tbaa !24
  %t291 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s7, ptr %s7, ptr %t287, i64 %t288)
  store %"compiler/scope:fnRec" %t291, ptr %l171
  br label %bb68
bb68:
  %t293 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s9, ptr %l171)
  store %"compiler/scope:fnRec" %t293, ptr %l173
  br label %bb69
bb69:
  %t294 = load %"compiler/scope:fnRec", ptr %l173
  call void @compiler_2fscope_2eaddRec(ptr %s7, ptr %s9, ptr %l19, %"compiler/scope:fnRec" %t294)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s9)
  br label %bb71
bb71:
  %t298 = load i64, ptr %l21, !tbaa !24
  %t300 = add i64 %t298, 1
  store i64 %t300, ptr %l21, !tbaa !24
  br label %bb63
bb72:
  %t302 = load i64, ptr %l10, !tbaa !24
  %t304 = load i64, ptr %l16, !tbaa !24
  store i64 %t304, ptr %l24, !tbaa !24
  %t306 = load ptr, ptr %l3, !tbaa !29
  %t308 = getelementptr %"compiler/scope:instTree", ptr %t306, i32 0, i32 0
  %t312 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v2, ptr %v2, ptr %t308, i64 %t302)
  store ptr %t312, ptr %l183
  br label %bb73
bb73:
  %t313 = load ptr, ptr %l183, !tbaa !29
  %t316 = getelementptr %"compiler/scope:instNode", ptr %t313, i32 0, i32 1
  %t317 = load i64, ptr %l24, !tbaa !24
  %t318 = load %"compiler/scope:fnRecs", ptr %l19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eSetAt_3ccompiler_2fscope_3afnRecs_3e(ptr %v2, ptr %s7, ptr %t316, i64 %t317, %"compiler/scope:fnRecs" %t318)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s7)
  br label %bb82
bb75:
  %t322 = load i1, ptr %l192, !tbaa !21
  %t323 = xor i1 %t322, true
  br i1 %t323, label %bb76, label %bb77
bb76:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load ptr, ptr %l1, !tbaa !29
  %t328 = getelementptr %"compiler/typed:Call", ptr %t326, i32 0, i32 1
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  store { i64, ptr } %t329, ptr %l196, !tbaa !27
  %t330 = load i64, ptr %l17, !tbaa !24
  %t332 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t333 = load ptr, ptr %t332, !tbaa !27
  %t334 = getelementptr ptr, ptr %t333, i64 %t330
  %t335 = load ptr, ptr %t334, !tbaa !39
  %t337 = load ptr, ptr %l3, !tbaa !29
  %t340 = add i64 %a4, 1
  %t345 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndTree(ptr %v0, ptr %v1, ptr %v2, ptr %t325, ptr %t335, ptr %t337, i64 %t340)
  store i64 %t345, ptr %l203
  br label %bb78
bb77:
  br label %bb81
bb78:
  %t346 = load i64, ptr %l203, !tbaa !24
  store i64 %t346, ptr %l26, !tbaa !24
  %t347 = load i64, ptr %l10, !tbaa !24
  %t349 = load i64, ptr %l16, !tbaa !24
  store i64 %t349, ptr %l28, !tbaa !24
  %t351 = load ptr, ptr %l3, !tbaa !29
  %t353 = getelementptr %"compiler/scope:instTree", ptr %t351, i32 0, i32 0
  %t357 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v2, ptr %v2, ptr %t353, i64 %t347)
  store ptr %t357, ptr %l209
  br label %bb79
bb79:
  %t358 = load ptr, ptr %l209, !tbaa !29
  %t361 = getelementptr %"compiler/scope:instNode", ptr %t358, i32 0, i32 2
  %t362 = load i64, ptr %l28, !tbaa !24
  %t363 = load i64, ptr %l26, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v2, ptr %t361, i64 %t362, i64 %t363)
  br label %bb80
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t367 = load i64, ptr %l15, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l15, !tbaa !24
  br label %bb42
bb84:
  %t371 = load i64, ptr %l10, !tbaa !24
  store i64 %t371, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndError(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { { i64, ptr }, { i64, ptr } }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { %"compiler/source:Span", { i64, ptr } }
  %l18 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l39 = alloca { { i64, ptr }, { i64, ptr } }
  %l45 = alloca i64
  %l47 = alloca i32
  %l49 = alloca ptr
  %l52 = alloca i32
  %l54 = alloca %"compiler/typed:Local"
  %l59 = alloca i1
  %l64 = alloca i32
  %l69 = alloca i32
  %l74 = alloca i32
  %l77 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l84 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca i32
  %l91 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l93 = alloca %"compiler/source:Span"
  %l95 = alloca i1
  %l97 = alloca %"compiler/diagmsg:Msg"
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l107 = alloca %"compiler/diagmsg:Msg"
  %l108 = alloca i64
  %l117 = alloca ptr
  %l119 = alloca ptr
  %l123 = alloca i64
  %l124 = alloca ptr
  %l127 = alloca { i64, ptr }
  %l133 = alloca { %"compiler/source:Span", { i64, ptr } }
  %l136 = alloca ptr
  %l137 = alloca %"compiler/source:Span"
  %l139 = alloca i1
  %l141 = alloca %"compiler/diagmsg:Msg"
  %l148 = alloca %"compiler/diagmsg:Msg"
  %l151 = alloca %"compiler/diagmsg:Msg"
  %l152 = alloca i64
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l157 = alloca ptr
  %l160 = alloca { i64, ptr }
  %l163 = alloca ptr
  %l164 = alloca %"compiler/source:Span"
  %l166 = alloca %"compiler/diagmsg:Msg"
  %l167 = alloca i64
  %l169 = alloca i1
  %l171 = alloca ptr
  %l172 = alloca %"compiler/source:Span"
  %l176 = alloca %"compiler/diagmsg:Msg"
  %l177 = alloca i64
  %l178 = alloca ptr
  %l179 = alloca %"compiler/source:Span"
  %l181 = alloca i1
  %l183 = alloca %"compiler/diagmsg:Msg"
  %l186 = alloca %"compiler/diagmsg:Msg"
  %l188 = alloca %"compiler/diagmsg:Msg"
  %l189 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l22
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l22, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  %t11 = call { i64, ptr } @compiler_2fscope_2ebndText(ptr %s0, i64 %a4)
  store { i64, ptr } %t11, ptr %l24
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t18 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t13, ptr %t14)
  store ptr %t18, ptr %l28
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l28, !tbaa !29
  store ptr %t19, ptr %l7, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store %"compiler/source:Span" %t24, ptr %l31
  br label %bb4
bb4:
  %t25 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t25, ptr %l8
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l2, !tbaa !24
  %t28 = load i1, ptr %l3, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 111
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 110
  %t36 = load i64, ptr %t35, !tbaa !24
  %t42 = call { { i64, ptr }, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordFor(ptr %v0, ptr %s0, ptr %t26, i64 %t27, i1 %t28, i32 %t32, i64 %t36)
  store { { i64, ptr }, { i64, ptr } } %t42, ptr %l39
  br label %bb5
bb5:
  %t43 = load { { i64, ptr }, { i64, ptr } }, ptr %l39
  store { { i64, ptr }, { i64, ptr } } %t43, ptr %l9
  %t44 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 0
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t47 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l9, i32 0, i32 1
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l11, !tbaa !27
  %t50 = load i1, ptr %l3, !tbaa !21
  br i1 %t50, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t52 = load ptr, ptr %l5, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 5
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t54)
  store i64 %t56, ptr %l45
  br label %bb8
bb7:
  br label %bb34
bb8:
  %t57 = load i64, ptr %l45, !tbaa !24
  %t58 = icmp sgt i64 %t57, 0
  br i1 %t58, label %bb9, label %bb10
bb9:
  %t60 = load ptr, ptr %l5, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 7
  store ptr %t62, ptr %l49, !tbaa !29
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Body", ptr %t63, i32 0, i32 5
  %t67 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t65, i64 0)
  store i32 %t67, ptr %l52
  br label %bb11
bb10:
  %t68 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t68, ptr %l47, !tbaa !23
  br label %bb13
bb11:
  %t70 = load i32, ptr %l52, !tbaa !23
  %t71 = sext i32 %t70 to i64
  %t72 = load ptr, ptr %l49, !tbaa !29
  %t74 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t72, i64 %t71)
  store %"compiler/typed:Local" %t74, ptr %l54
  br label %bb12
bb12:
  %t75 = getelementptr %"compiler/typed:Local", ptr %l54, i32 0, i32 2
  %t76 = load i32, ptr %t75, !tbaa !23
  store i32 %t76, ptr %l47, !tbaa !23
  br label %bb13
bb13:
  %t78 = load i32, ptr %l47, !tbaa !23
  store i32 %t78, ptr %l12, !tbaa !23
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l12, !tbaa !23
  %t83 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l59
  br label %bb14
bb14:
  %t84 = load i1, ptr %l59, !tbaa !21
  br i1 %t84, label %bb15, label %bb16
bb15:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 0
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l12, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l64
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t95 = load i32, ptr %l64, !tbaa !23
  store i32 %t95, ptr %l12, !tbaa !23
  br label %bb18
bb18:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l12, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l69
  br label %bb19
bb19:
  %t106 = load i32, ptr %l69, !tbaa !23
  store i32 %t106, ptr %l12, !tbaa !23
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/scope:Scoper", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l12, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l74
  br label %bb20
bb20:
  %t117 = load i32, ptr %l74, !range !{i32 0, i32 33}
  %t119 = trunc i64 18 to i32
  %t120 = icmp eq i32 %t117, %t119
  br i1 %t120, label %bb21, label %bb22
bb21:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/scope:Scoper", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/load:Loader", ptr %t128, i32 0, i32 3
  %t131 = load ptr, ptr %t130, !tbaa !29
  store ptr %t131, ptr %l81, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 0
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l84, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l12, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l89
  br label %bb23
bb22:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l77, !tbaa !27
  br label %bb26
bb23:
  %t148 = load ptr, ptr %l84, !tbaa !29
  %t149 = load i32, ptr %l89, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t150, ptr %l90
  br label %bb24
bb24:
  %t151 = load ptr, ptr %l81, !tbaa !29
  %t152 = load i32, ptr %l90, !tbaa !23
  %t153 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s1, ptr %t151, i32 %t152)
  store { i64, ptr } %t153, ptr %l91
  br label %bb25
bb25:
  %t154 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t154, ptr %l77, !tbaa !27
  br label %bb26
bb26:
  %t155 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t155, ptr %l13, !tbaa !27
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l92, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t157, ptr %l93
  %t158 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t160 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s1, { i64, ptr } %t158, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t160, ptr %l95
  br label %bb27
bb27:
  %t161 = load i1, ptr %l95, !tbaa !21
  %t162 = xor i1 %t161, true
  br i1 %t162, label %bb28, label %bb29
bb28:
  %t164 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 1
  %t167 = extractvalue { i64, ptr } %t164, 0
  %t168 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t170 = add i64 %t167, %t169
  %t171 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t170)
  call void @olang_textcopy(ptr %t171, ptr %t166, i64 %t167)
  %t172 = getelementptr i8, ptr %t171, i64 %t167
  call void @olang_textcopy(ptr %t172, ptr %t168, i64 %t169)
  %t173 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t171, 1
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t177 = extractvalue { i64, ptr } %t174, 1
  %t178 = mul i64 %t176, 1
  %t179 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t178)
  call void @llvm.memcpy.p0.p0.i64(ptr %t179, ptr %t177, i64 %t178, i1 false)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  %t182 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t184 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t189 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueBeyondType(ptr %s1, ptr %s0, ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t181, { i64, ptr } %t182, { i64, ptr } %t183, { i64, ptr } %t184)
  store %"compiler/diagmsg:Msg" %t189, ptr %l104
  br label %bb30
bb29:
  %t190 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t194 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueObligations(ptr %s1, ptr %s0, ptr %v0, { i64, ptr } %t190, { i64, ptr } %t191)
  store %"compiler/diagmsg:Msg" %t194, ptr %l107
  br label %bb31
bb30:
  %t195 = load %"compiler/diagmsg:Msg", ptr %l104
  store %"compiler/diagmsg:Msg" %t195, ptr %l97
  br label %bb32
bb31:
  %t196 = load %"compiler/diagmsg:Msg", ptr %l107
  store %"compiler/diagmsg:Msg" %t196, ptr %l97
  br label %bb32
bb32:
  %t197 = load ptr, ptr %l92, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l93
  %t199 = load %"compiler/diagmsg:Msg", ptr %l97
  %t200 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t197, %"compiler/source:Span" %t198, %"compiler/diagmsg:Msg" %t199)
  store i64 %t200, ptr %l108
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  %t201 = load ptr, ptr %l5, !tbaa !29
  %t203 = getelementptr %"compiler/typed:Body", ptr %t201, i32 0, i32 1
  %t204 = load { i64, [2 x i64] }, ptr %t203
  store { i64, [2 x i64] } %t204, ptr %l14
  %t206 = load { i64, [2 x i64] }, ptr %l14
  %t208 = extractvalue { i64, [2 x i64] } %t206, 0
  %t209 = icmp eq i64 %t208, 0
  br i1 %t209, label %bb35, label %bb36
bb35:
  %t211 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t212 = getelementptr { i64 }, ptr %t211, i32 0, i32 0
  %t213 = load i64, ptr %t212
  store i64 %t213, ptr %l15, !tbaa !24
  br label %bb37
bb36:
  br label %bb49
bb37:
  store %olang.scope zeroinitializer, ptr %s4
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/scope:Scoper", ptr %t215, i32 0, i32 0
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 0
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = getelementptr %"compiler/load:Loader", ptr %t221, i32 0, i32 3
  %t224 = load ptr, ptr %t223, !tbaa !29
  store ptr %t224, ptr %l117, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/scope:Scoper", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  store ptr %t228, ptr %l119, !tbaa !29
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/scope:Scoper", ptr %t229, i32 0, i32 0
  %t232 = load ptr, ptr %t231, !tbaa !29
  %t233 = load i64, ptr %l15, !tbaa !24
  %t236 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t232, i64 %t233)
  store i64 %t236, ptr %l123
  br label %bb38
bb38:
  %t237 = load ptr, ptr %l119, !tbaa !29
  %t238 = load i64, ptr %l123, !tbaa !24
  %t239 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s4, ptr %t237, i64 %t238)
  store ptr %t239, ptr %l124
  br label %bb39
bb39:
  %t240 = load ptr, ptr %l124, !tbaa !29
  %t242 = getelementptr %"compiler/ast:Func", ptr %t240, i32 0, i32 2
  %t243 = load i32, ptr %t242, !tbaa !23
  %t244 = load ptr, ptr %l117, !tbaa !29
  %t246 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t244, i32 %t243)
  store { i64, ptr } %t246, ptr %l127
  br label %bb40
bb40:
  %t247 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t247, ptr %l16, !tbaa !27
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l7, !tbaa !29
  %t250 = load i64, ptr %l2, !tbaa !24
  %t251 = load %"compiler/source:Span", ptr %l8
  %t252 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t258 = call { %"compiler/source:Span", { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedAt(ptr %v0, ptr %v1, ptr %v0, ptr %s4, ptr %t248, ptr %t249, i64 %t250, %"compiler/source:Span" %t251, { i64, ptr } %t252)
  store { %"compiler/source:Span", { i64, ptr } } %t258, ptr %l133
  br label %bb41
bb41:
  %t259 = load { %"compiler/source:Span", { i64, ptr } }, ptr %l133
  store { %"compiler/source:Span", { i64, ptr } } %t259, ptr %l17
  %t260 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %l17, i32 0, i32 0
  %t261 = load %"compiler/source:Span", ptr %t260
  store %"compiler/source:Span" %t261, ptr %l8
  %t263 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %l17, i32 0, i32 1
  %t264 = load { i64, ptr }, ptr %t263, !tbaa !27
  store { i64, ptr } %t264, ptr %l16, !tbaa !27
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l136, !tbaa !29
  %t267 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t267, ptr %l137
  %t268 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t270 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t268, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t270, ptr %l139
  br label %bb42
bb42:
  %t271 = load i1, ptr %l139, !tbaa !21
  %t272 = xor i1 %t271, true
  br i1 %t272, label %bb43, label %bb44
bb43:
  %t274 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t278 = extractvalue { i64, ptr } %t274, 1
  %t279 = extractvalue { i64, ptr } %t274, 0
  %t280 = add i64 %t276, %t279
  %t281 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t282 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t283 = add i64 %t280, %t282
  %t284 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t283)
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
  %t293 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t296 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t297 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t298 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t303 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueBeyondType(ptr %s4, ptr %s0, ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t295, { i64, ptr } %t296, { i64, ptr } %t297, { i64, ptr } %t298)
  store %"compiler/diagmsg:Msg" %t303, ptr %l148
  br label %bb45
bb44:
  %t304 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t305 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t308 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncValueObligations(ptr %s4, ptr %s0, ptr %v0, { i64, ptr } %t304, { i64, ptr } %t305)
  store %"compiler/diagmsg:Msg" %t308, ptr %l151
  br label %bb46
bb45:
  %t309 = load %"compiler/diagmsg:Msg", ptr %l148
  store %"compiler/diagmsg:Msg" %t309, ptr %l141
  br label %bb47
bb46:
  %t310 = load %"compiler/diagmsg:Msg", ptr %l151
  store %"compiler/diagmsg:Msg" %t310, ptr %l141
  br label %bb47
bb47:
  %t311 = load ptr, ptr %l136, !tbaa !29
  %t312 = load %"compiler/source:Span", ptr %l137
  %t313 = load %"compiler/diagmsg:Msg", ptr %l141
  %t314 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t311, %"compiler/source:Span" %t312, %"compiler/diagmsg:Msg" %t313)
  store i64 %t314, ptr %l152
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s4)
  br label %bb74
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb73
bb52:
  store %olang.scope zeroinitializer, ptr %s6
  %t315 = load ptr, ptr %l0, !tbaa !29
  store ptr %t315, ptr %l153, !tbaa !29
  %t316 = load ptr, ptr %l5, !tbaa !29
  store ptr %t316, ptr %l154, !tbaa !29
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load i64, ptr %l2, !tbaa !24
  %t321 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t317, i64 %t318)
  store ptr %t321, ptr %l157
  br label %bb53
bb53:
  %t322 = load ptr, ptr %l157, !tbaa !29
  %t324 = getelementptr %"compiler/scope:summary", ptr %t322, i32 0, i32 0
  %t325 = load ptr, ptr %l153, !tbaa !29
  %t326 = load ptr, ptr %l154, !tbaa !29
  %t328 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptParam(ptr %v0, ptr %v0, ptr %v0, ptr %s6, ptr %t325, ptr %t326, ptr %t324)
  store { i64, ptr } %t328, ptr %l160
  br label %bb54
bb54:
  %t329 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t329, ptr %l18, !tbaa !27
  %t330 = load ptr, ptr %l5, !tbaa !29
  %t332 = getelementptr %"compiler/typed:Body", ptr %t330, i32 0, i32 14
  %t333 = load i1, ptr %t332, !tbaa !21
  br i1 %t333, label %bb55, label %bb56
bb55:
  %t335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t335, ptr %l163, !tbaa !29
  %t336 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t336, ptr %l164
  %t337 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t339 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenYieldsBorrow(ptr %s6, ptr %v0, { i64, ptr } %t337)
  store %"compiler/diagmsg:Msg" %t339, ptr %l166
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t340 = load ptr, ptr %l163, !tbaa !29
  %t341 = load %"compiler/source:Span", ptr %l164
  %t342 = load %"compiler/diagmsg:Msg", ptr %l166
  %t343 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t340, %"compiler/source:Span" %t341, %"compiler/diagmsg:Msg" %t342)
  store i64 %t343, ptr %l167
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb59:
  %t344 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t346 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s6, { i64, ptr } %t344, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t346, ptr %l169
  br label %bb60
bb60:
  %t347 = load i1, ptr %l169, !tbaa !21
  %t348 = xor i1 %t347, true
  br i1 %t348, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s8
  %t350 = load ptr, ptr %l0, !tbaa !29
  store ptr %t350, ptr %l171, !tbaa !29
  %t351 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t351, ptr %l172
  %t352 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t353 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t354 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t358 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueBeyondType(ptr %s8, ptr %s0, ptr %s0, ptr %s0, ptr %v0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d20, i32 0, i32 1) }, { i64, ptr } %t352, { i64, ptr } %t353, { i64, ptr } %t354)
  store %"compiler/diagmsg:Msg" %t358, ptr %l176
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t359 = load ptr, ptr %l171, !tbaa !29
  %t360 = load %"compiler/source:Span", ptr %l172
  %t361 = load %"compiler/diagmsg:Msg", ptr %l176
  %t362 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t359, %"compiler/source:Span" %t360, %"compiler/diagmsg:Msg" %t361)
  store i64 %t362, ptr %l177
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb65:
  %t363 = load ptr, ptr %l0, !tbaa !29
  store ptr %t363, ptr %l178, !tbaa !29
  %t364 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t364, ptr %l179
  %t365 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t367 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t365, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t367, ptr %l181
  br label %bb66
bb66:
  %t368 = load i1, ptr %l181, !tbaa !21
  %t369 = xor i1 %t368, true
  br i1 %t369, label %bb67, label %bb68
bb67:
  %t371 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t372 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t375 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaValueObligations(ptr %s6, ptr %s0, ptr %v0, { i64, ptr } %t371, { i64, ptr } %t372)
  store %"compiler/diagmsg:Msg" %t375, ptr %l186
  br label %bb69
bb68:
  %t376 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t378 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaValueRelates(ptr %s0, ptr %v0, { i64, ptr } %t376)
  store %"compiler/diagmsg:Msg" %t378, ptr %l188
  br label %bb70
bb69:
  %t379 = load %"compiler/diagmsg:Msg", ptr %l186
  store %"compiler/diagmsg:Msg" %t379, ptr %l183
  br label %bb71
bb70:
  %t380 = load %"compiler/diagmsg:Msg", ptr %l188
  store %"compiler/diagmsg:Msg" %t380, ptr %l183
  br label %bb71
bb71:
  %t381 = load ptr, ptr %l178, !tbaa !29
  %t382 = load %"compiler/source:Span", ptr %l179
  %t383 = load %"compiler/diagmsg:Msg", ptr %l183
  %t384 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t381, %"compiler/source:Span" %t382, %"compiler/diagmsg:Msg" %t383)
  store i64 %t384, ptr %l189
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s6)
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_c98b4dd4e89787b8_9b80e6f198df6ccc)
  unreachable
bb74:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndReturn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l26 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l37 = alloca ptr
  %l40 = alloca i1
  %l43 = alloca i64
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
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 7
  store i1 %t12, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb19
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Make", ptr %t20, i32 0, i32 0
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 5}
  %t25 = trunc i64 0 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Make", ptr %t28, i32 0, i32 2
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l5, !tbaa !24
  br label %bb11
bb10:
  br label %bb18
bb11:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t45 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t45, ptr %l26, !tbaa !27
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr ptr, ptr %t49, i64 %t46
  %t51 = load ptr, ptr %t50, !tbaa !39
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr @G_2ecompiler_2fscope_2eBndReturn, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t53, ptr %t51, i64 %t56)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l4, !tbaa !24
  br label %bb11
bb17:
  br label %ret
bb18:
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_dafb57c7e6be4360_64c24756b9afbb1c)
  unreachable
bb24:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l35, !tbaa !29
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l37, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/scope:Scoper", ptr %t67, i32 0, i32 104
  %t70 = load i1, ptr %t69, !tbaa !21
  br i1 %t70, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb27
bb26:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 246
  %t75 = load i1, ptr %t74, !tbaa !21
  store i1 %t75, ptr %l40, !tbaa !21
  br label %bb27
bb27:
  %t77 = load i1, ptr %l40, !tbaa !21
  br i1 %t77, label %bb28, label %bb29
bb28:
  %t78 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  store i64 %t78, ptr %l43, !tbaa !24
  br label %bb30
bb29:
  %t80 = load i64, ptr @G_2ecompiler_2fscope_2eBndReturn, !tbaa !24
  store i64 %t80, ptr %l43, !tbaa !24
  br label %bb30
bb30:
  %t82 = load ptr, ptr %l35, !tbaa !29
  %t83 = load ptr, ptr %l37, !tbaa !29
  %t84 = load i64, ptr %l43, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t82, ptr %t83, i64 %t84)
  br label %bb31
bb31:
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
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 18
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 28
  %t7 = load i64, ptr %t6, !tbaa !24
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t7)
  store i64 %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load i64, ptr %l12, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 18
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 28
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = add i64 %t18, 1
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t14, i64 %t20)
  store i64 %t23, ptr %l18
  br label %bb2
bb2:
  %t24 = load i64, ptr %l18, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t51 = load i64, ptr %l25, !tbaa !24
  store i64 %t51, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t52 = load i64, ptr %l22, !tbaa !24
  store i64 %t52, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t61 = load i64, ptr %l2, !tbaa !24
  %t62 = load i64, ptr %l6, !tbaa !24
  %t63 = load i64, ptr %l4, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 19
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t73, i64 %t69)
  store i64 %t77, ptr %l46
  br label %bb13
bb13:
  %t79 = load i64, ptr %l46, !tbaa !24
  %t81 = icmp eq i64 %t79, %a1
  br i1 %t81, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l6, !tbaa !24
  br label %bb9
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l10 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca %"compiler/diagmsg:Msg"
  %l17 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l28 = alloca i1
  %l32 = alloca i1
  %l49 = alloca i64
  %l52 = alloca i64
  %l54 = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 4
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb13
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 29
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 68
  %t14 = load i1, ptr %t13, !tbaa !21
  %t16 = xor i1 %t14, true
  store i1 %t16, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t20, ptr %l15
  %t21 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildThroughUnknownScope(ptr %v0)
  store %"compiler/diagmsg:Msg" %t21, ptr %l16
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l15
  %t24 = load %"compiler/diagmsg:Msg", ptr %l16
  %t25 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t22, %"compiler/source:Span" %t23, %"compiler/diagmsg:Msg" %t24)
  store i64 %t25, ptr %l17
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDerived(ptr %v0, ptr %t26, { i64, [2 x i64] } %t27)
  br label %bb12
bb12:
  br label %bb42
bb13:
  %t30 = load { i64, [2 x i64] }, ptr %l1
  %t32 = extractvalue { i64, [2 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 2
  br i1 %t33, label %bb14, label %bb15
bb14:
  %t35 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t36 = getelementptr { i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  store i64 %t37, ptr %l5, !tbaa !24
  br label %bb16
bb15:
  br label %bb37
bb16:
  %t39 = load i64, ptr %l5, !tbaa !24
  store i64 %t39, ptr %l23, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %t40, i32 0, i32 66
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l26
  br label %bb17
bb17:
  %t45 = load i64, ptr %l23, !tbaa !24
  %t46 = load i64, ptr %l26, !tbaa !24
  %t47 = icmp slt i64 %t45, %t46
  br i1 %t47, label %bb18, label %bb19
bb18:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 66
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t51, i64 %t52)
  store i1 %t55, ptr %l32
  br label %bb20
bb19:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb21
bb20:
  %t56 = load i1, ptr %l32, !tbaa !21
  %t57 = xor i1 %t56, true
  store i1 %t57, ptr %l28, !tbaa !21
  br label %bb21
bb21:
  %t59 = load i1, ptr %l28, !tbaa !21
  br i1 %t59, label %bb22, label %bb23
bb22:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %t60, i32 0, i32 66
  %t63 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t62, i64 %t63, i1 true)
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 71
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load %"compiler/source:Span", ptr %l2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eSetAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t68, i64 %t69, %"compiler/source:Span" %t70)
  br label %bb25
bb25:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 72
  %t77 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t76, i64 %t77, i64 %a3)
  br label %bb26
bb26:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 73
  %t85 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eSetAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t84, i64 %t85, %"compiler/source:Span" %a4)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t90 = load i64, ptr %l5, !tbaa !24
  store i64 %t90, ptr %l49, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scope:Scoper", ptr %t91, i32 0, i32 67
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t93)
  store i64 %t95, ptr %l52
  br label %bb29
bb29:
  %t96 = load i64, ptr %l49, !tbaa !24
  %t97 = load i64, ptr %l52, !tbaa !24
  %t98 = icmp slt i64 %t96, %t97
  br i1 %t98, label %bb30, label %bb31
bb30:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 68
  %t103 = load i1, ptr %t102, !tbaa !21
  %t105 = xor i1 %t103, true
  store i1 %t105, ptr %l54, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb32
bb32:
  %t107 = load i1, ptr %l54, !tbaa !21
  br i1 %t107, label %bb33, label %bb34
bb33:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/scope:Scoper", ptr %t108, i32 0, i32 67
  %t111 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t110, i64 %t111, i1 true)
  br label %bb35
bb34:
  br label %bb36
bb35:
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
  call void @__olang_check_failed(ptr @olang_loc_d867a1bfd37ee6cf_dcf5a89f84b878b3)
  unreachable
bb42:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallRels(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l9 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i1
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca i1
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca i32
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i32
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Call", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i64 %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load i64, ptr %l9, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t18, ptr %l14
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t19 = load ptr, ptr %l14, !tbaa !29
  %t21 = getelementptr %"compiler/scope:summary", ptr %t19, i32 0, i32 0
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %rv
  br label %ret
bb5:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Call", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t28 = load ptr, ptr %l18, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l18, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 5}
  %t34 = icmp eq i64 %t32, 2
  store i1 %t34, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l19, !tbaa !21
  %t36 = xor i1 %t35, true
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l23
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %rv
  br label %ret
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Call", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { ptr }, ptr %t45, i32 0, i32 0
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l3, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 102
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Call", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %t54, !tbaa !23
  %t57 = sext i32 %t55 to i64
  %t60 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Ha97d140a669c19bbbb7e297ebe521011(ptr %v0, ptr %t51, i64 %t57)
  store i1 %t60, ptr %l32
  br label %bb12
bb12:
  %t61 = load i1, ptr %l32, !tbaa !21
  br i1 %t61, label %bb13, label %bb14
bb13:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 102
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Call", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %t67, !tbaa !23
  %t70 = sext i32 %t68 to i64
  %t73 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hd1087b20b3bef4076c953aa6cc36cf5a(ptr %v0, ptr %v2, ptr %t64, i64 %t70)
  %t74 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t73, 1
  %t75 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t73, 0
  store i32 %t75, ptr %l40
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb16, label %ok.77, !prof !99
ok.77:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l39
  br label %bb15
bb14:
  br label %bb21
bb15:
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v2, ptr %l39)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l42
  br label %bb18
bb16:
  br label %bb17
bb17:
  %t80 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %l43
  br label %bb19
bb18:
  %t81 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t81, ptr %l33
  br label %bb20
bb19:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l33
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t83, ptr %rv
  br label %ret
bb21:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t88 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t84, ptr %t85)
  store i32 %t88, ptr %l46
  br label %bb22
bb22:
  %t89 = load i32, ptr %l46, !tbaa !23
  store i32 %t89, ptr %l4, !tbaa !23
  %t90 = load i32, ptr %l4, !tbaa !23
  %t91 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t94 = icmp eq i32 %t90, %t91
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t96 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %l50
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t97 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %rv
  br label %ret
bb26:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/scope:Scoper", ptr %t98, i32 0, i32 0
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 2
  %t104 = load i32, ptr %l4, !tbaa !23
  %t107 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t103, i32 %t104)
  store { i64, ptr } %t107, ptr %l55
  br label %bb27
bb27:
  %t108 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l56, !tbaa !29
  %t110 = load i32, ptr %l4, !tbaa !23
  store i32 %t110, ptr %l57, !tbaa !23
  store { i64, ptr } %t108, ptr %l58, !tbaa !27
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l4, !tbaa !23
  %t116 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t112, i32 %t113)
  store i64 %t116, ptr %l61
  br label %bb28
bb28:
  %t117 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t117, ptr %l62
  br label %bb29
bb29:
  %t118 = load ptr, ptr %l56, !tbaa !29
  %t119 = load i32, ptr %l57, !tbaa !23
  %t120 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t121 = load i64, ptr %l61, !tbaa !24
  %t122 = load %"compiler/source:Span", ptr %l62
  %t123 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRels(ptr %v0, ptr %s0, ptr %v2, ptr %t118, i32 %t119, { i64, ptr } %t120, i64 %t121, %"compiler/source:Span" %t122, i64 -1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %l63
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l62 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i1
  %l106 = alloca i1
  %l114 = alloca i64
  %l117 = alloca i64
  %l138 = alloca i1
  %l141 = alloca { i64, ptr }
  %l148 = alloca ptr
  %l149 = alloca i1
  %l162 = alloca { i64, ptr }
  %l171 = alloca ptr
  %l172 = alloca i1
  %l182 = alloca i1
  %l183 = alloca i1
  %l187 = alloca i1
  %l190 = alloca i1
  %l192 = alloca { i64, ptr }
  %l196 = alloca ptr
  %l197 = alloca i1
  %l211 = alloca ptr
  %l212 = alloca i1
  %l221 = alloca ptr
  %l222 = alloca i1
  %l235 = alloca { i64, ptr }
  %l248 = alloca ptr
  %l257 = alloca ptr
  %l258 = alloca i1
  %l275 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l297 = alloca ptr
  %l298 = alloca i1
  %l307 = alloca ptr
  %l308 = alloca i1
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
  store ptr %t5, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t6 = load ptr, ptr %l44, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l44, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l45, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l45, !tbaa !21
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
  br label %bb12
bb7:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t27 = load ptr, ptr %l52, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l52, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 18}
  %t33 = icmp eq i64 %t31, 4
  store i1 %t33, ptr %l53, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l53, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t37, i32 0, i32 1
  %t39 = load i32, ptr %t38
  store i32 %t39, ptr %l3, !tbaa !23
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t43, i32 0, i32 2
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l3, !tbaa !23
  %t51 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l62
  br label %bb13
bb13:
  %t52 = load i1, ptr %l62, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l4, !tbaa !29
  %t55 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarriedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t53, ptr %t54, ptr %t55)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %bb171
bb18:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t60 = load ptr, ptr %l66, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t63 = load ptr, ptr %l66, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 18}
  %t66 = icmp eq i64 %t64, 3
  store i1 %t66, ptr %l67, !tbaa !21
  br label %bb20
bb20:
  %t67 = load i1, ptr %l67, !tbaa !21
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l5, !tbaa !29
  %t76 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarriedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t74, ptr %t75, ptr %t76)
  br label %bb24
bb24:
  br label %bb171
bb25:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t81 = load ptr, ptr %l75, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t84 = load ptr, ptr %l75, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 18}
  %t87 = icmp eq i64 %t85, 10
  store i1 %t87, ptr %l76, !tbaa !21
  br label %bb27
bb27:
  %t88 = load i1, ptr %l76, !tbaa !21
  br i1 %t88, label %bb28, label %bb29
bb28:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t91, i32 0, i32 2
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l6, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l6, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Slice", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t100 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarriedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t95, ptr %t99, ptr %t100)
  br label %bb31
bb31:
  br label %bb171
bb32:
  %t104 = load ptr, ptr %l1, !tbaa !29
  store ptr %t104, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t105 = load ptr, ptr %l85, !tbaa !29
  %t106 = icmp ne ptr %t105, null
  br i1 %t106, label %bb33, label %bb34
bb33:
  %t108 = load ptr, ptr %l85, !tbaa !29
  %t109 = load i64, ptr %t108, !range !{i64 0, i64 18}
  %t111 = icmp eq i64 %t109, 5
  store i1 %t111, ptr %l86, !tbaa !21
  br label %bb34
bb34:
  %t112 = load i1, ptr %l86, !tbaa !21
  br i1 %t112, label %bb35, label %bb36
bb35:
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr { i64, [5 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t115, i32 0, i32 2
  %t117 = load ptr, ptr %t116
  store ptr %t117, ptr %l7, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %l7, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Promote", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t119, ptr %t123, ptr %t125)
  br label %bb38
bb38:
  br label %bb171
bb39:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l96, !tbaa !29
  store i1 false, ptr %l97, !tbaa !21
  %t130 = load ptr, ptr %l96, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb40, label %bb41
bb40:
  %t133 = load ptr, ptr %l96, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 18}
  %t136 = icmp eq i64 %t134, 6
  store i1 %t136, ptr %l97, !tbaa !21
  br label %bb41
bb41:
  %t137 = load i1, ptr %l97, !tbaa !21
  br i1 %t137, label %bb42, label %bb43
bb42:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [5 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t140, i32 0, i32 1
  %t142 = load i32, ptr %t141
  store i32 %t142, ptr %l8, !tbaa !23
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [5 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t146, i32 0, i32 2
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l9, !tbaa !29
  br label %bb44
bb43:
  br label %bb66
bb44:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i32, ptr %l8, !tbaa !23
  %t154 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t150, i32 %t151)
  store i1 %t154, ptr %l106
  br label %bb45
bb45:
  %t155 = load i1, ptr %l106, !tbaa !21
  %t156 = xor i1 %t155, true
  br i1 %t156, label %bb46, label %bb47
bb46:
  br label %ret
bb47:
  br label %bb48
bb48:
  store i64 0, ptr %l10, !tbaa !24
  %t158 = load ptr, ptr %l9, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Call", ptr %t158, i32 0, i32 1
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t161, 0
  store i64 %t163, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t165 = load i64, ptr %l11, !tbaa !24
  %t166 = load i64, ptr %l10, !tbaa !24
  %t169 = icmp sgt i64 %t165, %t166
  br i1 %t169, label %bb49, label %bb50
bb49:
  %t171 = load i64, ptr %l12, !tbaa !24
  %t173 = icmp sgt i64 %t171, 0
  br i1 %t173, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb54
bb51:
  %t175 = load i64, ptr %l11, !tbaa !24
  %t176 = load i64, ptr %l10, !tbaa !24
  %t179 = sub i64 %t175, %t176
  %t180 = load i64, ptr %l12, !tbaa !24
  %t183 = add i64 %t179, %t180
  %t185 = sub i64 %t183, 1
  %t186 = load i64, ptr %l12, !tbaa !24
  %t189 = sdiv i64 %t185, %t186
  store i64 %t189, ptr %l117, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb53
bb53:
  %t191 = load i64, ptr %l117, !tbaa !24
  store i64 %t191, ptr %l114, !tbaa !24
  br label %bb54
bb54:
  %t192 = load i64, ptr %l114, !tbaa !24
  store i64 %t192, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb55
bb55:
  %t193 = load i64, ptr %l14, !tbaa !24
  %t194 = load i64, ptr %l13, !tbaa !24
  %t197 = icmp slt i64 %t193, %t194
  %t199 = xor i1 %t197, true
  br i1 %t199, label %bb56, label %bb57
bb56:
  br label %bb65
bb57:
  br label %bb58
bb58:
  %t201 = load i64, ptr %l10, !tbaa !24
  %t202 = load i64, ptr %l14, !tbaa !24
  %t203 = load i64, ptr %l12, !tbaa !24
  %t206 = mul i64 %t202, %t203
  %t209 = add i64 %t201, %t206
  store i64 %t209, ptr %l15, !tbaa !24
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load ptr, ptr %l9, !tbaa !29
  %t213 = load i64, ptr %l15, !tbaa !24
  %t217 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %t211, ptr %t212, i64 %t213)
  store i1 %t217, ptr %l138
  br label %bb59
bb59:
  %t218 = load i1, ptr %l138, !tbaa !21
  br i1 %t218, label %bb60, label %bb61
bb60:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l9, !tbaa !29
  %t222 = getelementptr %"compiler/typed:Call", ptr %t220, i32 0, i32 1
  %t223 = load { i64, ptr }, ptr %t222, !tbaa !27
  store { i64, ptr } %t223, ptr %l141, !tbaa !27
  %t224 = load i64, ptr %l15, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr ptr, ptr %t227, i64 %t224
  %t229 = load ptr, ptr %t228, !tbaa !39
  %t231 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t219, ptr %t229, ptr %t231)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t235 = load i64, ptr %l14, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l14, !tbaa !24
  br label %bb55
bb65:
  br label %bb171
bb66:
  %t239 = load ptr, ptr %l1, !tbaa !29
  store ptr %t239, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t240 = load ptr, ptr %l148, !tbaa !29
  %t241 = icmp ne ptr %t240, null
  br i1 %t241, label %bb67, label %bb68
bb67:
  %t243 = load ptr, ptr %l148, !tbaa !29
  %t244 = load i64, ptr %t243, !range !{i64 0, i64 18}
  %t246 = icmp eq i64 %t244, 7
  store i1 %t246, ptr %l149, !tbaa !21
  br label %bb68
bb68:
  %t247 = load i1, ptr %l149, !tbaa !21
  br i1 %t247, label %bb69, label %bb70
bb69:
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t250 = getelementptr { i64, [5 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t250, i32 0, i32 2
  %t252 = load ptr, ptr %t251
  store ptr %t252, ptr %l16, !tbaa !29
  br label %bb71
bb70:
  br label %bb79
bb71:
  %t254 = load ptr, ptr %l16, !tbaa !29
  %t256 = getelementptr %"compiler/typed:Make", ptr %t254, i32 0, i32 2
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t259 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t259, 0
  store i64 %t261, ptr %l19, !tbaa !24
  br label %bb72
bb72:
  %t263 = load i64, ptr %l18, !tbaa !24
  %t264 = load i64, ptr %l19, !tbaa !24
  %t267 = icmp slt i64 %t263, %t264
  %t269 = xor i1 %t267, true
  br i1 %t269, label %bb73, label %bb74
bb73:
  br label %bb78
bb74:
  br label %bb75
bb75:
  %t271 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t271, ptr %l162, !tbaa !27
  %t272 = load i64, ptr %l18, !tbaa !24
  %t274 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr ptr, ptr %t275, i64 %t272
  %t277 = load ptr, ptr %t276, !tbaa !39
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t282 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t279, ptr %t277, ptr %t282)
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t286 = load i64, ptr %l18, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l18, !tbaa !24
  br label %bb72
bb78:
  br label %bb171
bb79:
  %t290 = load ptr, ptr %l1, !tbaa !29
  store ptr %t290, ptr %l171, !tbaa !29
  store i1 false, ptr %l172, !tbaa !21
  %t291 = load ptr, ptr %l171, !tbaa !29
  %t292 = icmp ne ptr %t291, null
  br i1 %t292, label %bb80, label %bb81
bb80:
  %t294 = load ptr, ptr %l171, !tbaa !29
  %t295 = load i64, ptr %t294, !range !{i64 0, i64 18}
  %t297 = icmp eq i64 %t295, 9
  store i1 %t297, ptr %l172, !tbaa !21
  br label %bb81
bb81:
  %t298 = load i1, ptr %l172, !tbaa !21
  br i1 %t298, label %bb82, label %bb83
bb82:
  %t299 = load ptr, ptr %l1, !tbaa !29
  %t301 = getelementptr { i64, [5 x i64] }, ptr %t299, i32 0, i32 1
  %t302 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t301, i32 0, i32 1
  %t303 = load i32, ptr %t302
  store i32 %t303, ptr %l21, !tbaa !23
  %t305 = load ptr, ptr %l1, !tbaa !29
  %t307 = getelementptr { i64, [5 x i64] }, ptr %t305, i32 0, i32 1
  %t308 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t307, i32 0, i32 2
  %t309 = load i32, ptr %t308, !range !{i32 0, i32 51}
  store i32 %t309, ptr %l22
  %t311 = load ptr, ptr %l1, !tbaa !29
  %t313 = getelementptr { i64, [5 x i64] }, ptr %t311, i32 0, i32 1
  %t314 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t313, i32 0, i32 4
  %t315 = load { i64, ptr }, ptr %t314
  store { i64, ptr } %t315, ptr %l23, !tbaa !27
  br label %bb84
bb83:
  br label %bb97
bb84:
  %t317 = load i32, ptr %l22, !range !{i32 0, i32 51}
  %t319 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t317)
  store i1 %t319, ptr %l182
  br label %bb85
bb85:
  %t320 = load i1, ptr %l182, !tbaa !21
  br i1 %t320, label %bb86, label %bb87
bb86:
  %t321 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t321, 0
  %t325 = icmp sgt i64 %t323, 0
  store i1 %t325, ptr %l183, !tbaa !21
  br label %bb88
bb87:
  store i1 false, ptr %l183, !tbaa !21
  br label %bb88
bb88:
  %t327 = load i1, ptr %l183, !tbaa !21
  br i1 %t327, label %bb89, label %bb90
bb89:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load i32, ptr %l21, !tbaa !23
  %t332 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t328, i32 %t329)
  store i1 %t332, ptr %l190
  br label %bb91
bb90:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb92
bb91:
  %t333 = load i1, ptr %l190, !tbaa !21
  store i1 %t333, ptr %l187, !tbaa !21
  br label %bb92
bb92:
  %t334 = load i1, ptr %l187, !tbaa !21
  br i1 %t334, label %bb93, label %bb94
bb93:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t336, ptr %l192, !tbaa !27
  %t337 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = getelementptr ptr, ptr %t338, i64 0
  %t340 = load ptr, ptr %t339, !tbaa !39
  %t342 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t335, ptr %t340, ptr %t342)
  br label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb96
bb96:
  br label %bb171
bb97:
  %t346 = load ptr, ptr %l1, !tbaa !29
  store ptr %t346, ptr %l196, !tbaa !29
  store i1 false, ptr %l197, !tbaa !21
  %t347 = load ptr, ptr %l196, !tbaa !29
  %t348 = icmp ne ptr %t347, null
  br i1 %t348, label %bb98, label %bb99
bb98:
  %t350 = load ptr, ptr %l196, !tbaa !29
  %t351 = load i64, ptr %t350, !range !{i64 0, i64 18}
  %t353 = icmp eq i64 %t351, 11
  store i1 %t353, ptr %l197, !tbaa !21
  br label %bb99
bb99:
  %t354 = load i1, ptr %l197, !tbaa !21
  br i1 %t354, label %bb100, label %bb101
bb100:
  %t355 = load ptr, ptr %l1, !tbaa !29
  %t357 = getelementptr { i64, [5 x i64] }, ptr %t355, i32 0, i32 1
  %t358 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t357, i32 0, i32 2
  %t359 = load ptr, ptr %t358
  store ptr %t359, ptr %l24, !tbaa !29
  br label %bb102
bb101:
  br label %bb105
bb102:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load ptr, ptr %l24, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Cond", ptr %t362, i32 0, i32 1
  %t365 = load ptr, ptr %t364, !tbaa !29
  %t366 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t361, ptr %t365, ptr %t366)
  br label %bb103
bb103:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load ptr, ptr %l24, !tbaa !29
  %t373 = getelementptr %"compiler/typed:Cond", ptr %t371, i32 0, i32 2
  %t374 = load ptr, ptr %t373, !tbaa !29
  %t376 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t370, ptr %t374, ptr %t376)
  br label %bb104
bb104:
  br label %bb171
bb105:
  %t380 = load ptr, ptr %l1, !tbaa !29
  store ptr %t380, ptr %l211, !tbaa !29
  store i1 false, ptr %l212, !tbaa !21
  %t381 = load ptr, ptr %l211, !tbaa !29
  %t382 = icmp ne ptr %t381, null
  br i1 %t382, label %bb106, label %bb107
bb106:
  %t384 = load ptr, ptr %l211, !tbaa !29
  %t385 = load i64, ptr %t384, !range !{i64 0, i64 18}
  %t387 = icmp eq i64 %t385, 12
  store i1 %t387, ptr %l212, !tbaa !21
  br label %bb107
bb107:
  %t388 = load i1, ptr %l212, !tbaa !21
  br i1 %t388, label %bb108, label %bb109
bb108:
  %t389 = load ptr, ptr %l1, !tbaa !29
  %t391 = getelementptr { i64, [5 x i64] }, ptr %t389, i32 0, i32 1
  %t392 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t391, i32 0, i32 2
  %t393 = load ptr, ptr %t392
  store ptr %t393, ptr %l25, !tbaa !29
  br label %bb110
bb109:
  br label %bb112
bb110:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load ptr, ptr %l25, !tbaa !29
  %t398 = getelementptr %"compiler/typed:Seq", ptr %t396, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !29
  %t400 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t395, ptr %t399, ptr %t400)
  br label %bb111
bb111:
  br label %bb171
bb112:
  %t404 = load ptr, ptr %l1, !tbaa !29
  store ptr %t404, ptr %l221, !tbaa !29
  store i1 false, ptr %l222, !tbaa !21
  %t405 = load ptr, ptr %l221, !tbaa !29
  %t406 = icmp ne ptr %t405, null
  br i1 %t406, label %bb113, label %bb114
bb113:
  %t408 = load ptr, ptr %l221, !tbaa !29
  %t409 = load i64, ptr %t408, !range !{i64 0, i64 18}
  %t411 = icmp eq i64 %t409, 13
  store i1 %t411, ptr %l222, !tbaa !21
  br label %bb114
bb114:
  %t412 = load i1, ptr %l222, !tbaa !21
  br i1 %t412, label %bb115, label %bb116
bb115:
  %t413 = load ptr, ptr %l1, !tbaa !29
  %t415 = getelementptr { i64, [5 x i64] }, ptr %t413, i32 0, i32 1
  %t416 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t415, i32 0, i32 2
  %t417 = load ptr, ptr %t416
  store ptr %t417, ptr %l26, !tbaa !29
  br label %bb117
bb116:
  br label %bb132
bb117:
  %t419 = load ptr, ptr %l26, !tbaa !29
  %t421 = getelementptr %"compiler/typed:Match", ptr %t419, i32 0, i32 1
  %t422 = load { i64, ptr }, ptr %t421, !tbaa !27
  store { i64, ptr } %t422, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t424 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t426 = extractvalue { i64, ptr } %t424, 0
  store i64 %t426, ptr %l29, !tbaa !24
  br label %bb118
bb118:
  %t428 = load i64, ptr %l28, !tbaa !24
  %t429 = load i64, ptr %l29, !tbaa !24
  %t432 = icmp slt i64 %t428, %t429
  %t434 = xor i1 %t432, true
  br i1 %t434, label %bb119, label %bb120
bb119:
  br label %bb124
bb120:
  br label %bb121
bb121:
  %t436 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t436, ptr %l235, !tbaa !27
  %t437 = load i64, ptr %l28, !tbaa !24
  %t439 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t440 = load ptr, ptr %t439, !tbaa !27
  %t441 = getelementptr ptr, ptr %t440, i64 %t437
  %t442 = load ptr, ptr %t441, !tbaa !39
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/typed:Arm", ptr %t442, i32 0, i32 4
  %t448 = load ptr, ptr %t447, !tbaa !29
  %t449 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t444, ptr %t448, ptr %t449)
  br label %bb122
bb122:
  br label %bb123
bb123:
  %t453 = load i64, ptr %l28, !tbaa !24
  %t455 = add i64 %t453, 1
  store i64 %t455, ptr %l28, !tbaa !24
  br label %bb118
bb124:
  %t457 = load ptr, ptr %l26, !tbaa !29
  %t459 = getelementptr %"compiler/typed:Match", ptr %t457, i32 0, i32 2
  %t460 = load ptr, ptr %t459, !tbaa !29
  %t462 = icmp eq ptr %t460, null
  %t464 = xor i1 %t462, true
  br i1 %t464, label %bb125, label %bb126
bb125:
  %t466 = load ptr, ptr %l0, !tbaa !29
  store ptr %t466, ptr %l248, !tbaa !29
  %t467 = load ptr, ptr %l26, !tbaa !29
  %t469 = getelementptr %"compiler/typed:Match", ptr %t467, i32 0, i32 2
  %t470 = load ptr, ptr %t469, !tbaa !29
  %t472 = icmp eq ptr %t470, null
  br i1 %t472, label %bb127, label %bb128
bb126:
  br label %bb131
bb127:
  call void @__olang_check_failed(ptr @olang_loc_9675e93c9f07526d_8a86ee267fb7b3d9)
  unreachable
bb128:
  br label %bb129
bb129:
  %t474 = load ptr, ptr %l26, !tbaa !29
  %t476 = getelementptr %"compiler/typed:Match", ptr %t474, i32 0, i32 2
  %t477 = load ptr, ptr %t476, !tbaa !29
  %t480 = getelementptr %"compiler/typed:Arm", ptr %t477, i32 0, i32 4
  %t481 = load ptr, ptr %t480, !tbaa !29
  %t482 = load ptr, ptr %l2, !tbaa !29
  %t483 = load ptr, ptr %l248, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t483, ptr %t481, ptr %t482)
  br label %bb130
bb130:
  br label %bb131
bb131:
  br label %bb171
bb132:
  %t486 = load ptr, ptr %l1, !tbaa !29
  store ptr %t486, ptr %l257, !tbaa !29
  store i1 false, ptr %l258, !tbaa !21
  %t487 = load ptr, ptr %l257, !tbaa !29
  %t488 = icmp ne ptr %t487, null
  br i1 %t488, label %bb133, label %bb134
bb133:
  %t490 = load ptr, ptr %l257, !tbaa !29
  %t491 = load i64, ptr %t490, !range !{i64 0, i64 18}
  %t493 = icmp eq i64 %t491, 14
  store i1 %t493, ptr %l258, !tbaa !21
  br label %bb134
bb134:
  %t494 = load i1, ptr %l258, !tbaa !21
  br i1 %t494, label %bb135, label %bb136
bb135:
  %t495 = load ptr, ptr %l1, !tbaa !29
  %t497 = getelementptr { i64, [5 x i64] }, ptr %t495, i32 0, i32 1
  %t498 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t497, i32 0, i32 2
  %t499 = load ptr, ptr %t498
  store ptr %t499, ptr %l31, !tbaa !29
  br label %bb137
bb136:
  br label %bb152
bb137:
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t502 = load ptr, ptr %l31, !tbaa !29
  %t504 = getelementptr %"compiler/typed:Try", ptr %t502, i32 0, i32 0
  %t505 = load ptr, ptr %t504, !tbaa !29
  %t506 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t501, ptr %t505, ptr %t506)
  br label %bb138
bb138:
  %t510 = load ptr, ptr %l31, !tbaa !29
  %t512 = getelementptr %"compiler/typed:Try", ptr %t510, i32 0, i32 1
  %t513 = load { i64, ptr }, ptr %t512, !tbaa !27
  store { i64, ptr } %t513, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t515 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t517 = extractvalue { i64, ptr } %t515, 0
  store i64 %t517, ptr %l34, !tbaa !24
  br label %bb139
bb139:
  %t519 = load i64, ptr %l33, !tbaa !24
  %t520 = load i64, ptr %l34, !tbaa !24
  %t523 = icmp slt i64 %t519, %t520
  %t525 = xor i1 %t523, true
  br i1 %t525, label %bb140, label %bb141
bb140:
  br label %bb151
bb141:
  br label %bb142
bb142:
  %t527 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t527, ptr %l275, !tbaa !27
  %t528 = load i64, ptr %l33, !tbaa !24
  %t530 = getelementptr { i64, ptr }, ptr %l275, i32 0, i32 1
  %t531 = load ptr, ptr %t530, !tbaa !27
  %t532 = getelementptr ptr, ptr %t531, i64 %t528
  %t533 = load ptr, ptr %t532, !tbaa !39
  %t537 = getelementptr %"compiler/typed:Clause", ptr %t533, i32 0, i32 4
  %t538 = load { i64, ptr }, ptr %t537, !tbaa !27
  store { i64, ptr } %t538, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  %t540 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t542 = extractvalue { i64, ptr } %t540, 0
  store i64 %t542, ptr %l38, !tbaa !24
  br label %bb143
bb143:
  %t544 = load i64, ptr %l37, !tbaa !24
  %t545 = load i64, ptr %l38, !tbaa !24
  %t548 = icmp slt i64 %t544, %t545
  %t550 = xor i1 %t548, true
  br i1 %t550, label %bb144, label %bb145
bb144:
  br label %bb149
bb145:
  br label %bb146
bb146:
  %t552 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t552, ptr %l286, !tbaa !27
  %t553 = load i64, ptr %l37, !tbaa !24
  %t555 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !27
  %t557 = getelementptr ptr, ptr %t556, i64 %t553
  %t558 = load ptr, ptr %t557, !tbaa !39
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t563 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t560, ptr %t558, ptr %t563)
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t567 = load i64, ptr %l37, !tbaa !24
  %t569 = add i64 %t567, 1
  store i64 %t569, ptr %l37, !tbaa !24
  br label %bb143
bb149:
  br label %bb150
bb150:
  %t571 = load i64, ptr %l33, !tbaa !24
  %t573 = add i64 %t571, 1
  store i64 %t573, ptr %l33, !tbaa !24
  br label %bb139
bb151:
  br label %bb171
bb152:
  %t575 = load ptr, ptr %l1, !tbaa !29
  store ptr %t575, ptr %l297, !tbaa !29
  store i1 false, ptr %l298, !tbaa !21
  %t576 = load ptr, ptr %l297, !tbaa !29
  %t577 = icmp ne ptr %t576, null
  br i1 %t577, label %bb153, label %bb154
bb153:
  %t579 = load ptr, ptr %l297, !tbaa !29
  %t580 = load i64, ptr %t579, !range !{i64 0, i64 18}
  %t582 = icmp eq i64 %t580, 17
  store i1 %t582, ptr %l298, !tbaa !21
  br label %bb154
bb154:
  %t583 = load i1, ptr %l298, !tbaa !21
  br i1 %t583, label %bb155, label %bb156
bb155:
  %t584 = load ptr, ptr %l1, !tbaa !29
  %t586 = getelementptr { i64, [5 x i64] }, ptr %t584, i32 0, i32 1
  %t587 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t586, i32 0, i32 2
  %t588 = load ptr, ptr %t587
  store ptr %t588, ptr %l40, !tbaa !29
  br label %bb157
bb156:
  br label %bb159
bb157:
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t591 = load ptr, ptr %l40, !tbaa !29
  %t593 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %t590, ptr %t591, ptr %t593)
  br label %bb158
bb158:
  br label %bb171
bb159:
  %t597 = load ptr, ptr %l1, !tbaa !29
  store ptr %t597, ptr %l307, !tbaa !29
  store i1 false, ptr %l308, !tbaa !21
  %t598 = load ptr, ptr %l307, !tbaa !29
  %t599 = icmp ne ptr %t598, null
  br i1 %t599, label %bb160, label %bb161
bb160:
  %t601 = load ptr, ptr %l307, !tbaa !29
  %t602 = load i64, ptr %t601, !range !{i64 0, i64 18}
  %t604 = icmp eq i64 %t602, 15
  store i1 %t604, ptr %l308, !tbaa !21
  br label %bb161
bb161:
  %t605 = load i1, ptr %l308, !tbaa !21
  br i1 %t605, label %bb162, label %bb163
bb162:
  %t606 = load ptr, ptr %l1, !tbaa !29
  %t608 = getelementptr { i64, [5 x i64] }, ptr %t606, i32 0, i32 1
  %t609 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t608, i32 0, i32 2
  %t610 = load ptr, ptr %t609
  store ptr %t610, ptr %l41, !tbaa !29
  br label %bb164
bb163:
  br label %bb166
bb164:
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t613 = load ptr, ptr %l41, !tbaa !29
  %t614 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarriedFn(ptr %v0, ptr %v1, ptr %v2, ptr %t612, ptr %t613, ptr %t614)
  br label %bb165
bb165:
  br label %bb171
bb166:
  br i1 true, label %bb167, label %bb168
bb167:
  br label %bb169
bb168:
  br label %bb170
bb169:
  br label %bb171
bb170:
  call void @__olang_check_failed(ptr @olang_loc_768f72a2579754c5_d91cee094dc07e21)
  unreachable
bb171:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceOfRefs(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l27 = alloca i1
  %l28 = alloca ptr
  %l34 = alloca i1
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
  %t15 = icmp eq i64 %t13, 11
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t18 = load ptr, ptr %l13, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l13, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 18}
  %t24 = icmp eq i64 %t22, 13
  store i1 %t24, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb29
bb11:
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb12, label %bb13
bb12:
  %t30 = load ptr, ptr %l17, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 18}
  %t33 = icmp eq i64 %t31, 12
  store i1 %t33, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb14, label %bb15
bb14:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t37, i32 0, i32 2
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb24
bb16:
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Seq", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l28, !tbaa !29
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Seq", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = icmp eq ptr %t54, null
  br i1 %t56, label %bb19, label %bb20
bb18:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb23
bb19:
  call void @__olang_check_failed(ptr @olang_loc_13a66e5900397517_aa9470c685b363ab)
  unreachable
bb20:
  br label %bb21
bb21:
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Seq", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load ptr, ptr %l28, !tbaa !29
  %t64 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceOfRefs(ptr %v0, ptr %s0, ptr %t62, ptr %t61)
  store i1 %t64, ptr %l34
  br label %bb22
bb22:
  %t65 = load i1, ptr %l34, !tbaa !21
  store i1 %t65, ptr %l27, !tbaa !21
  br label %bb23
bb23:
  %t66 = load i1, ptr %l27, !tbaa !21
  store i1 %t66, ptr %l8, !tbaa !21
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_5a6ddbb4ef42a8ef_2ba82a28086a35d3)
  unreachable
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t67 = load i1, ptr %l8, !tbaa !21
  store i1 %t67, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t1, i32 %a2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l3, !tbaa !29
  br label %bb9
bb8:
  br label %bb22
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t30 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s2, ptr %t25, ptr %t26)
  store ptr %t30, ptr %l19
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l19, !tbaa !29
  store ptr %t31, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 18}
  %t39 = icmp eq i64 %t37, 1
  store i1 %t39, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l22, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_fc2d23a56a9972c4_138c6d588cf96ab0)
  unreachable
bb21:
  call void @__olang_scope_close(ptr %s2)
  %t41 = load i1, ptr %l20, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store i1 false, ptr %rv
  br label %ret
bb26:
  call void @__olang_check_failed(ptr @olang_loc_3c97826faaf501b5_26e177716b83aa41)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstLiteral(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i1
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t21 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s1, ptr %t16, ptr %t17)
  store ptr %t21, ptr %l14
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t23 = call i1 @compiler_2fscope_2econstItems(ptr %s1, ptr %t22)
  store i1 %t23, ptr %l15
  br label %bb7
bb7:
  %t24 = load i1, ptr %l15, !tbaa !21
  store i1 %t24, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 8}
  %t32 = icmp eq i64 %t30, 2
  store i1 %t32, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  br label %bb13
bb12:
  br label %bb16
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l22, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t46 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s2, ptr %t41, ptr %t42)
  store ptr %t46, ptr %l26
  br label %bb14
bb14:
  %t47 = load ptr, ptr %l22, !tbaa !29
  %t48 = load ptr, ptr %l26, !tbaa !29
  %t49 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %s2, ptr %t47, ptr %t48)
  store i1 %t49, ptr %l27
  br label %bb15
bb15:
  %t50 = load i1, ptr %l27, !tbaa !21
  store i1 %t50, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_1613ed059cb03484_3323568ce669da90)
  unreachable
bb21:
  %t51 = load i1, ptr %l4, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParamIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l20 = alloca ptr
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l53 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorBody(ptr %v0, ptr %t1, i32 %a1)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr %l13, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 1
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t18, ptr %l20
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l20, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 5
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l22
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l24
  br label %bb6
bb6:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l4)
  store i64 %t27, ptr %l26
  br label %bb7
bb7:
  %t28 = load i64, ptr %l26, !tbaa !24
  store i64 %t28, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t29 = load i64, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb13
bb10:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l33, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb12
bb12:
  %t55 = load i64, ptr %l33, !tbaa !24
  store i64 %t55, ptr %l30, !tbaa !24
  br label %bb13
bb13:
  %t56 = load i64, ptr %l30, !tbaa !24
  store i64 %t56, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  store i64 %t73, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l10, !tbaa !24
  %t78 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l4, i64 %t75)
  store i32 %t78, ptr %l53
  br label %bb18
bb18:
  %t80 = load i32, ptr %l53, !tbaa !23
  %t82 = icmp eq i32 %t80, %a2
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load i64, ptr %l10, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t84, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l9, !tbaa !24
  br label %bb14
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorAssign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/typed:Local"
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/scope:Val"
  %l18 = alloca { i64, [2 x i64] }
  %l20 = alloca i64
  %l29 = alloca i64
  %l38 = alloca %"compiler/typed:Local"
  %l39 = alloca { i64, [2 x i64] }
  %l43 = alloca { i64, [2 x i64] }
  %l44 = alloca i32
  %l50 = alloca { i64, [2 x i64] }
  %l51 = alloca { i64, [2 x i64] }
  %l53 = alloca ptr
  %l57 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l58 = alloca { i64, [2 x i64] }
  %l59 = alloca i32
  %l62 = alloca i1
  %l66 = alloca { i64, [2 x i64] }
  %l72 = alloca i1
  %l81 = alloca ptr
  %l88 = alloca ptr
  %l90 = alloca %"compiler/source:Span"
  %l91 = alloca %"compiler/source:Span"
  %l98 = alloca ptr
  %l102 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i64
  %l114 = alloca %"compiler/scope:Val"
  %l128 = alloca { i64, [2 x i64] }
  %l133 = alloca { i64, [2 x i64] }
  %l144 = alloca i1
  %l145 = alloca i64
  %l148 = alloca i64
  %l160 = alloca ptr
  %l163 = alloca ptr
  %l164 = alloca i32
  %s0 = alloca %olang.scope
  %t57 = alloca { i64, [2 x i64] }, align 8
  %t93 = alloca { i64, [2 x i64] }, align 8
  %t243 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l20
  br label %bb1
bb1:
  %t4 = load i64, ptr %l20, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 167
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_8897a11abbae3078_f3dd57de933efb7c)
  unreachable
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 167
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t20 = load i64, ptr %l4, !tbaa !24
  %t24 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %t15, i64 %t19, i64 %t20)
  store i64 %t24, ptr %l29
  br label %bb5
bb5:
  %t25 = load i64, ptr %l29, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 27
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  br i1 %t31, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_51ee4af841bdfc97_6c7c82a498ee2aeb)
  unreachable
bb7:
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 27
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Body", ptr %t36, i32 0, i32 7
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t39, i64 %t40)
  store %"compiler/typed:Local" %t43, ptr %l38
  br label %bb9
bb9:
  %t44 = load %"compiler/typed:Local", ptr %l38
  store %"compiler/typed:Local" %t44, ptr %l6
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %t45, i32 0, i32 196
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t47, i64 %t48)
  %t52 = extractvalue { i32, { i64, [2 x i64] } } %t51, 1
  %t53 = extractvalue { i32, { i64, [2 x i64] } } %t51, 0
  store i32 %t53, ptr %l44
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb11, label %ok.55, !prof !99
ok.55:
  store { i64, [2 x i64] } %t52, ptr %l43
  br label %bb10
bb10:
  %t56 = load { i64, [2 x i64] }, ptr %l43
  store { i64, [2 x i64] } %t56, ptr %l39
  br label %bb13
bb11:
  br label %bb12
bb12:
  store { i64, [2 x i64] } zeroinitializer, ptr %t57
  %t58 = getelementptr { i64, [2 x i64] }, ptr %t57, i32 0, i32 0
  store i64 0, ptr %t58
  %t59 = load { i64, [2 x i64] }, ptr %t57
  store { i64, [2 x i64] } %t59, ptr %l39
  br label %bb13
bb13:
  %t61 = load { i64, [2 x i64] }, ptr %l39
  store { i64, [2 x i64] } %t61, ptr %l7
  %t62 = load { i64, [2 x i64] }, ptr %l7
  %t64 = extractvalue { i64, [2 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 0
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Local", ptr %l6, i32 0, i32 3
  %t69 = load i32, ptr %t68, !tbaa !23
  %t72 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t67, i32 %t69)
  store { i64, [2 x i64] } %t72, ptr %l50
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t73 = load { i64, [2 x i64] }, ptr %l50
  store { i64, [2 x i64] } %t73, ptr %l7
  br label %bb17
bb17:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 179
  store ptr %t76, ptr %l53, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 28
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t84 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t80, i64 %t81)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t84, ptr %l57
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l53, !tbaa !29
  %t86 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l57
  %t87 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t85, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t86)
  %t88 = extractvalue { i32, { i64, [2 x i64] } } %t87, 1
  %t89 = extractvalue { i32, { i64, [2 x i64] } } %t87, 0
  store i32 %t89, ptr %l59
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb20, label %ok.91, !prof !99
ok.91:
  store { i64, [2 x i64] } %t88, ptr %l58
  br label %bb19
bb19:
  %t92 = load { i64, [2 x i64] }, ptr %l58
  store { i64, [2 x i64] } %t92, ptr %l51
  br label %bb22
bb20:
  br label %bb21
bb21:
  store { i64, [2 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [2 x i64] }, ptr %t93, i32 0, i32 0
  store i64 0, ptr %t94
  %t95 = load { i64, [2 x i64] }, ptr %t93
  store { i64, [2 x i64] } %t95, ptr %l51
  br label %bb22
bb22:
  %t97 = load { i64, [2 x i64] }, ptr %l51
  store { i64, [2 x i64] } %t97, ptr %l8
  %t98 = load { i64, [2 x i64] }, ptr %l8
  %t100 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t98)
  store i1 %t100, ptr %l62
  br label %bb23
bb23:
  %t101 = load i1, ptr %l62, !tbaa !21
  br i1 %t101, label %bb24, label %bb25
bb24:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, [2 x i64] }, ptr %l7
  %t104 = load { i64, [2 x i64] }, ptr %l8
  %t108 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t102, { i64, [2 x i64] } %t103, { i64, [2 x i64] } %t104)
  store { i64, [2 x i64] } %t108, ptr %l66
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t109 = load { i64, [2 x i64] }, ptr %l66
  store { i64, [2 x i64] } %t109, ptr %l7
  br label %bb27
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 65
  %t113 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %t112, ptr %t113)
  br label %bb28
bb28:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Local", ptr %l6, i32 0, i32 2
  %t118 = load i32, ptr %t117, !tbaa !23
  %t121 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t116, i32 %t118)
  store i1 %t121, ptr %l72
  br label %bb29
bb29:
  %t122 = load i1, ptr %l72, !tbaa !21
  br i1 %t122, label %bb30, label %bb31
bb30:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitBorrow(ptr %v0, ptr %v2, ptr %t123, ptr %t124)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/scope:Scoper", ptr %t127, i32 0, i32 152
  %t130 = load i64, ptr %t129, !tbaa !24
  store i64 %t130, ptr %l9, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 153
  %t135 = load %"compiler/source:Span", ptr %t134
  store %"compiler/source:Span" %t135, ptr %l10
  %t137 = load ptr, ptr %l3, !tbaa !29
  %t140 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v2, ptr %v2, ptr %t137)
  store ptr %t140, ptr %l81
  br label %bb34
bb34:
  %t141 = load ptr, ptr %l81, !tbaa !29
  store ptr %t141, ptr %l11, !tbaa !29
  %t142 = load ptr, ptr %l11, !tbaa !29
  %t144 = icmp eq ptr %t142, null
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb35, label %bb36
bb35:
  %t148 = load ptr, ptr %l11, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Call", ptr %t148, i32 0, i32 2
  %t151 = load i32, ptr %t150, !tbaa !23
  %t153 = sext i32 %t151 to i64
  store i64 %t153, ptr %l12, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l88, !tbaa !29
  %t156 = load ptr, ptr %l2, !tbaa !29
  %t158 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t156)
  store %"compiler/source:Span" %t158, ptr %l90
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t159 = load ptr, ptr %l88, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l90
  %t161 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %t159, %"compiler/source:Span" %t160)
  store %"compiler/source:Span" %t161, ptr %l91
  br label %bb38
bb38:
  %t162 = load %"compiler/source:Span", ptr %l91
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i64, ptr %l12, !tbaa !24
  %t167 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 152
  store i64 %t164, ptr %t167, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/scope:Scoper", ptr %t168, i32 0, i32 153
  store %"compiler/source:Span" %t162, ptr %t172
  br label %bb39
bb39:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/scope:Scoper", ptr %t173, i32 0, i32 154
  %t176 = load i64, ptr %t175, !tbaa !24
  store i64 %t176, ptr %l14, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l98, !tbaa !29
  %t179 = load ptr, ptr %l11, !tbaa !29
  %t181 = icmp eq ptr %t179, null
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb40, label %bb41
bb40:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/typed:Local", ptr %l6, i32 0, i32 2
  %t187 = load i32, ptr %t186, !tbaa !23
  %t190 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t185, i32 %t187)
  store i1 %t190, ptr %l105
  br label %bb42
bb41:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb43
bb42:
  %t191 = load i1, ptr %l105, !tbaa !21
  store i1 %t191, ptr %l102, !tbaa !21
  br label %bb43
bb43:
  %t192 = load i1, ptr %l102, !tbaa !21
  br i1 %t192, label %bb44, label %bb45
bb44:
  %t193 = load ptr, ptr %l11, !tbaa !29
  %t195 = getelementptr %"compiler/typed:Call", ptr %t193, i32 0, i32 2
  %t196 = load i32, ptr %t195, !tbaa !23
  %t198 = sext i32 %t196 to i64
  store i64 %t198, ptr %l106, !tbaa !24
  br label %bb46
bb45:
  store i64 -1, ptr %l106, !tbaa !24
  br label %bb46
bb46:
  %t200 = load i64, ptr %l106, !tbaa !24
  %t201 = load ptr, ptr %l98, !tbaa !29
  %t202 = getelementptr %"compiler/scope:Scoper", ptr %t201, i32 0, i32 154
  store i64 %t200, ptr %t202, !tbaa !24
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l3, !tbaa !29
  %t206 = load { i64, [2 x i64] }, ptr %l7
  %t210 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v2, ptr %t203, ptr %t204, { i64, [2 x i64] } %t206)
  store %"compiler/scope:Val" %t210, ptr %l114
  br label %bb47
bb47:
  %t211 = load %"compiler/scope:Val", ptr %l114
  store %"compiler/scope:Val" %t211, ptr %l15
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load i64, ptr %l14, !tbaa !24
  %t216 = getelementptr %"compiler/scope:Scoper", ptr %t212, i32 0, i32 154
  store i64 %t213, ptr %t216, !tbaa !24
  %t217 = load i64, ptr %l9, !tbaa !24
  %t219 = load %"compiler/source:Span", ptr %l10
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/scope:Scoper", ptr %t221, i32 0, i32 152
  store i64 %t217, ptr %t225, !tbaa !24
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/scope:Scoper", ptr %t226, i32 0, i32 153
  store %"compiler/source:Span" %t219, ptr %t230
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load i64, ptr %l4, !tbaa !24
  %t233 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLate(ptr %v0, ptr %v2, ptr %t231, i64 %t232, ptr %t233)
  br label %bb48
bb48:
  %t237 = getelementptr %"compiler/scope:Val", ptr %l15, i32 0, i32 0
  %t238 = load i32, ptr %t237, !range !{i32 0, i32 5}
  %t240 = trunc i64 1 to i32
  %t241 = icmp eq i32 %t238, %t240
  br i1 %t241, label %bb49, label %bb50
bb49:
  store { i64, [2 x i64] } zeroinitializer, ptr %t243
  %t244 = getelementptr { i64, [2 x i64] }, ptr %t243, i32 0, i32 0
  store i64 0, ptr %t244
  %t245 = load { i64, [2 x i64] }, ptr %t243
  store { i64, [2 x i64] } %t245, ptr %l128
  br label %bb52
bb50:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load %"compiler/scope:Val", ptr %l15
  %t249 = load { i64, [2 x i64] }, ptr %l7
  %t253 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %t247, %"compiler/scope:Val" %t248, { i64, [2 x i64] } %t249)
  store { i64, [2 x i64] } %t253, ptr %l133
  br label %bb51
bb51:
  %t254 = load { i64, [2 x i64] }, ptr %l133
  store { i64, [2 x i64] } %t254, ptr %l128
  br label %bb52
bb52:
  %t255 = load { i64, [2 x i64] }, ptr %l128
  store { i64, [2 x i64] } %t255, ptr %l18
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load i64, ptr %l5, !tbaa !24
  %t258 = load { i64, [2 x i64] }, ptr %l18
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everDefine(ptr %v0, ptr %t256, i64 %t257, { i64, [2 x i64] } %t258)
  br label %bb53
bb53:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load %"compiler/source:Span", ptr %l1
  %t264 = load i64, ptr %l4, !tbaa !24
  %t265 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteRecs(ptr %v0, ptr %v2, ptr %t262, %"compiler/source:Span" %t263, i64 %t264, ptr %t265)
  br label %bb54
bb54:
  %t271 = load i64, ptr %l5, !tbaa !24
  %t273 = icmp sge i64 %t271, 0
  br i1 %t273, label %bb55, label %bb56
bb55:
  %t275 = load i64, ptr %l5, !tbaa !24
  store i64 %t275, ptr %l145, !tbaa !24
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/scope:Scoper", ptr %t276, i32 0, i32 184
  %t280 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t278)
  store i64 %t280, ptr %l148
  br label %bb57
bb56:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb58
bb57:
  %t281 = load i64, ptr %l145, !tbaa !24
  %t282 = load i64, ptr %l148, !tbaa !24
  %t283 = icmp slt i64 %t281, %t282
  store i1 %t283, ptr %l144, !tbaa !21
  br label %bb58
bb58:
  %t285 = load i1, ptr %l144, !tbaa !21
  br i1 %t285, label %bb59, label %bb60
bb59:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/scope:Scoper", ptr %t286, i32 0, i32 184
  %t289 = load i64, ptr %l5, !tbaa !24
  %t290 = getelementptr %"compiler/scope:Val", ptr %l15, i32 0, i32 0
  %t291 = load i32, ptr %t290, !range !{i32 0, i32 5}
  %t293 = trunc i64 3 to i32
  %t294 = icmp eq i32 %t291, %t293
  %t296 = xor i1 %t294, true
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t288, i64 %t289, i1 %t296)
  br label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/scope:Scoper", ptr %t300, i32 0, i32 35
  %t303 = load i64, ptr %l4, !tbaa !24
  %t304 = load { i64, [2 x i64] }, ptr %l18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t302, i64 %t303, { i64, [2 x i64] } %t304)
  br label %bb63
bb63:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/scope:Scoper", ptr %t308, i32 0, i32 65
  %t312 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %s0, ptr %t310)
  %t313 = extractvalue { i32, ptr } %t312, 1
  %t314 = extractvalue { i32, ptr } %t312, 0
  store i32 %t314, ptr %l164
  %t315 = icmp ne i32 %t314, 0
  br i1 %t315, label %bb65, label %ok.316, !prof !99
ok.316:
  store ptr %t313, ptr %l163
  br label %bb64
bb64:
  %t317 = load ptr, ptr %l163, !tbaa !29
  store ptr %t317, ptr %l160, !tbaa !29
  br label %bb67
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eelemAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca %"compiler/source:Span"
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca ptr
  %l17 = alloca i1
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l43 = alloca i32
  %l51 = alloca i64
  %l54 = alloca i64
  %l76 = alloca { i64, ptr }
  %l85 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
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
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t5, ptr %l13
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  %t6 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t6, ptr %rv
  br label %ret
bb4:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t7)
  store %"compiler/source:Span" %t9, ptr %l15
  br label %bb5
bb5:
  %t10 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t10, ptr %l2
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t12 = load ptr, ptr %l16, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l16, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 18}
  %t18 = icmp eq i64 %t16, 14
  store i1 %t18, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t19 = load i1, ptr %l17, !tbaa !21
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l3, !tbaa !29
  br label %bb10
bb9:
  br label %bb18
bb10:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Try", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Try", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb13, label %bb14
bb12:
  br label %bb17
bb13:
  call void @__olang_check_failed(ptr @olang_loc_f7f7e8cd8f874575_c4b9e23387941a21)
  unreachable
bb14:
  br label %bb15
bb15:
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Try", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t45)
  store %"compiler/source:Span" %t47, ptr %l31
  br label %bb16
bb16:
  %t48 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t48, ptr %l2
  br label %bb17
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
  call void @__olang_check_failed(ptr @olang_loc_fdfd3ee9277a2fdd_9e10cfc7d92600f9)
  unreachable
bb23:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 11
  store ptr %t51, ptr %l34, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 27
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb24, label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_933cba94e4afba7f_7f3963489057e55b)
  unreachable
bb25:
  br label %bb26
bb26:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 27
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Body", ptr %t62, i32 0, i32 3
  %t66 = load i64, ptr %t65, !tbaa !24
  %t67 = load ptr, ptr %l34, !tbaa !29
  %t69 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t67, i64 %t66)
  %t70 = extractvalue { i32, { i64, ptr } } %t69, 1
  %t71 = extractvalue { i32, { i64, ptr } } %t69, 0
  store i32 %t71, ptr %l43
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb28, label %ok.73, !prof !99
ok.73:
  store { i64, ptr } %t70, ptr %l42
  br label %bb27
bb27:
  %t74 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t74, ptr %l32, !tbaa !27
  br label %bb30
bb28:
  br label %bb29
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l32, !tbaa !27
  br label %bb30
bb30:
  %t75 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t75, ptr %l4, !tbaa !27
  %t76 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  store i64 %t79, ptr %l5, !tbaa !24
  %t81 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t82 = load i32, ptr %t81, !tbaa !23
  %t84 = sext i32 %t82 to i64
  store i64 %t84, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l5, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb31, label %bb32
bb31:
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb36
bb33:
  %t96 = load i64, ptr %l6, !tbaa !24
  %t97 = load i64, ptr %l5, !tbaa !24
  %t100 = sub i64 %t96, %t97
  %t101 = load i64, ptr %l7, !tbaa !24
  %t104 = add i64 %t100, %t101
  %t106 = sub i64 %t104, 1
  %t107 = load i64, ptr %l7, !tbaa !24
  %t110 = sdiv i64 %t106, %t107
  store i64 %t110, ptr %l54, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb35
bb35:
  %t112 = load i64, ptr %l54, !tbaa !24
  store i64 %t112, ptr %l51, !tbaa !24
  br label %bb36
bb36:
  %t113 = load i64, ptr %l51, !tbaa !24
  store i64 %t113, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb37
bb37:
  %t114 = load i64, ptr %l9, !tbaa !24
  %t115 = load i64, ptr %l8, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb38, label %bb39
bb38:
  br label %bb49
bb39:
  br label %bb40
bb40:
  %t122 = load i64, ptr %l5, !tbaa !24
  %t123 = load i64, ptr %l9, !tbaa !24
  %t124 = load i64, ptr %l7, !tbaa !24
  %t127 = mul i64 %t123, %t124
  %t130 = add i64 %t122, %t127
  store i64 %t130, ptr %l10, !tbaa !24
  %t132 = load i64, ptr %l10, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t138 = icmp sge i64 %t132, %t135
  br i1 %t138, label %bb41, label %bb42
bb41:
  br label %bb49
bb42:
  br label %bb43
bb43:
  %t140 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t140, ptr %l76, !tbaa !27
  %t141 = load i64, ptr %l10, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr i8, ptr %t144, i64 %t141
  %t146 = load i8, ptr %t145, !tbaa !32
  %t148 = icmp eq i8 %t146, 91
  br i1 %t148, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t150 = load i64, ptr %l10, !tbaa !24
  %t152 = trunc i64 %t150 to i32
  %t153 = load i64, ptr %l10, !tbaa !24
  %t155 = add i64 %t153, 1
  %t157 = trunc i64 %t155 to i32
  %t160 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s8, i32 %t152, i32 %t157)
  store %"compiler/source:Span" %t160, ptr %l85
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_scope_close(ptr %s8)
  %t161 = load %"compiler/source:Span", ptr %l85
  store %"compiler/source:Span" %t161, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t162 = load i64, ptr %l9, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l9, !tbaa !24
  br label %bb37
bb49:
  %t166 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t166, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l25 = alloca i1
  %l26 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l36 = alloca i1
  %l39 = alloca i1
  %l46 = alloca i1
  %l49 = alloca i1
  %l56 = alloca i1
  %l64 = alloca i1
  %l65 = alloca { i64, ptr }
  %l77 = alloca i1
  %l78 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca { i64, ptr }
  %l89 = alloca i1
  %l90 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca { i64, ptr }
  %l100 = alloca i1
  %l110 = alloca %"compiler/source:Span"
  %s6 = alloca %olang.scope
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
  call void @__olang_check_failed(ptr @olang_loc_7b1e363353e9e01f_5d568e34003a167b)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t28 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  store i64 %t31, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t39 = icmp slt i64 %t33, %t36
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t41, ptr %l26, !tbaa !27
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  %t49 = icmp ne i8 %t47, 10
  store i1 %t49, ptr %l25, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t51 = load i1, ptr %l25, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb12, label %bb13
bb12:
  br label %bb66
bb13:
  br label %bb14
bb14:
  %t54 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t54, ptr %l31, !tbaa !27
  %t55 = load i64, ptr %l3, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i8, ptr %t58, i64 %t55
  %t60 = load i8, ptr %t59, !tbaa !32
  store i8 %t60, ptr %l5, !tbaa !22
  %t62 = load i8, ptr %l5, !tbaa !22
  %t64 = icmp eq i8 %t62, 40
  br i1 %t64, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb17
bb16:
  %t66 = load i8, ptr %l5, !tbaa !22
  %t68 = icmp eq i8 %t66, 91
  store i1 %t68, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t70 = load i1, ptr %l36, !tbaa !21
  br i1 %t70, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb20
bb19:
  %t71 = load i8, ptr %l5, !tbaa !22
  %t73 = icmp eq i8 %t71, 123
  store i1 %t73, ptr %l39, !tbaa !21
  br label %bb20
bb20:
  %t75 = load i1, ptr %l39, !tbaa !21
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l4, !tbaa !24
  br label %bb64
bb22:
  %t80 = load i8, ptr %l5, !tbaa !22
  %t82 = icmp eq i8 %t80, 41
  br i1 %t82, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb25
bb24:
  %t84 = load i8, ptr %l5, !tbaa !22
  %t86 = icmp eq i8 %t84, 93
  store i1 %t86, ptr %l46, !tbaa !21
  br label %bb25
bb25:
  %t88 = load i1, ptr %l46, !tbaa !21
  br i1 %t88, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb28
bb27:
  %t89 = load i8, ptr %l5, !tbaa !22
  %t91 = icmp eq i8 %t89, 125
  store i1 %t91, ptr %l49, !tbaa !21
  br label %bb28
bb28:
  %t93 = load i1, ptr %l49, !tbaa !21
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t94 = load i64, ptr %l4, !tbaa !24
  %t96 = sub i64 %t94, 1
  store i64 %t96, ptr %l4, !tbaa !24
  br label %bb63
bb30:
  %t98 = load i8, ptr %l5, !tbaa !22
  %t100 = icmp eq i8 %t98, 61
  br i1 %t100, label %bb31, label %bb32
bb31:
  %t102 = load i64, ptr %l4, !tbaa !24
  %t104 = icmp eq i64 %t102, 0
  store i1 %t104, ptr %l56, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb33
bb33:
  %t106 = load i1, ptr %l56, !tbaa !21
  br i1 %t106, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s6
  %t107 = load i64, ptr %l3, !tbaa !24
  %t109 = add i64 %t107, 1
  %t110 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 0
  %t115 = icmp slt i64 %t109, %t112
  br i1 %t115, label %bb36, label %bb37
bb35:
  br label %bb62
bb36:
  %t117 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t117, ptr %l65, !tbaa !27
  %t118 = load i64, ptr %l3, !tbaa !24
  %t120 = add i64 %t118, 1
  %t122 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i8, ptr %t123, i64 %t120
  %t125 = load i8, ptr %t124, !tbaa !32
  %t127 = icmp eq i8 %t125, 61
  store i1 %t127, ptr %l64, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb38
bb38:
  %t129 = load i1, ptr %l64, !tbaa !21
  br i1 %t129, label %bb39, label %bb40
bb39:
  %t130 = load i64, ptr %l3, !tbaa !24
  %t132 = add i64 %t130, 2
  store i64 %t132, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb65
bb40:
  br label %bb41
bb41:
  %t134 = load i64, ptr %l3, !tbaa !24
  store i64 %t134, ptr %l6, !tbaa !24
  br label %bb42
bb42:
  %t136 = load i64, ptr %l6, !tbaa !24
  %t137 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t138 = load i32, ptr %t137, !tbaa !23
  %t140 = sext i32 %t138 to i64
  %t143 = icmp sgt i64 %t136, %t140
  br i1 %t143, label %bb43, label %bb44
bb43:
  %t145 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t145, ptr %l78, !tbaa !27
  %t146 = load i64, ptr %l6, !tbaa !24
  %t148 = sub i64 %t146, 1
  %t150 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i8, ptr %t151, i64 %t148
  %t153 = load i8, ptr %t152, !tbaa !32
  %t155 = icmp ne i8 %t153, 32
  store i1 %t155, ptr %l77, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb45
bb45:
  %t157 = load i1, ptr %l77, !tbaa !21
  br i1 %t157, label %bb46, label %bb47
bb46:
  %t158 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t158, ptr %l84, !tbaa !27
  %t159 = load i64, ptr %l6, !tbaa !24
  %t161 = sub i64 %t159, 1
  %t163 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i8, ptr %t164, i64 %t161
  %t166 = load i8, ptr %t165, !tbaa !32
  %t168 = icmp ne i8 %t166, 41
  store i1 %t168, ptr %l83, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb48
bb48:
  %t170 = load i1, ptr %l83, !tbaa !21
  br i1 %t170, label %bb49, label %bb50
bb49:
  %t171 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t171, ptr %l90, !tbaa !27
  %t172 = load i64, ptr %l6, !tbaa !24
  %t174 = sub i64 %t172, 1
  %t176 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i8, ptr %t177, i64 %t174
  %t179 = load i8, ptr %t178, !tbaa !32
  %t181 = icmp ne i8 %t179, 93
  store i1 %t181, ptr %l89, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb51
bb51:
  %t183 = load i1, ptr %l89, !tbaa !21
  br i1 %t183, label %bb52, label %bb53
bb52:
  %t184 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t184, ptr %l96, !tbaa !27
  %t185 = load i64, ptr %l6, !tbaa !24
  %t187 = sub i64 %t185, 1
  %t189 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i8, ptr %t190, i64 %t187
  %t192 = load i8, ptr %t191, !tbaa !32
  %t194 = call i1 @compiler_2fscope_2eisNameChar(i8 %t192)
  store i1 %t194, ptr %l100
  br label %bb54
bb53:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb55
bb54:
  %t195 = load i1, ptr %l100, !tbaa !21
  %t196 = xor i1 %t195, true
  store i1 %t196, ptr %l95, !tbaa !21
  br label %bb55
bb55:
  %t198 = load i1, ptr %l95, !tbaa !21
  %t199 = xor i1 %t198, true
  br i1 %t199, label %bb56, label %bb57
bb56:
  br label %bb60
bb57:
  br label %bb58
bb58:
  %t201 = load i64, ptr %l6, !tbaa !24
  %t203 = sub i64 %t201, 1
  store i64 %t203, ptr %l6, !tbaa !24
  br label %bb59
bb59:
  br label %bb42
bb60:
  %t205 = load i64, ptr %l6, !tbaa !24
  %t207 = trunc i64 %t205 to i32
  %t208 = load i64, ptr %l3, !tbaa !24
  %t210 = add i64 %t208, 1
  %t212 = trunc i64 %t210 to i32
  %t215 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t207, i32 %t212)
  store %"compiler/source:Span" %t215, ptr %l110
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s6)
  %t216 = load %"compiler/source:Span", ptr %l110
  store %"compiler/source:Span" %t216, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t217 = load i64, ptr %l3, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l3, !tbaa !24
  br label %bb65
bb65:
  br label %bb8
bb66:
  %t221 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t221, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMarkOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l12 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca %"compiler/typed:Local"
  %rv = alloca { i64, [1 x i64] }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 7
  store ptr %t10, ptr %l8, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l12
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t18, i32 0, i32 10
  %t24 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t20, i64 %a2)
  store i32 %t24, ptr %l16
  br label %bb3
bb3:
  %t25 = load i32, ptr %l16, !tbaa !23
  %t26 = sext i32 %t25 to i64
  %t27 = load ptr, ptr %l8, !tbaa !29
  %t29 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t27, i64 %t26)
  store %"compiler/typed:Local" %t29, ptr %l18
  br label %bb4
bb4:
  %t30 = getelementptr %"compiler/typed:Local", ptr %l18, i32 0, i32 5
  %t31 = load { i64, [1 x i64] }, ptr %t30
  store { i64, [1 x i64] } %t31, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflStmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eforWrap(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i32
  %l20 = alloca %"compiler/typed:BlockInfo"
  %l24 = alloca i1
  %l36 = alloca i64
  %l39 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca i1
  %l73 = alloca i1
  %l83 = alloca %"compiler/typed:Local"
  %l88 = alloca ptr
  %l89 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  call void @__olang_check_failed(ptr @olang_loc_6b4093eaa9dab6e0_ebbf8088c45502d4)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 27
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 8
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Block", ptr %t15, i32 0, i32 0
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t14, i64 %t20)
  store %"compiler/typed:BlockInfo" %t23, ptr %l20
  br label %bb4
bb4:
  %t24 = getelementptr %"compiler/typed:BlockInfo", ptr %l20, i32 0, i32 1
  %t25 = load i32, ptr %t24, !range !{i32 0, i32 10}
  %t27 = trunc i64 1 to i32
  %t28 = icmp eq i32 %t25, %t27
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb7
bb6:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Block", ptr %t32, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp slt i64 %t37, 2
  store i1 %t39, ptr %l24, !tbaa !21
  br label %bb7
bb7:
  %t41 = load i1, ptr %l24, !tbaa !21
  br i1 %t41, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  store i64 0, ptr %l2, !tbaa !24
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Block", ptr %t43, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  store i64 %t48, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  %t54 = icmp sgt i64 %t50, %t51
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb16
bb13:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t61 = load i64, ptr %l2, !tbaa !24
  %t64 = sub i64 %t60, %t61
  %t65 = load i64, ptr %l4, !tbaa !24
  %t68 = add i64 %t64, %t65
  %t70 = sub i64 %t68, 1
  %t71 = load i64, ptr %l4, !tbaa !24
  %t74 = sdiv i64 %t70, %t71
  store i64 %t74, ptr %l39, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb15
bb15:
  %t76 = load i64, ptr %l39, !tbaa !24
  store i64 %t76, ptr %l36, !tbaa !24
  br label %bb16
bb16:
  %t77 = load i64, ptr %l36, !tbaa !24
  store i64 %t77, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb17
bb17:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l5, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb18, label %bb19
bb18:
  br label %bb52
bb19:
  br label %bb20
bb20:
  %t86 = load i64, ptr %l2, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = mul i64 %t87, %t88
  %t94 = add i64 %t86, %t91
  store i64 %t94, ptr %l7, !tbaa !24
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Block", ptr %t96, i32 0, i32 1
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  store { i64, ptr } %t99, ptr %l58, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr ptr, ptr %t103, i64 %t100
  %t105 = load ptr, ptr %t104, !tbaa !39
  store ptr %t105, ptr %l8, !tbaa !29
  %t107 = load ptr, ptr %l8, !tbaa !29
  store ptr %t107, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t108 = load ptr, ptr %l61, !tbaa !29
  %t109 = icmp ne ptr %t108, null
  br i1 %t109, label %bb21, label %bb22
bb21:
  %t111 = load ptr, ptr %l61, !tbaa !29
  %t112 = load i64, ptr %t111, !range !{i64 0, i64 17}
  %t114 = icmp eq i64 %t112, 0
  store i1 %t114, ptr %l62, !tbaa !21
  br label %bb22
bb22:
  %t115 = load i1, ptr %l62, !tbaa !21
  br i1 %t115, label %bb23, label %bb24
bb23:
  %t116 = load ptr, ptr %l8, !tbaa !29
  %t118 = getelementptr { i64, [3 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t118, i32 0, i32 1
  %t120 = load i32, ptr %t119
  store i32 %t120, ptr %l9, !tbaa !23
  br label %bb25
bb24:
  br label %bb36
bb25:
  %t122 = load i64, ptr %l7, !tbaa !24
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Block", ptr %t123, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t130 = sub i64 %t128, 1
  %t133 = icmp eq i64 %t122, %t130
  br i1 %t133, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb32
bb27:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/scope:Scoper", ptr %t135, i32 0, i32 27
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = icmp eq ptr %t138, null
  br i1 %t140, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_a83726b6934b3ff_5f714cf565db93e3)
  unreachable
bb29:
  br label %bb30
bb30:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/scope:Scoper", ptr %t142, i32 0, i32 27
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Body", ptr %t145, i32 0, i32 7
  %t149 = load i32, ptr %l9, !tbaa !23
  %t151 = sext i32 %t149 to i64
  %t154 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t148, i64 %t151)
  store %"compiler/typed:Local" %t154, ptr %l83
  br label %bb31
bb31:
  %t155 = getelementptr %"compiler/typed:Local", ptr %l83, i32 0, i32 4
  %t156 = load i32, ptr %t155, !range !{i32 0, i32 7}
  %t158 = trunc i64 1 to i32
  %t159 = icmp eq i32 %t156, %t158
  %t161 = xor i1 %t159, true
  store i1 %t161, ptr %l73, !tbaa !21
  br label %bb32
bb32:
  %t163 = load i1, ptr %l73, !tbaa !21
  br i1 %t163, label %bb33, label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  br label %bb50
bb36:
  %t165 = load ptr, ptr %l8, !tbaa !29
  store ptr %t165, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t166 = load ptr, ptr %l88, !tbaa !29
  %t167 = icmp ne ptr %t166, null
  br i1 %t167, label %bb37, label %bb38
bb37:
  %t169 = load ptr, ptr %l88, !tbaa !29
  %t170 = load i64, ptr %t169, !range !{i64 0, i64 17}
  %t172 = icmp eq i64 %t170, 4
  store i1 %t172, ptr %l89, !tbaa !21
  br label %bb38
bb38:
  %t173 = load i1, ptr %l89, !tbaa !21
  br i1 %t173, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb45
bb41:
  %t174 = load i64, ptr %l7, !tbaa !24
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr %"compiler/typed:Block", ptr %t175, i32 0, i32 1
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t182 = sub i64 %t180, 1
  %t185 = icmp ne i64 %t174, %t182
  br i1 %t185, label %bb42, label %bb43
bb42:
  store i1 false, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i1 false, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_2e96c7acbe66a05d_c52c59876e2a2911)
  unreachable
bb50:
  br label %bb51
bb51:
  %t189 = load i64, ptr %l6, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l6, !tbaa !24
  br label %bb17
bb52:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eforced(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t2, i64 %a1)
  store ptr %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t9 = getelementptr %"compiler/scope:summary", ptr %t7, i32 0, i32 0
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t14 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eforcedBy(ptr %v0, ptr %v0, ptr %t11, ptr %t9, i64 %a2)
  store i1 %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load i1, ptr %l10, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveTails(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l17 = alloca ptr
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l62 = alloca i64
  %l64 = alloca i1
  %l65 = alloca ptr
  %l68 = alloca i64
  %l69 = alloca i1
  %l70 = alloca ptr
  %l73 = alloca i64
  %l74 = alloca i1
  %l76 = alloca ptr
  %l79 = alloca i64
  %l80 = alloca ptr
  %l83 = alloca i64
  %l87 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l88 = alloca i64
  %l90 = alloca i64
  %l91 = alloca i32
  %l93 = alloca i1
  %l97 = alloca ptr
  %l103 = alloca { i64, ptr }
  %l106 = alloca i1
  %l107 = alloca ptr
  %l114 = alloca i32
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %t202 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l4
  store ptr %a3, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l6, !tbaa !24
  store i64 %t5, ptr %l20, !tbaa !24
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v3, ptr %t6)
  store i64 %t8, ptr %l22
  br label %bb3
bb3:
  %t9 = load i64, ptr %l20, !tbaa !24
  %t10 = load i64, ptr %l22, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v3, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l27
  br label %bb7
bb7:
  %t20 = load i64, ptr %l27, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l4, i64 %t20, i1 true)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = add i64 %t24, 1
  store i64 %t26, ptr %l6, !tbaa !24
  br label %bb2
bb10:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb11
bb11:
  %t28 = load i1, ptr %l8, !tbaa !21
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb12, label %bb13
bb12:
  br label %bb44
bb13:
  br label %bb14
bb14:
  store i1 false, ptr %l8, !tbaa !21
  store i64 0, ptr %l9, !tbaa !24
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t32)
  store i64 %t34, ptr %l35
  br label %bb15
bb15:
  %t35 = load i64, ptr %l35, !tbaa !24
  store i64 %t35, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t36 = load i64, ptr %l10, !tbaa !24
  %t37 = load i64, ptr %l9, !tbaa !24
  %t40 = icmp sgt i64 %t36, %t37
  br i1 %t40, label %bb16, label %bb17
bb16:
  %t42 = load i64, ptr %l11, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb21
bb18:
  %t46 = load i64, ptr %l10, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = sub i64 %t46, %t47
  %t51 = load i64, ptr %l11, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = sub i64 %t54, 1
  %t57 = load i64, ptr %l11, !tbaa !24
  %t60 = sdiv i64 %t56, %t57
  store i64 %t60, ptr %l42, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb20
bb20:
  %t62 = load i64, ptr %l42, !tbaa !24
  store i64 %t62, ptr %l39, !tbaa !24
  br label %bb21
bb21:
  %t63 = load i64, ptr %l39, !tbaa !24
  store i64 %t63, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb22
bb22:
  %t64 = load i64, ptr %l13, !tbaa !24
  %t65 = load i64, ptr %l12, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb23, label %bb24
bb23:
  br label %bb42
bb24:
  br label %bb25
bb25:
  %t72 = load i64, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l13, !tbaa !24
  %t74 = load i64, ptr %l11, !tbaa !24
  %t77 = mul i64 %t73, %t74
  %t80 = add i64 %t72, %t77
  store i64 %t80, ptr %l14, !tbaa !24
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t83 = load i64, ptr %l14, !tbaa !24
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t82, i64 %t83)
  store i64 %t86, ptr %l62
  br label %bb26
bb26:
  %t87 = load i64, ptr %l62, !tbaa !24
  %t88 = icmp slt i64 %t87, 0
  br i1 %t88, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb33
bb28:
  store ptr %l4, ptr %l65, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t91 = load i64, ptr %l14, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l68
  br label %bb29
bb29:
  %t95 = load ptr, ptr %l65, !tbaa !29
  %t96 = load i64, ptr %l68, !tbaa !24
  %t97 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %t95, i64 %t96)
  store i1 %t97, ptr %l69
  br label %bb30
bb30:
  store ptr %l4, ptr %l70, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t99 = load i64, ptr %l14, !tbaa !24
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t98, i64 %t99)
  store i64 %t102, ptr %l73
  br label %bb31
bb31:
  %t103 = load ptr, ptr %l70, !tbaa !29
  %t104 = load i64, ptr %l73, !tbaa !24
  %t105 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %t103, i64 %t104)
  store i1 %t105, ptr %l74
  br label %bb32
bb32:
  %t106 = load i1, ptr %l69, !tbaa !21
  %t107 = load i1, ptr %l74, !tbaa !21
  %t108 = icmp eq i1 %t106, %t107
  store i1 %t108, ptr %l64, !tbaa !21
  br label %bb33
bb33:
  %t110 = load i1, ptr %l64, !tbaa !21
  br i1 %t110, label %bb34, label %bb35
bb34:
  br label %bb41
bb35:
  br label %bb36
bb36:
  store ptr %l4, ptr %l76, !tbaa !29
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t112 = load i64, ptr %l14, !tbaa !24
  %t115 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t111, i64 %t112)
  store i64 %t115, ptr %l79
  br label %bb37
bb37:
  %t116 = load ptr, ptr %l76, !tbaa !29
  %t117 = load i64, ptr %l79, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %t116, i64 %t117, i1 true)
  br label %bb38
bb38:
  store ptr %l4, ptr %l80, !tbaa !29
  %t118 = load ptr, ptr %l2, !tbaa !29
  %t119 = load i64, ptr %l14, !tbaa !24
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t118, i64 %t119)
  store i64 %t122, ptr %l83
  br label %bb39
bb39:
  %t123 = load ptr, ptr %l80, !tbaa !29
  %t124 = load i64, ptr %l83, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %t123, i64 %t124, i1 true)
  br label %bb40
bb40:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb41
bb41:
  %t125 = load i64, ptr %l13, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l13, !tbaa !24
  br label %bb22
bb42:
  br label %bb43
bb43:
  br label %bb11
bb44:
  %t130 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %s0, ptr %s0, ptr %l4)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t130, ptr %l87
  br label %bb45
bb45:
  %t131 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l87
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t131, ptr %l15
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s10
  %t133 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %s0, ptr %l15)
  %t134 = extractvalue { i32, i64 } %t133, 1
  %t135 = extractvalue { i32, i64 } %t133, 0
  store i32 %t135, ptr %l91
  %t136 = icmp ne i32 %t135, 0
  br i1 %t136, label %bb48, label %ok.137, !prof !99
ok.137:
  store i64 %t134, ptr %l90
  br label %bb47
bb47:
  %t138 = load i64, ptr %l90, !tbaa !24
  store i64 %t138, ptr %l88, !tbaa !24
  br label %bb50
bb48:
  %t139 = load i32, ptr %l91, !tbaa !23
  %t140 = ashr i32 %t139, 16
  %t142 = icmp eq i32 %t140, 1
  store i1 %t142, ptr %l93, !tbaa !21
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s10)
  br label %bb60
bb50:
  %t143 = load i64, ptr %l88, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/scope:Scoper", ptr %t144, i32 0, i32 1
  %t150 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t146, i64 %t143)
  store ptr %t150, ptr %l97
  br label %bb51
bb51:
  %t151 = load ptr, ptr %l97, !tbaa !29
  store ptr %t151, ptr %l17, !tbaa !29
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/generic:Program", ptr %t155, i32 0, i32 2
  %t158 = load ptr, ptr %l17, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Body", ptr %t158, i32 0, i32 2
  %t161 = load i32, ptr %t160, !tbaa !23
  %t164 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s10, ptr %t157, i32 %t161)
  store { i64, ptr } %t164, ptr %l103
  br label %bb52
bb52:
  %t165 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  %t167 = extractvalue { i64, ptr } %t165, 1
  %t168 = mul i64 %t166, 8
  %t169 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t172 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_25, 0
  %t173 = insertvalue { ptr, ptr } %t172, ptr null, 1
  %t176 = extractvalue { ptr, ptr } %t173, 0
  %t177 = extractvalue { ptr, ptr } %t173, 1
  %t178 = call i1 @std_2fprelude_2farray_2eArray_3cI64_3e_2eSome_3cI64_2c_20_3f_3e(ptr %s10, ptr %s10, { i64, ptr } %t171, ptr %t176, ptr %t177)
  store i1 %t178, ptr %l106
  br label %bb53
bb53:
  %t179 = load i1, ptr %l106, !tbaa !21
  br i1 %t179, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb55:
  br label %bb56
bb56:
  %t180 = load ptr, ptr %l17, !tbaa !29
  store ptr %t180, ptr %l107, !tbaa !29
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/scope:Scoper", ptr %t181, i32 0, i32 0
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = getelementptr %"compiler/generic:Program", ptr %t184, i32 0, i32 2
  %t187 = load ptr, ptr %l17, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Body", ptr %t187, i32 0, i32 2
  %t190 = load i32, ptr %t189, !tbaa !23
  %t191 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleTail, !tbaa !24
  %t195 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithRole(ptr %v0, ptr %t186, i32 %t190, i64 %t191)
  store i32 %t195, ptr %l114
  br label %bb57
bb57:
  %t196 = load i32, ptr %l114, !tbaa !23
  %t197 = load ptr, ptr %l107, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Body", ptr %t197, i32 0, i32 2
  store i32 %t196, ptr %t198, !tbaa !23
  %t199 = load ptr, ptr %l17, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Body", ptr %t199, i32 0, i32 6
  store { i64, [1 x i64] } zeroinitializer, ptr %t202
  %t203 = getelementptr { i64, [1 x i64] }, ptr %t202, i32 0, i32 0
  store i64 1, ptr %t203
  %t204 = load { i64, [1 x i64] }, ptr %t202
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t201, { i64, [1 x i64] } %t204)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb59:
  br label %bb46
bb60:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehasLateLocals(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i64
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i1
  %l49 = alloca i64
  %l53 = alloca ptr
  %l56 = alloca i64
  %l58 = alloca i1
  %l59 = alloca ptr
  %l63 = alloca ptr
  %l67 = alloca %"compiler/typed:Local"
  %l69 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 16
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i64, ptr %l12, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 16
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = add i64 %t12, 1
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t11, i64 %t14)
  store i64 %t17, ptr %l17
  br label %bb2
bb2:
  %t18 = load i64, ptr %l17, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb8
bb5:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l24, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l24, !tbaa !24
  store i64 %t45, ptr %l21, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l21, !tbaa !24
  store i64 %t46, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  br label %bb29
bb11:
  br label %bb12
bb12:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 17
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t67, i64 %t63)
  store i64 %t71, ptr %l45
  br label %bb13
bb13:
  %t72 = load i64, ptr %l45, !tbaa !24
  store i64 %t72, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t75 = icmp sge i64 %t73, 0
  br i1 %t75, label %bb14, label %bb15
bb14:
  %t77 = load i64, ptr %l8, !tbaa !24
  store i64 %t77, ptr %l49, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Scoper", ptr %t78, i32 0, i32 1
  %t81 = load i64, ptr %l1, !tbaa !24
  %t84 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t80, i64 %t81)
  store ptr %t84, ptr %l53
  br label %bb16
bb15:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb18
bb16:
  %t85 = load ptr, ptr %l53, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Body", ptr %t85, i32 0, i32 7
  %t89 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t87)
  store i64 %t89, ptr %l56
  br label %bb17
bb17:
  %t90 = load i64, ptr %l49, !tbaa !24
  %t91 = load i64, ptr %l56, !tbaa !24
  %t92 = icmp slt i64 %t90, %t91
  store i1 %t92, ptr %l48, !tbaa !21
  br label %bb18
bb18:
  %t94 = load i1, ptr %l48, !tbaa !21
  br i1 %t94, label %bb19, label %bb20
bb19:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l59, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t96, i32 0, i32 1
  %t99 = load i64, ptr %l1, !tbaa !24
  %t102 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t98, i64 %t99)
  store ptr %t102, ptr %l63
  br label %bb21
bb20:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb24
bb21:
  %t103 = load ptr, ptr %l63, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Body", ptr %t103, i32 0, i32 7
  %t106 = load i64, ptr %l8, !tbaa !24
  %t109 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t105, i64 %t106)
  store %"compiler/typed:Local" %t109, ptr %l67
  br label %bb22
bb22:
  %t110 = getelementptr %"compiler/typed:Local", ptr %l67, i32 0, i32 2
  %t111 = load i32, ptr %t110, !tbaa !23
  %t112 = load ptr, ptr %l59, !tbaa !29
  %t114 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParams(ptr %v0, ptr %t112, i32 %t111)
  store i64 %t114, ptr %l69
  br label %bb23
bb23:
  %t115 = load i64, ptr %l69, !tbaa !24
  %t116 = icmp sgt i64 %t115, 0
  store i1 %t116, ptr %l58, !tbaa !21
  br label %bb24
bb24:
  %t118 = load i1, ptr %l58, !tbaa !21
  br i1 %t118, label %bb25, label %bb26
bb25:
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t120 = load i64, ptr %l6, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l6, !tbaa !24
  br label %bb9
bb29:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca i32
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca ptr
  %rv = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 64, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = sub i64 %t11, %t12
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t21 = sub i64 %t19, 1
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = sdiv i64 %t21, %t22
  store i64 %t25, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l17, !tbaa !24
  store i64 %t27, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l14, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb26
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  store i64 %t45, ptr %l7, !tbaa !24
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 1
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l38
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l38, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Body", ptr %t54, i32 0, i32 1
  %t57 = load { i64, [2 x i64] }, ptr %t56
  store { i64, [2 x i64] } %t57, ptr %l8
  %t59 = load { i64, [2 x i64] }, ptr %l8
  %t61 = extractvalue { i64, [2 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 0
  br i1 %t62, label %bb12, label %bb13
bb12:
  %t64 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t65 = getelementptr { i64 }, ptr %t64, i32 0, i32 0
  %t66 = load i64, ptr %t65
  store i64 %t66, ptr %l9, !tbaa !24
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t68 = load i64, ptr %l9, !tbaa !24
  store i64 %t68, ptr %rv
  br label %ret
bb15:
  %t70 = load { i64, [2 x i64] }, ptr %l8
  %t72 = extractvalue { i64, [2 x i64] } %t70, 0
  %t73 = icmp eq i64 %t72, 4
  br i1 %t73, label %bb16, label %bb17
bb16:
  %t75 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t76 = getelementptr { i32 }, ptr %t75, i32 0, i32 0
  %t77 = load i32, ptr %t76
  store i32 %t77, ptr %l10, !tbaa !23
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t79 = load i32, ptr %l10, !tbaa !23
  %t81 = sext i32 %t79 to i64
  store i64 %t81, ptr %l1, !tbaa !24
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i64 -1, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_e2ea0fea769db7e4_aa8c1e0e7de89fc8)
  unreachable
bb24:
  br label %bb25
bb25:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l6, !tbaa !24
  br label %bb7
bb26:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceOutlivesArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"compiler/scope:rel"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, [2 x i64] }
  %l18 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i1
  %l32 = alloca i64
  %l35 = alloca i1
  %l36 = alloca ptr
  %l45 = alloca %"compiler/typed:Local"
  %l47 = alloca i1
  %l49 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i32
  %l55 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca i32
  %l64 = alloca ptr
  %l67 = alloca ptr
  %l69 = alloca ptr
  %l72 = alloca i1
  %l75 = alloca i1
  %l78 = alloca ptr
  %l81 = alloca i32
  %l82 = alloca i64
  %l89 = alloca i64
  %l90 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca i64
  %l97 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %l108 = alloca ptr
  %l111 = alloca i64
  %l113 = alloca i64
  %l118 = alloca %"compiler/scope:rel"
  %l121 = alloca i1
  %l124 = alloca i1
  %l133 = alloca i64
  %l136 = alloca i1
  %l139 = alloca i64
  %l142 = alloca i64
  %l149 = alloca { i64, [2 x i64] }
  %l151 = alloca i1
  %l153 = alloca i1
  %l157 = alloca i64
  %l160 = alloca i1
  %l163 = alloca { i64, ptr }
  %l167 = alloca i1
  %l168 = alloca i1
  %l171 = alloca { i64, ptr }
  %l175 = alloca i64
  %l181 = alloca { i64, ptr }
  %l187 = alloca ptr
  %l190 = alloca { i64, ptr }
  %l193 = alloca %"compiler/source:Span"
  %l196 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l201 = alloca %"compiler/diagmsg:Msg"
  %l202 = alloca i64
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
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
  store i1 %t3, ptr %l18
  br label %bb1
bb1:
  %t4 = load i1, ptr %l18, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t13 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t8, ptr %a1)
  store ptr %t13, ptr %l24
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l24, !tbaa !29
  store ptr %t14, ptr %l4, !tbaa !29
  %t15 = load ptr, ptr %l4, !tbaa !29
  store ptr %t15, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t16 = load ptr, ptr %l25, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l25, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 2
  store i1 %t22, ptr %l26, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l26, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l5, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s0, ptr %t30)
  store i64 %t32, ptr %l32
  br label %bb11
bb11:
  %t33 = load i64, ptr %l32, !tbaa !24
  store i64 %t33, ptr %l3, !tbaa !24
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
  call void @__olang_check_failed(ptr @olang_loc_3f250a06b21cc3f2_59a5c5e8895f34f6)
  unreachable
bb17:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = icmp slt i64 %t34, 0
  br i1 %t36, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb25
bb19:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l36, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 27
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_8ee4ae07259e8dc_de6076a554649350)
  unreachable
bb21:
  br label %bb22
bb22:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 27
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t49, i32 0, i32 7
  %t53 = load i64, ptr %l3, !tbaa !24
  %t56 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t52, i64 %t53)
  store %"compiler/typed:Local" %t56, ptr %l45
  br label %bb23
bb23:
  %t57 = getelementptr %"compiler/typed:Local", ptr %l45, i32 0, i32 2
  %t58 = load i32, ptr %t57, !tbaa !23
  %t59 = load ptr, ptr %l36, !tbaa !29
  %t61 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t59, i32 %t58)
  store i1 %t61, ptr %l47
  br label %bb24
bb24:
  %t62 = load i1, ptr %l47, !tbaa !21
  store i1 %t62, ptr %l35, !tbaa !21
  br label %bb25
bb25:
  %t63 = load i1, ptr %l35, !tbaa !21
  br i1 %t63, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 47
  %t68 = load i64, ptr %l3, !tbaa !24
  %t71 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t67, i64 %t68)
  %t72 = extractvalue { i32, i64 } %t71, 1
  %t73 = extractvalue { i32, i64 } %t71, 0
  store i32 %t73, ptr %l54
  %t74 = icmp ne i32 %t73, 0
  br i1 %t74, label %bb30, label %ok.75, !prof !99
ok.75:
  store i64 %t72, ptr %l53
  br label %bb29
bb29:
  %t76 = load i64, ptr %l53, !tbaa !24
  store i64 %t76, ptr %l49, !tbaa !24
  br label %bb32
bb30:
  br label %bb31
bb31:
  store i64 -1, ptr %l49, !tbaa !24
  br label %bb32
bb32:
  %t77 = load i64, ptr %l49, !tbaa !24
  store i64 %t77, ptr %l6, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Scoper", ptr %t78, i32 0, i32 46
  %t81 = load i64, ptr %l3, !tbaa !24
  %t84 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t80, i64 %t81)
  %t85 = extractvalue { i32, ptr } %t84, 1
  %t86 = extractvalue { i32, ptr } %t84, 0
  store i32 %t86, ptr %l60
  %t87 = icmp ne i32 %t86, 0
  br i1 %t87, label %bb34, label %ok.88, !prof !99
ok.88:
  store ptr %t85, ptr %l59
  br label %bb33
bb33:
  %t89 = load ptr, ptr %l59, !tbaa !29
  store ptr %t89, ptr %l55, !tbaa !29
  br label %bb36
bb34:
  br label %bb35
bb35:
  store ptr null, ptr %l55, !tbaa !29
  br label %bb36
bb36:
  %t90 = load ptr, ptr %l55, !tbaa !29
  store ptr %t90, ptr %l7, !tbaa !29
  %t91 = load ptr, ptr %l7, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb37, label %bb38
bb37:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t101 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v0, ptr %s0, ptr %t97, ptr %t98)
  store ptr %t101, ptr %l67
  br label %bb39
bb38:
  store ptr null, ptr %l64, !tbaa !29
  br label %bb41
bb39:
  %t102 = load ptr, ptr %l67, !tbaa !29
  %t104 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s0, ptr %s0, ptr %t102)
  store ptr %t104, ptr %l69
  br label %bb40
bb40:
  %t105 = load ptr, ptr %l69, !tbaa !29
  store ptr %t105, ptr %l64, !tbaa !29
  br label %bb41
bb41:
  %t106 = load ptr, ptr %l64, !tbaa !29
  store ptr %t106, ptr %l8, !tbaa !29
  %t107 = load i64, ptr %l6, !tbaa !24
  %t109 = icmp slt i64 %t107, 0
  br i1 %t109, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb44
bb43:
  %t111 = load ptr, ptr %l8, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  store i1 %t113, ptr %l72, !tbaa !21
  br label %bb44
bb44:
  %t115 = load i1, ptr %l72, !tbaa !21
  br i1 %t115, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb49
bb46:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 2
  store ptr %t121, ptr %l78, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l8, !tbaa !29
  %t126 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %s0, ptr %t122, ptr %t123)
  store i32 %t126, ptr %l81
  br label %bb47
bb47:
  %t127 = load ptr, ptr %l78, !tbaa !29
  %t128 = load i32, ptr %l81, !tbaa !23
  %t129 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t127, i32 %t128)
  store i64 %t129, ptr %l82
  br label %bb48
bb48:
  %t130 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t131 = load i64, ptr %l82, !tbaa !24
  %t133 = icmp ne i64 %t131, %t130
  store i1 %t133, ptr %l75, !tbaa !21
  br label %bb49
bb49:
  %t135 = load i1, ptr %l75, !tbaa !21
  br i1 %t135, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load ptr, ptr %l8, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Call", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t144 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %s0, ptr %t137, ptr %t141)
  store i64 %t144, ptr %l89
  br label %bb53
bb53:
  %t145 = load i64, ptr %l89, !tbaa !24
  store i64 %t145, ptr %l9, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l90, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l8, !tbaa !29
  %t151 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %s0, ptr %t147, ptr %t148)
  store i32 %t151, ptr %l93
  br label %bb54
bb54:
  %t152 = load ptr, ptr %l90, !tbaa !29
  %t153 = load i32, ptr %l93, !tbaa !23
  %t154 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t152, i32 %t153)
  store i64 %t154, ptr %l94
  br label %bb55
bb55:
  %t155 = load i64, ptr %l94, !tbaa !24
  store i64 %t155, ptr %l10, !tbaa !24
  %t156 = load i64, ptr %l9, !tbaa !24
  %t158 = icmp slt i64 %t156, 0
  br i1 %t158, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb58
bb57:
  %t160 = load i64, ptr %l10, !tbaa !24
  %t162 = icmp slt i64 %t160, 0
  store i1 %t162, ptr %l97, !tbaa !21
  br label %bb58
bb58:
  %t164 = load i1, ptr %l97, !tbaa !21
  br i1 %t164, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb62
bb60:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i64, ptr %l9, !tbaa !24
  %t169 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %t165, i64 %t166)
  store i1 %t169, ptr %l103
  br label %bb61
bb61:
  %t170 = load i1, ptr %l103, !tbaa !21
  %t171 = xor i1 %t170, true
  store i1 %t171, ptr %l100, !tbaa !21
  br label %bb62
bb62:
  %t173 = load i1, ptr %l100, !tbaa !21
  br i1 %t173, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i64, ptr %l9, !tbaa !24
  %t179 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t175, i64 %t176)
  store ptr %t179, ptr %l108
  br label %bb66
bb66:
  %t180 = load ptr, ptr %l108, !tbaa !29
  %t182 = getelementptr %"compiler/scope:summary", ptr %t180, i32 0, i32 0
  store ptr %t182, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb67
bb67:
  %t184 = load i64, ptr %l12, !tbaa !24
  store i64 %t184, ptr %l111, !tbaa !24
  %t185 = load ptr, ptr %l11, !tbaa !29
  %t187 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t185)
  store i64 %t187, ptr %l113
  br label %bb68
bb68:
  %t188 = load i64, ptr %l111, !tbaa !24
  %t189 = load i64, ptr %l113, !tbaa !24
  %t190 = icmp slt i64 %t188, %t189
  %t192 = xor i1 %t190, true
  br i1 %t192, label %bb69, label %bb70
bb69:
  br label %bb119
bb70:
  br label %bb71
bb71:
  %t194 = load ptr, ptr %l11, !tbaa !29
  %t195 = load i64, ptr %l12, !tbaa !24
  %t198 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t194, i64 %t195)
  store %"compiler/scope:rel" %t198, ptr %l118
  br label %bb72
bb72:
  %t199 = load %"compiler/scope:rel", ptr %l118
  store %"compiler/scope:rel" %t199, ptr %l13
  %t200 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 4
  %t201 = load i64, ptr %t200, !tbaa !24
  %t203 = icmp eq i64 %t201, 0
  br i1 %t203, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l121, !tbaa !21
  br label %bb78
bb74:
  %t205 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 1
  %t206 = load { i64, [2 x i64] }, ptr %t205
  %t208 = extractvalue { i64, [2 x i64] } %t206, 0
  %t209 = icmp eq i64 %t208, 2
  br i1 %t209, label %bb75, label %bb76
bb75:
  %t211 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 1
  %t212 = getelementptr { i64, [2 x i64] }, ptr %t211, i32 0, i32 1
  %t213 = getelementptr { i64 }, ptr %t212, i32 0, i32 0
  %t214 = load i64, ptr %t213
  %t215 = load i64, ptr %l10, !tbaa !24
  %t218 = icmp eq i64 %t214, %t215
  store i1 %t218, ptr %l124, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb77
bb77:
  %t220 = load i1, ptr %l124, !tbaa !21
  %t221 = xor i1 %t220, true
  store i1 %t221, ptr %l121, !tbaa !21
  br label %bb78
bb78:
  %t223 = load i1, ptr %l121, !tbaa !21
  br i1 %t223, label %bb79, label %bb80
bb79:
  br label %bb118
bb80:
  br label %bb81
bb81:
  %t224 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 1
  %t225 = getelementptr { i64, [2 x i64] }, ptr %t224, i32 0, i32 1
  %t226 = getelementptr { i64 }, ptr %t225, i32 0, i32 0
  %t227 = load i64, ptr %t226
  store i64 %t227, ptr %l14, !tbaa !24
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l8, !tbaa !29
  %t231 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 0
  %t232 = load { i64, [2 x i64] }, ptr %t231
  %t236 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %s0, ptr %t229, ptr %t230, { i64, [2 x i64] } %t232)
  store i64 %t236, ptr %l133
  br label %bb82
bb82:
  %t237 = load i64, ptr %l133, !tbaa !24
  store i64 %t237, ptr %l15, !tbaa !24
  %t238 = load i64, ptr %l15, !tbaa !24
  %t240 = icmp slt i64 %t238, 0
  br i1 %t240, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb86
bb84:
  %t242 = load i64, ptr %l6, !tbaa !24
  %t243 = load i64, ptr %l15, !tbaa !24
  %t246 = add i64 %t242, %t243
  store i64 %t246, ptr %l139, !tbaa !24
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/scope:Scoper", ptr %t247, i32 0, i32 48
  %t251 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t249)
  store i64 %t251, ptr %l142
  br label %bb85
bb85:
  %t252 = load i64, ptr %l139, !tbaa !24
  %t253 = load i64, ptr %l142, !tbaa !24
  %t254 = icmp sge i64 %t252, %t253
  store i1 %t254, ptr %l136, !tbaa !21
  br label %bb86
bb86:
  %t256 = load i1, ptr %l136, !tbaa !21
  br i1 %t256, label %bb87, label %bb88
bb87:
  br label %bb118
bb88:
  br label %bb89
bb89:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/scope:Scoper", ptr %t257, i32 0, i32 48
  %t260 = load i64, ptr %l6, !tbaa !24
  %t261 = load i64, ptr %l15, !tbaa !24
  %t264 = add i64 %t260, %t261
  %t267 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t259, i64 %t264)
  store { i64, [2 x i64] } %t267, ptr %l149
  br label %bb90
bb90:
  %t268 = load { i64, [2 x i64] }, ptr %l149
  store { i64, [2 x i64] } %t268, ptr %l16
  %t269 = load { i64, [2 x i64] }, ptr %l16
  %t271 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t269)
  store i1 %t271, ptr %l151
  br label %bb91
bb91:
  %t272 = load i1, ptr %l151, !tbaa !21
  %t273 = xor i1 %t272, true
  br i1 %t273, label %bb92, label %bb93
bb92:
  store i1 true, ptr %l153, !tbaa !21
  br label %bb95
bb93:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load { i64, [2 x i64] }, ptr %l16
  %t277 = load { i64, [2 x i64] }, ptr %l2
  %t281 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t275, { i64, [2 x i64] } %t276, { i64, [2 x i64] } %t277)
  store i64 %t281, ptr %l157
  br label %bb94
bb94:
  %t282 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t283 = load i64, ptr %l157, !tbaa !24
  %t285 = icmp ne i64 %t283, %t282
  store i1 %t285, ptr %l153, !tbaa !21
  br label %bb95
bb95:
  %t287 = load i1, ptr %l153, !tbaa !21
  br i1 %t287, label %bb96, label %bb97
bb96:
  store i1 true, ptr %l160, !tbaa !21
  br label %bb99
bb97:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load ptr, ptr %l8, !tbaa !29
  %t291 = getelementptr %"compiler/typed:Call", ptr %t289, i32 0, i32 1
  %t292 = load { i64, ptr }, ptr %t291, !tbaa !27
  store { i64, ptr } %t292, ptr %l163, !tbaa !27
  %t293 = load i64, ptr %l15, !tbaa !24
  %t295 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr ptr, ptr %t296, i64 %t293
  %t298 = load ptr, ptr %t297, !tbaa !39
  %t302 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %s0, ptr %t288, ptr %t298)
  store i1 %t302, ptr %l167
  br label %bb98
bb98:
  %t303 = load i1, ptr %l167, !tbaa !21
  store i1 %t303, ptr %l160, !tbaa !21
  br label %bb99
bb99:
  %t304 = load i1, ptr %l160, !tbaa !21
  br i1 %t304, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l168, !tbaa !21
  br label %bb103
bb101:
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load ptr, ptr %l8, !tbaa !29
  %t308 = getelementptr %"compiler/typed:Call", ptr %t306, i32 0, i32 1
  %t309 = load { i64, ptr }, ptr %t308, !tbaa !27
  store { i64, ptr } %t309, ptr %l171, !tbaa !27
  %t310 = load i64, ptr %l15, !tbaa !24
  %t312 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr ptr, ptr %t313, i64 %t310
  %t315 = load ptr, ptr %t314, !tbaa !39
  %t319 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %s0, ptr %t305, ptr %t315, i64 0)
  store i64 %t319, ptr %l175
  br label %bb102
bb102:
  %t320 = load i64, ptr %l175, !tbaa !24
  %t321 = icmp slt i64 %t320, 0
  store i1 %t321, ptr %l168, !tbaa !21
  br label %bb103
bb103:
  %t323 = load i1, ptr %l168, !tbaa !21
  br i1 %t323, label %bb104, label %bb105
bb104:
  br label %bb118
bb105:
  br label %bb106
bb106:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/scope:Scoper", ptr %t324, i32 0, i32 155
  %t327 = load i1, ptr %t326, !tbaa !21
  br i1 %t327, label %bb107, label %bb108
bb107:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load ptr, ptr %l8, !tbaa !29
  %t332 = getelementptr %"compiler/typed:Call", ptr %t330, i32 0, i32 1
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  store { i64, ptr } %t333, ptr %l181, !tbaa !27
  %t334 = load i64, ptr %l15, !tbaa !24
  %t336 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr ptr, ptr %t337, i64 %t334
  %t339 = load ptr, ptr %t338, !tbaa !39
  %t340 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %s0, ptr %t329, ptr %t339, { i64, [2 x i64] } %t340)
  br label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb110
bb110:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t346 = getelementptr %"compiler/scope:Scoper", ptr %t344, i32 0, i32 29
  %t347 = load i1, ptr %t346, !tbaa !21
  br i1 %t347, label %bb111, label %bb112
bb111:
  store %olang.scope zeroinitializer, ptr %s13
  %t349 = load ptr, ptr %l0, !tbaa !29
  store ptr %t349, ptr %l187, !tbaa !29
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load ptr, ptr %l8, !tbaa !29
  %t353 = getelementptr %"compiler/typed:Call", ptr %t351, i32 0, i32 1
  %t354 = load { i64, ptr }, ptr %t353, !tbaa !27
  store { i64, ptr } %t354, ptr %l190, !tbaa !27
  %t355 = load i64, ptr %l15, !tbaa !24
  %t357 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = getelementptr ptr, ptr %t358, i64 %t355
  %t360 = load ptr, ptr %t359, !tbaa !39
  %t363 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %s0, ptr %t350, ptr %t360)
  store %"compiler/source:Span" %t363, ptr %l193
  br label %bb113
bb112:
  br label %bb117
bb113:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load ptr, ptr %l8, !tbaa !29
  %t367 = getelementptr %"compiler/typed:Call", ptr %t365, i32 0, i32 1
  %t368 = load { i64, ptr }, ptr %t367, !tbaa !27
  store { i64, ptr } %t368, ptr %l196, !tbaa !27
  %t369 = load i64, ptr %l15, !tbaa !24
  %t371 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = getelementptr ptr, ptr %t372, i64 %t369
  %t374 = load ptr, ptr %t373, !tbaa !39
  %t377 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHint(ptr %v0, ptr %s0, ptr %s13, ptr %t364, ptr %t374)
  store { i64, ptr } %t377, ptr %l199
  br label %bb114
bb114:
  %t378 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t379 = extractvalue { i64, ptr } %t378, 0
  %t380 = extractvalue { i64, ptr } %t378, 1
  %t381 = mul i64 %t379, 1
  %t382 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t381)
  call void @llvm.memcpy.p0.p0.i64(ptr %t382, ptr %t380, i64 %t381, i1 false)
  %t383 = insertvalue { i64, ptr } undef, i64 %t379, 0
  %t384 = insertvalue { i64, ptr } %t383, ptr %t382, 1
  %t386 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceOutlivesArg(ptr %s13, ptr %v0, { i64, ptr } %t384)
  store %"compiler/diagmsg:Msg" %t386, ptr %l201
  br label %bb115
bb115:
  %t387 = load ptr, ptr %l187, !tbaa !29
  %t388 = load %"compiler/source:Span", ptr %l193
  %t389 = load %"compiler/diagmsg:Msg", ptr %l201
  %t390 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t387, %"compiler/source:Span" %t388, %"compiler/diagmsg:Msg" %t389)
  store i64 %t390, ptr %l202
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s13)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb118:
  %t392 = load i64, ptr %l12, !tbaa !24
  %t394 = add i64 %t392, 1
  store i64 %t394, ptr %l12, !tbaa !24
  br label %bb67
bb119:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 27
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
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 27
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
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 43
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
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 43
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
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 43
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca i1
  %l10 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca { i64, [1 x i64] }
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l15
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l10, !tbaa !29
  %t27 = load i32, ptr %l15, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t29, ptr %l2, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = icmp ne i64 %t32, 1
  br i1 %t34, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t38, ptr %l22, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i32, ptr %t40, i64 0
  %t42 = load i32, ptr %t41, !tbaa !33
  %t45 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t37, i32 %t42)
  store i1 %t45, ptr %l24
  br label %bb10
bb10:
  %t46 = load i1, ptr %l24, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %t47, i32 %t48, i64 0)
  store { i64, [1 x i64] } %t51, ptr %l27
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t52 = load { i64, [1 x i64] }, ptr %l27
  %t54 = extractvalue { i64, [1 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 1
  store i1 %t55, ptr %rv
  br label %ret
bb14:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t58, ptr %l31, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 0
  %t62 = load i32, ptr %t61, !tbaa !33
  %t65 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %t57, i32 %t62)
  store i1 %t65, ptr %l33
  br label %bb15
bb15:
  %t66 = load i1, ptr %l33, !tbaa !21
  store i1 %t66, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eitemKind(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t3 = trunc i64 1 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load i64, ptr @G_2ecompiler_2fscope_2eFitPayload, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  br label %bb15
bb4:
  %t8 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t10 = trunc i64 2 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t13 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t15 = trunc i64 3 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t18 = load i64, ptr @G_2ecompiler_2fscope_2eFitElem, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t20 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  store i64 %t20, ptr %l2, !tbaa !24
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_6eab74aa3e0b63d9_475cda0f5b688a85)
  unreachable
bb15:
  %t22 = load i64, ptr %l2, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepsStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
  %l16 = alloca i64
  %l19 = alloca i64
  %l39 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i1
  %l50 = alloca i64
  %l53 = alloca i1
  %l54 = alloca ptr
  %l63 = alloca %"compiler/typed:Local"
  %l65 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  %l74 = alloca i64
  %l78 = alloca i1
  %l87 = alloca %"compiler/typed:Local"
  %l91 = alloca i1
  %l94 = alloca i64
  %l97 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 -1, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 16, ptr %l4, !tbaa !24
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
  store i64 0, ptr %l16, !tbaa !24
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
  store i64 %t25, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l19, !tbaa !24
  store i64 %t27, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l16, !tbaa !24
  store i64 %t28, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb59
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
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l39, !tbaa !29
  %t50 = load ptr, ptr %l39, !tbaa !29
  %t51 = call ptr @__olang_scope_of(ptr %t50, ptr null)
  %t52 = ptrtoint ptr %t51 to i64
  %t54 = inttoptr i64 %t52 to ptr
  %t56 = load ptr, ptr %l39, !tbaa !29
  %t57 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %t54, ptr %s2, ptr %t47, ptr %t56)
  store ptr %t57, ptr %l41
  br label %bb11
bb11:
  %t58 = load ptr, ptr %l41, !tbaa !29
  %t59 = call ptr @compiler_2fscope_2eunPassed(ptr %s2, ptr %s2, ptr %t58)
  store ptr %t59, ptr %l42
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l42, !tbaa !29
  store ptr %t60, ptr %l9, !tbaa !29
  %t61 = load ptr, ptr %l9, !tbaa !29
  store ptr %t61, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t62 = load ptr, ptr %l43, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l43, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 18}
  %t68 = icmp eq i64 %t66, 3
  store i1 %t68, ptr %l44, !tbaa !21
  br label %bb14
bb14:
  %t69 = load i1, ptr %l44, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t70 = load ptr, ptr %l9, !tbaa !29
  %t72 = getelementptr { i64, [5 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l10, !tbaa !29
  br label %bb17
bb16:
  br label %bb27
bb17:
  %t76 = load ptr, ptr %l10, !tbaa !29
  %t78 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s2, ptr %t76)
  store i64 %t78, ptr %l50
  br label %bb18
bb18:
  %t79 = load i64, ptr %l50, !tbaa !24
  store i64 %t79, ptr %l11, !tbaa !24
  %t80 = load i64, ptr %l11, !tbaa !24
  %t82 = icmp sge i64 %t80, 0
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l54, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 27
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = icmp eq ptr %t88, null
  br i1 %t90, label %bb21, label %bb22
bb20:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb26
bb21:
  call void @__olang_check_failed(ptr @olang_loc_3e5632f45eefd04_2819d69fa7782c38)
  unreachable
bb22:
  br label %bb23
bb23:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/scope:Scoper", ptr %t92, i32 0, i32 27
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Body", ptr %t95, i32 0, i32 7
  %t99 = load i64, ptr %l11, !tbaa !24
  %t102 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t98, i64 %t99)
  store %"compiler/typed:Local" %t102, ptr %l63
  br label %bb24
bb24:
  %t103 = getelementptr %"compiler/typed:Local", ptr %l63, i32 0, i32 2
  %t104 = load i32, ptr %t103, !tbaa !23
  %t105 = load ptr, ptr %l54, !tbaa !29
  %t107 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t105, i32 %t104)
  store i1 %t107, ptr %l65
  br label %bb25
bb25:
  %t108 = load i1, ptr %l65, !tbaa !21
  %t109 = xor i1 %t108, true
  store i1 %t109, ptr %l53, !tbaa !21
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t111 = load i1, ptr %l53, !tbaa !21
  store i1 %t111, ptr %rv
  br label %ret
bb27:
  %t112 = load ptr, ptr %l9, !tbaa !29
  store ptr %t112, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t113 = load ptr, ptr %l67, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb28, label %bb29
bb28:
  %t116 = load ptr, ptr %l67, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 18}
  %t119 = icmp eq i64 %t117, 2
  store i1 %t119, ptr %l68, !tbaa !21
  br label %bb29
bb29:
  %t120 = load i1, ptr %l68, !tbaa !21
  br i1 %t120, label %bb30, label %bb31
bb30:
  %t121 = load ptr, ptr %l9, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t123, i32 0, i32 2
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l12, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t127 = load ptr, ptr %l12, !tbaa !29
  %t129 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s2, ptr %t127)
  store i64 %t129, ptr %l74
  br label %bb33
bb33:
  %t130 = load i64, ptr %l74, !tbaa !24
  store i64 %t130, ptr %l2, !tbaa !24
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb38:
  call void @__olang_check_failed(ptr @olang_loc_754a4fe24afb426a_2a858937208e2b6e)
  unreachable
bb39:
  %t132 = load i64, ptr %l2, !tbaa !24
  %t134 = icmp slt i64 %t132, 0
  br i1 %t134, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb46
bb41:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/scope:Scoper", ptr %t136, i32 0, i32 27
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = icmp eq ptr %t139, null
  br i1 %t141, label %bb42, label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_2499e51069c13992_a0c2ded5248e3e66)
  unreachable
bb43:
  br label %bb44
bb44:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/scope:Scoper", ptr %t143, i32 0, i32 27
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Body", ptr %t146, i32 0, i32 7
  %t150 = load i64, ptr %l2, !tbaa !24
  %t153 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t149, i64 %t150)
  store %"compiler/typed:Local" %t153, ptr %l87
  br label %bb45
bb45:
  %t154 = getelementptr %"compiler/typed:Local", ptr %l87, i32 0, i32 4
  %t155 = load i32, ptr %t154, !range !{i32 0, i32 7}
  %t157 = trunc i64 2 to i32
  %t158 = icmp eq i32 %t155, %t157
  %t160 = xor i1 %t158, true
  store i1 %t160, ptr %l78, !tbaa !21
  br label %bb46
bb46:
  %t162 = load i1, ptr %l78, !tbaa !21
  br i1 %t162, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb50
bb48:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i64, ptr %l2, !tbaa !24
  %t167 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldCall(ptr %v0, ptr %t163, i64 %t164)
  store i64 %t167, ptr %l94
  br label %bb49
bb49:
  %t168 = load i64, ptr %l94, !tbaa !24
  %t169 = icmp sge i64 %t168, 0
  store i1 %t169, ptr %l91, !tbaa !21
  br label %bb50
bb50:
  %t171 = load i1, ptr %l91, !tbaa !21
  br i1 %t171, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/scope:Scoper", ptr %t173, i32 0, i32 46
  %t176 = load i64, ptr %l2, !tbaa !24
  %t179 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %s0, ptr %t175, i64 %t176)
  %t180 = extractvalue { i32, ptr } %t179, 1
  %t181 = extractvalue { i32, ptr } %t179, 0
  store i32 %t181, ptr %l102
  %t182 = icmp ne i32 %t181, 0
  br i1 %t182, label %bb55, label %ok.183, !prof !99
ok.183:
  store ptr %t180, ptr %l101
  br label %bb54
bb54:
  %t184 = load ptr, ptr %l101, !tbaa !29
  store ptr %t184, ptr %l97, !tbaa !29
  br label %bb57
bb55:
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb57:
  %t186 = load ptr, ptr %l97, !tbaa !29
  store ptr %t186, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s2)
  br label %bb58
bb58:
  %t187 = load i64, ptr %l7, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l7, !tbaa !24
  br label %bb7
bb59:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 27
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
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 27
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
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 27
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
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 27
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
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 27
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
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 27
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elet(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  %t3 = load i32, ptr %l2, !tbaa !23
  %t4 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eletBody(ptr %v0, ptr %v1, ptr %t1, %"compiler/source:Span" %t2, i32 %t3, ptr %t4)
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  %t11 = load i32, ptr %l2, !tbaa !23
  %t13 = sext i32 %t11 to i64
  %t14 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteRecs(ptr %v0, ptr %v1, ptr %t9, %"compiler/source:Span" %t10, i64 %t13, ptr %t14)
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l2, !tbaa !23
  %t22 = sext i32 %t20 to i64
  %t23 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteInst(ptr %v0, ptr %v1, ptr %t19, i64 %t22, ptr %t23)
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftParam(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l4 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca { i64, [2 x i64] }
  %l9 = alloca i1
  %l14 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l20 = alloca i1
  %l25 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l26 = alloca { i64, [2 x i64] }
  %l30 = alloca { i64, [2 x i64] }
  %l31 = alloca i32
  %l36 = alloca { i64, [2 x i64] }
  %l37 = alloca { i64, [2 x i64] }
  %l39 = alloca { i64, [2 x i64] }
  %l41 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i64
  %l58 = alloca ptr
  %l67 = alloca %"compiler/typed:Local"
  %l69 = alloca { i64, ptr }
  %l70 = alloca { i64, [2 x i64] }
  %l71 = alloca ptr
  %l80 = alloca %"compiler/typed:Local"
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %rv = alloca i1
  %t48 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOwn(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = xor i1 %a3, true
  br i1 %t12, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb8
bb6:
  %t14 = load { i64, [2 x i64] }, ptr %l2
  %t16 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t14)
  store i1 %t16, ptr %l16
  br label %bb7
bb7:
  %t17 = load i1, ptr %l16, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb12
bb10:
  %t21 = load { i64, [2 x i64] }, ptr %l2
  %t23 = call i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %t21)
  store i1 %t23, ptr %l20
  br label %bb11
bb11:
  %t24 = load i1, ptr %l20, !tbaa !21
  store i1 %t24, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t25 = load i1, ptr %l18, !tbaa !21
  br i1 %t25, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 28
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t30, i64 %t31)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34, ptr %l25
  br label %bb16
bb16:
  %t35 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l25
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t35, ptr %l4
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 160
  %t39 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t42 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t38, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t39)
  %t43 = extractvalue { i32, { i64, [2 x i64] } } %t42, 1
  %t44 = extractvalue { i32, { i64, [2 x i64] } } %t42, 0
  store i32 %t44, ptr %l31
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb18, label %ok.46, !prof !99
ok.46:
  store { i64, [2 x i64] } %t43, ptr %l30
  br label %bb17
bb17:
  %t47 = load { i64, [2 x i64] }, ptr %l30
  store { i64, [2 x i64] } %t47, ptr %l26
  br label %bb20
bb18:
  br label %bb19
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 0
  store i64 0, ptr %t49
  %t50 = load { i64, [2 x i64] }, ptr %t48
  store { i64, [2 x i64] } %t50, ptr %l26
  br label %bb20
bb20:
  %t52 = load { i64, [2 x i64] }, ptr %l26
  store { i64, [2 x i64] } %t52, ptr %l5
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load { i64, [2 x i64] }, ptr %l5
  %t55 = load { i64, [2 x i64] }, ptr %l2
  %t59 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t53, { i64, [2 x i64] } %t54, { i64, [2 x i64] } %t55)
  store { i64, [2 x i64] } %t59, ptr %l36
  br label %bb21
bb21:
  %t60 = load { i64, [2 x i64] }, ptr %l36
  store { i64, [2 x i64] } %t60, ptr %l6
  %t61 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t61, ptr %l37
  %t62 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t62, ptr %l39
  %t65 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l37, ptr %l39)
  store i1 %t65, ptr %l41
  br label %bb22
bb22:
  %t66 = load i1, ptr %l41, !tbaa !21
  br i1 %t66, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 160
  %t71 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t72 = load { i64, [2 x i64] }, ptr %l6
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H240bd86caf003ea6de374cb77d0dbfc6(ptr %v0, ptr %t70, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t71, { i64, [2 x i64] } %t72)
  br label %bb26
bb26:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/scope:Scoper", ptr %t76, i32 0, i32 156
  store i1 true, ptr %t78, !tbaa !21
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %t79, i32 0, i32 193
  store i1 true, ptr %t81, !tbaa !21
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 235
  %t85 = load i1, ptr %t84, !tbaa !21
  br i1 %t85, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s4
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 277
  store ptr %t89, ptr %l52, !tbaa !29
  %t90 = ptrtoint ptr %v0 to i64
  store i64 %t90, ptr %l53, !tbaa !24
  %t91 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t91, label %bb29, label %bb30
bb28:
  br label %bb43
bb29:
  %t93 = call ptr @__olang_region_make(ptr %v0)
  %t94 = ptrtoint ptr %t93 to i64
  store i64 %t94, ptr %l53, !tbaa !24
  br label %bb30
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/scope:Scoper", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 0
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/load:Loader", ptr %t101, i32 0, i32 3
  %t104 = load ptr, ptr %t103, !tbaa !29
  store ptr %t104, ptr %l58, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/scope:Scoper", ptr %t105, i32 0, i32 27
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = icmp eq ptr %t108, null
  br i1 %t110, label %bb31, label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_d64177be35f4f565_932d783fbb65d231)
  unreachable
bb32:
  br label %bb33
bb33:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t112, i32 0, i32 27
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Body", ptr %t115, i32 0, i32 7
  %t119 = load i64, ptr %l1, !tbaa !24
  %t122 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t118, i64 %t119)
  store %"compiler/typed:Local" %t122, ptr %l67
  br label %bb34
bb34:
  %t123 = getelementptr %"compiler/typed:Local", ptr %l67, i32 0, i32 0
  %t124 = load i32, ptr %t123, !tbaa !23
  %t125 = load ptr, ptr %l58, !tbaa !29
  %t127 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t125, i32 %t124)
  store { i64, ptr } %t127, ptr %l69
  br label %bb35
bb35:
  %t128 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t128, ptr %l70
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l71, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/scope:Scoper", ptr %t130, i32 0, i32 27
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = icmp eq ptr %t133, null
  br i1 %t135, label %bb36, label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_d64177be35f4f565_932d783fbb65d231)
  unreachable
bb37:
  br label %bb38
bb38:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/scope:Scoper", ptr %t137, i32 0, i32 27
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Body", ptr %t140, i32 0, i32 7
  %t144 = load i64, ptr %l1, !tbaa !24
  %t147 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t143, i64 %t144)
  store %"compiler/typed:Local" %t147, ptr %l80
  br label %bb39
bb39:
  %t148 = getelementptr %"compiler/typed:Local", ptr %l80, i32 0, i32 1
  %t149 = getelementptr %"compiler/source:Span", ptr %t148, i32 0, i32 0
  %t150 = load i32, ptr %t149, !tbaa !23
  %t151 = load ptr, ptr %l71, !tbaa !29
  %t153 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %s4, ptr %t151, i32 %t150)
  store { i64, ptr } %t153, ptr %l82
  br label %bb40
bb40:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t154 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t154, i64 %t155)
  %t156 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  call void @__olang_sb_put(ptr %s5, ptr %t157, i64 %t158)
  %t159 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t159, i64 %t160)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s5, ptr %l70, i64 0)
  br label %bb41
bb41:
  %t162 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t162, i64 %t163)
  %t164 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  call void @__olang_sb_put(ptr %s5, ptr %t165, i64 %t166)
  %t167 = load ptr, ptr %s5
  %t168 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t169 = load i64, ptr %t168
  %t170 = load i64, ptr %l53
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = call ptr @__olang_scope_alloc(ptr %t171, i64 %t169)
  call void @olang_textcopy(ptr %t172, ptr %t167, i64 %t169)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l84, !tbaa !27
  %t175 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t176 = load ptr, ptr %t175
  %t177 = icmp ne ptr %t176, null
  br i1 %t177, label %sbgrew.178, label %sbdone.179
sbgrew.178:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.179
sbdone.179:
  %t180 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t181 = load i64, ptr %l53
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = extractvalue { i64, ptr } %t180, 0
  %t184 = extractvalue { i64, ptr } %t180, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %t182, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t189 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t189, { i64, ptr } %t188)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s4)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l55 = alloca { i64, [2 x i64] }
  %l57 = alloca { i64, [2 x i64] }
  %l59 = alloca i1
  %l68 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRoot(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store i64 %t15, ptr %l16
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t16 = load i64, ptr %l16, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sge i64 %t17, 0
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = ptrtoint ptr %s0 to i64
  store i64 %t21, ptr %l20, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2estd_2fprelude_2farray_3aArrayIter_3cI64_3e_2e0
  br i1 %t22, label %bb8, label %bb9
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceRoots(ptr %v0, ptr %v1, ptr %s0, ptr %t24, ptr %t25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l29
  br label %bb12
bb8:
  %t29 = call ptr @__olang_region_make(ptr %s0)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = mul i64 1, 8
  %t33 = load i64, ptr %l20
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call ptr @__olang_scope_alloc_zeroed(ptr %t34, i64 %t32)
  %t36 = insertvalue { i64, ptr } undef, i64 1, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l23, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i64, ptr %t40, i64 0
  store i64 %t31, ptr %t41, !tbaa !34
  %t42 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t43 = call %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %s0, ptr %s0, { i64, ptr } %t42)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t43, ptr %l24
  br label %bb10
bb10:
  %t44 = load %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %l24
  %t45 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t44, ptr %t45
  %t47 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %s0, ptr %s0, ptr %t45)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l26
  br label %bb11
bb11:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l19
  br label %bb13
bb12:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l19
  br label %bb13
bb13:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l4
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l4)
  store i64 %t52, ptr %l31
  br label %bb14
bb14:
  %t53 = load i64, ptr %l31, !tbaa !24
  %t54 = icmp eq i64 %t53, 0
  br i1 %t54, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  store i1 true, ptr %l5, !tbaa !21
  store ptr %l4, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  %t58 = load i64, ptr %l7, !tbaa !24
  store i64 %t58, ptr %l35, !tbaa !24
  %t59 = load ptr, ptr %l6, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t59)
  store i64 %t61, ptr %l37
  br label %bb19
bb19:
  %t62 = load i64, ptr %l35, !tbaa !24
  %t63 = load i64, ptr %l37, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb20, label %bb21
bb20:
  br label %bb42
bb21:
  br label %bb22
bb22:
  %t68 = load ptr, ptr %l6, !tbaa !29
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l42
  br label %bb23
bb23:
  %t73 = load i64, ptr %l42, !tbaa !24
  store i64 %t73, ptr %l8, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %t74, i64 %t75)
  store i1 %t78, ptr %l45
  br label %bb24
bb24:
  %t79 = load i1, ptr %l45, !tbaa !21
  %t80 = xor i1 %t79, true
  br i1 %t80, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb28
bb26:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load { i64, [2 x i64] }, ptr %l2
  %t86 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %t82, { i64, [2 x i64] } %t83)
  store i1 %t86, ptr %l50
  br label %bb27
bb27:
  %t87 = load i1, ptr %l50, !tbaa !21
  store i1 %t87, ptr %l47, !tbaa !21
  br label %bb28
bb28:
  %t88 = load i1, ptr %l47, !tbaa !21
  br i1 %t88, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %t90, i32 0, i32 36
  %t93 = load i64, ptr %l8, !tbaa !24
  %t96 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t92, i64 %t93)
  store { i64, [2 x i64] } %t96, ptr %l55
  br label %bb32
bb32:
  %t97 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t97, ptr %l57
  %t100 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l55, ptr %l57)
  store i1 %t100, ptr %l59
  br label %bb33
bb33:
  %t101 = load i1, ptr %l59, !tbaa !21
  br i1 %t101, label %bb34, label %bb35
bb34:
  br label %bb41
bb35:
  br label %bb36
bb36:
  store i1 false, ptr %l5, !tbaa !21
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/scope:Scoper", ptr %t102, i32 0, i32 155
  %t105 = load i1, ptr %t104, !tbaa !21
  br i1 %t105, label %bb37, label %bb38
bb37:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i64, ptr %l8, !tbaa !24
  %t109 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftStorage(ptr %v0, ptr %t107, i64 %t108, { i64, [2 x i64] } %t109)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t113 = load i64, ptr %l7, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l7, !tbaa !24
  br label %bb18
bb42:
  %t117 = load i1, ptr %l5, !tbaa !21
  br i1 %t117, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb45
bb44:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %t119, i32 0, i32 155
  %t122 = load i1, ptr %t121, !tbaa !21
  store i1 %t122, ptr %l68, !tbaa !21
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t124 = load i1, ptr %l68, !tbaa !21
  store i1 %t124, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emarksText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/scope:markRead"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/scope:markRead"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l24 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eLen_3ccompiler_2fscope_3amarkRead_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb3
bb3:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call %"compiler/scope:markRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eAt_3ccompiler_2fscope_3amarkRead_3e(ptr %v1, ptr %t15, i64 %t16)
  store %"compiler/scope:markRead" %t19, ptr %l15
  br label %bb7
bb7:
  %t20 = load %"compiler/scope:markRead", ptr %l15
  store %"compiler/scope:markRead" %t20, ptr %l5
  store ptr %l2, ptr %l16, !tbaa !29
  %t21 = ptrtoint ptr %s0 to i64
  store i64 %t21, ptr %l17, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = call ptr @__olang_region_make(ptr %s0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l17, !tbaa !24
  br label %bb9
bb9:
  %t27 = getelementptr %"compiler/scope:markRead", ptr %l5, i32 0, i32 0
  %t28 = load i64, ptr %t27, !tbaa !24
  %t31 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eNameOf(ptr %v0, ptr %s2, ptr %a0, i64 %t28)
  store { i64, ptr } %t31, ptr %l21
  br label %bb10
bb10:
  %t32 = getelementptr %"compiler/scope:markRead", ptr %l5, i32 0, i32 1
  %t33 = load i64, ptr %t32, !tbaa !24
  store i64 %t33, ptr %l22, !tbaa !24
  %t34 = getelementptr %"compiler/scope:markRead", ptr %l5, i32 0, i32 2
  %t35 = load { i64, [1 x i64] }, ptr %t34
  %t37 = call { i64, ptr } @compiler_2fscope_2emarkWord(ptr %s2, { i64, [1 x i64] } %t35)
  store { i64, ptr } %t37, ptr %l24
  br label %bb11
bb11:
  %t38 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = load i64, ptr %l22, !tbaa !24
  %t45 = call i64 @__olang_fmt_i64(ptr null, i64 %t44)
  %t46 = add i64 %t43, %t45
  %t47 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t50 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = add i64 %t49, %t52
  %t54 = load i64, ptr %l17
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t53)
  call void @olang_textcopy(ptr %t56, ptr %t39, i64 %t40)
  %t57 = getelementptr i8, ptr %t56, i64 %t40
  call void @olang_textcopy(ptr %t57, ptr %t41, i64 %t42)
  %t58 = getelementptr i8, ptr %t57, i64 %t42
  %t59 = call i64 @__olang_fmt_i64(ptr %t58, i64 %t44)
  %t60 = getelementptr i8, ptr %t58, i64 %t45
  call void @olang_textcopy(ptr %t60, ptr %t47, i64 %t48)
  %t61 = getelementptr i8, ptr %t60, i64 %t48
  call void @olang_textcopy(ptr %t61, ptr %t51, i64 %t52)
  %t62 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t56, 1
  %t65 = load i64, ptr %l17
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = extractvalue { i64, ptr } %t63, 0
  %t68 = extractvalue { i64, ptr } %t63, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load ptr, ptr %l16, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t73, { i64, ptr } %t72)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l4, !tbaa !24
  br label %bb2
bb14:
  %t79 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_31, 0
  %t80 = insertvalue { ptr, ptr } %t79, ptr null, 1
  %t83 = extractvalue { ptr, ptr } %t80, 0
  %t84 = extractvalue { ptr, ptr } %t80, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l2, ptr %t83, ptr %t84)
  br label %bb15
bb15:
  %t86 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %v2, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store { i64, ptr } %t86, ptr %l32
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t87 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t87, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca i8
  %l14 = alloca i64
  %l15 = alloca i8
  %l16 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca %"compiler/source:Span"
  %l46 = alloca { i64, ptr }
  %l51 = alloca i1
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l76 = alloca %"compiler/source:Span"
  %l79 = alloca i1
  %l82 = alloca i1
  %l87 = alloca i1
  %l90 = alloca i1
  %l97 = alloca i1
  %l105 = alloca %"compiler/source:Span"
  %l108 = alloca %"compiler/source:Span"
  %l113 = alloca i1
  %l116 = alloca i1
  %l121 = alloca %"compiler/source:Span"
  %l125 = alloca i1
  %l130 = alloca i1
  %l131 = alloca { i64, ptr }
  %l134 = alloca i1
  %l144 = alloca %"compiler/source:Span"
  %l147 = alloca i1
  %l150 = alloca i1
  %l156 = alloca i1
  %l166 = alloca i1
  %l169 = alloca i1
  %l181 = alloca i1
  %l184 = alloca i1
  %l187 = alloca i1
  %l190 = alloca %"compiler/source:Span"
  %l193 = alloca i1
  %l196 = alloca i1
  %l199 = alloca i1
  %l204 = alloca i1
  %l205 = alloca { i64, ptr }
  %l210 = alloca i1
  %l214 = alloca i1
  %l215 = alloca { i64, ptr }
  %l220 = alloca i1
  %l221 = alloca { i64, ptr }
  %l226 = alloca i1
  %l227 = alloca { i64, ptr }
  %l232 = alloca i1
  %l233 = alloca { i64, ptr }
  %l238 = alloca { i64, ptr }
  %l246 = alloca i1
  %l249 = alloca i1
  %l252 = alloca i1
  %l255 = alloca i1
  %l258 = alloca i1
  %l261 = alloca i1
  %l264 = alloca i1
  %l267 = alloca i1
  %l276 = alloca %"compiler/source:Span"
  %l282 = alloca %"compiler/source:Span"
  %l287 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 11
  store ptr %t3, ptr %l18, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 27
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_e498d93abb20b61c_9a7977ea577c2990)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 27
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l18, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l27
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l26
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t26, ptr %l16, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
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
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t46, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t48 = load i64, ptr %l3, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  %t50 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t50, ptr %l6
  %t52 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t52, ptr %l39
  br label %bb11
bb11:
  %t53 = load %"compiler/source:Span", ptr %l39
  store %"compiler/source:Span" %t53, ptr %l7
  store i1 false, ptr %l8, !tbaa !21
  store i64 0, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t54 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t54, ptr %l40
  br label %bb12
bb12:
  %t55 = load %"compiler/source:Span", ptr %l40
  store %"compiler/source:Span" %t55, ptr %l11
  %t56 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t56, ptr %l41
  br label %bb13
bb13:
  %t57 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t57, ptr %l12
  br label %bb14
bb14:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb15, label %bb16
bb15:
  br label %bb194
bb16:
  br label %bb17
bb17:
  %t66 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t66, ptr %l46, !tbaa !27
  %t67 = load i64, ptr %l5, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 %t67
  %t72 = load i8, ptr %t71, !tbaa !32
  store i8 %t72, ptr %l13, !tbaa !22
  %t74 = load i8, ptr %l13, !tbaa !22
  %t76 = icmp eq i8 %t74, 34
  br i1 %t76, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb20
bb19:
  %t78 = load i8, ptr %l13, !tbaa !22
  %t80 = icmp eq i8 %t78, 39
  store i1 %t80, ptr %l51, !tbaa !21
  br label %bb20
bb20:
  %t82 = load i1, ptr %l51, !tbaa !21
  br i1 %t82, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t83 = load i64, ptr %l5, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l5, !tbaa !24
  br label %bb23
bb22:
  br label %bb36
bb23:
  %t87 = load i64, ptr %l5, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = icmp slt i64 %t87, %t88
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t93, ptr %l60, !tbaa !27
  %t94 = load i64, ptr %l5, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i8, ptr %t97, i64 %t94
  %t99 = load i8, ptr %t98, !tbaa !32
  %t100 = load i8, ptr %l13, !tbaa !22
  %t103 = icmp ne i8 %t99, %t100
  store i1 %t103, ptr %l59, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb26
bb26:
  %t105 = load i1, ptr %l59, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb27, label %bb28
bb27:
  br label %bb34
bb28:
  br label %bb29
bb29:
  %t108 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t108, ptr %l66, !tbaa !27
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i8, ptr %t112, i64 %t109
  %t114 = load i8, ptr %t113, !tbaa !32
  %t116 = icmp eq i8 %t114, 92
  br i1 %t116, label %bb30, label %bb31
bb30:
  %t118 = load i64, ptr %l5, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l5, !tbaa !24
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t122 = load i64, ptr %l5, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l5, !tbaa !24
  br label %bb33
bb33:
  br label %bb23
bb34:
  %t126 = load i64, ptr %l5, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l5, !tbaa !24
  %t130 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 0, i32 0)
  store %"compiler/source:Span" %t130, ptr %l76
  br label %bb35
bb35:
  %t131 = load %"compiler/source:Span", ptr %l76
  store %"compiler/source:Span" %t131, ptr %l7
  call void @__olang_scope_close(ptr %s3)
  br label %bb193
bb36:
  %t132 = load i8, ptr %l13, !tbaa !22
  %t134 = icmp eq i8 %t132, 40
  br i1 %t134, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb39
bb38:
  %t136 = load i8, ptr %l13, !tbaa !22
  %t138 = icmp eq i8 %t136, 91
  store i1 %t138, ptr %l79, !tbaa !21
  br label %bb39
bb39:
  %t140 = load i1, ptr %l79, !tbaa !21
  br i1 %t140, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb42
bb41:
  %t141 = load i8, ptr %l13, !tbaa !22
  %t143 = icmp eq i8 %t141, 123
  store i1 %t143, ptr %l82, !tbaa !21
  br label %bb42
bb42:
  %t145 = load i1, ptr %l82, !tbaa !21
  br i1 %t145, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s6
  %t146 = load i8, ptr %l13, !tbaa !22
  %t148 = icmp eq i8 %t146, 40
  br i1 %t148, label %bb45, label %bb46
bb44:
  br label %bb62
bb45:
  %t150 = load i64, ptr %l9, !tbaa !24
  %t152 = icmp eq i64 %t150, 0
  store i1 %t152, ptr %l87, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb47
bb47:
  %t154 = load i1, ptr %l87, !tbaa !21
  br i1 %t154, label %bb48, label %bb49
bb48:
  %t155 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 1
  %t156 = load i32, ptr %t155, !tbaa !23
  %t157 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t158 = load i32, ptr %t157, !tbaa !23
  %t161 = icmp sgt i32 %t156, %t158
  store i1 %t161, ptr %l90, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb50
bb50:
  %t163 = load i1, ptr %l90, !tbaa !21
  br i1 %t163, label %bb51, label %bb52
bb51:
  %t164 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t164, ptr %l6
  store i1 true, ptr %l8, !tbaa !21
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t166 = load i8, ptr %l13, !tbaa !22
  %t168 = icmp eq i8 %t166, 91
  br i1 %t168, label %bb54, label %bb55
bb54:
  %t170 = load i64, ptr %l9, !tbaa !24
  %t172 = icmp eq i64 %t170, 0
  store i1 %t172, ptr %l97, !tbaa !21
  br label %bb56
bb55:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb56
bb56:
  %t174 = load i1, ptr %l97, !tbaa !21
  br i1 %t174, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s8
  %t175 = load i64, ptr %l5, !tbaa !24
  %t177 = trunc i64 %t175 to i32
  %t178 = load i64, ptr %l5, !tbaa !24
  %t180 = add i64 %t178, 1
  %t182 = trunc i64 %t180 to i32
  %t185 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s8, i32 %t177, i32 %t182)
  store %"compiler/source:Span" %t185, ptr %l105
  br label %bb59
bb58:
  br label %bb60
bb59:
  %t186 = load %"compiler/source:Span", ptr %l105
  store %"compiler/source:Span" %t186, ptr %l12
  call void @__olang_scope_close(ptr %s8)
  br label %bb60
bb60:
  %t187 = load i64, ptr %l9, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l9, !tbaa !24
  %t191 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 0, i32 0)
  store %"compiler/source:Span" %t191, ptr %l108
  br label %bb61
bb61:
  %t192 = load %"compiler/source:Span", ptr %l108
  store %"compiler/source:Span" %t192, ptr %l7
  %t193 = load i64, ptr %l5, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb193
bb62:
  %t197 = load i8, ptr %l13, !tbaa !22
  %t199 = icmp eq i8 %t197, 41
  br i1 %t199, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb65
bb64:
  %t201 = load i8, ptr %l13, !tbaa !22
  %t203 = icmp eq i8 %t201, 93
  store i1 %t203, ptr %l113, !tbaa !21
  br label %bb65
bb65:
  %t205 = load i1, ptr %l113, !tbaa !21
  br i1 %t205, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb68
bb67:
  %t206 = load i8, ptr %l13, !tbaa !22
  %t208 = icmp eq i8 %t206, 125
  store i1 %t208, ptr %l116, !tbaa !21
  br label %bb68
bb68:
  %t210 = load i1, ptr %l116, !tbaa !21
  br i1 %t210, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s9
  %t211 = load i64, ptr %l9, !tbaa !24
  %t213 = sub i64 %t211, 1
  store i64 %t213, ptr %l9, !tbaa !24
  %t215 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s9, i32 0, i32 0)
  store %"compiler/source:Span" %t215, ptr %l121
  br label %bb71
bb70:
  br label %bb72
bb71:
  %t216 = load %"compiler/source:Span", ptr %l121
  store %"compiler/source:Span" %t216, ptr %l7
  %t217 = load i64, ptr %l5, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  br label %bb193
bb72:
  %t221 = load i8, ptr %l13, !tbaa !22
  %t223 = call i1 @compiler_2fscope_2eisNameChar(i8 %t221)
  store i1 %t223, ptr %l125
  br label %bb73
bb73:
  %t224 = load i1, ptr %l125, !tbaa !21
  br i1 %t224, label %bb74, label %bb75
bb74:
  %t225 = load i64, ptr %l5, !tbaa !24
  store i64 %t225, ptr %l14, !tbaa !24
  br label %bb76
bb75:
  br label %bb99
bb76:
  %t227 = load i64, ptr %l5, !tbaa !24
  %t228 = load i64, ptr %l4, !tbaa !24
  %t231 = icmp slt i64 %t227, %t228
  br i1 %t231, label %bb77, label %bb78
bb77:
  %t233 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t233, ptr %l131, !tbaa !27
  %t234 = load i64, ptr %l5, !tbaa !24
  %t236 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !27
  %t238 = getelementptr i8, ptr %t237, i64 %t234
  %t239 = load i8, ptr %t238, !tbaa !32
  %t241 = call i1 @compiler_2fscope_2eisNameChar(i8 %t239)
  store i1 %t241, ptr %l134
  br label %bb79
bb78:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb80
bb79:
  %t242 = load i1, ptr %l134, !tbaa !21
  store i1 %t242, ptr %l130, !tbaa !21
  br label %bb80
bb80:
  %t243 = load i1, ptr %l130, !tbaa !21
  %t244 = xor i1 %t243, true
  br i1 %t244, label %bb81, label %bb82
bb81:
  br label %bb85
bb82:
  br label %bb83
bb83:
  %t246 = load i64, ptr %l5, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l5, !tbaa !24
  br label %bb84
bb84:
  br label %bb76
bb85:
  %t250 = load i64, ptr %l10, !tbaa !24
  %t252 = icmp eq i64 %t250, 0
  br i1 %t252, label %bb86, label %bb87
bb86:
  store %olang.scope zeroinitializer, ptr %s12
  %t254 = load i64, ptr %l14, !tbaa !24
  %t256 = trunc i64 %t254 to i32
  %t257 = load i64, ptr %l5, !tbaa !24
  %t259 = trunc i64 %t257 to i32
  %t262 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s12, i32 %t256, i32 %t259)
  store %"compiler/source:Span" %t262, ptr %l144
  br label %bb88
bb87:
  br label %bb89
bb88:
  %t263 = load %"compiler/source:Span", ptr %l144
  store %"compiler/source:Span" %t263, ptr %l7
  call void @__olang_scope_close(ptr %s12)
  br label %bb89
bb89:
  %t264 = load i1, ptr %l8, !tbaa !21
  %t266 = xor i1 %t264, true
  br i1 %t266, label %bb90, label %bb91
bb90:
  %t268 = load i64, ptr %l9, !tbaa !24
  %t270 = icmp eq i64 %t268, 0
  store i1 %t270, ptr %l147, !tbaa !21
  br label %bb92
bb91:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb92
bb92:
  %t272 = load i1, ptr %l147, !tbaa !21
  br i1 %t272, label %bb93, label %bb94
bb93:
  %t273 = load i64, ptr %l10, !tbaa !24
  %t275 = icmp eq i64 %t273, 0
  store i1 %t275, ptr %l150, !tbaa !21
  br label %bb95
bb94:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb95
bb95:
  %t277 = load i1, ptr %l150, !tbaa !21
  br i1 %t277, label %bb96, label %bb97
bb96:
  %t278 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t278, ptr %l6
  br label %bb98
bb97:
  br label %bb98
bb98:
  br label %bb193
bb99:
  %t280 = load i8, ptr %l13, !tbaa !22
  %t282 = icmp eq i8 %t280, 60
  br i1 %t282, label %bb100, label %bb101
bb100:
  %t284 = load i64, ptr %l9, !tbaa !24
  %t286 = icmp eq i64 %t284, 0
  store i1 %t286, ptr %l156, !tbaa !21
  br label %bb102
bb101:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb102
bb102:
  %t288 = load i1, ptr %l156, !tbaa !21
  br i1 %t288, label %bb103, label %bb104
bb103:
  %t289 = load i64, ptr %l10, !tbaa !24
  %t291 = add i64 %t289, 1
  store i64 %t291, ptr %l10, !tbaa !24
  %t293 = load i64, ptr %l10, !tbaa !24
  %t295 = icmp eq i64 %t293, 1
  br i1 %t295, label %bb105, label %bb106
bb104:
  %t297 = load i8, ptr %l13, !tbaa !22
  %t299 = icmp eq i8 %t297, 62
  br i1 %t299, label %bb108, label %bb109
bb105:
  %t301 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t301, ptr %l11
  br label %bb107
bb106:
  br label %bb107
bb107:
  br label %bb133
bb108:
  %t303 = load i64, ptr %l10, !tbaa !24
  %t305 = icmp sgt i64 %t303, 0
  store i1 %t305, ptr %l166, !tbaa !21
  br label %bb110
bb109:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb110
bb110:
  %t307 = load i1, ptr %l166, !tbaa !21
  br i1 %t307, label %bb111, label %bb112
bb111:
  %t308 = load i64, ptr %l9, !tbaa !24
  %t310 = icmp eq i64 %t308, 0
  store i1 %t310, ptr %l169, !tbaa !21
  br label %bb113
bb112:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb113
bb113:
  %t312 = load i1, ptr %l169, !tbaa !21
  br i1 %t312, label %bb114, label %bb115
bb114:
  %t313 = load i64, ptr %l10, !tbaa !24
  %t315 = sub i64 %t313, 1
  store i64 %t315, ptr %l10, !tbaa !24
  %t317 = load i64, ptr %l10, !tbaa !24
  %t319 = icmp eq i64 %t317, 0
  br i1 %t319, label %bb116, label %bb117
bb115:
  %t321 = load i8, ptr %l13, !tbaa !22
  %t323 = icmp ne i8 %t321, 46
  br i1 %t323, label %bb119, label %bb120
bb116:
  %t325 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t325, ptr %l7
  br label %bb118
bb117:
  br label %bb118
bb118:
  %t327 = load i64, ptr %l5, !tbaa !24
  %t329 = add i64 %t327, 1
  store i64 %t329, ptr %l5, !tbaa !24
  br label %bb193
bb119:
  %t331 = load i8, ptr %l13, !tbaa !22
  %t333 = icmp ne i8 %t331, 32
  store i1 %t333, ptr %l181, !tbaa !21
  br label %bb121
bb120:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb121
bb121:
  %t335 = load i1, ptr %l181, !tbaa !21
  br i1 %t335, label %bb122, label %bb123
bb122:
  %t336 = load i8, ptr %l13, !tbaa !22
  %t338 = icmp ne i8 %t336, 44
  store i1 %t338, ptr %l184, !tbaa !21
  br label %bb124
bb123:
  store i1 false, ptr %l184, !tbaa !21
  br label %bb124
bb124:
  %t340 = load i1, ptr %l184, !tbaa !21
  br i1 %t340, label %bb125, label %bb126
bb125:
  %t341 = load i64, ptr %l10, !tbaa !24
  %t343 = icmp eq i64 %t341, 0
  store i1 %t343, ptr %l187, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb127
bb127:
  %t345 = load i1, ptr %l187, !tbaa !21
  br i1 %t345, label %bb128, label %bb129
bb128:
  store %olang.scope zeroinitializer, ptr %s20
  %t346 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s20, i32 0, i32 0)
  store %"compiler/source:Span" %t346, ptr %l190
  br label %bb130
bb129:
  br label %bb131
bb130:
  %t347 = load %"compiler/source:Span", ptr %l190
  store %"compiler/source:Span" %t347, ptr %l7
  call void @__olang_scope_close(ptr %s20)
  br label %bb131
bb131:
  br label %bb132
bb132:
  br label %bb133
bb133:
  %t348 = load i8, ptr %l13, !tbaa !22
  %t350 = icmp eq i8 %t348, 61
  br i1 %t350, label %bb134, label %bb135
bb134:
  %t352 = load i64, ptr %l9, !tbaa !24
  %t354 = icmp eq i64 %t352, 0
  store i1 %t354, ptr %l193, !tbaa !21
  br label %bb136
bb135:
  store i1 false, ptr %l193, !tbaa !21
  br label %bb136
bb136:
  %t356 = load i1, ptr %l193, !tbaa !21
  br i1 %t356, label %bb137, label %bb138
bb137:
  %t357 = load i1, ptr %l8, !tbaa !21
  %t359 = xor i1 %t357, true
  store i1 %t359, ptr %l196, !tbaa !21
  br label %bb139
bb138:
  store i1 false, ptr %l196, !tbaa !21
  br label %bb139
bb139:
  %t361 = load i1, ptr %l196, !tbaa !21
  br i1 %t361, label %bb140, label %bb141
bb140:
  %t362 = load i64, ptr %l5, !tbaa !24
  %t364 = add i64 %t362, 1
  %t365 = load i64, ptr %l4, !tbaa !24
  %t368 = icmp slt i64 %t364, %t365
  store i1 %t368, ptr %l199, !tbaa !21
  br label %bb142
bb141:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb142
bb142:
  %t370 = load i1, ptr %l199, !tbaa !21
  br i1 %t370, label %bb143, label %bb144
bb143:
  %t371 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t371, ptr %l205, !tbaa !27
  %t372 = load i64, ptr %l5, !tbaa !24
  %t374 = add i64 %t372, 1
  %t376 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = getelementptr i8, ptr %t377, i64 %t374
  %t379 = load i8, ptr %t378, !tbaa !32
  %t381 = icmp ne i8 %t379, 61
  store i1 %t381, ptr %l204, !tbaa !21
  br label %bb145
bb144:
  store i1 false, ptr %l204, !tbaa !21
  br label %bb145
bb145:
  %t383 = load i1, ptr %l204, !tbaa !21
  br i1 %t383, label %bb146, label %bb147
bb146:
  %t384 = load i64, ptr %l5, !tbaa !24
  %t385 = load i64, ptr %l3, !tbaa !24
  %t388 = icmp sgt i64 %t384, %t385
  store i1 %t388, ptr %l210, !tbaa !21
  br label %bb148
bb147:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb148
bb148:
  %t390 = load i1, ptr %l210, !tbaa !21
  br i1 %t390, label %bb149, label %bb150
bb149:
  %t391 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t391, ptr %l215, !tbaa !27
  %t392 = load i64, ptr %l5, !tbaa !24
  %t394 = sub i64 %t392, 1
  %t396 = getelementptr { i64, ptr }, ptr %l215, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr i8, ptr %t397, i64 %t394
  %t399 = load i8, ptr %t398, !tbaa !32
  %t401 = icmp ne i8 %t399, 61
  store i1 %t401, ptr %l214, !tbaa !21
  br label %bb151
bb150:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb151
bb151:
  %t403 = load i1, ptr %l214, !tbaa !21
  br i1 %t403, label %bb152, label %bb153
bb152:
  %t404 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t404, ptr %l221, !tbaa !27
  %t405 = load i64, ptr %l5, !tbaa !24
  %t407 = sub i64 %t405, 1
  %t409 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !27
  %t411 = getelementptr i8, ptr %t410, i64 %t407
  %t412 = load i8, ptr %t411, !tbaa !32
  %t414 = icmp ne i8 %t412, 33
  store i1 %t414, ptr %l220, !tbaa !21
  br label %bb154
bb153:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb154
bb154:
  %t416 = load i1, ptr %l220, !tbaa !21
  br i1 %t416, label %bb155, label %bb156
bb155:
  %t417 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t417, ptr %l227, !tbaa !27
  %t418 = load i64, ptr %l5, !tbaa !24
  %t420 = sub i64 %t418, 1
  %t422 = getelementptr { i64, ptr }, ptr %l227, i32 0, i32 1
  %t423 = load ptr, ptr %t422, !tbaa !27
  %t424 = getelementptr i8, ptr %t423, i64 %t420
  %t425 = load i8, ptr %t424, !tbaa !32
  %t427 = icmp ne i8 %t425, 60
  store i1 %t427, ptr %l226, !tbaa !21
  br label %bb157
bb156:
  store i1 false, ptr %l226, !tbaa !21
  br label %bb157
bb157:
  %t429 = load i1, ptr %l226, !tbaa !21
  br i1 %t429, label %bb158, label %bb159
bb158:
  %t430 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t430, ptr %l233, !tbaa !27
  %t431 = load i64, ptr %l5, !tbaa !24
  %t433 = sub i64 %t431, 1
  %t435 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t436 = load ptr, ptr %t435, !tbaa !27
  %t437 = getelementptr i8, ptr %t436, i64 %t433
  %t438 = load i8, ptr %t437, !tbaa !32
  %t440 = icmp ne i8 %t438, 62
  store i1 %t440, ptr %l232, !tbaa !21
  br label %bb160
bb159:
  store i1 false, ptr %l232, !tbaa !21
  br label %bb160
bb160:
  %t442 = load i1, ptr %l232, !tbaa !21
  br i1 %t442, label %bb161, label %bb162
bb161:
  store %olang.scope zeroinitializer, ptr %s21
  %t443 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t443, ptr %l238, !tbaa !27
  %t444 = load i64, ptr %l5, !tbaa !24
  %t446 = sub i64 %t444, 1
  %t448 = getelementptr { i64, ptr }, ptr %l238, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !27
  %t450 = getelementptr i8, ptr %t449, i64 %t446
  %t451 = load i8, ptr %t450, !tbaa !32
  store i8 %t451, ptr %l15, !tbaa !22
  %t453 = load i64, ptr %l5, !tbaa !24
  %t455 = sub i64 %t453, 1
  %t456 = load i64, ptr %l3, !tbaa !24
  %t459 = icmp sgt i64 %t455, %t456
  br i1 %t459, label %bb163, label %bb164
bb162:
  br label %bb192
bb163:
  %t461 = load i8, ptr %l15, !tbaa !22
  %t463 = icmp eq i8 %t461, 43
  br i1 %t463, label %bb165, label %bb166
bb164:
  store i1 false, ptr %l246, !tbaa !21
  br label %bb186
bb165:
  store i1 true, ptr %l249, !tbaa !21
  br label %bb167
bb166:
  %t465 = load i8, ptr %l15, !tbaa !22
  %t467 = icmp eq i8 %t465, 45
  store i1 %t467, ptr %l249, !tbaa !21
  br label %bb167
bb167:
  %t469 = load i1, ptr %l249, !tbaa !21
  br i1 %t469, label %bb168, label %bb169
bb168:
  store i1 true, ptr %l252, !tbaa !21
  br label %bb170
bb169:
  %t470 = load i8, ptr %l15, !tbaa !22
  %t472 = icmp eq i8 %t470, 42
  store i1 %t472, ptr %l252, !tbaa !21
  br label %bb170
bb170:
  %t474 = load i1, ptr %l252, !tbaa !21
  br i1 %t474, label %bb171, label %bb172
bb171:
  store i1 true, ptr %l255, !tbaa !21
  br label %bb173
bb172:
  %t475 = load i8, ptr %l15, !tbaa !22
  %t477 = icmp eq i8 %t475, 47
  store i1 %t477, ptr %l255, !tbaa !21
  br label %bb173
bb173:
  %t479 = load i1, ptr %l255, !tbaa !21
  br i1 %t479, label %bb174, label %bb175
bb174:
  store i1 true, ptr %l258, !tbaa !21
  br label %bb176
bb175:
  %t480 = load i8, ptr %l15, !tbaa !22
  %t482 = icmp eq i8 %t480, 37
  store i1 %t482, ptr %l258, !tbaa !21
  br label %bb176
bb176:
  %t484 = load i1, ptr %l258, !tbaa !21
  br i1 %t484, label %bb177, label %bb178
bb177:
  store i1 true, ptr %l261, !tbaa !21
  br label %bb179
bb178:
  %t485 = load i8, ptr %l15, !tbaa !22
  %t487 = icmp eq i8 %t485, 38
  store i1 %t487, ptr %l261, !tbaa !21
  br label %bb179
bb179:
  %t489 = load i1, ptr %l261, !tbaa !21
  br i1 %t489, label %bb180, label %bb181
bb180:
  store i1 true, ptr %l264, !tbaa !21
  br label %bb182
bb181:
  %t490 = load i8, ptr %l15, !tbaa !22
  %t492 = icmp eq i8 %t490, 124
  store i1 %t492, ptr %l264, !tbaa !21
  br label %bb182
bb182:
  %t494 = load i1, ptr %l264, !tbaa !21
  br i1 %t494, label %bb183, label %bb184
bb183:
  store i1 true, ptr %l267, !tbaa !21
  br label %bb185
bb184:
  %t495 = load i8, ptr %l15, !tbaa !22
  %t497 = icmp eq i8 %t495, 94
  store i1 %t497, ptr %l267, !tbaa !21
  br label %bb185
bb185:
  %t499 = load i1, ptr %l267, !tbaa !21
  store i1 %t499, ptr %l246, !tbaa !21
  br label %bb186
bb186:
  %t500 = load i1, ptr %l246, !tbaa !21
  br i1 %t500, label %bb187, label %bb188
bb187:
  store %olang.scope zeroinitializer, ptr %s22
  %t501 = load i64, ptr %l5, !tbaa !24
  %t503 = sub i64 %t501, 1
  %t505 = trunc i64 %t503 to i32
  %t506 = load i64, ptr %l5, !tbaa !24
  %t508 = add i64 %t506, 1
  %t510 = trunc i64 %t508 to i32
  %t513 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s22, i32 %t505, i32 %t510)
  store %"compiler/source:Span" %t513, ptr %l276
  br label %bb189
bb188:
  br label %bb190
bb189:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  %t514 = load %"compiler/source:Span", ptr %l276
  store %"compiler/source:Span" %t514, ptr %rv
  br label %ret
bb190:
  %t515 = load i64, ptr %l5, !tbaa !24
  %t517 = trunc i64 %t515 to i32
  %t518 = load i64, ptr %l5, !tbaa !24
  %t520 = add i64 %t518, 1
  %t522 = trunc i64 %t520 to i32
  %t525 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s21, i32 %t517, i32 %t522)
  store %"compiler/source:Span" %t525, ptr %l282
  br label %bb191
bb191:
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  %t526 = load %"compiler/source:Span", ptr %l282
  store %"compiler/source:Span" %t526, ptr %rv
  br label %ret
bb192:
  %t527 = load i64, ptr %l5, !tbaa !24
  %t529 = add i64 %t527, 1
  store i64 %t529, ptr %l5, !tbaa !24
  br label %bb193
bb193:
  br label %bb14
bb194:
  %t531 = load i1, ptr %l8, !tbaa !21
  %t533 = xor i1 %t531, true
  br i1 %t533, label %bb195, label %bb196
bb195:
  %t535 = getelementptr %"compiler/source:Span", ptr %l12, i32 0, i32 1
  %t536 = load i32, ptr %t535, !tbaa !23
  %t537 = getelementptr %"compiler/source:Span", ptr %l12, i32 0, i32 0
  %t538 = load i32, ptr %t537, !tbaa !23
  %t541 = icmp sgt i32 %t536, %t538
  store i1 %t541, ptr %l287, !tbaa !21
  br label %bb197
bb196:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb197
bb197:
  %t543 = load i1, ptr %l287, !tbaa !21
  br i1 %t543, label %bb198, label %bb199
bb198:
  %t544 = load %"compiler/source:Span", ptr %l12
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t544, ptr %rv
  br label %ret
bb199:
  br label %bb200
bb200:
  %t546 = load %"compiler/source:Span", ptr %l6
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t546, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteCondValue(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i1
  %l27 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i1
  %l50 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l69 = alloca i1
  %l79 = alloca ptr
  %l91 = alloca i64
  %l93 = alloca i64
  %l98 = alloca ptr
  %l102 = alloca { i64, [2 x i64] }
  %l106 = alloca i1
  %l111 = alloca i64
  %l114 = alloca ptr
  %l115 = alloca i64
  %l122 = alloca i64
  %l125 = alloca %"compiler/source:Span"
  %l126 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l16
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t3, ptr %a2)
  store ptr %t8, ptr %l20
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l20, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l4, !tbaa !29
  store ptr %t10, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t11 = load ptr, ptr %l21, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l21, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 11
  store i1 %t17, ptr %l22, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l22, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l5, !tbaa !29
  br label %bb7
bb6:
  br label %bb13
bb7:
  store ptr %l3, ptr %l27, !tbaa !29
  %t25 = load ptr, ptr %l5, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Cond", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_4ccbcb45df0141a6_19706046becd886a)
  unreachable
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Cond", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load ptr, ptr %l27, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t36, ptr %t35)
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Cond", ptr %t38, i32 0, i32 2
  %t41 = load ptr, ptr %t40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %l3, ptr %t41)
  br label %bb12
bb12:
  br label %bb53
bb13:
  %t44 = load ptr, ptr %l4, !tbaa !29
  store ptr %t44, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t45 = load ptr, ptr %l36, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l36, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 13
  store i1 %t51, ptr %l37, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l37, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb48
bb18:
  %t59 = load ptr, ptr %l6, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Match", ptr %t59, i32 0, i32 1
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  store i64 %t66, ptr %l9, !tbaa !24
  br label %bb19
bb19:
  %t68 = load i64, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb20, label %bb21
bb20:
  br label %bb31
bb21:
  br label %bb22
bb22:
  %t76 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t76, ptr %l50, !tbaa !27
  %t77 = load i64, ptr %l8, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr ptr, ptr %t80, i64 %t77
  %t82 = load ptr, ptr %t81, !tbaa !39
  store ptr %t82, ptr %l10, !tbaa !29
  %t84 = load ptr, ptr %l10, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Arm", ptr %t84, i32 0, i32 4
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = icmp eq ptr %t87, null
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb23, label %bb24
bb23:
  store ptr %l3, ptr %l57, !tbaa !29
  %t93 = load ptr, ptr %l10, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Arm", ptr %t93, i32 0, i32 4
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = icmp eq ptr %t96, null
  br i1 %t98, label %bb25, label %bb26
bb24:
  br label %bb29
bb25:
  call void @__olang_check_failed(ptr @olang_loc_8b7e95a2be190b8d_8374a99933a5c471)
  unreachable
bb26:
  br label %bb27
bb27:
  %t100 = load ptr, ptr %l10, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Arm", ptr %t100, i32 0, i32 4
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t104 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t104, ptr %t103)
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t106 = load i64, ptr %l8, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l8, !tbaa !24
  br label %bb19
bb31:
  %t110 = load ptr, ptr %l6, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Match", ptr %t110, i32 0, i32 2
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = icmp eq ptr %t113, null
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb32, label %bb33
bb32:
  %t119 = load ptr, ptr %l6, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Match", ptr %t119, i32 0, i32 2
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  br i1 %t124, label %bb34, label %bb35
bb33:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb37
bb34:
  call void @__olang_check_failed(ptr @olang_loc_a42570ec148c1b78_dde1581633b6387c)
  unreachable
bb35:
  br label %bb36
bb36:
  %t126 = load ptr, ptr %l6, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Match", ptr %t126, i32 0, i32 2
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Arm", ptr %t129, i32 0, i32 4
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = icmp eq ptr %t133, null
  %t137 = xor i1 %t135, true
  store i1 %t137, ptr %l69, !tbaa !21
  br label %bb37
bb37:
  %t139 = load i1, ptr %l69, !tbaa !21
  br i1 %t139, label %bb38, label %bb39
bb38:
  store ptr %l3, ptr %l79, !tbaa !29
  %t140 = load ptr, ptr %l6, !tbaa !29
  %t142 = getelementptr %"compiler/typed:Match", ptr %t140, i32 0, i32 2
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = icmp eq ptr %t143, null
  br i1 %t145, label %bb40, label %bb41
bb39:
  br label %bb47
bb40:
  call void @__olang_check_failed(ptr @olang_loc_a42570ec148c1b78_dde1581633b6387c)
  unreachable
bb41:
  br label %bb42
bb42:
  %t147 = load ptr, ptr %l6, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Match", ptr %t147, i32 0, i32 2
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t153 = getelementptr %"compiler/typed:Arm", ptr %t150, i32 0, i32 4
  %t154 = load ptr, ptr %t153, !tbaa !29
  store ptr %t154, ptr %l11, !tbaa !29
  %t156 = load ptr, ptr %l11, !tbaa !29
  %t158 = icmp eq ptr %t156, null
  br i1 %t158, label %bb43, label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_a42570ec148c1b78_dde1581633b6387c)
  unreachable
bb44:
  br label %bb45
bb45:
  %t160 = load ptr, ptr %l11, !tbaa !29
  %t161 = load ptr, ptr %l79, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t161, ptr %t160)
  br label %bb46
bb46:
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
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb52:
  call void @__olang_check_failed(ptr @olang_loc_9aaad908d3e71fae_f22ca2548cb14c12)
  unreachable
bb53:
  store ptr %l3, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb54
bb54:
  %t164 = load i64, ptr %l13, !tbaa !24
  store i64 %t164, ptr %l91, !tbaa !24
  %t165 = load ptr, ptr %l12, !tbaa !29
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %t165)
  store i64 %t167, ptr %l93
  br label %bb55
bb55:
  %t168 = load i64, ptr %l91, !tbaa !24
  %t169 = load i64, ptr %l93, !tbaa !24
  %t170 = icmp slt i64 %t168, %t169
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb56, label %bb57
bb56:
  br label %bb75
bb57:
  br label %bb58
bb58:
  %t174 = load ptr, ptr %l12, !tbaa !29
  %t175 = load i64, ptr %l13, !tbaa !24
  %t178 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t174, i64 %t175)
  store ptr %t178, ptr %l98
  br label %bb59
bb59:
  %t179 = load ptr, ptr %l98, !tbaa !29
  store ptr %t179, ptr %l14, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load ptr, ptr %l14, !tbaa !29
  %t185 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %s0, ptr %t180, ptr %t181)
  store { i64, [2 x i64] } %t185, ptr %l102
  br label %bb60
bb60:
  %t186 = load { i64, [2 x i64] }, ptr %l102
  store { i64, [2 x i64] } %t186, ptr %l15
  %t187 = load { i64, [2 x i64] }, ptr %l15
  %t189 = extractvalue { i64, [2 x i64] } %t187, 0
  %t190 = icmp eq i64 %t189, 0
  %t192 = xor i1 %t190, true
  br i1 %t192, label %bb61, label %bb62
bb61:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load { i64, [2 x i64] }, ptr %l15
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/scope:Scoper", ptr %t196, i32 0, i32 92
  %t199 = load { i64, [2 x i64] }, ptr %t198
  %t203 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t194, { i64, [2 x i64] } %t195, { i64, [2 x i64] } %t199)
  store i64 %t203, ptr %l111
  br label %bb63
bb62:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb64
bb63:
  %t204 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t205 = load i64, ptr %l111, !tbaa !24
  %t207 = icmp ne i64 %t205, %t204
  store i1 %t207, ptr %l106, !tbaa !21
  br label %bb64
bb64:
  %t209 = load i1, ptr %l106, !tbaa !21
  br i1 %t209, label %bb65, label %bb66
bb65:
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l114, !tbaa !29
  store i64 %a1, ptr %l115, !tbaa !24
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/scope:Scoper", ptr %t212, i32 0, i32 27
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = icmp eq ptr %t215, null
  br i1 %t217, label %bb67, label %bb68
bb66:
  br label %bb73
bb67:
  call void @__olang_check_failed(ptr @olang_loc_fefa308e31290faa_fd7939a3bcfd0266)
  unreachable
bb68:
  br label %bb69
bb69:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/scope:Scoper", ptr %t219, i32 0, i32 27
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Body", ptr %t222, i32 0, i32 3
  %t226 = load i64, ptr %t225, !tbaa !24
  store i64 %t226, ptr %l122, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load ptr, ptr %l14, !tbaa !29
  %t231 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %s0, ptr %t227, ptr %t228)
  store %"compiler/source:Span" %t231, ptr %l125
  br label %bb70
bb70:
  %t232 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteCondValue(ptr %v0)
  store %"compiler/diagmsg:Msg" %t232, ptr %l126
  br label %bb71
bb71:
  %t233 = load ptr, ptr %l114, !tbaa !29
  %t234 = load i64, ptr %l115, !tbaa !24
  %t235 = load i64, ptr %l122, !tbaa !24
  %t236 = load %"compiler/source:Span", ptr %l125
  %t237 = load %"compiler/diagmsg:Msg", ptr %l126
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t233, i64 %t234, i64 %t235, %"compiler/source:Span" %t236, %"compiler/diagmsg:Msg" %t237)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb73:
  br label %bb74
bb74:
  %t238 = load i64, ptr %l13, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l13, !tbaa !24
  br label %bb54
bb75:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enumberField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca i64
  %l23 = alloca i1
  %l26 = alloca i1
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
  store ptr %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l9, !tbaa !29
  store ptr %t7, ptr %l3, !tbaa !29
  %t8 = load ptr, ptr %l3, !tbaa !29
  store ptr %t8, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t9 = load ptr, ptr %l11, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l11, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 2
  store i1 %t15, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l12, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t19, i32 0, i32 1
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l4, !tbaa !23
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr { i64, [5 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t25, i32 0, i32 2
  %t27 = load ptr, ptr %t26
  store ptr %t27, ptr %l5, !tbaa !29
  br label %bb6
bb5:
  br label %bb12
bb6:
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t33 = call i64 @compiler_2fscope_2eownField(ptr %s0, ptr %t29, i64 %a2)
  store i64 %t33, ptr %l21
  br label %bb7
bb7:
  %t34 = load i64, ptr %l21, !tbaa !24
  %t35 = icmp sge i64 %t34, 0
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l4, !tbaa !23
  %t41 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNumberLike(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t41, ptr %l26
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t42 = load i1, ptr %l26, !tbaa !21
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t43 = load i1, ptr %l23, !tbaa !21
  store i1 %t43, ptr %l10, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4e916d94ce354cf_7e8c78090f47617b)
  unreachable
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load i1, ptr %l10, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l15 = alloca { i64, ptr }
  %l23 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t15, ptr %l15, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  %t32 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %a0, ptr %t21, i64 %a2, i1 %a3)
  store i1 %t32, ptr %l23
  br label %bb5
bb5:
  %t33 = load i1, ptr %l23, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l5, !tbaa !24
  br label %bb1
bb10:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonlyCalled(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l12 = alloca %"compiler/typed:Local"
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a3, ptr %l3
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
  call void @__olang_check_failed(ptr @olang_loc_b076c1f6c97c7ed4_fcdcfd5688cdce70)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 27
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 7
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t14, i64 %t15)
  store %"compiler/typed:Local" %t18, ptr %l12
  br label %bb4
bb4:
  %t19 = getelementptr %"compiler/typed:Local", ptr %l12, i32 0, i32 4
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 7}
  %t22 = trunc i64 6 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i64, ptr %l3, !tbaa !24
  %t34 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %t26, { i64, ptr } %a1, i64 %a2, i64 %t29, i1 false)
  store i1 %t34, ptr %l20
  br label %bb8
bb8:
  %t35 = load i1, ptr %l20, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca ptr
  %l27 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca ptr
  %l42 = alloca i1
  %l52 = alloca %"compiler/source:Span"
  %l53 = alloca ptr
  %l54 = alloca i1
  %l61 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l70 = alloca %"compiler/source:Span"
  %l71 = alloca %"compiler/source:Span"
  %l72 = alloca ptr
  %l73 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l94 = alloca %"compiler/source:Span"
  %l95 = alloca ptr
  %l96 = alloca i1
  %l101 = alloca %"compiler/source:Span"
  %l102 = alloca ptr
  %l103 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca i1
  %l118 = alloca %"compiler/source:Span"
  %l119 = alloca ptr
  %l126 = alloca i64
  %l128 = alloca %"compiler/source:Span"
  %l129 = alloca %"compiler/source:Span"
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l15
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l15, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t9 = load ptr, ptr %l16, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l16, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 5
  store i1 %t15, ptr %l17, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l17, !tbaa !21
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
  %t26 = getelementptr %"compiler/typed:Promote", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t30 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t23, ptr %t27)
  store %"compiler/source:Span" %t30, ptr %l25
  br label %bb7
bb7:
  %t31 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t31, ptr %rv
  br label %ret
bb8:
  %t32 = load ptr, ptr %l2, !tbaa !29
  store ptr %t32, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t33 = load ptr, ptr %l26, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l26, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 18}
  %t39 = icmp eq i64 %t37, 6
  store i1 %t39, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l27, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t43, i32 0, i32 0
  %t45 = load %"compiler/source:Span", ptr %t44
  store %"compiler/source:Span" %t45, ptr %l4
  br label %bb17
bb12:
  %t47 = load ptr, ptr %l2, !tbaa !29
  store ptr %t47, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t48 = load ptr, ptr %l32, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load ptr, ptr %l32, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 18}
  %t54 = icmp eq i64 %t52, 7
  store i1 %t54, ptr %l33, !tbaa !21
  br label %bb14
bb14:
  %t55 = load i1, ptr %l33, !tbaa !21
  br i1 %t55, label %bb15, label %bb16
bb15:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr { i64, [5 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 0
  %t60 = load %"compiler/source:Span", ptr %t59
  store %"compiler/source:Span" %t60, ptr %l4
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l4
  %t66 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t62, %"compiler/source:Span" %t63)
  store %"compiler/source:Span" %t66, ptr %l40
  br label %bb18
bb18:
  %t67 = load %"compiler/source:Span", ptr %l40
  store %"compiler/source:Span" %t67, ptr %rv
  br label %ret
bb19:
  %t68 = load ptr, ptr %l2, !tbaa !29
  store ptr %t68, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t69 = load ptr, ptr %l41, !tbaa !29
  %t70 = icmp ne ptr %t69, null
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load ptr, ptr %l41, !tbaa !29
  %t73 = load i64, ptr %t72, !range !{i64 0, i64 18}
  %t75 = icmp eq i64 %t73, 10
  store i1 %t75, ptr %l42, !tbaa !21
  br label %bb21
bb21:
  %t76 = load i1, ptr %l42, !tbaa !21
  br i1 %t76, label %bb22, label %bb23
bb22:
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr { i64, [5 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t79, i32 0, i32 0
  %t81 = load %"compiler/source:Span", ptr %t80
  store %"compiler/source:Span" %t81, ptr %l5
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t85 = getelementptr { i64, [5 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t85, i32 0, i32 2
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l6, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l5
  %t91 = load ptr, ptr %l6, !tbaa !29
  %t95 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceAt(ptr %v0, ptr %v1, ptr %t89, %"compiler/source:Span" %t90, ptr %t91)
  store %"compiler/source:Span" %t95, ptr %l52
  br label %bb25
bb25:
  %t96 = load %"compiler/source:Span", ptr %l52
  store %"compiler/source:Span" %t96, ptr %rv
  br label %ret
bb26:
  %t97 = load ptr, ptr %l2, !tbaa !29
  store ptr %t97, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t98 = load ptr, ptr %l53, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb27, label %bb28
bb27:
  %t101 = load ptr, ptr %l53, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 18}
  %t104 = icmp eq i64 %t102, 11
  store i1 %t104, ptr %l54, !tbaa !21
  br label %bb28
bb28:
  %t105 = load i1, ptr %l54, !tbaa !21
  br i1 %t105, label %bb29, label %bb30
bb29:
  %t106 = load ptr, ptr %l2, !tbaa !29
  %t108 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t108, i32 0, i32 0
  %t110 = load %"compiler/source:Span", ptr %t109
  store %"compiler/source:Span" %t110, ptr %l7
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t114 = getelementptr { i64, [5 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t114, i32 0, i32 2
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l8, !tbaa !29
  br label %bb31
bb30:
  br label %bb38
bb31:
  store %olang.scope zeroinitializer, ptr %s4
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l61, !tbaa !29
  %t119 = load ptr, ptr %l8, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Cond", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  br i1 %t124, label %bb32, label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_8680c8bf7a40147c_d650a7d3d4e83170)
  unreachable
bb33:
  br label %bb34
bb34:
  %t126 = load ptr, ptr %l8, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Cond", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t129)
  store %"compiler/source:Span" %t131, ptr %l67
  br label %bb35
bb35:
  %t132 = getelementptr %"compiler/source:Span", ptr %l67, i32 0, i32 1
  %t133 = load i32, ptr %t132, !tbaa !23
  %t134 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 1
  %t135 = load i32, ptr %t134, !tbaa !23
  %t138 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t133, i32 %t135)
  store %"compiler/source:Span" %t138, ptr %l70
  br label %bb36
bb36:
  %t139 = load ptr, ptr %l61, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l70
  %t141 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %s4, ptr %t139, %"compiler/source:Span" %t140, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store %"compiler/source:Span" %t141, ptr %l71
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s4)
  %t142 = load %"compiler/source:Span", ptr %l71
  store %"compiler/source:Span" %t142, ptr %rv
  br label %ret
bb38:
  %t143 = load ptr, ptr %l2, !tbaa !29
  store ptr %t143, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t144 = load ptr, ptr %l72, !tbaa !29
  %t145 = icmp ne ptr %t144, null
  br i1 %t145, label %bb39, label %bb40
bb39:
  %t147 = load ptr, ptr %l72, !tbaa !29
  %t148 = load i64, ptr %t147, !range !{i64 0, i64 18}
  %t150 = icmp eq i64 %t148, 2
  store i1 %t150, ptr %l73, !tbaa !21
  br label %bb40
bb40:
  %t151 = load i1, ptr %l73, !tbaa !21
  br i1 %t151, label %bb41, label %bb42
bb41:
  %t152 = load ptr, ptr %l2, !tbaa !29
  %t154 = getelementptr { i64, [5 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t154, i32 0, i32 0
  %t156 = load %"compiler/source:Span", ptr %t155
  store %"compiler/source:Span" %t156, ptr %l9
  %t158 = load ptr, ptr %l2, !tbaa !29
  %t160 = getelementptr { i64, [5 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t160, i32 0, i32 2
  %t162 = load ptr, ptr %t161
  store ptr %t162, ptr %l10, !tbaa !29
  br label %bb47
bb42:
  %t164 = load ptr, ptr %l2, !tbaa !29
  store ptr %t164, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t165 = load ptr, ptr %l80, !tbaa !29
  %t166 = icmp ne ptr %t165, null
  br i1 %t166, label %bb43, label %bb44
bb43:
  %t168 = load ptr, ptr %l80, !tbaa !29
  %t169 = load i64, ptr %t168, !range !{i64 0, i64 18}
  %t171 = icmp eq i64 %t169, 3
  store i1 %t171, ptr %l81, !tbaa !21
  br label %bb44
bb44:
  %t172 = load i1, ptr %l81, !tbaa !21
  br i1 %t172, label %bb45, label %bb46
bb45:
  %t173 = load ptr, ptr %l2, !tbaa !29
  %t175 = getelementptr { i64, [5 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t175, i32 0, i32 0
  %t177 = load %"compiler/source:Span", ptr %t176
  store %"compiler/source:Span" %t177, ptr %l9
  %t179 = load ptr, ptr %l2, !tbaa !29
  %t181 = getelementptr { i64, [5 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t181, i32 0, i32 2
  %t183 = load ptr, ptr %t182
  store ptr %t183, ptr %l10, !tbaa !29
  br label %bb47
bb46:
  br label %bb80
bb47:
  %t185 = load ptr, ptr %l10, !tbaa !29
  store ptr %t185, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t186 = load ptr, ptr %l88, !tbaa !29
  %t187 = icmp ne ptr %t186, null
  br i1 %t187, label %bb48, label %bb49
bb48:
  %t189 = load ptr, ptr %l88, !tbaa !29
  %t190 = load i64, ptr %t189, !range !{i64 0, i64 8}
  %t192 = icmp eq i64 %t190, 3
  store i1 %t192, ptr %l89, !tbaa !21
  br label %bb49
bb49:
  %t193 = load i1, ptr %l89, !tbaa !21
  br i1 %t193, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load %"compiler/source:Span", ptr %l9
  %t198 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %t194, %"compiler/source:Span" %t195)
  store %"compiler/source:Span" %t198, ptr %l94
  br label %bb53
bb53:
  %t199 = load %"compiler/source:Span", ptr %l94
  store %"compiler/source:Span" %t199, ptr %rv
  br label %ret
bb54:
  %t200 = load ptr, ptr %l10, !tbaa !29
  store ptr %t200, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t201 = load ptr, ptr %l95, !tbaa !29
  %t202 = icmp ne ptr %t201, null
  br i1 %t202, label %bb55, label %bb56
bb55:
  %t204 = load ptr, ptr %l95, !tbaa !29
  %t205 = load i64, ptr %t204, !range !{i64 0, i64 8}
  %t207 = icmp eq i64 %t205, 4
  store i1 %t207, ptr %l96, !tbaa !21
  br label %bb56
bb56:
  %t208 = load i1, ptr %l96, !tbaa !21
  br i1 %t208, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load %"compiler/source:Span", ptr %l9
  %t213 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastBracket(ptr %v0, ptr %t209, %"compiler/source:Span" %t210)
  store %"compiler/source:Span" %t213, ptr %l101
  br label %bb60
bb60:
  %t214 = load %"compiler/source:Span", ptr %l101
  store %"compiler/source:Span" %t214, ptr %rv
  br label %ret
bb61:
  %t215 = load ptr, ptr %l10, !tbaa !29
  store ptr %t215, ptr %l102, !tbaa !29
  store i1 false, ptr %l103, !tbaa !21
  %t216 = load ptr, ptr %l102, !tbaa !29
  %t217 = icmp ne ptr %t216, null
  br i1 %t217, label %bb62, label %bb63
bb62:
  %t219 = load ptr, ptr %l102, !tbaa !29
  %t220 = load i64, ptr %t219, !range !{i64 0, i64 8}
  %t222 = icmp eq i64 %t220, 2
  store i1 %t222, ptr %l103, !tbaa !21
  br label %bb63
bb63:
  %t223 = load i1, ptr %l103, !tbaa !21
  br i1 %t223, label %bb64, label %bb65
bb64:
  %t224 = load ptr, ptr %l10, !tbaa !29
  %t226 = getelementptr { i64, [4 x i64] }, ptr %t224, i32 0, i32 1
  %t227 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t226, i32 0, i32 2
  %t228 = load ptr, ptr %t227
  store ptr %t228, ptr %l11, !tbaa !29
  br label %bb66
bb65:
  br label %bb74
bb66:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load ptr, ptr %l11, !tbaa !29
  %t235 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t230, ptr %t231)
  store ptr %t235, ptr %l111
  br label %bb67
bb67:
  %t236 = load ptr, ptr %l111, !tbaa !29
  store ptr %t236, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t237 = load ptr, ptr %l112, !tbaa !29
  %t238 = icmp ne ptr %t237, null
  br i1 %t238, label %bb68, label %bb69
bb68:
  %t240 = load ptr, ptr %l112, !tbaa !29
  %t241 = load i64, ptr %t240, !range !{i64 0, i64 18}
  %t243 = icmp eq i64 %t241, 10
  store i1 %t243, ptr %l113, !tbaa !21
  br label %bb69
bb69:
  %t244 = load i1, ptr %l113, !tbaa !21
  br i1 %t244, label %bb70, label %bb71
bb70:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load ptr, ptr %l11, !tbaa !29
  %t249 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t245, ptr %t246)
  store %"compiler/source:Span" %t249, ptr %l118
  br label %bb72
bb71:
  br label %bb73
bb72:
  %t250 = load %"compiler/source:Span", ptr %l118
  store %"compiler/source:Span" %t250, ptr %rv
  br label %ret
bb73:
  br label %bb79
bb74:
  br i1 true, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_22d8393d4f188012_8c9f9e39cb427896)
  unreachable
bb79:
  br label %bb85
bb80:
  br i1 true, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_7213214fb222d0c9_1eae7674ed2401ad)
  unreachable
bb85:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l119, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/scope:Scoper", ptr %t252, i32 0, i32 27
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t257 = icmp eq ptr %t255, null
  br i1 %t257, label %bb86, label %bb87
bb86:
  call void @__olang_check_failed(ptr @olang_loc_2c141a427a2fa071_f343db408d9fc8c5)
  unreachable
bb87:
  br label %bb88
bb88:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"compiler/scope:Scoper", ptr %t259, i32 0, i32 27
  %t262 = load ptr, ptr %t261, !tbaa !29
  %t265 = getelementptr %"compiler/typed:Body", ptr %t262, i32 0, i32 3
  %t266 = load i64, ptr %t265, !tbaa !24
  store i64 %t266, ptr %l126, !tbaa !24
  %t267 = load ptr, ptr %l2, !tbaa !29
  %t269 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t267)
  store %"compiler/source:Span" %t269, ptr %l128
  br label %bb89
bb89:
  %t270 = load ptr, ptr %l119, !tbaa !29
  %t271 = load i64, ptr %l126, !tbaa !24
  %t272 = load %"compiler/source:Span", ptr %l128
  %t273 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t270, i64 %t271, %"compiler/source:Span" %t272)
  store %"compiler/source:Span" %t273, ptr %l129
  br label %bb90
bb90:
  %t274 = load %"compiler/source:Span", ptr %l129
  store %"compiler/source:Span" %t274, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamLift(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l7 = alloca { i64, [2 x i64] }
  %l9 = alloca ptr
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t9 = alloca { i64, [2 x i64] }, align 8
  %t32 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOwn(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [2 x i64] }, ptr %t9, i32 0, i32 0
  store i64 0, ptr %t10
  %t11 = load { i64, [2 x i64] }, ptr %t9
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 160
  store ptr %t15, ptr %l9, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 28
  %t19 = load i64, ptr %t18, !tbaa !24
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t19, i64 %t20)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t23, ptr %l13
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l9, !tbaa !29
  %t25 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  %t26 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t24, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t25)
  %t27 = extractvalue { i32, { i64, [2 x i64] } } %t26, 1
  %t28 = extractvalue { i32, { i64, [2 x i64] } } %t26, 0
  store i32 %t28, ptr %l15
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb7, label %ok.30, !prof !99
ok.30:
  store { i64, [2 x i64] } %t27, ptr %l14
  br label %bb6
bb6:
  %t31 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t31, ptr %l7
  br label %bb9
bb7:
  br label %bb8
bb8:
  store { i64, [2 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 0
  store i64 0, ptr %t33
  %t34 = load { i64, [2 x i64] }, ptr %t32
  store { i64, [2 x i64] } %t34, ptr %l7
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOfTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca i32
  %l9 = alloca i1
  %l11 = alloca i64
  %l19 = alloca i64
  %l31 = alloca { i64, [1 x i64] }
  %l46 = alloca %"compiler/typed:Local"
  %l49 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb2:
  %t8 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t9 = getelementptr { i64 }, ptr %t8, i32 0, i32 0
  %t10 = load i64, ptr %t9
  store i64 %t10, ptr %l11, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 27
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_77d8df1bd6b52079_f0229fa895aca615)
  unreachable
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 27
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t23, i32 0, i32 6
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l19
  br label %bb6
bb6:
  %t29 = load i64, ptr %l11, !tbaa !24
  %t30 = load i64, ptr %l19, !tbaa !24
  %t31 = icmp sge i64 %t29, %t30
  store i1 %t31, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l9, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  store i64 -1, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t35 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t36 = getelementptr { i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  store i64 %t37, ptr %l3, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 27
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_bfd80b0298b19652_e537c33c4d886a6e)
  unreachable
bb12:
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 27
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t49, i32 0, i32 6
  %t53 = load i64, ptr %l3, !tbaa !24
  %t56 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t52, i64 %t53)
  store { i64, [1 x i64] } %t56, ptr %l31
  br label %bb14
bb14:
  %t57 = load { i64, [1 x i64] }, ptr %l31
  store { i64, [1 x i64] } %t57, ptr %l4
  %t58 = load { i64, [1 x i64] }, ptr %l4
  %t60 = extractvalue { i64, [1 x i64] } %t58, 0
  %t61 = icmp eq i64 %t60, 0
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb15, label %bb16
bb15:
  store i64 -1, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t66 = getelementptr { i64, [1 x i64] }, ptr %l4, i32 0, i32 1
  %t67 = getelementptr { i32 }, ptr %t66, i32 0, i32 0
  %t68 = load i32, ptr %t67
  store i32 %t68, ptr %l5, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %t70, i32 0, i32 27
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  br i1 %t75, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_b1757fdcabe82f93_e12b45afd85e1a9f)
  unreachable
bb19:
  br label %bb20
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 27
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Body", ptr %t80, i32 0, i32 7
  %t84 = load i32, ptr %l5, !tbaa !23
  %t86 = sext i32 %t84 to i64
  %t89 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t83, i64 %t86)
  store %"compiler/typed:Local" %t89, ptr %l46
  br label %bb21
bb21:
  %t90 = getelementptr %"compiler/typed:Local", ptr %l46, i32 0, i32 0
  %t91 = load i32, ptr %t90, !tbaa !23
  %t93 = icmp ne i32 %t91, 0
  br i1 %t93, label %bb22, label %bb23
bb22:
  %t95 = load i32, ptr %l5, !tbaa !23
  %t97 = sext i32 %t95 to i64
  store i64 %t97, ptr %l49, !tbaa !24
  br label %bb24
bb23:
  store i64 -1, ptr %l49, !tbaa !24
  br label %bb24
bb24:
  %t99 = load i64, ptr %l49, !tbaa !24
  store i64 %t99, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekBorrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca { i64, [2 x i64] }
  %l18 = alloca { i64, [2 x i64] }
  %l19 = alloca i32
  %l25 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i1
  %l31 = alloca { i64, [2 x i64] }
  %l35 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t36 = alloca { i64, [2 x i64] }, align 8
  %t64 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t18, i32 0, i32 3
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb19
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 118
  %t25 = load i32, ptr %l3, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t24, i64 %t27)
  %t31 = extractvalue { i32, { i64, [2 x i64] } } %t30, 1
  %t32 = extractvalue { i32, { i64, [2 x i64] } } %t30, 0
  store i32 %t32, ptr %l19
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb7, label %ok.34, !prof !99
ok.34:
  store { i64, [2 x i64] } %t31, ptr %l18
  br label %bb6
bb6:
  %t35 = load { i64, [2 x i64] }, ptr %l18
  store { i64, [2 x i64] } %t35, ptr %l13
  br label %bb9
bb7:
  br label %bb8
bb8:
  store { i64, [2 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 0
  store i64 0, ptr %t37
  %t38 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t38, ptr %l13
  br label %bb9
bb9:
  %t40 = load { i64, [2 x i64] }, ptr %l13
  store { i64, [2 x i64] } %t40, ptr %l4
  %t41 = load { i64, [2 x i64] }, ptr %l4
  %t43 = extractvalue { i64, [2 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 0
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t48, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l25, !tbaa !29
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t51)
  store i32 %t53, ptr %l27
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l25, !tbaa !29
  %t55 = load i32, ptr %l27, !tbaa !23
  %t56 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t56, ptr %l28
  br label %bb14
bb14:
  %t57 = load i1, ptr %l28, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t62 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandTerm(ptr %v0, ptr %v1, ptr %t58, ptr %t59)
  store { i64, [2 x i64] } %t62, ptr %l31
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t63 = load { i64, [2 x i64] }, ptr %l31
  store { i64, [2 x i64] } %t63, ptr %rv
  br label %ret
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t64
  %t65 = getelementptr { i64, [2 x i64] }, ptr %t64, i32 0, i32 0
  store i64 0, ptr %t65
  %t66 = load { i64, [2 x i64] }, ptr %t64
  store { i64, [2 x i64] } %t66, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t72 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t68, ptr %t69, i1 false)
  store { i64, [2 x i64] } %t72, ptr %l35
  br label %bb23
bb23:
  %t73 = load { i64, [2 x i64] }, ptr %l35
  store { i64, [2 x i64] } %t73, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_a696eb2979219c3c_c9efb41471de78f8)
  unreachable
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceCallOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i1
  %l45 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca ptr
  %rv = alloca ptr
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
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceCallOf(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17)
  store ptr %t20, ptr %l15
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l15, !tbaa !29
  store ptr %t21, ptr %l6, !tbaa !29
  br label %bb37
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
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
  %t44 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceCallOf(ptr %v0, ptr %v1, ptr %v2, ptr %t37, ptr %t41)
  store ptr %t44, ptr %l25
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l25, !tbaa !29
  store ptr %t45, ptr %l6, !tbaa !29
  br label %bb37
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 5
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l27, !tbaa !21
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
  %t68 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceCallOf(ptr %v0, ptr %v1, ptr %v2, ptr %t61, ptr %t65)
  store ptr %t68, ptr %l35
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l35, !tbaa !29
  store ptr %t69, ptr %l6, !tbaa !29
  br label %bb37
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t71 = load ptr, ptr %l36, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l36, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 6
  store i1 %t77, ptr %l37, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l37, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb32
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t90 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t85, ptr %t86)
  store i1 %t90, ptr %l45
  br label %bb27
bb27:
  %t91 = load i1, ptr %l45, !tbaa !21
  br i1 %t91, label %bb28, label %bb29
bb28:
  %t92 = load ptr, ptr %l5, !tbaa !29
  %t95 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v2, ptr %t92)
  store ptr %t95, ptr %l49
  br label %bb30
bb29:
  store ptr null, ptr %l46, !tbaa !29
  br label %bb31
bb30:
  %t96 = load ptr, ptr %l49, !tbaa !29
  store ptr %t96, ptr %l46, !tbaa !29
  br label %bb31
bb31:
  %t97 = load ptr, ptr %l46, !tbaa !29
  store ptr %t97, ptr %l6, !tbaa !29
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store ptr null, ptr %l6, !tbaa !29
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_da1486de58138450_28784370eb22bac)
  unreachable
bb37:
  %t98 = load ptr, ptr %l6, !tbaa !29
  store ptr %t98, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecordReads(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l14 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l15 = alloca i64
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %lp21 = alloca ptr
  %l22 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %lp31 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l54 = alloca i1
  %l56 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i64
  %l64 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l78 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l81 = alloca i64
  %l83 = alloca i64
  %l88 = alloca i64
  %l95 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l96 = alloca i64
  %l98 = alloca i64
  %l99 = alloca i32
  %l101 = alloca i1
  %l105 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l106 = alloca i64
  %l108 = alloca i64
  %l109 = alloca i32
  %l111 = alloca i1
  %l114 = alloca i1
  %l117 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l122 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l125 = alloca i64
  %l127 = alloca i64
  %l132 = alloca { i64, ptr }
  %l139 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l140 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l143 = alloca i32
  %l145 = alloca i1
  %l146 = alloca i64
  %l147 = alloca { i64, ptr }
  %l156 = alloca i1
  %l158 = alloca i1
  %l163 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca i64
  %l169 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %l177 = alloca i64
  %l178 = alloca { i64, ptr }
  %l182 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l183 = alloca i64
  %l185 = alloca i64
  %l186 = alloca i32
  %l188 = alloca i1
  %l190 = alloca ptr
  %l191 = alloca i64
  %l195 = alloca { i64, ptr }
  %l200 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l202 = alloca i64
  %l204 = alloca i64
  %l209 = alloca { i64, ptr }
  %l211 = alloca ptr
  %l212 = alloca i64
  %l220 = alloca ptr
  %l221 = alloca i64
  %l223 = alloca { i64, ptr }
  %l225 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l228 = alloca i32
  %l230 = alloca i1
  %l231 = alloca { i64, ptr }
  %l242 = alloca { i64, ptr }
  %l245 = alloca { i64, ptr }
  %l248 = alloca { i64, ptr }
  %l249 = alloca i32
  %l251 = alloca i1
  %s0 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s23 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb8
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t15, ptr %l39, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l7, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 308
  %t26 = load i64, ptr %l7, !tbaa !24
  %t27 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_3f_26_H3c69fd890621892a30985a8aa6cbb884(ptr %v0, ptr %v1, ptr %t25, i64 %t26, ptr %t27)
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 309
  %t35 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v0, ptr %t34, i64 %t35, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) })
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l5, !tbaa !24
  br label %bb1
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t46 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecordable(ptr %v0, ptr %v2, ptr %t42, { i64, ptr } %t43)
  store i1 %t46, ptr %l54
  br label %bb9
bb9:
  %t47 = load i1, ptr %l54, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb12
bb11:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 307
  %t53 = load i1, ptr %t52, !tbaa !21
  store i1 %t53, ptr %l56, !tbaa !21
  br label %bb12
bb12:
  %t55 = load i1, ptr %l56, !tbaa !21
  br i1 %t55, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l59, !tbaa !29
  %t57 = ptrtoint ptr %v1 to i64
  store i64 %t57, ptr %l60, !tbaa !24
  %t58 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e13
  br i1 %t58, label %bb16, label %bb17
bb16:
  %t60 = call ptr @__olang_region_make_part(ptr %v1)
  %t61 = ptrtoint ptr %t60 to i64
  store i64 %t61, ptr %l60, !tbaa !24
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t64 = load i64, ptr %l60
  %t65 = inttoptr i64 %t64 to ptr
  %t68 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esigOf(ptr %v0, ptr %v2, ptr %t65, ptr %t62, { i64, ptr } %t63)
  store { i64, ptr } %t68, ptr %l64
  br label %bb18
bb18:
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e13
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = load i64, ptr %l60
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = load { i64, ptr }, ptr %l64
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = call ptr @__olang_region_or(ptr %t74, ptr null)
  %t76 = icmp ne ptr %t75, null
  %t77 = select i1 %t76, ptr %t75, ptr null
  %t78 = icmp eq ptr %t77, %t72
  call void @__olang_region_settle(ptr %t72, i1 %t78)
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l59, !tbaa !29
  %t80 = getelementptr %"compiler/scope:compRun", ptr %t79, i32 0, i32 13
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  store { i64, ptr } %t81, ptr %l66, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t83 = load ptr, ptr %l59, !tbaa !29
  %t84 = getelementptr %"compiler/scope:compRun", ptr %t83, i32 0, i32 13
  store { i64, ptr } %t82, ptr %t84, !tbaa !27
  %t85 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e13
  br i1 %t85, label %bb21, label %bb22
bb21:
  %t87 = load { i64, ptr }, ptr %l66
  %t88 = extractvalue { i64, ptr } %t87, 0
  %t89 = extractvalue { i64, ptr } %t87, 1
  call void @__olang_region_release_part(ptr %t89, i64 %t88)
  store { i64, ptr } zeroinitializer, ptr %l66
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l68, !tbaa !29
  %t91 = ptrtoint ptr %v1 to i64
  store i64 %t91, ptr %l69, !tbaa !24
  %t92 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e14
  br i1 %t92, label %bb23, label %bb24
bb23:
  %t94 = call ptr @__olang_region_make_part(ptr %v1)
  %t95 = ptrtoint ptr %t94 to i64
  store i64 %t95, ptr %l69, !tbaa !24
  br label %bb24
bb24:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/scope:Scoper", ptr %t97, i32 0, i32 29
  %t100 = load i1, ptr %t99, !tbaa !21
  %t101 = load i64, ptr %l69
  %t102 = inttoptr i64 %t101 to ptr
  %t105 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectxText(ptr %v0, ptr %t102, ptr %t96, i1 %t100)
  store { i64, ptr } %t105, ptr %l74
  br label %bb25
bb25:
  %t106 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e14
  br i1 %t106, label %bb26, label %bb27
bb26:
  %t108 = load i64, ptr %l69
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = load { i64, ptr }, ptr %l74
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr null
  %t115 = icmp eq ptr %t114, %t109
  call void @__olang_region_settle(ptr %t109, i1 %t115)
  br label %bb27
bb27:
  %t116 = load ptr, ptr %l68, !tbaa !29
  %t117 = getelementptr %"compiler/scope:compRun", ptr %t116, i32 0, i32 14
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %l76, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t120 = load ptr, ptr %l68, !tbaa !29
  %t121 = getelementptr %"compiler/scope:compRun", ptr %t120, i32 0, i32 14
  store { i64, ptr } %t119, ptr %t121, !tbaa !27
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e14
  br i1 %t122, label %bb28, label %bb29
bb28:
  %t124 = load { i64, ptr }, ptr %l76
  %t125 = extractvalue { i64, ptr } %t124, 0
  %t126 = extractvalue { i64, ptr } %t124, 1
  call void @__olang_region_release_part(ptr %t126, i64 %t125)
  store { i64, ptr } zeroinitializer, ptr %l76
  br label %bb29
bb29:
  %t127 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t127, ptr %l78
  br label %bb30
bb30:
  %t128 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l78
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t128, ptr %l8
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/scope:Scoper", ptr %t129, i32 0, i32 301
  store ptr %t131, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb31
bb31:
  %t133 = load i64, ptr %l10, !tbaa !24
  store i64 %t133, ptr %l81, !tbaa !24
  %t134 = load ptr, ptr %l9, !tbaa !29
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t134)
  store i64 %t136, ptr %l83
  br label %bb32
bb32:
  %t137 = load i64, ptr %l81, !tbaa !24
  %t138 = load i64, ptr %l83, !tbaa !24
  %t139 = icmp slt i64 %t137, %t138
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb33, label %bb34
bb33:
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t143 = load ptr, ptr %l9, !tbaa !29
  %t144 = load i64, ptr %l10, !tbaa !24
  %t147 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t143, i64 %t144)
  store i64 %t147, ptr %l88
  br label %bb36
bb36:
  %t148 = load i64, ptr %l88, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l8, i64 %t148, i1 true)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t152 = load i64, ptr %l10, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l10, !tbaa !24
  br label %bb31
bb39:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/scope:Scoper", ptr %t156, i32 0, i32 272
  %t160 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v0, ptr %t158)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t160, ptr %l95
  br label %bb40
bb40:
  %t161 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l95
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t161, ptr %l12
  br label %bb41
bb41:
  %t163 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %l12)
  %t164 = extractvalue { i32, i64 } %t163, 1
  %t165 = extractvalue { i32, i64 } %t163, 0
  store i32 %t165, ptr %l99
  %t166 = icmp ne i32 %t165, 0
  br i1 %t166, label %bb43, label %ok.167, !prof !99
ok.167:
  store i64 %t164, ptr %l98
  br label %bb42
bb42:
  %t168 = load i64, ptr %l98, !tbaa !24
  store i64 %t168, ptr %l96, !tbaa !24
  br label %bb45
bb43:
  %t169 = load i32, ptr %l99, !tbaa !23
  %t170 = ashr i32 %t169, 16
  %t172 = icmp eq i32 %t170, 1
  store i1 %t172, ptr %l101, !tbaa !21
  br label %bb44
bb44:
  br label %bb48
bb45:
  %t173 = load i64, ptr %l96, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l8, i64 %t173, i1 true)
  br label %bb46
bb46:
  br label %bb47
bb47:
  br label %bb41
bb48:
  %t178 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %s0, ptr %s0, ptr %l8)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t178, ptr %l105
  br label %bb49
bb49:
  %t179 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l105
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t179, ptr %l14
  br label %bb50
bb50:
  %t181 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %s0, ptr %l14)
  %t182 = extractvalue { i32, i64 } %t181, 1
  %t183 = extractvalue { i32, i64 } %t181, 0
  store i32 %t183, ptr %l109
  %t184 = icmp ne i32 %t183, 0
  br i1 %t184, label %bb52, label %ok.185, !prof !99
ok.185:
  store i64 %t182, ptr %l108
  br label %bb51
bb51:
  %t186 = load i64, ptr %l108, !tbaa !24
  store i64 %t186, ptr %l106, !tbaa !24
  br label %bb54
bb52:
  %t187 = load i32, ptr %l109, !tbaa !23
  %t188 = ashr i32 %t187, 16
  %t190 = icmp eq i32 %t188, 1
  store i1 %t190, ptr %l111, !tbaa !21
  br label %bb53
bb53:
  br label %bb62
bb54:
  %t191 = load i64, ptr %l106, !tbaa !24
  store i64 %t191, ptr %l15, !tbaa !24
  %t193 = load i64, ptr %l15, !tbaa !24
  %t196 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v3, ptr %a3, i64 %t193)
  store i1 %t196, ptr %l114
  br label %bb55
bb55:
  %t197 = load i1, ptr %l114, !tbaa !21
  %t198 = xor i1 %t197, true
  br i1 %t198, label %bb56, label %bb57
bb56:
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = getelementptr %"compiler/scope:compRun", ptr %t200, i32 0, i32 17
  store ptr %t202, ptr %l117, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l15, !tbaa !24
  %t207 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadLine(ptr %v0, ptr %v1, ptr %t203, i64 %t204)
  store { i64, ptr } %t207, ptr %l120
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t208 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 0
  %t210 = extractvalue { i64, ptr } %t208, 1
  %t211 = mul i64 %t209, 1
  %t212 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t211)
  call void @llvm.memcpy.p0.p0.i64(ptr %t212, ptr %t210, i64 %t211, i1 false)
  %t213 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t212, 1
  %t215 = load ptr, ptr %l117, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t215, { i64, ptr } %t214)
  br label %bb59
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  br label %bb50
bb62:
  %t217 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t217, ptr %l122
  br label %bb63
bb63:
  %t218 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l122
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t218, ptr %l16
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/scope:Scoper", ptr %t219, i32 0, i32 302
  store ptr %t221, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb64
bb64:
  %t223 = load i64, ptr %l18, !tbaa !24
  store i64 %t223, ptr %l125, !tbaa !24
  %t224 = load ptr, ptr %l17, !tbaa !29
  %t226 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t224)
  store i64 %t226, ptr %l127
  br label %bb65
bb65:
  %t227 = load i64, ptr %l125, !tbaa !24
  %t228 = load i64, ptr %l127, !tbaa !24
  %t229 = icmp slt i64 %t227, %t228
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb66, label %bb67
bb66:
  br label %bb72
bb67:
  br label %bb68
bb68:
  %t233 = load ptr, ptr %l17, !tbaa !29
  %t234 = load i64, ptr %l18, !tbaa !24
  %t237 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t233, i64 %t234)
  store { i64, ptr } %t237, ptr %l132
  br label %bb69
bb69:
  %t238 = load { i64, ptr }, ptr %l132, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %s0, ptr %l16, { i64, ptr } %t238, i1 true)
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t243 = load i64, ptr %l18, !tbaa !24
  %t245 = add i64 %t243, 1
  store i64 %t245, ptr %l18, !tbaa !24
  br label %bb64
bb72:
  %t248 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %s0, ptr %s0, ptr %l16)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t248, ptr %l139
  br label %bb73
bb73:
  %t249 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l139
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t249, ptr %l20
  br label %bb74
bb74:
  %t251 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %s0, ptr %v1, ptr %l20)
  %t252 = extractvalue { i32, { i64, ptr } } %t251, 1
  %t253 = extractvalue { i32, { i64, ptr } } %t251, 0
  store i32 %t253, ptr %l143
  %t254 = icmp ne i32 %t253, 0
  br i1 %t254, label %bb76, label %ok.255, !prof !99
ok.255:
  store { i64, ptr } %t252, ptr %l142
  br label %bb75
bb75:
  %t256 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 0
  store i64 %t257, ptr %l146, !tbaa !24
  %t258 = load i64, ptr %l146, !tbaa !24
  %t259 = mul i64 %t258, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t259)
  %t261 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  store { i64, ptr } %t262, ptr %l147, !tbaa !27
  %t263 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = load i64, ptr %l146, !tbaa !24
  %t268 = mul i64 %t267, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t264, ptr %t266, i64 %t268, i1 false)
  %t269 = load { i64, ptr }, ptr %l147, !tbaa !27
  store { i64, ptr } %t269, ptr %l140, !tbaa !27
  br label %bb78
bb76:
  %t270 = load i32, ptr %l143, !tbaa !23
  %t271 = ashr i32 %t270, 16
  %t273 = icmp eq i32 %t271, 1
  store i1 %t273, ptr %l145, !tbaa !21
  br label %bb77
bb77:
  br label %bb81
bb78:
  %t274 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t274, ptr %lp21
  %t275 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t276 = load ptr, ptr %lp21
  store { i64, ptr } %t275, ptr %t276, !tbaa !27
  %t277 = load ptr, ptr %l1, !tbaa !29
  %t279 = getelementptr %"compiler/scope:compRun", ptr %t277, i32 0, i32 17
  %t280 = load ptr, ptr %lp21
  %t281 = load { i64, ptr }, ptr %t280, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t279, { i64, ptr } %t281)
  br label %bb79
bb79:
  br label %bb80
bb80:
  br label %bb74
bb81:
  %t284 = load ptr, ptr %l1, !tbaa !29
  %t286 = getelementptr %"compiler/scope:compRun", ptr %t284, i32 0, i32 17
  %t287 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_36, 0
  %t288 = insertvalue { ptr, ptr } %t287, ptr null, 1
  %t291 = extractvalue { ptr, ptr } %t288, 0
  %t292 = extractvalue { ptr, ptr } %t288, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v1, ptr %s0, ptr %t286, ptr %t291, ptr %t292)
  br label %bb82
bb82:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/scope:Scoper", ptr %t293, i32 0, i32 287
  %t296 = load { i64, ptr }, ptr %t295, !tbaa !27
  %t298 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t296, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t298, ptr %l156
  br label %bb83
bb83:
  %t299 = load i1, ptr %l156, !tbaa !21
  %t300 = xor i1 %t299, true
  br i1 %t300, label %bb84, label %bb85
bb84:
  %t302 = load ptr, ptr %l1, !tbaa !29
  %t304 = getelementptr %"compiler/scope:compRun", ptr %t302, i32 0, i32 13
  %t305 = load { i64, ptr }, ptr %t304, !tbaa !27
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/scope:Scoper", ptr %t306, i32 0, i32 287
  %t309 = load { i64, ptr }, ptr %t308, !tbaa !27
  %t312 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %v0, { i64, ptr } %t305, { i64, ptr } %t309)
  store i1 %t312, ptr %l163
  br label %bb86
bb85:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb87
bb86:
  %t313 = load i1, ptr %l163, !tbaa !21
  store i1 %t313, ptr %l158, !tbaa !21
  br label %bb87
bb87:
  %t314 = load i1, ptr %l158, !tbaa !21
  br i1 %t314, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s18
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/scope:Scoper", ptr %t315, i32 0, i32 277
  store ptr %t317, ptr %l165, !tbaa !29
  %t318 = ptrtoint ptr %v0 to i64
  store i64 %t318, ptr %l166, !tbaa !24
  %t319 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t319, label %bb90, label %bb91
bb89:
  br label %bb126
bb90:
  %t321 = call ptr @__olang_region_make(ptr %v0)
  %t322 = ptrtoint ptr %t321 to i64
  store i64 %t322, ptr %l166, !tbaa !24
  br label %bb91
bb91:
  %t323 = load ptr, ptr %l1, !tbaa !29
  %t325 = getelementptr %"compiler/scope:compRun", ptr %t323, i32 0, i32 13
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  store { i64, ptr } %t326, ptr %l169, !tbaa !27
  %t327 = load ptr, ptr %l1, !tbaa !29
  %t329 = getelementptr %"compiler/scope:compRun", ptr %t327, i32 0, i32 14
  %t330 = load { i64, ptr }, ptr %t329, !tbaa !27
  store { i64, ptr } %t330, ptr %l171, !tbaa !27
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t335 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeysOf(ptr %v0, ptr %v2, ptr %s18, ptr %t331, { i64, ptr } %t332)
  store { i64, ptr } %t335, ptr %l174
  br label %bb92
bb92:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eglobalText(ptr %v0, ptr %s18, ptr %t336)
  store { i64, ptr } %t338, ptr %l176
  br label %bb93
bb93:
  %t339 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t339, 0
  store i64 %t340, ptr %l177, !tbaa !24
  %t341 = load i64, ptr %l177, !tbaa !24
  %t342 = mul i64 %t341, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t342)
  %t344 = insertvalue { i64, ptr } undef, i64 %t341, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  store { i64, ptr } %t345, ptr %l178, !tbaa !27
  %t346 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !27
  %t348 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !27
  %t350 = load i64, ptr %l177, !tbaa !24
  %t351 = mul i64 %t350, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t347, ptr %t349, i64 %t351, i1 false)
  %t352 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t353 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t354 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t354, 1
  %t356 = extractvalue { i64, ptr } %t354, 0
  %t357 = add i64 %t353, %t356
  %t358 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t359 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t360 = add i64 %t357, %t359
  %t361 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t362 = extractvalue { i64, ptr } %t361, 1
  %t363 = extractvalue { i64, ptr } %t361, 0
  %t364 = add i64 %t360, %t363
  %t365 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t366 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t367 = add i64 %t364, %t366
  %t368 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t369 = extractvalue { i64, ptr } %t368, 1
  %t370 = extractvalue { i64, ptr } %t368, 0
  %t371 = add i64 %t367, %t370
  %t372 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t373 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t374 = add i64 %t371, %t373
  %t375 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t375, 1
  %t377 = extractvalue { i64, ptr } %t375, 0
  %t378 = add i64 %t374, %t377
  %t379 = load i64, ptr %l166
  %t380 = inttoptr i64 %t379 to ptr
  %t381 = call ptr @__olang_scope_alloc(ptr %t380, i64 %t378)
  call void @olang_textcopy(ptr %t381, ptr %t352, i64 %t353)
  %t382 = getelementptr i8, ptr %t381, i64 %t353
  call void @olang_textcopy(ptr %t382, ptr %t355, i64 %t356)
  %t383 = getelementptr i8, ptr %t382, i64 %t356
  call void @olang_textcopy(ptr %t383, ptr %t358, i64 %t359)
  %t384 = getelementptr i8, ptr %t383, i64 %t359
  call void @olang_textcopy(ptr %t384, ptr %t362, i64 %t363)
  %t385 = getelementptr i8, ptr %t384, i64 %t363
  call void @olang_textcopy(ptr %t385, ptr %t365, i64 %t366)
  %t386 = getelementptr i8, ptr %t385, i64 %t366
  call void @olang_textcopy(ptr %t386, ptr %t369, i64 %t370)
  %t387 = getelementptr i8, ptr %t386, i64 %t370
  call void @olang_textcopy(ptr %t387, ptr %t372, i64 %t373)
  %t388 = getelementptr i8, ptr %t387, i64 %t373
  call void @olang_textcopy(ptr %t388, ptr %t376, i64 %t377)
  %t389 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t390 = insertvalue { i64, ptr } %t389, ptr %t381, 1
  %t392 = load i64, ptr %l166
  %t393 = inttoptr i64 %t392 to ptr
  %t394 = extractvalue { i64, ptr } %t390, 0
  %t395 = extractvalue { i64, ptr } %t390, 1
  %t396 = mul i64 %t394, 1
  %t397 = call ptr @__olang_scope_alloc(ptr %t393, i64 %t396)
  call void @llvm.memcpy.p0.p0.i64(ptr %t397, ptr %t395, i64 %t396, i1 false)
  %t398 = insertvalue { i64, ptr } undef, i64 %t394, 0
  %t399 = insertvalue { i64, ptr } %t398, ptr %t397, 1
  %t400 = load ptr, ptr %l165, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t400, { i64, ptr } %t399)
  br label %bb94
bb94:
  %t403 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %s0, ptr %s0, ptr %l8)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t403, ptr %l182
  br label %bb95
bb95:
  %t404 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l182
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t404, ptr %l22
  br label %bb96
bb96:
  %t406 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %s0, ptr %l22)
  %t407 = extractvalue { i32, i64 } %t406, 1
  %t408 = extractvalue { i32, i64 } %t406, 0
  store i32 %t408, ptr %l186
  %t409 = icmp ne i32 %t408, 0
  br i1 %t409, label %bb98, label %ok.410, !prof !99
ok.410:
  store i64 %t407, ptr %l185
  br label %bb97
bb97:
  %t411 = load i64, ptr %l185, !tbaa !24
  store i64 %t411, ptr %l183, !tbaa !24
  br label %bb100
bb98:
  %t412 = load i32, ptr %l186, !tbaa !23
  %t413 = ashr i32 %t412, 16
  %t415 = icmp eq i32 %t413, 1
  store i1 %t415, ptr %l188, !tbaa !21
  br label %bb99
bb99:
  br label %bb106
bb100:
  %t416 = load i64, ptr %l183, !tbaa !24
  store i64 %t416, ptr %l23, !tbaa !24
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"compiler/scope:Scoper", ptr %t417, i32 0, i32 277
  store ptr %t419, ptr %l190, !tbaa !29
  %t420 = ptrtoint ptr %v0 to i64
  store i64 %t420, ptr %l191, !tbaa !24
  %t421 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t421, label %bb101, label %bb102
bb101:
  %t423 = call ptr @__olang_region_make(ptr %v0)
  %t424 = ptrtoint ptr %t423 to i64
  store i64 %t424, ptr %l191, !tbaa !24
  br label %bb102
bb102:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t426 = load i64, ptr %l23, !tbaa !24
  %t429 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadText(ptr %v0, ptr %v0, ptr %t425, i64 %t426)
  store { i64, ptr } %t429, ptr %l195
  br label %bb103
bb103:
  %t430 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t431 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t432 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t433 = extractvalue { i64, ptr } %t432, 1
  %t434 = extractvalue { i64, ptr } %t432, 0
  %t435 = add i64 %t431, %t434
  %t436 = load i64, ptr %l191
  %t437 = inttoptr i64 %t436 to ptr
  %t438 = call ptr @__olang_scope_alloc(ptr %t437, i64 %t435)
  call void @olang_textcopy(ptr %t438, ptr %t430, i64 %t431)
  %t439 = getelementptr i8, ptr %t438, i64 %t431
  call void @olang_textcopy(ptr %t439, ptr %t433, i64 %t434)
  %t440 = insertvalue { i64, ptr } undef, i64 %t435, 0
  %t441 = insertvalue { i64, ptr } %t440, ptr %t438, 1
  %t443 = load i64, ptr %l191
  %t444 = inttoptr i64 %t443 to ptr
  %t445 = extractvalue { i64, ptr } %t441, 0
  %t446 = extractvalue { i64, ptr } %t441, 1
  %t447 = mul i64 %t445, 1
  %t448 = call ptr @__olang_scope_alloc(ptr %t444, i64 %t447)
  call void @llvm.memcpy.p0.p0.i64(ptr %t448, ptr %t446, i64 %t447, i1 false)
  %t449 = insertvalue { i64, ptr } undef, i64 %t445, 0
  %t450 = insertvalue { i64, ptr } %t449, ptr %t448, 1
  %t451 = load ptr, ptr %l190, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t451, { i64, ptr } %t450)
  br label %bb104
bb104:
  br label %bb105
bb105:
  br label %bb96
bb106:
  store %olang.scope zeroinitializer, ptr %s23
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t454 = load ptr, ptr %l1, !tbaa !29
  %t457 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emarksOf(ptr %v0, ptr %v1, ptr %s23, ptr %t453, ptr %t454)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t457, ptr %l200
  br label %bb107
bb107:
  %t458 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l200
  %t459 = call ptr @__olang_scope_alloc_a(ptr %s23, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t458, ptr %t459
  store ptr %t459, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb108
bb108:
  %t461 = load i64, ptr %l25, !tbaa !24
  store i64 %t461, ptr %l202, !tbaa !24
  %t462 = load ptr, ptr %l24, !tbaa !29
  %t464 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s23, ptr %t462)
  store i64 %t464, ptr %l204
  br label %bb109
bb109:
  %t465 = load i64, ptr %l202, !tbaa !24
  %t466 = load i64, ptr %l204, !tbaa !24
  %t467 = icmp slt i64 %t465, %t466
  %t469 = xor i1 %t467, true
  br i1 %t469, label %bb110, label %bb111
bb110:
  br label %bb118
bb111:
  br label %bb112
bb112:
  %t471 = load ptr, ptr %l24, !tbaa !29
  %t472 = load i64, ptr %l25, !tbaa !24
  %t475 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s23, ptr %s23, ptr %t471, i64 %t472)
  store { i64, ptr } %t475, ptr %l209
  br label %bb113
bb113:
  %t476 = load { i64, ptr }, ptr %l209, !tbaa !27
  store { i64, ptr } %t476, ptr %l26, !tbaa !27
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/scope:Scoper", ptr %t477, i32 0, i32 277
  store ptr %t479, ptr %l211, !tbaa !29
  %t480 = ptrtoint ptr %v0 to i64
  store i64 %t480, ptr %l212, !tbaa !24
  %t481 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t481, label %bb114, label %bb115
bb114:
  %t483 = call ptr @__olang_region_make(ptr %v0)
  %t484 = ptrtoint ptr %t483 to i64
  store i64 %t484, ptr %l212, !tbaa !24
  br label %bb115
bb115:
  %t485 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t486 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t487 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t489 = extractvalue { i64, ptr } %t485, 1
  %t490 = extractvalue { i64, ptr } %t485, 0
  %t491 = add i64 %t487, %t490
  %t492 = load i64, ptr %l212
  %t493 = inttoptr i64 %t492 to ptr
  %t494 = call ptr @__olang_scope_alloc(ptr %t493, i64 %t491)
  call void @olang_textcopy(ptr %t494, ptr %t486, i64 %t487)
  %t495 = getelementptr i8, ptr %t494, i64 %t487
  call void @olang_textcopy(ptr %t495, ptr %t489, i64 %t490)
  %t496 = insertvalue { i64, ptr } undef, i64 %t491, 0
  %t497 = insertvalue { i64, ptr } %t496, ptr %t494, 1
  %t499 = load i64, ptr %l212
  %t500 = inttoptr i64 %t499 to ptr
  %t501 = extractvalue { i64, ptr } %t497, 0
  %t502 = extractvalue { i64, ptr } %t497, 1
  %t503 = mul i64 %t501, 1
  %t504 = call ptr @__olang_scope_alloc(ptr %t500, i64 %t503)
  call void @llvm.memcpy.p0.p0.i64(ptr %t504, ptr %t502, i64 %t503, i1 false)
  %t505 = insertvalue { i64, ptr } undef, i64 %t501, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr %t504, 1
  %t507 = load ptr, ptr %l211, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t507, { i64, ptr } %t506)
  br label %bb116
bb116:
  br label %bb117
bb117:
  %t509 = load i64, ptr %l25, !tbaa !24
  %t511 = add i64 %t509, 1
  store i64 %t511, ptr %l25, !tbaa !24
  br label %bb108
bb118:
  call void @__olang_scope_close(ptr %s23)
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t515 = getelementptr %"compiler/scope:Scoper", ptr %t513, i32 0, i32 277
  store ptr %t515, ptr %l220, !tbaa !29
  %t516 = ptrtoint ptr %v0 to i64
  store i64 %t516, ptr %l221, !tbaa !24
  %t517 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t517, label %bb119, label %bb120
bb119:
  %t519 = call ptr @__olang_region_make(ptr %v0)
  %t520 = ptrtoint ptr %t519 to i64
  store i64 %t520, ptr %l221, !tbaa !24
  br label %bb120
bb120:
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t522 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t522, ptr %l225, !tbaa !27
  %t523 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t524 = load ptr, ptr %t523, !tbaa !27
  %t525 = getelementptr i64, ptr %t524, i64 0
  %t526 = load i64, ptr %t525, !tbaa !34
  %t529 = call { i32, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumText(ptr %v0, ptr %s18, ptr %t521, i64 %t526)
  %t530 = extractvalue { i32, { i64, ptr } } %t529, 1
  %t531 = extractvalue { i32, { i64, ptr } } %t529, 0
  store i32 %t531, ptr %l228
  %t532 = icmp ne i32 %t531, 0
  br i1 %t532, label %bb122, label %ok.533, !prof !99
ok.533:
  store { i64, ptr } %t530, ptr %l227
  br label %bb121
bb121:
  %t534 = load { i64, ptr }, ptr %l227, !tbaa !27
  store { i64, ptr } %t534, ptr %l223, !tbaa !27
  br label %bb124
bb122:
  %t535 = load i32, ptr %l228, !tbaa !23
  %t536 = ashr i32 %t535, 16
  %t538 = icmp eq i32 %t536, 1
  store i1 %t538, ptr %l230, !tbaa !21
  br label %bb123
bb123:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l231, !tbaa !27
  %t539 = load { i64, ptr }, ptr %l231, !tbaa !27
  store { i64, ptr } %t539, ptr %l223, !tbaa !27
  br label %bb124
bb124:
  %t541 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t542 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t543 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t544 = extractvalue { i64, ptr } %t543, 1
  %t545 = extractvalue { i64, ptr } %t543, 0
  %t546 = add i64 %t542, %t545
  %t547 = load i64, ptr %l221
  %t548 = inttoptr i64 %t547 to ptr
  %t549 = call ptr @__olang_scope_alloc(ptr %t548, i64 %t546)
  call void @olang_textcopy(ptr %t549, ptr %t541, i64 %t542)
  %t550 = getelementptr i8, ptr %t549, i64 %t542
  call void @olang_textcopy(ptr %t550, ptr %t544, i64 %t545)
  %t551 = insertvalue { i64, ptr } undef, i64 %t546, 0
  %t552 = insertvalue { i64, ptr } %t551, ptr %t549, 1
  %t554 = load i64, ptr %l221
  %t555 = inttoptr i64 %t554 to ptr
  %t556 = extractvalue { i64, ptr } %t552, 0
  %t557 = extractvalue { i64, ptr } %t552, 1
  %t558 = mul i64 %t556, 1
  %t559 = call ptr @__olang_scope_alloc(ptr %t555, i64 %t558)
  call void @llvm.memcpy.p0.p0.i64(ptr %t559, ptr %t557, i64 %t558, i1 false)
  %t560 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t561 = insertvalue { i64, ptr } %t560, ptr %t559, 1
  %t562 = load ptr, ptr %l220, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t562, { i64, ptr } %t561)
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s18)
  br label %bb126
bb126:
  %t564 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t564, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t566 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t568 = extractvalue { i64, ptr } %t566, 0
  store i64 %t568, ptr %l29, !tbaa !24
  br label %bb127
bb127:
  %t570 = load i64, ptr %l28, !tbaa !24
  %t571 = load i64, ptr %l29, !tbaa !24
  %t574 = icmp slt i64 %t570, %t571
  %t576 = xor i1 %t574, true
  br i1 %t576, label %bb128, label %bb129
bb128:
  br label %bb137
bb129:
  br label %bb130
bb130:
  %t578 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t578, ptr %l242, !tbaa !27
  %t579 = load i64, ptr %l28, !tbaa !24
  %t581 = getelementptr { i64, ptr }, ptr %l242, i32 0, i32 1
  %t582 = load ptr, ptr %t581, !tbaa !27
  %t583 = getelementptr i64, ptr %t582, i64 %t579
  %t584 = load i64, ptr %t583, !tbaa !34
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t590 = call { i32, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehiddenText(ptr %v0, ptr %v1, ptr %t586, i64 %t584)
  %t591 = extractvalue { i32, { i64, ptr } } %t590, 1
  %t592 = extractvalue { i32, { i64, ptr } } %t590, 0
  store i32 %t592, ptr %l249
  %t593 = icmp ne i32 %t592, 0
  br i1 %t593, label %bb132, label %ok.594, !prof !99
ok.594:
  store { i64, ptr } %t591, ptr %l248
  br label %bb131
bb131:
  %t595 = load { i64, ptr }, ptr %l248, !tbaa !27
  store { i64, ptr } %t595, ptr %l245, !tbaa !27
  br label %bb134
bb132:
  %t596 = load i32, ptr %l249, !tbaa !23
  %t597 = ashr i32 %t596, 16
  %t599 = icmp eq i32 %t597, 1
  store i1 %t599, ptr %l251, !tbaa !21
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb134:
  %t600 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t600, ptr %lp31
  %t601 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t602 = load ptr, ptr %lp31
  store { i64, ptr } %t601, ptr %t602, !tbaa !27
  %t603 = load ptr, ptr %l1, !tbaa !29
  %t605 = getelementptr %"compiler/scope:compRun", ptr %t603, i32 0, i32 22
  %t606 = load ptr, ptr %lp31
  %t607 = load { i64, ptr }, ptr %t606, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t605, { i64, ptr } %t607)
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t610 = load i64, ptr %l28, !tbaa !24
  %t612 = add i64 %t610, 1
  store i64 %t612, ptr %l28, !tbaa !24
  br label %bb127
bb137:
  %t614 = load ptr, ptr %l1, !tbaa !29
  %t616 = getelementptr %"compiler/scope:compRun", ptr %t614, i32 0, i32 21
  store i1 true, ptr %t616, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca i1
  %l7 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i1
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l25 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l40 = alloca %"compiler/typed:Local"
  %l42 = alloca i1
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
  %t3 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i1, ptr %l4, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l7, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t9)
  store i64 %t11, ptr %l9
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l7, !tbaa !29
  %t13 = load i64, ptr %l9, !tbaa !24
  %t14 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionParam(ptr %v0, ptr %t12, i64 %t13)
  store i64 %t14, ptr %l10
  br label %bb6
bb6:
  %t15 = load i64, ptr %l10, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = icmp sge i64 %t16, 0
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %v0, ptr %t20, i64 %t21)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l16
  br label %bb9
bb8:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb12
bb9:
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l16)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l18
  br label %bb10
bb10:
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %l18)
  store i64 %t28, ptr %l20
  br label %bb11
bb11:
  %t29 = load i64, ptr %l20, !tbaa !24
  %t30 = icmp sgt i64 %t29, 1
  store i1 %t30, ptr %l13, !tbaa !21
  br label %bb12
bb12:
  %t32 = load i1, ptr %l13, !tbaa !21
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t33 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t33, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t35 = load i64, ptr %l2, !tbaa !24
  %t37 = icmp slt i64 %t35, 0
  br i1 %t37, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb19
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %t39, i64 %t40)
  store i1 %t43, ptr %l28
  br label %bb18
bb18:
  %t44 = load i1, ptr %l28, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l25, !tbaa !21
  br label %bb19
bb19:
  %t47 = load i1, ptr %l25, !tbaa !21
  br i1 %t47, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb27
bb21:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l31, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 27
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  br i1 %t54, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_f5041371eec86b2_55455b7784c43256)
  unreachable
bb23:
  br label %bb24
bb24:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 27
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t59, i32 0, i32 7
  %t63 = load i64, ptr %l2, !tbaa !24
  %t66 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t62, i64 %t63)
  store %"compiler/typed:Local" %t66, ptr %l40
  br label %bb25
bb25:
  %t67 = getelementptr %"compiler/typed:Local", ptr %l40, i32 0, i32 2
  %t68 = load i32, ptr %t67, !tbaa !23
  %t69 = load ptr, ptr %l31, !tbaa !29
  %t71 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t69, i32 %t68)
  store i1 %t71, ptr %l42
  br label %bb26
bb26:
  %t72 = load i1, ptr %l42, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l30, !tbaa !21
  br label %bb27
bb27:
  %t75 = load i1, ptr %l30, !tbaa !21
  br i1 %t75, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t77 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erelationWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, [2 x i64] } %a3, ptr %a4) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, [1 x i64] }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
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
  store i64 %t8, ptr %l5, !tbaa !24
  br label %bb3
bb2:
  br label %bb6
bb3:
  store ptr %a0, ptr %l10, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l11, !tbaa !29
  store { i64, ptr } %a2, ptr %l12, !tbaa !27
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 6
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v1, ptr %t15, i64 %t16)
  store { i64, [1 x i64] } %t19, ptr %l16
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l10, !tbaa !29
  %t22 = load ptr, ptr %l11, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t24 = load { i64, [1 x i64] }, ptr %l16
  %t26 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erelationVar(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t21, ptr %t22, { i64, ptr } %t23, { i64, [1 x i64] } %t24, ptr %a4)
  store { i64, ptr } %t26, ptr %l18
  br label %bb5
bb5:
  %t27 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t28, ptr %l6, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_13b65a438bfdd446_54ab7c4e595e3faa)
  unreachable
bb11:
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l21, !tbaa !24
  %t32 = load i64, ptr %l21, !tbaa !24
  %t33 = mul i64 %t32, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l21, !tbaa !24
  %t42 = mul i64 %t41, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %t40, i64 %t42, i1 false)
  %t43 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t43, ptr %l6, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esameScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l7 = alloca i64
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t3 = load { i64, [2 x i64] }, ptr %l2
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t1, { i64, [2 x i64] } %t2, { i64, [2 x i64] } %t3)
  store i64 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i64, ptr %l7, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, [2 x i64] }, ptr %l1
  %t17 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %t15, { i64, [2 x i64] } %t16, { i64, [2 x i64] } %t17, i1 false)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t25 = icmp eq i64 %t21, %t22
  br i1 %t25, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t31 = icmp eq i64 %t27, %t28
  store i1 %t31, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l17, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t77, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d47, i32 0, i32 1) })
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
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t81, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d48, i32 0, i32 1) })
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

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i64
  %l19 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
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
  br label %bb12
bb6:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = call i1 @compiler_2fscope_2eflThroughRef(ptr %s0, ptr %t23)
  store i1 %t25, ptr %l16
  br label %bb7
bb7:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i64 -1, ptr %l17, !tbaa !24
  br label %bb11
bb9:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = call i64 @compiler_2fscope_2eflRoot(ptr %s0, ptr %t27)
  store i64 %t29, ptr %l19
  br label %bb10
bb10:
  %t30 = load i64, ptr %l19, !tbaa !24
  store i64 %t30, ptr %l17, !tbaa !24
  br label %bb11
bb11:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l8, !tbaa !24
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_1a43114a4f266086_b04643b29ce7fa0a)
  unreachable
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load i64, ptr %l8, !tbaa !24
  store i64 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitWalk(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca i64
  %l23 = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l12
  br label %bb6
bb6:
  %t21 = load i1, ptr %l12, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb10
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t26 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitHeld(ptr %v0, ptr %v1, ptr %t22, ptr %t23)
  store i1 %t26, ptr %l16
  br label %bb9
bb9:
  %t27 = load i1, ptr %l16, !tbaa !21
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb10
bb10:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 45
  store ptr %t31, ptr %l18, !tbaa !29
  %t34 = sext i32 %a1 to i64
  store i64 %t34, ptr %l20, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t39 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  store { i64, [2 x i64] } %t39, ptr %l23
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t40 = load ptr, ptr %l18, !tbaa !29
  %t41 = load i64, ptr %l20, !tbaa !24
  %t42 = load { i64, [2 x i64] }, ptr %l23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %t40, i64 %t41, { i64, [2 x i64] } %t42)
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_72c0018e413494f5_fd941fdf53522361)
  unreachable
bb21:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca { i64, [2 x i64] }
  %l22 = alloca ptr
  %l23 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l37 = alloca %"compiler/scope:Val"
  %l39 = alloca ptr
  %l40 = alloca i1
  %l47 = alloca { i64, [2 x i64] }
  %l48 = alloca ptr
  %l49 = alloca i1
  %l56 = alloca i32
  %l61 = alloca i32
  %l64 = alloca i1
  %l69 = alloca i32
  %l74 = alloca { i64, [2 x i64] }
  %l78 = alloca { i64, [2 x i64] }
  %l79 = alloca ptr
  %l80 = alloca i1
  %l88 = alloca { i64, [2 x i64] }
  %l89 = alloca ptr
  %l90 = alloca i1
  %l100 = alloca { i64, [2 x i64] }
  %l104 = alloca { i64, [2 x i64] }
  %l106 = alloca i1
  %l107 = alloca { i64, [2 x i64] }
  %l110 = alloca { i64, [2 x i64] }
  %l111 = alloca ptr
  %l112 = alloca i1
  %l117 = alloca i64
  %l119 = alloca ptr
  %l121 = alloca ptr
  %l124 = alloca i64
  %l126 = alloca ptr
  %l127 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t35 = alloca { i64, [2 x i64] }, align 8
  %t57 = alloca { i64, [2 x i64] }, align 8
  %t263 = alloca { i64, [2 x i64] }, align 8
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
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 36
  %t19 = load i32, ptr %l2, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t18, i64 %t21)
  store { i64, [2 x i64] } %t24, ptr %l21
  br label %bb6
bb6:
  %t25 = load { i64, [2 x i64] }, ptr %l21
  store { i64, [2 x i64] } %t25, ptr %rv
  br label %ret
bb7:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t27 = load ptr, ptr %l22, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l22, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 1
  store i1 %t33, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l23, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store { i64, [2 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t35, i32 0, i32 0
  store i64 3, ptr %t36
  %t37 = load { i64, [2 x i64] }, ptr %t35
  store { i64, [2 x i64] } %t37, ptr %rv
  br label %ret
bb13:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t40 = load ptr, ptr %l27, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l27, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 2
  store i1 %t46, ptr %l28, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l28, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l3, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t57
  %t58 = getelementptr { i64, [2 x i64] }, ptr %t57, i32 0, i32 0
  store i64 0, ptr %t58
  %t59 = load { i64, [2 x i64] }, ptr %t57
  %t63 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t54, ptr %t55, { i64, [2 x i64] } %t59)
  store %"compiler/scope:Val" %t63, ptr %l37
  br label %bb19
bb19:
  %t64 = getelementptr %"compiler/scope:Val", ptr %l37, i32 0, i32 1
  %t65 = load { i64, [2 x i64] }, ptr %t64
  store { i64, [2 x i64] } %t65, ptr %rv
  br label %ret
bb20:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t68 = load ptr, ptr %l39, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 8}
  %t74 = icmp eq i64 %t72, 3
  store i1 %t74, ptr %l40, !tbaa !21
  br label %bb22
bb22:
  %t75 = load i1, ptr %l40, !tbaa !21
  br i1 %t75, label %bb23, label %bb24
bb23:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l4, !tbaa !29
  %t86 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %t82, ptr %t83)
  store { i64, [2 x i64] } %t86, ptr %l47
  br label %bb26
bb26:
  %t87 = load { i64, [2 x i64] }, ptr %l47
  store { i64, [2 x i64] } %t87, ptr %rv
  br label %ret
bb27:
  %t88 = load ptr, ptr %l1, !tbaa !29
  store ptr %t88, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t89 = load ptr, ptr %l48, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb28, label %bb29
bb28:
  %t92 = load ptr, ptr %l48, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 8}
  %t95 = icmp eq i64 %t93, 4
  store i1 %t95, ptr %l49, !tbaa !21
  br label %bb29
bb29:
  %t96 = load i1, ptr %l49, !tbaa !21
  br i1 %t96, label %bb30, label %bb31
bb30:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t99, i32 0, i32 2
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  br label %bb44
bb32:
  %t103 = load ptr, ptr %l5, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Elem", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t106)
  store i32 %t108, ptr %l56
  br label %bb33
bb33:
  %t109 = load i32, ptr %l56, !tbaa !23
  store i32 %t109, ptr %l6, !tbaa !23
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l6, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l61
  br label %bb34
bb34:
  %t120 = load i32, ptr %l61, !range !{i32 0, i32 33}
  %t122 = trunc i64 19 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb35, label %bb36
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/generic:Program", ptr %t128, i32 0, i32 2
  %t131 = load i32, ptr %l6, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t134, ptr %l69
  br label %bb37
bb36:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb38
bb37:
  %t135 = load i32, ptr %l69, !tbaa !23
  %t136 = icmp eq i32 %t135, 0
  store i1 %t136, ptr %l64, !tbaa !21
  br label %bb38
bb38:
  %t138 = load i1, ptr %l64, !tbaa !21
  br i1 %t138, label %bb39, label %bb40
bb39:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l5, !tbaa !29
  %t142 = getelementptr %"compiler/typed:Elem", ptr %t140, i32 0, i32 0
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t146 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t139, ptr %t143)
  store { i64, [2 x i64] } %t146, ptr %l74
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t147 = load { i64, [2 x i64] }, ptr %l74
  store { i64, [2 x i64] } %t147, ptr %rv
  br label %ret
bb42:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l5, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Elem", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t155 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %t148, ptr %t152)
  store { i64, [2 x i64] } %t155, ptr %l78
  br label %bb43
bb43:
  %t156 = load { i64, [2 x i64] }, ptr %l78
  store { i64, [2 x i64] } %t156, ptr %rv
  br label %ret
bb44:
  %t157 = load ptr, ptr %l1, !tbaa !29
  store ptr %t157, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t158 = load ptr, ptr %l79, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb45, label %bb46
bb45:
  %t161 = load ptr, ptr %l79, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 8}
  %t164 = icmp eq i64 %t162, 5
  store i1 %t164, ptr %l80, !tbaa !21
  br label %bb46
bb46:
  %t165 = load i1, ptr %l80, !tbaa !21
  br i1 %t165, label %bb47, label %bb48
bb47:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t168, i32 0, i32 2
  %t170 = load ptr, ptr %t169
  store ptr %t170, ptr %l7, !tbaa !29
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load ptr, ptr %l7, !tbaa !29
  %t175 = getelementptr %"compiler/typed:Payload", ptr %t173, i32 0, i32 0
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t179 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %t172, ptr %t176)
  store { i64, [2 x i64] } %t179, ptr %l88
  br label %bb50
bb50:
  %t180 = load { i64, [2 x i64] }, ptr %l88
  store { i64, [2 x i64] } %t180, ptr %rv
  br label %ret
bb51:
  %t181 = load ptr, ptr %l1, !tbaa !29
  store ptr %t181, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t182 = load ptr, ptr %l89, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb52, label %bb53
bb52:
  %t185 = load ptr, ptr %l89, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 8}
  %t188 = icmp eq i64 %t186, 6
  store i1 %t188, ptr %l90, !tbaa !21
  br label %bb53
bb53:
  %t189 = load i1, ptr %l90, !tbaa !21
  br i1 %t189, label %bb54, label %bb55
bb54:
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t192 = getelementptr { i64, [4 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t192, i32 0, i32 2
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l8, !tbaa !29
  %t196 = load ptr, ptr %l1, !tbaa !29
  %t198 = getelementptr { i64, [4 x i64] }, ptr %t196, i32 0, i32 1
  %t199 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t198, i32 0, i32 3
  %t200 = load i32, ptr %t199
  store i32 %t200, ptr %l9, !tbaa !23
  br label %bb56
bb55:
  br label %bb64
bb56:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %l8, !tbaa !29
  %t204 = load i32, ptr %l9, !tbaa !23
  %t208 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempTerm(ptr %v0, ptr %v1, ptr %t202, ptr %t203, i32 %t204)
  store { i64, [2 x i64] } %t208, ptr %l100
  br label %bb57
bb57:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i32, ptr %l9, !tbaa !23
  %t212 = sext i32 %t210 to i64
  %t215 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t209, i64 %t212)
  store { i64, [2 x i64] } %t215, ptr %l104
  br label %bb58
bb58:
  %t216 = load { i64, [2 x i64] }, ptr %l104
  store { i64, [2 x i64] } %t216, ptr %l10
  %t217 = load { i64, [2 x i64] }, ptr %l10
  %t219 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t217)
  store i1 %t219, ptr %l106
  br label %bb59
bb59:
  %t220 = load i1, ptr %l106, !tbaa !21
  br i1 %t220, label %bb60, label %bb61
bb60:
  %t221 = load { i64, [2 x i64] }, ptr %l10
  store { i64, [2 x i64] } %t221, ptr %l107
  br label %bb63
bb61:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eframeHere(ptr %v0, ptr %t223)
  store { i64, [2 x i64] } %t225, ptr %l110
  br label %bb62
bb62:
  %t226 = load { i64, [2 x i64] }, ptr %l110
  store { i64, [2 x i64] } %t226, ptr %l107
  br label %bb63
bb63:
  %t227 = load { i64, [2 x i64] }, ptr %l107
  store { i64, [2 x i64] } %t227, ptr %rv
  br label %ret
bb64:
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t229 = load ptr, ptr %l111, !tbaa !29
  %t230 = icmp ne ptr %t229, null
  br i1 %t230, label %bb65, label %bb66
bb65:
  %t232 = load ptr, ptr %l111, !tbaa !29
  %t233 = load i64, ptr %t232, !range !{i64 0, i64 8}
  %t235 = icmp eq i64 %t233, 7
  store i1 %t235, ptr %l112, !tbaa !21
  br label %bb66
bb66:
  %t236 = load i1, ptr %l112, !tbaa !21
  br i1 %t236, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb77
bb69:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/scope:Scoper", ptr %t237, i32 0, i32 65
  %t241 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t239)
  store i64 %t241, ptr %l117
  br label %bb70
bb70:
  %t242 = load i64, ptr %l117, !tbaa !24
  %t243 = icmp sge i64 %t242, 2
  br i1 %t243, label %bb71, label %bb72
bb71:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l119, !tbaa !29
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/scope:Scoper", ptr %t246, i32 0, i32 65
  store ptr %t248, ptr %l121, !tbaa !29
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/scope:Scoper", ptr %t249, i32 0, i32 65
  %t253 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t251)
  store i64 %t253, ptr %l124
  br label %bb73
bb72:
  br label %bb76
bb73:
  %t254 = load i64, ptr %l124, !tbaa !24
  %t255 = sub i64 %t254, 2
  %t256 = load ptr, ptr %l121, !tbaa !29
  %t258 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t256, i64 %t255)
  store ptr %t258, ptr %l126
  br label %bb74
bb74:
  %t259 = load ptr, ptr %l119, !tbaa !29
  %t260 = load ptr, ptr %l126, !tbaa !29
  %t261 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v0, ptr %t259, ptr %t260)
  store { i64, [2 x i64] } %t261, ptr %l127
  br label %bb75
bb75:
  %t262 = load { i64, [2 x i64] }, ptr %l127
  store { i64, [2 x i64] } %t262, ptr %rv
  br label %ret
bb76:
  store { i64, [2 x i64] } zeroinitializer, ptr %t263
  %t264 = getelementptr { i64, [2 x i64] }, ptr %t263, i32 0, i32 0
  store i64 6, ptr %t264
  %t265 = load { i64, [2 x i64] }, ptr %t263
  store { i64, [2 x i64] } %t265, ptr %rv
  br label %ret
bb77:
  call void @__olang_check_failed(ptr @olang_loc_8bfac37a1f29704b_1a5bb9d5b57da78f)
  unreachable
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l5 = alloca ptr
  %l8 = alloca i64
  %l11 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca i1
  %l19 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca ptr
  %l30 = alloca i1
  %l31 = alloca i64
  %l34 = alloca ptr
  %l37 = alloca i64
  %l42 = alloca ptr
  %l46 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t8 = getelementptr %"compiler/scope:summary", ptr %t6, i32 0, i32 21
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l1, !tbaa !24
  %t16 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t12, i64 %t13)
  store ptr %t16, ptr %l11
  br label %bb4
bb3:
  br label %bb11
bb4:
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t19 = getelementptr %"compiler/scope:summary", ptr %t17, i32 0, i32 6
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l14
  br label %bb5
bb5:
  %t22 = load i64, ptr %l8, !tbaa !24
  %t23 = load i64, ptr %l14, !tbaa !24
  %t24 = icmp slt i64 %t22, %t23
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store ptr %t30, ptr %l19
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb10
bb8:
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t33 = getelementptr %"compiler/scope:summary", ptr %t31, i32 0, i32 6
  %t34 = load i64, ptr %l2, !tbaa !24
  %t37 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t33, i64 %t34)
  store i1 %t37, ptr %l23
  br label %bb9
bb9:
  %t38 = load i1, ptr %l23, !tbaa !21
  store i1 %t38, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l16, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t40, i64 %t41)
  store ptr %t44, ptr %l26
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l26, !tbaa !29
  %t47 = getelementptr %"compiler/scope:summary", ptr %t45, i32 0, i32 20
  %t48 = load i1, ptr %t47, !tbaa !21
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb17
bb14:
  %t52 = load i64, ptr %l2, !tbaa !24
  store i64 %t52, ptr %l31, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l1, !tbaa !24
  %t57 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t53, i64 %t54)
  store ptr %t57, ptr %l34
  br label %bb15
bb15:
  %t58 = load ptr, ptr %l34, !tbaa !29
  %t60 = getelementptr %"compiler/scope:summary", ptr %t58, i32 0, i32 6
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t60)
  store i64 %t62, ptr %l37
  br label %bb16
bb16:
  %t63 = load i64, ptr %l31, !tbaa !24
  %t64 = load i64, ptr %l37, !tbaa !24
  %t65 = icmp sge i64 %t63, %t64
  store i1 %t65, ptr %l30, !tbaa !21
  br label %bb17
bb17:
  %t67 = load i1, ptr %l30, !tbaa !21
  br i1 %t67, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l1, !tbaa !24
  %t73 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t69, i64 %t70)
  store ptr %t73, ptr %l42
  br label %bb21
bb21:
  %t74 = load ptr, ptr %l42, !tbaa !29
  %t76 = getelementptr %"compiler/scope:summary", ptr %t74, i32 0, i32 6
  %t77 = load i64, ptr %l2, !tbaa !24
  %t80 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t76, i64 %t77)
  store i1 %t80, ptr %l46
  br label %bb22
bb22:
  %t81 = load i1, ptr %l46, !tbaa !21
  store i1 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = getelementptr %"compiler/scope:summary", ptr %t6, i32 0, i32 20
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t11, i64 %t12)
  store ptr %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l10, !tbaa !29
  %t18 = getelementptr %"compiler/scope:summary", ptr %t16, i32 0, i32 21
  %t19 = load i1, ptr %t18, !tbaa !21
  store i1 %t19, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l7, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca %"compiler/scope:Val"
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca { i64, [2 x i64] }
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca i32
  %l23 = alloca %"compiler/scope:Val"
  %l27 = alloca { i64, [2 x i64] }
  %l29 = alloca i1
  %l30 = alloca { i64, [2 x i64] }
  %l33 = alloca { i64, [2 x i64] }
  %l38 = alloca i1
  %l39 = alloca i1
  %l47 = alloca { i64, ptr }
  %l53 = alloca { i64, [2 x i64] }
  %l58 = alloca i1
  %l59 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i1
  %l63 = alloca i1
  %l66 = alloca ptr
  %l69 = alloca i1
  %l72 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t15 = alloca { i64, [2 x i64] }, align 8
  %t30 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 118
  %t4 = load i32, ptr %l2, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t9 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t3, i64 %t6)
  %t10 = extractvalue { i32, { i64, [2 x i64] } } %t9, 1
  %t11 = extractvalue { i32, { i64, [2 x i64] } } %t9, 0
  store i32 %t11, ptr %l13
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store { i64, [2 x i64] } %t10, ptr %l12
  br label %bb1
bb1:
  %t14 = load { i64, [2 x i64] }, ptr %l12
  store { i64, [2 x i64] } %t14, ptr %l7
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, [2 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [2 x i64] }, ptr %t15, i32 0, i32 0
  store i64 6, ptr %t16
  %t17 = load { i64, [2 x i64] }, ptr %t15
  store { i64, [2 x i64] } %t17, ptr %l7
  br label %bb4
bb4:
  %t19 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t19, ptr %l3
  %t20 = load { i64, [2 x i64] }, ptr %l3
  %t22 = extractvalue { i64, [2 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 6
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load { i64, [2 x i64] }, ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t27, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t30
  %t31 = getelementptr { i64, [2 x i64] }, ptr %t30, i32 0, i32 0
  store i64 0, ptr %t31
  %t32 = load { i64, [2 x i64] }, ptr %t30
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 120
  store { i64, [2 x i64] } %t32, ptr %t35
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t40 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempVal(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  store %"compiler/scope:Val" %t40, ptr %l23
  br label %bb8
bb8:
  %t41 = load %"compiler/scope:Val", ptr %l23
  store %"compiler/scope:Val" %t41, ptr %l4
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t45 = sext i32 %t43 to i64
  %t48 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t42, i64 %t45)
  store { i64, [2 x i64] } %t48, ptr %l27
  br label %bb9
bb9:
  %t49 = load { i64, [2 x i64] }, ptr %l27
  store { i64, [2 x i64] } %t49, ptr %l5
  %t50 = load { i64, [2 x i64] }, ptr %l5
  %t52 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t50)
  store i1 %t52, ptr %l29
  br label %bb10
bb10:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb11, label %bb12
bb11:
  %t54 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t54, ptr %l30
  br label %bb14
bb12:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t56)
  store { i64, [2 x i64] } %t58, ptr %l33
  br label %bb13
bb13:
  %t59 = load { i64, [2 x i64] }, ptr %l33
  store { i64, [2 x i64] } %t59, ptr %l30
  br label %bb14
bb14:
  %t60 = load { i64, [2 x i64] }, ptr %l30
  store { i64, [2 x i64] } %t60, ptr %l6
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l2, !tbaa !23
  %t63 = load { i64, [2 x i64] }, ptr %l6
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t61, i32 %t62, { i64, [2 x i64] } %t63)
  br label %bb15
bb15:
  %t67 = load { i64, [2 x i64] }, ptr %l5
  %t69 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t67)
  store i1 %t69, ptr %l38
  br label %bb16
bb16:
  %t70 = load i1, ptr %l38, !tbaa !21
  br i1 %t70, label %bb17, label %bb18
bb17:
  %t71 = load i32, ptr %l2, !tbaa !23
  %t73 = sext i32 %t71 to i64
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 34
  %t77 = getelementptr %"compiler/typed:Plan", ptr %t76, i32 0, i32 5
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t83 = icmp slt i64 %t73, %t80
  store i1 %t83, ptr %l39, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l39, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/scope:Scoper", ptr %t86, i32 0, i32 34
  %t89 = getelementptr %"compiler/typed:Plan", ptr %t88, i32 0, i32 5
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  store { i64, ptr } %t90, ptr %l47, !tbaa !27
  %t91 = load i32, ptr %l2, !tbaa !23
  %t93 = sext i32 %t91 to i64
  %t95 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i1, ptr %t96, i64 %t93
  store i1 true, ptr %t97, !tbaa !31
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t98 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 1
  %t99 = load { i64, [2 x i64] }, ptr %t98
  %t101 = extractvalue { i64, [2 x i64] } %t99, 0
  %t102 = icmp eq i64 %t101, 0
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 1
  %t107 = load { i64, [2 x i64] }, ptr %t106
  store { i64, [2 x i64] } %t107, ptr %l53
  br label %bb25
bb24:
  %t109 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t109, ptr %l53
  br label %bb25
bb25:
  %t111 = load { i64, [2 x i64] }, ptr %l53
  store { i64, [2 x i64] } %t111, ptr %l3
  %t112 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 1
  %t113 = load { i64, [2 x i64] }, ptr %t112
  %t115 = extractvalue { i64, [2 x i64] } %t113, 0
  %t116 = icmp eq i64 %t115, 0
  br i1 %t116, label %bb26, label %bb27
bb26:
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l59, !tbaa !29
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t119)
  store i32 %t121, ptr %l61
  br label %bb28
bb27:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb30
bb28:
  %t122 = load ptr, ptr %l59, !tbaa !29
  %t123 = load i32, ptr %l61, !tbaa !23
  %t124 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t122, i32 %t123)
  store i1 %t124, ptr %l62
  br label %bb29
bb29:
  %t125 = load i1, ptr %l62, !tbaa !21
  store i1 %t125, ptr %l58, !tbaa !21
  br label %bb30
bb30:
  %t126 = load i1, ptr %l58, !tbaa !21
  br i1 %t126, label %bb31, label %bb32
bb31:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t130 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %s0, ptr %t127)
  store ptr %t130, ptr %l66
  br label %bb33
bb32:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb34
bb33:
  %t131 = load ptr, ptr %l66, !tbaa !29
  %t132 = icmp eq ptr %t131, null
  %t134 = xor i1 %t132, true
  store i1 %t134, ptr %l63, !tbaa !21
  br label %bb34
bb34:
  %t136 = load i1, ptr %l63, !tbaa !21
  br i1 %t136, label %bb35, label %bb36
bb35:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/scope:Scoper", ptr %t137, i32 0, i32 120
  %t140 = load { i64, [2 x i64] }, ptr %t139
  %t142 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t140)
  store i1 %t142, ptr %l72
  br label %bb37
bb36:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb38
bb37:
  %t143 = load i1, ptr %l72, !tbaa !21
  store i1 %t143, ptr %l69, !tbaa !21
  br label %bb38
bb38:
  %t144 = load i1, ptr %l69, !tbaa !21
  br i1 %t144, label %bb39, label %bb40
bb39:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/scope:Scoper", ptr %t145, i32 0, i32 120
  %t148 = load { i64, [2 x i64] }, ptr %t147
  store { i64, [2 x i64] } %t148, ptr %l3
  br label %bb41
bb40:
  br label %bb41
bb41:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/scope:Scoper", ptr %t150, i32 0, i32 118
  %t153 = load i32, ptr %l2, !tbaa !23
  %t155 = sext i32 %t153 to i64
  %t156 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %t152, i64 %t155, { i64, [2 x i64] } %t156)
  br label %bb42
bb42:
  %t160 = load { i64, [2 x i64] }, ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t160, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermWord(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
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
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l6, !tbaa !27
  br label %bb29
bb4:
  %t8 = load { i64, [2 x i64] }, ptr %l1
  %t10 = extractvalue { i64, [2 x i64] } %t8, 0
  %t11 = icmp eq i64 %t10, 1
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t14 = getelementptr { i32 }, ptr %t13, i32 0, i32 0
  %t15 = load i32, ptr %t14
  store i32 %t15, ptr %l2, !tbaa !23
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t17 = load i32, ptr %l2, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t23 = call i64 @__olang_fmt_i64(ptr null, i64 %t19)
  %t24 = add i64 %t21, %t23
  %t25 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t20, i64 %t21)
  %t26 = getelementptr i8, ptr %t25, i64 %t21
  %t27 = call i64 @__olang_fmt_i64(ptr %t26, i64 %t19)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t25, 1
  store { i64, ptr } %t29, ptr %l6, !tbaa !27
  br label %bb29
bb8:
  %t31 = load { i64, [2 x i64] }, ptr %l1
  %t33 = extractvalue { i64, [2 x i64] } %t31, 0
  %t34 = icmp eq i64 %t33, 2
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t37 = getelementptr { i64 }, ptr %t36, i32 0, i32 0
  %t38 = load i64, ptr %t37
  store i64 %t38, ptr %l3, !tbaa !24
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t44 = call i64 @__olang_fmt_i64(ptr null, i64 %t40)
  %t45 = add i64 %t42, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t41, i64 %t42)
  %t47 = getelementptr i8, ptr %t46, i64 %t42
  %t48 = call i64 @__olang_fmt_i64(ptr %t47, i64 %t40)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t46, 1
  store { i64, ptr } %t50, ptr %l6, !tbaa !27
  br label %bb29
bb12:
  %t52 = load { i64, [2 x i64] }, ptr %l1
  %t54 = extractvalue { i64, [2 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 3
  br i1 %t55, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t57, ptr %l6, !tbaa !27
  br label %bb29
bb16:
  %t59 = load { i64, [2 x i64] }, ptr %l1
  %t61 = extractvalue { i64, [2 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 4
  br i1 %t62, label %bb17, label %bb18
bb17:
  %t64 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t65 = getelementptr { i64, i64 }, ptr %t64, i32 0, i32 0
  %t66 = load i64, ptr %t65
  store i64 %t66, ptr %l4, !tbaa !24
  %t68 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t69 = getelementptr { i64, i64 }, ptr %t68, i32 0, i32 1
  %t70 = load i64, ptr %t69
  store i64 %t70, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l5, !tbaa !24
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t77 = call i64 @__olang_fmt_i64(ptr null, i64 %t72)
  %t78 = add i64 %t75, %t77
  %t79 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t81 = add i64 %t78, %t80
  %t83 = call i64 @__olang_fmt_i64(ptr null, i64 %t73)
  %t84 = add i64 %t81, %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t74, i64 %t75)
  %t86 = getelementptr i8, ptr %t85, i64 %t75
  %t87 = call i64 @__olang_fmt_i64(ptr %t86, i64 %t72)
  %t88 = getelementptr i8, ptr %t86, i64 %t77
  call void @olang_textcopy(ptr %t88, ptr %t79, i64 %t80)
  %t89 = getelementptr i8, ptr %t88, i64 %t80
  %t90 = call i64 @__olang_fmt_i64(ptr %t89, i64 %t73)
  %t91 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t85, 1
  store { i64, ptr } %t92, ptr %l6, !tbaa !27
  br label %bb29
bb20:
  %t94 = load { i64, [2 x i64] }, ptr %l1
  %t96 = extractvalue { i64, [2 x i64] } %t94, 0
  %t97 = icmp eq i64 %t96, 6
  br i1 %t97, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t99, ptr %l6, !tbaa !27
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t102 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t102, ptr %rv
  br label %ret
bb28:
  call void @__olang_check_failed(ptr @olang_loc_48fef23c760a2c0c_687ab57f8c655b00)
  unreachable
bb29:
  %t103 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  store i64 %t104, ptr %l38, !tbaa !24
  %t105 = load i64, ptr %l38, !tbaa !24
  %t106 = mul i64 %t105, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t106)
  %t108 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  store { i64, ptr } %t109, ptr %l39, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = load i64, ptr %l38, !tbaa !24
  %t115 = mul i64 %t114, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t111, ptr %t113, i64 %t115, i1 false)
  %t116 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t116, ptr %l6, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t118 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t117, 1
  store { i32, { i64, ptr } } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueArm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l24 = alloca { i64, ptr }
  %l34 = alloca i1
  %l45 = alloca { i64, ptr }
  %l55 = alloca i1
  %l68 = alloca i1
  %l69 = alloca i1
  %l76 = alloca i1
  %l77 = alloca i1
  %l84 = alloca i1
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
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Arm", ptr %t6, i32 0, i32 1
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb23
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t23, ptr %l24, !tbaa !27
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l8, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t33 = load ptr, ptr %l8, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Alt", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t45 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t31, ptr %t32, ptr %t36, i64 %t38, i64 %t39)
  store i1 %t45, ptr %l34
  br label %bb8
bb8:
  %t46 = load i1, ptr %l34, !tbaa !21
  %t47 = xor i1 %t46, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t50 = load ptr, ptr %l8, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Alt", ptr %t50, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  store i64 %t57, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t59 = load i64, ptr %l10, !tbaa !24
  %t60 = load i64, ptr %l11, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t67 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t67, ptr %l45, !tbaa !27
  %t68 = load i64, ptr %l10, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr ptr, ptr %t71, i64 %t68
  %t73 = load ptr, ptr %t72, !tbaa !39
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Bind", ptr %t73, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = load i64, ptr %l3, !tbaa !24
  %t83 = load i64, ptr %l4, !tbaa !24
  %t89 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t75, ptr %t76, ptr %t80, i64 %t82, i64 %t83)
  store i1 %t89, ptr %l55
  br label %bb16
bb16:
  %t90 = load i1, ptr %l55, !tbaa !21
  %t91 = xor i1 %t90, true
  br i1 %t91, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t94 = load i64, ptr %l10, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l10, !tbaa !24
  br label %bb12
bb21:
  br label %bb22
bb22:
  %t98 = load i64, ptr %l6, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l6, !tbaa !24
  br label %bb4
bb23:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t104 = load ptr, ptr %l2, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Arm", ptr %t104, i32 0, i32 2
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t108 = load i64, ptr %l3, !tbaa !24
  %t109 = load i64, ptr %l4, !tbaa !24
  %t115 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t102, ptr %t103, ptr %t107, i64 %t108, i64 %t109)
  store i1 %t115, ptr %l68
  br label %bb24
bb24:
  %t116 = load i1, ptr %l68, !tbaa !21
  br i1 %t116, label %bb25, label %bb26
bb25:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Arm", ptr %t119, i32 0, i32 3
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = load i64, ptr %l3, !tbaa !24
  %t124 = load i64, ptr %l4, !tbaa !24
  %t130 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t117, ptr %t118, ptr %t122, i64 %t123, i64 %t124)
  store i1 %t130, ptr %l76
  br label %bb27
bb26:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb28
bb27:
  %t131 = load i1, ptr %l76, !tbaa !21
  store i1 %t131, ptr %l69, !tbaa !21
  br label %bb28
bb28:
  %t132 = load i1, ptr %l69, !tbaa !21
  br i1 %t132, label %bb29, label %bb30
bb29:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t135 = load ptr, ptr %l2, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Arm", ptr %t135, i32 0, i32 4
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t139 = load i64, ptr %l3, !tbaa !24
  %t140 = load i64, ptr %l4, !tbaa !24
  %t146 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t133, ptr %t134, ptr %t138, i64 %t139, i64 %t140)
  store i1 %t146, ptr %l84
  br label %bb31
bb30:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb32
bb31:
  %t147 = load i1, ptr %l84, !tbaa !21
  store i1 %t147, ptr %l77, !tbaa !21
  br label %bb32
bb32:
  %t148 = load i1, ptr %l77, !tbaa !21
  store i1 %t148, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca ptr
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  call void @__olang_check_failed(ptr @olang_loc_c1e814726b785cf2_df631aab7cf532ee)
  unreachable
bb4:
  br label %bb5
bb5:
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %rv
  br label %ret
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l8, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 18}
  %t18 = icmp eq i64 %t16, 17
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t31 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %t27)
  store ptr %t31, ptr %l17
  br label %bb12
bb12:
  %t32 = load ptr, ptr %l17, !tbaa !29
  store ptr %t32, ptr %rv
  br label %ret
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_21e064470a3252d0_305537a6acb289cc)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/scope:fnRec"
  %l9 = alloca i64
  %l12 = alloca i1
  %l15 = alloca i1
  %l23 = alloca i1
  %l28 = alloca i1
  %l29 = alloca i32
  %l34 = alloca i32
  %l38 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca %"compiler/scope:fnRec"
  %l50 = alloca %"compiler/scope:fnRec"
  %l51 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i32
  %l62 = alloca ptr
  %l66 = alloca i64
  %s4 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %t5, i64 %t6)
  store i1 %t9, ptr %l15
  br label %bb3
bb3:
  %t10 = load i1, ptr %l15, !tbaa !21
  store i1 %t10, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l12, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  store i64 -1, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t13, i64 %t14, i1 true)
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t20 = load i32, ptr %l3, !tbaa !23
  %t25 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueOK(ptr %v0, ptr %t17, i64 %t18, i1 %a2, i32 %t20)
  store i1 %t25, ptr %l23
  br label %bb9
bb9:
  %t26 = load i1, ptr %l23, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb10, label %bb11
bb10:
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l28
  br label %bb13
bb13:
  %t36 = load i1, ptr %l28, !tbaa !21
  br i1 %t36, label %bb14, label %bb15
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l34
  br label %bb16
bb15:
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t47, ptr %l29, !tbaa !23
  br label %bb17
bb16:
  %t49 = load i32, ptr %l34, !tbaa !23
  store i32 %t49, ptr %l29, !tbaa !23
  br label %bb17
bb17:
  %t50 = load i32, ptr %l29, !tbaa !23
  store i32 %t50, ptr %l5, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  %t55 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l38
  br label %bb18
bb18:
  %t56 = load ptr, ptr %l38, !tbaa !29
  %t58 = getelementptr %"compiler/scope:summary", ptr %t56, i32 0, i32 16
  %t59 = getelementptr %"compiler/scope:fnRecs", ptr %t58, i32 0, i32 0
  store ptr %t59, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t61 = load i64, ptr %l7, !tbaa !24
  store i64 %t61, ptr %l41, !tbaa !24
  %t62 = load ptr, ptr %l6, !tbaa !29
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l43
  br label %bb20
bb20:
  %t65 = load i64, ptr %l41, !tbaa !24
  %t66 = load i64, ptr %l43, !tbaa !24
  %t67 = icmp slt i64 %t65, %t66
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb36
bb22:
  br label %bb23
bb23:
  %t71 = load ptr, ptr %l6, !tbaa !29
  %t72 = load i64, ptr %l7, !tbaa !24
  %t75 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store %"compiler/scope:fnRec" %t75, ptr %l48
  br label %bb24
bb24:
  %t77 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s4, ptr %l48)
  store %"compiler/scope:fnRec" %t77, ptr %l50
  br label %bb25
bb25:
  %t78 = load %"compiler/scope:fnRec", ptr %l50
  store %"compiler/scope:fnRec" %t78, ptr %l8
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l51, !tbaa !29
  %t80 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 0
  %t81 = load i64, ptr %t80, !tbaa !24
  store i64 %t81, ptr %l52, !tbaa !24
  %t82 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 2
  %t83 = load i1, ptr %t82, !tbaa !21
  store i1 %t83, ptr %l53, !tbaa !21
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l5, !tbaa !23
  %t88 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t88, ptr %l56
  br label %bb26
bb26:
  %t89 = load i1, ptr %l56, !tbaa !21
  br i1 %t89, label %bb27, label %bb28
bb27:
  %t90 = load i32, ptr %l5, !tbaa !23
  store i32 %t90, ptr %l57, !tbaa !23
  br label %bb30
bb28:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/scope:Scoper", ptr %t92, i32 0, i32 1
  %t95 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 0
  %t96 = load i64, ptr %t95, !tbaa !24
  %t99 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t94, i64 %t96)
  store ptr %t99, ptr %l62
  br label %bb29
bb29:
  %t100 = load ptr, ptr %l62, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Body", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %t102, !tbaa !23
  store i32 %t103, ptr %l57, !tbaa !23
  br label %bb30
bb30:
  %t105 = load ptr, ptr %l4, !tbaa !29
  %t106 = load ptr, ptr %l51, !tbaa !29
  %t107 = load i64, ptr %l52, !tbaa !24
  %t108 = load i1, ptr %l53, !tbaa !21
  %t109 = load i32, ptr %l57, !tbaa !23
  %t111 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %v1, ptr %t106, i64 %t107, i1 %t108, i32 %t109, ptr %t105)
  store i64 %t111, ptr %l66
  br label %bb31
bb31:
  %t112 = load i64, ptr %l66, !tbaa !24
  store i64 %t112, ptr %l9, !tbaa !24
  %t113 = load i64, ptr %l9, !tbaa !24
  %t115 = icmp sge i64 %t113, 0
  br i1 %t115, label %bb32, label %bb33
bb32:
  %t117 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  store i64 %t117, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb35:
  %t119 = load i64, ptr %l7, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l7, !tbaa !24
  br label %bb19
bb36:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalPromote(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca %"compiler/scope:Val"
  %l8 = alloca ptr
  %l9 = alloca { i64, [2 x i64] }
  %l17 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i1
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l43 = alloca { i64, [2 x i64] }
  %l45 = alloca i1
  %l47 = alloca i1
  %l48 = alloca { i64, [2 x i64] }
  %l52 = alloca { i64, [2 x i64] }
  %l54 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca { i64, [2 x i64] }
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca ptr
  %l63 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i1
  %l78 = alloca %"compiler/scope:Val"
  %l82 = alloca ptr
  %l86 = alloca ptr
  %l92 = alloca { i64, [2 x i64] }
  %l97 = alloca %"compiler/scope:Val"
  %l100 = alloca i1
  %l101 = alloca ptr
  %l104 = alloca i32
  %l105 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca { i64, [2 x i64] }
  %l110 = alloca { i64, [2 x i64] }
  %l111 = alloca ptr
  %l114 = alloca i32
  %l115 = alloca i1
  %l117 = alloca ptr
  %l119 = alloca i64
  %l124 = alloca %"compiler/scope:Val"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  %t52 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 83
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l4, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 83
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 205
  %t12 = load i64, ptr %t11, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 205
  store i64 -1, ptr %t16, !tbaa !24
  %t17 = load { i64, [2 x i64] }, ptr %l2
  %t19 = call i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %t17)
  store i1 %t19, ptr %l17
  br label %bb1
bb1:
  %t20 = load i1, ptr %l17, !tbaa !21
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 43
  %t24 = load i64, ptr %t23, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  store i1 %t26, ptr %l18, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb4
bb4:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l23, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Promote", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t33)
  store i32 %t35, ptr %l26
  br label %bb7
bb6:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb9
bb7:
  %t36 = load ptr, ptr %l23, !tbaa !29
  %t37 = load i32, ptr %l26, !tbaa !23
  %t38 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t38, ptr %l27
  br label %bb8
bb8:
  %t39 = load i1, ptr %l27, !tbaa !21
  store i1 %t39, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l22, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load { i64, [2 x i64] }, ptr %l2
  %t45 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailCloses(ptr %v0, ptr %t41, { i64, [2 x i64] } %t42)
  store i1 %t45, ptr %l31
  br label %bb12
bb11:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb13
bb12:
  %t46 = load i1, ptr %l31, !tbaa !21
  store i1 %t46, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l28, !tbaa !21
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 43
  %t51 = load i64, ptr %t50, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t52
  %t53 = getelementptr { i64, [2 x i64] }, ptr %t52, i32 0, i32 0
  store i64 2, ptr %t53
  %t55 = insertvalue { i64 } undef, i64 %t51, 0
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t52, i32 0, i32 1
  store { i64 } %t55, ptr %t56
  %t57 = load { i64, [2 x i64] }, ptr %t52
  store { i64, [2 x i64] } %t57, ptr %l2
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l35, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Promote", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t63)
  store %"compiler/source:Span" %t65, ptr %l38
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t66 = load ptr, ptr %l35, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l38
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailDtorRow(ptr %v0, ptr %t66, %"compiler/source:Span" %t67)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Promote", ptr %t69, i32 0, i32 1
  %t72 = load i32, ptr %t71, !tbaa !23
  %t74 = sext i32 %t72 to i64
  %t77 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t68, i64 %t74)
  store { i64, [2 x i64] } %t77, ptr %l43
  br label %bb19
bb19:
  %t78 = load { i64, [2 x i64] }, ptr %l43
  store { i64, [2 x i64] } %t78, ptr %l6
  %t79 = load { i64, [2 x i64] }, ptr %l6
  %t81 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t79)
  store i1 %t81, ptr %l45
  br label %bb20
bb20:
  %t82 = load i1, ptr %l45, !tbaa !21
  br i1 %t82, label %bb21, label %bb22
bb21:
  %t83 = load { i64, [2 x i64] }, ptr %l2
  %t85 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t83)
  store i1 %t85, ptr %l47
  br label %bb23
bb22:
  br label %bb28
bb23:
  %t86 = load i1, ptr %l47, !tbaa !21
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load { i64, [2 x i64] }, ptr %l2
  %t89 = load { i64, [2 x i64] }, ptr %l6
  %t93 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t87, { i64, [2 x i64] } %t88, { i64, [2 x i64] } %t89)
  store { i64, [2 x i64] } %t93, ptr %l52
  br label %bb26
bb25:
  %t94 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t94, ptr %l48
  br label %bb27
bb26:
  %t96 = load { i64, [2 x i64] }, ptr %l52
  store { i64, [2 x i64] } %t96, ptr %l48
  br label %bb27
bb27:
  %t97 = load { i64, [2 x i64] }, ptr %l48
  store { i64, [2 x i64] } %t97, ptr %l2
  br label %bb28
bb28:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l54, !tbaa !29
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Promote", ptr %t99, i32 0, i32 1
  %t102 = load i32, ptr %t101, !tbaa !23
  store i32 %t102, ptr %l56, !tbaa !23
  %t103 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t103, ptr %l57
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Promote", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t107)
  store %"compiler/source:Span" %t109, ptr %l60
  br label %bb29
bb29:
  %t110 = load ptr, ptr %l54, !tbaa !29
  %t111 = load i32, ptr %l56, !tbaa !23
  %t112 = load { i64, [2 x i64] }, ptr %l57
  %t113 = load %"compiler/source:Span", ptr %l60
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %t110, i32 %t111, { i64, [2 x i64] } %t112, %"compiler/source:Span" %t113)
  br label %bb30
bb30:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l61, !tbaa !29
  %t115 = load i1, ptr %l4, !tbaa !21
  br i1 %t115, label %bb31, label %bb32
bb31:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Promote", ptr %t117, i32 0, i32 0
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = call i1 @compiler_2fscope_2eanyArrayBox(ptr %v1, ptr %t120)
  store i1 %t122, ptr %l66
  br label %bb33
bb32:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb34
bb33:
  %t123 = load i1, ptr %l66, !tbaa !21
  store i1 %t123, ptr %l63, !tbaa !21
  br label %bb34
bb34:
  %t124 = load i1, ptr %l63, !tbaa !21
  %t125 = load ptr, ptr %l61, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 84
  store i1 %t124, ptr %t126, !tbaa !21
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Promote", ptr %t128, i32 0, i32 0
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t134 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeCase(ptr %v0, ptr %v1, ptr %t127, ptr %t131)
  store i1 %t134, ptr %l70
  br label %bb35
bb35:
  %t135 = load i1, ptr %l70, !tbaa !21
  br i1 %t135, label %bb36, label %bb37
bb36:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %t136, i32 0, i32 206
  store i64 %a3, ptr %t140, !tbaa !24
  br label %bb38
bb37:
  br label %bb38
bb38:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Promote", ptr %t142, i32 0, i32 0
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = load { i64, [2 x i64] }, ptr %l2
  %t151 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t141, ptr %t145, { i64, [2 x i64] } %t147)
  store %"compiler/scope:Val" %t151, ptr %l78
  br label %bb39
bb39:
  %t152 = load %"compiler/scope:Val", ptr %l78
  store %"compiler/scope:Val" %t152, ptr %l7
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/scope:Scoper", ptr %t153, i32 0, i32 84
  store i1 false, ptr %t155, !tbaa !21
  %t156 = load i1, ptr %l4, !tbaa !21
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb40, label %bb41
bb40:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Promote", ptr %t161, i32 0, i32 0
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t167 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertedPlace(ptr %v0, ptr %v1, ptr %s0, ptr %t160, ptr %t164)
  store ptr %t167, ptr %l86
  br label %bb42
bb41:
  store ptr null, ptr %l82, !tbaa !29
  br label %bb43
bb42:
  %t168 = load ptr, ptr %l86, !tbaa !29
  store ptr %t168, ptr %l82, !tbaa !29
  br label %bb43
bb43:
  %t169 = load ptr, ptr %l82, !tbaa !29
  store ptr %t169, ptr %l8, !tbaa !29
  %t170 = load ptr, ptr %l8, !tbaa !29
  %t172 = icmp eq ptr %t170, null
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb44, label %bb45
bb44:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load ptr, ptr %l8, !tbaa !29
  %t180 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %s0, ptr %t176, ptr %t177, i1 false)
  store { i64, [2 x i64] } %t180, ptr %l92
  br label %bb46
bb45:
  br label %bb51
bb46:
  %t181 = load { i64, [2 x i64] }, ptr %l92
  store { i64, [2 x i64] } %t181, ptr %l9
  %t182 = load { i64, [2 x i64] }, ptr %l9
  %t184 = extractvalue { i64, [2 x i64] } %t182, 0
  %t185 = icmp eq i64 %t184, 0
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb47, label %bb48
bb47:
  %t189 = load { i64, [2 x i64] }, ptr %l9
  %t191 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t189)
  store %"compiler/scope:Val" %t191, ptr %l97
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_scope_close(ptr %s0)
  %t192 = load %"compiler/scope:Val", ptr %l97
  store %"compiler/scope:Val" %t192, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t193 = getelementptr %"compiler/scope:Val", ptr %l7, i32 0, i32 0
  %t194 = load i32, ptr %t193, !range !{i32 0, i32 5}
  %t196 = trunc i64 3 to i32
  %t197 = icmp eq i32 %t194, %t196
  br i1 %t197, label %bb52, label %bb53
bb52:
  %t199 = load ptr, ptr %l0, !tbaa !29
  store ptr %t199, ptr %l101, !tbaa !29
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = getelementptr %"compiler/typed:Promote", ptr %t200, i32 0, i32 0
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t205 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t203)
  store i32 %t205, ptr %l104
  br label %bb54
bb53:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb56
bb54:
  %t206 = load ptr, ptr %l101, !tbaa !29
  %t207 = load i32, ptr %l104, !tbaa !23
  %t208 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t206, i32 %t207)
  store i1 %t208, ptr %l105
  br label %bb55
bb55:
  %t209 = load i1, ptr %l105, !tbaa !21
  store i1 %t209, ptr %l100, !tbaa !21
  br label %bb56
bb56:
  %t210 = load i1, ptr %l100, !tbaa !21
  br i1 %t210, label %bb57, label %bb58
bb57:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load i64, ptr %l5, !tbaa !24
  %t215 = getelementptr %"compiler/scope:Scoper", ptr %t211, i32 0, i32 204
  store i64 %t212, ptr %t215, !tbaa !24
  %t216 = load ptr, ptr %l0, !tbaa !29
  store ptr %t216, ptr %l108, !tbaa !29
  %t217 = getelementptr %"compiler/scope:Val", ptr %l7, i32 0, i32 1
  %t218 = load { i64, [2 x i64] }, ptr %t217
  store { i64, [2 x i64] } %t218, ptr %l109
  %t219 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t219, ptr %l110
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l111, !tbaa !29
  %t221 = load ptr, ptr %l1, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Promote", ptr %t221, i32 0, i32 0
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t224)
  store i32 %t226, ptr %l114
  br label %bb59
bb58:
  br label %bb65
bb59:
  %t227 = load ptr, ptr %l111, !tbaa !29
  %t228 = load i32, ptr %l114, !tbaa !23
  %t229 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t227, i32 %t228)
  store i1 %t229, ptr %l115
  br label %bb60
bb60:
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t232 = getelementptr %"compiler/typed:Promote", ptr %t230, i32 0, i32 0
  %t233 = load ptr, ptr %t232, !tbaa !29
  store ptr %t233, ptr %l117, !tbaa !29
  %t234 = load i1, ptr %l4, !tbaa !21
  br i1 %t234, label %bb61, label %bb62
bb61:
  %t236 = load i64, ptr @G_2ecompiler_2fscope_2eFitAnyCopy, !tbaa !24
  store i64 %t236, ptr %l119, !tbaa !24
  br label %bb63
bb62:
  %t238 = load i64, ptr @G_2ecompiler_2fscope_2eFitValue, !tbaa !24
  store i64 %t238, ptr %l119, !tbaa !24
  br label %bb63
bb63:
  %t240 = load ptr, ptr %l108, !tbaa !29
  %t241 = load { i64, [2 x i64] }, ptr %l109
  %t242 = load { i64, [2 x i64] }, ptr %l110
  %t243 = load i1, ptr %l115, !tbaa !21
  %t244 = load ptr, ptr %l117, !tbaa !29
  %t245 = load i64, ptr %l119, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t240, { i64, [2 x i64] } %t241, { i64, [2 x i64] } %t242, i1 %t243, ptr %t244, i64 %t245)
  br label %bb64
bb64:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/scope:Scoper", ptr %t246, i32 0, i32 204
  store i64 -1, ptr %t248, !tbaa !24
  br label %bb65
bb65:
  %t249 = load { i64, [2 x i64] }, ptr %l2
  %t251 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %t249)
  store %"compiler/scope:Val" %t251, ptr %l124
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  %t252 = load %"compiler/scope:Val", ptr %l124
  store %"compiler/scope:Val" %t252, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalSlice(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, [2 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %l12 = alloca i64
  %l19 = alloca i1
  %l20 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %l29 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca %"compiler/diagmsg:Msg"
  %l35 = alloca i64
  %l41 = alloca %"compiler/scope:Val"
  %l47 = alloca %"compiler/scope:Val"
  %l51 = alloca { i64, [2 x i64] }
  %l57 = alloca i1
  %l59 = alloca %"compiler/scope:Val"
  %rv = alloca %"compiler/scope:Val"
  %t67 = alloca { i64, [2 x i64] }, align 8
  %t80 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Slice", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t12 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartLand(ptr %v0, ptr %v1, ptr %t1, ptr %t5, i32 %a2, { i64, [2 x i64] } %a4)
  store i64 %t12, ptr %l12
  br label %bb1
bb1:
  %t13 = load i64, ptr %l12, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Slice", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t14, ptr %t18)
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Slice", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t28 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %v1, ptr %t21, ptr %t25)
  store i1 %t28, ptr %l19
  br label %bb3
bb3:
  %t29 = load i1, ptr %l19, !tbaa !21
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Slice", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t37 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplitPlace(ptr %v0, ptr %v1, ptr %t30, ptr %t34)
  store i1 %t37, ptr %l24
  br label %bb6
bb5:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb7
bb6:
  %t38 = load i1, ptr %l24, !tbaa !21
  %t39 = xor i1 %t38, true
  store i1 %t39, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t41 = load i1, ptr %l20, !tbaa !21
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 29
  %t45 = load i1, ptr %t44, !tbaa !21
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb10
bb10:
  %t47 = load i1, ptr %l26, !tbaa !21
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l29, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t55 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceAt(ptr %v0, ptr %v1, ptr %t49, %"compiler/source:Span" %a1, ptr %t51)
  store %"compiler/source:Span" %t55, ptr %l33
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t56 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSliceSplitValue(ptr %v0)
  store %"compiler/diagmsg:Msg" %t56, ptr %l34
  br label %bb14
bb14:
  %t57 = load ptr, ptr %l29, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l33
  %t59 = load %"compiler/diagmsg:Msg", ptr %l34
  %t60 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t57, %"compiler/source:Span" %t58, %"compiler/diagmsg:Msg" %t59)
  store i64 %t60, ptr %l35
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Slice", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [2 x i64] }, ptr %t67, i32 0, i32 0
  store i64 0, ptr %t68
  %t69 = load { i64, [2 x i64] }, ptr %t67
  %t73 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t61, ptr %t65, { i64, [2 x i64] } %t69)
  store %"compiler/scope:Val" %t73, ptr %l41
  br label %bb17
bb17:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Slice", ptr %t75, i32 0, i32 2
  %t78 = load ptr, ptr %t77, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 0
  store i64 0, ptr %t81
  %t82 = load { i64, [2 x i64] }, ptr %t80
  %t86 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t74, ptr %t78, { i64, [2 x i64] } %t82)
  store %"compiler/scope:Val" %t86, ptr %l47
  br label %bb18
bb18:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l3, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Slice", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t94 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceTerm(ptr %v0, ptr %v1, ptr %t87, ptr %t91)
  store { i64, [2 x i64] } %t94, ptr %l51
  br label %bb19
bb19:
  %t95 = load { i64, [2 x i64] }, ptr %l51
  store { i64, [2 x i64] } %t95, ptr %l6
  %t96 = load i64, ptr %l5, !tbaa !24
  %t98 = icmp sge i64 %t96, 0
  br i1 %t98, label %bb20, label %bb21
bb20:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 119
  %t103 = load i64, ptr %l5, !tbaa !24
  %t106 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb4ab14fd1aa8deeb21095c3402461540(ptr %v0, ptr %t102, i64 %t103)
  store i1 %t106, ptr %l57
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t107 = load { i64, [2 x i64] }, ptr %l6
  %t109 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t107)
  store %"compiler/scope:Val" %t109, ptr %l59
  br label %bb24
bb24:
  %t110 = load %"compiler/scope:Val", ptr %l59
  store %"compiler/scope:Val" %t110, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l36 = alloca i64
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
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = call ptr @compiler_2fscope_2eunWidened(ptr %s0, ptr %s0, ptr %t9)
  store ptr %t10, ptr %l10
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l10, !tbaa !29
  store ptr %t11, ptr %l2, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  store ptr %t12, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t13 = load ptr, ptr %l11, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load ptr, ptr %l11, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 18}
  %t19 = icmp eq i64 %t17, 10
  store i1 %t19, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l12, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Slice", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = call i64 @compiler_2fscope_2eflRoot(ptr %s0, ptr %t30)
  store i64 %t32, ptr %l19
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
bb10:
  %t34 = load ptr, ptr %l2, !tbaa !29
  store ptr %t34, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l20, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 3
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t42 = load i1, ptr %l21, !tbaa !21
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb31
bb15:
  %t49 = load ptr, ptr %l4, !tbaa !29
  store ptr %t49, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l26, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 8}
  %t56 = icmp eq i64 %t54, 0
  store i1 %t56, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t57 = load i1, ptr %l27, !tbaa !21
  br i1 %t57, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  %t58 = load ptr, ptr %l4, !tbaa !29
  store ptr %t58, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t59 = load ptr, ptr %l30, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t62 = load ptr, ptr %l30, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 8}
  %t65 = icmp eq i64 %t63, 2
  store i1 %t65, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l31, !tbaa !21
  br i1 %t66, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = call i64 @compiler_2fscope_2eflRoot(ptr %s0, ptr %t68)
  store i64 %t70, ptr %l36
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t71 = load i64, ptr %l36, !tbaa !24
  store i64 %t71, ptr %rv
  br label %ret
bb30:
  call void @__olang_check_failed(ptr @olang_loc_6eee1454e63e28f9_96cec8c94273ac0d)
  unreachable
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_7623189fe73c6a28_ffaddce80d5b12dc)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewalkHandle(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/typed:Local" %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/typed:Local"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %l31 = alloca i1
  %l34 = alloca ptr
  %l36 = alloca i32
  %l39 = alloca { i64, [2 x i64] }
  %l42 = alloca %"compiler/source:Span"
  %l49 = alloca %"compiler/scope:Val"
  %l52 = alloca ptr
  %l54 = alloca i64
  %l55 = alloca ptr
  %l56 = alloca %"compiler/scope:Val"
  %l59 = alloca { i64, [2 x i64] }
  %l60 = alloca { i64, [2 x i64] }
  %rv = alloca i1
  %t87 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/typed:Local" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v0, ptr %t1, ptr %a3)
  store ptr %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l9, !tbaa !29
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l4, !tbaa !29
  store ptr %t7, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t8 = load ptr, ptr %l10, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 18}
  %t14 = icmp eq i64 %t12, 5
  store i1 %t14, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l11, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l5, !tbaa !29
  br label %bb6
bb5:
  br label %bb27
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load ptr, ptr %l5, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Promote", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %t26)
  store i32 %t28, ptr %l19
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = load i32, ptr %l19, !tbaa !23
  %t31 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %t29, i32 %t30)
  store i1 %t31, ptr %l20
  br label %bb8
bb8:
  %t32 = load i1, ptr %l20, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Promote", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t41 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v0, ptr %t33, ptr %t37)
  store i1 %t41, ptr %l26
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  %t42 = load i1, ptr %l26, !tbaa !21
  store i1 %t42, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l21, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Promote", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t51 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLands(ptr %v0, ptr %v0, ptr %t44, ptr %t48)
  store i1 %t51, ptr %l31
  br label %bb15
bb14:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb16
bb15:
  %t52 = load i1, ptr %l31, !tbaa !21
  store i1 %t52, ptr %l27, !tbaa !21
  br label %bb16
bb16:
  %t53 = load i1, ptr %l27, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l34, !tbaa !29
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Promote", ptr %t58, i32 0, i32 1
  %t61 = load i32, ptr %t60, !tbaa !23
  store i32 %t61, ptr %l36, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 3
  %t64 = load i32, ptr %t63, !tbaa !23
  %t67 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t62, i32 %t64)
  store { i64, [2 x i64] } %t67, ptr %l39
  br label %bb20
bb20:
  %t68 = load ptr, ptr %l5, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Promote", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %t71)
  store %"compiler/source:Span" %t73, ptr %l42
  br label %bb21
bb21:
  %t74 = load ptr, ptr %l34, !tbaa !29
  %t75 = load i32, ptr %l36, !tbaa !23
  %t76 = load { i64, [2 x i64] }, ptr %l39
  %t77 = load %"compiler/source:Span", ptr %l42
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %t74, i32 %t75, { i64, [2 x i64] } %t76, %"compiler/source:Span" %t77)
  br label %bb22
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Scoper", ptr %t78, i32 0, i32 134
  store i1 true, ptr %t80, !tbaa !21
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Promote", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [2 x i64] }, ptr %t87, i32 0, i32 0
  store i64 0, ptr %t88
  %t89 = load { i64, [2 x i64] }, ptr %t87
  %t93 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v0, ptr %t81, ptr %t85, { i64, [2 x i64] } %t89)
  store %"compiler/scope:Val" %t93, ptr %l49
  br label %bb23
bb23:
  %t94 = load %"compiler/scope:Val", ptr %l49
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/scope:Scoper", ptr %t95, i32 0, i32 134
  store i1 false, ptr %t97, !tbaa !21
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/scope:Scoper", ptr %t98, i32 0, i32 35
  store ptr %t100, ptr %l52, !tbaa !29
  %t103 = sext i32 %a1 to i64
  store i64 %t103, ptr %l54, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l55, !tbaa !29
  store %"compiler/scope:Val" %t94, ptr %l56
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 3
  %t108 = load i32, ptr %t107, !tbaa !23
  %t111 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t106, i32 %t108)
  store { i64, [2 x i64] } %t111, ptr %l59
  br label %bb24
bb24:
  %t112 = load ptr, ptr %l55, !tbaa !29
  %t113 = load %"compiler/scope:Val", ptr %l56
  %t114 = load { i64, [2 x i64] }, ptr %l59
  %t115 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %t112, %"compiler/scope:Val" %t113, { i64, [2 x i64] } %t114)
  store { i64, [2 x i64] } %t115, ptr %l60
  br label %bb25
bb25:
  %t116 = load ptr, ptr %l52, !tbaa !29
  %t117 = load i64, ptr %l54, !tbaa !24
  %t118 = load { i64, [2 x i64] }, ptr %l60
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t116, i64 %t117, { i64, [2 x i64] } %t118)
  br label %bb26
bb26:
  store i1 true, ptr %rv
  br label %ret
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_61640150a4b32f83_6e916208fadc43b7)
  unreachable
bb32:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhyNot(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:markRead"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/scope:sumRead"
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca ptr
  %l22 = alloca i1
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca %"compiler/scope:markRead"
  %l43 = alloca { i64, [1 x i64] }
  %l45 = alloca { i64, [1 x i64] }
  %l47 = alloca i1
  %l49 = alloca i64
  %l50 = alloca i64
  %l54 = alloca ptr
  %l56 = alloca { i64, [2 x i64] }
  %l58 = alloca { i64, ptr }
  %l63 = alloca i64
  %l65 = alloca i64
  %l70 = alloca %"compiler/scope:sumRead"
  %l73 = alloca ptr
  %l75 = alloca i1
  %l77 = alloca i64
  %l81 = alloca ptr
  %l83 = alloca { i64, [2 x i64] }
  %l86 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l95 = alloca i64
  %l96 = alloca { i64, ptr }
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.builder
  %s10room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 270
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Hcb6fae2338a785d6927a8587899f4e85(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  store ptr %t9, ptr %l14, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l16
  br label %bb2
bb2:
  %t13 = load i64, ptr %l16, !tbaa !24
  %t14 = sub i64 %t13, 1
  %t15 = load ptr, ptr %l14, !tbaa !29
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H665b0c71977ef42adbc51fe96e6e85ee(ptr %v0, ptr %v0, ptr %t15, i64 %t14)
  store ptr %t17, ptr %l18
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l18, !tbaa !29
  store ptr %t18, ptr %l3, !tbaa !29
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/scope:compRun", ptr %t19, i32 0, i32 7
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb4, label %bb5
bb4:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 225
  %t29 = load i1, ptr %t28, !tbaa !21
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l22, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l22, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t34, ptr %l27, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  store i64 %t36, ptr %l28, !tbaa !24
  %t37 = load i64, ptr %l28, !tbaa !24
  %t38 = mul i64 %t37, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l29, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = load i64, ptr %l28, !tbaa !24
  %t47 = mul i64 %t46, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t43, ptr %t45, i64 %t47, i1 false)
  %t48 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t48, ptr %l27, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t49, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t52 = getelementptr %"compiler/scope:compRun", ptr %t50, i32 0, i32 8
  store ptr %t52, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  %t54 = load i64, ptr %l5, !tbaa !24
  store i64 %t54, ptr %l32, !tbaa !24
  %t55 = load ptr, ptr %l4, !tbaa !29
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eLen_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %t55)
  store i64 %t57, ptr %l34
  br label %bb11
bb11:
  %t58 = load i64, ptr %l32, !tbaa !24
  %t59 = load i64, ptr %l34, !tbaa !24
  %t60 = icmp slt i64 %t58, %t59
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb12, label %bb13
bb12:
  br label %bb24
bb13:
  br label %bb14
bb14:
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t65 = load i64, ptr %l5, !tbaa !24
  %t68 = call %"compiler/scope:markRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eAt_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %t64, i64 %t65)
  store %"compiler/scope:markRead" %t68, ptr %l39
  br label %bb15
bb15:
  %t69 = load %"compiler/scope:markRead", ptr %l39
  store %"compiler/scope:markRead" %t69, ptr %l6
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/scope:markRead", ptr %l6, i32 0, i32 0
  %t72 = load i64, ptr %t71, !tbaa !24
  %t73 = getelementptr %"compiler/scope:markRead", ptr %l6, i32 0, i32 1
  %t74 = load i64, ptr %t73, !tbaa !24
  %t78 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMarkOf(ptr %v0, ptr %t70, i64 %t72, i64 %t74)
  store { i64, [1 x i64] } %t78, ptr %l43
  br label %bb16
bb16:
  %t79 = getelementptr %"compiler/scope:markRead", ptr %l6, i32 0, i32 2
  %t80 = load { i64, [1 x i64] }, ptr %t79
  store { i64, [1 x i64] } %t80, ptr %l45
  %t83 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aMark(ptr %l43, ptr %l45)
  store i1 %t83, ptr %l47
  br label %bb17
bb17:
  %t84 = load i1, ptr %l47, !tbaa !21
  %t85 = xor i1 %t84, true
  br i1 %t85, label %bb18, label %bb19
bb18:
  %t87 = getelementptr %"compiler/scope:markRead", ptr %l6, i32 0, i32 0
  %t88 = load i64, ptr %t87, !tbaa !24
  store i64 %t88, ptr %l49, !tbaa !24
  %t89 = getelementptr %"compiler/scope:markRead", ptr %l6, i32 0, i32 1
  %t90 = load i64, ptr %t89, !tbaa !24
  store i64 %t90, ptr %l50, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scope:Scoper", ptr %t91, i32 0, i32 1
  %t94 = getelementptr %"compiler/scope:markRead", ptr %l6, i32 0, i32 0
  %t95 = load i64, ptr %t94, !tbaa !24
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t93, i64 %t95)
  store ptr %t98, ptr %l54
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t99 = load ptr, ptr %l54, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Body", ptr %t99, i32 0, i32 1
  %t102 = load { i64, [2 x i64] }, ptr %t101
  store { i64, [2 x i64] } %t102, ptr %l56
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t103 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t103, i64 %t104)
  %t105 = load i64, ptr %l49, !tbaa !24
  %t106 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t107 = call i64 @__olang_fmt_i64(ptr %t106, i64 %t105)
  call void @__olang_sb_add(ptr %s5, i64 %t107)
  %t108 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t108, i64 %t109)
  %t110 = load i64, ptr %l50, !tbaa !24
  %t111 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t112 = call i64 @__olang_fmt_i64(ptr %t111, i64 %t110)
  call void @__olang_sb_add(ptr %s5, i64 %t112)
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t113, i64 %t114)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aBodyOf(ptr %s5, ptr %l56, i64 0)
  br label %bb21
bb21:
  %t116 = load ptr, ptr %s5
  %t117 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t118 = load i64, ptr %t117
  %t119 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t118)
  call void @olang_textcopy(ptr %t119, ptr %t116, i64 %t118)
  %t120 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  store { i64, ptr } %t121, ptr %l58, !tbaa !27
  %t122 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t123 = load ptr, ptr %t122
  %t124 = icmp ne ptr %t123, null
  br i1 %t124, label %sbgrew.125, label %sbdone.126
sbgrew.125:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.126
sbdone.126:
  %t127 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t127, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t128 = load i64, ptr %l5, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l5, !tbaa !24
  br label %bb10
bb24:
  %t132 = load ptr, ptr %l3, !tbaa !29
  %t134 = getelementptr %"compiler/scope:compRun", ptr %t132, i32 0, i32 9
  store ptr %t134, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb25
bb25:
  %t136 = load i64, ptr %l8, !tbaa !24
  store i64 %t136, ptr %l63, !tbaa !24
  %t137 = load ptr, ptr %l7, !tbaa !29
  %t139 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2eLen_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %t137)
  store i64 %t139, ptr %l65
  br label %bb26
bb26:
  %t140 = load i64, ptr %l63, !tbaa !24
  %t141 = load i64, ptr %l65, !tbaa !24
  %t142 = icmp slt i64 %t140, %t141
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb27, label %bb28
bb27:
  br label %bb41
bb28:
  br label %bb29
bb29:
  %t146 = load ptr, ptr %l7, !tbaa !29
  %t147 = load i64, ptr %l8, !tbaa !24
  %t150 = call %"compiler/scope:sumRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2eAt_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %v0, ptr %t146, i64 %t147)
  store %"compiler/scope:sumRead" %t150, ptr %l70
  br label %bb30
bb30:
  %t151 = load %"compiler/scope:sumRead", ptr %l70
  store %"compiler/scope:sumRead" %t151, ptr %l9
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 0
  %t154 = load i64, ptr %t153, !tbaa !24
  %t157 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t152, i64 %t154)
  store ptr %t157, ptr %l73
  br label %bb31
bb31:
  %t158 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t160 = load ptr, ptr %l73, !tbaa !29
  %t162 = call i1 @compiler_2fscope_2esameSummary(ptr %v0, ptr %v0, ptr %t160, ptr %t159)
  store i1 %t162, ptr %l75
  br label %bb32
bb32:
  %t163 = load i1, ptr %l75, !tbaa !21
  %t164 = xor i1 %t163, true
  br i1 %t164, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s9
  %t166 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 0
  %t167 = load i64, ptr %t166, !tbaa !24
  store i64 %t167, ptr %l77, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/scope:Scoper", ptr %t168, i32 0, i32 1
  %t171 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 0
  %t172 = load i64, ptr %t171, !tbaa !24
  %t175 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t170, i64 %t172)
  store ptr %t175, ptr %l81
  br label %bb35
bb34:
  br label %bb39
bb35:
  %t176 = load ptr, ptr %l81, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Body", ptr %t176, i32 0, i32 1
  %t179 = load { i64, [2 x i64] }, ptr %t178
  store { i64, [2 x i64] } %t179, ptr %l83
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 0
  %t182 = load i64, ptr %t181, !tbaa !24
  %t185 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v0, ptr %t180, i64 %t182)
  store ptr %t185, ptr %l86
  br label %bb36
bb36:
  %t186 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t188 = load ptr, ptr %l86, !tbaa !29
  %t190 = call { i64, ptr } @compiler_2fscope_2esummaryDiff(ptr %v0, ptr %v0, ptr %s9, ptr %t188, ptr %t187)
  store { i64, ptr } %t190, ptr %l88
  br label %bb37
bb37:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s10
  store ptr %s10room, ptr %s10
  %t191 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t192 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t191, i64 %t192)
  %t193 = load i64, ptr %l77, !tbaa !24
  %t194 = call ptr @__olang_sb_room(ptr %s10, i64 24)
  %t195 = call i64 @__olang_fmt_i64(ptr %t194, i64 %t193)
  call void @__olang_sb_add(ptr %s10, i64 %t195)
  %t196 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t197 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t196, i64 %t197)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aBodyOf(ptr %s10, ptr %l83, i64 0)
  br label %bb38
bb38:
  %t199 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t199, i64 %t200)
  %t201 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t201, 1
  %t203 = extractvalue { i64, ptr } %t201, 0
  call void @__olang_sb_put(ptr %s10, ptr %t202, i64 %t203)
  %t204 = load ptr, ptr %s10
  %t205 = getelementptr %olang.builder, ptr %s10, i32 0, i32 1
  %t206 = load i64, ptr %t205
  %t207 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t206)
  call void @olang_textcopy(ptr %t207, ptr %t204, i64 %t206)
  %t208 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  store { i64, ptr } %t209, ptr %l90, !tbaa !27
  %t210 = getelementptr %olang.builder, ptr %s10, i32 0, i32 3
  %t211 = load ptr, ptr %t210
  %t212 = icmp ne ptr %t211, null
  br i1 %t212, label %sbgrew.213, label %sbdone.214
sbgrew.213:
  call void @__olang_sb_done(ptr %s10)
  br label %sbdone.214
sbdone.214:
  call void @__olang_scope_close(ptr %s9)
  %t215 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t215, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t216 = load i64, ptr %l8, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l8, !tbaa !24
  br label %bb25
bb41:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l93, !tbaa !27
  %t220 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t220, ptr %l94, !tbaa !27
  %t221 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  store i64 %t222, ptr %l95, !tbaa !24
  %t223 = load i64, ptr %l95, !tbaa !24
  %t224 = mul i64 %t223, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t224)
  %t226 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  store { i64, ptr } %t227, ptr %l96, !tbaa !27
  %t228 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = load i64, ptr %l95, !tbaa !24
  %t233 = mul i64 %t232, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t229, ptr %t231, i64 %t233, i1 false)
  %t234 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t234, ptr %l94, !tbaa !27
  %t235 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t235, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2eflThroughRefExpr(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l1, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %t21)
  store i1 %t23, ptr %l14
  br label %bb9
bb9:
  %t24 = load i1, ptr %l14, !tbaa !21
  store i1 %t24, ptr %l6, !tbaa !21
  br label %bb22
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l15, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 3
  store i1 %t32, ptr %l16, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l16, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l2, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %t40)
  store i1 %t42, ptr %l22
  br label %bb16
bb16:
  %t43 = load i1, ptr %l22, !tbaa !21
  store i1 %t43, ptr %l6, !tbaa !21
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_33075d27706b8b52_4b999537a5d43dd6)
  unreachable
bb22:
  %t44 = load i1, ptr %l6, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fscope_2eintsOfWord(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca i1
  %l10 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i32
  %l36 = alloca i64
  %l37 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i1, ptr %l7, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l10, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t9, 0
  store i64 %t12, ptr %l13, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l14, !tbaa !24
  %t15 = icmp sge i64 1, 0
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load i64, ptr %l13, !tbaa !24
  %t18 = icmp sle i64 1, %t17
  br i1 %t18, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_f40a17f5c07f768d_75cb4ba7407e9321)
  unreachable
bb7:
  %t20 = load i64, ptr %l13, !tbaa !24
  %t21 = load i64, ptr %l14, !tbaa !24
  %t22 = icmp sle i64 %t20, %t21
  br i1 %t22, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_f40a17f5c07f768d_75cb4ba7407e9321)
  unreachable
bb9:
  %t24 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l13, !tbaa !24
  %t27 = getelementptr i8, ptr %t25, i64 1
  %t28 = sub i64 %t26, 1
  %t29 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  %t32 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s2, ptr %s2, { i64, ptr } %t30, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store { i64, ptr } %t32, ptr %l19
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f40a17f5c07f768d_75cb4ba7407e9321)
  unreachable
bb11:
  %t33 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t33, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb14:
  br label %bb15
bb15:
  %t46 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t46, ptr %l26, !tbaa !27
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %t50, i64 %t47
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !37
  store { i64, ptr } %t52, ptr %l5, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s3, { i64, ptr } %t54, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t56, ptr %l30
  br label %bb16
bb16:
  %t57 = load i1, ptr %l30, !tbaa !21
  br i1 %t57, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb18:
  br label %bb19
bb19:
  store ptr %a1, ptr %l31, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t59, ptr %l33, !tbaa !27
  %t60 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s3, i64 10)
  %t61 = extractvalue { i32, i64 } %t60, 1
  %t62 = extractvalue { i32, i64 } %t60, 0
  store i32 %t62, ptr %l35
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb21, label %ok.64, !prof !99
ok.64:
  store i64 %t61, ptr %l34
  br label %bb20
bb20:
  %t65 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t66 = load i64, ptr %l34, !tbaa !24
  %t67 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s2, { i64, ptr } %t65, i64 %t66)
  %t68 = extractvalue { i32, i64 } %t67, 1
  %t69 = extractvalue { i32, i64 } %t67, 0
  store i32 %t69, ptr %l37
  %t70 = icmp ne i32 %t69, 0
  br i1 %t70, label %bb24, label %ok.71, !prof !99
ok.71:
  store i64 %t68, ptr %l36
  br label %bb23
bb21:
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb23:
  %t73 = load i64, ptr %l36, !tbaa !24
  store i64 %t73, ptr %l32, !tbaa !24
  br label %bb25
bb24:
  br label %bb22
bb25:
  %t74 = load ptr, ptr %l31, !tbaa !29
  %t75 = load i64, ptr %l32, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t74, i64 %t75)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb27:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l3, !tbaa !24
  br label %bb12
bb28:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2emarkWord(ptr %v0, { i64, [1 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [1 x i64] }
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, [1 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  br label %bb25
bb4:
  %t8 = load { i64, [1 x i64] }, ptr %l0
  %t10 = extractvalue { i64, [1 x i64] } %t8, 0
  %t11 = icmp eq i64 %t10, 1
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t13, ptr %l2, !tbaa !27
  br label %bb25
bb8:
  %t15 = load { i64, [1 x i64] }, ptr %l0
  %t17 = extractvalue { i64, [1 x i64] } %t15, 0
  %t18 = icmp eq i64 %t17, 2
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t20 = getelementptr { i64, [1 x i64] }, ptr %l0, i32 0, i32 1
  %t21 = getelementptr { i32 }, ptr %t20, i32 0, i32 0
  %t22 = load i32, ptr %t21
  store i32 %t22, ptr %l1, !tbaa !23
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t24 = load i32, ptr %l1, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t30 = call i64 @__olang_fmt_i64(ptr null, i64 %t26)
  %t31 = add i64 %t28, %t30
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t27, i64 %t28)
  %t33 = getelementptr i8, ptr %t32, i64 %t28
  %t34 = call i64 @__olang_fmt_i64(ptr %t33, i64 %t26)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t32, 1
  store { i64, ptr } %t36, ptr %l2, !tbaa !27
  br label %bb25
bb12:
  %t38 = load { i64, [1 x i64] }, ptr %l0
  %t40 = extractvalue { i64, [1 x i64] } %t38, 0
  %t41 = icmp eq i64 %t40, 3
  br i1 %t41, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t43, ptr %l2, !tbaa !27
  br label %bb25
bb16:
  %t45 = load { i64, [1 x i64] }, ptr %l0
  %t47 = extractvalue { i64, [1 x i64] } %t45, 0
  %t48 = icmp eq i64 %t47, 4
  br i1 %t48, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t50, ptr %l2, !tbaa !27
  br label %bb25
bb20:
  %t52 = load { i64, [1 x i64] }, ptr %l0
  %t54 = extractvalue { i64, [1 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 5
  br i1 %t55, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t57, ptr %l2, !tbaa !27
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_ab6985486f779d4_c20639db93a47db0)
  unreachable
bb25:
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l29, !tbaa !24
  %t61 = load i64, ptr %l29, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l30, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = load i64, ptr %l29, !tbaa !24
  %t71 = mul i64 %t70, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t67, ptr %t69, i64 %t71, i1 false)
  %t72 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t72, ptr %l2, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fscope_2emergeNode(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/scope:instNode"
  %l6 = alloca %"compiler/scope:instNode"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"compiler/scope:fnRecs"
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"compiler/scope:fnRecs"
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l26 = alloca %"compiler/scope:instNode"
  %l28 = alloca %"compiler/scope:instNode"
  %l32 = alloca %"compiler/scope:instNode"
  %l34 = alloca %"compiler/scope:instNode"
  %l35 = alloca ptr
  %l36 = alloca i32
  %l38 = alloca i64
  %l39 = alloca i64
  %l41 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i64
  %l66 = alloca i64
  %l68 = alloca i64
  %l72 = alloca %"compiler/scope:fnRecs"
  %l74 = alloca %"compiler/scope:fnRecs"
  %l75 = alloca ptr
  %l78 = alloca %"compiler/scope:fnRecs"
  %l80 = alloca %"compiler/scope:fnRecs"
  %l86 = alloca %"compiler/scope:fnRecs"
  %l88 = alloca %"compiler/scope:fnRecs"
  %l90 = alloca i64
  %l92 = alloca i1
  %l95 = alloca %"compiler/scope:fnRecs"
  %l97 = alloca %"compiler/scope:fnRecs"
  %l99 = alloca i64
  %l101 = alloca %"compiler/scope:fnRecs"
  %l103 = alloca %"compiler/scope:fnRecs"
  %l107 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca i64
  %l111 = alloca %"compiler/scope:fnRecs"
  %l113 = alloca %"compiler/scope:fnRecs"
  %l116 = alloca i64
  %l118 = alloca i1
  %l121 = alloca i64
  %l125 = alloca ptr
  %l128 = alloca i64
  %l129 = alloca ptr
  %l132 = alloca i64
  %l134 = alloca i64
  %l138 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:instTree", ptr %t1, i32 0, i32 0
  %t7 = call %"compiler/scope:instNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eAt_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/scope:instNode" %t7, ptr %l26
  br label %bb1
bb1:
  %t9 = call %"compiler/scope:instNode" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstNode(ptr %s0, ptr %l26)
  store %"compiler/scope:instNode" %t9, ptr %l28
  br label %bb2
bb2:
  %t10 = load %"compiler/scope:instNode", ptr %l28
  store %"compiler/scope:instNode" %t10, ptr %l5
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/scope:instTree", ptr %t11, i32 0, i32 0
  %t17 = call %"compiler/scope:instNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eAt_3ccompiler_2fscope_3ainstNode_3e(ptr %v1, ptr %v1, ptr %t13, i64 %a3)
  store %"compiler/scope:instNode" %t17, ptr %l32
  br label %bb3
bb3:
  %t19 = call %"compiler/scope:instNode" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstNode(ptr %s0, ptr %l32)
  store %"compiler/scope:instNode" %t19, ptr %l34
  br label %bb4
bb4:
  %t20 = load %"compiler/scope:instNode", ptr %l34
  store %"compiler/scope:instNode" %t20, ptr %l6
  %t21 = load ptr, ptr %l4, !tbaa !29
  store ptr %t21, ptr %l35, !tbaa !29
  %t22 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  store i32 %t23, ptr %l36, !tbaa !23
  %t24 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 1
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eLen_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %t24)
  store i64 %t26, ptr %l38
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l35, !tbaa !29
  %t28 = load i32, ptr %l36, !tbaa !23
  %t29 = load i64, ptr %l38, !tbaa !24
  %t30 = call i64 @compiler_2fscope_2enewNode(ptr %v2, ptr %t27, i32 %t28, i64 %t29)
  store i64 %t30, ptr %l39
  br label %bb6
bb6:
  %t31 = load i64, ptr %l39, !tbaa !24
  store i64 %t31, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t32 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 1
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eLen_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %t32)
  store i64 %t34, ptr %l41
  br label %bb7
bb7:
  %t35 = load i64, ptr %l41, !tbaa !24
  store i64 %t35, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t36 = load i64, ptr %l9, !tbaa !24
  %t37 = load i64, ptr %l8, !tbaa !24
  %t40 = icmp sgt i64 %t36, %t37
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load i64, ptr %l10, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb13
bb10:
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = sub i64 %t46, %t47
  %t51 = load i64, ptr %l10, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = sub i64 %t54, 1
  %t57 = load i64, ptr %l10, !tbaa !24
  %t60 = sdiv i64 %t56, %t57
  store i64 %t60, ptr %l48, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb12
bb12:
  %t62 = load i64, ptr %l48, !tbaa !24
  store i64 %t62, ptr %l45, !tbaa !24
  br label %bb13
bb13:
  %t63 = load i64, ptr %l45, !tbaa !24
  store i64 %t63, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t64 = load i64, ptr %l12, !tbaa !24
  %t65 = load i64, ptr %l11, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb57
bb16:
  br label %bb17
bb17:
  %t72 = load i64, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l12, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  %t77 = mul i64 %t73, %t74
  %t80 = add i64 %t72, %t77
  store i64 %t80, ptr %l13, !tbaa !24
  %t82 = load i64, ptr %l13, !tbaa !24
  store i64 %t82, ptr %l66, !tbaa !24
  %t83 = getelementptr %"compiler/scope:instNode", ptr %l6, i32 0, i32 1
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eLen_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %t83)
  store i64 %t85, ptr %l68
  br label %bb18
bb18:
  %t86 = load i64, ptr %l66, !tbaa !24
  %t87 = load i64, ptr %l68, !tbaa !24
  %t88 = icmp sge i64 %t86, %t87
  br i1 %t88, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb57
bb20:
  br label %bb21
bb21:
  %t90 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 1
  %t91 = load i64, ptr %l13, !tbaa !24
  %t94 = call %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %s0, ptr %t90, i64 %t91)
  store %"compiler/scope:fnRecs" %t94, ptr %l72
  br label %bb22
bb22:
  %t96 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s2, ptr %l72)
  store %"compiler/scope:fnRecs" %t96, ptr %l74
  br label %bb23
bb23:
  %t97 = load %"compiler/scope:fnRecs", ptr %l74
  store %"compiler/scope:fnRecs" %t97, ptr %l14
  store ptr %l14, ptr %l75, !tbaa !29
  %t98 = getelementptr %"compiler/scope:instNode", ptr %l6, i32 0, i32 1
  %t99 = load i64, ptr %l13, !tbaa !24
  %t102 = call %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %s0, ptr %t98, i64 %t99)
  store %"compiler/scope:fnRecs" %t102, ptr %l78
  br label %bb24
bb24:
  %t104 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s2, ptr %l78)
  store %"compiler/scope:fnRecs" %t104, ptr %l80
  br label %bb25
bb25:
  %t105 = load %"compiler/scope:fnRecs", ptr %l80
  %t106 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 104, i64 8)
  store %"compiler/scope:fnRecs" %t105, ptr %t106
  %t107 = load ptr, ptr %l75, !tbaa !29
  call void @compiler_2fscope_2emergeRecs(ptr %s2, ptr %s0, ptr %t107, ptr %t106)
  br label %bb26
bb26:
  %t109 = load i64, ptr %l7, !tbaa !24
  store i64 %t109, ptr %l15, !tbaa !24
  %t111 = load i64, ptr %l13, !tbaa !24
  store i64 %t111, ptr %l16, !tbaa !24
  %t113 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 1
  %t114 = load i64, ptr %l13, !tbaa !24
  %t117 = call %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %s0, ptr %t113, i64 %t114)
  store %"compiler/scope:fnRecs" %t117, ptr %l86
  br label %bb27
bb27:
  %t119 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s2, ptr %l86)
  store %"compiler/scope:fnRecs" %t119, ptr %l88
  br label %bb28
bb28:
  %t120 = getelementptr %"compiler/scope:fnRecs", ptr %l88, i32 0, i32 0
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t120)
  store i64 %t122, ptr %l90
  br label %bb29
bb29:
  %t123 = load i64, ptr %l90, !tbaa !24
  %t124 = icmp sgt i64 %t123, 0
  br i1 %t124, label %bb30, label %bb31
bb30:
  %t126 = getelementptr %"compiler/scope:instNode", ptr %l6, i32 0, i32 1
  %t127 = load i64, ptr %l13, !tbaa !24
  %t130 = call %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %s0, ptr %t126, i64 %t127)
  store %"compiler/scope:fnRecs" %t130, ptr %l95
  br label %bb32
bb31:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb35
bb32:
  %t132 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s2, ptr %l95)
  store %"compiler/scope:fnRecs" %t132, ptr %l97
  br label %bb33
bb33:
  %t133 = getelementptr %"compiler/scope:fnRecs", ptr %l97, i32 0, i32 0
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t133)
  store i64 %t135, ptr %l99
  br label %bb34
bb34:
  %t136 = load i64, ptr %l99, !tbaa !24
  %t137 = icmp sgt i64 %t136, 0
  store i1 %t137, ptr %l92, !tbaa !21
  br label %bb35
bb35:
  %t139 = load i1, ptr %l92, !tbaa !21
  br i1 %t139, label %bb36, label %bb37
bb36:
  %t140 = load %"compiler/scope:fnRecs", ptr %l14
  store %"compiler/scope:fnRecs" %t140, ptr %l101
  br label %bb39
bb37:
  %t142 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %s2)
  store %"compiler/scope:fnRecs" %t142, ptr %l103
  br label %bb38
bb38:
  %t143 = load %"compiler/scope:fnRecs", ptr %l103
  store %"compiler/scope:fnRecs" %t143, ptr %l101
  br label %bb39
bb39:
  %t144 = load %"compiler/scope:fnRecs", ptr %l101
  store %"compiler/scope:fnRecs" %t144, ptr %l17
  %t145 = load ptr, ptr %l4, !tbaa !29
  %t147 = getelementptr %"compiler/scope:instTree", ptr %t145, i32 0, i32 0
  %t148 = load i64, ptr %l15, !tbaa !24
  %t151 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v2, ptr %v2, ptr %t147, i64 %t148)
  store ptr %t151, ptr %l107
  br label %bb40
bb40:
  %t152 = load ptr, ptr %l107, !tbaa !29
  %t155 = getelementptr %"compiler/scope:instNode", ptr %t152, i32 0, i32 1
  store ptr %t155, ptr %l109, !tbaa !29
  %t156 = load i64, ptr %l16, !tbaa !24
  store i64 %t156, ptr %l110, !tbaa !24
  %t157 = load %"compiler/scope:fnRecs", ptr %l17
  store %"compiler/scope:fnRecs" %t157, ptr %l111
  %t159 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s2, ptr %l111)
  store %"compiler/scope:fnRecs" %t159, ptr %l113
  br label %bb41
bb41:
  %t160 = load ptr, ptr %l109, !tbaa !29
  %t161 = load i64, ptr %l110, !tbaa !24
  %t162 = load %"compiler/scope:fnRecs", ptr %l113
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eSetAt_3ccompiler_2fscope_3afnRecs_3e(ptr %v2, ptr %s2, ptr %t160, i64 %t161, %"compiler/scope:fnRecs" %t162)
  br label %bb42
bb42:
  %t163 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 2
  %t164 = load i64, ptr %l13, !tbaa !24
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t163, i64 %t164)
  store i64 %t167, ptr %l116
  br label %bb43
bb43:
  %t168 = load i64, ptr %l116, !tbaa !24
  %t169 = icmp sge i64 %t168, 0
  br i1 %t169, label %bb44, label %bb45
bb44:
  %t171 = getelementptr %"compiler/scope:instNode", ptr %l6, i32 0, i32 2
  %t172 = load i64, ptr %l13, !tbaa !24
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t171, i64 %t172)
  store i64 %t175, ptr %l121
  br label %bb46
bb45:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb47
bb46:
  %t176 = load i64, ptr %l121, !tbaa !24
  %t177 = icmp sge i64 %t176, 0
  store i1 %t177, ptr %l118, !tbaa !21
  br label %bb47
bb47:
  %t179 = load i1, ptr %l118, !tbaa !21
  br i1 %t179, label %bb48, label %bb49
bb48:
  %t180 = load i64, ptr %l7, !tbaa !24
  store i64 %t180, ptr %l19, !tbaa !24
  %t182 = load i64, ptr %l13, !tbaa !24
  store i64 %t182, ptr %l20, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  store ptr %t184, ptr %l125, !tbaa !29
  %t185 = getelementptr %"compiler/scope:instNode", ptr %l5, i32 0, i32 2
  %t186 = load i64, ptr %l13, !tbaa !24
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t185, i64 %t186)
  store i64 %t189, ptr %l128
  br label %bb50
bb49:
  br label %bb55
bb50:
  %t190 = load ptr, ptr %l2, !tbaa !29
  store ptr %t190, ptr %l129, !tbaa !29
  %t191 = getelementptr %"compiler/scope:instNode", ptr %l6, i32 0, i32 2
  %t192 = load i64, ptr %l13, !tbaa !24
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t191, i64 %t192)
  store i64 %t195, ptr %l132
  br label %bb51
bb51:
  %t196 = load ptr, ptr %l4, !tbaa !29
  %t197 = load ptr, ptr %l125, !tbaa !29
  %t198 = load i64, ptr %l128, !tbaa !24
  %t199 = load ptr, ptr %l129, !tbaa !29
  %t200 = load i64, ptr %l132, !tbaa !24
  %t202 = call i64 @compiler_2fscope_2emergeNode(ptr %v0, ptr %v1, ptr %v2, ptr %t197, i64 %t198, ptr %t199, i64 %t200, ptr %t196)
  store i64 %t202, ptr %l134
  br label %bb52
bb52:
  %t203 = load i64, ptr %l134, !tbaa !24
  store i64 %t203, ptr %l21, !tbaa !24
  %t204 = load ptr, ptr %l4, !tbaa !29
  %t206 = getelementptr %"compiler/scope:instTree", ptr %t204, i32 0, i32 0
  %t207 = load i64, ptr %l19, !tbaa !24
  %t210 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v2, ptr %v2, ptr %t206, i64 %t207)
  store ptr %t210, ptr %l138
  br label %bb53
bb53:
  %t211 = load ptr, ptr %l138, !tbaa !29
  %t214 = getelementptr %"compiler/scope:instNode", ptr %t211, i32 0, i32 2
  %t215 = load i64, ptr %l20, !tbaa !24
  %t216 = load i64, ptr %l21, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v2, ptr %t214, i64 %t215, i64 %t216)
  br label %bb54
bb54:
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s2)
  br label %bb56
bb56:
  %t220 = load i64, ptr %l12, !tbaa !24
  %t222 = add i64 %t220, 1
  store i64 %t222, ptr %l12, !tbaa !24
  br label %bb14
bb57:
  %t224 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t224, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2enewNode(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/scope:instNode"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"compiler/scope:instNode"
  %l16 = alloca i64
  %l19 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca %"compiler/scope:fnRecs"
  %l43 = alloca ptr
  %l44 = alloca %"compiler/scope:instNode"
  %l46 = alloca %"compiler/scope:instNode"
  %l49 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/scope:instNode" @compiler_2fscope_3ainstNode_2ector(ptr %s0, i32 %a1)
  store %"compiler/scope:instNode" %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load %"compiler/scope:instNode", ptr %l11
  store %"compiler/scope:instNode" %t4, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
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
  store i64 0, ptr %l16, !tbaa !24
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
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l16, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l9, !tbaa !24
  %t53 = getelementptr %"compiler/scope:instNode", ptr %l3, i32 0, i32 1
  store ptr %t53, ptr %l37, !tbaa !29
  %t54 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %s2)
  store %"compiler/scope:fnRecs" %t54, ptr %l38
  br label %bb12
bb12:
  %t55 = load ptr, ptr %l37, !tbaa !29
  %t56 = load %"compiler/scope:fnRecs", ptr %l38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2ePush_3ccompiler_2fscope_3afnRecs_3e(ptr %s0, ptr %s2, ptr %t55, %"compiler/scope:fnRecs" %t56)
  br label %bb13
bb13:
  %t57 = getelementptr %"compiler/scope:instNode", ptr %l3, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t57, i64 -1)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t59 = load i64, ptr %l8, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l8, !tbaa !24
  br label %bb8
bb16:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:instTree", ptr %t63, i32 0, i32 0
  store ptr %t65, ptr %l43, !tbaa !29
  %t66 = load %"compiler/scope:instNode", ptr %l3
  store %"compiler/scope:instNode" %t66, ptr %l44
  %t68 = call %"compiler/scope:instNode" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3ainstNode(ptr %s0, ptr %l44)
  store %"compiler/scope:instNode" %t68, ptr %l46
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = load %"compiler/scope:instNode", ptr %l46
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2ePush_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %s0, ptr %t69, %"compiler/scope:instNode" %t70)
  br label %bb18
bb18:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:instTree", ptr %t71, i32 0, i32 0
  %t75 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eLen_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %t73)
  store i64 %t75, ptr %l49
  br label %bb19
bb19:
  %t76 = load i64, ptr %l49, !tbaa !24
  %t77 = sub i64 %t76, 1
  call void @__olang_scope_close(ptr %s0)
  store i64 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2eownField(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca i1
  %rv = alloca i64
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
  br label %bb21
bb5:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 2
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t41 = call i1 @compiler_2fscope_2eisParamRead(ptr %v0, ptr %t37, i64 %a1)
  store i1 %t41, ptr %l21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l21, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load i64, ptr %l3, !tbaa !24
  store i64 %t43, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_97a3337844e24daf_abbacdff6e992493)
  unreachable
bb20:
  br label %bb26
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_21f109796fa0acee_6e7b91baaed0fa92)
  unreachable
bb26:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2eownView(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %t16, i64 %t17)
  store i1 %t20, ptr %l14
  br label %bb6
bb6:
  %t21 = load i1, ptr %l14, !tbaa !21
  store i1 %t21, ptr %l5, !tbaa !21
  br label %bb26
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 18}
  %t29 = icmp eq i64 %t27, 10
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l16, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Slice", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = call i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %t40, i64 %t41)
  store i1 %t44, ptr %l24
  br label %bb13
bb13:
  %t45 = load i1, ptr %l24, !tbaa !21
  store i1 %t45, ptr %l5, !tbaa !21
  br label %bb26
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 18}
  %t53 = icmp eq i64 %t51, 17
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = call i1 @compiler_2fscope_2eownView(ptr %v0, ptr %t61, i64 %t62)
  store i1 %t65, ptr %l33
  br label %bb20
bb20:
  %t66 = load i1, ptr %l33, !tbaa !21
  store i1 %t66, ptr %l5, !tbaa !21
  br label %bb26
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_c2a3e0598e9fa972_fa6365d3848b2816)
  unreachable
bb26:
  %t67 = load i1, ptr %l5, !tbaa !21
  store i1 %t67, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2eprojectedCall(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i1
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t2 = load ptr, ptr %l14, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l14, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l15, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l15, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store ptr null, ptr %l13, !tbaa !29
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_764a523dff210c41_e3e3347f75b3332d)
  unreachable
bb11:
  %t19 = load ptr, ptr %l13, !tbaa !29
  store ptr %t19, ptr %l2, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  br i1 %t22, label %bb12, label %bb13
bb12:
  store ptr null, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  store i64 0, ptr %l3, !tbaa !24
  store i64 64, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb15, label %bb16
bb15:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb20
bb17:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l31, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb19
bb19:
  %t51 = load i64, ptr %l31, !tbaa !24
  store i64 %t51, ptr %l28, !tbaa !24
  br label %bb20
bb20:
  %t52 = load i64, ptr %l28, !tbaa !24
  store i64 %t52, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb21
bb21:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb22, label %bb23
bb22:
  br label %bb52
bb23:
  br label %bb24
bb24:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l8, !tbaa !24
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb25, label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_98383f10a7207879_8a1e77a14825545)
  unreachable
bb26:
  br label %bb27
bb27:
  %t75 = load ptr, ptr %l2, !tbaa !29
  store ptr %t75, ptr %l9, !tbaa !29
  %t77 = load ptr, ptr %l9, !tbaa !29
  store ptr %t77, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t78 = load ptr, ptr %l52, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb28, label %bb29
bb28:
  %t81 = load ptr, ptr %l52, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 8}
  %t84 = icmp eq i64 %t82, 3
  store i1 %t84, ptr %l53, !tbaa !21
  br label %bb29
bb29:
  %t85 = load i1, ptr %l53, !tbaa !21
  br i1 %t85, label %bb30, label %bb31
bb30:
  %t86 = load ptr, ptr %l9, !tbaa !29
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l10, !tbaa !29
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t92 = load ptr, ptr %l10, !tbaa !29
  store ptr %t92, ptr %l2, !tbaa !29
  br label %bb50
bb33:
  %t95 = load ptr, ptr %l9, !tbaa !29
  store ptr %t95, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t96 = load ptr, ptr %l60, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb34, label %bb35
bb34:
  %t99 = load ptr, ptr %l60, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 8}
  %t102 = icmp eq i64 %t100, 4
  store i1 %t102, ptr %l61, !tbaa !21
  br label %bb35
bb35:
  %t103 = load i1, ptr %l61, !tbaa !21
  br i1 %t103, label %bb36, label %bb37
bb36:
  %t104 = load ptr, ptr %l9, !tbaa !29
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t106, i32 0, i32 2
  %t108 = load ptr, ptr %t107
  store ptr %t108, ptr %l11, !tbaa !29
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t110 = load ptr, ptr %l11, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Elem", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  store ptr %t113, ptr %l2, !tbaa !29
  br label %bb50
bb39:
  %t116 = load ptr, ptr %l9, !tbaa !29
  store ptr %t116, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t117 = load ptr, ptr %l69, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb40, label %bb41
bb40:
  %t120 = load ptr, ptr %l69, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 8}
  %t123 = icmp eq i64 %t121, 6
  store i1 %t123, ptr %l70, !tbaa !21
  br label %bb41
bb41:
  %t124 = load i1, ptr %l70, !tbaa !21
  br i1 %t124, label %bb42, label %bb43
bb42:
  %t125 = load ptr, ptr %l9, !tbaa !29
  %t127 = getelementptr { i64, [4 x i64] }, ptr %t125, i32 0, i32 1
  %t128 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t127, i32 0, i32 2
  %t129 = load ptr, ptr %t128
  store ptr %t129, ptr %l12, !tbaa !29
  br label %bb44
bb43:
  br label %bb45
bb44:
  %t131 = load ptr, ptr %l12, !tbaa !29
  store ptr %t131, ptr %rv
  br label %ret
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store ptr null, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_412d1edc95755ceb_618602de92883937)
  unreachable
bb50:
  br label %bb51
bb51:
  %t135 = load i64, ptr %l7, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l7, !tbaa !24
  br label %bb21
bb52:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fscope_2erecLess(ptr %v0, ptr %v1, %"compiler/scope:fnRec" %a0, %"compiler/scope:fnRec" %a1) #0 {
entry:
  %l0 = alloca %"compiler/scope:fnRec"
  %l1 = alloca %"compiler/scope:fnRec"
  %l5 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %rv = alloca i1
  store %"compiler/scope:fnRec" %a0, ptr %l0
  store %"compiler/scope:fnRec" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:fnRec", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp slt i64 %t2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb9
bb2:
  %t9 = getelementptr %"compiler/scope:fnRec", ptr %l0, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = icmp eq i64 %t10, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = getelementptr %"compiler/scope:fnRec", ptr %l0, i32 0, i32 2
  %t18 = load i1, ptr %t17, !tbaa !21
  %t20 = xor i1 %t18, true
  store i1 %t20, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l9, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 2
  %t24 = load i1, ptr %t23, !tbaa !21
  store i1 %t24, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l12, !tbaa !21
  store i1 %t26, ptr %l5, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l5, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2erecTerm(ptr %v0, { i64, [2 x i64] } %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l19 = alloca { i64, [2 x i64] }
  %l20 = alloca { i64, ptr }
  %l30 = alloca i1
  %l33 = alloca { i64, [2 x i64] }
  %l36 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t36 = alloca { i64, [2 x i64] }, align 8
  %t43 = alloca { i64, [2 x i64] }, align 8
  %t78 = alloca { i64, [2 x i64] }, align 8
  %t87 = alloca { i64, [2 x i64] }, align 8
  store { i64, [2 x i64] } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb10
bb3:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t16 = icmp slt i64 %t10, %t13
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i64, ptr %t22, i64 %t19
  %t24 = load i64, ptr %t23, !tbaa !34
  %t26 = icmp sge i64 %t24, 0
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t29, ptr %l20, !tbaa !27
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i64, ptr %t33, i64 %t30
  %t35 = load i64, ptr %t34, !tbaa !34
  store { i64, [2 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 0
  store i64 2, ptr %t37
  %t39 = insertvalue { i64 } undef, i64 %t35, 0
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 1
  store { i64 } %t39, ptr %t40
  %t41 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t41, ptr %l19
  br label %bb9
bb8:
  store { i64, [2 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [2 x i64] }, ptr %t43, i32 0, i32 0
  store i64 6, ptr %t44
  %t45 = load { i64, [2 x i64] }, ptr %t43
  store { i64, [2 x i64] } %t45, ptr %l19
  br label %bb9
bb9:
  %t47 = load { i64, [2 x i64] }, ptr %l19
  store { i64, [2 x i64] } %t47, ptr %l6
  br label %bb28
bb10:
  %t48 = load { i64, [2 x i64] }, ptr %l0
  %t50 = extractvalue { i64, [2 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 4
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t54 = getelementptr { i64, i64 }, ptr %t53, i32 0, i32 0
  %t55 = load i64, ptr %t54
  store i64 %t55, ptr %l4, !tbaa !24
  %t57 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t58 = getelementptr { i64, i64 }, ptr %t57, i32 0, i32 1
  %t59 = load i64, ptr %t58
  store i64 %t59, ptr %l5, !tbaa !24
  br label %bb13
bb12:
  br label %bb23
bb13:
  br i1 %a2, label %bb14, label %bb15
bb14:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = icmp sge i64 %t63, 0
  store i1 %t65, ptr %l30, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t67 = load i1, ptr %l30, !tbaa !21
  br i1 %t67, label %bb17, label %bb18
bb17:
  %t68 = load i64, ptr %l4, !tbaa !24
  %t70 = icmp sge i64 %t68, 1
  br i1 %t70, label %bb19, label %bb20
bb18:
  %t72 = load { i64, [2 x i64] }, ptr %l0
  store { i64, [2 x i64] } %t72, ptr %l33
  br label %bb22
bb19:
  %t74 = load i64, ptr %l4, !tbaa !24
  %t76 = sub i64 %t74, 1
  %t77 = load i64, ptr %l5, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [2 x i64] }, ptr %t78, i32 0, i32 0
  store i64 4, ptr %t79
  %t81 = insertvalue { i64, i64 } undef, i64 %t76, 0
  %t83 = insertvalue { i64, i64 } %t81, i64 %t77, 1
  %t84 = getelementptr { i64, [2 x i64] }, ptr %t78, i32 0, i32 1
  store { i64, i64 } %t83, ptr %t84
  %t85 = load { i64, [2 x i64] }, ptr %t78
  store { i64, [2 x i64] } %t85, ptr %l36
  br label %bb21
bb20:
  store { i64, [2 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [2 x i64] }, ptr %t87, i32 0, i32 0
  store i64 6, ptr %t88
  %t89 = load { i64, [2 x i64] }, ptr %t87
  store { i64, [2 x i64] } %t89, ptr %l36
  br label %bb21
bb21:
  %t91 = load { i64, [2 x i64] }, ptr %l36
  store { i64, [2 x i64] } %t91, ptr %l33
  br label %bb22
bb22:
  %t92 = load { i64, [2 x i64] }, ptr %l33
  store { i64, [2 x i64] } %t92, ptr %l6
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t93 = load { i64, [2 x i64] }, ptr %l0
  store { i64, [2 x i64] } %t93, ptr %l6
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_2a2623c0241079bd_7fca5a8bf54f4501)
  unreachable
bb28:
  %t95 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2fscope_2erelVar({ i64, [2 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca i64
  %l2 = alloca i64
  %rv = alloca i64
  store { i64, [2 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l1, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  br label %bb13
bb4:
  %t12 = load { i64, [2 x i64] }, ptr %l0
  %t14 = extractvalue { i64, [2 x i64] } %t12, 0
  %t15 = icmp eq i64 %t14, 3
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 -2, ptr %l2, !tbaa !24
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_efbd916e88210f2b_3c9d7e310fda5a0f)
  unreachable
bb13:
  %t17 = load i64, ptr %l2, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local void @compiler_2fscope_3acompRun_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"compiler/diag:Taken"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i1
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i1
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"compiler/diag:Taken"
  %l30 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i64
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca i64
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca i64
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca i64
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca i64
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l77 = alloca i64
  %l79 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca %"compiler/scope:compRun"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l23
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l0
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l24
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l1
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l25, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e2
  br i1 %t6, label %bb3, label %bb4
bb3:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l25, !tbaa !24
  br label %bb4
bb4:
  %t10 = load i64, ptr %l25
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l27
  br label %bb5
bb5:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e2
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t15 = load i64, ptr %l25
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = call ptr @__olang_region_home(ptr %t20)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb7
bb7:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l2
  %t26 = call %"compiler/diag:Taken" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fdiag_3aTaken(ptr %v0)
  store %"compiler/diag:Taken" %t26, ptr %l29
  br label %bb8
bb8:
  %t27 = load %"compiler/diag:Taken", ptr %l29
  store %"compiler/diag:Taken" %t27, ptr %l3
  %t28 = ptrtoint ptr %v0 to i64
  store i64 %t28, ptr %l30, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e4
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = call ptr @__olang_region_make(ptr %v0)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l30, !tbaa !24
  br label %bb10
bb10:
  %t33 = load i64, ptr %l30
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2ector(ptr %t34, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l32
  br label %bb11
bb11:
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e4
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t38 = load i64, ptr %l30
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = call ptr @__olang_region_or(ptr %t42, ptr null)
  %t44 = call ptr @__olang_region_home(ptr %t43)
  %t45 = icmp ne ptr %t44, null
  %t46 = select i1 %t45, ptr %t44, ptr null
  %t47 = icmp eq ptr %t46, %t39
  call void @__olang_region_settle(ptr %t39, i1 %t47)
  br label %bb13
bb13:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l4
  %t49 = ptrtoint ptr %v0 to i64
  store i64 %t49, ptr %l34, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e5
  br i1 %t50, label %bb14, label %bb15
bb14:
  %t52 = call ptr @__olang_region_make(ptr %v0)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l34, !tbaa !24
  br label %bb15
bb15:
  %t54 = load i64, ptr %l34
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t55, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l36
  br label %bb16
bb16:
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e5
  br i1 %t57, label %bb17, label %bb18
bb17:
  %t59 = load i64, ptr %l34
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr null)
  %t65 = call ptr @__olang_region_home(ptr %t64)
  %t66 = icmp ne ptr %t65, null
  %t67 = select i1 %t66, ptr %t65, ptr null
  %t68 = icmp eq ptr %t67, %t60
  call void @__olang_region_settle(ptr %t60, i1 %t68)
  br label %bb18
bb18:
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l5
  %t70 = ptrtoint ptr %v0 to i64
  store i64 %t70, ptr %l38, !tbaa !24
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e6
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t73 = call ptr @__olang_region_make(ptr %v0)
  %t74 = ptrtoint ptr %t73 to i64
  store i64 %t74, ptr %l38, !tbaa !24
  br label %bb20
bb20:
  %t75 = load i64, ptr %l38
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %t76, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l40
  br label %bb21
bb21:
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e6
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t80 = load i64, ptr %l38
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40, i32 0, i32 0
  %t83 = load { i64, ptr }, ptr %t82
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = call ptr @__olang_region_or(ptr %t84, ptr null)
  %t86 = call ptr @__olang_region_home(ptr %t85)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr null
  %t89 = icmp eq ptr %t88, %t81
  call void @__olang_region_settle(ptr %t81, i1 %t89)
  br label %bb23
bb23:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t91 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t91, ptr %l42
  br label %bb24
bb24:
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l8
  %t93 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l43
  br label %bb25
bb25:
  %t94 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l9
  store i1 false, ptr %l10, !tbaa !21
  %t95 = ptrtoint ptr %v0 to i64
  store i64 %t95, ptr %l44, !tbaa !24
  %t96 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e11
  br i1 %t96, label %bb26, label %bb27
bb26:
  %t98 = call ptr @__olang_region_make(ptr %v0)
  %t99 = ptrtoint ptr %t98 to i64
  store i64 %t99, ptr %l44, !tbaa !24
  br label %bb27
bb27:
  %t100 = load i64, ptr %l44
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t101, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l46
  br label %bb28
bb28:
  %t103 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e11
  br i1 %t103, label %bb29, label %bb30
bb29:
  %t105 = load i64, ptr %l44
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46, i32 0, i32 0
  %t108 = load { i64, ptr }, ptr %t107
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = call ptr @__olang_region_or(ptr %t109, ptr null)
  %t111 = call ptr @__olang_region_home(ptr %t110)
  %t112 = icmp ne ptr %t111, null
  %t113 = select i1 %t112, ptr %t111, ptr null
  %t114 = icmp eq ptr %t113, %t106
  call void @__olang_region_settle(ptr %t106, i1 %t114)
  br label %bb30
bb30:
  %t115 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %l11
  %t116 = ptrtoint ptr %v0 to i64
  store i64 %t116, ptr %l48, !tbaa !24
  %t117 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e12
  br i1 %t117, label %bb31, label %bb32
bb31:
  %t119 = call ptr @__olang_region_make(ptr %v0)
  %t120 = ptrtoint ptr %t119 to i64
  store i64 %t120, ptr %l48, !tbaa !24
  br label %bb32
bb32:
  %t121 = load i64, ptr %l48
  %t122 = inttoptr i64 %t121 to ptr
  %t123 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %t122, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %l50
  br label %bb33
bb33:
  %t124 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e12
  br i1 %t124, label %bb34, label %bb35
bb34:
  %t126 = load i64, ptr %l48
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50, i32 0, i32 0
  %t129 = load { i64, ptr }, ptr %t128
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = call ptr @__olang_region_or(ptr %t130, ptr null)
  %t132 = call ptr @__olang_region_home(ptr %t131)
  %t133 = icmp ne ptr %t132, null
  %t134 = select i1 %t133, ptr %t132, ptr null
  %t135 = icmp eq ptr %t134, %t127
  call void @__olang_region_settle(ptr %t127, i1 %t135)
  br label %bb35
bb35:
  %t136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l12
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l52, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t137, ptr %l53, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 0
  store i64 %t139, ptr %l54, !tbaa !24
  %t140 = load i64, ptr %l54, !tbaa !24
  %t141 = mul i64 %t140, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t141)
  %t143 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  store { i64, ptr } %t144, ptr %l55, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = load i64, ptr %l54, !tbaa !24
  %t150 = mul i64 %t149, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t146, ptr %t148, i64 %t150, i1 false)
  %t151 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t151, ptr %l13, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t152, ptr %l57, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  store i64 %t154, ptr %l58, !tbaa !24
  %t155 = load i64, ptr %l58, !tbaa !24
  %t156 = mul i64 %t155, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t156)
  %t158 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  store { i64, ptr } %t159, ptr %l59, !tbaa !27
  %t160 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = load i64, ptr %l58, !tbaa !24
  %t165 = mul i64 %t164, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t161, ptr %t163, i64 %t165, i1 false)
  %t166 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t166, ptr %l14, !tbaa !27
  %t167 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_3f_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t167, ptr %l60
  br label %bb36
bb36:
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l15
  %t169 = ptrtoint ptr %v0 to i64
  store i64 %t169, ptr %l61, !tbaa !24
  %t170 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e16
  br i1 %t170, label %bb37, label %bb38
bb37:
  %t172 = call ptr @__olang_region_make(ptr %v0)
  %t173 = ptrtoint ptr %t172 to i64
  store i64 %t173, ptr %l61, !tbaa !24
  br label %bb38
bb38:
  %t174 = load i64, ptr %l61
  %t175 = inttoptr i64 %t174 to ptr
  %t176 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t175, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %l63
  br label %bb39
bb39:
  %t177 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e16
  br i1 %t177, label %bb40, label %bb41
bb40:
  %t179 = load i64, ptr %l61
  %t180 = inttoptr i64 %t179 to ptr
  %t181 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = call ptr @__olang_region_home(ptr %t184)
  %t186 = icmp ne ptr %t185, null
  %t187 = select i1 %t186, ptr %t185, ptr null
  %t188 = icmp eq ptr %t187, %t180
  call void @__olang_region_settle(ptr %t180, i1 %t188)
  br label %bb41
bb41:
  %t189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t189, ptr %l16
  %t190 = ptrtoint ptr %v0 to i64
  store i64 %t190, ptr %l65, !tbaa !24
  %t191 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e17
  br i1 %t191, label %bb42, label %bb43
bb42:
  %t193 = call ptr @__olang_region_make(ptr %v0)
  %t194 = ptrtoint ptr %t193 to i64
  store i64 %t194, ptr %l65, !tbaa !24
  br label %bb43
bb43:
  %t195 = load i64, ptr %l65
  %t196 = inttoptr i64 %t195 to ptr
  %t197 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t196, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t197, ptr %l67
  br label %bb44
bb44:
  %t198 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e17
  br i1 %t198, label %bb45, label %bb46
bb45:
  %t200 = load i64, ptr %l65
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67, i32 0, i32 0
  %t203 = load { i64, ptr }, ptr %t202
  %t204 = extractvalue { i64, ptr } %t203, 1
  %t205 = call ptr @__olang_region_or(ptr %t204, ptr null)
  %t206 = call ptr @__olang_region_home(ptr %t205)
  %t207 = icmp ne ptr %t206, null
  %t208 = select i1 %t207, ptr %t206, ptr null
  %t209 = icmp eq ptr %t208, %t201
  call void @__olang_region_settle(ptr %t201, i1 %t209)
  br label %bb46
bb46:
  %t210 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t210, ptr %l17
  %t211 = ptrtoint ptr %v0 to i64
  store i64 %t211, ptr %l69, !tbaa !24
  %t212 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e18
  br i1 %t212, label %bb47, label %bb48
bb47:
  %t214 = call ptr @__olang_region_make(ptr %v0)
  %t215 = ptrtoint ptr %t214 to i64
  store i64 %t215, ptr %l69, !tbaa !24
  br label %bb48
bb48:
  %t216 = load i64, ptr %l69
  %t217 = inttoptr i64 %t216 to ptr
  %t218 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3avrRow_3e_2ector(ptr %t217, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %l71
  br label %bb49
bb49:
  %t219 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e18
  br i1 %t219, label %bb50, label %bb51
bb50:
  %t221 = load i64, ptr %l69
  %t222 = inttoptr i64 %t221 to ptr
  %t223 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71, i32 0, i32 0
  %t224 = load { i64, ptr }, ptr %t223
  %t225 = extractvalue { i64, ptr } %t224, 1
  %t226 = call ptr @__olang_region_or(ptr %t225, ptr null)
  %t227 = call ptr @__olang_region_home(ptr %t226)
  %t228 = icmp ne ptr %t227, null
  %t229 = select i1 %t228, ptr %t227, ptr null
  %t230 = icmp eq ptr %t229, %t222
  call void @__olang_region_settle(ptr %t222, i1 %t230)
  br label %bb51
bb51:
  %t231 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t231, ptr %l18
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %l73, !tbaa !27
  %t232 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t232, ptr %l74, !tbaa !27
  %t233 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  store i64 %t234, ptr %l75, !tbaa !24
  %t235 = load i64, ptr %l75, !tbaa !24
  %t236 = mul i64 %t235, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t236)
  %t238 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  store { i64, ptr } %t239, ptr %l76, !tbaa !27
  %t240 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = load i64, ptr %l75, !tbaa !24
  %t245 = mul i64 %t244, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t241, ptr %t243, i64 %t245, i1 false)
  %t246 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t246, ptr %l19, !tbaa !27
  store ptr null, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t247 = ptrtoint ptr %v0 to i64
  store i64 %t247, ptr %l77, !tbaa !24
  %t248 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e22
  br i1 %t248, label %bb52, label %bb53
bb52:
  %t250 = call ptr @__olang_region_make(ptr %v0)
  %t251 = ptrtoint ptr %t250 to i64
  store i64 %t251, ptr %l77, !tbaa !24
  br label %bb53
bb53:
  %t252 = load i64, ptr %l77
  %t253 = inttoptr i64 %t252 to ptr
  %t254 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t253, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t254, ptr %l79
  br label %bb54
bb54:
  %t255 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3acompRun_2e22
  br i1 %t255, label %bb55, label %bb56
bb55:
  %t257 = load i64, ptr %l77
  %t258 = inttoptr i64 %t257 to ptr
  %t259 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79, i32 0, i32 0
  %t260 = load { i64, ptr }, ptr %t259
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = call ptr @__olang_region_or(ptr %t261, ptr null)
  %t263 = call ptr @__olang_region_home(ptr %t262)
  %t264 = icmp ne ptr %t263, null
  %t265 = select i1 %t264, ptr %t263, ptr null
  %t266 = icmp eq ptr %t265, %t258
  call void @__olang_region_settle(ptr %t258, i1 %t266)
  br label %bb56
bb56:
  %t267 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79
  %t268 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 0
  %t269 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t269, ptr %t268
  %t270 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 1
  %t271 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t271, ptr %t270
  %t272 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 2
  %t273 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t273, ptr %t272
  %t274 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 3
  %t275 = load %"compiler/diag:Taken", ptr %l3
  store %"compiler/diag:Taken" %t275, ptr %t274
  %t276 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 4
  %t277 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t277, ptr %t276
  %t278 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 5
  %t279 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t279, ptr %t278
  %t280 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 6
  %t281 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t281, ptr %t280
  %t282 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 7
  %t283 = load i64, ptr %l7, !tbaa !24
  store i64 %t283, ptr %t282, !tbaa !24
  %t284 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 8
  %t285 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t285, ptr %t284
  %t286 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 9
  %t287 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t287, ptr %t286
  %t288 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 10
  %t289 = load i1, ptr %l10, !tbaa !21
  store i1 %t289, ptr %t288, !tbaa !21
  %t290 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 11
  %t291 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t291, ptr %t290
  %t292 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 12
  %t293 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t293, ptr %t292
  %t294 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 13
  %t295 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t295, ptr %t294, !tbaa !27
  %t296 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 14
  %t297 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t297, ptr %t296, !tbaa !27
  %t298 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 15
  %t299 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t299, ptr %t298
  %t300 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 16
  %t301 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t301, ptr %t300
  %t302 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 17
  %t303 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %t302
  %t304 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 18
  %t305 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t305, ptr %t304
  %t306 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 19
  %t307 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t307, ptr %t306, !tbaa !27
  %t308 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 20
  %t309 = load ptr, ptr %l20, !tbaa !29
  store ptr %t309, ptr %t308, !tbaa !29
  %t310 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 21
  %t311 = load i1, ptr %l21, !tbaa !21
  store i1 %t311, ptr %t310, !tbaa !21
  %t312 = getelementptr %"compiler/scope:compRun", ptr %l81, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t267, ptr %t312
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l81, i64 688, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca i1
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fnRecs"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l0
  store i1 false, ptr %l1, !tbaa !21
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l5, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3afnRecs_2e2
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t8 = load i64, ptr %l5
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l7
  br label %bb4
bb4:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3afnRecs_2e2
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load i64, ptr %l5
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = call ptr @__olang_region_home(ptr %t18)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t22)
  br label %bb6
bb6:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l2
  %t24 = ptrtoint ptr %v0 to i64
  store i64 %t24, ptr %l9, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3afnRecs_2e3
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = call ptr @__olang_region_make(ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l9
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t30, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l11
  br label %bb9
bb9:
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3afnRecs_2e3
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load i64, ptr %l9
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = call ptr @__olang_region_home(ptr %t39)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t35
  call void @__olang_region_settle(ptr %t35, i1 %t43)
  br label %bb11
bb11:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  %t46 = insertvalue %"compiler/scope:fnRecs" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, 0
  %t47 = load i1, ptr %l1, !tbaa !21
  %t48 = insertvalue %"compiler/scope:fnRecs" %t46, i1 %t47, 1
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t50 = insertvalue %"compiler/scope:fnRecs" %t48, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, 2
  %t52 = insertvalue %"compiler/scope:fnRecs" %t50, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, 3
  store %"compiler/scope:fnRecs" %t52, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
define internal i1 @olang_lambda_0(ptr %env, i1 %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 %a0, ptr %rv
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
@.d1 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" [" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
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
@.d3 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"twins " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d4 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", with code of their own " }>, align 8
@.d5 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", captures followed " }>, align 8
@.d6 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"versions: " }>, align 8
@.d7 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" bodies with a cursor, " }>, align 8
@.d8 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" definitions, " }>, align 8
@.d9 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" judgings asked again" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-ctor\09" }>, align 8
@.d12 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-dtor\09" }>, align 8
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

@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"'s Call" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"this lambda" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
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

@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

define internal i1 @olang_lambda_25(ptr %env, i64 %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t5 = icmp eq i64 %a0, %t2
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare ptr @__olang_scope_of(ptr, ptr) noinline
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

@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d26 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"lift param " }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d27 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
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
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  br label %bb1
bb3:
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t8, i64 %t9)
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t15 = sext i32 %t13 to i64
  %t16 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t17 = call i64 @__olang_fmt_i64(ptr %t16, i64 %t15)
  call void @__olang_sb_add(ptr %v0, i64 %t17)
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t18, i64 %t19)
  br label %bb1
bb4:
  %t20 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t20, i64 %t21)
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t22, i64 %t23)
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 1
  %t26 = getelementptr { i64 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  %t29 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t27)
  call void @__olang_sb_add(ptr %v0, i64 %t30)
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb5:
  %t33 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb6:
  %t35 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  %t41 = getelementptr { i64, i64 }, ptr %t40, i32 0, i32 0
  %t42 = load i64, ptr %t41
  %t44 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t45 = call i64 @__olang_fmt_i64(ptr %t44, i64 %t42)
  call void @__olang_sb_add(ptr %v0, i64 %t45)
  %t46 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t46, i64 %t47)
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  %t50 = getelementptr { i64, i64 }, ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50
  %t53 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t54 = call i64 @__olang_fmt_i64(ptr %t53, i64 %t51)
  call void @__olang_sb_add(ptr %v0, i64 %t54)
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb7:
  %t57 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i32 0, i32 1
  %t63 = getelementptr { i64 }, ptr %t62, i32 0, i32 0
  %t64 = load i64, ptr %t63
  %t66 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t67 = call i64 @__olang_fmt_i64(ptr %t66, i64 %t64)
  call void @__olang_sb_add(ptr %v0, i64 %t67)
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t68, i64 %t69)
  br label %bb1
bb8:
  %t70 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t70, i64 %t71)
  br label %bb1
ret:
  ret void
}

@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
declare void @__olang_sb_done(ptr)
@olang_2esole_2estd_2fprelude_2farray_3aArrayIter_3cI64_3e_2e0 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define internal i1 @olang_lambda_31(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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

@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"if" }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fscope_3acompRun_2e13 = weak hidden constant i1 false
declare ptr @__olang_region_make_part(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_release_part(ptr, i64) noinline
@olang_2esole_2ecompiler_2fscope_3acompRun_2e14 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2ector(ptr %v0)
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

define internal i1 @olang_lambda_36(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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

@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"DEBUG judging " }>, align 8
@.d39 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" ctx " }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" keys " }>, align 8
@.d41 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" global " }>, align 8
@.d42 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"DEBUG read " }>, align 8
@.d43 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"DEBUG mark " }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d45 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"DEBUG sum " }>, align 8
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

@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d47 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"SetAt" }>, align 8
@.d48 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"setAt" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"N" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"B" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"V" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"P" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"D" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"U" }>, align 8
@.d56 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hits" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aMark(ptr %a0, ptr %a1) #0 {
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
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 6}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 6}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb6
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 2, label %bb4 ]
bb3:
  br label %bb6
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [1 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [1 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  %t20 = icmp eq i32 %t13, %t17
  br i1 %t20, label %bb5, label %bb1
bb5:
  br label %bb3
bb6:
  %t22 = load i1, ptr %l2, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d57 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"mark " }>, align 8
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
declare void @__olang_sb_add(ptr, i64)
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aBodyOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 10}
  switch i64 %t2, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 i64 8, label %bb10 i64 9, label %bb11 ]
bb1:
  br label %ret
bb2:
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t8, i32 0, i32 1
  %t10 = getelementptr { i64 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  %t13 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t14 = call i64 @__olang_fmt_i64(ptr %t13, i64 %t11)
  call void @__olang_sb_add(ptr %v0, i64 %t14)
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb3:
  %t17 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  %t23 = getelementptr { i32, i32 }, ptr %t22, i32 0, i32 0
  %t24 = load i32, ptr %t23
  %t26 = sext i32 %t24 to i64
  %t27 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t28 = call i64 @__olang_fmt_i64(ptr %t27, i64 %t26)
  call void @__olang_sb_add(ptr %v0, i64 %t28)
  %t29 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr { i64, [2 x i64] }, ptr %t31, i32 0, i32 1
  %t33 = getelementptr { i32, i32 }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  %t36 = sext i32 %t34 to i64
  %t37 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t38 = call i64 @__olang_fmt_i64(ptr %t37, i64 %t36)
  call void @__olang_sb_add(ptr %v0, i64 %t38)
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t39, i64 %t40)
  br label %bb1
bb4:
  %t41 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t43, i64 %t44)
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [2 x i64] }, ptr %t45, i32 0, i32 1
  %t47 = getelementptr { i32, i64 }, ptr %t46, i32 0, i32 0
  %t48 = load i32, ptr %t47
  %t50 = sext i32 %t48 to i64
  %t51 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t52 = call i64 @__olang_fmt_i64(ptr %t51, i64 %t50)
  call void @__olang_sb_add(ptr %v0, i64 %t52)
  %t53 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 1
  %t57 = getelementptr { i32, i64 }, ptr %t56, i32 0, i32 1
  %t58 = load i64, ptr %t57
  %t60 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t61 = call i64 @__olang_fmt_i64(ptr %t60, i64 %t58)
  call void @__olang_sb_add(ptr %v0, i64 %t61)
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t62, i64 %t63)
  br label %bb1
bb5:
  %t64 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t64, i64 %t65)
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t66, i64 %t67)
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr { i64, [2 x i64] }, ptr %t68, i32 0, i32 1
  %t70 = getelementptr { i32 }, ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70
  %t73 = sext i32 %t71 to i64
  %t74 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t75 = call i64 @__olang_fmt_i64(ptr %t74, i64 %t73)
  call void @__olang_sb_add(ptr %v0, i64 %t75)
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t76, i64 %t77)
  br label %bb1
bb6:
  %t78 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t78, i64 %t79)
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t80, i64 %t81)
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr { i64, [2 x i64] }, ptr %t82, i32 0, i32 1
  %t84 = getelementptr { i32 }, ptr %t83, i32 0, i32 0
  %t85 = load i32, ptr %t84
  %t87 = sext i32 %t85 to i64
  %t88 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t89 = call i64 @__olang_fmt_i64(ptr %t88, i64 %t87)
  call void @__olang_sb_add(ptr %v0, i64 %t89)
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t90, i64 %t91)
  br label %bb1
bb7:
  %t92 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t92, i64 %t93)
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t94, i64 %t95)
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr { i64, [2 x i64] }, ptr %t96, i32 0, i32 1
  %t98 = getelementptr { i64 }, ptr %t97, i32 0, i32 0
  %t99 = load i64, ptr %t98
  %t101 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t99)
  call void @__olang_sb_add(ptr %v0, i64 %t102)
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t103, i64 %t104)
  br label %bb1
bb8:
  %t105 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t105, i64 %t106)
  %t107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t107, i64 %t108)
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr { i64, [2 x i64] }, ptr %t109, i32 0, i32 1
  %t111 = getelementptr { i64, i32 }, ptr %t110, i32 0, i32 0
  %t112 = load i64, ptr %t111
  %t114 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t115 = call i64 @__olang_fmt_i64(ptr %t114, i64 %t112)
  call void @__olang_sb_add(ptr %v0, i64 %t115)
  %t116 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t116, i64 %t117)
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [2 x i64] }, ptr %t118, i32 0, i32 1
  %t120 = getelementptr { i64, i32 }, ptr %t119, i32 0, i32 1
  %t121 = load i32, ptr %t120
  %t123 = sext i32 %t121 to i64
  %t124 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t125 = call i64 @__olang_fmt_i64(ptr %t124, i64 %t123)
  call void @__olang_sb_add(ptr %v0, i64 %t125)
  %t126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t126, i64 %t127)
  br label %bb1
bb9:
  %t128 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t128, i64 %t129)
  %t130 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t130, i64 %t131)
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t132, i32 0, i32 1
  %t134 = getelementptr { i64, i32 }, ptr %t133, i32 0, i32 0
  %t135 = load i64, ptr %t134
  %t137 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t138 = call i64 @__olang_fmt_i64(ptr %t137, i64 %t135)
  call void @__olang_sb_add(ptr %v0, i64 %t138)
  %t139 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t139, i64 %t140)
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr { i64, [2 x i64] }, ptr %t141, i32 0, i32 1
  %t143 = getelementptr { i64, i32 }, ptr %t142, i32 0, i32 1
  %t144 = load i32, ptr %t143
  %t146 = sext i32 %t144 to i64
  %t147 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t148 = call i64 @__olang_fmt_i64(ptr %t147, i64 %t146)
  call void @__olang_sb_add(ptr %v0, i64 %t148)
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t149, i64 %t150)
  br label %bb1
bb10:
  %t151 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t151, i64 %t152)
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t153, i64 %t154)
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr { i64, [2 x i64] }, ptr %t155, i32 0, i32 1
  %t157 = getelementptr { i32, i32, i64 }, ptr %t156, i32 0, i32 0
  %t158 = load i32, ptr %t157
  %t160 = sext i32 %t158 to i64
  %t161 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t162 = call i64 @__olang_fmt_i64(ptr %t161, i64 %t160)
  call void @__olang_sb_add(ptr %v0, i64 %t162)
  %t163 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t163, i64 %t164)
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr { i64, [2 x i64] }, ptr %t165, i32 0, i32 1
  %t167 = getelementptr { i32, i32, i64 }, ptr %t166, i32 0, i32 1
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aContractKind(ptr %v0, ptr %t167, i64 %a1)
  br label %bb12
bb11:
  %t170 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t170, i64 %t171)
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t172, i64 %t173)
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr { i64, [2 x i64] }, ptr %t174, i32 0, i32 1
  %t176 = getelementptr { i64, i64 }, ptr %t175, i32 0, i32 0
  %t177 = load i64, ptr %t176
  %t179 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t180 = call i64 @__olang_fmt_i64(ptr %t179, i64 %t177)
  call void @__olang_sb_add(ptr %v0, i64 %t180)
  %t181 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t181, i64 %t182)
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr { i64, [2 x i64] }, ptr %t183, i32 0, i32 1
  %t185 = getelementptr { i64, i64 }, ptr %t184, i32 0, i32 1
  %t186 = load i64, ptr %t185
  %t188 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t186)
  call void @__olang_sb_add(ptr %v0, i64 %t189)
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t190, i64 %t191)
  br label %bb1
bb12:
  %t192 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t192, i64 %t193)
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr { i64, [2 x i64] }, ptr %t194, i32 0, i32 1
  %t196 = getelementptr { i32, i32, i64 }, ptr %t195, i32 0, i32 2
  %t197 = load i64, ptr %t196
  %t199 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t200 = call i64 @__olang_fmt_i64(ptr %t199, i64 %t197)
  call void @__olang_sb_add(ptr %v0, i64 %t200)
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t201, i64 %t202)
  br label %bb1
ret:
  ret void
}

@.d60 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sum " }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"N" }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"B" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"O" }>, align 8
@.d69 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"R" }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"I" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"T" }>, align 8
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

@olang_2esole_2ecompiler_2fscope_3acompRun_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_home(ptr)
define linkonce_odr %"compiler/diag:Taken" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fdiag_3aTaken(ptr %v0) #0 {
entry:
  %l0 = alloca %"compiler/diag:Taken"
  %rv = alloca %"compiler/diag:Taken"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/diag:Taken" @compiler_2fdiag_3aTaken_2ector(ptr %v0)
  store %"compiler/diag:Taken" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"compiler/diag:Taken", ptr %l0
  store %"compiler/diag:Taken" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/diag:Taken", ptr %rv
  ret %"compiler/diag:Taken" %rr
}

@olang_2esole_2ecompiler_2fscope_3acompRun_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3acompRun_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3acompRun_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3acompRun_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3acompRun_2e12 = weak hidden constant i1 false
@.d72 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d73 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fscope_3acompRun_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3acompRun_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3acompRun_2e18 = weak hidden constant i1 false
@.d74 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fscope_3acompRun_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3afnRecs_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3afnRecs_2e3 = weak hidden constant i1 false
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

@.d75 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"scope.Term.None" }>, align 8
@.d76 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"scope.Term.Block" }>, align 8
@.d77 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d78 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d79 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Var" }>, align 8
@.d80 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Program" }>, align 8
@.d81 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Derived" }>, align 8
@.d82 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d83 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Set" }>, align 8
@.d84 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"scope.Term.Untraced" }>, align 8
declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d85 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.BodyOf.Fn" }>, align 8
@.d86 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Ctor" }>, align 8
@.d87 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Case" }>, align 8
@.d88 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Dtor" }>, align 8
@.d89 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.BodyOf.Lambda" }>, align 8
@.d90 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Test" }>, align 8
@.d91 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.BodyOf.Global" }>, align 8
@.d92 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Cond" }>, align 8
@.d93 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.BodyOf.Contract" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aContractKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 1}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
ret:
  ret void
}

@.d94 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.BodyOf.Thunk" }>, align 8
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

@.d95 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.ContractKind.Req" }>, align 8
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

@olang_loc_815ce866d8282155_e428af91c79b2b69 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eView_3cBool_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2farray_2eArray_3cBool_3e_2eCount_3cBool_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eLen_H327daf8a5f05e7deba4c08807621a9fe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eAt__Hb06c5aa34d45867a1decef3b510ab43e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hbb62dd24bb9d6650f5b387479de8a86f(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H8fcfddb96431edc14f722668635d6efd(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20compiler_2ftyped_3aVer_H2a1e5f99aaf12f9319d4a0d8fa08c5a8(ptr %v0, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_Hc1c2f3824b4c428f1a58c46bc49e09d4(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H0b5e11c98f28e10a1176da3c2806abb8(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H337ce25dd8b8f79ee7e6013a63096469(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hb9981b83434ab0c12edadd9bdcf1af6e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2ftypes_3aTypeId_2c_20I64_H73f4835db56e5f687686d7884c2ea7b0(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_f80e88080d97644_667ddd49073c8210 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %a0, { i64, ptr } %a1)
@olang_loc_35449251cd7cc7b1_293be060d9d51fed = external constant [0 x i8]
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparts(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartAdmits(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@olang_loc_7ac300513ffc0d8b_1ff73281fb7180bf = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecapTerm({ i64, [2 x i64] } %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHeldFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildIntoCapture(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindingArg(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaseFrom(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargTemp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, { i64, [2 x i64] } %a4, i1 %a5, { i64, [2 x i64] } %a6)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fscope_2eBndOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eTwin(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esum(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eLen_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecopyNode(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstStruct(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstType(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efixedField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorFieldParam(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2eaddRec(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eRefMu_Hcf8fd3faf4550652ddb3827e5e7642e6(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eSetAt_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/scope:fnRecs" %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndTree(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fscope_2ebndText(ptr %v0, i64 %a0)
declare { { i64, ptr }, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2, i32 %a3, i64 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueBeyondType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { %"compiler/source:Span", { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenYieldsBorrow(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaValueObligations(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaValueRelates(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_c98b4dd4e89787b8_9b80e6f198df6ccc = external constant [0 x i8]
@G_2ecompiler_2fscope_2eBndReturn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@olang_loc_dafb57c7e6be4360_64c24756b9afbb1c = external constant [0 x i8]
@G_2ecompiler_2fscope_2eBndNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildThroughUnknownScope(ptr %v0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDerived(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eSetAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
@olang_loc_d867a1bfd37ee6cf_dcf5a89f84b878b3 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Ha97d140a669c19bbbb7e297ebe521011(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hd1087b20b3bef4076c953aa6cc36cf5a(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRels(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, i64 %a5)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarriedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
@olang_loc_9675e93c9f07526d_8a86ee267fb7b3d9 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarriedFn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_768f72a2579754c5_d91cee094dc07e21 = external constant [0 x i8]
@olang_loc_13a66e5900397517_aa9470c685b363ab = external constant [0 x i8]
@olang_loc_5a6ddbb4ef42a8ef_2ba82a28086a35d3 = external constant [0 x i8]
@olang_loc_fc2d23a56a9972c4_138c6d588cf96ab0 = external constant [0 x i8]
@olang_loc_3c97826faaf501b5_26e177716b83aa41 = external constant [0 x i8]
declare i1 @compiler_2fscope_2econstItems(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1613ed059cb03484_3323568ce669da90 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
@olang_loc_8897a11abbae3078_f3dd57de933efb7c = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_51ee4af841bdfc97_6c7c82a498ee2aeb = external constant [0 x i8]
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitBorrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everDefine(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteRecs(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_f7f7e8cd8f874575_c4b9e23387941a21 = external constant [0 x i8]
@olang_loc_fdfd3ee9277a2fdd_9e10cfc7d92600f9 = external constant [0 x i8]
@olang_loc_933cba94e4afba7f_7f3963489057e55b = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_7b1e363353e9e01f_5d568e34003a167b = external constant [0 x i8]
declare i1 @compiler_2fscope_2eisNameChar(i8 %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlaceRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_c246bc7b7189f7e5_d655903db3304939 = external constant [0 x i8]
@olang_loc_6b4093eaa9dab6e0_ebbf8088c45502d4 = external constant [0 x i8]
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a83726b6934b3ff_5f714cf565db93e3 = external constant [0 x i8]
@olang_loc_2e96c7acbe66a05d_c52c59876e2a2911 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eforcedBy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cI64_3e_2eSome_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
@G_2ecompiler_2ftypes_2eRoleTail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithRole(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e2ea0fea769db7e4_aa8c1e0e7de89fc8 = external constant [0 x i8]
@olang_loc_3f250a06b21cc3f2_59a5c5e8895f34f6 = external constant [0 x i8]
@olang_loc_8ee4ae07259e8dc_de6076a554649350 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eFailsBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceOutlivesArg(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_4421e2d51127c851_53479ba5c20af2ad = external constant [0 x i8]
@olang_loc_ba8e38ed7d6b48a9_35acc5c55c21205 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fscope_2eFitPayload = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitElem = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_6eab74aa3e0b63d9_475cda0f5b688a85 = external constant [0 x i8]
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_3e5632f45eefd04_2819d69fa7782c38 = external constant [0 x i8]
@olang_loc_754a4fe24afb426a_2a858937208e2b6e = external constant [0 x i8]
@olang_loc_2499e51069c13992_a0c2ded5248e3e66 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldCall(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_4290e2a90659b7f6_aa651f6d10e86162 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_5870181ab0023c5d_b5d2f953d218d1c9 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopElement(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_42ddfa07d54a3511_7eb6b931dfed5aa5 = external constant [0 x i8]
@olang_loc_133169b3f1711469_c566838c26ef218d = external constant [0 x i8]
@olang_loc_31030507f1509b32_81bbcae78c23c7f6 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eletBody(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteInst(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOwn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H240bd86caf003ea6de374cb77d0dbfc6(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, [2 x i64] } %a2)
@olang_loc_d64177be35f4f565_932d783fbb65d231 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftStorage(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eLen_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:markRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eAt_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eNameOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_e498d93abb20b61c_9a7977ea577c2990 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_4ccbcb45df0141a6_19706046becd886a = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8b7e95a2be190b8d_8374a99933a5c471 = external constant [0 x i8]
@olang_loc_a42570ec148c1b78_dde1581633b6387c = external constant [0 x i8]
@olang_loc_9aaad908d3e71fae_f22ca2548cb14c12 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fscope_2eHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@olang_loc_fefa308e31290faa_fd7939a3bcfd0266 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteCondValue(ptr %v0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/diagmsg:Msg" %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNumberLike(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4e916d94ce354cf_7e8c78090f47617b = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
@olang_loc_b076c1f6c97c7ed4_fcdcfd5688cdce70 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i1 %a4)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_8680c8bf7a40147c_d650a7d3d4e83170 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastBracket(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_22d8393d4f188012_8c9f9e39cb427896 = external constant [0 x i8]
@olang_loc_7213214fb222d0c9_1eae7674ed2401ad = external constant [0 x i8]
@olang_loc_2c141a427a2fa071_f343db408d9fc8c5 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
@olang_loc_77d8df1bd6b52079_f0229fa895aca615 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
@olang_loc_bfd80b0298b19652_e537c33c4d886a6e = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_b1757fdcabe82f93_e12b45afd85e1a9f = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_a696eb2979219c3c_c9efb41471de78f8 = external constant [0 x i8]
@olang_loc_da1486de58138450_28784370eb22bac = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_3f_26_H3c69fd890621892a30985a8aa6cbb884(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Haae4fbc3ba15583a49040d883d2248d1(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecordable(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esigOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectxText(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeysOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eglobalText(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emarksOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i32, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehiddenText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionParam(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f5041371eec86b2_55455b7784c43256 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erelationVar(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, [1 x i64] } %a3, ptr %a4)
@olang_loc_13b65a438bfdd446_54ab7c4e595e3faa = external constant [0 x i8]
@G_2ecompiler_2fscope_2eObliged = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3)
@olang_loc_3858c2e20d1891a9_b858c54a1ad247bd = external constant [0 x i8]
@olang_loc_c9162f08edbfbed8_2a5892f27af908c = external constant [0 x i8]
@olang_loc_1a43114a4f266086_b04643b29ce7fa0a = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitHeld(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_72c0018e413494f5_fd941fdf53522361 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eframeHere(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_8bfac37a1f29704b_1a5bb9d5b57da78f = external constant [0 x i8]
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempVal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
@olang_loc_48fef23c760a2c0c_687ab57f8c655b00 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughDerived(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c51808c26f3c8029_f1c25a88624d8cdd = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
@G_2ecompiler_2fscope_2eUseView = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eUseOwn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@G_2ecompiler_2fscope_2eUseThru = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_c1e814726b785cf2_df631aab7cf532ee = external constant [0 x i8]
@olang_loc_21e064470a3252d0_305537a6acb289cc = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueOK(ptr %v0, ptr %a0, i64 %a1, i1 %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailCloses(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailDtorRow(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeCase(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eFitAnyCopy = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3, ptr %a4, i64 %a5)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartLand(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, { i64, [2 x i64] } %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplitPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSliceSplitValue(ptr %v0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb4ab14fd1aa8deeb21095c3402461540(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2eunWidened(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_6eee1454e63e28f9_96cec8c94273ac0d = external constant [0 x i8]
@olang_loc_7623189fe73c6a28_ffaddce80d5b12dc = external constant [0 x i8]
@olang_loc_61640150a4b32f83_6e916208fadc43b7 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Hcb6fae2338a785d6927a8587899f4e85(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H665b0c71977ef42adbc51fe96e6e85ee(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2eLen_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:sumRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2eAt_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2esameSummary(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fscope_2esummaryDiff(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_33075d27706b8b52_4b999537a5d43dd6 = external constant [0 x i8]
@olang_loc_f40a17f5c07f768d_75cb4ba7407e9321 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ab6985486f779d4_c20639db93a47db0 = external constant [0 x i8]
declare %"compiler/scope:instNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2eAt_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eLen_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRecs" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2eAt_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2emergeRecs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/scope:instNode" @compiler_2fscope_3ainstNode_2ector(ptr %v0, i32 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRecs_3e_2ePush_3ccompiler_2fscope_3afnRecs_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRecs" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3ainstNode_3e_2ePush_3ccompiler_2fscope_3ainstNode_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:instNode" %a1)
declare i1 @compiler_2fscope_2eisParamRead(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_97a3337844e24daf_abbacdff6e992493 = external constant [0 x i8]
@olang_loc_21f109796fa0acee_6e7b91baaed0fa92 = external constant [0 x i8]
declare i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c2a3e0598e9fa972_fa6365d3848b2816 = external constant [0 x i8]
@olang_loc_764a523dff210c41_e3e3347f75b3332d = external constant [0 x i8]
@olang_loc_98383f10a7207879_8a1e77a14825545 = external constant [0 x i8]
@olang_loc_412d1edc95755ceb_618602de92883937 = external constant [0 x i8]
@olang_loc_2a2623c0241079bd_7fca5a8bf54f4501 = external constant [0 x i8]
@olang_loc_efbd916e88210f2b_3c9d7e310fda5a0f = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_3f_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3avrRow_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2ector(ptr %v0)
declare %"compiler/diag:Taken" @compiler_2fdiag_3aTaken_2ector(ptr %v0)

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
