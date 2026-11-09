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
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/scope:walked" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/scope:agreeAt" = type { { i64, [2 x i64] }, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/scope:placeSlot" = type { { i64, [2 x i64] }, i1, i64 }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
define dso_local void @compiler_2fscope_2ecollectArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l20 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Arm", ptr %t5, i32 0, i32 1
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
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l20, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Alt", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t33, ptr %t35)
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Alt", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t55, ptr %l35, !tbaa !27
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  %t65 = getelementptr %"compiler/typed:Bind", ptr %t61, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t66, ptr %t68)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l7, !tbaa !24
  br label %bb9
bb15:
  br label %bb16
bb16:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l3, !tbaa !24
  br label %bb4
bb17:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Arm", ptr %t79, i32 0, i32 2
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t82, ptr %t83)
  br label %bb18
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Arm", ptr %t86, i32 0, i32 3
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t89, ptr %t90)
  br label %bb19
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Arm", ptr %t93, i32 0, i32 4
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecollectStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l50 = alloca i64
  %l53 = alloca ptr
  %l55 = alloca i64
  %l57 = alloca i1
  %l59 = alloca i1
  %l61 = alloca i64
  %l64 = alloca ptr
  %l66 = alloca i64
  %l75 = alloca ptr
  %l76 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l149 = alloca ptr
  %l150 = alloca i1
  %l158 = alloca ptr
  %l159 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i1
  %l185 = alloca { i64, ptr }
  %l193 = alloca ptr
  %l194 = alloca i1
  %l207 = alloca { i64, ptr }
  %l213 = alloca i64
  %l216 = alloca ptr
  %l218 = alloca i64
  %l220 = alloca i1
  %l222 = alloca i1
  %l224 = alloca i64
  %l227 = alloca ptr
  %l229 = alloca i64
  %l249 = alloca { i64, ptr }
  %l257 = alloca ptr
  %l258 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t6 = load ptr, ptr %l32, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l32, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 17}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l33, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l33, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t20, ptr %t22)
  br label %bb9
bb9:
  br label %bb166
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t26 = load ptr, ptr %l41, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l41, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 17}
  %t32 = icmp eq i64 %t30, 1
  store i1 %t32, ptr %l42, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l42, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb35
bb15:
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %t46)
  store i64 %t48, ptr %l50
  br label %bb16
bb16:
  %t49 = load i64, ptr %l50, !tbaa !24
  %t50 = icmp sge i64 %t49, 0
  br i1 %t50, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/scope:walked", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l53, !tbaa !29
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %t55)
  store i64 %t57, ptr %l55
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t58 = load ptr, ptr %l53, !tbaa !29
  %t59 = load i64, ptr %l55, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t58, i64 %t59)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %t60)
  store i1 %t62, ptr %l57
  br label %bb22
bb22:
  %t63 = load i1, ptr %l57, !tbaa !21
  %t64 = xor i1 %t63, true
  br i1 %t64, label %bb23, label %bb24
bb23:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t68 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t66)
  store i64 %t68, ptr %l61
  br label %bb25
bb24:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb26
bb25:
  %t69 = load i64, ptr %l61, !tbaa !24
  %t70 = icmp sge i64 %t69, 0
  store i1 %t70, ptr %l59, !tbaa !21
  br label %bb26
bb26:
  %t72 = load i1, ptr %l59, !tbaa !21
  br i1 %t72, label %bb27, label %bb28
bb27:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/scope:walked", ptr %t73, i32 0, i32 5
  store ptr %t75, ptr %l64, !tbaa !29
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t78 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t76)
  store i64 %t78, ptr %l66
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t79 = load ptr, ptr %l64, !tbaa !29
  %t80 = load i64, ptr %l66, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t79, i64 %t80)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectField(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  br label %bb32
bb32:
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %t85, ptr %t87)
  br label %bb33
bb33:
  %t90 = load ptr, ptr %l4, !tbaa !29
  %t92 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t90, ptr %t92)
  br label %bb34
bb34:
  br label %bb166
bb35:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t96 = load ptr, ptr %l75, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb36, label %bb37
bb36:
  %t99 = load ptr, ptr %l75, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 17}
  %t102 = icmp eq i64 %t100, 2
  store i1 %t102, ptr %l76, !tbaa !21
  br label %bb37
bb37:
  %t103 = load i1, ptr %l76, !tbaa !21
  br i1 %t103, label %bb38, label %bb39
bb38:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr { i64, [3 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", ptr }, ptr %t106, i32 0, i32 1
  %t108 = load ptr, ptr %t107
  store ptr %t108, ptr %l5, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t110 = load ptr, ptr %l5, !tbaa !29
  %t112 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t110, ptr %t112)
  br label %bb41
bb41:
  br label %bb166
bb42:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t116 = load ptr, ptr %l84, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb43, label %bb44
bb43:
  %t119 = load ptr, ptr %l84, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 17}
  %t122 = icmp eq i64 %t120, 3
  store i1 %t122, ptr %l85, !tbaa !21
  br label %bb44
bb44:
  %t123 = load i1, ptr %l85, !tbaa !21
  br i1 %t123, label %bb45, label %bb46
bb45:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr { i64, [3 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", ptr }, ptr %t126, i32 0, i32 1
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l6, !tbaa !29
  br label %bb47
bb46:
  br label %bb51
bb47:
  %t130 = load ptr, ptr %l6, !tbaa !29
  %t132 = getelementptr %"compiler/typed:If", ptr %t130, i32 0, i32 0
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t133, ptr %t135)
  br label %bb48
bb48:
  %t138 = load ptr, ptr %l6, !tbaa !29
  %t140 = getelementptr %"compiler/typed:If", ptr %t138, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t141, ptr %t143)
  br label %bb49
bb49:
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t148 = getelementptr %"compiler/typed:If", ptr %t146, i32 0, i32 2
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t149, ptr %t150)
  br label %bb50
bb50:
  br label %bb166
bb51:
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t154 = load ptr, ptr %l101, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb52, label %bb53
bb52:
  %t157 = load ptr, ptr %l101, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 17}
  %t160 = icmp eq i64 %t158, 4
  store i1 %t160, ptr %l102, !tbaa !21
  br label %bb53
bb53:
  %t161 = load i1, ptr %l102, !tbaa !21
  br i1 %t161, label %bb54, label %bb55
bb54:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr { i64, [3 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t164, i32 0, i32 1
  %t166 = load ptr, ptr %t165
  store ptr %t166, ptr %l7, !tbaa !29
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr { i64, [3 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t170, i32 0, i32 2
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l8, !tbaa !29
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t174 = load ptr, ptr %l7, !tbaa !29
  %t176 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t174, ptr %t176)
  br label %bb57
bb57:
  %t179 = load ptr, ptr %l8, !tbaa !29
  %t180 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t179, ptr %t180)
  br label %bb58
bb58:
  br label %bb166
bb59:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t184 = load ptr, ptr %l114, !tbaa !29
  %t185 = icmp ne ptr %t184, null
  br i1 %t185, label %bb60, label %bb61
bb60:
  %t187 = load ptr, ptr %l114, !tbaa !29
  %t188 = load i64, ptr %t187, !range !{i64 0, i64 17}
  %t190 = icmp eq i64 %t188, 6
  store i1 %t190, ptr %l115, !tbaa !21
  br label %bb61
bb61:
  %t191 = load i1, ptr %l115, !tbaa !21
  br i1 %t191, label %bb62, label %bb63
bb62:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 1
  %t195 = getelementptr { %"compiler/source:Span", ptr }, ptr %t194, i32 0, i32 1
  %t196 = load ptr, ptr %t195
  store ptr %t196, ptr %l9, !tbaa !29
  br label %bb68
bb63:
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l120, !tbaa !29
  store i1 false, ptr %l121, !tbaa !21
  %t199 = load ptr, ptr %l120, !tbaa !29
  %t200 = icmp ne ptr %t199, null
  br i1 %t200, label %bb64, label %bb65
bb64:
  %t202 = load ptr, ptr %l120, !tbaa !29
  %t203 = load i64, ptr %t202, !range !{i64 0, i64 17}
  %t205 = icmp eq i64 %t203, 16
  store i1 %t205, ptr %l121, !tbaa !21
  br label %bb65
bb65:
  %t206 = load i1, ptr %l121, !tbaa !21
  br i1 %t206, label %bb66, label %bb67
bb66:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr { i64, [3 x i64] }, ptr %t207, i32 0, i32 1
  %t210 = getelementptr { %"compiler/source:Span", ptr }, ptr %t209, i32 0, i32 1
  %t211 = load ptr, ptr %t210
  store ptr %t211, ptr %l9, !tbaa !29
  br label %bb68
bb67:
  br label %bb70
bb68:
  %t213 = load ptr, ptr %l9, !tbaa !29
  %t214 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t213, ptr %t214)
  br label %bb69
bb69:
  br label %bb166
bb70:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t218 = load ptr, ptr %l128, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb71, label %bb72
bb71:
  %t221 = load ptr, ptr %l128, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 17}
  %t224 = icmp eq i64 %t222, 10
  store i1 %t224, ptr %l129, !tbaa !21
  br label %bb72
bb72:
  %t225 = load i1, ptr %l129, !tbaa !21
  br i1 %t225, label %bb73, label %bb74
bb73:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr { i64, [3 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t228, i32 0, i32 1
  %t230 = load ptr, ptr %t229
  store ptr %t230, ptr %l10, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr { i64, [3 x i64] }, ptr %t232, i32 0, i32 1
  %t235 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t234, i32 0, i32 2
  %t236 = load ptr, ptr %t235
  store ptr %t236, ptr %l11, !tbaa !29
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t238 = load ptr, ptr %l10, !tbaa !29
  %t240 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t238, ptr %t240)
  br label %bb76
bb76:
  %t243 = load ptr, ptr %l11, !tbaa !29
  %t244 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t243, ptr %t244)
  br label %bb77
bb77:
  br label %bb166
bb78:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t248 = load ptr, ptr %l141, !tbaa !29
  %t249 = icmp ne ptr %t248, null
  br i1 %t249, label %bb79, label %bb80
bb79:
  %t251 = load ptr, ptr %l141, !tbaa !29
  %t252 = load i64, ptr %t251, !range !{i64 0, i64 17}
  %t254 = icmp eq i64 %t252, 9
  store i1 %t254, ptr %l142, !tbaa !21
  br label %bb80
bb80:
  %t255 = load i1, ptr %l142, !tbaa !21
  br i1 %t255, label %bb81, label %bb82
bb81:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t258, i32 0, i32 2
  %t260 = load ptr, ptr %t259
  store ptr %t260, ptr %l12, !tbaa !29
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t262 = load ptr, ptr %l12, !tbaa !29
  %t263 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t262, ptr %t263)
  br label %bb84
bb84:
  br label %bb166
bb85:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l149, !tbaa !29
  store i1 false, ptr %l150, !tbaa !21
  %t267 = load ptr, ptr %l149, !tbaa !29
  %t268 = icmp ne ptr %t267, null
  br i1 %t268, label %bb86, label %bb87
bb86:
  %t270 = load ptr, ptr %l149, !tbaa !29
  %t271 = load i64, ptr %t270, !range !{i64 0, i64 17}
  %t273 = icmp eq i64 %t271, 11
  store i1 %t273, ptr %l150, !tbaa !21
  br label %bb87
bb87:
  %t274 = load i1, ptr %l150, !tbaa !21
  br i1 %t274, label %bb88, label %bb89
bb88:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr { i64, [3 x i64] }, ptr %t275, i32 0, i32 1
  %t278 = getelementptr { %"compiler/source:Span", ptr }, ptr %t277, i32 0, i32 1
  %t279 = load ptr, ptr %t278
  store ptr %t279, ptr %l13, !tbaa !29
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t281 = load ptr, ptr %l13, !tbaa !29
  %t283 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t281, ptr %t283)
  br label %bb91
bb91:
  br label %bb166
bb92:
  %t286 = load ptr, ptr %l0, !tbaa !29
  store ptr %t286, ptr %l158, !tbaa !29
  store i1 false, ptr %l159, !tbaa !21
  %t287 = load ptr, ptr %l158, !tbaa !29
  %t288 = icmp ne ptr %t287, null
  br i1 %t288, label %bb93, label %bb94
bb93:
  %t290 = load ptr, ptr %l158, !tbaa !29
  %t291 = load i64, ptr %t290, !range !{i64 0, i64 17}
  %t293 = icmp eq i64 %t291, 12
  store i1 %t293, ptr %l159, !tbaa !21
  br label %bb94
bb94:
  %t294 = load i1, ptr %l159, !tbaa !21
  br i1 %t294, label %bb95, label %bb96
bb95:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr { i64, [3 x i64] }, ptr %t295, i32 0, i32 1
  %t298 = getelementptr { %"compiler/source:Span", ptr }, ptr %t297, i32 0, i32 1
  %t299 = load ptr, ptr %t298
  store ptr %t299, ptr %l14, !tbaa !29
  br label %bb97
bb96:
  br label %bb99
bb97:
  %t301 = load ptr, ptr %l14, !tbaa !29
  %t303 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t301, ptr %t303)
  br label %bb98
bb98:
  br label %bb166
bb99:
  %t306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t306, ptr %l167, !tbaa !29
  store i1 false, ptr %l168, !tbaa !21
  %t307 = load ptr, ptr %l167, !tbaa !29
  %t308 = icmp ne ptr %t307, null
  br i1 %t308, label %bb100, label %bb101
bb100:
  %t310 = load ptr, ptr %l167, !tbaa !29
  %t311 = load i64, ptr %t310, !range !{i64 0, i64 17}
  %t313 = icmp eq i64 %t311, 13
  store i1 %t313, ptr %l168, !tbaa !21
  br label %bb101
bb101:
  %t314 = load i1, ptr %l168, !tbaa !21
  br i1 %t314, label %bb102, label %bb103
bb102:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr { i64, [3 x i64] }, ptr %t315, i32 0, i32 1
  %t318 = getelementptr { %"compiler/source:Span", ptr }, ptr %t317, i32 0, i32 1
  %t319 = load ptr, ptr %t318
  store ptr %t319, ptr %l15, !tbaa !29
  br label %bb104
bb103:
  br label %bb113
bb104:
  %t321 = load ptr, ptr %l15, !tbaa !29
  %t323 = getelementptr %"compiler/typed:Join", ptr %t321, i32 0, i32 0
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t326 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t324, ptr %t326)
  br label %bb105
bb105:
  %t329 = load ptr, ptr %l15, !tbaa !29
  %t331 = getelementptr %"compiler/typed:Join", ptr %t329, i32 0, i32 2
  %t332 = load { i64, ptr }, ptr %t331, !tbaa !27
  store { i64, ptr } %t332, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t334 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t334, 0
  store i64 %t336, ptr %l18, !tbaa !24
  br label %bb106
bb106:
  %t338 = load i64, ptr %l17, !tbaa !24
  %t339 = load i64, ptr %l18, !tbaa !24
  %t342 = icmp slt i64 %t338, %t339
  %t344 = xor i1 %t342, true
  br i1 %t344, label %bb107, label %bb108
bb107:
  br label %bb112
bb108:
  br label %bb109
bb109:
  %t346 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t346, ptr %l185, !tbaa !27
  %t347 = load i64, ptr %l17, !tbaa !24
  %t349 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr ptr, ptr %t350, i64 %t347
  %t352 = load ptr, ptr %t351, !tbaa !39
  %t356 = getelementptr %"compiler/typed:Clause", ptr %t352, i32 0, i32 3
  %t357 = load ptr, ptr %t356, !tbaa !29
  %t358 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t357, ptr %t358)
  br label %bb110
bb110:
  br label %bb111
bb111:
  %t361 = load i64, ptr %l17, !tbaa !24
  %t363 = add i64 %t361, 1
  store i64 %t363, ptr %l17, !tbaa !24
  br label %bb106
bb112:
  br label %bb166
bb113:
  %t365 = load ptr, ptr %l0, !tbaa !29
  store ptr %t365, ptr %l193, !tbaa !29
  store i1 false, ptr %l194, !tbaa !21
  %t366 = load ptr, ptr %l193, !tbaa !29
  %t367 = icmp ne ptr %t366, null
  br i1 %t367, label %bb114, label %bb115
bb114:
  %t369 = load ptr, ptr %l193, !tbaa !29
  %t370 = load i64, ptr %t369, !range !{i64 0, i64 17}
  %t372 = icmp eq i64 %t370, 14
  store i1 %t372, ptr %l194, !tbaa !21
  br label %bb115
bb115:
  %t373 = load i1, ptr %l194, !tbaa !21
  br i1 %t373, label %bb116, label %bb117
bb116:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = getelementptr { i64, [3 x i64] }, ptr %t374, i32 0, i32 1
  %t377 = getelementptr { %"compiler/source:Span", ptr }, ptr %t376, i32 0, i32 1
  %t378 = load ptr, ptr %t377
  store ptr %t378, ptr %l20, !tbaa !29
  br label %bb118
bb117:
  br label %bb154
bb118:
  %t380 = load ptr, ptr %l20, !tbaa !29
  %t382 = getelementptr %"compiler/typed:Spawn", ptr %t380, i32 0, i32 0
  %t383 = load { i64, ptr }, ptr %t382, !tbaa !27
  store { i64, ptr } %t383, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t385 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t387 = extractvalue { i64, ptr } %t385, 0
  store i64 %t387, ptr %l23, !tbaa !24
  br label %bb119
bb119:
  %t389 = load i64, ptr %l22, !tbaa !24
  %t390 = load i64, ptr %l23, !tbaa !24
  %t393 = icmp slt i64 %t389, %t390
  %t395 = xor i1 %t393, true
  br i1 %t395, label %bb120, label %bb121
bb120:
  br label %bb145
bb121:
  br label %bb122
bb122:
  %t397 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t397, ptr %l207, !tbaa !27
  %t398 = load i64, ptr %l22, !tbaa !24
  %t400 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr ptr, ptr %t401, i64 %t398
  %t403 = load ptr, ptr %t402, !tbaa !39
  store ptr %t403, ptr %l24, !tbaa !29
  %t405 = load ptr, ptr %l24, !tbaa !29
  %t407 = icmp eq ptr %t405, null
  br i1 %t407, label %bb123, label %bb124
bb123:
  br label %bb144
bb124:
  br label %bb125
bb125:
  %t409 = load ptr, ptr %l24, !tbaa !29
  %t411 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %t409)
  store i64 %t411, ptr %l213
  br label %bb126
bb126:
  %t412 = load i64, ptr %l213, !tbaa !24
  %t413 = icmp sge i64 %t412, 0
  br i1 %t413, label %bb127, label %bb128
bb127:
  %t415 = load ptr, ptr %l1, !tbaa !29
  %t417 = getelementptr %"compiler/scope:walked", ptr %t415, i32 0, i32 2
  store ptr %t417, ptr %l216, !tbaa !29
  %t418 = load ptr, ptr %l24, !tbaa !29
  %t420 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %t418)
  store i64 %t420, ptr %l218
  br label %bb129
bb128:
  br label %bb131
bb129:
  %t421 = load ptr, ptr %l216, !tbaa !29
  %t422 = load i64, ptr %l218, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t421, i64 %t422)
  br label %bb130
bb130:
  br label %bb131
bb131:
  %t423 = load ptr, ptr %l24, !tbaa !29
  %t425 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %t423)
  store i1 %t425, ptr %l220
  br label %bb132
bb132:
  %t426 = load i1, ptr %l220, !tbaa !21
  %t427 = xor i1 %t426, true
  br i1 %t427, label %bb133, label %bb134
bb133:
  %t429 = load ptr, ptr %l24, !tbaa !29
  %t431 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t429)
  store i64 %t431, ptr %l224
  br label %bb135
bb134:
  store i1 false, ptr %l222, !tbaa !21
  br label %bb136
bb135:
  %t432 = load i64, ptr %l224, !tbaa !24
  %t433 = icmp sge i64 %t432, 0
  store i1 %t433, ptr %l222, !tbaa !21
  br label %bb136
bb136:
  %t435 = load i1, ptr %l222, !tbaa !21
  br i1 %t435, label %bb137, label %bb138
bb137:
  %t436 = load ptr, ptr %l1, !tbaa !29
  %t438 = getelementptr %"compiler/scope:walked", ptr %t436, i32 0, i32 5
  store ptr %t438, ptr %l227, !tbaa !29
  %t439 = load ptr, ptr %l24, !tbaa !29
  %t441 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t439)
  store i64 %t441, ptr %l229
  br label %bb139
bb138:
  br label %bb141
bb139:
  %t442 = load ptr, ptr %l227, !tbaa !29
  %t443 = load i64, ptr %l229, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t442, i64 %t443)
  br label %bb140
bb140:
  br label %bb141
bb141:
  %t444 = load ptr, ptr %l24, !tbaa !29
  %t445 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectField(ptr %v0, ptr %v1, ptr %t444, ptr %t445)
  br label %bb142
bb142:
  %t448 = load ptr, ptr %l24, !tbaa !29
  %t450 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %t448, ptr %t450)
  br label %bb143
bb143:
  br label %bb144
bb144:
  %t453 = load i64, ptr %l22, !tbaa !24
  %t455 = add i64 %t453, 1
  store i64 %t455, ptr %l22, !tbaa !24
  br label %bb119
bb145:
  %t457 = load ptr, ptr %l20, !tbaa !29
  %t459 = getelementptr %"compiler/typed:Spawn", ptr %t457, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !29
  %t462 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t460, ptr %t462)
  br label %bb146
bb146:
  %t465 = load ptr, ptr %l20, !tbaa !29
  %t467 = getelementptr %"compiler/typed:Spawn", ptr %t465, i32 0, i32 2
  %t468 = load { i64, ptr }, ptr %t467, !tbaa !27
  store { i64, ptr } %t468, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t470 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t472 = extractvalue { i64, ptr } %t470, 0
  store i64 %t472, ptr %l27, !tbaa !24
  br label %bb147
bb147:
  %t474 = load i64, ptr %l26, !tbaa !24
  %t475 = load i64, ptr %l27, !tbaa !24
  %t478 = icmp slt i64 %t474, %t475
  %t480 = xor i1 %t478, true
  br i1 %t480, label %bb148, label %bb149
bb148:
  br label %bb153
bb149:
  br label %bb150
bb150:
  %t482 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t482, ptr %l249, !tbaa !27
  %t483 = load i64, ptr %l26, !tbaa !24
  %t485 = getelementptr { i64, ptr }, ptr %l249, i32 0, i32 1
  %t486 = load ptr, ptr %t485, !tbaa !27
  %t487 = getelementptr ptr, ptr %t486, i64 %t483
  %t488 = load ptr, ptr %t487, !tbaa !39
  %t492 = getelementptr %"compiler/typed:TaskClause", ptr %t488, i32 0, i32 3
  %t493 = load ptr, ptr %t492, !tbaa !29
  %t494 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t493, ptr %t494)
  br label %bb151
bb151:
  br label %bb152
bb152:
  %t497 = load i64, ptr %l26, !tbaa !24
  %t499 = add i64 %t497, 1
  store i64 %t499, ptr %l26, !tbaa !24
  br label %bb147
bb153:
  br label %bb166
bb154:
  %t501 = load ptr, ptr %l0, !tbaa !29
  store ptr %t501, ptr %l257, !tbaa !29
  store i1 false, ptr %l258, !tbaa !21
  %t502 = load ptr, ptr %l257, !tbaa !29
  %t503 = icmp ne ptr %t502, null
  br i1 %t503, label %bb155, label %bb156
bb155:
  %t505 = load ptr, ptr %l257, !tbaa !29
  %t506 = load i64, ptr %t505, !range !{i64 0, i64 17}
  %t508 = icmp eq i64 %t506, 15
  store i1 %t508, ptr %l258, !tbaa !21
  br label %bb156
bb156:
  %t509 = load i1, ptr %l258, !tbaa !21
  br i1 %t509, label %bb157, label %bb158
bb157:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t512 = getelementptr { i64, [3 x i64] }, ptr %t510, i32 0, i32 1
  %t513 = getelementptr { %"compiler/source:Span", ptr }, ptr %t512, i32 0, i32 1
  %t514 = load ptr, ptr %t513
  store ptr %t514, ptr %l29, !tbaa !29
  br label %bb159
bb158:
  br label %bb161
bb159:
  %t516 = load ptr, ptr %l29, !tbaa !29
  %t518 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %t516, ptr %t518)
  br label %bb160
bb160:
  br label %bb166
bb161:
  br i1 true, label %bb162, label %bb163
bb162:
  br label %bb164
bb163:
  br label %bb165
bb164:
  br label %bb166
bb165:
  call void @__olang_check_failed(ptr @olang_loc_1f46f0e2a5866641_40fe5c75700827d5)
  unreachable
bb166:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eObligations(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:rel"
  %lp7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l12 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/scope:rel"
  %l37 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l46 = alloca i1
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 6
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb2
bb2:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %lp3
  %t17 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v2, ptr %v2, ptr %t15)
  store { i64, ptr } %t17, ptr %l15
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t18 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t18, ptr %l16, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l17, !tbaa !24
  %t21 = load i64, ptr %l17, !tbaa !24
  %t22 = mul i64 %t21, 16
  %t23 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l18, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l17, !tbaa !24
  %t31 = mul i64 %t30, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %t29, i64 %t31, i1 false)
  %t32 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t32, ptr %l16, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 6
  %t37 = load i64, ptr %l1, !tbaa !24
  %t40 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store ptr %t40, ptr %l22
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t43 = getelementptr %"compiler/scope:summary", ptr %t41, i32 0, i32 0
  store ptr %t43, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t45 = load i64, ptr %l5, !tbaa !24
  store i64 %t45, ptr %l25, !tbaa !24
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t46)
  store i64 %t48, ptr %l27
  br label %bb9
bb9:
  %t49 = load i64, ptr %l25, !tbaa !24
  %t50 = load i64, ptr %l27, !tbaa !24
  %t51 = icmp slt i64 %t49, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb11:
  br label %bb12
bb12:
  %t55 = load ptr, ptr %l4, !tbaa !29
  %t56 = load i64, ptr %l5, !tbaa !24
  %t59 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t55, i64 %t56)
  store %"compiler/scope:rel" %t59, ptr %l32
  br label %bb13
bb13:
  %t60 = load %"compiler/scope:rel", ptr %l32
  store %"compiler/scope:rel" %t60, ptr %l6
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  %t63 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t64 = load { i64, [2 x i64] }, ptr %t63
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t70 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermName(ptr %v0, ptr %v1, ptr %s3, ptr %t61, i64 %t62, { i64, [2 x i64] } %t64, ptr %t65)
  store { i64, ptr } %t70, ptr %l37
  br label %bb14
bb14:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t73 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 1
  %t74 = load { i64, [2 x i64] }, ptr %t73
  %t75 = load ptr, ptr %l2, !tbaa !29
  %t80 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermName(ptr %v0, ptr %v1, ptr %s3, ptr %t71, i64 %t72, { i64, [2 x i64] } %t74, ptr %t75)
  store { i64, ptr } %t80, ptr %l42
  br label %bb15
bb15:
  %t81 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t87 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t82, i64 %t83)
  %t92 = getelementptr i8, ptr %t91, i64 %t83
  call void @olang_textcopy(ptr %t92, ptr %t84, i64 %t85)
  %t93 = getelementptr i8, ptr %t92, i64 %t85
  call void @olang_textcopy(ptr %t93, ptr %t88, i64 %t89)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t91, 1
  %t96 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t96, ptr %lp7
  %t98 = load ptr, ptr %lp7
  store { i64, ptr } %t95, ptr %t98, !tbaa !27
  %t99 = load ptr, ptr %lp3
  %t100 = load ptr, ptr %lp7
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  %t104 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v2, ptr %v2, ptr %t99, { i64, ptr } %t101)
  store i1 %t104, ptr %l46
  br label %bb16
bb16:
  %t105 = load i1, ptr %l46, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb17, label %bb18
bb17:
  %t108 = load ptr, ptr %lp3
  %t109 = load ptr, ptr %lp7
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t108, { i64, ptr } %t110)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb21:
  %t113 = load i64, ptr %l5, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l5, !tbaa !24
  br label %bb8
bb22:
  %t117 = load ptr, ptr %lp3
  %t119 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v2, ptr %v2, ptr %t117)
  store { i64, ptr } %t119, ptr %l53
  br label %bb23
bb23:
  %t120 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t120, ptr %l54, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  store i64 %t122, ptr %l55, !tbaa !24
  %t123 = load i64, ptr %l55, !tbaa !24
  %t124 = mul i64 %t123, 16
  %t125 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t124)
  %t126 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  store { i64, ptr } %t127, ptr %l56, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = load i64, ptr %l55, !tbaa !24
  %t133 = mul i64 %t132, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t129, ptr %t131, i64 %t133, i1 false)
  %t134 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t134, ptr %l54, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t135, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargsAgree(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i64 %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i1
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i1
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca %"compiler/scope:rel"
  %l23 = alloca i32
  %l24 = alloca i1
  %l25 = alloca { i64, [2 x i64] }
  %l26 = alloca %"compiler/scope:agreeAt"
  %l31 = alloca i32
  %l34 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l48 = alloca i64
  %l51 = alloca i64
  %l69 = alloca { i64, ptr }
  %l74 = alloca i1
  %l78 = alloca i1
  %l79 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l90 = alloca i64
  %l92 = alloca i64
  %l97 = alloca %"compiler/scope:rel"
  %l102 = alloca i1
  %l106 = alloca i1
  %l109 = alloca i1
  %l124 = alloca i32
  %l125 = alloca { i64, ptr }
  %l131 = alloca i1
  %l135 = alloca i1
  %l138 = alloca i1
  %l139 = alloca i1
  %l142 = alloca i1
  %l145 = alloca i1
  %l146 = alloca { i64, ptr }
  %l150 = alloca i1
  %l152 = alloca %"compiler/scope:agreeAt"
  %l158 = alloca %"compiler/scope:agreeAt"
  %l159 = alloca i32
  %l160 = alloca ptr
  %l163 = alloca { i64, ptr }
  %l166 = alloca %"compiler/source:Span"
  %l167 = alloca %"compiler/diagmsg:Msg"
  %l168 = alloca i64
  %s12 = alloca %olang.scope
  %rv = alloca i1
  %t27 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l31
  br label %bb1
bb1:
  %t6 = load i32, ptr %l31, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l34, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t18, i32 %t6)
  store i32 %t22, ptr %l39
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l34, !tbaa !29
  %t24 = load i32, ptr %l39, !tbaa !23
  %t25 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t23, i32 %t24)
  store { i64, ptr } %t25, ptr %l40
  br label %bb3
bb3:
  %t26 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t26, ptr %l8, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t27
  %t28 = getelementptr { i64, [2 x i64] }, ptr %t27, i32 0, i32 0
  store i64 0, ptr %t28
  %t29 = load { i64, [2 x i64] }, ptr %t27
  store { i64, [2 x i64] } %t29, ptr %l9
  store i1 false, ptr %l10, !tbaa !21
  store i64 0, ptr %l11, !tbaa !24
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Call", ptr %t31, i32 0, i32 1
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  store i64 %t36, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t38 = load i64, ptr %l12, !tbaa !24
  %t39 = load i64, ptr %l11, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb4, label %bb5
bb4:
  %t44 = load i64, ptr %l13, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb9
bb6:
  %t48 = load i64, ptr %l12, !tbaa !24
  %t49 = load i64, ptr %l11, !tbaa !24
  %t52 = sub i64 %t48, %t49
  %t53 = load i64, ptr %l13, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = sub i64 %t56, 1
  %t59 = load i64, ptr %l13, !tbaa !24
  %t62 = sdiv i64 %t58, %t59
  store i64 %t62, ptr %l51, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb8
bb8:
  %t64 = load i64, ptr %l51, !tbaa !24
  store i64 %t64, ptr %l48, !tbaa !24
  br label %bb9
bb9:
  %t65 = load i64, ptr %l48, !tbaa !24
  store i64 %t65, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb10
bb10:
  %t66 = load i64, ptr %l15, !tbaa !24
  %t67 = load i64, ptr %l14, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb11, label %bb12
bb11:
  br label %bb80
bb12:
  br label %bb13
bb13:
  %t74 = load i64, ptr %l11, !tbaa !24
  %t75 = load i64, ptr %l15, !tbaa !24
  %t76 = load i64, ptr %l13, !tbaa !24
  %t79 = mul i64 %t75, %t76
  %t82 = add i64 %t74, %t79
  store i64 %t82, ptr %l16, !tbaa !24
  store { i64, ptr } %a4, ptr %l69, !tbaa !27
  %t85 = load i64, ptr %l16, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i64, ptr %t88, i64 %t85
  %t90 = load i64, ptr %t89, !tbaa !34
  store i64 %t90, ptr %l17, !tbaa !24
  %t92 = load i64, ptr %l17, !tbaa !24
  %t94 = icmp slt i64 %t92, 0
  br i1 %t94, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb16
bb15:
  %t96 = load i64, ptr %l17, !tbaa !24
  %t97 = load i64, ptr %l3, !tbaa !24
  %t100 = icmp eq i64 %t96, %t97
  store i1 %t100, ptr %l74, !tbaa !21
  br label %bb16
bb16:
  %t102 = load i1, ptr %l74, !tbaa !21
  br i1 %t102, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb19
bb18:
  store { i64, ptr } %a5, ptr %l79, !tbaa !27
  %t104 = load i64, ptr %l16, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr %"compiler/scope:Val", ptr %t107, i64 %t104
  %t109 = getelementptr %"compiler/scope:Val", ptr %t108, i32 0, i32 0
  %t110 = load i32, ptr %t109, !range !{i32 0, i32 5}
  %t112 = trunc i64 3 to i32
  %t113 = icmp eq i32 %t110, %t112
  %t115 = xor i1 %t113, true
  store i1 %t115, ptr %l78, !tbaa !21
  br label %bb19
bb19:
  %t117 = load i1, ptr %l78, !tbaa !21
  br i1 %t117, label %bb20, label %bb21
bb20:
  br label %bb79
bb21:
  br label %bb22
bb22:
  store i1 false, ptr %l18, !tbaa !21
  store i1 false, ptr %l19, !tbaa !21
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/scope:Scoper", ptr %t118, i32 0, i32 6
  %t124 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t120, i64 %a2)
  store ptr %t124, ptr %l87
  br label %bb23
bb23:
  %t125 = load ptr, ptr %l87, !tbaa !29
  %t127 = getelementptr %"compiler/scope:summary", ptr %t125, i32 0, i32 0
  store ptr %t127, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb24
bb24:
  %t129 = load i64, ptr %l21, !tbaa !24
  store i64 %t129, ptr %l90, !tbaa !24
  %t130 = load ptr, ptr %l20, !tbaa !29
  %t132 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t130)
  store i64 %t132, ptr %l92
  br label %bb25
bb25:
  %t133 = load i64, ptr %l90, !tbaa !24
  %t134 = load i64, ptr %l92, !tbaa !24
  %t135 = icmp slt i64 %t133, %t134
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb26, label %bb27
bb26:
  br label %bb49
bb27:
  br label %bb28
bb28:
  %t139 = load ptr, ptr %l20, !tbaa !29
  %t140 = load i64, ptr %l21, !tbaa !24
  %t143 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t139, i64 %t140)
  store %"compiler/scope:rel" %t143, ptr %l97
  br label %bb29
bb29:
  %t144 = load %"compiler/scope:rel", ptr %l97
  store %"compiler/scope:rel" %t144, ptr %l22
  %t145 = getelementptr %"compiler/scope:rel", ptr %l22, i32 0, i32 4
  %t146 = load i64, ptr %t145, !tbaa !24
  %t148 = icmp eq i64 %t146, 0
  br i1 %t148, label %bb30, label %bb31
bb30:
  br label %bb48
bb31:
  br label %bb32
bb32:
  %t150 = getelementptr %"compiler/scope:rel", ptr %l22, i32 0, i32 0
  %t151 = load { i64, [2 x i64] }, ptr %t150
  %t153 = extractvalue { i64, [2 x i64] } %t151, 0
  %t154 = icmp eq i64 %t153, 2
  br i1 %t154, label %bb33, label %bb34
bb33:
  %t156 = getelementptr %"compiler/scope:rel", ptr %l22, i32 0, i32 0
  %t157 = getelementptr { i64, [2 x i64] }, ptr %t156, i32 0, i32 1
  %t158 = getelementptr { i64 }, ptr %t157, i32 0, i32 0
  %t159 = load i64, ptr %t158
  %t160 = load i64, ptr %l17, !tbaa !24
  %t163 = icmp eq i64 %t159, %t160
  store i1 %t163, ptr %l102, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb35
bb35:
  %t165 = load i1, ptr %l102, !tbaa !21
  br i1 %t165, label %bb36, label %bb37
bb36:
  %t166 = getelementptr %"compiler/scope:rel", ptr %l22, i32 0, i32 1
  %t167 = load { i64, [2 x i64] }, ptr %t166
  %t169 = extractvalue { i64, [2 x i64] } %t167, 0
  %t170 = icmp eq i64 %t169, 2
  br i1 %t170, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb41
bb38:
  %t172 = getelementptr %"compiler/scope:rel", ptr %l22, i32 0, i32 1
  %t173 = getelementptr { i64, [2 x i64] }, ptr %t172, i32 0, i32 1
  %t174 = getelementptr { i64 }, ptr %t173, i32 0, i32 0
  %t175 = load i64, ptr %t174
  %t176 = load i64, ptr %l3, !tbaa !24
  %t179 = icmp eq i64 %t175, %t176
  store i1 %t179, ptr %l109, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb40
bb40:
  %t181 = load i1, ptr %l109, !tbaa !21
  store i1 %t181, ptr %l106, !tbaa !21
  br label %bb41
bb41:
  %t182 = load i1, ptr %l106, !tbaa !21
  br i1 %t182, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l18, !tbaa !21
  %t183 = getelementptr %"compiler/scope:rel", ptr %l22, i32 0, i32 4
  %t184 = load i64, ptr %t183, !tbaa !24
  %t185 = load i64, ptr @G_2ecompiler_2fscope_2eWhyField, !tbaa !24
  %t188 = icmp eq i64 %t184, %t185
  br i1 %t188, label %bb44, label %bb45
bb43:
  br label %bb47
bb44:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t190 = load i64, ptr %l21, !tbaa !24
  %t192 = add i64 %t190, 1
  store i64 %t192, ptr %l21, !tbaa !24
  br label %bb24
bb49:
  %t194 = load i1, ptr %l18, !tbaa !21
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb50, label %bb51
bb50:
  br label %bb79
bb51:
  br label %bb52
bb52:
  %t198 = load i64, ptr %l16, !tbaa !24
  %t199 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 0
  %t204 = icmp slt i64 %t198, %t201
  br i1 %t204, label %bb53, label %bb54
bb53:
  %t206 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t206, ptr %l125, !tbaa !27
  %t207 = load i64, ptr %l16, !tbaa !24
  %t209 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr i32, ptr %t210, i64 %t207
  %t212 = load i32, ptr %t211, !tbaa !33
  store i32 %t212, ptr %l124, !tbaa !23
  br label %bb55
bb54:
  %t214 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t214, ptr %l124, !tbaa !23
  br label %bb55
bb55:
  %t216 = load i32, ptr %l124, !tbaa !23
  store i32 %t216, ptr %l23, !tbaa !23
  %t217 = load i1, ptr %l19, !tbaa !21
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb56, label %bb57
bb56:
  %t221 = load i32, ptr %l23, !tbaa !23
  %t222 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t225 = icmp ne i32 %t221, %t222
  store i1 %t225, ptr %l131, !tbaa !21
  br label %bb58
bb57:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb58
bb58:
  %t227 = load i1, ptr %l131, !tbaa !21
  br i1 %t227, label %bb59, label %bb60
bb59:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load i32, ptr %l23, !tbaa !23
  %t232 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t228, i32 %t229)
  store i1 %t232, ptr %l138
  br label %bb61
bb60:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb67
bb61:
  %t233 = load i1, ptr %l138, !tbaa !21
  br i1 %t233, label %bb62, label %bb63
bb62:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load i32, ptr %l23, !tbaa !23
  %t238 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %t234, i32 %t235)
  store i1 %t238, ptr %l142
  br label %bb64
bb63:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l23, !tbaa !23
  %t243 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %t239, i32 %t240)
  store i1 %t243, ptr %l145
  br label %bb65
bb64:
  %t244 = load i1, ptr %l142, !tbaa !21
  store i1 %t244, ptr %l139, !tbaa !21
  br label %bb66
bb65:
  %t245 = load i1, ptr %l145, !tbaa !21
  store i1 %t245, ptr %l139, !tbaa !21
  br label %bb66
bb66:
  %t246 = load i1, ptr %l139, !tbaa !21
  store i1 %t246, ptr %l135, !tbaa !21
  br label %bb67
bb67:
  %t247 = load i1, ptr %l135, !tbaa !21
  store i1 %t247, ptr %l24, !tbaa !21
  store { i64, ptr } %a6, ptr %l146, !tbaa !27
  %t249 = load i64, ptr %l17, !tbaa !24
  %t251 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = getelementptr { i64, [2 x i64] }, ptr %t252, i64 %t249
  %t254 = load { i64, [2 x i64] }, ptr %t253
  store { i64, [2 x i64] } %t254, ptr %l25
  %t256 = load { i64, [2 x i64] }, ptr %l25
  %t258 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t256)
  store i1 %t258, ptr %l150
  br label %bb68
bb68:
  %t259 = load i1, ptr %l150, !tbaa !21
  %t260 = xor i1 %t259, true
  br i1 %t260, label %bb69, label %bb70
bb69:
  br label %bb79
bb70:
  br label %bb71
bb71:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load { i64, [2 x i64] }, ptr %l9
  %t264 = load i1, ptr %l10, !tbaa !21
  %t265 = load { i64, [2 x i64] }, ptr %l25
  %t266 = load i1, ptr %l24, !tbaa !21
  %t272 = call { i32, %"compiler/scope:agreeAt" } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eagreeStep(ptr %v0, ptr %t262, { i64, [2 x i64] } %t263, i1 %t264, { i64, [2 x i64] } %t265, i1 %t266)
  %t273 = extractvalue { i32, %"compiler/scope:agreeAt" } %t272, 1
  %t274 = extractvalue { i32, %"compiler/scope:agreeAt" } %t272, 0
  store i32 %t274, ptr %l159
  %t275 = icmp ne i32 %t274, 0
  br i1 %t275, label %bb73, label %ok.276, !prof !99
ok.276:
  store %"compiler/scope:agreeAt" %t273, ptr %l158
  br label %bb72
bb72:
  %t277 = load %"compiler/scope:agreeAt", ptr %l158
  store %"compiler/scope:agreeAt" %t277, ptr %l152
  br label %bb78
bb73:
  br label %bb74
bb74:
  store %olang.scope zeroinitializer, ptr %s12
  %t278 = load ptr, ptr %l0, !tbaa !29
  store ptr %t278, ptr %l160, !tbaa !29
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load ptr, ptr %l1, !tbaa !29
  %t282 = getelementptr %"compiler/typed:Call", ptr %t280, i32 0, i32 1
  %t283 = load { i64, ptr }, ptr %t282, !tbaa !27
  store { i64, ptr } %t283, ptr %l163, !tbaa !27
  %t284 = load i64, ptr %l16, !tbaa !24
  %t286 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr ptr, ptr %t287, i64 %t284
  %t289 = load ptr, ptr %t288, !tbaa !39
  %t292 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %t279, ptr %t289)
  store %"compiler/source:Span" %t292, ptr %l166
  br label %bb75
bb75:
  %t293 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeArgsDisagree(ptr %s12)
  store %"compiler/diagmsg:Msg" %t293, ptr %l167
  br label %bb76
bb76:
  %t294 = load ptr, ptr %l160, !tbaa !29
  %t295 = load %"compiler/source:Span", ptr %l166
  %t296 = load %"compiler/diagmsg:Msg", ptr %l167
  %t297 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s12, ptr %t294, %"compiler/source:Span" %t295, %"compiler/diagmsg:Msg" %t296)
  store i64 %t297, ptr %l168
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s12)
  store i1 false, ptr %rv
  br label %ret
bb78:
  %t299 = load %"compiler/scope:agreeAt", ptr %l152
  store %"compiler/scope:agreeAt" %t299, ptr %l26
  %t300 = getelementptr %"compiler/scope:agreeAt", ptr %l26, i32 0, i32 0
  %t301 = load { i64, [2 x i64] }, ptr %t300
  %t303 = getelementptr %"compiler/scope:agreeAt", ptr %l26, i32 0, i32 1
  %t304 = load i1, ptr %t303, !tbaa !21
  store { i64, [2 x i64] } %t301, ptr %l9
  store i1 %t304, ptr %l10, !tbaa !21
  br label %bb79
bb79:
  %t310 = load i64, ptr %l15, !tbaa !24
  %t312 = add i64 %t310, 1
  store i64 %t312, ptr %l15, !tbaa !24
  br label %bb10
bb80:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignableHolds(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i32
  %l19 = alloca i1
  %l24 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i32
  %l35 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
  %l44 = alloca i1
  %l47 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca i1
  %l58 = alloca i1
  %l62 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i1
  %l75 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l93 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  %t78 = alloca { ptr, ptr }, align 8
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load i32, ptr %l12, !range !{i32 0, i32 33}
  store i32 %t11, ptr %l2
  %t12 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t14 = trunc i64 18 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb33
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l19
  br label %bb5
bb5:
  %t27 = load i1, ptr %l19, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  store ptr %t36, ptr %l24, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l29
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l24, !tbaa !29
  %t48 = load i32, ptr %l29, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t49, ptr %l30
  br label %bb10
bb10:
  %t50 = load i32, ptr %l30, !range !{i32 0, i32 6}
  store i32 %t50, ptr %l3
  %t51 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t53 = trunc i64 0 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb17
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  store ptr %t61, ptr %l35, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l1, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l40
  br label %bb14
bb14:
  %t72 = load ptr, ptr %l35, !tbaa !29
  %t73 = load i32, ptr %l40, !tbaa !23
  %t74 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t72, i32 %t73)
  store { i64, ptr } %t74, ptr %l41
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t77 = ptrtoint ptr %t76 to i64
  %t79 = getelementptr { ptr, ptr }, ptr %t78, i32 0, i32 0
  store ptr %t75, ptr %t79, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t81 = getelementptr { ptr, ptr }, ptr %t78, i32 0, i32 1
  store ptr %v0, ptr %t81, !tbaa !28
  %t82 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_1, 0
  %t83 = insertvalue { ptr, ptr } %t82, ptr %t78, 1
  %t84 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t86 = extractvalue { ptr, ptr } %t83, 0
  %t87 = extractvalue { ptr, ptr } %t83, 1
  %t88 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2ftypes_3aTypeId_3e_2eSome_3ccompiler_2ftypes_3aTypeId_2c_20_3f_3e(ptr %v0, ptr %s3, { i64, ptr } %t84, ptr %t86, ptr %t87)
  store i1 %t88, ptr %l44
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t89 = load i1, ptr %l44, !tbaa !21
  store i1 %t89, ptr %rv
  br label %ret
bb17:
  %t90 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t92 = trunc i64 4 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l47, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l1, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l52
  br label %bb21
bb21:
  %t106 = load ptr, ptr %l47, !tbaa !29
  %t107 = load i32, ptr %l52, !tbaa !23
  %t108 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignableHolds(ptr %v0, ptr %t106, i32 %t107)
  store i1 %t108, ptr %l53
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t109 = load i1, ptr %l53, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
bb23:
  %t110 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t112 = trunc i64 1 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l1, !tbaa !23
  %t119 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t115, i32 %t116)
  store i1 %t119, ptr %l58
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t120 = load i1, ptr %l58, !tbaa !21
  store i1 %t120, ptr %rv
  br label %ret
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_cfcf18c073820f59_53afec36dfd19fdd)
  unreachable
bb33:
  %t122 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t124 = trunc i64 19 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l62, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/scope:Scoper", ptr %t128, i32 0, i32 0
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l1, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l67
  br label %bb37
bb37:
  %t138 = load ptr, ptr %l62, !tbaa !29
  %t139 = load i32, ptr %l67, !tbaa !23
  %t140 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholdsPart(ptr %v0, ptr %t138, i32 %t139)
  store i1 %t140, ptr %l68
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t141 = load i1, ptr %l68, !tbaa !21
  store i1 %t141, ptr %rv
  br label %ret
bb39:
  %t142 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t144 = trunc i64 22 to i32
  %t145 = icmp eq i32 %t142, %t144
  br i1 %t145, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  %t147 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t149 = trunc i64 23 to i32
  %t150 = icmp eq i32 %t147, %t149
  br i1 %t150, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb57
bb44:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/generic:Program", ptr %t155, i32 0, i32 2
  store ptr %t157, ptr %l75, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/scope:Scoper", ptr %t158, i32 0, i32 0
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  %t164 = load i32, ptr %l1, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l80
  br label %bb45
bb45:
  %t168 = load ptr, ptr %l75, !tbaa !29
  %t169 = load i32, ptr %l80, !tbaa !23
  %t170 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t168, i32 %t169)
  store { i64, ptr } %t170, ptr %l81
  br label %bb46
bb46:
  %t171 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t171, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t172 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t172, 0
  store i64 %t174, ptr %l6, !tbaa !24
  br label %bb47
bb47:
  %t176 = load i64, ptr %l5, !tbaa !24
  %t177 = load i64, ptr %l6, !tbaa !24
  %t180 = icmp slt i64 %t176, %t177
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb48, label %bb49
bb48:
  br label %bb56
bb49:
  br label %bb50
bb50:
  %t184 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t184, ptr %l88, !tbaa !27
  %t185 = load i64, ptr %l5, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i32, ptr %t188, i64 %t185
  %t190 = load i32, ptr %t189, !tbaa !33
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t196 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholdsPart(ptr %v0, ptr %t192, i32 %t190)
  store i1 %t196, ptr %l93
  br label %bb51
bb51:
  %t197 = load i1, ptr %l93, !tbaa !21
  br i1 %t197, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t199 = load i64, ptr %l5, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l5, !tbaa !24
  br label %bb47
bb56:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb57:
  %t204 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t206 = trunc i64 25 to i32
  %t207 = icmp eq i32 %t204, %t206
  br i1 %t207, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb65:
  call void @__olang_check_failed(ptr @olang_loc_e0ca076508909588_46e7bcff37f61d2c)
  unreachable
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
  %s2 = alloca %olang.scope
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
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 28
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 63
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
  store %olang.scope zeroinitializer, ptr %s2
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t20, ptr %l15
  %t21 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildThroughUnknownScope(ptr %s2)
  store %"compiler/diagmsg:Msg" %t21, ptr %l16
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l15
  %t24 = load %"compiler/diagmsg:Msg", ptr %l16
  %t25 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s2, ptr %t22, %"compiler/source:Span" %t23, %"compiler/diagmsg:Msg" %t24)
  store i64 %t25, ptr %l17
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
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
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %t40, i32 0, i32 61
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
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 61
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
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %t60, i32 0, i32 61
  %t63 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t62, i64 %t63, i1 true)
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 66
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load %"compiler/source:Span", ptr %l2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eSetAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t68, i64 %t69, %"compiler/source:Span" %t70)
  br label %bb25
bb25:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 67
  %t77 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t76, i64 %t77, i64 %a3)
  br label %bb26
bb26:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 68
  %t85 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eSetAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t84, i64 %t85, %"compiler/source:Span" %a4)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t90 = load i64, ptr %l5, !tbaa !24
  store i64 %t90, ptr %l49, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scope:Scoper", ptr %t91, i32 0, i32 62
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
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 63
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
  %t110 = getelementptr %"compiler/scope:Scoper", ptr %t108, i32 0, i32 62
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomputeKeeps(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l31 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i64
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l110 = alloca ptr
  %l117 = alloca ptr
  %l124 = alloca ptr
  %l129 = alloca i64
  %l131 = alloca i64
  %l136 = alloca i32
  %l141 = alloca ptr
  %l143 = alloca ptr
  %l148 = alloca i1
  %l153 = alloca ptr
  %l155 = alloca ptr
  %l160 = alloca i1
  %l165 = alloca ptr
  %l167 = alloca ptr
  %l172 = alloca i1
  %l179 = alloca ptr
  %l186 = alloca ptr
  %l193 = alloca ptr
  %l198 = alloca i1
  %l201 = alloca i64
  %l205 = alloca i64
  %l208 = alloca i64
  %l230 = alloca ptr
  %l232 = alloca ptr
  %l236 = alloca i1
  %l241 = alloca ptr
  %l243 = alloca ptr
  %l247 = alloca i1
  %l252 = alloca ptr
  %l254 = alloca ptr
  %l258 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 107
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 108
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t7)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 109
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t11)
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 7
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t15)
  store i64 %t17, ptr %l31
  br label %bb4
bb4:
  %t18 = load i64, ptr %l31, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb10
bb7:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l38, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l38, !tbaa !24
  store i64 %t45, ptr %l35, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l35, !tbaa !24
  store i64 %t46, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb12, label %bb13
bb12:
  br label %bb19
bb13:
  br label %bb14
bb14:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l7, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 107
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t67, i1 false)
  br label %bb15
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/scope:Scoper", ptr %t69, i32 0, i32 108
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t71, i1 false)
  br label %bb16
bb16:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/scope:Scoper", ptr %t73, i32 0, i32 109
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t75, i1 false)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb11
bb19:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/scope:Scoper", ptr %t81, i32 0, i32 122
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t83)
  br label %bb20
bb20:
  store i64 0, ptr %l8, !tbaa !24
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Body", ptr %t85, i32 0, i32 7
  %t89 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t87)
  store i64 %t89, ptr %l68
  br label %bb21
bb21:
  %t90 = load i64, ptr %l68, !tbaa !24
  store i64 %t90, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t91 = load i64, ptr %l9, !tbaa !24
  %t92 = load i64, ptr %l8, !tbaa !24
  %t95 = icmp sgt i64 %t91, %t92
  br i1 %t95, label %bb22, label %bb23
bb22:
  %t97 = load i64, ptr %l10, !tbaa !24
  %t99 = icmp sgt i64 %t97, 0
  br i1 %t99, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb27
bb24:
  %t101 = load i64, ptr %l9, !tbaa !24
  %t102 = load i64, ptr %l8, !tbaa !24
  %t105 = sub i64 %t101, %t102
  %t106 = load i64, ptr %l10, !tbaa !24
  %t109 = add i64 %t105, %t106
  %t111 = sub i64 %t109, 1
  %t112 = load i64, ptr %l10, !tbaa !24
  %t115 = sdiv i64 %t111, %t112
  store i64 %t115, ptr %l75, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb26
bb26:
  %t117 = load i64, ptr %l75, !tbaa !24
  store i64 %t117, ptr %l72, !tbaa !24
  br label %bb27
bb27:
  %t118 = load i64, ptr %l72, !tbaa !24
  store i64 %t118, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb28
bb28:
  %t119 = load i64, ptr %l12, !tbaa !24
  %t120 = load i64, ptr %l11, !tbaa !24
  %t123 = icmp slt i64 %t119, %t120
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb29, label %bb30
bb29:
  br label %bb34
bb30:
  br label %bb31
bb31:
  %t127 = load i64, ptr %l8, !tbaa !24
  %t128 = load i64, ptr %l12, !tbaa !24
  %t129 = load i64, ptr %l10, !tbaa !24
  %t132 = mul i64 %t128, %t129
  %t135 = add i64 %t127, %t132
  store i64 %t135, ptr %l13, !tbaa !24
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/scope:Scoper", ptr %t137, i32 0, i32 122
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t139, i64 -1)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t141 = load i64, ptr %l12, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l12, !tbaa !24
  br label %bb28
bb34:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Body", ptr %t146, i32 0, i32 11
  %t149 = load ptr, ptr %t148, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %t145, ptr %t149)
  br label %bb35
bb35:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionLocals(ptr %v0, ptr %v1, ptr %t152, ptr %t153)
  br label %bb36
bb36:
  %t156 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegions(ptr %v0, ptr %t156)
  br label %bb37
bb37:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Body", ptr %t159, i32 0, i32 11
  %t162 = load ptr, ptr %t161, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t158, ptr %t162)
  br label %bb38
bb38:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/scope:Scoper", ptr %t165, i32 0, i32 6
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/scope:Scoper", ptr %t168, i32 0, i32 27
  %t171 = load i64, ptr %t170, !tbaa !24
  %t174 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t167, i64 %t171)
  store ptr %t174, ptr %l110
  br label %bb39
bb39:
  %t175 = load ptr, ptr %l110, !tbaa !29
  %t177 = getelementptr %"compiler/scope:summary", ptr %t175, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t177)
  br label %bb40
bb40:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/scope:Scoper", ptr %t179, i32 0, i32 6
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/scope:Scoper", ptr %t182, i32 0, i32 27
  %t185 = load i64, ptr %t184, !tbaa !24
  %t188 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t181, i64 %t185)
  store ptr %t188, ptr %l117
  br label %bb41
bb41:
  %t189 = load ptr, ptr %l117, !tbaa !29
  %t191 = getelementptr %"compiler/scope:summary", ptr %t189, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t191)
  br label %bb42
bb42:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/scope:Scoper", ptr %t193, i32 0, i32 6
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/scope:Scoper", ptr %t196, i32 0, i32 27
  %t199 = load i64, ptr %t198, !tbaa !24
  %t202 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t195, i64 %t199)
  store ptr %t202, ptr %l124
  br label %bb43
bb43:
  %t203 = load ptr, ptr %l124, !tbaa !29
  %t205 = getelementptr %"compiler/scope:summary", ptr %t203, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t205)
  br label %bb44
bb44:
  %t207 = load ptr, ptr %l1, !tbaa !29
  %t209 = getelementptr %"compiler/typed:Body", ptr %t207, i32 0, i32 5
  store ptr %t209, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb45
bb45:
  %t211 = load i64, ptr %l15, !tbaa !24
  store i64 %t211, ptr %l129, !tbaa !24
  %t212 = load ptr, ptr %l14, !tbaa !29
  %t214 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t212)
  store i64 %t214, ptr %l131
  br label %bb46
bb46:
  %t215 = load i64, ptr %l129, !tbaa !24
  %t216 = load i64, ptr %l131, !tbaa !24
  %t217 = icmp slt i64 %t215, %t216
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb47, label %bb48
bb47:
  br label %bb61
bb48:
  br label %bb49
bb49:
  %t221 = load ptr, ptr %l14, !tbaa !29
  %t222 = load i64, ptr %l15, !tbaa !24
  %t225 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t221, i64 %t222)
  store i32 %t225, ptr %l136
  br label %bb50
bb50:
  %t226 = load i32, ptr %l136, !tbaa !23
  store i32 %t226, ptr %l16, !tbaa !23
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/scope:Scoper", ptr %t227, i32 0, i32 6
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/scope:Scoper", ptr %t230, i32 0, i32 27
  %t233 = load i64, ptr %t232, !tbaa !24
  %t236 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t229, i64 %t233)
  store ptr %t236, ptr %l141
  br label %bb51
bb51:
  %t237 = load ptr, ptr %l141, !tbaa !29
  %t239 = getelementptr %"compiler/scope:summary", ptr %t237, i32 0, i32 5
  store ptr %t239, ptr %l143, !tbaa !29
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/scope:Scoper", ptr %t240, i32 0, i32 107
  %t243 = load i32, ptr %l16, !tbaa !23
  %t245 = sext i32 %t243 to i64
  %t248 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t242, i64 %t245)
  store i1 %t248, ptr %l148
  br label %bb52
bb52:
  %t249 = load ptr, ptr %l143, !tbaa !29
  %t250 = load i1, ptr %l148, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t249, i1 %t250)
  br label %bb53
bb53:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/scope:Scoper", ptr %t251, i32 0, i32 6
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/scope:Scoper", ptr %t254, i32 0, i32 27
  %t257 = load i64, ptr %t256, !tbaa !24
  %t260 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t253, i64 %t257)
  store ptr %t260, ptr %l153
  br label %bb54
bb54:
  %t261 = load ptr, ptr %l153, !tbaa !29
  %t263 = getelementptr %"compiler/scope:summary", ptr %t261, i32 0, i32 6
  store ptr %t263, ptr %l155, !tbaa !29
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/scope:Scoper", ptr %t264, i32 0, i32 108
  %t267 = load i32, ptr %l16, !tbaa !23
  %t269 = sext i32 %t267 to i64
  %t272 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t266, i64 %t269)
  store i1 %t272, ptr %l160
  br label %bb55
bb55:
  %t273 = load ptr, ptr %l155, !tbaa !29
  %t274 = load i1, ptr %l160, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t273, i1 %t274)
  br label %bb56
bb56:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/scope:Scoper", ptr %t275, i32 0, i32 6
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/scope:Scoper", ptr %t278, i32 0, i32 27
  %t281 = load i64, ptr %t280, !tbaa !24
  %t284 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t277, i64 %t281)
  store ptr %t284, ptr %l165
  br label %bb57
bb57:
  %t285 = load ptr, ptr %l165, !tbaa !29
  %t287 = getelementptr %"compiler/scope:summary", ptr %t285, i32 0, i32 7
  store ptr %t287, ptr %l167, !tbaa !29
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/scope:Scoper", ptr %t288, i32 0, i32 109
  %t291 = load i32, ptr %l16, !tbaa !23
  %t293 = sext i32 %t291 to i64
  %t296 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t290, i64 %t293)
  store i1 %t296, ptr %l172
  br label %bb58
bb58:
  %t297 = load ptr, ptr %l167, !tbaa !29
  %t298 = load i1, ptr %l172, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t297, i1 %t298)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t299 = load i64, ptr %l15, !tbaa !24
  %t301 = add i64 %t299, 1
  store i64 %t301, ptr %l15, !tbaa !24
  br label %bb45
bb61:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/scope:Scoper", ptr %t303, i32 0, i32 6
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/scope:Scoper", ptr %t306, i32 0, i32 27
  %t309 = load i64, ptr %t308, !tbaa !24
  %t312 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t305, i64 %t309)
  store ptr %t312, ptr %l179
  br label %bb62
bb62:
  %t313 = load ptr, ptr %l179, !tbaa !29
  %t315 = getelementptr %"compiler/scope:summary", ptr %t313, i32 0, i32 8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t315)
  br label %bb63
bb63:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/scope:Scoper", ptr %t317, i32 0, i32 6
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/scope:Scoper", ptr %t320, i32 0, i32 27
  %t323 = load i64, ptr %t322, !tbaa !24
  %t326 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t319, i64 %t323)
  store ptr %t326, ptr %l186
  br label %bb64
bb64:
  %t327 = load ptr, ptr %l186, !tbaa !29
  %t329 = getelementptr %"compiler/scope:summary", ptr %t327, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t329)
  br label %bb65
bb65:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/scope:Scoper", ptr %t331, i32 0, i32 6
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t336 = getelementptr %"compiler/scope:Scoper", ptr %t334, i32 0, i32 27
  %t337 = load i64, ptr %t336, !tbaa !24
  %t340 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t333, i64 %t337)
  store ptr %t340, ptr %l193
  br label %bb66
bb66:
  %t341 = load ptr, ptr %l193, !tbaa !29
  %t343 = getelementptr %"compiler/scope:summary", ptr %t341, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t343)
  br label %bb67
bb67:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load ptr, ptr %l1, !tbaa !29
  %t349 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisLambda(ptr %v0, ptr %v1, ptr %t345, ptr %t346)
  store i1 %t349, ptr %l198
  br label %bb68
bb68:
  %t350 = load i1, ptr %l198, !tbaa !21
  br i1 %t350, label %bb69, label %bb70
bb69:
  store i64 0, ptr %l17, !tbaa !24
  %t351 = load ptr, ptr %l1, !tbaa !29
  %t353 = getelementptr %"compiler/typed:Body", ptr %t351, i32 0, i32 7
  %t355 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t353)
  store i64 %t355, ptr %l201
  br label %bb71
bb70:
  br label %bb93
bb71:
  %t356 = load i64, ptr %l201, !tbaa !24
  store i64 %t356, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t357 = load i64, ptr %l18, !tbaa !24
  %t358 = load i64, ptr %l17, !tbaa !24
  %t361 = icmp sgt i64 %t357, %t358
  br i1 %t361, label %bb72, label %bb73
bb72:
  %t363 = load i64, ptr %l19, !tbaa !24
  %t365 = icmp sgt i64 %t363, 0
  br i1 %t365, label %bb74, label %bb75
bb73:
  store i64 0, ptr %l205, !tbaa !24
  br label %bb77
bb74:
  %t367 = load i64, ptr %l18, !tbaa !24
  %t368 = load i64, ptr %l17, !tbaa !24
  %t371 = sub i64 %t367, %t368
  %t372 = load i64, ptr %l19, !tbaa !24
  %t375 = add i64 %t371, %t372
  %t377 = sub i64 %t375, 1
  %t378 = load i64, ptr %l19, !tbaa !24
  %t381 = sdiv i64 %t377, %t378
  store i64 %t381, ptr %l208, !tbaa !24
  br label %bb76
bb75:
  store i64 0, ptr %l208, !tbaa !24
  br label %bb76
bb76:
  %t383 = load i64, ptr %l208, !tbaa !24
  store i64 %t383, ptr %l205, !tbaa !24
  br label %bb77
bb77:
  %t384 = load i64, ptr %l205, !tbaa !24
  store i64 %t384, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb78
bb78:
  %t385 = load i64, ptr %l21, !tbaa !24
  %t386 = load i64, ptr %l20, !tbaa !24
  %t389 = icmp slt i64 %t385, %t386
  %t391 = xor i1 %t389, true
  br i1 %t391, label %bb79, label %bb80
bb79:
  br label %bb92
bb80:
  br label %bb81
bb81:
  %t393 = load i64, ptr %l17, !tbaa !24
  %t394 = load i64, ptr %l21, !tbaa !24
  %t395 = load i64, ptr %l19, !tbaa !24
  %t398 = mul i64 %t394, %t395
  %t401 = add i64 %t393, %t398
  store i64 %t401, ptr %l22, !tbaa !24
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/scope:Scoper", ptr %t403, i32 0, i32 6
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t408 = getelementptr %"compiler/scope:Scoper", ptr %t406, i32 0, i32 27
  %t409 = load i64, ptr %t408, !tbaa !24
  %t412 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t405, i64 %t409)
  store ptr %t412, ptr %l230
  br label %bb82
bb82:
  %t413 = load ptr, ptr %l230, !tbaa !29
  %t415 = getelementptr %"compiler/scope:summary", ptr %t413, i32 0, i32 8
  store ptr %t415, ptr %l232, !tbaa !29
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t418 = getelementptr %"compiler/scope:Scoper", ptr %t416, i32 0, i32 107
  %t419 = load i64, ptr %l22, !tbaa !24
  %t422 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t418, i64 %t419)
  store i1 %t422, ptr %l236
  br label %bb83
bb83:
  %t423 = load ptr, ptr %l232, !tbaa !29
  %t424 = load i1, ptr %l236, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t423, i1 %t424)
  br label %bb84
bb84:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/scope:Scoper", ptr %t425, i32 0, i32 6
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/scope:Scoper", ptr %t428, i32 0, i32 27
  %t431 = load i64, ptr %t430, !tbaa !24
  %t434 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t427, i64 %t431)
  store ptr %t434, ptr %l241
  br label %bb85
bb85:
  %t435 = load ptr, ptr %l241, !tbaa !29
  %t437 = getelementptr %"compiler/scope:summary", ptr %t435, i32 0, i32 9
  store ptr %t437, ptr %l243, !tbaa !29
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/scope:Scoper", ptr %t438, i32 0, i32 108
  %t441 = load i64, ptr %l22, !tbaa !24
  %t444 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t440, i64 %t441)
  store i1 %t444, ptr %l247
  br label %bb86
bb86:
  %t445 = load ptr, ptr %l243, !tbaa !29
  %t446 = load i1, ptr %l247, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t445, i1 %t446)
  br label %bb87
bb87:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/scope:Scoper", ptr %t447, i32 0, i32 6
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t452 = getelementptr %"compiler/scope:Scoper", ptr %t450, i32 0, i32 27
  %t453 = load i64, ptr %t452, !tbaa !24
  %t456 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t449, i64 %t453)
  store ptr %t456, ptr %l252
  br label %bb88
bb88:
  %t457 = load ptr, ptr %l252, !tbaa !29
  %t459 = getelementptr %"compiler/scope:summary", ptr %t457, i32 0, i32 10
  store ptr %t459, ptr %l254, !tbaa !29
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/scope:Scoper", ptr %t460, i32 0, i32 109
  %t463 = load i64, ptr %l22, !tbaa !24
  %t466 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t462, i64 %t463)
  store i1 %t466, ptr %l258
  br label %bb89
bb89:
  %t467 = load ptr, ptr %l254, !tbaa !29
  %t468 = load i1, ptr %l258, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t467, i1 %t468)
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t469 = load i64, ptr %l21, !tbaa !24
  %t471 = add i64 %t469, 1
  store i64 %t471, ptr %l21, !tbaa !24
  br label %bb78
bb92:
  br label %bb93
bb93:
  br label %ret
ret:
  ret void
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca i1
  %l29 = alloca i64
  %l32 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l57 = alloca ptr
  %l61 = alloca { i64, [2 x i64] }
  %l69 = alloca i1
  %l70 = alloca { i64, [2 x i64] }
  %l72 = alloca { i64, [2 x i64] }
  %l74 = alloca i1
  %l76 = alloca i1
  %l80 = alloca i1
  %l84 = alloca i1
  %l87 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l101 = alloca i64
  %l105 = alloca i1
  %l109 = alloca i1
  %l112 = alloca i1
  %l113 = alloca i1
  %l116 = alloca i1
  %l123 = alloca i1
  %l131 = alloca i1
  %l138 = alloca ptr
  %l139 = alloca i64
  %l143 = alloca i64
  %l144 = alloca i64
  %l145 = alloca ptr
  %l147 = alloca %"compiler/source:Span"
  %l149 = alloca { i64, ptr }
  %l157 = alloca i1
  %l161 = alloca i1
  %l163 = alloca i1
  %l164 = alloca { i64, [2 x i64] }
  %l166 = alloca { i64, [2 x i64] }
  %l168 = alloca i1
  %l170 = alloca i1
  %l174 = alloca i64
  %l183 = alloca i1
  %l199 = alloca i1
  %l203 = alloca i1
  %l204 = alloca ptr
  %l214 = alloca %"compiler/typed:Local"
  %l216 = alloca i1
  %l218 = alloca i1
  %l222 = alloca i1
  %l223 = alloca ptr
  %l228 = alloca ptr
  %l229 = alloca i32
  %l239 = alloca i1
  %l243 = alloca i1
  %l246 = alloca i64
  %l248 = alloca ptr
  %l250 = alloca ptr
  %l253 = alloca i64
  %l255 = alloca ptr
  %l261 = alloca i1
  %l263 = alloca i1
  %l264 = alloca { i64, [2 x i64] }
  %l266 = alloca { i64, [2 x i64] }
  %l268 = alloca i1
  %l273 = alloca i64
  %l277 = alloca i1
  %l279 = alloca i1
  %l290 = alloca i1
  %l293 = alloca i1
  %l298 = alloca ptr
  %l299 = alloca i64
  %l301 = alloca { i64, [2 x i64] }
  %l302 = alloca { i64, [2 x i64] }
  %l303 = alloca i1
  %l304 = alloca i64
  %l305 = alloca ptr
  %l307 = alloca %"compiler/source:Span"
  %l309 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l317 = alloca ptr
  %l320 = alloca i64
  %l326 = alloca i1
  %l327 = alloca { i64, [2 x i64] }
  %l329 = alloca { i64, [2 x i64] }
  %l331 = alloca i1
  %l336 = alloca i64
  %s11 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.builder
  %s23room = alloca [64 x i8], align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  store i1 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb3
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  store i1 %t9, ptr %l18, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l18, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, [2 x i64] }, ptr %l2
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 87
  store { i64, [2 x i64] } %t13, ptr %t16
  %t17 = load { i64, [2 x i64] }, ptr %l1
  %t19 = extractvalue { i64, [2 x i64] } %t17, 0
  %t20 = icmp eq i64 %t19, 5
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t23 = getelementptr { i64 }, ptr %t22, i32 0, i32 0
  %t24 = load i64, ptr %t23
  store i64 %t24, ptr %l6, !tbaa !24
  br label %bb9
bb8:
  br label %bb26
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 39
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t28, i64 %t29)
  store i64 %t32, ptr %l29
  br label %bb10
bb10:
  %t33 = load i64, ptr %l29, !tbaa !24
  store i64 %t33, ptr %l7, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t34, i64 %t35)
  store i64 %t38, ptr %l32
  br label %bb11
bb11:
  %t39 = load i64, ptr %l32, !tbaa !24
  store i64 %t39, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = load i64, ptr %l9, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb17
bb14:
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l9, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l39, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb16
bb16:
  %t66 = load i64, ptr %l39, !tbaa !24
  store i64 %t66, ptr %l36, !tbaa !24
  br label %bb17
bb17:
  %t67 = load i64, ptr %l36, !tbaa !24
  store i64 %t67, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb18
bb18:
  %t68 = load i64, ptr %l11, !tbaa !24
  %t69 = load i64, ptr %l10, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb19, label %bb20
bb19:
  br label %bb25
bb20:
  br label %bb21
bb21:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l11, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l57, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 40
  %t93 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t89, i64 %t84)
  store { i64, [2 x i64] } %t93, ptr %l61
  br label %bb22
bb22:
  %t94 = load { i64, [2 x i64] }, ptr %l2
  %t95 = load i1, ptr %l3, !tbaa !21
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t97 = load i64, ptr %l5, !tbaa !24
  %t98 = load ptr, ptr %l57, !tbaa !29
  %t99 = load { i64, [2 x i64] }, ptr %l61
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t98, { i64, [2 x i64] } %t99, { i64, [2 x i64] } %t94, i1 %t95, ptr %t96, i64 %t97)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t104 = load i64, ptr %l11, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l11, !tbaa !24
  br label %bb18
bb25:
  br label %ret
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_47dfda24c0d910ef_d5dd1abdea0dbd2b)
  unreachable
bb31:
  %t108 = load i1, ptr %l3, !tbaa !21
  br i1 %t108, label %bb32, label %bb33
bb32:
  %t110 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t110, ptr %l70
  %t111 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t111, ptr %l72
  %t114 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l70, ptr %l72)
  store i1 %t114, ptr %l74
  br label %bb34
bb33:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb35
bb34:
  %t115 = load i1, ptr %l74, !tbaa !21
  %t116 = xor i1 %t115, true
  store i1 %t116, ptr %l69, !tbaa !21
  br label %bb35
bb35:
  %t118 = load i1, ptr %l69, !tbaa !21
  br i1 %t118, label %bb36, label %bb37
bb36:
  %t119 = load i64, ptr %l5, !tbaa !24
  %t120 = load i64, ptr @G_2ecompiler_2fscope_2eFitLocal, !tbaa !24
  %t123 = icmp eq i64 %t119, %t120
  br i1 %t123, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb41
bb38:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb40
bb39:
  %t125 = load i64, ptr %l5, !tbaa !24
  %t126 = load i64, ptr @G_2ecompiler_2fscope_2eFitValue, !tbaa !24
  %t129 = icmp eq i64 %t125, %t126
  store i1 %t129, ptr %l80, !tbaa !21
  br label %bb40
bb40:
  %t131 = load i1, ptr %l80, !tbaa !21
  store i1 %t131, ptr %l76, !tbaa !21
  br label %bb41
bb41:
  %t132 = load i1, ptr %l76, !tbaa !21
  br i1 %t132, label %bb42, label %bb43
bb42:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load { i64, [2 x i64] }, ptr %l1
  %t137 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedTerm(ptr %v0, ptr %t133, { i64, [2 x i64] } %t134)
  store i1 %t137, ptr %l87
  br label %bb44
bb43:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb49
bb44:
  %t138 = load i1, ptr %l87, !tbaa !21
  br i1 %t138, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb48
bb46:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load { i64, [2 x i64] }, ptr %l2
  %t143 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedTerm(ptr %v0, ptr %t139, { i64, [2 x i64] } %t140)
  store i1 %t143, ptr %l91
  br label %bb47
bb47:
  %t144 = load i1, ptr %l91, !tbaa !21
  store i1 %t144, ptr %l88, !tbaa !21
  br label %bb48
bb48:
  %t145 = load i1, ptr %l88, !tbaa !21
  store i1 %t145, ptr %l84, !tbaa !21
  br label %bb49
bb49:
  %t146 = load i1, ptr %l84, !tbaa !21
  br i1 %t146, label %bb50, label %bb51
bb50:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l4, !tbaa !29
  %t149 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackRead(ptr %v0, ptr %v1, ptr %t147, ptr %t148, { i64, [2 x i64] } %t149)
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l4, !tbaa !29
  %t155 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efitError(ptr %v0, ptr %v1, ptr %t153, ptr %t154, i64 %t155, i1 true)
  br label %bb53
bb53:
  br label %ret
bb54:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load { i64, [2 x i64] }, ptr %l1
  %t161 = load { i64, [2 x i64] }, ptr %l2
  %t165 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t159, { i64, [2 x i64] } %t160, { i64, [2 x i64] } %t161)
  store i64 %t165, ptr %l101
  br label %bb55
bb55:
  %t166 = load i64, ptr %l101, !tbaa !24
  store i64 %t166, ptr %l13, !tbaa !24
  %t167 = load i64, ptr %l13, !tbaa !24
  %t168 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t171 = icmp eq i64 %t167, %t168
  br i1 %t171, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb58
bb57:
  %t173 = load i64, ptr %l13, !tbaa !24
  %t174 = load i64, ptr @G_2ecompiler_2fscope_2eFailsUnknown, !tbaa !24
  %t177 = icmp eq i64 %t173, %t174
  store i1 %t177, ptr %l105, !tbaa !21
  br label %bb58
bb58:
  %t179 = load i1, ptr %l105, !tbaa !21
  br i1 %t179, label %bb59, label %bb60
bb59:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load { i64, [2 x i64] }, ptr %l1
  %t184 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedTerm(ptr %v0, ptr %t180, { i64, [2 x i64] } %t181)
  store i1 %t184, ptr %l112
  br label %bb61
bb60:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb66
bb61:
  %t185 = load i1, ptr %l112, !tbaa !21
  br i1 %t185, label %bb62, label %bb63
bb62:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb65
bb63:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load { i64, [2 x i64] }, ptr %l2
  %t190 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedTerm(ptr %v0, ptr %t186, { i64, [2 x i64] } %t187)
  store i1 %t190, ptr %l116
  br label %bb64
bb64:
  %t191 = load i1, ptr %l116, !tbaa !21
  store i1 %t191, ptr %l113, !tbaa !21
  br label %bb65
bb65:
  %t192 = load i1, ptr %l113, !tbaa !21
  store i1 %t192, ptr %l109, !tbaa !21
  br label %bb66
bb66:
  %t193 = load i1, ptr %l109, !tbaa !21
  br i1 %t193, label %bb67, label %bb68
bb67:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load ptr, ptr %l4, !tbaa !29
  %t196 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackRead(ptr %v0, ptr %v1, ptr %t194, ptr %t195, { i64, [2 x i64] } %t196)
  br label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb70
bb70:
  %t200 = load i64, ptr %l13, !tbaa !24
  %t201 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t204 = icmp eq i64 %t200, %t201
  br i1 %t204, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l123, !tbaa !21
  br label %bb73
bb72:
  %t206 = load i64, ptr %l13, !tbaa !24
  %t207 = load i64, ptr @G_2ecompiler_2fscope_2eFailsUnknown, !tbaa !24
  %t210 = icmp eq i64 %t206, %t207
  store i1 %t210, ptr %l123, !tbaa !21
  br label %bb73
bb73:
  %t212 = load i1, ptr %l123, !tbaa !21
  br i1 %t212, label %bb74, label %bb75
bb74:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v1, ptr %t213, ptr %t214)
  br label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb77
bb77:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/scope:Scoper", ptr %t217, i32 0, i32 147
  %t220 = load i1, ptr %t219, !tbaa !21
  br i1 %t220, label %bb78, label %bb79
bb78:
  %t222 = load i64, ptr %l13, !tbaa !24
  %t223 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t226 = icmp eq i64 %t222, %t223
  store i1 %t226, ptr %l131, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb80
bb80:
  %t228 = load i1, ptr %l131, !tbaa !21
  br i1 %t228, label %bb81, label %bb82
bb81:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/scope:Scoper", ptr %t229, i32 0, i32 226
  %t232 = load i1, ptr %t231, !tbaa !21
  br i1 %t232, label %bb83, label %bb84
bb82:
  br label %bb93
bb83:
  store %olang.scope zeroinitializer, ptr %s11
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/scope:Scoper", ptr %t234, i32 0, i32 256
  store ptr %t236, ptr %l138, !tbaa !29
  %t237 = ptrtoint ptr %v0 to i64
  store i64 %t237, ptr %l139, !tbaa !24
  %t238 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t238, label %bb85, label %bb86
bb84:
  br label %bb91
bb85:
  %t240 = call ptr @__olang_region_make(ptr %v0)
  %t241 = ptrtoint ptr %t240 to i64
  store i64 %t241, ptr %l139, !tbaa !24
  br label %bb86
bb86:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l4, !tbaa !29
  %t246 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %v1, ptr %t242, ptr %t243)
  store i64 %t246, ptr %l143
  br label %bb87
bb87:
  %t247 = load i64, ptr %l5, !tbaa !24
  store i64 %t247, ptr %l144, !tbaa !24
  %t248 = load ptr, ptr %l0, !tbaa !29
  store ptr %t248, ptr %l145, !tbaa !29
  %t249 = load ptr, ptr %l4, !tbaa !29
  %t251 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t249)
  store %"compiler/source:Span" %t251, ptr %l147
  br label %bb88
bb88:
  %t252 = getelementptr %"compiler/source:Span", ptr %l147, i32 0, i32 0
  %t253 = load i32, ptr %t252, !tbaa !23
  %t254 = load ptr, ptr %l145, !tbaa !29
  %t256 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %s11, ptr %t254, i32 %t253)
  store { i64, ptr } %t256, ptr %l149
  br label %bb89
bb89:
  %t257 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t259 = load i64, ptr %l143, !tbaa !24
  %t260 = call i64 @__olang_fmt_i64(ptr null, i64 %t259)
  %t261 = add i64 %t258, %t260
  %t262 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t264 = add i64 %t261, %t263
  %t265 = load i64, ptr %l144, !tbaa !24
  %t266 = call i64 @__olang_fmt_i64(ptr null, i64 %t265)
  %t267 = add i64 %t264, %t266
  %t268 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t269 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t270 = add i64 %t267, %t269
  %t271 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 1
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t274 = add i64 %t270, %t273
  %t275 = load i64, ptr %l139
  %t276 = inttoptr i64 %t275 to ptr
  %t277 = call ptr @__olang_scope_alloc(ptr %t276, i64 %t274)
  call void @olang_textcopy(ptr %t277, ptr %t257, i64 %t258)
  %t278 = getelementptr i8, ptr %t277, i64 %t258
  %t279 = call i64 @__olang_fmt_i64(ptr %t278, i64 %t259)
  %t280 = getelementptr i8, ptr %t278, i64 %t260
  call void @olang_textcopy(ptr %t280, ptr %t262, i64 %t263)
  %t281 = getelementptr i8, ptr %t280, i64 %t263
  %t282 = call i64 @__olang_fmt_i64(ptr %t281, i64 %t265)
  %t283 = getelementptr i8, ptr %t281, i64 %t266
  call void @olang_textcopy(ptr %t283, ptr %t268, i64 %t269)
  %t284 = getelementptr i8, ptr %t283, i64 %t269
  call void @olang_textcopy(ptr %t284, ptr %t272, i64 %t273)
  %t285 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t277, 1
  %t288 = load i64, ptr %l139
  %t289 = inttoptr i64 %t288 to ptr
  %t290 = extractvalue { i64, ptr } %t286, 0
  %t291 = extractvalue { i64, ptr } %t286, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %t289, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t296 = load ptr, ptr %l138, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t296, { i64, ptr } %t295)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s11)
  br label %bb91
bb91:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load ptr, ptr %l4, !tbaa !29
  %t300 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %t298, ptr %t299, { i64, [2 x i64] } %t300)
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/scope:Scoper", ptr %t304, i32 0, i32 147
  %t307 = load i1, ptr %t306, !tbaa !21
  br i1 %t307, label %bb94, label %bb95
bb94:
  %t309 = load i64, ptr %l13, !tbaa !24
  %t310 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t313 = icmp eq i64 %t309, %t310
  store i1 %t313, ptr %l157, !tbaa !21
  br label %bb96
bb95:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb96
bb96:
  %t315 = load i1, ptr %l157, !tbaa !21
  br i1 %t315, label %bb97, label %bb98
bb97:
  %t316 = load i1, ptr %l3, !tbaa !21
  store i1 %t316, ptr %l161, !tbaa !21
  br label %bb99
bb98:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb99
bb99:
  %t318 = load i1, ptr %l161, !tbaa !21
  br i1 %t318, label %bb100, label %bb101
bb100:
  %t319 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t319, ptr %l164
  %t320 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t320, ptr %l166
  %t323 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l164, ptr %l166)
  store i1 %t323, ptr %l168
  br label %bb102
bb101:
  store i1 false, ptr %l163, !tbaa !21
  br label %bb103
bb102:
  %t324 = load i1, ptr %l168, !tbaa !21
  %t325 = xor i1 %t324, true
  store i1 %t325, ptr %l163, !tbaa !21
  br label %bb103
bb103:
  %t327 = load i1, ptr %l163, !tbaa !21
  br i1 %t327, label %bb104, label %bb105
bb104:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load { i64, [2 x i64] }, ptr %l2
  %t330 = load { i64, [2 x i64] }, ptr %l1
  %t334 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t328, { i64, [2 x i64] } %t329, { i64, [2 x i64] } %t330)
  store i64 %t334, ptr %l174
  br label %bb106
bb105:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb107
bb106:
  %t335 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t336 = load i64, ptr %l174, !tbaa !24
  %t338 = icmp eq i64 %t336, %t335
  store i1 %t338, ptr %l170, !tbaa !21
  br label %bb107
bb107:
  %t340 = load i1, ptr %l170, !tbaa !21
  br i1 %t340, label %bb108, label %bb109
bb108:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/scope:Scoper", ptr %t342, i32 0, i32 202
  %t345 = load i1, ptr %t344, !tbaa !21
  %t348 = getelementptr %"compiler/scope:Scoper", ptr %t341, i32 0, i32 157
  store i1 %t345, ptr %t348, !tbaa !21
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = getelementptr %"compiler/scope:Scoper", ptr %t350, i32 0, i32 196
  %t353 = load i64, ptr %t352, !tbaa !24
  %t356 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t349, i64 %t353)
  store i1 %t356, ptr %l183
  br label %bb110
bb109:
  br label %bb155
bb110:
  %t357 = load i1, ptr %l183, !tbaa !21
  br i1 %t357, label %bb111, label %bb112
bb111:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/scope:Scoper", ptr %t359, i32 0, i32 196
  %t362 = load i64, ptr %t361, !tbaa !24
  %t363 = load { i64, [2 x i64] }, ptr %l1
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/scope:Scoper", ptr %t364, i32 0, i32 201
  %t367 = load i1, ptr %t366, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftLocal(ptr %v0, ptr %t358, i64 %t362, { i64, [2 x i64] } %t363, i1 %t367)
  br label %bb113
bb112:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/scope:Scoper", ptr %t373, i32 0, i32 196
  %t376 = load i64, ptr %t375, !tbaa !24
  %t377 = load { i64, [2 x i64] }, ptr %l1
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = getelementptr %"compiler/scope:Scoper", ptr %t378, i32 0, i32 201
  %t381 = load i1, ptr %t380, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeLocal(ptr %v0, ptr %t372, i64 %t376, { i64, [2 x i64] } %t377, i1 %t381)
  br label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb115
bb115:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t388 = getelementptr %"compiler/scope:Scoper", ptr %t386, i32 0, i32 201
  %t389 = load i1, ptr %t388, !tbaa !21
  %t391 = xor i1 %t389, true
  br i1 %t391, label %bb116, label %bb117
bb116:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/scope:Scoper", ptr %t393, i32 0, i32 196
  %t396 = load i64, ptr %t395, !tbaa !24
  %t398 = icmp sge i64 %t396, 0
  store i1 %t398, ptr %l199, !tbaa !21
  br label %bb118
bb117:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb118
bb118:
  %t400 = load i1, ptr %l199, !tbaa !21
  br i1 %t400, label %bb119, label %bb120
bb119:
  %t401 = load ptr, ptr %l0, !tbaa !29
  store ptr %t401, ptr %l204, !tbaa !29
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr %"compiler/scope:Scoper", ptr %t402, i32 0, i32 26
  %t405 = load ptr, ptr %t404, !tbaa !29
  %t407 = icmp eq ptr %t405, null
  br i1 %t407, label %bb121, label %bb122
bb120:
  store i1 false, ptr %l203, !tbaa !21
  br label %bb126
bb121:
  call void @__olang_check_failed(ptr @olang_loc_a04ac57bfa252d17_7b19209bfba3c4d3)
  unreachable
bb122:
  br label %bb123
bb123:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/scope:Scoper", ptr %t409, i32 0, i32 26
  %t412 = load ptr, ptr %t411, !tbaa !29
  %t415 = getelementptr %"compiler/typed:Body", ptr %t412, i32 0, i32 7
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t418 = getelementptr %"compiler/scope:Scoper", ptr %t416, i32 0, i32 196
  %t419 = load i64, ptr %t418, !tbaa !24
  %t422 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t415, i64 %t419)
  store %"compiler/typed:Local" %t422, ptr %l214
  br label %bb124
bb124:
  %t423 = getelementptr %"compiler/typed:Local", ptr %l214, i32 0, i32 2
  %t424 = load i32, ptr %t423, !tbaa !23
  %t425 = load ptr, ptr %l204, !tbaa !29
  %t427 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t425, i32 %t424)
  store i1 %t427, ptr %l216
  br label %bb125
bb125:
  %t428 = load i1, ptr %l216, !tbaa !21
  %t429 = xor i1 %t428, true
  store i1 %t429, ptr %l203, !tbaa !21
  br label %bb126
bb126:
  %t431 = load i1, ptr %l203, !tbaa !21
  br i1 %t431, label %bb127, label %bb128
bb127:
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t435 = getelementptr %"compiler/scope:Scoper", ptr %t433, i32 0, i32 196
  %t436 = load i64, ptr %t435, !tbaa !24
  %t439 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsOwn(ptr %v0, ptr %t432, i64 %t436)
  store i1 %t439, ptr %l222
  br label %bb129
bb128:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb130
bb129:
  %t440 = load i1, ptr %l222, !tbaa !21
  store i1 %t440, ptr %l218, !tbaa !21
  br label %bb130
bb130:
  %t441 = load i1, ptr %l218, !tbaa !21
  br i1 %t441, label %bb131, label %bb132
bb131:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/scope:Scoper", ptr %t442, i32 0, i32 45
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/scope:Scoper", ptr %t445, i32 0, i32 196
  %t448 = load i64, ptr %t447, !tbaa !24
  %t451 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t444, i64 %t448)
  %t452 = extractvalue { i32, ptr } %t451, 1
  %t453 = extractvalue { i32, ptr } %t451, 0
  store i32 %t453, ptr %l229
  %t454 = icmp ne i32 %t453, 0
  br i1 %t454, label %bb134, label %ok.455, !prof !99
ok.455:
  store ptr %t452, ptr %l228
  br label %bb133
bb132:
  br label %bb141
bb133:
  %t456 = load ptr, ptr %l228, !tbaa !29
  store ptr %t456, ptr %l223, !tbaa !29
  br label %bb136
bb134:
  br label %bb135
bb135:
  store ptr null, ptr %l223, !tbaa !29
  br label %bb136
bb136:
  %t457 = load ptr, ptr %l223, !tbaa !29
  store ptr %t457, ptr %l14, !tbaa !29
  %t458 = load ptr, ptr %l14, !tbaa !29
  %t460 = icmp eq ptr %t458, null
  %t462 = xor i1 %t460, true
  br i1 %t462, label %bb137, label %bb138
bb137:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t465 = load ptr, ptr %l14, !tbaa !29
  %t466 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %v0, ptr %t464, ptr %t465, { i64, [2 x i64] } %t466)
  br label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb140
bb140:
  br label %bb141
bb141:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t472 = getelementptr %"compiler/scope:Scoper", ptr %t470, i32 0, i32 196
  %t473 = load i64, ptr %t472, !tbaa !24
  %t475 = icmp slt i64 %t473, 0
  br i1 %t475, label %bb142, label %bb143
bb142:
  %t477 = load i64, ptr %l5, !tbaa !24
  %t478 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  %t481 = icmp eq i64 %t477, %t478
  store i1 %t481, ptr %l239, !tbaa !21
  br label %bb144
bb143:
  store i1 false, ptr %l239, !tbaa !21
  br label %bb144
bb144:
  %t483 = load i1, ptr %l239, !tbaa !21
  br i1 %t483, label %bb145, label %bb146
bb145:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t486 = getelementptr %"compiler/scope:Scoper", ptr %t484, i32 0, i32 60
  %t488 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t486)
  store i64 %t488, ptr %l246
  br label %bb147
bb146:
  store i1 false, ptr %l243, !tbaa !21
  br label %bb148
bb147:
  %t489 = load i64, ptr %l246, !tbaa !24
  %t490 = icmp sgt i64 %t489, 0
  store i1 %t490, ptr %l243, !tbaa !21
  br label %bb148
bb148:
  %t492 = load i1, ptr %l243, !tbaa !21
  br i1 %t492, label %bb149, label %bb150
bb149:
  %t493 = load ptr, ptr %l0, !tbaa !29
  store ptr %t493, ptr %l248, !tbaa !29
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t496 = getelementptr %"compiler/scope:Scoper", ptr %t494, i32 0, i32 60
  store ptr %t496, ptr %l250, !tbaa !29
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t499 = getelementptr %"compiler/scope:Scoper", ptr %t497, i32 0, i32 60
  %t501 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t499)
  store i64 %t501, ptr %l253
  br label %bb151
bb150:
  br label %bb154
bb151:
  %t502 = load i64, ptr %l253, !tbaa !24
  %t503 = sub i64 %t502, 1
  %t504 = load ptr, ptr %l250, !tbaa !29
  %t506 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t504, i64 %t503)
  store ptr %t506, ptr %l255
  br label %bb152
bb152:
  %t507 = load { i64, [2 x i64] }, ptr %l1
  %t508 = load ptr, ptr %l248, !tbaa !29
  %t509 = load ptr, ptr %l255, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeFieldArg(ptr %v0, ptr %v0, ptr %t508, ptr %t509, { i64, [2 x i64] } %t507)
  br label %bb153
bb153:
  br label %bb154
bb154:
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t513 = getelementptr %"compiler/scope:Scoper", ptr %t511, i32 0, i32 157
  store i1 false, ptr %t513, !tbaa !21
  br label %bb155
bb155:
  %t514 = load i64, ptr %l13, !tbaa !24
  %t515 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t518 = icmp eq i64 %t514, %t515
  br i1 %t518, label %bb156, label %bb157
bb156:
  %t520 = load i1, ptr %l3, !tbaa !21
  store i1 %t520, ptr %l261, !tbaa !21
  br label %bb158
bb157:
  store i1 false, ptr %l261, !tbaa !21
  br label %bb158
bb158:
  %t522 = load i1, ptr %l261, !tbaa !21
  br i1 %t522, label %bb159, label %bb160
bb159:
  %t523 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t523, ptr %l264
  %t524 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t524, ptr %l266
  %t527 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l264, ptr %l266)
  store i1 %t527, ptr %l268
  br label %bb161
bb160:
  store i1 false, ptr %l263, !tbaa !21
  br label %bb162
bb161:
  %t528 = load i1, ptr %l268, !tbaa !21
  %t529 = xor i1 %t528, true
  store i1 %t529, ptr %l263, !tbaa !21
  br label %bb162
bb162:
  %t531 = load i1, ptr %l263, !tbaa !21
  br i1 %t531, label %bb163, label %bb164
bb163:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load { i64, [2 x i64] }, ptr %l2
  %t534 = load { i64, [2 x i64] }, ptr %l1
  %t538 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t532, { i64, [2 x i64] } %t533, { i64, [2 x i64] } %t534)
  store i64 %t538, ptr %l273
  br label %bb165
bb164:
  br label %bb174
bb165:
  %t539 = load i64, ptr %l273, !tbaa !24
  store i64 %t539, ptr %l13, !tbaa !24
  %t540 = load i64, ptr %l13, !tbaa !24
  %t541 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t544 = icmp eq i64 %t540, %t541
  br i1 %t544, label %bb166, label %bb167
bb166:
  %t546 = load { i64, [2 x i64] }, ptr %l2
  %t548 = call i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %t546)
  store i1 %t548, ptr %l279
  br label %bb168
bb167:
  store i1 false, ptr %l277, !tbaa !21
  br label %bb169
bb168:
  %t549 = load i1, ptr %l279, !tbaa !21
  store i1 %t549, ptr %l277, !tbaa !21
  br label %bb169
bb169:
  %t550 = load i1, ptr %l277, !tbaa !21
  br i1 %t550, label %bb170, label %bb171
bb170:
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t553 = getelementptr %"compiler/scope:Scoper", ptr %t551, i32 0, i32 88
  store i1 true, ptr %t553, !tbaa !21
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t555 = load ptr, ptr %l4, !tbaa !29
  %t556 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efitError(ptr %v0, ptr %v1, ptr %t554, ptr %t555, i64 %t556, i1 true)
  br label %bb172
bb171:
  br label %bb173
bb172:
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t562 = getelementptr %"compiler/scope:Scoper", ptr %t560, i32 0, i32 88
  store i1 false, ptr %t562, !tbaa !21
  br label %ret
bb173:
  br label %bb174
bb174:
  %t563 = load i64, ptr %l13, !tbaa !24
  %t564 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t567 = icmp eq i64 %t563, %t564
  br i1 %t567, label %bb175, label %bb176
bb175:
  br label %ret
bb176:
  br label %bb177
bb177:
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t571 = getelementptr %"compiler/scope:Scoper", ptr %t569, i32 0, i32 226
  %t572 = load i1, ptr %t571, !tbaa !21
  br i1 %t572, label %bb178, label %bb179
bb178:
  %t574 = load ptr, ptr %l0, !tbaa !29
  %t576 = getelementptr %"compiler/scope:Scoper", ptr %t574, i32 0, i32 28
  %t577 = load i1, ptr %t576, !tbaa !21
  store i1 %t577, ptr %l290, !tbaa !21
  br label %bb180
bb179:
  store i1 false, ptr %l290, !tbaa !21
  br label %bb180
bb180:
  %t579 = load i1, ptr %l290, !tbaa !21
  br i1 %t579, label %bb181, label %bb182
bb181:
  %t580 = load i64, ptr %l13, !tbaa !24
  %t581 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t584 = icmp ne i64 %t580, %t581
  store i1 %t584, ptr %l293, !tbaa !21
  br label %bb183
bb182:
  store i1 false, ptr %l293, !tbaa !21
  br label %bb183
bb183:
  %t586 = load i1, ptr %l293, !tbaa !21
  br i1 %t586, label %bb184, label %bb185
bb184:
  store %olang.scope zeroinitializer, ptr %s22
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t589 = getelementptr %"compiler/scope:Scoper", ptr %t587, i32 0, i32 256
  store ptr %t589, ptr %l298, !tbaa !29
  %t590 = ptrtoint ptr %v0 to i64
  store i64 %t590, ptr %l299, !tbaa !24
  %t591 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t591, label %bb186, label %bb187
bb185:
  br label %bb193
bb186:
  %t593 = call ptr @__olang_region_make(ptr %v0)
  %t594 = ptrtoint ptr %t593 to i64
  store i64 %t594, ptr %l299, !tbaa !24
  br label %bb187
bb187:
  %t595 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t595, ptr %l301
  %t596 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t596, ptr %l302
  %t597 = load i1, ptr %l3, !tbaa !21
  store i1 %t597, ptr %l303, !tbaa !21
  %t598 = load i64, ptr %l5, !tbaa !24
  store i64 %t598, ptr %l304, !tbaa !24
  %t599 = load ptr, ptr %l0, !tbaa !29
  store ptr %t599, ptr %l305, !tbaa !29
  %t600 = load ptr, ptr %l4, !tbaa !29
  %t602 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t600)
  store %"compiler/source:Span" %t602, ptr %l307
  br label %bb188
bb188:
  %t603 = getelementptr %"compiler/source:Span", ptr %l307, i32 0, i32 0
  %t604 = load i32, ptr %t603, !tbaa !23
  %t605 = load ptr, ptr %l305, !tbaa !29
  %t607 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %s22, ptr %t605, i32 %t604)
  store { i64, ptr } %t607, ptr %l309
  br label %bb189
bb189:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s23
  store ptr %s23room, ptr %s23
  %t608 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t609 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s23, ptr %t608, i64 %t609)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s23, ptr %l301, i64 0)
  br label %bb190
bb190:
  %t611 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t612 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s23, ptr %t611, i64 %t612)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s23, ptr %l302, i64 0)
  br label %bb191
bb191:
  %t614 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t615 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s23, ptr %t614, i64 %t615)
  %t616 = load i1, ptr %l303, !tbaa !21
  %t617 = select i1 %t616, ptr @.c8, ptr @.c9
  %t618 = select i1 %t616, i64 4, i64 5
  call void @__olang_sb_put(ptr %s23, ptr %t617, i64 %t618)
  %t619 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t620 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s23, ptr %t619, i64 %t620)
  %t621 = load i64, ptr %l304, !tbaa !24
  %t622 = call ptr @__olang_sb_room(ptr %s23, i64 24)
  %t623 = call i64 @__olang_fmt_i64(ptr %t622, i64 %t621)
  call void @__olang_sb_add(ptr %s23, i64 %t623)
  %t624 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t625 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s23, ptr %t624, i64 %t625)
  %t626 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t627 = extractvalue { i64, ptr } %t626, 1
  %t628 = extractvalue { i64, ptr } %t626, 0
  call void @__olang_sb_put(ptr %s23, ptr %t627, i64 %t628)
  %t629 = load ptr, ptr %s23
  %t630 = getelementptr %olang.builder, ptr %s23, i32 0, i32 1
  %t631 = load i64, ptr %t630
  %t632 = load i64, ptr %l299
  %t633 = inttoptr i64 %t632 to ptr
  %t634 = call ptr @__olang_scope_alloc(ptr %t633, i64 %t631)
  call void @olang_textcopy(ptr %t634, ptr %t629, i64 %t631)
  %t635 = insertvalue { i64, ptr } undef, i64 %t631, 0
  %t636 = insertvalue { i64, ptr } %t635, ptr %t634, 1
  store { i64, ptr } %t636, ptr %l312, !tbaa !27
  %t637 = getelementptr %olang.builder, ptr %s23, i32 0, i32 3
  %t638 = load ptr, ptr %t637
  %t639 = icmp ne ptr %t638, null
  br i1 %t639, label %sbgrew.640, label %sbdone.641
sbgrew.640:
  call void @__olang_sb_done(ptr %s23)
  br label %sbdone.641
sbdone.641:
  %t642 = load { i64, ptr }, ptr %l312, !tbaa !27
  %t643 = load i64, ptr %l299
  %t644 = inttoptr i64 %t643 to ptr
  %t645 = extractvalue { i64, ptr } %t642, 0
  %t646 = extractvalue { i64, ptr } %t642, 1
  %t647 = mul i64 %t645, 1
  %t648 = call ptr @__olang_scope_alloc(ptr %t644, i64 %t647)
  call void @llvm.memcpy.p0.p0.i64(ptr %t648, ptr %t646, i64 %t647, i1 false)
  %t649 = insertvalue { i64, ptr } undef, i64 %t645, 0
  %t650 = insertvalue { i64, ptr } %t649, ptr %t648, 1
  %t651 = load ptr, ptr %l298, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t651, { i64, ptr } %t650)
  br label %bb192
bb192:
  call void @__olang_scope_close(ptr %s22)
  br label %bb193
bb193:
  %t653 = load i64, ptr %l13, !tbaa !24
  %t654 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t657 = icmp eq i64 %t653, %t654
  br i1 %t657, label %bb194, label %bb195
bb194:
  %t659 = load ptr, ptr %l0, !tbaa !29
  store ptr %t659, ptr %l317, !tbaa !29
  %t660 = load ptr, ptr %l0, !tbaa !29
  %t661 = load ptr, ptr %l4, !tbaa !29
  %t664 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewRoot(ptr %v0, ptr %v1, ptr %t660, ptr %t661)
  store i64 %t664, ptr %l320
  br label %bb196
bb195:
  br label %bb210
bb196:
  %t665 = load i64, ptr %l320, !tbaa !24
  %t666 = icmp sge i64 %t665, 0
  %t668 = load ptr, ptr %l317, !tbaa !29
  %t669 = getelementptr %"compiler/scope:Scoper", ptr %t668, i32 0, i32 204
  store i1 %t666, ptr %t669, !tbaa !21
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load { i64, [2 x i64] }, ptr %l1
  %t672 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %t670, { i64, [2 x i64] } %t671, { i64, [2 x i64] } %t672, i1 false)
  br label %bb197
bb197:
  %t676 = load i1, ptr %l3, !tbaa !21
  br i1 %t676, label %bb198, label %bb199
bb198:
  %t678 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t678, ptr %l327
  %t679 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t679, ptr %l329
  %t682 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l327, ptr %l329)
  store i1 %t682, ptr %l331
  br label %bb200
bb199:
  store i1 false, ptr %l326, !tbaa !21
  br label %bb201
bb200:
  %t683 = load i1, ptr %l331, !tbaa !21
  %t684 = xor i1 %t683, true
  store i1 %t684, ptr %l326, !tbaa !21
  br label %bb201
bb201:
  %t686 = load i1, ptr %l326, !tbaa !21
  br i1 %t686, label %bb202, label %bb203
bb202:
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t688 = load { i64, [2 x i64] }, ptr %l2
  %t689 = load { i64, [2 x i64] }, ptr %l1
  %t693 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t687, { i64, [2 x i64] } %t688, { i64, [2 x i64] } %t689)
  store i64 %t693, ptr %l336
  br label %bb204
bb203:
  br label %bb209
bb204:
  %t694 = load i64, ptr %l336, !tbaa !24
  %t695 = load ptr, ptr %l0, !tbaa !29
  %t697 = getelementptr %"compiler/scope:Scoper", ptr %t695, i32 0, i32 205
  store i1 true, ptr %t697, !tbaa !21
  %t699 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t702 = icmp eq i64 %t694, %t699
  br i1 %t702, label %bb205, label %bb206
bb205:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t705 = load { i64, [2 x i64] }, ptr %l2
  %t706 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %t704, { i64, [2 x i64] } %t705, { i64, [2 x i64] } %t706, i1 false)
  br label %bb207
bb206:
  br label %bb208
bb207:
  br label %bb208
bb208:
  %t710 = load ptr, ptr %l0, !tbaa !29
  %t712 = getelementptr %"compiler/scope:Scoper", ptr %t710, i32 0, i32 205
  store i1 false, ptr %t712, !tbaa !21
  br label %bb209
bb209:
  %t713 = load ptr, ptr %l0, !tbaa !29
  %t715 = getelementptr %"compiler/scope:Scoper", ptr %t713, i32 0, i32 204
  store i1 false, ptr %t715, !tbaa !21
  br label %ret
bb210:
  %t716 = load ptr, ptr %l0, !tbaa !29
  %t717 = load ptr, ptr %l4, !tbaa !29
  %t718 = load i64, ptr %l5, !tbaa !24
  %t719 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efitError(ptr %v0, ptr %v1, ptr %t716, ptr %t717, i64 %t718, i1 %t719)
  br label %bb211
bb211:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
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
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l56 = alloca ptr
  %l57 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i1
  %l111 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l122 = alloca i1
  %l138 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l147 = alloca i1
  %l159 = alloca ptr
  %l160 = alloca i1
  %l172 = alloca { i64, ptr }
  %l180 = alloca ptr
  %l181 = alloca i1
  %l197 = alloca ptr
  %l198 = alloca i1
  %l214 = alloca ptr
  %l215 = alloca i1
  %l228 = alloca { i64, ptr }
  %l239 = alloca ptr
  %l240 = alloca i1
  %l253 = alloca { i64, ptr }
  %l269 = alloca { i64, ptr }
  %l280 = alloca ptr
  %l281 = alloca i1
  %l297 = alloca { i64, ptr }
  %l311 = alloca { i64, ptr }
  %l321 = alloca ptr
  %l322 = alloca i1
  %l335 = alloca { i64, ptr }
  %l338 = alloca ptr
  %l339 = alloca i1
  %l349 = alloca ptr
  %l350 = alloca i1
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
  store ptr %t5, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t6 = load ptr, ptr %l56, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l56, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l57, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l57, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb16
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t21 = load ptr, ptr %l62, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l62, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 4
  store i1 %t27, ptr %l63, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l63, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb16
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t36 = load ptr, ptr %l68, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l68, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 3
  store i1 %t42, ptr %l69, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l69, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlace(ptr %v0, ptr %v1, ptr %t50, ptr %t51)
  br label %bb17
bb17:
  br label %bb196
bb18:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t55 = load ptr, ptr %l76, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb19, label %bb20
bb19:
  %t58 = load ptr, ptr %l76, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 18}
  %t61 = icmp eq i64 %t59, 5
  store i1 %t61, ptr %l77, !tbaa !21
  br label %bb20
bb20:
  %t62 = load i1, ptr %l77, !tbaa !21
  br i1 %t62, label %bb21, label %bb22
bb21:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Promote", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t69, ptr %t73)
  br label %bb24
bb24:
  br label %bb196
bb25:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t78 = load ptr, ptr %l86, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb26, label %bb27
bb26:
  %t81 = load ptr, ptr %l86, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 18}
  %t84 = icmp eq i64 %t82, 6
  store i1 %t84, ptr %l87, !tbaa !21
  br label %bb27
bb27:
  %t85 = load i1, ptr %l87, !tbaa !21
  br i1 %t85, label %bb28, label %bb29
bb28:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l4, !tbaa !29
  br label %bb30
bb29:
  br label %bb51
bb30:
  %t92 = load ptr, ptr %l4, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Call", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  store ptr %t95, ptr %l5, !tbaa !29
  %t97 = load ptr, ptr %l5, !tbaa !29
  store ptr %t97, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t98 = load ptr, ptr %l94, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb31, label %bb32
bb31:
  %t101 = load ptr, ptr %l94, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 5}
  %t104 = icmp eq i64 %t102, 2
  store i1 %t104, ptr %l95, !tbaa !21
  br label %bb32
bb32:
  %t105 = load i1, ptr %l95, !tbaa !21
  br i1 %t105, label %bb33, label %bb34
bb33:
  %t106 = load ptr, ptr %l5, !tbaa !29
  %t108 = getelementptr { i64, [3 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { ptr }, ptr %t108, i32 0, i32 0
  %t110 = load ptr, ptr %t109
  store ptr %t110, ptr %l6, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t112, ptr %t113)
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
  call void @__olang_check_failed(ptr @olang_loc_7c032d569a98caf9_7007970b8e88fba5)
  unreachable
bb42:
  %t117 = load ptr, ptr %l4, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Call", ptr %t117, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  store i64 %t124, ptr %l9, !tbaa !24
  br label %bb43
bb43:
  %t126 = load i64, ptr %l8, !tbaa !24
  %t127 = load i64, ptr %l9, !tbaa !24
  %t130 = icmp slt i64 %t126, %t127
  %t132 = xor i1 %t130, true
  br i1 %t132, label %bb44, label %bb45
bb44:
  br label %bb49
bb45:
  br label %bb46
bb46:
  %t134 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t134, ptr %l111, !tbaa !27
  %t135 = load i64, ptr %l8, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr ptr, ptr %t138, i64 %t135
  %t140 = load ptr, ptr %t139, !tbaa !39
  %t142 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t142, ptr %t140)
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t147 = load i64, ptr %l8, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l8, !tbaa !24
  br label %bb43
bb49:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflCall(ptr %v0, ptr %v1, ptr %t151, ptr %t152)
  br label %bb50
bb50:
  br label %bb196
bb51:
  %t155 = load ptr, ptr %l1, !tbaa !29
  store ptr %t155, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t156 = load ptr, ptr %l121, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb52, label %bb53
bb52:
  %t159 = load ptr, ptr %l121, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 18}
  %t162 = icmp eq i64 %t160, 7
  store i1 %t162, ptr %l122, !tbaa !21
  br label %bb53
bb53:
  %t163 = load i1, ptr %l122, !tbaa !21
  br i1 %t163, label %bb54, label %bb55
bb54:
  %t164 = load ptr, ptr %l1, !tbaa !29
  %t166 = getelementptr { i64, [5 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t166, i32 0, i32 2
  %t168 = load ptr, ptr %t167
  store ptr %t168, ptr %l11, !tbaa !29
  br label %bb56
bb55:
  br label %bb65
bb56:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l11, !tbaa !29
  %t173 = getelementptr %"compiler/typed:Make", ptr %t171, i32 0, i32 3
  %t174 = load ptr, ptr %t173, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t170, ptr %t174)
  br label %bb57
bb57:
  %t177 = load ptr, ptr %l11, !tbaa !29
  %t179 = getelementptr %"compiler/typed:Make", ptr %t177, i32 0, i32 2
  %t180 = load { i64, ptr }, ptr %t179, !tbaa !27
  store { i64, ptr } %t180, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t182 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t182, 0
  store i64 %t184, ptr %l14, !tbaa !24
  br label %bb58
bb58:
  %t186 = load i64, ptr %l13, !tbaa !24
  %t187 = load i64, ptr %l14, !tbaa !24
  %t190 = icmp slt i64 %t186, %t187
  %t192 = xor i1 %t190, true
  br i1 %t192, label %bb59, label %bb60
bb59:
  br label %bb64
bb60:
  br label %bb61
bb61:
  %t194 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t194, ptr %l138, !tbaa !27
  %t195 = load i64, ptr %l13, !tbaa !24
  %t197 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr ptr, ptr %t198, i64 %t195
  %t200 = load ptr, ptr %t199, !tbaa !39
  %t202 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t202, ptr %t200)
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t207 = load i64, ptr %l13, !tbaa !24
  %t209 = add i64 %t207, 1
  store i64 %t209, ptr %l13, !tbaa !24
  br label %bb58
bb64:
  br label %bb196
bb65:
  %t211 = load ptr, ptr %l1, !tbaa !29
  store ptr %t211, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t212 = load ptr, ptr %l146, !tbaa !29
  %t213 = icmp ne ptr %t212, null
  br i1 %t213, label %bb66, label %bb67
bb66:
  %t215 = load ptr, ptr %l146, !tbaa !29
  %t216 = load i64, ptr %t215, !range !{i64 0, i64 18}
  %t218 = icmp eq i64 %t216, 8
  store i1 %t218, ptr %l147, !tbaa !21
  br label %bb67
bb67:
  %t219 = load i1, ptr %l147, !tbaa !21
  br i1 %t219, label %bb68, label %bb69
bb68:
  %t220 = load ptr, ptr %l1, !tbaa !29
  %t222 = getelementptr { i64, [5 x i64] }, ptr %t220, i32 0, i32 1
  %t223 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t222, i32 0, i32 2
  %t224 = load ptr, ptr %t223
  store ptr %t224, ptr %l16, !tbaa !29
  br label %bb70
bb69:
  br label %bb73
bb70:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load ptr, ptr %l16, !tbaa !29
  %t229 = getelementptr %"compiler/typed:Collect", ptr %t227, i32 0, i32 0
  %t230 = load ptr, ptr %t229, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t226, ptr %t230)
  br label %bb71
bb71:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load ptr, ptr %l16, !tbaa !29
  %t236 = getelementptr %"compiler/typed:Collect", ptr %t234, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t233, ptr %t237)
  br label %bb72
bb72:
  br label %bb196
bb73:
  %t241 = load ptr, ptr %l1, !tbaa !29
  store ptr %t241, ptr %l159, !tbaa !29
  store i1 false, ptr %l160, !tbaa !21
  %t242 = load ptr, ptr %l159, !tbaa !29
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %bb74, label %bb75
bb74:
  %t245 = load ptr, ptr %l159, !tbaa !29
  %t246 = load i64, ptr %t245, !range !{i64 0, i64 18}
  %t248 = icmp eq i64 %t246, 9
  store i1 %t248, ptr %l160, !tbaa !21
  br label %bb75
bb75:
  %t249 = load i1, ptr %l160, !tbaa !21
  br i1 %t249, label %bb76, label %bb77
bb76:
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr { i64, [5 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t252, i32 0, i32 4
  %t254 = load { i64, ptr }, ptr %t253
  store { i64, ptr } %t254, ptr %l17, !tbaa !27
  br label %bb78
bb77:
  br label %bb86
bb78:
  %t256 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t256, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t258 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t258, 0
  store i64 %t260, ptr %l20, !tbaa !24
  br label %bb79
bb79:
  %t262 = load i64, ptr %l19, !tbaa !24
  %t263 = load i64, ptr %l20, !tbaa !24
  %t266 = icmp slt i64 %t262, %t263
  %t268 = xor i1 %t266, true
  br i1 %t268, label %bb80, label %bb81
bb80:
  br label %bb85
bb81:
  br label %bb82
bb82:
  %t270 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t270, ptr %l172, !tbaa !27
  %t271 = load i64, ptr %l19, !tbaa !24
  %t273 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !27
  %t275 = getelementptr ptr, ptr %t274, i64 %t271
  %t276 = load ptr, ptr %t275, !tbaa !39
  %t278 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t278, ptr %t276)
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t283 = load i64, ptr %l19, !tbaa !24
  %t285 = add i64 %t283, 1
  store i64 %t285, ptr %l19, !tbaa !24
  br label %bb79
bb85:
  br label %bb196
bb86:
  %t287 = load ptr, ptr %l1, !tbaa !29
  store ptr %t287, ptr %l180, !tbaa !29
  store i1 false, ptr %l181, !tbaa !21
  %t288 = load ptr, ptr %l180, !tbaa !29
  %t289 = icmp ne ptr %t288, null
  br i1 %t289, label %bb87, label %bb88
bb87:
  %t291 = load ptr, ptr %l180, !tbaa !29
  %t292 = load i64, ptr %t291, !range !{i64 0, i64 18}
  %t294 = icmp eq i64 %t292, 10
  store i1 %t294, ptr %l181, !tbaa !21
  br label %bb88
bb88:
  %t295 = load i1, ptr %l181, !tbaa !21
  br i1 %t295, label %bb89, label %bb90
bb89:
  %t296 = load ptr, ptr %l1, !tbaa !29
  %t298 = getelementptr { i64, [5 x i64] }, ptr %t296, i32 0, i32 1
  %t299 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t298, i32 0, i32 2
  %t300 = load ptr, ptr %t299
  store ptr %t300, ptr %l22, !tbaa !29
  br label %bb91
bb90:
  br label %bb95
bb91:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load ptr, ptr %l22, !tbaa !29
  %t305 = getelementptr %"compiler/typed:Slice", ptr %t303, i32 0, i32 0
  %t306 = load ptr, ptr %t305, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlace(ptr %v0, ptr %v1, ptr %t302, ptr %t306)
  br label %bb92
bb92:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load ptr, ptr %l22, !tbaa !29
  %t312 = getelementptr %"compiler/typed:Slice", ptr %t310, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t309, ptr %t313)
  br label %bb93
bb93:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load ptr, ptr %l22, !tbaa !29
  %t320 = getelementptr %"compiler/typed:Slice", ptr %t318, i32 0, i32 2
  %t321 = load ptr, ptr %t320, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t317, ptr %t321)
  br label %bb94
bb94:
  br label %bb196
bb95:
  %t325 = load ptr, ptr %l1, !tbaa !29
  store ptr %t325, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t326 = load ptr, ptr %l197, !tbaa !29
  %t327 = icmp ne ptr %t326, null
  br i1 %t327, label %bb96, label %bb97
bb96:
  %t329 = load ptr, ptr %l197, !tbaa !29
  %t330 = load i64, ptr %t329, !range !{i64 0, i64 18}
  %t332 = icmp eq i64 %t330, 11
  store i1 %t332, ptr %l198, !tbaa !21
  br label %bb97
bb97:
  %t333 = load i1, ptr %l198, !tbaa !21
  br i1 %t333, label %bb98, label %bb99
bb98:
  %t334 = load ptr, ptr %l1, !tbaa !29
  %t336 = getelementptr { i64, [5 x i64] }, ptr %t334, i32 0, i32 1
  %t337 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t336, i32 0, i32 2
  %t338 = load ptr, ptr %t337
  store ptr %t338, ptr %l23, !tbaa !29
  br label %bb100
bb99:
  br label %bb104
bb100:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load ptr, ptr %l23, !tbaa !29
  %t343 = getelementptr %"compiler/typed:Cond", ptr %t341, i32 0, i32 0
  %t344 = load ptr, ptr %t343, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t340, ptr %t344)
  br label %bb101
bb101:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load ptr, ptr %l23, !tbaa !29
  %t351 = getelementptr %"compiler/typed:Cond", ptr %t349, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t348, ptr %t352)
  br label %bb102
bb102:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load ptr, ptr %l23, !tbaa !29
  %t358 = getelementptr %"compiler/typed:Cond", ptr %t356, i32 0, i32 2
  %t359 = load ptr, ptr %t358, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t355, ptr %t359)
  br label %bb103
bb103:
  br label %bb196
bb104:
  %t363 = load ptr, ptr %l1, !tbaa !29
  store ptr %t363, ptr %l214, !tbaa !29
  store i1 false, ptr %l215, !tbaa !21
  %t364 = load ptr, ptr %l214, !tbaa !29
  %t365 = icmp ne ptr %t364, null
  br i1 %t365, label %bb105, label %bb106
bb105:
  %t367 = load ptr, ptr %l214, !tbaa !29
  %t368 = load i64, ptr %t367, !range !{i64 0, i64 18}
  %t370 = icmp eq i64 %t368, 12
  store i1 %t370, ptr %l215, !tbaa !21
  br label %bb106
bb106:
  %t371 = load i1, ptr %l215, !tbaa !21
  br i1 %t371, label %bb107, label %bb108
bb107:
  %t372 = load ptr, ptr %l1, !tbaa !29
  %t374 = getelementptr { i64, [5 x i64] }, ptr %t372, i32 0, i32 1
  %t375 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t374, i32 0, i32 2
  %t376 = load ptr, ptr %t375
  store ptr %t376, ptr %l24, !tbaa !29
  br label %bb109
bb108:
  br label %bb118
bb109:
  %t378 = load ptr, ptr %l24, !tbaa !29
  %t380 = getelementptr %"compiler/typed:Seq", ptr %t378, i32 0, i32 0
  %t381 = load { i64, ptr }, ptr %t380, !tbaa !27
  store { i64, ptr } %t381, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t383 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t385 = extractvalue { i64, ptr } %t383, 0
  store i64 %t385, ptr %l27, !tbaa !24
  br label %bb110
bb110:
  %t387 = load i64, ptr %l26, !tbaa !24
  %t388 = load i64, ptr %l27, !tbaa !24
  %t391 = icmp slt i64 %t387, %t388
  %t393 = xor i1 %t391, true
  br i1 %t393, label %bb111, label %bb112
bb111:
  br label %bb116
bb112:
  br label %bb113
bb113:
  %t395 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t395, ptr %l228, !tbaa !27
  %t396 = load i64, ptr %l26, !tbaa !24
  %t398 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr ptr, ptr %t399, i64 %t396
  %t401 = load ptr, ptr %t400, !tbaa !39
  %t403 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflStmt(ptr %v0, ptr %v1, ptr %t403, ptr %t401)
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t408 = load i64, ptr %l26, !tbaa !24
  %t410 = add i64 %t408, 1
  store i64 %t410, ptr %l26, !tbaa !24
  br label %bb110
bb116:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t413 = load ptr, ptr %l24, !tbaa !29
  %t415 = getelementptr %"compiler/typed:Seq", ptr %t413, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t412, ptr %t416)
  br label %bb117
bb117:
  br label %bb196
bb118:
  %t419 = load ptr, ptr %l1, !tbaa !29
  store ptr %t419, ptr %l239, !tbaa !29
  store i1 false, ptr %l240, !tbaa !21
  %t420 = load ptr, ptr %l239, !tbaa !29
  %t421 = icmp ne ptr %t420, null
  br i1 %t421, label %bb119, label %bb120
bb119:
  %t423 = load ptr, ptr %l239, !tbaa !29
  %t424 = load i64, ptr %t423, !range !{i64 0, i64 18}
  %t426 = icmp eq i64 %t424, 13
  store i1 %t426, ptr %l240, !tbaa !21
  br label %bb120
bb120:
  %t427 = load i1, ptr %l240, !tbaa !21
  br i1 %t427, label %bb121, label %bb122
bb121:
  %t428 = load ptr, ptr %l1, !tbaa !29
  %t430 = getelementptr { i64, [5 x i64] }, ptr %t428, i32 0, i32 1
  %t431 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t430, i32 0, i32 2
  %t432 = load ptr, ptr %t431
  store ptr %t432, ptr %l29, !tbaa !29
  br label %bb123
bb122:
  br label %bb139
bb123:
  %t434 = load ptr, ptr %l29, !tbaa !29
  %t436 = getelementptr %"compiler/typed:Match", ptr %t434, i32 0, i32 0
  %t437 = load { i64, ptr }, ptr %t436, !tbaa !27
  store { i64, ptr } %t437, ptr %l30, !tbaa !27
  store i64 0, ptr %l31, !tbaa !24
  %t439 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t439, 0
  store i64 %t441, ptr %l32, !tbaa !24
  br label %bb124
bb124:
  %t443 = load i64, ptr %l31, !tbaa !24
  %t444 = load i64, ptr %l32, !tbaa !24
  %t447 = icmp slt i64 %t443, %t444
  %t449 = xor i1 %t447, true
  br i1 %t449, label %bb125, label %bb126
bb125:
  br label %bb130
bb126:
  br label %bb127
bb127:
  %t451 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t451, ptr %l253, !tbaa !27
  %t452 = load i64, ptr %l31, !tbaa !24
  %t454 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t455 = load ptr, ptr %t454, !tbaa !27
  %t456 = getelementptr ptr, ptr %t455, i64 %t452
  %t457 = load ptr, ptr %t456, !tbaa !39
  %t459 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflStmt(ptr %v0, ptr %v1, ptr %t459, ptr %t457)
  br label %bb128
bb128:
  br label %bb129
bb129:
  %t464 = load i64, ptr %l31, !tbaa !24
  %t466 = add i64 %t464, 1
  store i64 %t466, ptr %l31, !tbaa !24
  br label %bb124
bb130:
  %t468 = load ptr, ptr %l29, !tbaa !29
  %t470 = getelementptr %"compiler/typed:Match", ptr %t468, i32 0, i32 1
  %t471 = load { i64, ptr }, ptr %t470, !tbaa !27
  store { i64, ptr } %t471, ptr %l34, !tbaa !27
  store i64 0, ptr %l35, !tbaa !24
  %t473 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t475 = extractvalue { i64, ptr } %t473, 0
  store i64 %t475, ptr %l36, !tbaa !24
  br label %bb131
bb131:
  %t477 = load i64, ptr %l35, !tbaa !24
  %t478 = load i64, ptr %l36, !tbaa !24
  %t481 = icmp slt i64 %t477, %t478
  %t483 = xor i1 %t481, true
  br i1 %t483, label %bb132, label %bb133
bb132:
  br label %bb137
bb133:
  br label %bb134
bb134:
  %t485 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t485, ptr %l269, !tbaa !27
  %t486 = load i64, ptr %l35, !tbaa !24
  %t488 = getelementptr { i64, ptr }, ptr %l269, i32 0, i32 1
  %t489 = load ptr, ptr %t488, !tbaa !27
  %t490 = getelementptr ptr, ptr %t489, i64 %t486
  %t491 = load ptr, ptr %t490, !tbaa !39
  %t493 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflArm(ptr %v0, ptr %v1, ptr %t493, ptr %t491)
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t498 = load i64, ptr %l35, !tbaa !24
  %t500 = add i64 %t498, 1
  store i64 %t500, ptr %l35, !tbaa !24
  br label %bb131
bb137:
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load ptr, ptr %l29, !tbaa !29
  %t505 = getelementptr %"compiler/typed:Match", ptr %t503, i32 0, i32 2
  %t506 = load ptr, ptr %t505, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflArm(ptr %v0, ptr %v1, ptr %t502, ptr %t506)
  br label %bb138
bb138:
  br label %bb196
bb139:
  %t509 = load ptr, ptr %l1, !tbaa !29
  store ptr %t509, ptr %l280, !tbaa !29
  store i1 false, ptr %l281, !tbaa !21
  %t510 = load ptr, ptr %l280, !tbaa !29
  %t511 = icmp ne ptr %t510, null
  br i1 %t511, label %bb140, label %bb141
bb140:
  %t513 = load ptr, ptr %l280, !tbaa !29
  %t514 = load i64, ptr %t513, !range !{i64 0, i64 18}
  %t516 = icmp eq i64 %t514, 14
  store i1 %t516, ptr %l281, !tbaa !21
  br label %bb141
bb141:
  %t517 = load i1, ptr %l281, !tbaa !21
  br i1 %t517, label %bb142, label %bb143
bb142:
  %t518 = load ptr, ptr %l1, !tbaa !29
  %t520 = getelementptr { i64, [5 x i64] }, ptr %t518, i32 0, i32 1
  %t521 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t520, i32 0, i32 2
  %t522 = load ptr, ptr %t521
  store ptr %t522, ptr %l38, !tbaa !29
  br label %bb144
bb143:
  br label %bb160
bb144:
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load ptr, ptr %l38, !tbaa !29
  %t527 = getelementptr %"compiler/typed:Try", ptr %t525, i32 0, i32 0
  %t528 = load ptr, ptr %t527, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t524, ptr %t528)
  br label %bb145
bb145:
  %t531 = load ptr, ptr %l38, !tbaa !29
  %t533 = getelementptr %"compiler/typed:Try", ptr %t531, i32 0, i32 1
  %t534 = load { i64, ptr }, ptr %t533, !tbaa !27
  store { i64, ptr } %t534, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t536 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t538 = extractvalue { i64, ptr } %t536, 0
  store i64 %t538, ptr %l41, !tbaa !24
  br label %bb146
bb146:
  %t540 = load i64, ptr %l40, !tbaa !24
  %t541 = load i64, ptr %l41, !tbaa !24
  %t544 = icmp slt i64 %t540, %t541
  %t546 = xor i1 %t544, true
  br i1 %t546, label %bb147, label %bb148
bb147:
  br label %bb159
bb148:
  br label %bb149
bb149:
  %t548 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t548, ptr %l297, !tbaa !27
  %t549 = load i64, ptr %l40, !tbaa !24
  %t551 = getelementptr { i64, ptr }, ptr %l297, i32 0, i32 1
  %t552 = load ptr, ptr %t551, !tbaa !27
  %t553 = getelementptr ptr, ptr %t552, i64 %t549
  %t554 = load ptr, ptr %t553, !tbaa !39
  store ptr %t554, ptr %l42, !tbaa !29
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t557 = load ptr, ptr %l42, !tbaa !29
  %t559 = getelementptr %"compiler/typed:Clause", ptr %t557, i32 0, i32 3
  %t560 = load ptr, ptr %t559, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t556, ptr %t560)
  br label %bb150
bb150:
  %t563 = load ptr, ptr %l42, !tbaa !29
  %t565 = getelementptr %"compiler/typed:Clause", ptr %t563, i32 0, i32 4
  %t566 = load { i64, ptr }, ptr %t565, !tbaa !27
  store { i64, ptr } %t566, ptr %l43, !tbaa !27
  store i64 0, ptr %l44, !tbaa !24
  %t568 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t570 = extractvalue { i64, ptr } %t568, 0
  store i64 %t570, ptr %l45, !tbaa !24
  br label %bb151
bb151:
  %t572 = load i64, ptr %l44, !tbaa !24
  %t573 = load i64, ptr %l45, !tbaa !24
  %t576 = icmp slt i64 %t572, %t573
  %t578 = xor i1 %t576, true
  br i1 %t578, label %bb152, label %bb153
bb152:
  br label %bb157
bb153:
  br label %bb154
bb154:
  %t580 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t580, ptr %l311, !tbaa !27
  %t581 = load i64, ptr %l44, !tbaa !24
  %t583 = getelementptr { i64, ptr }, ptr %l311, i32 0, i32 1
  %t584 = load ptr, ptr %t583, !tbaa !27
  %t585 = getelementptr ptr, ptr %t584, i64 %t581
  %t586 = load ptr, ptr %t585, !tbaa !39
  %t588 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t588, ptr %t586)
  br label %bb155
bb155:
  br label %bb156
bb156:
  %t593 = load i64, ptr %l44, !tbaa !24
  %t595 = add i64 %t593, 1
  store i64 %t595, ptr %l44, !tbaa !24
  br label %bb151
bb157:
  br label %bb158
bb158:
  %t597 = load i64, ptr %l40, !tbaa !24
  %t599 = add i64 %t597, 1
  store i64 %t599, ptr %l40, !tbaa !24
  br label %bb146
bb159:
  br label %bb196
bb160:
  %t601 = load ptr, ptr %l1, !tbaa !29
  store ptr %t601, ptr %l321, !tbaa !29
  store i1 false, ptr %l322, !tbaa !21
  %t602 = load ptr, ptr %l321, !tbaa !29
  %t603 = icmp ne ptr %t602, null
  br i1 %t603, label %bb161, label %bb162
bb161:
  %t605 = load ptr, ptr %l321, !tbaa !29
  %t606 = load i64, ptr %t605, !range !{i64 0, i64 18}
  %t608 = icmp eq i64 %t606, 16
  store i1 %t608, ptr %l322, !tbaa !21
  br label %bb162
bb162:
  %t609 = load i1, ptr %l322, !tbaa !21
  br i1 %t609, label %bb163, label %bb164
bb163:
  %t610 = load ptr, ptr %l1, !tbaa !29
  %t612 = getelementptr { i64, [5 x i64] }, ptr %t610, i32 0, i32 1
  %t613 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t612, i32 0, i32 2
  %t614 = load ptr, ptr %t613
  store ptr %t614, ptr %l47, !tbaa !29
  br label %bb165
bb164:
  br label %bb184
bb165:
  %t616 = load ptr, ptr %l47, !tbaa !29
  %t618 = getelementptr %"compiler/typed:Text", ptr %t616, i32 0, i32 0
  %t619 = load { i64, ptr }, ptr %t618, !tbaa !27
  store { i64, ptr } %t619, ptr %l48, !tbaa !27
  store i64 0, ptr %l49, !tbaa !24
  %t621 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t623 = extractvalue { i64, ptr } %t621, 0
  store i64 %t623, ptr %l50, !tbaa !24
  br label %bb166
bb166:
  %t625 = load i64, ptr %l49, !tbaa !24
  %t626 = load i64, ptr %l50, !tbaa !24
  %t629 = icmp slt i64 %t625, %t626
  %t631 = xor i1 %t629, true
  br i1 %t631, label %bb167, label %bb168
bb167:
  br label %bb183
bb168:
  br label %bb169
bb169:
  %t633 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t633, ptr %l335, !tbaa !27
  %t634 = load i64, ptr %l49, !tbaa !24
  %t636 = getelementptr { i64, ptr }, ptr %l335, i32 0, i32 1
  %t637 = load ptr, ptr %t636, !tbaa !27
  %t638 = getelementptr ptr, ptr %t637, i64 %t634
  %t639 = load ptr, ptr %t638, !tbaa !39
  store ptr %t639, ptr %l51, !tbaa !29
  %t641 = load ptr, ptr %l51, !tbaa !29
  store ptr %t641, ptr %l338, !tbaa !29
  store i1 false, ptr %l339, !tbaa !21
  %t642 = load ptr, ptr %l338, !tbaa !29
  %t643 = icmp ne ptr %t642, null
  br i1 %t643, label %bb170, label %bb171
bb170:
  %t645 = load ptr, ptr %l338, !tbaa !29
  %t646 = load i64, ptr %t645, !range !{i64 0, i64 2}
  %t648 = icmp eq i64 %t646, 1
  store i1 %t648, ptr %l339, !tbaa !21
  br label %bb171
bb171:
  %t649 = load i1, ptr %l339, !tbaa !21
  br i1 %t649, label %bb172, label %bb173
bb172:
  %t650 = load ptr, ptr %l51, !tbaa !29
  %t652 = getelementptr { i64, [2 x i64] }, ptr %t650, i32 0, i32 1
  %t653 = getelementptr { ptr }, ptr %t652, i32 0, i32 0
  %t654 = load ptr, ptr %t653
  store ptr %t654, ptr %l52, !tbaa !29
  br label %bb174
bb173:
  br label %bb176
bb174:
  %t656 = load ptr, ptr %l0, !tbaa !29
  %t657 = load ptr, ptr %l52, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t656, ptr %t657)
  br label %bb175
bb175:
  br label %bb181
bb176:
  br i1 true, label %bb177, label %bb178
bb177:
  br label %bb179
bb178:
  br label %bb180
bb179:
  br label %bb181
bb180:
  call void @__olang_check_failed(ptr @olang_loc_833831a19b970c28_77aab458c7a9e174)
  unreachable
bb181:
  br label %bb182
bb182:
  %t661 = load i64, ptr %l49, !tbaa !24
  %t663 = add i64 %t661, 1
  store i64 %t663, ptr %l49, !tbaa !24
  br label %bb166
bb183:
  br label %bb196
bb184:
  %t665 = load ptr, ptr %l1, !tbaa !29
  store ptr %t665, ptr %l349, !tbaa !29
  store i1 false, ptr %l350, !tbaa !21
  %t666 = load ptr, ptr %l349, !tbaa !29
  %t667 = icmp ne ptr %t666, null
  br i1 %t667, label %bb185, label %bb186
bb185:
  %t669 = load ptr, ptr %l349, !tbaa !29
  %t670 = load i64, ptr %t669, !range !{i64 0, i64 18}
  %t672 = icmp eq i64 %t670, 17
  store i1 %t672, ptr %l350, !tbaa !21
  br label %bb186
bb186:
  %t673 = load i1, ptr %l350, !tbaa !21
  br i1 %t673, label %bb187, label %bb188
bb187:
  %t674 = load ptr, ptr %l1, !tbaa !29
  %t676 = getelementptr { i64, [5 x i64] }, ptr %t674, i32 0, i32 1
  %t677 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t676, i32 0, i32 2
  %t678 = load ptr, ptr %t677
  store ptr %t678, ptr %l53, !tbaa !29
  br label %bb189
bb188:
  br label %bb191
bb189:
  %t680 = load ptr, ptr %l0, !tbaa !29
  %t681 = load ptr, ptr %l53, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t680, ptr %t681)
  br label %bb190
bb190:
  br label %bb196
bb191:
  br i1 true, label %bb192, label %bb193
bb192:
  br label %bb194
bb193:
  br label %bb195
bb194:
  br label %bb196
bb195:
  call void @__olang_check_failed(ptr @olang_loc_c2cadef70f196c03_af516fcb9d4cc0af)
  unreachable
bb196:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  br label %bb41
bb7:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t22 = load ptr, ptr %l16, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 8}
  %t28 = icmp eq i64 %t26, 3
  store i1 %t28, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlace(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  br label %bb13
bb13:
  br label %bb41
bb14:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t41 = load ptr, ptr %l24, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb15, label %bb16
bb15:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 8}
  %t47 = icmp eq i64 %t45, 4
  store i1 %t47, ptr %l25, !tbaa !21
  br label %bb16
bb16:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Elem", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlace(ptr %v0, ptr %v1, ptr %t55, ptr %t59)
  br label %bb20
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Elem", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t62, ptr %t66)
  br label %bb21
bb21:
  br label %bb41
bb22:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb23, label %bb24
bb23:
  %t74 = load ptr, ptr %l37, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 5
  store i1 %t77, ptr %l38, !tbaa !21
  br label %bb24
bb24:
  %t78 = load i1, ptr %l38, !tbaa !21
  br i1 %t78, label %bb25, label %bb26
bb25:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Payload", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlace(ptr %v0, ptr %v1, ptr %t85, ptr %t89)
  br label %bb28
bb28:
  br label %bb41
bb29:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb30, label %bb31
bb30:
  %t96 = load ptr, ptr %l46, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 8}
  %t99 = icmp eq i64 %t97, 6
  store i1 %t99, ptr %l47, !tbaa !21
  br label %bb31
bb31:
  %t100 = load i1, ptr %l47, !tbaa !21
  br i1 %t100, label %bb32, label %bb33
bb32:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t107, ptr %t108)
  br label %bb35
bb35:
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_7fbb74a7c576c4fd_63f758b49396c059)
  unreachable
bb41:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnBounds(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 26
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_75a4f489d269fafa_986c6f7f7ed7b69e)
  unreachable
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 26
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 11
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v0, ptr %t17, ptr %t16)
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenElemTerm(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca i1
  %l20 = alloca ptr
  %l29 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t38 = alloca { i64, [2 x i64] }, align 8
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
  call void @__olang_check_failed(ptr @olang_loc_eb63e604b2611290_41d83017cc1dec3c)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 14
  %t15 = load i1, ptr %t14, !tbaa !21
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 26
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_eb63e604b2611290_41d83017cc1dec3c)
  unreachable
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 26
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 15
  %t33 = load i32, ptr %t32, !tbaa !23
  %t35 = icmp slt i32 %t33, 0
  store i1 %t35, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l9, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  store { i64, [2 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 0
  store i64 0, ptr %t39
  %t40 = load { i64, [2 x i64] }, ptr %t38
  store { i64, [2 x i64] } %t40, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 34
  store ptr %t44, ptr %l20, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %t45, i32 0, i32 26
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  br i1 %t50, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_6c6eb04d68cfd0ef_192fcc26ed37d7ab)
  unreachable
bb14:
  br label %bb15
bb15:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 26
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Body", ptr %t55, i32 0, i32 15
  %t59 = load i32, ptr %t58, !tbaa !23
  %t61 = sext i32 %t59 to i64
  %t62 = load ptr, ptr %l20, !tbaa !29
  %t64 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t62, i64 %t61)
  store { i64, [2 x i64] } %t64, ptr %l29
  br label %bb16
bb16:
  %t65 = load { i64, [2 x i64] }, ptr %l29
  store { i64, [2 x i64] } %t65, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandleLent(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i32
  %l10 = alloca i32
  %l17 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca { i64, ptr }
  %l28 = alloca i1
  %l30 = alloca { i64, ptr }
  %l33 = alloca i1
  %l35 = alloca i1
  %l36 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l43 = alloca i32
  %l44 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l60 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i32, ptr %l10, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  store ptr %t19, ptr %l17, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l4, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l22
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l17, !tbaa !29
  %t31 = load i32, ptr %l22, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t30, i32 %t31)
  store { i64, ptr } %t32, ptr %l23
  br label %bb6
bb6:
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t33, ptr %l5, !tbaa !27
  %t34 = load i64, ptr %l2, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = icmp sge i64 %t34, %t37
  br i1 %t40, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb10
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t43, ptr %l30, !tbaa !27
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i32, ptr %t47, i64 %t44
  %t49 = load i32, ptr %t48, !tbaa !33
  %t52 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t42, i32 %t49)
  store i1 %t52, ptr %l33
  br label %bb9
bb9:
  %t53 = load i1, ptr %l33, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l28, !tbaa !21
  br label %bb10
bb10:
  %t56 = load i1, ptr %l28, !tbaa !21
  br i1 %t56, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb15
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l36, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t64, ptr %l40, !tbaa !27
  %t65 = load i64, ptr %l2, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i32, ptr %t68, i64 %t65
  %t70 = load i32, ptr %t69, !tbaa !33
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t63, i32 %t70)
  store i32 %t73, ptr %l43
  br label %bb13
bb13:
  %t74 = load ptr, ptr %l36, !tbaa !29
  %t75 = load i32, ptr %l43, !tbaa !23
  %t76 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %t74, i32 %t75)
  store i1 %t76, ptr %l44
  br label %bb14
bb14:
  %t77 = load i1, ptr %l44, !tbaa !21
  %t78 = xor i1 %t77, true
  store i1 %t78, ptr %l35, !tbaa !21
  br label %bb15
bb15:
  %t80 = load i1, ptr %l35, !tbaa !21
  br i1 %t80, label %bb16, label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Call", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  store ptr %t85, ptr %l6, !tbaa !29
  %t87 = load ptr, ptr %l6, !tbaa !29
  store ptr %t87, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t88 = load ptr, ptr %l49, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb19, label %bb20
bb19:
  %t91 = load ptr, ptr %l49, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 5}
  %t94 = icmp eq i64 %t92, 0
  store i1 %t94, ptr %l50, !tbaa !21
  br label %bb20
bb20:
  %t95 = load i1, ptr %l50, !tbaa !21
  br i1 %t95, label %bb21, label %bb22
bb21:
  %t96 = load ptr, ptr %l6, !tbaa !29
  %t98 = getelementptr { i64, [3 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { i32 }, ptr %t98, i32 0, i32 0
  %t100 = load i32, ptr %t99
  store i32 %t100, ptr %l7, !tbaa !23
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l7, !tbaa !23
  %t105 = sext i32 %t103 to i64
  %t106 = load i64, ptr %l2, !tbaa !24
  %t107 = load i64, ptr @G_2ecompiler_2fscope_2eUseThru, !tbaa !24
  %t112 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %t102, i64 %t105, i64 %t106, i64 %t107)
  store i1 %t112, ptr %l60
  br label %bb24
bb24:
  %t113 = load i1, ptr %l60, !tbaa !21
  store i1 %t113, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_10bab568b406970b_66071842e5074daf)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferFields(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l12 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l16 = alloca i64
  %l19 = alloca i64
  %l47 = alloca i64
  %l53 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l54 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i32
  %l59 = alloca i1
  %l63 = alloca i1
  %l66 = alloca i1
  %l69 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l70 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l72 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l73 = alloca i32
  %l75 = alloca i1
  %l78 = alloca i1
  %l83 = alloca ptr
  %l85 = alloca i64
  %l90 = alloca i1
  %l93 = alloca i1
  %l106 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 16, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = sub i64 %t11, %t12
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t21 = sub i64 %t19, 1
  %t22 = load i64, ptr %l3, !tbaa !24
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
  store i64 %t28, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb70
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l1, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  store i64 %t45, ptr %l6, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 221
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t49)
  br label %bb11
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 222
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H28d9ab5e291734bc3f5dada0ed141e4b(ptr %v0, ptr %t53)
  br label %bb12
bb12:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 218
  store i64 0, ptr %t57, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 211
  store i1 false, ptr %t60, !tbaa !21
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/scope:Scoper", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/load:Loader", ptr %t67, i32 0, i32 4
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t70)
  store i64 %t72, ptr %l47
  br label %bb13
bb13:
  %t73 = load i64, ptr %l47, !tbaa !24
  store i64 %t73, ptr %l7, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 217
  store i1 true, ptr %t76, !tbaa !21
  %t77 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeAll(ptr %v0, ptr %t77, i1 true)
  br label %bb14
bb14:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %t79, i32 0, i32 217
  store i1 false, ptr %t81, !tbaa !21
  store i1 false, ptr %l8, !tbaa !21
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 221
  %t86 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v0, ptr %t84)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t86, ptr %l53
  br label %bb15
bb15:
  %t87 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l53
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t87, ptr %l9
  br label %bb16
bb16:
  %t89 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %l9)
  %t90 = extractvalue { i32, i64 } %t89, 1
  %t91 = extractvalue { i32, i64 } %t89, 0
  store i32 %t91, ptr %l57
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb18, label %ok.93, !prof !99
ok.93:
  store i64 %t90, ptr %l56
  br label %bb17
bb17:
  %t94 = load i64, ptr %l56, !tbaa !24
  store i64 %t94, ptr %l54, !tbaa !24
  br label %bb20
bb18:
  %t95 = load i32, ptr %l57, !tbaa !23
  %t96 = ashr i32 %t95, 16
  %t98 = icmp eq i32 %t96, 1
  store i1 %t98, ptr %l59, !tbaa !21
  br label %bb19
bb19:
  br label %bb29
bb20:
  %t99 = load i64, ptr %l54, !tbaa !24
  store i64 %t99, ptr %l10, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 245
  %t103 = load i1, ptr %t102, !tbaa !21
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb21, label %bb22
bb21:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epromoteDecl(ptr %v0, ptr %t107, i64 %t108)
  store i1 %t111, ptr %l66
  br label %bb23
bb22:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb24
bb23:
  %t112 = load i1, ptr %l66, !tbaa !21
  store i1 %t112, ptr %l63, !tbaa !21
  br label %bb24
bb24:
  %t113 = load i1, ptr %l63, !tbaa !21
  br i1 %t113, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb16
bb29:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %t114, i32 0, i32 222
  %t118 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0d83a40c67cd8749e6caf886dac77c3a(ptr %v0, ptr %v0, ptr %t116)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t118, ptr %l69
  br label %bb30
bb30:
  %t119 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l69
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t119, ptr %l11
  br label %bb31
bb31:
  %t121 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H50b542c856ab641bdb3083563d5a1f0c(ptr %v0, ptr %l11)
  %t122 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t121, 1
  %t123 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t121, 0
  store i32 %t123, ptr %l73
  %t124 = icmp ne i32 %t123, 0
  br i1 %t124, label %bb33, label %ok.125, !prof !99
ok.125:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t122, ptr %l72
  br label %bb32
bb32:
  %t126 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l72
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t126, ptr %l70
  br label %bb35
bb33:
  %t127 = load i32, ptr %l73, !tbaa !23
  %t128 = ashr i32 %t127, 16
  %t130 = icmp eq i32 %t128, 1
  store i1 %t130, ptr %l75, !tbaa !21
  br label %bb34
bb34:
  br label %bb41
bb35:
  %t131 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l70
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t131, ptr %l12
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12, i32 0, i32 0
  %t134 = load i64, ptr %t133, !tbaa !24
  %t137 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDecl(ptr %v0, ptr %t132, i64 %t134)
  store i1 %t137, ptr %l78
  br label %bb36
bb36:
  %t138 = load i1, ptr %l78, !tbaa !21
  br i1 %t138, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  br label %bb31
bb41:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/scope:Scoper", ptr %t139, i32 0, i32 245
  %t142 = load i1, ptr %t141, !tbaa !21
  br i1 %t142, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb44
bb43:
  br label %bb44
bb44:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/scope:Scoper", ptr %t144, i32 0, i32 245
  store i1 false, ptr %t146, !tbaa !21
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/scope:Scoper", ptr %t147, i32 0, i32 219
  store ptr %t149, ptr %l83, !tbaa !29
  %t150 = load i1, ptr %l8, !tbaa !21
  br i1 %t150, label %bb45, label %bb46
bb45:
  store i64 -1, ptr %l85, !tbaa !24
  br label %bb47
bb46:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 218
  %t155 = load i64, ptr %t154, !tbaa !24
  store i64 %t155, ptr %l85, !tbaa !24
  br label %bb47
bb47:
  %t157 = load ptr, ptr %l83, !tbaa !29
  %t158 = load i64, ptr %l85, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t157, i64 %t158)
  br label %bb48
bb48:
  %t159 = load i1, ptr %l8, !tbaa !21
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb49, label %bb50
bb49:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 211
  %t166 = load i1, ptr %t165, !tbaa !21
  store i1 %t166, ptr %l90, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb51
bb51:
  %t168 = load i1, ptr %l90, !tbaa !21
  br i1 %t168, label %bb52, label %bb53
bb52:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/scope:Scoper", ptr %t169, i32 0, i32 209
  %t172 = load i1, ptr %t171, !tbaa !21
  %t174 = xor i1 %t172, true
  store i1 %t174, ptr %l93, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb54
bb54:
  %t176 = load i1, ptr %l93, !tbaa !21
  br i1 %t176, label %bb55, label %bb56
bb55:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/scope:Scoper", ptr %t177, i32 0, i32 209
  store i1 true, ptr %t179, !tbaa !21
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/scope:Scoper", ptr %t180, i32 0, i32 0
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 0
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = getelementptr %"compiler/load:Loader", ptr %t186, i32 0, i32 4
  %t189 = load ptr, ptr %t188, !tbaa !29
  %t190 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t189, i64 %t190)
  br label %bb57
bb56:
  br label %bb58
bb57:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/scope:Scoper", ptr %t193, i32 0, i32 243
  store i1 false, ptr %t195, !tbaa !21
  br label %bb69
bb58:
  %t196 = load i1, ptr %l8, !tbaa !21
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb59, label %bb60
bb59:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/scope:Scoper", ptr %t200, i32 0, i32 218
  %t203 = load i64, ptr %t202, !tbaa !24
  %t205 = icmp eq i64 %t203, 0
  store i1 %t205, ptr %l106, !tbaa !21
  br label %bb61
bb60:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb61
bb61:
  %t207 = load i1, ptr %l106, !tbaa !21
  br i1 %t207, label %bb62, label %bb63
bb62:
  store i1 true, ptr %rv
  br label %ret
bb63:
  br label %bb64
bb64:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %t209, i32 0, i32 0
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t214 = getelementptr %"compiler/generic:Program", ptr %t212, i32 0, i32 0
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/load:Loader", ptr %t215, i32 0, i32 4
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t219 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t218, i64 %t219)
  br label %bb65
bb65:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/scope:Scoper", ptr %t223, i32 0, i32 244
  %t226 = load i1, ptr %t225, !tbaa !21
  %t228 = xor i1 %t226, true
  %t231 = getelementptr %"compiler/scope:Scoper", ptr %t222, i32 0, i32 243
  store i1 %t228, ptr %t231, !tbaa !21
  %t232 = load i1, ptr %l8, !tbaa !21
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb66, label %bb67
bb66:
  store i1 false, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t237 = load i64, ptr %l5, !tbaa !24
  %t239 = add i64 %t237, 1
  store i64 %t239, ptr %l5, !tbaa !24
  br label %bb7
bb70:
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
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t66, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
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
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t70, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) })
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eitem(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l4 = alloca %"compiler/scope:Val"
  %l9 = alloca %"compiler/scope:Val"
  %l12 = alloca ptr
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = load { i64, [2 x i64] }, ptr %l2
  %t8 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1, ptr %t2, { i64, [2 x i64] } %t4)
  store %"compiler/scope:Val" %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load %"compiler/scope:Val", ptr %l9
  store %"compiler/scope:Val" %t9, ptr %l4
  %t10 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 0
  %t11 = load i32, ptr %t10, !range !{i32 0, i32 5}
  %t13 = trunc i64 3 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 1
  %t18 = load { i64, [2 x i64] }, ptr %t17
  store { i64, [2 x i64] } %t18, ptr %l13
  %t19 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t19, ptr %l14
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l15, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t21)
  store i32 %t23, ptr %l17
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = load i32, ptr %l17, !tbaa !23
  %t26 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t26, ptr %l18
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = load ptr, ptr %l12, !tbaa !29
  %t30 = load { i64, [2 x i64] }, ptr %l13
  %t31 = load { i64, [2 x i64] }, ptr %l14
  %t32 = load i1, ptr %l18, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t29, { i64, [2 x i64] } %t30, { i64, [2 x i64] } %t31, i1 %t32, ptr %t27, i64 %a3)
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeOut(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i64, ptr %l6, !tbaa !24
  store i64 %t8, ptr %rv
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
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 26
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
  %t94 = getelementptr %"compiler/scope:Scoper", ptr %t92, i32 0, i32 26
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
  %t138 = getelementptr %"compiler/scope:Scoper", ptr %t136, i32 0, i32 26
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
  %t145 = getelementptr %"compiler/scope:Scoper", ptr %t143, i32 0, i32 26
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
  %t175 = getelementptr %"compiler/scope:Scoper", ptr %t173, i32 0, i32 45
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca ptr
  %l51 = alloca { i64, [2 x i64] }
  %l53 = alloca i1
  %l64 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, [2 x i64] }, ptr %l1
  %t9 = extractvalue { i64, [2 x i64] } %t7, 0
  %t10 = icmp eq i64 %t9, 5
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t13 = getelementptr { i64 }, ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13
  store i64 %t14, ptr %l3, !tbaa !24
  br label %bb6
bb5:
  br label %bb26
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 39
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l19
  br label %bb7
bb7:
  %t23 = load i64, ptr %l19, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t24, i64 %t25)
  store i64 %t28, ptr %l22
  br label %bb8
bb8:
  %t29 = load i64, ptr %l22, !tbaa !24
  store i64 %t29, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb14
bb11:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l29, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb13
bb13:
  %t56 = load i64, ptr %l29, !tbaa !24
  store i64 %t56, ptr %l26, !tbaa !24
  br label %bb14
bb14:
  %t57 = load i64, ptr %l26, !tbaa !24
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb16, label %bb17
bb16:
  br label %bb25
bb17:
  br label %bb18
bb18:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t67 = load i64, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l47, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 40
  %t83 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t79, i64 %t74)
  store { i64, [2 x i64] } %t83, ptr %l51
  br label %bb19
bb19:
  %t84 = load { i64, [2 x i64] }, ptr %l2
  %t85 = load ptr, ptr %l47, !tbaa !29
  %t86 = load { i64, [2 x i64] }, ptr %l51
  %t88 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %t85, { i64, [2 x i64] } %t86, { i64, [2 x i64] } %t84)
  store i1 %t88, ptr %l53
  br label %bb20
bb20:
  %t89 = load i1, ptr %l53, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb21, label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t93 = load i64, ptr %l8, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l8, !tbaa !24
  br label %bb15
bb25:
  store i1 true, ptr %rv
  br label %ret
bb26:
  %t98 = load { i64, [2 x i64] }, ptr %l1
  %t100 = extractvalue { i64, [2 x i64] } %t98, 0
  %t101 = icmp eq i64 %t100, 1
  br i1 %t101, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load { i64, [2 x i64] }, ptr %l1
  %t105 = load { i64, [2 x i64] }, ptr %l2
  %t109 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t103, { i64, [2 x i64] } %t104, { i64, [2 x i64] } %t105)
  store i64 %t109, ptr %l64
  br label %bb30
bb30:
  %t110 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t111 = load i64, ptr %l64, !tbaa !24
  %t113 = icmp eq i64 %t111, %t110
  store i1 %t113, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 true, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_dd2a7e97808fa897_95cc897457ffa94b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elateRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca %"compiler/scope:fnRec"
  %l23 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca i64
  %l46 = alloca ptr
  %l56 = alloca i64
  %l58 = alloca i64
  %l63 = alloca i64
  %l64 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca i64
  %l75 = alloca i64
  %l80 = alloca ptr
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca i64
  %l93 = alloca i64
  %l98 = alloca ptr
  %l105 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l107 = alloca i64
  %l109 = alloca i64
  %l114 = alloca %"compiler/scope:fnRec"
  %l116 = alloca %"compiler/scope:fnRec"
  %l117 = alloca ptr
  %l118 = alloca i64
  %l119 = alloca i1
  %l121 = alloca i32
  %l123 = alloca i64
  %l126 = alloca ptr
  %l127 = alloca ptr
  %l128 = alloca i64
  %l132 = alloca i1
  %s0 = alloca %olang.scope
  %s16 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l27
  br label %bb4
bb4:
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l3
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/scope:fnRecs", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t14 = load i64, ptr %l5, !tbaa !24
  store i64 %t14, ptr %l30, !tbaa !24
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t15)
  store i64 %t17, ptr %l32
  br label %bb6
bb6:
  %t18 = load i64, ptr %l30, !tbaa !24
  %t19 = load i64, ptr %l32, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb7, label %bb8
bb7:
  br label %bb20
bb8:
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t25 = load i64, ptr %l5, !tbaa !24
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t24, i64 %t25)
  store i64 %t28, ptr %l37
  br label %bb10
bb10:
  %t29 = load i64, ptr %l37, !tbaa !24
  store i64 %t29, ptr %l6, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 159
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  br i1 %t35, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_b3d0a58c9aaf8750_fe9e0f20e20fd5b4)
  unreachable
bb12:
  br label %bb13
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 159
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Versions", ptr %t40, i32 0, i32 6
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v0, ptr %t43, i64 %t44)
  store ptr %t47, ptr %l46
  br label %bb14
bb14:
  %t48 = load ptr, ptr %l46, !tbaa !29
  store ptr %t48, ptr %l7, !tbaa !29
  %t49 = load ptr, ptr %l7, !tbaa !29
  %t51 = icmp eq ptr %t49, null
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %v0, ptr %l3, ptr %t55)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb5
bb20:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr %"compiler/scope:fnRecs", ptr %t62, i32 0, i32 3
  store ptr %t64, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  %t66 = load i64, ptr %l9, !tbaa !24
  store i64 %t66, ptr %l56, !tbaa !24
  %t67 = load ptr, ptr %l8, !tbaa !29
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t67)
  store i64 %t69, ptr %l58
  br label %bb22
bb22:
  %t70 = load i64, ptr %l56, !tbaa !24
  %t71 = load i64, ptr %l58, !tbaa !24
  %t72 = icmp slt i64 %t70, %t71
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb23, label %bb24
bb23:
  br label %bb42
bb24:
  br label %bb25
bb25:
  %t76 = load ptr, ptr %l8, !tbaa !29
  %t77 = load i64, ptr %l9, !tbaa !24
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t76, i64 %t77)
  store i64 %t80, ptr %l63
  br label %bb26
bb26:
  %t81 = load i64, ptr %l63, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 102
  %t88 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H97b95e9ae0becdc6438cd4b7dda0e1e4(ptr %v0, ptr %v0, ptr %t84, i64 %t81)
  %t89 = extractvalue { i32, ptr } %t88, 1
  %t90 = extractvalue { i32, ptr } %t88, 0
  store i32 %t90, ptr %l69
  %t91 = icmp ne i32 %t90, 0
  br i1 %t91, label %bb28, label %ok.92, !prof !99
ok.92:
  store ptr %t89, ptr %l68
  br label %bb27
bb27:
  %t93 = load ptr, ptr %l68, !tbaa !29
  store ptr %t93, ptr %l64, !tbaa !29
  br label %bb31
bb28:
  br label %bb29
bb29:
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l70
  br label %bb30
bb30:
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  %t96 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %t96
  store ptr %t96, ptr %l64, !tbaa !29
  br label %bb31
bb31:
  %t98 = load ptr, ptr %l64, !tbaa !29
  store ptr %t98, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb32
bb32:
  %t101 = load i64, ptr %l13, !tbaa !24
  store i64 %t101, ptr %l73, !tbaa !24
  %t102 = load ptr, ptr %l12, !tbaa !29
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t102)
  store i64 %t104, ptr %l75
  br label %bb33
bb33:
  %t105 = load i64, ptr %l73, !tbaa !24
  %t106 = load i64, ptr %l75, !tbaa !24
  %t107 = icmp slt i64 %t105, %t106
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb34, label %bb35
bb34:
  br label %bb40
bb35:
  br label %bb36
bb36:
  %t111 = load ptr, ptr %l12, !tbaa !29
  %t112 = load i64, ptr %l13, !tbaa !24
  %t115 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t111, i64 %t112)
  store ptr %t115, ptr %l80
  br label %bb37
bb37:
  %t116 = load ptr, ptr %l80, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %v0, ptr %l3, ptr %t116)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t120 = load i64, ptr %l13, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l13, !tbaa !24
  br label %bb32
bb40:
  br label %bb41
bb41:
  %t124 = load i64, ptr %l9, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l9, !tbaa !24
  br label %bb21
bb42:
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l87
  br label %bb43
bb43:
  %t129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l15
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/scope:Scoper", ptr %t130, i32 0, i32 103
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t132)
  br label %bb44
bb44:
  store ptr %l3, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb45
bb45:
  %t135 = load i64, ptr %l17, !tbaa !24
  store i64 %t135, ptr %l91, !tbaa !24
  %t136 = load ptr, ptr %l16, !tbaa !29
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %t136)
  store i64 %t138, ptr %l93
  br label %bb46
bb46:
  %t139 = load i64, ptr %l91, !tbaa !24
  %t140 = load i64, ptr %l93, !tbaa !24
  %t141 = icmp slt i64 %t139, %t140
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb47, label %bb48
bb47:
  br label %bb53
bb48:
  br label %bb49
bb49:
  %t145 = load ptr, ptr %l16, !tbaa !29
  %t146 = load i64, ptr %l17, !tbaa !24
  %t149 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t145, i64 %t146)
  store ptr %t149, ptr %l98
  br label %bb50
bb50:
  %t150 = load ptr, ptr %l98, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %s0, ptr %s0, ptr %t151, ptr %t150, ptr %l15)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t157 = load i64, ptr %l17, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l17, !tbaa !24
  br label %bb45
bb53:
  %t161 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t161, ptr %l105
  br label %bb54
bb54:
  %t162 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l105
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t162, ptr %l19
  store ptr %l15, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s16
  %t164 = load i64, ptr %l21, !tbaa !24
  store i64 %t164, ptr %l107, !tbaa !24
  %t165 = load ptr, ptr %l20, !tbaa !29
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t165)
  store i64 %t167, ptr %l109
  br label %bb56
bb56:
  %t168 = load i64, ptr %l107, !tbaa !24
  %t169 = load i64, ptr %l109, !tbaa !24
  %t170 = icmp slt i64 %t168, %t169
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s16)
  br label %bb72
bb58:
  br label %bb59
bb59:
  %t174 = load ptr, ptr %l20, !tbaa !29
  %t175 = load i64, ptr %l21, !tbaa !24
  %t178 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t174, i64 %t175)
  store %"compiler/scope:fnRec" %t178, ptr %l114
  br label %bb60
bb60:
  %t180 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s16, ptr %l114)
  store %"compiler/scope:fnRec" %t180, ptr %l116
  br label %bb61
bb61:
  %t181 = load %"compiler/scope:fnRec", ptr %l116
  store %"compiler/scope:fnRec" %t181, ptr %l22
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l117, !tbaa !29
  %t183 = getelementptr %"compiler/scope:fnRec", ptr %l22, i32 0, i32 0
  %t184 = load i64, ptr %t183, !tbaa !24
  store i64 %t184, ptr %l118, !tbaa !24
  %t185 = getelementptr %"compiler/scope:fnRec", ptr %l22, i32 0, i32 2
  %t186 = load i1, ptr %t185, !tbaa !21
  store i1 %t186, ptr %l119, !tbaa !21
  %t187 = load ptr, ptr %l2, !tbaa !29
  %t189 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t187)
  store i32 %t189, ptr %l121
  br label %bb62
bb62:
  %t190 = load ptr, ptr %l117, !tbaa !29
  %t191 = load i64, ptr %l118, !tbaa !24
  %t192 = load i1, ptr %l119, !tbaa !21
  %t193 = load i32, ptr %l121, !tbaa !23
  %t195 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %s0, ptr %t190, i64 %t191, i1 %t192, i32 %t193, ptr %l19)
  store i64 %t195, ptr %l123
  br label %bb63
bb63:
  %t196 = load i64, ptr %l123, !tbaa !24
  store i64 %t196, ptr %l23, !tbaa !24
  %t197 = load i64, ptr %l23, !tbaa !24
  %t199 = icmp slt i64 %t197, 0
  br i1 %t199, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s16)
  br label %bb71
bb65:
  br label %bb66
bb66:
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l126, !tbaa !29
  %t202 = load ptr, ptr %l2, !tbaa !29
  store ptr %t202, ptr %l127, !tbaa !29
  %t203 = load i64, ptr %l23, !tbaa !24
  store i64 %t203, ptr %l128, !tbaa !24
  %t204 = load i64, ptr %l23, !tbaa !24
  %t205 = getelementptr %"compiler/scope:fnRec", ptr %l22, i32 0, i32 0
  %t206 = load i64, ptr %t205, !tbaa !24
  %t209 = icmp eq i64 %t204, %t206
  br i1 %t209, label %bb67, label %bb68
bb67:
  %t211 = getelementptr %"compiler/scope:fnRec", ptr %l22, i32 0, i32 2
  %t212 = load i1, ptr %t211, !tbaa !21
  store i1 %t212, ptr %l132, !tbaa !21
  br label %bb69
bb68:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb69
bb69:
  %t214 = load i64, ptr @G_2ecompiler_2fscope_2eBndLate, !tbaa !24
  %t215 = load ptr, ptr %l126, !tbaa !29
  %t216 = load ptr, ptr %l127, !tbaa !29
  %t217 = load i64, ptr %l128, !tbaa !24
  %t218 = load i1, ptr %l132, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndError(ptr %v0, ptr %v2, ptr %t215, ptr %t216, i64 %t217, i1 %t218, i64 %t214)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb71:
  %t220 = load i64, ptr %l21, !tbaa !24
  %t222 = add i64 %t220, 1
  store i64 %t222, ptr %l21, !tbaa !24
  br label %bb55
bb72:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %s11 = alloca %olang.scope
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
  %t198 = getelementptr %"compiler/scope:Scoper", ptr %t196, i32 0, i32 87
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
  store %olang.scope zeroinitializer, ptr %s11
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l114, !tbaa !29
  store i64 %a1, ptr %l115, !tbaa !24
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/scope:Scoper", ptr %t212, i32 0, i32 26
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
  %t221 = getelementptr %"compiler/scope:Scoper", ptr %t219, i32 0, i32 26
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
  %t232 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteCondValue(ptr %s11)
  store %"compiler/diagmsg:Msg" %t232, ptr %l126
  br label %bb71
bb71:
  %t233 = load ptr, ptr %l114, !tbaa !29
  %t234 = load i64, ptr %l115, !tbaa !24
  %t235 = load i64, ptr %l122, !tbaa !24
  %t236 = load %"compiler/source:Span", ptr %l125
  %t237 = load %"compiler/diagmsg:Msg", ptr %l126
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s11, ptr %t233, i64 %t234, i64 %t235, %"compiler/source:Span" %t236, %"compiler/diagmsg:Msg" %t237)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s11)
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l1 = alloca ptr
  %l12 = alloca i1
  %rv = alloca i1
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Block", ptr %t7, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t17 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %t10, i64 0, i64 %a2, i1 %a3)
  store i1 %t17, ptr %l12
  br label %bb4
bb4:
  %t18 = load i1, ptr %l12, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
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
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i32
  %l41 = alloca i32
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l79 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i1
  %l92 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i1
  %l109 = alloca i64
  %l112 = alloca i1
  %l118 = alloca i1
  %l123 = alloca i64
  %l124 = alloca ptr
  %l125 = alloca i1
  %l138 = alloca i64
  %l141 = alloca i64
  %l160 = alloca { i64, ptr }
  %l164 = alloca i1
  %l167 = alloca i64
  %l170 = alloca i1
  %l173 = alloca i1
  %l177 = alloca i1
  %l183 = alloca i1
  %l189 = alloca ptr
  %l190 = alloca i1
  %l200 = alloca i1
  %l201 = alloca i1
  %l207 = alloca i1
  %l208 = alloca ptr
  %l209 = alloca i1
  %l219 = alloca i1
  %l220 = alloca i1
  %l227 = alloca i1
  %l228 = alloca ptr
  %l229 = alloca i1
  %l238 = alloca i1
  %l239 = alloca ptr
  %l240 = alloca i1
  %l250 = alloca i1
  %l251 = alloca i1
  %l258 = alloca i1
  %l259 = alloca i1
  %l266 = alloca i1
  %l267 = alloca ptr
  %l268 = alloca i1
  %l279 = alloca i1
  %l280 = alloca i1
  %l286 = alloca i1
  %l287 = alloca i1
  %l294 = alloca i1
  %l295 = alloca ptr
  %l296 = alloca i1
  %l306 = alloca i1
  %l307 = alloca i1
  %l313 = alloca i1
  %l314 = alloca ptr
  %l315 = alloca i1
  %l325 = alloca i1
  %l336 = alloca { i64, ptr }
  %l344 = alloca i1
  %l354 = alloca i1
  %l355 = alloca ptr
  %l356 = alloca i1
  %l366 = alloca i1
  %l377 = alloca { i64, ptr }
  %l385 = alloca i1
  %l387 = alloca i1
  %l393 = alloca i1
  %l399 = alloca ptr
  %l400 = alloca i1
  %l405 = alloca ptr
  %l406 = alloca i1
  %l420 = alloca i1
  %l421 = alloca ptr
  %l422 = alloca i1
  %l440 = alloca { i64, ptr }
  %l446 = alloca i64
  %l449 = alloca i1
  %l456 = alloca i1
  %l462 = alloca ptr
  %l463 = alloca i1
  %l476 = alloca { i64, ptr }
  %l479 = alloca ptr
  %l480 = alloca i1
  %l483 = alloca i1
  %l491 = alloca i1
  %l499 = alloca ptr
  %l500 = alloca i1
  %l510 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t7 = load ptr, ptr %l57, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l57, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l58, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l58, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l4, !tbaa !29
  br label %bb16
bb7:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t22 = load ptr, ptr %l63, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l63, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 3
  store i1 %t28, ptr %l64, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l64, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l4, !tbaa !29
  br label %bb16
bb11:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t37 = load ptr, ptr %l69, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l69, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 18}
  %t43 = icmp eq i64 %t41, 4
  store i1 %t43, ptr %l70, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l70, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t53 = load i64, ptr %l2, !tbaa !24
  %t54 = load i1, ptr %l3, !tbaa !21
  %t59 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocPlace(ptr %v0, ptr %v1, ptr %t51, ptr %t52, i64 %t53, i1 %t54)
  store i1 %t59, ptr %l79
  br label %bb17
bb17:
  %t60 = load i1, ptr %l79, !tbaa !21
  store i1 %t60, ptr %rv
  br label %ret
bb18:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t62 = load ptr, ptr %l80, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t65 = load ptr, ptr %l80, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 18}
  %t68 = icmp eq i64 %t66, 5
  store i1 %t68, ptr %l81, !tbaa !21
  br label %bb20
bb20:
  %t69 = load i1, ptr %l81, !tbaa !21
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [5 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l5, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Promote", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = load i64, ptr %l2, !tbaa !24
  %t83 = load i1, ptr %l3, !tbaa !21
  %t88 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t76, ptr %t80, i64 %t82, i1 %t83)
  store i1 %t88, ptr %l92
  br label %bb24
bb24:
  %t89 = load i1, ptr %l92, !tbaa !21
  store i1 %t89, ptr %rv
  br label %ret
bb25:
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t91 = load ptr, ptr %l93, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb26, label %bb27
bb26:
  %t94 = load ptr, ptr %l93, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 18}
  %t97 = icmp eq i64 %t95, 6
  store i1 %t97, ptr %l94, !tbaa !21
  br label %bb27
bb27:
  %t98 = load i1, ptr %l94, !tbaa !21
  br i1 %t98, label %bb28, label %bb29
bb28:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l6, !tbaa !29
  br label %bb30
bb29:
  br label %bb91
bb30:
  %t105 = load ptr, ptr %l6, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Call", ptr %t105, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  store ptr %t108, ptr %l7, !tbaa !29
  %t110 = load ptr, ptr %l7, !tbaa !29
  store ptr %t110, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t111 = load ptr, ptr %l101, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb31, label %bb32
bb31:
  %t114 = load ptr, ptr %l101, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 5}
  %t117 = icmp eq i64 %t115, 2
  store i1 %t117, ptr %l102, !tbaa !21
  br label %bb32
bb32:
  %t118 = load i1, ptr %l102, !tbaa !21
  br i1 %t118, label %bb33, label %bb34
bb33:
  %t119 = load ptr, ptr %l7, !tbaa !29
  %t121 = getelementptr { i64, [3 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { ptr }, ptr %t121, i32 0, i32 0
  %t123 = load ptr, ptr %t122
  store ptr %t123, ptr %l8, !tbaa !29
  br label %bb35
bb34:
  br label %bb44
bb35:
  %t125 = load ptr, ptr %l8, !tbaa !29
  %t128 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v1, ptr %t125)
  store i64 %t128, ptr %l109
  br label %bb36
bb36:
  %t129 = load i64, ptr %l2, !tbaa !24
  %t130 = load i64, ptr %l109, !tbaa !24
  %t132 = icmp ne i64 %t130, %t129
  br i1 %t132, label %bb37, label %bb38
bb37:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l8, !tbaa !29
  %t137 = load i64, ptr %l2, !tbaa !24
  %t138 = load i1, ptr %l3, !tbaa !21
  %t143 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t134, ptr %t135, i64 %t137, i1 %t138)
  store i1 %t143, ptr %l118
  br label %bb39
bb38:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb40
bb39:
  %t144 = load i1, ptr %l118, !tbaa !21
  %t145 = xor i1 %t144, true
  store i1 %t145, ptr %l112, !tbaa !21
  br label %bb40
bb40:
  %t147 = load i1, ptr %l112, !tbaa !21
  br i1 %t147, label %bb41, label %bb42
bb41:
  store i1 false, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_f6ab244bf9a60895_3da90549b61465f9)
  unreachable
bb49:
  %t149 = load ptr, ptr %l6, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Call", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  store ptr %t152, ptr %l9, !tbaa !29
  %t154 = load ptr, ptr %l9, !tbaa !29
  store ptr %t154, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t155 = load ptr, ptr %l124, !tbaa !29
  %t156 = icmp ne ptr %t155, null
  br i1 %t156, label %bb50, label %bb51
bb50:
  %t158 = load ptr, ptr %l124, !tbaa !29
  %t159 = load i64, ptr %t158, !range !{i64 0, i64 5}
  %t161 = icmp eq i64 %t159, 0
  store i1 %t161, ptr %l125, !tbaa !21
  br label %bb51
bb51:
  %t162 = load i1, ptr %l125, !tbaa !21
  br i1 %t162, label %bb52, label %bb53
bb52:
  %t163 = load ptr, ptr %l9, !tbaa !29
  %t165 = getelementptr { i64, [3 x i64] }, ptr %t163, i32 0, i32 1
  %t166 = getelementptr { i32 }, ptr %t165, i32 0, i32 0
  %t167 = load i32, ptr %t166
  store i32 %t167, ptr %l10, !tbaa !23
  br label %bb54
bb53:
  br label %bb55
bb54:
  %t169 = load i32, ptr %l10, !tbaa !23
  %t171 = sext i32 %t169 to i64
  store i64 %t171, ptr %l123, !tbaa !24
  br label %bb60
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  store i64 -1, ptr %l123, !tbaa !24
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_ada1cd0371fb99a4_44de0994b712a728)
  unreachable
bb60:
  %t173 = load i64, ptr %l123, !tbaa !24
  store i64 %t173, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t174 = load ptr, ptr %l6, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Call", ptr %t174, i32 0, i32 1
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  store i64 %t179, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t181 = load i64, ptr %l13, !tbaa !24
  %t182 = load i64, ptr %l12, !tbaa !24
  %t185 = icmp sgt i64 %t181, %t182
  br i1 %t185, label %bb61, label %bb62
bb61:
  %t187 = load i64, ptr %l14, !tbaa !24
  %t189 = icmp sgt i64 %t187, 0
  br i1 %t189, label %bb63, label %bb64
bb62:
  store i64 0, ptr %l138, !tbaa !24
  br label %bb66
bb63:
  %t191 = load i64, ptr %l13, !tbaa !24
  %t192 = load i64, ptr %l12, !tbaa !24
  %t195 = sub i64 %t191, %t192
  %t196 = load i64, ptr %l14, !tbaa !24
  %t199 = add i64 %t195, %t196
  %t201 = sub i64 %t199, 1
  %t202 = load i64, ptr %l14, !tbaa !24
  %t205 = sdiv i64 %t201, %t202
  store i64 %t205, ptr %l141, !tbaa !24
  br label %bb65
bb64:
  store i64 0, ptr %l141, !tbaa !24
  br label %bb65
bb65:
  %t207 = load i64, ptr %l141, !tbaa !24
  store i64 %t207, ptr %l138, !tbaa !24
  br label %bb66
bb66:
  %t208 = load i64, ptr %l138, !tbaa !24
  store i64 %t208, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb67
bb67:
  %t209 = load i64, ptr %l16, !tbaa !24
  %t210 = load i64, ptr %l15, !tbaa !24
  %t213 = icmp slt i64 %t209, %t210
  %t215 = xor i1 %t213, true
  br i1 %t215, label %bb68, label %bb69
bb68:
  br label %bb90
bb69:
  br label %bb70
bb70:
  %t217 = load i64, ptr %l12, !tbaa !24
  %t218 = load i64, ptr %l16, !tbaa !24
  %t219 = load i64, ptr %l14, !tbaa !24
  %t222 = mul i64 %t218, %t219
  %t225 = add i64 %t217, %t222
  store i64 %t225, ptr %l17, !tbaa !24
  %t227 = load ptr, ptr %l6, !tbaa !29
  %t229 = getelementptr %"compiler/typed:Call", ptr %t227, i32 0, i32 1
  %t230 = load { i64, ptr }, ptr %t229, !tbaa !27
  store { i64, ptr } %t230, ptr %l160, !tbaa !27
  %t231 = load i64, ptr %l17, !tbaa !24
  %t233 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr ptr, ptr %t234, i64 %t231
  %t236 = load ptr, ptr %t235, !tbaa !39
  store ptr %t236, ptr %l18, !tbaa !29
  %t238 = load i1, ptr %l3, !tbaa !21
  br i1 %t238, label %bb71, label %bb72
bb71:
  %t240 = load ptr, ptr %l18, !tbaa !29
  %t243 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v1, ptr %t240)
  store i64 %t243, ptr %l167
  br label %bb73
bb72:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb74
bb73:
  %t244 = load i64, ptr %l2, !tbaa !24
  %t245 = load i64, ptr %l167, !tbaa !24
  %t247 = icmp eq i64 %t245, %t244
  store i1 %t247, ptr %l164, !tbaa !21
  br label %bb74
bb74:
  %t249 = load i1, ptr %l164, !tbaa !21
  br i1 %t249, label %bb75, label %bb76
bb75:
  %t250 = load i64, ptr %l11, !tbaa !24
  %t252 = icmp sge i64 %t250, 0
  store i1 %t252, ptr %l170, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb77
bb77:
  %t254 = load i1, ptr %l170, !tbaa !21
  br i1 %t254, label %bb78, label %bb79
bb78:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l11, !tbaa !24
  %t257 = load i64, ptr %l17, !tbaa !24
  %t261 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etransient(ptr %v0, ptr %t255, i64 %t256, i64 %t257)
  store i1 %t261, ptr %l177
  br label %bb80
bb79:
  store i1 false, ptr %l173, !tbaa !21
  br label %bb81
bb80:
  %t262 = load i1, ptr %l177, !tbaa !21
  store i1 %t262, ptr %l173, !tbaa !21
  br label %bb81
bb81:
  %t263 = load i1, ptr %l173, !tbaa !21
  br i1 %t263, label %bb82, label %bb83
bb82:
  br label %bb89
bb83:
  br label %bb84
bb84:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load ptr, ptr %l18, !tbaa !29
  %t267 = load i64, ptr %l2, !tbaa !24
  %t268 = load i1, ptr %l3, !tbaa !21
  %t273 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t264, ptr %t265, i64 %t267, i1 %t268)
  store i1 %t273, ptr %l183
  br label %bb85
bb85:
  %t274 = load i1, ptr %l183, !tbaa !21
  %t275 = xor i1 %t274, true
  br i1 %t275, label %bb86, label %bb87
bb86:
  store i1 false, ptr %rv
  br label %ret
bb87:
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t278 = load i64, ptr %l16, !tbaa !24
  %t280 = add i64 %t278, 1
  store i64 %t280, ptr %l16, !tbaa !24
  br label %bb67
bb90:
  store i1 true, ptr %rv
  br label %ret
bb91:
  %t283 = load ptr, ptr %l1, !tbaa !29
  store ptr %t283, ptr %l189, !tbaa !29
  store i1 false, ptr %l190, !tbaa !21
  %t284 = load ptr, ptr %l189, !tbaa !29
  %t285 = icmp ne ptr %t284, null
  br i1 %t285, label %bb92, label %bb93
bb92:
  %t287 = load ptr, ptr %l189, !tbaa !29
  %t288 = load i64, ptr %t287, !range !{i64 0, i64 18}
  %t290 = icmp eq i64 %t288, 7
  store i1 %t290, ptr %l190, !tbaa !21
  br label %bb93
bb93:
  %t291 = load i1, ptr %l190, !tbaa !21
  br i1 %t291, label %bb94, label %bb95
bb94:
  %t292 = load ptr, ptr %l1, !tbaa !29
  %t294 = getelementptr { i64, [5 x i64] }, ptr %t292, i32 0, i32 1
  %t295 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t294, i32 0, i32 2
  %t296 = load ptr, ptr %t295
  store ptr %t296, ptr %l19, !tbaa !29
  br label %bb96
bb95:
  br label %bb102
bb96:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load ptr, ptr %l19, !tbaa !29
  %t301 = getelementptr %"compiler/typed:Make", ptr %t299, i32 0, i32 2
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  %t303 = load i64, ptr %l2, !tbaa !24
  %t304 = load i1, ptr %l3, !tbaa !21
  %t309 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExprs(ptr %v0, ptr %v1, ptr %t298, { i64, ptr } %t302, i64 %t303, i1 %t304)
  store i1 %t309, ptr %l200
  br label %bb97
bb97:
  %t310 = load i1, ptr %l200, !tbaa !21
  br i1 %t310, label %bb98, label %bb99
bb98:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load ptr, ptr %l19, !tbaa !29
  %t314 = getelementptr %"compiler/typed:Make", ptr %t312, i32 0, i32 3
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t316 = load i64, ptr %l2, !tbaa !24
  %t317 = load i1, ptr %l3, !tbaa !21
  %t322 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t311, ptr %t315, i64 %t316, i1 %t317)
  store i1 %t322, ptr %l207
  br label %bb100
bb99:
  store i1 false, ptr %l201, !tbaa !21
  br label %bb101
bb100:
  %t323 = load i1, ptr %l207, !tbaa !21
  store i1 %t323, ptr %l201, !tbaa !21
  br label %bb101
bb101:
  %t324 = load i1, ptr %l201, !tbaa !21
  store i1 %t324, ptr %rv
  br label %ret
bb102:
  %t325 = load ptr, ptr %l1, !tbaa !29
  store ptr %t325, ptr %l208, !tbaa !29
  store i1 false, ptr %l209, !tbaa !21
  %t326 = load ptr, ptr %l208, !tbaa !29
  %t327 = icmp ne ptr %t326, null
  br i1 %t327, label %bb103, label %bb104
bb103:
  %t329 = load ptr, ptr %l208, !tbaa !29
  %t330 = load i64, ptr %t329, !range !{i64 0, i64 18}
  %t332 = icmp eq i64 %t330, 8
  store i1 %t332, ptr %l209, !tbaa !21
  br label %bb104
bb104:
  %t333 = load i1, ptr %l209, !tbaa !21
  br i1 %t333, label %bb105, label %bb106
bb105:
  %t334 = load ptr, ptr %l1, !tbaa !29
  %t336 = getelementptr { i64, [5 x i64] }, ptr %t334, i32 0, i32 1
  %t337 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t336, i32 0, i32 2
  %t338 = load ptr, ptr %t337
  store ptr %t338, ptr %l20, !tbaa !29
  br label %bb107
bb106:
  br label %bb113
bb107:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load ptr, ptr %l20, !tbaa !29
  %t343 = getelementptr %"compiler/typed:Collect", ptr %t341, i32 0, i32 0
  %t344 = load ptr, ptr %t343, !tbaa !29
  %t345 = load i64, ptr %l2, !tbaa !24
  %t346 = load i1, ptr %l3, !tbaa !21
  %t351 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t340, ptr %t344, i64 %t345, i1 %t346)
  store i1 %t351, ptr %l219
  br label %bb108
bb108:
  %t352 = load i1, ptr %l219, !tbaa !21
  br i1 %t352, label %bb109, label %bb110
bb109:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load ptr, ptr %l20, !tbaa !29
  %t356 = getelementptr %"compiler/typed:Collect", ptr %t354, i32 0, i32 1
  %t357 = load ptr, ptr %t356, !tbaa !29
  %t359 = load i64, ptr %l2, !tbaa !24
  %t360 = load i1, ptr %l3, !tbaa !21
  %t365 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocBlock(ptr %v0, ptr %v1, ptr %t353, ptr %t357, i64 %t359, i1 %t360)
  store i1 %t365, ptr %l227
  br label %bb111
bb110:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb112
bb111:
  %t366 = load i1, ptr %l227, !tbaa !21
  store i1 %t366, ptr %l220, !tbaa !21
  br label %bb112
bb112:
  %t367 = load i1, ptr %l220, !tbaa !21
  store i1 %t367, ptr %rv
  br label %ret
bb113:
  %t368 = load ptr, ptr %l1, !tbaa !29
  store ptr %t368, ptr %l228, !tbaa !29
  store i1 false, ptr %l229, !tbaa !21
  %t369 = load ptr, ptr %l228, !tbaa !29
  %t370 = icmp ne ptr %t369, null
  br i1 %t370, label %bb114, label %bb115
bb114:
  %t372 = load ptr, ptr %l228, !tbaa !29
  %t373 = load i64, ptr %t372, !range !{i64 0, i64 18}
  %t375 = icmp eq i64 %t373, 9
  store i1 %t375, ptr %l229, !tbaa !21
  br label %bb115
bb115:
  %t376 = load i1, ptr %l229, !tbaa !21
  br i1 %t376, label %bb116, label %bb117
bb116:
  %t377 = load ptr, ptr %l1, !tbaa !29
  %t379 = getelementptr { i64, [5 x i64] }, ptr %t377, i32 0, i32 1
  %t380 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t379, i32 0, i32 4
  %t381 = load { i64, ptr }, ptr %t380
  store { i64, ptr } %t381, ptr %l21, !tbaa !27
  br label %bb118
bb117:
  br label %bb120
bb118:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t385 = load i64, ptr %l2, !tbaa !24
  %t386 = load i1, ptr %l3, !tbaa !21
  %t391 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExprs(ptr %v0, ptr %v1, ptr %t383, { i64, ptr } %t384, i64 %t385, i1 %t386)
  store i1 %t391, ptr %l238
  br label %bb119
bb119:
  %t392 = load i1, ptr %l238, !tbaa !21
  store i1 %t392, ptr %rv
  br label %ret
bb120:
  %t393 = load ptr, ptr %l1, !tbaa !29
  store ptr %t393, ptr %l239, !tbaa !29
  store i1 false, ptr %l240, !tbaa !21
  %t394 = load ptr, ptr %l239, !tbaa !29
  %t395 = icmp ne ptr %t394, null
  br i1 %t395, label %bb121, label %bb122
bb121:
  %t397 = load ptr, ptr %l239, !tbaa !29
  %t398 = load i64, ptr %t397, !range !{i64 0, i64 18}
  %t400 = icmp eq i64 %t398, 10
  store i1 %t400, ptr %l240, !tbaa !21
  br label %bb122
bb122:
  %t401 = load i1, ptr %l240, !tbaa !21
  br i1 %t401, label %bb123, label %bb124
bb123:
  %t402 = load ptr, ptr %l1, !tbaa !29
  %t404 = getelementptr { i64, [5 x i64] }, ptr %t402, i32 0, i32 1
  %t405 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t404, i32 0, i32 2
  %t406 = load ptr, ptr %t405
  store ptr %t406, ptr %l22, !tbaa !29
  br label %bb125
bb124:
  br label %bb135
bb125:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t409 = load ptr, ptr %l22, !tbaa !29
  %t411 = getelementptr %"compiler/typed:Slice", ptr %t409, i32 0, i32 0
  %t412 = load ptr, ptr %t411, !tbaa !29
  %t413 = load i64, ptr %l2, !tbaa !24
  %t414 = load i1, ptr %l3, !tbaa !21
  %t419 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocPlace(ptr %v0, ptr %v1, ptr %t408, ptr %t412, i64 %t413, i1 %t414)
  store i1 %t419, ptr %l250
  br label %bb126
bb126:
  %t420 = load i1, ptr %l250, !tbaa !21
  br i1 %t420, label %bb127, label %bb128
bb127:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load ptr, ptr %l22, !tbaa !29
  %t424 = getelementptr %"compiler/typed:Slice", ptr %t422, i32 0, i32 1
  %t425 = load ptr, ptr %t424, !tbaa !29
  %t427 = load i64, ptr %l2, !tbaa !24
  %t428 = load i1, ptr %l3, !tbaa !21
  %t433 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t421, ptr %t425, i64 %t427, i1 %t428)
  store i1 %t433, ptr %l258
  br label %bb129
bb128:
  store i1 false, ptr %l251, !tbaa !21
  br label %bb130
bb129:
  %t434 = load i1, ptr %l258, !tbaa !21
  store i1 %t434, ptr %l251, !tbaa !21
  br label %bb130
bb130:
  %t435 = load i1, ptr %l251, !tbaa !21
  br i1 %t435, label %bb131, label %bb132
bb131:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load ptr, ptr %l22, !tbaa !29
  %t439 = getelementptr %"compiler/typed:Slice", ptr %t437, i32 0, i32 2
  %t440 = load ptr, ptr %t439, !tbaa !29
  %t442 = load i64, ptr %l2, !tbaa !24
  %t443 = load i1, ptr %l3, !tbaa !21
  %t448 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t436, ptr %t440, i64 %t442, i1 %t443)
  store i1 %t448, ptr %l266
  br label %bb133
bb132:
  store i1 false, ptr %l259, !tbaa !21
  br label %bb134
bb133:
  %t449 = load i1, ptr %l266, !tbaa !21
  store i1 %t449, ptr %l259, !tbaa !21
  br label %bb134
bb134:
  %t450 = load i1, ptr %l259, !tbaa !21
  store i1 %t450, ptr %rv
  br label %ret
bb135:
  %t451 = load ptr, ptr %l1, !tbaa !29
  store ptr %t451, ptr %l267, !tbaa !29
  store i1 false, ptr %l268, !tbaa !21
  %t452 = load ptr, ptr %l267, !tbaa !29
  %t453 = icmp ne ptr %t452, null
  br i1 %t453, label %bb136, label %bb137
bb136:
  %t455 = load ptr, ptr %l267, !tbaa !29
  %t456 = load i64, ptr %t455, !range !{i64 0, i64 18}
  %t458 = icmp eq i64 %t456, 11
  store i1 %t458, ptr %l268, !tbaa !21
  br label %bb137
bb137:
  %t459 = load i1, ptr %l268, !tbaa !21
  br i1 %t459, label %bb138, label %bb139
bb138:
  %t460 = load ptr, ptr %l1, !tbaa !29
  %t462 = getelementptr { i64, [5 x i64] }, ptr %t460, i32 0, i32 1
  %t463 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t462, i32 0, i32 2
  %t464 = load ptr, ptr %t463
  store ptr %t464, ptr %l23, !tbaa !29
  br label %bb140
bb139:
  br label %bb150
bb140:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load ptr, ptr %l23, !tbaa !29
  %t469 = getelementptr %"compiler/typed:Cond", ptr %t467, i32 0, i32 0
  %t470 = load ptr, ptr %t469, !tbaa !29
  %t472 = load i64, ptr %l2, !tbaa !24
  %t473 = load i1, ptr %l3, !tbaa !21
  %t478 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t466, ptr %t470, i64 %t472, i1 %t473)
  store i1 %t478, ptr %l279
  br label %bb141
bb141:
  %t479 = load i1, ptr %l279, !tbaa !21
  br i1 %t479, label %bb142, label %bb143
bb142:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load ptr, ptr %l23, !tbaa !29
  %t483 = getelementptr %"compiler/typed:Cond", ptr %t481, i32 0, i32 1
  %t484 = load ptr, ptr %t483, !tbaa !29
  %t485 = load i64, ptr %l2, !tbaa !24
  %t486 = load i1, ptr %l3, !tbaa !21
  %t491 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t480, ptr %t484, i64 %t485, i1 %t486)
  store i1 %t491, ptr %l286
  br label %bb144
bb143:
  store i1 false, ptr %l280, !tbaa !21
  br label %bb145
bb144:
  %t492 = load i1, ptr %l286, !tbaa !21
  store i1 %t492, ptr %l280, !tbaa !21
  br label %bb145
bb145:
  %t493 = load i1, ptr %l280, !tbaa !21
  br i1 %t493, label %bb146, label %bb147
bb146:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load ptr, ptr %l23, !tbaa !29
  %t497 = getelementptr %"compiler/typed:Cond", ptr %t495, i32 0, i32 2
  %t498 = load ptr, ptr %t497, !tbaa !29
  %t500 = load i64, ptr %l2, !tbaa !24
  %t501 = load i1, ptr %l3, !tbaa !21
  %t506 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t494, ptr %t498, i64 %t500, i1 %t501)
  store i1 %t506, ptr %l294
  br label %bb148
bb147:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb149
bb148:
  %t507 = load i1, ptr %l294, !tbaa !21
  store i1 %t507, ptr %l287, !tbaa !21
  br label %bb149
bb149:
  %t508 = load i1, ptr %l287, !tbaa !21
  store i1 %t508, ptr %rv
  br label %ret
bb150:
  %t509 = load ptr, ptr %l1, !tbaa !29
  store ptr %t509, ptr %l295, !tbaa !29
  store i1 false, ptr %l296, !tbaa !21
  %t510 = load ptr, ptr %l295, !tbaa !29
  %t511 = icmp ne ptr %t510, null
  br i1 %t511, label %bb151, label %bb152
bb151:
  %t513 = load ptr, ptr %l295, !tbaa !29
  %t514 = load i64, ptr %t513, !range !{i64 0, i64 18}
  %t516 = icmp eq i64 %t514, 12
  store i1 %t516, ptr %l296, !tbaa !21
  br label %bb152
bb152:
  %t517 = load i1, ptr %l296, !tbaa !21
  br i1 %t517, label %bb153, label %bb154
bb153:
  %t518 = load ptr, ptr %l1, !tbaa !29
  %t520 = getelementptr { i64, [5 x i64] }, ptr %t518, i32 0, i32 1
  %t521 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t520, i32 0, i32 2
  %t522 = load ptr, ptr %t521
  store ptr %t522, ptr %l24, !tbaa !29
  br label %bb155
bb154:
  br label %bb161
bb155:
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load ptr, ptr %l24, !tbaa !29
  %t527 = getelementptr %"compiler/typed:Seq", ptr %t525, i32 0, i32 0
  %t528 = load { i64, ptr }, ptr %t527, !tbaa !27
  %t529 = load i64, ptr %l2, !tbaa !24
  %t530 = load i1, ptr %l3, !tbaa !21
  %t535 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %t524, { i64, ptr } %t528, i64 0, i64 %t529, i1 %t530)
  store i1 %t535, ptr %l306
  br label %bb156
bb156:
  %t536 = load i1, ptr %l306, !tbaa !21
  br i1 %t536, label %bb157, label %bb158
bb157:
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t538 = load ptr, ptr %l24, !tbaa !29
  %t540 = getelementptr %"compiler/typed:Seq", ptr %t538, i32 0, i32 1
  %t541 = load ptr, ptr %t540, !tbaa !29
  %t542 = load i64, ptr %l2, !tbaa !24
  %t543 = load i1, ptr %l3, !tbaa !21
  %t548 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t537, ptr %t541, i64 %t542, i1 %t543)
  store i1 %t548, ptr %l313
  br label %bb159
bb158:
  store i1 false, ptr %l307, !tbaa !21
  br label %bb160
bb159:
  %t549 = load i1, ptr %l313, !tbaa !21
  store i1 %t549, ptr %l307, !tbaa !21
  br label %bb160
bb160:
  %t550 = load i1, ptr %l307, !tbaa !21
  store i1 %t550, ptr %rv
  br label %ret
bb161:
  %t551 = load ptr, ptr %l1, !tbaa !29
  store ptr %t551, ptr %l314, !tbaa !29
  store i1 false, ptr %l315, !tbaa !21
  %t552 = load ptr, ptr %l314, !tbaa !29
  %t553 = icmp ne ptr %t552, null
  br i1 %t553, label %bb162, label %bb163
bb162:
  %t555 = load ptr, ptr %l314, !tbaa !29
  %t556 = load i64, ptr %t555, !range !{i64 0, i64 18}
  %t558 = icmp eq i64 %t556, 13
  store i1 %t558, ptr %l315, !tbaa !21
  br label %bb163
bb163:
  %t559 = load i1, ptr %l315, !tbaa !21
  br i1 %t559, label %bb164, label %bb165
bb164:
  %t560 = load ptr, ptr %l1, !tbaa !29
  %t562 = getelementptr { i64, [5 x i64] }, ptr %t560, i32 0, i32 1
  %t563 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t562, i32 0, i32 2
  %t564 = load ptr, ptr %t563
  store ptr %t564, ptr %l25, !tbaa !29
  br label %bb166
bb165:
  br label %bb182
bb166:
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load ptr, ptr %l25, !tbaa !29
  %t569 = getelementptr %"compiler/typed:Match", ptr %t567, i32 0, i32 0
  %t570 = load { i64, ptr }, ptr %t569, !tbaa !27
  %t571 = load i64, ptr %l2, !tbaa !24
  %t572 = load i1, ptr %l3, !tbaa !21
  %t577 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %t566, { i64, ptr } %t570, i64 0, i64 %t571, i1 %t572)
  store i1 %t577, ptr %l325
  br label %bb167
bb167:
  %t578 = load i1, ptr %l325, !tbaa !21
  %t579 = xor i1 %t578, true
  br i1 %t579, label %bb168, label %bb169
bb168:
  store i1 false, ptr %rv
  br label %ret
bb169:
  br label %bb170
bb170:
  %t582 = load ptr, ptr %l25, !tbaa !29
  %t584 = getelementptr %"compiler/typed:Match", ptr %t582, i32 0, i32 1
  %t585 = load { i64, ptr }, ptr %t584, !tbaa !27
  store { i64, ptr } %t585, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t587 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t589 = extractvalue { i64, ptr } %t587, 0
  store i64 %t589, ptr %l28, !tbaa !24
  br label %bb171
bb171:
  %t591 = load i64, ptr %l27, !tbaa !24
  %t592 = load i64, ptr %l28, !tbaa !24
  %t595 = icmp slt i64 %t591, %t592
  %t597 = xor i1 %t595, true
  br i1 %t597, label %bb172, label %bb173
bb172:
  br label %bb180
bb173:
  br label %bb174
bb174:
  %t599 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t599, ptr %l336, !tbaa !27
  %t600 = load i64, ptr %l27, !tbaa !24
  %t602 = getelementptr { i64, ptr }, ptr %l336, i32 0, i32 1
  %t603 = load ptr, ptr %t602, !tbaa !27
  %t604 = getelementptr ptr, ptr %t603, i64 %t600
  %t605 = load ptr, ptr %t604, !tbaa !39
  %t607 = load ptr, ptr %l0, !tbaa !29
  %t610 = load i64, ptr %l2, !tbaa !24
  %t611 = load i1, ptr %l3, !tbaa !21
  %t616 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocArm(ptr %v0, ptr %v1, ptr %t607, ptr %t605, i64 %t610, i1 %t611)
  store i1 %t616, ptr %l344
  br label %bb175
bb175:
  %t617 = load i1, ptr %l344, !tbaa !21
  %t618 = xor i1 %t617, true
  br i1 %t618, label %bb176, label %bb177
bb176:
  store i1 false, ptr %rv
  br label %ret
bb177:
  br label %bb178
bb178:
  br label %bb179
bb179:
  %t621 = load i64, ptr %l27, !tbaa !24
  %t623 = add i64 %t621, 1
  store i64 %t623, ptr %l27, !tbaa !24
  br label %bb171
bb180:
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t626 = load ptr, ptr %l25, !tbaa !29
  %t628 = getelementptr %"compiler/typed:Match", ptr %t626, i32 0, i32 2
  %t629 = load ptr, ptr %t628, !tbaa !29
  %t630 = load i64, ptr %l2, !tbaa !24
  %t631 = load i1, ptr %l3, !tbaa !21
  %t636 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocArm(ptr %v0, ptr %v1, ptr %t625, ptr %t629, i64 %t630, i1 %t631)
  store i1 %t636, ptr %l354
  br label %bb181
bb181:
  %t637 = load i1, ptr %l354, !tbaa !21
  store i1 %t637, ptr %rv
  br label %ret
bb182:
  %t638 = load ptr, ptr %l1, !tbaa !29
  store ptr %t638, ptr %l355, !tbaa !29
  store i1 false, ptr %l356, !tbaa !21
  %t639 = load ptr, ptr %l355, !tbaa !29
  %t640 = icmp ne ptr %t639, null
  br i1 %t640, label %bb183, label %bb184
bb183:
  %t642 = load ptr, ptr %l355, !tbaa !29
  %t643 = load i64, ptr %t642, !range !{i64 0, i64 18}
  %t645 = icmp eq i64 %t643, 14
  store i1 %t645, ptr %l356, !tbaa !21
  br label %bb184
bb184:
  %t646 = load i1, ptr %l356, !tbaa !21
  br i1 %t646, label %bb185, label %bb186
bb185:
  %t647 = load ptr, ptr %l1, !tbaa !29
  %t649 = getelementptr { i64, [5 x i64] }, ptr %t647, i32 0, i32 1
  %t650 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t649, i32 0, i32 2
  %t651 = load ptr, ptr %t650
  store ptr %t651, ptr %l30, !tbaa !29
  br label %bb187
bb186:
  br label %bb206
bb187:
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t654 = load ptr, ptr %l30, !tbaa !29
  %t656 = getelementptr %"compiler/typed:Try", ptr %t654, i32 0, i32 0
  %t657 = load ptr, ptr %t656, !tbaa !29
  %t658 = load i64, ptr %l2, !tbaa !24
  %t659 = load i1, ptr %l3, !tbaa !21
  %t664 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t653, ptr %t657, i64 %t658, i1 %t659)
  store i1 %t664, ptr %l366
  br label %bb188
bb188:
  %t665 = load i1, ptr %l366, !tbaa !21
  %t666 = xor i1 %t665, true
  br i1 %t666, label %bb189, label %bb190
bb189:
  store i1 false, ptr %rv
  br label %ret
bb190:
  br label %bb191
bb191:
  %t669 = load ptr, ptr %l30, !tbaa !29
  %t671 = getelementptr %"compiler/typed:Try", ptr %t669, i32 0, i32 1
  %t672 = load { i64, ptr }, ptr %t671, !tbaa !27
  store { i64, ptr } %t672, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t674 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t676 = extractvalue { i64, ptr } %t674, 0
  store i64 %t676, ptr %l33, !tbaa !24
  br label %bb192
bb192:
  %t678 = load i64, ptr %l32, !tbaa !24
  %t679 = load i64, ptr %l33, !tbaa !24
  %t682 = icmp slt i64 %t678, %t679
  %t684 = xor i1 %t682, true
  br i1 %t684, label %bb193, label %bb194
bb193:
  br label %bb205
bb194:
  br label %bb195
bb195:
  %t686 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t686, ptr %l377, !tbaa !27
  %t687 = load i64, ptr %l32, !tbaa !24
  %t689 = getelementptr { i64, ptr }, ptr %l377, i32 0, i32 1
  %t690 = load ptr, ptr %t689, !tbaa !27
  %t691 = getelementptr ptr, ptr %t690, i64 %t687
  %t692 = load ptr, ptr %t691, !tbaa !39
  store ptr %t692, ptr %l34, !tbaa !29
  %t694 = load ptr, ptr %l0, !tbaa !29
  %t695 = load ptr, ptr %l34, !tbaa !29
  %t697 = getelementptr %"compiler/typed:Clause", ptr %t695, i32 0, i32 3
  %t698 = load ptr, ptr %t697, !tbaa !29
  %t699 = load i64, ptr %l2, !tbaa !24
  %t700 = load i1, ptr %l3, !tbaa !21
  %t705 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocBlock(ptr %v0, ptr %v1, ptr %t694, ptr %t698, i64 %t699, i1 %t700)
  store i1 %t705, ptr %l385
  br label %bb196
bb196:
  %t706 = load i1, ptr %l385, !tbaa !21
  %t707 = xor i1 %t706, true
  br i1 %t707, label %bb197, label %bb198
bb197:
  store i1 true, ptr %l387, !tbaa !21
  br label %bb200
bb198:
  %t709 = load ptr, ptr %l0, !tbaa !29
  %t710 = load ptr, ptr %l34, !tbaa !29
  %t712 = getelementptr %"compiler/typed:Clause", ptr %t710, i32 0, i32 4
  %t713 = load { i64, ptr }, ptr %t712, !tbaa !27
  %t714 = load i64, ptr %l2, !tbaa !24
  %t715 = load i1, ptr %l3, !tbaa !21
  %t720 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExprs(ptr %v0, ptr %v1, ptr %t709, { i64, ptr } %t713, i64 %t714, i1 %t715)
  store i1 %t720, ptr %l393
  br label %bb199
bb199:
  %t721 = load i1, ptr %l393, !tbaa !21
  %t722 = xor i1 %t721, true
  store i1 %t722, ptr %l387, !tbaa !21
  br label %bb200
bb200:
  %t724 = load i1, ptr %l387, !tbaa !21
  br i1 %t724, label %bb201, label %bb202
bb201:
  store i1 false, ptr %rv
  br label %ret
bb202:
  br label %bb203
bb203:
  br label %bb204
bb204:
  %t726 = load i64, ptr %l32, !tbaa !24
  %t728 = add i64 %t726, 1
  store i64 %t728, ptr %l32, !tbaa !24
  br label %bb192
bb205:
  store i1 true, ptr %rv
  br label %ret
bb206:
  %t731 = load ptr, ptr %l1, !tbaa !29
  store ptr %t731, ptr %l399, !tbaa !29
  store i1 false, ptr %l400, !tbaa !21
  %t732 = load ptr, ptr %l399, !tbaa !29
  %t733 = icmp ne ptr %t732, null
  br i1 %t733, label %bb207, label %bb208
bb207:
  %t735 = load ptr, ptr %l399, !tbaa !29
  %t736 = load i64, ptr %t735, !range !{i64 0, i64 18}
  %t738 = icmp eq i64 %t736, 15
  store i1 %t738, ptr %l400, !tbaa !21
  br label %bb208
bb208:
  %t739 = load i1, ptr %l400, !tbaa !21
  br i1 %t739, label %bb209, label %bb210
bb209:
  %t740 = load ptr, ptr %l1, !tbaa !29
  %t742 = getelementptr { i64, [5 x i64] }, ptr %t740, i32 0, i32 1
  %t743 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t742, i32 0, i32 2
  %t744 = load ptr, ptr %t743
  store ptr %t744, ptr %l35, !tbaa !29
  br label %bb211
bb210:
  br label %bb237
bb211:
  %t746 = load ptr, ptr %l35, !tbaa !29
  store ptr %t746, ptr %l405, !tbaa !29
  store i1 false, ptr %l406, !tbaa !21
  %t747 = load ptr, ptr %l405, !tbaa !29
  %t748 = icmp ne ptr %t747, null
  br i1 %t748, label %bb212, label %bb213
bb212:
  %t750 = load ptr, ptr %l405, !tbaa !29
  %t751 = load i64, ptr %t750, !range !{i64 0, i64 3}
  %t753 = icmp eq i64 %t751, 2
  store i1 %t753, ptr %l406, !tbaa !21
  br label %bb213
bb213:
  %t754 = load i1, ptr %l406, !tbaa !21
  br i1 %t754, label %bb214, label %bb215
bb214:
  %t755 = load ptr, ptr %l35, !tbaa !29
  %t757 = getelementptr { i64, [4 x i64] }, ptr %t755, i32 0, i32 1
  %t758 = getelementptr { i32, ptr, i32 }, ptr %t757, i32 0, i32 0
  %t759 = load i32, ptr %t758
  store i32 %t759, ptr %l36, !tbaa !23
  %t761 = load ptr, ptr %l35, !tbaa !29
  %t763 = getelementptr { i64, [4 x i64] }, ptr %t761, i32 0, i32 1
  %t764 = getelementptr { i32, ptr, i32 }, ptr %t763, i32 0, i32 1
  %t765 = load ptr, ptr %t764
  %t767 = load ptr, ptr %l35, !tbaa !29
  %t769 = getelementptr { i64, [4 x i64] }, ptr %t767, i32 0, i32 1
  %t770 = getelementptr { i32, ptr, i32 }, ptr %t769, i32 0, i32 2
  %t771 = load i32, ptr %t770
  store i32 %t771, ptr %l38, !tbaa !23
  %t773 = load ptr, ptr %l0, !tbaa !29
  %t776 = load i64, ptr %l2, !tbaa !24
  %t777 = load i1, ptr %l3, !tbaa !21
  %t782 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t773, ptr %t765, i64 %t776, i1 %t777)
  store i1 %t782, ptr %l420
  br label %bb216
bb215:
  br label %bb217
bb216:
  %t783 = load i1, ptr %l420, !tbaa !21
  store i1 %t783, ptr %rv
  br label %ret
bb217:
  %t784 = load ptr, ptr %l35, !tbaa !29
  store ptr %t784, ptr %l421, !tbaa !29
  store i1 false, ptr %l422, !tbaa !21
  %t785 = load ptr, ptr %l421, !tbaa !29
  %t786 = icmp ne ptr %t785, null
  br i1 %t786, label %bb218, label %bb219
bb218:
  %t788 = load ptr, ptr %l421, !tbaa !29
  %t789 = load i64, ptr %t788, !range !{i64 0, i64 3}
  %t791 = icmp eq i64 %t789, 1
  store i1 %t791, ptr %l422, !tbaa !21
  br label %bb219
bb219:
  %t792 = load i1, ptr %l422, !tbaa !21
  %t793 = xor i1 %t792, true
  br i1 %t793, label %bb220, label %bb221
bb220:
  store i1 true, ptr %rv
  br label %ret
bb221:
  br label %bb222
bb222:
  %t796 = load ptr, ptr %l35, !tbaa !29
  %t798 = getelementptr { i64, [4 x i64] }, ptr %t796, i32 0, i32 1
  %t799 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t798, i32 0, i32 0
  %t800 = load i32, ptr %t799
  store i32 %t800, ptr %l39, !tbaa !23
  %t802 = load ptr, ptr %l35, !tbaa !29
  %t804 = getelementptr { i64, [4 x i64] }, ptr %t802, i32 0, i32 1
  %t805 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t804, i32 0, i32 1
  %t806 = load { i64, ptr }, ptr %t805
  %t808 = load ptr, ptr %l35, !tbaa !29
  %t810 = getelementptr { i64, [4 x i64] }, ptr %t808, i32 0, i32 1
  %t811 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t810, i32 0, i32 2
  %t812 = load i32, ptr %t811
  store i32 %t812, ptr %l41, !tbaa !23
  store { i64, ptr } %t806, ptr %l42, !tbaa !27
  store i64 0, ptr %l43, !tbaa !24
  %t816 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t818 = extractvalue { i64, ptr } %t816, 0
  store i64 %t818, ptr %l44, !tbaa !24
  br label %bb223
bb223:
  %t820 = load i64, ptr %l43, !tbaa !24
  %t821 = load i64, ptr %l44, !tbaa !24
  %t824 = icmp slt i64 %t820, %t821
  %t826 = xor i1 %t824, true
  br i1 %t826, label %bb224, label %bb225
bb224:
  br label %bb236
bb225:
  br label %bb226
bb226:
  %t828 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t828, ptr %l440, !tbaa !27
  %t829 = load i64, ptr %l43, !tbaa !24
  %t831 = getelementptr { i64, ptr }, ptr %l440, i32 0, i32 1
  %t832 = load ptr, ptr %t831, !tbaa !27
  %t833 = getelementptr ptr, ptr %t832, i64 %t829
  %t834 = load ptr, ptr %t833, !tbaa !39
  store ptr %t834, ptr %l45, !tbaa !29
  %t836 = load ptr, ptr %l45, !tbaa !29
  %t838 = getelementptr %"compiler/typed:Capture", ptr %t836, i32 0, i32 1
  %t839 = load ptr, ptr %t838, !tbaa !29
  %t842 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v1, ptr %t839)
  store i64 %t842, ptr %l446
  br label %bb227
bb227:
  %t843 = load i64, ptr %l2, !tbaa !24
  %t844 = load i64, ptr %l446, !tbaa !24
  %t846 = icmp eq i64 %t844, %t843
  br i1 %t846, label %bb228, label %bb229
bb228:
  store i1 true, ptr %l449, !tbaa !21
  br label %bb231
bb229:
  %t848 = load ptr, ptr %l0, !tbaa !29
  %t849 = load ptr, ptr %l45, !tbaa !29
  %t851 = getelementptr %"compiler/typed:Capture", ptr %t849, i32 0, i32 1
  %t852 = load ptr, ptr %t851, !tbaa !29
  %t854 = load i64, ptr %l2, !tbaa !24
  %t855 = load i1, ptr %l3, !tbaa !21
  %t860 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t848, ptr %t852, i64 %t854, i1 %t855)
  store i1 %t860, ptr %l456
  br label %bb230
bb230:
  %t861 = load i1, ptr %l456, !tbaa !21
  %t862 = xor i1 %t861, true
  store i1 %t862, ptr %l449, !tbaa !21
  br label %bb231
bb231:
  %t864 = load i1, ptr %l449, !tbaa !21
  br i1 %t864, label %bb232, label %bb233
bb232:
  store i1 false, ptr %rv
  br label %ret
bb233:
  br label %bb234
bb234:
  br label %bb235
bb235:
  %t866 = load i64, ptr %l43, !tbaa !24
  %t868 = add i64 %t866, 1
  store i64 %t868, ptr %l43, !tbaa !24
  br label %bb223
bb236:
  store i1 true, ptr %rv
  br label %ret
bb237:
  %t871 = load ptr, ptr %l1, !tbaa !29
  store ptr %t871, ptr %l462, !tbaa !29
  store i1 false, ptr %l463, !tbaa !21
  %t872 = load ptr, ptr %l462, !tbaa !29
  %t873 = icmp ne ptr %t872, null
  br i1 %t873, label %bb238, label %bb239
bb238:
  %t875 = load ptr, ptr %l462, !tbaa !29
  %t876 = load i64, ptr %t875, !range !{i64 0, i64 18}
  %t878 = icmp eq i64 %t876, 16
  store i1 %t878, ptr %l463, !tbaa !21
  br label %bb239
bb239:
  %t879 = load i1, ptr %l463, !tbaa !21
  br i1 %t879, label %bb240, label %bb241
bb240:
  %t880 = load ptr, ptr %l1, !tbaa !29
  %t882 = getelementptr { i64, [5 x i64] }, ptr %t880, i32 0, i32 1
  %t883 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t882, i32 0, i32 2
  %t884 = load ptr, ptr %t883
  store ptr %t884, ptr %l46, !tbaa !29
  br label %bb242
bb241:
  br label %bb258
bb242:
  %t886 = load ptr, ptr %l46, !tbaa !29
  %t888 = getelementptr %"compiler/typed:Text", ptr %t886, i32 0, i32 0
  %t889 = load { i64, ptr }, ptr %t888, !tbaa !27
  store { i64, ptr } %t889, ptr %l47, !tbaa !27
  store i64 0, ptr %l48, !tbaa !24
  %t891 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t893 = extractvalue { i64, ptr } %t891, 0
  store i64 %t893, ptr %l49, !tbaa !24
  br label %bb243
bb243:
  %t895 = load i64, ptr %l48, !tbaa !24
  %t896 = load i64, ptr %l49, !tbaa !24
  %t899 = icmp slt i64 %t895, %t896
  %t901 = xor i1 %t899, true
  br i1 %t901, label %bb244, label %bb245
bb244:
  br label %bb257
bb245:
  br label %bb246
bb246:
  %t903 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t903, ptr %l476, !tbaa !27
  %t904 = load i64, ptr %l48, !tbaa !24
  %t906 = getelementptr { i64, ptr }, ptr %l476, i32 0, i32 1
  %t907 = load ptr, ptr %t906, !tbaa !27
  %t908 = getelementptr ptr, ptr %t907, i64 %t904
  %t909 = load ptr, ptr %t908, !tbaa !39
  store ptr %t909, ptr %l50, !tbaa !29
  %t911 = load ptr, ptr %l50, !tbaa !29
  store ptr %t911, ptr %l479, !tbaa !29
  store i1 false, ptr %l480, !tbaa !21
  %t912 = load ptr, ptr %l479, !tbaa !29
  %t913 = icmp ne ptr %t912, null
  br i1 %t913, label %bb247, label %bb248
bb247:
  %t915 = load ptr, ptr %l479, !tbaa !29
  %t916 = load i64, ptr %t915, !range !{i64 0, i64 2}
  %t918 = icmp eq i64 %t916, 1
  store i1 %t918, ptr %l480, !tbaa !21
  br label %bb248
bb248:
  %t919 = load i1, ptr %l480, !tbaa !21
  br i1 %t919, label %bb249, label %bb250
bb249:
  %t920 = load ptr, ptr %l50, !tbaa !29
  %t922 = getelementptr { i64, [2 x i64] }, ptr %t920, i32 0, i32 1
  %t923 = getelementptr { ptr }, ptr %t922, i32 0, i32 0
  %t924 = load ptr, ptr %t923
  %t926 = load ptr, ptr %l0, !tbaa !29
  %t929 = load i64, ptr %l2, !tbaa !24
  %t930 = load i1, ptr %l3, !tbaa !21
  %t935 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t926, ptr %t924, i64 %t929, i1 %t930)
  store i1 %t935, ptr %l491
  br label %bb251
bb250:
  store i1 false, ptr %l483, !tbaa !21
  br label %bb252
bb251:
  %t936 = load i1, ptr %l491, !tbaa !21
  %t937 = xor i1 %t936, true
  store i1 %t937, ptr %l483, !tbaa !21
  br label %bb252
bb252:
  %t939 = load i1, ptr %l483, !tbaa !21
  br i1 %t939, label %bb253, label %bb254
bb253:
  %t940 = load ptr, ptr %l50, !tbaa !29
  %t942 = getelementptr { i64, [2 x i64] }, ptr %t940, i32 0, i32 1
  %t943 = getelementptr { ptr }, ptr %t942, i32 0, i32 0
  %t944 = load ptr, ptr %t943
  store ptr %t944, ptr %l52, !tbaa !29
  store i1 false, ptr %rv
  br label %ret
bb254:
  br label %bb255
bb255:
  br label %bb256
bb256:
  %t947 = load i64, ptr %l48, !tbaa !24
  %t949 = add i64 %t947, 1
  store i64 %t949, ptr %l48, !tbaa !24
  br label %bb243
bb257:
  store i1 true, ptr %rv
  br label %ret
bb258:
  %t952 = load ptr, ptr %l1, !tbaa !29
  store ptr %t952, ptr %l499, !tbaa !29
  store i1 false, ptr %l500, !tbaa !21
  %t953 = load ptr, ptr %l499, !tbaa !29
  %t954 = icmp ne ptr %t953, null
  br i1 %t954, label %bb259, label %bb260
bb259:
  %t956 = load ptr, ptr %l499, !tbaa !29
  %t957 = load i64, ptr %t956, !range !{i64 0, i64 18}
  %t959 = icmp eq i64 %t957, 17
  store i1 %t959, ptr %l500, !tbaa !21
  br label %bb260
bb260:
  %t960 = load i1, ptr %l500, !tbaa !21
  br i1 %t960, label %bb261, label %bb262
bb261:
  %t961 = load ptr, ptr %l1, !tbaa !29
  %t963 = getelementptr { i64, [5 x i64] }, ptr %t961, i32 0, i32 1
  %t964 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t963, i32 0, i32 2
  %t965 = load ptr, ptr %t964
  store ptr %t965, ptr %l53, !tbaa !29
  br label %bb263
bb262:
  br label %bb265
bb263:
  %t967 = load ptr, ptr %l0, !tbaa !29
  %t968 = load ptr, ptr %l53, !tbaa !29
  %t970 = load i64, ptr %l2, !tbaa !24
  %t971 = load i1, ptr %l3, !tbaa !21
  %t976 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t967, ptr %t968, i64 %t970, i1 %t971)
  store i1 %t976, ptr %l510
  br label %bb264
bb264:
  %t977 = load i1, ptr %l510, !tbaa !21
  store i1 %t977, ptr %rv
  br label %ret
bb265:
  br i1 true, label %bb266, label %bb267
bb266:
  br label %bb268
bb267:
  br label %bb269
bb268:
  store i1 true, ptr %rv
  br label %ret
bb269:
  call void @__olang_check_failed(ptr @olang_loc_2c98fa489637e3df_8470b6ea2a950703)
  unreachable
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
  %t141 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %s4, ptr %t139, %"compiler/source:Span" %t140, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) })
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
  %t254 = getelementptr %"compiler/scope:Scoper", ptr %t252, i32 0, i32 26
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
  %t261 = getelementptr %"compiler/scope:Scoper", ptr %t259, i32 0, i32 26
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

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca ptr
  %l11 = alloca i1
  %l20 = alloca i1
  %l21 = alloca { i64, [2 x i64] }
  %l24 = alloca { i64, [2 x i64] }
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca { i64, [2 x i64] }
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t5 = alloca { i64, [2 x i64] }, align 8
  %t41 = alloca { i64, [2 x i64] }, align 8
  %t90 = alloca { i64, [2 x i64] }, align 8
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
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t7 = load { i64, [2 x i64] }, ptr %t5
  store { i64, [2 x i64] } %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t10 = load ptr, ptr %l10, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l10, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 18}
  %t16 = icmp eq i64 %t14, 2
  store i1 %t16, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l11, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr { i64, [5 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t20, i32 0, i32 1
  %t22 = load i32, ptr %t21
  store i32 %t22, ptr %l2, !tbaa !23
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb14
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l2, !tbaa !23
  %t34 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t30, i32 %t31)
  store i1 %t34, ptr %l20
  br label %bb9
bb9:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t40 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t36, ptr %t37, i1 true)
  store { i64, [2 x i64] } %t40, ptr %l24
  br label %bb12
bb11:
  store { i64, [2 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [2 x i64] }, ptr %t41, i32 0, i32 0
  store i64 0, ptr %t42
  %t43 = load { i64, [2 x i64] }, ptr %t41
  store { i64, [2 x i64] } %t43, ptr %l21
  br label %bb13
bb12:
  %t45 = load { i64, [2 x i64] }, ptr %l24
  store { i64, [2 x i64] } %t45, ptr %l21
  br label %bb13
bb13:
  %t46 = load { i64, [2 x i64] }, ptr %l21
  store { i64, [2 x i64] } %t46, ptr %l9
  br label %bb33
bb14:
  %t47 = load ptr, ptr %l1, !tbaa !29
  store ptr %t47, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t48 = load ptr, ptr %l26, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l26, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 18}
  %t54 = icmp eq i64 %t52, 3
  store i1 %t54, ptr %l27, !tbaa !21
  br label %bb16
bb16:
  %t55 = load i1, ptr %l27, !tbaa !21
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [5 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 2
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t66 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekBorrow(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  store { i64, [2 x i64] } %t66, ptr %l34
  br label %bb20
bb20:
  %t67 = load { i64, [2 x i64] }, ptr %l34
  store { i64, [2 x i64] } %t67, ptr %l9
  br label %bb33
bb21:
  %t68 = load ptr, ptr %l1, !tbaa !29
  store ptr %t68, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t69 = load ptr, ptr %l35, !tbaa !29
  %t70 = icmp ne ptr %t69, null
  br i1 %t70, label %bb22, label %bb23
bb22:
  %t72 = load ptr, ptr %l35, !tbaa !29
  %t73 = load i64, ptr %t72, !range !{i64 0, i64 18}
  %t75 = icmp eq i64 %t73, 17
  store i1 %t75, ptr %l36, !tbaa !21
  br label %bb23
bb23:
  %t76 = load i1, ptr %l36, !tbaa !21
  br i1 %t76, label %bb24, label %bb25
bb24:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [5 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t79, i32 0, i32 2
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l5, !tbaa !29
  %t88 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %t83, ptr %t84)
  store { i64, [2 x i64] } %t88, ptr %l44
  br label %bb27
bb27:
  %t89 = load { i64, [2 x i64] }, ptr %l44
  store { i64, [2 x i64] } %t89, ptr %l9
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, [2 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [2 x i64] }, ptr %t90, i32 0, i32 0
  store i64 0, ptr %t91
  %t92 = load { i64, [2 x i64] }, ptr %t90
  store { i64, [2 x i64] } %t92, ptr %l9
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_d7c77d41b4c80261_4f2f6407fce85cbd)
  unreachable
bb33:
  %t94 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t94, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplacedScope(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l24 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l12, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 1
  %t12 = load { i64, [2 x i64] }, ptr %t11
  store { i64, [2 x i64] } %t12, ptr %l4
  %t14 = load { i64, [2 x i64] }, ptr %l4
  %t16 = extractvalue { i64, [2 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 0
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t20 = getelementptr { i64 }, ptr %t19, i32 0, i32 0
  %t21 = load i64, ptr %t20
  store i64 %t21, ptr %l5, !tbaa !24
  br label %bb4
bb3:
  br label %bb8
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 3
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l22, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l24, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t40, i64 %t41)
  store i64 %t44, ptr %l28
  br label %bb5
bb5:
  %t45 = load ptr, ptr %l24, !tbaa !29
  %t46 = load i64, ptr %l28, !tbaa !24
  %t47 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s1, ptr %t45, i64 %t46)
  store ptr %t47, ptr %l29
  br label %bb6
bb6:
  %t48 = load ptr, ptr %l29, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Func", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %t50, !tbaa !23
  %t52 = load ptr, ptr %l22, !tbaa !29
  %t54 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s1, ptr %t52, i32 %t51)
  store { i64, ptr } %t54, ptr %l32
  br label %bb7
bb7:
  %t55 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 1
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  call void @olang_textcopy(ptr %t58, ptr %t56, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t62, ptr %l15, !tbaa !27
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_1659d5e4bc32803f_da709a3eab248d73)
  unreachable
bb13:
  %t64 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l36, !tbaa !24
  %t66 = load i64, ptr %l36, !tbaa !24
  %t67 = mul i64 %t66, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l37, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = load i64, ptr %l36, !tbaa !24
  %t76 = mul i64 %t75, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t72, ptr %t74, i64 %t76, i1 false)
  %t77 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t77, ptr %l6, !tbaa !27
  %t78 = load { i64, [2 x i64] }, ptr %l2
  %t80 = extractvalue { i64, [2 x i64] } %t78, 0
  %t81 = icmp eq i64 %t80, 3
  br i1 %t81, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t83, ptr %l38, !tbaa !27
  br label %bb34
bb17:
  %t85 = load { i64, [2 x i64] }, ptr %l2
  %t87 = extractvalue { i64, [2 x i64] } %t85, 0
  %t88 = icmp eq i64 %t87, 1
  br i1 %t88, label %bb18, label %bb19
bb18:
  %t90 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t91 = getelementptr { i32 }, ptr %t90, i32 0, i32 0
  %t92 = load i32, ptr %t91
  store i32 %t92, ptr %l7, !tbaa !23
  br label %bb20
bb19:
  br label %bb24
bb20:
  %t94 = load i32, ptr %l7, !tbaa !23
  %t96 = icmp eq i32 %t94, 0
  br i1 %t96, label %bb21, label %bb22
bb21:
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 1
  %t101 = extractvalue { i64, ptr } %t98, 0
  %t102 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t105 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t104)
  call void @olang_textcopy(ptr %t105, ptr %t100, i64 %t101)
  %t106 = getelementptr i8, ptr %t105, i64 %t101
  call void @olang_textcopy(ptr %t106, ptr %t102, i64 %t103)
  %t107 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t105, 1
  store { i64, ptr } %t108, ptr %l48, !tbaa !27
  br label %bb23
bb22:
  %t110 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t111 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t114 = extractvalue { i64, ptr } %t110, 1
  %t115 = extractvalue { i64, ptr } %t110, 0
  %t116 = add i64 %t112, %t115
  %t117 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t116)
  call void @olang_textcopy(ptr %t117, ptr %t111, i64 %t112)
  %t118 = getelementptr i8, ptr %t117, i64 %t112
  call void @olang_textcopy(ptr %t118, ptr %t114, i64 %t115)
  %t119 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t117, 1
  store { i64, ptr } %t120, ptr %l48, !tbaa !27
  br label %bb23
bb23:
  %t122 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t122, ptr %l38, !tbaa !27
  br label %bb34
bb24:
  %t123 = load { i64, [2 x i64] }, ptr %l2
  %t125 = extractvalue { i64, [2 x i64] } %t123, 0
  %t126 = icmp eq i64 %t125, 2
  br i1 %t126, label %bb25, label %bb26
bb25:
  %t128 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t129 = getelementptr { i64 }, ptr %t128, i32 0, i32 0
  %t130 = load i64, ptr %t129
  store i64 %t130, ptr %l8, !tbaa !24
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l3, !tbaa !29
  %t134 = load i64, ptr %l8, !tbaa !24
  %t138 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evarScopeName(ptr %v0, ptr %v0, ptr %v1, ptr %t132, ptr %t133, i64 %t134)
  store { i64, ptr } %t138, ptr %l59
  br label %bb28
bb28:
  %t139 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t139, ptr %l38, !tbaa !27
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t140 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t140, ptr %l38, !tbaa !27
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_774db167a3bb8d3e_7a083a08915298f2)
  unreachable
bb34:
  %t142 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  store i64 %t143, ptr %l62, !tbaa !24
  %t144 = load i64, ptr %l62, !tbaa !24
  %t145 = mul i64 %t144, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l63, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = load i64, ptr %l62, !tbaa !24
  %t154 = mul i64 %t153, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t150, ptr %t152, i64 %t154, i1 false)
  %t155 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t155, ptr %l38, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t156 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t156, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, i1 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v0, ptr %t6, i32 %a1)
  store { i64, ptr } %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t11, ptr %l5, !tbaa !27
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t18 = icmp slt i64 %t12, %t15
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t20, ptr %l16, !tbaa !27
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i64, ptr %t24, i64 %t21
  %t26 = load i64, ptr %t25, !tbaa !34
  %t28 = icmp ne i64 %t26, 0
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb4
bb4:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/load:Loader", ptr %t37, i32 0, i32 3
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t41, ptr %l24, !tbaa !27
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i64, ptr %t45, i64 %t42
  %t47 = load i64, ptr %t46, !tbaa !34
  %t49 = trunc i64 %t47 to i32
  %t53 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v2, ptr %t40, i32 %t49)
  store { i64, ptr } %t53, ptr %l29
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t54 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t54, ptr %l30, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  store i64 %t56, ptr %l31, !tbaa !24
  %t57 = load i64, ptr %l31, !tbaa !24
  %t58 = mul i64 %t57, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l32, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = load i64, ptr %l31, !tbaa !24
  %t67 = mul i64 %t66, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %t65, i64 %t67, i1 false)
  %t68 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t68, ptr %l30, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb8:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i64, ptr %l4, !tbaa !24
  %t78 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyParamName(ptr %v0, ptr %v1, ptr %v2, ptr %t70, ptr %a2, i1 %a3, i64 %t73)
  store { i64, ptr } %t78, ptr %l37
  br label %bb9
bb9:
  %t79 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i1
  %l42 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca i1
  %l67 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l87 = alloca i1
  %l97 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca i1
  %l119 = alloca i1
  %l123 = alloca i1
  %l131 = alloca ptr
  %l146 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l167 = alloca ptr
  %l168 = alloca i1
  %l176 = alloca i64
  %l181 = alloca ptr
  %l185 = alloca i1
  %l187 = alloca i1
  %l188 = alloca i1
  %l193 = alloca { i64, [2 x i64] }
  %l194 = alloca ptr
  %l195 = alloca ptr
  %l200 = alloca { i64, [2 x i64] }
  %l202 = alloca { i64, [2 x i64] }
  %l204 = alloca i1
  %l215 = alloca ptr
  %l219 = alloca i1
  %l220 = alloca ptr
  %l223 = alloca i64
  %l224 = alloca i1
  %l230 = alloca i64
  %l238 = alloca i64
  %l244 = alloca i1
  %l246 = alloca ptr
  %l250 = alloca i1
  %l251 = alloca ptr
  %l255 = alloca ptr
  %l257 = alloca i1
  %l259 = alloca ptr
  %l269 = alloca ptr
  %l271 = alloca i1
  %l272 = alloca ptr
  %l273 = alloca i64
  %l274 = alloca { i64, [2 x i64] }
  %l278 = alloca i1
  %l281 = alloca i1
  %l282 = alloca i1
  %l285 = alloca i1
  %s0 = alloca %olang.scope
  %s25 = alloca %olang.scope
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
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %t2)
  store ptr %t6, ptr %l30
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l30, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t8, ptr %l31
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l31, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  store ptr %t10, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t11 = load ptr, ptr %l32, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l32, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 11
  store i1 %t17, ptr %l33, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l33, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l4, !tbaa !29
  br label %bb7
bb6:
  br label %bb16
bb7:
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Cond", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l42, !tbaa !29
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Cond", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb10, label %bb11
bb9:
  br label %bb14
bb10:
  call void @__olang_check_failed(ptr @olang_loc_fba7553b6c5e0ea_50fdebea86f99ab6)
  unreachable
bb11:
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Cond", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load { i64, [2 x i64] }, ptr %l2
  %t47 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %s0, ptr %t47, ptr %t45, { i64, [2 x i64] } %t46)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Cond", ptr %t51, i32 0, i32 2
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %s0, ptr %t50, ptr %t54, { i64, [2 x i64] } %t55)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  %t59 = load ptr, ptr %l3, !tbaa !29
  store ptr %t59, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t60 = load ptr, ptr %l53, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t63 = load ptr, ptr %l53, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 18}
  %t66 = icmp eq i64 %t64, 13
  store i1 %t66, ptr %l54, !tbaa !21
  br label %bb18
bb18:
  %t67 = load i1, ptr %l54, !tbaa !21
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t68 = load ptr, ptr %l3, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l5, !tbaa !29
  br label %bb21
bb20:
  br label %bb51
bb21:
  %t74 = load ptr, ptr %l5, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Match", ptr %t74, i32 0, i32 1
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  store i64 %t81, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t83 = load i64, ptr %l7, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb23, label %bb24
bb23:
  br label %bb34
bb24:
  br label %bb25
bb25:
  %t91 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t91, ptr %l67, !tbaa !27
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 %t92
  %t97 = load ptr, ptr %t96, !tbaa !39
  store ptr %t97, ptr %l9, !tbaa !29
  %t99 = load ptr, ptr %l9, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Arm", ptr %t99, i32 0, i32 4
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb26, label %bb27
bb26:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l74, !tbaa !29
  %t109 = load ptr, ptr %l9, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Arm", ptr %t109, i32 0, i32 4
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = icmp eq ptr %t112, null
  br i1 %t114, label %bb28, label %bb29
bb27:
  br label %bb32
bb28:
  call void @__olang_check_failed(ptr @olang_loc_79bebea62b9e1cf1_163bbb4583e74a1d)
  unreachable
bb29:
  br label %bb30
bb30:
  %t116 = load ptr, ptr %l9, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Arm", ptr %t116, i32 0, i32 4
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t120 = load { i64, [2 x i64] }, ptr %l2
  %t121 = load ptr, ptr %l74, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %s0, ptr %t121, ptr %t119, { i64, [2 x i64] } %t120)
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t124 = load i64, ptr %l7, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l7, !tbaa !24
  br label %bb22
bb34:
  %t128 = load ptr, ptr %l5, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Match", ptr %t128, i32 0, i32 2
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = icmp eq ptr %t131, null
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb35, label %bb36
bb35:
  %t137 = load ptr, ptr %l5, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Match", ptr %t137, i32 0, i32 2
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = icmp eq ptr %t140, null
  br i1 %t142, label %bb37, label %bb38
bb36:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb40
bb37:
  call void @__olang_check_failed(ptr @olang_loc_d42b6d232bae90fc_92457687da3f2548)
  unreachable
bb38:
  br label %bb39
bb39:
  %t144 = load ptr, ptr %l5, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Match", ptr %t144, i32 0, i32 2
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Arm", ptr %t147, i32 0, i32 4
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = icmp eq ptr %t151, null
  %t155 = xor i1 %t153, true
  store i1 %t155, ptr %l87, !tbaa !21
  br label %bb40
bb40:
  %t157 = load i1, ptr %l87, !tbaa !21
  br i1 %t157, label %bb41, label %bb42
bb41:
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l97, !tbaa !29
  %t159 = load ptr, ptr %l5, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Match", ptr %t159, i32 0, i32 2
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = icmp eq ptr %t162, null
  br i1 %t164, label %bb43, label %bb44
bb42:
  br label %bb50
bb43:
  call void @__olang_check_failed(ptr @olang_loc_d42b6d232bae90fc_92457687da3f2548)
  unreachable
bb44:
  br label %bb45
bb45:
  %t166 = load ptr, ptr %l5, !tbaa !29
  %t168 = getelementptr %"compiler/typed:Match", ptr %t166, i32 0, i32 2
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Arm", ptr %t169, i32 0, i32 4
  %t173 = load ptr, ptr %t172, !tbaa !29
  store ptr %t173, ptr %l10, !tbaa !29
  %t175 = load ptr, ptr %l10, !tbaa !29
  %t177 = icmp eq ptr %t175, null
  br i1 %t177, label %bb46, label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_d42b6d232bae90fc_92457687da3f2548)
  unreachable
bb47:
  br label %bb48
bb48:
  %t179 = load ptr, ptr %l10, !tbaa !29
  %t180 = load { i64, [2 x i64] }, ptr %l2
  %t181 = load ptr, ptr %l97, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %s0, ptr %t181, ptr %t179, { i64, [2 x i64] } %t180)
  br label %bb49
bb49:
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb51:
  %t184 = load ptr, ptr %l3, !tbaa !29
  store ptr %t184, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t185 = load ptr, ptr %l109, !tbaa !29
  %t186 = icmp ne ptr %t185, null
  br i1 %t186, label %bb52, label %bb53
bb52:
  %t188 = load ptr, ptr %l109, !tbaa !29
  %t189 = load i64, ptr %t188, !range !{i64 0, i64 18}
  %t191 = icmp eq i64 %t189, 14
  store i1 %t191, ptr %l110, !tbaa !21
  br label %bb53
bb53:
  %t192 = load i1, ptr %l110, !tbaa !21
  br i1 %t192, label %bb54, label %bb55
bb54:
  %t193 = load ptr, ptr %l3, !tbaa !29
  %t195 = getelementptr { i64, [5 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t195, i32 0, i32 2
  %t197 = load ptr, ptr %t196
  store ptr %t197, ptr %l11, !tbaa !29
  br label %bb56
bb55:
  br label %bb85
bb56:
  %t199 = load ptr, ptr %l11, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Try", ptr %t199, i32 0, i32 0
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = icmp eq ptr %t202, null
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb57, label %bb58
bb57:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load ptr, ptr %l11, !tbaa !29
  %t211 = getelementptr %"compiler/typed:Try", ptr %t209, i32 0, i32 0
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t215 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %s0, ptr %t208, ptr %t212)
  store i1 %t215, ptr %l123
  br label %bb59
bb58:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb60
bb59:
  %t216 = load i1, ptr %l123, !tbaa !21
  store i1 %t216, ptr %l119, !tbaa !21
  br label %bb60
bb60:
  %t217 = load i1, ptr %l119, !tbaa !21
  br i1 %t217, label %bb61, label %bb62
bb61:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load ptr, ptr %l3, !tbaa !29
  %t220 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %s0, ptr %t218, ptr %t219, { i64, [2 x i64] } %t220)
  br label %bb63
bb62:
  %t224 = load ptr, ptr %l11, !tbaa !29
  %t226 = getelementptr %"compiler/typed:Try", ptr %t224, i32 0, i32 0
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = icmp eq ptr %t227, null
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb64, label %bb65
bb63:
  br label %bb71
bb64:
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l131, !tbaa !29
  %t234 = load ptr, ptr %l11, !tbaa !29
  %t236 = getelementptr %"compiler/typed:Try", ptr %t234, i32 0, i32 0
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = icmp eq ptr %t237, null
  br i1 %t239, label %bb66, label %bb67
bb65:
  br label %bb70
bb66:
  call void @__olang_check_failed(ptr @olang_loc_4cca97e9315dc06b_ef98c8592f9f4967)
  unreachable
bb67:
  br label %bb68
bb68:
  %t241 = load ptr, ptr %l11, !tbaa !29
  %t243 = getelementptr %"compiler/typed:Try", ptr %t241, i32 0, i32 0
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t245 = load { i64, [2 x i64] }, ptr %l2
  %t246 = load ptr, ptr %l131, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %s0, ptr %t246, ptr %t244, { i64, [2 x i64] } %t245)
  br label %bb69
bb69:
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t249 = load ptr, ptr %l11, !tbaa !29
  %t251 = getelementptr %"compiler/typed:Try", ptr %t249, i32 0, i32 1
  %t252 = load { i64, ptr }, ptr %t251, !tbaa !27
  store { i64, ptr } %t252, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t254 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t254, 0
  store i64 %t256, ptr %l14, !tbaa !24
  br label %bb72
bb72:
  %t258 = load i64, ptr %l13, !tbaa !24
  %t259 = load i64, ptr %l14, !tbaa !24
  %t262 = icmp slt i64 %t258, %t259
  %t264 = xor i1 %t262, true
  br i1 %t264, label %bb73, label %bb74
bb73:
  br label %bb84
bb74:
  br label %bb75
bb75:
  %t266 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t266, ptr %l146, !tbaa !27
  %t267 = load i64, ptr %l13, !tbaa !24
  %t269 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr ptr, ptr %t270, i64 %t267
  %t272 = load ptr, ptr %t271, !tbaa !39
  %t276 = getelementptr %"compiler/typed:Clause", ptr %t272, i32 0, i32 4
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  store { i64, ptr } %t277, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t279 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t279, 0
  store i64 %t281, ptr %l18, !tbaa !24
  br label %bb76
bb76:
  %t283 = load i64, ptr %l17, !tbaa !24
  %t284 = load i64, ptr %l18, !tbaa !24
  %t287 = icmp slt i64 %t283, %t284
  %t289 = xor i1 %t287, true
  br i1 %t289, label %bb77, label %bb78
bb77:
  br label %bb82
bb78:
  br label %bb79
bb79:
  %t291 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t291, ptr %l157, !tbaa !27
  %t292 = load i64, ptr %l17, !tbaa !24
  %t294 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !27
  %t296 = getelementptr ptr, ptr %t295, i64 %t292
  %t297 = load ptr, ptr %t296, !tbaa !39
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %s0, ptr %t299, ptr %t297, { i64, [2 x i64] } %t301)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t305 = load i64, ptr %l17, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l17, !tbaa !24
  br label %bb76
bb82:
  br label %bb83
bb83:
  %t309 = load i64, ptr %l13, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l13, !tbaa !24
  br label %bb72
bb84:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb85:
  %t313 = load ptr, ptr %l3, !tbaa !29
  store ptr %t313, ptr %l167, !tbaa !29
  store i1 false, ptr %l168, !tbaa !21
  %t314 = load ptr, ptr %l167, !tbaa !29
  %t315 = icmp ne ptr %t314, null
  br i1 %t315, label %bb86, label %bb87
bb86:
  %t317 = load ptr, ptr %l167, !tbaa !29
  %t318 = load i64, ptr %t317, !range !{i64 0, i64 18}
  %t320 = icmp eq i64 %t318, 5
  store i1 %t320, ptr %l168, !tbaa !21
  br label %bb87
bb87:
  %t321 = load i1, ptr %l168, !tbaa !21
  br i1 %t321, label %bb88, label %bb89
bb88:
  %t322 = load ptr, ptr %l3, !tbaa !29
  %t324 = getelementptr { i64, [5 x i64] }, ptr %t322, i32 0, i32 1
  %t325 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t324, i32 0, i32 2
  %t326 = load ptr, ptr %t325
  store ptr %t326, ptr %l20, !tbaa !29
  br label %bb90
bb89:
  br label %bb112
bb90:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load ptr, ptr %l20, !tbaa !29
  %t331 = getelementptr %"compiler/typed:Promote", ptr %t329, i32 0, i32 0
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t335 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %s0, ptr %t328, ptr %t332)
  store i64 %t335, ptr %l176
  br label %bb91
bb91:
  %t336 = load i64, ptr %l176, !tbaa !24
  %t337 = icmp slt i64 %t336, 0
  br i1 %t337, label %bb92, label %bb93
bb92:
  %t339 = load ptr, ptr %l20, !tbaa !29
  %t341 = getelementptr %"compiler/typed:Promote", ptr %t339, i32 0, i32 0
  %t342 = load ptr, ptr %t341, !tbaa !29
  %t345 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s0, ptr %s0, ptr %t342)
  store ptr %t345, ptr %l181
  br label %bb94
bb93:
  br label %bb111
bb94:
  %t346 = load ptr, ptr %l181, !tbaa !29
  store ptr %t346, ptr %l21, !tbaa !29
  %t347 = load ptr, ptr %l21, !tbaa !29
  %t349 = icmp eq ptr %t347, null
  %t351 = xor i1 %t349, true
  br i1 %t351, label %bb95, label %bb96
bb95:
  %t353 = load { i64, [2 x i64] }, ptr %l2
  %t355 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t353)
  store i1 %t355, ptr %l187
  br label %bb97
bb96:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb98
bb97:
  %t356 = load i1, ptr %l187, !tbaa !21
  store i1 %t356, ptr %l185, !tbaa !21
  br label %bb98
bb98:
  %t357 = load i1, ptr %l185, !tbaa !21
  br i1 %t357, label %bb99, label %bb100
bb99:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load ptr, ptr %l21, !tbaa !29
  %t361 = getelementptr %"compiler/typed:Call", ptr %t359, i32 0, i32 2
  %t362 = load i32, ptr %t361, !tbaa !23
  %t364 = sext i32 %t362 to i64
  %t367 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t358, i64 %t364)
  store { i64, [2 x i64] } %t367, ptr %l193
  br label %bb101
bb100:
  store i1 false, ptr %l188, !tbaa !21
  br label %bb105
bb101:
  store ptr %l193, ptr %l194, !tbaa !29
  %t368 = load ptr, ptr %l0, !tbaa !29
  store ptr %t368, ptr %l195, !tbaa !29
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t370 = load ptr, ptr %l21, !tbaa !29
  %t372 = getelementptr %"compiler/typed:Call", ptr %t370, i32 0, i32 2
  %t373 = load i32, ptr %t372, !tbaa !23
  %t375 = sext i32 %t373 to i64
  %t378 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t369, i64 %t375)
  store { i64, [2 x i64] } %t378, ptr %l200
  br label %bb102
bb102:
  %t379 = load { i64, [2 x i64] }, ptr %l2
  %t380 = load ptr, ptr %l195, !tbaa !29
  %t381 = load { i64, [2 x i64] }, ptr %l200
  %t383 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t380, { i64, [2 x i64] } %t381, { i64, [2 x i64] } %t379)
  store { i64, [2 x i64] } %t383, ptr %l202
  br label %bb103
bb103:
  %t384 = load ptr, ptr %l194, !tbaa !29
  %t386 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %t384, ptr %l202)
  store i1 %t386, ptr %l204
  br label %bb104
bb104:
  %t387 = load i1, ptr %l204, !tbaa !21
  store i1 %t387, ptr %l188, !tbaa !21
  br label %bb105
bb105:
  %t388 = load i1, ptr %l188, !tbaa !21
  br i1 %t388, label %bb106, label %bb107
bb106:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t390 = load ptr, ptr %l20, !tbaa !29
  %t392 = getelementptr %"compiler/typed:Promote", ptr %t390, i32 0, i32 1
  %t393 = load i32, ptr %t392, !tbaa !23
  %t395 = sext i32 %t393 to i64
  %t396 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %t389, i64 %t395, { i64, [2 x i64] } %t396)
  br label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb109
bb109:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load ptr, ptr %l20, !tbaa !29
  %t403 = getelementptr %"compiler/typed:Promote", ptr %t401, i32 0, i32 0
  %t404 = load ptr, ptr %t403, !tbaa !29
  %t405 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %s0, ptr %t400, ptr %t404, { i64, [2 x i64] } %t405)
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb111:
  br label %bb117
bb112:
  br i1 true, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb117
bb116:
  call void @__olang_check_failed(ptr @olang_loc_6bff29c0022268a5_acca8b13a06d359)
  unreachable
bb117:
  %t409 = load ptr, ptr %l3, !tbaa !29
  %t411 = call ptr @compiler_2fscope_2eadapterRecv(ptr %s0, ptr %s0, ptr %t409)
  store ptr %t411, ptr %l215
  br label %bb118
bb118:
  %t412 = load ptr, ptr %l215, !tbaa !29
  store ptr %t412, ptr %l22, !tbaa !29
  %t413 = load ptr, ptr %l22, !tbaa !29
  %t415 = icmp eq ptr %t413, null
  %t417 = xor i1 %t415, true
  br i1 %t417, label %bb119, label %bb120
bb119:
  %t419 = load ptr, ptr %l0, !tbaa !29
  store ptr %t419, ptr %l220, !tbaa !29
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t421 = load ptr, ptr %l22, !tbaa !29
  %t424 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %s0, ptr %t420, ptr %t421)
  store i64 %t424, ptr %l223
  br label %bb121
bb120:
  store i1 false, ptr %l219, !tbaa !21
  br label %bb123
bb121:
  %t425 = load ptr, ptr %l220, !tbaa !29
  %t426 = load i64, ptr %l223, !tbaa !24
  %t427 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOwn(ptr %v0, ptr %t425, i64 %t426)
  store i1 %t427, ptr %l224
  br label %bb122
bb122:
  %t428 = load i1, ptr %l224, !tbaa !21
  store i1 %t428, ptr %l219, !tbaa !21
  br label %bb123
bb123:
  %t429 = load i1, ptr %l219, !tbaa !21
  br i1 %t429, label %bb124, label %bb125
bb124:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load ptr, ptr %l22, !tbaa !29
  %t432 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %s0, ptr %t430, ptr %t431, { i64, [2 x i64] } %t432)
  br label %bb126
bb125:
  br label %bb127
bb126:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb127:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load ptr, ptr %l3, !tbaa !29
  %t440 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldTemp(ptr %v0, ptr %s0, ptr %t436, ptr %t437)
  store i64 %t440, ptr %l230
  br label %bb128
bb128:
  %t441 = load i64, ptr %l230, !tbaa !24
  store i64 %t441, ptr %l23, !tbaa !24
  %t442 = load i64, ptr %l23, !tbaa !24
  %t444 = icmp sge i64 %t442, 0
  br i1 %t444, label %bb129, label %bb130
bb129:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = load i64, ptr %l23, !tbaa !24
  %t448 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %t446, i64 %t447, { i64, [2 x i64] } %t448)
  br label %bb131
bb130:
  br label %bb132
bb131:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb132:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load ptr, ptr %l1, !tbaa !29
  %t456 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %t452, ptr %t453)
  store i64 %t456, ptr %l238
  br label %bb133
bb133:
  %t457 = load i64, ptr %l238, !tbaa !24
  store i64 %t457, ptr %l24, !tbaa !24
  %t458 = load i64, ptr %l24, !tbaa !24
  %t460 = icmp slt i64 %t458, 0
  br i1 %t460, label %bb134, label %bb135
bb134:
  store %olang.scope zeroinitializer, ptr %s25
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t463 = load ptr, ptr %l3, !tbaa !29
  %t464 = load { i64, [2 x i64] }, ptr %l2
  %t468 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeView(ptr %v0, ptr %s0, ptr %t462, ptr %t463, { i64, [2 x i64] } %t464)
  store i1 %t468, ptr %l244
  br label %bb136
bb135:
  br label %bb155
bb136:
  %t469 = load i1, ptr %l244, !tbaa !21
  br i1 %t469, label %bb137, label %bb138
bb137:
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb138:
  br label %bb139
bb139:
  %t470 = load ptr, ptr %l3, !tbaa !29
  %t472 = call ptr @compiler_2fscope_2ecopiedView(ptr %s0, ptr %s0, ptr %t470)
  store ptr %t472, ptr %l246
  br label %bb140
bb140:
  %t473 = load ptr, ptr %l246, !tbaa !29
  store ptr %t473, ptr %l25, !tbaa !29
  %t474 = load ptr, ptr %l25, !tbaa !29
  %t476 = icmp eq ptr %t474, null
  %t478 = xor i1 %t476, true
  br i1 %t478, label %bb141, label %bb142
bb141:
  %t480 = load ptr, ptr %l0, !tbaa !29
  store ptr %t480, ptr %l251, !tbaa !29
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load ptr, ptr %l25, !tbaa !29
  %t486 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %s0, ptr %s25, ptr %t481, ptr %t482)
  store ptr %t486, ptr %l255
  br label %bb143
bb142:
  store i1 false, ptr %l250, !tbaa !21
  br label %bb145
bb143:
  %t487 = load { i64, [2 x i64] }, ptr %l2
  %t488 = load ptr, ptr %l251, !tbaa !29
  %t489 = load ptr, ptr %l255, !tbaa !29
  %t491 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeView(ptr %v0, ptr %s25, ptr %t488, ptr %t489, { i64, [2 x i64] } %t487)
  store i1 %t491, ptr %l257
  br label %bb144
bb144:
  %t492 = load i1, ptr %l257, !tbaa !21
  store i1 %t492, ptr %l250, !tbaa !21
  br label %bb145
bb145:
  %t493 = load i1, ptr %l250, !tbaa !21
  br i1 %t493, label %bb146, label %bb147
bb146:
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb147:
  br label %bb148
bb148:
  %t494 = load ptr, ptr %l3, !tbaa !29
  %t496 = call ptr @compiler_2fscope_2eprojectedCall(ptr %s0, ptr %s0, ptr %t494)
  store ptr %t496, ptr %l259
  br label %bb149
bb149:
  %t497 = load ptr, ptr %l259, !tbaa !29
  store ptr %t497, ptr %l26, !tbaa !29
  %t498 = load ptr, ptr %l26, !tbaa !29
  %t500 = icmp eq ptr %t498, null
  %t502 = xor i1 %t500, true
  br i1 %t502, label %bb150, label %bb151
bb150:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t505 = load ptr, ptr %l26, !tbaa !29
  %t506 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %s0, ptr %t504, ptr %t505, { i64, [2 x i64] } %t506)
  br label %bb152
bb151:
  br label %bb153
bb152:
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb153:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load ptr, ptr %l3, !tbaa !29
  %t512 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %s0, ptr %t510, ptr %t511, { i64, [2 x i64] } %t512)
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb155:
  %t516 = load ptr, ptr %l0, !tbaa !29
  store ptr %t516, ptr %l269, !tbaa !29
  %t517 = load ptr, ptr %l3, !tbaa !29
  %t519 = call i1 @compiler_2fscope_2epartRead(ptr %s0, ptr %t517)
  store i1 %t519, ptr %l271
  br label %bb156
bb156:
  %t520 = load i1, ptr %l271, !tbaa !21
  %t521 = load ptr, ptr %l269, !tbaa !29
  %t522 = getelementptr %"compiler/scope:Scoper", ptr %t521, i32 0, i32 157
  store i1 %t520, ptr %t522, !tbaa !21
  %t523 = load ptr, ptr %l0, !tbaa !29
  store ptr %t523, ptr %l272, !tbaa !29
  %t524 = load i64, ptr %l24, !tbaa !24
  store i64 %t524, ptr %l273, !tbaa !24
  %t525 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t525, ptr %l274
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t528 = getelementptr %"compiler/scope:Scoper", ptr %t526, i32 0, i32 206
  %t529 = load i1, ptr %t528, !tbaa !21
  %t531 = xor i1 %t529, true
  br i1 %t531, label %bb157, label %bb158
bb157:
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t534 = load ptr, ptr %l1, !tbaa !29
  %t537 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepsStorage(ptr %v0, ptr %v1, ptr %t533, ptr %t534)
  store i1 %t537, ptr %l281
  br label %bb159
bb158:
  store i1 false, ptr %l278, !tbaa !21
  br label %bb164
bb159:
  %t538 = load i1, ptr %l281, !tbaa !21
  br i1 %t538, label %bb160, label %bb161
bb160:
  store i1 true, ptr %l282, !tbaa !21
  br label %bb163
bb161:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t540 = load ptr, ptr %l1, !tbaa !29
  %t543 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertsStorage(ptr %v0, ptr %v1, ptr %t539, ptr %t540)
  store i1 %t543, ptr %l285
  br label %bb162
bb162:
  %t544 = load i1, ptr %l285, !tbaa !21
  store i1 %t544, ptr %l282, !tbaa !21
  br label %bb163
bb163:
  %t545 = load i1, ptr %l282, !tbaa !21
  store i1 %t545, ptr %l278, !tbaa !21
  br label %bb164
bb164:
  %t546 = load ptr, ptr %l272, !tbaa !29
  %t547 = load i64, ptr %l273, !tbaa !24
  %t548 = load { i64, [2 x i64] }, ptr %l274
  %t549 = load i1, ptr %l278, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeLocal(ptr %v0, ptr %t546, i64 %t547, { i64, [2 x i64] } %t548, i1 %t549)
  br label %bb165
bb165:
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t552 = getelementptr %"compiler/scope:Scoper", ptr %t550, i32 0, i32 157
  store i1 false, ptr %t552, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereassigned(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 15
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 27
  %t7 = load i64, ptr %t6, !tbaa !24
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t7)
  store i64 %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load i64, ptr %l12, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 15
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 27
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
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 16
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

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i1
  %l17 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca i1
  %l50 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca i1
  %l62 = alloca i64
  %rv = alloca i64
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
  br label %bb10
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 46
  %t19 = load i32, ptr %l2, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t18, i64 %t21)
  %t25 = extractvalue { i32, i64 } %t24, 1
  %t26 = extractvalue { i32, i64 } %t24, 0
  store i32 %t26, ptr %l23
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb7, label %ok.28, !prof !99
ok.28:
  store i64 %t25, ptr %l22
  br label %bb6
bb6:
  %t29 = load i64, ptr %l22, !tbaa !24
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l17, !tbaa !24
  br label %bb9
bb9:
  %t30 = load i64, ptr %l17, !tbaa !24
  store i64 %t30, ptr %rv
  br label %ret
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t32 = load ptr, ptr %l24, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l24, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l25, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb23
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t51 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t46, ptr %t47)
  store ptr %t51, ptr %l33
  br label %bb16
bb16:
  %t52 = load ptr, ptr %l33, !tbaa !29
  store ptr %t52, ptr %l4, !tbaa !29
  %t53 = load ptr, ptr %l4, !tbaa !29
  store ptr %t53, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t54 = load ptr, ptr %l34, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t57 = load ptr, ptr %l34, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 2
  store i1 %t60, ptr %l35, !tbaa !21
  br label %bb18
bb18:
  %t61 = load i1, ptr %l35, !tbaa !21
  %t62 = xor i1 %t61, true
  br i1 %t62, label %bb19, label %bb20
bb19:
  store i64 -1, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t67, i32 0, i32 0
  %t69 = load %"compiler/source:Span", ptr %t68
  store %"compiler/source:Span" %t69, ptr %l5
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l6, !tbaa !23
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t79 = getelementptr { i64, [5 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t79, i32 0, i32 2
  %t81 = load ptr, ptr %t80
  %t83 = load ptr, ptr %l4, !tbaa !29
  %t85 = getelementptr { i64, [5 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t85, i32 0, i32 3
  %t87 = load i32, ptr %t86
  store i32 %t87, ptr %l8, !tbaa !23
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t93 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecThrough(ptr %v0, ptr %v1, ptr %t89, ptr %t81)
  store i64 %t93, ptr %l50
  br label %bb22
bb22:
  %t94 = load i64, ptr %l50, !tbaa !24
  store i64 %t94, ptr %rv
  br label %ret
bb23:
  %t95 = load ptr, ptr %l1, !tbaa !29
  store ptr %t95, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t96 = load ptr, ptr %l51, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t99 = load ptr, ptr %l51, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 8}
  %t102 = icmp eq i64 %t100, 3
  store i1 %t102, ptr %l52, !tbaa !21
  br label %bb25
bb25:
  %t103 = load i1, ptr %l52, !tbaa !21
  br i1 %t103, label %bb26, label %bb27
bb26:
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t106, i32 0, i32 2
  %t108 = load ptr, ptr %t107
  store ptr %t108, ptr %l9, !tbaa !29
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t112, i32 0, i32 3
  %t114 = load i64, ptr %t113
  store i64 %t114, ptr %l10, !tbaa !24
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l9, !tbaa !29
  %t118 = load i64, ptr %l10, !tbaa !24
  %t122 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldRec(ptr %v0, ptr %v1, ptr %t116, ptr %t117, i64 %t118)
  store i64 %t122, ptr %l62
  br label %bb29
bb29:
  %t123 = load i64, ptr %l62, !tbaa !24
  store i64 %t123, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i64 -1, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_1f822cf482d6793b_12ec613171e9a28f)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecThrough(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i1
  %l20 = alloca %"compiler/typed:Local"
  %l24 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca i1
  %l42 = alloca i64
  %rv = alloca i64
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 26
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = icmp eq ptr %t19, null
  br i1 %t21, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_9a1b93258b1da84_57bf846225d5f380)
  unreachable
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 26
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Body", ptr %t26, i32 0, i32 7
  %t30 = load i32, ptr %l2, !tbaa !23
  %t32 = sext i32 %t30 to i64
  %t35 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t29, i64 %t32)
  store %"compiler/typed:Local" %t35, ptr %l20
  br label %bb9
bb9:
  %t36 = getelementptr %"compiler/typed:Local", ptr %l20, i32 0, i32 4
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 7}
  %t39 = trunc i64 0 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb10, label %bb11
bb10:
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 46
  %t46 = load i32, ptr %l2, !tbaa !23
  %t48 = sext i32 %t46 to i64
  %t51 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t45, i64 %t48)
  %t52 = extractvalue { i32, i64 } %t51, 1
  %t53 = extractvalue { i32, i64 } %t51, 0
  store i32 %t53, ptr %l30
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb14, label %ok.55, !prof !99
ok.55:
  store i64 %t52, ptr %l29
  br label %bb13
bb13:
  %t56 = load i64, ptr %l29, !tbaa !24
  store i64 %t56, ptr %l24, !tbaa !24
  br label %bb16
bb14:
  br label %bb15
bb15:
  store i64 -1, ptr %l24, !tbaa !24
  br label %bb16
bb16:
  %t57 = load i64, ptr %l24, !tbaa !24
  store i64 %t57, ptr %rv
  br label %ret
bb17:
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t59 = load ptr, ptr %l31, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb18, label %bb19
bb18:
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 8}
  %t65 = icmp eq i64 %t63, 3
  store i1 %t65, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t66 = load i1, ptr %l32, !tbaa !21
  br i1 %t66, label %bb20, label %bb21
bb20:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t69, i32 0, i32 2
  %t71 = load ptr, ptr %t70
  store ptr %t71, ptr %l3, !tbaa !29
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t75, i32 0, i32 3
  %t77 = load i64, ptr %t76
  store i64 %t77, ptr %l4, !tbaa !24
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t81 = load i64, ptr %l4, !tbaa !24
  %t85 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldRec(ptr %v0, ptr %v1, ptr %t79, ptr %t80, i64 %t81)
  store i64 %t85, ptr %l42
  br label %bb23
bb23:
  %t86 = load i64, ptr %l42, !tbaa !24
  store i64 %t86, ptr %rv
  br label %ret
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i64 -1, ptr %rv
  br label %ret
bb28:
  call void @__olang_check_failed(ptr @olang_loc_e9e66f9941e1beea_28122a33a94c6066)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t400 = load i32, ptr %t399, !range !{i32 0, i32 52}
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
  %t408 = load i32, ptr %l27, !range !{i32 0, i32 52}
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erunLength(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l14 = alloca i32
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
  %t13 = trunc i64 19 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t26 = load i32, ptr %l14, !tbaa !23
  %t27 = icmp eq i32 %t26, 0
  store i1 %t27, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l9, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l13 = alloca i32
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l32 = alloca { i64, [2 x i64] }
  %l35 = alloca i1
  %l37 = alloca %"compiler/scope:placeSlot"
  %l42 = alloca { i64, [2 x i64] }
  %l45 = alloca i1
  %l47 = alloca %"compiler/scope:placeSlot"
  %l48 = alloca ptr
  %l49 = alloca i1
  %l52 = alloca { i64, [2 x i64] }
  %l54 = alloca i1
  %l57 = alloca i1
  %l59 = alloca %"compiler/scope:placeSlot"
  %l60 = alloca ptr
  %l61 = alloca i1
  %l69 = alloca i32
  %l75 = alloca i32
  %l78 = alloca i1
  %l81 = alloca i1
  %l85 = alloca { i64, [1 x i64] }
  %l91 = alloca { i64, [2 x i64] }
  %l94 = alloca i1
  %l96 = alloca %"compiler/scope:placeSlot"
  %l99 = alloca { i64, [2 x i64] }
  %l102 = alloca i1
  %l105 = alloca i64
  %l106 = alloca %"compiler/scope:placeSlot"
  %l107 = alloca ptr
  %l108 = alloca i1
  %l116 = alloca { i64, [2 x i64] }
  %l119 = alloca i1
  %l123 = alloca i64
  %l124 = alloca %"compiler/scope:placeSlot"
  %l125 = alloca ptr
  %l126 = alloca i1
  %l134 = alloca { i64, [2 x i64] }
  %l137 = alloca i1
  %l141 = alloca i64
  %l142 = alloca %"compiler/scope:placeSlot"
  %l143 = alloca ptr
  %l144 = alloca i1
  %l153 = alloca %"compiler/scope:Val"
  %l154 = alloca { i64, [2 x i64] }
  %l157 = alloca i1
  %l159 = alloca %"compiler/scope:placeSlot"
  %l160 = alloca ptr
  %l161 = alloca i1
  %l165 = alloca { i64, [2 x i64] }
  %l167 = alloca %"compiler/scope:placeSlot"
  %l168 = alloca ptr
  %l169 = alloca i1
  %l174 = alloca i64
  %l176 = alloca ptr
  %l178 = alloca ptr
  %l181 = alloca i64
  %l183 = alloca ptr
  %l184 = alloca %"compiler/scope:placeSlot"
  %l187 = alloca %"compiler/scope:placeSlot"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca %"compiler/scope:placeSlot"
  %t84 = alloca { i64, [2 x i64] }, align 8
  %t126 = alloca { i64, [1 x i64] }, align 8
  %t303 = alloca { i64, [2 x i64] }, align 8
  %t375 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i32, ptr %l13, !tbaa !23
  store i32 %t4, ptr %l2, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l2, !tbaa !23
  %t9 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l16
  br label %bb2
bb2:
  %t10 = load i1, ptr %l16, !tbaa !21
  store i1 %t10, ptr %l3, !tbaa !21
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t12 = load ptr, ptr %l17, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l17, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 8}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l18, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l18, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t22, i32 0, i32 2
  %t24 = load i32, ptr %t23
  store i32 %t24, ptr %l4, !tbaa !23
  br label %bb7
bb6:
  br label %bb21
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load i1, ptr %l3, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb11
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l27
  br label %bb10
bb10:
  %t33 = load i1, ptr %l27, !tbaa !21
  store i1 %t33, ptr %l24, !tbaa !21
  br label %bb11
bb11:
  %t34 = load i1, ptr %l24, !tbaa !21
  br i1 %t34, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 34
  %t38 = load i32, ptr %l4, !tbaa !23
  %t40 = sext i32 %t38 to i64
  %t43 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t37, i64 %t40)
  store { i64, [2 x i64] } %t43, ptr %l32
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l2, !tbaa !23
  %t48 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enarrowingMatters(ptr %v0, ptr %t44, i32 %t45)
  store i1 %t48, ptr %l35
  br label %bb15
bb15:
  %t49 = load i64, ptr @G_2ecompiler_2fscope_2eFitLocal, !tbaa !24
  %t50 = load { i64, [2 x i64] }, ptr %l32
  %t51 = load i1, ptr %l35, !tbaa !21
  %t53 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s2, { i64, [2 x i64] } %t50, i1 %t51, i64 %t49)
  store %"compiler/scope:placeSlot" %t53, ptr %l37
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  %t54 = load %"compiler/scope:placeSlot", ptr %l37
  store %"compiler/scope:placeSlot" %t54, ptr %rv
  br label %ret
bb17:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 34
  %t58 = load i32, ptr %l4, !tbaa !23
  %t60 = sext i32 %t58 to i64
  %t63 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t57, i64 %t60)
  store { i64, [2 x i64] } %t63, ptr %l42
  br label %bb18
bb18:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l2, !tbaa !23
  %t68 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t68, ptr %l45
  br label %bb19
bb19:
  %t69 = load i64, ptr @G_2ecompiler_2fscope_2eFitValue, !tbaa !24
  %t70 = load { i64, [2 x i64] }, ptr %l42
  %t71 = load i1, ptr %l45, !tbaa !21
  %t73 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s1, { i64, [2 x i64] } %t70, i1 %t71, i64 %t69)
  store %"compiler/scope:placeSlot" %t73, ptr %l47
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  %t74 = load %"compiler/scope:placeSlot", ptr %l47
  store %"compiler/scope:placeSlot" %t74, ptr %rv
  br label %ret
bb21:
  %t75 = load ptr, ptr %l1, !tbaa !29
  store ptr %t75, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t76 = load ptr, ptr %l48, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t79 = load ptr, ptr %l48, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 8}
  %t82 = icmp eq i64 %t80, 1
  store i1 %t82, ptr %l49, !tbaa !21
  br label %bb23
bb23:
  %t83 = load i1, ptr %l49, !tbaa !21
  br i1 %t83, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb32
bb26:
  store %olang.scope zeroinitializer, ptr %s3
  store { i64, [2 x i64] } zeroinitializer, ptr %t84
  %t85 = getelementptr { i64, [2 x i64] }, ptr %t84, i32 0, i32 0
  store i64 3, ptr %t85
  %t86 = load { i64, [2 x i64] }, ptr %t84
  store { i64, [2 x i64] } %t86, ptr %l52
  %t87 = load i1, ptr %l3, !tbaa !21
  br i1 %t87, label %bb27, label %bb28
bb27:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l2, !tbaa !23
  %t93 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t89, i32 %t90)
  store i1 %t93, ptr %l57
  br label %bb29
bb28:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb30
bb29:
  %t94 = load i1, ptr %l57, !tbaa !21
  store i1 %t94, ptr %l54, !tbaa !21
  br label %bb30
bb30:
  %t95 = load i64, ptr @G_2ecompiler_2fscope_2eFitGlobal, !tbaa !24
  %t96 = load { i64, [2 x i64] }, ptr %l52
  %t97 = load i1, ptr %l54, !tbaa !21
  %t99 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s3, { i64, [2 x i64] } %t96, i1 %t97, i64 %t95)
  store %"compiler/scope:placeSlot" %t99, ptr %l59
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s3)
  %t100 = load %"compiler/scope:placeSlot", ptr %l59
  store %"compiler/scope:placeSlot" %t100, ptr %rv
  br label %ret
bb32:
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t102 = load ptr, ptr %l60, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb33, label %bb34
bb33:
  %t105 = load ptr, ptr %l60, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 8}
  %t108 = icmp eq i64 %t106, 3
  store i1 %t108, ptr %l61, !tbaa !21
  br label %bb34
bb34:
  %t109 = load i1, ptr %l61, !tbaa !21
  br i1 %t109, label %bb35, label %bb36
bb35:
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t112, i32 0, i32 2
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l5, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr { i64, [4 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t118, i32 0, i32 3
  %t120 = load i64, ptr %t119
  store i64 %t120, ptr %l6, !tbaa !24
  br label %bb37
bb36:
  br label %bb64
bb37:
  store %olang.scope zeroinitializer, ptr %s4
  %t122 = load ptr, ptr %l5, !tbaa !29
  %t124 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t122)
  store i32 %t124, ptr %l69
  br label %bb38
bb38:
  %t125 = load i32, ptr %l69, !tbaa !23
  store i32 %t125, ptr %l7, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [1 x i64] }, ptr %t126, i32 0, i32 0
  store i64 0, ptr %t127
  %t128 = load { i64, [1 x i64] }, ptr %t126
  store { i64, [1 x i64] } %t128, ptr %l8
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/scope:Scoper", ptr %t130, i32 0, i32 0
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l7, !tbaa !23
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t139, ptr %l75
  br label %bb39
bb39:
  %t140 = load i32, ptr %l75, !range !{i32 0, i32 33}
  %t142 = trunc i64 18 to i32
  %t143 = icmp eq i32 %t140, %t142
  br i1 %t143, label %bb40, label %bb41
bb40:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i32, ptr %l7, !tbaa !23
  %t149 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t145, i32 %t146)
  store i1 %t149, ptr %l81
  br label %bb42
bb41:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb43
bb42:
  %t150 = load i1, ptr %l81, !tbaa !21
  store i1 %t150, ptr %l78, !tbaa !21
  br label %bb43
bb43:
  %t151 = load i1, ptr %l78, !tbaa !21
  br i1 %t151, label %bb44, label %bb45
bb44:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l7, !tbaa !23
  %t154 = load i64, ptr %l6, !tbaa !24
  %t158 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %t152, i32 %t153, i64 %t154)
  store { i64, [1 x i64] } %t158, ptr %l85
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t159 = load { i64, [1 x i64] }, ptr %l85
  store { i64, [1 x i64] } %t159, ptr %l8
  br label %bb47
bb47:
  %t160 = load { i64, [1 x i64] }, ptr %l8
  %t162 = extractvalue { i64, [1 x i64] } %t160, 0
  %t163 = icmp eq i64 %t162, 2
  br i1 %t163, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb54
bb50:
  store %olang.scope zeroinitializer, ptr %s6
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l5, !tbaa !29
  %t167 = load i64, ptr %l6, !tbaa !24
  %t171 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldTerm(ptr %v0, ptr %v1, ptr %t165, ptr %t166, i64 %t167)
  store { i64, [2 x i64] } %t171, ptr %l91
  br label %bb51
bb51:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i32, ptr %l2, !tbaa !23
  %t176 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t172, i32 %t173)
  store i1 %t176, ptr %l94
  br label %bb52
bb52:
  %t177 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  %t178 = load { i64, [2 x i64] }, ptr %l91
  %t179 = load i1, ptr %l94, !tbaa !21
  %t181 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s6, { i64, [2 x i64] } %t178, i1 %t179, i64 %t177)
  store %"compiler/scope:placeSlot" %t181, ptr %l96
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s4)
  %t182 = load %"compiler/scope:placeSlot", ptr %l96
  store %"compiler/scope:placeSlot" %t182, ptr %rv
  br label %ret
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_77e7b6a4b27ab7c9_3da8a98d531788e5)
  unreachable
bb59:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %l5, !tbaa !29
  %t187 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t183, ptr %t184)
  store { i64, [2 x i64] } %t187, ptr %l99
  br label %bb60
bb60:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l2, !tbaa !23
  %t192 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t188, i32 %t189)
  store i1 %t192, ptr %l102
  br label %bb61
bb61:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load ptr, ptr %l5, !tbaa !29
  %t197 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotKind(ptr %v0, ptr %v1, ptr %t193, ptr %t194)
  store i64 %t197, ptr %l105
  br label %bb62
bb62:
  %t198 = load { i64, [2 x i64] }, ptr %l99
  %t199 = load i1, ptr %l102, !tbaa !21
  %t200 = load i64, ptr %l105, !tbaa !24
  %t201 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s4, { i64, [2 x i64] } %t198, i1 %t199, i64 %t200)
  store %"compiler/scope:placeSlot" %t201, ptr %l106
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s4)
  %t202 = load %"compiler/scope:placeSlot", ptr %l106
  store %"compiler/scope:placeSlot" %t202, ptr %rv
  br label %ret
bb64:
  %t203 = load ptr, ptr %l1, !tbaa !29
  store ptr %t203, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t204 = load ptr, ptr %l107, !tbaa !29
  %t205 = icmp ne ptr %t204, null
  br i1 %t205, label %bb65, label %bb66
bb65:
  %t207 = load ptr, ptr %l107, !tbaa !29
  %t208 = load i64, ptr %t207, !range !{i64 0, i64 8}
  %t210 = icmp eq i64 %t208, 4
  store i1 %t210, ptr %l108, !tbaa !21
  br label %bb66
bb66:
  %t211 = load i1, ptr %l108, !tbaa !21
  br i1 %t211, label %bb67, label %bb68
bb67:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr { i64, [4 x i64] }, ptr %t212, i32 0, i32 1
  %t215 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t214, i32 0, i32 2
  %t216 = load ptr, ptr %t215
  store ptr %t216, ptr %l9, !tbaa !29
  br label %bb69
bb68:
  br label %bb74
bb69:
  store %olang.scope zeroinitializer, ptr %s8
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load ptr, ptr %l9, !tbaa !29
  %t221 = getelementptr %"compiler/typed:Elem", ptr %t219, i32 0, i32 0
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t225 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t218, ptr %t222)
  store { i64, [2 x i64] } %t225, ptr %l116
  br label %bb70
bb70:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load i32, ptr %l2, !tbaa !23
  %t230 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t226, i32 %t227)
  store i1 %t230, ptr %l119
  br label %bb71
bb71:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load ptr, ptr %l9, !tbaa !29
  %t234 = getelementptr %"compiler/typed:Elem", ptr %t232, i32 0, i32 0
  %t235 = load ptr, ptr %t234, !tbaa !29
  %t238 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotKind(ptr %v0, ptr %v1, ptr %t231, ptr %t235)
  store i64 %t238, ptr %l123
  br label %bb72
bb72:
  %t239 = load { i64, [2 x i64] }, ptr %l116
  %t240 = load i1, ptr %l119, !tbaa !21
  %t241 = load i64, ptr %l123, !tbaa !24
  %t242 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s8, { i64, [2 x i64] } %t239, i1 %t240, i64 %t241)
  store %"compiler/scope:placeSlot" %t242, ptr %l124
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s8)
  %t243 = load %"compiler/scope:placeSlot", ptr %l124
  store %"compiler/scope:placeSlot" %t243, ptr %rv
  br label %ret
bb74:
  %t244 = load ptr, ptr %l1, !tbaa !29
  store ptr %t244, ptr %l125, !tbaa !29
  store i1 false, ptr %l126, !tbaa !21
  %t245 = load ptr, ptr %l125, !tbaa !29
  %t246 = icmp ne ptr %t245, null
  br i1 %t246, label %bb75, label %bb76
bb75:
  %t248 = load ptr, ptr %l125, !tbaa !29
  %t249 = load i64, ptr %t248, !range !{i64 0, i64 8}
  %t251 = icmp eq i64 %t249, 5
  store i1 %t251, ptr %l126, !tbaa !21
  br label %bb76
bb76:
  %t252 = load i1, ptr %l126, !tbaa !21
  br i1 %t252, label %bb77, label %bb78
bb77:
  %t253 = load ptr, ptr %l1, !tbaa !29
  %t255 = getelementptr { i64, [4 x i64] }, ptr %t253, i32 0, i32 1
  %t256 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t255, i32 0, i32 2
  %t257 = load ptr, ptr %t256
  store ptr %t257, ptr %l10, !tbaa !29
  br label %bb79
bb78:
  br label %bb84
bb79:
  store %olang.scope zeroinitializer, ptr %s9
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load ptr, ptr %l10, !tbaa !29
  %t262 = getelementptr %"compiler/typed:Payload", ptr %t260, i32 0, i32 0
  %t263 = load ptr, ptr %t262, !tbaa !29
  %t266 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t259, ptr %t263)
  store { i64, [2 x i64] } %t266, ptr %l134
  br label %bb80
bb80:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l2, !tbaa !23
  %t271 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t267, i32 %t268)
  store i1 %t271, ptr %l137
  br label %bb81
bb81:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load ptr, ptr %l10, !tbaa !29
  %t275 = getelementptr %"compiler/typed:Payload", ptr %t273, i32 0, i32 0
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t279 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotKind(ptr %v0, ptr %v1, ptr %t272, ptr %t276)
  store i64 %t279, ptr %l141
  br label %bb82
bb82:
  %t280 = load { i64, [2 x i64] }, ptr %l134
  %t281 = load i1, ptr %l137, !tbaa !21
  %t282 = load i64, ptr %l141, !tbaa !24
  %t283 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s9, { i64, [2 x i64] } %t280, i1 %t281, i64 %t282)
  store %"compiler/scope:placeSlot" %t283, ptr %l142
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s9)
  %t284 = load %"compiler/scope:placeSlot", ptr %l142
  store %"compiler/scope:placeSlot" %t284, ptr %rv
  br label %ret
bb84:
  %t285 = load ptr, ptr %l1, !tbaa !29
  store ptr %t285, ptr %l143, !tbaa !29
  store i1 false, ptr %l144, !tbaa !21
  %t286 = load ptr, ptr %l143, !tbaa !29
  %t287 = icmp ne ptr %t286, null
  br i1 %t287, label %bb85, label %bb86
bb85:
  %t289 = load ptr, ptr %l143, !tbaa !29
  %t290 = load i64, ptr %t289, !range !{i64 0, i64 8}
  %t292 = icmp eq i64 %t290, 2
  store i1 %t292, ptr %l144, !tbaa !21
  br label %bb86
bb86:
  %t293 = load i1, ptr %l144, !tbaa !21
  br i1 %t293, label %bb87, label %bb88
bb87:
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = getelementptr { i64, [4 x i64] }, ptr %t294, i32 0, i32 1
  %t297 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t296, i32 0, i32 2
  %t298 = load ptr, ptr %t297
  store ptr %t298, ptr %l11, !tbaa !29
  br label %bb89
bb88:
  br label %bb93
bb89:
  store %olang.scope zeroinitializer, ptr %s10
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load ptr, ptr %l11, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t303
  %t304 = getelementptr { i64, [2 x i64] }, ptr %t303, i32 0, i32 0
  store i64 0, ptr %t304
  %t305 = load { i64, [2 x i64] }, ptr %t303
  %t309 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t300, ptr %t301, { i64, [2 x i64] } %t305)
  store %"compiler/scope:Val" %t309, ptr %l153
  br label %bb90
bb90:
  %t310 = getelementptr %"compiler/scope:Val", ptr %l153, i32 0, i32 1
  %t311 = load { i64, [2 x i64] }, ptr %t310
  store { i64, [2 x i64] } %t311, ptr %l154
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load i32, ptr %l2, !tbaa !23
  %t316 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t312, i32 %t313)
  store i1 %t316, ptr %l157
  br label %bb91
bb91:
  %t317 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  %t318 = load { i64, [2 x i64] }, ptr %l154
  %t319 = load i1, ptr %l157, !tbaa !21
  %t321 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s10, { i64, [2 x i64] } %t318, i1 %t319, i64 %t317)
  store %"compiler/scope:placeSlot" %t321, ptr %l159
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s10)
  %t322 = load %"compiler/scope:placeSlot", ptr %l159
  store %"compiler/scope:placeSlot" %t322, ptr %rv
  br label %ret
bb93:
  %t323 = load ptr, ptr %l1, !tbaa !29
  store ptr %t323, ptr %l160, !tbaa !29
  store i1 false, ptr %l161, !tbaa !21
  %t324 = load ptr, ptr %l160, !tbaa !29
  %t325 = icmp ne ptr %t324, null
  br i1 %t325, label %bb94, label %bb95
bb94:
  %t327 = load ptr, ptr %l160, !tbaa !29
  %t328 = load i64, ptr %t327, !range !{i64 0, i64 8}
  %t330 = icmp eq i64 %t328, 6
  store i1 %t330, ptr %l161, !tbaa !21
  br label %bb95
bb95:
  %t331 = load i1, ptr %l161, !tbaa !21
  br i1 %t331, label %bb96, label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb101
bb98:
  store %olang.scope zeroinitializer, ptr %s11
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t332)
  store { i64, [2 x i64] } %t334, ptr %l165
  br label %bb99
bb99:
  %t335 = load i64, ptr @G_2ecompiler_2fscope_2eFitValue, !tbaa !24
  %t336 = load { i64, [2 x i64] }, ptr %l165
  %t338 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s11, { i64, [2 x i64] } %t336, i1 false, i64 %t335)
  store %"compiler/scope:placeSlot" %t338, ptr %l167
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s11)
  %t339 = load %"compiler/scope:placeSlot", ptr %l167
  store %"compiler/scope:placeSlot" %t339, ptr %rv
  br label %ret
bb101:
  %t340 = load ptr, ptr %l1, !tbaa !29
  store ptr %t340, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t341 = load ptr, ptr %l168, !tbaa !29
  %t342 = icmp ne ptr %t341, null
  br i1 %t342, label %bb102, label %bb103
bb102:
  %t344 = load ptr, ptr %l168, !tbaa !29
  %t345 = load i64, ptr %t344, !range !{i64 0, i64 8}
  %t347 = icmp eq i64 %t345, 7
  store i1 %t347, ptr %l169, !tbaa !21
  br label %bb103
bb103:
  %t348 = load i1, ptr %l169, !tbaa !21
  br i1 %t348, label %bb104, label %bb105
bb104:
  br label %bb106
bb105:
  br label %bb115
bb106:
  store %olang.scope zeroinitializer, ptr %s12
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/scope:Scoper", ptr %t349, i32 0, i32 60
  %t353 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t351)
  store i64 %t353, ptr %l174
  br label %bb107
bb107:
  %t354 = load i64, ptr %l174, !tbaa !24
  %t355 = icmp sge i64 %t354, 2
  br i1 %t355, label %bb108, label %bb109
bb108:
  %t357 = load ptr, ptr %l0, !tbaa !29
  store ptr %t357, ptr %l176, !tbaa !29
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = getelementptr %"compiler/scope:Scoper", ptr %t358, i32 0, i32 60
  store ptr %t360, ptr %l178, !tbaa !29
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = getelementptr %"compiler/scope:Scoper", ptr %t361, i32 0, i32 60
  %t365 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t363)
  store i64 %t365, ptr %l181
  br label %bb110
bb109:
  br label %bb113
bb110:
  %t366 = load i64, ptr %l181, !tbaa !24
  %t367 = sub i64 %t366, 2
  %t368 = load ptr, ptr %l178, !tbaa !29
  %t370 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t368, i64 %t367)
  store ptr %t370, ptr %l183
  br label %bb111
bb111:
  %t371 = load ptr, ptr %l176, !tbaa !29
  %t372 = load ptr, ptr %l183, !tbaa !29
  %t373 = call %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v0, ptr %t371, ptr %t372)
  store %"compiler/scope:placeSlot" %t373, ptr %l184
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s12)
  %t374 = load %"compiler/scope:placeSlot", ptr %l184
  store %"compiler/scope:placeSlot" %t374, ptr %rv
  br label %ret
bb113:
  store { i64, [2 x i64] } zeroinitializer, ptr %t375
  %t376 = getelementptr { i64, [2 x i64] }, ptr %t375, i32 0, i32 0
  store i64 6, ptr %t376
  %t377 = load { i64, [2 x i64] }, ptr %t375
  %t378 = load i64, ptr @G_2ecompiler_2fscope_2eFitValue, !tbaa !24
  %t381 = call %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %s12, { i64, [2 x i64] } %t377, i1 false, i64 %t378)
  store %"compiler/scope:placeSlot" %t381, ptr %l187
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s12)
  %t382 = load %"compiler/scope:placeSlot", ptr %l187
  store %"compiler/scope:placeSlot" %t382, ptr %rv
  br label %ret
bb115:
  call void @__olang_check_failed(ptr @olang_loc_7d6976d865ec0cf8_e8a6381acfe481b4)
  unreachable
ret:
  %rr = load %"compiler/scope:placeSlot", ptr %rv
  ret %"compiler/scope:placeSlot" %rr
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 42
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 42
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailGiven(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l52 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l75 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
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
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l4, !tbaa !23
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t24 = load i32, ptr %l5, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t27 = load i32, ptr %l4, !tbaa !23
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t34 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailParam(ptr %v0, ptr %v2, ptr %t22, i64 %t23, i64 %t26, i32 %t27, ptr %t28)
  store i1 %t34, ptr %l25
  br label %bb6
bb6:
  %t35 = load i1, ptr %l25, !tbaa !21
  store i1 %t35, ptr %l10, !tbaa !21
  br label %bb46
bb7:
  %t36 = load ptr, ptr %l2, !tbaa !29
  store ptr %t36, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t37 = load ptr, ptr %l26, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load ptr, ptr %l26, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 8}
  %t43 = icmp eq i64 %t41, 1
  store i1 %t43, ptr %l27, !tbaa !21
  br label %bb9
bb9:
  %t44 = load i1, ptr %l27, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb46
bb13:
  %t45 = load ptr, ptr %l2, !tbaa !29
  store ptr %t45, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t46 = load ptr, ptr %l30, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t49 = load ptr, ptr %l30, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 8}
  %t52 = icmp eq i64 %t50, 3
  store i1 %t52, ptr %l31, !tbaa !21
  br label %bb15
bb15:
  %t53 = load i1, ptr %l31, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i64, ptr %l1, !tbaa !24
  %t62 = load ptr, ptr %l6, !tbaa !29
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t68 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailGiven(ptr %v0, ptr %v1, ptr %v2, ptr %t60, i64 %t61, ptr %t62, ptr %t63)
  store i1 %t68, ptr %l40
  br label %bb19
bb19:
  %t69 = load i1, ptr %l40, !tbaa !21
  store i1 %t69, ptr %l10, !tbaa !21
  br label %bb46
bb20:
  %t70 = load ptr, ptr %l2, !tbaa !29
  store ptr %t70, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t71 = load ptr, ptr %l41, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb21, label %bb22
bb21:
  %t74 = load ptr, ptr %l41, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 4
  store i1 %t77, ptr %l42, !tbaa !21
  br label %bb22
bb22:
  %t78 = load i1, ptr %l42, !tbaa !21
  br i1 %t78, label %bb23, label %bb24
bb23:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l7, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  %t87 = load ptr, ptr %l7, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Elem", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t91 = load ptr, ptr %l3, !tbaa !29
  %t96 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailGiven(ptr %v0, ptr %v1, ptr %v2, ptr %t85, i64 %t86, ptr %t90, ptr %t91)
  store i1 %t96, ptr %l52
  br label %bb26
bb26:
  %t97 = load i1, ptr %l52, !tbaa !21
  store i1 %t97, ptr %l10, !tbaa !21
  br label %bb46
bb27:
  %t98 = load ptr, ptr %l2, !tbaa !29
  store ptr %t98, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t99 = load ptr, ptr %l53, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb28, label %bb29
bb28:
  %t102 = load ptr, ptr %l53, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 8}
  %t105 = icmp eq i64 %t103, 5
  store i1 %t105, ptr %l54, !tbaa !21
  br label %bb29
bb29:
  %t106 = load i1, ptr %l54, !tbaa !21
  br i1 %t106, label %bb30, label %bb31
bb30:
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t109 = getelementptr { i64, [4 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t109, i32 0, i32 2
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l8, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i64, ptr %l1, !tbaa !24
  %t115 = load ptr, ptr %l8, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Payload", ptr %t115, i32 0, i32 0
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load ptr, ptr %l3, !tbaa !29
  %t124 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailGiven(ptr %v0, ptr %v1, ptr %v2, ptr %t113, i64 %t114, ptr %t118, ptr %t119)
  store i1 %t124, ptr %l64
  br label %bb33
bb33:
  %t125 = load i1, ptr %l64, !tbaa !21
  store i1 %t125, ptr %l10, !tbaa !21
  br label %bb46
bb34:
  %t126 = load ptr, ptr %l2, !tbaa !29
  store ptr %t126, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t127 = load ptr, ptr %l65, !tbaa !29
  %t128 = icmp ne ptr %t127, null
  br i1 %t128, label %bb35, label %bb36
bb35:
  %t130 = load ptr, ptr %l65, !tbaa !29
  %t131 = load i64, ptr %t130, !range !{i64 0, i64 8}
  %t133 = icmp eq i64 %t131, 2
  store i1 %t133, ptr %l66, !tbaa !21
  br label %bb36
bb36:
  %t134 = load i1, ptr %l66, !tbaa !21
  br i1 %t134, label %bb37, label %bb38
bb37:
  %t135 = load ptr, ptr %l2, !tbaa !29
  %t137 = getelementptr { i64, [4 x i64] }, ptr %t135, i32 0, i32 1
  %t138 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t137, i32 0, i32 2
  %t139 = load ptr, ptr %t138
  store ptr %t139, ptr %l9, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l1, !tbaa !24
  %t143 = load ptr, ptr %l9, !tbaa !29
  %t144 = load ptr, ptr %l3, !tbaa !29
  %t149 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailGivenRef(ptr %v0, ptr %v1, ptr %v2, ptr %t141, i64 %t142, ptr %t143, ptr %t144)
  store i1 %t149, ptr %l75
  br label %bb40
bb40:
  %t150 = load i1, ptr %l75, !tbaa !21
  store i1 %t150, ptr %l10, !tbaa !21
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_daac038632d28eef_8fc443c207accaeb)
  unreachable
bb46:
  %t151 = load i1, ptr %l10, !tbaa !21
  store i1 %t151, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethrough(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l16 = alloca { i64, [2 x i64] }
  %l17 = alloca { i64, ptr }
  %l34 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t26 = alloca { i64, [2 x i64] }, align 8
  %t36 = alloca { i64, [2 x i64] }, align 8
  %t67 = alloca { i64, [2 x i64] }, align 8
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l5, !tbaa !24
  br label %bb3
bb2:
  br label %bb7
bb3:
  %t10 = load i64, ptr %l5, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t16 = icmp slt i64 %t10, %t13
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i64 %t19
  %t24 = load { i64, [2 x i64] }, ptr %t23
  store { i64, [2 x i64] } %t24, ptr %l16
  br label %bb6
bb5:
  store { i64, [2 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 0
  store i64 6, ptr %t27
  %t28 = load { i64, [2 x i64] }, ptr %t26
  store { i64, [2 x i64] } %t28, ptr %l16
  br label %bb6
bb6:
  %t30 = load { i64, [2 x i64] }, ptr %l16
  store { i64, [2 x i64] } %t30, ptr %l8
  br label %bb21
bb7:
  %t31 = load { i64, [2 x i64] }, ptr %l1
  %t33 = extractvalue { i64, [2 x i64] } %t31, 0
  %t34 = icmp eq i64 %t33, 3
  br i1 %t34, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store { i64, [2 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 0
  store i64 3, ptr %t37
  %t38 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t38, ptr %l8
  br label %bb21
bb11:
  %t40 = load { i64, [2 x i64] }, ptr %l1
  %t42 = extractvalue { i64, [2 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 4
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t45 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t46 = getelementptr { i64, i64 }, ptr %t45, i32 0, i32 0
  %t47 = load i64, ptr %t46
  store i64 %t47, ptr %l6, !tbaa !24
  %t49 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t50 = getelementptr { i64, i64 }, ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50
  store i64 %t51, ptr %l7, !tbaa !24
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t65 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedAt(ptr %v0, ptr %v2, ptr %v1, ptr %a0, i64 %t54, i64 %t55, ptr %a3, i1 %a4, { i64, ptr } %t58)
  store { i64, [2 x i64] } %t65, ptr %l34
  br label %bb15
bb15:
  %t66 = load { i64, [2 x i64] }, ptr %l34
  store { i64, [2 x i64] } %t66, ptr %l8
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [2 x i64] }, ptr %t67, i32 0, i32 0
  store i64 6, ptr %t68
  %t69 = load { i64, [2 x i64] }, ptr %t67
  store { i64, [2 x i64] } %t69, ptr %l8
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_5042ae5260cf85f5_3d2bef1206874e11)
  unreachable
bb21:
  %t71 = load { i64, [2 x i64] }, ptr %l8
  store { i64, [2 x i64] } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinRoom(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l20 = alloca i64
  %l25 = alloca i64
  %l29 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 229
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load i64, ptr @G_2ecompiler_2fscope_2eTwinDepth, !tbaa !24
  %t8 = icmp sge i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 227
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/scope:twinTab", ptr %t14, i32 0, i32 10
  %t20 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t16, i64 %a1)
  %t21 = extractvalue { i32, i64 } %t20, 1
  %t22 = extractvalue { i32, i64 } %t20, 0
  store i32 %t22, ptr %l14
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb5, label %ok.24, !prof !99
ok.24:
  store i64 %t21, ptr %l13
  br label %bb4
bb4:
  %t25 = load i64, ptr %l13, !tbaa !24
  store i64 %t25, ptr %l8, !tbaa !24
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr @G_2ecompiler_2fscope_2eTwinsPerBody, !tbaa !24
  %t27 = load i64, ptr %l8, !tbaa !24
  %t29 = icmp sge i64 %t27, %t26
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 1
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l20
  br label %bb11
bb11:
  %t37 = load i64, ptr %l20, !tbaa !24
  %t38 = sdiv i64 %t37, 50
  store i64 %t38, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %t40, i32 0, i32 227
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/scope:twinTab", ptr %t43, i32 0, i32 1
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t45)
  store i64 %t47, ptr %l25
  br label %bb12
bb12:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr @G_2ecompiler_2fscope_2eTwinsLeast, !tbaa !24
  %t52 = icmp sgt i64 %t48, %t49
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = load i64, ptr %l2, !tbaa !24
  store i64 %t54, ptr %l29, !tbaa !24
  br label %bb15
bb14:
  %t56 = load i64, ptr @G_2ecompiler_2fscope_2eTwinsLeast, !tbaa !24
  store i64 %t56, ptr %l29, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l25, !tbaa !24
  %t59 = load i64, ptr %l29, !tbaa !24
  %t60 = icmp slt i64 %t58, %t59
  store i1 %t60, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i32
  %l43 = alloca i32
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i1
  %l68 = alloca i64
  %l73 = alloca i1
  %l82 = alloca i32
  %l85 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l100 = alloca i1
  %l106 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l118 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i1
  %l128 = alloca i1
  %l134 = alloca i1
  %l140 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l154 = alloca i1
  %l155 = alloca ptr
  %l156 = alloca i1
  %l166 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i1
  %l179 = alloca i1
  %l180 = alloca i1
  %l187 = alloca i1
  %l188 = alloca ptr
  %l189 = alloca i1
  %l200 = alloca i1
  %l201 = alloca i1
  %l209 = alloca i1
  %l210 = alloca ptr
  %l211 = alloca i1
  %l221 = alloca i1
  %l224 = alloca i1
  %l227 = alloca i1
  %l231 = alloca i1
  %l233 = alloca { i64, ptr }
  %l236 = alloca ptr
  %l238 = alloca i1
  %l243 = alloca i1
  %l246 = alloca i1
  %l250 = alloca i1
  %l251 = alloca { i64, ptr }
  %l254 = alloca i1
  %l257 = alloca { i64, ptr }
  %l261 = alloca i1
  %l267 = alloca i1
  %l268 = alloca ptr
  %l269 = alloca i1
  %l280 = alloca i1
  %l281 = alloca i1
  %l289 = alloca i1
  %l290 = alloca i1
  %l298 = alloca i1
  %l299 = alloca ptr
  %l300 = alloca i1
  %l312 = alloca i1
  %l313 = alloca i1
  %l320 = alloca i1
  %l321 = alloca i1
  %l329 = alloca i1
  %l330 = alloca ptr
  %l331 = alloca i1
  %l344 = alloca { i64, ptr }
  %l353 = alloca i1
  %l364 = alloca i1
  %l365 = alloca ptr
  %l366 = alloca i1
  %l379 = alloca { i64, ptr }
  %l388 = alloca i1
  %l401 = alloca { i64, ptr }
  %l410 = alloca i1
  %l421 = alloca i1
  %l422 = alloca ptr
  %l423 = alloca i1
  %l434 = alloca i1
  %l445 = alloca { i64, ptr }
  %l454 = alloca i1
  %l456 = alloca i1
  %l463 = alloca i1
  %l469 = alloca ptr
  %l470 = alloca i1
  %l475 = alloca ptr
  %l476 = alloca i1
  %l487 = alloca i64
  %l490 = alloca i1
  %l497 = alloca i1
  %l498 = alloca ptr
  %l499 = alloca i1
  %l517 = alloca { i64, ptr }
  %l523 = alloca i64
  %l526 = alloca i1
  %l534 = alloca i1
  %l540 = alloca ptr
  %l541 = alloca i1
  %l554 = alloca { i64, ptr }
  %l557 = alloca ptr
  %l558 = alloca i1
  %l566 = alloca i64
  %l569 = alloca i1
  %l573 = alloca i1
  %l575 = alloca i1
  %l582 = alloca i1
  %l588 = alloca ptr
  %l589 = alloca i1
  %l600 = alloca i1
  %s12 = alloca %olang.scope
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
  store ptr %t6, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t7 = load ptr, ptr %l58, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l58, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l59, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l59, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l5, !tbaa !23
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l6, !tbaa !29
  br label %bb8
bb7:
  br label %bb32
bb8:
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = call i64 @compiler_2fscope_2eownField(ptr %v2, ptr %t27, i64 %t28)
  store i64 %t31, ptr %l68
  br label %bb9
bb9:
  %t32 = load i64, ptr %l68, !tbaa !24
  %t33 = icmp sge i64 %t32, 0
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr @G_2ecompiler_2fscope_2eUseThru, !tbaa !24
  %t39 = icmp eq i64 %t35, %t36
  br i1 %t39, label %bb12, label %bb13
bb11:
  br label %bb26
bb12:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb14
bb13:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t45 = icmp eq i64 %t41, %t42
  store i1 %t45, ptr %l73, !tbaa !21
  br label %bb14
bb14:
  %t47 = load i1, ptr %l73, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l5, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l82
  br label %bb18
bb18:
  %t59 = load i32, ptr %l82, !range !{i32 0, i32 33}
  store i32 %t59, ptr %l7
  %t60 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t62 = trunc i64 20 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb21
bb20:
  %t65 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t67 = trunc i64 21 to i32
  %t68 = icmp eq i32 %t65, %t67
  store i1 %t68, ptr %l85, !tbaa !21
  br label %bb21
bb21:
  %t70 = load i1, ptr %l85, !tbaa !21
  br i1 %t70, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb25
bb23:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l5, !tbaa !23
  %t75 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNumberLike(ptr %v0, ptr %t71, i32 %t72)
  store i1 %t75, ptr %l91
  br label %bb24
bb24:
  %t76 = load i1, ptr %l91, !tbaa !21
  store i1 %t76, ptr %l88, !tbaa !21
  br label %bb25
bb25:
  %t77 = load i1, ptr %l88, !tbaa !21
  store i1 %t77, ptr %rv
  br label %ret
bb26:
  %t78 = load i64, ptr %l4, !tbaa !24
  %t79 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t82 = icmp eq i64 %t78, %t79
  br i1 %t82, label %bb27, label %bb28
bb27:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t86 = load ptr, ptr %l6, !tbaa !29
  %t87 = load i64, ptr %l3, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  %t94 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %t84, ptr %t85, ptr %t86, i64 %t87, i64 %t88)
  store i1 %t94, ptr %l100
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t95 = load i1, ptr %l100, !tbaa !21
  store i1 %t95, ptr %rv
  br label %ret
bb30:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t99 = load i64, ptr %l3, !tbaa !24
  %t100 = load i64, ptr %l4, !tbaa !24
  %t106 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t96, ptr %t97, ptr %t98, i64 %t99, i64 %t100)
  store i1 %t106, ptr %l106
  br label %bb31
bb31:
  %t107 = load i1, ptr %l106, !tbaa !21
  store i1 %t107, ptr %rv
  br label %ret
bb32:
  %t108 = load ptr, ptr %l2, !tbaa !29
  store ptr %t108, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t109 = load ptr, ptr %l107, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb33, label %bb34
bb33:
  %t112 = load ptr, ptr %l107, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 18}
  %t115 = icmp eq i64 %t113, 3
  store i1 %t115, ptr %l108, !tbaa !21
  br label %bb34
bb34:
  %t116 = load i1, ptr %l108, !tbaa !21
  br i1 %t116, label %bb35, label %bb36
bb35:
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr { i64, [5 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t119, i32 0, i32 2
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l8, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t125 = load ptr, ptr %l8, !tbaa !29
  %t126 = load i64, ptr %l3, !tbaa !24
  %t127 = load i64, ptr %l4, !tbaa !24
  %t133 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t123, ptr %t124, ptr %t125, i64 %t126, i64 %t127)
  store i1 %t133, ptr %l118
  br label %bb38
bb38:
  %t134 = load i1, ptr %l118, !tbaa !21
  store i1 %t134, ptr %rv
  br label %ret
bb39:
  %t135 = load ptr, ptr %l2, !tbaa !29
  store ptr %t135, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t136 = load ptr, ptr %l119, !tbaa !29
  %t137 = icmp ne ptr %t136, null
  br i1 %t137, label %bb40, label %bb41
bb40:
  %t139 = load ptr, ptr %l119, !tbaa !29
  %t140 = load i64, ptr %t139, !range !{i64 0, i64 18}
  %t142 = icmp eq i64 %t140, 4
  store i1 %t142, ptr %l120, !tbaa !21
  br label %bb41
bb41:
  %t143 = load i1, ptr %l120, !tbaa !21
  br i1 %t143, label %bb42, label %bb43
bb42:
  %t144 = load ptr, ptr %l2, !tbaa !29
  %t146 = getelementptr { i64, [5 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t146, i32 0, i32 2
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l9, !tbaa !29
  br label %bb44
bb43:
  br label %bb50
bb44:
  %t150 = load i64, ptr %l4, !tbaa !24
  %t151 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t154 = icmp eq i64 %t150, %t151
  br i1 %t154, label %bb45, label %bb46
bb45:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t158 = load ptr, ptr %l9, !tbaa !29
  %t159 = load i64, ptr %l3, !tbaa !24
  %t160 = load i64, ptr %l4, !tbaa !24
  %t166 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %t156, ptr %t157, ptr %t158, i64 %t159, i64 %t160)
  store i1 %t166, ptr %l134
  br label %bb47
bb46:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t169 = load ptr, ptr %l9, !tbaa !29
  %t170 = load i64, ptr %l3, !tbaa !24
  %t171 = load i64, ptr %l4, !tbaa !24
  %t177 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t167, ptr %t168, ptr %t169, i64 %t170, i64 %t171)
  store i1 %t177, ptr %l140
  br label %bb48
bb47:
  %t178 = load i1, ptr %l134, !tbaa !21
  store i1 %t178, ptr %l128, !tbaa !21
  br label %bb49
bb48:
  %t179 = load i1, ptr %l140, !tbaa !21
  store i1 %t179, ptr %l128, !tbaa !21
  br label %bb49
bb49:
  %t180 = load i1, ptr %l128, !tbaa !21
  store i1 %t180, ptr %rv
  br label %ret
bb50:
  %t181 = load ptr, ptr %l2, !tbaa !29
  store ptr %t181, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t182 = load ptr, ptr %l141, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb51, label %bb52
bb51:
  %t185 = load ptr, ptr %l141, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 18}
  %t188 = icmp eq i64 %t186, 5
  store i1 %t188, ptr %l142, !tbaa !21
  br label %bb52
bb52:
  %t189 = load i1, ptr %l142, !tbaa !21
  br i1 %t189, label %bb53, label %bb54
bb53:
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t192 = getelementptr { i64, [5 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t192, i32 0, i32 2
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l10, !tbaa !29
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t198 = load ptr, ptr %l10, !tbaa !29
  %t200 = getelementptr %"compiler/typed:Promote", ptr %t198, i32 0, i32 0
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t203 = load i64, ptr %l3, !tbaa !24
  %t204 = load i64, ptr %l4, !tbaa !24
  %t210 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t196, ptr %t197, ptr %t201, i64 %t203, i64 %t204)
  store i1 %t210, ptr %l154
  br label %bb56
bb56:
  %t211 = load i1, ptr %l154, !tbaa !21
  store i1 %t211, ptr %rv
  br label %ret
bb57:
  %t212 = load ptr, ptr %l2, !tbaa !29
  store ptr %t212, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t213 = load ptr, ptr %l155, !tbaa !29
  %t214 = icmp ne ptr %t213, null
  br i1 %t214, label %bb58, label %bb59
bb58:
  %t216 = load ptr, ptr %l155, !tbaa !29
  %t217 = load i64, ptr %t216, !range !{i64 0, i64 18}
  %t219 = icmp eq i64 %t217, 6
  store i1 %t219, ptr %l156, !tbaa !21
  br label %bb59
bb59:
  %t220 = load i1, ptr %l156, !tbaa !21
  br i1 %t220, label %bb60, label %bb61
bb60:
  %t221 = load ptr, ptr %l2, !tbaa !29
  %t223 = getelementptr { i64, [5 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t223, i32 0, i32 2
  %t225 = load ptr, ptr %t224
  store ptr %t225, ptr %l11, !tbaa !29
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load ptr, ptr %l1, !tbaa !29
  %t229 = load ptr, ptr %l11, !tbaa !29
  %t230 = load i64, ptr %l3, !tbaa !24
  %t231 = load i64, ptr %l4, !tbaa !24
  %t237 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueCall(ptr %v0, ptr %v1, ptr %v2, ptr %t227, ptr %t228, ptr %t229, i64 %t230, i64 %t231)
  store i1 %t237, ptr %l166
  br label %bb63
bb63:
  %t238 = load i1, ptr %l166, !tbaa !21
  store i1 %t238, ptr %rv
  br label %ret
bb64:
  %t239 = load ptr, ptr %l2, !tbaa !29
  store ptr %t239, ptr %l167, !tbaa !29
  store i1 false, ptr %l168, !tbaa !21
  %t240 = load ptr, ptr %l167, !tbaa !29
  %t241 = icmp ne ptr %t240, null
  br i1 %t241, label %bb65, label %bb66
bb65:
  %t243 = load ptr, ptr %l167, !tbaa !29
  %t244 = load i64, ptr %t243, !range !{i64 0, i64 18}
  %t246 = icmp eq i64 %t244, 7
  store i1 %t246, ptr %l168, !tbaa !21
  br label %bb66
bb66:
  %t247 = load i1, ptr %l168, !tbaa !21
  br i1 %t247, label %bb67, label %bb68
bb67:
  %t248 = load ptr, ptr %l2, !tbaa !29
  %t250 = getelementptr { i64, [5 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t250, i32 0, i32 2
  %t252 = load ptr, ptr %t251
  store ptr %t252, ptr %l12, !tbaa !29
  br label %bb69
bb68:
  br label %bb75
bb69:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load ptr, ptr %l1, !tbaa !29
  %t256 = load ptr, ptr %l12, !tbaa !29
  %t258 = getelementptr %"compiler/typed:Make", ptr %t256, i32 0, i32 2
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  %t260 = load i64, ptr %l3, !tbaa !24
  %t261 = load i64, ptr %l4, !tbaa !24
  %t267 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExprs(ptr %v0, ptr %v1, ptr %v2, ptr %t254, ptr %t255, { i64, ptr } %t259, i64 %t260, i64 %t261)
  store i1 %t267, ptr %l179
  br label %bb70
bb70:
  %t268 = load i1, ptr %l179, !tbaa !21
  br i1 %t268, label %bb71, label %bb72
bb71:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load ptr, ptr %l1, !tbaa !29
  %t271 = load ptr, ptr %l12, !tbaa !29
  %t273 = getelementptr %"compiler/typed:Make", ptr %t271, i32 0, i32 3
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t275 = load i64, ptr %l3, !tbaa !24
  %t276 = load i64, ptr %l4, !tbaa !24
  %t282 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t269, ptr %t270, ptr %t274, i64 %t275, i64 %t276)
  store i1 %t282, ptr %l187
  br label %bb73
bb72:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb74
bb73:
  %t283 = load i1, ptr %l187, !tbaa !21
  store i1 %t283, ptr %l180, !tbaa !21
  br label %bb74
bb74:
  %t284 = load i1, ptr %l180, !tbaa !21
  store i1 %t284, ptr %rv
  br label %ret
bb75:
  %t285 = load ptr, ptr %l2, !tbaa !29
  store ptr %t285, ptr %l188, !tbaa !29
  store i1 false, ptr %l189, !tbaa !21
  %t286 = load ptr, ptr %l188, !tbaa !29
  %t287 = icmp ne ptr %t286, null
  br i1 %t287, label %bb76, label %bb77
bb76:
  %t289 = load ptr, ptr %l188, !tbaa !29
  %t290 = load i64, ptr %t289, !range !{i64 0, i64 18}
  %t292 = icmp eq i64 %t290, 8
  store i1 %t292, ptr %l189, !tbaa !21
  br label %bb77
bb77:
  %t293 = load i1, ptr %l189, !tbaa !21
  br i1 %t293, label %bb78, label %bb79
bb78:
  %t294 = load ptr, ptr %l2, !tbaa !29
  %t296 = getelementptr { i64, [5 x i64] }, ptr %t294, i32 0, i32 1
  %t297 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t296, i32 0, i32 2
  %t298 = load ptr, ptr %t297
  store ptr %t298, ptr %l13, !tbaa !29
  br label %bb80
bb79:
  br label %bb86
bb80:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load ptr, ptr %l1, !tbaa !29
  %t302 = load ptr, ptr %l13, !tbaa !29
  %t304 = getelementptr %"compiler/typed:Collect", ptr %t302, i32 0, i32 0
  %t305 = load ptr, ptr %t304, !tbaa !29
  %t306 = load i64, ptr %l3, !tbaa !24
  %t307 = load i64, ptr %l4, !tbaa !24
  %t313 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t300, ptr %t301, ptr %t305, i64 %t306, i64 %t307)
  store i1 %t313, ptr %l200
  br label %bb81
bb81:
  %t314 = load i1, ptr %l200, !tbaa !21
  br i1 %t314, label %bb82, label %bb83
bb82:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = load ptr, ptr %l1, !tbaa !29
  %t317 = load ptr, ptr %l13, !tbaa !29
  %t319 = getelementptr %"compiler/typed:Collect", ptr %t317, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t322 = load i64, ptr %l3, !tbaa !24
  %t323 = load i64, ptr %l4, !tbaa !24
  %t329 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t315, ptr %t316, ptr %t320, i64 %t322, i64 %t323)
  store i1 %t329, ptr %l209
  br label %bb84
bb83:
  store i1 false, ptr %l201, !tbaa !21
  br label %bb85
bb84:
  %t330 = load i1, ptr %l209, !tbaa !21
  store i1 %t330, ptr %l201, !tbaa !21
  br label %bb85
bb85:
  %t331 = load i1, ptr %l201, !tbaa !21
  store i1 %t331, ptr %rv
  br label %ret
bb86:
  %t332 = load ptr, ptr %l2, !tbaa !29
  store ptr %t332, ptr %l210, !tbaa !29
  store i1 false, ptr %l211, !tbaa !21
  %t333 = load ptr, ptr %l210, !tbaa !29
  %t334 = icmp ne ptr %t333, null
  br i1 %t334, label %bb87, label %bb88
bb87:
  %t336 = load ptr, ptr %l210, !tbaa !29
  %t337 = load i64, ptr %t336, !range !{i64 0, i64 18}
  %t339 = icmp eq i64 %t337, 9
  store i1 %t339, ptr %l211, !tbaa !21
  br label %bb88
bb88:
  %t340 = load i1, ptr %l211, !tbaa !21
  br i1 %t340, label %bb89, label %bb90
bb89:
  %t341 = load ptr, ptr %l2, !tbaa !29
  %t343 = getelementptr { i64, [5 x i64] }, ptr %t341, i32 0, i32 1
  %t344 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t343, i32 0, i32 2
  %t345 = load i32, ptr %t344, !range !{i32 0, i32 52}
  store i32 %t345, ptr %l14
  %t347 = load ptr, ptr %l2, !tbaa !29
  %t349 = getelementptr { i64, [5 x i64] }, ptr %t347, i32 0, i32 1
  %t350 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t349, i32 0, i32 4
  %t351 = load { i64, ptr }, ptr %t350
  store { i64, ptr } %t351, ptr %l15, !tbaa !27
  br label %bb91
bb90:
  br label %bb124
bb91:
  store %olang.scope zeroinitializer, ptr %s12
  %t353 = load i64, ptr %l4, !tbaa !24
  %t354 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t357 = icmp eq i64 %t353, %t354
  br i1 %t357, label %bb92, label %bb93
bb92:
  %t359 = load i32, ptr %l14, !range !{i32 0, i32 52}
  %t361 = trunc i64 29 to i32
  %t362 = icmp eq i32 %t359, %t361
  br i1 %t362, label %bb94, label %bb95
bb93:
  store i1 false, ptr %l221, !tbaa !21
  br label %bb97
bb94:
  store i1 true, ptr %l224, !tbaa !21
  br label %bb96
bb95:
  %t364 = load i32, ptr %l14, !range !{i32 0, i32 52}
  %t366 = trunc i64 22 to i32
  %t367 = icmp eq i32 %t364, %t366
  store i1 %t367, ptr %l224, !tbaa !21
  br label %bb96
bb96:
  %t369 = load i1, ptr %l224, !tbaa !21
  store i1 %t369, ptr %l221, !tbaa !21
  br label %bb97
bb97:
  %t370 = load i1, ptr %l221, !tbaa !21
  br i1 %t370, label %bb98, label %bb99
bb98:
  %t371 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t375 = icmp eq i64 %t373, 1
  store i1 %t375, ptr %l227, !tbaa !21
  br label %bb100
bb99:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb100
bb100:
  %t377 = load i1, ptr %l227, !tbaa !21
  br i1 %t377, label %bb101, label %bb102
bb101:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t379, ptr %l233, !tbaa !27
  %t380 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t381 = load ptr, ptr %t380, !tbaa !27
  %t382 = getelementptr ptr, ptr %t381, i64 0
  %t383 = load ptr, ptr %t382, !tbaa !39
  %t387 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v2, ptr %s12, ptr %t378, ptr %t383)
  store ptr %t387, ptr %l236
  br label %bb103
bb102:
  store i1 false, ptr %l231, !tbaa !21
  br label %bb105
bb103:
  %t388 = load i64, ptr %l3, !tbaa !24
  %t389 = load ptr, ptr %l236, !tbaa !29
  %t391 = call i1 @compiler_2fscope_2eisParamRead(ptr %s12, ptr %t389, i64 %t388)
  store i1 %t391, ptr %l238
  br label %bb104
bb104:
  %t392 = load i1, ptr %l238, !tbaa !21
  store i1 %t392, ptr %l231, !tbaa !21
  br label %bb105
bb105:
  %t393 = load i1, ptr %l231, !tbaa !21
  br i1 %t393, label %bb106, label %bb107
bb106:
  call void @__olang_scope_close(ptr %s12)
  store i1 true, ptr %rv
  br label %ret
bb107:
  br label %bb108
bb108:
  %t395 = load i64, ptr %l4, !tbaa !24
  %t396 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t399 = icmp eq i64 %t395, %t396
  br i1 %t399, label %bb109, label %bb110
bb109:
  %t401 = load i32, ptr %l14, !range !{i32 0, i32 52}
  %t403 = trunc i64 30 to i32
  %t404 = icmp eq i32 %t401, %t403
  store i1 %t404, ptr %l243, !tbaa !21
  br label %bb111
bb110:
  store i1 false, ptr %l243, !tbaa !21
  br label %bb111
bb111:
  %t406 = load i1, ptr %l243, !tbaa !21
  br i1 %t406, label %bb112, label %bb113
bb112:
  %t407 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t407, 0
  %t411 = icmp eq i64 %t409, 1
  store i1 %t411, ptr %l246, !tbaa !21
  br label %bb114
bb113:
  store i1 false, ptr %l246, !tbaa !21
  br label %bb114
bb114:
  %t413 = load i1, ptr %l246, !tbaa !21
  br i1 %t413, label %bb115, label %bb116
bb115:
  %t414 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t414, ptr %l251, !tbaa !27
  %t415 = getelementptr { i64, ptr }, ptr %l251, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !27
  %t417 = getelementptr ptr, ptr %t416, i64 0
  %t418 = load ptr, ptr %t417, !tbaa !39
  %t419 = load i64, ptr %l3, !tbaa !24
  %t422 = call i1 @compiler_2fscope_2eownView(ptr %v2, ptr %t418, i64 %t419)
  store i1 %t422, ptr %l254
  br label %bb117
bb116:
  store i1 false, ptr %l250, !tbaa !21
  br label %bb118
bb117:
  %t423 = load i1, ptr %l254, !tbaa !21
  store i1 %t423, ptr %l250, !tbaa !21
  br label %bb118
bb118:
  %t424 = load i1, ptr %l250, !tbaa !21
  br i1 %t424, label %bb119, label %bb120
bb119:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t426 = load ptr, ptr %l1, !tbaa !29
  %t427 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t427, ptr %l257, !tbaa !27
  %t428 = getelementptr { i64, ptr }, ptr %l257, i32 0, i32 1
  %t429 = load ptr, ptr %t428, !tbaa !27
  %t430 = getelementptr ptr, ptr %t429, i64 0
  %t431 = load ptr, ptr %t430, !tbaa !39
  %t432 = load i64, ptr %l3, !tbaa !24
  %t433 = load i64, ptr %l4, !tbaa !24
  %t439 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueSliceBounds(ptr %v0, ptr %v1, ptr %v2, ptr %t425, ptr %t426, ptr %t431, i64 %t432, i64 %t433)
  store i1 %t439, ptr %l261
  br label %bb121
bb120:
  br label %bb122
bb121:
  call void @__olang_scope_close(ptr %s12)
  %t440 = load i1, ptr %l261, !tbaa !21
  store i1 %t440, ptr %rv
  br label %ret
bb122:
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load ptr, ptr %l1, !tbaa !29
  %t443 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t444 = load i64, ptr %l3, !tbaa !24
  %t445 = load i64, ptr %l4, !tbaa !24
  %t451 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExprs(ptr %v0, ptr %v1, ptr %v2, ptr %t441, ptr %t442, { i64, ptr } %t443, i64 %t444, i64 %t445)
  store i1 %t451, ptr %l267
  br label %bb123
bb123:
  call void @__olang_scope_close(ptr %s12)
  %t452 = load i1, ptr %l267, !tbaa !21
  store i1 %t452, ptr %rv
  br label %ret
bb124:
  %t453 = load ptr, ptr %l2, !tbaa !29
  store ptr %t453, ptr %l268, !tbaa !29
  store i1 false, ptr %l269, !tbaa !21
  %t454 = load ptr, ptr %l268, !tbaa !29
  %t455 = icmp ne ptr %t454, null
  br i1 %t455, label %bb125, label %bb126
bb125:
  %t457 = load ptr, ptr %l268, !tbaa !29
  %t458 = load i64, ptr %t457, !range !{i64 0, i64 18}
  %t460 = icmp eq i64 %t458, 10
  store i1 %t460, ptr %l269, !tbaa !21
  br label %bb126
bb126:
  %t461 = load i1, ptr %l269, !tbaa !21
  br i1 %t461, label %bb127, label %bb128
bb127:
  %t462 = load ptr, ptr %l2, !tbaa !29
  %t464 = getelementptr { i64, [5 x i64] }, ptr %t462, i32 0, i32 1
  %t465 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t464, i32 0, i32 2
  %t466 = load ptr, ptr %t465
  store ptr %t466, ptr %l16, !tbaa !29
  br label %bb129
bb128:
  br label %bb139
bb129:
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t469 = load ptr, ptr %l1, !tbaa !29
  %t470 = load ptr, ptr %l16, !tbaa !29
  %t472 = getelementptr %"compiler/typed:Slice", ptr %t470, i32 0, i32 0
  %t473 = load ptr, ptr %t472, !tbaa !29
  %t474 = load i64, ptr %l3, !tbaa !24
  %t475 = load i64, ptr %l4, !tbaa !24
  %t481 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t468, ptr %t469, ptr %t473, i64 %t474, i64 %t475)
  store i1 %t481, ptr %l280
  br label %bb130
bb130:
  %t482 = load i1, ptr %l280, !tbaa !21
  br i1 %t482, label %bb131, label %bb132
bb131:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load ptr, ptr %l1, !tbaa !29
  %t485 = load ptr, ptr %l16, !tbaa !29
  %t487 = getelementptr %"compiler/typed:Slice", ptr %t485, i32 0, i32 1
  %t488 = load ptr, ptr %t487, !tbaa !29
  %t490 = load i64, ptr %l3, !tbaa !24
  %t491 = load i64, ptr %l4, !tbaa !24
  %t497 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t483, ptr %t484, ptr %t488, i64 %t490, i64 %t491)
  store i1 %t497, ptr %l289
  br label %bb133
bb132:
  store i1 false, ptr %l281, !tbaa !21
  br label %bb134
bb133:
  %t498 = load i1, ptr %l289, !tbaa !21
  store i1 %t498, ptr %l281, !tbaa !21
  br label %bb134
bb134:
  %t499 = load i1, ptr %l281, !tbaa !21
  br i1 %t499, label %bb135, label %bb136
bb135:
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t501 = load ptr, ptr %l1, !tbaa !29
  %t502 = load ptr, ptr %l16, !tbaa !29
  %t504 = getelementptr %"compiler/typed:Slice", ptr %t502, i32 0, i32 2
  %t505 = load ptr, ptr %t504, !tbaa !29
  %t507 = load i64, ptr %l3, !tbaa !24
  %t508 = load i64, ptr %l4, !tbaa !24
  %t514 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t500, ptr %t501, ptr %t505, i64 %t507, i64 %t508)
  store i1 %t514, ptr %l298
  br label %bb137
bb136:
  store i1 false, ptr %l290, !tbaa !21
  br label %bb138
bb137:
  %t515 = load i1, ptr %l298, !tbaa !21
  store i1 %t515, ptr %l290, !tbaa !21
  br label %bb138
bb138:
  %t516 = load i1, ptr %l290, !tbaa !21
  store i1 %t516, ptr %rv
  br label %ret
bb139:
  %t517 = load ptr, ptr %l2, !tbaa !29
  store ptr %t517, ptr %l299, !tbaa !29
  store i1 false, ptr %l300, !tbaa !21
  %t518 = load ptr, ptr %l299, !tbaa !29
  %t519 = icmp ne ptr %t518, null
  br i1 %t519, label %bb140, label %bb141
bb140:
  %t521 = load ptr, ptr %l299, !tbaa !29
  %t522 = load i64, ptr %t521, !range !{i64 0, i64 18}
  %t524 = icmp eq i64 %t522, 11
  store i1 %t524, ptr %l300, !tbaa !21
  br label %bb141
bb141:
  %t525 = load i1, ptr %l300, !tbaa !21
  br i1 %t525, label %bb142, label %bb143
bb142:
  %t526 = load ptr, ptr %l2, !tbaa !29
  %t528 = getelementptr { i64, [5 x i64] }, ptr %t526, i32 0, i32 1
  %t529 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t528, i32 0, i32 2
  %t530 = load ptr, ptr %t529
  store ptr %t530, ptr %l17, !tbaa !29
  br label %bb144
bb143:
  br label %bb154
bb144:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load ptr, ptr %l1, !tbaa !29
  %t534 = load ptr, ptr %l17, !tbaa !29
  %t536 = getelementptr %"compiler/typed:Cond", ptr %t534, i32 0, i32 0
  %t537 = load ptr, ptr %t536, !tbaa !29
  %t539 = load i64, ptr %l3, !tbaa !24
  %t540 = load i64, ptr %l4, !tbaa !24
  %t546 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t532, ptr %t533, ptr %t537, i64 %t539, i64 %t540)
  store i1 %t546, ptr %l312
  br label %bb145
bb145:
  %t547 = load i1, ptr %l312, !tbaa !21
  br i1 %t547, label %bb146, label %bb147
bb146:
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t549 = load ptr, ptr %l1, !tbaa !29
  %t550 = load ptr, ptr %l17, !tbaa !29
  %t552 = getelementptr %"compiler/typed:Cond", ptr %t550, i32 0, i32 1
  %t553 = load ptr, ptr %t552, !tbaa !29
  %t554 = load i64, ptr %l3, !tbaa !24
  %t555 = load i64, ptr %l4, !tbaa !24
  %t561 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t548, ptr %t549, ptr %t553, i64 %t554, i64 %t555)
  store i1 %t561, ptr %l320
  br label %bb148
bb147:
  store i1 false, ptr %l313, !tbaa !21
  br label %bb149
bb148:
  %t562 = load i1, ptr %l320, !tbaa !21
  store i1 %t562, ptr %l313, !tbaa !21
  br label %bb149
bb149:
  %t563 = load i1, ptr %l313, !tbaa !21
  br i1 %t563, label %bb150, label %bb151
bb150:
  %t564 = load ptr, ptr %l0, !tbaa !29
  %t565 = load ptr, ptr %l1, !tbaa !29
  %t566 = load ptr, ptr %l17, !tbaa !29
  %t568 = getelementptr %"compiler/typed:Cond", ptr %t566, i32 0, i32 2
  %t569 = load ptr, ptr %t568, !tbaa !29
  %t571 = load i64, ptr %l3, !tbaa !24
  %t572 = load i64, ptr %l4, !tbaa !24
  %t578 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t564, ptr %t565, ptr %t569, i64 %t571, i64 %t572)
  store i1 %t578, ptr %l329
  br label %bb152
bb151:
  store i1 false, ptr %l321, !tbaa !21
  br label %bb153
bb152:
  %t579 = load i1, ptr %l329, !tbaa !21
  store i1 %t579, ptr %l321, !tbaa !21
  br label %bb153
bb153:
  %t580 = load i1, ptr %l321, !tbaa !21
  store i1 %t580, ptr %rv
  br label %ret
bb154:
  %t581 = load ptr, ptr %l2, !tbaa !29
  store ptr %t581, ptr %l330, !tbaa !29
  store i1 false, ptr %l331, !tbaa !21
  %t582 = load ptr, ptr %l330, !tbaa !29
  %t583 = icmp ne ptr %t582, null
  br i1 %t583, label %bb155, label %bb156
bb155:
  %t585 = load ptr, ptr %l330, !tbaa !29
  %t586 = load i64, ptr %t585, !range !{i64 0, i64 18}
  %t588 = icmp eq i64 %t586, 12
  store i1 %t588, ptr %l331, !tbaa !21
  br label %bb156
bb156:
  %t589 = load i1, ptr %l331, !tbaa !21
  br i1 %t589, label %bb157, label %bb158
bb157:
  %t590 = load ptr, ptr %l2, !tbaa !29
  %t592 = getelementptr { i64, [5 x i64] }, ptr %t590, i32 0, i32 1
  %t593 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t592, i32 0, i32 2
  %t594 = load ptr, ptr %t593
  store ptr %t594, ptr %l18, !tbaa !29
  br label %bb159
bb158:
  br label %bb171
bb159:
  %t596 = load ptr, ptr %l18, !tbaa !29
  %t598 = getelementptr %"compiler/typed:Seq", ptr %t596, i32 0, i32 0
  %t599 = load { i64, ptr }, ptr %t598, !tbaa !27
  store { i64, ptr } %t599, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t601 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t603 = extractvalue { i64, ptr } %t601, 0
  store i64 %t603, ptr %l21, !tbaa !24
  br label %bb160
bb160:
  %t605 = load i64, ptr %l20, !tbaa !24
  %t606 = load i64, ptr %l21, !tbaa !24
  %t609 = icmp slt i64 %t605, %t606
  %t611 = xor i1 %t609, true
  br i1 %t611, label %bb161, label %bb162
bb161:
  br label %bb169
bb162:
  br label %bb163
bb163:
  %t613 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t613, ptr %l344, !tbaa !27
  %t614 = load i64, ptr %l20, !tbaa !24
  %t616 = getelementptr { i64, ptr }, ptr %l344, i32 0, i32 1
  %t617 = load ptr, ptr %t616, !tbaa !27
  %t618 = getelementptr ptr, ptr %t617, i64 %t614
  %t619 = load ptr, ptr %t618, !tbaa !39
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t622 = load ptr, ptr %l1, !tbaa !29
  %t625 = load i64, ptr %l3, !tbaa !24
  %t626 = load i64, ptr %l4, !tbaa !24
  %t632 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueStmt(ptr %v0, ptr %v1, ptr %v2, ptr %t621, ptr %t622, ptr %t619, i64 %t625, i64 %t626)
  store i1 %t632, ptr %l353
  br label %bb164
bb164:
  %t633 = load i1, ptr %l353, !tbaa !21
  %t634 = xor i1 %t633, true
  br i1 %t634, label %bb165, label %bb166
bb165:
  store i1 false, ptr %rv
  br label %ret
bb166:
  br label %bb167
bb167:
  br label %bb168
bb168:
  %t637 = load i64, ptr %l20, !tbaa !24
  %t639 = add i64 %t637, 1
  store i64 %t639, ptr %l20, !tbaa !24
  br label %bb160
bb169:
  %t641 = load ptr, ptr %l0, !tbaa !29
  %t642 = load ptr, ptr %l1, !tbaa !29
  %t643 = load ptr, ptr %l18, !tbaa !29
  %t645 = getelementptr %"compiler/typed:Seq", ptr %t643, i32 0, i32 1
  %t646 = load ptr, ptr %t645, !tbaa !29
  %t647 = load i64, ptr %l3, !tbaa !24
  %t648 = load i64, ptr %l4, !tbaa !24
  %t654 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t641, ptr %t642, ptr %t646, i64 %t647, i64 %t648)
  store i1 %t654, ptr %l364
  br label %bb170
bb170:
  %t655 = load i1, ptr %l364, !tbaa !21
  store i1 %t655, ptr %rv
  br label %ret
bb171:
  %t656 = load ptr, ptr %l2, !tbaa !29
  store ptr %t656, ptr %l365, !tbaa !29
  store i1 false, ptr %l366, !tbaa !21
  %t657 = load ptr, ptr %l365, !tbaa !29
  %t658 = icmp ne ptr %t657, null
  br i1 %t658, label %bb172, label %bb173
bb172:
  %t660 = load ptr, ptr %l365, !tbaa !29
  %t661 = load i64, ptr %t660, !range !{i64 0, i64 18}
  %t663 = icmp eq i64 %t661, 13
  store i1 %t663, ptr %l366, !tbaa !21
  br label %bb173
bb173:
  %t664 = load i1, ptr %l366, !tbaa !21
  br i1 %t664, label %bb174, label %bb175
bb174:
  %t665 = load ptr, ptr %l2, !tbaa !29
  %t667 = getelementptr { i64, [5 x i64] }, ptr %t665, i32 0, i32 1
  %t668 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t667, i32 0, i32 2
  %t669 = load ptr, ptr %t668
  store ptr %t669, ptr %l23, !tbaa !29
  br label %bb176
bb175:
  br label %bb198
bb176:
  %t671 = load ptr, ptr %l23, !tbaa !29
  %t673 = getelementptr %"compiler/typed:Match", ptr %t671, i32 0, i32 0
  %t674 = load { i64, ptr }, ptr %t673, !tbaa !27
  store { i64, ptr } %t674, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t676 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t678 = extractvalue { i64, ptr } %t676, 0
  store i64 %t678, ptr %l26, !tbaa !24
  br label %bb177
bb177:
  %t680 = load i64, ptr %l25, !tbaa !24
  %t681 = load i64, ptr %l26, !tbaa !24
  %t684 = icmp slt i64 %t680, %t681
  %t686 = xor i1 %t684, true
  br i1 %t686, label %bb178, label %bb179
bb178:
  br label %bb186
bb179:
  br label %bb180
bb180:
  %t688 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t688, ptr %l379, !tbaa !27
  %t689 = load i64, ptr %l25, !tbaa !24
  %t691 = getelementptr { i64, ptr }, ptr %l379, i32 0, i32 1
  %t692 = load ptr, ptr %t691, !tbaa !27
  %t693 = getelementptr ptr, ptr %t692, i64 %t689
  %t694 = load ptr, ptr %t693, !tbaa !39
  %t696 = load ptr, ptr %l0, !tbaa !29
  %t697 = load ptr, ptr %l1, !tbaa !29
  %t700 = load i64, ptr %l3, !tbaa !24
  %t701 = load i64, ptr %l4, !tbaa !24
  %t707 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueStmt(ptr %v0, ptr %v1, ptr %v2, ptr %t696, ptr %t697, ptr %t694, i64 %t700, i64 %t701)
  store i1 %t707, ptr %l388
  br label %bb181
bb181:
  %t708 = load i1, ptr %l388, !tbaa !21
  %t709 = xor i1 %t708, true
  br i1 %t709, label %bb182, label %bb183
bb182:
  store i1 false, ptr %rv
  br label %ret
bb183:
  br label %bb184
bb184:
  br label %bb185
bb185:
  %t712 = load i64, ptr %l25, !tbaa !24
  %t714 = add i64 %t712, 1
  store i64 %t714, ptr %l25, !tbaa !24
  br label %bb177
bb186:
  %t716 = load ptr, ptr %l23, !tbaa !29
  %t718 = getelementptr %"compiler/typed:Match", ptr %t716, i32 0, i32 1
  %t719 = load { i64, ptr }, ptr %t718, !tbaa !27
  store { i64, ptr } %t719, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t721 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t723 = extractvalue { i64, ptr } %t721, 0
  store i64 %t723, ptr %l30, !tbaa !24
  br label %bb187
bb187:
  %t725 = load i64, ptr %l29, !tbaa !24
  %t726 = load i64, ptr %l30, !tbaa !24
  %t729 = icmp slt i64 %t725, %t726
  %t731 = xor i1 %t729, true
  br i1 %t731, label %bb188, label %bb189
bb188:
  br label %bb196
bb189:
  br label %bb190
bb190:
  %t733 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t733, ptr %l401, !tbaa !27
  %t734 = load i64, ptr %l29, !tbaa !24
  %t736 = getelementptr { i64, ptr }, ptr %l401, i32 0, i32 1
  %t737 = load ptr, ptr %t736, !tbaa !27
  %t738 = getelementptr ptr, ptr %t737, i64 %t734
  %t739 = load ptr, ptr %t738, !tbaa !39
  %t741 = load ptr, ptr %l0, !tbaa !29
  %t742 = load ptr, ptr %l1, !tbaa !29
  %t745 = load i64, ptr %l3, !tbaa !24
  %t746 = load i64, ptr %l4, !tbaa !24
  %t752 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueArm(ptr %v0, ptr %v1, ptr %v2, ptr %t741, ptr %t742, ptr %t739, i64 %t745, i64 %t746)
  store i1 %t752, ptr %l410
  br label %bb191
bb191:
  %t753 = load i1, ptr %l410, !tbaa !21
  %t754 = xor i1 %t753, true
  br i1 %t754, label %bb192, label %bb193
bb192:
  store i1 false, ptr %rv
  br label %ret
bb193:
  br label %bb194
bb194:
  br label %bb195
bb195:
  %t757 = load i64, ptr %l29, !tbaa !24
  %t759 = add i64 %t757, 1
  store i64 %t759, ptr %l29, !tbaa !24
  br label %bb187
bb196:
  %t761 = load ptr, ptr %l0, !tbaa !29
  %t762 = load ptr, ptr %l1, !tbaa !29
  %t763 = load ptr, ptr %l23, !tbaa !29
  %t765 = getelementptr %"compiler/typed:Match", ptr %t763, i32 0, i32 2
  %t766 = load ptr, ptr %t765, !tbaa !29
  %t767 = load i64, ptr %l3, !tbaa !24
  %t768 = load i64, ptr %l4, !tbaa !24
  %t774 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueArm(ptr %v0, ptr %v1, ptr %v2, ptr %t761, ptr %t762, ptr %t766, i64 %t767, i64 %t768)
  store i1 %t774, ptr %l421
  br label %bb197
bb197:
  %t775 = load i1, ptr %l421, !tbaa !21
  store i1 %t775, ptr %rv
  br label %ret
bb198:
  %t776 = load ptr, ptr %l2, !tbaa !29
  store ptr %t776, ptr %l422, !tbaa !29
  store i1 false, ptr %l423, !tbaa !21
  %t777 = load ptr, ptr %l422, !tbaa !29
  %t778 = icmp ne ptr %t777, null
  br i1 %t778, label %bb199, label %bb200
bb199:
  %t780 = load ptr, ptr %l422, !tbaa !29
  %t781 = load i64, ptr %t780, !range !{i64 0, i64 18}
  %t783 = icmp eq i64 %t781, 14
  store i1 %t783, ptr %l423, !tbaa !21
  br label %bb200
bb200:
  %t784 = load i1, ptr %l423, !tbaa !21
  br i1 %t784, label %bb201, label %bb202
bb201:
  %t785 = load ptr, ptr %l2, !tbaa !29
  %t787 = getelementptr { i64, [5 x i64] }, ptr %t785, i32 0, i32 1
  %t788 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t787, i32 0, i32 2
  %t789 = load ptr, ptr %t788
  store ptr %t789, ptr %l32, !tbaa !29
  br label %bb203
bb202:
  br label %bb222
bb203:
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t792 = load ptr, ptr %l1, !tbaa !29
  %t793 = load ptr, ptr %l32, !tbaa !29
  %t795 = getelementptr %"compiler/typed:Try", ptr %t793, i32 0, i32 0
  %t796 = load ptr, ptr %t795, !tbaa !29
  %t797 = load i64, ptr %l3, !tbaa !24
  %t798 = load i64, ptr %l4, !tbaa !24
  %t804 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t791, ptr %t792, ptr %t796, i64 %t797, i64 %t798)
  store i1 %t804, ptr %l434
  br label %bb204
bb204:
  %t805 = load i1, ptr %l434, !tbaa !21
  %t806 = xor i1 %t805, true
  br i1 %t806, label %bb205, label %bb206
bb205:
  store i1 false, ptr %rv
  br label %ret
bb206:
  br label %bb207
bb207:
  %t809 = load ptr, ptr %l32, !tbaa !29
  %t811 = getelementptr %"compiler/typed:Try", ptr %t809, i32 0, i32 1
  %t812 = load { i64, ptr }, ptr %t811, !tbaa !27
  store { i64, ptr } %t812, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  %t814 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t816 = extractvalue { i64, ptr } %t814, 0
  store i64 %t816, ptr %l35, !tbaa !24
  br label %bb208
bb208:
  %t818 = load i64, ptr %l34, !tbaa !24
  %t819 = load i64, ptr %l35, !tbaa !24
  %t822 = icmp slt i64 %t818, %t819
  %t824 = xor i1 %t822, true
  br i1 %t824, label %bb209, label %bb210
bb209:
  br label %bb221
bb210:
  br label %bb211
bb211:
  %t826 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t826, ptr %l445, !tbaa !27
  %t827 = load i64, ptr %l34, !tbaa !24
  %t829 = getelementptr { i64, ptr }, ptr %l445, i32 0, i32 1
  %t830 = load ptr, ptr %t829, !tbaa !27
  %t831 = getelementptr ptr, ptr %t830, i64 %t827
  %t832 = load ptr, ptr %t831, !tbaa !39
  store ptr %t832, ptr %l36, !tbaa !29
  %t834 = load ptr, ptr %l0, !tbaa !29
  %t835 = load ptr, ptr %l1, !tbaa !29
  %t836 = load ptr, ptr %l36, !tbaa !29
  %t838 = getelementptr %"compiler/typed:Clause", ptr %t836, i32 0, i32 3
  %t839 = load ptr, ptr %t838, !tbaa !29
  %t840 = load i64, ptr %l3, !tbaa !24
  %t841 = load i64, ptr %l4, !tbaa !24
  %t847 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t834, ptr %t835, ptr %t839, i64 %t840, i64 %t841)
  store i1 %t847, ptr %l454
  br label %bb212
bb212:
  %t848 = load i1, ptr %l454, !tbaa !21
  %t849 = xor i1 %t848, true
  br i1 %t849, label %bb213, label %bb214
bb213:
  store i1 true, ptr %l456, !tbaa !21
  br label %bb216
bb214:
  %t851 = load ptr, ptr %l0, !tbaa !29
  %t852 = load ptr, ptr %l1, !tbaa !29
  %t853 = load ptr, ptr %l36, !tbaa !29
  %t855 = getelementptr %"compiler/typed:Clause", ptr %t853, i32 0, i32 4
  %t856 = load { i64, ptr }, ptr %t855, !tbaa !27
  %t857 = load i64, ptr %l3, !tbaa !24
  %t858 = load i64, ptr %l4, !tbaa !24
  %t864 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExprs(ptr %v0, ptr %v1, ptr %v2, ptr %t851, ptr %t852, { i64, ptr } %t856, i64 %t857, i64 %t858)
  store i1 %t864, ptr %l463
  br label %bb215
bb215:
  %t865 = load i1, ptr %l463, !tbaa !21
  %t866 = xor i1 %t865, true
  store i1 %t866, ptr %l456, !tbaa !21
  br label %bb216
bb216:
  %t868 = load i1, ptr %l456, !tbaa !21
  br i1 %t868, label %bb217, label %bb218
bb217:
  store i1 false, ptr %rv
  br label %ret
bb218:
  br label %bb219
bb219:
  br label %bb220
bb220:
  %t870 = load i64, ptr %l34, !tbaa !24
  %t872 = add i64 %t870, 1
  store i64 %t872, ptr %l34, !tbaa !24
  br label %bb208
bb221:
  store i1 true, ptr %rv
  br label %ret
bb222:
  %t875 = load ptr, ptr %l2, !tbaa !29
  store ptr %t875, ptr %l469, !tbaa !29
  store i1 false, ptr %l470, !tbaa !21
  %t876 = load ptr, ptr %l469, !tbaa !29
  %t877 = icmp ne ptr %t876, null
  br i1 %t877, label %bb223, label %bb224
bb223:
  %t879 = load ptr, ptr %l469, !tbaa !29
  %t880 = load i64, ptr %t879, !range !{i64 0, i64 18}
  %t882 = icmp eq i64 %t880, 15
  store i1 %t882, ptr %l470, !tbaa !21
  br label %bb224
bb224:
  %t883 = load i1, ptr %l470, !tbaa !21
  br i1 %t883, label %bb225, label %bb226
bb225:
  %t884 = load ptr, ptr %l2, !tbaa !29
  %t886 = getelementptr { i64, [5 x i64] }, ptr %t884, i32 0, i32 1
  %t887 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t886, i32 0, i32 2
  %t888 = load ptr, ptr %t887
  store ptr %t888, ptr %l37, !tbaa !29
  br label %bb227
bb226:
  br label %bb257
bb227:
  %t890 = load ptr, ptr %l37, !tbaa !29
  store ptr %t890, ptr %l475, !tbaa !29
  store i1 false, ptr %l476, !tbaa !21
  %t891 = load ptr, ptr %l475, !tbaa !29
  %t892 = icmp ne ptr %t891, null
  br i1 %t892, label %bb228, label %bb229
bb228:
  %t894 = load ptr, ptr %l475, !tbaa !29
  %t895 = load i64, ptr %t894, !range !{i64 0, i64 3}
  %t897 = icmp eq i64 %t895, 2
  store i1 %t897, ptr %l476, !tbaa !21
  br label %bb229
bb229:
  %t898 = load i1, ptr %l476, !tbaa !21
  br i1 %t898, label %bb230, label %bb231
bb230:
  %t899 = load ptr, ptr %l37, !tbaa !29
  %t901 = getelementptr { i64, [4 x i64] }, ptr %t899, i32 0, i32 1
  %t902 = getelementptr { i32, ptr, i32 }, ptr %t901, i32 0, i32 0
  %t903 = load i32, ptr %t902
  store i32 %t903, ptr %l38, !tbaa !23
  %t905 = load ptr, ptr %l37, !tbaa !29
  %t907 = getelementptr { i64, [4 x i64] }, ptr %t905, i32 0, i32 1
  %t908 = getelementptr { i32, ptr, i32 }, ptr %t907, i32 0, i32 1
  %t909 = load ptr, ptr %t908
  store ptr %t909, ptr %l39, !tbaa !29
  %t911 = load ptr, ptr %l37, !tbaa !29
  %t913 = getelementptr { i64, [4 x i64] }, ptr %t911, i32 0, i32 1
  %t914 = getelementptr { i32, ptr, i32 }, ptr %t913, i32 0, i32 2
  %t915 = load i32, ptr %t914
  store i32 %t915, ptr %l40, !tbaa !23
  %t917 = load ptr, ptr %l39, !tbaa !29
  %t920 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v2, ptr %t917)
  store i64 %t920, ptr %l487
  br label %bb232
bb231:
  br label %bb237
bb232:
  %t921 = load i64, ptr %l3, !tbaa !24
  %t922 = load i64, ptr %l487, !tbaa !24
  %t924 = icmp ne i64 %t922, %t921
  br i1 %t924, label %bb233, label %bb234
bb233:
  %t926 = load ptr, ptr %l0, !tbaa !29
  %t927 = load ptr, ptr %l1, !tbaa !29
  %t928 = load ptr, ptr %l39, !tbaa !29
  %t930 = load i64, ptr %l3, !tbaa !24
  %t931 = load i64, ptr %l4, !tbaa !24
  %t937 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t926, ptr %t927, ptr %t928, i64 %t930, i64 %t931)
  store i1 %t937, ptr %l497
  br label %bb235
bb234:
  store i1 false, ptr %l490, !tbaa !21
  br label %bb236
bb235:
  %t938 = load i1, ptr %l497, !tbaa !21
  store i1 %t938, ptr %l490, !tbaa !21
  br label %bb236
bb236:
  %t939 = load i1, ptr %l490, !tbaa !21
  store i1 %t939, ptr %rv
  br label %ret
bb237:
  %t940 = load ptr, ptr %l37, !tbaa !29
  store ptr %t940, ptr %l498, !tbaa !29
  store i1 false, ptr %l499, !tbaa !21
  %t941 = load ptr, ptr %l498, !tbaa !29
  %t942 = icmp ne ptr %t941, null
  br i1 %t942, label %bb238, label %bb239
bb238:
  %t944 = load ptr, ptr %l498, !tbaa !29
  %t945 = load i64, ptr %t944, !range !{i64 0, i64 3}
  %t947 = icmp eq i64 %t945, 1
  store i1 %t947, ptr %l499, !tbaa !21
  br label %bb239
bb239:
  %t948 = load i1, ptr %l499, !tbaa !21
  %t949 = xor i1 %t948, true
  br i1 %t949, label %bb240, label %bb241
bb240:
  store i1 true, ptr %rv
  br label %ret
bb241:
  br label %bb242
bb242:
  %t952 = load ptr, ptr %l37, !tbaa !29
  %t954 = getelementptr { i64, [4 x i64] }, ptr %t952, i32 0, i32 1
  %t955 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t954, i32 0, i32 0
  %t956 = load i32, ptr %t955
  store i32 %t956, ptr %l41, !tbaa !23
  %t958 = load ptr, ptr %l37, !tbaa !29
  %t960 = getelementptr { i64, [4 x i64] }, ptr %t958, i32 0, i32 1
  %t961 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t960, i32 0, i32 1
  %t962 = load { i64, ptr }, ptr %t961
  %t964 = load ptr, ptr %l37, !tbaa !29
  %t966 = getelementptr { i64, [4 x i64] }, ptr %t964, i32 0, i32 1
  %t967 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t966, i32 0, i32 2
  %t968 = load i32, ptr %t967
  store i32 %t968, ptr %l43, !tbaa !23
  store { i64, ptr } %t962, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t972 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t974 = extractvalue { i64, ptr } %t972, 0
  store i64 %t974, ptr %l46, !tbaa !24
  br label %bb243
bb243:
  %t976 = load i64, ptr %l45, !tbaa !24
  %t977 = load i64, ptr %l46, !tbaa !24
  %t980 = icmp slt i64 %t976, %t977
  %t982 = xor i1 %t980, true
  br i1 %t982, label %bb244, label %bb245
bb244:
  br label %bb256
bb245:
  br label %bb246
bb246:
  %t984 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t984, ptr %l517, !tbaa !27
  %t985 = load i64, ptr %l45, !tbaa !24
  %t987 = getelementptr { i64, ptr }, ptr %l517, i32 0, i32 1
  %t988 = load ptr, ptr %t987, !tbaa !27
  %t989 = getelementptr ptr, ptr %t988, i64 %t985
  %t990 = load ptr, ptr %t989, !tbaa !39
  store ptr %t990, ptr %l47, !tbaa !29
  %t992 = load ptr, ptr %l47, !tbaa !29
  %t994 = getelementptr %"compiler/typed:Capture", ptr %t992, i32 0, i32 1
  %t995 = load ptr, ptr %t994, !tbaa !29
  %t998 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v2, ptr %t995)
  store i64 %t998, ptr %l523
  br label %bb247
bb247:
  %t999 = load i64, ptr %l3, !tbaa !24
  %t1000 = load i64, ptr %l523, !tbaa !24
  %t1002 = icmp eq i64 %t1000, %t999
  br i1 %t1002, label %bb248, label %bb249
bb248:
  store i1 true, ptr %l526, !tbaa !21
  br label %bb251
bb249:
  %t1004 = load ptr, ptr %l0, !tbaa !29
  %t1005 = load ptr, ptr %l1, !tbaa !29
  %t1006 = load ptr, ptr %l47, !tbaa !29
  %t1008 = getelementptr %"compiler/typed:Capture", ptr %t1006, i32 0, i32 1
  %t1009 = load ptr, ptr %t1008, !tbaa !29
  %t1011 = load i64, ptr %l3, !tbaa !24
  %t1012 = load i64, ptr %l4, !tbaa !24
  %t1018 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t1004, ptr %t1005, ptr %t1009, i64 %t1011, i64 %t1012)
  store i1 %t1018, ptr %l534
  br label %bb250
bb250:
  %t1019 = load i1, ptr %l534, !tbaa !21
  %t1020 = xor i1 %t1019, true
  store i1 %t1020, ptr %l526, !tbaa !21
  br label %bb251
bb251:
  %t1022 = load i1, ptr %l526, !tbaa !21
  br i1 %t1022, label %bb252, label %bb253
bb252:
  store i1 false, ptr %rv
  br label %ret
bb253:
  br label %bb254
bb254:
  br label %bb255
bb255:
  %t1024 = load i64, ptr %l45, !tbaa !24
  %t1026 = add i64 %t1024, 1
  store i64 %t1026, ptr %l45, !tbaa !24
  br label %bb243
bb256:
  store i1 true, ptr %rv
  br label %ret
bb257:
  %t1029 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1029, ptr %l540, !tbaa !29
  store i1 false, ptr %l541, !tbaa !21
  %t1030 = load ptr, ptr %l540, !tbaa !29
  %t1031 = icmp ne ptr %t1030, null
  br i1 %t1031, label %bb258, label %bb259
bb258:
  %t1033 = load ptr, ptr %l540, !tbaa !29
  %t1034 = load i64, ptr %t1033, !range !{i64 0, i64 18}
  %t1036 = icmp eq i64 %t1034, 16
  store i1 %t1036, ptr %l541, !tbaa !21
  br label %bb259
bb259:
  %t1037 = load i1, ptr %l541, !tbaa !21
  br i1 %t1037, label %bb260, label %bb261
bb260:
  %t1038 = load ptr, ptr %l2, !tbaa !29
  %t1040 = getelementptr { i64, [5 x i64] }, ptr %t1038, i32 0, i32 1
  %t1041 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1040, i32 0, i32 2
  %t1042 = load ptr, ptr %t1041
  store ptr %t1042, ptr %l48, !tbaa !29
  br label %bb262
bb261:
  br label %bb286
bb262:
  %t1044 = load ptr, ptr %l48, !tbaa !29
  %t1046 = getelementptr %"compiler/typed:Text", ptr %t1044, i32 0, i32 0
  %t1047 = load { i64, ptr }, ptr %t1046, !tbaa !27
  store { i64, ptr } %t1047, ptr %l49, !tbaa !27
  store i64 0, ptr %l50, !tbaa !24
  %t1049 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1051 = extractvalue { i64, ptr } %t1049, 0
  store i64 %t1051, ptr %l51, !tbaa !24
  br label %bb263
bb263:
  %t1053 = load i64, ptr %l50, !tbaa !24
  %t1054 = load i64, ptr %l51, !tbaa !24
  %t1057 = icmp slt i64 %t1053, %t1054
  %t1059 = xor i1 %t1057, true
  br i1 %t1059, label %bb264, label %bb265
bb264:
  br label %bb285
bb265:
  br label %bb266
bb266:
  %t1061 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t1061, ptr %l554, !tbaa !27
  %t1062 = load i64, ptr %l50, !tbaa !24
  %t1064 = getelementptr { i64, ptr }, ptr %l554, i32 0, i32 1
  %t1065 = load ptr, ptr %t1064, !tbaa !27
  %t1066 = getelementptr ptr, ptr %t1065, i64 %t1062
  %t1067 = load ptr, ptr %t1066, !tbaa !39
  store ptr %t1067, ptr %l52, !tbaa !29
  %t1069 = load ptr, ptr %l52, !tbaa !29
  store ptr %t1069, ptr %l557, !tbaa !29
  store i1 false, ptr %l558, !tbaa !21
  %t1070 = load ptr, ptr %l557, !tbaa !29
  %t1071 = icmp ne ptr %t1070, null
  br i1 %t1071, label %bb267, label %bb268
bb267:
  %t1073 = load ptr, ptr %l557, !tbaa !29
  %t1074 = load i64, ptr %t1073, !range !{i64 0, i64 2}
  %t1076 = icmp eq i64 %t1074, 1
  store i1 %t1076, ptr %l558, !tbaa !21
  br label %bb268
bb268:
  %t1077 = load i1, ptr %l558, !tbaa !21
  %t1078 = xor i1 %t1077, true
  br i1 %t1078, label %bb269, label %bb270
bb269:
  br label %bb284
bb270:
  br label %bb271
bb271:
  %t1080 = load ptr, ptr %l52, !tbaa !29
  %t1082 = getelementptr { i64, [2 x i64] }, ptr %t1080, i32 0, i32 1
  %t1083 = getelementptr { ptr }, ptr %t1082, i32 0, i32 0
  %t1084 = load ptr, ptr %t1083
  store ptr %t1084, ptr %l53, !tbaa !29
  %t1086 = load ptr, ptr %l53, !tbaa !29
  %t1089 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v2, ptr %t1086)
  store i64 %t1089, ptr %l566
  br label %bb272
bb272:
  %t1090 = load i64, ptr %l3, !tbaa !24
  %t1091 = load i64, ptr %l566, !tbaa !24
  %t1093 = icmp eq i64 %t1091, %t1090
  br i1 %t1093, label %bb273, label %bb274
bb273:
  %t1095 = load ptr, ptr %l0, !tbaa !29
  %t1096 = load ptr, ptr %l53, !tbaa !29
  %t1097 = load i64, ptr %l3, !tbaa !24
  %t1101 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enumberField(ptr %v0, ptr %v2, ptr %t1095, ptr %t1096, i64 %t1097)
  store i1 %t1101, ptr %l573
  br label %bb275
bb274:
  store i1 false, ptr %l569, !tbaa !21
  br label %bb276
bb275:
  %t1102 = load i1, ptr %l573, !tbaa !21
  %t1103 = xor i1 %t1102, true
  store i1 %t1103, ptr %l569, !tbaa !21
  br label %bb276
bb276:
  %t1105 = load i1, ptr %l569, !tbaa !21
  br i1 %t1105, label %bb277, label %bb278
bb277:
  store i1 true, ptr %l575, !tbaa !21
  br label %bb280
bb278:
  %t1106 = load ptr, ptr %l0, !tbaa !29
  %t1107 = load ptr, ptr %l1, !tbaa !29
  %t1108 = load ptr, ptr %l53, !tbaa !29
  %t1110 = load i64, ptr %l3, !tbaa !24
  %t1111 = load i64, ptr %l4, !tbaa !24
  %t1117 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t1106, ptr %t1107, ptr %t1108, i64 %t1110, i64 %t1111)
  store i1 %t1117, ptr %l582
  br label %bb279
bb279:
  %t1118 = load i1, ptr %l582, !tbaa !21
  %t1119 = xor i1 %t1118, true
  store i1 %t1119, ptr %l575, !tbaa !21
  br label %bb280
bb280:
  %t1121 = load i1, ptr %l575, !tbaa !21
  br i1 %t1121, label %bb281, label %bb282
bb281:
  store i1 false, ptr %rv
  br label %ret
bb282:
  br label %bb283
bb283:
  br label %bb284
bb284:
  %t1123 = load i64, ptr %l50, !tbaa !24
  %t1125 = add i64 %t1123, 1
  store i64 %t1125, ptr %l50, !tbaa !24
  br label %bb263
bb285:
  store i1 true, ptr %rv
  br label %ret
bb286:
  %t1128 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1128, ptr %l588, !tbaa !29
  store i1 false, ptr %l589, !tbaa !21
  %t1129 = load ptr, ptr %l588, !tbaa !29
  %t1130 = icmp ne ptr %t1129, null
  br i1 %t1130, label %bb287, label %bb288
bb287:
  %t1132 = load ptr, ptr %l588, !tbaa !29
  %t1133 = load i64, ptr %t1132, !range !{i64 0, i64 18}
  %t1135 = icmp eq i64 %t1133, 17
  store i1 %t1135, ptr %l589, !tbaa !21
  br label %bb288
bb288:
  %t1136 = load i1, ptr %l589, !tbaa !21
  br i1 %t1136, label %bb289, label %bb290
bb289:
  %t1137 = load ptr, ptr %l2, !tbaa !29
  %t1139 = getelementptr { i64, [5 x i64] }, ptr %t1137, i32 0, i32 1
  %t1140 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t1139, i32 0, i32 2
  %t1141 = load ptr, ptr %t1140
  store ptr %t1141, ptr %l54, !tbaa !29
  br label %bb291
bb290:
  br label %bb293
bb291:
  %t1143 = load ptr, ptr %l0, !tbaa !29
  %t1144 = load ptr, ptr %l1, !tbaa !29
  %t1145 = load ptr, ptr %l54, !tbaa !29
  %t1147 = load i64, ptr %l3, !tbaa !24
  %t1148 = load i64, ptr %l4, !tbaa !24
  %t1154 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t1143, ptr %t1144, ptr %t1145, i64 %t1147, i64 %t1148)
  store i1 %t1154, ptr %l600
  br label %bb292
bb292:
  %t1155 = load i1, ptr %l600, !tbaa !21
  store i1 %t1155, ptr %rv
  br label %ret
bb293:
  br i1 true, label %bb294, label %bb295
bb294:
  br label %bb296
bb295:
  br label %bb297
bb296:
  store i1 true, ptr %rv
  br label %ret
bb297:
  call void @__olang_check_failed(ptr @olang_loc_94ea3fd5578d6989_449fcf7b944ae615)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i1
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i1
  %l22 = alloca i64
  %l23 = alloca { i64, [2 x i64] }
  %l24 = alloca %"compiler/scope:Val"
  %l25 = alloca ptr
  %l26 = alloca { i64, [2 x i64] }
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i1
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca i32
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca i64
  %l63 = alloca %"compiler/source:Span"
  %l64 = alloca i32
  %l65 = alloca ptr
  %l66 = alloca i64
  %l67 = alloca { i64, [2 x i64] }
  %l68 = alloca ptr
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca { i64, [2 x i64] }
  %l71 = alloca %"compiler/scope:Val"
  %l73 = alloca ptr
  %l74 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca ptr
  %l77 = alloca %"compiler/scope:Val"
  %l78 = alloca { i64, [2 x i64] }
  %l79 = alloca %"compiler/scope:Val"
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l82 = alloca i64
  %l83 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca i64
  %l87 = alloca ptr
  %l88 = alloca %"compiler/scope:Val"
  %l89 = alloca i1
  %l90 = alloca %"compiler/source:Span"
  %l91 = alloca ptr
  %l92 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l94 = alloca i64
  %l95 = alloca i64
  %l96 = alloca ptr
  %l97 = alloca ptr
  %l98 = alloca ptr
  %l101 = alloca %"compiler/scope:Val"
  %l103 = alloca i1
  %l104 = alloca i1
  %l107 = alloca i1
  %l108 = alloca i1
  %l111 = alloca i1
  %l112 = alloca { i64, [2 x i64] }
  %l115 = alloca { i64, [2 x i64] }
  %l128 = alloca ptr
  %l129 = alloca i1
  %l136 = alloca i1
  %l139 = alloca %"compiler/scope:Val"
  %l140 = alloca %"compiler/scope:Val"
  %l141 = alloca ptr
  %l142 = alloca i1
  %l147 = alloca %"compiler/scope:Val"
  %l148 = alloca ptr
  %l149 = alloca i1
  %l156 = alloca ptr
  %l157 = alloca i1
  %l164 = alloca ptr
  %l165 = alloca i1
  %l168 = alloca i1
  %l178 = alloca i1
  %l193 = alloca %"compiler/scope:Val"
  %l194 = alloca ptr
  %l195 = alloca i1
  %l204 = alloca { i64, [2 x i64] }
  %l205 = alloca %"compiler/scope:Val"
  %l206 = alloca ptr
  %l207 = alloca i1
  %l219 = alloca i1
  %l220 = alloca i1
  %l224 = alloca i1
  %l225 = alloca ptr
  %l228 = alloca i32
  %l229 = alloca i1
  %l230 = alloca i1
  %l233 = alloca i1
  %l237 = alloca ptr
  %l240 = alloca %"compiler/source:Span"
  %l245 = alloca { i64, [2 x i64] }
  %l247 = alloca i1
  %l249 = alloca i1
  %l250 = alloca { i64, [2 x i64] }
  %l254 = alloca { i64, [2 x i64] }
  %l256 = alloca ptr
  %l258 = alloca i32
  %l259 = alloca { i64, [2 x i64] }
  %l262 = alloca %"compiler/source:Span"
  %l263 = alloca ptr
  %l265 = alloca i1
  %l268 = alloca i1
  %l272 = alloca i1
  %l280 = alloca %"compiler/scope:Val"
  %l284 = alloca ptr
  %l288 = alloca ptr
  %l294 = alloca { i64, [2 x i64] }
  %l299 = alloca %"compiler/scope:Val"
  %l302 = alloca i1
  %l303 = alloca ptr
  %l306 = alloca i32
  %l307 = alloca i1
  %l310 = alloca ptr
  %l311 = alloca { i64, [2 x i64] }
  %l312 = alloca { i64, [2 x i64] }
  %l313 = alloca ptr
  %l316 = alloca i32
  %l317 = alloca i1
  %l319 = alloca ptr
  %l321 = alloca i64
  %l326 = alloca %"compiler/scope:Val"
  %l327 = alloca ptr
  %l328 = alloca i1
  %l342 = alloca %"compiler/scope:Val"
  %l343 = alloca ptr
  %l344 = alloca i1
  %l362 = alloca %"compiler/scope:Val"
  %l365 = alloca i64
  %l370 = alloca i64
  %l383 = alloca %"compiler/scope:Val"
  %l386 = alloca i64
  %l387 = alloca %"compiler/scope:Val"
  %l389 = alloca %"compiler/scope:Val"
  %l399 = alloca i64
  %l402 = alloca i64
  %l420 = alloca i64
  %l423 = alloca { i64, ptr }
  %l428 = alloca %"compiler/scope:Val"
  %l435 = alloca i1
  %l439 = alloca i1
  %l444 = alloca i1
  %l451 = alloca i64
  %l454 = alloca i64
  %l475 = alloca i1
  %l476 = alloca ptr
  %l478 = alloca { i64, ptr }
  %l481 = alloca i32
  %l482 = alloca i1
  %l486 = alloca i1
  %l491 = alloca i1
  %l502 = alloca ptr
  %l504 = alloca { i64, [2 x i64] }
  %l505 = alloca { i64, [2 x i64] }
  %l506 = alloca ptr
  %l508 = alloca { i64, ptr }
  %l511 = alloca i32
  %l512 = alloca i1
  %l514 = alloca { i64, ptr }
  %l528 = alloca i1
  %l530 = alloca i1
  %l534 = alloca %"compiler/scope:Val"
  %l536 = alloca %"compiler/scope:Val"
  %l537 = alloca ptr
  %l538 = alloca i1
  %l551 = alloca %"compiler/scope:Val"
  %l559 = alloca { i64, [2 x i64] }
  %l562 = alloca { i64, [2 x i64] }
  %l563 = alloca i32
  %l565 = alloca %"compiler/scope:Val"
  %l566 = alloca ptr
  %l567 = alloca i1
  %l578 = alloca i1
  %l582 = alloca i1
  %l585 = alloca i1
  %l586 = alloca i1
  %l587 = alloca ptr
  %l588 = alloca { i64, ptr }
  %l590 = alloca i32
  %l591 = alloca i1
  %l592 = alloca i1
  %l597 = alloca i64
  %l600 = alloca ptr
  %l601 = alloca { i64, ptr }
  %l603 = alloca i32
  %l604 = alloca i64
  %l608 = alloca { i64, ptr }
  %l611 = alloca %"compiler/scope:Val"
  %l613 = alloca i1
  %l614 = alloca i1
  %l618 = alloca i1
  %l621 = alloca i1
  %l622 = alloca i1
  %l625 = alloca i1
  %l630 = alloca { i64, ptr }
  %l634 = alloca %"compiler/scope:Val"
  %l639 = alloca i1
  %l643 = alloca i1
  %l648 = alloca { i64, ptr }
  %l651 = alloca { i64, ptr }
  %l660 = alloca { i64, ptr }
  %l667 = alloca %"compiler/scope:Val"
  %l670 = alloca %"compiler/scope:Val"
  %l671 = alloca ptr
  %l672 = alloca i1
  %l686 = alloca i64
  %l693 = alloca i1
  %l694 = alloca i1
  %l698 = alloca i1
  %l700 = alloca i1
  %l703 = alloca ptr
  %l707 = alloca %"compiler/source:Span"
  %l708 = alloca %"compiler/diagmsg:Msg"
  %l709 = alloca i64
  %l715 = alloca %"compiler/scope:Val"
  %l721 = alloca %"compiler/scope:Val"
  %l725 = alloca { i64, [2 x i64] }
  %l731 = alloca i1
  %l733 = alloca %"compiler/scope:Val"
  %l734 = alloca ptr
  %l735 = alloca i1
  %l745 = alloca %"compiler/scope:Val"
  %l746 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l747 = alloca ptr
  %l759 = alloca { i64, [2 x i64] }
  %l764 = alloca %"compiler/scope:Val"
  %l770 = alloca %"compiler/scope:Val"
  %l775 = alloca %"compiler/scope:Val"
  %l776 = alloca ptr
  %l777 = alloca i1
  %l794 = alloca %"compiler/scope:Val"
  %l795 = alloca ptr
  %l796 = alloca i1
  %l804 = alloca %"compiler/scope:Val"
  %l805 = alloca ptr
  %l806 = alloca i1
  %l815 = alloca %"compiler/scope:Val"
  %l818 = alloca i1
  %l821 = alloca i1
  %l823 = alloca i1
  %l824 = alloca { i64, [2 x i64] }
  %l836 = alloca { i64, ptr }
  %l842 = alloca i1
  %l847 = alloca { i64, [2 x i64] }
  %l851 = alloca ptr
  %l853 = alloca i64
  %l854 = alloca ptr
  %l864 = alloca %"compiler/typed:Local"
  %l866 = alloca { i64, [2 x i64] }
  %l878 = alloca { i64, ptr }
  %l885 = alloca %"compiler/scope:Val"
  %l888 = alloca i1
  %l890 = alloca i1
  %l893 = alloca i1
  %l894 = alloca ptr
  %l896 = alloca i32
  %l897 = alloca i1
  %l898 = alloca i1
  %l901 = alloca i1
  %l902 = alloca ptr
  %l903 = alloca %"compiler/scope:Val"
  %l904 = alloca %"compiler/scope:Val"
  %l905 = alloca ptr
  %l907 = alloca i32
  %l908 = alloca i1
  %l909 = alloca i1
  %l911 = alloca ptr
  %l914 = alloca %"compiler/source:Span"
  %l915 = alloca %"compiler/diagmsg:Msg"
  %l916 = alloca i64
  %l921 = alloca %"compiler/scope:Val"
  %l927 = alloca ptr
  %l928 = alloca i1
  %l939 = alloca %"compiler/scope:Val"
  %l940 = alloca ptr
  %l941 = alloca i1
  %l958 = alloca { i64, ptr }
  %l961 = alloca ptr
  %l962 = alloca i1
  %l971 = alloca %"compiler/scope:Val"
  %l975 = alloca %"compiler/scope:Val"
  %l976 = alloca ptr
  %l977 = alloca i1
  %l986 = alloca %"compiler/scope:Val"
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s49 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  %t83 = alloca { i64, [2 x i64] }, align 8
  %t101 = alloca { i64, [2 x i64] }, align 8
  %t315 = alloca { i64, [2 x i64] }, align 8
  %t645 = alloca { i64, [2 x i64] }, align 8
  %t673 = alloca i64
  %t1027 = alloca { i64, [2 x i64] }, align 8
  %t1278 = alloca { i64, [2 x i64] }, align 8
  %t1384 = alloca { i64, [2 x i64] }, align 8
  %t1397 = alloca { i64, [2 x i64] }, align 8
  %t1449 = alloca { i64, [2 x i64] }, align 8
  %t1944 = alloca { i64, [2 x i64] }, align 8
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
  %t5 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t5, ptr %l101
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load %"compiler/scope:Val", ptr %l101
  store %"compiler/scope:Val" %t6, ptr %rv
  br label %ret
bb4:
  %t7 = load { i64, [2 x i64] }, ptr %l2
  %t9 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t7)
  store i1 %t9, ptr %l103
  br label %bb5
bb5:
  %t10 = load i1, ptr %l103, !tbaa !21
  br i1 %t10, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb9
bb7:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load { i64, [2 x i64] }, ptr %l2
  %t15 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %t11, { i64, [2 x i64] } %t12)
  store i1 %t15, ptr %l107
  br label %bb8
bb8:
  %t16 = load i1, ptr %l107, !tbaa !21
  store i1 %t16, ptr %l104, !tbaa !21
  br label %bb9
bb9:
  %t17 = load i1, ptr %l104, !tbaa !21
  br i1 %t17, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb13
bb11:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load { i64, [2 x i64] }, ptr %l2
  %t22 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapPassed(ptr %v0, ptr %t18, { i64, [2 x i64] } %t19)
  store i1 %t22, ptr %l111
  br label %bb12
bb12:
  %t23 = load i1, ptr %l111, !tbaa !21
  store i1 %t23, ptr %l108, !tbaa !21
  br label %bb13
bb13:
  %t24 = load i1, ptr %l108, !tbaa !21
  br i1 %t24, label %bb14, label %bb15
bb14:
  %t25 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t25, ptr %l112
  br label %bb17
bb15:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t27)
  store { i64, [2 x i64] } %t29, ptr %l115
  br label %bb16
bb16:
  %t30 = load { i64, [2 x i64] }, ptr %l115
  store { i64, [2 x i64] } %t30, ptr %l112
  br label %bb17
bb17:
  %t31 = load { i64, [2 x i64] }, ptr %l112
  store { i64, [2 x i64] } %t31, ptr %l3
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 198
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 199
  %t40 = load i1, ptr %t39, !tbaa !21
  store i1 %t40, ptr %l5, !tbaa !21
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 200
  %t45 = load i1, ptr %t44, !tbaa !21
  store i1 %t45, ptr %l6, !tbaa !21
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 198
  store i64 -1, ptr %t51, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 199
  store i1 false, ptr %t56, !tbaa !21
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 200
  store i1 false, ptr %t61, !tbaa !21
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t63 = load ptr, ptr %l128, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb18, label %bb19
bb18:
  %t66 = load ptr, ptr %l128, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 18}
  %t69 = icmp eq i64 %t67, 0
  store i1 %t69, ptr %l129, !tbaa !21
  br label %bb19
bb19:
  %t70 = load i1, ptr %l129, !tbaa !21
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l10, !tbaa !23
  br label %bb22
bb21:
  br label %bb29
bb22:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l10, !tbaa !23
  %t81 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t77, i32 %t78)
  store i1 %t81, ptr %l136
  br label %bb23
bb23:
  %t82 = load i1, ptr %l136, !tbaa !21
  br i1 %t82, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s3
  store { i64, [2 x i64] } zeroinitializer, ptr %t83
  %t84 = getelementptr { i64, [2 x i64] }, ptr %t83, i32 0, i32 0
  store i64 0, ptr %t84
  %t85 = load { i64, [2 x i64] }, ptr %t83
  %t88 = call %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %s3, i32 1, { i64, [2 x i64] } %t85)
  store %"compiler/scope:Val" %t88, ptr %l139
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  %t89 = load %"compiler/scope:Val", ptr %l139
  store %"compiler/scope:Val" %t89, ptr %rv
  br label %ret
bb27:
  %t90 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t90, ptr %l140
  br label %bb28
bb28:
  %t91 = load %"compiler/scope:Val", ptr %l140
  store %"compiler/scope:Val" %t91, ptr %rv
  br label %ret
bb29:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t93 = load ptr, ptr %l141, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb30, label %bb31
bb30:
  %t96 = load ptr, ptr %l141, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 18}
  %t99 = icmp eq i64 %t97, 1
  store i1 %t99, ptr %l142, !tbaa !21
  br label %bb31
bb31:
  %t100 = load i1, ptr %l142, !tbaa !21
  br i1 %t100, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb36
bb34:
  store %olang.scope zeroinitializer, ptr %s4
  store { i64, [2 x i64] } zeroinitializer, ptr %t101
  %t102 = getelementptr { i64, [2 x i64] }, ptr %t101, i32 0, i32 0
  store i64 3, ptr %t102
  %t103 = load { i64, [2 x i64] }, ptr %t101
  %t106 = call %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %s4, i32 4, { i64, [2 x i64] } %t103)
  store %"compiler/scope:Val" %t106, ptr %l147
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s4)
  %t107 = load %"compiler/scope:Val", ptr %l147
  store %"compiler/scope:Val" %t107, ptr %rv
  br label %ret
bb36:
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t109 = load ptr, ptr %l148, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb37, label %bb38
bb37:
  %t112 = load ptr, ptr %l148, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 18}
  %t115 = icmp eq i64 %t113, 2
  store i1 %t115, ptr %l149, !tbaa !21
  br label %bb38
bb38:
  %t116 = load i1, ptr %l149, !tbaa !21
  br i1 %t116, label %bb39, label %bb40
bb39:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [5 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t119, i32 0, i32 1
  %t121 = load i32, ptr %t120
  store i32 %t121, ptr %l11, !tbaa !23
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [5 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t125, i32 0, i32 2
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l12, !tbaa !29
  br label %bb45
bb40:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l156, !tbaa !29
  store i1 false, ptr %l157, !tbaa !21
  %t130 = load ptr, ptr %l156, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb41, label %bb42
bb41:
  %t133 = load ptr, ptr %l156, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 18}
  %t136 = icmp eq i64 %t134, 4
  store i1 %t136, ptr %l157, !tbaa !21
  br label %bb42
bb42:
  %t137 = load i1, ptr %l157, !tbaa !21
  br i1 %t137, label %bb43, label %bb44
bb43:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [5 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t140, i32 0, i32 1
  %t142 = load i32, ptr %t141
  store i32 %t142, ptr %l11, !tbaa !23
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [5 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t146, i32 0, i32 2
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l12, !tbaa !29
  br label %bb45
bb44:
  br label %bb57
bb45:
  %t150 = load ptr, ptr %l12, !tbaa !29
  store ptr %t150, ptr %l164, !tbaa !29
  store i1 false, ptr %l165, !tbaa !21
  %t151 = load ptr, ptr %l164, !tbaa !29
  %t152 = icmp ne ptr %t151, null
  br i1 %t152, label %bb46, label %bb47
bb46:
  %t154 = load ptr, ptr %l164, !tbaa !29
  %t155 = load i64, ptr %t154, !range !{i64 0, i64 8}
  %t157 = icmp eq i64 %t155, 0
  store i1 %t157, ptr %l165, !tbaa !21
  br label %bb47
bb47:
  %t158 = load i1, ptr %l165, !tbaa !21
  br i1 %t158, label %bb48, label %bb49
bb48:
  %t159 = load ptr, ptr %l12, !tbaa !29
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t161, i32 0, i32 0
  %t163 = load %"compiler/source:Span", ptr %t162
  store %"compiler/source:Span" %t163, ptr %l13
  %t165 = load ptr, ptr %l12, !tbaa !29
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t167, i32 0, i32 1
  %t169 = load i32, ptr %t168
  store i32 %t169, ptr %l14, !tbaa !23
  %t171 = load ptr, ptr %l12, !tbaa !29
  %t173 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t173, i32 0, i32 2
  %t175 = load i32, ptr %t174
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t180 = sext i32 %t175 to i64
  %t183 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t177, i64 %t180)
  store i1 %t183, ptr %l178
  br label %bb50
bb49:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb51
bb50:
  %t184 = load i1, ptr %l178, !tbaa !21
  store i1 %t184, ptr %l168, !tbaa !21
  br label %bb51
bb51:
  %t185 = load i1, ptr %l168, !tbaa !21
  br i1 %t185, label %bb52, label %bb53
bb52:
  %t186 = load ptr, ptr %l12, !tbaa !29
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t188, i32 0, i32 0
  %t190 = load %"compiler/source:Span", ptr %t189
  store %"compiler/source:Span" %t190, ptr %l16
  %t192 = load ptr, ptr %l12, !tbaa !29
  %t194 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 1
  %t195 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t194, i32 0, i32 1
  %t196 = load i32, ptr %t195
  store i32 %t196, ptr %l17, !tbaa !23
  %t198 = load ptr, ptr %l12, !tbaa !29
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t200, i32 0, i32 2
  %t202 = load i32, ptr %t201
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t207 = sext i32 %t202 to i64
  %t208 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadCursor(ptr %v0, ptr %v1, ptr %t204, i64 %t207, ptr %t208)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load ptr, ptr %l12, !tbaa !29
  %t214 = load i32, ptr %l11, !tbaa !23
  %t215 = load { i64, [2 x i64] }, ptr %l2
  %t220 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eread(ptr %v0, ptr %v1, ptr %t212, ptr %t213, i32 %t214, { i64, [2 x i64] } %t215)
  store %"compiler/scope:Val" %t220, ptr %l193
  br label %bb56
bb56:
  %t221 = load %"compiler/scope:Val", ptr %l193
  store %"compiler/scope:Val" %t221, ptr %rv
  br label %ret
bb57:
  %t222 = load ptr, ptr %l1, !tbaa !29
  store ptr %t222, ptr %l194, !tbaa !29
  store i1 false, ptr %l195, !tbaa !21
  %t223 = load ptr, ptr %l194, !tbaa !29
  %t224 = icmp ne ptr %t223, null
  br i1 %t224, label %bb58, label %bb59
bb58:
  %t226 = load ptr, ptr %l194, !tbaa !29
  %t227 = load i64, ptr %t226, !range !{i64 0, i64 18}
  %t229 = icmp eq i64 %t227, 3
  store i1 %t229, ptr %l195, !tbaa !21
  br label %bb59
bb59:
  %t230 = load i1, ptr %l195, !tbaa !21
  br i1 %t230, label %bb60, label %bb61
bb60:
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = getelementptr { i64, [5 x i64] }, ptr %t231, i32 0, i32 1
  %t234 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t233, i32 0, i32 2
  %t235 = load ptr, ptr %t234
  store ptr %t235, ptr %l19, !tbaa !29
  br label %bb62
bb61:
  br label %bb66
bb62:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t237, ptr %t238)
  br label %bb63
bb63:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load ptr, ptr %l19, !tbaa !29
  %t245 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %t241, ptr %t242)
  store { i64, [2 x i64] } %t245, ptr %l204
  br label %bb64
bb64:
  %t246 = load { i64, [2 x i64] }, ptr %l204
  %t247 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t246)
  store %"compiler/scope:Val" %t247, ptr %l205
  br label %bb65
bb65:
  %t248 = load %"compiler/scope:Val", ptr %l205
  store %"compiler/scope:Val" %t248, ptr %rv
  br label %ret
bb66:
  %t249 = load ptr, ptr %l1, !tbaa !29
  store ptr %t249, ptr %l206, !tbaa !29
  store i1 false, ptr %l207, !tbaa !21
  %t250 = load ptr, ptr %l206, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb67, label %bb68
bb67:
  %t253 = load ptr, ptr %l206, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 18}
  %t256 = icmp eq i64 %t254, 5
  store i1 %t256, ptr %l207, !tbaa !21
  br label %bb68
bb68:
  %t257 = load i1, ptr %l207, !tbaa !21
  br i1 %t257, label %bb69, label %bb70
bb69:
  %t258 = load ptr, ptr %l1, !tbaa !29
  %t260 = getelementptr { i64, [5 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t260, i32 0, i32 2
  %t262 = load ptr, ptr %t261
  store ptr %t262, ptr %l20, !tbaa !29
  br label %bb71
bb70:
  br label %bb138
bb71:
  store %olang.scope zeroinitializer, ptr %s8
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/scope:Scoper", ptr %t264, i32 0, i32 78
  %t267 = load i1, ptr %t266, !tbaa !21
  store i1 %t267, ptr %l21, !tbaa !21
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/scope:Scoper", ptr %t269, i32 0, i32 78
  store i1 false, ptr %t271, !tbaa !21
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/scope:Scoper", ptr %t272, i32 0, i32 197
  %t275 = load i64, ptr %t274, !tbaa !24
  store i64 %t275, ptr %l22, !tbaa !24
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/scope:Scoper", ptr %t277, i32 0, i32 197
  store i64 -1, ptr %t279, !tbaa !24
  %t280 = load { i64, [2 x i64] }, ptr %l3
  %t282 = call i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %t280)
  store i1 %t282, ptr %l219
  br label %bb72
bb72:
  %t283 = load i1, ptr %l219, !tbaa !21
  br i1 %t283, label %bb73, label %bb74
bb73:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/scope:Scoper", ptr %t284, i32 0, i32 42
  %t287 = load i64, ptr %t286, !tbaa !24
  %t289 = icmp sge i64 %t287, 0
  store i1 %t289, ptr %l220, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb75
bb75:
  %t291 = load i1, ptr %l220, !tbaa !21
  br i1 %t291, label %bb76, label %bb77
bb76:
  %t292 = load ptr, ptr %l0, !tbaa !29
  store ptr %t292, ptr %l225, !tbaa !29
  %t293 = load ptr, ptr %l20, !tbaa !29
  %t295 = getelementptr %"compiler/typed:Promote", ptr %t293, i32 0, i32 0
  %t296 = load ptr, ptr %t295, !tbaa !29
  %t298 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t296)
  store i32 %t298, ptr %l228
  br label %bb78
bb77:
  store i1 false, ptr %l224, !tbaa !21
  br label %bb80
bb78:
  %t299 = load ptr, ptr %l225, !tbaa !29
  %t300 = load i32, ptr %l228, !tbaa !23
  %t301 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %t299, i32 %t300)
  store i1 %t301, ptr %l229
  br label %bb79
bb79:
  %t302 = load i1, ptr %l229, !tbaa !21
  store i1 %t302, ptr %l224, !tbaa !21
  br label %bb80
bb80:
  %t303 = load i1, ptr %l224, !tbaa !21
  br i1 %t303, label %bb81, label %bb82
bb81:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load { i64, [2 x i64] }, ptr %l3
  %t308 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailCloses(ptr %v0, ptr %t304, { i64, [2 x i64] } %t305)
  store i1 %t308, ptr %l233
  br label %bb83
bb82:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb84
bb83:
  %t309 = load i1, ptr %l233, !tbaa !21
  store i1 %t309, ptr %l230, !tbaa !21
  br label %bb84
bb84:
  %t310 = load i1, ptr %l230, !tbaa !21
  br i1 %t310, label %bb85, label %bb86
bb85:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/scope:Scoper", ptr %t311, i32 0, i32 42
  %t314 = load i64, ptr %t313, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t315
  %t316 = getelementptr { i64, [2 x i64] }, ptr %t315, i32 0, i32 0
  store i64 2, ptr %t316
  %t318 = insertvalue { i64 } undef, i64 %t314, 0
  %t319 = getelementptr { i64, [2 x i64] }, ptr %t315, i32 0, i32 1
  store { i64 } %t318, ptr %t319
  %t320 = load { i64, [2 x i64] }, ptr %t315
  store { i64, [2 x i64] } %t320, ptr %l3
  %t322 = load ptr, ptr %l0, !tbaa !29
  store ptr %t322, ptr %l237, !tbaa !29
  %t323 = load ptr, ptr %l20, !tbaa !29
  %t325 = getelementptr %"compiler/typed:Promote", ptr %t323, i32 0, i32 0
  %t326 = load ptr, ptr %t325, !tbaa !29
  %t328 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t326)
  store %"compiler/source:Span" %t328, ptr %l240
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t329 = load ptr, ptr %l237, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l240
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailDtorRow(ptr %v0, ptr %t329, %"compiler/source:Span" %t330)
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load ptr, ptr %l20, !tbaa !29
  %t334 = getelementptr %"compiler/typed:Promote", ptr %t332, i32 0, i32 1
  %t335 = load i32, ptr %t334, !tbaa !23
  %t337 = sext i32 %t335 to i64
  %t340 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t331, i64 %t337)
  store { i64, [2 x i64] } %t340, ptr %l245
  br label %bb90
bb90:
  %t341 = load { i64, [2 x i64] }, ptr %l245
  store { i64, [2 x i64] } %t341, ptr %l23
  %t342 = load { i64, [2 x i64] }, ptr %l23
  %t344 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t342)
  store i1 %t344, ptr %l247
  br label %bb91
bb91:
  %t345 = load i1, ptr %l247, !tbaa !21
  br i1 %t345, label %bb92, label %bb93
bb92:
  %t346 = load { i64, [2 x i64] }, ptr %l3
  %t348 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t346)
  store i1 %t348, ptr %l249
  br label %bb94
bb93:
  br label %bb99
bb94:
  %t349 = load i1, ptr %l249, !tbaa !21
  br i1 %t349, label %bb95, label %bb96
bb95:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load { i64, [2 x i64] }, ptr %l3
  %t352 = load { i64, [2 x i64] }, ptr %l23
  %t356 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t350, { i64, [2 x i64] } %t351, { i64, [2 x i64] } %t352)
  store { i64, [2 x i64] } %t356, ptr %l254
  br label %bb97
bb96:
  %t357 = load { i64, [2 x i64] }, ptr %l23
  store { i64, [2 x i64] } %t357, ptr %l250
  br label %bb98
bb97:
  %t359 = load { i64, [2 x i64] }, ptr %l254
  store { i64, [2 x i64] } %t359, ptr %l250
  br label %bb98
bb98:
  %t360 = load { i64, [2 x i64] }, ptr %l250
  store { i64, [2 x i64] } %t360, ptr %l3
  br label %bb99
bb99:
  %t361 = load ptr, ptr %l0, !tbaa !29
  store ptr %t361, ptr %l256, !tbaa !29
  %t362 = load ptr, ptr %l20, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Promote", ptr %t362, i32 0, i32 1
  %t365 = load i32, ptr %t364, !tbaa !23
  store i32 %t365, ptr %l258, !tbaa !23
  %t366 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t366, ptr %l259
  %t367 = load ptr, ptr %l20, !tbaa !29
  %t369 = getelementptr %"compiler/typed:Promote", ptr %t367, i32 0, i32 0
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t372 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t370)
  store %"compiler/source:Span" %t372, ptr %l262
  br label %bb100
bb100:
  %t373 = load ptr, ptr %l256, !tbaa !29
  %t374 = load i32, ptr %l258, !tbaa !23
  %t375 = load { i64, [2 x i64] }, ptr %l259
  %t376 = load %"compiler/source:Span", ptr %l262
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %t373, i32 %t374, { i64, [2 x i64] } %t375, %"compiler/source:Span" %t376)
  br label %bb101
bb101:
  %t377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t377, ptr %l263, !tbaa !29
  %t378 = load i1, ptr %l21, !tbaa !21
  br i1 %t378, label %bb102, label %bb103
bb102:
  %t380 = load ptr, ptr %l20, !tbaa !29
  %t382 = getelementptr %"compiler/typed:Promote", ptr %t380, i32 0, i32 0
  %t383 = load ptr, ptr %t382, !tbaa !29
  %t385 = call i1 @compiler_2fscope_2eanyArrayBox(ptr %v1, ptr %t383)
  store i1 %t385, ptr %l268
  br label %bb104
bb103:
  store i1 false, ptr %l265, !tbaa !21
  br label %bb105
bb104:
  %t386 = load i1, ptr %l268, !tbaa !21
  store i1 %t386, ptr %l265, !tbaa !21
  br label %bb105
bb105:
  %t387 = load i1, ptr %l265, !tbaa !21
  %t388 = load ptr, ptr %l263, !tbaa !29
  %t389 = getelementptr %"compiler/scope:Scoper", ptr %t388, i32 0, i32 79
  store i1 %t387, ptr %t389, !tbaa !21
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load ptr, ptr %l20, !tbaa !29
  %t393 = getelementptr %"compiler/typed:Promote", ptr %t391, i32 0, i32 0
  %t394 = load ptr, ptr %t393, !tbaa !29
  %t397 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeCase(ptr %v0, ptr %v1, ptr %t390, ptr %t394)
  store i1 %t397, ptr %l272
  br label %bb106
bb106:
  %t398 = load i1, ptr %l272, !tbaa !21
  br i1 %t398, label %bb107, label %bb108
bb107:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load i64, ptr %l4, !tbaa !24
  %t403 = getelementptr %"compiler/scope:Scoper", ptr %t399, i32 0, i32 198
  store i64 %t400, ptr %t403, !tbaa !24
  br label %bb109
bb108:
  br label %bb109
bb109:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load ptr, ptr %l20, !tbaa !29
  %t407 = getelementptr %"compiler/typed:Promote", ptr %t405, i32 0, i32 0
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t410 = load { i64, [2 x i64] }, ptr %l3
  %t414 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t404, ptr %t408, { i64, [2 x i64] } %t410)
  store %"compiler/scope:Val" %t414, ptr %l280
  br label %bb110
bb110:
  %t415 = load %"compiler/scope:Val", ptr %l280
  store %"compiler/scope:Val" %t415, ptr %l24
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t418 = getelementptr %"compiler/scope:Scoper", ptr %t416, i32 0, i32 79
  store i1 false, ptr %t418, !tbaa !21
  %t419 = load i1, ptr %l21, !tbaa !21
  %t421 = xor i1 %t419, true
  br i1 %t421, label %bb111, label %bb112
bb111:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load ptr, ptr %l20, !tbaa !29
  %t426 = getelementptr %"compiler/typed:Promote", ptr %t424, i32 0, i32 0
  %t427 = load ptr, ptr %t426, !tbaa !29
  %t430 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertedPlace(ptr %v0, ptr %v1, ptr %s8, ptr %t423, ptr %t427)
  store ptr %t430, ptr %l288
  br label %bb113
bb112:
  store ptr null, ptr %l284, !tbaa !29
  br label %bb114
bb113:
  %t431 = load ptr, ptr %l288, !tbaa !29
  store ptr %t431, ptr %l284, !tbaa !29
  br label %bb114
bb114:
  %t432 = load ptr, ptr %l284, !tbaa !29
  store ptr %t432, ptr %l25, !tbaa !29
  %t433 = load ptr, ptr %l25, !tbaa !29
  %t435 = icmp eq ptr %t433, null
  %t437 = xor i1 %t435, true
  br i1 %t437, label %bb115, label %bb116
bb115:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load ptr, ptr %l25, !tbaa !29
  %t443 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %s8, ptr %t439, ptr %t440, i1 false)
  store { i64, [2 x i64] } %t443, ptr %l294
  br label %bb117
bb116:
  br label %bb122
bb117:
  %t444 = load { i64, [2 x i64] }, ptr %l294
  store { i64, [2 x i64] } %t444, ptr %l26
  %t445 = load { i64, [2 x i64] }, ptr %l26
  %t447 = extractvalue { i64, [2 x i64] } %t445, 0
  %t448 = icmp eq i64 %t447, 0
  %t450 = xor i1 %t448, true
  br i1 %t450, label %bb118, label %bb119
bb118:
  %t452 = load { i64, [2 x i64] }, ptr %l26
  %t454 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t452)
  store %"compiler/scope:Val" %t454, ptr %l299
  br label %bb120
bb119:
  br label %bb121
bb120:
  call void @__olang_scope_close(ptr %s8)
  %t455 = load %"compiler/scope:Val", ptr %l299
  store %"compiler/scope:Val" %t455, ptr %rv
  br label %ret
bb121:
  br label %bb122
bb122:
  %t456 = getelementptr %"compiler/scope:Val", ptr %l24, i32 0, i32 0
  %t457 = load i32, ptr %t456, !range !{i32 0, i32 5}
  %t459 = trunc i64 3 to i32
  %t460 = icmp eq i32 %t457, %t459
  br i1 %t460, label %bb123, label %bb124
bb123:
  %t462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t462, ptr %l303, !tbaa !29
  %t463 = load ptr, ptr %l20, !tbaa !29
  %t465 = getelementptr %"compiler/typed:Promote", ptr %t463, i32 0, i32 0
  %t466 = load ptr, ptr %t465, !tbaa !29
  %t468 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t466)
  store i32 %t468, ptr %l306
  br label %bb125
bb124:
  store i1 false, ptr %l302, !tbaa !21
  br label %bb127
bb125:
  %t469 = load ptr, ptr %l303, !tbaa !29
  %t470 = load i32, ptr %l306, !tbaa !23
  %t471 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t469, i32 %t470)
  store i1 %t471, ptr %l307
  br label %bb126
bb126:
  %t472 = load i1, ptr %l307, !tbaa !21
  store i1 %t472, ptr %l302, !tbaa !21
  br label %bb127
bb127:
  %t473 = load i1, ptr %l302, !tbaa !21
  br i1 %t473, label %bb128, label %bb129
bb128:
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t475 = load i64, ptr %l22, !tbaa !24
  %t478 = getelementptr %"compiler/scope:Scoper", ptr %t474, i32 0, i32 196
  store i64 %t475, ptr %t478, !tbaa !24
  %t479 = load ptr, ptr %l0, !tbaa !29
  store ptr %t479, ptr %l310, !tbaa !29
  %t480 = getelementptr %"compiler/scope:Val", ptr %l24, i32 0, i32 1
  %t481 = load { i64, [2 x i64] }, ptr %t480
  store { i64, [2 x i64] } %t481, ptr %l311
  %t482 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t482, ptr %l312
  %t483 = load ptr, ptr %l0, !tbaa !29
  store ptr %t483, ptr %l313, !tbaa !29
  %t484 = load ptr, ptr %l20, !tbaa !29
  %t486 = getelementptr %"compiler/typed:Promote", ptr %t484, i32 0, i32 0
  %t487 = load ptr, ptr %t486, !tbaa !29
  %t489 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t487)
  store i32 %t489, ptr %l316
  br label %bb130
bb129:
  br label %bb136
bb130:
  %t490 = load ptr, ptr %l313, !tbaa !29
  %t491 = load i32, ptr %l316, !tbaa !23
  %t492 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t490, i32 %t491)
  store i1 %t492, ptr %l317
  br label %bb131
bb131:
  %t493 = load ptr, ptr %l20, !tbaa !29
  %t495 = getelementptr %"compiler/typed:Promote", ptr %t493, i32 0, i32 0
  %t496 = load ptr, ptr %t495, !tbaa !29
  store ptr %t496, ptr %l319, !tbaa !29
  %t497 = load i1, ptr %l21, !tbaa !21
  br i1 %t497, label %bb132, label %bb133
bb132:
  %t499 = load i64, ptr @G_2ecompiler_2fscope_2eFitAnyCopy, !tbaa !24
  store i64 %t499, ptr %l321, !tbaa !24
  br label %bb134
bb133:
  %t501 = load i64, ptr @G_2ecompiler_2fscope_2eFitValue, !tbaa !24
  store i64 %t501, ptr %l321, !tbaa !24
  br label %bb134
bb134:
  %t503 = load ptr, ptr %l310, !tbaa !29
  %t504 = load { i64, [2 x i64] }, ptr %l311
  %t505 = load { i64, [2 x i64] }, ptr %l312
  %t506 = load i1, ptr %l317, !tbaa !21
  %t507 = load ptr, ptr %l319, !tbaa !29
  %t508 = load i64, ptr %l321, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t503, { i64, [2 x i64] } %t504, { i64, [2 x i64] } %t505, i1 %t506, ptr %t507, i64 %t508)
  br label %bb135
bb135:
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t511 = getelementptr %"compiler/scope:Scoper", ptr %t509, i32 0, i32 196
  store i64 -1, ptr %t511, !tbaa !24
  br label %bb136
bb136:
  %t512 = load { i64, [2 x i64] }, ptr %l3
  %t514 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %t512)
  store %"compiler/scope:Val" %t514, ptr %l326
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s8)
  %t515 = load %"compiler/scope:Val", ptr %l326
  store %"compiler/scope:Val" %t515, ptr %rv
  br label %ret
bb138:
  %t516 = load ptr, ptr %l1, !tbaa !29
  store ptr %t516, ptr %l327, !tbaa !29
  store i1 false, ptr %l328, !tbaa !21
  %t517 = load ptr, ptr %l327, !tbaa !29
  %t518 = icmp ne ptr %t517, null
  br i1 %t518, label %bb139, label %bb140
bb139:
  %t520 = load ptr, ptr %l327, !tbaa !29
  %t521 = load i64, ptr %t520, !range !{i64 0, i64 18}
  %t523 = icmp eq i64 %t521, 6
  store i1 %t523, ptr %l328, !tbaa !21
  br label %bb140
bb140:
  %t524 = load i1, ptr %l328, !tbaa !21
  br i1 %t524, label %bb141, label %bb142
bb141:
  %t525 = load ptr, ptr %l1, !tbaa !29
  %t527 = getelementptr { i64, [5 x i64] }, ptr %t525, i32 0, i32 1
  %t528 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t527, i32 0, i32 0
  %t529 = load %"compiler/source:Span", ptr %t528
  store %"compiler/source:Span" %t529, ptr %l27
  %t531 = load ptr, ptr %l1, !tbaa !29
  %t533 = getelementptr { i64, [5 x i64] }, ptr %t531, i32 0, i32 1
  %t534 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t533, i32 0, i32 1
  %t535 = load i32, ptr %t534
  store i32 %t535, ptr %l28, !tbaa !23
  %t537 = load ptr, ptr %l1, !tbaa !29
  %t539 = getelementptr { i64, [5 x i64] }, ptr %t537, i32 0, i32 1
  %t540 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t539, i32 0, i32 2
  %t541 = load ptr, ptr %t540
  store ptr %t541, ptr %l29, !tbaa !29
  br label %bb143
bb142:
  br label %bb145
bb143:
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load %"compiler/source:Span", ptr %l27
  %t545 = load i32, ptr %l28, !tbaa !23
  %t546 = load ptr, ptr %l29, !tbaa !29
  %t547 = load { i64, [2 x i64] }, ptr %l2
  %t553 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecall(ptr %v0, ptr %v1, ptr %t543, %"compiler/source:Span" %t544, i32 %t545, ptr %t546, { i64, [2 x i64] } %t547)
  store %"compiler/scope:Val" %t553, ptr %l342
  br label %bb144
bb144:
  %t554 = load %"compiler/scope:Val", ptr %l342
  store %"compiler/scope:Val" %t554, ptr %rv
  br label %ret
bb145:
  %t555 = load ptr, ptr %l1, !tbaa !29
  store ptr %t555, ptr %l343, !tbaa !29
  store i1 false, ptr %l344, !tbaa !21
  %t556 = load ptr, ptr %l343, !tbaa !29
  %t557 = icmp ne ptr %t556, null
  br i1 %t557, label %bb146, label %bb147
bb146:
  %t559 = load ptr, ptr %l343, !tbaa !29
  %t560 = load i64, ptr %t559, !range !{i64 0, i64 18}
  %t562 = icmp eq i64 %t560, 7
  store i1 %t562, ptr %l344, !tbaa !21
  br label %bb147
bb147:
  %t563 = load i1, ptr %l344, !tbaa !21
  br i1 %t563, label %bb148, label %bb149
bb148:
  %t564 = load ptr, ptr %l1, !tbaa !29
  %t566 = getelementptr { i64, [5 x i64] }, ptr %t564, i32 0, i32 1
  %t567 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t566, i32 0, i32 1
  %t568 = load i32, ptr %t567
  store i32 %t568, ptr %l30, !tbaa !23
  %t570 = load ptr, ptr %l1, !tbaa !29
  %t572 = getelementptr { i64, [5 x i64] }, ptr %t570, i32 0, i32 1
  %t573 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t572, i32 0, i32 2
  %t574 = load ptr, ptr %t573
  store ptr %t574, ptr %l31, !tbaa !29
  br label %bb150
bb149:
  br label %bb232
bb150:
  store %olang.scope zeroinitializer, ptr %s16
  %t576 = load ptr, ptr %l31, !tbaa !29
  %t578 = getelementptr %"compiler/typed:Make", ptr %t576, i32 0, i32 0
  %t579 = load i32, ptr %t578, !range !{i32 0, i32 5}
  %t581 = trunc i64 1 to i32
  %t582 = icmp eq i32 %t579, %t581
  %t584 = xor i1 %t582, true
  br i1 %t584, label %bb151, label %bb152
bb151:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb153
bb152:
  br label %bb153
bb153:
  %t586 = load ptr, ptr %l31, !tbaa !29
  %t588 = getelementptr %"compiler/typed:Make", ptr %t586, i32 0, i32 0
  %t589 = load i32, ptr %t588, !range !{i32 0, i32 5}
  %t591 = trunc i64 4 to i32
  %t592 = icmp eq i32 %t589, %t591
  br i1 %t592, label %bb154, label %bb155
bb154:
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t595 = load ptr, ptr %l31, !tbaa !29
  %t596 = load i32, ptr %l30, !tbaa !23
  %t597 = load { i64, [2 x i64] }, ptr %l3
  %t602 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownCopy(ptr %v0, ptr %v1, ptr %t594, ptr %t595, i32 %t596, { i64, [2 x i64] } %t597)
  store %"compiler/scope:Val" %t602, ptr %l362
  br label %bb156
bb155:
  br label %bb157
bb156:
  call void @__olang_scope_close(ptr %s16)
  %t603 = load %"compiler/scope:Val", ptr %l362
  store %"compiler/scope:Val" %t603, ptr %rv
  br label %ret
bb157:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t606 = getelementptr %"compiler/scope:Scoper", ptr %t604, i32 0, i32 79
  %t607 = load i1, ptr %t606, !tbaa !21
  br i1 %t607, label %bb158, label %bb159
bb158:
  %t609 = load i64, ptr @G_2ecompiler_2fscope_2eFitAnyCopy, !tbaa !24
  store i64 %t609, ptr %l365, !tbaa !24
  br label %bb161
bb159:
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t612 = load ptr, ptr %l31, !tbaa !29
  %t614 = getelementptr %"compiler/typed:Make", ptr %t612, i32 0, i32 0
  %t615 = load i32, ptr %t614, !range !{i32 0, i32 5}
  %t618 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eitemKind(ptr %v0, ptr %t611, i32 %t615)
  store i64 %t618, ptr %l370
  br label %bb160
bb160:
  %t619 = load i64, ptr %l370, !tbaa !24
  store i64 %t619, ptr %l365, !tbaa !24
  br label %bb161
bb161:
  %t620 = load i64, ptr %l365, !tbaa !24
  store i64 %t620, ptr %l32, !tbaa !24
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = getelementptr %"compiler/scope:Scoper", ptr %t621, i32 0, i32 79
  store i1 false, ptr %t623, !tbaa !21
  %t624 = load ptr, ptr %l31, !tbaa !29
  %t626 = getelementptr %"compiler/typed:Make", ptr %t624, i32 0, i32 4
  %t627 = load i32, ptr %t626, !tbaa !23
  %t629 = icmp sge i32 %t627, 0
  br i1 %t629, label %bb162, label %bb163
bb162:
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t632 = load ptr, ptr %l31, !tbaa !29
  %t634 = getelementptr %"compiler/typed:Make", ptr %t632, i32 0, i32 4
  %t635 = load i32, ptr %t634, !tbaa !23
  %t636 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t631, i32 %t635, { i64, [2 x i64] } %t636)
  br label %bb164
bb163:
  br label %bb165
bb164:
  br label %bb165
bb165:
  %t640 = load ptr, ptr %l0, !tbaa !29
  %t641 = load ptr, ptr %l31, !tbaa !29
  %t643 = getelementptr %"compiler/typed:Make", ptr %t641, i32 0, i32 3
  %t644 = load ptr, ptr %t643, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t645
  %t646 = getelementptr { i64, [2 x i64] }, ptr %t645, i32 0, i32 0
  store i64 0, ptr %t646
  %t647 = load { i64, [2 x i64] }, ptr %t645
  %t651 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t640, ptr %t644, { i64, [2 x i64] } %t647)
  store %"compiler/scope:Val" %t651, ptr %l383
  br label %bb166
bb166:
  %t652 = load ptr, ptr %l31, !tbaa !29
  %t654 = getelementptr %"compiler/typed:Make", ptr %t652, i32 0, i32 2
  %t655 = load { i64, ptr }, ptr %t654, !tbaa !27
  %t657 = extractvalue { i64, ptr } %t655, 0
  store i64 %t657, ptr %l386, !tbaa !24
  store %"compiler/scope:Val" zeroinitializer, ptr %l387
  %t658 = load i64, ptr %l386, !tbaa !24
  %t659 = icmp sgt i64 %t658, 0
  br i1 %t659, label %bb167, label %bb168
bb167:
  %t661 = call %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %s16, i32 0, { i64, [2 x i64] } zeroinitializer)
  store %"compiler/scope:Val" %t661, ptr %l389
  br label %bb169
bb168:
  %t662 = load i64, ptr %l386, !tbaa !24
  %t663 = icmp sge i64 %t662, 0
  br i1 %t663, label %bb170, label %bb171
bb169:
  %t665 = load %"compiler/scope:Val", ptr %l389
  store %"compiler/scope:Val" %t665, ptr %l387
  br label %bb168
bb170:
  %t666 = load i64, ptr %l386, !tbaa !24
  %t667 = icmp sle i64 %t666, 288230376151711743
  br i1 %t667, label %bb172, label %bb173
bb171:
  call void @__olang_check_failed(ptr @olang_loc_c2fa93d259f2a930_39b628a0a193c8f4)
  unreachable
bb172:
  %t669 = load i64, ptr %l386, !tbaa !24
  %t670 = mul i64 %t669, 32
  %t671 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t670)
  %t672 = load %"compiler/scope:Val", ptr %l387
  store i64 0, ptr %t673
  br label %fill.674
fill.674:
  %t677 = load i64, ptr %t673
  %t678 = icmp slt i64 %t677, %t669
  br i1 %t678, label %fillb.675, label %filld.676
fillb.675:
  %t679 = getelementptr %"compiler/scope:Val", ptr %t671, i64 %t677
  store %"compiler/scope:Val" %t672, ptr %t679
  %t680 = add i64 %t677, 1
  store i64 %t680, ptr %t673
  br label %fill.674
filld.676:
  %t681 = insertvalue { i64, ptr } undef, i64 %t669, 0
  %t682 = insertvalue { i64, ptr } %t681, ptr %t671, 1
  store { i64, ptr } %t682, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  %t684 = load ptr, ptr %l31, !tbaa !29
  %t686 = getelementptr %"compiler/typed:Make", ptr %t684, i32 0, i32 2
  %t687 = load { i64, ptr }, ptr %t686, !tbaa !27
  %t689 = extractvalue { i64, ptr } %t687, 0
  store i64 %t689, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t691 = load i64, ptr %l35, !tbaa !24
  %t692 = load i64, ptr %l34, !tbaa !24
  %t695 = icmp sgt i64 %t691, %t692
  br i1 %t695, label %bb174, label %bb175
bb173:
  call void @__olang_check_failed(ptr @olang_loc_c2fa93d259f2a930_39b628a0a193c8f4)
  unreachable
bb174:
  %t697 = load i64, ptr %l36, !tbaa !24
  %t699 = icmp sgt i64 %t697, 0
  br i1 %t699, label %bb176, label %bb177
bb175:
  store i64 0, ptr %l399, !tbaa !24
  br label %bb179
bb176:
  %t701 = load i64, ptr %l35, !tbaa !24
  %t702 = load i64, ptr %l34, !tbaa !24
  %t705 = sub i64 %t701, %t702
  %t706 = load i64, ptr %l36, !tbaa !24
  %t709 = add i64 %t705, %t706
  %t711 = sub i64 %t709, 1
  %t712 = load i64, ptr %l36, !tbaa !24
  %t715 = sdiv i64 %t711, %t712
  store i64 %t715, ptr %l402, !tbaa !24
  br label %bb178
bb177:
  store i64 0, ptr %l402, !tbaa !24
  br label %bb178
bb178:
  %t717 = load i64, ptr %l402, !tbaa !24
  store i64 %t717, ptr %l399, !tbaa !24
  br label %bb179
bb179:
  %t718 = load i64, ptr %l399, !tbaa !24
  store i64 %t718, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb180
bb180:
  %t719 = load i64, ptr %l38, !tbaa !24
  %t720 = load i64, ptr %l37, !tbaa !24
  %t723 = icmp slt i64 %t719, %t720
  %t725 = xor i1 %t723, true
  br i1 %t725, label %bb181, label %bb182
bb181:
  br label %bb186
bb182:
  br label %bb183
bb183:
  %t727 = load i64, ptr %l34, !tbaa !24
  %t728 = load i64, ptr %l38, !tbaa !24
  %t729 = load i64, ptr %l36, !tbaa !24
  %t732 = mul i64 %t728, %t729
  %t735 = add i64 %t727, %t732
  store i64 %t735, ptr %l39, !tbaa !24
  %t737 = load i64, ptr %l39, !tbaa !24
  store i64 %t737, ptr %l420, !tbaa !24
  %t738 = load ptr, ptr %l0, !tbaa !29
  %t739 = load ptr, ptr %l31, !tbaa !29
  %t741 = getelementptr %"compiler/typed:Make", ptr %t739, i32 0, i32 2
  %t742 = load { i64, ptr }, ptr %t741, !tbaa !27
  store { i64, ptr } %t742, ptr %l423, !tbaa !27
  %t743 = load i64, ptr %l39, !tbaa !24
  %t745 = getelementptr { i64, ptr }, ptr %l423, i32 0, i32 1
  %t746 = load ptr, ptr %t745, !tbaa !27
  %t747 = getelementptr ptr, ptr %t746, i64 %t743
  %t748 = load ptr, ptr %t747, !tbaa !39
  %t750 = load { i64, [2 x i64] }, ptr %l3
  %t754 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t738, ptr %t748, { i64, [2 x i64] } %t750)
  store %"compiler/scope:Val" %t754, ptr %l428
  br label %bb184
bb184:
  %t755 = load %"compiler/scope:Val", ptr %l428
  %t756 = load i64, ptr %l420, !tbaa !24
  %t757 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t758 = load ptr, ptr %t757, !tbaa !27
  %t759 = getelementptr %"compiler/scope:Val", ptr %t758, i64 %t756
  store %"compiler/scope:Val" %t755, ptr %t759
  br label %bb185
bb185:
  %t760 = load i64, ptr %l38, !tbaa !24
  %t762 = add i64 %t760, 1
  store i64 %t762, ptr %l38, !tbaa !24
  br label %bb180
bb186:
  %t764 = load ptr, ptr %l31, !tbaa !29
  %t766 = getelementptr %"compiler/typed:Make", ptr %t764, i32 0, i32 0
  %t767 = load i32, ptr %t766, !range !{i32 0, i32 5}
  %t769 = trunc i64 1 to i32
  %t770 = icmp eq i32 %t767, %t769
  %t772 = xor i1 %t770, true
  br i1 %t772, label %bb187, label %bb188
bb187:
  store i1 true, ptr %l435, !tbaa !21
  br label %bb189
bb188:
  %t774 = load ptr, ptr %l0, !tbaa !29
  %t776 = getelementptr %"compiler/scope:Scoper", ptr %t774, i32 0, i32 28
  %t777 = load i1, ptr %t776, !tbaa !21
  %t779 = xor i1 %t777, true
  store i1 %t779, ptr %l435, !tbaa !21
  br label %bb189
bb189:
  %t781 = load i1, ptr %l435, !tbaa !21
  br i1 %t781, label %bb190, label %bb191
bb190:
  store i1 true, ptr %l439, !tbaa !21
  br label %bb193
bb191:
  %t782 = load ptr, ptr %l0, !tbaa !29
  %t783 = load ptr, ptr %l31, !tbaa !29
  %t785 = getelementptr %"compiler/typed:Make", ptr %t783, i32 0, i32 2
  %t786 = load { i64, ptr }, ptr %t785, !tbaa !27
  %t787 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t791 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epayloadAgree(ptr %v0, ptr %v1, ptr %s16, ptr %t782, { i64, ptr } %t786, { i64, ptr } %t787)
  store i1 %t791, ptr %l444
  br label %bb192
bb192:
  %t792 = load i1, ptr %l444, !tbaa !21
  store i1 %t792, ptr %l439, !tbaa !21
  br label %bb193
bb193:
  %t793 = load i1, ptr %l439, !tbaa !21
  store i1 %t793, ptr %l40, !tbaa !21
  store i64 0, ptr %l41, !tbaa !24
  %t794 = load ptr, ptr %l31, !tbaa !29
  %t796 = getelementptr %"compiler/typed:Make", ptr %t794, i32 0, i32 2
  %t797 = load { i64, ptr }, ptr %t796, !tbaa !27
  %t799 = extractvalue { i64, ptr } %t797, 0
  store i64 %t799, ptr %l42, !tbaa !24
  store i64 1, ptr %l43, !tbaa !24
  %t801 = load i64, ptr %l42, !tbaa !24
  %t802 = load i64, ptr %l41, !tbaa !24
  %t805 = icmp sgt i64 %t801, %t802
  br i1 %t805, label %bb194, label %bb195
bb194:
  %t807 = load i64, ptr %l43, !tbaa !24
  %t809 = icmp sgt i64 %t807, 0
  br i1 %t809, label %bb196, label %bb197
bb195:
  store i64 0, ptr %l451, !tbaa !24
  br label %bb199
bb196:
  %t811 = load i64, ptr %l42, !tbaa !24
  %t812 = load i64, ptr %l41, !tbaa !24
  %t815 = sub i64 %t811, %t812
  %t816 = load i64, ptr %l43, !tbaa !24
  %t819 = add i64 %t815, %t816
  %t821 = sub i64 %t819, 1
  %t822 = load i64, ptr %l43, !tbaa !24
  %t825 = sdiv i64 %t821, %t822
  store i64 %t825, ptr %l454, !tbaa !24
  br label %bb198
bb197:
  store i64 0, ptr %l454, !tbaa !24
  br label %bb198
bb198:
  %t827 = load i64, ptr %l454, !tbaa !24
  store i64 %t827, ptr %l451, !tbaa !24
  br label %bb199
bb199:
  %t828 = load i64, ptr %l451, !tbaa !24
  store i64 %t828, ptr %l44, !tbaa !24
  store i64 0, ptr %l45, !tbaa !24
  br label %bb200
bb200:
  %t829 = load i64, ptr %l45, !tbaa !24
  %t830 = load i64, ptr %l44, !tbaa !24
  %t833 = icmp slt i64 %t829, %t830
  %t835 = xor i1 %t833, true
  br i1 %t835, label %bb201, label %bb202
bb201:
  br label %bb222
bb202:
  br label %bb203
bb203:
  %t837 = load i64, ptr %l41, !tbaa !24
  %t838 = load i64, ptr %l45, !tbaa !24
  %t839 = load i64, ptr %l43, !tbaa !24
  %t842 = mul i64 %t838, %t839
  %t845 = add i64 %t837, %t842
  store i64 %t845, ptr %l46, !tbaa !24
  %t847 = load i64, ptr %l32, !tbaa !24
  %t848 = load i64, ptr @G_2ecompiler_2fscope_2eFitAnyCopy, !tbaa !24
  %t851 = icmp eq i64 %t847, %t848
  br i1 %t851, label %bb204, label %bb205
bb204:
  %t853 = load ptr, ptr %l0, !tbaa !29
  store ptr %t853, ptr %l476, !tbaa !29
  %t854 = load ptr, ptr %l31, !tbaa !29
  %t856 = getelementptr %"compiler/typed:Make", ptr %t854, i32 0, i32 2
  %t857 = load { i64, ptr }, ptr %t856, !tbaa !27
  store { i64, ptr } %t857, ptr %l478, !tbaa !27
  %t858 = load i64, ptr %l46, !tbaa !24
  %t860 = getelementptr { i64, ptr }, ptr %l478, i32 0, i32 1
  %t861 = load ptr, ptr %t860, !tbaa !27
  %t862 = getelementptr ptr, ptr %t861, i64 %t858
  %t863 = load ptr, ptr %t862, !tbaa !39
  %t865 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t863)
  store i32 %t865, ptr %l481
  br label %bb206
bb205:
  store i1 false, ptr %l475, !tbaa !21
  br label %bb208
bb206:
  %t866 = load ptr, ptr %l476, !tbaa !29
  %t867 = load i32, ptr %l481, !tbaa !23
  %t868 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t866, i32 %t867)
  store i1 %t868, ptr %l482
  br label %bb207
bb207:
  %t869 = load i1, ptr %l482, !tbaa !21
  %t870 = xor i1 %t869, true
  store i1 %t870, ptr %l475, !tbaa !21
  br label %bb208
bb208:
  %t872 = load i1, ptr %l475, !tbaa !21
  store i1 %t872, ptr %l47, !tbaa !21
  %t873 = load i1, ptr %l40, !tbaa !21
  %t875 = xor i1 %t873, true
  br i1 %t875, label %bb209, label %bb210
bb209:
  store i1 true, ptr %l486, !tbaa !21
  br label %bb211
bb210:
  %t877 = load i64, ptr %l46, !tbaa !24
  %t879 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t880 = load ptr, ptr %t879, !tbaa !27
  %t881 = getelementptr %"compiler/scope:Val", ptr %t880, i64 %t877
  %t882 = getelementptr %"compiler/scope:Val", ptr %t881, i32 0, i32 0
  %t883 = load i32, ptr %t882, !range !{i32 0, i32 5}
  %t885 = trunc i64 3 to i32
  %t886 = icmp eq i32 %t883, %t885
  %t888 = xor i1 %t886, true
  store i1 %t888, ptr %l486, !tbaa !21
  br label %bb211
bb211:
  %t890 = load i1, ptr %l486, !tbaa !21
  br i1 %t890, label %bb212, label %bb213
bb212:
  store i1 true, ptr %l491, !tbaa !21
  br label %bb214
bb213:
  %t891 = load i1, ptr %l47, !tbaa !21
  store i1 %t891, ptr %l491, !tbaa !21
  br label %bb214
bb214:
  %t893 = load i1, ptr %l491, !tbaa !21
  br i1 %t893, label %bb215, label %bb216
bb215:
  br label %bb221
bb216:
  br label %bb217
bb217:
  %t894 = load i64, ptr %l4, !tbaa !24
  %t896 = load i1, ptr %l5, !tbaa !21
  %t898 = load i1, ptr %l6, !tbaa !21
  %t900 = load ptr, ptr %l0, !tbaa !29
  %t904 = getelementptr %"compiler/scope:Scoper", ptr %t900, i32 0, i32 196
  store i64 %t894, ptr %t904, !tbaa !24
  %t905 = load ptr, ptr %l0, !tbaa !29
  %t909 = getelementptr %"compiler/scope:Scoper", ptr %t905, i32 0, i32 201
  store i1 %t896, ptr %t909, !tbaa !21
  %t910 = load ptr, ptr %l0, !tbaa !29
  %t914 = getelementptr %"compiler/scope:Scoper", ptr %t910, i32 0, i32 202
  store i1 %t898, ptr %t914, !tbaa !21
  %t915 = load ptr, ptr %l0, !tbaa !29
  store ptr %t915, ptr %l502, !tbaa !29
  %t916 = load i64, ptr %l46, !tbaa !24
  %t918 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t919 = load ptr, ptr %t918, !tbaa !27
  %t920 = getelementptr %"compiler/scope:Val", ptr %t919, i64 %t916
  %t921 = getelementptr %"compiler/scope:Val", ptr %t920, i32 0, i32 1
  %t922 = load { i64, [2 x i64] }, ptr %t921
  store { i64, [2 x i64] } %t922, ptr %l504
  %t923 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t923, ptr %l505
  %t924 = load ptr, ptr %l0, !tbaa !29
  store ptr %t924, ptr %l506, !tbaa !29
  %t925 = load ptr, ptr %l31, !tbaa !29
  %t927 = getelementptr %"compiler/typed:Make", ptr %t925, i32 0, i32 2
  %t928 = load { i64, ptr }, ptr %t927, !tbaa !27
  store { i64, ptr } %t928, ptr %l508, !tbaa !27
  %t929 = load i64, ptr %l46, !tbaa !24
  %t931 = getelementptr { i64, ptr }, ptr %l508, i32 0, i32 1
  %t932 = load ptr, ptr %t931, !tbaa !27
  %t933 = getelementptr ptr, ptr %t932, i64 %t929
  %t934 = load ptr, ptr %t933, !tbaa !39
  %t936 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t934)
  store i32 %t936, ptr %l511
  br label %bb218
bb218:
  %t937 = load ptr, ptr %l506, !tbaa !29
  %t938 = load i32, ptr %l511, !tbaa !23
  %t939 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t937, i32 %t938)
  store i1 %t939, ptr %l512
  br label %bb219
bb219:
  %t940 = load ptr, ptr %l31, !tbaa !29
  %t942 = getelementptr %"compiler/typed:Make", ptr %t940, i32 0, i32 2
  %t943 = load { i64, ptr }, ptr %t942, !tbaa !27
  store { i64, ptr } %t943, ptr %l514, !tbaa !27
  %t944 = load i64, ptr %l46, !tbaa !24
  %t946 = getelementptr { i64, ptr }, ptr %l514, i32 0, i32 1
  %t947 = load ptr, ptr %t946, !tbaa !27
  %t948 = getelementptr ptr, ptr %t947, i64 %t944
  %t949 = load ptr, ptr %t948, !tbaa !39
  %t950 = load i64, ptr %l32, !tbaa !24
  %t951 = load ptr, ptr %l502, !tbaa !29
  %t952 = load { i64, [2 x i64] }, ptr %l504
  %t953 = load { i64, [2 x i64] }, ptr %l505
  %t954 = load i1, ptr %l512, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t951, { i64, [2 x i64] } %t952, { i64, [2 x i64] } %t953, i1 %t954, ptr %t949, i64 %t950)
  br label %bb220
bb220:
  %t957 = load ptr, ptr %l0, !tbaa !29
  %t961 = getelementptr %"compiler/scope:Scoper", ptr %t957, i32 0, i32 196
  store i64 -1, ptr %t961, !tbaa !24
  %t962 = load ptr, ptr %l0, !tbaa !29
  %t966 = getelementptr %"compiler/scope:Scoper", ptr %t962, i32 0, i32 201
  store i1 false, ptr %t966, !tbaa !21
  %t967 = load ptr, ptr %l0, !tbaa !29
  %t971 = getelementptr %"compiler/scope:Scoper", ptr %t967, i32 0, i32 202
  store i1 false, ptr %t971, !tbaa !21
  br label %bb221
bb221:
  %t972 = load i64, ptr %l45, !tbaa !24
  %t974 = add i64 %t972, 1
  store i64 %t974, ptr %l45, !tbaa !24
  br label %bb200
bb222:
  %t976 = load ptr, ptr %l0, !tbaa !29
  %t977 = load i32, ptr %l30, !tbaa !23
  %t980 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t976, i32 %t977)
  store i1 %t980, ptr %l528
  br label %bb223
bb223:
  %t981 = load i1, ptr %l528, !tbaa !21
  %t982 = xor i1 %t981, true
  br i1 %t982, label %bb224, label %bb225
bb224:
  %t984 = load ptr, ptr %l31, !tbaa !29
  %t986 = getelementptr %"compiler/typed:Make", ptr %t984, i32 0, i32 4
  %t987 = load i32, ptr %t986, !tbaa !23
  %t989 = icmp slt i32 %t987, 0
  store i1 %t989, ptr %l530, !tbaa !21
  br label %bb226
bb225:
  store i1 false, ptr %l530, !tbaa !21
  br label %bb226
bb226:
  %t991 = load i1, ptr %l530, !tbaa !21
  br i1 %t991, label %bb227, label %bb228
bb227:
  %t992 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t992, ptr %l534
  br label %bb229
bb228:
  br label %bb230
bb229:
  call void @__olang_scope_close(ptr %s16)
  %t993 = load %"compiler/scope:Val", ptr %l534
  store %"compiler/scope:Val" %t993, ptr %rv
  br label %ret
bb230:
  %t994 = load { i64, [2 x i64] }, ptr %l3
  %t996 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %t994)
  store %"compiler/scope:Val" %t996, ptr %l536
  br label %bb231
bb231:
  call void @__olang_scope_close(ptr %s16)
  %t997 = load %"compiler/scope:Val", ptr %l536
  store %"compiler/scope:Val" %t997, ptr %rv
  br label %ret
bb232:
  %t998 = load ptr, ptr %l1, !tbaa !29
  store ptr %t998, ptr %l537, !tbaa !29
  store i1 false, ptr %l538, !tbaa !21
  %t999 = load ptr, ptr %l537, !tbaa !29
  %t1000 = icmp ne ptr %t999, null
  br i1 %t1000, label %bb233, label %bb234
bb233:
  %t1002 = load ptr, ptr %l537, !tbaa !29
  %t1003 = load i64, ptr %t1002, !range !{i64 0, i64 18}
  %t1005 = icmp eq i64 %t1003, 8
  store i1 %t1005, ptr %l538, !tbaa !21
  br label %bb234
bb234:
  %t1006 = load i1, ptr %l538, !tbaa !21
  br i1 %t1006, label %bb235, label %bb236
bb235:
  %t1007 = load ptr, ptr %l1, !tbaa !29
  %t1009 = getelementptr { i64, [5 x i64] }, ptr %t1007, i32 0, i32 1
  %t1010 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1009, i32 0, i32 2
  %t1011 = load ptr, ptr %t1010
  store ptr %t1011, ptr %l54, !tbaa !29
  br label %bb237
bb236:
  br label %bb247
bb237:
  %t1013 = load ptr, ptr %l0, !tbaa !29
  %t1014 = load ptr, ptr %l54, !tbaa !29
  %t1016 = getelementptr %"compiler/typed:Collect", ptr %t1014, i32 0, i32 2
  %t1017 = load i32, ptr %t1016, !tbaa !23
  %t1018 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t1013, i32 %t1017, { i64, [2 x i64] } %t1018)
  br label %bb238
bb238:
  %t1022 = load ptr, ptr %l0, !tbaa !29
  %t1023 = load ptr, ptr %l54, !tbaa !29
  %t1025 = getelementptr %"compiler/typed:Collect", ptr %t1023, i32 0, i32 0
  %t1026 = load ptr, ptr %t1025, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t1027
  %t1028 = getelementptr { i64, [2 x i64] }, ptr %t1027, i32 0, i32 0
  store i64 0, ptr %t1028
  %t1029 = load { i64, [2 x i64] }, ptr %t1027
  %t1033 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1022, ptr %t1026, { i64, [2 x i64] } %t1029)
  store %"compiler/scope:Val" %t1033, ptr %l551
  br label %bb239
bb239:
  %t1034 = load ptr, ptr %l0, !tbaa !29
  %t1036 = getelementptr %"compiler/scope:Scoper", ptr %t1034, i32 0, i32 129
  %t1037 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t1036, { i64, [2 x i64] } %t1037)
  br label %bb240
bb240:
  %t1040 = load ptr, ptr %l0, !tbaa !29
  %t1041 = load ptr, ptr %l54, !tbaa !29
  %t1043 = getelementptr %"compiler/typed:Collect", ptr %t1041, i32 0, i32 1
  %t1044 = load ptr, ptr %t1043, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblock(ptr %v0, ptr %v1, ptr %t1040, ptr %t1044)
  br label %bb241
bb241:
  %t1048 = load ptr, ptr %l0, !tbaa !29
  %t1050 = getelementptr %"compiler/scope:Scoper", ptr %t1048, i32 0, i32 129
  %t1052 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePop_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t1050)
  %t1053 = extractvalue { i32, { i64, [2 x i64] } } %t1052, 1
  %t1054 = extractvalue { i32, { i64, [2 x i64] } } %t1052, 0
  store i32 %t1054, ptr %l563
  %t1055 = icmp ne i32 %t1054, 0
  br i1 %t1055, label %bb243, label %ok.1056, !prof !99
ok.1056:
  store { i64, [2 x i64] } %t1053, ptr %l562
  br label %bb242
bb242:
  %t1057 = load { i64, [2 x i64] }, ptr %l562
  store { i64, [2 x i64] } %t1057, ptr %l559
  br label %bb245
bb243:
  br label %bb244
bb244:
  br label %bb245
bb245:
  %t1058 = load { i64, [2 x i64] }, ptr %l3
  %t1060 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %t1058)
  store %"compiler/scope:Val" %t1060, ptr %l565
  br label %bb246
bb246:
  %t1061 = load %"compiler/scope:Val", ptr %l565
  store %"compiler/scope:Val" %t1061, ptr %rv
  br label %ret
bb247:
  %t1062 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1062, ptr %l566, !tbaa !29
  store i1 false, ptr %l567, !tbaa !21
  %t1063 = load ptr, ptr %l566, !tbaa !29
  %t1064 = icmp ne ptr %t1063, null
  br i1 %t1064, label %bb248, label %bb249
bb248:
  %t1066 = load ptr, ptr %l566, !tbaa !29
  %t1067 = load i64, ptr %t1066, !range !{i64 0, i64 18}
  %t1069 = icmp eq i64 %t1067, 9
  store i1 %t1069, ptr %l567, !tbaa !21
  br label %bb249
bb249:
  %t1070 = load i1, ptr %l567, !tbaa !21
  br i1 %t1070, label %bb250, label %bb251
bb250:
  %t1071 = load ptr, ptr %l1, !tbaa !29
  %t1073 = getelementptr { i64, [5 x i64] }, ptr %t1071, i32 0, i32 1
  %t1074 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t1073, i32 0, i32 1
  %t1075 = load i32, ptr %t1074
  store i32 %t1075, ptr %l55, !tbaa !23
  %t1077 = load ptr, ptr %l1, !tbaa !29
  %t1079 = getelementptr { i64, [5 x i64] }, ptr %t1077, i32 0, i32 1
  %t1080 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t1079, i32 0, i32 2
  %t1081 = load i32, ptr %t1080, !range !{i32 0, i32 52}
  store i32 %t1081, ptr %l56
  %t1083 = load ptr, ptr %l1, !tbaa !29
  %t1085 = getelementptr { i64, [5 x i64] }, ptr %t1083, i32 0, i32 1
  %t1086 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t1085, i32 0, i32 4
  %t1087 = load { i64, ptr }, ptr %t1086
  store { i64, ptr } %t1087, ptr %l57, !tbaa !27
  br label %bb252
bb251:
  br label %bb310
bb252:
  %t1089 = load i32, ptr %l56, !range !{i32 0, i32 52}
  %t1091 = trunc i64 20 to i32
  %t1092 = icmp eq i32 %t1089, %t1091
  br i1 %t1092, label %bb253, label %bb254
bb253:
  %t1094 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t1096 = extractvalue { i64, ptr } %t1094, 0
  %t1098 = icmp eq i64 %t1096, 1
  store i1 %t1098, ptr %l578, !tbaa !21
  br label %bb255
bb254:
  store i1 false, ptr %l578, !tbaa !21
  br label %bb255
bb255:
  %t1100 = load i1, ptr %l578, !tbaa !21
  br i1 %t1100, label %bb256, label %bb257
bb256:
  %t1101 = load ptr, ptr %l0, !tbaa !29
  %t1102 = load i32, ptr %l55, !tbaa !23
  %t1105 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t1101, i32 %t1102)
  store i1 %t1105, ptr %l585
  br label %bb258
bb257:
  store i1 false, ptr %l582, !tbaa !21
  br label %bb259
bb258:
  %t1106 = load i1, ptr %l585, !tbaa !21
  store i1 %t1106, ptr %l582, !tbaa !21
  br label %bb259
bb259:
  %t1107 = load i1, ptr %l582, !tbaa !21
  br i1 %t1107, label %bb260, label %bb261
bb260:
  %t1108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1108, ptr %l587, !tbaa !29
  %t1109 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1109, ptr %l588, !tbaa !27
  %t1110 = getelementptr { i64, ptr }, ptr %l588, i32 0, i32 1
  %t1111 = load ptr, ptr %t1110, !tbaa !27
  %t1112 = getelementptr ptr, ptr %t1111, i64 0
  %t1113 = load ptr, ptr %t1112, !tbaa !39
  %t1115 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1113)
  store i32 %t1115, ptr %l590
  br label %bb262
bb261:
  store i1 false, ptr %l586, !tbaa !21
  br label %bb264
bb262:
  %t1116 = load ptr, ptr %l587, !tbaa !29
  %t1117 = load i32, ptr %l590, !tbaa !23
  %t1118 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t1116, i32 %t1117)
  store i1 %t1118, ptr %l591
  br label %bb263
bb263:
  %t1119 = load i1, ptr %l591, !tbaa !21
  store i1 %t1119, ptr %l586, !tbaa !21
  br label %bb264
bb264:
  %t1120 = load i1, ptr %l586, !tbaa !21
  br i1 %t1120, label %bb265, label %bb266
bb265:
  %t1121 = load ptr, ptr %l0, !tbaa !29
  %t1123 = getelementptr %"compiler/scope:Scoper", ptr %t1121, i32 0, i32 0
  %t1124 = load ptr, ptr %t1123, !tbaa !29
  %t1126 = getelementptr %"compiler/generic:Program", ptr %t1124, i32 0, i32 2
  %t1127 = load i32, ptr %l55, !tbaa !23
  %t1130 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t1126, i32 %t1127)
  store i64 %t1130, ptr %l597
  br label %bb267
bb266:
  store i1 false, ptr %l592, !tbaa !21
  br label %bb270
bb267:
  %t1131 = load ptr, ptr %l0, !tbaa !29
  %t1133 = getelementptr %"compiler/scope:Scoper", ptr %t1131, i32 0, i32 0
  %t1134 = load ptr, ptr %t1133, !tbaa !29
  %t1136 = getelementptr %"compiler/generic:Program", ptr %t1134, i32 0, i32 2
  store ptr %t1136, ptr %l600, !tbaa !29
  %t1137 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1137, ptr %l601, !tbaa !27
  %t1138 = getelementptr { i64, ptr }, ptr %l601, i32 0, i32 1
  %t1139 = load ptr, ptr %t1138, !tbaa !27
  %t1140 = getelementptr ptr, ptr %t1139, i64 0
  %t1141 = load ptr, ptr %t1140, !tbaa !39
  %t1143 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1141)
  store i32 %t1143, ptr %l603
  br label %bb268
bb268:
  %t1144 = load ptr, ptr %l600, !tbaa !29
  %t1145 = load i32, ptr %l603, !tbaa !23
  %t1146 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t1144, i32 %t1145)
  store i64 %t1146, ptr %l604
  br label %bb269
bb269:
  %t1147 = load i64, ptr %l597, !tbaa !24
  %t1148 = load i64, ptr %l604, !tbaa !24
  %t1149 = icmp ne i64 %t1147, %t1148
  store i1 %t1149, ptr %l592, !tbaa !21
  br label %bb270
bb270:
  %t1151 = load i1, ptr %l592, !tbaa !21
  br i1 %t1151, label %bb271, label %bb272
bb271:
  %t1152 = load ptr, ptr %l0, !tbaa !29
  %t1153 = load i32, ptr %l55, !tbaa !23
  %t1154 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1154, ptr %l608, !tbaa !27
  %t1155 = getelementptr { i64, ptr }, ptr %l608, i32 0, i32 1
  %t1156 = load ptr, ptr %t1155, !tbaa !27
  %t1157 = getelementptr ptr, ptr %t1156, i64 0
  %t1158 = load ptr, ptr %t1157, !tbaa !39
  %t1159 = load { i64, [2 x i64] }, ptr %l2
  %t1164 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efuncHeld(ptr %v0, ptr %v1, ptr %t1152, i32 %t1153, ptr %t1158, { i64, [2 x i64] } %t1159)
  store %"compiler/scope:Val" %t1164, ptr %l611
  br label %bb273
bb272:
  br label %bb274
bb273:
  %t1165 = load %"compiler/scope:Val", ptr %l611
  store %"compiler/scope:Val" %t1165, ptr %rv
  br label %ret
bb274:
  %t1166 = load i32, ptr %l56, !range !{i32 0, i32 52}
  %t1168 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t1166)
  store i1 %t1168, ptr %l613
  br label %bb275
bb275:
  %t1169 = load i1, ptr %l613, !tbaa !21
  br i1 %t1169, label %bb276, label %bb277
bb276:
  %t1170 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t1172 = extractvalue { i64, ptr } %t1170, 0
  %t1174 = icmp sgt i64 %t1172, 0
  store i1 %t1174, ptr %l614, !tbaa !21
  br label %bb278
bb277:
  store i1 false, ptr %l614, !tbaa !21
  br label %bb278
bb278:
  %t1176 = load i1, ptr %l614, !tbaa !21
  br i1 %t1176, label %bb279, label %bb280
bb279:
  %t1177 = load ptr, ptr %l0, !tbaa !29
  %t1178 = load i32, ptr %l55, !tbaa !23
  %t1181 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t1177, i32 %t1178)
  store i1 %t1181, ptr %l621
  br label %bb281
bb280:
  store i1 false, ptr %l618, !tbaa !21
  br label %bb286
bb281:
  %t1182 = load i1, ptr %l621, !tbaa !21
  br i1 %t1182, label %bb282, label %bb283
bb282:
  store i1 true, ptr %l622, !tbaa !21
  br label %bb285
bb283:
  %t1183 = load ptr, ptr %l0, !tbaa !29
  %t1184 = load i32, ptr %l55, !tbaa !23
  %t1187 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t1183, i32 %t1184)
  store i1 %t1187, ptr %l625
  br label %bb284
bb284:
  %t1188 = load i1, ptr %l625, !tbaa !21
  store i1 %t1188, ptr %l622, !tbaa !21
  br label %bb285
bb285:
  %t1189 = load i1, ptr %l622, !tbaa !21
  store i1 %t1189, ptr %l618, !tbaa !21
  br label %bb286
bb286:
  %t1190 = load i1, ptr %l618, !tbaa !21
  br i1 %t1190, label %bb287, label %bb288
bb287:
  %t1191 = load ptr, ptr %l0, !tbaa !29
  %t1192 = load i32, ptr %l56, !range !{i32 0, i32 52}
  %t1194 = trunc i64 42 to i32
  %t1195 = icmp eq i32 %t1192, %t1194
  %t1198 = getelementptr %"compiler/scope:Scoper", ptr %t1191, i32 0, i32 78
  store i1 %t1195, ptr %t1198, !tbaa !21
  %t1199 = load ptr, ptr %l0, !tbaa !29
  %t1200 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1200, ptr %l630, !tbaa !27
  %t1201 = getelementptr { i64, ptr }, ptr %l630, i32 0, i32 1
  %t1202 = load ptr, ptr %t1201, !tbaa !27
  %t1203 = getelementptr ptr, ptr %t1202, i64 0
  %t1204 = load ptr, ptr %t1203, !tbaa !39
  %t1206 = load { i64, [2 x i64] }, ptr %l2
  %t1210 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1199, ptr %t1204, { i64, [2 x i64] } %t1206)
  store %"compiler/scope:Val" %t1210, ptr %l634
  br label %bb289
bb288:
  br label %bb290
bb289:
  %t1211 = load %"compiler/scope:Val", ptr %l634
  %t1212 = load ptr, ptr %l0, !tbaa !29
  %t1214 = getelementptr %"compiler/scope:Scoper", ptr %t1212, i32 0, i32 78
  store i1 false, ptr %t1214, !tbaa !21
  store %"compiler/scope:Val" %t1211, ptr %rv
  br label %ret
bb290:
  %t1217 = load i32, ptr %l56, !range !{i32 0, i32 52}
  %t1219 = trunc i64 30 to i32
  %t1220 = icmp eq i32 %t1217, %t1219
  br i1 %t1220, label %bb291, label %bb292
bb291:
  %t1222 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t1224 = extractvalue { i64, ptr } %t1222, 0
  %t1226 = icmp eq i64 %t1224, 1
  store i1 %t1226, ptr %l639, !tbaa !21
  br label %bb293
bb292:
  store i1 false, ptr %l639, !tbaa !21
  br label %bb293
bb293:
  %t1228 = load i1, ptr %l639, !tbaa !21
  br i1 %t1228, label %bb294, label %bb295
bb294:
  %t1229 = load ptr, ptr %l0, !tbaa !29
  %t1231 = getelementptr %"compiler/scope:Scoper", ptr %t1229, i32 0, i32 80
  %t1232 = load i1, ptr %t1231, !tbaa !21
  %t1234 = xor i1 %t1232, true
  store i1 %t1234, ptr %l643, !tbaa !21
  br label %bb296
bb295:
  store i1 false, ptr %l643, !tbaa !21
  br label %bb296
bb296:
  %t1236 = load i1, ptr %l643, !tbaa !21
  br i1 %t1236, label %bb297, label %bb298
bb297:
  %t1237 = load ptr, ptr %l0, !tbaa !29
  %t1238 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1238, ptr %l648, !tbaa !27
  %t1239 = getelementptr { i64, ptr }, ptr %l648, i32 0, i32 1
  %t1240 = load ptr, ptr %t1239, !tbaa !27
  %t1241 = getelementptr ptr, ptr %t1240, i64 0
  %t1242 = load ptr, ptr %t1241, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDerived(ptr %v0, ptr %v1, ptr %t1237, ptr %t1242)
  br label %bb299
bb298:
  br label %bb301
bb299:
  %t1245 = load ptr, ptr %l0, !tbaa !29
  %t1246 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1246, ptr %l651, !tbaa !27
  %t1247 = getelementptr { i64, ptr }, ptr %l651, i32 0, i32 1
  %t1248 = load ptr, ptr %t1247, !tbaa !27
  %t1249 = getelementptr ptr, ptr %t1248, i64 0
  %t1250 = load ptr, ptr %t1249, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropHome(ptr %v0, ptr %v1, ptr %t1245, ptr %t1250)
  br label %bb300
bb300:
  br label %bb301
bb301:
  %t1253 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1253, ptr %l59, !tbaa !27
  store i64 0, ptr %l60, !tbaa !24
  %t1255 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t1257 = extractvalue { i64, ptr } %t1255, 0
  store i64 %t1257, ptr %l61, !tbaa !24
  br label %bb302
bb302:
  %t1259 = load i64, ptr %l60, !tbaa !24
  %t1260 = load i64, ptr %l61, !tbaa !24
  %t1263 = icmp slt i64 %t1259, %t1260
  %t1265 = xor i1 %t1263, true
  br i1 %t1265, label %bb303, label %bb304
bb303:
  br label %bb308
bb304:
  br label %bb305
bb305:
  %t1267 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t1267, ptr %l660, !tbaa !27
  %t1268 = load i64, ptr %l60, !tbaa !24
  %t1270 = getelementptr { i64, ptr }, ptr %l660, i32 0, i32 1
  %t1271 = load ptr, ptr %t1270, !tbaa !27
  %t1272 = getelementptr ptr, ptr %t1271, i64 %t1268
  %t1273 = load ptr, ptr %t1272, !tbaa !39
  %t1275 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t1278
  %t1279 = getelementptr { i64, [2 x i64] }, ptr %t1278, i32 0, i32 0
  store i64 0, ptr %t1279
  %t1280 = load { i64, [2 x i64] }, ptr %t1278
  %t1284 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1275, ptr %t1273, { i64, [2 x i64] } %t1280)
  store %"compiler/scope:Val" %t1284, ptr %l667
  br label %bb306
bb306:
  br label %bb307
bb307:
  %t1285 = load i64, ptr %l60, !tbaa !24
  %t1287 = add i64 %t1285, 1
  store i64 %t1287, ptr %l60, !tbaa !24
  br label %bb302
bb308:
  %t1289 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t1289, ptr %l670
  br label %bb309
bb309:
  %t1290 = load %"compiler/scope:Val", ptr %l670
  store %"compiler/scope:Val" %t1290, ptr %rv
  br label %ret
bb310:
  %t1291 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1291, ptr %l671, !tbaa !29
  store i1 false, ptr %l672, !tbaa !21
  %t1292 = load ptr, ptr %l671, !tbaa !29
  %t1293 = icmp ne ptr %t1292, null
  br i1 %t1293, label %bb311, label %bb312
bb311:
  %t1295 = load ptr, ptr %l671, !tbaa !29
  %t1296 = load i64, ptr %t1295, !range !{i64 0, i64 18}
  %t1298 = icmp eq i64 %t1296, 10
  store i1 %t1298, ptr %l672, !tbaa !21
  br label %bb312
bb312:
  %t1299 = load i1, ptr %l672, !tbaa !21
  br i1 %t1299, label %bb313, label %bb314
bb313:
  %t1300 = load ptr, ptr %l1, !tbaa !29
  %t1302 = getelementptr { i64, [5 x i64] }, ptr %t1300, i32 0, i32 1
  %t1303 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1302, i32 0, i32 0
  %t1304 = load %"compiler/source:Span", ptr %t1303
  store %"compiler/source:Span" %t1304, ptr %l63
  %t1306 = load ptr, ptr %l1, !tbaa !29
  %t1308 = getelementptr { i64, [5 x i64] }, ptr %t1306, i32 0, i32 1
  %t1309 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1308, i32 0, i32 1
  %t1310 = load i32, ptr %t1309
  store i32 %t1310, ptr %l64, !tbaa !23
  %t1312 = load ptr, ptr %l1, !tbaa !29
  %t1314 = getelementptr { i64, [5 x i64] }, ptr %t1312, i32 0, i32 1
  %t1315 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1314, i32 0, i32 2
  %t1316 = load ptr, ptr %t1315
  store ptr %t1316, ptr %l65, !tbaa !29
  br label %bb315
bb314:
  br label %bb340
bb315:
  %t1318 = load ptr, ptr %l0, !tbaa !29
  %t1319 = load ptr, ptr %l65, !tbaa !29
  %t1321 = getelementptr %"compiler/typed:Slice", ptr %t1319, i32 0, i32 0
  %t1322 = load ptr, ptr %t1321, !tbaa !29
  %t1323 = load i32, ptr %l64, !tbaa !23
  %t1324 = load { i64, [2 x i64] }, ptr %l2
  %t1329 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartLand(ptr %v0, ptr %v1, ptr %t1318, ptr %t1322, i32 %t1323, { i64, [2 x i64] } %t1324)
  store i64 %t1329, ptr %l686
  br label %bb316
bb316:
  %t1330 = load i64, ptr %l686, !tbaa !24
  store i64 %t1330, ptr %l66, !tbaa !24
  %t1331 = load ptr, ptr %l0, !tbaa !29
  %t1332 = load ptr, ptr %l65, !tbaa !29
  %t1334 = getelementptr %"compiler/typed:Slice", ptr %t1332, i32 0, i32 0
  %t1335 = load ptr, ptr %t1334, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t1331, ptr %t1335)
  br label %bb317
bb317:
  %t1338 = load ptr, ptr %l0, !tbaa !29
  %t1339 = load ptr, ptr %l65, !tbaa !29
  %t1341 = getelementptr %"compiler/typed:Slice", ptr %t1339, i32 0, i32 0
  %t1342 = load ptr, ptr %t1341, !tbaa !29
  %t1345 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %v1, ptr %t1338, ptr %t1342)
  store i1 %t1345, ptr %l693
  br label %bb318
bb318:
  %t1346 = load i1, ptr %l693, !tbaa !21
  br i1 %t1346, label %bb319, label %bb320
bb319:
  %t1347 = load ptr, ptr %l0, !tbaa !29
  %t1348 = load ptr, ptr %l65, !tbaa !29
  %t1350 = getelementptr %"compiler/typed:Slice", ptr %t1348, i32 0, i32 0
  %t1351 = load ptr, ptr %t1350, !tbaa !29
  %t1354 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplitPlace(ptr %v0, ptr %v1, ptr %t1347, ptr %t1351)
  store i1 %t1354, ptr %l698
  br label %bb321
bb320:
  store i1 false, ptr %l694, !tbaa !21
  br label %bb322
bb321:
  %t1355 = load i1, ptr %l698, !tbaa !21
  %t1356 = xor i1 %t1355, true
  store i1 %t1356, ptr %l694, !tbaa !21
  br label %bb322
bb322:
  %t1358 = load i1, ptr %l694, !tbaa !21
  br i1 %t1358, label %bb323, label %bb324
bb323:
  %t1359 = load ptr, ptr %l0, !tbaa !29
  %t1361 = getelementptr %"compiler/scope:Scoper", ptr %t1359, i32 0, i32 28
  %t1362 = load i1, ptr %t1361, !tbaa !21
  store i1 %t1362, ptr %l700, !tbaa !21
  br label %bb325
bb324:
  store i1 false, ptr %l700, !tbaa !21
  br label %bb325
bb325:
  %t1364 = load i1, ptr %l700, !tbaa !21
  br i1 %t1364, label %bb326, label %bb327
bb326:
  store %olang.scope zeroinitializer, ptr %s38
  %t1365 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1365, ptr %l703, !tbaa !29
  %t1366 = load ptr, ptr %l0, !tbaa !29
  %t1367 = load %"compiler/source:Span", ptr %l63
  %t1368 = load ptr, ptr %l65, !tbaa !29
  %t1372 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceAt(ptr %v0, ptr %v1, ptr %t1366, %"compiler/source:Span" %t1367, ptr %t1368)
  store %"compiler/source:Span" %t1372, ptr %l707
  br label %bb328
bb327:
  br label %bb331
bb328:
  %t1373 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSliceSplitValue(ptr %s38)
  store %"compiler/diagmsg:Msg" %t1373, ptr %l708
  br label %bb329
bb329:
  %t1374 = load ptr, ptr %l703, !tbaa !29
  %t1375 = load %"compiler/source:Span", ptr %l707
  %t1376 = load %"compiler/diagmsg:Msg", ptr %l708
  %t1377 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s38, ptr %t1374, %"compiler/source:Span" %t1375, %"compiler/diagmsg:Msg" %t1376)
  store i64 %t1377, ptr %l709
  br label %bb330
bb330:
  call void @__olang_scope_close(ptr %s38)
  br label %bb331
bb331:
  %t1378 = load ptr, ptr %l0, !tbaa !29
  %t1379 = load ptr, ptr %l65, !tbaa !29
  %t1381 = getelementptr %"compiler/typed:Slice", ptr %t1379, i32 0, i32 1
  %t1382 = load ptr, ptr %t1381, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t1384
  %t1385 = getelementptr { i64, [2 x i64] }, ptr %t1384, i32 0, i32 0
  store i64 0, ptr %t1385
  %t1386 = load { i64, [2 x i64] }, ptr %t1384
  %t1390 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1378, ptr %t1382, { i64, [2 x i64] } %t1386)
  store %"compiler/scope:Val" %t1390, ptr %l715
  br label %bb332
bb332:
  %t1391 = load ptr, ptr %l0, !tbaa !29
  %t1392 = load ptr, ptr %l65, !tbaa !29
  %t1394 = getelementptr %"compiler/typed:Slice", ptr %t1392, i32 0, i32 2
  %t1395 = load ptr, ptr %t1394, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t1397
  %t1398 = getelementptr { i64, [2 x i64] }, ptr %t1397, i32 0, i32 0
  store i64 0, ptr %t1398
  %t1399 = load { i64, [2 x i64] }, ptr %t1397
  %t1403 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1391, ptr %t1395, { i64, [2 x i64] } %t1399)
  store %"compiler/scope:Val" %t1403, ptr %l721
  br label %bb333
bb333:
  %t1404 = load ptr, ptr %l0, !tbaa !29
  %t1405 = load ptr, ptr %l65, !tbaa !29
  %t1407 = getelementptr %"compiler/typed:Slice", ptr %t1405, i32 0, i32 0
  %t1408 = load ptr, ptr %t1407, !tbaa !29
  %t1411 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceTerm(ptr %v0, ptr %v1, ptr %t1404, ptr %t1408)
  store { i64, [2 x i64] } %t1411, ptr %l725
  br label %bb334
bb334:
  %t1412 = load { i64, [2 x i64] }, ptr %l725
  store { i64, [2 x i64] } %t1412, ptr %l67
  %t1413 = load i64, ptr %l66, !tbaa !24
  %t1415 = icmp sge i64 %t1413, 0
  br i1 %t1415, label %bb335, label %bb336
bb335:
  %t1417 = load ptr, ptr %l0, !tbaa !29
  %t1419 = getelementptr %"compiler/scope:Scoper", ptr %t1417, i32 0, i32 114
  %t1420 = load i64, ptr %l66, !tbaa !24
  %t1423 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb4ab14fd1aa8deeb21095c3402461540(ptr %v0, ptr %t1419, i64 %t1420)
  store i1 %t1423, ptr %l731
  br label %bb337
bb336:
  br label %bb338
bb337:
  br label %bb338
bb338:
  %t1424 = load { i64, [2 x i64] }, ptr %l67
  %t1426 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t1424)
  store %"compiler/scope:Val" %t1426, ptr %l733
  br label %bb339
bb339:
  %t1427 = load %"compiler/scope:Val", ptr %l733
  store %"compiler/scope:Val" %t1427, ptr %rv
  br label %ret
bb340:
  %t1428 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1428, ptr %l734, !tbaa !29
  store i1 false, ptr %l735, !tbaa !21
  %t1429 = load ptr, ptr %l734, !tbaa !29
  %t1430 = icmp ne ptr %t1429, null
  br i1 %t1430, label %bb341, label %bb342
bb341:
  %t1432 = load ptr, ptr %l734, !tbaa !29
  %t1433 = load i64, ptr %t1432, !range !{i64 0, i64 18}
  %t1435 = icmp eq i64 %t1433, 11
  store i1 %t1435, ptr %l735, !tbaa !21
  br label %bb342
bb342:
  %t1436 = load i1, ptr %l735, !tbaa !21
  br i1 %t1436, label %bb343, label %bb344
bb343:
  %t1437 = load ptr, ptr %l1, !tbaa !29
  %t1439 = getelementptr { i64, [5 x i64] }, ptr %t1437, i32 0, i32 1
  %t1440 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1439, i32 0, i32 2
  %t1441 = load ptr, ptr %t1440
  store ptr %t1441, ptr %l68, !tbaa !29
  br label %bb345
bb344:
  br label %bb357
bb345:
  store %olang.scope zeroinitializer, ptr %s40
  %t1443 = load ptr, ptr %l0, !tbaa !29
  %t1444 = load ptr, ptr %l68, !tbaa !29
  %t1446 = getelementptr %"compiler/typed:Cond", ptr %t1444, i32 0, i32 0
  %t1447 = load ptr, ptr %t1446, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t1449
  %t1450 = getelementptr { i64, [2 x i64] }, ptr %t1449, i32 0, i32 0
  store i64 0, ptr %t1450
  %t1451 = load { i64, [2 x i64] }, ptr %t1449
  %t1455 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1443, ptr %t1447, { i64, [2 x i64] } %t1451)
  store %"compiler/scope:Val" %t1455, ptr %l745
  br label %bb346
bb346:
  %t1456 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %s40, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1456, ptr %l746
  br label %bb347
bb347:
  %t1457 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l746
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1457, ptr %l69
  store ptr %l69, ptr %l747, !tbaa !29
  %t1458 = load ptr, ptr %l68, !tbaa !29
  %t1460 = getelementptr %"compiler/typed:Cond", ptr %t1458, i32 0, i32 1
  %t1461 = load ptr, ptr %t1460, !tbaa !29
  %t1463 = icmp eq ptr %t1461, null
  br i1 %t1463, label %bb348, label %bb349
bb348:
  call void @__olang_check_failed(ptr @olang_loc_7fc6f86e6d881397_d60d455fa8d09f43)
  unreachable
bb349:
  br label %bb350
bb350:
  %t1465 = load ptr, ptr %l68, !tbaa !29
  %t1467 = getelementptr %"compiler/typed:Cond", ptr %t1465, i32 0, i32 1
  %t1468 = load ptr, ptr %t1467, !tbaa !29
  %t1469 = load ptr, ptr %l747, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s40, ptr %v1, ptr %t1469, ptr %t1468)
  br label %bb351
bb351:
  %t1471 = load ptr, ptr %l68, !tbaa !29
  %t1473 = getelementptr %"compiler/typed:Cond", ptr %t1471, i32 0, i32 2
  %t1474 = load ptr, ptr %t1473, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s40, ptr %v1, ptr %l69, ptr %t1474)
  br label %bb352
bb352:
  %t1477 = load ptr, ptr %l0, !tbaa !29
  %t1478 = load { i64, [2 x i64] }, ptr %l2
  %t1482 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceDest(ptr %v0, ptr %s40, ptr %t1477, ptr %l69, { i64, [2 x i64] } %t1478)
  store { i64, [2 x i64] } %t1482, ptr %l759
  br label %bb353
bb353:
  %t1483 = load { i64, [2 x i64] }, ptr %l759
  store { i64, [2 x i64] } %t1483, ptr %l70
  %t1484 = load ptr, ptr %l0, !tbaa !29
  %t1485 = load ptr, ptr %l68, !tbaa !29
  %t1487 = getelementptr %"compiler/typed:Cond", ptr %t1485, i32 0, i32 1
  %t1488 = load ptr, ptr %t1487, !tbaa !29
  %t1489 = load { i64, [2 x i64] }, ptr %l70
  %t1493 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1484, ptr %t1488, { i64, [2 x i64] } %t1489)
  store %"compiler/scope:Val" %t1493, ptr %l764
  br label %bb354
bb354:
  %t1494 = load %"compiler/scope:Val", ptr %l764
  store %"compiler/scope:Val" %t1494, ptr %l71
  %t1495 = load ptr, ptr %l0, !tbaa !29
  %t1496 = load ptr, ptr %l68, !tbaa !29
  %t1498 = getelementptr %"compiler/typed:Cond", ptr %t1496, i32 0, i32 2
  %t1499 = load ptr, ptr %t1498, !tbaa !29
  %t1501 = load { i64, [2 x i64] }, ptr %l70
  %t1505 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1495, ptr %t1499, { i64, [2 x i64] } %t1501)
  store %"compiler/scope:Val" %t1505, ptr %l770
  br label %bb355
bb355:
  %t1506 = load %"compiler/scope:Val", ptr %l770
  %t1507 = load ptr, ptr %l0, !tbaa !29
  %t1508 = load %"compiler/scope:Val", ptr %l71
  %t1510 = load { i64, [2 x i64] }, ptr %l3
  %t1515 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoin(ptr %v0, ptr %t1507, %"compiler/scope:Val" %t1508, %"compiler/scope:Val" %t1506, { i64, [2 x i64] } %t1510)
  store %"compiler/scope:Val" %t1515, ptr %l775
  br label %bb356
bb356:
  call void @__olang_scope_close(ptr %s40)
  %t1516 = load %"compiler/scope:Val", ptr %l775
  store %"compiler/scope:Val" %t1516, ptr %rv
  br label %ret
bb357:
  %t1517 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1517, ptr %l776, !tbaa !29
  store i1 false, ptr %l777, !tbaa !21
  %t1518 = load ptr, ptr %l776, !tbaa !29
  %t1519 = icmp ne ptr %t1518, null
  br i1 %t1519, label %bb358, label %bb359
bb358:
  %t1521 = load ptr, ptr %l776, !tbaa !29
  %t1522 = load i64, ptr %t1521, !range !{i64 0, i64 18}
  %t1524 = icmp eq i64 %t1522, 12
  store i1 %t1524, ptr %l777, !tbaa !21
  br label %bb359
bb359:
  %t1525 = load i1, ptr %l777, !tbaa !21
  br i1 %t1525, label %bb360, label %bb361
bb360:
  %t1526 = load ptr, ptr %l1, !tbaa !29
  %t1528 = getelementptr { i64, [5 x i64] }, ptr %t1526, i32 0, i32 1
  %t1529 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1528, i32 0, i32 2
  %t1530 = load ptr, ptr %t1529
  store ptr %t1530, ptr %l73, !tbaa !29
  br label %bb362
bb361:
  br label %bb365
bb362:
  %t1532 = load ptr, ptr %l0, !tbaa !29
  %t1534 = getelementptr %"compiler/scope:Scoper", ptr %t1532, i32 0, i32 144
  %t1535 = load i1, ptr %t1534, !tbaa !21
  store i1 %t1535, ptr %l74, !tbaa !21
  %t1537 = load ptr, ptr %l0, !tbaa !29
  %t1539 = getelementptr %"compiler/scope:Scoper", ptr %t1537, i32 0, i32 144
  store i1 false, ptr %t1539, !tbaa !21
  %t1540 = load ptr, ptr %l0, !tbaa !29
  %t1541 = load ptr, ptr %l73, !tbaa !29
  %t1543 = getelementptr %"compiler/typed:Seq", ptr %t1541, i32 0, i32 0
  %t1544 = load { i64, ptr }, ptr %t1543, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v1, ptr %t1540, { i64, ptr } %t1544)
  br label %bb363
bb363:
  %t1547 = load ptr, ptr %l0, !tbaa !29
  %t1548 = load i1, ptr %l74, !tbaa !21
  %t1551 = getelementptr %"compiler/scope:Scoper", ptr %t1547, i32 0, i32 144
  store i1 %t1548, ptr %t1551, !tbaa !21
  %t1552 = load ptr, ptr %l0, !tbaa !29
  %t1553 = load ptr, ptr %l73, !tbaa !29
  %t1555 = getelementptr %"compiler/typed:Seq", ptr %t1553, i32 0, i32 1
  %t1556 = load ptr, ptr %t1555, !tbaa !29
  %t1557 = load { i64, [2 x i64] }, ptr %l2
  %t1561 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1552, ptr %t1556, { i64, [2 x i64] } %t1557)
  store %"compiler/scope:Val" %t1561, ptr %l794
  br label %bb364
bb364:
  %t1562 = load %"compiler/scope:Val", ptr %l794
  store %"compiler/scope:Val" %t1562, ptr %rv
  br label %ret
bb365:
  %t1563 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1563, ptr %l795, !tbaa !29
  store i1 false, ptr %l796, !tbaa !21
  %t1564 = load ptr, ptr %l795, !tbaa !29
  %t1565 = icmp ne ptr %t1564, null
  br i1 %t1565, label %bb366, label %bb367
bb366:
  %t1567 = load ptr, ptr %l795, !tbaa !29
  %t1568 = load i64, ptr %t1567, !range !{i64 0, i64 18}
  %t1570 = icmp eq i64 %t1568, 13
  store i1 %t1570, ptr %l796, !tbaa !21
  br label %bb367
bb367:
  %t1571 = load i1, ptr %l796, !tbaa !21
  br i1 %t1571, label %bb368, label %bb369
bb368:
  %t1572 = load ptr, ptr %l1, !tbaa !29
  %t1574 = getelementptr { i64, [5 x i64] }, ptr %t1572, i32 0, i32 1
  %t1575 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1574, i32 0, i32 2
  %t1576 = load ptr, ptr %t1575
  store ptr %t1576, ptr %l75, !tbaa !29
  br label %bb370
bb369:
  br label %bb372
bb370:
  %t1578 = load ptr, ptr %l0, !tbaa !29
  %t1579 = load ptr, ptr %l75, !tbaa !29
  %t1580 = load { i64, [2 x i64] }, ptr %l2
  %t1584 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ematch(ptr %v0, ptr %v1, ptr %t1578, ptr %t1579, { i64, [2 x i64] } %t1580)
  store %"compiler/scope:Val" %t1584, ptr %l804
  br label %bb371
bb371:
  %t1585 = load %"compiler/scope:Val", ptr %l804
  store %"compiler/scope:Val" %t1585, ptr %rv
  br label %ret
bb372:
  %t1586 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1586, ptr %l805, !tbaa !29
  store i1 false, ptr %l806, !tbaa !21
  %t1587 = load ptr, ptr %l805, !tbaa !29
  %t1588 = icmp ne ptr %t1587, null
  br i1 %t1588, label %bb373, label %bb374
bb373:
  %t1590 = load ptr, ptr %l805, !tbaa !29
  %t1591 = load i64, ptr %t1590, !range !{i64 0, i64 18}
  %t1593 = icmp eq i64 %t1591, 14
  store i1 %t1593, ptr %l806, !tbaa !21
  br label %bb374
bb374:
  %t1594 = load i1, ptr %l806, !tbaa !21
  br i1 %t1594, label %bb375, label %bb376
bb375:
  %t1595 = load ptr, ptr %l1, !tbaa !29
  %t1597 = getelementptr { i64, [5 x i64] }, ptr %t1595, i32 0, i32 1
  %t1598 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1597, i32 0, i32 2
  %t1599 = load ptr, ptr %t1598
  store ptr %t1599, ptr %l76, !tbaa !29
  br label %bb377
bb376:
  br label %bb441
bb377:
  %t1601 = load ptr, ptr %l0, !tbaa !29
  %t1602 = load ptr, ptr %l76, !tbaa !29
  %t1604 = getelementptr %"compiler/typed:Try", ptr %t1602, i32 0, i32 0
  %t1605 = load ptr, ptr %t1604, !tbaa !29
  %t1606 = load { i64, [2 x i64] }, ptr %l2
  %t1610 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1601, ptr %t1605, { i64, [2 x i64] } %t1606)
  store %"compiler/scope:Val" %t1610, ptr %l815
  br label %bb378
bb378:
  %t1611 = load %"compiler/scope:Val", ptr %l815
  store %"compiler/scope:Val" %t1611, ptr %l77
  %t1612 = getelementptr %"compiler/scope:Val", ptr %l77, i32 0, i32 0
  %t1613 = load i32, ptr %t1612, !range !{i32 0, i32 5}
  %t1615 = trunc i64 3 to i32
  %t1616 = icmp eq i32 %t1613, %t1615
  br i1 %t1616, label %bb379, label %bb380
bb379:
  store i1 true, ptr %l818, !tbaa !21
  br label %bb381
bb380:
  %t1618 = getelementptr %"compiler/scope:Val", ptr %l77, i32 0, i32 0
  %t1619 = load i32, ptr %t1618, !range !{i32 0, i32 5}
  %t1621 = trunc i64 2 to i32
  %t1622 = icmp eq i32 %t1619, %t1621
  store i1 %t1622, ptr %l818, !tbaa !21
  br label %bb381
bb381:
  %t1624 = load i1, ptr %l818, !tbaa !21
  br i1 %t1624, label %bb382, label %bb383
bb382:
  %t1625 = getelementptr %"compiler/scope:Val", ptr %l77, i32 0, i32 1
  %t1626 = load { i64, [2 x i64] }, ptr %t1625
  %t1628 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1626)
  store i1 %t1628, ptr %l823
  br label %bb384
bb383:
  store i1 false, ptr %l821, !tbaa !21
  br label %bb385
bb384:
  %t1629 = load i1, ptr %l823, !tbaa !21
  store i1 %t1629, ptr %l821, !tbaa !21
  br label %bb385
bb385:
  %t1630 = load i1, ptr %l821, !tbaa !21
  br i1 %t1630, label %bb386, label %bb387
bb386:
  %t1631 = getelementptr %"compiler/scope:Val", ptr %l77, i32 0, i32 1
  %t1632 = load { i64, [2 x i64] }, ptr %t1631
  store { i64, [2 x i64] } %t1632, ptr %l824
  br label %bb388
bb387:
  %t1634 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t1634, ptr %l824
  br label %bb388
bb388:
  %t1636 = load { i64, [2 x i64] }, ptr %l824
  store { i64, [2 x i64] } %t1636, ptr %l78
  %t1637 = load %"compiler/scope:Val", ptr %l77
  store %"compiler/scope:Val" %t1637, ptr %l79
  %t1639 = load ptr, ptr %l76, !tbaa !29
  %t1641 = getelementptr %"compiler/typed:Try", ptr %t1639, i32 0, i32 1
  %t1642 = load { i64, ptr }, ptr %t1641, !tbaa !27
  store { i64, ptr } %t1642, ptr %l80, !tbaa !27
  store i64 0, ptr %l81, !tbaa !24
  %t1644 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t1646 = extractvalue { i64, ptr } %t1644, 0
  store i64 %t1646, ptr %l82, !tbaa !24
  br label %bb389
bb389:
  %t1648 = load i64, ptr %l81, !tbaa !24
  %t1649 = load i64, ptr %l82, !tbaa !24
  %t1652 = icmp slt i64 %t1648, %t1649
  %t1654 = xor i1 %t1652, true
  br i1 %t1654, label %bb390, label %bb391
bb390:
  br label %bb440
bb391:
  br label %bb392
bb392:
  %t1656 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t1656, ptr %l836, !tbaa !27
  %t1657 = load i64, ptr %l81, !tbaa !24
  %t1659 = getelementptr { i64, ptr }, ptr %l836, i32 0, i32 1
  %t1660 = load ptr, ptr %t1659, !tbaa !27
  %t1661 = getelementptr ptr, ptr %t1660, i64 %t1657
  %t1662 = load ptr, ptr %t1661, !tbaa !39
  store ptr %t1662, ptr %l83, !tbaa !29
  %t1664 = load ptr, ptr %l83, !tbaa !29
  %t1666 = getelementptr %"compiler/typed:Clause", ptr %t1664, i32 0, i32 5
  %t1667 = load i64, ptr %t1666, !tbaa !24
  %t1669 = icmp sge i64 %t1667, 0
  br i1 %t1669, label %bb393, label %bb394
bb393:
  %t1671 = load ptr, ptr %l0, !tbaa !29
  %t1673 = getelementptr %"compiler/scope:Scoper", ptr %t1671, i32 0, i32 34
  %t1674 = load ptr, ptr %l83, !tbaa !29
  %t1676 = getelementptr %"compiler/typed:Clause", ptr %t1674, i32 0, i32 5
  %t1677 = load i64, ptr %t1676, !tbaa !24
  %t1680 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t1673, i64 %t1677)
  store { i64, [2 x i64] } %t1680, ptr %l847
  br label %bb395
bb394:
  store i1 false, ptr %l842, !tbaa !21
  br label %bb396
bb395:
  %t1681 = load { i64, [2 x i64] }, ptr %l847
  %t1683 = extractvalue { i64, [2 x i64] } %t1681, 0
  %t1684 = icmp eq i64 %t1683, 0
  store i1 %t1684, ptr %l842, !tbaa !21
  br label %bb396
bb396:
  %t1686 = load i1, ptr %l842, !tbaa !21
  br i1 %t1686, label %bb397, label %bb398
bb397:
  %t1687 = load ptr, ptr %l0, !tbaa !29
  %t1689 = getelementptr %"compiler/scope:Scoper", ptr %t1687, i32 0, i32 34
  store ptr %t1689, ptr %l851, !tbaa !29
  %t1690 = load ptr, ptr %l83, !tbaa !29
  %t1692 = getelementptr %"compiler/typed:Clause", ptr %t1690, i32 0, i32 5
  %t1693 = load i64, ptr %t1692, !tbaa !24
  store i64 %t1693, ptr %l853, !tbaa !24
  %t1694 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1694, ptr %l854, !tbaa !29
  %t1695 = load ptr, ptr %l0, !tbaa !29
  %t1697 = getelementptr %"compiler/scope:Scoper", ptr %t1695, i32 0, i32 26
  %t1698 = load ptr, ptr %t1697, !tbaa !29
  %t1700 = icmp eq ptr %t1698, null
  br i1 %t1700, label %bb399, label %bb400
bb398:
  br label %bb405
bb399:
  call void @__olang_check_failed(ptr @olang_loc_5f16a8eab1ed6da6_36cf0c262a87afc2)
  unreachable
bb400:
  br label %bb401
bb401:
  %t1702 = load ptr, ptr %l0, !tbaa !29
  %t1704 = getelementptr %"compiler/scope:Scoper", ptr %t1702, i32 0, i32 26
  %t1705 = load ptr, ptr %t1704, !tbaa !29
  %t1708 = getelementptr %"compiler/typed:Body", ptr %t1705, i32 0, i32 7
  %t1709 = load ptr, ptr %l83, !tbaa !29
  %t1711 = getelementptr %"compiler/typed:Clause", ptr %t1709, i32 0, i32 5
  %t1712 = load i64, ptr %t1711, !tbaa !24
  %t1715 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t1708, i64 %t1712)
  store %"compiler/typed:Local" %t1715, ptr %l864
  br label %bb402
bb402:
  %t1716 = getelementptr %"compiler/typed:Local", ptr %l864, i32 0, i32 3
  %t1717 = load i32, ptr %t1716, !tbaa !23
  %t1718 = load ptr, ptr %l854, !tbaa !29
  %t1720 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t1718, i32 %t1717)
  store { i64, [2 x i64] } %t1720, ptr %l866
  br label %bb403
bb403:
  %t1721 = load ptr, ptr %l851, !tbaa !29
  %t1722 = load i64, ptr %l853, !tbaa !24
  %t1723 = load { i64, [2 x i64] }, ptr %l866
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t1721, i64 %t1722, { i64, [2 x i64] } %t1723)
  br label %bb404
bb404:
  br label %bb405
bb405:
  %t1724 = load ptr, ptr %l0, !tbaa !29
  %t1725 = load ptr, ptr %l83, !tbaa !29
  %t1727 = getelementptr %"compiler/typed:Clause", ptr %t1725, i32 0, i32 3
  %t1728 = load ptr, ptr %t1727, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblock(ptr %v0, ptr %v1, ptr %t1724, ptr %t1728)
  br label %bb406
bb406:
  %t1731 = load ptr, ptr %l83, !tbaa !29
  %t1733 = getelementptr %"compiler/typed:Clause", ptr %t1731, i32 0, i32 4
  %t1734 = load { i64, ptr }, ptr %t1733, !tbaa !27
  store { i64, ptr } %t1734, ptr %l84, !tbaa !27
  store i64 0, ptr %l85, !tbaa !24
  %t1736 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t1738 = extractvalue { i64, ptr } %t1736, 0
  store i64 %t1738, ptr %l86, !tbaa !24
  br label %bb407
bb407:
  %t1740 = load i64, ptr %l85, !tbaa !24
  %t1741 = load i64, ptr %l86, !tbaa !24
  %t1744 = icmp slt i64 %t1740, %t1741
  %t1746 = xor i1 %t1744, true
  br i1 %t1746, label %bb408, label %bb409
bb408:
  br label %bb438
bb409:
  br label %bb410
bb410:
  %t1748 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t1748, ptr %l878, !tbaa !27
  %t1749 = load i64, ptr %l85, !tbaa !24
  %t1751 = getelementptr { i64, ptr }, ptr %l878, i32 0, i32 1
  %t1752 = load ptr, ptr %t1751, !tbaa !27
  %t1753 = getelementptr ptr, ptr %t1752, i64 %t1749
  %t1754 = load ptr, ptr %t1753, !tbaa !39
  store ptr %t1754, ptr %l87, !tbaa !29
  %t1756 = load ptr, ptr %l0, !tbaa !29
  %t1757 = load ptr, ptr %l87, !tbaa !29
  %t1759 = load { i64, [2 x i64] }, ptr %l78
  %t1763 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1756, ptr %t1757, { i64, [2 x i64] } %t1759)
  store %"compiler/scope:Val" %t1763, ptr %l885
  br label %bb411
bb411:
  %t1764 = load %"compiler/scope:Val", ptr %l885
  store %"compiler/scope:Val" %t1764, ptr %l88
  %t1765 = getelementptr %"compiler/scope:Val", ptr %l88, i32 0, i32 0
  %t1766 = load i32, ptr %t1765, !range !{i32 0, i32 5}
  %t1768 = trunc i64 3 to i32
  %t1769 = icmp eq i32 %t1766, %t1768
  br i1 %t1769, label %bb412, label %bb413
bb412:
  %t1771 = getelementptr %"compiler/scope:Val", ptr %l88, i32 0, i32 1
  %t1772 = load { i64, [2 x i64] }, ptr %t1771
  %t1774 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1772)
  store i1 %t1774, ptr %l890
  br label %bb414
bb413:
  store i1 false, ptr %l888, !tbaa !21
  br label %bb415
bb414:
  %t1775 = load i1, ptr %l890, !tbaa !21
  store i1 %t1775, ptr %l888, !tbaa !21
  br label %bb415
bb415:
  %t1776 = load i1, ptr %l888, !tbaa !21
  store i1 %t1776, ptr %l89, !tbaa !21
  %t1777 = load ptr, ptr %l0, !tbaa !29
  %t1779 = getelementptr %"compiler/scope:Scoper", ptr %t1777, i32 0, i32 28
  %t1780 = load i1, ptr %t1779, !tbaa !21
  br i1 %t1780, label %bb416, label %bb417
bb416:
  %t1782 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1782, ptr %l894, !tbaa !29
  %t1783 = load ptr, ptr %l1, !tbaa !29
  %t1785 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1783)
  store i32 %t1785, ptr %l896
  br label %bb418
bb417:
  store i1 false, ptr %l893, !tbaa !21
  br label %bb420
bb418:
  %t1786 = load ptr, ptr %l894, !tbaa !29
  %t1787 = load i32, ptr %l896, !tbaa !23
  %t1788 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t1786, i32 %t1787)
  store i1 %t1788, ptr %l897
  br label %bb419
bb419:
  %t1789 = load i1, ptr %l897, !tbaa !21
  store i1 %t1789, ptr %l893, !tbaa !21
  br label %bb420
bb420:
  %t1790 = load i1, ptr %l893, !tbaa !21
  br i1 %t1790, label %bb421, label %bb422
bb421:
  %t1791 = load i1, ptr %l89, !tbaa !21
  %t1793 = xor i1 %t1791, true
  store i1 %t1793, ptr %l898, !tbaa !21
  br label %bb423
bb422:
  store i1 false, ptr %l898, !tbaa !21
  br label %bb423
bb423:
  %t1795 = load i1, ptr %l898, !tbaa !21
  br i1 %t1795, label %bb424, label %bb425
bb424:
  %t1796 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1796, ptr %l902, !tbaa !29
  %t1797 = load %"compiler/scope:Val", ptr %l79
  store %"compiler/scope:Val" %t1797, ptr %l903
  %t1798 = load %"compiler/scope:Val", ptr %l88
  store %"compiler/scope:Val" %t1798, ptr %l904
  %t1799 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1799, ptr %l905, !tbaa !29
  %t1800 = load ptr, ptr %l1, !tbaa !29
  %t1802 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1800)
  store i32 %t1802, ptr %l907
  br label %bb426
bb425:
  store i1 false, ptr %l901, !tbaa !21
  br label %bb429
bb426:
  %t1803 = load ptr, ptr %l905, !tbaa !29
  %t1804 = load i32, ptr %l907, !tbaa !23
  %t1805 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t1803, i32 %t1804)
  store i1 %t1805, ptr %l908
  br label %bb427
bb427:
  %t1806 = load ptr, ptr %l902, !tbaa !29
  %t1807 = load %"compiler/scope:Val", ptr %l903
  %t1808 = load %"compiler/scope:Val", ptr %l904
  %t1809 = load i1, ptr %l908, !tbaa !21
  %t1810 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edefaultFits(ptr %v0, ptr %t1806, %"compiler/scope:Val" %t1807, %"compiler/scope:Val" %t1808, i1 %t1809)
  store i1 %t1810, ptr %l909
  br label %bb428
bb428:
  %t1811 = load i1, ptr %l909, !tbaa !21
  %t1812 = xor i1 %t1811, true
  store i1 %t1812, ptr %l901, !tbaa !21
  br label %bb429
bb429:
  %t1814 = load i1, ptr %l901, !tbaa !21
  br i1 %t1814, label %bb430, label %bb431
bb430:
  store %olang.scope zeroinitializer, ptr %s49
  %t1815 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1815, ptr %l911, !tbaa !29
  %t1816 = load ptr, ptr %l0, !tbaa !29
  %t1817 = load ptr, ptr %l87, !tbaa !29
  %t1820 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t1816, ptr %t1817)
  store %"compiler/source:Span" %t1820, ptr %l914
  br label %bb432
bb431:
  br label %bb435
bb432:
  %t1821 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultScope(ptr %s49)
  store %"compiler/diagmsg:Msg" %t1821, ptr %l915
  br label %bb433
bb433:
  %t1822 = load ptr, ptr %l911, !tbaa !29
  %t1823 = load %"compiler/source:Span", ptr %l914
  %t1824 = load %"compiler/diagmsg:Msg", ptr %l915
  %t1825 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s49, ptr %t1822, %"compiler/source:Span" %t1823, %"compiler/diagmsg:Msg" %t1824)
  store i64 %t1825, ptr %l916
  br label %bb434
bb434:
  call void @__olang_scope_close(ptr %s49)
  br label %bb435
bb435:
  %t1826 = load ptr, ptr %l0, !tbaa !29
  %t1827 = load %"compiler/scope:Val", ptr %l77
  %t1828 = load %"compiler/scope:Val", ptr %l88
  %t1829 = load { i64, [2 x i64] }, ptr %l3
  %t1834 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoin(ptr %v0, ptr %t1826, %"compiler/scope:Val" %t1827, %"compiler/scope:Val" %t1828, { i64, [2 x i64] } %t1829)
  store %"compiler/scope:Val" %t1834, ptr %l921
  br label %bb436
bb436:
  %t1835 = load %"compiler/scope:Val", ptr %l921
  store %"compiler/scope:Val" %t1835, ptr %l77
  br label %bb437
bb437:
  %t1836 = load i64, ptr %l85, !tbaa !24
  %t1838 = add i64 %t1836, 1
  store i64 %t1838, ptr %l85, !tbaa !24
  br label %bb407
bb438:
  br label %bb439
bb439:
  %t1840 = load i64, ptr %l81, !tbaa !24
  %t1842 = add i64 %t1840, 1
  store i64 %t1842, ptr %l81, !tbaa !24
  br label %bb389
bb440:
  %t1844 = load %"compiler/scope:Val", ptr %l77
  store %"compiler/scope:Val" %t1844, ptr %rv
  br label %ret
bb441:
  %t1846 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1846, ptr %l927, !tbaa !29
  store i1 false, ptr %l928, !tbaa !21
  %t1847 = load ptr, ptr %l927, !tbaa !29
  %t1848 = icmp ne ptr %t1847, null
  br i1 %t1848, label %bb442, label %bb443
bb442:
  %t1850 = load ptr, ptr %l927, !tbaa !29
  %t1851 = load i64, ptr %t1850, !range !{i64 0, i64 18}
  %t1853 = icmp eq i64 %t1851, 15
  store i1 %t1853, ptr %l928, !tbaa !21
  br label %bb443
bb443:
  %t1854 = load i1, ptr %l928, !tbaa !21
  br i1 %t1854, label %bb444, label %bb445
bb444:
  %t1855 = load ptr, ptr %l1, !tbaa !29
  %t1857 = getelementptr { i64, [5 x i64] }, ptr %t1855, i32 0, i32 1
  %t1858 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1857, i32 0, i32 0
  %t1859 = load %"compiler/source:Span", ptr %t1858
  store %"compiler/source:Span" %t1859, ptr %l90
  %t1861 = load ptr, ptr %l1, !tbaa !29
  %t1863 = getelementptr { i64, [5 x i64] }, ptr %t1861, i32 0, i32 1
  %t1864 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1863, i32 0, i32 2
  %t1865 = load ptr, ptr %t1864
  store ptr %t1865, ptr %l91, !tbaa !29
  br label %bb446
bb445:
  br label %bb448
bb446:
  %t1867 = load ptr, ptr %l0, !tbaa !29
  %t1868 = load ptr, ptr %l91, !tbaa !29
  %t1869 = load { i64, [2 x i64] }, ptr %l3
  %t1870 = load %"compiler/source:Span", ptr %l90
  %t1875 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnVal(ptr %v0, ptr %v1, ptr %t1867, ptr %t1868, { i64, [2 x i64] } %t1869, %"compiler/source:Span" %t1870)
  store %"compiler/scope:Val" %t1875, ptr %l939
  br label %bb447
bb447:
  %t1876 = load %"compiler/scope:Val", ptr %l939
  store %"compiler/scope:Val" %t1876, ptr %rv
  br label %ret
bb448:
  %t1877 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1877, ptr %l940, !tbaa !29
  store i1 false, ptr %l941, !tbaa !21
  %t1878 = load ptr, ptr %l940, !tbaa !29
  %t1879 = icmp ne ptr %t1878, null
  br i1 %t1879, label %bb449, label %bb450
bb449:
  %t1881 = load ptr, ptr %l940, !tbaa !29
  %t1882 = load i64, ptr %t1881, !range !{i64 0, i64 18}
  %t1884 = icmp eq i64 %t1882, 16
  store i1 %t1884, ptr %l941, !tbaa !21
  br label %bb450
bb450:
  %t1885 = load i1, ptr %l941, !tbaa !21
  br i1 %t1885, label %bb451, label %bb452
bb451:
  %t1886 = load ptr, ptr %l1, !tbaa !29
  %t1888 = getelementptr { i64, [5 x i64] }, ptr %t1886, i32 0, i32 1
  %t1889 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1888, i32 0, i32 2
  %t1890 = load ptr, ptr %t1889
  store ptr %t1890, ptr %l92, !tbaa !29
  br label %bb453
bb452:
  br label %bb474
bb453:
  %t1892 = load ptr, ptr %l0, !tbaa !29
  %t1893 = load ptr, ptr %l92, !tbaa !29
  %t1895 = getelementptr %"compiler/typed:Text", ptr %t1893, i32 0, i32 1
  %t1896 = load i32, ptr %t1895, !tbaa !23
  %t1897 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t1892, i32 %t1896, { i64, [2 x i64] } %t1897)
  br label %bb454
bb454:
  %t1901 = load ptr, ptr %l92, !tbaa !29
  %t1903 = getelementptr %"compiler/typed:Text", ptr %t1901, i32 0, i32 0
  %t1904 = load { i64, ptr }, ptr %t1903, !tbaa !27
  store { i64, ptr } %t1904, ptr %l93, !tbaa !27
  store i64 0, ptr %l94, !tbaa !24
  %t1906 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t1908 = extractvalue { i64, ptr } %t1906, 0
  store i64 %t1908, ptr %l95, !tbaa !24
  br label %bb455
bb455:
  %t1910 = load i64, ptr %l94, !tbaa !24
  %t1911 = load i64, ptr %l95, !tbaa !24
  %t1914 = icmp slt i64 %t1910, %t1911
  %t1916 = xor i1 %t1914, true
  br i1 %t1916, label %bb456, label %bb457
bb456:
  br label %bb472
bb457:
  br label %bb458
bb458:
  %t1918 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t1918, ptr %l958, !tbaa !27
  %t1919 = load i64, ptr %l94, !tbaa !24
  %t1921 = getelementptr { i64, ptr }, ptr %l958, i32 0, i32 1
  %t1922 = load ptr, ptr %t1921, !tbaa !27
  %t1923 = getelementptr ptr, ptr %t1922, i64 %t1919
  %t1924 = load ptr, ptr %t1923, !tbaa !39
  store ptr %t1924, ptr %l96, !tbaa !29
  %t1926 = load ptr, ptr %l96, !tbaa !29
  store ptr %t1926, ptr %l961, !tbaa !29
  store i1 false, ptr %l962, !tbaa !21
  %t1927 = load ptr, ptr %l961, !tbaa !29
  %t1928 = icmp ne ptr %t1927, null
  br i1 %t1928, label %bb459, label %bb460
bb459:
  %t1930 = load ptr, ptr %l961, !tbaa !29
  %t1931 = load i64, ptr %t1930, !range !{i64 0, i64 2}
  %t1933 = icmp eq i64 %t1931, 1
  store i1 %t1933, ptr %l962, !tbaa !21
  br label %bb460
bb460:
  %t1934 = load i1, ptr %l962, !tbaa !21
  br i1 %t1934, label %bb461, label %bb462
bb461:
  %t1935 = load ptr, ptr %l96, !tbaa !29
  %t1937 = getelementptr { i64, [2 x i64] }, ptr %t1935, i32 0, i32 1
  %t1938 = getelementptr { ptr }, ptr %t1937, i32 0, i32 0
  %t1939 = load ptr, ptr %t1938
  store ptr %t1939, ptr %l97, !tbaa !29
  br label %bb463
bb462:
  br label %bb465
bb463:
  %t1941 = load ptr, ptr %l0, !tbaa !29
  %t1942 = load ptr, ptr %l97, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t1944
  %t1945 = getelementptr { i64, [2 x i64] }, ptr %t1944, i32 0, i32 0
  store i64 0, ptr %t1945
  %t1946 = load { i64, [2 x i64] }, ptr %t1944
  %t1950 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1941, ptr %t1942, { i64, [2 x i64] } %t1946)
  store %"compiler/scope:Val" %t1950, ptr %l971
  br label %bb464
bb464:
  br label %bb470
bb465:
  br i1 true, label %bb466, label %bb467
bb466:
  br label %bb468
bb467:
  br label %bb469
bb468:
  br label %bb470
bb469:
  call void @__olang_check_failed(ptr @olang_loc_c8e4956a22175e34_6f39088095568ee0)
  unreachable
bb470:
  br label %bb471
bb471:
  %t1951 = load i64, ptr %l94, !tbaa !24
  %t1953 = add i64 %t1951, 1
  store i64 %t1953, ptr %l94, !tbaa !24
  br label %bb455
bb472:
  %t1955 = load { i64, [2 x i64] }, ptr %l3
  %t1957 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %t1955)
  store %"compiler/scope:Val" %t1957, ptr %l975
  br label %bb473
bb473:
  %t1958 = load %"compiler/scope:Val", ptr %l975
  store %"compiler/scope:Val" %t1958, ptr %rv
  br label %ret
bb474:
  %t1959 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1959, ptr %l976, !tbaa !29
  store i1 false, ptr %l977, !tbaa !21
  %t1960 = load ptr, ptr %l976, !tbaa !29
  %t1961 = icmp ne ptr %t1960, null
  br i1 %t1961, label %bb475, label %bb476
bb475:
  %t1963 = load ptr, ptr %l976, !tbaa !29
  %t1964 = load i64, ptr %t1963, !range !{i64 0, i64 18}
  %t1966 = icmp eq i64 %t1964, 17
  store i1 %t1966, ptr %l977, !tbaa !21
  br label %bb476
bb476:
  %t1967 = load i1, ptr %l977, !tbaa !21
  br i1 %t1967, label %bb477, label %bb478
bb477:
  %t1968 = load ptr, ptr %l1, !tbaa !29
  %t1970 = getelementptr { i64, [5 x i64] }, ptr %t1968, i32 0, i32 1
  %t1971 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t1970, i32 0, i32 2
  %t1972 = load ptr, ptr %t1971
  store ptr %t1972, ptr %l98, !tbaa !29
  br label %bb479
bb478:
  br label %bb481
bb479:
  %t1974 = load ptr, ptr %l0, !tbaa !29
  %t1975 = load ptr, ptr %l98, !tbaa !29
  %t1977 = load { i64, [2 x i64] }, ptr %l2
  %t1981 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1974, ptr %t1975, { i64, [2 x i64] } %t1977)
  store %"compiler/scope:Val" %t1981, ptr %l986
  br label %bb480
bb480:
  %t1982 = load %"compiler/scope:Val", ptr %l986
  store %"compiler/scope:Val" %t1982, ptr %rv
  br label %ret
bb481:
  call void @__olang_check_failed(ptr @olang_loc_ff2db6a451da6553_527b46068bfe3177)
  unreachable
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i1
  %l13 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/diagmsg:Msg"
  %l21 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewSource(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %t11, i64 %t12)
  store i1 %t15, ptr %l13
  br label %bb4
bb4:
  %t16 = load i1, ptr %l13, !tbaa !21
  store i1 %t16, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l15, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l16
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l4, !tbaa !24
  %t27 = call %"compiler/diagmsg:Msg" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewKeptMsg(ptr %v0, ptr %s0, ptr %t21, i64 %t22, i1 %a3)
  store %"compiler/diagmsg:Msg" %t27, ptr %l20
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l16
  %t30 = load %"compiler/diagmsg:Msg", ptr %l20
  %t31 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s0, ptr %t28, %"compiler/source:Span" %t29, %"compiler/diagmsg:Msg" %t30)
  store i64 %t31, ptr %l21
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local i1 @compiler_2fscope_2eresultsOnly(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/scope:rel"
  %l5 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca %"compiler/scope:rel"
  %l21 = alloca i1
  %l26 = alloca { i64, [1 x i64] }
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l9, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l11
  br label %bb2
bb2:
  %t7 = load i64, ptr %l9, !tbaa !24
  %t8 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t13, i64 %t14)
  store %"compiler/scope:rel" %t17, ptr %l16
  br label %bb6
bb6:
  %t18 = load %"compiler/scope:rel", ptr %l16
  store %"compiler/scope:rel" %t18, ptr %l4
  %t19 = getelementptr %"compiler/scope:rel", ptr %l4, i32 0, i32 1
  %t20 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t20, ptr %l5
  %t22 = load { i64, [2 x i64] }, ptr %l5
  %t24 = extractvalue { i64, [2 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 2
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb10
bb8:
  %t29 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t30 = getelementptr { i64 }, ptr %t29, i32 0, i32 0
  %t31 = load i64, ptr %t30
  %t35 = getelementptr %"compiler/typed:Body", ptr %a0, i32 0, i32 6
  %t39 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t35, i64 %t31)
  store { i64, [1 x i64] } %t39, ptr %l26
  br label %bb9
bb9:
  %t40 = load { i64, [1 x i64] }, ptr %l26
  %t42 = extractvalue { i64, [1 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 1
  %t45 = xor i1 %t43, true
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t47 = load i1, ptr %l21, !tbaa !21
  br i1 %t47, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t49 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t50 = getelementptr { i64 }, ptr %t49, i32 0, i32 0
  %t51 = load i64, ptr %t50
  store i64 %t51, ptr %l7, !tbaa !24
  br label %bb14
bb14:
  %t53 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l3, !tbaa !24
  br label %bb1
bb15:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb6
bb6:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l2
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l9, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3afnRecs_2e3
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = call ptr @__olang_region_make(ptr %v0)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t28 = load i64, ptr %l9
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l11
  br label %bb9
bb9:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3afnRecs_2e3
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load i64, ptr %l9
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb11
bb11:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t43 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  %t44 = insertvalue %"compiler/scope:fnRecs" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, 0
  %t45 = load i1, ptr %l1, !tbaa !21
  %t46 = insertvalue %"compiler/scope:fnRecs" %t44, i1 %t45, 1
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t48 = insertvalue %"compiler/scope:fnRecs" %t46, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, 2
  %t50 = insertvalue %"compiler/scope:fnRecs" %t48, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, 3
  store %"compiler/scope:fnRecs" %t50, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
}

define dso_local %"compiler/scope:placeSlot" @compiler_2fscope_3aplaceSlot_2ector(ptr %v0, { i64, [2 x i64] } %a0, i1 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/scope:placeSlot"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/scope:placeSlot" undef, { i64, [2 x i64] } %a0, 0
  %t10 = insertvalue %"compiler/scope:placeSlot" %t8, i1 %a1, 1
  %t12 = insertvalue %"compiler/scope:placeSlot" %t10, i64 %a2, 2
  store %"compiler/scope:placeSlot" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:placeSlot", ptr %rv
  ret %"compiler/scope:placeSlot" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
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
@.d0 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" outlives " }>, align 8
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
define internal i1 @olang_lambda_1(ptr %env, i32 %a0) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholdsPart(ptr %vc0, ptr %cv0, i32 %a0)
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
@.d2 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"fails root " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d3 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" kind " }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d5 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"fit fails " }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
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
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  br label %bb1
bb3:
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t8, i64 %t9)
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t15 = sext i32 %t13 to i64
  %t16 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t17 = call i64 @__olang_fmt_i64(ptr %t16, i64 %t15)
  call void @__olang_sb_add(ptr %v0, i64 %t17)
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t18, i64 %t19)
  br label %bb1
bb4:
  %t20 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t20, i64 %t21)
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t22, i64 %t23)
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 1
  %t26 = getelementptr { i64 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  %t29 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t27)
  call void @__olang_sb_add(ptr %v0, i64 %t30)
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb5:
  %t33 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb6:
  %t35 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  %t41 = getelementptr { i64, i64 }, ptr %t40, i32 0, i32 0
  %t42 = load i64, ptr %t41
  %t44 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t45 = call i64 @__olang_fmt_i64(ptr %t44, i64 %t42)
  call void @__olang_sb_add(ptr %v0, i64 %t45)
  %t46 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t46, i64 %t47)
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  %t50 = getelementptr { i64, i64 }, ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50
  %t53 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t54 = call i64 @__olang_fmt_i64(ptr %t53, i64 %t51)
  call void @__olang_sb_add(ptr %v0, i64 %t54)
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb7:
  %t57 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i32 0, i32 1
  %t63 = getelementptr { i64 }, ptr %t62, i32 0, i32 0
  %t64 = load i64, ptr %t63
  %t66 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t67 = call i64 @__olang_fmt_i64(ptr %t66, i64 %t64)
  call void @__olang_sb_add(ptr %v0, i64 %t67)
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t68, i64 %t69)
  br label %bb1
bb8:
  %t70 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t70, i64 %t71)
  br label %bb1
ret:
  ret void
}

@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" into " }>, align 8
@.d7 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" exact " }>, align 8
@.c8 = private unnamed_addr constant [5 x i8] c"true\00"
@.c9 = private unnamed_addr constant [6 x i8] c"false\00"
@.d10 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" kind " }>, align 8
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
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
declare void @__olang_sb_done(ptr)
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
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

@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"if" }>, align 8
@.d15 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"the function" }>, align 8
@.d16 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"the program's scope" }>, align 8
@.d17 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"'s scope" }>, align 8
@.d18 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"an outer block of " }>, align 8
@.d19 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a longer-lived scope" }>, align 8
@olang_2esole_2ecompiler_2fscope_3afnRecs_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fscope_3afnRecs_2e3 = weak hidden constant i1 false
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
@.d20 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"scope.Term.None" }>, align 8
@.d21 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"scope.Term.Block" }>, align 8
@.d22 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d23 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d24 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Var" }>, align 8
@.d25 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Program" }>, align 8
@.d26 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Derived" }>, align 8
@.d27 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d28 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Set" }>, align 8
@.d29 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"scope.Term.Untraced" }>, align 8
declare ptr @__olang_sb_grow(ptr, i64) noinline
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
declare void @compiler_2fscope_2ecollectExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecollectField(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecollectPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1f46f0e2a5866641_40fe5c75700827d5 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, ptr %a3)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
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
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eWhyField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare { i32, %"compiler/scope:agreeAt" } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eagreeStep(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2, { i64, [2 x i64] } %a3, i1 %a4)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeArgsDisagree(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2ftypes_3aTypeId_3e_2eSome_3ccompiler_2ftypes_3aTypeId_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_cfcf18c073820f59_53afec36dfd19fdd = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholdsPart(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e0ca076508909588_46e7bcff37f61d2c = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildThroughUnknownScope(ptr %v0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDerived(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eSetAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_d867a1bfd37ee6cf_dcf5a89f84b878b3 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionLocals(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegions(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisLambda(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ethroughElemExpr(ptr %v0, ptr %a0)
@olang_loc_cad6ea40519e9749_ea608eb2fc6ab735 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_47dfda24c0d910ef_d5dd1abdea0dbd2b = external constant [0 x i8]
@G_2ecompiler_2fscope_2eFitLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efitError(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eFailsBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFailsUnknown = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftLocal(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeLocal(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3)
@olang_loc_a04ac57bfa252d17_7b19209bfba3c4d3 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsOwn(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eFitField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeFieldArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %a0)
@G_2ecompiler_2fscope_2eObliged = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3)
@olang_loc_7c032d569a98caf9_7007970b8e88fba5 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_833831a19b970c28_77aab458c7a9e174 = external constant [0 x i8]
@olang_loc_c2cadef70f196c03_af516fcb9d4cc0af = external constant [0 x i8]
@olang_loc_7fbb74a7c576c4fd_63f758b49396c059 = external constant [0 x i8]
@olang_loc_75a4f489d269fafa_986c6f7f7ed7b69e = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_eb63e604b2611290_41d83017cc1dec3c = external constant [0 x i8]
@olang_loc_6c6eb04d68cfd0ef_192fcc26ed37d7ab = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eUseThru = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_10bab568b406970b_66071842e5074daf = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H28d9ab5e291734bc3f5dada0ed141e4b(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeAll(ptr %v0, ptr %a0, i1 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epromoteDecl(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0d83a40c67cd8749e6caf886dac77c3a(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H50b542c856ab641bdb3083563d5a1f0c(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDecl(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_23c81803d40008f7_62b49cfbea8bbbfb = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_3e5632f45eefd04_2819d69fa7782c38 = external constant [0 x i8]
@olang_loc_754a4fe24afb426a_2a858937208e2b6e = external constant [0 x i8]
@olang_loc_2499e51069c13992_a0c2ded5248e3e66 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldCall(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_dd2a7e97808fa897_95cc897457ffa94b = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_b3d0a58c9aaf8750_fe9e0f20e20fd5b4 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H97b95e9ae0becdc6438cd4b7dda0e1e4(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2, i32 %a3, ptr %a4)
@G_2ecompiler_2fscope_2eBndLate = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndError(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3, i64 %a4)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %a0)
@olang_loc_4ccbcb45df0141a6_19706046becd886a = external constant [0 x i8]
@olang_loc_8b7e95a2be190b8d_8374a99933a5c471 = external constant [0 x i8]
@olang_loc_a42570ec148c1b78_dde1581633b6387c = external constant [0 x i8]
@olang_loc_9aaad908d3e71fae_f22ca2548cb14c12 = external constant [0 x i8]
@olang_loc_fefa308e31290faa_fd7939a3bcfd0266 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteCondValue(ptr %v0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/diagmsg:Msg" %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i1 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
declare i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0)
@olang_loc_f6ab244bf9a60895_3da90549b61465f9 = external constant [0 x i8]
@olang_loc_ada1cd0371fb99a4_44de0994b712a728 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etransient(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i1 %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
@olang_loc_2c98fa489637e3df_8470b6ea2a950703 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_8680c8bf7a40147c_d650a7d3d4e83170 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastBracket(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_22d8393d4f188012_8c9f9e39cb427896 = external constant [0 x i8]
@olang_loc_7213214fb222d0c9_1eae7674ed2401ad = external constant [0 x i8]
@olang_loc_2c141a427a2fa071_f343db408d9fc8c5 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekBorrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_d7c77d41b4c80261_4f2f6407fce85cbd = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_1659d5e4bc32803f_da709a3eab248d73 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evarScopeName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_774db167a3bb8d3e_7a083a08915298f2 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyParamName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
@olang_loc_fba7553b6c5e0ea_50fdebea86f99ab6 = external constant [0 x i8]
@olang_loc_79bebea62b9e1cf1_163bbb4583e74a1d = external constant [0 x i8]
@olang_loc_d42b6d232bae90fc_92457687da3f2548 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_4cca97e9315dc06b_ef98c8592f9f4967 = external constant [0 x i8]
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_6bff29c0022268a5_acca8b13a06d359 = external constant [0 x i8]
declare ptr @compiler_2fscope_2eadapterRecv(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOwn(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldTemp(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeView(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare ptr @compiler_2fscope_2ecopiedView(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fscope_2eprojectedCall(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fscope_2epartRead(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertsStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldRec(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_1f822cf482d6793b_12ec613171e9a28f = external constant [0 x i8]
@olang_loc_9a1b93258b1da84_57bf846225d5f380 = external constant [0 x i8]
@olang_loc_e9e66f9941e1beea_28122a33a94c6066 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_eebfc4319566ad8a_fa3c553f7bca103e = external constant [0 x i8]
@olang_loc_472824ea9c9f9618_8b7f7100f340f49c = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enarrowingMatters(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eFitGlobal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_77e7b6a4b27ab7c9_3da8a98d531788e5 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotKind(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
@olang_loc_7d6976d865ec0cf8_e8a6381acfe481b4 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailParam(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, ptr %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailGivenRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
@olang_loc_daac038632d28eef_8fc443c207accaeb = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2, ptr %a3, i1 %a4, { i64, ptr } %a5)
@olang_loc_5042ae5260cf85f5_3d2bef1206874e11 = external constant [0 x i8]
@G_2ecompiler_2fscope_2eTwinDepth = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eTwinsPerBody = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
@G_2ecompiler_2fscope_2eTwinsLeast = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\01\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eUseOwn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNumberLike(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExprs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2eisParamRead(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eownView(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueSliceBounds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueArm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enumberField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_94ea3fd5578d6989_449fcf7b944ae615 = external constant [0 x i8]
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapPassed(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %v0, i32 %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereadCursor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eread(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, { i64, [2 x i64] } %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailCloses(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailDtorRow(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fscope_2eanyArrayBox(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeCase(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@G_2ecompiler_2fscope_2eFitAnyCopy = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %a0)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecall(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, [2 x i64] } %a4)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, { i64, [2 x i64] } %a3)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eitemKind(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
@olang_loc_c2fa93d259f2a930_39b628a0a193c8f4 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epayloadAgree(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePop_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efuncHeld(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, { i64, [2 x i64] } %a3)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDerived(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropHome(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartLand(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, { i64, [2 x i64] } %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplitPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSliceSplitValue(ptr %v0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb4ab14fd1aa8deeb21095c3402461540(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7fc6f86e6d881397_d60d455fa8d09f43 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceDest(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoin(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, %"compiler/scope:Val" %a2, { i64, [2 x i64] } %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ematch(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_5f16a8eab1ed6da6_36cf0c262a87afc2 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edefaultFits(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, %"compiler/scope:Val" %a2, i1 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultScope(ptr %v0)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnVal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3)
@olang_loc_c8e4956a22175e34_6f39088095568ee0 = external constant [0 x i8]
@olang_loc_ff2db6a451da6553_527b46068bfe3177 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewSource(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewKeptMsg(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_97a3337844e24daf_abbacdff6e992493 = external constant [0 x i8]
@olang_loc_21f109796fa0acee_6e7b91baaed0fa92 = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
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
