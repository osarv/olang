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
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/scope:placeSlot" = type { { i64, [2 x i64] }, i1, i64 }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/types:DtorWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/scope:walked" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/scope:markRead" = type { i64, i64, { i64, [1 x i64] } }
%"compiler/scope:sumRead" = type { i64, ptr }
%"compiler/scope:compRun" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/diag:Taken", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/diag:Taken" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ePromotedFields(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l9 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l11 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l12 = alloca i32
  %l14 = alloca i1
  %l18 = alloca i1
  %l22 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i64
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 223
  %t9 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf554e3812f6eb8d76d1c74a8cefae175(ptr %v0, ptr %v0, ptr %t7)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l8
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t10, ptr %l2
  br label %bb3
bb3:
  %t12 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hba5334df3403b24ff847af207d19ebe6(ptr %v0, ptr %l2)
  %t13 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t12, 1
  %t14 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t12, 0
  store i32 %t14, ptr %l12
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb5, label %ok.16, !prof !99
ok.16:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t13, ptr %l11
  br label %bb4
bb4:
  %t17 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t17, ptr %l9
  br label %bb7
bb5:
  %t18 = load i32, ptr %l12, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  store i1 %t21, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  br label %bb18
bb7:
  %t22 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l9
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t22, ptr %l3
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 224
  %t26 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t29 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t25, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t26)
  store i1 %t29, ptr %l18
  br label %bb8
bb8:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/load:Loader", ptr %t37, i32 0, i32 3
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l22, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 0
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = trunc i64 %t48 to i32
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t46, i32 %t50)
  store i32 %t54, ptr %l29
  br label %bb12
bb12:
  %t55 = load ptr, ptr %l22, !tbaa !29
  %t56 = load i32, ptr %l29, !tbaa !23
  %t57 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t55, i32 %t56)
  store { i64, ptr } %t57, ptr %l30
  br label %bb13
bb13:
  %t58 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t58, ptr %l4, !tbaa !27
  %t59 = load ptr, ptr %lp1
  store ptr %t59, ptr %l31, !tbaa !29
  %t60 = ptrtoint ptr %v1 to i64
  store i64 %t60, ptr %l32, !tbaa !24
  %t61 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = call ptr @__olang_region_make(ptr %v1)
  %t64 = ptrtoint ptr %t63 to i64
  store i64 %t64, ptr %l32, !tbaa !24
  br label %bb15
bb15:
  %t65 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t66 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t67 = load i64, ptr %t66, !tbaa !24
  %t69 = extractvalue { i64, ptr } %t65, 1
  %t70 = extractvalue { i64, ptr } %t65, 0
  %t71 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t75 = call i64 @__olang_fmt_i64(ptr null, i64 %t67)
  %t76 = add i64 %t73, %t75
  %t77 = load i64, ptr %l32
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = call ptr @__olang_scope_alloc(ptr %t78, i64 %t76)
  call void @olang_textcopy(ptr %t79, ptr %t69, i64 %t70)
  %t80 = getelementptr i8, ptr %t79, i64 %t70
  call void @olang_textcopy(ptr %t80, ptr %t71, i64 %t72)
  %t81 = getelementptr i8, ptr %t80, i64 %t72
  %t82 = call i64 @__olang_fmt_i64(ptr %t81, i64 %t67)
  %t83 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t79, 1
  %t86 = load i64, ptr %l32
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = extractvalue { i64, ptr } %t84, 0
  %t89 = extractvalue { i64, ptr } %t84, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %t87, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t94 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t94, { i64, ptr } %t93)
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb3
bb18:
  %t96 = load ptr, ptr %lp1
  %t97 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t96
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindingArg(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:rel"
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l13 = alloca i1
  %l16 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca i1
  %l27 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca %"compiler/scope:rel"
  %l50 = alloca i1
  %l63 = alloca i1
  %l64 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1, ptr %l9, !tbaa !27
  %t2 = load i64, ptr %l2, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i64, ptr %t5, i64 %t2
  %t7 = load i64, ptr %t6, !tbaa !34
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb3
bb2:
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  store i1 %t13, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l13, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 6
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l20
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l20, !tbaa !29
  %t25 = getelementptr %"compiler/scope:summary", ptr %t23, i32 0, i32 19
  %t26 = load i1, ptr %t25, !tbaa !21
  br i1 %t26, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb10
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 6
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t30, i64 %t31)
  store ptr %t34, ptr %l27
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l27, !tbaa !29
  %t37 = getelementptr %"compiler/scope:summary", ptr %t35, i32 0, i32 20
  %t38 = load i1, ptr %t37, !tbaa !21
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l23, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t43 = load i1, ptr %l16, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t44, ptr %l31, !tbaa !27
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i64, ptr %t48, i64 %t45
  %t50 = load i64, ptr %t49, !tbaa !34
  store i64 %t50, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 6
  %t55 = load i64, ptr %l1, !tbaa !24
  %t58 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t54, i64 %t55)
  store ptr %t58, ptr %l37
  br label %bb15
bb15:
  %t59 = load ptr, ptr %l37, !tbaa !29
  %t61 = getelementptr %"compiler/scope:summary", ptr %t59, i32 0, i32 0
  store ptr %t61, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  %t63 = load i64, ptr %l5, !tbaa !24
  store i64 %t63, ptr %l40, !tbaa !24
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l42
  br label %bb17
bb17:
  %t67 = load i64, ptr %l40, !tbaa !24
  %t68 = load i64, ptr %l42, !tbaa !24
  %t69 = icmp slt i64 %t67, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb18, label %bb19
bb18:
  br label %bb44
bb19:
  br label %bb20
bb20:
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t74 = load i64, ptr %l5, !tbaa !24
  %t77 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t73, i64 %t74)
  store %"compiler/scope:rel" %t77, ptr %l47
  br label %bb21
bb21:
  %t78 = load %"compiler/scope:rel", ptr %l47
  store %"compiler/scope:rel" %t78, ptr %l6
  %t79 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t80 = load { i64, [2 x i64] }, ptr %t79
  %t82 = extractvalue { i64, [2 x i64] } %t80, 0
  %t83 = icmp eq i64 %t82, 2
  br i1 %t83, label %bb22, label %bb23
bb22:
  %t85 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t86 = getelementptr { i64, [2 x i64] }, ptr %t85, i32 0, i32 1
  %t87 = getelementptr { i64 }, ptr %t86, i32 0, i32 0
  %t88 = load i64, ptr %t87
  %t89 = load i64, ptr %l2, !tbaa !24
  %t92 = icmp eq i64 %t88, %t89
  store i1 %t92, ptr %l50, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb24
bb24:
  %t94 = load i1, ptr %l50, !tbaa !21
  %t95 = xor i1 %t94, true
  br i1 %t95, label %bb25, label %bb26
bb25:
  br label %bb43
bb26:
  br label %bb27
bb27:
  %t97 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 1
  %t98 = load { i64, [2 x i64] }, ptr %t97
  store { i64, [2 x i64] } %t98, ptr %l7
  %t100 = load { i64, [2 x i64] }, ptr %l7
  %t102 = extractvalue { i64, [2 x i64] } %t100, 0
  %t103 = icmp eq i64 %t102, 2
  br i1 %t103, label %bb28, label %bb29
bb28:
  %t105 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t106 = getelementptr { i64 }, ptr %t105, i32 0, i32 0
  %t107 = load i64, ptr %t106
  store i64 %t107, ptr %l8, !tbaa !24
  br label %bb30
bb29:
  br label %bb37
bb30:
  %t109 = load i64, ptr %l8, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 0
  %t115 = icmp slt i64 %t109, %t112
  br i1 %t115, label %bb31, label %bb32
bb31:
  %t117 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t117, ptr %l64, !tbaa !27
  %t118 = load i64, ptr %l8, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i64, ptr %t121, i64 %t118
  %t123 = load i64, ptr %t122, !tbaa !34
  %t125 = icmp sge i64 %t123, 0
  store i1 %t125, ptr %l63, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb33
bb33:
  %t127 = load i1, ptr %l63, !tbaa !21
  br i1 %t127, label %bb34, label %bb35
bb34:
  %t128 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t128, ptr %l68, !tbaa !27
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i64, ptr %t132, i64 %t129
  %t134 = load i64, ptr %t133, !tbaa !34
  store i64 %t134, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_e450486563db1063_185cf2ae254ae0bf)
  unreachable
bb42:
  br label %bb43
bb43:
  %t136 = load i64, ptr %l5, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l5, !tbaa !24
  br label %bb16
bb44:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l6 = alloca i32
  %rv = alloca { i64, [2 x i64] }
  %t43 = alloca { i64, [2 x i64] }, align 8
  %t60 = alloca { i64, [2 x i64] }, align 8
  %t65 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elift(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t9 = icmp eq i32 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb4, label %bb5
bb3:
  br label %bb25
bb4:
  call void @__olang_check_failed(ptr @olang_loc_2dbc08d4832115c_eb31bc54ed1b9440)
  unreachable
bb5:
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 26
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 1
  %t25 = load { i64, [2 x i64] }, ptr %t24
  store { i64, [2 x i64] } %t25, ptr %l3
  %t27 = load { i64, [2 x i64] }, ptr %l3
  %t29 = extractvalue { i64, [2 x i64] } %t27, 0
  %t30 = icmp eq i64 %t29, 1
  br i1 %t30, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb13
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 42
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb10, label %bb11
bb10:
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
  store { i64, [2 x i64] } %t48, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb24
bb13:
  %t50 = load { i64, [2 x i64] }, ptr %l3
  %t52 = extractvalue { i64, [2 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 6
  br i1 %t53, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  %t55 = load { i64, [2 x i64] }, ptr %l3
  %t57 = extractvalue { i64, [2 x i64] } %t55, 0
  %t58 = icmp eq i64 %t57, 7
  br i1 %t58, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t60
  %t61 = getelementptr { i64, [2 x i64] }, ptr %t60, i32 0, i32 0
  store i64 3, ptr %t61
  %t62 = load { i64, [2 x i64] }, ptr %t60
  store { i64, [2 x i64] } %t62, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_1fe97746d4c06972_784e8262c547b126)
  unreachable
bb24:
  br label %bb25
bb25:
  %t64 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t65
  %t66 = getelementptr { i64, [2 x i64] }, ptr %t65, i32 0, i32 0
  store i64 1, ptr %t66
  %t68 = insertvalue { i32 } undef, i32 %t64, 0
  %t69 = getelementptr { i64, [2 x i64] }, ptr %t65, i32 0, i32 1
  store { i32 } %t68, ptr %t69
  %t70 = load { i64, [2 x i64] }, ptr %t65
  store { i64, [2 x i64] } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndStmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsIntoSet(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i32 %a3, i64 %a4, { i64, [2 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l11 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l25 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, [2 x i64] } %a5, 0
  %t4 = icmp eq i64 %t3, 5
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  call void @__olang_check_failed(ptr @olang_loc_ae19eb3dd0d17d29_4ac15fb0aa0c6205)
  unreachable
bb9:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l11
  br label %bb10
bb10:
  %t12 = load i1, ptr %l11, !tbaa !21
  %t13 = xor i1 %t12, true
  br i1 %t13, label %bb11, label %bb12
bb11:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l15
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t20 = load i1, ptr %l15, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
bb14:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l18
  br label %bb15
bb15:
  %t26 = load i1, ptr %l18, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb16, label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l3, !tbaa !23
  %t39 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l25
  br label %bb19
bb19:
  %t40 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t41 = load i64, ptr %l25, !tbaa !24
  %t43 = and i64 %t41, %t40
  %t45 = icmp ne i64 %t43, 0
  br i1 %t45, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l30, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l31, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Call", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t57 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t50, ptr %t54)
  store i64 %t57, ptr %l35
  br label %bb23
bb23:
  %t59 = load ptr, ptr %l30, !tbaa !29
  %t60 = load ptr, ptr %l31, !tbaa !29
  %t61 = load i64, ptr %l35, !tbaa !24
  %t63 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeBuilds(ptr %v0, ptr %v1, ptr %t59, ptr %t60, i64 %t61, i64 %a4)
  store i1 %t63, ptr %l37
  br label %bb24
bb24:
  %t64 = load i1, ptr %l37, !tbaa !21
  store i1 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca ptr
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
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
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb19
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 1
  %t24 = load i32, ptr %l3, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t26)
  store ptr %t29, ptr %l18
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l18, !tbaa !29
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
  br label %bb13
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/load:Loader", ptr %t50, i32 0, i32 3
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l27, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  store ptr %t57, ptr %l29, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l33
  br label %bb10
bb10:
  %t66 = load ptr, ptr %l29, !tbaa !29
  %t67 = load i64, ptr %l33, !tbaa !24
  %t68 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t66, i64 %t67)
  store ptr %t68, ptr %l34
  br label %bb11
bb11:
  %t69 = load ptr, ptr %l34, !tbaa !29
  %t71 = getelementptr %"compiler/ast:Func", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %t71, !tbaa !23
  %t73 = load ptr, ptr %l27, !tbaa !29
  %t75 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s2, ptr %t73, i32 %t72)
  store { i64, ptr } %t75, ptr %l37
  br label %bb12
bb12:
  %t76 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t77, i64 %t78)
  %t80 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t81, ptr %rv
  br label %ret
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_a571972fdacfaed1_c7933b0216b7b5ad)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_9f9bf081c1674640_32724a584f79d5fc)
  unreachable
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t83, ptr %l40, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  store i64 %t85, ptr %l41, !tbaa !24
  %t86 = load i64, ptr %l41, !tbaa !24
  %t87 = mul i64 %t86, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l42, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = load i64, ptr %l41, !tbaa !24
  %t96 = mul i64 %t95, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t92, ptr %t94, i64 %t96, i1 false)
  %t97 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t97, ptr %l40, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapsDiffer(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i32
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, [2 x i64] }
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l53 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca i1
  %l66 = alloca { i64, [2 x i64] }
  %l72 = alloca { i64, [2 x i64] }
  %l74 = alloca { i64, [2 x i64] }
  %l76 = alloca i1
  %rv = alloca i1
  %t70 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l19
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l19, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t9 = load ptr, ptr %l20, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l20, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 15
  store i1 %t15, ptr %l21, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l21, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 0
  %t24 = load %"compiler/source:Span", ptr %t23
  store %"compiler/source:Span" %t24, ptr %l3
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t28, i32 0, i32 1
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l4, !tbaa !23
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l6, !tbaa !29
  %t40 = load ptr, ptr %l6, !tbaa !29
  store ptr %t40, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t41 = load ptr, ptr %l33, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb7, label %bb8
bb7:
  %t44 = load ptr, ptr %l33, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 3}
  %t47 = icmp eq i64 %t45, 1
  store i1 %t47, ptr %l34, !tbaa !21
  br label %bb8
bb8:
  %t48 = load i1, ptr %l34, !tbaa !21
  %t49 = xor i1 %t48, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t52 = load ptr, ptr %l6, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t54, i32 0, i32 0
  %t56 = load i32, ptr %t55
  store i32 %t56, ptr %l7, !tbaa !23
  %t58 = load ptr, ptr %l6, !tbaa !29
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t60, i32 0, i32 1
  %t62 = load { i64, ptr }, ptr %t61
  %t64 = load ptr, ptr %l6, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t66, i32 0, i32 2
  %t68 = load i32, ptr %t67
  store i32 %t68, ptr %l9, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t70
  %t71 = getelementptr { i64, [2 x i64] }, ptr %t70, i32 0, i32 0
  store i64 0, ptr %t71
  %t72 = load { i64, [2 x i64] }, ptr %t70
  store { i64, [2 x i64] } %t72, ptr %l10
  store { i64, ptr } %t62, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  store i64 %t78, ptr %l13, !tbaa !24
  br label %bb12
bb12:
  %t80 = load i64, ptr %l12, !tbaa !24
  %t81 = load i64, ptr %l13, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb13, label %bb14
bb13:
  br label %bb33
bb14:
  br label %bb15
bb15:
  %t88 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t88, ptr %l53, !tbaa !27
  %t89 = load i64, ptr %l12, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr ptr, ptr %t92, i64 %t89
  %t94 = load ptr, ptr %t93, !tbaa !39
  store ptr %t94, ptr %l14, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l56, !tbaa !29
  %t97 = load ptr, ptr %l14, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Capture", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t100)
  store i32 %t102, ptr %l59
  br label %bb16
bb16:
  %t103 = load ptr, ptr %l56, !tbaa !29
  %t104 = load i32, ptr %l59, !tbaa !23
  %t105 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t103, i32 %t104)
  store i1 %t105, ptr %l60
  br label %bb17
bb17:
  %t106 = load i1, ptr %l60, !tbaa !21
  %t107 = xor i1 %t106, true
  br i1 %t107, label %bb18, label %bb19
bb18:
  br label %bb32
bb19:
  br label %bb20
bb20:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l14, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Capture", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t117 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %t109, ptr %t113)
  store { i64, [2 x i64] } %t117, ptr %l66
  br label %bb21
bb21:
  %t118 = load { i64, [2 x i64] }, ptr %l66
  store { i64, [2 x i64] } %t118, ptr %l15
  %t119 = load { i64, [2 x i64] }, ptr %l15
  %t121 = extractvalue { i64, [2 x i64] } %t119, 0
  %t122 = icmp eq i64 %t121, 0
  br i1 %t122, label %bb22, label %bb23
bb22:
  br label %bb32
bb23:
  br label %bb24
bb24:
  %t124 = load { i64, [2 x i64] }, ptr %l10
  %t126 = extractvalue { i64, [2 x i64] } %t124, 0
  %t127 = icmp eq i64 %t126, 0
  br i1 %t127, label %bb25, label %bb26
bb25:
  %t129 = load { i64, [2 x i64] }, ptr %l15
  store { i64, [2 x i64] } %t129, ptr %l10
  br label %bb31
bb26:
  %t131 = load { i64, [2 x i64] }, ptr %l15
  store { i64, [2 x i64] } %t131, ptr %l72
  %t132 = load { i64, [2 x i64] }, ptr %l10
  store { i64, [2 x i64] } %t132, ptr %l74
  %t135 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l72, ptr %l74)
  store i1 %t135, ptr %l76
  br label %bb27
bb27:
  %t136 = load i1, ptr %l76, !tbaa !21
  %t137 = xor i1 %t136, true
  br i1 %t137, label %bb28, label %bb29
bb28:
  store i1 true, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t140 = load i64, ptr %l12, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l12, !tbaa !24
  br label %bb12
bb33:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i64
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca %"compiler/scope:fnRec"
  %l32 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i1
  %l51 = alloca i64
  %l54 = alloca i1
  %l57 = alloca i1
  %l58 = alloca i64
  %l61 = alloca i64
  %l63 = alloca %"compiler/scope:fnRecs"
  %l67 = alloca ptr
  %l71 = alloca %"compiler/typed:Local"
  %l74 = alloca i1
  %l78 = alloca %"compiler/scope:fnRecs"
  %l82 = alloca i64
  %l87 = alloca i64
  %l91 = alloca i64
  %l94 = alloca i64
  %l115 = alloca i64
  %l118 = alloca %"compiler/scope:fnRecs"
  %l124 = alloca ptr
  %l127 = alloca %"compiler/scope:fnRecs"
  %l128 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca i32
  %l135 = alloca i1
  %l136 = alloca %"compiler/scope:fnRecs"
  %l137 = alloca %"compiler/scope:fnRecs"
  %l139 = alloca i64
  %l141 = alloca i64
  %l146 = alloca %"compiler/scope:fnRec"
  %l148 = alloca %"compiler/scope:fnRec"
  %l163 = alloca %"compiler/typed:Local"
  %l166 = alloca i64
  %l168 = alloca i64
  %l173 = alloca %"compiler/scope:fnRec"
  %l175 = alloca %"compiler/scope:fnRec"
  %l179 = alloca ptr
  %l183 = alloca i1
  %l187 = alloca ptr
  %l190 = alloca %"compiler/scope:fnRecs"
  %l196 = alloca i1
  %l197 = alloca %"compiler/scope:fnRecs"
  %l199 = alloca %"compiler/scope:fnRecs"
  %l201 = alloca %"compiler/scope:fnRecs"
  %s0 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca %"compiler/scope:fnRecs"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  call void @__olang_check_failed(ptr @olang_loc_f5a6a34513be6f66_d823644f523d28d2)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 1
  %t15 = load { i64, [2 x i64] }, ptr %t14
  store { i64, [2 x i64] } %t15, ptr %l2
  %t17 = load { i64, [2 x i64] }, ptr %l2
  %t19 = extractvalue { i64, [2 x i64] } %t17, 0
  %t20 = icmp eq i64 %t19, 4
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t23 = getelementptr { i32 }, ptr %t22, i32 0, i32 0
  %t24 = load i32, ptr %t23
  store i32 %t24, ptr %l3, !tbaa !23
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t26 = load i32, ptr %l3, !tbaa !23
  %t28 = sext i32 %t26 to i64
  store i64 %t28, ptr %l32, !tbaa !24
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i64 -1, ptr %l32, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_fb03a3f3a998d7f4_c51114a8b6a5d830)
  unreachable
bb12:
  %t30 = load i64, ptr %l32, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Capture", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t39 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t31, ptr %t35)
  store ptr %t39, ptr %l42
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l42, !tbaa !29
  store ptr %t40, ptr %l5, !tbaa !29
  %t41 = load ptr, ptr %l5, !tbaa !29
  store ptr %t41, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t42 = load ptr, ptr %l44, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l44, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 18}
  %t48 = icmp eq i64 %t46, 2
  store i1 %t48, ptr %l45, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l45, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t52 = getelementptr { i64, [5 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t52, i32 0, i32 2
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t56 = load ptr, ptr %l6, !tbaa !29
  %t58 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s0, ptr %t56)
  store i64 %t58, ptr %l51
  br label %bb19
bb19:
  %t59 = load i64, ptr %l51, !tbaa !24
  store i64 %t59, ptr %l43, !tbaa !24
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i64 -1, ptr %l43, !tbaa !24
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_32aa5f667f3bb72f_a348eb602b84686b)
  unreachable
bb25:
  %t60 = load i64, ptr %l43, !tbaa !24
  store i64 %t60, ptr %l7, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t63 = icmp slt i64 %t61, 0
  br i1 %t63, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb28
bb27:
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = icmp slt i64 %t65, 0
  store i1 %t67, ptr %l54, !tbaa !21
  br label %bb28
bb28:
  %t69 = load i1, ptr %l54, !tbaa !21
  br i1 %t69, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb32
bb30:
  %t70 = load i64, ptr %l4, !tbaa !24
  store i64 %t70, ptr %l58, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 1
  %t75 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t73)
  store i64 %t75, ptr %l61
  br label %bb31
bb31:
  %t76 = load i64, ptr %l58, !tbaa !24
  %t77 = load i64, ptr %l61, !tbaa !24
  %t78 = icmp sge i64 %t76, %t77
  store i1 %t78, ptr %l57, !tbaa !21
  br label %bb32
bb32:
  %t80 = load i1, ptr %l57, !tbaa !21
  br i1 %t80, label %bb33, label %bb34
bb33:
  %t81 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t81, ptr %l63
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t82 = load %"compiler/scope:fnRecs", ptr %l63
  store %"compiler/scope:fnRecs" %t82, ptr %rv
  br label %ret
bb36:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 1
  %t86 = load i64, ptr %l4, !tbaa !24
  %t89 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t85, i64 %t86)
  store ptr %t89, ptr %l67
  br label %bb37
bb37:
  %t90 = load ptr, ptr %l67, !tbaa !29
  store ptr %t90, ptr %l8, !tbaa !29
  %t91 = load ptr, ptr %l8, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Body", ptr %t91, i32 0, i32 7
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t93, i64 %t94)
  store %"compiler/typed:Local" %t97, ptr %l71
  br label %bb38
bb38:
  %t98 = getelementptr %"compiler/typed:Local", ptr %l71, i32 0, i32 4
  %t99 = load i32, ptr %t98, !range !{i32 0, i32 7}
  %t101 = trunc i64 0 to i32
  %t102 = icmp eq i32 %t99, %t101
  br i1 %t102, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb41
bb40:
  %t104 = load ptr, ptr %l8, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Body", ptr %t104, i32 0, i32 11
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = icmp eq ptr %t107, null
  store i1 %t109, ptr %l74, !tbaa !21
  br label %bb41
bb41:
  %t111 = load i1, ptr %l74, !tbaa !21
  br i1 %t111, label %bb42, label %bb43
bb42:
  %t112 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t112, ptr %l78
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t113 = load %"compiler/scope:fnRecs", ptr %l78
  store %"compiler/scope:fnRecs" %t113, ptr %rv
  br label %ret
bb45:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %t114, i32 0, i32 15
  %t117 = load i64, ptr %l4, !tbaa !24
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t116, i64 %t117)
  store i64 %t120, ptr %l82
  br label %bb46
bb46:
  %t121 = load i64, ptr %l82, !tbaa !24
  store i64 %t121, ptr %l9, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/scope:Scoper", ptr %t122, i32 0, i32 15
  %t125 = load i64, ptr %l4, !tbaa !24
  %t127 = add i64 %t125, 1
  %t130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t124, i64 %t127)
  store i64 %t130, ptr %l87
  br label %bb47
bb47:
  %t131 = load i64, ptr %l87, !tbaa !24
  store i64 %t131, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t132 = load i64, ptr %l10, !tbaa !24
  %t133 = load i64, ptr %l9, !tbaa !24
  %t136 = icmp sgt i64 %t132, %t133
  br i1 %t136, label %bb48, label %bb49
bb48:
  %t138 = load i64, ptr %l11, !tbaa !24
  %t140 = icmp sgt i64 %t138, 0
  br i1 %t140, label %bb50, label %bb51
bb49:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb53
bb50:
  %t142 = load i64, ptr %l10, !tbaa !24
  %t143 = load i64, ptr %l9, !tbaa !24
  %t146 = sub i64 %t142, %t143
  %t147 = load i64, ptr %l11, !tbaa !24
  %t150 = add i64 %t146, %t147
  %t152 = sub i64 %t150, 1
  %t153 = load i64, ptr %l11, !tbaa !24
  %t156 = sdiv i64 %t152, %t153
  store i64 %t156, ptr %l94, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb52
bb52:
  %t158 = load i64, ptr %l94, !tbaa !24
  store i64 %t158, ptr %l91, !tbaa !24
  br label %bb53
bb53:
  %t159 = load i64, ptr %l91, !tbaa !24
  store i64 %t159, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb54
bb54:
  %t160 = load i64, ptr %l13, !tbaa !24
  %t161 = load i64, ptr %l12, !tbaa !24
  %t164 = icmp slt i64 %t160, %t161
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb55, label %bb56
bb55:
  br label %bb64
bb56:
  br label %bb57
bb57:
  %t168 = load i64, ptr %l9, !tbaa !24
  %t169 = load i64, ptr %l13, !tbaa !24
  %t170 = load i64, ptr %l11, !tbaa !24
  %t173 = mul i64 %t169, %t170
  %t176 = add i64 %t168, %t173
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/scope:Scoper", ptr %t178, i32 0, i32 16
  %t184 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t180, i64 %t176)
  store i64 %t184, ptr %l115
  br label %bb58
bb58:
  %t185 = load i64, ptr %l7, !tbaa !24
  %t186 = load i64, ptr %l115, !tbaa !24
  %t188 = icmp eq i64 %t186, %t185
  br i1 %t188, label %bb59, label %bb60
bb59:
  %t190 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t190, ptr %l118
  br label %bb61
bb60:
  br label %bb62
bb61:
  call void @__olang_scope_close(ptr %s0)
  %t191 = load %"compiler/scope:fnRecs", ptr %l118
  store %"compiler/scope:fnRecs" %t191, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  %t192 = load i64, ptr %l13, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l13, !tbaa !24
  br label %bb54
bb64:
  %t196 = load ptr, ptr %l8, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Body", ptr %t196, i32 0, i32 11
  %t199 = load ptr, ptr %t198, !tbaa !29
  %t200 = load i64, ptr %l7, !tbaa !24
  %t203 = call ptr @compiler_2fscope_2eletOf(ptr %v0, ptr %v0, ptr %t199, i64 %t200)
  store ptr %t203, ptr %l124
  br label %bb65
bb65:
  %t204 = load ptr, ptr %l124, !tbaa !29
  store ptr %t204, ptr %l15, !tbaa !29
  %t205 = load ptr, ptr %l15, !tbaa !29
  %t207 = icmp eq ptr %t205, null
  br i1 %t207, label %bb66, label %bb67
bb66:
  %t209 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t209, ptr %l127
  br label %bb68
bb67:
  br label %bb69
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t210 = load %"compiler/scope:fnRecs", ptr %l127
  store %"compiler/scope:fnRecs" %t210, ptr %rv
  br label %ret
bb69:
  %t211 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t211, ptr %l128
  br label %bb70
bb70:
  %t212 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l128
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t212, ptr %l16
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l15, !tbaa !29
  %t219 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %v0, ptr %s0, ptr %t213, ptr %t214, ptr %l16)
  store i32 %t219, ptr %l133
  %t220 = icmp ne i32 %t219, 0
  br i1 %t220, label %bb72, label %ok.221, !prof !99
ok.221:
  br label %bb71
bb71:
  br label %bb75
bb72:
  %t222 = load i32, ptr %l133, !tbaa !23
  %t223 = ashr i32 %t222, 16
  %t225 = icmp eq i32 %t223, 1
  store i1 %t225, ptr %l135, !tbaa !21
  br label %bb73
bb73:
  %t226 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t226, ptr %l136
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s0)
  %t227 = load %"compiler/scope:fnRecs", ptr %l136
  store %"compiler/scope:fnRecs" %t227, ptr %rv
  br label %ret
bb75:
  %t228 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t228, ptr %l137
  br label %bb76
bb76:
  %t229 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 104, i64 8)
  store ptr %t229, ptr %lp17
  %t230 = load %"compiler/scope:fnRecs", ptr %l137
  %t231 = load ptr, ptr %lp17
  store %"compiler/scope:fnRecs" %t230, ptr %t231
  %t232 = load ptr, ptr %lp17
  %t233 = getelementptr %"compiler/scope:fnRecs", ptr %t232, i32 0, i32 1
  store i1 true, ptr %t233, !tbaa !21
  store ptr %l16, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb77
bb77:
  store %olang.scope zeroinitializer, ptr %s14
  %t235 = load i64, ptr %l19, !tbaa !24
  store i64 %t235, ptr %l139, !tbaa !24
  %t236 = load ptr, ptr %l18, !tbaa !29
  %t238 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t236)
  store i64 %t238, ptr %l141
  br label %bb78
bb78:
  %t239 = load i64, ptr %l139, !tbaa !24
  %t240 = load i64, ptr %l141, !tbaa !24
  %t241 = icmp slt i64 %t239, %t240
  %t243 = xor i1 %t241, true
  br i1 %t243, label %bb79, label %bb80
bb79:
  call void @__olang_scope_close(ptr %s14)
  br label %bb86
bb80:
  br label %bb81
bb81:
  %t245 = load ptr, ptr %l18, !tbaa !29
  %t246 = load i64, ptr %l19, !tbaa !24
  %t249 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t245, i64 %t246)
  store %"compiler/scope:fnRec" %t249, ptr %l146
  br label %bb82
bb82:
  %t251 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s14, ptr %l146)
  store %"compiler/scope:fnRec" %t251, ptr %l148
  br label %bb83
bb83:
  %t252 = load %"compiler/scope:fnRec", ptr %l148
  %t253 = load ptr, ptr %lp17
  call void @compiler_2fscope_2eaddRec(ptr %v2, ptr %s14, ptr %t253, %"compiler/scope:fnRec" %t252)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s14)
  br label %bb85
bb85:
  %t257 = load i64, ptr %l19, !tbaa !24
  %t259 = add i64 %t257, 1
  store i64 %t259, ptr %l19, !tbaa !24
  br label %bb77
bb86:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/scope:Scoper", ptr %t261, i32 0, i32 26
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = icmp eq ptr %t264, null
  br i1 %t266, label %bb87, label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_7f910b9ce5af0957_c9c0d9296573c213)
  unreachable
bb88:
  br label %bb89
bb89:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/scope:Scoper", ptr %t268, i32 0, i32 26
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t274 = getelementptr %"compiler/typed:Body", ptr %t271, i32 0, i32 7
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr %"compiler/typed:Capture", ptr %t275, i32 0, i32 0
  %t278 = load i32, ptr %t277, !tbaa !23
  %t280 = sext i32 %t278 to i64
  %t283 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t274, i64 %t280)
  store %"compiler/typed:Local" %t283, ptr %l163
  br label %bb90
bb90:
  %t284 = getelementptr %"compiler/typed:Local", ptr %l163, i32 0, i32 2
  %t285 = load i32, ptr %t284, !tbaa !23
  store i32 %t285, ptr %l21, !tbaa !23
  %t287 = load ptr, ptr %lp17
  %t288 = getelementptr %"compiler/scope:fnRecs", ptr %t287, i32 0, i32 0
  store ptr %t288, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb91
bb91:
  store %olang.scope zeroinitializer, ptr %s17
  %t290 = load i64, ptr %l23, !tbaa !24
  store i64 %t290, ptr %l166, !tbaa !24
  %t291 = load ptr, ptr %l22, !tbaa !29
  %t293 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %t291)
  store i64 %t293, ptr %l168
  br label %bb92
bb92:
  %t294 = load i64, ptr %l166, !tbaa !24
  %t295 = load i64, ptr %l168, !tbaa !24
  %t296 = icmp slt i64 %t294, %t295
  %t298 = xor i1 %t296, true
  br i1 %t298, label %bb93, label %bb94
bb93:
  call void @__olang_scope_close(ptr %s17)
  br label %bb108
bb94:
  br label %bb95
bb95:
  %t300 = load ptr, ptr %l22, !tbaa !29
  %t301 = load i64, ptr %l23, !tbaa !24
  %t304 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %v2, ptr %t300, i64 %t301)
  store %"compiler/scope:fnRec" %t304, ptr %l173
  br label %bb96
bb96:
  %t306 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s17, ptr %l173)
  store %"compiler/scope:fnRec" %t306, ptr %l175
  br label %bb97
bb97:
  %t307 = load %"compiler/scope:fnRec", ptr %l175
  store %"compiler/scope:fnRec" %t307, ptr %l24
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/scope:Scoper", ptr %t308, i32 0, i32 6
  %t311 = getelementptr %"compiler/scope:fnRec", ptr %l24, i32 0, i32 0
  %t312 = load i64, ptr %t311, !tbaa !24
  %t315 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t310, i64 %t312)
  store ptr %t315, ptr %l179
  br label %bb98
bb98:
  %t316 = load ptr, ptr %l179, !tbaa !29
  %t318 = getelementptr %"compiler/scope:summary", ptr %t316, i32 0, i32 19
  %t319 = load i1, ptr %t318, !tbaa !21
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb99, label %bb100
bb99:
  store i1 true, ptr %l183, !tbaa !21
  br label %bb102
bb100:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/scope:Scoper", ptr %t323, i32 0, i32 6
  %t326 = getelementptr %"compiler/scope:fnRec", ptr %l24, i32 0, i32 0
  %t327 = load i64, ptr %t326, !tbaa !24
  %t330 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t325, i64 %t327)
  store ptr %t330, ptr %l187
  br label %bb101
bb101:
  %t331 = load ptr, ptr %l187, !tbaa !29
  %t333 = getelementptr %"compiler/scope:summary", ptr %t331, i32 0, i32 20
  %t334 = load i1, ptr %t333, !tbaa !21
  store i1 %t334, ptr %l183, !tbaa !21
  br label %bb102
bb102:
  %t336 = load i1, ptr %l183, !tbaa !21
  br i1 %t336, label %bb103, label %bb104
bb103:
  %t337 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t337, ptr %l190
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  %t338 = load %"compiler/scope:fnRecs", ptr %l190
  store %"compiler/scope:fnRecs" %t338, ptr %rv
  br label %ret
bb106:
  call void @__olang_scope_close(ptr %s17)
  br label %bb107
bb107:
  %t339 = load i64, ptr %l23, !tbaa !24
  %t341 = add i64 %t339, 1
  store i64 %t341, ptr %l23, !tbaa !24
  br label %bb91
bb108:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t344 = load ptr, ptr %lp17
  %t345 = load i32, ptr %l21, !tbaa !23
  %t349 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esomeUncovered(ptr %v0, ptr %v2, ptr %t343, ptr %t344, i32 %t345)
  store i1 %t349, ptr %l196
  br label %bb109
bb109:
  %t350 = load i1, ptr %l196, !tbaa !21
  br i1 %t350, label %bb110, label %bb111
bb110:
  %t351 = load ptr, ptr %lp17
  %t352 = load %"compiler/scope:fnRecs", ptr %t351
  store %"compiler/scope:fnRecs" %t352, ptr %l197
  br label %bb113
bb111:
  %t354 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t354, ptr %l199
  br label %bb112
bb112:
  %t355 = load %"compiler/scope:fnRecs", ptr %l199
  store %"compiler/scope:fnRecs" %t355, ptr %l197
  br label %bb113
bb113:
  %t357 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v2, ptr %l197)
  store %"compiler/scope:fnRecs" %t357, ptr %l201
  br label %bb114
bb114:
  %t358 = load %"compiler/scope:fnRecs", ptr %l201
  store %"compiler/scope:fnRecs" %t358, ptr %l197
  call void @__olang_scope_close(ptr %s0)
  %t359 = load %"compiler/scope:fnRecs", ptr %l197
  store %"compiler/scope:fnRecs" %t359, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclauseGives(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/scope:rel"
  %l13 = alloca i64
  %l14 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i32
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca ptr
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca ptr
  %l62 = alloca i64
  %l64 = alloca i64
  %l69 = alloca %"compiler/scope:rel"
  %l71 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i1
  %l77 = alloca i64
  %l79 = alloca i64
  %l81 = alloca i1
  %l84 = alloca i1
  %l85 = alloca i64
  %l87 = alloca i64
  %l89 = alloca i1
  %l92 = alloca { i64, [2 x i64] }
  %l97 = alloca { i64, [1 x i64] }
  %l100 = alloca ptr
  %l101 = alloca %"compiler/source:Span"
  %l102 = alloca ptr
  %l105 = alloca { i64, [2 x i64] }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/typed:TaskClause", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = getelementptr %"compiler/typed:TaskClause", ptr %t8, i32 0, i32 3
  %t11 = load ptr, ptr %t10, !tbaa !29
  store ptr %t11, ptr %l4, !tbaa !29
  %t13 = load ptr, ptr %l4, !tbaa !29
  store ptr %t13, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t14 = load ptr, ptr %l20, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l20, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 18}
  %t20 = icmp eq i64 %t18, 15
  store i1 %t20, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l21, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t27 = load ptr, ptr %l26, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb8, label %bb9
bb7:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb10
bb8:
  %t30 = load ptr, ptr %l26, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 3}
  %t33 = icmp eq i64 %t31, 1
  store i1 %t33, ptr %l27, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l27, !tbaa !21
  store i1 %t34, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l24, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t42, i32 0, i32 0
  %t44 = load i32, ptr %t43
  store i32 %t44, ptr %l5, !tbaa !23
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t52, i32 0, i32 2
  %t54 = load i32, ptr %t53
  store i32 %t54, ptr %l6, !tbaa !23
  br label %bb13
bb12:
  br label %bb60
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t56 = load i32, ptr %l5, !tbaa !23
  %t58 = sext i32 %t56 to i64
  store i64 %t58, ptr %l7, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %t60, i32 0, i32 92
  %t63 = load i32, ptr %l6, !tbaa !23
  %t65 = sext i32 %t63 to i64
  %t68 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb676fcc2696545b94a8186e92757a5eb(ptr %v0, ptr %v0, ptr %t62, i64 %t65)
  %t69 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t68, 1
  %t70 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t68, 0
  store i32 %t70, ptr %l44
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb15, label %ok.72, !prof !99
ok.72:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l43
  br label %bb14
bb14:
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %l43)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l46
  br label %bb17
bb15:
  br label %bb16
bb16:
  %t75 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l47
  br label %bb18
bb17:
  %t76 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l38
  br label %bb19
bb18:
  %t77 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l38
  br label %bb19
bb19:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l8
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %t79, i32 0, i32 1
  %t82 = load i64, ptr %l7, !tbaa !24
  %t85 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t81, i64 %t82)
  store ptr %t85, ptr %l51
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l51, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Body", ptr %t86, i32 0, i32 6
  %t89 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l53
  %t91 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s2, ptr %l53)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t91, ptr %l55
  br label %bb21
bb21:
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l9
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/scope:Scoper", ptr %t93, i32 0, i32 6
  %t96 = load i64, ptr %l7, !tbaa !24
  %t99 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t95, i64 %t96)
  store ptr %t99, ptr %l59
  br label %bb22
bb22:
  %t100 = load ptr, ptr %l59, !tbaa !29
  %t102 = getelementptr %"compiler/scope:summary", ptr %t100, i32 0, i32 0
  store ptr %t102, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb23
bb23:
  %t104 = load i64, ptr %l11, !tbaa !24
  store i64 %t104, ptr %l62, !tbaa !24
  %t105 = load ptr, ptr %l10, !tbaa !29
  %t107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t105)
  store i64 %t107, ptr %l64
  br label %bb24
bb24:
  %t108 = load i64, ptr %l62, !tbaa !24
  %t109 = load i64, ptr %l64, !tbaa !24
  %t110 = icmp slt i64 %t108, %t109
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb25, label %bb26
bb25:
  br label %bb59
bb26:
  br label %bb27
bb27:
  %t114 = load ptr, ptr %l10, !tbaa !29
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t114, i64 %t115)
  store %"compiler/scope:rel" %t118, ptr %l69
  br label %bb28
bb28:
  %t119 = load %"compiler/scope:rel", ptr %l69
  store %"compiler/scope:rel" %t119, ptr %l12
  %t120 = getelementptr %"compiler/scope:rel", ptr %l12, i32 0, i32 0
  %t121 = load { i64, [2 x i64] }, ptr %t120
  %t123 = call i64 @compiler_2fscope_2evarOf({ i64, [2 x i64] } %t121)
  store i64 %t123, ptr %l71
  br label %bb29
bb29:
  %t124 = load i64, ptr %l71, !tbaa !24
  store i64 %t124, ptr %l13, !tbaa !24
  %t125 = getelementptr %"compiler/scope:rel", ptr %l12, i32 0, i32 1
  %t126 = load { i64, [2 x i64] }, ptr %t125
  %t128 = call i64 @compiler_2fscope_2evarOf({ i64, [2 x i64] } %t126)
  store i64 %t128, ptr %l73
  br label %bb30
bb30:
  %t129 = load i64, ptr %l73, !tbaa !24
  store i64 %t129, ptr %l14, !tbaa !24
  %t130 = load i64, ptr %l13, !tbaa !24
  %t132 = icmp slt i64 %t130, 0
  br i1 %t132, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb34
bb32:
  %t134 = load i64, ptr %l13, !tbaa !24
  store i64 %t134, ptr %l77, !tbaa !24
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %l8)
  store i64 %t136, ptr %l79
  br label %bb33
bb33:
  %t137 = load i64, ptr %l77, !tbaa !24
  %t138 = load i64, ptr %l79, !tbaa !24
  %t139 = icmp sge i64 %t137, %t138
  store i1 %t139, ptr %l76, !tbaa !21
  br label %bb34
bb34:
  %t141 = load i1, ptr %l76, !tbaa !21
  br i1 %t141, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l81, !tbaa !21
  br label %bb37
bb36:
  %t142 = load i64, ptr %l14, !tbaa !24
  %t144 = icmp slt i64 %t142, 0
  store i1 %t144, ptr %l81, !tbaa !21
  br label %bb37
bb37:
  %t146 = load i1, ptr %l81, !tbaa !21
  br i1 %t146, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb41
bb39:
  %t147 = load i64, ptr %l14, !tbaa !24
  store i64 %t147, ptr %l85, !tbaa !24
  %t149 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s2, ptr %l9)
  store i64 %t149, ptr %l87
  br label %bb40
bb40:
  %t150 = load i64, ptr %l85, !tbaa !24
  %t151 = load i64, ptr %l87, !tbaa !24
  %t152 = icmp sge i64 %t150, %t151
  store i1 %t152, ptr %l84, !tbaa !21
  br label %bb41
bb41:
  %t154 = load i1, ptr %l84, !tbaa !21
  br i1 %t154, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb45
bb43:
  %t155 = load i64, ptr %l13, !tbaa !24
  %t158 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %l8, i64 %t155)
  store { i64, [2 x i64] } %t158, ptr %l92
  br label %bb44
bb44:
  %t159 = load { i64, [2 x i64] }, ptr %l92
  %t161 = extractvalue { i64, [2 x i64] } %t159, 0
  %t162 = icmp eq i64 %t161, 0
  store i1 %t162, ptr %l89, !tbaa !21
  br label %bb45
bb45:
  %t164 = load i1, ptr %l89, !tbaa !21
  br i1 %t164, label %bb46, label %bb47
bb46:
  br label %bb58
bb47:
  br label %bb48
bb48:
  %t165 = load i64, ptr %l14, !tbaa !24
  %t168 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s2, ptr %l9, i64 %t165)
  store { i64, [1 x i64] } %t168, ptr %l97
  br label %bb49
bb49:
  %t169 = load { i64, [1 x i64] }, ptr %l97
  %t171 = extractvalue { i64, [1 x i64] } %t169, 0
  %t172 = icmp eq i64 %t171, 1
  br i1 %t172, label %bb50, label %bb51
bb50:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l100, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l101
  store ptr %a2, ptr %l102, !tbaa !29
  %t177 = load i64, ptr %l13, !tbaa !24
  %t180 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %l8, i64 %t177)
  store { i64, [2 x i64] } %t180, ptr %l105
  br label %bb52
bb51:
  br label %bb57
bb52:
  %t181 = load ptr, ptr %l3, !tbaa !29
  %t183 = getelementptr %"compiler/typed:TaskClause", ptr %t181, i32 0, i32 3
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = icmp eq ptr %t184, null
  br i1 %t186, label %bb53, label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_e1142588f73f06ca_7758fe2f808af2c6)
  unreachable
bb54:
  br label %bb55
bb55:
  %t188 = load ptr, ptr %l3, !tbaa !29
  %t190 = getelementptr %"compiler/typed:TaskClause", ptr %t188, i32 0, i32 3
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t192 = load ptr, ptr %l100, !tbaa !29
  %t193 = load %"compiler/source:Span", ptr %l101
  %t194 = load ptr, ptr %l102, !tbaa !29
  %t195 = load { i64, [2 x i64] }, ptr %l105
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveTargets(ptr %v0, ptr %v1, ptr %v2, ptr %t192, %"compiler/source:Span" %t193, ptr %t194, { i64, [2 x i64] } %t195, ptr %t191)
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t197 = load i64, ptr %l11, !tbaa !24
  %t199 = add i64 %t197, 1
  store i64 %t199, ptr %l11, !tbaa !24
  br label %bb23
bb59:
  call void @__olang_scope_close(ptr %s2)
  br label %bb65
bb60:
  br i1 true, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_fffd5718cad2f058_6f436270cc71de54)
  unreachable
bb65:
  br label %ret
ret:
  ret void
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
  %l11 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l23 = alloca ptr
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l56 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 7
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t3, i32 %a1)
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
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 1
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store ptr %t25, ptr %l23
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l23, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Body", ptr %t26, i32 0, i32 5
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l25
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l27
  br label %bb9
bb9:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l4)
  store i64 %t34, ptr %l29
  br label %bb10
bb10:
  %t35 = load i64, ptr %l29, !tbaa !24
  store i64 %t35, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp sgt i64 %t36, %t37
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb16
bb13:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = sub i64 %t46, %t47
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = sub i64 %t54, 1
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = sdiv i64 %t56, %t57
  store i64 %t60, ptr %l36, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb15
bb15:
  %t62 = load i64, ptr %l36, !tbaa !24
  store i64 %t62, ptr %l33, !tbaa !24
  br label %bb16
bb16:
  %t63 = load i64, ptr %l33, !tbaa !24
  store i64 %t63, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb17
bb17:
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb18, label %bb19
bb18:
  br label %bb26
bb19:
  br label %bb20
bb20:
  %t72 = load i64, ptr %l5, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t74 = load i64, ptr %l7, !tbaa !24
  %t77 = mul i64 %t73, %t74
  %t80 = add i64 %t72, %t77
  store i64 %t80, ptr %l10, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l4, i64 %t82)
  store i32 %t85, ptr %l56
  br label %bb21
bb21:
  %t87 = load i32, ptr %l56, !tbaa !23
  %t89 = icmp eq i32 %t87, %a2
  br i1 %t89, label %bb22, label %bb23
bb22:
  %t91 = load i64, ptr %l10, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t91, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l9, !tbaa !24
  br label %bb17
bb26:
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
  %l14 = alloca %"compiler/scope:Val"
  %l17 = alloca { i64, [2 x i64] }
  %l19 = alloca i64
  %l28 = alloca i64
  %l37 = alloca %"compiler/typed:Local"
  %l38 = alloca { i64, [2 x i64] }
  %l42 = alloca { i64, [2 x i64] }
  %l43 = alloca i32
  %l49 = alloca { i64, [2 x i64] }
  %l50 = alloca { i64, [2 x i64] }
  %l52 = alloca ptr
  %l56 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l57 = alloca { i64, [2 x i64] }
  %l58 = alloca i32
  %l61 = alloca i1
  %l65 = alloca { i64, [2 x i64] }
  %l71 = alloca i1
  %l80 = alloca ptr
  %l87 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/source:Span"
  %l99 = alloca %"compiler/scope:Val"
  %l111 = alloca { i64, [2 x i64] }
  %l116 = alloca { i64, [2 x i64] }
  %l127 = alloca i1
  %l128 = alloca i64
  %l131 = alloca i64
  %l143 = alloca ptr
  %l146 = alloca ptr
  %l147 = alloca i32
  %s0 = alloca %olang.scope
  %t57 = alloca { i64, [2 x i64] }, align 8
  %t93 = alloca { i64, [2 x i64] }, align 8
  %t208 = alloca { i64, [2 x i64] }, align 8
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
  store i64 %t3, ptr %l19
  br label %bb1
bb1:
  %t4 = load i64, ptr %l19, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 159
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
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 159
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t20 = load i64, ptr %l4, !tbaa !24
  %t24 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %t15, i64 %t19, i64 %t20)
  store i64 %t24, ptr %l28
  br label %bb5
bb5:
  %t25 = load i64, ptr %l28, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 26
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
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 26
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Body", ptr %t36, i32 0, i32 7
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t39, i64 %t40)
  store %"compiler/typed:Local" %t43, ptr %l37
  br label %bb9
bb9:
  %t44 = load %"compiler/typed:Local", ptr %l37
  store %"compiler/typed:Local" %t44, ptr %l6
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %t45, i32 0, i32 188
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t47, i64 %t48)
  %t52 = extractvalue { i32, { i64, [2 x i64] } } %t51, 1
  %t53 = extractvalue { i32, { i64, [2 x i64] } } %t51, 0
  store i32 %t53, ptr %l43
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb11, label %ok.55, !prof !99
ok.55:
  store { i64, [2 x i64] } %t52, ptr %l42
  br label %bb10
bb10:
  %t56 = load { i64, [2 x i64] }, ptr %l42
  store { i64, [2 x i64] } %t56, ptr %l38
  br label %bb13
bb11:
  br label %bb12
bb12:
  store { i64, [2 x i64] } zeroinitializer, ptr %t57
  %t58 = getelementptr { i64, [2 x i64] }, ptr %t57, i32 0, i32 0
  store i64 0, ptr %t58
  %t59 = load { i64, [2 x i64] }, ptr %t57
  store { i64, [2 x i64] } %t59, ptr %l38
  br label %bb13
bb13:
  %t61 = load { i64, [2 x i64] }, ptr %l38
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
  store { i64, [2 x i64] } %t72, ptr %l49
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t73 = load { i64, [2 x i64] }, ptr %l49
  store { i64, [2 x i64] } %t73, ptr %l7
  br label %bb17
bb17:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 171
  store ptr %t76, ptr %l52, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 27
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t84 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t80, i64 %t81)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t84, ptr %l56
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l52, !tbaa !29
  %t86 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l56
  %t87 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t85, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t86)
  %t88 = extractvalue { i32, { i64, [2 x i64] } } %t87, 1
  %t89 = extractvalue { i32, { i64, [2 x i64] } } %t87, 0
  store i32 %t89, ptr %l58
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb20, label %ok.91, !prof !99
ok.91:
  store { i64, [2 x i64] } %t88, ptr %l57
  br label %bb19
bb19:
  %t92 = load { i64, [2 x i64] }, ptr %l57
  store { i64, [2 x i64] } %t92, ptr %l50
  br label %bb22
bb20:
  br label %bb21
bb21:
  store { i64, [2 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [2 x i64] }, ptr %t93, i32 0, i32 0
  store i64 0, ptr %t94
  %t95 = load { i64, [2 x i64] }, ptr %t93
  store { i64, [2 x i64] } %t95, ptr %l50
  br label %bb22
bb22:
  %t97 = load { i64, [2 x i64] }, ptr %l50
  store { i64, [2 x i64] } %t97, ptr %l8
  %t98 = load { i64, [2 x i64] }, ptr %l8
  %t100 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t98)
  store i1 %t100, ptr %l61
  br label %bb23
bb23:
  %t101 = load i1, ptr %l61, !tbaa !21
  br i1 %t101, label %bb24, label %bb25
bb24:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, [2 x i64] }, ptr %l7
  %t104 = load { i64, [2 x i64] }, ptr %l8
  %t108 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t102, { i64, [2 x i64] } %t103, { i64, [2 x i64] } %t104)
  store { i64, [2 x i64] } %t108, ptr %l65
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t109 = load { i64, [2 x i64] }, ptr %l65
  store { i64, [2 x i64] } %t109, ptr %l7
  br label %bb27
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 60
  %t113 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %t112, ptr %t113)
  br label %bb28
bb28:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Local", ptr %l6, i32 0, i32 2
  %t118 = load i32, ptr %t117, !tbaa !23
  %t121 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t116, i32 %t118)
  store i1 %t121, ptr %l71
  br label %bb29
bb29:
  %t122 = load i1, ptr %l71, !tbaa !21
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
  %t129 = getelementptr %"compiler/scope:Scoper", ptr %t127, i32 0, i32 145
  %t130 = load i64, ptr %t129, !tbaa !24
  store i64 %t130, ptr %l9, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 146
  %t135 = load %"compiler/source:Span", ptr %t134
  store %"compiler/source:Span" %t135, ptr %l10
  %t137 = load ptr, ptr %l3, !tbaa !29
  %t140 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v2, ptr %v2, ptr %t137)
  store ptr %t140, ptr %l80
  br label %bb34
bb34:
  %t141 = load ptr, ptr %l80, !tbaa !29
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
  store ptr %t155, ptr %l87, !tbaa !29
  %t156 = load ptr, ptr %l2, !tbaa !29
  %t158 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t156)
  store %"compiler/source:Span" %t158, ptr %l89
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t159 = load ptr, ptr %l87, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l89
  %t161 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %t159, %"compiler/source:Span" %t160)
  store %"compiler/source:Span" %t161, ptr %l90
  br label %bb38
bb38:
  %t162 = load %"compiler/source:Span", ptr %l90
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i64, ptr %l12, !tbaa !24
  %t167 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 145
  store i64 %t164, ptr %t167, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/scope:Scoper", ptr %t168, i32 0, i32 146
  store %"compiler/source:Span" %t162, ptr %t172
  br label %bb39
bb39:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l3, !tbaa !29
  %t176 = load { i64, [2 x i64] }, ptr %l7
  %t180 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v2, ptr %t173, ptr %t174, { i64, [2 x i64] } %t176)
  store %"compiler/scope:Val" %t180, ptr %l99
  br label %bb40
bb40:
  %t181 = load %"compiler/scope:Val", ptr %l99
  store %"compiler/scope:Val" %t181, ptr %l14
  %t182 = load i64, ptr %l9, !tbaa !24
  %t184 = load %"compiler/source:Span", ptr %l10
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/scope:Scoper", ptr %t186, i32 0, i32 145
  store i64 %t182, ptr %t190, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/scope:Scoper", ptr %t191, i32 0, i32 146
  store %"compiler/source:Span" %t184, ptr %t195
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load i64, ptr %l4, !tbaa !24
  %t198 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLate(ptr %v0, ptr %v2, ptr %t196, i64 %t197, ptr %t198)
  br label %bb41
bb41:
  %t202 = getelementptr %"compiler/scope:Val", ptr %l14, i32 0, i32 0
  %t203 = load i32, ptr %t202, !range !{i32 0, i32 5}
  %t205 = trunc i64 1 to i32
  %t206 = icmp eq i32 %t203, %t205
  br i1 %t206, label %bb42, label %bb43
bb42:
  store { i64, [2 x i64] } zeroinitializer, ptr %t208
  %t209 = getelementptr { i64, [2 x i64] }, ptr %t208, i32 0, i32 0
  store i64 0, ptr %t209
  %t210 = load { i64, [2 x i64] }, ptr %t208
  store { i64, [2 x i64] } %t210, ptr %l111
  br label %bb45
bb43:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load %"compiler/scope:Val", ptr %l14
  %t214 = load { i64, [2 x i64] }, ptr %l7
  %t218 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %t212, %"compiler/scope:Val" %t213, { i64, [2 x i64] } %t214)
  store { i64, [2 x i64] } %t218, ptr %l116
  br label %bb44
bb44:
  %t219 = load { i64, [2 x i64] }, ptr %l116
  store { i64, [2 x i64] } %t219, ptr %l111
  br label %bb45
bb45:
  %t220 = load { i64, [2 x i64] }, ptr %l111
  store { i64, [2 x i64] } %t220, ptr %l17
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load i64, ptr %l5, !tbaa !24
  %t223 = load { i64, [2 x i64] }, ptr %l17
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everDefine(ptr %v0, ptr %t221, i64 %t222, { i64, [2 x i64] } %t223)
  br label %bb46
bb46:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l1
  %t229 = load i64, ptr %l4, !tbaa !24
  %t230 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteRecs(ptr %v0, ptr %v2, ptr %t227, %"compiler/source:Span" %t228, i64 %t229, ptr %t230)
  br label %bb47
bb47:
  %t236 = load i64, ptr %l5, !tbaa !24
  %t238 = icmp sge i64 %t236, 0
  br i1 %t238, label %bb48, label %bb49
bb48:
  %t240 = load i64, ptr %l5, !tbaa !24
  store i64 %t240, ptr %l128, !tbaa !24
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/scope:Scoper", ptr %t241, i32 0, i32 176
  %t245 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t243)
  store i64 %t245, ptr %l131
  br label %bb50
bb49:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb51
bb50:
  %t246 = load i64, ptr %l128, !tbaa !24
  %t247 = load i64, ptr %l131, !tbaa !24
  %t248 = icmp slt i64 %t246, %t247
  store i1 %t248, ptr %l127, !tbaa !21
  br label %bb51
bb51:
  %t250 = load i1, ptr %l127, !tbaa !21
  br i1 %t250, label %bb52, label %bb53
bb52:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/scope:Scoper", ptr %t251, i32 0, i32 176
  %t254 = load i64, ptr %l5, !tbaa !24
  %t255 = getelementptr %"compiler/scope:Val", ptr %l14, i32 0, i32 0
  %t256 = load i32, ptr %t255, !range !{i32 0, i32 5}
  %t258 = trunc i64 3 to i32
  %t259 = icmp eq i32 %t256, %t258
  %t261 = xor i1 %t259, true
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t253, i64 %t254, i1 %t261)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/scope:Scoper", ptr %t265, i32 0, i32 34
  %t268 = load i64, ptr %l4, !tbaa !24
  %t269 = load { i64, [2 x i64] }, ptr %l17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t267, i64 %t268, { i64, [2 x i64] } %t269)
  br label %bb56
bb56:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/scope:Scoper", ptr %t273, i32 0, i32 60
  %t277 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %s0, ptr %t275)
  %t278 = extractvalue { i32, ptr } %t277, 1
  %t279 = extractvalue { i32, ptr } %t277, 0
  store i32 %t279, ptr %l147
  %t280 = icmp ne i32 %t279, 0
  br i1 %t280, label %bb58, label %ok.281, !prof !99
ok.281:
  store ptr %t278, ptr %l146
  br label %bb57
bb57:
  %t282 = load ptr, ptr %l146, !tbaa !29
  store ptr %t282, ptr %l143, !tbaa !29
  br label %bb60
bb58:
  br label %bb59
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedField(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, [1 x i64] }
  %l16 = alloca i32
  %l19 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca i32
  %l43 = alloca { i64, ptr }
  %l46 = alloca i32
  %l47 = alloca { i64, ptr }
  %l50 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i32
  %l58 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l96 = alloca { i64, [1 x i64] }
  %l99 = alloca i1
  %l104 = alloca i64
  %l111 = alloca ptr
  %l113 = alloca ptr
  %l117 = alloca i32
  %l119 = alloca %"compiler/typed:Local"
  %l121 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l123 = alloca i64
  %l124 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l129 = alloca i64
  %l130 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l19, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t12, i32 %a1)
  store i32 %t16, ptr %l24
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l19, !tbaa !29
  %t18 = load i32, ptr %l24, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l25
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t27 = icmp sge i64 %t21, %t24
  br i1 %t27, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t29, ptr %l31, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l32, !tbaa !24
  %t32 = load i64, ptr %l32, !tbaa !24
  %t33 = mul i64 %t32, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l33, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l32, !tbaa !24
  %t42 = mul i64 %t41, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %t40, i64 %t42, i1 false)
  %t43 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t43, ptr %l31, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t46, ptr %l35, !tbaa !27
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i32, ptr %t50, i64 %t47
  %t52 = load i32, ptr %t51, !tbaa !33
  %t55 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t45, i32 %t52)
  store i1 %t55, ptr %l38
  br label %bb6
bb6:
  %t56 = load i1, ptr %l38, !tbaa !21
  br i1 %t56, label %bb7, label %bb8
bb7:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t63, ptr %l43, !tbaa !27
  %t64 = load i64, ptr %l2, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i32, ptr %t67, i64 %t64
  %t69 = load i32, ptr %t68, !tbaa !33
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t62, i32 %t69)
  store i32 %t72, ptr %l46
  br label %bb9
bb8:
  %t73 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t73, ptr %l47, !tbaa !27
  %t74 = load i64, ptr %l2, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i32, ptr %t77, i64 %t74
  %t79 = load i32, ptr %t78, !tbaa !33
  store i32 %t79, ptr %l39, !tbaa !23
  br label %bb10
bb9:
  %t81 = load i32, ptr %l46, !tbaa !23
  store i32 %t81, ptr %l39, !tbaa !23
  br label %bb10
bb10:
  %t82 = load i32, ptr %l39, !tbaa !23
  store i32 %t82, ptr %l5, !tbaa !23
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 7
  %t86 = load i32, ptr %l5, !tbaa !23
  %t89 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t85, i32 %t86)
  %t90 = extractvalue { i32, i64 } %t89, 1
  %t91 = extractvalue { i32, i64 } %t89, 0
  store i32 %t91, ptr %l55
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb12, label %ok.93, !prof !99
ok.93:
  store i64 %t90, ptr %l54
  br label %bb11
bb11:
  %t94 = load i64, ptr %l54, !tbaa !24
  store i64 %t94, ptr %l50, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i64 -1, ptr %l50, !tbaa !24
  br label %bb14
bb14:
  %t95 = load i64, ptr %l50, !tbaa !24
  store i64 %t95, ptr %l6, !tbaa !24
  %t96 = load i64, ptr %l6, !tbaa !24
  %t98 = icmp slt i64 %t96, 0
  br i1 %t98, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l58, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t100, ptr %l59, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  store i64 %t102, ptr %l60, !tbaa !24
  %t103 = load i64, ptr %l60, !tbaa !24
  %t104 = mul i64 %t103, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t104)
  %t106 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  store { i64, ptr } %t107, ptr %l61, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = load i64, ptr %l60, !tbaa !24
  %t113 = mul i64 %t112, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t109, ptr %t111, i64 %t113, i1 false)
  %t114 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t114, ptr %l59, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t115, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t116, i32 0, i32 1
  %t119 = load i64, ptr %l6, !tbaa !24
  %t122 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t118, i64 %t119)
  store ptr %t122, ptr %l65
  br label %bb18
bb18:
  %t123 = load ptr, ptr %l65, !tbaa !29
  store ptr %t123, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  %t124 = load ptr, ptr %l7, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Body", ptr %t124, i32 0, i32 10
  %t128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t126)
  store i64 %t128, ptr %l68
  br label %bb19
bb19:
  %t129 = load i64, ptr %l68, !tbaa !24
  store i64 %t129, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t130 = load i64, ptr %l9, !tbaa !24
  %t131 = load i64, ptr %l8, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb20, label %bb21
bb20:
  %t136 = load i64, ptr %l10, !tbaa !24
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb25
bb22:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t141 = load i64, ptr %l8, !tbaa !24
  %t144 = sub i64 %t140, %t141
  %t145 = load i64, ptr %l10, !tbaa !24
  %t148 = add i64 %t144, %t145
  %t150 = sub i64 %t148, 1
  %t151 = load i64, ptr %l10, !tbaa !24
  %t154 = sdiv i64 %t150, %t151
  store i64 %t154, ptr %l75, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb24
bb24:
  %t156 = load i64, ptr %l75, !tbaa !24
  store i64 %t156, ptr %l72, !tbaa !24
  br label %bb25
bb25:
  %t157 = load i64, ptr %l72, !tbaa !24
  store i64 %t157, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb26
bb26:
  %t158 = load i64, ptr %l12, !tbaa !24
  %t159 = load i64, ptr %l11, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb27, label %bb28
bb27:
  br label %bb42
bb28:
  br label %bb29
bb29:
  %t166 = load i64, ptr %l8, !tbaa !24
  %t167 = load i64, ptr %l12, !tbaa !24
  %t168 = load i64, ptr %l10, !tbaa !24
  %t171 = mul i64 %t167, %t168
  %t174 = add i64 %t166, %t171
  store i64 %t174, ptr %l13, !tbaa !24
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l5, !tbaa !23
  %t178 = load i64, ptr %l13, !tbaa !24
  %t182 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %t176, i32 %t177, i64 %t178)
  store { i64, [1 x i64] } %t182, ptr %l96
  br label %bb30
bb30:
  %t183 = load { i64, [1 x i64] }, ptr %l96
  store { i64, [1 x i64] } %t183, ptr %l14
  %t184 = load { i64, [1 x i64] }, ptr %l14
  %t186 = extractvalue { i64, [1 x i64] } %t184, 0
  %t187 = icmp eq i64 %t186, 2
  br i1 %t187, label %bb31, label %bb32
bb31:
  %t189 = getelementptr { i64, [1 x i64] }, ptr %l14, i32 0, i32 1
  %t190 = getelementptr { i32 }, ptr %t189, i32 0, i32 0
  %t191 = load i32, ptr %t190
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i32, ptr %l5, !tbaa !23
  %t199 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParamIndex(ptr %v0, ptr %t193, i32 %t194, i32 %t191)
  store i64 %t199, ptr %l104
  br label %bb33
bb32:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb34
bb33:
  %t201 = load i64, ptr %l104, !tbaa !24
  %t203 = icmp eq i64 %t201, %a3
  store i1 %t203, ptr %l99, !tbaa !21
  br label %bb34
bb34:
  %t205 = load i1, ptr %l99, !tbaa !21
  br i1 %t205, label %bb35, label %bb36
bb35:
  %t206 = getelementptr { i64, [1 x i64] }, ptr %l14, i32 0, i32 1
  %t207 = getelementptr { i32 }, ptr %t206, i32 0, i32 0
  %t208 = load i32, ptr %t207
  store i32 %t208, ptr %l16, !tbaa !23
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/scope:Scoper", ptr %t210, i32 0, i32 0
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = getelementptr %"compiler/generic:Program", ptr %t213, i32 0, i32 0
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t218 = getelementptr %"compiler/load:Loader", ptr %t216, i32 0, i32 3
  %t219 = load ptr, ptr %t218, !tbaa !29
  store ptr %t219, ptr %l111, !tbaa !29
  %t220 = load ptr, ptr %l7, !tbaa !29
  %t222 = getelementptr %"compiler/typed:Body", ptr %t220, i32 0, i32 7
  store ptr %t222, ptr %l113, !tbaa !29
  %t223 = load ptr, ptr %l7, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Body", ptr %t223, i32 0, i32 10
  %t226 = load i64, ptr %l13, !tbaa !24
  %t229 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t225, i64 %t226)
  store i32 %t229, ptr %l117
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t230 = load i32, ptr %l117, !tbaa !23
  %t231 = sext i32 %t230 to i64
  %t232 = load ptr, ptr %l113, !tbaa !29
  %t234 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t232, i64 %t231)
  store %"compiler/typed:Local" %t234, ptr %l119
  br label %bb38
bb38:
  %t235 = getelementptr %"compiler/typed:Local", ptr %l119, i32 0, i32 0
  %t236 = load i32, ptr %t235, !tbaa !23
  %t237 = load ptr, ptr %l111, !tbaa !29
  %t239 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %t237, i32 %t236)
  store { i64, ptr } %t239, ptr %l121
  br label %bb39
bb39:
  %t240 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t240, ptr %l122, !tbaa !27
  %t241 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 0
  store i64 %t242, ptr %l123, !tbaa !24
  %t243 = load i64, ptr %l123, !tbaa !24
  %t244 = mul i64 %t243, 1
  %t245 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t244)
  %t246 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t247 = insertvalue { i64, ptr } %t246, ptr %t245, 1
  store { i64, ptr } %t247, ptr %l124, !tbaa !27
  %t248 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = load i64, ptr %l123, !tbaa !24
  %t253 = mul i64 %t252, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t249, ptr %t251, i64 %t253, i1 false)
  %t254 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t254, ptr %l122, !tbaa !27
  %t255 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t255, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t256 = load i64, ptr %l12, !tbaa !24
  %t258 = add i64 %t256, 1
  store i64 %t258, ptr %l12, !tbaa !24
  br label %bb26
bb42:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l127, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t260, ptr %l128, !tbaa !27
  %t261 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t261, 0
  store i64 %t262, ptr %l129, !tbaa !24
  %t263 = load i64, ptr %l129, !tbaa !24
  %t264 = mul i64 %t263, 1
  %t265 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t264)
  %t266 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t265, 1
  store { i64, ptr } %t267, ptr %l130, !tbaa !27
  %t268 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = load i64, ptr %l129, !tbaa !24
  %t273 = mul i64 %t272, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t269, ptr %t271, i64 %t273, i1 false)
  %t274 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t274, ptr %l128, !tbaa !27
  %t275 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t275, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l33 = alloca i32
  %l35 = alloca { i64, [1 x i64] }
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
  store ptr %t8, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t9 = load ptr, ptr %l10, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 2
  store i1 %t15, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l11, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t22 = load ptr, ptr %l16, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb6:
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 8}
  %t28 = icmp eq i64 %t26, 3
  store i1 %t28, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l17, !tbaa !21
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t37, i32 0, i32 2
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l3, !tbaa !29
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t43, i32 0, i32 2
  %t45 = load ptr, ptr %t44
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48
  store i64 %t49, ptr %l4, !tbaa !24
  br label %bb11
bb10:
  br label %bb19
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l26, !tbaa !29
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %s0, ptr %t52)
  store i32 %t54, ptr %l28
  br label %bb12
bb12:
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = load i32, ptr %l28, !tbaa !23
  %t57 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t55, i32 %t56)
  store i1 %t57, ptr %l29
  br label %bb13
bb13:
  %t58 = load i1, ptr %l29, !tbaa !21
  br i1 %t58, label %bb14, label %bb15
bb14:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l31, !tbaa !29
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %s0, ptr %t60)
  store i32 %t62, ptr %l33
  br label %bb16
bb15:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb18
bb16:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t64 = load ptr, ptr %l31, !tbaa !29
  %t65 = load i32, ptr %l33, !tbaa !23
  %t67 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %t64, i32 %t65, i64 %t63)
  store { i64, [1 x i64] } %t67, ptr %l35
  br label %bb17
bb17:
  %t68 = load { i64, [1 x i64] }, ptr %l35
  %t70 = extractvalue { i64, [1 x i64] } %t68, 0
  %t71 = icmp eq i64 %t70, 2
  store i1 %t71, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t73 = load i1, ptr %l30, !tbaa !21
  store i1 %t73, ptr %l9, !tbaa !21
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_33f27227f7ec135_5111a6d6f9774a09)
  unreachable
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t74 = load i1, ptr %l9, !tbaa !21
  store i1 %t74, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDefs(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l15 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l16 = alloca i32
  %l18 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l44 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/scope:Scoper", ptr %t3, i32 0, i32 170
  %t7 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H7f0db9a748408eed60466e9bcc3da0f4(ptr %v0, ptr %v0, ptr %t5)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t7, ptr %l12
  br label %bb2
bb2:
  %t8 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l12
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t8, ptr %l4
  br label %bb3
bb3:
  %t10 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hf35b68ef52989e91eb69554544b1a1d1(ptr %v0, ptr %l4)
  %t11 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t10, 1
  %t12 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t10, 0
  store i32 %t12, ptr %l16
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb5, label %ok.14, !prof !99
ok.14:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t11, ptr %l15
  br label %bb4
bb4:
  %t15 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l15
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t15, ptr %l13
  br label %bb7
bb5:
  %t16 = load i32, ptr %l16, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  br label %bb20
bb7:
  %t20 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t20, ptr %l5
  %t21 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = icmp eq i64 %t22, %a1
  br i1 %t26, label %bb8, label %bb9
bb8:
  br i1 %a2, label %bb10, label %bb11
bb9:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb14
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 177
  %t33 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t36 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t33)
  store i1 %t36, ptr %l28
  br label %bb12
bb11:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb13
bb12:
  %t37 = load i1, ptr %l28, !tbaa !21
  store i1 %t37, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t38 = load i1, ptr %l24, !tbaa !21
  %t39 = xor i1 %t38, true
  store i1 %t39, ptr %l22, !tbaa !21
  br label %bb14
bb14:
  %t41 = load i1, ptr %l22, !tbaa !21
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t42 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %s0, ptr %l3, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t42)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb3
bb20:
  store ptr %l3, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb21
bb21:
  %t46 = load i64, ptr %l7, !tbaa !24
  store i64 %t46, ptr %l33, !tbaa !24
  %t47 = load ptr, ptr %l6, !tbaa !29
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %s0, ptr %t47)
  store i64 %t49, ptr %l35
  br label %bb22
bb22:
  %t50 = load i64, ptr %l33, !tbaa !24
  %t51 = load i64, ptr %l35, !tbaa !24
  %t52 = icmp slt i64 %t50, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb23, label %bb24
bb23:
  br label %bb29
bb24:
  br label %bb25
bb25:
  %t56 = load ptr, ptr %l6, !tbaa !29
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %s0, ptr %t56, i64 %t57)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t60, ptr %l40
  br label %bb26
bb26:
  %t61 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l40
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 170
  %t68 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Haa74f894ca6709311a3b8bcafa35333d(ptr %v0, ptr %t64, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t61)
  store i1 %t68, ptr %l44
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l7, !tbaa !24
  br label %bb21
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l20 = alloca i64
  %rv = alloca i64
  %t34 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_f1651a5ea92fc764_7e198d85ea96f48)
  unreachable
bb2:
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 26
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = sext i32 %t27 to i64
  %t30 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t31 = load i32, ptr %t30, !tbaa !23
  %t33 = sext i32 %t31 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 0
  store i64 3, ptr %t35
  %t37 = insertvalue { i64, i64, i64 } undef, i64 %t25, 0
  %t39 = insertvalue { i64, i64, i64 } %t37, i64 %t29, 1
  %t41 = insertvalue { i64, i64, i64 } %t39, i64 %t33, 2
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  store { i64, i64, i64 } %t41, ptr %t42
  %t43 = load { i64, [3 x i64] }, ptr %t34
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t48 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %t45, { i64, [3 x i64] } %t43, %"compiler/diagmsg:Msg" %a2)
  store i64 %t48, ptr %l20
  br label %bb4
bb4:
  %t49 = load i64, ptr %l20, !tbaa !24
  store i64 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca i64
  %l22 = alloca i64
  %l26 = alloca ptr
  %l30 = alloca i32
  %l32 = alloca %"compiler/typed:Local"
  %l35 = alloca ptr
  %l38 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [1 x i64] }
  %t18 = alloca { i64, [1 x i64] }, align 8
  %t40 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 7
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t3, i32 %a1)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l11
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l10
  br label %bb1
bb1:
  %t12 = load i64, ptr %l10, !tbaa !24
  store i64 %t12, ptr %l6, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l6, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store { i64, [1 x i64] } zeroinitializer, ptr %t18
  %t19 = getelementptr { i64, [1 x i64] }, ptr %t18, i32 0, i32 0
  store i64 0, ptr %t19
  %t20 = load { i64, [1 x i64] }, ptr %t18
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t20, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 1
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  store ptr %t28, ptr %l18
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l18, !tbaa !29
  store ptr %t29, ptr %l4, !tbaa !29
  %t30 = load i64, ptr %l2, !tbaa !24
  store i64 %t30, ptr %l19, !tbaa !24
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Body", ptr %t31, i32 0, i32 10
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l22
  br label %bb9
bb9:
  %t36 = load i64, ptr %l19, !tbaa !24
  %t37 = load i64, ptr %l22, !tbaa !24
  %t38 = icmp sge i64 %t36, %t37
  br i1 %t38, label %bb10, label %bb11
bb10:
  store { i64, [1 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [1 x i64] }, ptr %t40, i32 0, i32 0
  store i64 0, ptr %t41
  %t42 = load { i64, [1 x i64] }, ptr %t40
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t42, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Body", ptr %t44, i32 0, i32 7
  store ptr %t46, ptr %l26, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Body", ptr %t47, i32 0, i32 10
  %t50 = load i64, ptr %l2, !tbaa !24
  %t53 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t49, i64 %t50)
  store i32 %t53, ptr %l30
  br label %bb13
bb13:
  %t54 = load i32, ptr %l30, !tbaa !23
  %t55 = sext i32 %t54 to i64
  %t56 = load ptr, ptr %l26, !tbaa !29
  %t58 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t56, i64 %t55)
  store %"compiler/typed:Local" %t58, ptr %l32
  br label %bb14
bb14:
  %t59 = getelementptr %"compiler/typed:Local", ptr %l32, i32 0, i32 5
  %t60 = load { i64, [1 x i64] }, ptr %t59
  store { i64, [1 x i64] } %t60, ptr %l5
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 250
  store ptr %t64, ptr %l35, !tbaa !29
  %t65 = load i64, ptr %l3, !tbaa !24
  %t66 = load i64, ptr %l2, !tbaa !24
  %t69 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t65, i64 %t66)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t69, ptr %l38
  br label %bb15
bb15:
  %t70 = load { i64, [1 x i64] }, ptr %l5
  %t71 = load ptr, ptr %l35, !tbaa !29
  %t72 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l38
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd10c34cdbfb7fa3abdb8b5399b1b7292(ptr %v0, ptr %t71, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t72, { i64, [1 x i64] } %t70)
  br label %bb16
bb16:
  %t74 = load { i64, [1 x i64] }, ptr %l5
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDerived(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i1
  %l11 = alloca i64
  %l19 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l29 = alloca ptr
  %l38 = alloca i32
  %l40 = alloca %"compiler/typed:Local"
  %l42 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i64
  %l48 = alloca ptr
  %l55 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l56 = alloca i64
  %l57 = alloca i32
  %l60 = alloca i1
  %l63 = alloca i64
  %l66 = alloca i64
  %l68 = alloca ptr
  %l74 = alloca i64
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
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
  store i64 %t8, ptr %l2, !tbaa !24
  %t10 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t11 = getelementptr { i64, i64 }, ptr %t10, i32 0, i32 1
  %t12 = load i64, ptr %t11
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb42
bb3:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load i64, ptr %l2, !tbaa !24
  store i64 %t18, ptr %l11, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 26
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  br i1 %t24, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb10
bb6:
  call void @__olang_check_failed(ptr @olang_loc_96b0618960354e24_3d02a19520d5ec20)
  unreachable
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 26
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 5
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l19
  br label %bb9
bb9:
  %t35 = load i64, ptr %l11, !tbaa !24
  %t36 = load i64, ptr %l19, !tbaa !24
  %t37 = icmp slt i64 %t35, %t36
  store i1 %t37, ptr %l10, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l10, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l21, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l22, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 26
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb13, label %bb14
bb12:
  br label %bb23
bb13:
  call void @__olang_check_failed(ptr @olang_loc_96b0618960354e24_3d02a19520d5ec20)
  unreachable
bb14:
  br label %bb15
bb15:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 26
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 7
  store ptr %t55, ptr %l29, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 26
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  br i1 %t61, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_96b0618960354e24_3d02a19520d5ec20)
  unreachable
bb17:
  br label %bb18
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 26
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t66, i32 0, i32 5
  %t70 = load i64, ptr %l2, !tbaa !24
  %t73 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t69, i64 %t70)
  store i32 %t73, ptr %l38
  br label %bb19
bb19:
  %t74 = load i32, ptr %l38, !tbaa !23
  %t75 = sext i32 %t74 to i64
  %t76 = load ptr, ptr %l29, !tbaa !29
  %t78 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t76, i64 %t75)
  store %"compiler/typed:Local" %t78, ptr %l40
  br label %bb20
bb20:
  %t79 = getelementptr %"compiler/typed:Local", ptr %l40, i32 0, i32 2
  %t80 = load i32, ptr %t79, !tbaa !23
  %t81 = load ptr, ptr %l22, !tbaa !29
  %t83 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %t81, i32 %t80)
  store i64 %t83, ptr %l42
  br label %bb21
bb21:
  %t84 = load ptr, ptr %l21, !tbaa !29
  %t85 = load i64, ptr %l42, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBack(ptr %v0, ptr %t84, i64 %t85)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t86 = load i64, ptr %l2, !tbaa !24
  %t88 = icmp sge i64 %t86, 0
  br i1 %t88, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s3
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l45, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scope:Scoper", ptr %t91, i32 0, i32 158
  store ptr %t93, ptr %l48, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/scope:Scoper", ptr %t94, i32 0, i32 27
  %t97 = load i64, ptr %t96, !tbaa !24
  %t99 = mul i64 %t97, 65536
  %t100 = load i64, ptr %l2, !tbaa !24
  %t103 = add i64 %t99, %t100
  %t104 = load i64, ptr %l3, !tbaa !24
  %t107 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t103, i64 %t104)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t107, ptr %l55
  br label %bb26
bb25:
  br label %bb32
bb26:
  %t108 = load ptr, ptr %l48, !tbaa !29
  %t109 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l55
  %t110 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t108, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t109)
  %t111 = extractvalue { i32, i64 } %t110, 1
  %t112 = extractvalue { i32, i64 } %t110, 0
  store i32 %t112, ptr %l57
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb28, label %ok.114, !prof !99
ok.114:
  store i64 %t111, ptr %l56
  br label %bb27
bb27:
  %t115 = load i64, ptr %l56, !tbaa !24
  store i64 %t115, ptr %l46, !tbaa !24
  br label %bb30
bb28:
  br label %bb29
bb29:
  store i64 -1, ptr %l46, !tbaa !24
  br label %bb30
bb30:
  %t116 = load ptr, ptr %l45, !tbaa !29
  %t117 = load i64, ptr %l46, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBack(ptr %v0, ptr %t116, i64 %t117)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb32:
  %t118 = load i64, ptr %l2, !tbaa !24
  %t120 = icmp slt i64 %t118, 0
  br i1 %t120, label %bb33, label %bb34
bb33:
  %t122 = load i64, ptr %l2, !tbaa !24
  %t124 = sub i64 0, %t122
  %t126 = sub i64 %t124, 1
  store i64 %t126, ptr %l63, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/scope:Scoper", ptr %t127, i32 0, i32 112
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t129)
  store i64 %t131, ptr %l66
  br label %bb35
bb34:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb36
bb35:
  %t132 = load i64, ptr %l63, !tbaa !24
  %t133 = load i64, ptr %l66, !tbaa !24
  %t134 = icmp slt i64 %t132, %t133
  store i1 %t134, ptr %l60, !tbaa !21
  br label %bb36
bb36:
  %t136 = load i1, ptr %l60, !tbaa !21
  br i1 %t136, label %bb37, label %bb38
bb37:
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l68, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %t138, i32 0, i32 112
  %t141 = load i64, ptr %l2, !tbaa !24
  %t143 = sub i64 0, %t141
  %t145 = sub i64 %t143, 1
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t140, i64 %t145)
  store i64 %t148, ptr %l74
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t149 = load ptr, ptr %l68, !tbaa !29
  %t150 = load i64, ptr %l74, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBack(ptr %v0, ptr %t149, i64 %t150)
  br label %bb40
bb40:
  br label %bb41
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
  call void @__olang_check_failed(ptr @olang_loc_1224d6df3464748a_e87c09d967c04386)
  unreachable
bb47:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldCall(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l20 = alloca %"compiler/typed:Local"
  %l25 = alloca i1
  %l32 = alloca ptr
  %l36 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 45
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, ptr } %t7, 1
  %t9 = extractvalue { i32, ptr } %t7, 0
  store i32 %t9, ptr %l10
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store ptr %t8, ptr %l9
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l9, !tbaa !29
  store ptr %t12, ptr %l5, !tbaa !29
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %rv
  br label %ret
bb4:
  %t14 = load ptr, ptr %l5, !tbaa !29
  store ptr %t14, ptr %l2, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 26
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_eb97c951d9e697cc_139ecfedaca533c8)
  unreachable
bb6:
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 26
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Body", ptr %t25, i32 0, i32 7
  %t29 = load i64, ptr %l1, !tbaa !24
  %t32 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t28, i64 %t29)
  store %"compiler/typed:Local" %t32, ptr %l20
  br label %bb8
bb8:
  %t33 = getelementptr %"compiler/typed:Local", ptr %l20, i32 0, i32 4
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 7}
  store i32 %t34, ptr %l3
  %t36 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t38 = trunc i64 3 to i32
  %t39 = icmp eq i32 %t36, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t45 = trunc i64 2 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  store i1 %t48, ptr %l25, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t50 = load i1, ptr %l25, !tbaa !21
  br i1 %t50, label %bb12, label %bb13
bb12:
  store i64 -1, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t55 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v0, ptr %t52)
  store ptr %t55, ptr %l32
  br label %bb15
bb15:
  %t56 = load ptr, ptr %l32, !tbaa !29
  store ptr %t56, ptr %l4, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Call", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %t65, !tbaa !23
  %t68 = sext i32 %t66 to i64
  store i64 %t68, ptr %l36, !tbaa !24
  br label %bb18
bb17:
  store i64 -1, ptr %l36, !tbaa !24
  br label %bb18
bb18:
  %t70 = load i64, ptr %l36, !tbaa !24
  store i64 %t70, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 159
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
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 159
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
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 159
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
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 159
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
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 159
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 26
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
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwValueArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i64 %a3, { i64, ptr } %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca %"compiler/scope:fnRecs"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/scope:fnRec"
  %l10 = alloca i64
  %l11 = alloca %"compiler/scope:fnRecs"
  %l17 = alloca %"compiler/scope:fnRecs"
  %l18 = alloca i32
  %l20 = alloca %"compiler/scope:fnRecs"
  %l21 = alloca %"compiler/scope:fnRecs"
  %l24 = alloca i1
  %l29 = alloca i1
  %l31 = alloca { i64, ptr }
  %l34 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l42 = alloca ptr
  %l45 = alloca i32
  %l47 = alloca i1
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca %"compiler/scope:fnRec"
  %l60 = alloca i64
  %l67 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i64
  %l73 = alloca i1
  %l75 = alloca i1
  %l79 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 96
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Call", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t12 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v0, ptr %t3, i64 %t9)
  %t13 = extractvalue { i32, %"compiler/scope:fnRecs" } %t12, 1
  %t14 = extractvalue { i32, %"compiler/scope:fnRecs" } %t12, 0
  store i32 %t14, ptr %l18
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb2, label %ok.16, !prof !99
ok.16:
  store %"compiler/scope:fnRecs" %t13, ptr %l17
  br label %bb1
bb1:
  %t18 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s0, ptr %l17)
  store %"compiler/scope:fnRecs" %t18, ptr %l20
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t19 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
  store %"compiler/scope:fnRecs" %t19, ptr %l21
  br label %bb5
bb4:
  %t20 = load %"compiler/scope:fnRecs", ptr %l20
  store %"compiler/scope:fnRecs" %t20, ptr %l11
  br label %bb6
bb5:
  %t21 = load %"compiler/scope:fnRecs", ptr %l21
  store %"compiler/scope:fnRecs" %t21, ptr %l11
  br label %bb6
bb6:
  %t22 = load %"compiler/scope:fnRecs", ptr %l11
  store %"compiler/scope:fnRecs" %t22, ptr %l6
  %t23 = getelementptr %"compiler/scope:fnRecs", ptr %l6, i32 0, i32 1
  %t24 = load i1, ptr %t23, !tbaa !21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp slt i64 %t28, %t31
  store i1 %t34, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l24, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t38, ptr %l31, !tbaa !27
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i32, ptr %t42, i64 %t39
  %t44 = load i32, ptr %t43, !tbaa !33
  %t47 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t37, i32 %t44)
  store i1 %t47, ptr %l34
  br label %bb12
bb11:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb13
bb12:
  %t48 = load i1, ptr %l34, !tbaa !21
  store i1 %t48, ptr %l29, !tbaa !21
  br label %bb13
bb13:
  %t49 = load i1, ptr %l29, !tbaa !21
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t50, i64 %t51, i1 true)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t54 = getelementptr %"compiler/scope:fnRecs", ptr %l6, i32 0, i32 1
  %t55 = load i1, ptr %t54, !tbaa !21
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb18, label %bb19
bb18:
  %t59 = load i1, ptr %l5, !tbaa !21
  store i1 %t59, ptr %l39, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb20
bb20:
  %t61 = load i1, ptr %l39, !tbaa !21
  br i1 %t61, label %bb21, label %bb22
bb21:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l42, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t67 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t63, ptr %t64)
  store i32 %t67, ptr %l45
  br label %bb23
bb22:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb25
bb23:
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = load ptr, ptr %l42, !tbaa !29
  %t70 = load i32, ptr %l45, !tbaa !23
  %t72 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etypeKeeps(ptr %v0, ptr %t69, i32 %t70, i64 %t68)
  store i1 %t72, ptr %l47
  br label %bb24
bb24:
  %t73 = load i1, ptr %l47, !tbaa !21
  store i1 %t73, ptr %l41, !tbaa !21
  br label %bb25
bb25:
  %t74 = load i1, ptr %l41, !tbaa !21
  br i1 %t74, label %bb26, label %bb27
bb26:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %t75, i64 %t76)
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t79 = getelementptr %"compiler/scope:fnRecs", ptr %l6, i32 0, i32 0
  store ptr %t79, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb30
bb30:
  %t81 = load i64, ptr %l8, !tbaa !24
  store i64 %t81, ptr %l51, !tbaa !24
  %t82 = load ptr, ptr %l7, !tbaa !29
  %t84 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t82)
  store i64 %t84, ptr %l53
  br label %bb31
bb31:
  %t85 = load i64, ptr %l51, !tbaa !24
  %t86 = load i64, ptr %l53, !tbaa !24
  %t87 = icmp slt i64 %t85, %t86
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb32, label %bb33
bb32:
  br label %bb54
bb33:
  br label %bb34
bb34:
  %t91 = load ptr, ptr %l7, !tbaa !29
  %t92 = load i64, ptr %l8, !tbaa !24
  %t95 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t91, i64 %t92)
  store %"compiler/scope:fnRec" %t95, ptr %l58
  br label %bb35
bb35:
  %t96 = load %"compiler/scope:fnRec", ptr %l58
  store %"compiler/scope:fnRec" %t96, ptr %l9
  %t97 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 2
  %t98 = load i1, ptr %t97, !tbaa !21
  br i1 %t98, label %bb36, label %bb37
bb36:
  %t100 = load i64, ptr %l2, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l60, !tbaa !24
  br label %bb38
bb37:
  %t104 = load i64, ptr %l2, !tbaa !24
  store i64 %t104, ptr %l60, !tbaa !24
  br label %bb38
bb38:
  %t106 = load i64, ptr %l60, !tbaa !24
  store i64 %t106, ptr %l10, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 0
  %t109 = load i64, ptr %t108, !tbaa !24
  %t110 = load i64, ptr %l10, !tbaa !24
  %t114 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %t107, i64 %t109, i64 %t110)
  store i1 %t114, ptr %l67
  br label %bb39
bb39:
  %t115 = load i1, ptr %l67, !tbaa !21
  br i1 %t115, label %bb40, label %bb41
bb40:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l68, !tbaa !29
  %t117 = load i64, ptr %l3, !tbaa !24
  store i64 %t117, ptr %l69, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 0
  %t120 = load i64, ptr %t119, !tbaa !24
  %t121 = load i64, ptr %l10, !tbaa !24
  %t125 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumPuts(ptr %v0, ptr %t118, i64 %t120, i64 %t121)
  store i1 %t125, ptr %l73
  br label %bb42
bb41:
  %t126 = load i1, ptr %l5, !tbaa !21
  br i1 %t126, label %bb44, label %bb45
bb42:
  %t128 = load ptr, ptr %l68, !tbaa !29
  %t129 = load i64, ptr %l69, !tbaa !24
  %t130 = load i1, ptr %l73, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t128, i64 %t129, i1 %t130)
  br label %bb43
bb43:
  br label %bb52
bb44:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 0
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = load i64, ptr %l10, !tbaa !24
  %t138 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumKeeps(ptr %v0, ptr %t131, i64 %t133, i64 %t134)
  store i1 %t138, ptr %l79
  br label %bb46
bb45:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb47
bb46:
  %t139 = load i1, ptr %l79, !tbaa !21
  store i1 %t139, ptr %l75, !tbaa !21
  br label %bb47
bb47:
  %t140 = load i1, ptr %l75, !tbaa !21
  br i1 %t140, label %bb48, label %bb49
bb48:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %t141, i64 %t142)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t145 = load i64, ptr %l8, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l8, !tbaa !24
  br label %bb30
bb54:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ematchFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l32 = alloca i1
  %l35 = alloca ptr
  %l42 = alloca i1
  %l49 = alloca i1
  %l59 = alloca ptr
  %l67 = alloca i1
  %l70 = alloca ptr
  %l78 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 3
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %l2, !tbaa !21
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Match", ptr %t9, i32 0, i32 1
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb5, label %bb6
bb5:
  br label %bb26
bb6:
  br label %bb7
bb7:
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t26, ptr %l19, !tbaa !27
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 %t27
  %t32 = load ptr, ptr %t31, !tbaa !39
  store ptr %t32, ptr %l6, !tbaa !29
  %t34 = load ptr, ptr %l6, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Arm", ptr %t34, i32 0, i32 4
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l25, !tbaa !29
  %t42 = load ptr, ptr %l6, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Arm", ptr %t42, i32 0, i32 4
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_1a9ca456c0fc4f74_b6b9f556459eb628)
  unreachable
bb12:
  br label %bb13
bb13:
  %t49 = load ptr, ptr %l6, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Arm", ptr %t49, i32 0, i32 4
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = load ptr, ptr %l25, !tbaa !29
  %t56 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewOrConst(ptr %v0, ptr %v1, ptr %t54, ptr %t52)
  store i1 %t56, ptr %l32
  br label %bb14
bb14:
  %t57 = load i1, ptr %l32, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l35, !tbaa !29
  %t62 = load ptr, ptr %l6, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Arm", ptr %t62, i32 0, i32 4
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = icmp eq ptr %t65, null
  br i1 %t67, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_2a6344a0ea169f03_937c8368e559d747)
  unreachable
bb19:
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l6, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Arm", ptr %t69, i32 0, i32 4
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = load ptr, ptr %l35, !tbaa !29
  %t76 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t74, ptr %t72)
  store i1 %t76, ptr %l42
  br label %bb21
bb21:
  %t77 = load i1, ptr %l42, !tbaa !21
  br i1 %t77, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t78 = load i64, ptr %l4, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l4, !tbaa !24
  br label %bb4
bb26:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Match", ptr %t82, i32 0, i32 2
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = icmp eq ptr %t85, null
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb27, label %bb28
bb27:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Match", ptr %t91, i32 0, i32 2
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = icmp eq ptr %t94, null
  br i1 %t96, label %bb29, label %bb30
bb28:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb32
bb29:
  call void @__olang_check_failed(ptr @olang_loc_61c41c23c6ba3b82_8b9b0b538ad52716)
  unreachable
bb30:
  br label %bb31
bb31:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Match", ptr %t98, i32 0, i32 2
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Arm", ptr %t101, i32 0, i32 4
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = icmp eq ptr %t105, null
  %t109 = xor i1 %t107, true
  store i1 %t109, ptr %l49, !tbaa !21
  br label %bb32
bb32:
  %t111 = load i1, ptr %l49, !tbaa !21
  br i1 %t111, label %bb33, label %bb34
bb33:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l59, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Match", ptr %t113, i32 0, i32 2
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = icmp eq ptr %t116, null
  br i1 %t118, label %bb35, label %bb36
bb34:
  br label %bb49
bb35:
  call void @__olang_check_failed(ptr @olang_loc_b9c5758278fbc269_f38d2c0a467d6fd)
  unreachable
bb36:
  br label %bb37
bb37:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Match", ptr %t120, i32 0, i32 2
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Arm", ptr %t123, i32 0, i32 4
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t128 = load ptr, ptr %l59, !tbaa !29
  %t130 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewOrConst(ptr %v0, ptr %v1, ptr %t128, ptr %t127)
  store i1 %t130, ptr %l67
  br label %bb38
bb38:
  %t131 = load i1, ptr %l67, !tbaa !21
  %t132 = xor i1 %t131, true
  br i1 %t132, label %bb39, label %bb40
bb39:
  store i1 false, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l70, !tbaa !29
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Match", ptr %t136, i32 0, i32 2
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = icmp eq ptr %t139, null
  br i1 %t141, label %bb42, label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_8672b56b87660cf0_1560bce2a415882c)
  unreachable
bb43:
  br label %bb44
bb44:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr %"compiler/typed:Match", ptr %t143, i32 0, i32 2
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Arm", ptr %t146, i32 0, i32 4
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t151 = load ptr, ptr %l70, !tbaa !29
  %t153 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t151, ptr %t150)
  store i1 %t153, ptr %l78
  br label %bb45
bb45:
  %t154 = load i1, ptr %l78, !tbaa !21
  br i1 %t154, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb48
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t155 = load i1, ptr %l2, !tbaa !21
  store i1 %t155, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 26
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
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l16, !tbaa !27
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoBuildTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i1
  %l7 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
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
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb9
bb3:
  %t10 = load i64, ptr %l2, !tbaa !24
  store i64 %t10, ptr %l7, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 69
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load i64, ptr %l7, !tbaa !24
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = icmp slt i64 %t16, %t17
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 69
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t22, i64 %t23)
  store i1 %t26, ptr %l16
  br label %bb7
bb6:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  %t27 = load i1, ptr %l16, !tbaa !21
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l12, !tbaa !21
  store i1 %t28, ptr %l3, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_a9ed640346de181b_d10bb16716ed4607)
  unreachable
bb14:
  %t29 = load i1, ptr %l3, !tbaa !21
  store i1 %t29, ptr %rv
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartAdmits(ptr %v0, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l4 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i1
  %l11 = alloca i1
  %l15 = alloca i1
  %l16 = alloca ptr
  %l21 = alloca i32
  %l26 = alloca i64
  %l30 = alloca i1
  %l34 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i1, ptr %l2, !tbaa !21
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t3, i32 %t4)
  store i1 %t7, ptr %l7
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb8
bb3:
  %t8 = load i1, ptr %l7, !tbaa !21
  br i1 %t8, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb7
bb5:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l11
  br label %bb6
bb6:
  %t14 = load i1, ptr %l11, !tbaa !21
  store i1 %t14, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t15 = load i1, ptr %l8, !tbaa !21
  store i1 %t15, ptr %l4, !tbaa !21
  br label %bb8
bb8:
  %t16 = load i1, ptr %l4, !tbaa !21
  br i1 %t16, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l15
  br label %bb12
bb12:
  %t23 = load i1, ptr %l15, !tbaa !21
  br i1 %t23, label %bb13, label %bb14
bb13:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l16, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l21
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t40, i32 %t41)
  store i64 %t44, ptr %l26
  br label %bb16
bb16:
  %t45 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t46 = load i64, ptr %l26, !tbaa !24
  %t48 = and i64 %t46, %t45
  %t50 = icmp ne i64 %t48, 0
  %t51 = load ptr, ptr %l16, !tbaa !29
  %t52 = load i32, ptr %l21, !tbaa !23
  %t54 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsAt(ptr %v0, ptr %t51, i32 %t52, i1 %t50)
  store i1 %t54, ptr %l30
  br label %bb17
bb17:
  %t55 = load i1, ptr %l30, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l1, !tbaa !23
  %t58 = load i1, ptr %l2, !tbaa !21
  %t62 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsAt(ptr %v0, ptr %t56, i32 %t57, i1 %t58)
  store i1 %t62, ptr %l34
  br label %bb19
bb19:
  %t63 = load i1, ptr %l34, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i1
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i1
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i1
  %l47 = alloca i64
  %l48 = alloca ptr
  %l49 = alloca i1
  %l57 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
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
  %t20 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i64 %t20, ptr %l17
  br label %bb6
bb6:
  %t21 = load i64, ptr %l17, !tbaa !24
  store i64 %t21, ptr %l8, !tbaa !24
  br label %bb51
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l19, !tbaa !21
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
  %t44 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %v1, ptr %t37, ptr %t41)
  store i64 %t44, ptr %l27
  br label %bb13
bb13:
  %t45 = load i64, ptr %l27, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  br label %bb51
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l28, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 5
  store i1 %t53, ptr %l29, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l29, !tbaa !21
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
  %t68 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %v1, ptr %t61, ptr %t65)
  store i64 %t68, ptr %l37
  br label %bb20
bb20:
  %t69 = load i64, ptr %l37, !tbaa !24
  store i64 %t69, ptr %l8, !tbaa !24
  br label %bb51
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l38, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 2
  store i1 %t77, ptr %l39, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l39, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t90 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltCall(ptr %v0, ptr %v1, ptr %t85, ptr %t86)
  store i64 %t90, ptr %l47
  br label %bb27
bb27:
  %t91 = load i64, ptr %l47, !tbaa !24
  store i64 %t91, ptr %l8, !tbaa !24
  br label %bb51
bb28:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t93 = load ptr, ptr %l48, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb29, label %bb30
bb29:
  %t96 = load ptr, ptr %l48, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 8}
  %t99 = icmp eq i64 %t97, 6
  store i1 %t99, ptr %l49, !tbaa !21
  br label %bb30
bb30:
  %t100 = load i1, ptr %l49, !tbaa !21
  br i1 %t100, label %bb31, label %bb32
bb31:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l6, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l6, !tbaa !29
  %t112 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltCall(ptr %v0, ptr %v1, ptr %t107, ptr %t108)
  store i64 %t112, ptr %l57
  br label %bb34
bb34:
  %t113 = load i64, ptr %l57, !tbaa !24
  store i64 %t113, ptr %l8, !tbaa !24
  br label %bb51
bb35:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t115 = load ptr, ptr %l58, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb36, label %bb37
bb36:
  %t118 = load ptr, ptr %l58, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 8}
  %t121 = icmp eq i64 %t119, 0
  store i1 %t121, ptr %l59, !tbaa !21
  br label %bb37
bb37:
  %t122 = load i1, ptr %l59, !tbaa !21
  br i1 %t122, label %bb38, label %bb39
bb38:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t125, i32 0, i32 2
  %t127 = load i32, ptr %t126
  store i32 %t127, ptr %l7, !tbaa !23
  br label %bb40
bb39:
  br label %bb46
bb40:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l64, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/scope:Scoper", ptr %t130, i32 0, i32 43
  %t133 = load i32, ptr %l7, !tbaa !23
  %t135 = sext i32 %t133 to i64
  %t138 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t132, i64 %t135)
  %t139 = extractvalue { i32, ptr } %t138, 1
  %t140 = extractvalue { i32, ptr } %t138, 0
  store i32 %t140, ptr %l71
  %t141 = icmp ne i32 %t140, 0
  br i1 %t141, label %bb42, label %ok.142, !prof !99
ok.142:
  store ptr %t139, ptr %l70
  br label %bb41
bb41:
  %t143 = load ptr, ptr %l70, !tbaa !29
  store ptr %t143, ptr %l65, !tbaa !29
  br label %bb44
bb42:
  br label %bb43
bb43:
  store ptr null, ptr %l65, !tbaa !29
  br label %bb44
bb44:
  %t144 = load ptr, ptr %l64, !tbaa !29
  %t145 = load ptr, ptr %l65, !tbaa !29
  %t146 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltCall(ptr %v0, ptr %v0, ptr %t144, ptr %t145)
  store i64 %t146, ptr %l72
  br label %bb45
bb45:
  %t147 = load i64, ptr %l72, !tbaa !24
  store i64 %t147, ptr %l8, !tbaa !24
  br label %bb51
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_da3e82aad0dc20bd_21e51e34c917c3d9)
  unreachable
bb51:
  %t148 = load i64, ptr %l8, !tbaa !24
  store i64 %t148, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l10 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca i32
  %l34 = alloca %"compiler/source:Span"
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca %"compiler/source:Span"
  %l45 = alloca i64
  %l47 = alloca %"compiler/source:Span"
  %l49 = alloca i64
  %l50 = alloca i64
  %l58 = alloca ptr
  %l67 = alloca %"compiler/typed:Local"
  %l69 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l74 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOfOwn(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i1, ptr %l10, !tbaa !21
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
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t15 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t10, ptr %t11)
  store ptr %t15, ptr %l16
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l16, !tbaa !29
  %t17 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t16)
  store ptr %t17, ptr %l17
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l17, !tbaa !29
  store ptr %t18, ptr %l3, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t23 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %t19, ptr %t20)
  store i64 %t23, ptr %l20
  br label %bb7
bb7:
  %t24 = load i64, ptr %l20, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 11
  store ptr %t27, ptr %l23, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 26
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  br i1 %t33, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_178b2bff302b55ae_896b4874215d5e1a)
  unreachable
bb9:
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 26
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Body", ptr %t38, i32 0, i32 3
  %t42 = load i64, ptr %t41, !tbaa !24
  %t43 = load ptr, ptr %l23, !tbaa !29
  %t45 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t43, i64 %t42)
  %t46 = extractvalue { i32, { i64, ptr } } %t45, 1
  %t47 = extractvalue { i32, { i64, ptr } } %t45, 0
  store i32 %t47, ptr %l32
  %t48 = icmp ne i32 %t47, 0
  br i1 %t48, label %bb12, label %ok.49, !prof !99
ok.49:
  store { i64, ptr } %t46, ptr %l31
  br label %bb11
bb11:
  %t50 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t50, ptr %l21, !tbaa !27
  br label %bb14
bb12:
  br label %bb13
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l21, !tbaa !27
  br label %bb14
bb14:
  %t51 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t51, ptr %l5, !tbaa !27
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %s0, ptr %t52)
  store %"compiler/source:Span" %t54, ptr %l34
  br label %bb15
bb15:
  %t55 = getelementptr %"compiler/source:Span", ptr %l34, i32 0, i32 1
  %t56 = load i32, ptr %t55, !tbaa !23
  %t58 = sext i32 %t56 to i64
  %t59 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t64 = icmp sle i64 %t58, %t61
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t66, ptr %l41, !tbaa !27
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %s0, ptr %t67)
  store %"compiler/source:Span" %t69, ptr %l43
  br label %bb18
bb17:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l40, !tbaa !27
  br label %bb26
bb18:
  %t70 = getelementptr %"compiler/source:Span", ptr %l43, i32 0, i32 0
  %t71 = load i32, ptr %t70, !tbaa !23
  %t73 = sext i32 %t71 to i64
  store i64 %t73, ptr %l45, !tbaa !24
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %s0, ptr %t74)
  store %"compiler/source:Span" %t76, ptr %l47
  br label %bb19
bb19:
  %t77 = getelementptr %"compiler/source:Span", ptr %l47, i32 0, i32 1
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = sext i32 %t78 to i64
  store i64 %t80, ptr %l49, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  store i64 %t82, ptr %l50, !tbaa !24
  %t83 = load i64, ptr %l45, !tbaa !24
  %t84 = icmp sge i64 %t83, 0
  br i1 %t84, label %bb20, label %bb21
bb20:
  %t86 = load i64, ptr %l45, !tbaa !24
  %t87 = load i64, ptr %l49, !tbaa !24
  %t88 = icmp sle i64 %t86, %t87
  br i1 %t88, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_98dfeaa5663cde63_8f6c693e4f6dac2f)
  unreachable
bb22:
  %t90 = load i64, ptr %l49, !tbaa !24
  %t91 = load i64, ptr %l50, !tbaa !24
  %t92 = icmp sle i64 %t90, %t91
  br i1 %t92, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_98dfeaa5663cde63_8f6c693e4f6dac2f)
  unreachable
bb24:
  %t94 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l45, !tbaa !24
  %t97 = load i64, ptr %l49, !tbaa !24
  %t98 = getelementptr i8, ptr %t95, i64 %t96
  %t99 = sub i64 %t97, %t96
  %t100 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t98, 1
  store { i64, ptr } %t101, ptr %l40, !tbaa !27
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_98dfeaa5663cde63_8f6c693e4f6dac2f)
  unreachable
bb26:
  %t103 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t103, ptr %l6, !tbaa !27
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/load:Loader", ptr %t110, i32 0, i32 3
  %t113 = load ptr, ptr %t112, !tbaa !29
  store ptr %t113, ptr %l58, !tbaa !29
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %t114, i32 0, i32 26
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = icmp eq ptr %t117, null
  br i1 %t119, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_50915285e3e59b40_32eaccc11482b3ec)
  unreachable
bb28:
  br label %bb29
bb29:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/scope:Scoper", ptr %t121, i32 0, i32 26
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Body", ptr %t124, i32 0, i32 7
  %t128 = load i64, ptr %l4, !tbaa !24
  %t131 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t127, i64 %t128)
  store %"compiler/typed:Local" %t131, ptr %l67
  br label %bb30
bb30:
  %t132 = getelementptr %"compiler/typed:Local", ptr %l67, i32 0, i32 0
  %t133 = load i32, ptr %t132, !tbaa !23
  %t134 = load ptr, ptr %l58, !tbaa !29
  %t136 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t134, i32 %t133)
  store { i64, ptr } %t136, ptr %l69
  br label %bb31
bb31:
  %t137 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l70, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l71
  %t140 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t144 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePartKept(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t140, { i64, ptr } %t137)
  store %"compiler/diagmsg:Msg" %t144, ptr %l74
  br label %bb32
bb32:
  %t145 = load ptr, ptr %l70, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l71
  %t147 = load %"compiler/diagmsg:Msg", ptr %l74
  %t148 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t145, %"compiler/source:Span" %t146, %"compiler/diagmsg:Msg" %t147)
  store i64 %t148, ptr %l75
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l41 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l52 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l63 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca ptr
  %l76 = alloca ptr
  %l77 = alloca i32
  %l79 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load { i64, [2 x i64] }, ptr %l2
  %t22 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %t16, ptr %t17, { i64, [2 x i64] } %t18)
  store i1 %t22, ptr %l19
  br label %bb6
bb6:
  %t23 = load i1, ptr %l19, !tbaa !21
  store i1 %t23, ptr %l9, !tbaa !21
  br label %bb51
bb7:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t25 = load ptr, ptr %l20, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l20, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 8}
  %t31 = icmp eq i64 %t29, 4
  store i1 %t31, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l21, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Elem", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t44 = load { i64, [2 x i64] }, ptr %l2
  %t48 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %t39, ptr %t43, { i64, [2 x i64] } %t44)
  store i1 %t48, ptr %l30
  br label %bb13
bb13:
  %t49 = load i1, ptr %l30, !tbaa !21
  store i1 %t49, ptr %l9, !tbaa !21
  br label %bb51
bb14:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t51 = load ptr, ptr %l31, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l31, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 8}
  %t57 = icmp eq i64 %t55, 5
  store i1 %t57, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t58 = load i1, ptr %l32, !tbaa !21
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l5, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l5, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Payload", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t70 = load { i64, [2 x i64] }, ptr %l2
  %t74 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %t65, ptr %t69, { i64, [2 x i64] } %t70)
  store i1 %t74, ptr %l41
  br label %bb20
bb20:
  %t75 = load i1, ptr %l41, !tbaa !21
  store i1 %t75, ptr %l9, !tbaa !21
  br label %bb51
bb21:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t77 = load ptr, ptr %l42, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t80 = load ptr, ptr %l42, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 2
  store i1 %t83, ptr %l43, !tbaa !21
  br label %bb23
bb23:
  %t84 = load i1, ptr %l43, !tbaa !21
  br i1 %t84, label %bb24, label %bb25
bb24:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l6, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = load { i64, [2 x i64] }, ptr %l2
  %t98 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltOK(ptr %v0, ptr %v1, ptr %t91, ptr %t92, { i64, [2 x i64] } %t94)
  store i1 %t98, ptr %l52
  br label %bb27
bb27:
  %t99 = load i1, ptr %l52, !tbaa !21
  store i1 %t99, ptr %l9, !tbaa !21
  br label %bb51
bb28:
  %t100 = load ptr, ptr %l1, !tbaa !29
  store ptr %t100, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t101 = load ptr, ptr %l53, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb29, label %bb30
bb29:
  %t104 = load ptr, ptr %l53, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 8}
  %t107 = icmp eq i64 %t105, 6
  store i1 %t107, ptr %l54, !tbaa !21
  br label %bb30
bb30:
  %t108 = load i1, ptr %l54, !tbaa !21
  br i1 %t108, label %bb31, label %bb32
bb31:
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t111, i32 0, i32 2
  %t113 = load ptr, ptr %t112
  store ptr %t113, ptr %l7, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load ptr, ptr %l7, !tbaa !29
  %t118 = load { i64, [2 x i64] }, ptr %l2
  %t122 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltOK(ptr %v0, ptr %v1, ptr %t115, ptr %t116, { i64, [2 x i64] } %t118)
  store i1 %t122, ptr %l63
  br label %bb34
bb34:
  %t123 = load i1, ptr %l63, !tbaa !21
  store i1 %t123, ptr %l9, !tbaa !21
  br label %bb51
bb35:
  %t124 = load ptr, ptr %l1, !tbaa !29
  store ptr %t124, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t125 = load ptr, ptr %l64, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb36, label %bb37
bb36:
  %t128 = load ptr, ptr %l64, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 8}
  %t131 = icmp eq i64 %t129, 0
  store i1 %t131, ptr %l65, !tbaa !21
  br label %bb37
bb37:
  %t132 = load i1, ptr %l65, !tbaa !21
  br i1 %t132, label %bb38, label %bb39
bb38:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t135, i32 0, i32 2
  %t137 = load i32, ptr %t136
  store i32 %t137, ptr %l8, !tbaa !23
  br label %bb40
bb39:
  br label %bb46
bb40:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l70, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/scope:Scoper", ptr %t140, i32 0, i32 43
  %t143 = load i32, ptr %l8, !tbaa !23
  %t145 = sext i32 %t143 to i64
  %t148 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t142, i64 %t145)
  %t149 = extractvalue { i32, ptr } %t148, 1
  %t150 = extractvalue { i32, ptr } %t148, 0
  store i32 %t150, ptr %l77
  %t151 = icmp ne i32 %t150, 0
  br i1 %t151, label %bb42, label %ok.152, !prof !99
ok.152:
  store ptr %t149, ptr %l76
  br label %bb41
bb41:
  %t153 = load ptr, ptr %l76, !tbaa !29
  store ptr %t153, ptr %l71, !tbaa !29
  br label %bb44
bb42:
  br label %bb43
bb43:
  store ptr null, ptr %l71, !tbaa !29
  br label %bb44
bb44:
  %t154 = load { i64, [2 x i64] }, ptr %l2
  %t155 = load ptr, ptr %l70, !tbaa !29
  %t156 = load ptr, ptr %l71, !tbaa !29
  %t158 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltOK(ptr %v0, ptr %v0, ptr %t155, ptr %t156, { i64, [2 x i64] } %t154)
  store i1 %t158, ptr %l79
  br label %bb45
bb45:
  %t159 = load i1, ptr %l79, !tbaa !21
  store i1 %t159, ptr %l9, !tbaa !21
  br label %bb51
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_eb55abbe133e6e93_c0f65549c24d0e87)
  unreachable
bb51:
  %t160 = load i1, ptr %l9, !tbaa !21
  store i1 %t160, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeStorage(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca { i64, [2 x i64] }
  %l22 = alloca i1
  %l23 = alloca ptr
  %l32 = alloca %"compiler/typed:Local"
  %l34 = alloca i1
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
  store i1 true, ptr %l6, !tbaa !21
  br label %bb7
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 26
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_df6e824c4c3c9400_1b7b77180b6f5a3c)
  unreachable
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 26
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 7
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l15
  br label %bb6
bb6:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t23 = load i64, ptr %l15, !tbaa !24
  %t24 = icmp sge i64 %t22, %t23
  store i1 %t24, ptr %l6, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l6, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l17, !tbaa !29
  %t28 = load i64, ptr %l1, !tbaa !24
  store i64 %t28, ptr %l18, !tbaa !24
  store { i64, [2 x i64] } %a2, ptr %l19
  %t32 = xor i1 %a3, true
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 26
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb13, label %bb14
bb12:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb18
bb13:
  call void @__olang_check_failed(ptr @olang_loc_817a5835fe39b09f_f2d313272c8945ab)
  unreachable
bb14:
  br label %bb15
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 26
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Body", ptr %t45, i32 0, i32 7
  %t49 = load i64, ptr %l1, !tbaa !24
  %t52 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t48, i64 %t49)
  store %"compiler/typed:Local" %t52, ptr %l32
  br label %bb16
bb16:
  %t53 = getelementptr %"compiler/typed:Local", ptr %l32, i32 0, i32 2
  %t54 = load i32, ptr %t53, !tbaa !23
  %t55 = load ptr, ptr %l23, !tbaa !29
  %t57 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t55, i32 %t54)
  store i1 %t57, ptr %l34
  br label %bb17
bb17:
  %t58 = load i1, ptr %l34, !tbaa !21
  %t59 = xor i1 %t58, true
  store i1 %t59, ptr %l22, !tbaa !21
  br label %bb18
bb18:
  %t61 = load ptr, ptr %l17, !tbaa !29
  %t62 = load i64, ptr %l18, !tbaa !24
  %t63 = load { i64, [2 x i64] }, ptr %l19
  %t64 = load i1, ptr %l22, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeLocal(ptr %v0, ptr %t61, i64 %t62, { i64, [2 x i64] } %t63, i1 %t64)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eret(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l16 = alloca i1
  %l21 = alloca ptr
  %l25 = alloca %"compiler/scope:fnRecs"
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 133
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 133
  store i1 true, ptr %t12, !tbaa !21
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eretValue(ptr %v0, ptr %v1, ptr %t13, %"compiler/source:Span" %a1, ptr %t15)
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i1, ptr %l3, !tbaa !21
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 133
  store i1 %t20, ptr %t23, !tbaa !21
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 99
  %t27 = load i1, ptr %t26, !tbaa !21
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 101
  %t32 = load i1, ptr %t31, !tbaa !21
  %t34 = xor i1 %t32, true
  store i1 %t34, ptr %l16, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t36 = load i1, ptr %l16, !tbaa !21
  br i1 %t36, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 98
  store ptr %t39, ptr %l21, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t45 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecsOf(ptr %v0, ptr %v1, ptr %s2, ptr %t40, ptr %t41)
  store %"compiler/scope:fnRecs" %t45, ptr %l25
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t46 = load %"compiler/scope:fnRecs", ptr %l25
  %t47 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 104, i64 8)
  store %"compiler/scope:fnRecs" %t46, ptr %t47
  %t48 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fscope_2emergeRecs(ptr %v0, ptr %s2, ptr %t48, ptr %t47)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l17 = alloca { i64, ptr }
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
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlStmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28, i64 %a2)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erunArrayParam(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i32
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i32
  %l18 = alloca ptr
  %l23 = alloca %"compiler/typed:Local"
  %l25 = alloca i32
  %l28 = alloca i1
  %l30 = alloca i1
  %l35 = alloca i32
  %l38 = alloca i1
  %l43 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 5
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb22
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t15, i64 %t16)
  store i32 %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load i32, ptr %l15, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  store ptr %t26, ptr %l18, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Body", ptr %t27, i32 0, i32 7
  %t32 = sext i32 %t20 to i64
  %t35 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t29, i64 %t32)
  store %"compiler/typed:Local" %t35, ptr %l23
  br label %bb7
bb7:
  %t36 = getelementptr %"compiler/typed:Local", ptr %l23, i32 0, i32 2
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l18, !tbaa !29
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t38, i32 %t37)
  store i32 %t40, ptr %l25
  br label %bb8
bb8:
  %t41 = load i32, ptr %l25, !tbaa !23
  store i32 %t41, ptr %l5, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l5, !tbaa !23
  %t46 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l28
  br label %bb9
bb9:
  %t47 = load i1, ptr %l28, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l5, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l35
  br label %bb12
bb11:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb13
bb12:
  %t60 = load i32, ptr %l35, !range !{i32 0, i32 33}
  %t62 = trunc i64 19 to i32
  %t63 = icmp eq i32 %t60, %t62
  store i1 %t63, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t65 = load i1, ptr %l30, !tbaa !21
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l5, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l43
  br label %bb16
bb15:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb17
bb16:
  %t76 = load i32, ptr %l43, !tbaa !23
  %t77 = icmp eq i32 %t76, 0
  store i1 %t77, ptr %l38, !tbaa !21
  br label %bb17
bb17:
  %t79 = load i1, ptr %l38, !tbaa !21
  br i1 %t79, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t81 = load i64, ptr %l3, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l3, !tbaa !24
  br label %bb1
bb22:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2espawn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i1
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca { i64, [2 x i64] }
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca %"compiler/scope:Val"
  %l28 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i1
  %l34 = alloca %"compiler/scope:Val"
  %l35 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca { i64, [2 x i64] }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l50 = alloca i64
  %l53 = alloca ptr
  %l56 = alloca i64
  %l58 = alloca i32
  %l68 = alloca { i64, ptr }
  %l77 = alloca i1
  %l79 = alloca i64
  %l82 = alloca ptr
  %l84 = alloca i64
  %l85 = alloca ptr
  %l88 = alloca { i64, [2 x i64] }
  %l90 = alloca i1
  %l92 = alloca i1
  %l95 = alloca ptr
  %l97 = alloca %"compiler/source:Span"
  %l98 = alloca %"compiler/diagmsg:Msg"
  %l99 = alloca i64
  %l110 = alloca i64
  %l113 = alloca i64
  %l132 = alloca { i64, ptr }
  %l138 = alloca i32
  %l142 = alloca i1
  %l145 = alloca %"compiler/scope:placeSlot"
  %l149 = alloca i1
  %l151 = alloca i1
  %l155 = alloca i1
  %l161 = alloca i1
  %l164 = alloca { i64, [2 x i64] }
  %l166 = alloca i1
  %l171 = alloca { i64, [2 x i64] }
  %l173 = alloca { i64, [2 x i64] }
  %l175 = alloca i1
  %l178 = alloca i1
  %l180 = alloca i1
  %l184 = alloca i64
  %l198 = alloca { i64, ptr }
  %l206 = alloca %"compiler/scope:Val"
  %l210 = alloca i1
  %l214 = alloca i1
  %l217 = alloca i1
  %l220 = alloca ptr
  %l228 = alloca i1
  %l231 = alloca ptr
  %l232 = alloca ptr
  %l242 = alloca %"compiler/source:Span"
  %l243 = alloca %"compiler/diagmsg:Msg"
  %l244 = alloca i64
  %l247 = alloca ptr
  %l248 = alloca i1
  %l251 = alloca i1
  %l253 = alloca ptr
  %l254 = alloca i1
  %l266 = alloca i1
  %l271 = alloca i1
  %l273 = alloca i1
  %l275 = alloca i1
  %l276 = alloca ptr
  %l278 = alloca { i64, ptr }
  %l283 = alloca ptr
  %l284 = alloca ptr
  %l286 = alloca { i64, ptr }
  %l292 = alloca %"compiler/scope:placeSlot"
  %l294 = alloca i1
  %l306 = alloca %"compiler/scope:Val"
  %l315 = alloca i1
  %l318 = alloca i1
  %l321 = alloca i1
  %l324 = alloca i1
  %l327 = alloca { i64, ptr }
  %l330 = alloca ptr
  %l334 = alloca %"compiler/scope:placeSlot"
  %l336 = alloca ptr
  %l337 = alloca %"compiler/source:Span"
  %l343 = alloca i1
  %l348 = alloca i1
  %l350 = alloca i1
  %l359 = alloca { i64, ptr }
  %l364 = alloca i1
  %l365 = alloca ptr
  %l367 = alloca i32
  %l368 = alloca i1
  %l371 = alloca i64
  %l381 = alloca ptr
  %l382 = alloca ptr
  %l391 = alloca %"compiler/source:Span"
  %l392 = alloca %"compiler/diagmsg:Msg"
  %l393 = alloca i64
  %l410 = alloca { i64, ptr }
  %l422 = alloca ptr
  %l424 = alloca i32
  %l426 = alloca i1
  %l427 = alloca { i64, [2 x i64] }
  %l430 = alloca { i64, [2 x i64] }
  %t1 = alloca { i64, [2 x i64] }, align 8
  %t26 = alloca { i64, [2 x i64] }, align 8
  %t119 = alloca { i64, [2 x i64] }, align 8
  %t123 = alloca { i64, [2 x i64] }, align 8
  %t199 = alloca { i64, [2 x i64] }, align 8
  %t564 = alloca { i64, [2 x i64] }, align 8
  %t574 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [2 x i64] } zeroinitializer, ptr %t1
  %t2 = getelementptr { i64, [2 x i64] }, ptr %t1, i32 0, i32 0
  store i64 0, ptr %t2
  %t3 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t3, ptr %l3
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 81
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l50
  br label %bb1
bb1:
  %t10 = load i64, ptr %l50, !tbaa !24
  %t11 = icmp sgt i64 %t10, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 81
  store ptr %t15, ptr %l53, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 81
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l56
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t21 = load i64, ptr %l56, !tbaa !24
  %t22 = sub i64 %t21, 1
  %t23 = load ptr, ptr %l53, !tbaa !29
  %t25 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t23, i64 %t22)
  store i32 %t25, ptr %l58
  br label %bb5
bb5:
  store { i64, [2 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 0
  store i64 1, ptr %t27
  %t28 = load i32, ptr %l58, !tbaa !23
  %t29 = insertvalue { i32 } undef, i32 %t28, 0
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  store { i32 } %t29, ptr %t30
  %t31 = load { i64, [2 x i64] }, ptr %t26
  store { i64, [2 x i64] } %t31, ptr %l3
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Spawn", ptr %t33, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb8, label %bb9
bb8:
  br label %bb36
bb9:
  br label %bb10
bb10:
  %t50 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t50, ptr %l68, !tbaa !27
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr ptr, ptr %t54, i64 %t51
  %t56 = load ptr, ptr %t55, !tbaa !39
  store ptr %t56, ptr %l7, !tbaa !29
  %t58 = load ptr, ptr %l7, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  br i1 %t60, label %bb11, label %bb12
bb11:
  br label %bb35
bb12:
  br label %bb13
bb13:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  br label %bb14
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 52
  %t69 = load i1, ptr %t68, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = load ptr, ptr %l7, !tbaa !29
  %t73 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t71)
  store i64 %t73, ptr %l79
  br label %bb17
bb16:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb18
bb17:
  %t74 = load i64, ptr %l79, !tbaa !24
  %t75 = icmp sge i64 %t74, 0
  store i1 %t75, ptr %l77, !tbaa !21
  br label %bb18
bb18:
  %t77 = load i1, ptr %l77, !tbaa !21
  br i1 %t77, label %bb19, label %bb20
bb19:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Scoper", ptr %t78, i32 0, i32 54
  store ptr %t80, ptr %l82, !tbaa !29
  %t81 = load ptr, ptr %l7, !tbaa !29
  %t83 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t81)
  store i64 %t83, ptr %l84
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t84 = load ptr, ptr %l82, !tbaa !29
  %t85 = load i64, ptr %l84, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t84, i64 %t85, i1 true)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l85, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l7, !tbaa !29
  %t91 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t87, ptr %t88, i1 false)
  store { i64, [2 x i64] } %t91, ptr %l88
  br label %bb24
bb24:
  %t92 = load { i64, [2 x i64] }, ptr %l3
  %t93 = load ptr, ptr %l85, !tbaa !29
  %t94 = load { i64, [2 x i64] }, ptr %l88
  %t96 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %t93, { i64, [2 x i64] } %t94, { i64, [2 x i64] } %t92)
  store i1 %t96, ptr %l90
  br label %bb25
bb25:
  %t97 = load i1, ptr %l90, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb26, label %bb27
bb26:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 28
  %t103 = load i1, ptr %t102, !tbaa !21
  store i1 %t103, ptr %l92, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb28
bb28:
  %t105 = load i1, ptr %l92, !tbaa !21
  br i1 %t105, label %bb29, label %bb30
bb29:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l95, !tbaa !29
  %t107 = load ptr, ptr %l7, !tbaa !29
  %t109 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t107)
  store %"compiler/source:Span" %t109, ptr %l97
  br label %bb31
bb30:
  br label %bb34
bb31:
  %t110 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultTooShort(ptr %v0)
  store %"compiler/diagmsg:Msg" %t110, ptr %l98
  br label %bb32
bb32:
  %t111 = load ptr, ptr %l95, !tbaa !29
  %t112 = load %"compiler/source:Span", ptr %l97
  %t113 = load %"compiler/diagmsg:Msg", ptr %l98
  %t114 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t111, %"compiler/source:Span" %t112, %"compiler/diagmsg:Msg" %t113)
  store i64 %t114, ptr %l99
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t115 = load i64, ptr %l5, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l5, !tbaa !24
  br label %bb7
bb36:
  store { i64, [2 x i64] } zeroinitializer, ptr %t119
  %t120 = getelementptr { i64, [2 x i64] }, ptr %t119, i32 0, i32 0
  store i64 0, ptr %t120
  %t121 = load { i64, [2 x i64] }, ptr %t119
  store { i64, [2 x i64] } %t121, ptr %l8
  store { i64, [2 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [2 x i64] }, ptr %t123, i32 0, i32 0
  store i64 0, ptr %t124
  %t125 = load { i64, [2 x i64] }, ptr %t123
  store { i64, [2 x i64] } %t125, ptr %l9
  store i1 true, ptr %l10, !tbaa !21
  store i64 -1, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Spawn", ptr %t127, i32 0, i32 0
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  store i64 %t132, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t134 = load i64, ptr %l13, !tbaa !24
  %t135 = load i64, ptr %l12, !tbaa !24
  %t138 = icmp sgt i64 %t134, %t135
  br i1 %t138, label %bb37, label %bb38
bb37:
  %t140 = load i64, ptr %l14, !tbaa !24
  %t142 = icmp sgt i64 %t140, 0
  br i1 %t142, label %bb39, label %bb40
bb38:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb42
bb39:
  %t144 = load i64, ptr %l13, !tbaa !24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t148 = sub i64 %t144, %t145
  %t149 = load i64, ptr %l14, !tbaa !24
  %t152 = add i64 %t148, %t149
  %t154 = sub i64 %t152, 1
  %t155 = load i64, ptr %l14, !tbaa !24
  %t158 = sdiv i64 %t154, %t155
  store i64 %t158, ptr %l113, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb41
bb41:
  %t160 = load i64, ptr %l113, !tbaa !24
  store i64 %t160, ptr %l110, !tbaa !24
  br label %bb42
bb42:
  %t161 = load i64, ptr %l110, !tbaa !24
  store i64 %t161, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb43
bb43:
  %t162 = load i64, ptr %l16, !tbaa !24
  %t163 = load i64, ptr %l15, !tbaa !24
  %t166 = icmp slt i64 %t162, %t163
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb44, label %bb45
bb44:
  br label %bb91
bb45:
  br label %bb46
bb46:
  %t170 = load i64, ptr %l12, !tbaa !24
  %t171 = load i64, ptr %l16, !tbaa !24
  %t172 = load i64, ptr %l14, !tbaa !24
  %t175 = mul i64 %t171, %t172
  %t178 = add i64 %t170, %t175
  store i64 %t178, ptr %l17, !tbaa !24
  %t180 = load ptr, ptr %l2, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Spawn", ptr %t180, i32 0, i32 0
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  store { i64, ptr } %t183, ptr %l132, !tbaa !27
  %t184 = load i64, ptr %l17, !tbaa !24
  %t186 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr ptr, ptr %t187, i64 %t184
  %t189 = load ptr, ptr %t188, !tbaa !39
  store ptr %t189, ptr %l18, !tbaa !29
  %t191 = load ptr, ptr %l18, !tbaa !29
  %t193 = icmp eq ptr %t191, null
  br i1 %t193, label %bb47, label %bb48
bb47:
  br label %bb90
bb48:
  br label %bb49
bb49:
  %t195 = load ptr, ptr %l18, !tbaa !29
  %t197 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t195)
  store i32 %t197, ptr %l138
  br label %bb50
bb50:
  %t198 = load i32, ptr %l138, !tbaa !23
  store i32 %t198, ptr %l19, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t199
  %t200 = getelementptr { i64, [2 x i64] }, ptr %t199, i32 0, i32 0
  store i64 0, ptr %t200
  %t201 = load { i64, [2 x i64] }, ptr %t199
  store { i64, [2 x i64] } %t201, ptr %l20
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i32, ptr %l19, !tbaa !23
  %t207 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t203, i32 %t204)
  store i1 %t207, ptr %l142
  br label %bb51
bb51:
  %t208 = load i1, ptr %l142, !tbaa !21
  br i1 %t208, label %bb52, label %bb53
bb52:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load ptr, ptr %l18, !tbaa !29
  %t213 = call %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %t209, ptr %t210)
  store %"compiler/scope:placeSlot" %t213, ptr %l145
  br label %bb54
bb53:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i32, ptr %l19, !tbaa !23
  %t218 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t214, i32 %t215)
  store i1 %t218, ptr %l161
  br label %bb65
bb54:
  %t219 = getelementptr %"compiler/scope:placeSlot", ptr %l145, i32 0, i32 0
  %t220 = load { i64, [2 x i64] }, ptr %t219
  store { i64, [2 x i64] } %t220, ptr %l20
  %t224 = load { i64, [2 x i64] }, ptr %l20
  %t226 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t224)
  store i1 %t226, ptr %l149
  br label %bb55
bb55:
  %t227 = load i1, ptr %l149, !tbaa !21
  %t228 = xor i1 %t227, true
  br i1 %t228, label %bb56, label %bb57
bb56:
  %t230 = load { i64, [2 x i64] }, ptr %l20
  %t232 = extractvalue { i64, [2 x i64] } %t230, 0
  %t233 = icmp eq i64 %t232, 0
  %t235 = xor i1 %t233, true
  store i1 %t235, ptr %l151, !tbaa !21
  br label %bb58
bb57:
  store i1 false, ptr %l151, !tbaa !21
  br label %bb58
bb58:
  %t237 = load i1, ptr %l151, !tbaa !21
  br i1 %t237, label %bb59, label %bb60
bb59:
  %t238 = load i64, ptr %l11, !tbaa !24
  %t240 = icmp slt i64 %t238, 0
  store i1 %t240, ptr %l155, !tbaa !21
  br label %bb61
bb60:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb61
bb61:
  %t242 = load i1, ptr %l155, !tbaa !21
  br i1 %t242, label %bb62, label %bb63
bb62:
  %t243 = load i64, ptr %l17, !tbaa !24
  store i64 %t243, ptr %l11, !tbaa !24
  br label %bb64
bb63:
  br label %bb64
bb64:
  br label %bb70
bb65:
  %t245 = load i1, ptr %l161, !tbaa !21
  br i1 %t245, label %bb66, label %bb67
bb66:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l18, !tbaa !29
  %t250 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t246, ptr %t247, i1 false)
  store { i64, [2 x i64] } %t250, ptr %l164
  br label %bb68
bb67:
  br label %bb69
bb68:
  %t251 = load { i64, [2 x i64] }, ptr %l164
  store { i64, [2 x i64] } %t251, ptr %l20
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t252 = load { i64, [2 x i64] }, ptr %l20
  %t254 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t252)
  store i1 %t254, ptr %l166
  br label %bb71
bb71:
  %t255 = load i1, ptr %l166, !tbaa !21
  %t256 = xor i1 %t255, true
  br i1 %t256, label %bb72, label %bb73
bb72:
  br label %bb90
bb73:
  br label %bb74
bb74:
  %t258 = load { i64, [2 x i64] }, ptr %l9
  %t260 = extractvalue { i64, [2 x i64] } %t258, 0
  %t261 = icmp eq i64 %t260, 0
  br i1 %t261, label %bb75, label %bb76
bb75:
  %t263 = load { i64, [2 x i64] }, ptr %l20
  store { i64, [2 x i64] } %t263, ptr %l9
  br label %bb81
bb76:
  %t265 = load { i64, [2 x i64] }, ptr %l20
  store { i64, [2 x i64] } %t265, ptr %l171
  %t266 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t266, ptr %l173
  %t269 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l171, ptr %l173)
  store i1 %t269, ptr %l175
  br label %bb77
bb77:
  %t270 = load i1, ptr %l175, !tbaa !21
  %t271 = xor i1 %t270, true
  br i1 %t271, label %bb78, label %bb79
bb78:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb80
bb79:
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t273 = load { i64, [2 x i64] }, ptr %l8
  %t275 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t273)
  store i1 %t275, ptr %l178
  br label %bb82
bb82:
  %t276 = load i1, ptr %l178, !tbaa !21
  %t277 = xor i1 %t276, true
  br i1 %t277, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l180, !tbaa !21
  br label %bb86
bb84:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load { i64, [2 x i64] }, ptr %l20
  %t281 = load { i64, [2 x i64] }, ptr %l8
  %t285 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t279, { i64, [2 x i64] } %t280, { i64, [2 x i64] } %t281)
  store i64 %t285, ptr %l184
  br label %bb85
bb85:
  %t286 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t287 = load i64, ptr %l184, !tbaa !24
  %t289 = icmp eq i64 %t287, %t286
  store i1 %t289, ptr %l180, !tbaa !21
  br label %bb86
bb86:
  %t291 = load i1, ptr %l180, !tbaa !21
  br i1 %t291, label %bb87, label %bb88
bb87:
  %t292 = load { i64, [2 x i64] }, ptr %l20
  store { i64, [2 x i64] } %t292, ptr %l8
  br label %bb89
bb88:
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t294 = load i64, ptr %l16, !tbaa !24
  %t296 = add i64 %t294, 1
  store i64 %t296, ptr %l16, !tbaa !24
  br label %bb43
bb91:
  store i1 false, ptr %l22, !tbaa !21
  %t298 = load ptr, ptr %l2, !tbaa !29
  %t300 = getelementptr %"compiler/typed:Spawn", ptr %t298, i32 0, i32 2
  %t301 = load { i64, ptr }, ptr %t300, !tbaa !27
  store { i64, ptr } %t301, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t303 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t303, 0
  store i64 %t305, ptr %l25, !tbaa !24
  br label %bb92
bb92:
  %t307 = load i64, ptr %l24, !tbaa !24
  %t308 = load i64, ptr %l25, !tbaa !24
  %t311 = icmp slt i64 %t307, %t308
  %t313 = xor i1 %t311, true
  br i1 %t313, label %bb93, label %bb94
bb93:
  br label %bb144
bb94:
  br label %bb95
bb95:
  %t315 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t315, ptr %l198, !tbaa !27
  %t316 = load i64, ptr %l24, !tbaa !24
  %t318 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr ptr, ptr %t319, i64 %t316
  %t321 = load ptr, ptr %t320, !tbaa !39
  store ptr %t321, ptr %l26, !tbaa !29
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/scope:Scoper", ptr %t323, i32 0, i32 80
  store i1 true, ptr %t325, !tbaa !21
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load ptr, ptr %l26, !tbaa !29
  %t329 = getelementptr %"compiler/typed:TaskClause", ptr %t327, i32 0, i32 3
  %t330 = load ptr, ptr %t329, !tbaa !29
  %t331 = load { i64, [2 x i64] }, ptr %l3
  %t335 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t326, ptr %t330, { i64, [2 x i64] } %t331)
  store %"compiler/scope:Val" %t335, ptr %l206
  br label %bb96
bb96:
  %t336 = load %"compiler/scope:Val", ptr %l206
  store %"compiler/scope:Val" %t336, ptr %l27
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/scope:Scoper", ptr %t337, i32 0, i32 80
  store i1 false, ptr %t339, !tbaa !21
  %t340 = getelementptr %"compiler/scope:Val", ptr %l27, i32 0, i32 0
  %t341 = load i32, ptr %t340, !range !{i32 0, i32 5}
  %t343 = trunc i64 3 to i32
  %t344 = icmp eq i32 %t341, %t343
  br i1 %t344, label %bb97, label %bb98
bb97:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"compiler/scope:Val", ptr %l27, i32 0, i32 1
  %t348 = load { i64, [2 x i64] }, ptr %t347
  %t349 = load { i64, [2 x i64] }, ptr %l3
  %t353 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %t346, { i64, [2 x i64] } %t348, { i64, [2 x i64] } %t349)
  store i1 %t353, ptr %l214
  br label %bb99
bb98:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb100
bb99:
  %t354 = load i1, ptr %l214, !tbaa !21
  %t355 = xor i1 %t354, true
  store i1 %t355, ptr %l210, !tbaa !21
  br label %bb100
bb100:
  %t357 = load i1, ptr %l210, !tbaa !21
  store i1 %t357, ptr %l28, !tbaa !21
  %t358 = load i1, ptr %l28, !tbaa !21
  br i1 %t358, label %bb101, label %bb102
bb101:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/scope:Scoper", ptr %t360, i32 0, i32 147
  %t363 = load i1, ptr %t362, !tbaa !21
  store i1 %t363, ptr %l217, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l217, !tbaa !21
  br label %bb103
bb103:
  %t365 = load i1, ptr %l217, !tbaa !21
  br i1 %t365, label %bb104, label %bb105
bb104:
  %t366 = load ptr, ptr %l0, !tbaa !29
  store ptr %t366, ptr %l220, !tbaa !29
  %t367 = load ptr, ptr %l26, !tbaa !29
  %t369 = getelementptr %"compiler/typed:TaskClause", ptr %t367, i32 0, i32 3
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t372 = icmp eq ptr %t370, null
  br i1 %t372, label %bb106, label %bb107
bb105:
  br label %bb110
bb106:
  call void @__olang_check_failed(ptr @olang_loc_e78903360621b090_3122ead72721c55c)
  unreachable
bb107:
  br label %bb108
bb108:
  %t374 = load ptr, ptr %l26, !tbaa !29
  %t376 = getelementptr %"compiler/typed:TaskClause", ptr %t374, i32 0, i32 3
  %t377 = load ptr, ptr %t376, !tbaa !29
  %t378 = load { i64, [2 x i64] }, ptr %l3
  %t379 = load ptr, ptr %l220, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %t379, ptr %t377, { i64, [2 x i64] } %t378)
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t382 = load i1, ptr %l28, !tbaa !21
  br i1 %t382, label %bb111, label %bb112
bb111:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/scope:Scoper", ptr %t384, i32 0, i32 28
  %t387 = load i1, ptr %t386, !tbaa !21
  store i1 %t387, ptr %l228, !tbaa !21
  br label %bb113
bb112:
  store i1 false, ptr %l228, !tbaa !21
  br label %bb113
bb113:
  %t389 = load i1, ptr %l228, !tbaa !21
  br i1 %t389, label %bb114, label %bb115
bb114:
  %t390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t390, ptr %l231, !tbaa !29
  %t391 = load ptr, ptr %l0, !tbaa !29
  store ptr %t391, ptr %l232, !tbaa !29
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/scope:Scoper", ptr %t392, i32 0, i32 26
  %t395 = load ptr, ptr %t394, !tbaa !29
  %t397 = icmp eq ptr %t395, null
  br i1 %t397, label %bb116, label %bb117
bb115:
  br label %bb122
bb116:
  call void @__olang_check_failed(ptr @olang_loc_6893cd7ebc906eef_5b1cc5281b0a804b)
  unreachable
bb117:
  br label %bb118
bb118:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/scope:Scoper", ptr %t399, i32 0, i32 26
  %t402 = load ptr, ptr %t401, !tbaa !29
  %t405 = getelementptr %"compiler/typed:Body", ptr %t402, i32 0, i32 3
  %t406 = load i64, ptr %t405, !tbaa !24
  %t407 = load ptr, ptr %l26, !tbaa !29
  %t409 = getelementptr %"compiler/typed:TaskClause", ptr %t407, i32 0, i32 0
  %t410 = load %"compiler/source:Span", ptr %t409
  %t411 = load ptr, ptr %l232, !tbaa !29
  %t414 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t411, i64 %t406, %"compiler/source:Span" %t410)
  store %"compiler/source:Span" %t414, ptr %l242
  br label %bb119
bb119:
  %t415 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnCaptureTooShort(ptr %v0)
  store %"compiler/diagmsg:Msg" %t415, ptr %l243
  br label %bb120
bb120:
  %t416 = load ptr, ptr %l231, !tbaa !29
  %t417 = load %"compiler/source:Span", ptr %l242
  %t418 = load %"compiler/diagmsg:Msg", ptr %l243
  %t419 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t416, %"compiler/source:Span" %t417, %"compiler/diagmsg:Msg" %t418)
  store i64 %t419, ptr %l244
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t420 = load ptr, ptr %l26, !tbaa !29
  %t422 = getelementptr %"compiler/typed:TaskClause", ptr %t420, i32 0, i32 3
  %t423 = load ptr, ptr %t422, !tbaa !29
  store ptr %t423, ptr %l29, !tbaa !29
  %t425 = load ptr, ptr %l29, !tbaa !29
  store ptr %t425, ptr %l247, !tbaa !29
  store i1 false, ptr %l248, !tbaa !21
  %t426 = load ptr, ptr %l247, !tbaa !29
  %t427 = icmp ne ptr %t426, null
  br i1 %t427, label %bb123, label %bb124
bb123:
  %t429 = load ptr, ptr %l247, !tbaa !29
  %t430 = load i64, ptr %t429, !range !{i64 0, i64 18}
  %t432 = icmp eq i64 %t430, 15
  store i1 %t432, ptr %l248, !tbaa !21
  br label %bb124
bb124:
  %t433 = load i1, ptr %l248, !tbaa !21
  br i1 %t433, label %bb125, label %bb126
bb125:
  %t434 = load ptr, ptr %l29, !tbaa !29
  %t436 = getelementptr { i64, [5 x i64] }, ptr %t434, i32 0, i32 1
  %t437 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t436, i32 0, i32 2
  %t438 = load ptr, ptr %t437
  store ptr %t438, ptr %l253, !tbaa !29
  store i1 false, ptr %l254, !tbaa !21
  %t439 = load ptr, ptr %l253, !tbaa !29
  %t440 = icmp ne ptr %t439, null
  br i1 %t440, label %bb127, label %bb128
bb126:
  store i1 false, ptr %l251, !tbaa !21
  br label %bb129
bb127:
  %t442 = load ptr, ptr %l253, !tbaa !29
  %t443 = load i64, ptr %t442, !range !{i64 0, i64 3}
  %t445 = icmp eq i64 %t443, 1
  store i1 %t445, ptr %l254, !tbaa !21
  br label %bb128
bb128:
  %t446 = load i1, ptr %l254, !tbaa !21
  store i1 %t446, ptr %l251, !tbaa !21
  br label %bb129
bb129:
  %t447 = load i1, ptr %l251, !tbaa !21
  br i1 %t447, label %bb130, label %bb131
bb130:
  %t448 = load ptr, ptr %l29, !tbaa !29
  %t450 = getelementptr { i64, [5 x i64] }, ptr %t448, i32 0, i32 1
  %t451 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t450, i32 0, i32 2
  %t452 = load ptr, ptr %t451
  %t454 = getelementptr { i64, [4 x i64] }, ptr %t452, i32 0, i32 1
  %t455 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t454, i32 0, i32 0
  %t456 = load i32, ptr %t455
  store i32 %t456, ptr %l30, !tbaa !23
  br label %bb132
bb131:
  br label %bb137
bb132:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t459 = load i32, ptr %l30, !tbaa !23
  %t461 = sext i32 %t459 to i64
  %t462 = load { i64, [2 x i64] }, ptr %l8
  %t463 = load ptr, ptr %l26, !tbaa !29
  %t465 = getelementptr %"compiler/typed:TaskClause", ptr %t463, i32 0, i32 0
  %t466 = load %"compiler/source:Span", ptr %t465
  %t471 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclauseBuilds(ptr %v0, ptr %t458, i64 %t461, { i64, [2 x i64] } %t462, %"compiler/source:Span" %t466)
  store i1 %t471, ptr %l266
  br label %bb133
bb133:
  %t472 = load i1, ptr %l266, !tbaa !21
  br i1 %t472, label %bb134, label %bb135
bb134:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb136
bb135:
  br label %bb136
bb136:
  br label %bb142
bb137:
  br i1 true, label %bb138, label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb141
bb140:
  br label %bb142
bb141:
  call void @__olang_check_failed(ptr @olang_loc_13f804c0f75facd_7560a9ac77a32da9)
  unreachable
bb142:
  br label %bb143
bb143:
  %t473 = load i64, ptr %l24, !tbaa !24
  %t475 = add i64 %t473, 1
  store i64 %t475, ptr %l24, !tbaa !24
  br label %bb92
bb144:
  %t477 = load i64, ptr %l11, !tbaa !24
  %t479 = icmp sge i64 %t477, 0
  br i1 %t479, label %bb145, label %bb146
bb145:
  %t481 = load { i64, [2 x i64] }, ptr %l8
  %t483 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t481)
  store i1 %t483, ptr %l273
  br label %bb147
bb146:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb148
bb147:
  %t484 = load i1, ptr %l273, !tbaa !21
  %t485 = xor i1 %t484, true
  store i1 %t485, ptr %l271, !tbaa !21
  br label %bb148
bb148:
  %t487 = load i1, ptr %l271, !tbaa !21
  br i1 %t487, label %bb149, label %bb150
bb149:
  %t488 = load ptr, ptr %l0, !tbaa !29
  store ptr %t488, ptr %l276, !tbaa !29
  %t489 = load ptr, ptr %l2, !tbaa !29
  %t491 = getelementptr %"compiler/typed:Spawn", ptr %t489, i32 0, i32 0
  %t492 = load { i64, ptr }, ptr %t491, !tbaa !27
  store { i64, ptr } %t492, ptr %l278, !tbaa !27
  %t493 = load i64, ptr %l11, !tbaa !24
  %t495 = getelementptr { i64, ptr }, ptr %l278, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !27
  %t497 = getelementptr ptr, ptr %t496, i64 %t493
  %t498 = load ptr, ptr %t497, !tbaa !39
  store ptr %t498, ptr %l31, !tbaa !29
  %t500 = load ptr, ptr %l31, !tbaa !29
  %t502 = icmp eq ptr %t500, null
  br i1 %t502, label %bb151, label %bb152
bb150:
  store i1 false, ptr %l275, !tbaa !21
  br label %bb159
bb151:
  call void @__olang_check_failed(ptr @olang_loc_19e7888b9ded6be5_cbea83f8bb640751)
  unreachable
bb152:
  br label %bb153
bb153:
  %t504 = load ptr, ptr %l31, !tbaa !29
  store ptr %t504, ptr %l283, !tbaa !29
  %t505 = load ptr, ptr %l0, !tbaa !29
  store ptr %t505, ptr %l284, !tbaa !29
  %t506 = load ptr, ptr %l2, !tbaa !29
  %t508 = getelementptr %"compiler/typed:Spawn", ptr %t506, i32 0, i32 0
  %t509 = load { i64, ptr }, ptr %t508, !tbaa !27
  store { i64, ptr } %t509, ptr %l286, !tbaa !27
  %t510 = load i64, ptr %l11, !tbaa !24
  %t512 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t513 = load ptr, ptr %t512, !tbaa !27
  %t514 = getelementptr ptr, ptr %t513, i64 %t510
  %t515 = load ptr, ptr %t514, !tbaa !39
  store ptr %t515, ptr %l32, !tbaa !29
  %t517 = load ptr, ptr %l32, !tbaa !29
  %t519 = icmp eq ptr %t517, null
  br i1 %t519, label %bb154, label %bb155
bb154:
  call void @__olang_check_failed(ptr @olang_loc_19e7888b9ded6be5_cbea83f8bb640751)
  unreachable
bb155:
  br label %bb156
bb156:
  %t521 = load ptr, ptr %l32, !tbaa !29
  %t522 = load ptr, ptr %l284, !tbaa !29
  %t524 = call %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %t522, ptr %t521)
  store %"compiler/scope:placeSlot" %t524, ptr %l292
  br label %bb157
bb157:
  %t525 = getelementptr %"compiler/scope:placeSlot", ptr %l292, i32 0, i32 0
  %t526 = load { i64, [2 x i64] }, ptr %t525
  %t527 = load ptr, ptr %l276, !tbaa !29
  %t528 = load ptr, ptr %l283, !tbaa !29
  %t530 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efindInto(ptr %v0, ptr %v1, ptr %t527, ptr %t528, { i64, [2 x i64] } %t526)
  store i1 %t530, ptr %l294
  br label %bb158
bb158:
  %t531 = load i1, ptr %l294, !tbaa !21
  store i1 %t531, ptr %l275, !tbaa !21
  br label %bb159
bb159:
  %t532 = load i1, ptr %l275, !tbaa !21
  store i1 %t532, ptr %l33, !tbaa !21
  %t533 = load i1, ptr %l33, !tbaa !21
  br i1 %t533, label %bb160, label %bb161
bb160:
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/scope:Scoper", ptr %t535, i32 0, i32 65
  %t538 = load { i64, [2 x i64] }, ptr %t537
  store { i64, [2 x i64] } %t538, ptr %l8
  br label %bb162
bb161:
  br label %bb162
bb162:
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t542 = getelementptr %"compiler/scope:Scoper", ptr %t540, i32 0, i32 80
  store i1 true, ptr %t542, !tbaa !21
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load { i64, [2 x i64] }, ptr %l3
  %t547 = getelementptr %"compiler/scope:Scoper", ptr %t543, i32 0, i32 82
  store { i64, [2 x i64] } %t544, ptr %t547
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t549 = load ptr, ptr %l2, !tbaa !29
  %t551 = getelementptr %"compiler/typed:Spawn", ptr %t549, i32 0, i32 1
  %t552 = load ptr, ptr %t551, !tbaa !29
  %t554 = load { i64, [2 x i64] }, ptr %l8
  %t558 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t548, ptr %t552, { i64, [2 x i64] } %t554)
  store %"compiler/scope:Val" %t558, ptr %l306
  br label %bb163
bb163:
  %t559 = load %"compiler/scope:Val", ptr %l306
  store %"compiler/scope:Val" %t559, ptr %l34
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t562 = getelementptr %"compiler/scope:Scoper", ptr %t560, i32 0, i32 80
  store i1 false, ptr %t562, !tbaa !21
  %t563 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t564
  %t565 = getelementptr { i64, [2 x i64] }, ptr %t564, i32 0, i32 0
  store i64 0, ptr %t565
  %t566 = load { i64, [2 x i64] }, ptr %t564
  %t569 = getelementptr %"compiler/scope:Scoper", ptr %t563, i32 0, i32 82
  store { i64, [2 x i64] } %t566, ptr %t569
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = getelementptr %"compiler/scope:Scoper", ptr %t570, i32 0, i32 64
  store ptr null, ptr %t572, !tbaa !29
  %t573 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t574
  %t575 = getelementptr { i64, [2 x i64] }, ptr %t574, i32 0, i32 0
  store i64 0, ptr %t575
  %t576 = load { i64, [2 x i64] }, ptr %t574
  %t579 = getelementptr %"compiler/scope:Scoper", ptr %t573, i32 0, i32 65
  store { i64, [2 x i64] } %t576, ptr %t579
  %t580 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 0
  %t581 = load i32, ptr %t580, !range !{i32 0, i32 5}
  %t583 = trunc i64 2 to i32
  %t584 = icmp eq i32 %t581, %t583
  br i1 %t584, label %bb164, label %bb165
bb164:
  store i1 true, ptr %l315, !tbaa !21
  br label %bb166
bb165:
  %t586 = load i1, ptr %l22, !tbaa !21
  store i1 %t586, ptr %l315, !tbaa !21
  br label %bb166
bb166:
  %t588 = load i1, ptr %l315, !tbaa !21
  store i1 %t588, ptr %l35, !tbaa !21
  %t589 = load i1, ptr %l35, !tbaa !21
  br i1 %t589, label %bb167, label %bb168
bb167:
  %t591 = load i64, ptr %l11, !tbaa !24
  %t593 = icmp sge i64 %t591, 0
  store i1 %t593, ptr %l318, !tbaa !21
  br label %bb169
bb168:
  store i1 false, ptr %l318, !tbaa !21
  br label %bb169
bb169:
  %t595 = load i1, ptr %l318, !tbaa !21
  br i1 %t595, label %bb170, label %bb171
bb170:
  %t596 = load i1, ptr %l33, !tbaa !21
  %t598 = xor i1 %t596, true
  br i1 %t598, label %bb172, label %bb173
bb171:
  store i1 false, ptr %l321, !tbaa !21
  br label %bb175
bb172:
  store i1 true, ptr %l324, !tbaa !21
  br label %bb174
bb173:
  %t600 = load i1, ptr %l22, !tbaa !21
  store i1 %t600, ptr %l324, !tbaa !21
  br label %bb174
bb174:
  %t602 = load i1, ptr %l324, !tbaa !21
  store i1 %t602, ptr %l321, !tbaa !21
  br label %bb175
bb175:
  %t603 = load i1, ptr %l321, !tbaa !21
  br i1 %t603, label %bb176, label %bb177
bb176:
  %t604 = load ptr, ptr %l2, !tbaa !29
  %t606 = getelementptr %"compiler/typed:Spawn", ptr %t604, i32 0, i32 0
  %t607 = load { i64, ptr }, ptr %t606, !tbaa !27
  store { i64, ptr } %t607, ptr %l327, !tbaa !27
  %t608 = load i64, ptr %l11, !tbaa !24
  %t610 = getelementptr { i64, ptr }, ptr %l327, i32 0, i32 1
  %t611 = load ptr, ptr %t610, !tbaa !27
  %t612 = getelementptr ptr, ptr %t611, i64 %t608
  %t613 = load ptr, ptr %t612, !tbaa !39
  store ptr %t613, ptr %l36, !tbaa !29
  %t615 = load ptr, ptr %l0, !tbaa !29
  store ptr %t615, ptr %l330, !tbaa !29
  %t616 = load ptr, ptr %l36, !tbaa !29
  %t618 = icmp eq ptr %t616, null
  br i1 %t618, label %bb178, label %bb179
bb177:
  %t620 = load i1, ptr %l35, !tbaa !21
  br i1 %t620, label %bb186, label %bb187
bb178:
  call void @__olang_check_failed(ptr @olang_loc_e9bdb4d0fe7c1914_18007eac4987ca18)
  unreachable
bb179:
  br label %bb180
bb180:
  %t622 = load ptr, ptr %l36, !tbaa !29
  %t623 = load ptr, ptr %l330, !tbaa !29
  %t625 = call %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %t623, ptr %t622)
  store %"compiler/scope:placeSlot" %t625, ptr %l334
  br label %bb181
bb181:
  %t626 = getelementptr %"compiler/scope:placeSlot", ptr %l334, i32 0, i32 0
  %t627 = load { i64, [2 x i64] }, ptr %t626
  store { i64, [2 x i64] } %t627, ptr %l37
  %t629 = load ptr, ptr %l0, !tbaa !29
  store ptr %t629, ptr %l336, !tbaa !29
  %t630 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t630, ptr %l337
  %t631 = load ptr, ptr %l36, !tbaa !29
  %t633 = icmp eq ptr %t631, null
  br i1 %t633, label %bb182, label %bb183
bb182:
  call void @__olang_check_failed(ptr @olang_loc_a5b38bc8e2246423_334fa60605363c37)
  unreachable
bb183:
  br label %bb184
bb184:
  %t635 = load ptr, ptr %l36, !tbaa !29
  %t636 = load { i64, [2 x i64] }, ptr %l37
  %t637 = load ptr, ptr %l336, !tbaa !29
  %t638 = load %"compiler/source:Span", ptr %l337
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efreshIntoUnknown(ptr %v0, ptr %v1, ptr %t637, %"compiler/source:Span" %t638, ptr %t635, { i64, [2 x i64] } %t636)
  br label %bb185
bb185:
  br label %bb227
bb186:
  %t641 = load i1, ptr %l10, !tbaa !21
  %t643 = xor i1 %t641, true
  store i1 %t643, ptr %l343, !tbaa !21
  br label %bb188
bb187:
  store i1 false, ptr %l343, !tbaa !21
  br label %bb188
bb188:
  %t645 = load i1, ptr %l343, !tbaa !21
  br i1 %t645, label %bb189, label %bb190
bb189:
  %t646 = load ptr, ptr %l0, !tbaa !29
  %t648 = getelementptr %"compiler/scope:Scoper", ptr %t646, i32 0, i32 147
  %t649 = load i1, ptr %t648, !tbaa !21
  br i1 %t649, label %bb191, label %bb192
bb190:
  br label %bb226
bb191:
  %t651 = load { i64, [2 x i64] }, ptr %l8
  %t653 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t651)
  store i1 %t653, ptr %l350
  br label %bb193
bb192:
  store i1 false, ptr %l348, !tbaa !21
  br label %bb194
bb193:
  %t654 = load i1, ptr %l350, !tbaa !21
  store i1 %t654, ptr %l348, !tbaa !21
  br label %bb194
bb194:
  %t655 = load i1, ptr %l348, !tbaa !21
  br i1 %t655, label %bb195, label %bb196
bb195:
  %t656 = load ptr, ptr %l2, !tbaa !29
  %t658 = getelementptr %"compiler/typed:Spawn", ptr %t656, i32 0, i32 0
  %t659 = load { i64, ptr }, ptr %t658, !tbaa !27
  store { i64, ptr } %t659, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t661 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t663 = extractvalue { i64, ptr } %t661, 0
  store i64 %t663, ptr %l40, !tbaa !24
  br label %bb197
bb196:
  br label %bb216
bb197:
  %t665 = load i64, ptr %l39, !tbaa !24
  %t666 = load i64, ptr %l40, !tbaa !24
  %t669 = icmp slt i64 %t665, %t666
  %t671 = xor i1 %t669, true
  br i1 %t671, label %bb198, label %bb199
bb198:
  br label %bb215
bb199:
  br label %bb200
bb200:
  %t673 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t673, ptr %l359, !tbaa !27
  %t674 = load i64, ptr %l39, !tbaa !24
  %t676 = getelementptr { i64, ptr }, ptr %l359, i32 0, i32 1
  %t677 = load ptr, ptr %t676, !tbaa !27
  %t678 = getelementptr ptr, ptr %t677, i64 %t674
  %t679 = load ptr, ptr %t678, !tbaa !39
  store ptr %t679, ptr %l41, !tbaa !29
  %t681 = load ptr, ptr %l41, !tbaa !29
  %t683 = icmp eq ptr %t681, null
  br i1 %t683, label %bb201, label %bb202
bb201:
  store i1 true, ptr %l364, !tbaa !21
  br label %bb205
bb202:
  %t685 = load ptr, ptr %l0, !tbaa !29
  store ptr %t685, ptr %l365, !tbaa !29
  %t686 = load ptr, ptr %l41, !tbaa !29
  %t688 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t686)
  store i32 %t688, ptr %l367
  br label %bb203
bb203:
  %t689 = load ptr, ptr %l365, !tbaa !29
  %t690 = load i32, ptr %l367, !tbaa !23
  %t691 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t689, i32 %t690)
  store i1 %t691, ptr %l368
  br label %bb204
bb204:
  %t692 = load i1, ptr %l368, !tbaa !21
  %t693 = xor i1 %t692, true
  store i1 %t693, ptr %l364, !tbaa !21
  br label %bb205
bb205:
  %t695 = load i1, ptr %l364, !tbaa !21
  br i1 %t695, label %bb206, label %bb207
bb206:
  br label %bb214
bb207:
  br label %bb208
bb208:
  %t696 = load ptr, ptr %l41, !tbaa !29
  %t698 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t696)
  store i64 %t698, ptr %l371
  br label %bb209
bb209:
  %t699 = load i64, ptr %l371, !tbaa !24
  store i64 %t699, ptr %l42, !tbaa !24
  %t700 = load i64, ptr %l42, !tbaa !24
  %t702 = icmp sge i64 %t700, 0
  br i1 %t702, label %bb210, label %bb211
bb210:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t705 = load i64, ptr %l42, !tbaa !24
  %t706 = load { i64, [2 x i64] }, ptr %l8
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeLocal(ptr %v0, ptr %t704, i64 %t705, { i64, [2 x i64] } %t706, i1 false)
  br label %bb212
bb211:
  br label %bb213
bb212:
  br label %bb213
bb213:
  br label %bb214
bb214:
  %t710 = load i64, ptr %l39, !tbaa !24
  %t712 = add i64 %t710, 1
  store i64 %t712, ptr %l39, !tbaa !24
  br label %bb197
bb215:
  br label %bb216
bb216:
  %t714 = load ptr, ptr %l0, !tbaa !29
  %t716 = getelementptr %"compiler/scope:Scoper", ptr %t714, i32 0, i32 28
  %t717 = load i1, ptr %t716, !tbaa !21
  br i1 %t717, label %bb217, label %bb218
bb217:
  %t719 = load ptr, ptr %l0, !tbaa !29
  store ptr %t719, ptr %l381, !tbaa !29
  %t720 = load ptr, ptr %l0, !tbaa !29
  store ptr %t720, ptr %l382, !tbaa !29
  %t721 = load ptr, ptr %l0, !tbaa !29
  %t723 = getelementptr %"compiler/scope:Scoper", ptr %t721, i32 0, i32 26
  %t724 = load ptr, ptr %t723, !tbaa !29
  %t726 = icmp eq ptr %t724, null
  br i1 %t726, label %bb219, label %bb220
bb218:
  br label %bb225
bb219:
  call void @__olang_check_failed(ptr @olang_loc_e1bbe67f5ab83fa2_6597018deaf47546)
  unreachable
bb220:
  br label %bb221
bb221:
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t730 = getelementptr %"compiler/scope:Scoper", ptr %t728, i32 0, i32 26
  %t731 = load ptr, ptr %t730, !tbaa !29
  %t734 = getelementptr %"compiler/typed:Body", ptr %t731, i32 0, i32 3
  %t735 = load i64, ptr %t734, !tbaa !24
  %t736 = load %"compiler/source:Span", ptr %l1
  %t737 = load ptr, ptr %l382, !tbaa !29
  %t740 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t737, i64 %t735, %"compiler/source:Span" %t736)
  store %"compiler/source:Span" %t740, ptr %l391
  br label %bb222
bb222:
  %t741 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultsDisagree(ptr %v0)
  store %"compiler/diagmsg:Msg" %t741, ptr %l392
  br label %bb223
bb223:
  %t742 = load ptr, ptr %l381, !tbaa !29
  %t743 = load %"compiler/source:Span", ptr %l391
  %t744 = load %"compiler/diagmsg:Msg", ptr %l392
  %t745 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t742, %"compiler/source:Span" %t743, %"compiler/diagmsg:Msg" %t744)
  store i64 %t745, ptr %l393
  br label %bb224
bb224:
  br label %bb225
bb225:
  br label %bb226
bb226:
  br label %bb227
bb227:
  %t746 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 0
  %t747 = load i32, ptr %t746, !range !{i32 0, i32 5}
  %t749 = trunc i64 3 to i32
  %t750 = icmp eq i32 %t747, %t749
  br i1 %t750, label %bb228, label %bb229
bb228:
  %t752 = load ptr, ptr %l0, !tbaa !29
  %t753 = load %"compiler/source:Span", ptr %l1
  %t754 = load ptr, ptr %l2, !tbaa !29
  %t755 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 1
  %t756 = load { i64, [2 x i64] }, ptr %t755
  %t757 = load ptr, ptr %l2, !tbaa !29
  %t759 = getelementptr %"compiler/typed:Spawn", ptr %t757, i32 0, i32 1
  %t760 = load ptr, ptr %t759, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveTargets(ptr %v0, ptr %v1, ptr %v1, ptr %t752, %"compiler/source:Span" %t753, ptr %t754, { i64, [2 x i64] } %t756, ptr %t760)
  br label %bb230
bb229:
  br label %bb231
bb230:
  br label %bb231
bb231:
  %t766 = load ptr, ptr %l2, !tbaa !29
  %t768 = getelementptr %"compiler/typed:Spawn", ptr %t766, i32 0, i32 2
  %t769 = load { i64, ptr }, ptr %t768, !tbaa !27
  store { i64, ptr } %t769, ptr %l43, !tbaa !27
  store i64 0, ptr %l44, !tbaa !24
  %t771 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t773 = extractvalue { i64, ptr } %t771, 0
  store i64 %t773, ptr %l45, !tbaa !24
  br label %bb232
bb232:
  %t775 = load i64, ptr %l44, !tbaa !24
  %t776 = load i64, ptr %l45, !tbaa !24
  %t779 = icmp slt i64 %t775, %t776
  %t781 = xor i1 %t779, true
  br i1 %t781, label %bb233, label %bb234
bb233:
  br label %bb238
bb234:
  br label %bb235
bb235:
  %t783 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t783, ptr %l410, !tbaa !27
  %t784 = load i64, ptr %l44, !tbaa !24
  %t786 = getelementptr { i64, ptr }, ptr %l410, i32 0, i32 1
  %t787 = load ptr, ptr %t786, !tbaa !27
  %t788 = getelementptr ptr, ptr %t787, i64 %t784
  %t789 = load ptr, ptr %t788, !tbaa !39
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t792 = load %"compiler/source:Span", ptr %l1
  %t793 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclauseGives(ptr %v0, ptr %v1, ptr %v1, ptr %t791, %"compiler/source:Span" %t792, ptr %t793, ptr %t789)
  br label %bb236
bb236:
  br label %bb237
bb237:
  %t799 = load i64, ptr %l44, !tbaa !24
  %t801 = add i64 %t799, 1
  store i64 %t801, ptr %l44, !tbaa !24
  br label %bb232
bb238:
  %t803 = load ptr, ptr %l2, !tbaa !29
  %t805 = getelementptr %"compiler/typed:Spawn", ptr %t803, i32 0, i32 3
  %t806 = load i32, ptr %t805, !tbaa !23
  %t808 = icmp sge i32 %t806, 0
  br i1 %t808, label %bb239, label %bb240
bb239:
  %t810 = load ptr, ptr %l0, !tbaa !29
  store ptr %t810, ptr %l422, !tbaa !29
  %t811 = load ptr, ptr %l2, !tbaa !29
  %t813 = getelementptr %"compiler/typed:Spawn", ptr %t811, i32 0, i32 3
  %t814 = load i32, ptr %t813, !tbaa !23
  store i32 %t814, ptr %l424, !tbaa !23
  %t815 = load { i64, [2 x i64] }, ptr %l3
  %t817 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t815)
  store i1 %t817, ptr %l426
  br label %bb241
bb240:
  br label %bb247
bb241:
  %t818 = load i1, ptr %l426, !tbaa !21
  br i1 %t818, label %bb242, label %bb243
bb242:
  %t819 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t819, ptr %l427
  br label %bb245
bb243:
  %t821 = load ptr, ptr %l0, !tbaa !29
  %t823 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t821)
  store { i64, [2 x i64] } %t823, ptr %l430
  br label %bb244
bb244:
  %t824 = load { i64, [2 x i64] }, ptr %l430
  store { i64, [2 x i64] } %t824, ptr %l427
  br label %bb245
bb245:
  %t825 = load ptr, ptr %l422, !tbaa !29
  %t826 = load i32, ptr %l424, !tbaa !23
  %t827 = load { i64, [2 x i64] }, ptr %l427
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t825, i32 %t826, { i64, [2 x i64] } %t827)
  br label %bb246
bb246:
  br label %bb247
bb247:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitBorrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l25 = alloca i1
  %l26 = alloca i1
  %l31 = alloca i64
  %l34 = alloca i1
  %l43 = alloca %"compiler/typed:Local"
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l56 = alloca %"compiler/source:Span"
  %l60 = alloca ptr
  %l69 = alloca %"compiler/typed:Local"
  %l71 = alloca { i64, ptr }
  %l72 = alloca %"compiler/diagmsg:Msg"
  %l73 = alloca i64
  %l74 = alloca ptr
  %l75 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca %"compiler/diagmsg:Msg"
  %l86 = alloca i64
  %s0 = alloca %olang.scope
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
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t19, i32 0, i32 0
  %t21 = load %"compiler/source:Span", ptr %t20
  store %"compiler/source:Span" %t21, ptr %l3
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr { i64, [5 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t25, i32 0, i32 2
  %t27 = load ptr, ptr %t26
  store ptr %t27, ptr %l4, !tbaa !29
  br label %bb6
bb5:
  br label %bb46
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t33 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %s0, ptr %t29, ptr %t30)
  store i1 %t33, ptr %l20
  br label %bb7
bb7:
  %t34 = load i1, ptr %l20, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb11
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t41 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplitPlace(ptr %v0, ptr %s0, ptr %t37, ptr %t38)
  store i1 %t41, ptr %l25
  br label %bb10
bb10:
  %t42 = load i1, ptr %l25, !tbaa !21
  store i1 %t42, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t43 = load i1, ptr %l22, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 28
  %t47 = load i1, ptr %t46, !tbaa !21
  %t49 = xor i1 %t47, true
  store i1 %t49, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t51 = load i1, ptr %l26, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  br label %bb17
bb17:
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t54 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s0, ptr %t52)
  store i64 %t54, ptr %l31
  br label %bb18
bb18:
  %t55 = load i64, ptr %l31, !tbaa !24
  store i64 %t55, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = icmp sge i64 %t56, 0
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %t60, i32 0, i32 26
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb21, label %bb22
bb20:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb25
bb21:
  call void @__olang_check_failed(ptr @olang_loc_5ed106e09cf871ae_6aa2a1ea4fff1912)
  unreachable
bb22:
  br label %bb23
bb23:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/scope:Scoper", ptr %t67, i32 0, i32 26
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Body", ptr %t70, i32 0, i32 7
  %t74 = load i64, ptr %l5, !tbaa !24
  %t77 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t73, i64 %t74)
  store %"compiler/typed:Local" %t77, ptr %l43
  br label %bb24
bb24:
  %t78 = getelementptr %"compiler/typed:Local", ptr %l43, i32 0, i32 4
  %t79 = load i32, ptr %t78, !range !{i32 0, i32 7}
  %t81 = trunc i64 0 to i32
  %t82 = icmp eq i32 %t79, %t81
  store i1 %t82, ptr %l34, !tbaa !21
  br label %bb25
bb25:
  %t84 = load i1, ptr %l34, !tbaa !21
  br i1 %t84, label %bb26, label %bb27
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l46, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l47, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 26
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = icmp eq ptr %t90, null
  br i1 %t92, label %bb28, label %bb29
bb27:
  br label %bb39
bb28:
  call void @__olang_check_failed(ptr @olang_loc_fa03405fe09f5155_c79a4d7cc2781d39)
  unreachable
bb29:
  br label %bb30
bb30:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/scope:Scoper", ptr %t94, i32 0, i32 26
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Body", ptr %t97, i32 0, i32 3
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load %"compiler/source:Span", ptr %l3
  %t103 = load ptr, ptr %l47, !tbaa !29
  %t106 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t103, i64 %t101, %"compiler/source:Span" %t102)
  store %"compiler/source:Span" %t106, ptr %l56
  br label %bb31
bb31:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/scope:Scoper", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/load:Loader", ptr %t113, i32 0, i32 3
  %t116 = load ptr, ptr %t115, !tbaa !29
  store ptr %t116, ptr %l60, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/scope:Scoper", ptr %t117, i32 0, i32 26
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = icmp eq ptr %t120, null
  br i1 %t122, label %bb32, label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_fa03405fe09f5155_c79a4d7cc2781d39)
  unreachable
bb33:
  br label %bb34
bb34:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 26
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Body", ptr %t127, i32 0, i32 7
  %t131 = load i64, ptr %l5, !tbaa !24
  %t134 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t130, i64 %t131)
  store %"compiler/typed:Local" %t134, ptr %l69
  br label %bb35
bb35:
  %t135 = getelementptr %"compiler/typed:Local", ptr %l69, i32 0, i32 0
  %t136 = load i32, ptr %t135, !tbaa !23
  %t137 = load ptr, ptr %l60, !tbaa !29
  %t139 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t137, i32 %t136)
  store { i64, ptr } %t139, ptr %l71
  br label %bb36
bb36:
  %t140 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t141 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitParam(ptr %v0, ptr %v0, { i64, ptr } %t140)
  store %"compiler/diagmsg:Msg" %t141, ptr %l72
  br label %bb37
bb37:
  %t142 = load ptr, ptr %l46, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l56
  %t144 = load %"compiler/diagmsg:Msg", ptr %l72
  %t145 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t142, %"compiler/source:Span" %t143, %"compiler/diagmsg:Msg" %t144)
  store i64 %t145, ptr %l73
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb39:
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l74, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l75, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/scope:Scoper", ptr %t148, i32 0, i32 26
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = icmp eq ptr %t151, null
  br i1 %t153, label %bb40, label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_97d72d6750b2b740_49ee20092c2cdc84)
  unreachable
bb41:
  br label %bb42
bb42:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/scope:Scoper", ptr %t155, i32 0, i32 26
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Body", ptr %t158, i32 0, i32 3
  %t162 = load i64, ptr %t161, !tbaa !24
  %t163 = load %"compiler/source:Span", ptr %l3
  %t164 = load ptr, ptr %l75, !tbaa !29
  %t167 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t164, i64 %t162, %"compiler/source:Span" %t163)
  store %"compiler/source:Span" %t167, ptr %l84
  br label %bb43
bb43:
  %t168 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitValue(ptr %v0)
  store %"compiler/diagmsg:Msg" %t168, ptr %l85
  br label %bb44
bb44:
  %t169 = load ptr, ptr %l74, !tbaa !29
  %t170 = load %"compiler/source:Span", ptr %l84
  %t171 = load %"compiler/diagmsg:Msg", ptr %l85
  %t172 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t169, %"compiler/source:Span" %t170, %"compiler/diagmsg:Msg" %t171)
  store i64 %t172, ptr %l86
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
  call void @__olang_check_failed(ptr @olang_loc_678c1874cb48a226_11ddf0dfb9c074ea)
  unreachable
bb51:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailNeeds(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca %"compiler/types:DtorWalk"
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/typed:Local"
  %l16 = alloca %"compiler/scope:walked"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l22 = alloca i64
  %l24 = alloca i64
  %l29 = alloca ptr
  %l32 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l50 = alloca i1
  %l59 = alloca ptr
  %l63 = alloca %"compiler/types:DtorWalk"
  %l66 = alloca i64
  %l68 = alloca i64
  %l73 = alloca %"compiler/typed:Local"
  %l77 = alloca i1
  %l80 = alloca i1
  %l88 = alloca %"compiler/scope:walked"
  %l93 = alloca i64
  %l95 = alloca i64
  %l100 = alloca i32
  %l103 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t139 = alloca %"compiler/scope:walked", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/scope:walked", ptr %t1, i32 0, i32 8
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l22, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l22, !tbaa !24
  %t10 = load i64, ptr %l24, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb22
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %v1, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l29
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l29, !tbaa !29
  %t24 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t20)
  store ptr %t24, ptr %l32
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l32, !tbaa !29
  store ptr %t25, ptr %l6, !tbaa !29
  %t26 = load ptr, ptr %l6, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l6, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Call", ptr %t30, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l9, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t47 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t47, ptr %l43, !tbaa !27
  %t48 = load i64, ptr %l8, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 %t48
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t63 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailBuilt(ptr %v0, ptr %v1, ptr %v1, ptr %t55, i64 %t56, ptr %t53, ptr %t58)
  store i1 %t63, ptr %l50
  br label %bb15
bb15:
  %t64 = load i1, ptr %l50, !tbaa !21
  br i1 %t64, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t66 = load i64, ptr %l8, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l8, !tbaa !24
  br label %bb11
bb20:
  br label %bb21
bb21:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l4, !tbaa !24
  br label %bb1
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 1
  %t77 = load i64, ptr %l1, !tbaa !24
  %t80 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t76, i64 %t77)
  store ptr %t80, ptr %l59
  br label %bb23
bb23:
  %t81 = load ptr, ptr %l59, !tbaa !29
  store ptr %t81, ptr %l11, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t89 = call %"compiler/types:DtorWalk" @compiler_2ftypes_3aDtorWalk_2ector(ptr %v0, ptr %s0, ptr %t87)
  store %"compiler/types:DtorWalk" %t89, ptr %l63
  br label %bb24
bb24:
  %t90 = load %"compiler/types:DtorWalk", ptr %l63
  store %"compiler/types:DtorWalk" %t90, ptr %l12
  %t91 = load ptr, ptr %l11, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Body", ptr %t91, i32 0, i32 7
  store ptr %t93, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb25
bb25:
  %t95 = load i64, ptr %l14, !tbaa !24
  store i64 %t95, ptr %l66, !tbaa !24
  %t96 = load ptr, ptr %l13, !tbaa !29
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l68
  br label %bb26
bb26:
  %t99 = load i64, ptr %l66, !tbaa !24
  %t100 = load i64, ptr %l68, !tbaa !24
  %t101 = icmp slt i64 %t99, %t100
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb27, label %bb28
bb27:
  br label %bb39
bb28:
  br label %bb29
bb29:
  %t105 = load ptr, ptr %l13, !tbaa !29
  %t106 = load i64, ptr %l14, !tbaa !24
  %t109 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t105, i64 %t106)
  store %"compiler/typed:Local" %t109, ptr %l73
  br label %bb30
bb30:
  %t110 = load %"compiler/typed:Local", ptr %l73
  store %"compiler/typed:Local" %t110, ptr %l15
  %t111 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 4
  %t112 = load i32, ptr %t111, !range !{i32 0, i32 7}
  %t114 = trunc i64 0 to i32
  %t115 = icmp eq i32 %t112, %t114
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb31, label %bb32
bb31:
  %t119 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 2
  %t120 = load i32, ptr %t119, !tbaa !23
  %t123 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %s0, ptr %v0, ptr %l12, i32 %t120)
  store i1 %t123, ptr %l80
  br label %bb33
bb32:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb34
bb33:
  %t124 = load i1, ptr %l80, !tbaa !21
  store i1 %t124, ptr %l77, !tbaa !21
  br label %bb34
bb34:
  %t125 = load i1, ptr %l77, !tbaa !21
  br i1 %t125, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t127 = load i64, ptr %l14, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l14, !tbaa !24
  br label %bb25
bb39:
  %t131 = load ptr, ptr %l11, !tbaa !29
  %t133 = getelementptr %"compiler/typed:Body", ptr %t131, i32 0, i32 11
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = icmp eq ptr %t134, null
  br i1 %t136, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fscope_3awalked(ptr %t139, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %t139, i64 424, i1 false)
  br label %bb43
bb43:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l88, i64 424, i1 false)
  %t140 = getelementptr %"compiler/scope:walked", ptr %l16, i32 0, i32 11
  store i1 true, ptr %t140, !tbaa !21
  %t141 = load ptr, ptr %l11, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Body", ptr %t141, i32 0, i32 11
  %t144 = load ptr, ptr %t143, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %s0, ptr %t144, ptr %l16)
  br label %bb44
bb44:
  %t147 = getelementptr %"compiler/scope:walked", ptr %l16, i32 0, i32 12
  store ptr %t147, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb45
bb45:
  %t149 = load i64, ptr %l18, !tbaa !24
  store i64 %t149, ptr %l93, !tbaa !24
  %t150 = load ptr, ptr %l17, !tbaa !29
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t150)
  store i64 %t152, ptr %l95
  br label %bb46
bb46:
  %t153 = load i64, ptr %l93, !tbaa !24
  %t154 = load i64, ptr %l95, !tbaa !24
  %t155 = icmp slt i64 %t153, %t154
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb47, label %bb48
bb47:
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t159 = load ptr, ptr %l17, !tbaa !29
  %t160 = load i64, ptr %l18, !tbaa !24
  %t163 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t159, i64 %t160)
  store i32 %t163, ptr %l100
  br label %bb50
bb50:
  %t164 = load i32, ptr %l100, !tbaa !23
  %t168 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %s0, ptr %v0, ptr %l12, i32 %t164)
  store i1 %t168, ptr %l103
  br label %bb51
bb51:
  %t169 = load i1, ptr %l103, !tbaa !21
  br i1 %t169, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t171 = load i64, ptr %l18, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l18, !tbaa !24
  br label %bb45
bb56:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakesDerived(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l8 = alloca ptr
  %l11 = alloca i1
  %l15 = alloca i1
  %l19 = alloca i1
  %l24 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca i1
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
  store ptr %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l8, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 14
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb5
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 71
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t16, i64 %t17)
  store i1 %t20, ptr %l15
  br label %bb4
bb4:
  %t21 = load i1, ptr %l15, !tbaa !21
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l11, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 1
  %t27 = load { i64, [2 x i64] }, ptr %t26
  store { i64, [2 x i64] } %t27, ptr %l3
  %t29 = load { i64, [2 x i64] }, ptr %l3
  %t31 = extractvalue { i64, [2 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 0
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t35 = getelementptr { i64 }, ptr %t34, i32 0, i32 0
  %t36 = load i64, ptr %t35
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb11
bb10:
  br label %bb14
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l24, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t45, i64 %t46)
  store i64 %t49, ptr %l28
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l24, !tbaa !29
  %t51 = load i64, ptr %l28, !tbaa !24
  %t52 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t50, i64 %t51)
  store ptr %t52, ptr %l29
  br label %bb13
bb13:
  %t53 = load ptr, ptr %l29, !tbaa !29
  %t55 = getelementptr %"compiler/ast:Func", ptr %t53, i32 0, i32 7
  %t56 = load i1, ptr %t55, !tbaa !21
  %t58 = xor i1 %t56, true
  store i1 %t58, ptr %l19, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb14:
  %t60 = load { i64, [2 x i64] }, ptr %l3
  %t62 = extractvalue { i64, [2 x i64] } %t60, 0
  %t63 = icmp eq i64 %t62, 3
  br i1 %t63, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_947b7a568198717d_ce4e4092682dfe19)
  unreachable
bb23:
  %t65 = load i1, ptr %l19, !tbaa !21
  store i1 %t65, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etransRecs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, { i64, ptr } %a4, i1 %a5, { i64, ptr } %a6) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/scope:fnRec"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca { i64, [2 x i64] }
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca %"compiler/scope:fnRec"
  %l30 = alloca %"compiler/scope:fnRec"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca { i64, [2 x i64] }
  %l44 = alloca { i64, [2 x i64] }
  %l45 = alloca ptr
  %l48 = alloca { i64, [2 x i64] }
  %l54 = alloca { i64, [2 x i64] }
  %l57 = alloca ptr
  %l61 = alloca %"compiler/scope:fnRec"
  %s3 = alloca %olang.scope
  %t66 = alloca { i64, [2 x i64] }, align 8
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/scope:fnRecs", ptr %t1, i32 0, i32 1
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/scope:fnRecs", ptr %t8, i32 0, i32 1
  store i1 false, ptr %t10, !tbaa !21
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/scope:fnRecs", ptr %t11, i32 0, i32 0
  store ptr %t13, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s3
  %t15 = load i64, ptr %l8, !tbaa !24
  store i64 %t15, ptr %l21, !tbaa !24
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %t16)
  store i64 %t18, ptr %l23
  br label %bb5
bb5:
  %t19 = load i64, ptr %l21, !tbaa !24
  %t20 = load i64, ptr %l23, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l7, !tbaa !29
  %t26 = load i64, ptr %l8, !tbaa !24
  %t29 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %v2, ptr %t25, i64 %t26)
  store %"compiler/scope:fnRec" %t29, ptr %l28
  br label %bb9
bb9:
  %t31 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s3, ptr %l28)
  store %"compiler/scope:fnRec" %t31, ptr %l30
  br label %bb10
bb10:
  %t32 = load %"compiler/scope:fnRec", ptr %l30
  store %"compiler/scope:fnRec" %t32, ptr %l9
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l31
  br label %bb11
bb11:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l10
  %t35 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 1
  store ptr %t35, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb12
bb12:
  %t37 = load i64, ptr %l12, !tbaa !24
  store i64 %t37, ptr %l33, !tbaa !24
  %t38 = load ptr, ptr %l11, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %s3, ptr %t38)
  store i64 %t40, ptr %l35
  br label %bb13
bb13:
  %t41 = load i64, ptr %l33, !tbaa !24
  %t42 = load i64, ptr %l35, !tbaa !24
  %t43 = icmp slt i64 %t41, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb14, label %bb15
bb14:
  br label %bb25
bb15:
  br label %bb16
bb16:
  %t47 = load ptr, ptr %l11, !tbaa !29
  %t48 = load i64, ptr %l12, !tbaa !24
  %t51 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %s3, ptr %t47, i64 %t48)
  store { i64, [2 x i64] } %t51, ptr %l40
  br label %bb17
bb17:
  %t52 = load { i64, [2 x i64] }, ptr %l40
  store { i64, [2 x i64] } %t52, ptr %l13
  %t53 = load { i64, [2 x i64] }, ptr %l13
  %t59 = call { i64, [2 x i64] } @compiler_2fscope_2erecTerm(ptr %v4, { i64, [2 x i64] } %t53, { i64, ptr } %a4, i1 %a5)
  store { i64, [2 x i64] } %t59, ptr %l44
  br label %bb18
bb18:
  %t60 = load { i64, [2 x i64] }, ptr %l44
  store { i64, [2 x i64] } %t60, ptr %l14
  store ptr %l10, ptr %l45, !tbaa !29
  %t61 = load { i64, [2 x i64] }, ptr %l13
  %t63 = extractvalue { i64, [2 x i64] } %t61, 0
  %t64 = icmp eq i64 %t63, 0
  br i1 %t64, label %bb19, label %bb20
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [2 x i64] }, ptr %t66, i32 0, i32 0
  store i64 0, ptr %t67
  %t68 = load { i64, [2 x i64] }, ptr %t66
  store { i64, [2 x i64] } %t68, ptr %l48
  br label %bb22
bb20:
  %t71 = load { i64, [2 x i64] }, ptr %l14
  %t78 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethrough(ptr %v0, ptr %v5, ptr %v3, ptr %a0, { i64, [2 x i64] } %t71, { i64, ptr } %a6, ptr %a3, i1 false)
  store { i64, [2 x i64] } %t78, ptr %l54
  br label %bb21
bb21:
  %t79 = load { i64, [2 x i64] }, ptr %l54
  store { i64, [2 x i64] } %t79, ptr %l48
  br label %bb22
bb22:
  %t80 = load ptr, ptr %l45, !tbaa !29
  %t81 = load { i64, [2 x i64] }, ptr %l48
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %s3, ptr %t80, { i64, [2 x i64] } %t81)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t82 = load i64, ptr %l12, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l12, !tbaa !24
  br label %bb12
bb25:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l57, !tbaa !29
  %t87 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 0
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t90 = getelementptr %"compiler/scope:fnRec", ptr %l9, i32 0, i32 2
  %t91 = load i1, ptr %t90, !tbaa !21
  %t95 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s3, ptr %s3, i64 %t88, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, i1 %t91)
  store %"compiler/scope:fnRec" %t95, ptr %l61
  br label %bb26
bb26:
  %t96 = load ptr, ptr %l57, !tbaa !29
  %t97 = load %"compiler/scope:fnRec", ptr %l61
  call void @compiler_2fscope_2eaddRec(ptr %v1, ptr %s3, ptr %t96, %"compiler/scope:fnRec" %t97)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb28:
  %t98 = load i64, ptr %l8, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l8, !tbaa !24
  br label %bb4
bb29:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l29 = alloca i1
  %l34 = alloca ptr
  %l36 = alloca %"compiler/source:Span"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
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
  %t8 = getelementptr %"compiler/typed:Block", ptr %t6, i32 0, i32 1
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
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t23, ptr %l20, !tbaa !27
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l8, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l8, !tbaa !29
  %t42 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueStmt(ptr %v0, ptr %v1, ptr %v2, ptr %t31, ptr %a1, ptr %t33, i64 %a3, i64 %a4)
  store i1 %t42, ptr %l29
  br label %bb8
bb8:
  %t43 = load i1, ptr %l29, !tbaa !21
  %t44 = xor i1 %t43, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 120
  %t49 = getelementptr %"compiler/source:Span", ptr %t48, i32 0, i32 1
  %t50 = load i32, ptr %t49, !tbaa !23
  %t52 = icmp eq i32 %t50, 0
  br i1 %t52, label %bb11, label %bb12
bb10:
  br label %bb15
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l34, !tbaa !29
  %t55 = load ptr, ptr %l8, !tbaa !29
  %t57 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aStmt_2eSpan(ptr %v2, ptr %t55)
  store %"compiler/source:Span" %t57, ptr %l36
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t58 = load %"compiler/source:Span", ptr %l36
  %t59 = load ptr, ptr %l34, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 120
  store %"compiler/source:Span" %t58, ptr %t60
  br label %bb14
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t62 = load i64, ptr %l6, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l6, !tbaa !24
  br label %bb4
bb17:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunionRels(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2, i32 %a3, { i64, ptr } %a4, i64 %a5) #0 {
entry:
  %lp6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l31 = alloca i64
  %l36 = alloca %"compiler/scope:rel"
  %l45 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca i64
  %l54 = alloca i64
  %l59 = alloca %"compiler/scope:rel"
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l16
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t2, ptr %lp6
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t4 = load ptr, ptr %lp6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a1, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l8, !tbaa !24
  store i64 %t7, ptr %l18, !tbaa !24
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H2a2e2bb73cbe78787fa6ff6d095e1956(ptr %v1, ptr %t8)
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
  %t17 = load ptr, ptr %l7, !tbaa !29
  %t18 = load i64, ptr %l8, !tbaa !24
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H69e10a266f1cb5d26290bb9f760bc181(ptr %v1, ptr %v1, ptr %t17, i64 %t18)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l25
  br label %bb7
bb7:
  %t23 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %s2, ptr %l25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l27
  br label %bb8
bb8:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l9
  store ptr %l9, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb9
bb9:
  %t26 = load i64, ptr %l11, !tbaa !24
  store i64 %t26, ptr %l29, !tbaa !24
  %t27 = load ptr, ptr %l10, !tbaa !29
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %s2, ptr %t27)
  store i64 %t29, ptr %l31
  br label %bb10
bb10:
  %t30 = load i64, ptr %l29, !tbaa !24
  %t31 = load i64, ptr %l31, !tbaa !24
  %t32 = icmp slt i64 %t30, %t31
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  br label %bb13
bb13:
  %t36 = load ptr, ptr %l10, !tbaa !29
  %t37 = load i64, ptr %l11, !tbaa !24
  %t40 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %s2, ptr %t36, i64 %t37)
  store %"compiler/scope:rel" %t40, ptr %l36
  br label %bb14
bb14:
  %t41 = load %"compiler/scope:rel", ptr %l36
  %t42 = load ptr, ptr %lp6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v3, ptr %t42, %"compiler/scope:rel" %t41)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t46 = load i64, ptr %l11, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l11, !tbaa !24
  br label %bb9
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t50 = load i64, ptr %l8, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l8, !tbaa !24
  br label %bb2
bb19:
  %t56 = xor i1 %a2, true
  br i1 %t56, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %a0, ptr %l45, !tbaa !29
  store i32 %a3, ptr %l46, !tbaa !23
  store { i64, ptr } %a4, ptr %l47, !tbaa !27
  store i64 %a5, ptr %l48, !tbaa !24
  %t62 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s8, i32 0, i32 0)
  store %"compiler/source:Span" %t62, ptr %l49
  br label %bb22
bb21:
  br label %bb33
bb22:
  %t63 = load ptr, ptr %l45, !tbaa !29
  %t64 = load i32, ptr %l46, !tbaa !23
  %t65 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t66 = load i64, ptr %l48, !tbaa !24
  %t67 = load %"compiler/source:Span", ptr %l49
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRels(ptr %v0, ptr %v2, ptr %s8, ptr %t63, i32 %t64, { i64, ptr } %t65, i64 %t66, %"compiler/source:Span" %t67, i64 -1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l50
  br label %bb23
bb23:
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  %t70 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %t70
  store ptr %t70, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb24
bb24:
  %t72 = load i64, ptr %l14, !tbaa !24
  store i64 %t72, ptr %l52, !tbaa !24
  %t73 = load ptr, ptr %l13, !tbaa !29
  %t75 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %s8, ptr %t73)
  store i64 %t75, ptr %l54
  br label %bb25
bb25:
  %t76 = load i64, ptr %l52, !tbaa !24
  %t77 = load i64, ptr %l54, !tbaa !24
  %t78 = icmp slt i64 %t76, %t77
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb26, label %bb27
bb26:
  br label %bb32
bb27:
  br label %bb28
bb28:
  %t82 = load ptr, ptr %l13, !tbaa !29
  %t83 = load i64, ptr %l14, !tbaa !24
  %t86 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %s8, ptr %t82, i64 %t83)
  store %"compiler/scope:rel" %t86, ptr %l59
  br label %bb29
bb29:
  %t87 = load %"compiler/scope:rel", ptr %l59
  %t88 = load ptr, ptr %lp6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v3, ptr %t88, %"compiler/scope:rel" %t87)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t92 = load i64, ptr %l14, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l14, !tbaa !24
  br label %bb24
bb32:
  call void @__olang_scope_close(ptr %s8)
  br label %bb33
bb33:
  %t96 = load ptr, ptr %lp6
  %t97 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t96
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
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
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
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
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 26
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
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 41
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
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 26
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
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 26
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

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:Val"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l5 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t39 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/scope:Val" %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 5}
  store i32 %t2, ptr %l3
  %t4 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t6 = trunc i64 2 to i32
  %t7 = icmp eq i32 %t4, %t6
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t9 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t10 = load { i64, [2 x i64] }, ptr %t9
  store { i64, [2 x i64] } %t10, ptr %l5
  br label %bb21
bb4:
  %t12 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t14 = trunc i64 3 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t17 = getelementptr %"compiler/scope:Val", ptr %l1, i32 0, i32 1
  %t18 = load { i64, [2 x i64] }, ptr %t17
  store { i64, [2 x i64] } %t18, ptr %l5
  br label %bb21
bb8:
  %t20 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t22 = trunc i64 1 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t25 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t25, ptr %l5
  br label %bb21
bb12:
  %t27 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t29 = trunc i64 0 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t32 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t32, ptr %l5
  br label %bb21
bb16:
  %t34 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t36 = trunc i64 4 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 0
  store i64 3, ptr %t40
  %t41 = load { i64, [2 x i64] }, ptr %t39
  store { i64, [2 x i64] } %t41, ptr %l5
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_2d495d25c2f7bdb5_cee87077afe39dd9)
  unreachable
bb21:
  %t43 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l10 = alloca i1
  %l14 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l15 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i32
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i32
  %l42 = alloca i1
  %l45 = alloca i1
  %l48 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l55 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
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
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i1, ptr %l10, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t12 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t10, i64 2)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t12, ptr %l14
  br label %bb5
bb5:
  %t13 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l14
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t13, ptr %l2
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 10
  %t17 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l2
  %t20 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t16, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t17)
  %t21 = extractvalue { i32, i64 } %t20, 1
  %t22 = extractvalue { i32, i64 } %t20, 0
  store i32 %t22, ptr %l20
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb7, label %ok.24, !prof !99
ok.24:
  store i64 %t21, ptr %l19
  br label %bb6
bb6:
  %t25 = load i64, ptr %l19, !tbaa !24
  store i64 %t25, ptr %l15, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb9
bb9:
  %t26 = load i64, ptr %l15, !tbaa !24
  store i64 %t26, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp ne i64 %t27, 0
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = icmp eq i64 %t31, 3
  call void @__olang_scope_close(ptr %s0)
  store i1 %t33, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 10
  %t38 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l2
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t37, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t38, i64 1)
  br label %bb13
bb13:
  store i1 false, ptr %l4, !tbaa !21
  store %olang.scope zeroinitializer, ptr %s3
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparts(ptr %v0, ptr %s3, ptr %t41, i32 %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %l30
  br label %bb14
bb14:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  %t47 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %t47
  store ptr %t47, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t49 = load i64, ptr %l6, !tbaa !24
  store i64 %t49, ptr %l32, !tbaa !24
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s3, ptr %t50)
  store i64 %t52, ptr %l34
  br label %bb16
bb16:
  %t53 = load i64, ptr %l32, !tbaa !24
  %t54 = load i64, ptr %l34, !tbaa !24
  %t55 = icmp slt i64 %t53, %t54
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb17, label %bb18
bb17:
  br label %bb34
bb18:
  br label %bb19
bb19:
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s3, ptr %t59, i64 %t60)
  store i32 %t63, ptr %l39
  br label %bb20
bb20:
  %t64 = load i32, ptr %l39, !tbaa !23
  store i32 %t64, ptr %l7, !tbaa !23
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l7, !tbaa !23
  %t69 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t65, i32 %t66)
  store i1 %t69, ptr %l42
  br label %bb21
bb21:
  %t70 = load i1, ptr %l42, !tbaa !21
  br i1 %t70, label %bb22, label %bb23
bb22:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l7, !tbaa !23
  %t75 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %t71, i32 %t72)
  store i1 %t75, ptr %l45
  br label %bb24
bb23:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l7, !tbaa !23
  %t80 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %t76, i32 %t77)
  store i1 %t80, ptr %l48
  br label %bb28
bb24:
  %t81 = load i1, ptr %l45, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb32
bb28:
  %t82 = load i1, ptr %l48, !tbaa !21
  br i1 %t82, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l6, !tbaa !24
  br label %bb15
bb34:
  call void @__olang_scope_close(ptr %s3)
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 10
  store ptr %t89, ptr %l52, !tbaa !29
  %t90 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l2
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t90, ptr %l53
  %t91 = load i1, ptr %l4, !tbaa !21
  br i1 %t91, label %bb35, label %bb36
bb35:
  store i64 3, ptr %l55, !tbaa !24
  br label %bb37
bb36:
  store i64 2, ptr %l55, !tbaa !24
  br label %bb37
bb37:
  %t93 = load ptr, ptr %l52, !tbaa !29
  %t94 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l53
  %t95 = load i64, ptr %l55, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t93, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t94, i64 %t95)
  br label %bb38
bb38:
  %t96 = load i1, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t96, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everEnter(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l7 = alloca %"compiler/source:Span"
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aStmt_2eSpan(ptr %v1, ptr %a1)
  store %"compiler/source:Span" %t10, ptr %l7
  br label %bb4
bb4:
  %t11 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t12 = load i32, ptr %t11, !tbaa !23
  %t14 = sext i32 %t12 to i64
  store i64 %t14, ptr %l2, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 163
  %t19 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorTerms(ptr %v0, ptr %t22, i64 %t23)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everStart(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca ptr
  %l30 = alloca ptr
  %l80 = alloca i64
  %l83 = alloca i64
  %l102 = alloca { i64, ptr }
  %l112 = alloca i64
  %l116 = alloca i64
  %l119 = alloca i64
  %l154 = alloca i64
  %l158 = alloca i64
  %l161 = alloca i64
  %l189 = alloca i64
  %l192 = alloca i64
  %l197 = alloca i64
  %l200 = alloca i64
  %t231 = alloca { i64, [2 x i64] }, align 8
  %t243 = alloca { i64, [2 x i64] }, align 8
  %t399 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l27, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eversionsOf(ptr %v0, ptr %v0, ptr %t2, i64 %a1)
  store ptr %t6, ptr %l30
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l30, !tbaa !29
  %t8 = load ptr, ptr %l27, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 159
  store ptr %t7, ptr %t9, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 162
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t12)
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 163
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t16)
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 164
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t20)
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 165
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t24)
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 181
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t28)
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 182
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t32)
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 166
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t36)
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 167
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t40)
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 168
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t44)
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 175
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eClear_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t48)
  br label %bb11
bb11:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 169
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eClear_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t52)
  br label %bb12
bb12:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 186
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H15be18d2c94fd99617814228bf9d59fe(ptr %v0, ptr %t56)
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 187
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t60)
  br label %bb14
bb14:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 188
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb8a8915e0c6fdfa2e5a92011b8ae7ed6(ptr %v0, ptr %t64)
  br label %bb15
bb15:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 189
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t68)
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %t70, i32 0, i32 193
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t72)
  br label %bb17
bb17:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 173
  store i1 false, ptr %t76, !tbaa !21
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 190
  store i64 -1, ptr %t79, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %t80, i32 0, i32 191
  store i64 0, ptr %t82, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 159
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = icmp eq ptr %t86, null
  br i1 %t88, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %t90, i32 0, i32 159
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = icmp eq ptr %t93, null
  br i1 %t95, label %bb21, label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_d1a27ddad0bf3bf0_98ce87b3b0335404)
  unreachable
bb22:
  br label %bb23
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/scope:Scoper", ptr %t97, i32 0, i32 159
  %t100 = load ptr, ptr %t99, !tbaa !29
  store ptr %t100, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Versions", ptr %t102, i32 0, i32 2
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  store i64 %t107, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t109 = load i64, ptr %l4, !tbaa !24
  %t110 = load i64, ptr %l3, !tbaa !24
  %t113 = icmp sgt i64 %t109, %t110
  br i1 %t113, label %bb24, label %bb25
bb24:
  %t115 = load i64, ptr %l5, !tbaa !24
  %t117 = icmp sgt i64 %t115, 0
  br i1 %t117, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb29
bb26:
  %t119 = load i64, ptr %l4, !tbaa !24
  %t120 = load i64, ptr %l3, !tbaa !24
  %t123 = sub i64 %t119, %t120
  %t124 = load i64, ptr %l5, !tbaa !24
  %t127 = add i64 %t123, %t124
  %t129 = sub i64 %t127, 1
  %t130 = load i64, ptr %l5, !tbaa !24
  %t133 = sdiv i64 %t129, %t130
  store i64 %t133, ptr %l83, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb28
bb28:
  %t135 = load i64, ptr %l83, !tbaa !24
  store i64 %t135, ptr %l80, !tbaa !24
  br label %bb29
bb29:
  %t136 = load i64, ptr %l80, !tbaa !24
  store i64 %t136, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb30
bb30:
  %t137 = load i64, ptr %l7, !tbaa !24
  %t138 = load i64, ptr %l6, !tbaa !24
  %t141 = icmp slt i64 %t137, %t138
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t145 = load i64, ptr %l3, !tbaa !24
  %t146 = load i64, ptr %l7, !tbaa !24
  %t147 = load i64, ptr %l5, !tbaa !24
  %t150 = mul i64 %t146, %t147
  %t153 = add i64 %t145, %t150
  store i64 %t153, ptr %l8, !tbaa !24
  %t155 = load ptr, ptr %l2, !tbaa !29
  %t157 = getelementptr %"compiler/typed:Versions", ptr %t155, i32 0, i32 2
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l102, !tbaa !27
  %t159 = load i64, ptr %l8, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i1, ptr %t162, i64 %t159
  %t164 = load i1, ptr %t163, !tbaa !31
  br i1 %t164, label %bb34, label %bb35
bb34:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/scope:Scoper", ptr %t166, i32 0, i32 162
  %t169 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t168, i64 %t169)
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t172 = load i64, ptr %l7, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l7, !tbaa !24
  br label %bb30
bb39:
  store i64 0, ptr %l9, !tbaa !24
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Versions", ptr %t176, i32 0, i32 3
  %t180 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t178)
  store i64 %t180, ptr %l112
  br label %bb40
bb40:
  %t181 = load i64, ptr %l112, !tbaa !24
  store i64 %t181, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t182 = load i64, ptr %l10, !tbaa !24
  %t183 = load i64, ptr %l9, !tbaa !24
  %t186 = icmp sgt i64 %t182, %t183
  br i1 %t186, label %bb41, label %bb42
bb41:
  %t188 = load i64, ptr %l11, !tbaa !24
  %t190 = icmp sgt i64 %t188, 0
  br i1 %t190, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb46
bb43:
  %t192 = load i64, ptr %l10, !tbaa !24
  %t193 = load i64, ptr %l9, !tbaa !24
  %t196 = sub i64 %t192, %t193
  %t197 = load i64, ptr %l11, !tbaa !24
  %t200 = add i64 %t196, %t197
  %t202 = sub i64 %t200, 1
  %t203 = load i64, ptr %l11, !tbaa !24
  %t206 = sdiv i64 %t202, %t203
  store i64 %t206, ptr %l119, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l119, !tbaa !24
  br label %bb45
bb45:
  %t208 = load i64, ptr %l119, !tbaa !24
  store i64 %t208, ptr %l116, !tbaa !24
  br label %bb46
bb46:
  %t209 = load i64, ptr %l116, !tbaa !24
  store i64 %t209, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb47
bb47:
  %t210 = load i64, ptr %l13, !tbaa !24
  %t211 = load i64, ptr %l12, !tbaa !24
  %t214 = icmp slt i64 %t210, %t211
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb48, label %bb49
bb48:
  br label %bb56
bb49:
  br label %bb50
bb50:
  %t218 = load i64, ptr %l9, !tbaa !24
  %t219 = load i64, ptr %l13, !tbaa !24
  %t220 = load i64, ptr %l11, !tbaa !24
  %t223 = mul i64 %t219, %t220
  %t226 = add i64 %t218, %t223
  store i64 %t226, ptr %l14, !tbaa !24
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/scope:Scoper", ptr %t228, i32 0, i32 164
  store { i64, [2 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [2 x i64] }, ptr %t231, i32 0, i32 0
  store i64 0, ptr %t232
  %t233 = load { i64, [2 x i64] }, ptr %t231
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t230, { i64, [2 x i64] } %t233)
  br label %bb51
bb51:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/scope:Scoper", ptr %t236, i32 0, i32 165
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t238, i1 false)
  br label %bb52
bb52:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/scope:Scoper", ptr %t240, i32 0, i32 181
  store { i64, [2 x i64] } zeroinitializer, ptr %t243
  %t244 = getelementptr { i64, [2 x i64] }, ptr %t243, i32 0, i32 0
  store i64 0, ptr %t244
  %t245 = load { i64, [2 x i64] }, ptr %t243
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t242, { i64, [2 x i64] } %t245)
  br label %bb53
bb53:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %t248, i32 0, i32 182
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t250, i1 false)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t252 = load i64, ptr %l13, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l13, !tbaa !24
  br label %bb47
bb56:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/scope:Scoper", ptr %t256, i32 0, i32 178
  store i64 0, ptr %t258, !tbaa !24
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"compiler/scope:Scoper", ptr %t259, i32 0, i32 176
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t261)
  br label %bb57
bb57:
  store i64 0, ptr %l15, !tbaa !24
  %t263 = load ptr, ptr %l2, !tbaa !29
  %t265 = getelementptr %"compiler/typed:Versions", ptr %t263, i32 0, i32 3
  %t267 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t265)
  store i64 %t267, ptr %l154
  br label %bb58
bb58:
  %t268 = load i64, ptr %l154, !tbaa !24
  store i64 %t268, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t269 = load i64, ptr %l16, !tbaa !24
  %t270 = load i64, ptr %l15, !tbaa !24
  %t273 = icmp sgt i64 %t269, %t270
  br i1 %t273, label %bb59, label %bb60
bb59:
  %t275 = load i64, ptr %l17, !tbaa !24
  %t277 = icmp sgt i64 %t275, 0
  br i1 %t277, label %bb61, label %bb62
bb60:
  store i64 0, ptr %l158, !tbaa !24
  br label %bb64
bb61:
  %t279 = load i64, ptr %l16, !tbaa !24
  %t280 = load i64, ptr %l15, !tbaa !24
  %t283 = sub i64 %t279, %t280
  %t284 = load i64, ptr %l17, !tbaa !24
  %t287 = add i64 %t283, %t284
  %t289 = sub i64 %t287, 1
  %t290 = load i64, ptr %l17, !tbaa !24
  %t293 = sdiv i64 %t289, %t290
  store i64 %t293, ptr %l161, !tbaa !24
  br label %bb63
bb62:
  store i64 0, ptr %l161, !tbaa !24
  br label %bb63
bb63:
  %t295 = load i64, ptr %l161, !tbaa !24
  store i64 %t295, ptr %l158, !tbaa !24
  br label %bb64
bb64:
  %t296 = load i64, ptr %l158, !tbaa !24
  store i64 %t296, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb65
bb65:
  %t297 = load i64, ptr %l19, !tbaa !24
  %t298 = load i64, ptr %l18, !tbaa !24
  %t301 = icmp slt i64 %t297, %t298
  %t303 = xor i1 %t301, true
  br i1 %t303, label %bb66, label %bb67
bb66:
  br label %bb71
bb67:
  br label %bb68
bb68:
  %t305 = load i64, ptr %l15, !tbaa !24
  %t306 = load i64, ptr %l19, !tbaa !24
  %t307 = load i64, ptr %l17, !tbaa !24
  %t310 = mul i64 %t306, %t307
  %t313 = add i64 %t305, %t310
  store i64 %t313, ptr %l20, !tbaa !24
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/scope:Scoper", ptr %t315, i32 0, i32 176
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t317, i1 false)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t319 = load i64, ptr %l19, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l19, !tbaa !24
  br label %bb65
bb71:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/scope:Scoper", ptr %t323, i32 0, i32 179
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t325)
  br label %bb72
bb72:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/scope:Scoper", ptr %t327, i32 0, i32 180
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t329)
  br label %bb73
bb73:
  store i64 0, ptr %l21, !tbaa !24
  %t331 = load ptr, ptr %l2, !tbaa !29
  %t333 = getelementptr %"compiler/typed:Versions", ptr %t331, i32 0, i32 13
  %t334 = load i64, ptr %t333, !tbaa !24
  %t336 = add i64 %t334, 1
  store i64 %t336, ptr %l189, !tbaa !24
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/scope:Scoper", ptr %t337, i32 0, i32 162
  %t341 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t339)
  store i64 %t341, ptr %l192
  br label %bb74
bb74:
  %t342 = load i64, ptr %l189, !tbaa !24
  %t343 = load i64, ptr %l192, !tbaa !24
  %t344 = mul i64 %t342, %t343
  store i64 %t344, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t346 = load i64, ptr %l22, !tbaa !24
  %t347 = load i64, ptr %l21, !tbaa !24
  %t350 = icmp sgt i64 %t346, %t347
  br i1 %t350, label %bb75, label %bb76
bb75:
  %t352 = load i64, ptr %l23, !tbaa !24
  %t354 = icmp sgt i64 %t352, 0
  br i1 %t354, label %bb77, label %bb78
bb76:
  store i64 0, ptr %l197, !tbaa !24
  br label %bb80
bb77:
  %t356 = load i64, ptr %l22, !tbaa !24
  %t357 = load i64, ptr %l21, !tbaa !24
  %t360 = sub i64 %t356, %t357
  %t361 = load i64, ptr %l23, !tbaa !24
  %t364 = add i64 %t360, %t361
  %t366 = sub i64 %t364, 1
  %t367 = load i64, ptr %l23, !tbaa !24
  %t370 = sdiv i64 %t366, %t367
  store i64 %t370, ptr %l200, !tbaa !24
  br label %bb79
bb78:
  store i64 0, ptr %l200, !tbaa !24
  br label %bb79
bb79:
  %t372 = load i64, ptr %l200, !tbaa !24
  store i64 %t372, ptr %l197, !tbaa !24
  br label %bb80
bb80:
  %t373 = load i64, ptr %l197, !tbaa !24
  store i64 %t373, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb81
bb81:
  %t374 = load i64, ptr %l25, !tbaa !24
  %t375 = load i64, ptr %l24, !tbaa !24
  %t378 = icmp slt i64 %t374, %t375
  %t380 = xor i1 %t378, true
  br i1 %t380, label %bb82, label %bb83
bb82:
  br label %bb88
bb83:
  br label %bb84
bb84:
  %t382 = load i64, ptr %l21, !tbaa !24
  %t383 = load i64, ptr %l25, !tbaa !24
  %t384 = load i64, ptr %l23, !tbaa !24
  %t387 = mul i64 %t383, %t384
  %t390 = add i64 %t382, %t387
  store i64 %t390, ptr %l26, !tbaa !24
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/scope:Scoper", ptr %t392, i32 0, i32 179
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t394, i64 -1)
  br label %bb85
bb85:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t398 = getelementptr %"compiler/scope:Scoper", ptr %t396, i32 0, i32 180
  store { i64, [2 x i64] } zeroinitializer, ptr %t399
  %t400 = getelementptr { i64, [2 x i64] }, ptr %t399, i32 0, i32 0
  store i64 0, ptr %t400
  %t401 = load { i64, [2 x i64] }, ptr %t399
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t398, { i64, [2 x i64] } %t401)
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t404 = load i64, ptr %l25, !tbaa !24
  %t406 = add i64 %t404, 1
  store i64 %t406, ptr %l25, !tbaa !24
  br label %bb81
bb88:
  br label %ret
ret:
  ret void
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
  %l74 = alloca ptr
  %l76 = alloca i1
  %l78 = alloca i64
  %l82 = alloca ptr
  %l84 = alloca { i64, [2 x i64] }
  %l88 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca { i64, ptr }
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 249
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
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 217
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l26, !tbaa !27
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
  %t103 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t103, i64 %t104)
  %t105 = load i64, ptr %l49, !tbaa !24
  %t106 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t107 = call i64 @__olang_fmt_i64(ptr %t106, i64 %t105)
  call void @__olang_sb_add(ptr %s5, i64 %t107)
  %t108 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t108, i64 %t109)
  %t110 = load i64, ptr %l50, !tbaa !24
  %t111 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t112 = call i64 @__olang_fmt_i64(ptr %t111, i64 %t110)
  call void @__olang_sb_add(ptr %s5, i64 %t112)
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
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
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 6
  %t155 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 0
  %t156 = load i64, ptr %t155, !tbaa !24
  %t159 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t154, i64 %t156)
  store ptr %t159, ptr %l74
  br label %bb31
bb31:
  %t160 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load ptr, ptr %l74, !tbaa !29
  %t164 = call i1 @compiler_2fscope_2esameSummary(ptr %v0, ptr %v0, ptr %t162, ptr %t161)
  store i1 %t164, ptr %l76
  br label %bb32
bb32:
  %t165 = load i1, ptr %l76, !tbaa !21
  %t166 = xor i1 %t165, true
  br i1 %t166, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s9
  %t168 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 0
  %t169 = load i64, ptr %t168, !tbaa !24
  store i64 %t169, ptr %l78, !tbaa !24
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/scope:Scoper", ptr %t170, i32 0, i32 1
  %t173 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 0
  %t174 = load i64, ptr %t173, !tbaa !24
  %t177 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t172, i64 %t174)
  store ptr %t177, ptr %l82
  br label %bb35
bb34:
  br label %bb39
bb35:
  %t178 = load ptr, ptr %l82, !tbaa !29
  %t180 = getelementptr %"compiler/typed:Body", ptr %t178, i32 0, i32 1
  %t181 = load { i64, [2 x i64] }, ptr %t180
  store { i64, [2 x i64] } %t181, ptr %l84
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/scope:Scoper", ptr %t182, i32 0, i32 6
  %t185 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 0
  %t186 = load i64, ptr %t185, !tbaa !24
  %t189 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t184, i64 %t186)
  store ptr %t189, ptr %l88
  br label %bb36
bb36:
  %t190 = getelementptr %"compiler/scope:sumRead", ptr %l9, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t192 = load ptr, ptr %l88, !tbaa !29
  %t194 = call { i64, ptr } @compiler_2fscope_2esummaryDiff(ptr %v0, ptr %v0, ptr %s9, ptr %t192, ptr %t191)
  store { i64, ptr } %t194, ptr %l90
  br label %bb37
bb37:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s10
  store ptr %s10room, ptr %s10
  %t195 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t195, i64 %t196)
  %t197 = load i64, ptr %l78, !tbaa !24
  %t198 = call ptr @__olang_sb_room(ptr %s10, i64 24)
  %t199 = call i64 @__olang_fmt_i64(ptr %t198, i64 %t197)
  call void @__olang_sb_add(ptr %s10, i64 %t199)
  %t200 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t200, i64 %t201)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aBodyOf(ptr %s10, ptr %l84, i64 0)
  br label %bb38
bb38:
  %t203 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t204 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t203, i64 %t204)
  %t205 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t205, 1
  %t207 = extractvalue { i64, ptr } %t205, 0
  call void @__olang_sb_put(ptr %s10, ptr %t206, i64 %t207)
  %t208 = load ptr, ptr %s10
  %t209 = getelementptr %olang.builder, ptr %s10, i32 0, i32 1
  %t210 = load i64, ptr %t209
  %t211 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t210)
  call void @olang_textcopy(ptr %t211, ptr %t208, i64 %t210)
  %t212 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  store { i64, ptr } %t213, ptr %l92, !tbaa !27
  %t214 = getelementptr %olang.builder, ptr %s10, i32 0, i32 3
  %t215 = load ptr, ptr %t214
  %t216 = icmp ne ptr %t215, null
  br i1 %t216, label %sbgrew.217, label %sbdone.218
sbgrew.217:
  call void @__olang_sb_done(ptr %s10)
  br label %sbdone.218
sbdone.218:
  call void @__olang_scope_close(ptr %s9)
  %t219 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t219, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t220 = load i64, ptr %l8, !tbaa !24
  %t222 = add i64 %t220, 1
  store i64 %t222, ptr %l8, !tbaa !24
  br label %bb25
bb41:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t224 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t224, ptr %l96, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t225, 0
  store i64 %t226, ptr %l97, !tbaa !24
  %t227 = load i64, ptr %l97, !tbaa !24
  %t228 = mul i64 %t227, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t228)
  %t230 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  store { i64, ptr } %t231, ptr %l98, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = load i64, ptr %l97, !tbaa !24
  %t237 = mul i64 %t236, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t233, ptr %t235, i64 %t237, i1 false)
  %t238 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t238, ptr %l96, !tbaa !27
  %t239 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t239, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca i1
  %l49 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l6, !tbaa !24
  br label %bb39
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l16, !tbaa !21
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
  %t37 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l22
  br label %bb12
bb12:
  %t38 = load i64, ptr %l22, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  br label %bb39
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t40 = load ptr, ptr %l23, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l23, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 4
  store i1 %t46, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l24, !tbaa !21
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
  %t59 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t57)
  store i64 %t59, ptr %l31
  br label %bb19
bb19:
  %t60 = load i64, ptr %l31, !tbaa !24
  store i64 %t60, ptr %l6, !tbaa !24
  br label %bb39
bb20:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 8}
  %t68 = icmp eq i64 %t66, 5
  store i1 %t68, ptr %l33, !tbaa !21
  br label %bb22
bb22:
  %t69 = load i1, ptr %l33, !tbaa !21
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
  %t81 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t79)
  store i64 %t81, ptr %l40
  br label %bb26
bb26:
  %t82 = load i64, ptr %l40, !tbaa !24
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb39
bb27:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t84 = load ptr, ptr %l41, !tbaa !29
  %t85 = icmp ne ptr %t84, null
  br i1 %t85, label %bb28, label %bb29
bb28:
  %t87 = load ptr, ptr %l41, !tbaa !29
  %t88 = load i64, ptr %t87, !range !{i64 0, i64 8}
  %t90 = icmp eq i64 %t88, 2
  store i1 %t90, ptr %l42, !tbaa !21
  br label %bb29
bb29:
  %t91 = load i1, ptr %l42, !tbaa !21
  br i1 %t91, label %bb30, label %bb31
bb30:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t94, i32 0, i32 2
  %t96 = load ptr, ptr %t95
  store ptr %t96, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t98 = load ptr, ptr %l5, !tbaa !29
  %t101 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %t98)
  store i64 %t101, ptr %l49
  br label %bb33
bb33:
  %t102 = load i64, ptr %l49, !tbaa !24
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_9690d433211325ad_66664a63f51f2601)
  unreachable
bb39:
  %t103 = load i64, ptr %l6, !tbaa !24
  store i64 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %v0, i32 %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %rv = alloca %"compiler/scope:Val"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/scope:Val" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/scope:Val" %t6, { i64, [2 x i64] } %a1, 1
  store %"compiler/scope:Val" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local %"compiler/scope:sumRead" @compiler_2fscope_3asumRead_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1) #0 {
entry:
  %rv = alloca %"compiler/scope:sumRead"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/scope:sumRead" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/scope:sumRead" %t6, ptr %a1, 1
  store %"compiler/scope:sumRead" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:sumRead", ptr %rv
  ret %"compiler/scope:sumRead" %rr
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
@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" field " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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

@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"x" }>, align 8
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

@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hits" }>, align 8
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

@.d9 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"mark " }>, align 8
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
declare void @__olang_sb_add(ptr, i64)
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aBodyOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 11}
  switch i64 %t2, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 i64 8, label %bb10 i64 9, label %bb11 i64 10, label %bb12 ]
bb1:
  br label %ret
bb2:
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t8, i32 0, i32 1
  %t10 = getelementptr { i64 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  %t13 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t14 = call i64 @__olang_fmt_i64(ptr %t13, i64 %t11)
  call void @__olang_sb_add(ptr %v0, i64 %t14)
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb3:
  %t17 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  %t23 = getelementptr { i32, i32 }, ptr %t22, i32 0, i32 0
  %t24 = load i32, ptr %t23
  %t26 = sext i32 %t24 to i64
  %t27 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t28 = call i64 @__olang_fmt_i64(ptr %t27, i64 %t26)
  call void @__olang_sb_add(ptr %v0, i64 %t28)
  %t29 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr { i64, [2 x i64] }, ptr %t31, i32 0, i32 1
  %t33 = getelementptr { i32, i32 }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  %t36 = sext i32 %t34 to i64
  %t37 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t38 = call i64 @__olang_fmt_i64(ptr %t37, i64 %t36)
  call void @__olang_sb_add(ptr %v0, i64 %t38)
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t39, i64 %t40)
  br label %bb1
bb4:
  %t41 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t43, i64 %t44)
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [2 x i64] }, ptr %t45, i32 0, i32 1
  %t47 = getelementptr { i32, i64 }, ptr %t46, i32 0, i32 0
  %t48 = load i32, ptr %t47
  %t50 = sext i32 %t48 to i64
  %t51 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t52 = call i64 @__olang_fmt_i64(ptr %t51, i64 %t50)
  call void @__olang_sb_add(ptr %v0, i64 %t52)
  %t53 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 1
  %t57 = getelementptr { i32, i64 }, ptr %t56, i32 0, i32 1
  %t58 = load i64, ptr %t57
  %t60 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t61 = call i64 @__olang_fmt_i64(ptr %t60, i64 %t58)
  call void @__olang_sb_add(ptr %v0, i64 %t61)
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t62, i64 %t63)
  br label %bb1
bb5:
  %t64 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t64, i64 %t65)
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t66, i64 %t67)
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr { i64, [2 x i64] }, ptr %t68, i32 0, i32 1
  %t70 = getelementptr { i32 }, ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70
  %t73 = sext i32 %t71 to i64
  %t74 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t75 = call i64 @__olang_fmt_i64(ptr %t74, i64 %t73)
  call void @__olang_sb_add(ptr %v0, i64 %t75)
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t76, i64 %t77)
  br label %bb1
bb6:
  %t78 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t78, i64 %t79)
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t80, i64 %t81)
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr { i64, [2 x i64] }, ptr %t82, i32 0, i32 1
  %t84 = getelementptr { i32 }, ptr %t83, i32 0, i32 0
  %t85 = load i32, ptr %t84
  %t87 = sext i32 %t85 to i64
  %t88 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t89 = call i64 @__olang_fmt_i64(ptr %t88, i64 %t87)
  call void @__olang_sb_add(ptr %v0, i64 %t89)
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t90, i64 %t91)
  br label %bb1
bb7:
  %t92 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t92, i64 %t93)
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t94, i64 %t95)
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr { i64, [2 x i64] }, ptr %t96, i32 0, i32 1
  %t98 = getelementptr { i64 }, ptr %t97, i32 0, i32 0
  %t99 = load i64, ptr %t98
  %t101 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t99)
  call void @__olang_sb_add(ptr %v0, i64 %t102)
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t103, i64 %t104)
  br label %bb1
bb8:
  %t105 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t105, i64 %t106)
  %t107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t107, i64 %t108)
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr { i64, [2 x i64] }, ptr %t109, i32 0, i32 1
  %t111 = getelementptr { i64, i32 }, ptr %t110, i32 0, i32 0
  %t112 = load i64, ptr %t111
  %t114 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t115 = call i64 @__olang_fmt_i64(ptr %t114, i64 %t112)
  call void @__olang_sb_add(ptr %v0, i64 %t115)
  %t116 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t116, i64 %t117)
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [2 x i64] }, ptr %t118, i32 0, i32 1
  %t120 = getelementptr { i64, i32 }, ptr %t119, i32 0, i32 1
  %t121 = load i32, ptr %t120
  %t123 = sext i32 %t121 to i64
  %t124 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t125 = call i64 @__olang_fmt_i64(ptr %t124, i64 %t123)
  call void @__olang_sb_add(ptr %v0, i64 %t125)
  %t126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t126, i64 %t127)
  br label %bb1
bb9:
  %t128 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t128, i64 %t129)
  %t130 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t130, i64 %t131)
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t132, i32 0, i32 1
  %t134 = getelementptr { i64, i32 }, ptr %t133, i32 0, i32 0
  %t135 = load i64, ptr %t134
  %t137 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t138 = call i64 @__olang_fmt_i64(ptr %t137, i64 %t135)
  call void @__olang_sb_add(ptr %v0, i64 %t138)
  %t139 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t139, i64 %t140)
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr { i64, [2 x i64] }, ptr %t141, i32 0, i32 1
  %t143 = getelementptr { i64, i32 }, ptr %t142, i32 0, i32 1
  %t144 = load i32, ptr %t143
  %t146 = sext i32 %t144 to i64
  %t147 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t148 = call i64 @__olang_fmt_i64(ptr %t147, i64 %t146)
  call void @__olang_sb_add(ptr %v0, i64 %t148)
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t149, i64 %t150)
  br label %bb1
bb10:
  %t151 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t151, i64 %t152)
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t153, i64 %t154)
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr { i64, [2 x i64] }, ptr %t155, i32 0, i32 1
  %t157 = getelementptr { i32, i32, i64 }, ptr %t156, i32 0, i32 0
  %t158 = load i32, ptr %t157
  %t160 = sext i32 %t158 to i64
  %t161 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t162 = call i64 @__olang_fmt_i64(ptr %t161, i64 %t160)
  call void @__olang_sb_add(ptr %v0, i64 %t162)
  %t163 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t163, i64 %t164)
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr { i64, [2 x i64] }, ptr %t165, i32 0, i32 1
  %t167 = getelementptr { i32, i32, i64 }, ptr %t166, i32 0, i32 1
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aContractKind(ptr %v0, ptr %t167, i64 %a1)
  br label %bb13
bb11:
  %t170 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t170, i64 %t171)
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t172, i64 %t173)
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr { i64, [2 x i64] }, ptr %t174, i32 0, i32 1
  %t176 = getelementptr { i64, i64 }, ptr %t175, i32 0, i32 0
  %t177 = load i64, ptr %t176
  %t179 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t180 = call i64 @__olang_fmt_i64(ptr %t179, i64 %t177)
  call void @__olang_sb_add(ptr %v0, i64 %t180)
  %t181 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t181, i64 %t182)
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr { i64, [2 x i64] }, ptr %t183, i32 0, i32 1
  %t185 = getelementptr { i64, i64 }, ptr %t184, i32 0, i32 1
  %t186 = load i64, ptr %t185
  %t188 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t186)
  call void @__olang_sb_add(ptr %v0, i64 %t189)
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t190, i64 %t191)
  br label %bb1
bb12:
  %t192 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t192, i64 %t193)
  %t194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t194, i64 %t195)
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr { i64, [2 x i64] }, ptr %t196, i32 0, i32 1
  %t198 = getelementptr { i32, i64 }, ptr %t197, i32 0, i32 0
  %t199 = load i32, ptr %t198
  %t201 = sext i32 %t199 to i64
  %t202 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t203 = call i64 @__olang_fmt_i64(ptr %t202, i64 %t201)
  call void @__olang_sb_add(ptr %v0, i64 %t203)
  %t204 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t205 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t204, i64 %t205)
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr { i64, [2 x i64] }, ptr %t206, i32 0, i32 1
  %t208 = getelementptr { i32, i64 }, ptr %t207, i32 0, i32 1
  %t209 = load i64, ptr %t208
  %t211 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t212 = call i64 @__olang_fmt_i64(ptr %t211, i64 %t209)
  call void @__olang_sb_add(ptr %v0, i64 %t212)
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t213, i64 %t214)
  br label %bb1
bb13:
  %t215 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t216 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t215, i64 %t216)
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr { i64, [2 x i64] }, ptr %t217, i32 0, i32 1
  %t219 = getelementptr { i32, i32, i64 }, ptr %t218, i32 0, i32 2
  %t220 = load i64, ptr %t219
  %t222 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t223 = call i64 @__olang_fmt_i64(ptr %t222, i64 %t220)
  call void @__olang_sb_add(ptr %v0, i64 %t223)
  %t224 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t224, i64 %t225)
  br label %bb1
ret:
  ret void
}

declare void @__olang_sb_done(ptr)
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sum " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
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

declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d15 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.BodyOf.Fn" }>, align 8
@.d16 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d17 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d18 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Ctor" }>, align 8
@.d19 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d20 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Case" }>, align 8
@.d21 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Dtor" }>, align 8
@.d22 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.BodyOf.Lambda" }>, align 8
@.d23 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Test" }>, align 8
@.d24 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.BodyOf.Global" }>, align 8
@.d25 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Cond" }>, align 8
@.d26 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.BodyOf.Contract" }>, align 8
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
  %t5 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
ret:
  ret void
}

@.d27 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.BodyOf.Thunk" }>, align 8
@.d28 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Slot" }>, align 8
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

@.d29 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.ContractKind.Req" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf554e3812f6eb8d76d1c74a8cefae175(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hba5334df3403b24ff847af207d19ebe6(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e450486563db1063_185cf2ae254ae0bf = external constant [0 x i8]
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elift(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_2dbc08d4832115c_eb31bc54ed1b9440 = external constant [0 x i8]
@olang_loc_1fe97746d4c06972_784e8262c547b126 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ae19eb3dd0d17d29_4ac15fb0aa0c6205 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeBuilds(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_a571972fdacfaed1_c7933b0216b7b5ad = external constant [0 x i8]
@olang_loc_9f9bf081c1674640_32724a584f79d5fc = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f5a6a34513be6f66_d823644f523d28d2 = external constant [0 x i8]
@olang_loc_fb03a3f3a998d7f4_c51114a8b6a5d830 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
@olang_loc_32aa5f667f3bb72f_a348eb602b84686b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2eletOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2eaddRec(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
@olang_loc_7f910b9ce5af0957_c9c0d9296573c213 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esomeUncovered(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb676fcc2696545b94a8186e92757a5eb(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2fscope_2evarOf({ i64, [2 x i64] } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e1142588f73f06ca_7758fe2f808af2c6 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveTargets(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, [2 x i64] } %a3, ptr %a4)
@olang_loc_fffd5718cad2f058_6f436270cc71de54 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_8897a11abbae3078_f3dd57de933efb7c = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_51ee4af841bdfc97_6c7c82a498ee2aeb = external constant [0 x i8]
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everDefine(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteRecs(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_33f27227f7ec135_5111a6d6f9774a09 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H7f0db9a748408eed60466e9bcc3da0f4(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hf35b68ef52989e91eb69554544b1a1d1(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Haa74f894ca6709311a3b8bcafa35333d(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_f1651a5ea92fc764_7e198d85ea96f48 = external constant [0 x i8]
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd10c34cdbfb7fa3abdb8b5399b1b7292(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, [1 x i64] } %a2)
@olang_loc_96b0618960354e24_3d02a19520d5ec20 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBack(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_1224d6df3464748a_e87c09d967c04386 = external constant [0 x i8]
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_eb97c951d9e697cc_139ecfedaca533c8 = external constant [0 x i8]
@olang_loc_8c5cdaf113a9adb2_ca6187f954f52aa6 = external constant [0 x i8]
@olang_loc_919120fb9e46bed9_9145256340cf48d = external constant [0 x i8]
@olang_loc_6e9c200a4ae12bfa_506dc59c2cdd99de = external constant [0 x i8]
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etypeKeeps(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumPuts(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumKeeps(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eletBody(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
@olang_loc_1a9ca456c0fc4f74_b6b9f556459eb628 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewOrConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_2a6344a0ea169f03_937c8368e559d747 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_61c41c23c6ba3b82_8b9b0b538ad52716 = external constant [0 x i8]
@olang_loc_b9c5758278fbc269_f38d2c0a467d6fd = external constant [0 x i8]
@olang_loc_8672b56b87660cf0_1560bce2a415882c = external constant [0 x i8]
@olang_loc_e498d93abb20b61c_9a7977ea577c2990 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i1 @compiler_2fscope_2eisNameChar(i8 %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a9ed640346de181b_d10bb16716ed4607 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsAt(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_da3e82aad0dc20bd_21e51e34c917c3d9 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOfOwn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_178b2bff302b55ae_896b4874215d5e1a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_98dfeaa5663cde63_8f6c693e4f6dac2f = external constant [0 x i8]
@olang_loc_50915285e3e59b40_32eaccc11482b3ec = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePartKept(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltOK(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_eb55abbe133e6e93_c0f65549c24d0e87 = external constant [0 x i8]
@olang_loc_df6e824c4c3c9400_1b7b77180b6f5a3c = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
@olang_loc_817a5835fe39b09f_f2d313272c8945ab = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeLocal(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eretValue(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecsOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2emergeRecs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultTooShort(ptr %v0)
declare %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@olang_loc_e78903360621b090_3122ead72721c55c = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_6893cd7ebc906eef_5b1cc5281b0a804b = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnCaptureTooShort(ptr %v0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclauseBuilds(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3)
@olang_loc_13f804c0f75facd_7560a9ac77a32da9 = external constant [0 x i8]
@olang_loc_19e7888b9ded6be5_cbea83f8bb640751 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efindInto(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_e9bdb4d0fe7c1914_18007eac4987ca18 = external constant [0 x i8]
@olang_loc_a5b38bc8e2246423_334fa60605363c37 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efreshIntoUnknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, [2 x i64] } %a3)
@olang_loc_e1bbe67f5ab83fa2_6597018deaf47546 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultsDisagree(ptr %v0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplitPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5ed106e09cf871ae_6aa2a1ea4fff1912 = external constant [0 x i8]
@olang_loc_fa03405fe09f5155_c79a4d7cc2781d39 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitParam(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_97d72d6750b2b740_49ee20092c2cdc84 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitValue(ptr %v0)
@olang_loc_678c1874cb48a226_11ddf0dfb9c074ea = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailBuilt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare %"compiler/types:DtorWalk" @compiler_2ftypes_3aDtorWalk_2ector(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_947b7a568198717d_ce4e4092682dfe19 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethrough(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2, ptr %a3, i1 %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i1 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H2a2e2bb73cbe78787fa6ff6d095e1956(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H69e10a266f1cb5d26290bb9f760bc181(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, %"compiler/scope:rel" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRels(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, i64 %a5)
@olang_loc_a0aebb439496dd48_72f2a186105a9dbc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_fe020d14e9f70167_4a4a3d953174892b = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emarkAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTagUnknownScope(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_2d495d25c2f7bdb5_cee87077afe39dd9 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparts(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorTerms(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eversionsOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eClear_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eClear_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H15be18d2c94fd99617814228bf9d59fe(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb8a8915e0c6fdfa2e5a92011b8ae7ed6(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
@olang_loc_d1a27ddad0bf3bf0_98ce87b3b0335404 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare ptr @compiler_2fscope_2eunWidened(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_6eee1454e63e28f9_96cec8c94273ac0d = external constant [0 x i8]
@olang_loc_7623189fe73c6a28_ffaddce80d5b12dc = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Hcb6fae2338a785d6927a8587899f4e85(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H665b0c71977ef42adbc51fe96e6e85ee(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eLen_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:markRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eAt_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMarkOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2eLen_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:sumRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2eAt_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2esameSummary(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fscope_2esummaryDiff(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0)
@olang_loc_9690d433211325ad_66664a63f51f2601 = external constant [0 x i8]
@olang_loc_2a2623c0241079bd_7fca5a8bf54f4501 = external constant [0 x i8]
@olang_loc_efbd916e88210f2b_3c9d7e310fda5a0f = external constant [0 x i8]
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
