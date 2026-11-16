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
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/cabi:Way" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/lower:Clone" = type { { i64, [2 x i64] }, i64, { i64, [2 x i64] }, i32 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:RefsKept", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"compiler/typed:RefsKept" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, { i64, ptr }, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" = type { i64, i1 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
@G_2ecompiler_2femit_2eBigCloseMark = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2eBigCloseMark.k1 }>, align 8
@G_2ecompiler_2femit_2eBigCloseMark.k1 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\20\20\3B\6F\6C\61\6E\67\2E\62\69\67\63\6C\6F\73\65\0A" }>, align 8
@G_2ecompiler_2femit_2eHomeInst = constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2femit_2eHomeLoc = constant <{ [8 x i8] }> <{ [8 x i8] c"\FC\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2femit_2eHomeLocal = constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2femit_2eHomeShared = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2femit_2ePartSize = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\10\00\00\00\00\00" }>, align 8
@G_2ecompiler_2femit_2ePartSizeDev = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\08\00\00\00\00\00" }>, align 8
@G_2ecompiler_2femit_2ehexDigits = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2ehexDigits.k1 }>, align 8
@G_2ecompiler_2femit_2ehexDigits.k1 = internal global <{ [16 x i8] }> <{ [16 x i8] c"\30\31\32\33\34\35\36\37\38\39\41\42\43\44\45\46" }>, align 8
@G_2ecompiler_2femit_2emathExact = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [24 x i8] }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k1, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k2, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k3, [24 x i8] c"\09\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 64
@G_2ecompiler_2femit_2emathExact.k1 = internal global <{ [8 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [176 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k4, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k5, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k6, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k7, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k8, [16 x i8] c"\01\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k9, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k10, [16 x i8] c"\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k11, [16 x i8] c"\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathExact.k12, [176 x i8] c"\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2femit_2emathExact.k2 = internal global <{ [128 x i8] }> <{ [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\05\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2femit_2emathExact.k3 = internal global <{ [128 x i8] }> <{ [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\07\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\08\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\04\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\01\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2femit_2emathExact.k4 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\73\71\72\74" }>, align 8
@G_2ecompiler_2femit_2emathExact.k5 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\6C\6F\6F\72" }>, align 8
@G_2ecompiler_2femit_2emathExact.k6 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\63\65\69\6C" }>, align 8
@G_2ecompiler_2femit_2emathExact.k7 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\74\72\75\6E\63" }>, align 8
@G_2ecompiler_2femit_2emathExact.k8 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\72\6F\75\6E\64" }>, align 8
@G_2ecompiler_2femit_2emathExact.k9 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\72\6F\75\6E\64\65\76\65\6E" }>, align 8
@G_2ecompiler_2femit_2emathExact.k10 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\66\61\62\73" }>, align 8
@G_2ecompiler_2femit_2emathExact.k11 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\63\6F\70\79\73\69\67\6E" }>, align 8
@G_2ecompiler_2femit_2emathExact.k12 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\66\6D\61" }>, align 8
@G_2ecompiler_2femit_2emathInexact = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [24 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k1, [8 x i8] c"\40\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k2, [8 x i8] c"\40\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k3, [24 x i8] c"\2C\00\00\00\00\00\00\00\2C\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 64
@G_2ecompiler_2femit_2emathInexact.k1 = internal global <{ [8 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [16 x i8], ptr, [488 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k4, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k5, [16 x i8] c"\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k6, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k7, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k8, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k9, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k10, [16 x i8] c"\01\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k11, [16 x i8] c"\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k12, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k13, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k14, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k15, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k16, [16 x i8] c"\01\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k17, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k18, [16 x i8] c"\01\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k19, [16 x i8] c"\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k20, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k21, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k22, [16 x i8] c"\01\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k23, [16 x i8] c"\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k24, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k25, [16 x i8] c"\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k26, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k27, [16 x i8] c"\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k28, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k29, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k30, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k31, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k32, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k33, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k34, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k35, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k36, [16 x i8] c"\01\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k37, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k38, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k39, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k40, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k41, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k42, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k43, [16 x i8] c"\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k44, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k45, [16 x i8] c"\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k46, [16 x i8] c"\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2emathInexact.k47, [488 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2femit_2emathInexact.k2 = internal global <{ [512 x i8] }> <{ [512 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\03\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\01\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\0C\00\00\00\00\00\00\00\0D\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\08\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\04\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\1C\00\00\00\00\00\00\00\1D\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\11\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2femit_2emathInexact.k3 = internal global <{ [512 x i8] }> <{ [512 x i8] c"\1B\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\27\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\02\00\00\00\00\00\00\00\2A\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0B\00\00\00\00\00\00\00\25\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\26\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\18\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00\1F\00\00\00\00\00\00\00\24\00\00\00\00\00\00\00\2B\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\1E\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\29\00\00\00\00\00\00\00\21\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\06\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\14\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\28\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\10\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\20\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\23\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\22\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2femit_2emathInexact.k4 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\63\62\72\74" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k5 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\63\62\72\74\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k6 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\65\78\70" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k7 = internal global <{ [4 x i8] }> <{ [4 x i8] c"\65\78\70\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k8 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\65\78\70\32" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k9 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\65\78\70\32\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k10 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\65\78\70\6D\31" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k11 = internal global <{ [6 x i8] }> <{ [6 x i8] c"\65\78\70\6D\31\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k12 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\6C\6F\67" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k13 = internal global <{ [4 x i8] }> <{ [4 x i8] c"\6C\6F\67\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k14 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6C\6F\67\32" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k15 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\6C\6F\67\32\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k16 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6C\6F\67\31\30" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k17 = internal global <{ [6 x i8] }> <{ [6 x i8] c"\6C\6F\67\31\30\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k18 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6C\6F\67\31\70" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k19 = internal global <{ [6 x i8] }> <{ [6 x i8] c"\6C\6F\67\31\70\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k20 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\70\6F\77" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k21 = internal global <{ [4 x i8] }> <{ [4 x i8] c"\70\6F\77\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k22 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\68\79\70\6F\74" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k23 = internal global <{ [6 x i8] }> <{ [6 x i8] c"\68\79\70\6F\74\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k24 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\73\69\6E" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k25 = internal global <{ [4 x i8] }> <{ [4 x i8] c"\73\69\6E\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k26 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\63\6F\73" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k27 = internal global <{ [4 x i8] }> <{ [4 x i8] c"\63\6F\73\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k28 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\74\61\6E" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k29 = internal global <{ [4 x i8] }> <{ [4 x i8] c"\74\61\6E\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k30 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\73\69\6E" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k31 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\61\73\69\6E\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k32 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\63\6F\73" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k33 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\61\63\6F\73\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k34 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\61\74\61\6E" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k35 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\61\74\61\6E\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k36 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\61\74\61\6E\32" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k37 = internal global <{ [6 x i8] }> <{ [6 x i8] c"\61\74\61\6E\32\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k38 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\73\69\6E\68" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k39 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\73\69\6E\68\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k40 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\63\6F\73\68" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k41 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\63\6F\73\68\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k42 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\61\6E\68" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k43 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\74\61\6E\68\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k44 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\65\72\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k45 = internal global <{ [4 x i8] }> <{ [4 x i8] c"\65\72\66\66" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k46 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\65\72\66\63" }>, align 8
@G_2ecompiler_2femit_2emathInexact.k47 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\65\72\66\63\66" }>, align 8
@G_2ecompiler_2femit_2etbaaElem = constant <{ [120 x i8] }> <{ [120 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1F\00\00\00\00\00\00\00\51\00\00\00\00\00\00\00\52\00\00\00\00\00\00\00\21\00\00\00\00\00\00\00\22\00\00\00\00\00\00\00\20\00\00\00\00\00\00\00\53\00\00\00\00\00\00\00\54\00\00\00\00\00\00\00\55\00\00\00\00\00\00\00\56\00\00\00\00\00\00\00\57\00\00\00\00\00\00\00\23\00\00\00\00\00\00\00\24\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2femit_2etbaaField = constant <{ [120 x i8] }> <{ [120 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\3D\00\00\00\00\00\00\00\3E\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\3F\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\41\00\00\00\00\00\00\00\42\00\00\00\00\00\00\00\43\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2femit_2etbaaName = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k1, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k2, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k3, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k4, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k5, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k6, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k7, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k8, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k9, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k10, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k13, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k14, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaName.k15 }>, align 64
@G_2ecompiler_2femit_2etbaaName.k1 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2femit_2etbaaName.k2 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2femit_2etbaaName.k3 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\62\6F\6F\6C" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k4 = internal constant <{ [2 x i8] }> <{ [2 x i8] c"\69\38" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k5 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\69\31\36" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k6 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\69\6E\74\33\32" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k7 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\69\6E\74\36\34" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k8 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\62\79\74\65" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k9 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\75\31\36" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k10 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\75\33\32" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k11 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\75\36\34" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k12 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\66\31\36" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k13 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\62\66\31\36" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k14 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\66\6C\6F\61\74\33\32" }>, align 8
@G_2ecompiler_2femit_2etbaaName.k15 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\66\6C\6F\61\74\36\34" }>, align 8
@G_2ecompiler_2femit_2etbaaTree = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\69\07\00\00\00\00\00\00", ptr @G_2ecompiler_2femit_2etbaaTree.k1 }>, align 8
@G_2ecompiler_2femit_2etbaaTree.k1 = internal constant <{ [1897 x i8] }> <{ [1897 x i8] c"\0A\21\32\30\20\3D\20\21\7B\21\22\6F\6C\61\6E\67\22\7D\0A\21\39\39\20\3D\20\21\7B\21\22\62\72\61\6E\63\68\5F\77\65\69\67\68\74\73\22\2C\20\69\33\32\20\31\2C\20\69\33\32\20\32\30\30\30\7D\0A\21\34\39\20\3D\20\21\7B\21\22\73\63\6F\70\65\68\64\72\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\35\30\20\3D\20\21\7B\21\22\63\68\75\6E\6B\68\64\72\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\35\39\20\3D\20\21\7B\21\34\39\2C\20\21\34\39\2C\20\69\36\34\20\30\7D\0A\21\36\30\20\3D\20\21\7B\21\35\30\2C\20\21\35\30\2C\20\69\36\34\20\30\7D\0A\21\31\37\20\3D\20\21\7B\21\22\61\72\72\61\79\64\65\73\63\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\31\38\20\3D\20\21\7B\21\22\63\6C\6F\73\75\72\65\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\34\37\20\3D\20\21\7B\21\22\61\72\72\61\79\64\65\73\63\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\31\39\20\3D\20\21\7B\21\22\72\65\66\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\34\38\20\3D\20\21\7B\21\22\72\65\66\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\32\39\20\3D\20\21\7B\21\31\39\2C\20\21\31\39\2C\20\69\36\34\20\30\7D\0A\21\33\39\20\3D\20\21\7B\21\34\38\2C\20\21\34\38\2C\20\69\36\34\20\30\7D\0A\21\32\37\20\3D\20\21\7B\21\31\37\2C\20\21\31\37\2C\20\69\36\34\20\30\7D\0A\21\32\38\20\3D\20\21\7B\21\31\38\2C\20\21\31\38\2C\20\69\36\34\20\30\7D\0A\21\33\37\20\3D\20\21\7B\21\34\37\2C\20\21\34\37\2C\20\69\36\34\20\30\7D\0A\21\31\31\20\3D\20\21\7B\21\22\62\6F\6F\6C\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\32\31\20\3D\20\21\7B\21\31\31\2C\20\21\31\31\2C\20\69\36\34\20\30\7D\0A\21\34\31\20\3D\20\21\7B\21\22\62\6F\6F\6C\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\33\31\20\3D\20\21\7B\21\34\31\2C\20\21\34\31\2C\20\69\36\34\20\30\7D\0A\21\35\31\20\3D\20\21\7B\21\22\69\38\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\36\31\20\3D\20\21\7B\21\35\31\2C\20\21\35\31\2C\20\69\36\34\20\30\7D\0A\21\39\31\20\3D\20\21\7B\21\22\69\38\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\38\31\20\3D\20\21\7B\21\39\31\2C\20\21\39\31\2C\20\69\36\34\20\30\7D\0A\21\35\32\20\3D\20\21\7B\21\22\69\31\36\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\36\32\20\3D\20\21\7B\21\35\32\2C\20\21\35\32\2C\20\69\36\34\20\30\7D\0A\21\39\32\20\3D\20\21\7B\21\22\69\31\36\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\38\32\20\3D\20\21\7B\21\39\32\2C\20\21\39\32\2C\20\69\36\34\20\30\7D\0A\21\31\33\20\3D\20\21\7B\21\22\69\6E\74\33\32\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\32\33\20\3D\20\21\7B\21\31\33\2C\20\21\31\33\2C\20\69\36\34\20\30\7D\0A\21\34\33\20\3D\20\21\7B\21\22\69\6E\74\33\32\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\33\33\20\3D\20\21\7B\21\34\33\2C\20\21\34\33\2C\20\69\36\34\20\30\7D\0A\21\31\34\20\3D\20\21\7B\21\22\69\6E\74\36\34\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\32\34\20\3D\20\21\7B\21\31\34\2C\20\21\31\34\2C\20\69\36\34\20\30\7D\0A\21\34\34\20\3D\20\21\7B\21\22\69\6E\74\36\34\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\33\34\20\3D\20\21\7B\21\34\34\2C\20\21\34\34\2C\20\69\36\34\20\30\7D\0A\21\31\32\20\3D\20\21\7B\21\22\62\79\74\65\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\32\32\20\3D\20\21\7B\21\31\32\2C\20\21\31\32\2C\20\69\36\34\20\30\7D\0A\21\34\32\20\3D\20\21\7B\21\22\62\79\74\65\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\33\32\20\3D\20\21\7B\21\34\32\2C\20\21\34\32\2C\20\69\36\34\20\30\7D\0A\21\35\33\20\3D\20\21\7B\21\22\75\31\36\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\36\33\20\3D\20\21\7B\21\35\33\2C\20\21\35\33\2C\20\69\36\34\20\30\7D\0A\21\39\33\20\3D\20\21\7B\21\22\75\31\36\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\38\33\20\3D\20\21\7B\21\39\33\2C\20\21\39\33\2C\20\69\36\34\20\30\7D\0A\21\35\34\20\3D\20\21\7B\21\22\75\33\32\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\36\34\20\3D\20\21\7B\21\35\34\2C\20\21\35\34\2C\20\69\36\34\20\30\7D\0A\21\39\34\20\3D\20\21\7B\21\22\75\33\32\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\38\34\20\3D\20\21\7B\21\39\34\2C\20\21\39\34\2C\20\69\36\34\20\30\7D\0A\21\35\35\20\3D\20\21\7B\21\22\75\36\34\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\36\35\20\3D\20\21\7B\21\35\35\2C\20\21\35\35\2C\20\69\36\34\20\30\7D\0A\21\39\35\20\3D\20\21\7B\21\22\75\36\34\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\38\35\20\3D\20\21\7B\21\39\35\2C\20\21\39\35\2C\20\69\36\34\20\30\7D\0A\21\35\36\20\3D\20\21\7B\21\22\66\31\36\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\36\36\20\3D\20\21\7B\21\35\36\2C\20\21\35\36\2C\20\69\36\34\20\30\7D\0A\21\39\36\20\3D\20\21\7B\21\22\66\31\36\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\38\36\20\3D\20\21\7B\21\39\36\2C\20\21\39\36\2C\20\69\36\34\20\30\7D\0A\21\35\37\20\3D\20\21\7B\21\22\62\66\31\36\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\36\37\20\3D\20\21\7B\21\35\37\2C\20\21\35\37\2C\20\69\36\34\20\30\7D\0A\21\39\37\20\3D\20\21\7B\21\22\62\66\31\36\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\38\37\20\3D\20\21\7B\21\39\37\2C\20\21\39\37\2C\20\69\36\34\20\30\7D\0A\21\31\35\20\3D\20\21\7B\21\22\66\6C\6F\61\74\33\32\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\32\35\20\3D\20\21\7B\21\31\35\2C\20\21\31\35\2C\20\69\36\34\20\30\7D\0A\21\34\35\20\3D\20\21\7B\21\22\66\6C\6F\61\74\33\32\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\33\35\20\3D\20\21\7B\21\34\35\2C\20\21\34\35\2C\20\69\36\34\20\30\7D\0A\21\31\36\20\3D\20\21\7B\21\22\66\6C\6F\61\74\36\34\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\32\36\20\3D\20\21\7B\21\31\36\2C\20\21\31\36\2C\20\69\36\34\20\30\7D\0A\21\34\36\20\3D\20\21\7B\21\22\66\6C\6F\61\74\36\34\5B\5D\22\2C\20\21\32\30\2C\20\69\36\34\20\30\7D\0A\21\33\36\20\3D\20\21\7B\21\34\36\2C\20\21\34\36\2C\20\69\36\34\20\30\7D\0A\0A" }>, align 64
define dso_local i64 @compiler_2femit_2ebmaskOf(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sge i64 %t1, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr %l0, !tbaa !24
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = shl i64 1, %t7
  %t10 = sub i64 %t8, 1
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t12 = load i64, ptr %l3, !tbaa !24
  store i64 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eabiDiffers(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l16 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i32
  %l24 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = inttoptr i64 0 to ptr
  %t12 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t9, ptr %t6, i32 %t7)
  store { i64, ptr } %t12, ptr %l9
  br label %bb1
bb1:
  %t13 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  %t15 = extractvalue { i64, ptr } %t13, 1
  %t16 = mul i64 %t14, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @llvm.memcpy.p0.p0.i64(ptr %t17, ptr %t15, i64 %t16, i1 false)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l10, !tbaa !27
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t23 = inttoptr i64 0 to ptr
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t23, ptr %t20, i32 %t21)
  store { i64, ptr } %t26, ptr %l14
  br label %bb2
bb2:
  %t27 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  %t29 = extractvalue { i64, ptr } %t27, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t34, { i64, ptr } %t33)
  store i1 %t36, ptr %l16
  br label %bb3
bb3:
  %t37 = load i1, ptr %l16, !tbaa !21
  %t38 = xor i1 %t37, true
  br i1 %t38, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb8
bb5:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l21
  br label %bb6
bb6:
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t46 = load i32, ptr %l2, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l24
  br label %bb7
bb7:
  %t50 = load i32, ptr %l21, !tbaa !23
  %t51 = load i32, ptr %l24, !tbaa !23
  %t52 = icmp ne i32 %t50, %t51
  store i1 %t52, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load i1, ptr %l18, !tbaa !21
  store i1 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eadapter(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %lp3 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l11 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t3 = load i32, ptr %l2, !tbaa !23
  %t7 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eadaptKey(ptr %v0, ptr %v1, ptr %t1, i32 %t2, i32 %t3)
  store { i64, ptr } %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t8, ptr %lp3
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t10 = load ptr, ptr %lp3
  store { i64, ptr } %t9, ptr %t10, !tbaa !27
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:Emitter", ptr %t11, i32 0, i32 36
  %t14 = load ptr, ptr %lp3
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t18 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %t13, { i64, ptr } %t15)
  store i1 %t18, ptr %l11
  br label %bb2
bb2:
  %t19 = load i1, ptr %l11, !tbaa !21
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t20 = load ptr, ptr %lp3
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/emit:Emitter", ptr %t23, i32 0, i32 36
  store ptr %t25, ptr %l14, !tbaa !29
  %t26 = ptrtoint ptr %v0 to i64
  store i64 %t26, ptr %l15, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = call ptr @__olang_region_make(ptr %v0)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t31 = load ptr, ptr %lp3
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 1
  %t35 = extractvalue { i64, ptr } %t32, 0
  %t36 = load i64, ptr %l15
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = call ptr @__olang_scope_alloc(ptr %t37, i64 %t35)
  call void @olang_textcopy(ptr %t38, ptr %t34, i64 %t35)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t42 = load i64, ptr %l15
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = extractvalue { i64, ptr } %t40, 0
  %t45 = extractvalue { i64, ptr } %t40, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %t43, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t50 = load ptr, ptr %l14, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v0, ptr %t50, { i64, ptr } %t49, i1 true)
  br label %bb8
bb8:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/emit:Emitter", ptr %t52, i32 0, i32 34
  %t55 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t54, i32 %t55)
  br label %bb9
bb9:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/emit:Emitter", ptr %t58, i32 0, i32 35
  %t61 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t60, i32 %t61)
  br label %bb10
bb10:
  %t64 = load ptr, ptr %lp3
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eassemble(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, i1 %a2, i64 %a3, i64 %a4, ptr %a5, i64 %a6, ptr %a7, i64 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca %"std/prelude/text:StringBuilder"
  %l26 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l29 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca i1
  %l31 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l32 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l33 = alloca i64
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca %"std/prelude/text:StringBuilder"
  %l52 = alloca ptr
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l56 = alloca ptr
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca i64
  %l80 = alloca i64
  %l83 = alloca i64
  %l104 = alloca i64
  %l108 = alloca i1
  %l110 = alloca i1
  %l114 = alloca i1
  %l117 = alloca i1
  %l120 = alloca i64
  %l123 = alloca i1
  %l126 = alloca i1
  %l129 = alloca i64
  %l132 = alloca i1
  %l136 = alloca i64
  %l146 = alloca { i64, ptr }
  %l150 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l151 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l159 = alloca { i64, ptr }
  %l168 = alloca %"std/prelude/text:StringBuilder"
  %l169 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l171 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l172 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l174 = alloca i1
  %l178 = alloca i1
  %l181 = alloca i64
  %l186 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l187 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l189 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l190 = alloca i32
  %l192 = alloca i1
  %l193 = alloca ptr
  %l194 = alloca i64
  %l195 = alloca i64
  %l200 = alloca { i64, ptr }
  %l203 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l204 = alloca i64
  %l206 = alloca i64
  %l211 = alloca i64
  %l215 = alloca i1
  %l219 = alloca i1
  %l220 = alloca i64
  %l224 = alloca i64
  %l225 = alloca i32
  %l229 = alloca i1
  %l233 = alloca { i64, ptr }
  %l234 = alloca ptr
  %l235 = alloca i64
  %l236 = alloca i64
  %l247 = alloca i1
  %l249 = alloca i1
  %l252 = alloca i1
  %l256 = alloca ptr
  %l260 = alloca { i64, ptr }
  %l261 = alloca ptr
  %l265 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l274 = alloca { i64, ptr }
  %l280 = alloca i64
  %l283 = alloca i64
  %l301 = alloca { i64, ptr }
  %l302 = alloca { i64, ptr }
  %l305 = alloca i64
  %l306 = alloca { i64, ptr }
  %l309 = alloca i64
  %l310 = alloca i64
  %l315 = alloca { i64, ptr }
  %l319 = alloca i64
  %l323 = alloca i64
  %l324 = alloca i32
  %l327 = alloca i1
  %l330 = alloca i1
  %l338 = alloca i64
  %l340 = alloca i1
  %l343 = alloca i64
  %l347 = alloca i64
  %l348 = alloca i32
  %l352 = alloca i1
  %l355 = alloca i1
  %l356 = alloca i1
  %l359 = alloca i1
  %l363 = alloca i64
  %l367 = alloca i1
  %l378 = alloca ptr
  %l379 = alloca i64
  %l380 = alloca i64
  %l385 = alloca { i64, ptr }
  %l386 = alloca { i64, ptr }
  %l394 = alloca ptr
  %l398 = alloca { i64, ptr }
  %l399 = alloca ptr
  %l403 = alloca { i64, ptr }
  %l409 = alloca i1
  %l413 = alloca ptr
  %l414 = alloca i64
  %l419 = alloca { i64, ptr }
  %l425 = alloca i1
  %l433 = alloca %"std/prelude/text:StringBuilder"
  %l434 = alloca ptr
  %l436 = alloca { i64, ptr }
  %l442 = alloca i64
  %l444 = alloca i64
  %l449 = alloca i64
  %l450 = alloca ptr
  %l454 = alloca { i64, ptr }
  %l457 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l459 = alloca i64
  %l461 = alloca i64
  %l466 = alloca i64
  %l468 = alloca i1
  %l472 = alloca i1
  %l473 = alloca i64
  %l477 = alloca i64
  %l478 = alloca i32
  %l482 = alloca i1
  %l484 = alloca ptr
  %l485 = alloca { i64, ptr }
  %l488 = alloca { i64, ptr }
  %l489 = alloca i32
  %l490 = alloca { i64, ptr }
  %l494 = alloca { i64, ptr }
  %l495 = alloca i32
  %l496 = alloca ptr
  %l500 = alloca { i64, ptr }
  %l501 = alloca { i64, ptr }
  %l505 = alloca { i64, ptr }
  %l511 = alloca { i64, ptr }
  %l513 = alloca i64
  %l515 = alloca i1
  %l517 = alloca i1
  %l523 = alloca { i64, ptr }
  %l529 = alloca i64
  %l532 = alloca i64
  %l550 = alloca { i64, ptr }
  %l554 = alloca i64
  %l555 = alloca { i64, ptr }
  %l556 = alloca { i64, ptr }
  %l560 = alloca i64
  %l561 = alloca { i64, ptr }
  %l564 = alloca i64
  %l565 = alloca i64
  %l569 = alloca { i64, ptr }
  %l570 = alloca i64
  %l571 = alloca i32
  %l572 = alloca i64
  %l573 = alloca i32
  %l576 = alloca ptr
  %l577 = alloca { i64, ptr }
  %l578 = alloca i64
  %l579 = alloca { i64, ptr }
  %l582 = alloca i64
  %l583 = alloca i64
  %l588 = alloca ptr
  %l591 = alloca i64
  %l594 = alloca { i64, ptr }
  %l598 = alloca { i64, ptr }
  %l602 = alloca { i64, ptr }
  %l603 = alloca { i64, ptr }
  %l606 = alloca i64
  %l607 = alloca { i64, ptr }
  %l610 = alloca i64
  %l611 = alloca i64
  %l618 = alloca i64
  %l621 = alloca i1
  %l624 = alloca i1
  %l626 = alloca ptr
  %l627 = alloca { i64, ptr }
  %l628 = alloca i64
  %l629 = alloca { i64, ptr }
  %l632 = alloca i64
  %l633 = alloca i64
  %l638 = alloca ptr
  %l639 = alloca { i64, ptr }
  %l642 = alloca { i64, ptr }
  %l643 = alloca i32
  %l644 = alloca ptr
  %l645 = alloca { i64, ptr }
  %l649 = alloca { i64, ptr }
  %l650 = alloca i64
  %l653 = alloca i64
  %l654 = alloca i64
  %l659 = alloca { i64, ptr }
  %l665 = alloca ptr
  %l666 = alloca { i64, ptr }
  %l667 = alloca i64
  %l670 = alloca i64
  %l671 = alloca i64
  %l678 = alloca ptr
  %l680 = alloca { i64, ptr }
  %l685 = alloca i1
  %l689 = alloca i1
  %l690 = alloca ptr
  %l694 = alloca i64
  %l695 = alloca { i64, ptr }
  %l697 = alloca ptr
  %l699 = alloca { i64, ptr }
  %l702 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t142 = alloca { ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  store ptr %a5, ptr %l5
  store i64 %a6, ptr %l6
  store ptr %a7, ptr %l7
  store i64 %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l73
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/emit:Emitter", ptr %t3, i32 0, i32 19
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l76
  br label %bb2
bb2:
  %t8 = load i64, ptr %l76, !tbaa !24
  store i64 %t8, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t9 = load i64, ptr %l11, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l12, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb8
bb5:
  %t19 = load i64, ptr %l11, !tbaa !24
  %t20 = load i64, ptr %l10, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l12, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l12, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l83, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l83, !tbaa !24
  store i64 %t35, ptr %l80, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l80, !tbaa !24
  store i64 %t36, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l14, !tbaa !24
  %t38 = load i64, ptr %l13, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  br label %bb43
bb11:
  br label %bb12
bb12:
  %t45 = load i64, ptr %l10, !tbaa !24
  %t46 = load i64, ptr %l14, !tbaa !24
  %t47 = load i64, ptr %l12, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l15, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/emit:Emitter", ptr %t55, i32 0, i32 21
  %t58 = load i64, ptr %l15, !tbaa !24
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t57, i64 %t58)
  store i64 %t61, ptr %l104
  br label %bb13
bb13:
  %t62 = load i64, ptr %l104, !tbaa !24
  store i64 %t62, ptr %l16, !tbaa !24
  %t63 = load i64, ptr %l16, !tbaa !24
  %t64 = load i64, ptr %l1, !tbaa !24
  %t67 = icmp eq i64 %t63, %t64
  br i1 %t67, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb19
bb15:
  %t69 = load i1, ptr %l2, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  %t71 = load i64, ptr %l16, !tbaa !24
  %t72 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t75 = icmp eq i64 %t71, %t72
  store i1 %t75, ptr %l110, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb18
bb18:
  %t77 = load i1, ptr %l110, !tbaa !21
  store i1 %t77, ptr %l108, !tbaa !21
  br label %bb19
bb19:
  %t78 = load i1, ptr %l108, !tbaa !21
  br i1 %t78, label %bb20, label %bb21
bb20:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t81 = icmp slt i64 %t79, 0
  br i1 %t81, label %bb22, label %bb23
bb21:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb26
bb22:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb25
bb23:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l15, !tbaa !24
  %t87 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupOf(ptr %v0, ptr %t83, i64 %t84)
  store i64 %t87, ptr %l120
  br label %bb24
bb24:
  %t88 = load i64, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l120, !tbaa !24
  %t91 = icmp eq i64 %t89, %t88
  store i1 %t91, ptr %l117, !tbaa !21
  br label %bb25
bb25:
  %t93 = load i1, ptr %l117, !tbaa !21
  store i1 %t93, ptr %l114, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l114, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load i64, ptr %l8, !tbaa !24
  %t97 = icmp slt i64 %t95, 0
  br i1 %t97, label %bb29, label %bb30
bb28:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb33
bb29:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb32
bb30:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i64, ptr %l15, !tbaa !24
  %t103 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstGroupOf(ptr %v0, ptr %t99, i64 %t100)
  store i64 %t103, ptr %l129
  br label %bb31
bb31:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load i64, ptr %l129, !tbaa !24
  %t107 = icmp eq i64 %t105, %t104
  store i1 %t107, ptr %l126, !tbaa !21
  br label %bb32
bb32:
  %t109 = load i1, ptr %l126, !tbaa !21
  store i1 %t109, ptr %l123, !tbaa !21
  br label %bb33
bb33:
  %t110 = load i1, ptr %l123, !tbaa !21
  br i1 %t110, label %bb34, label %bb35
bb34:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i64, ptr %l15, !tbaa !24
  %t117 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epartOf(ptr %v0, ptr %t111, i64 %t112, i64 %a4)
  store i64 %t117, ptr %l136
  br label %bb36
bb35:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb37
bb36:
  %t119 = load i64, ptr %l136, !tbaa !24
  %t121 = icmp eq i64 %t119, %a3
  store i1 %t121, ptr %l132, !tbaa !21
  br label %bb37
bb37:
  %t123 = load i1, ptr %l132, !tbaa !21
  br i1 %t123, label %bb38, label %bb39
bb38:
  %t124 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t124)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t127 = load i64, ptr %l14, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l14, !tbaa !24
  br label %bb9
bb43:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/emit:Emitter", ptr %t131, i32 0, i32 19
  store ptr %t133, ptr %l17, !tbaa !29
  %t136 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l9)
  store { i64, ptr } %t136, ptr %l146
  br label %bb44
bb44:
  %t137 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } %t137, ptr %l18, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t139 = load ptr, ptr %l17, !tbaa !29
  %t140 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t141 = ptrtoint ptr %t140 to i64
  %t143 = getelementptr { ptr, ptr }, ptr %t142, i32 0, i32 0
  store ptr %t139, ptr %t143, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t145 = getelementptr { ptr, ptr }, ptr %t142, i32 0, i32 1
  store ptr %v0, ptr %t145, !tbaa !28
  %t146 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t147 = insertvalue { ptr, ptr } %t146, ptr %t142, 1
  %t150 = extractvalue { ptr, ptr } %t147, 0
  %t151 = extractvalue { ptr, ptr } %t147, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, { i64, ptr } %t138, ptr %t150, ptr %t151)
  br label %bb45
bb45:
  %t152 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %l150
  br label %bb46
bb46:
  %t153 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l150
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l19
  %t154 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t154, ptr %l151
  br label %bb47
bb47:
  %t155 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t155, ptr %l20
  %t156 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t156, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  store i64 %t160, ptr %l23, !tbaa !24
  br label %bb48
bb48:
  %t162 = load i64, ptr %l22, !tbaa !24
  %t163 = load i64, ptr %l23, !tbaa !24
  %t166 = icmp slt i64 %t162, %t163
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb49, label %bb50
bb49:
  br label %bb55
bb50:
  br label %bb51
bb51:
  %t170 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t170, ptr %l159, !tbaa !27
  %t171 = load i64, ptr %l22, !tbaa !24
  %t173 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr i64, ptr %t174, i64 %t171
  %t176 = load i64, ptr %t175, !tbaa !34
  store i64 %t176, ptr %l24, !tbaa !24
  %t178 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l19, i64 %t178)
  br label %bb52
bb52:
  %t181 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l20, i64 %t181, i1 true)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t184 = load i64, ptr %l22, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l22, !tbaa !24
  br label %bb48
bb55:
  %t188 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t188, ptr %l168
  br label %bb56
bb56:
  %t189 = load %"std/prelude/text:StringBuilder", ptr %l168
  store %"std/prelude/text:StringBuilder" %t189, ptr %l25
  %t190 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t190, ptr %l169
  br label %bb57
bb57:
  %t191 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l169
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t191, ptr %l26
  %t192 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t192, ptr %l170
  br label %bb58
bb58:
  %t193 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t193, ptr %l27
  %t194 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t194, ptr %l171
  br label %bb59
bb59:
  %t195 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l171
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t195, ptr %l28
  %t196 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t196, ptr %l172
  br label %bb60
bb60:
  %t197 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l172
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t197, ptr %l29
  %t198 = load i1, ptr %l2, !tbaa !21
  br i1 %t198, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb63
bb62:
  %t200 = load i64, ptr %l1, !tbaa !24
  %t201 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t204 = icmp eq i64 %t200, %t201
  store i1 %t204, ptr %l174, !tbaa !21
  br label %bb63
bb63:
  %t206 = load i1, ptr %l174, !tbaa !21
  br i1 %t206, label %bb64, label %bb65
bb64:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/emit:Emitter", ptr %t207, i32 0, i32 79
  %t211 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %t209)
  store i64 %t211, ptr %l181
  br label %bb66
bb65:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb67
bb66:
  %t212 = load i64, ptr %l181, !tbaa !24
  %t213 = icmp sgt i64 %t212, 0
  store i1 %t213, ptr %l178, !tbaa !21
  br label %bb67
bb67:
  %t215 = load i1, ptr %l178, !tbaa !21
  store i1 %t215, ptr %l30, !tbaa !21
  %t216 = load i1, ptr %l30, !tbaa !21
  br i1 %t216, label %bb68, label %bb69
bb68:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/emit:Emitter", ptr %t218, i32 0, i32 79
  %t222 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t220)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t222, ptr %l186
  br label %bb70
bb69:
  br label %bb82
bb70:
  %t223 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l186
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t223, ptr %l31
  br label %bb71
bb71:
  store %olang.scope zeroinitializer, ptr %s10
  %t225 = call { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %l31)
  %t226 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t225, 1
  %t227 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t225, 0
  store i32 %t227, ptr %l190
  %t228 = icmp ne i32 %t227, 0
  br i1 %t228, label %bb73, label %ok.229, !prof !99
ok.229:
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t226, ptr %l189
  br label %bb72
bb72:
  %t230 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l189
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t230, ptr %l187
  br label %bb75
bb73:
  %t231 = load i32, ptr %l190, !tbaa !23
  %t232 = ashr i32 %t231, 16
  %t234 = icmp eq i32 %t232, 1
  store i1 %t234, ptr %l192, !tbaa !21
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s10)
  br label %bb81
bb75:
  %t235 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l187
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t235, ptr %l32
  store ptr %l29, ptr %l193, !tbaa !29
  %t236 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l32, i32 0, i32 0
  %t237 = load i64, ptr %t236, !tbaa !24
  store i64 %t237, ptr %l194, !tbaa !24
  %t238 = ptrtoint ptr %s0 to i64
  store i64 %t238, ptr %l195, !tbaa !24
  %t239 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1
  br i1 %t239, label %bb76, label %bb77
bb76:
  %t241 = call ptr @__olang_region_make(ptr %s0)
  %t242 = ptrtoint ptr %t241 to i64
  store i64 %t242, ptr %l195, !tbaa !24
  br label %bb77
bb77:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/emit:Emitter", ptr %t243, i32 0, i32 19
  %t246 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l32, i32 0, i32 1
  %t247 = load i64, ptr %t246, !tbaa !24
  %t250 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s10, ptr %t245, i64 %t247)
  store { i64, ptr } %t250, ptr %l200
  br label %bb78
bb78:
  %t251 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 1
  %t253 = extractvalue { i64, ptr } %t251, 0
  %t254 = load i64, ptr %l195
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = call ptr @__olang_scope_alloc(ptr %t255, i64 %t253)
  call void @olang_textcopy(ptr %t256, ptr %t252, i64 %t253)
  %t257 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t256, 1
  %t260 = load i64, ptr %l195
  %t261 = inttoptr i64 %t260 to ptr
  %t262 = extractvalue { i64, ptr } %t258, 0
  %t263 = extractvalue { i64, ptr } %t258, 1
  %t264 = mul i64 %t262, 1
  %t265 = call ptr @__olang_scope_alloc(ptr %t261, i64 %t264)
  call void @llvm.memcpy.p0.p0.i64(ptr %t265, ptr %t263, i64 %t264, i1 false)
  %t266 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t265, 1
  %t268 = load ptr, ptr %l193, !tbaa !29
  %t269 = load i64, ptr %l194, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %s0, ptr %s0, ptr %t268, i64 %t269, { i64, ptr } %t267)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s10)
  br label %bb80
bb80:
  br label %bb71
bb81:
  br label %bb82
bb82:
  store i64 0, ptr %l33, !tbaa !24
  %t271 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t271, ptr %l203
  br label %bb83
bb83:
  %t272 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l203
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t272, ptr %l34
  store i64 0, ptr %l35, !tbaa !24
  br label %bb84
bb84:
  %t273 = load i64, ptr %l35, !tbaa !24
  store i64 %t273, ptr %l204, !tbaa !24
  %t275 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l19)
  store i64 %t275, ptr %l206
  br label %bb85
bb85:
  %t276 = load i64, ptr %l204, !tbaa !24
  %t277 = load i64, ptr %l206, !tbaa !24
  %t278 = icmp slt i64 %t276, %t277
  %t280 = xor i1 %t278, true
  br i1 %t280, label %bb86, label %bb87
bb86:
  br label %bb220
bb87:
  br label %bb88
bb88:
  %t282 = load i64, ptr %l35, !tbaa !24
  %t285 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l19, i64 %t282)
  store i64 %t285, ptr %l211
  br label %bb89
bb89:
  %t286 = load i64, ptr %l211, !tbaa !24
  store i64 %t286, ptr %l36, !tbaa !24
  %t287 = load i64, ptr %l35, !tbaa !24
  %t289 = add i64 %t287, 1
  store i64 %t289, ptr %l35, !tbaa !24
  %t291 = load i1, ptr %l30, !tbaa !21
  br i1 %t291, label %bb90, label %bb91
bb90:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/emit:Emitter", ptr %t293, i32 0, i32 79
  %t296 = load i64, ptr %l36, !tbaa !24
  %t299 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t295, i64 %t296)
  store i1 %t299, ptr %l219
  br label %bb92
bb91:
  store i1 false, ptr %l215, !tbaa !21
  br label %bb93
bb92:
  %t300 = load i1, ptr %l219, !tbaa !21
  store i1 %t300, ptr %l215, !tbaa !21
  br label %bb93
bb93:
  %t301 = load i1, ptr %l215, !tbaa !21
  br i1 %t301, label %bb94, label %bb95
bb94:
  store %olang.scope zeroinitializer, ptr %s13
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/emit:Emitter", ptr %t302, i32 0, i32 79
  %t305 = load i64, ptr %l36, !tbaa !24
  %t308 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t304, i64 %t305)
  %t309 = extractvalue { i32, i64 } %t308, 1
  %t310 = extractvalue { i32, i64 } %t308, 0
  store i32 %t310, ptr %l225
  %t311 = icmp ne i32 %t310, 0
  br i1 %t311, label %bb97, label %ok.312, !prof !99
ok.312:
  store i64 %t309, ptr %l224
  br label %bb96
bb95:
  br label %bb122
bb96:
  %t313 = load i64, ptr %l224, !tbaa !24
  store i64 %t313, ptr %l220, !tbaa !24
  br label %bb99
bb97:
  br label %bb98
bb98:
  %t314 = load i64, ptr %l36, !tbaa !24
  store i64 %t314, ptr %l220, !tbaa !24
  br label %bb99
bb99:
  %t316 = load i64, ptr %l220, !tbaa !24
  store i64 %t316, ptr %l37, !tbaa !24
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load i64, ptr %l36, !tbaa !24
  %t321 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ealiased(ptr %v0, ptr %t317, i64 %t318)
  store i1 %t321, ptr %l229
  br label %bb100
bb100:
  %t322 = load i1, ptr %l229, !tbaa !21
  br i1 %t322, label %bb101, label %bb102
bb101:
  call void @__olang_scope_close(ptr %s13)
  br label %bb219
bb102:
  br label %bb103
bb103:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load i64, ptr %l36, !tbaa !24
  %t325 = load i64, ptr %l37, !tbaa !24
  %t329 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewrapper(ptr %v0, ptr %s13, ptr %t323, i64 %t324, i64 %t325)
  store { i64, ptr } %t329, ptr %l233
  br label %bb104
bb104:
  %t330 = load { i64, ptr }, ptr %l233, !tbaa !27
  store { i64, ptr } %t330, ptr %l38, !tbaa !27
  store ptr %l34, ptr %l234, !tbaa !29
  %t331 = load i64, ptr %l36, !tbaa !24
  store i64 %t331, ptr %l235, !tbaa !24
  %t332 = ptrtoint ptr %s0 to i64
  store i64 %t332, ptr %l236, !tbaa !24
  %t333 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1
  br i1 %t333, label %bb105, label %bb106
bb105:
  %t335 = call ptr @__olang_region_make(ptr %s0)
  %t336 = ptrtoint ptr %t335 to i64
  store i64 %t336, ptr %l236, !tbaa !24
  br label %bb106
bb106:
  %t337 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t339 = extractvalue { i64, ptr } %t337, 1
  %t340 = extractvalue { i64, ptr } %t337, 0
  %t341 = load i64, ptr %l236
  %t342 = inttoptr i64 %t341 to ptr
  %t343 = call ptr @__olang_scope_alloc(ptr %t342, i64 %t340)
  call void @olang_textcopy(ptr %t343, ptr %t339, i64 %t340)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  %t347 = load i64, ptr %l236
  %t348 = inttoptr i64 %t347 to ptr
  %t349 = extractvalue { i64, ptr } %t345, 0
  %t350 = extractvalue { i64, ptr } %t345, 1
  %t351 = mul i64 %t349, 1
  %t352 = call ptr @__olang_scope_alloc(ptr %t348, i64 %t351)
  call void @llvm.memcpy.p0.p0.i64(ptr %t352, ptr %t350, i64 %t351, i1 false)
  %t353 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t354 = insertvalue { i64, ptr } %t353, ptr %t352, 1
  %t355 = load ptr, ptr %l234, !tbaa !29
  %t356 = load i64, ptr %l235, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %s0, ptr %s0, ptr %t355, i64 %t356, { i64, ptr } %t354)
  br label %bb107
bb107:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load { i64, ptr }, ptr %l38, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypesNamedIn(ptr %v0, ptr %s13, ptr %s0, ptr %s0, ptr %t358, { i64, ptr } %t359, ptr %l27, ptr %l28)
  br label %bb108
bb108:
  %t364 = load i64, ptr %l37, !tbaa !24
  %t367 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l20, i64 %t364)
  store i1 %t367, ptr %l247
  br label %bb109
bb109:
  %t368 = load i1, ptr %l247, !tbaa !21
  %t369 = xor i1 %t368, true
  br i1 %t369, label %bb110, label %bb111
bb110:
  %t371 = load i64, ptr %l37, !tbaa !24
  %t374 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l26, i64 %t371)
  store i1 %t374, ptr %l252
  br label %bb112
bb111:
  store i1 false, ptr %l249, !tbaa !21
  br label %bb113
bb112:
  %t375 = load i1, ptr %l252, !tbaa !21
  %t376 = xor i1 %t375, true
  store i1 %t376, ptr %l249, !tbaa !21
  br label %bb113
bb113:
  %t378 = load i1, ptr %l249, !tbaa !21
  br i1 %t378, label %bb114, label %bb115
bb114:
  %t379 = load i64, ptr %l37, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l26, i64 %t379, i1 true)
  br label %bb116
bb115:
  br label %bb121
bb116:
  store ptr %l25, ptr %l256, !tbaa !29
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/emit:Emitter", ptr %t382, i32 0, i32 22
  %t385 = load i64, ptr %l37, !tbaa !24
  %t388 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t384, i64 %t385)
  store { i64, ptr } %t388, ptr %l260
  br label %bb117
bb117:
  %t389 = load ptr, ptr %l256, !tbaa !29
  %t390 = load { i64, ptr }, ptr %l260, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t389, { i64, ptr } %t390)
  br label %bb118
bb118:
  %t391 = load ptr, ptr %l0, !tbaa !29
  store ptr %t391, ptr %l261, !tbaa !29
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/emit:Emitter", ptr %t392, i32 0, i32 22
  %t395 = load i64, ptr %l37, !tbaa !24
  %t398 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t394, i64 %t395)
  store { i64, ptr } %t398, ptr %l265
  br label %bb119
bb119:
  %t399 = load ptr, ptr %l261, !tbaa !29
  %t400 = load { i64, ptr }, ptr %l265, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclTypes(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t399, { i64, ptr } %t400, ptr %l27, ptr %l28)
  br label %bb120
bb120:
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s13)
  br label %bb219
bb122:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/emit:Emitter", ptr %t403, i32 0, i32 20
  %t406 = load i64, ptr %l36, !tbaa !24
  %t409 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t405, i64 %t406)
  store { i64, ptr } %t409, ptr %l271
  br label %bb123
bb123:
  %t410 = load { i64, ptr }, ptr %l271, !tbaa !27
  store { i64, ptr } %t410, ptr %l39, !tbaa !27
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load i64, ptr %l36, !tbaa !24
  %t415 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erefs(ptr %v0, ptr %v0, ptr %t411, i64 %t412)
  store { i64, ptr } %t415, ptr %l274
  br label %bb124
bb124:
  %t416 = load { i64, ptr }, ptr %l274, !tbaa !27
  store { i64, ptr } %t416, ptr %l40, !tbaa !27
  store i64 0, ptr %l41, !tbaa !24
  %t417 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t417, 0
  store i64 %t419, ptr %l42, !tbaa !24
  store i64 3, ptr %l43, !tbaa !24
  %t421 = load i64, ptr %l42, !tbaa !24
  %t422 = load i64, ptr %l41, !tbaa !24
  %t425 = icmp sgt i64 %t421, %t422
  br i1 %t425, label %bb125, label %bb126
bb125:
  %t427 = load i64, ptr %l43, !tbaa !24
  %t429 = icmp sgt i64 %t427, 0
  br i1 %t429, label %bb127, label %bb128
bb126:
  store i64 0, ptr %l280, !tbaa !24
  br label %bb130
bb127:
  %t431 = load i64, ptr %l42, !tbaa !24
  %t432 = load i64, ptr %l41, !tbaa !24
  %t435 = sub i64 %t431, %t432
  %t436 = load i64, ptr %l43, !tbaa !24
  %t439 = add i64 %t435, %t436
  %t441 = sub i64 %t439, 1
  %t442 = load i64, ptr %l43, !tbaa !24
  %t445 = sdiv i64 %t441, %t442
  store i64 %t445, ptr %l283, !tbaa !24
  br label %bb129
bb128:
  store i64 0, ptr %l283, !tbaa !24
  br label %bb129
bb129:
  %t447 = load i64, ptr %l283, !tbaa !24
  store i64 %t447, ptr %l280, !tbaa !24
  br label %bb130
bb130:
  %t448 = load i64, ptr %l280, !tbaa !24
  store i64 %t448, ptr %l44, !tbaa !24
  store i64 0, ptr %l45, !tbaa !24
  br label %bb131
bb131:
  %t449 = load i64, ptr %l45, !tbaa !24
  %t450 = load i64, ptr %l44, !tbaa !24
  %t453 = icmp slt i64 %t449, %t450
  %t455 = xor i1 %t453, true
  br i1 %t455, label %bb132, label %bb133
bb132:
  br label %bb218
bb133:
  br label %bb134
bb134:
  %t457 = load i64, ptr %l41, !tbaa !24
  %t458 = load i64, ptr %l45, !tbaa !24
  %t459 = load i64, ptr %l43, !tbaa !24
  %t462 = mul i64 %t458, %t459
  %t465 = add i64 %t457, %t462
  store i64 %t465, ptr %l46, !tbaa !24
  %t467 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t467, ptr %l301, !tbaa !27
  %t468 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t468, ptr %l302, !tbaa !27
  %t469 = load i64, ptr %l46, !tbaa !24
  %t471 = add i64 %t469, 1
  %t473 = getelementptr { i64, ptr }, ptr %l302, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !27
  %t475 = getelementptr i64, ptr %t474, i64 %t471
  %t476 = load i64, ptr %t475, !tbaa !34
  store i64 %t476, ptr %l305, !tbaa !24
  %t477 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t477, ptr %l306, !tbaa !27
  %t478 = load i64, ptr %l46, !tbaa !24
  %t480 = add i64 %t478, 2
  %t482 = getelementptr { i64, ptr }, ptr %l306, i32 0, i32 1
  %t483 = load ptr, ptr %t482, !tbaa !27
  %t484 = getelementptr i64, ptr %t483, i64 %t480
  %t485 = load i64, ptr %t484, !tbaa !34
  store i64 %t485, ptr %l309, !tbaa !24
  %t486 = load { i64, ptr }, ptr %l301, !tbaa !27
  %t487 = extractvalue { i64, ptr } %t486, 0
  store i64 %t487, ptr %l310, !tbaa !24
  %t488 = load i64, ptr %l305, !tbaa !24
  %t489 = icmp sge i64 %t488, 0
  br i1 %t489, label %bb135, label %bb136
bb135:
  %t491 = load i64, ptr %l305, !tbaa !24
  %t492 = load i64, ptr %l309, !tbaa !24
  %t493 = icmp sle i64 %t491, %t492
  br i1 %t493, label %bb137, label %bb138
bb136:
  call void @__olang_check_failed(ptr @olang_loc_ad9436b5748221a9_385739db7a2b20ed)
  unreachable
bb137:
  %t495 = load i64, ptr %l309, !tbaa !24
  %t496 = load i64, ptr %l310, !tbaa !24
  %t497 = icmp sle i64 %t495, %t496
  br i1 %t497, label %bb139, label %bb140
bb138:
  call void @__olang_check_failed(ptr @olang_loc_ad9436b5748221a9_385739db7a2b20ed)
  unreachable
bb139:
  %t499 = getelementptr { i64, ptr }, ptr %l301, i32 0, i32 1
  %t500 = load ptr, ptr %t499, !tbaa !27
  %t501 = load i64, ptr %l305, !tbaa !24
  %t502 = load i64, ptr %l309, !tbaa !24
  %t503 = getelementptr i8, ptr %t500, i64 %t501
  %t504 = sub i64 %t502, %t501
  %t505 = insertvalue { i64, ptr } undef, i64 %t504, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr %t503, 1
  store { i64, ptr } %t506, ptr %l47, !tbaa !27
  %t508 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t508, ptr %l315, !tbaa !27
  %t509 = load i64, ptr %l46, !tbaa !24
  %t511 = getelementptr { i64, ptr }, ptr %l315, i32 0, i32 1
  %t512 = load ptr, ptr %t511, !tbaa !27
  %t513 = getelementptr i64, ptr %t512, i64 %t509
  %t514 = load i64, ptr %t513, !tbaa !34
  %t516 = icmp eq i64 %t514, 1
  br i1 %t516, label %bb141, label %bb142
bb140:
  call void @__olang_check_failed(ptr @olang_loc_ad9436b5748221a9_385739db7a2b20ed)
  unreachable
bb141:
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t520 = getelementptr %"compiler/emit:Emitter", ptr %t518, i32 0, i32 54
  %t521 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t524 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v0, ptr %t520, { i64, ptr } %t521)
  %t525 = extractvalue { i32, i64 } %t524, 1
  %t526 = extractvalue { i32, i64 } %t524, 0
  store i32 %t526, ptr %l324
  %t527 = icmp ne i32 %t526, 0
  br i1 %t527, label %bb144, label %ok.528, !prof !99
ok.528:
  store i64 %t525, ptr %l323
  br label %bb143
bb142:
  br label %bb155
bb143:
  %t529 = load i64, ptr %l323, !tbaa !24
  store i64 %t529, ptr %l319, !tbaa !24
  br label %bb146
bb144:
  br label %bb145
bb145:
  store i64 -1, ptr %l319, !tbaa !24
  br label %bb146
bb146:
  %t530 = load i64, ptr %l319, !tbaa !24
  store i64 %t530, ptr %l48, !tbaa !24
  %t531 = load i64, ptr %l48, !tbaa !24
  %t533 = icmp sge i64 %t531, 0
  br i1 %t533, label %bb147, label %bb148
bb147:
  %t535 = load i64, ptr %l48, !tbaa !24
  %t538 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l28, i64 %t535)
  store i1 %t538, ptr %l330
  br label %bb149
bb148:
  store i1 false, ptr %l327, !tbaa !21
  br label %bb150
bb149:
  %t539 = load i1, ptr %l330, !tbaa !21
  %t540 = xor i1 %t539, true
  store i1 %t540, ptr %l327, !tbaa !21
  br label %bb150
bb150:
  %t542 = load i1, ptr %l327, !tbaa !21
  br i1 %t542, label %bb151, label %bb152
bb151:
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load i64, ptr %l48, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewantType(ptr %v0, ptr %s0, ptr %s0, ptr %t543, i64 %t544, ptr %l27, ptr %l28)
  br label %bb153
bb152:
  br label %bb154
bb153:
  br label %bb154
bb154:
  br label %bb217
bb155:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t553 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitemNamed(ptr %v0, ptr %v0, ptr %t549, { i64, ptr } %t550)
  store i64 %t553, ptr %l338
  br label %bb156
bb156:
  %t554 = load i64, ptr %l338, !tbaa !24
  store i64 %t554, ptr %l49, !tbaa !24
  %t555 = load i1, ptr %l30, !tbaa !21
  br i1 %t555, label %bb157, label %bb158
bb157:
  %t557 = load i64, ptr %l49, !tbaa !24
  %t559 = icmp sge i64 %t557, 0
  store i1 %t559, ptr %l340, !tbaa !21
  br label %bb159
bb158:
  store i1 false, ptr %l340, !tbaa !21
  br label %bb159
bb159:
  %t561 = load i1, ptr %l340, !tbaa !21
  br i1 %t561, label %bb160, label %bb161
bb160:
  %t562 = load ptr, ptr %l0, !tbaa !29
  %t564 = getelementptr %"compiler/emit:Emitter", ptr %t562, i32 0, i32 79
  %t565 = load i64, ptr %l49, !tbaa !24
  %t568 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t564, i64 %t565)
  %t569 = extractvalue { i32, i64 } %t568, 1
  %t570 = extractvalue { i32, i64 } %t568, 0
  store i32 %t570, ptr %l348
  %t571 = icmp ne i32 %t570, 0
  br i1 %t571, label %bb163, label %ok.572, !prof !99
ok.572:
  store i64 %t569, ptr %l347
  br label %bb162
bb161:
  br label %bb166
bb162:
  %t573 = load i64, ptr %l347, !tbaa !24
  store i64 %t573, ptr %l343, !tbaa !24
  br label %bb165
bb163:
  br label %bb164
bb164:
  %t574 = load i64, ptr %l49, !tbaa !24
  store i64 %t574, ptr %l343, !tbaa !24
  br label %bb165
bb165:
  %t576 = load i64, ptr %l343, !tbaa !24
  store i64 %t576, ptr %l49, !tbaa !24
  br label %bb166
bb166:
  %t577 = load i64, ptr %l49, !tbaa !24
  %t579 = icmp slt i64 %t577, 0
  br i1 %t579, label %bb167, label %bb168
bb167:
  store i1 true, ptr %l352, !tbaa !21
  br label %bb170
bb168:
  %t581 = load i64, ptr %l49, !tbaa !24
  %t584 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l20, i64 %t581)
  store i1 %t584, ptr %l355
  br label %bb169
bb169:
  %t585 = load i1, ptr %l355, !tbaa !21
  store i1 %t585, ptr %l352, !tbaa !21
  br label %bb170
bb170:
  %t586 = load i1, ptr %l352, !tbaa !21
  br i1 %t586, label %bb171, label %bb172
bb171:
  store i1 true, ptr %l356, !tbaa !21
  br label %bb174
bb172:
  %t587 = load i64, ptr %l49, !tbaa !24
  %t590 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l26, i64 %t587)
  store i1 %t590, ptr %l359
  br label %bb173
bb173:
  %t591 = load i1, ptr %l359, !tbaa !21
  store i1 %t591, ptr %l356, !tbaa !21
  br label %bb174
bb174:
  %t592 = load i1, ptr %l356, !tbaa !21
  br i1 %t592, label %bb175, label %bb176
bb175:
  br label %bb217
bb176:
  br label %bb177
bb177:
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t595 = getelementptr %"compiler/emit:Emitter", ptr %t593, i32 0, i32 21
  %t596 = load i64, ptr %l49, !tbaa !24
  %t599 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t595, i64 %t596)
  store i64 %t599, ptr %l363
  br label %bb178
bb178:
  %t600 = load i64, ptr %l363, !tbaa !24
  store i64 %t600, ptr %l50, !tbaa !24
  %t601 = load i64, ptr %l50, !tbaa !24
  %t602 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  %t605 = icmp eq i64 %t601, %t602
  br i1 %t605, label %bb179, label %bb180
bb179:
  store i1 true, ptr %l367, !tbaa !21
  br label %bb181
bb180:
  %t607 = load i64, ptr %l50, !tbaa !24
  %t608 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  %t611 = icmp eq i64 %t607, %t608
  store i1 %t611, ptr %l367, !tbaa !21
  br label %bb181
bb181:
  %t613 = load i1, ptr %l367, !tbaa !21
  br i1 %t613, label %bb182, label %bb183
bb182:
  store %olang.scope zeroinitializer, ptr %s23
  %t614 = load i64, ptr %l49, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l20, i64 %t614, i1 true)
  br label %bb184
bb183:
  br label %bb194
bb184:
  %t617 = load i64, ptr %l49, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l19, i64 %t617)
  br label %bb185
bb185:
  %t620 = load i64, ptr %l50, !tbaa !24
  %t621 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  %t624 = icmp ne i64 %t620, %t621
  br i1 %t624, label %bb186, label %bb187
bb186:
  call void @__olang_scope_close(ptr %s23)
  br label %bb217
bb187:
  br label %bb188
bb188:
  store ptr %l29, ptr %l378, !tbaa !29
  %t626 = load i64, ptr %l49, !tbaa !24
  store i64 %t626, ptr %l379, !tbaa !24
  %t627 = ptrtoint ptr %s0 to i64
  store i64 %t627, ptr %l380, !tbaa !24
  %t628 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1
  br i1 %t628, label %bb189, label %bb190
bb189:
  %t630 = call ptr @__olang_region_make(ptr %s0)
  %t631 = ptrtoint ptr %t630 to i64
  store i64 %t631, ptr %l380, !tbaa !24
  br label %bb190
bb190:
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t634 = getelementptr %"compiler/emit:Emitter", ptr %t632, i32 0, i32 19
  %t635 = load i64, ptr %l49, !tbaa !24
  %t638 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t634, i64 %t635)
  store { i64, ptr } %t638, ptr %l385
  br label %bb191
bb191:
  %t639 = load { i64, ptr }, ptr %l385, !tbaa !27
  %t640 = call { i64, ptr } @compiler_2femit_2eprefixOf(ptr %v0, ptr %s23, { i64, ptr } %t639)
  store { i64, ptr } %t640, ptr %l386
  br label %bb192
bb192:
  %t641 = load i64, ptr %l33, !tbaa !24
  %t642 = load { i64, ptr }, ptr %l386, !tbaa !27
  %t643 = extractvalue { i64, ptr } %t642, 1
  %t644 = extractvalue { i64, ptr } %t642, 0
  %t646 = call i64 @__olang_fmt_i64(ptr null, i64 %t641)
  %t647 = add i64 %t644, %t646
  %t648 = load i64, ptr %l380
  %t649 = inttoptr i64 %t648 to ptr
  %t650 = call ptr @__olang_scope_alloc(ptr %t649, i64 %t647)
  call void @olang_textcopy(ptr %t650, ptr %t643, i64 %t644)
  %t651 = getelementptr i8, ptr %t650, i64 %t644
  %t652 = call i64 @__olang_fmt_i64(ptr %t651, i64 %t641)
  %t653 = insertvalue { i64, ptr } undef, i64 %t647, 0
  %t654 = insertvalue { i64, ptr } %t653, ptr %t650, 1
  %t656 = load i64, ptr %l380
  %t657 = inttoptr i64 %t656 to ptr
  %t658 = extractvalue { i64, ptr } %t654, 0
  %t659 = extractvalue { i64, ptr } %t654, 1
  %t660 = mul i64 %t658, 1
  %t661 = call ptr @__olang_scope_alloc(ptr %t657, i64 %t660)
  call void @llvm.memcpy.p0.p0.i64(ptr %t661, ptr %t659, i64 %t660, i1 false)
  %t662 = insertvalue { i64, ptr } undef, i64 %t658, 0
  %t663 = insertvalue { i64, ptr } %t662, ptr %t661, 1
  %t664 = load ptr, ptr %l378, !tbaa !29
  %t665 = load i64, ptr %l379, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %s0, ptr %s0, ptr %t664, i64 %t665, { i64, ptr } %t663)
  br label %bb193
bb193:
  %t667 = load i64, ptr %l33, !tbaa !24
  %t669 = add i64 %t667, 1
  store i64 %t669, ptr %l33, !tbaa !24
  call void @__olang_scope_close(ptr %s23)
  br label %bb217
bb194:
  %t671 = load i64, ptr %l49, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l26, i64 %t671, i1 true)
  br label %bb195
bb195:
  store ptr %l25, ptr %l394, !tbaa !29
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t676 = getelementptr %"compiler/emit:Emitter", ptr %t674, i32 0, i32 22
  %t677 = load i64, ptr %l49, !tbaa !24
  %t680 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t676, i64 %t677)
  store { i64, ptr } %t680, ptr %l398
  br label %bb196
bb196:
  %t681 = load ptr, ptr %l394, !tbaa !29
  %t682 = load { i64, ptr }, ptr %l398, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t681, { i64, ptr } %t682)
  br label %bb197
bb197:
  %t683 = load ptr, ptr %l0, !tbaa !29
  store ptr %t683, ptr %l399, !tbaa !29
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t686 = getelementptr %"compiler/emit:Emitter", ptr %t684, i32 0, i32 22
  %t687 = load i64, ptr %l49, !tbaa !24
  %t690 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t686, i64 %t687)
  store { i64, ptr } %t690, ptr %l403
  br label %bb198
bb198:
  %t691 = load ptr, ptr %l399, !tbaa !29
  %t692 = load { i64, ptr }, ptr %l403, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclTypes(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t691, { i64, ptr } %t692, ptr %l27, ptr %l28)
  br label %bb199
bb199:
  %t695 = load i64, ptr %l50, !tbaa !24
  %t696 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t699 = icmp eq i64 %t695, %t696
  br i1 %t699, label %bb200, label %bb201
bb200:
  %t701 = load ptr, ptr %l5, !tbaa !29
  %t703 = icmp eq ptr %t701, null
  %t705 = xor i1 %t703, true
  store i1 %t705, ptr %l409, !tbaa !21
  br label %bb202
bb201:
  store i1 false, ptr %l409, !tbaa !21
  br label %bb202
bb202:
  %t707 = load i1, ptr %l409, !tbaa !21
  br i1 %t707, label %bb203, label %bb204
bb203:
  store %olang.scope zeroinitializer, ptr %s26
  %t708 = load ptr, ptr %l5, !tbaa !29
  store ptr %t708, ptr %l413, !tbaa !29
  %t709 = ptrtoint ptr %v1 to i64
  store i64 %t709, ptr %l414, !tbaa !24
  %t710 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t710, label %bb205, label %bb206
bb204:
  br label %bb209
bb205:
  %t712 = call ptr @__olang_region_make(ptr %v1)
  %t713 = ptrtoint ptr %t712 to i64
  store i64 %t713, ptr %l414, !tbaa !24
  br label %bb206
bb206:
  %t714 = load ptr, ptr %l0, !tbaa !29
  %t716 = getelementptr %"compiler/emit:Emitter", ptr %t714, i32 0, i32 19
  %t717 = load i64, ptr %l49, !tbaa !24
  %t720 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s26, ptr %t716, i64 %t717)
  store { i64, ptr } %t720, ptr %l419
  br label %bb207
bb207:
  %t721 = load { i64, ptr }, ptr %l419, !tbaa !27
  %t722 = extractvalue { i64, ptr } %t721, 1
  %t723 = extractvalue { i64, ptr } %t721, 0
  %t724 = load i64, ptr %l414
  %t725 = inttoptr i64 %t724 to ptr
  %t726 = call ptr @__olang_scope_alloc(ptr %t725, i64 %t723)
  call void @olang_textcopy(ptr %t726, ptr %t722, i64 %t723)
  %t727 = insertvalue { i64, ptr } undef, i64 %t723, 0
  %t728 = insertvalue { i64, ptr } %t727, ptr %t726, 1
  %t730 = load i64, ptr %l414
  %t731 = inttoptr i64 %t730 to ptr
  %t732 = extractvalue { i64, ptr } %t728, 0
  %t733 = extractvalue { i64, ptr } %t728, 1
  %t734 = mul i64 %t732, 1
  %t735 = call ptr @__olang_scope_alloc(ptr %t731, i64 %t734)
  call void @llvm.memcpy.p0.p0.i64(ptr %t735, ptr %t733, i64 %t734, i1 false)
  %t736 = insertvalue { i64, ptr } undef, i64 %t732, 0
  %t737 = insertvalue { i64, ptr } %t736, ptr %t735, 1
  %t738 = load ptr, ptr %l413, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t738, { i64, ptr } %t737)
  br label %bb208
bb208:
  call void @__olang_scope_close(ptr %s26)
  br label %bb209
bb209:
  %t740 = load i64, ptr %l50, !tbaa !24
  %t741 = load i64, ptr @G_2ecompiler_2femit_2eHomeLoc, !tbaa !24
  %t744 = icmp eq i64 %t740, %t741
  br i1 %t744, label %bb210, label %bb211
bb210:
  %t746 = load ptr, ptr %l7, !tbaa !29
  %t748 = icmp eq ptr %t746, null
  %t750 = xor i1 %t748, true
  store i1 %t750, ptr %l425, !tbaa !21
  br label %bb212
bb211:
  store i1 false, ptr %l425, !tbaa !21
  br label %bb212
bb212:
  %t752 = load i1, ptr %l425, !tbaa !21
  br i1 %t752, label %bb213, label %bb214
bb213:
  %t753 = load ptr, ptr %l7, !tbaa !29
  %t754 = load i64, ptr %l49, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v2, ptr %t753, i64 %t754, i1 true)
  br label %bb215
bb214:
  br label %bb216
bb215:
  br label %bb216
bb216:
  br label %bb217
bb217:
  %t757 = load i64, ptr %l45, !tbaa !24
  %t759 = add i64 %t757, 1
  store i64 %t759, ptr %l45, !tbaa !24
  br label %bb131
bb218:
  br label %bb219
bb219:
  br label %bb84
bb220:
  %t761 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t761, ptr %l433
  br label %bb221
bb221:
  %t762 = load %"std/prelude/text:StringBuilder", ptr %l433
  store %"std/prelude/text:StringBuilder" %t762, ptr %l51
  store ptr %l51, ptr %l434, !tbaa !29
  %t763 = load ptr, ptr %l0, !tbaa !29
  %t765 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehead(ptr %v0, ptr %s0, ptr %t763)
  store { i64, ptr } %t765, ptr %l436
  br label %bb222
bb222:
  %t766 = load { i64, ptr }, ptr %l436, !tbaa !27
  %t767 = extractvalue { i64, ptr } %t766, 0
  %t768 = extractvalue { i64, ptr } %t766, 1
  %t769 = mul i64 %t767, 1
  %t770 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t769)
  call void @llvm.memcpy.p0.p0.i64(ptr %t770, ptr %t768, i64 %t769, i1 false)
  %t771 = insertvalue { i64, ptr } undef, i64 %t767, 0
  %t772 = insertvalue { i64, ptr } %t771, ptr %t770, 1
  %t773 = load ptr, ptr %l434, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t773, { i64, ptr } %t772)
  br label %bb223
bb223:
  %t775 = load ptr, ptr %l0, !tbaa !29
  %t777 = getelementptr %"compiler/emit:Emitter", ptr %t775, i32 0, i32 68
  %t778 = load { i64, ptr }, ptr %t777, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l51, { i64, ptr } %t778)
  br label %bb224
bb224:
  store ptr %l27, ptr %l52, !tbaa !29
  store i64 0, ptr %l53, !tbaa !24
  br label %bb225
bb225:
  %t782 = load i64, ptr %l53, !tbaa !24
  store i64 %t782, ptr %l442, !tbaa !24
  %t783 = load ptr, ptr %l52, !tbaa !29
  %t785 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t783)
  store i64 %t785, ptr %l444
  br label %bb226
bb226:
  %t786 = load i64, ptr %l442, !tbaa !24
  %t787 = load i64, ptr %l444, !tbaa !24
  %t788 = icmp slt i64 %t786, %t787
  %t790 = xor i1 %t788, true
  br i1 %t790, label %bb227, label %bb228
bb227:
  br label %bb234
bb228:
  br label %bb229
bb229:
  %t792 = load ptr, ptr %l52, !tbaa !29
  %t793 = load i64, ptr %l53, !tbaa !24
  %t796 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t792, i64 %t793)
  store i64 %t796, ptr %l449
  br label %bb230
bb230:
  %t797 = load i64, ptr %l449, !tbaa !24
  store ptr %l51, ptr %l450, !tbaa !29
  %t798 = load ptr, ptr %l0, !tbaa !29
  %t800 = getelementptr %"compiler/emit:Emitter", ptr %t798, i32 0, i32 53
  %t804 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t800, i64 %t797)
  store { i64, ptr } %t804, ptr %l454
  br label %bb231
bb231:
  %t805 = load ptr, ptr %l450, !tbaa !29
  %t806 = load { i64, ptr }, ptr %l454, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t805, { i64, ptr } %t806)
  br label %bb232
bb232:
  br label %bb233
bb233:
  %t807 = load i64, ptr %l53, !tbaa !24
  %t809 = add i64 %t807, 1
  store i64 %t809, ptr %l53, !tbaa !24
  br label %bb225
bb234:
  %t811 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t811, ptr %l457
  br label %bb235
bb235:
  %t812 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l457
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t812, ptr %l55
  store ptr %l19, ptr %l56, !tbaa !29
  store i64 0, ptr %l57, !tbaa !24
  br label %bb236
bb236:
  %t814 = load i64, ptr %l57, !tbaa !24
  store i64 %t814, ptr %l459, !tbaa !24
  %t815 = load ptr, ptr %l56, !tbaa !29
  %t817 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t815)
  store i64 %t817, ptr %l461
  br label %bb237
bb237:
  %t818 = load i64, ptr %l459, !tbaa !24
  %t819 = load i64, ptr %l461, !tbaa !24
  %t820 = icmp slt i64 %t818, %t819
  %t822 = xor i1 %t820, true
  br i1 %t822, label %bb238, label %bb239
bb238:
  br label %bb364
bb239:
  br label %bb240
bb240:
  %t824 = load ptr, ptr %l56, !tbaa !29
  %t825 = load i64, ptr %l57, !tbaa !24
  %t828 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t824, i64 %t825)
  store i64 %t828, ptr %l466
  br label %bb241
bb241:
  %t829 = load i64, ptr %l466, !tbaa !24
  store i64 %t829, ptr %l58, !tbaa !24
  %t830 = load i1, ptr %l30, !tbaa !21
  br i1 %t830, label %bb242, label %bb243
bb242:
  %t832 = load ptr, ptr %l0, !tbaa !29
  %t834 = getelementptr %"compiler/emit:Emitter", ptr %t832, i32 0, i32 79
  %t835 = load i64, ptr %l58, !tbaa !24
  %t838 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t834, i64 %t835)
  store i1 %t838, ptr %l472
  br label %bb244
bb243:
  store i1 false, ptr %l468, !tbaa !21
  br label %bb245
bb244:
  %t839 = load i1, ptr %l472, !tbaa !21
  store i1 %t839, ptr %l468, !tbaa !21
  br label %bb245
bb245:
  %t840 = load i1, ptr %l468, !tbaa !21
  br i1 %t840, label %bb246, label %bb247
bb246:
  store %olang.scope zeroinitializer, ptr %s35
  %t841 = load ptr, ptr %l0, !tbaa !29
  %t843 = getelementptr %"compiler/emit:Emitter", ptr %t841, i32 0, i32 79
  %t844 = load i64, ptr %l58, !tbaa !24
  %t847 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t843, i64 %t844)
  %t848 = extractvalue { i32, i64 } %t847, 1
  %t849 = extractvalue { i32, i64 } %t847, 0
  store i32 %t849, ptr %l478
  %t850 = icmp ne i32 %t849, 0
  br i1 %t850, label %bb249, label %ok.851, !prof !99
ok.851:
  store i64 %t848, ptr %l477
  br label %bb248
bb247:
  br label %bb268
bb248:
  %t852 = load i64, ptr %l477, !tbaa !24
  store i64 %t852, ptr %l473, !tbaa !24
  br label %bb251
bb249:
  br label %bb250
bb250:
  %t853 = load i64, ptr %l58, !tbaa !24
  store i64 %t853, ptr %l473, !tbaa !24
  br label %bb251
bb251:
  %t855 = load i64, ptr %l473, !tbaa !24
  store i64 %t855, ptr %l59, !tbaa !24
  %t856 = load ptr, ptr %l0, !tbaa !29
  %t857 = load i64, ptr %l58, !tbaa !24
  %t860 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ealiased(ptr %v0, ptr %t856, i64 %t857)
  store i1 %t860, ptr %l482
  br label %bb252
bb252:
  %t861 = load i1, ptr %l482, !tbaa !21
  %t862 = xor i1 %t861, true
  br i1 %t862, label %bb253, label %bb254
bb253:
  store ptr %l51, ptr %l484, !tbaa !29
  %t864 = load i64, ptr %l58, !tbaa !24
  %t867 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %s0, ptr %s0, ptr %l34, i64 %t864)
  %t868 = extractvalue { i32, { i64, ptr } } %t867, 1
  %t869 = extractvalue { i32, { i64, ptr } } %t867, 0
  store i32 %t869, ptr %l489
  %t870 = icmp ne i32 %t869, 0
  br i1 %t870, label %bb256, label %ok.871, !prof !99
ok.871:
  store { i64, ptr } %t868, ptr %l488
  br label %bb255
bb254:
  br label %bb260
bb255:
  %t872 = load { i64, ptr }, ptr %l488, !tbaa !27
  store { i64, ptr } %t872, ptr %l485, !tbaa !27
  br label %bb258
bb256:
  br label %bb257
bb257:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l485, !tbaa !27
  br label %bb258
bb258:
  %t873 = load ptr, ptr %l484, !tbaa !29
  %t874 = load { i64, ptr }, ptr %l485, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t873, { i64, ptr } %t874)
  br label %bb259
bb259:
  call void @__olang_scope_close(ptr %s35)
  br label %bb363
bb260:
  %t875 = load ptr, ptr %l0, !tbaa !29
  %t877 = getelementptr %"compiler/emit:Emitter", ptr %t875, i32 0, i32 80
  %t878 = load i64, ptr %l58, !tbaa !24
  %t881 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t877, i64 %t878)
  %t882 = extractvalue { i32, { i64, ptr } } %t881, 1
  %t883 = extractvalue { i32, { i64, ptr } } %t881, 0
  store i32 %t883, ptr %l495
  %t884 = icmp ne i32 %t883, 0
  br i1 %t884, label %bb262, label %ok.885, !prof !99
ok.885:
  store { i64, ptr } %t882, ptr %l494
  br label %bb261
bb261:
  %t886 = load { i64, ptr }, ptr %l494, !tbaa !27
  store { i64, ptr } %t886, ptr %l490, !tbaa !27
  br label %bb264
bb262:
  br label %bb263
bb263:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l490, !tbaa !27
  br label %bb264
bb264:
  %t887 = load { i64, ptr }, ptr %l490, !tbaa !27
  store { i64, ptr } %t887, ptr %l60, !tbaa !27
  store ptr %l51, ptr %l496, !tbaa !29
  %t888 = load ptr, ptr %l0, !tbaa !29
  %t890 = getelementptr %"compiler/emit:Emitter", ptr %t888, i32 0, i32 19
  %t891 = load i64, ptr %l58, !tbaa !24
  %t894 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s35, ptr %t890, i64 %t891)
  store { i64, ptr } %t894, ptr %l500
  br label %bb265
bb265:
  %t895 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t895, ptr %l501, !tbaa !27
  %t896 = load ptr, ptr %l0, !tbaa !29
  %t898 = getelementptr %"compiler/emit:Emitter", ptr %t896, i32 0, i32 19
  %t899 = load i64, ptr %l59, !tbaa !24
  %t902 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s35, ptr %t898, i64 %t899)
  store { i64, ptr } %t902, ptr %l505
  br label %bb266
bb266:
  %t903 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t904 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t905 = load { i64, ptr }, ptr %l500, !tbaa !27
  %t906 = extractvalue { i64, ptr } %t905, 1
  %t907 = extractvalue { i64, ptr } %t905, 0
  %t908 = add i64 %t904, %t907
  %t909 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t910 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t911 = add i64 %t908, %t910
  %t912 = load { i64, ptr }, ptr %l501, !tbaa !27
  %t913 = extractvalue { i64, ptr } %t912, 1
  %t914 = extractvalue { i64, ptr } %t912, 0
  %t915 = add i64 %t911, %t914
  %t916 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t917 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t918 = add i64 %t915, %t917
  %t919 = load { i64, ptr }, ptr %l505, !tbaa !27
  %t920 = extractvalue { i64, ptr } %t919, 1
  %t921 = extractvalue { i64, ptr } %t919, 0
  %t922 = add i64 %t918, %t921
  %t923 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t924 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t925 = add i64 %t922, %t924
  %t926 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t925)
  call void @olang_textcopy(ptr %t926, ptr %t903, i64 %t904)
  %t927 = getelementptr i8, ptr %t926, i64 %t904
  call void @olang_textcopy(ptr %t927, ptr %t906, i64 %t907)
  %t928 = getelementptr i8, ptr %t927, i64 %t907
  call void @olang_textcopy(ptr %t928, ptr %t909, i64 %t910)
  %t929 = getelementptr i8, ptr %t928, i64 %t910
  call void @olang_textcopy(ptr %t929, ptr %t913, i64 %t914)
  %t930 = getelementptr i8, ptr %t929, i64 %t914
  call void @olang_textcopy(ptr %t930, ptr %t916, i64 %t917)
  %t931 = getelementptr i8, ptr %t930, i64 %t917
  call void @olang_textcopy(ptr %t931, ptr %t920, i64 %t921)
  %t932 = getelementptr i8, ptr %t931, i64 %t921
  call void @olang_textcopy(ptr %t932, ptr %t923, i64 %t924)
  %t933 = insertvalue { i64, ptr } undef, i64 %t925, 0
  %t934 = insertvalue { i64, ptr } %t933, ptr %t926, 1
  %t936 = extractvalue { i64, ptr } %t934, 0
  %t937 = extractvalue { i64, ptr } %t934, 1
  %t938 = mul i64 %t936, 1
  %t939 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t938)
  call void @llvm.memcpy.p0.p0.i64(ptr %t939, ptr %t937, i64 %t938, i1 false)
  %t940 = insertvalue { i64, ptr } undef, i64 %t936, 0
  %t941 = insertvalue { i64, ptr } %t940, ptr %t939, 1
  %t942 = load ptr, ptr %l496, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s35, ptr %t942, { i64, ptr } %t941)
  br label %bb267
bb267:
  call void @__olang_scope_close(ptr %s35)
  br label %bb363
bb268:
  %t944 = load ptr, ptr %l0, !tbaa !29
  %t946 = getelementptr %"compiler/emit:Emitter", ptr %t944, i32 0, i32 20
  %t947 = load i64, ptr %l58, !tbaa !24
  %t950 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t946, i64 %t947)
  store { i64, ptr } %t950, ptr %l511
  br label %bb269
bb269:
  %t951 = load { i64, ptr }, ptr %l511, !tbaa !27
  store { i64, ptr } %t951, ptr %l61, !tbaa !27
  %t953 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H0211835ad1df5edc8086b9b7bc878d6e(ptr %s0, ptr %l29)
  store i64 %t953, ptr %l513
  br label %bb270
bb270:
  %t954 = load i64, ptr %l513, !tbaa !24
  %t955 = icmp eq i64 %t954, 0
  br i1 %t955, label %bb271, label %bb272
bb271:
  %t957 = load ptr, ptr %l0, !tbaa !29
  %t959 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbg(ptr %v0, ptr %t957)
  store i1 %t959, ptr %l517
  br label %bb273
bb272:
  store i1 false, ptr %l515, !tbaa !21
  br label %bb274
bb273:
  %t960 = load i1, ptr %l517, !tbaa !21
  %t961 = xor i1 %t960, true
  store i1 %t961, ptr %l515, !tbaa !21
  br label %bb274
bb274:
  %t963 = load i1, ptr %l515, !tbaa !21
  br i1 %t963, label %bb275, label %bb276
bb275:
  %t964 = load { i64, ptr }, ptr %l61, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l51, { i64, ptr } %t964)
  br label %bb277
bb276:
  br label %bb278
bb277:
  br label %bb363
bb278:
  store i64 0, ptr %l62, !tbaa !24
  %t967 = load ptr, ptr %l0, !tbaa !29
  %t968 = load i64, ptr %l58, !tbaa !24
  %t971 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erefs(ptr %v0, ptr %v0, ptr %t967, i64 %t968)
  store { i64, ptr } %t971, ptr %l523
  br label %bb279
bb279:
  %t972 = load { i64, ptr }, ptr %l523, !tbaa !27
  store { i64, ptr } %t972, ptr %l63, !tbaa !27
  store i64 0, ptr %l64, !tbaa !24
  %t973 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t975 = extractvalue { i64, ptr } %t973, 0
  store i64 %t975, ptr %l65, !tbaa !24
  store i64 3, ptr %l66, !tbaa !24
  %t977 = load i64, ptr %l65, !tbaa !24
  %t978 = load i64, ptr %l64, !tbaa !24
  %t981 = icmp sgt i64 %t977, %t978
  br i1 %t981, label %bb280, label %bb281
bb280:
  %t983 = load i64, ptr %l66, !tbaa !24
  %t985 = icmp sgt i64 %t983, 0
  br i1 %t985, label %bb282, label %bb283
bb281:
  store i64 0, ptr %l529, !tbaa !24
  br label %bb285
bb282:
  %t987 = load i64, ptr %l65, !tbaa !24
  %t988 = load i64, ptr %l64, !tbaa !24
  %t991 = sub i64 %t987, %t988
  %t992 = load i64, ptr %l66, !tbaa !24
  %t995 = add i64 %t991, %t992
  %t997 = sub i64 %t995, 1
  %t998 = load i64, ptr %l66, !tbaa !24
  %t1001 = sdiv i64 %t997, %t998
  store i64 %t1001, ptr %l532, !tbaa !24
  br label %bb284
bb283:
  store i64 0, ptr %l532, !tbaa !24
  br label %bb284
bb284:
  %t1003 = load i64, ptr %l532, !tbaa !24
  store i64 %t1003, ptr %l529, !tbaa !24
  br label %bb285
bb285:
  %t1004 = load i64, ptr %l529, !tbaa !24
  store i64 %t1004, ptr %l67, !tbaa !24
  store i64 0, ptr %l68, !tbaa !24
  br label %bb286
bb286:
  store %olang.scope zeroinitializer, ptr %s40
  %t1005 = load i64, ptr %l68, !tbaa !24
  %t1006 = load i64, ptr %l67, !tbaa !24
  %t1009 = icmp slt i64 %t1005, %t1006
  %t1011 = xor i1 %t1009, true
  br i1 %t1011, label %bb287, label %bb288
bb287:
  call void @__olang_scope_close(ptr %s40)
  br label %bb355
bb288:
  br label %bb289
bb289:
  %t1013 = load i64, ptr %l64, !tbaa !24
  %t1014 = load i64, ptr %l68, !tbaa !24
  %t1015 = load i64, ptr %l66, !tbaa !24
  %t1018 = mul i64 %t1014, %t1015
  %t1021 = add i64 %t1013, %t1018
  store i64 %t1021, ptr %l69, !tbaa !24
  %t1023 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1023, ptr %l550, !tbaa !27
  %t1024 = load i64, ptr %l69, !tbaa !24
  %t1026 = getelementptr { i64, ptr }, ptr %l550, i32 0, i32 1
  %t1027 = load ptr, ptr %t1026, !tbaa !27
  %t1028 = getelementptr i64, ptr %t1027, i64 %t1024
  %t1029 = load i64, ptr %t1028, !tbaa !34
  %t1031 = icmp eq i64 %t1029, 2
  br i1 %t1031, label %bb290, label %bb291
bb290:
  store %olang.scope zeroinitializer, ptr %s41
  %t1033 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t1033, ptr %l555, !tbaa !27
  %t1034 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1034, ptr %l556, !tbaa !27
  %t1035 = load i64, ptr %l69, !tbaa !24
  %t1037 = add i64 %t1035, 1
  %t1039 = getelementptr { i64, ptr }, ptr %l556, i32 0, i32 1
  %t1040 = load ptr, ptr %t1039, !tbaa !27
  %t1041 = getelementptr i64, ptr %t1040, i64 %t1037
  %t1042 = load i64, ptr %t1041, !tbaa !34
  %t1044 = add i64 %t1042, 1
  store i64 %t1044, ptr %l560, !tbaa !24
  %t1045 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1045, ptr %l561, !tbaa !27
  %t1046 = load i64, ptr %l69, !tbaa !24
  %t1048 = add i64 %t1046, 2
  %t1050 = getelementptr { i64, ptr }, ptr %l561, i32 0, i32 1
  %t1051 = load ptr, ptr %t1050, !tbaa !27
  %t1052 = getelementptr i64, ptr %t1051, i64 %t1048
  %t1053 = load i64, ptr %t1052, !tbaa !34
  store i64 %t1053, ptr %l564, !tbaa !24
  %t1054 = load { i64, ptr }, ptr %l555, !tbaa !27
  %t1055 = extractvalue { i64, ptr } %t1054, 0
  store i64 %t1055, ptr %l565, !tbaa !24
  %t1056 = load i64, ptr %l560, !tbaa !24
  %t1057 = icmp sge i64 %t1056, 0
  br i1 %t1057, label %bb292, label %bb293
bb291:
  br label %bb316
bb292:
  %t1059 = load i64, ptr %l560, !tbaa !24
  %t1060 = load i64, ptr %l564, !tbaa !24
  %t1061 = icmp sle i64 %t1059, %t1060
  br i1 %t1061, label %bb294, label %bb295
bb293:
  call void @__olang_check_failed(ptr @olang_loc_4635f1a318b549bc_759936c3a7928310)
  unreachable
bb294:
  %t1063 = load i64, ptr %l564, !tbaa !24
  %t1064 = load i64, ptr %l565, !tbaa !24
  %t1065 = icmp sle i64 %t1063, %t1064
  br i1 %t1065, label %bb296, label %bb297
bb295:
  call void @__olang_check_failed(ptr @olang_loc_4635f1a318b549bc_759936c3a7928310)
  unreachable
bb296:
  %t1067 = getelementptr { i64, ptr }, ptr %l555, i32 0, i32 1
  %t1068 = load ptr, ptr %t1067, !tbaa !27
  %t1069 = load i64, ptr %l560, !tbaa !24
  %t1070 = load i64, ptr %l564, !tbaa !24
  %t1071 = getelementptr i8, ptr %t1068, i64 %t1069
  %t1072 = sub i64 %t1070, %t1069
  %t1073 = insertvalue { i64, ptr } undef, i64 %t1072, 0
  %t1074 = insertvalue { i64, ptr } %t1073, ptr %t1071, 1
  store { i64, ptr } %t1074, ptr %l569, !tbaa !27
  %t1075 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s41, i64 10)
  %t1076 = extractvalue { i32, i64 } %t1075, 1
  %t1077 = extractvalue { i32, i64 } %t1075, 0
  store i32 %t1077, ptr %l571
  %t1078 = icmp ne i32 %t1077, 0
  br i1 %t1078, label %bb299, label %ok.1079, !prof !99
ok.1079:
  store i64 %t1076, ptr %l570
  br label %bb298
bb297:
  call void @__olang_check_failed(ptr @olang_loc_4635f1a318b549bc_759936c3a7928310)
  unreachable
bb298:
  %t1080 = load { i64, ptr }, ptr %l569, !tbaa !27
  %t1081 = load i64, ptr %l570, !tbaa !24
  %t1082 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t1080, i64 %t1081)
  %t1083 = extractvalue { i32, i64 } %t1082, 1
  %t1084 = extractvalue { i32, i64 } %t1082, 0
  store i32 %t1084, ptr %l573
  %t1085 = icmp ne i32 %t1084, 0
  br i1 %t1085, label %bb302, label %ok.1086, !prof !99
ok.1086:
  store i64 %t1083, ptr %l572
  br label %bb301
bb299:
  br label %bb300
bb300:
  store i64 0, ptr %l554, !tbaa !24
  br label %bb303
bb301:
  %t1087 = load i64, ptr %l572, !tbaa !24
  store i64 %t1087, ptr %l554, !tbaa !24
  br label %bb303
bb302:
  br label %bb300
bb303:
  %t1088 = load i64, ptr %l554, !tbaa !24
  store i64 %t1088, ptr %l70, !tbaa !24
  %t1089 = load i64, ptr %l70, !tbaa !24
  %t1091 = icmp slt i64 %t1089, 1000
  br i1 %t1091, label %bb304, label %bb305
bb304:
  call void @__olang_scope_close(ptr %s41)
  call void @__olang_scope_close(ptr %s40)
  br label %bb354
bb305:
  br label %bb306
bb306:
  store ptr %l51, ptr %l576, !tbaa !29
  %t1093 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t1093, ptr %l577, !tbaa !27
  %t1094 = load i64, ptr %l62, !tbaa !24
  store i64 %t1094, ptr %l578, !tbaa !24
  %t1095 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1095, ptr %l579, !tbaa !27
  %t1096 = load i64, ptr %l69, !tbaa !24
  %t1098 = add i64 %t1096, 1
  %t1100 = getelementptr { i64, ptr }, ptr %l579, i32 0, i32 1
  %t1101 = load ptr, ptr %t1100, !tbaa !27
  %t1102 = getelementptr i64, ptr %t1101, i64 %t1098
  %t1103 = load i64, ptr %t1102, !tbaa !34
  store i64 %t1103, ptr %l582, !tbaa !24
  %t1104 = load { i64, ptr }, ptr %l577, !tbaa !27
  %t1105 = extractvalue { i64, ptr } %t1104, 0
  store i64 %t1105, ptr %l583, !tbaa !24
  %t1106 = load i64, ptr %l578, !tbaa !24
  %t1107 = icmp sge i64 %t1106, 0
  br i1 %t1107, label %bb307, label %bb308
bb307:
  %t1109 = load i64, ptr %l578, !tbaa !24
  %t1110 = load i64, ptr %l582, !tbaa !24
  %t1111 = icmp sle i64 %t1109, %t1110
  br i1 %t1111, label %bb309, label %bb310
bb308:
  call void @__olang_check_failed(ptr @olang_loc_2968b987139e6167_76a7d58ddfcdba8b)
  unreachable
bb309:
  %t1113 = load i64, ptr %l582, !tbaa !24
  %t1114 = load i64, ptr %l583, !tbaa !24
  %t1115 = icmp sle i64 %t1113, %t1114
  br i1 %t1115, label %bb311, label %bb312
bb310:
  call void @__olang_check_failed(ptr @olang_loc_2968b987139e6167_76a7d58ddfcdba8b)
  unreachable
bb311:
  %t1117 = getelementptr { i64, ptr }, ptr %l577, i32 0, i32 1
  %t1118 = load ptr, ptr %t1117, !tbaa !27
  %t1119 = load i64, ptr %l578, !tbaa !24
  %t1120 = load i64, ptr %l582, !tbaa !24
  %t1121 = getelementptr i8, ptr %t1118, i64 %t1119
  %t1122 = sub i64 %t1120, %t1119
  %t1123 = insertvalue { i64, ptr } undef, i64 %t1122, 0
  %t1124 = insertvalue { i64, ptr } %t1123, ptr %t1121, 1
  %t1125 = load ptr, ptr %l576, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t1125, { i64, ptr } %t1124)
  br label %bb313
bb312:
  call void @__olang_check_failed(ptr @olang_loc_2968b987139e6167_76a7d58ddfcdba8b)
  unreachable
bb313:
  store ptr %l51, ptr %l588, !tbaa !29
  %t1127 = load i64, ptr %l70, !tbaa !24
  %t1130 = call i64 @compiler_2femit_2emetaNumber(ptr %s0, ptr %l55, i64 %t1127)
  store i64 %t1130, ptr %l591
  br label %bb314
bb314:
  %t1131 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t1132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t1133 = load i64, ptr %l591, !tbaa !24
  %t1134 = call i64 @__olang_fmt_i64(ptr null, i64 %t1133)
  %t1135 = add i64 %t1132, %t1134
  %t1136 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1135)
  call void @olang_textcopy(ptr %t1136, ptr %t1131, i64 %t1132)
  %t1137 = getelementptr i8, ptr %t1136, i64 %t1132
  %t1138 = call i64 @__olang_fmt_i64(ptr %t1137, i64 %t1133)
  %t1139 = insertvalue { i64, ptr } undef, i64 %t1135, 0
  %t1140 = insertvalue { i64, ptr } %t1139, ptr %t1136, 1
  %t1142 = extractvalue { i64, ptr } %t1140, 0
  %t1143 = extractvalue { i64, ptr } %t1140, 1
  %t1144 = mul i64 %t1142, 1
  %t1145 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1144)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1145, ptr %t1143, i64 %t1144, i1 false)
  %t1146 = insertvalue { i64, ptr } undef, i64 %t1142, 0
  %t1147 = insertvalue { i64, ptr } %t1146, ptr %t1145, 1
  %t1148 = load ptr, ptr %l588, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s41, ptr %t1148, { i64, ptr } %t1147)
  br label %bb315
bb315:
  %t1150 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1150, ptr %l594, !tbaa !27
  %t1151 = load i64, ptr %l69, !tbaa !24
  %t1153 = add i64 %t1151, 2
  %t1155 = getelementptr { i64, ptr }, ptr %l594, i32 0, i32 1
  %t1156 = load ptr, ptr %t1155, !tbaa !27
  %t1157 = getelementptr i64, ptr %t1156, i64 %t1153
  %t1158 = load i64, ptr %t1157, !tbaa !34
  store i64 %t1158, ptr %l62, !tbaa !24
  call void @__olang_scope_close(ptr %s41)
  call void @__olang_scope_close(ptr %s40)
  br label %bb354
bb316:
  %t1160 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1160, ptr %l598, !tbaa !27
  %t1161 = load i64, ptr %l69, !tbaa !24
  %t1163 = getelementptr { i64, ptr }, ptr %l598, i32 0, i32 1
  %t1164 = load ptr, ptr %t1163, !tbaa !27
  %t1165 = getelementptr i64, ptr %t1164, i64 %t1161
  %t1166 = load i64, ptr %t1165, !tbaa !34
  %t1168 = icmp ne i64 %t1166, 0
  br i1 %t1168, label %bb317, label %bb318
bb317:
  call void @__olang_scope_close(ptr %s40)
  br label %bb354
bb318:
  br label %bb319
bb319:
  %t1170 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t1170, ptr %l602, !tbaa !27
  %t1171 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1171, ptr %l603, !tbaa !27
  %t1172 = load i64, ptr %l69, !tbaa !24
  %t1174 = add i64 %t1172, 1
  %t1176 = getelementptr { i64, ptr }, ptr %l603, i32 0, i32 1
  %t1177 = load ptr, ptr %t1176, !tbaa !27
  %t1178 = getelementptr i64, ptr %t1177, i64 %t1174
  %t1179 = load i64, ptr %t1178, !tbaa !34
  store i64 %t1179, ptr %l606, !tbaa !24
  %t1180 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1180, ptr %l607, !tbaa !27
  %t1181 = load i64, ptr %l69, !tbaa !24
  %t1183 = add i64 %t1181, 2
  %t1185 = getelementptr { i64, ptr }, ptr %l607, i32 0, i32 1
  %t1186 = load ptr, ptr %t1185, !tbaa !27
  %t1187 = getelementptr i64, ptr %t1186, i64 %t1183
  %t1188 = load i64, ptr %t1187, !tbaa !34
  store i64 %t1188, ptr %l610, !tbaa !24
  %t1189 = load { i64, ptr }, ptr %l602, !tbaa !27
  %t1190 = extractvalue { i64, ptr } %t1189, 0
  store i64 %t1190, ptr %l611, !tbaa !24
  %t1191 = load i64, ptr %l606, !tbaa !24
  %t1192 = icmp sge i64 %t1191, 0
  br i1 %t1192, label %bb320, label %bb321
bb320:
  %t1194 = load i64, ptr %l606, !tbaa !24
  %t1195 = load i64, ptr %l610, !tbaa !24
  %t1196 = icmp sle i64 %t1194, %t1195
  br i1 %t1196, label %bb322, label %bb323
bb321:
  call void @__olang_check_failed(ptr @olang_loc_493930ee087ace8a_eb37955c75d36e8e)
  unreachable
bb322:
  %t1198 = load i64, ptr %l610, !tbaa !24
  %t1199 = load i64, ptr %l611, !tbaa !24
  %t1200 = icmp sle i64 %t1198, %t1199
  br i1 %t1200, label %bb324, label %bb325
bb323:
  call void @__olang_check_failed(ptr @olang_loc_493930ee087ace8a_eb37955c75d36e8e)
  unreachable
bb324:
  %t1202 = getelementptr { i64, ptr }, ptr %l602, i32 0, i32 1
  %t1203 = load ptr, ptr %t1202, !tbaa !27
  %t1204 = load i64, ptr %l606, !tbaa !24
  %t1205 = load i64, ptr %l610, !tbaa !24
  %t1206 = getelementptr i8, ptr %t1203, i64 %t1204
  %t1207 = sub i64 %t1205, %t1204
  %t1208 = insertvalue { i64, ptr } undef, i64 %t1207, 0
  %t1209 = insertvalue { i64, ptr } %t1208, ptr %t1206, 1
  store { i64, ptr } %t1209, ptr %l71, !tbaa !27
  %t1211 = load ptr, ptr %l0, !tbaa !29
  %t1212 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t1215 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitemNamed(ptr %v0, ptr %v0, ptr %t1211, { i64, ptr } %t1212)
  store i64 %t1215, ptr %l618
  br label %bb326
bb325:
  call void @__olang_check_failed(ptr @olang_loc_493930ee087ace8a_eb37955c75d36e8e)
  unreachable
bb326:
  %t1216 = load i64, ptr %l618, !tbaa !24
  store i64 %t1216, ptr %l72, !tbaa !24
  %t1217 = load i64, ptr %l72, !tbaa !24
  %t1219 = icmp slt i64 %t1217, 0
  br i1 %t1219, label %bb327, label %bb328
bb327:
  store i1 true, ptr %l621, !tbaa !21
  br label %bb330
bb328:
  %t1221 = load i64, ptr %l72, !tbaa !24
  %t1224 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H86f724e2dc8b3b4d675d56b45c81e2ce(ptr %s0, ptr %l29, i64 %t1221)
  store i1 %t1224, ptr %l624
  br label %bb329
bb329:
  %t1225 = load i1, ptr %l624, !tbaa !21
  %t1226 = xor i1 %t1225, true
  store i1 %t1226, ptr %l621, !tbaa !21
  br label %bb330
bb330:
  %t1228 = load i1, ptr %l621, !tbaa !21
  br i1 %t1228, label %bb331, label %bb332
bb331:
  call void @__olang_scope_close(ptr %s40)
  br label %bb354
bb332:
  br label %bb333
bb333:
  store ptr %l51, ptr %l626, !tbaa !29
  %t1229 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t1229, ptr %l627, !tbaa !27
  %t1230 = load i64, ptr %l62, !tbaa !24
  store i64 %t1230, ptr %l628, !tbaa !24
  %t1231 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1231, ptr %l629, !tbaa !27
  %t1232 = load i64, ptr %l69, !tbaa !24
  %t1234 = add i64 %t1232, 1
  %t1236 = getelementptr { i64, ptr }, ptr %l629, i32 0, i32 1
  %t1237 = load ptr, ptr %t1236, !tbaa !27
  %t1238 = getelementptr i64, ptr %t1237, i64 %t1234
  %t1239 = load i64, ptr %t1238, !tbaa !34
  store i64 %t1239, ptr %l632, !tbaa !24
  %t1240 = load { i64, ptr }, ptr %l627, !tbaa !27
  %t1241 = extractvalue { i64, ptr } %t1240, 0
  store i64 %t1241, ptr %l633, !tbaa !24
  %t1242 = load i64, ptr %l628, !tbaa !24
  %t1243 = icmp sge i64 %t1242, 0
  br i1 %t1243, label %bb334, label %bb335
bb334:
  %t1245 = load i64, ptr %l628, !tbaa !24
  %t1246 = load i64, ptr %l632, !tbaa !24
  %t1247 = icmp sle i64 %t1245, %t1246
  br i1 %t1247, label %bb336, label %bb337
bb335:
  call void @__olang_check_failed(ptr @olang_loc_82b9110c3ab34805_cdca7d87f9ba97f1)
  unreachable
bb336:
  %t1249 = load i64, ptr %l632, !tbaa !24
  %t1250 = load i64, ptr %l633, !tbaa !24
  %t1251 = icmp sle i64 %t1249, %t1250
  br i1 %t1251, label %bb338, label %bb339
bb337:
  call void @__olang_check_failed(ptr @olang_loc_82b9110c3ab34805_cdca7d87f9ba97f1)
  unreachable
bb338:
  %t1253 = getelementptr { i64, ptr }, ptr %l627, i32 0, i32 1
  %t1254 = load ptr, ptr %t1253, !tbaa !27
  %t1255 = load i64, ptr %l628, !tbaa !24
  %t1256 = load i64, ptr %l632, !tbaa !24
  %t1257 = getelementptr i8, ptr %t1254, i64 %t1255
  %t1258 = sub i64 %t1256, %t1255
  %t1259 = insertvalue { i64, ptr } undef, i64 %t1258, 0
  %t1260 = insertvalue { i64, ptr } %t1259, ptr %t1257, 1
  %t1261 = load ptr, ptr %l626, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t1261, { i64, ptr } %t1260)
  br label %bb340
bb339:
  call void @__olang_check_failed(ptr @olang_loc_82b9110c3ab34805_cdca7d87f9ba97f1)
  unreachable
bb340:
  store ptr %l51, ptr %l638, !tbaa !29
  %t1263 = load i64, ptr %l72, !tbaa !24
  %t1266 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %s0, ptr %s0, ptr %l29, i64 %t1263)
  %t1267 = extractvalue { i32, { i64, ptr } } %t1266, 1
  %t1268 = extractvalue { i32, { i64, ptr } } %t1266, 0
  store i32 %t1268, ptr %l643
  %t1269 = icmp ne i32 %t1268, 0
  br i1 %t1269, label %bb342, label %ok.1270, !prof !99
ok.1270:
  store { i64, ptr } %t1267, ptr %l642
  br label %bb341
bb341:
  %t1271 = load { i64, ptr }, ptr %l642, !tbaa !27
  store { i64, ptr } %t1271, ptr %l639, !tbaa !27
  br label %bb344
bb342:
  br label %bb343
bb343:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l639, !tbaa !27
  br label %bb344
bb344:
  %t1272 = load ptr, ptr %l638, !tbaa !29
  %t1273 = load { i64, ptr }, ptr %l639, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t1272, { i64, ptr } %t1273)
  br label %bb345
bb345:
  store ptr %l51, ptr %l644, !tbaa !29
  %t1274 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t1274, ptr %l645, !tbaa !27
  %t1275 = load ptr, ptr %l0, !tbaa !29
  %t1277 = getelementptr %"compiler/emit:Emitter", ptr %t1275, i32 0, i32 19
  %t1278 = load i64, ptr %l72, !tbaa !24
  %t1281 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s40, ptr %t1277, i64 %t1278)
  store { i64, ptr } %t1281, ptr %l649
  br label %bb346
bb346:
  %t1282 = load { i64, ptr }, ptr %l649, !tbaa !27
  %t1283 = extractvalue { i64, ptr } %t1282, 0
  store i64 %t1283, ptr %l650, !tbaa !24
  %t1284 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t1287 = extractvalue { i64, ptr } %t1284, 0
  store i64 %t1287, ptr %l653, !tbaa !24
  %t1288 = load { i64, ptr }, ptr %l645, !tbaa !27
  %t1289 = extractvalue { i64, ptr } %t1288, 0
  store i64 %t1289, ptr %l654, !tbaa !24
  %t1290 = load i64, ptr %l650, !tbaa !24
  %t1291 = icmp sge i64 %t1290, 0
  br i1 %t1291, label %bb347, label %bb348
bb347:
  %t1293 = load i64, ptr %l650, !tbaa !24
  %t1294 = load i64, ptr %l653, !tbaa !24
  %t1295 = icmp sle i64 %t1293, %t1294
  br i1 %t1295, label %bb349, label %bb350
bb348:
  call void @__olang_check_failed(ptr @olang_loc_20b52d6bf9b06c28_18043bf0e12df584)
  unreachable
bb349:
  %t1297 = load i64, ptr %l653, !tbaa !24
  %t1298 = load i64, ptr %l654, !tbaa !24
  %t1299 = icmp sle i64 %t1297, %t1298
  br i1 %t1299, label %bb351, label %bb352
bb350:
  call void @__olang_check_failed(ptr @olang_loc_20b52d6bf9b06c28_18043bf0e12df584)
  unreachable
bb351:
  %t1301 = getelementptr { i64, ptr }, ptr %l645, i32 0, i32 1
  %t1302 = load ptr, ptr %t1301, !tbaa !27
  %t1303 = load i64, ptr %l650, !tbaa !24
  %t1304 = load i64, ptr %l653, !tbaa !24
  %t1305 = getelementptr i8, ptr %t1302, i64 %t1303
  %t1306 = sub i64 %t1304, %t1303
  %t1307 = insertvalue { i64, ptr } undef, i64 %t1306, 0
  %t1308 = insertvalue { i64, ptr } %t1307, ptr %t1305, 1
  %t1309 = load ptr, ptr %l644, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t1309, { i64, ptr } %t1308)
  br label %bb353
bb352:
  call void @__olang_check_failed(ptr @olang_loc_20b52d6bf9b06c28_18043bf0e12df584)
  unreachable
bb353:
  %t1311 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1311, ptr %l659, !tbaa !27
  %t1312 = load i64, ptr %l69, !tbaa !24
  %t1314 = add i64 %t1312, 2
  %t1316 = getelementptr { i64, ptr }, ptr %l659, i32 0, i32 1
  %t1317 = load ptr, ptr %t1316, !tbaa !27
  %t1318 = getelementptr i64, ptr %t1317, i64 %t1314
  %t1319 = load i64, ptr %t1318, !tbaa !34
  store i64 %t1319, ptr %l62, !tbaa !24
  call void @__olang_scope_close(ptr %s40)
  br label %bb354
bb354:
  %t1321 = load i64, ptr %l68, !tbaa !24
  %t1323 = add i64 %t1321, 1
  store i64 %t1323, ptr %l68, !tbaa !24
  br label %bb286
bb355:
  store ptr %l51, ptr %l665, !tbaa !29
  %t1325 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t1325, ptr %l666, !tbaa !27
  %t1326 = load i64, ptr %l62, !tbaa !24
  store i64 %t1326, ptr %l667, !tbaa !24
  %t1327 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t1330 = extractvalue { i64, ptr } %t1327, 0
  store i64 %t1330, ptr %l670, !tbaa !24
  %t1331 = load { i64, ptr }, ptr %l666, !tbaa !27
  %t1332 = extractvalue { i64, ptr } %t1331, 0
  store i64 %t1332, ptr %l671, !tbaa !24
  %t1333 = load i64, ptr %l667, !tbaa !24
  %t1334 = icmp sge i64 %t1333, 0
  br i1 %t1334, label %bb356, label %bb357
bb356:
  %t1336 = load i64, ptr %l667, !tbaa !24
  %t1337 = load i64, ptr %l670, !tbaa !24
  %t1338 = icmp sle i64 %t1336, %t1337
  br i1 %t1338, label %bb358, label %bb359
bb357:
  call void @__olang_check_failed(ptr @olang_loc_9bd48c53dce2a143_9d318240a700faef)
  unreachable
bb358:
  %t1340 = load i64, ptr %l670, !tbaa !24
  %t1341 = load i64, ptr %l671, !tbaa !24
  %t1342 = icmp sle i64 %t1340, %t1341
  br i1 %t1342, label %bb360, label %bb361
bb359:
  call void @__olang_check_failed(ptr @olang_loc_9bd48c53dce2a143_9d318240a700faef)
  unreachable
bb360:
  %t1344 = getelementptr { i64, ptr }, ptr %l666, i32 0, i32 1
  %t1345 = load ptr, ptr %t1344, !tbaa !27
  %t1346 = load i64, ptr %l667, !tbaa !24
  %t1347 = load i64, ptr %l670, !tbaa !24
  %t1348 = getelementptr i8, ptr %t1345, i64 %t1346
  %t1349 = sub i64 %t1347, %t1346
  %t1350 = insertvalue { i64, ptr } undef, i64 %t1349, 0
  %t1351 = insertvalue { i64, ptr } %t1350, ptr %t1348, 1
  %t1352 = load ptr, ptr %l665, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t1352, { i64, ptr } %t1351)
  br label %bb362
bb361:
  call void @__olang_check_failed(ptr @olang_loc_9bd48c53dce2a143_9d318240a700faef)
  unreachable
bb362:
  br label %bb363
bb363:
  %t1354 = load i64, ptr %l57, !tbaa !24
  %t1356 = add i64 %t1354, 1
  store i64 %t1356, ptr %l57, !tbaa !24
  br label %bb236
bb364:
  store ptr %l51, ptr %l678, !tbaa !29
  %t1359 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l25)
  store { i64, ptr } %t1359, ptr %l680
  br label %bb365
bb365:
  %t1360 = load { i64, ptr }, ptr %l680, !tbaa !27
  %t1361 = extractvalue { i64, ptr } %t1360, 0
  %t1362 = extractvalue { i64, ptr } %t1360, 1
  %t1363 = mul i64 %t1361, 1
  %t1364 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1363)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1364, ptr %t1362, i64 %t1363, i1 false)
  %t1365 = insertvalue { i64, ptr } undef, i64 %t1361, 0
  %t1366 = insertvalue { i64, ptr } %t1365, ptr %t1364, 1
  %t1367 = load ptr, ptr %l678, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t1367, { i64, ptr } %t1366)
  br label %bb366
bb366:
  %t1369 = load ptr, ptr %l0, !tbaa !29
  %t1371 = getelementptr %"compiler/emit:Emitter", ptr %t1369, i32 0, i32 72
  %t1372 = load i64, ptr %t1371, !tbaa !24
  %t1374 = icmp sge i64 %t1372, 0
  br i1 %t1374, label %bb367, label %bb368
bb367:
  %t1376 = load ptr, ptr %l0, !tbaa !29
  %t1378 = getelementptr %"compiler/emit:Emitter", ptr %t1376, i32 0, i32 72
  %t1379 = load i64, ptr %t1378, !tbaa !24
  %t1382 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %s0, ptr %l55, i64 %t1379)
  store i1 %t1382, ptr %l689
  br label %bb369
bb368:
  store i1 false, ptr %l685, !tbaa !21
  br label %bb370
bb369:
  %t1383 = load i1, ptr %l689, !tbaa !21
  store i1 %t1383, ptr %l685, !tbaa !21
  br label %bb370
bb370:
  %t1384 = load i1, ptr %l685, !tbaa !21
  br i1 %t1384, label %bb371, label %bb372
bb371:
  store %olang.scope zeroinitializer, ptr %s48
  store ptr %l51, ptr %l690, !tbaa !29
  %t1385 = load ptr, ptr %l0, !tbaa !29
  %t1387 = getelementptr %"compiler/emit:Emitter", ptr %t1385, i32 0, i32 72
  %t1388 = load i64, ptr %t1387, !tbaa !24
  %t1391 = call i64 @compiler_2femit_2emetaNumber(ptr %s0, ptr %l55, i64 %t1388)
  store i64 %t1391, ptr %l694
  br label %bb373
bb372:
  br label %bb376
bb373:
  %t1392 = load i64, ptr %l694, !tbaa !24
  %t1393 = call { i64, ptr } @compiler_2femit_2edbgTail(ptr %s48, i64 %t1392)
  store { i64, ptr } %t1393, ptr %l695
  br label %bb374
bb374:
  %t1394 = load { i64, ptr }, ptr %l695, !tbaa !27
  %t1395 = extractvalue { i64, ptr } %t1394, 0
  %t1396 = extractvalue { i64, ptr } %t1394, 1
  %t1397 = mul i64 %t1395, 1
  %t1398 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1397)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1398, ptr %t1396, i64 %t1397, i1 false)
  %t1399 = insertvalue { i64, ptr } undef, i64 %t1395, 0
  %t1400 = insertvalue { i64, ptr } %t1399, ptr %t1398, 1
  %t1401 = load ptr, ptr %l690, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s48, ptr %t1401, { i64, ptr } %t1400)
  br label %bb375
bb375:
  call void @__olang_scope_close(ptr %s48)
  br label %bb376
bb376:
  store ptr %l51, ptr %l697, !tbaa !29
  %t1403 = load ptr, ptr %l0, !tbaa !29
  %t1405 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eattributes(ptr %v0, ptr %s0, ptr %t1403)
  store { i64, ptr } %t1405, ptr %l699
  br label %bb377
bb377:
  %t1406 = load { i64, ptr }, ptr %l699, !tbaa !27
  %t1407 = extractvalue { i64, ptr } %t1406, 0
  %t1408 = extractvalue { i64, ptr } %t1406, 1
  %t1409 = mul i64 %t1407, 1
  %t1410 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1409)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1410, ptr %t1408, i64 %t1409, i1 false)
  %t1411 = insertvalue { i64, ptr } undef, i64 %t1407, 0
  %t1412 = insertvalue { i64, ptr } %t1411, ptr %t1410, 1
  %t1413 = load ptr, ptr %l697, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t1413, { i64, ptr } %t1412)
  br label %bb378
bb378:
  %t1416 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l51)
  store { i64, ptr } %t1416, ptr %l702
  br label %bb379
bb379:
  call void @__olang_scope_close(ptr %s0)
  %t1417 = load { i64, ptr }, ptr %l702, !tbaa !27
  store { i64, ptr } %t1417, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecBitfield(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l17 = alloca i64
  %l20 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca i64
  %rv = alloca { i64, ptr }
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t12, ptr %l12, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l13, !tbaa !24
  %t15 = load i64, ptr %l13, !tbaa !24
  %t16 = mul i64 %t15, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l14, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = load i64, ptr %l13, !tbaa !24
  %t25 = mul i64 %t24, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %t23, i64 %t25, i1 false)
  %t26 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t26, ptr %l12, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t28, i32 %t29)
  store i64 %t32, ptr %l17
  br label %bb4
bb4:
  %t33 = load i64, ptr %l17, !tbaa !24
  store i64 %t33, ptr %l3, !tbaa !24
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t35 = load i32, ptr %l1, !tbaa !23
  %t38 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l20
  br label %bb5
bb5:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t44, ptr %l24
  br label %bb8
bb7:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  %t45 = load i1, ptr %l24, !tbaa !21
  %t46 = xor i1 %t45, true
  store i1 %t46, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t48 = load i1, ptr %l21, !tbaa !21
  store i1 %t48, ptr %l4, !tbaa !21
  %t49 = load i1, ptr %l4, !tbaa !21
  br i1 %t49, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb12
bb11:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb12
bb12:
  %t51 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t51, ptr %l5, !tbaa !27
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = icmp sgt i64 %t52, 64
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = load i1, ptr %l4, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb14:
  br label %bb18
bb15:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t58, ptr %l31, !tbaa !27
  br label %bb17
bb16:
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t60, ptr %l31, !tbaa !27
  br label %bb17
bb17:
  %t62 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load i64, ptr %l36, !tbaa !24
  %t65 = mul i64 %t64, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l37, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l36, !tbaa !24
  %t74 = mul i64 %t73, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t70, ptr %t72, i64 %t74, i1 false)
  %t75 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t75, ptr %l31, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t76, ptr %rv
  br label %ret
bb18:
  %t77 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t77, ptr %l38, !tbaa !27
  %t78 = load i64, ptr %l3, !tbaa !24
  %t80 = call i64 @compiler_2femit_2eIntBytes8(i64 %t78)
  store i64 %t80, ptr %l40
  br label %bb19
bb19:
  %t81 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = load i64, ptr %l40, !tbaa !24
  %t85 = call i64 @__olang_fmt_i64(ptr null, i64 %t84)
  %t86 = add i64 %t83, %t85
  %t87 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t90 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t89)
  call void @olang_textcopy(ptr %t90, ptr %t82, i64 %t83)
  %t91 = getelementptr i8, ptr %t90, i64 %t83
  %t92 = call i64 @__olang_fmt_i64(ptr %t91, i64 %t84)
  %t93 = getelementptr i8, ptr %t91, i64 %t85
  call void @olang_textcopy(ptr %t93, ptr %t87, i64 %t88)
  %t94 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t90, 1
  store { i64, ptr } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecHeader(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/cabi:Way"
  %l4 = alloca i32
  %l8 = alloca i32
  %l12 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca i1
  %l30 = alloca %"compiler/cabi:Way"
  %l32 = alloca { i64, ptr }
  %l36 = alloca i1
  %l38 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
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
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load i32, ptr %l8, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t20 = icmp eq i32 %t16, %t17
  store i1 %t20, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l12, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  store i64 %t25, ptr %l18, !tbaa !24
  %t26 = load i64, ptr %l18, !tbaa !24
  %t27 = mul i64 %t26, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l19, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l18, !tbaa !24
  %t36 = mul i64 %t35, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %t34, i64 %t36, i1 false)
  %t37 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t37, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t38 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t38, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/emit:Emitter", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l23
  br label %bb8
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/emit:Emitter", ptr %t47, i32 0, i32 3
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/emit:Emitter", ptr %t51, i32 0, i32 56
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t55 = load i32, ptr %l2, !tbaa !23
  %t57 = inttoptr i64 0 to ptr
  %t61 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v0, ptr %s0, ptr %t57, ptr %t50, { i64, ptr } %t54, i32 %t55)
  store %"compiler/cabi:Way" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"compiler/cabi:Way", ptr %l30
  store %"compiler/cabi:Way" %t62, ptr %l3
  %t63 = getelementptr %"compiler/cabi:Way", ptr %l3, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 5}
  store i32 %t64, ptr %l4
  %t66 = load i32, ptr %l4, !range !{i32 0, i32 5}
  %t68 = trunc i64 0 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb18
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t71 = getelementptr %"compiler/cabi:Way", ptr %l3, i32 0, i32 4
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t72, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t74, ptr %l36
  br label %bb13
bb13:
  %t75 = load i1, ptr %l36, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t78 = getelementptr %"compiler/cabi:Way", ptr %l3, i32 0, i32 4
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 1
  %t82 = extractvalue { i64, ptr } %t79, 0
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t85)
  call void @olang_textcopy(ptr %t86, ptr %t81, i64 %t82)
  %t87 = getelementptr i8, ptr %t86, i64 %t82
  call void @olang_textcopy(ptr %t87, ptr %t83, i64 %t84)
  %t88 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t86, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  store { i64, ptr } %t96, ptr %l38, !tbaa !27
  br label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb16
bb16:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l2, !tbaa !23
  %t102 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s2, ptr %t98, i32 %t99)
  store { i64, ptr } %t102, ptr %l44
  br label %bb17
bb17:
  %t103 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t106 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = add i64 %t105, %t108
  %t110 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t109)
  call void @olang_textcopy(ptr %t110, ptr %t104, i64 %t105)
  %t111 = getelementptr i8, ptr %t110, i64 %t105
  call void @olang_textcopy(ptr %t111, ptr %t107, i64 %t108)
  %t112 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t110, 1
  store { i64, ptr } %t113, ptr %l32, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb18:
  %t115 = load i32, ptr %l4, !range !{i32 0, i32 5}
  %t117 = trunc i64 1 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t121 = call { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %s0, ptr %v1, ptr %l3)
  store { i64, ptr } %t121, ptr %l49
  br label %bb22
bb22:
  %t122 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t122, ptr %l32, !tbaa !27
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t123, ptr %l32, !tbaa !27
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_6aada305a3873fb6_c16c54d6f05c33ea)
  unreachable
bb28:
  %t125 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  store i64 %t126, ptr %l52, !tbaa !24
  %t127 = load i64, ptr %l52, !tbaa !24
  %t128 = mul i64 %t127, 1
  %t129 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l53, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = load i64, ptr %l52, !tbaa !24
  %t137 = mul i64 %t136, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t133, ptr %t135, i64 %t137, i1 false)
  %t138 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t138, ptr %l32, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t139 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t139, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecloneSym(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/lower:Clone"
  %l7 = alloca %"compiler/lower:Clone"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 45
  %t10 = call %"compiler/lower:Clone" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aClone_3e_2eAt_3ccompiler_2flower_3aClone_3e(ptr %v0, ptr %t6, i64 %a1)
  store %"compiler/lower:Clone" %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load %"compiler/lower:Clone", ptr %l7
  store %"compiler/lower:Clone" %t11, ptr %l2
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lower:Clone", ptr %l2, i32 0, i32 0
  %t14 = load { i64, [2 x i64] }, ptr %t13
  %t17 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t12, { i64, [2 x i64] } %t14)
  store { i64, ptr } %t17, ptr %l10
  br label %bb2
bb2:
  %t18 = getelementptr %"compiler/lower:Clone", ptr %l2, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l11, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lower:Clone", ptr %l2, i32 0, i32 2
  %t22 = load { i64, [2 x i64] }, ptr %t21
  %t25 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t20, { i64, [2 x i64] } %t22)
  store { i64, ptr } %t25, ptr %l14
  br label %bb3
bb3:
  %t26 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t29 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load i64, ptr %l11, !tbaa !24
  %t33 = call i64 @__olang_fmt_i64(ptr null, i64 %t32)
  %t34 = add i64 %t31, %t33
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t38 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = add i64 %t37, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t27, i64 %t28)
  %t43 = getelementptr i8, ptr %t42, i64 %t28
  call void @olang_textcopy(ptr %t43, ptr %t29, i64 %t30)
  %t44 = getelementptr i8, ptr %t43, i64 %t30
  %t45 = call i64 @__olang_fmt_i64(ptr %t44, i64 %t32)
  %t46 = getelementptr i8, ptr %t44, i64 %t33
  call void @olang_textcopy(ptr %t46, ptr %t35, i64 %t36)
  %t47 = getelementptr i8, ptr %t46, i64 %t36
  call void @olang_textcopy(ptr %t47, ptr %t39, i64 %t40)
  %t48 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t42, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t49, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeFor(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca i32
  %lp5 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l11 = alloca i32
  %l14 = alloca i1
  %l15 = alloca i1
  %l19 = alloca i64
  %l25 = alloca i64
  %l31 = alloca { i64, ptr }
  %l35 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i64
  %rv = alloca { i64, ptr }
  %t32 = alloca { i64, [4 x i64] }, align 8
  %t35 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %t1, { i64, [2 x i64] } %t2)
  store { i64, ptr } %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t6, ptr %lp3
  %t7 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t8 = load ptr, ptr %lp3
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, [2 x i64] }, ptr %l1
  %t13 = call i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %t9, { i64, [2 x i64] } %t10)
  store i32 %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load i32, ptr %l11, !tbaa !23
  store i32 %t14, ptr %l4, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, [2 x i64] }, ptr %l1
  %t19 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %t15, { i64, [2 x i64] } %t16)
  store i1 %t19, ptr %l14
  br label %bb3
bb3:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load { i64, [2 x i64] }, ptr %l1
  %t23 = load i32, ptr %l4, !tbaa !23
  %t27 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t21, { i64, [2 x i64] } %t22, i32 %t23)
  store i64 %t27, ptr %l19
  br label %bb6
bb5:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 3
  %t31 = load ptr, ptr %t30, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 0
  store i64 0, ptr %t33
  %t34 = load { i64, [4 x i64] }, ptr %t32
  store { i64, [7 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [7 x i64] }, ptr %t35, i32 0, i32 0
  store i64 2, ptr %t36
  %t38 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t34, 0
  %t39 = getelementptr { i64, [7 x i64] }, ptr %t35, i32 0, i32 1
  store { { i64, [4 x i64] } } %t38, ptr %t39
  %t40 = load { i64, [7 x i64] }, ptr %t35
  %t41 = load i32, ptr %l2, !tbaa !23
  %t45 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t31, { i64, [7 x i64] } %t40, i32 %t41)
  store i64 %t45, ptr %l25
  br label %bb7
bb7:
  %t46 = load i64, ptr %l19, !tbaa !24
  %t47 = load i64, ptr %l25, !tbaa !24
  %t48 = icmp eq i64 %t46, %t47
  store i1 %t48, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t50 = load i1, ptr %l15, !tbaa !21
  br i1 %t50, label %bb9, label %bb10
bb9:
  %t51 = load ptr, ptr %lp3
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %lp3
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t57 = load i32, ptr %l2, !tbaa !23
  %t61 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ethunkSym(ptr %v0, ptr %v1, ptr %v1, ptr %t54, { i64, ptr } %t56, i32 %t57)
  store { i64, ptr } %t61, ptr %l31
  br label %bb12
bb12:
  %t62 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t62, ptr %lp5
  %t63 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t64 = load ptr, ptr %lp5
  store { i64, ptr } %t63, ptr %t64, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/emit:Emitter", ptr %t65, i32 0, i32 31
  %t68 = load ptr, ptr %lp5
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t72 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %t67, { i64, ptr } %t69)
  store i1 %t72, ptr %l35
  br label %bb13
bb13:
  %t73 = load i1, ptr %l35, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/emit:Emitter", ptr %t76, i32 0, i32 31
  store ptr %t78, ptr %l38, !tbaa !29
  %t79 = ptrtoint ptr %v0 to i64
  store i64 %t79, ptr %l39, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t80, label %bb16, label %bb17
bb15:
  br label %bb21
bb16:
  %t82 = call ptr @__olang_region_make(ptr %v0)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l39, !tbaa !24
  br label %bb17
bb17:
  %t84 = load ptr, ptr %lp5
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = extractvalue { i64, ptr } %t85, 0
  %t89 = load i64, ptr %l39
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = call ptr @__olang_scope_alloc(ptr %t90, i64 %t88)
  call void @olang_textcopy(ptr %t91, ptr %t87, i64 %t88)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t95 = load i64, ptr %l39
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = extractvalue { i64, ptr } %t93, 0
  %t98 = extractvalue { i64, ptr } %t93, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %t96, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %l38, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v0, ptr %t103, { i64, ptr } %t102, i1 true)
  br label %bb18
bb18:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/emit:Emitter", ptr %t105, i32 0, i32 32
  %t108 = load { i64, [2 x i64] }, ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t107, { i64, [2 x i64] } %t108)
  br label %bb19
bb19:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/emit:Emitter", ptr %t111, i32 0, i32 33
  %t114 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t113, i32 %t114)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t117 = load ptr, ptr %lp5
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgName(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l20 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb42
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/emit:Emitter", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/lower:Lowerer", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t21, i64 %t25)
  store ptr %t28, ptr %l20
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 1
  %t32 = load { i64, [2 x i64] }, ptr %t31
  store { i64, [2 x i64] } %t32, ptr %l4
  %t34 = load { i64, [2 x i64] }, ptr %l4
  %t36 = extractvalue { i64, [2 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 0
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t40 = getelementptr { i64 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  store i64 %t41, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb11
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l27, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/emit:Emitter", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l29, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/emit:Emitter", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t51, i64 %t52)
  store i64 %t55, ptr %l33
  br label %bb8
bb8:
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t57 = load i64, ptr %l33, !tbaa !24
  %t58 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t56, i64 %t57)
  store ptr %t58, ptr %l34
  br label %bb9
bb9:
  %t59 = load ptr, ptr %l34, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Func", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %t61, !tbaa !23
  %t63 = load ptr, ptr %l27, !tbaa !29
  %t65 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s2, ptr %t63, i32 %t62)
  store { i64, ptr } %t65, ptr %l37
  br label %bb10
bb10:
  %t66 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t67, i64 %t68)
  %t70 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  store { i64, ptr } %t71, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb11:
  %t73 = load { i64, [2 x i64] }, ptr %l4
  %t75 = extractvalue { i64, [2 x i64] } %t73, 0
  %t76 = icmp eq i64 %t75, 1
  br i1 %t76, label %bb12, label %bb13
bb12:
  %t78 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t79 = getelementptr { i32, i32 }, ptr %t78, i32 0, i32 0
  %t80 = load i32, ptr %t79
  store i32 %t80, ptr %l6, !tbaa !23
  br label %bb14
bb13:
  br label %bb16
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t83 = load i32, ptr %l6, !tbaa !23
  %t85 = inttoptr i64 0 to ptr
  %t88 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s4, ptr %t85, ptr %t82, i32 %t83)
  store { i64, ptr } %t88, ptr %l45
  br label %bb15
bb15:
  %t89 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t90, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb41
bb16:
  %t96 = load { i64, [2 x i64] }, ptr %l4
  %t98 = extractvalue { i64, [2 x i64] } %t96, 0
  %t99 = icmp eq i64 %t98, 3
  br i1 %t99, label %bb17, label %bb18
bb17:
  %t101 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t102 = getelementptr { i32 }, ptr %t101, i32 0, i32 0
  %t103 = load i32, ptr %t102
  store i32 %t103, ptr %l7, !tbaa !23
  br label %bb19
bb18:
  br label %bb21
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t106 = load i32, ptr %l7, !tbaa !23
  %t108 = inttoptr i64 0 to ptr
  %t111 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s6, ptr %t108, ptr %t105, i32 %t106)
  store { i64, ptr } %t111, ptr %l53
  br label %bb20
bb20:
  %t112 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t117 = add i64 %t114, %t116
  %t118 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t117)
  call void @olang_textcopy(ptr %t118, ptr %t113, i64 %t114)
  %t119 = getelementptr i8, ptr %t118, i64 %t114
  call void @olang_textcopy(ptr %t119, ptr %t115, i64 %t116)
  %t120 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t118, 1
  store { i64, ptr } %t121, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb41
bb21:
  %t123 = load { i64, [2 x i64] }, ptr %l4
  %t125 = extractvalue { i64, [2 x i64] } %t123, 0
  %t126 = icmp eq i64 %t125, 4
  br i1 %t126, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l57, !tbaa !27
  %t128 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t128, ptr %l23, !tbaa !27
  br label %bb41
bb25:
  %t130 = load { i64, [2 x i64] }, ptr %l4
  %t132 = extractvalue { i64, [2 x i64] } %t130, 0
  %t133 = icmp eq i64 %t132, 5
  br i1 %t133, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb30
bb28:
  store %olang.scope zeroinitializer, ptr %s9
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i32, ptr %l3, !tbaa !23
  %t138 = sext i32 %t136 to i64
  %t141 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestName(ptr %v0, ptr %s9, ptr %t135, i64 %t138)
  store { i64, ptr } %t141, ptr %l64
  br label %bb29
bb29:
  %t142 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t144 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t147 = add i64 %t143, %t146
  %t148 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t147)
  call void @olang_textcopy(ptr %t148, ptr %t142, i64 %t143)
  %t149 = getelementptr i8, ptr %t148, i64 %t143
  call void @olang_textcopy(ptr %t149, ptr %t145, i64 %t146)
  %t150 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t148, 1
  store { i64, ptr } %t151, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb41
bb30:
  %t153 = load { i64, [2 x i64] }, ptr %l4
  %t155 = extractvalue { i64, [2 x i64] } %t153, 0
  %t156 = icmp eq i64 %t155, 6
  br i1 %t156, label %bb31, label %bb32
bb31:
  %t158 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t159 = getelementptr { i64, i32 }, ptr %t158, i32 0, i32 1
  %t160 = load i32, ptr %t159
  store i32 %t160, ptr %l8, !tbaa !23
  br label %bb33
bb32:
  br label %bb35
bb33:
  store %olang.scope zeroinitializer, ptr %s11
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i32, ptr %l8, !tbaa !23
  %t166 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s11, ptr %t162, i32 %t163)
  store { i64, ptr } %t166, ptr %l71
  br label %bb34
bb34:
  %t167 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t173 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t172)
  call void @olang_textcopy(ptr %t173, ptr %t168, i64 %t169)
  %t174 = getelementptr i8, ptr %t173, i64 %t169
  call void @olang_textcopy(ptr %t174, ptr %t170, i64 %t171)
  %t175 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t173, 1
  store { i64, ptr } %t176, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  br label %bb41
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load { i64, [2 x i64] }, ptr %l1
  %t182 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %t178, { i64, [2 x i64] } %t179)
  store { i64, ptr } %t182, ptr %l75
  br label %bb39
bb39:
  %t183 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t183, ptr %l23, !tbaa !27
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_18f6acb4865fb5f2_de2c0e3f26126f06)
  unreachable
bb41:
  %t184 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 0
  store i64 %t185, ptr %l76, !tbaa !24
  %t186 = load i64, ptr %l76, !tbaa !24
  %t187 = mul i64 %t186, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t187)
  %t189 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  store { i64, ptr } %t190, ptr %l77, !tbaa !27
  %t191 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = load i64, ptr %l76, !tbaa !24
  %t196 = mul i64 %t195, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t192, ptr %t194, i64 %t196, i1 false)
  %t197 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t197, ptr %l23, !tbaa !27
  %t198 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t198, ptr %rv
  br label %ret
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load { i64, [2 x i64] }, ptr %l1
  %t203 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %t199, { i64, [2 x i64] } %t200)
  store { i64, ptr } %t203, ptr %l80
  br label %bb46
bb46:
  %t204 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t204, ptr %rv
  br label %ret
bb47:
  call void @__olang_check_failed(ptr @olang_loc_795f0ceaa031aa73_92815be2925279e7)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/emit:Emitter", ptr %t2, i32 0, i32 3
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = inttoptr i64 0 to ptr
  %t11 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t8, ptr %t5, i32 %a1)
  store { i64, ptr } %t11, ptr %l7
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  %t14 = extractvalue { i64, ptr } %t12, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %s0, ptr %v1, ptr %t19, { i64, ptr } %t18)
  store { i64, ptr } %t21, ptr %l9
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  %t6 = extractvalue { i64, ptr } %a2, 1
  %t7 = extractvalue { i64, ptr } %a2, 0
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t10 = add i64 %t7, %t9
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t6, i64 %t7)
  %t12 = getelementptr i8, ptr %t11, i64 %t7
  call void @olang_textcopy(ptr %t12, ptr %t8, i64 %t9)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t11, 1
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t17 = extractvalue { i64, ptr } %t14, 1
  %t18 = mul i64 %t16, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  call void @llvm.memcpy.p0.p0.i64(ptr %t19, ptr %t17, i64 %t18, i1 false)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } %a1, i64 %t3, { i64, ptr } %t21, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edrain(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l9 = alloca ptr
  %l12 = alloca ptr
  %l17 = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 16
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/emit:Emitter", ptr %t7, i32 0, i32 14
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l6
  br label %bb2
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l9, !tbaa !29
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t20 = getelementptr %"compiler/emit:Emitter", ptr %t19, i32 0, i32 16
  %t21 = load i64, ptr %t20, !tbaa !24
  %t23 = add i64 %t21, 1
  %t25 = load ptr, ptr %l9, !tbaa !29
  %t26 = getelementptr %"compiler/emit:Emitter", ptr %t25, i32 0, i32 16
  store i64 %t23, ptr %t26, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l12, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 14
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/emit:Emitter", ptr %t31, i32 0, i32 16
  %t34 = load i64, ptr %t33, !tbaa !24
  %t37 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t30, i64 %t34)
  store { i64, [2 x i64] } %t37, ptr %l17
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l12, !tbaa !29
  %t39 = load { i64, [2 x i64] }, ptr %l17
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efunction(ptr %v0, ptr %t38, { i64, [2 x i64] } %t39)
  br label %bb7
bb7:
  br label %bb8
bb8:
  br label %bb1
bb9:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenDropFn(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l21 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca { i64, [2 x i64] }
  %l40 = alloca i32
  %l41 = alloca %"compiler/source:Span"
  %l42 = alloca %"compiler/mir:Fn"
  %l45 = alloca %"compiler/emit:fnEm"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l58 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i64
  %l83 = alloca ptr
  %l84 = alloca ptr
  %l85 = alloca ptr
  %l86 = alloca i32
  %l89 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l100 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l105 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l114 = alloca i64
  %l117 = alloca i64
  %l120 = alloca i64
  %l122 = alloca i64
  %l128 = alloca ptr
  %l129 = alloca { i64, ptr }
  %l130 = alloca i64
  %l131 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t76 = alloca { i64, [2 x i64] }, align 8
  %t86 = alloca %"compiler/mir:Fn", align 8
  %t92 = alloca %"compiler/emit:fnEm", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = inttoptr i64 0 to ptr
  %t12 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t9, ptr %t4, i32 %t7)
  store { i64, ptr } %t12, ptr %l21
  br label %bb1
bb1:
  %t13 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t15 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 1
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t18 = add i64 %t14, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t13, i64 %t14)
  %t20 = getelementptr i8, ptr %t19, i64 %t14
  call void @olang_textcopy(ptr %t20, ptr %t16, i64 %t17)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t19, 1
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = extractvalue { i64, ptr } %t22, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t31 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %s0, ptr %v1, { i64, ptr } %t29)
  store { i64, ptr } %t31, ptr %l24
  br label %bb2
bb2:
  %t32 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t32, ptr %lp3
  %t33 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t34 = load ptr, ptr %lp3
  store { i64, ptr } %t33, ptr %t34, !tbaa !27
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/emit:Emitter", ptr %t35, i32 0, i32 70
  %t38 = load ptr, ptr %lp3
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t42 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %t37, { i64, ptr } %t39)
  store i1 %t42, ptr %l28
  br label %bb3
bb3:
  %t43 = load i1, ptr %l28, !tbaa !21
  br i1 %t43, label %bb4, label %bb5
bb4:
  %t44 = load ptr, ptr %lp3
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/emit:Emitter", ptr %t47, i32 0, i32 70
  store ptr %t49, ptr %l31, !tbaa !29
  %t50 = ptrtoint ptr %v0 to i64
  store i64 %t50, ptr %l32, !tbaa !24
  %t51 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t51, label %bb7, label %bb8
bb7:
  %t53 = call ptr @__olang_region_make(ptr %v0)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l32, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %lp3
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 1
  %t59 = extractvalue { i64, ptr } %t56, 0
  %t60 = load i64, ptr %l32
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = call ptr @__olang_scope_alloc(ptr %t61, i64 %t59)
  call void @olang_textcopy(ptr %t62, ptr %t58, i64 %t59)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t66 = load i64, ptr %l32
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = extractvalue { i64, ptr } %t64, 0
  %t69 = extractvalue { i64, ptr } %t64, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %t67, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v0, ptr %t74, { i64, ptr } %t73, i1 true)
  br label %bb9
bb9:
  store { i64, [2 x i64] } zeroinitializer, ptr %t76
  %t77 = getelementptr { i64, [2 x i64] }, ptr %t76, i32 0, i32 0
  store i64 4, ptr %t77
  %t78 = insertvalue { i64 } undef, i64 0, 0
  %t79 = getelementptr { i64, [2 x i64] }, ptr %t76, i32 0, i32 1
  store { i64 } %t78, ptr %t79
  %t80 = load { i64, [2 x i64] }, ptr %t76
  store { i64, [2 x i64] } %t80, ptr %l4
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l38, !tbaa !29
  %t83 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t83, ptr %l39
  %t84 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t84, ptr %l40, !tbaa !23
  %t85 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t85, ptr %l41
  br label %bb10
bb10:
  %t87 = load { i64, [2 x i64] }, ptr %l39
  %t88 = load i32, ptr %l40, !tbaa !23
  %t89 = load %"compiler/source:Span", ptr %l41
  call void @compiler_2fmir_3aFn_2ector(ptr %t86, ptr %s0, { i64, [2 x i64] } %t87, i32 %t88, i64 0, %"compiler/source:Span" %t89)
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t86, i64 800, i1 false)
  br label %bb11
bb11:
  %t90 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %l42, i64 800, i1 false)
  %t91 = load { i64, [2 x i64] }, ptr %l4
  %t93 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2femit_3afnEm_2ector(ptr %t92, ptr %v0, ptr %s0, ptr %s0, ptr %t93, ptr %t90, { i64, [2 x i64] } %t91)
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t92, i64 1104, i1 false)
  br label %bb12
bb12:
  %t96 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 1104, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %l45, i64 1104, i1 false)
  store ptr %t96, ptr %l5, !tbaa !29
  %t98 = load ptr, ptr %l5, !tbaa !29
  %t100 = getelementptr %"compiler/emit:fnEm", ptr %t98, i32 0, i32 31
  store i1 true, ptr %t100, !tbaa !21
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t102 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersAt(ptr %s0, ptr %s0, ptr %s0, ptr %v0, ptr %t101, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d29, i32 0, i32 1) }, i32 %t102, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) }, i1 false)
  br label %bb13
bb13:
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t106 = load i32, ptr %l1, !tbaa !23
  %t109 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3afnEm_2egenLeaves(ptr %s0, ptr %s0, ptr %v0, ptr %t105, i32 %t106)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l52
  br label %bb14
bb14:
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l6
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s0, ptr %l6)
  store i64 %t112, ptr %l54
  br label %bb15
bb15:
  %t113 = load i64, ptr %l54, !tbaa !24
  %t114 = icmp sgt i64 %t113, 0
  br i1 %t114, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t116 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s4, ptr %t116, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d31, i32 0, i32 1) })
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s4)
  br label %bb19
bb19:
  store i64 0, ptr %l7, !tbaa !24
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s0, ptr %l6)
  store i64 %t119, ptr %l58
  br label %bb20
bb20:
  %t120 = load i64, ptr %l58, !tbaa !24
  store i64 %t120, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t121 = load i64, ptr %l8, !tbaa !24
  %t122 = load i64, ptr %l7, !tbaa !24
  %t125 = icmp sgt i64 %t121, %t122
  br i1 %t125, label %bb21, label %bb22
bb21:
  %t127 = load i64, ptr %l9, !tbaa !24
  %t129 = icmp sgt i64 %t127, 0
  br i1 %t129, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb26
bb23:
  %t131 = load i64, ptr %l8, !tbaa !24
  %t132 = load i64, ptr %l7, !tbaa !24
  %t135 = sub i64 %t131, %t132
  %t136 = load i64, ptr %l9, !tbaa !24
  %t139 = add i64 %t135, %t136
  %t141 = sub i64 %t139, 1
  %t142 = load i64, ptr %l9, !tbaa !24
  %t145 = sdiv i64 %t141, %t142
  store i64 %t145, ptr %l65, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb25
bb25:
  %t147 = load i64, ptr %l65, !tbaa !24
  store i64 %t147, ptr %l62, !tbaa !24
  br label %bb26
bb26:
  %t148 = load i64, ptr %l62, !tbaa !24
  store i64 %t148, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t149 = load i64, ptr %l11, !tbaa !24
  %t150 = load i64, ptr %l10, !tbaa !24
  %t153 = icmp slt i64 %t149, %t150
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s6)
  br label %bb39
bb29:
  br label %bb30
bb30:
  %t157 = load i64, ptr %l7, !tbaa !24
  %t158 = load i64, ptr %l11, !tbaa !24
  %t159 = load i64, ptr %l9, !tbaa !24
  %t162 = mul i64 %t158, %t159
  %t165 = add i64 %t157, %t162
  store i64 %t165, ptr %l12, !tbaa !24
  %t167 = load ptr, ptr %l5, !tbaa !29
  store ptr %t167, ptr %l83, !tbaa !29
  %t168 = load ptr, ptr %l5, !tbaa !29
  store ptr %t168, ptr %l84, !tbaa !29
  %t169 = load ptr, ptr %l5, !tbaa !29
  store ptr %t169, ptr %l85, !tbaa !29
  %t170 = load i32, ptr %l1, !tbaa !23
  store i32 %t170, ptr %l86, !tbaa !23
  %t171 = load i64, ptr %l12, !tbaa !24
  %t174 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %s0, ptr %s6, ptr %l6, i64 %t171)
  store { i64, ptr } %t174, ptr %l89
  br label %bb31
bb31:
  %t175 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  store i64 %t176, ptr %l90, !tbaa !24
  %t177 = load i64, ptr %l90, !tbaa !24
  %t178 = mul i64 %t177, 8
  %t179 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t178)
  %t180 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  store { i64, ptr } %t181, ptr %l91, !tbaa !27
  %t182 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = load i64, ptr %l90, !tbaa !24
  %t187 = mul i64 %t186, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t183, ptr %t185, i64 %t187, i1 false)
  %t188 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 0
  %t190 = extractvalue { i64, ptr } %t188, 1
  %t191 = mul i64 %t189, 8
  %t192 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  %t195 = load ptr, ptr %l85, !tbaa !29
  %t196 = load i32, ptr %l86, !tbaa !23
  %t198 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eleafAt(ptr %s0, ptr %s6, ptr %s6, ptr %s6, ptr %v0, ptr %t195, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, i32 %t196, { i64, ptr } %t194)
  store { i64, ptr } %t198, ptr %l93
  br label %bb32
bb32:
  %t199 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t201 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t201, 1
  %t203 = extractvalue { i64, ptr } %t201, 0
  %t204 = add i64 %t200, %t203
  %t205 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t206 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t207 = add i64 %t204, %t206
  %t208 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t207)
  call void @olang_textcopy(ptr %t208, ptr %t199, i64 %t200)
  %t209 = getelementptr i8, ptr %t208, i64 %t200
  call void @olang_textcopy(ptr %t209, ptr %t202, i64 %t203)
  %t210 = getelementptr i8, ptr %t209, i64 %t203
  call void @olang_textcopy(ptr %t210, ptr %t205, i64 %t206)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t208, 1
  %t214 = extractvalue { i64, ptr } %t212, 0
  %t215 = extractvalue { i64, ptr } %t212, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  %t220 = load ptr, ptr %l84, !tbaa !29
  %t222 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %s0, ptr %s6, ptr %s6, ptr %v0, ptr %t220, { i64, ptr } %t219)
  store { i64, ptr } %t222, ptr %l96
  br label %bb33
bb33:
  %t223 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  %t225 = extractvalue { i64, ptr } %t223, 1
  %t226 = mul i64 %t224, 1
  %t227 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t226)
  call void @llvm.memcpy.p0.p0.i64(ptr %t227, ptr %t225, i64 %t226, i1 false)
  %t228 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t227, 1
  %t230 = load ptr, ptr %l83, !tbaa !29
  %t232 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %s0, ptr %s6, ptr %s6, ptr %s6, ptr %s6, ptr %v0, ptr %t230, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) }, { i64, ptr } %t229, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t232, ptr %l98
  br label %bb34
bb34:
  %t233 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t234 = load ptr, ptr %l5, !tbaa !29
  store ptr %t234, ptr %l99, !tbaa !29
  store { i64, ptr } %t233, ptr %l100, !tbaa !27
  %t236 = load ptr, ptr %l5, !tbaa !29
  store ptr %t236, ptr %l101, !tbaa !29
  %t237 = load ptr, ptr %l5, !tbaa !29
  %t238 = load i32, ptr %l1, !tbaa !23
  %t239 = load i64, ptr %l12, !tbaa !24
  %t243 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eownWord(ptr %s0, ptr %s6, ptr %s6, ptr %v0, ptr %t237, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d37, i32 0, i32 1) }, i32 %t238, i64 %t239)
  store { i64, ptr } %t243, ptr %l105
  br label %bb35
bb35:
  %t244 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 0
  %t246 = extractvalue { i64, ptr } %t244, 1
  %t247 = mul i64 %t245, 1
  %t248 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t247)
  call void @llvm.memcpy.p0.p0.i64(ptr %t248, ptr %t246, i64 %t247, i1 false)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  %t251 = load ptr, ptr %l101, !tbaa !29
  %t253 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %s0, ptr %s6, ptr %s6, ptr %s6, ptr %s6, ptr %v0, ptr %t251, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d38, i32 0, i32 1) }, { i64, ptr } %t250, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t253, ptr %l107
  br label %bb36
bb36:
  %t254 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t255 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t256 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 1
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t259 = add i64 %t255, %t258
  %t260 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t262 = add i64 %t259, %t261
  %t263 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = add i64 %t262, %t265
  %t267 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t268 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t269 = add i64 %t266, %t268
  %t270 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t269)
  call void @olang_textcopy(ptr %t270, ptr %t254, i64 %t255)
  %t271 = getelementptr i8, ptr %t270, i64 %t255
  call void @olang_textcopy(ptr %t271, ptr %t257, i64 %t258)
  %t272 = getelementptr i8, ptr %t271, i64 %t258
  call void @olang_textcopy(ptr %t272, ptr %t260, i64 %t261)
  %t273 = getelementptr i8, ptr %t272, i64 %t261
  call void @olang_textcopy(ptr %t273, ptr %t264, i64 %t265)
  %t274 = getelementptr i8, ptr %t273, i64 %t265
  call void @olang_textcopy(ptr %t274, ptr %t267, i64 %t268)
  %t275 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t270, 1
  %t278 = extractvalue { i64, ptr } %t276, 0
  %t279 = extractvalue { i64, ptr } %t276, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t284 = load ptr, ptr %l99, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %s0, ptr %s6, ptr %v0, ptr %t284, { i64, ptr } %t283)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %bb38
bb38:
  %t286 = load i64, ptr %l11, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l11, !tbaa !24
  br label %bb27
bb39:
  %t290 = load ptr, ptr %l5, !tbaa !29
  %t291 = load i32, ptr %l1, !tbaa !23
  %t294 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %s0, ptr %v0, ptr %t290, i32 %t291)
  store i64 %t294, ptr %l114
  br label %bb40
bb40:
  %t295 = load i64, ptr %l114, !tbaa !24
  %t298 = icmp sle i64 %t295, 8
  br i1 %t298, label %bb41, label %bb42
bb41:
  %t300 = load ptr, ptr %l5, !tbaa !29
  %t301 = load i32, ptr %l1, !tbaa !23
  %t304 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2egenBytes(ptr %s0, ptr %v0, ptr %t300, i32 %t301)
  store i64 %t304, ptr %l120
  br label %bb43
bb42:
  store i64 -1, ptr %l117, !tbaa !24
  br label %bb45
bb43:
  %t305 = load i64, ptr %l120, !tbaa !24
  %t306 = add i64 %t305, 8
  %t308 = call i64 @compiler_2femit_2egenClass(i64 %t306)
  store i64 %t308, ptr %l122
  br label %bb44
bb44:
  %t309 = load i64, ptr %l122, !tbaa !24
  store i64 %t309, ptr %l117, !tbaa !24
  br label %bb45
bb45:
  %t310 = load i64, ptr %l117, !tbaa !24
  %t311 = load ptr, ptr %l5, !tbaa !29
  %t314 = add i64 %t310, 1
  %t315 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t316 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t318 = call i64 @__olang_fmt_i64(ptr null, i64 %t314)
  %t319 = add i64 %t316, %t318
  %t320 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t319)
  call void @olang_textcopy(ptr %t320, ptr %t315, i64 %t316)
  %t321 = getelementptr i8, ptr %t320, i64 %t316
  %t322 = call i64 @__olang_fmt_i64(ptr %t321, i64 %t314)
  %t323 = insertvalue { i64, ptr } undef, i64 %t319, 0
  %t324 = insertvalue { i64, ptr } %t323, ptr %t320, 1
  %t326 = extractvalue { i64, ptr } %t324, 0
  %t327 = extractvalue { i64, ptr } %t324, 1
  %t328 = mul i64 %t326, 1
  %t329 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t328)
  call void @llvm.memcpy.p0.p0.i64(ptr %t329, ptr %t327, i64 %t328, i1 false)
  %t330 = insertvalue { i64, ptr } undef, i64 %t326, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t329, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %s0, ptr %s0, ptr %v0, ptr %t311, { i64, ptr } %t331)
  br label %bb46
bb46:
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l128, !tbaa !29
  %t335 = load ptr, ptr %lp3
  %t336 = load { i64, ptr }, ptr %t335, !tbaa !27
  store { i64, ptr } %t336, ptr %l129, !tbaa !27
  %t337 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t337, ptr %l130, !tbaa !24
  %t338 = load ptr, ptr %lp3
  %t339 = load { i64, ptr }, ptr %t338, !tbaa !27
  store { i64, ptr } %t339, ptr %l131, !tbaa !27
  %t340 = load ptr, ptr %l5, !tbaa !29
  %t342 = getelementptr %"compiler/emit:fnEm", ptr %t340, i32 0, i32 3
  %t344 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t342)
  store { i64, ptr } %t344, ptr %l134
  br label %bb47
bb47:
  %t345 = load ptr, ptr %l5, !tbaa !29
  %t347 = getelementptr %"compiler/emit:fnEm", ptr %t345, i32 0, i32 4
  %t349 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t347)
  store { i64, ptr } %t349, ptr %l137
  br label %bb48
bb48:
  %t350 = load ptr, ptr %l5, !tbaa !29
  %t352 = getelementptr %"compiler/emit:fnEm", ptr %t350, i32 0, i32 5
  %t354 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t352)
  store { i64, ptr } %t354, ptr %l140
  br label %bb49
bb49:
  %t355 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t356 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t357 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t358 = extractvalue { i64, ptr } %t357, 1
  %t359 = extractvalue { i64, ptr } %t357, 0
  %t360 = add i64 %t356, %t359
  %t361 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t362 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t363 = add i64 %t360, %t362
  %t364 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t364, 1
  %t366 = extractvalue { i64, ptr } %t364, 0
  %t367 = add i64 %t363, %t366
  %t368 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t369 = extractvalue { i64, ptr } %t368, 1
  %t370 = extractvalue { i64, ptr } %t368, 0
  %t371 = add i64 %t367, %t370
  %t372 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t372, 1
  %t374 = extractvalue { i64, ptr } %t372, 0
  %t375 = add i64 %t371, %t374
  %t376 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t377 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t378 = add i64 %t375, %t377
  %t379 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t378)
  call void @olang_textcopy(ptr %t379, ptr %t355, i64 %t356)
  %t380 = getelementptr i8, ptr %t379, i64 %t356
  call void @olang_textcopy(ptr %t380, ptr %t358, i64 %t359)
  %t381 = getelementptr i8, ptr %t380, i64 %t359
  call void @olang_textcopy(ptr %t381, ptr %t361, i64 %t362)
  %t382 = getelementptr i8, ptr %t381, i64 %t362
  call void @olang_textcopy(ptr %t382, ptr %t365, i64 %t366)
  %t383 = getelementptr i8, ptr %t382, i64 %t366
  call void @olang_textcopy(ptr %t383, ptr %t369, i64 %t370)
  %t384 = getelementptr i8, ptr %t383, i64 %t370
  call void @olang_textcopy(ptr %t384, ptr %t373, i64 %t374)
  %t385 = getelementptr i8, ptr %t384, i64 %t374
  call void @olang_textcopy(ptr %t385, ptr %t376, i64 %t377)
  %t386 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t387 = insertvalue { i64, ptr } %t386, ptr %t379, 1
  %t389 = extractvalue { i64, ptr } %t387, 0
  %t390 = extractvalue { i64, ptr } %t387, 1
  %t391 = mul i64 %t389, 1
  %t392 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t391)
  call void @llvm.memcpy.p0.p0.i64(ptr %t392, ptr %t390, i64 %t391, i1 false)
  %t393 = insertvalue { i64, ptr } undef, i64 %t389, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t392, 1
  %t395 = load ptr, ptr %l128, !tbaa !29
  %t396 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t397 = load i64, ptr %l130, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t395, { i64, ptr } %t396, i64 %t397, { i64, ptr } %t394, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb50
bb50:
  %t399 = load ptr, ptr %lp3
  %t400 = load { i64, ptr }, ptr %t399, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t400, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenOk(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l7 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenOkName(ptr %v0, ptr %v1, ptr %t1, i64 %a1, i32 %a2)
  store { i64, ptr } %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t8, ptr %lp3
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t10 = load ptr, ptr %lp3
  store { i64, ptr } %t9, ptr %t10, !tbaa !27
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %lp3
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t14 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  %t15 = load ptr, ptr %lp3
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t20 = extractvalue { i64, ptr } %t16, 1
  %t21 = extractvalue { i64, ptr } %t16, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t17, i64 %t18)
  %t27 = getelementptr i8, ptr %t26, i64 %t18
  call void @olang_textcopy(ptr %t27, ptr %t20, i64 %t21)
  %t28 = getelementptr i8, ptr %t27, i64 %t21
  call void @olang_textcopy(ptr %t28, ptr %t23, i64 %t24)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t26, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = extractvalue { i64, ptr } %t30, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t11, { i64, ptr } %t13, i64 %t14, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb2
bb2:
  %t42 = load ptr, ptr %lp3
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t4)
  store ptr %t6, ptr %l4
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/emit:Emitter", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t15 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v0, ptr %t12, ptr %t10, i32 %a1)
  store i1 %t15, ptr %l8
  br label %bb2
bb2:
  %t16 = load i1, ptr %l8, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l11 = alloca i32
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l45 = alloca ptr
  %l55 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l15
  br label %bb1
bb1:
  %t10 = load i64, ptr %l15, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb7
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l22, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l22, !tbaa !24
  store i64 %t37, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb29
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l8, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/emit:Emitter", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/lower:Lowerer", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t63, i64 %t65)
  store ptr %t68, ptr %l45
  br label %bb12
bb12:
  %t69 = load ptr, ptr %l45, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 1
  %t72 = load { i64, [2 x i64] }, ptr %t71
  store { i64, [2 x i64] } %t72, ptr %l9
  %t74 = load { i64, [2 x i64] }, ptr %l9
  %t76 = extractvalue { i64, [2 x i64] } %t74, 0
  %t77 = icmp eq i64 %t76, 6
  br i1 %t77, label %bb13, label %bb14
bb13:
  %t79 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t80 = getelementptr { i64, i32 }, ptr %t79, i32 0, i32 0
  %t81 = load i64, ptr %t80
  store i64 %t81, ptr %l10, !tbaa !24
  %t83 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t84 = getelementptr { i64, i32 }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l11, !tbaa !23
  br label %bb15
bb14:
  br label %bb22
bb15:
  %t87 = load i64, ptr %l10, !tbaa !24
  %t91 = icmp eq i64 %t87, %a1
  br i1 %t91, label %bb16, label %bb17
bb16:
  %t93 = load i32, ptr %l11, !tbaa !23
  %t97 = icmp eq i32 %t93, %a2
  store i1 %t97, ptr %l55, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb18
bb18:
  %t99 = load i1, ptr %l55, !tbaa !21
  br i1 %t99, label %bb19, label %bb20
bb19:
  %t100 = load i64, ptr %l8, !tbaa !24
  store i64 %t100, ptr %rv
  br label %ret
bb20:
  br label %bb21
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
  call void @__olang_check_failed(ptr @olang_loc_2aa1b6f8675f9eff_587e0f89839d7783)
  unreachable
bb27:
  br label %bb28
bb28:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l7, !tbaa !24
  br label %bb8
bb29:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalIn(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t7, i64 %a1)
  store ptr %t12, ptr %l10
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l10, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 1
  %t16 = load { i64, [2 x i64] }, ptr %t15
  store { i64, [2 x i64] } %t16, ptr %l3
  %t18 = load { i64, [2 x i64] }, ptr %l3
  %t20 = extractvalue { i64, [2 x i64] } %t18, 0
  %t21 = icmp eq i64 %t20, 6
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t24 = getelementptr { i64, i32 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  store i64 %t25, ptr %l4, !tbaa !24
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t31 = icmp eq i64 %t27, %a2
  store i1 %t31, ptr %l13, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_d066018c79b1953a_bec35d4ece20e406)
  unreachable
bb10:
  %t33 = load i1, ptr %l13, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalOrder(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i64
  %l24 = alloca i64
  %l29 = alloca i64
  %l33 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store ptr %l1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t4 = load i64, ptr %l4, !tbaa !24
  store i64 %t4, ptr %l11, !tbaa !24
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t5)
  store i64 %t7, ptr %l13
  br label %bb3
bb3:
  %t8 = load i64, ptr %l11, !tbaa !24
  %t9 = load i64, ptr %l13, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  %t12 = xor i1 %t10, true
  br i1 %t12, label %bb4, label %bb5
bb4:
  br label %bb22
bb5:
  br label %bb6
bb6:
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t14, i64 %t15)
  store i64 %t18, ptr %l18
  br label %bb7
bb7:
  %t19 = load i64, ptr %l18, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/emit:Emitter", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 60
  store ptr %t25, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t27 = load i64, ptr %l7, !tbaa !24
  store i64 %t27, ptr %l22, !tbaa !24
  %t28 = load ptr, ptr %l6, !tbaa !29
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l24
  br label %bb9
bb9:
  %t31 = load i64, ptr %l22, !tbaa !24
  %t32 = load i64, ptr %l24, !tbaa !24
  %t33 = icmp slt i64 %t31, %t32
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l6, !tbaa !29
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t37, i64 %t38)
  store i64 %t41, ptr %l29
  br label %bb13
bb13:
  %t42 = load i64, ptr %l29, !tbaa !24
  store i64 %t42, ptr %l8, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t49 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalIn(ptr %v0, ptr %t43, i64 %t44, i64 %t45)
  store i1 %t49, ptr %l33
  br label %bb14
bb14:
  %t50 = load i1, ptr %l33, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t51 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %l2, i64 %t51)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t54 = load i64, ptr %l7, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l7, !tbaa !24
  br label %bb8
bb20:
  br label %bb21
bb21:
  %t58 = load i64, ptr %l4, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l4, !tbaa !24
  br label %bb2
bb22:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eharness(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { { i64, ptr }, { i64, ptr } }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca { i64, ptr }
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca i64
  %l45 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i64
  %l54 = alloca { i64, ptr }
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca i64
  %l63 = alloca i64
  %l68 = alloca i64
  %l71 = alloca { { i64, ptr }, { i64, ptr } }
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca { i64, ptr }
  %l79 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i64
  %l89 = alloca ptr
  %l90 = alloca i64
  %l97 = alloca i1
  %l104 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l107 = alloca i64
  %l109 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l113 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l126 = alloca %"std/prelude/text:StringBuilder"
  %l132 = alloca i64
  %l134 = alloca ptr
  %l136 = alloca i64
  %l138 = alloca { i64, ptr }
  %l142 = alloca i64
  %l144 = alloca ptr
  %l146 = alloca i64
  %l148 = alloca { i64, ptr }
  %l168 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l174 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l184 = alloca ptr
  %l185 = alloca ptr
  %l194 = alloca ptr
  %l197 = alloca { i64, ptr }
  %l204 = alloca i64
  %l207 = alloca ptr
  %l209 = alloca i64
  %l214 = alloca ptr
  %l216 = alloca i64
  %l223 = alloca i64
  %l226 = alloca i64
  %l229 = alloca ptr
  %l231 = alloca i64
  %l269 = alloca ptr
  %l271 = alloca { i64, ptr }
  %l276 = alloca ptr
  %l278 = alloca { i64, ptr }
  %l297 = alloca ptr
  %l299 = alloca { i64, ptr }
  %l303 = alloca ptr
  %l305 = alloca { i64, ptr }
  %l309 = alloca ptr
  %l311 = alloca { i64, ptr }
  %l315 = alloca ptr
  %l317 = alloca { i64, ptr }
  %l325 = alloca ptr
  %l329 = alloca i64
  %l331 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %t69 = alloca { i64, [2 x i64] }, align 8
  %t237 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2einitOrder(ptr %v0, ptr %s0, ptr %t1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l18
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t5, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d48, i32 0, i32 1) }, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t7, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d50, i32 0, i32 1) }, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d51, i32 0, i32 1) })
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t9, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d52, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t11, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d54, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d55, i32 0, i32 1) })
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t13, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d56, i32 0, i32 1) }, { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t15, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d58, i32 0, i32 1) }, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d59, i32 0, i32 1) })
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t17, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb8
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t19, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb9
bb9:
  %t21 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t21, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb10
bb10:
  %t23 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t23, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d65, i32 0, i32 1) })
  br label %bb11
bb11:
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l29
  br label %bb12
bb12:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l3
  store %olang.scope zeroinitializer, ptr %s1
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalOrder(ptr %v0, ptr %s1, ptr %s1, ptr %t27, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l32
  br label %bb13
bb13:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  %t33 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %t33
  store ptr %t33, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l5, !tbaa !24
  store i64 %t35, ptr %l34, !tbaa !24
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t36)
  store i64 %t38, ptr %l36
  br label %bb15
bb15:
  %t39 = load i64, ptr %l34, !tbaa !24
  %t40 = load i64, ptr %l36, !tbaa !24
  %t41 = icmp slt i64 %t39, %t40
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb17:
  br label %bb18
bb18:
  %t45 = load ptr, ptr %l4, !tbaa !29
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t45, i64 %t46)
  store i64 %t49, ptr %l41
  br label %bb19
bb19:
  %t50 = load i64, ptr %l41, !tbaa !24
  store i64 %t50, ptr %l6, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/emit:Emitter", ptr %t51, i32 0, i32 55
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %t53, i64 %t54)
  store i1 %t57, ptr %l45
  br label %bb20
bb20:
  %t58 = load i1, ptr %l45, !tbaa !21
  br i1 %t58, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb22:
  br label %bb23
bb23:
  store ptr %l3, ptr %l46, !tbaa !29
  %t59 = ptrtoint ptr %s0 to i64
  store i64 %t59, ptr %l47, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t60, label %bb24, label %bb25
bb24:
  %t62 = call ptr @__olang_region_make(ptr %s0)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l47, !tbaa !24
  br label %bb25
bb25:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l6, !tbaa !24
  %t67 = trunc i64 %t65 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t69
  %t70 = getelementptr { i64, [2 x i64] }, ptr %t69, i32 0, i32 0
  store i64 0, ptr %t70
  %t72 = insertvalue { i32 } undef, i32 %t67, 0
  %t73 = getelementptr { i64, [2 x i64] }, ptr %t69, i32 0, i32 1
  store { i32 } %t72, ptr %t73
  %t74 = load { i64, [2 x i64] }, ptr %t69
  %t77 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s2, ptr %t64, { i64, [2 x i64] } %t74)
  store { i64, ptr } %t77, ptr %l54
  br label %bb26
bb26:
  %t78 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t80 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t83 = add i64 %t79, %t82
  %t84 = load i64, ptr %l47
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = call ptr @__olang_scope_alloc(ptr %t85, i64 %t83)
  call void @olang_textcopy(ptr %t86, ptr %t78, i64 %t79)
  %t87 = getelementptr i8, ptr %t86, i64 %t79
  call void @olang_textcopy(ptr %t87, ptr %t81, i64 %t82)
  %t88 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t86, 1
  %t91 = load i64, ptr %l47
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = extractvalue { i64, ptr } %t89, 0
  %t94 = extractvalue { i64, ptr } %t89, 1
  %t95 = mul i64 %t93, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %t92, i64 %t95)
  call void @llvm.memcpy.p0.p0.i64(ptr %t96, ptr %t94, i64 %t95, i1 false)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  %t99 = load ptr, ptr %l46, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t99, { i64, ptr } %t98)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  %t101 = load i64, ptr %l5, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l5, !tbaa !24
  br label %bb14
bb29:
  call void @__olang_scope_close(ptr %s1)
  %t105 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l59
  br label %bb30
bb30:
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l7
  store ptr %l1, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s7
  %t108 = load i64, ptr %l9, !tbaa !24
  store i64 %t108, ptr %l61, !tbaa !24
  %t109 = load ptr, ptr %l8, !tbaa !29
  %t111 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t109)
  store i64 %t111, ptr %l63
  br label %bb32
bb32:
  %t112 = load i64, ptr %l61, !tbaa !24
  %t113 = load i64, ptr %l63, !tbaa !24
  %t114 = icmp slt i64 %t112, %t113
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s7)
  br label %bb61
bb34:
  br label %bb35
bb35:
  %t118 = load ptr, ptr %l8, !tbaa !29
  %t119 = load i64, ptr %l9, !tbaa !24
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t118, i64 %t119)
  store i64 %t122, ptr %l68
  br label %bb36
bb36:
  %t123 = load i64, ptr %l68, !tbaa !24
  store i64 %t123, ptr %l10, !tbaa !24
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = call { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestParts(ptr %v0, ptr %s7, ptr %t124, i64 %t125)
  store { { i64, ptr }, { i64, ptr } } %t128, ptr %l71
  br label %bb37
bb37:
  %t129 = load { { i64, ptr }, { i64, ptr } }, ptr %l71
  store { { i64, ptr }, { i64, ptr } } %t129, ptr %l11
  %t130 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l11, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  store { i64, ptr } %t131, ptr %l72, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 0
  store i64 %t133, ptr %l73, !tbaa !24
  %t134 = load i64, ptr %l73, !tbaa !24
  %t135 = mul i64 %t134, 1
  %t136 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t135)
  %t137 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  store { i64, ptr } %t138, ptr %l74, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = load i64, ptr %l73, !tbaa !24
  %t144 = mul i64 %t143, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t140, ptr %t142, i64 %t144, i1 false)
  %t145 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t145, ptr %l12, !tbaa !27
  %t146 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l11, i32 0, i32 1
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  store { i64, ptr } %t147, ptr %l75, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 0
  store i64 %t149, ptr %l76, !tbaa !24
  %t150 = load i64, ptr %l76, !tbaa !24
  %t151 = mul i64 %t150, 1
  %t152 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t151)
  %t153 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  store { i64, ptr } %t154, ptr %l77, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = load i64, ptr %l76, !tbaa !24
  %t160 = mul i64 %t159, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t156, ptr %t158, i64 %t160, i1 false)
  %t161 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t161, ptr %l13, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t164 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t162, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i1 %t164, ptr %l79
  br label %bb38
bb38:
  %t165 = load i1, ptr %l79, !tbaa !21
  %t166 = xor i1 %t165, true
  br i1 %t166, label %bb39, label %bb40
bb39:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/emit:Emitter", ptr %t168, i32 0, i32 59
  store ptr %t170, ptr %l82, !tbaa !29
  %t171 = ptrtoint ptr %v0 to i64
  store i64 %t171, ptr %l83, !tbaa !24
  %t172 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t172, label %bb41, label %bb42
bb40:
  br label %bb44
bb41:
  %t174 = call ptr @__olang_region_make(ptr %v0)
  %t175 = ptrtoint ptr %t174 to i64
  store i64 %t175, ptr %l83, !tbaa !24
  br label %bb42
bb42:
  %t176 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t176, 1
  %t179 = extractvalue { i64, ptr } %t176, 0
  %t180 = load i64, ptr %l83
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = call ptr @__olang_scope_alloc(ptr %t181, i64 %t179)
  call void @olang_textcopy(ptr %t182, ptr %t178, i64 %t179)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  %t186 = load i64, ptr %l83
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = extractvalue { i64, ptr } %t184, 0
  %t189 = extractvalue { i64, ptr } %t184, 1
  %t190 = mul i64 %t188, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %t187, i64 %t190)
  call void @llvm.memcpy.p0.p0.i64(ptr %t191, ptr %t189, i64 %t190, i1 false)
  %t192 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  %t194 = load ptr, ptr %l82, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t194, { i64, ptr } %t193)
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/emit:Emitter", ptr %t196, i32 0, i32 59
  store ptr %t198, ptr %l89, !tbaa !29
  %t199 = ptrtoint ptr %v0 to i64
  store i64 %t199, ptr %l90, !tbaa !24
  %t200 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t200, label %bb45, label %bb46
bb45:
  %t202 = call ptr @__olang_region_make(ptr %v0)
  %t203 = ptrtoint ptr %t202 to i64
  store i64 %t203, ptr %l90, !tbaa !24
  br label %bb46
bb46:
  %t204 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t204, 1
  %t207 = extractvalue { i64, ptr } %t204, 0
  %t208 = load i64, ptr %l90
  %t209 = inttoptr i64 %t208 to ptr
  %t210 = call ptr @__olang_scope_alloc(ptr %t209, i64 %t207)
  call void @olang_textcopy(ptr %t210, ptr %t206, i64 %t207)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  %t214 = load i64, ptr %l90
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = extractvalue { i64, ptr } %t212, 0
  %t217 = extractvalue { i64, ptr } %t212, 1
  %t218 = mul i64 %t216, 1
  %t219 = call ptr @__olang_scope_alloc(ptr %t215, i64 %t218)
  call void @llvm.memcpy.p0.p0.i64(ptr %t219, ptr %t217, i64 %t218, i1 false)
  %t220 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  %t222 = load ptr, ptr %l89, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t222, { i64, ptr } %t221)
  br label %bb47
bb47:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load i64, ptr %l10, !tbaa !24
  %t228 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eInPart(ptr %v0, ptr %t224, i64 %t225)
  store i1 %t228, ptr %l97
  br label %bb48
bb48:
  %t229 = load i1, ptr %l97, !tbaa !21
  %t230 = xor i1 %t229, true
  br i1 %t230, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb50:
  br label %bb51
bb51:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i64, ptr %l10, !tbaa !24
  %t235 = trunc i64 %t233 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [2 x i64] }, ptr %t237, i32 0, i32 0
  store i64 0, ptr %t238
  %t240 = insertvalue { i32 } undef, i32 %t235, 0
  %t241 = getelementptr { i64, [2 x i64] }, ptr %t237, i32 0, i32 1
  store { i32 } %t240, ptr %t241
  %t242 = load { i64, [2 x i64] }, ptr %t237
  %t245 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s7, ptr %t232, { i64, [2 x i64] } %t242)
  store { i64, ptr } %t245, ptr %l104
  br label %bb52
bb52:
  %t246 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t248 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t249 = extractvalue { i64, ptr } %t248, 1
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t251 = add i64 %t247, %t250
  %t252 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t251)
  call void @olang_textcopy(ptr %t252, ptr %t246, i64 %t247)
  %t253 = getelementptr i8, ptr %t252, i64 %t247
  call void @olang_textcopy(ptr %t253, ptr %t249, i64 %t250)
  %t254 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t252, 1
  store { i64, ptr } %t255, ptr %l14, !tbaa !27
  store ptr %l7, ptr %l106, !tbaa !29
  %t257 = ptrtoint ptr %s0 to i64
  store i64 %t257, ptr %l107, !tbaa !24
  %t258 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t258, label %bb53, label %bb54
bb53:
  %t260 = call ptr @__olang_region_make(ptr %s0)
  %t261 = ptrtoint ptr %t260 to i64
  store i64 %t261, ptr %l107, !tbaa !24
  br label %bb54
bb54:
  %t262 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t262, ptr %l109, !tbaa !27
  %t263 = load ptr, ptr %l0, !tbaa !29
  store ptr %t263, ptr %l110, !tbaa !29
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load i64, ptr %l10, !tbaa !24
  %t268 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestName(ptr %v0, ptr %s7, ptr %t264, i64 %t265)
  store { i64, ptr } %t268, ptr %l113
  br label %bb55
bb55:
  %t269 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t269, 0
  %t271 = extractvalue { i64, ptr } %t269, 1
  %t272 = mul i64 %t270, 1
  %t273 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t272)
  call void @llvm.memcpy.p0.p0.i64(ptr %t273, ptr %t271, i64 %t272, i1 false)
  %t274 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  %t276 = load ptr, ptr %l110, !tbaa !29
  %t278 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s7, ptr %s7, ptr %t276, { i64, ptr } %t275)
  store { i64, ptr } %t278, ptr %l115
  br label %bb56
bb56:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t283 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s7, ptr %s7, ptr %t279, { i64, ptr } %t280)
  store { i64, ptr } %t283, ptr %l118
  br label %bb57
bb57:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t288 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s7, ptr %s7, ptr %t284, { i64, ptr } %t285)
  store { i64, ptr } %t288, ptr %l121
  br label %bb58
bb58:
  %t289 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t290 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t291 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 1
  %t293 = extractvalue { i64, ptr } %t291, 0
  %t294 = add i64 %t290, %t293
  %t295 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t296 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t297 = add i64 %t294, %t296
  %t298 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t298, 1
  %t300 = extractvalue { i64, ptr } %t298, 0
  %t301 = add i64 %t297, %t300
  %t302 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t303 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t304 = add i64 %t301, %t303
  %t305 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 1
  %t307 = extractvalue { i64, ptr } %t305, 0
  %t308 = add i64 %t304, %t307
  %t309 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t311 = add i64 %t308, %t310
  %t312 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 1
  %t314 = extractvalue { i64, ptr } %t312, 0
  %t315 = add i64 %t311, %t314
  %t316 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t318 = add i64 %t315, %t317
  %t319 = load i64, ptr %l107
  %t320 = inttoptr i64 %t319 to ptr
  %t321 = call ptr @__olang_scope_alloc(ptr %t320, i64 %t318)
  call void @olang_textcopy(ptr %t321, ptr %t289, i64 %t290)
  %t322 = getelementptr i8, ptr %t321, i64 %t290
  call void @olang_textcopy(ptr %t322, ptr %t292, i64 %t293)
  %t323 = getelementptr i8, ptr %t322, i64 %t293
  call void @olang_textcopy(ptr %t323, ptr %t295, i64 %t296)
  %t324 = getelementptr i8, ptr %t323, i64 %t296
  call void @olang_textcopy(ptr %t324, ptr %t299, i64 %t300)
  %t325 = getelementptr i8, ptr %t324, i64 %t300
  call void @olang_textcopy(ptr %t325, ptr %t302, i64 %t303)
  %t326 = getelementptr i8, ptr %t325, i64 %t303
  call void @olang_textcopy(ptr %t326, ptr %t306, i64 %t307)
  %t327 = getelementptr i8, ptr %t326, i64 %t307
  call void @olang_textcopy(ptr %t327, ptr %t309, i64 %t310)
  %t328 = getelementptr i8, ptr %t327, i64 %t310
  call void @olang_textcopy(ptr %t328, ptr %t313, i64 %t314)
  %t329 = getelementptr i8, ptr %t328, i64 %t314
  call void @olang_textcopy(ptr %t329, ptr %t316, i64 %t317)
  %t330 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t321, 1
  %t333 = load i64, ptr %l107
  %t334 = inttoptr i64 %t333 to ptr
  %t335 = extractvalue { i64, ptr } %t331, 0
  %t336 = extractvalue { i64, ptr } %t331, 1
  %t337 = mul i64 %t335, 1
  %t338 = call ptr @__olang_scope_alloc(ptr %t334, i64 %t337)
  call void @llvm.memcpy.p0.p0.i64(ptr %t338, ptr %t336, i64 %t337, i1 false)
  %t339 = insertvalue { i64, ptr } undef, i64 %t335, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t338, 1
  %t341 = load ptr, ptr %l106, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t341, { i64, ptr } %t340)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb60:
  %t343 = load i64, ptr %l9, !tbaa !24
  %t345 = add i64 %t343, 1
  store i64 %t345, ptr %l9, !tbaa !24
  br label %bb31
bb61:
  %t347 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t347, ptr %l126
  br label %bb62
bb62:
  %t348 = load %"std/prelude/text:StringBuilder", ptr %l126
  store %"std/prelude/text:StringBuilder" %t348, ptr %l15
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/emit:Emitter", ptr %t349, i32 0, i32 62
  %t352 = load i1, ptr %t351, !tbaa !21
  br i1 %t352, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s15
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %l15, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d72, i32 0, i32 1) })
  br label %bb65
bb64:
  br label %bb67
bb65:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %l15, { i64, ptr } { i64 126, ptr getelementptr inbounds (<{ i64, [126 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s15)
  br label %bb67
bb67:
  %t357 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t357, ptr %l132
  br label %bb68
bb68:
  %t358 = load i64, ptr %l132, !tbaa !24
  %t359 = icmp sgt i64 %t358, 0
  br i1 %t359, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s16
  store ptr %l15, ptr %l134, !tbaa !29
  %t362 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t362, ptr %l136
  br label %bb71
bb70:
  br label %bb74
bb71:
  %t364 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s16, ptr %s16, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d74, i32 0, i32 1) })
  store { i64, ptr } %t364, ptr %l138
  br label %bb72
bb72:
  %t365 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t366 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t367 = load i64, ptr %l136, !tbaa !24
  %t368 = call i64 @__olang_fmt_i64(ptr null, i64 %t367)
  %t369 = add i64 %t366, %t368
  %t370 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t371 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t372 = add i64 %t369, %t371
  %t373 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t374 = extractvalue { i64, ptr } %t373, 1
  %t375 = extractvalue { i64, ptr } %t373, 0
  %t376 = add i64 %t372, %t375
  %t377 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t378 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t379 = add i64 %t376, %t378
  %t380 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t379)
  call void @olang_textcopy(ptr %t380, ptr %t365, i64 %t366)
  %t381 = getelementptr i8, ptr %t380, i64 %t366
  %t382 = call i64 @__olang_fmt_i64(ptr %t381, i64 %t367)
  %t383 = getelementptr i8, ptr %t381, i64 %t368
  call void @olang_textcopy(ptr %t383, ptr %t370, i64 %t371)
  %t384 = getelementptr i8, ptr %t383, i64 %t371
  call void @olang_textcopy(ptr %t384, ptr %t374, i64 %t375)
  %t385 = getelementptr i8, ptr %t384, i64 %t375
  call void @olang_textcopy(ptr %t385, ptr %t377, i64 %t378)
  %t386 = insertvalue { i64, ptr } undef, i64 %t379, 0
  %t387 = insertvalue { i64, ptr } %t386, ptr %t380, 1
  %t389 = extractvalue { i64, ptr } %t387, 0
  %t390 = extractvalue { i64, ptr } %t387, 1
  %t391 = mul i64 %t389, 1
  %t392 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t391)
  call void @llvm.memcpy.p0.p0.i64(ptr %t392, ptr %t390, i64 %t391, i1 false)
  %t393 = insertvalue { i64, ptr } undef, i64 %t389, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t392, 1
  %t395 = load ptr, ptr %l134, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s16, ptr %t395, { i64, ptr } %t394)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s16)
  br label %bb74
bb74:
  %t398 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l7)
  store i64 %t398, ptr %l142
  br label %bb75
bb75:
  %t399 = load i64, ptr %l142, !tbaa !24
  %t400 = icmp sgt i64 %t399, 0
  br i1 %t400, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s18
  store ptr %l15, ptr %l144, !tbaa !29
  %t403 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l7)
  store i64 %t403, ptr %l146
  br label %bb78
bb77:
  br label %bb96
bb78:
  %t405 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s18, ptr %s18, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store { i64, ptr } %t405, ptr %l148
  br label %bb79
bb79:
  %t406 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t407 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t408 = load i64, ptr %l146, !tbaa !24
  %t409 = call i64 @__olang_fmt_i64(ptr null, i64 %t408)
  %t410 = add i64 %t407, %t409
  %t411 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t412 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t413 = add i64 %t410, %t412
  %t414 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = extractvalue { i64, ptr } %t414, 0
  %t417 = add i64 %t413, %t416
  %t418 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t420 = add i64 %t417, %t419
  %t421 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t420)
  call void @olang_textcopy(ptr %t421, ptr %t406, i64 %t407)
  %t422 = getelementptr i8, ptr %t421, i64 %t407
  %t423 = call i64 @__olang_fmt_i64(ptr %t422, i64 %t408)
  %t424 = getelementptr i8, ptr %t422, i64 %t409
  call void @olang_textcopy(ptr %t424, ptr %t411, i64 %t412)
  %t425 = getelementptr i8, ptr %t424, i64 %t412
  call void @olang_textcopy(ptr %t425, ptr %t415, i64 %t416)
  %t426 = getelementptr i8, ptr %t425, i64 %t416
  call void @olang_textcopy(ptr %t426, ptr %t418, i64 %t419)
  %t427 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t428 = insertvalue { i64, ptr } %t427, ptr %t421, 1
  %t430 = extractvalue { i64, ptr } %t428, 0
  %t431 = extractvalue { i64, ptr } %t428, 1
  %t432 = mul i64 %t430, 1
  %t433 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t432)
  call void @llvm.memcpy.p0.p0.i64(ptr %t433, ptr %t431, i64 %t432, i1 false)
  %t434 = insertvalue { i64, ptr } undef, i64 %t430, 0
  %t435 = insertvalue { i64, ptr } %t434, ptr %t433, 1
  %t436 = load ptr, ptr %l144, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %t436, { i64, ptr } %t435)
  br label %bb80
bb80:
  %t438 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s18, ptr %s18, ptr %t438, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d82, i32 0, i32 1) }, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb81
bb81:
  %t440 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s18, ptr %s18, ptr %t440, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d84, i32 0, i32 1) }, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d85, i32 0, i32 1) })
  br label %bb82
bb82:
  %t442 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s18, ptr %s18, ptr %t442, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d86, i32 0, i32 1) }, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d87, i32 0, i32 1) })
  br label %bb83
bb83:
  %t444 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s18, ptr %s18, ptr %t444, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d88, i32 0, i32 1) }, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d89, i32 0, i32 1) })
  br label %bb84
bb84:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d90, i32 0, i32 1) })
  br label %bb85
bb85:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d91, i32 0, i32 1) })
  br label %bb86
bb86:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d92, i32 0, i32 1) })
  br label %bb87
bb87:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d93, i32 0, i32 1) })
  br label %bb88
bb88:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 108, ptr getelementptr inbounds (<{ i64, [108 x i8] }>, ptr @.d94, i32 0, i32 1) })
  br label %bb89
bb89:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d95, i32 0, i32 1) })
  br label %bb90
bb90:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d96, i32 0, i32 1) })
  br label %bb91
bb91:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d97, i32 0, i32 1) })
  br label %bb92
bb92:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d98, i32 0, i32 1) })
  br label %bb93
bb93:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d99, i32 0, i32 1) })
  br label %bb94
bb94:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l15, { i64, ptr } { i64 105, ptr getelementptr inbounds (<{ i64, [105 x i8] }>, ptr @.d100, i32 0, i32 1) })
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s18)
  br label %bb96
bb96:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr %"compiler/emit:Emitter", ptr %t457, i32 0, i32 58
  %t460 = load { i64, ptr }, ptr %t459, !tbaa !27
  %t462 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t460, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t462, ptr %l168
  br label %bb97
bb97:
  %t463 = load i1, ptr %l168, !tbaa !21
  %t464 = xor i1 %t463, true
  br i1 %t464, label %bb98, label %bb99
bb98:
  store %olang.scope zeroinitializer, ptr %s20
  %t466 = load ptr, ptr %l0, !tbaa !29
  store ptr %t466, ptr %l170, !tbaa !29
  %t467 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t467, ptr %l171
  %t469 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s20, ptr %l171)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t469, ptr %l173
  br label %bb100
bb99:
  br label %bb103
bb100:
  %t470 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t470, ptr %l174
  %t472 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s20, ptr %l174)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t472, ptr %l176
  br label %bb101
bb101:
  %t473 = load ptr, ptr %l170, !tbaa !29
  %t474 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  %t475 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efuzzHarness(ptr %v0, ptr %s20, ptr %s20, ptr %s0, ptr %t473, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t474, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t475, ptr %l15)
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb103:
  %t477 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestSource(ptr %v0, ptr %t477)
  br label %bb104
bb104:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb105
bb105:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d103, i32 0, i32 1) })
  br label %bb106
bb106:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d104, i32 0, i32 1) })
  br label %bb107
bb107:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d105, i32 0, i32 1) })
  br label %bb108
bb108:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d106, i32 0, i32 1) })
  br label %bb109
bb109:
  store ptr %l15, ptr %l184, !tbaa !29
  %t484 = load ptr, ptr %l0, !tbaa !29
  store ptr %t484, ptr %l185, !tbaa !29
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/emit:Emitter", ptr %t485, i32 0, i32 0
  %t488 = load ptr, ptr %t487, !tbaa !29
  %t490 = getelementptr %"compiler/generic:Program", ptr %t488, i32 0, i32 0
  %t491 = load ptr, ptr %t490, !tbaa !29
  %t493 = getelementptr %"compiler/load:Loader", ptr %t491, i32 0, i32 10
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t496 = getelementptr %"compiler/emit:Emitter", ptr %t494, i32 0, i32 0
  %t497 = load ptr, ptr %t496, !tbaa !29
  %t499 = getelementptr %"compiler/generic:Program", ptr %t497, i32 0, i32 0
  %t500 = load ptr, ptr %t499, !tbaa !29
  %t502 = getelementptr %"compiler/load:Loader", ptr %t500, i32 0, i32 12
  %t503 = load i64, ptr %t502, !tbaa !24
  %t506 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t493, i64 %t503)
  store ptr %t506, ptr %l194
  br label %bb110
bb110:
  %t507 = load ptr, ptr %l194, !tbaa !29
  %t509 = getelementptr %"compiler/load:Module", ptr %t507, i32 0, i32 0
  %t510 = load { i64, ptr }, ptr %t509, !tbaa !27
  %t511 = load ptr, ptr %l185, !tbaa !29
  %t513 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %v0, ptr %s0, ptr %t511, { i64, ptr } %t510)
  store { i64, ptr } %t513, ptr %l197
  br label %bb111
bb111:
  %t514 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t515 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t516 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t517 = extractvalue { i64, ptr } %t516, 1
  %t518 = extractvalue { i64, ptr } %t516, 0
  %t519 = add i64 %t515, %t518
  %t520 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t521 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t522 = add i64 %t519, %t521
  %t523 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t522)
  call void @olang_textcopy(ptr %t523, ptr %t514, i64 %t515)
  %t524 = getelementptr i8, ptr %t523, i64 %t515
  call void @olang_textcopy(ptr %t524, ptr %t517, i64 %t518)
  %t525 = getelementptr i8, ptr %t524, i64 %t518
  call void @olang_textcopy(ptr %t525, ptr %t520, i64 %t521)
  %t526 = insertvalue { i64, ptr } undef, i64 %t522, 0
  %t527 = insertvalue { i64, ptr } %t526, ptr %t523, 1
  %t529 = extractvalue { i64, ptr } %t527, 0
  %t530 = extractvalue { i64, ptr } %t527, 1
  %t531 = mul i64 %t529, 1
  %t532 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t531)
  call void @llvm.memcpy.p0.p0.i64(ptr %t532, ptr %t530, i64 %t531, i1 false)
  %t533 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t534 = insertvalue { i64, ptr } %t533, ptr %t532, 1
  %t535 = load ptr, ptr %l184, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t535, { i64, ptr } %t534)
  br label %bb112
bb112:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d109, i32 0, i32 1) })
  br label %bb113
bb113:
  %t538 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esanInit(ptr %v0, ptr %s0, ptr %t538, ptr %l15)
  br label %bb114
bb114:
  %t542 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t542, ptr %l204
  br label %bb115
bb115:
  %t543 = load i64, ptr %l204, !tbaa !24
  %t544 = icmp sgt i64 %t543, 0
  br i1 %t544, label %bb116, label %bb117
bb116:
  store %olang.scope zeroinitializer, ptr %s22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %l15, { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d110, i32 0, i32 1) })
  br label %bb118
bb117:
  br label %bb128
bb118:
  store ptr %l15, ptr %l207, !tbaa !29
  %t548 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t548, ptr %l209
  br label %bb119
bb119:
  %t549 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t550 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t551 = load i64, ptr %l209, !tbaa !24
  %t552 = call i64 @__olang_fmt_i64(ptr null, i64 %t551)
  %t553 = add i64 %t550, %t552
  %t554 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t555 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t556 = add i64 %t553, %t555
  %t557 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t556)
  call void @olang_textcopy(ptr %t557, ptr %t549, i64 %t550)
  %t558 = getelementptr i8, ptr %t557, i64 %t550
  %t559 = call i64 @__olang_fmt_i64(ptr %t558, i64 %t551)
  %t560 = getelementptr i8, ptr %t558, i64 %t552
  call void @olang_textcopy(ptr %t560, ptr %t554, i64 %t555)
  %t561 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t562 = insertvalue { i64, ptr } %t561, ptr %t557, 1
  %t564 = extractvalue { i64, ptr } %t562, 0
  %t565 = extractvalue { i64, ptr } %t562, 1
  %t566 = mul i64 %t564, 1
  %t567 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t566)
  call void @llvm.memcpy.p0.p0.i64(ptr %t567, ptr %t565, i64 %t566, i1 false)
  %t568 = insertvalue { i64, ptr } undef, i64 %t564, 0
  %t569 = insertvalue { i64, ptr } %t568, ptr %t567, 1
  %t570 = load ptr, ptr %l207, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %t570, { i64, ptr } %t569)
  br label %bb120
bb120:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %l15, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d113, i32 0, i32 1) })
  br label %bb121
bb121:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %l15, { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d114, i32 0, i32 1) })
  br label %bb122
bb122:
  store ptr %l15, ptr %l214, !tbaa !29
  %t575 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t575, ptr %l216
  br label %bb123
bb123:
  %t576 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t577 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t578 = load i64, ptr %l216, !tbaa !24
  %t579 = call i64 @__olang_fmt_i64(ptr null, i64 %t578)
  %t580 = add i64 %t577, %t579
  %t581 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t582 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t583 = add i64 %t580, %t582
  %t584 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t583)
  call void @olang_textcopy(ptr %t584, ptr %t576, i64 %t577)
  %t585 = getelementptr i8, ptr %t584, i64 %t577
  %t586 = call i64 @__olang_fmt_i64(ptr %t585, i64 %t578)
  %t587 = getelementptr i8, ptr %t585, i64 %t579
  call void @olang_textcopy(ptr %t587, ptr %t581, i64 %t582)
  %t588 = insertvalue { i64, ptr } undef, i64 %t583, 0
  %t589 = insertvalue { i64, ptr } %t588, ptr %t584, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = extractvalue { i64, ptr } %t589, 1
  %t593 = mul i64 %t591, 1
  %t594 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t593)
  call void @llvm.memcpy.p0.p0.i64(ptr %t594, ptr %t592, i64 %t593, i1 false)
  %t595 = insertvalue { i64, ptr } undef, i64 %t591, 0
  %t596 = insertvalue { i64, ptr } %t595, ptr %t594, 1
  %t597 = load ptr, ptr %l214, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %t597, { i64, ptr } %t596)
  br label %bb124
bb124:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %l15, { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d117, i32 0, i32 1) })
  br label %bb125
bb125:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %l15, { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d118, i32 0, i32 1) })
  br label %bb126
bb126:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %l15, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d119, i32 0, i32 1) })
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s22)
  br label %bb128
bb128:
  %t603 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l7)
  store i64 %t603, ptr %l223
  br label %bb129
bb129:
  %t604 = load i64, ptr %l223, !tbaa !24
  %t605 = icmp sgt i64 %t604, 0
  br i1 %t605, label %bb130, label %bb131
bb130:
  store %olang.scope zeroinitializer, ptr %s25
  %t608 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l7)
  store i64 %t608, ptr %l226
  br label %bb132
bb131:
  br label %bb171
bb132:
  %t609 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t610 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t611 = load i64, ptr %l226, !tbaa !24
  %t612 = call i64 @__olang_fmt_i64(ptr null, i64 %t611)
  %t613 = add i64 %t610, %t612
  %t614 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t615 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t616 = add i64 %t613, %t615
  %t617 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t616)
  call void @olang_textcopy(ptr %t617, ptr %t609, i64 %t610)
  %t618 = getelementptr i8, ptr %t617, i64 %t610
  %t619 = call i64 @__olang_fmt_i64(ptr %t618, i64 %t611)
  %t620 = getelementptr i8, ptr %t618, i64 %t612
  call void @olang_textcopy(ptr %t620, ptr %t614, i64 %t615)
  %t621 = insertvalue { i64, ptr } undef, i64 %t616, 0
  %t622 = insertvalue { i64, ptr } %t621, ptr %t617, 1
  store { i64, ptr } %t622, ptr %l16, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d122, i32 0, i32 1) })
  br label %bb133
bb133:
  store ptr %l15, ptr %l229, !tbaa !29
  %t626 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l7)
  store i64 %t626, ptr %l231
  br label %bb134
bb134:
  %t627 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t628 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t629 = load i64, ptr %l231, !tbaa !24
  %t630 = call i64 @__olang_fmt_i64(ptr null, i64 %t629)
  %t631 = add i64 %t628, %t630
  %t632 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t633 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t634 = add i64 %t631, %t633
  %t635 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t634)
  call void @olang_textcopy(ptr %t635, ptr %t627, i64 %t628)
  %t636 = getelementptr i8, ptr %t635, i64 %t628
  %t637 = call i64 @__olang_fmt_i64(ptr %t636, i64 %t629)
  %t638 = getelementptr i8, ptr %t636, i64 %t630
  call void @olang_textcopy(ptr %t638, ptr %t632, i64 %t633)
  %t639 = insertvalue { i64, ptr } undef, i64 %t634, 0
  %t640 = insertvalue { i64, ptr } %t639, ptr %t635, 1
  %t642 = extractvalue { i64, ptr } %t640, 0
  %t643 = extractvalue { i64, ptr } %t640, 1
  %t644 = mul i64 %t642, 1
  %t645 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t644)
  call void @llvm.memcpy.p0.p0.i64(ptr %t645, ptr %t643, i64 %t644, i1 false)
  %t646 = insertvalue { i64, ptr } undef, i64 %t642, 0
  %t647 = insertvalue { i64, ptr } %t646, ptr %t645, 1
  %t648 = load ptr, ptr %l229, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %t648, { i64, ptr } %t647)
  br label %bb135
bb135:
  %t650 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t651 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t652 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t654 = extractvalue { i64, ptr } %t650, 1
  %t655 = extractvalue { i64, ptr } %t650, 0
  %t656 = add i64 %t652, %t655
  %t657 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t658 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t659 = add i64 %t656, %t658
  %t660 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t659)
  call void @olang_textcopy(ptr %t660, ptr %t651, i64 %t652)
  %t661 = getelementptr i8, ptr %t660, i64 %t652
  call void @olang_textcopy(ptr %t661, ptr %t654, i64 %t655)
  %t662 = getelementptr i8, ptr %t661, i64 %t655
  call void @olang_textcopy(ptr %t662, ptr %t657, i64 %t658)
  %t663 = insertvalue { i64, ptr } undef, i64 %t659, 0
  %t664 = insertvalue { i64, ptr } %t663, ptr %t660, 1
  %t666 = extractvalue { i64, ptr } %t664, 0
  %t667 = extractvalue { i64, ptr } %t664, 1
  %t668 = mul i64 %t666, 1
  %t669 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t668)
  call void @llvm.memcpy.p0.p0.i64(ptr %t669, ptr %t667, i64 %t668, i1 false)
  %t670 = insertvalue { i64, ptr } undef, i64 %t666, 0
  %t671 = insertvalue { i64, ptr } %t670, ptr %t669, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } %t671)
  br label %bb136
bb136:
  %t674 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t675 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t676 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t678 = extractvalue { i64, ptr } %t674, 1
  %t679 = extractvalue { i64, ptr } %t674, 0
  %t680 = add i64 %t676, %t679
  %t681 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t682 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t683 = add i64 %t680, %t682
  %t684 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t683)
  call void @olang_textcopy(ptr %t684, ptr %t675, i64 %t676)
  %t685 = getelementptr i8, ptr %t684, i64 %t676
  call void @olang_textcopy(ptr %t685, ptr %t678, i64 %t679)
  %t686 = getelementptr i8, ptr %t685, i64 %t679
  call void @olang_textcopy(ptr %t686, ptr %t681, i64 %t682)
  %t687 = insertvalue { i64, ptr } undef, i64 %t683, 0
  %t688 = insertvalue { i64, ptr } %t687, ptr %t684, 1
  %t690 = extractvalue { i64, ptr } %t688, 0
  %t691 = extractvalue { i64, ptr } %t688, 1
  %t692 = mul i64 %t690, 1
  %t693 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t692)
  call void @llvm.memcpy.p0.p0.i64(ptr %t693, ptr %t691, i64 %t692, i1 false)
  %t694 = insertvalue { i64, ptr } undef, i64 %t690, 0
  %t695 = insertvalue { i64, ptr } %t694, ptr %t693, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } %t695)
  br label %bb137
bb137:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d129, i32 0, i32 1) })
  br label %bb138
bb138:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d130, i32 0, i32 1) })
  br label %bb139
bb139:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d131, i32 0, i32 1) })
  br label %bb140
bb140:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 96, ptr getelementptr inbounds (<{ i64, [96 x i8] }>, ptr @.d132, i32 0, i32 1) })
  br label %bb141
bb141:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d133, i32 0, i32 1) })
  br label %bb142
bb142:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d134, i32 0, i32 1) })
  br label %bb143
bb143:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d135, i32 0, i32 1) })
  br label %bb144
bb144:
  %t705 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t706 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t707 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t709 = extractvalue { i64, ptr } %t705, 1
  %t710 = extractvalue { i64, ptr } %t705, 0
  %t711 = add i64 %t707, %t710
  %t712 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t713 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t714 = add i64 %t711, %t713
  %t715 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t714)
  call void @olang_textcopy(ptr %t715, ptr %t706, i64 %t707)
  %t716 = getelementptr i8, ptr %t715, i64 %t707
  call void @olang_textcopy(ptr %t716, ptr %t709, i64 %t710)
  %t717 = getelementptr i8, ptr %t716, i64 %t710
  call void @olang_textcopy(ptr %t717, ptr %t712, i64 %t713)
  %t718 = insertvalue { i64, ptr } undef, i64 %t714, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t715, 1
  %t721 = extractvalue { i64, ptr } %t719, 0
  %t722 = extractvalue { i64, ptr } %t719, 1
  %t723 = mul i64 %t721, 1
  %t724 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t723)
  call void @llvm.memcpy.p0.p0.i64(ptr %t724, ptr %t722, i64 %t723, i1 false)
  %t725 = insertvalue { i64, ptr } undef, i64 %t721, 0
  %t726 = insertvalue { i64, ptr } %t725, ptr %t724, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } %t726)
  br label %bb145
bb145:
  %t729 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t730 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t731 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t733 = extractvalue { i64, ptr } %t729, 1
  %t734 = extractvalue { i64, ptr } %t729, 0
  %t735 = add i64 %t731, %t734
  %t736 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t737 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t738 = add i64 %t735, %t737
  %t739 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t738)
  call void @olang_textcopy(ptr %t739, ptr %t730, i64 %t731)
  %t740 = getelementptr i8, ptr %t739, i64 %t731
  call void @olang_textcopy(ptr %t740, ptr %t733, i64 %t734)
  %t741 = getelementptr i8, ptr %t740, i64 %t734
  call void @olang_textcopy(ptr %t741, ptr %t736, i64 %t737)
  %t742 = insertvalue { i64, ptr } undef, i64 %t738, 0
  %t743 = insertvalue { i64, ptr } %t742, ptr %t739, 1
  %t745 = extractvalue { i64, ptr } %t743, 0
  %t746 = extractvalue { i64, ptr } %t743, 1
  %t747 = mul i64 %t745, 1
  %t748 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t747)
  call void @llvm.memcpy.p0.p0.i64(ptr %t748, ptr %t746, i64 %t747, i1 false)
  %t749 = insertvalue { i64, ptr } undef, i64 %t745, 0
  %t750 = insertvalue { i64, ptr } %t749, ptr %t748, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } %t750)
  br label %bb146
bb146:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d140, i32 0, i32 1) })
  br label %bb147
bb147:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d141, i32 0, i32 1) })
  br label %bb148
bb148:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d142, i32 0, i32 1) })
  br label %bb149
bb149:
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t758 = getelementptr %"compiler/emit:Emitter", ptr %t756, i32 0, i32 62
  %t759 = load i1, ptr %t758, !tbaa !21
  br i1 %t759, label %bb150, label %bb151
bb150:
  store %olang.scope zeroinitializer, ptr %s32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s32, ptr %l15, { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d143, i32 0, i32 1) })
  br label %bb152
bb151:
  br label %bb153
bb152:
  call void @__olang_scope_close(ptr %s32)
  br label %bb153
bb153:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d144, i32 0, i32 1) })
  br label %bb154
bb154:
  %t763 = load ptr, ptr %l0, !tbaa !29
  %t765 = getelementptr %"compiler/emit:Emitter", ptr %t763, i32 0, i32 62
  %t766 = load i1, ptr %t765, !tbaa !21
  br i1 %t766, label %bb155, label %bb156
bb155:
  store %olang.scope zeroinitializer, ptr %s33
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s33, ptr %l15, { i64, ptr } { i64 103, ptr getelementptr inbounds (<{ i64, [103 x i8] }>, ptr @.d145, i32 0, i32 1) })
  br label %bb157
bb156:
  br label %bb163
bb157:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s33, ptr %l15, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d146, i32 0, i32 1) })
  br label %bb158
bb158:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s33, ptr %l15, { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d147, i32 0, i32 1) })
  br label %bb159
bb159:
  store ptr %l15, ptr %l269, !tbaa !29
  %t771 = load ptr, ptr %l0, !tbaa !29
  %t773 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s33, ptr %s33, ptr %t771, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d148, i32 0, i32 1) })
  store { i64, ptr } %t773, ptr %l271
  br label %bb160
bb160:
  %t774 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t775 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t776 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t777 = extractvalue { i64, ptr } %t776, 1
  %t778 = extractvalue { i64, ptr } %t776, 0
  %t779 = add i64 %t775, %t778
  %t780 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t781 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t782 = add i64 %t779, %t781
  %t783 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t782)
  call void @olang_textcopy(ptr %t783, ptr %t774, i64 %t775)
  %t784 = getelementptr i8, ptr %t783, i64 %t775
  call void @olang_textcopy(ptr %t784, ptr %t777, i64 %t778)
  %t785 = getelementptr i8, ptr %t784, i64 %t778
  call void @olang_textcopy(ptr %t785, ptr %t780, i64 %t781)
  %t786 = insertvalue { i64, ptr } undef, i64 %t782, 0
  %t787 = insertvalue { i64, ptr } %t786, ptr %t783, 1
  %t789 = extractvalue { i64, ptr } %t787, 0
  %t790 = extractvalue { i64, ptr } %t787, 1
  %t791 = mul i64 %t789, 1
  %t792 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t791)
  call void @llvm.memcpy.p0.p0.i64(ptr %t792, ptr %t790, i64 %t791, i1 false)
  %t793 = insertvalue { i64, ptr } undef, i64 %t789, 0
  %t794 = insertvalue { i64, ptr } %t793, ptr %t792, 1
  %t795 = load ptr, ptr %l269, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s33, ptr %t795, { i64, ptr } %t794)
  br label %bb161
bb161:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s33, ptr %l15, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d151, i32 0, i32 1) })
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s33)
  br label %bb163
bb163:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d152, i32 0, i32 1) })
  br label %bb164
bb164:
  store ptr %l15, ptr %l276, !tbaa !29
  %t799 = load ptr, ptr %l0, !tbaa !29
  %t801 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s25, ptr %s25, ptr %t799, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d153, i32 0, i32 1) })
  store { i64, ptr } %t801, ptr %l278
  br label %bb165
bb165:
  %t802 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t803 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t804 = load { i64, ptr }, ptr %l278, !tbaa !27
  %t805 = extractvalue { i64, ptr } %t804, 1
  %t806 = extractvalue { i64, ptr } %t804, 0
  %t807 = add i64 %t803, %t806
  %t808 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t809 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t810 = add i64 %t807, %t809
  %t811 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t810)
  call void @olang_textcopy(ptr %t811, ptr %t802, i64 %t803)
  %t812 = getelementptr i8, ptr %t811, i64 %t803
  call void @olang_textcopy(ptr %t812, ptr %t805, i64 %t806)
  %t813 = getelementptr i8, ptr %t812, i64 %t806
  call void @olang_textcopy(ptr %t813, ptr %t808, i64 %t809)
  %t814 = insertvalue { i64, ptr } undef, i64 %t810, 0
  %t815 = insertvalue { i64, ptr } %t814, ptr %t811, 1
  %t817 = extractvalue { i64, ptr } %t815, 0
  %t818 = extractvalue { i64, ptr } %t815, 1
  %t819 = mul i64 %t817, 1
  %t820 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t819)
  call void @llvm.memcpy.p0.p0.i64(ptr %t820, ptr %t818, i64 %t819, i1 false)
  %t821 = insertvalue { i64, ptr } undef, i64 %t817, 0
  %t822 = insertvalue { i64, ptr } %t821, ptr %t820, 1
  %t823 = load ptr, ptr %l276, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %t823, { i64, ptr } %t822)
  br label %bb166
bb166:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d156, i32 0, i32 1) })
  br label %bb167
bb167:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d157, i32 0, i32 1) })
  br label %bb168
bb168:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d158, i32 0, i32 1) })
  br label %bb169
bb169:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 59, ptr getelementptr inbounds (<{ i64, [59 x i8] }>, ptr @.d159, i32 0, i32 1) })
  br label %bb170
bb170:
  call void @__olang_scope_close(ptr %s25)
  br label %bb171
bb171:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d160, i32 0, i32 1) })
  br label %bb172
bb172:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d161, i32 0, i32 1) })
  br label %bb173
bb173:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d162, i32 0, i32 1) })
  br label %bb174
bb174:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d163, i32 0, i32 1) })
  br label %bb175
bb175:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d164, i32 0, i32 1) })
  br label %bb176
bb176:
  %t834 = load ptr, ptr %l0, !tbaa !29
  %t836 = getelementptr %"compiler/emit:Emitter", ptr %t834, i32 0, i32 60
  %t837 = load i64, ptr %t836, !tbaa !24
  %t839 = icmp ne i64 %t837, 0
  br i1 %t839, label %bb177, label %bb178
bb177:
  store %olang.scope zeroinitializer, ptr %s36
  %t841 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s36, ptr %s36, ptr %t841, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d165, i32 0, i32 1) }, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d166, i32 0, i32 1) })
  br label %bb179
bb178:
  br label %bb192
bb179:
  %t843 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s36, ptr %s36, ptr %t843, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d167, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d168, i32 0, i32 1) })
  br label %bb180
bb180:
  %t845 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s36, ptr %s36, ptr %t845, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d169, i32 0, i32 1) }, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d170, i32 0, i32 1) })
  br label %bb181
bb181:
  %t847 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s36, ptr %s36, ptr %t847, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d171, i32 0, i32 1) }, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d172, i32 0, i32 1) })
  br label %bb182
bb182:
  store ptr %l15, ptr %l297, !tbaa !29
  %t849 = load ptr, ptr %l0, !tbaa !29
  %t851 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s36, ptr %s36, ptr %t849, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store { i64, ptr } %t851, ptr %l299
  br label %bb183
bb183:
  %t852 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t853 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t854 = load { i64, ptr }, ptr %l299, !tbaa !27
  %t855 = extractvalue { i64, ptr } %t854, 1
  %t856 = extractvalue { i64, ptr } %t854, 0
  %t857 = add i64 %t853, %t856
  %t858 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t859 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t860 = add i64 %t857, %t859
  %t861 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t860)
  call void @olang_textcopy(ptr %t861, ptr %t852, i64 %t853)
  %t862 = getelementptr i8, ptr %t861, i64 %t853
  call void @olang_textcopy(ptr %t862, ptr %t855, i64 %t856)
  %t863 = getelementptr i8, ptr %t862, i64 %t856
  call void @olang_textcopy(ptr %t863, ptr %t858, i64 %t859)
  %t864 = insertvalue { i64, ptr } undef, i64 %t860, 0
  %t865 = insertvalue { i64, ptr } %t864, ptr %t861, 1
  %t867 = extractvalue { i64, ptr } %t865, 0
  %t868 = extractvalue { i64, ptr } %t865, 1
  %t869 = mul i64 %t867, 1
  %t870 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t869)
  call void @llvm.memcpy.p0.p0.i64(ptr %t870, ptr %t868, i64 %t869, i1 false)
  %t871 = insertvalue { i64, ptr } undef, i64 %t867, 0
  %t872 = insertvalue { i64, ptr } %t871, ptr %t870, 1
  %t873 = load ptr, ptr %l297, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s36, ptr %t873, { i64, ptr } %t872)
  br label %bb184
bb184:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s36, ptr %l15, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d176, i32 0, i32 1) })
  br label %bb185
bb185:
  store ptr %l15, ptr %l303, !tbaa !29
  %t876 = load ptr, ptr %l0, !tbaa !29
  %t878 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s36, ptr %s36, ptr %t876, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d177, i32 0, i32 1) })
  store { i64, ptr } %t878, ptr %l305
  br label %bb186
bb186:
  %t879 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t880 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t881 = load { i64, ptr }, ptr %l305, !tbaa !27
  %t882 = extractvalue { i64, ptr } %t881, 1
  %t883 = extractvalue { i64, ptr } %t881, 0
  %t884 = add i64 %t880, %t883
  %t885 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t886 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t887 = add i64 %t884, %t886
  %t888 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t887)
  call void @olang_textcopy(ptr %t888, ptr %t879, i64 %t880)
  %t889 = getelementptr i8, ptr %t888, i64 %t880
  call void @olang_textcopy(ptr %t889, ptr %t882, i64 %t883)
  %t890 = getelementptr i8, ptr %t889, i64 %t883
  call void @olang_textcopy(ptr %t890, ptr %t885, i64 %t886)
  %t891 = insertvalue { i64, ptr } undef, i64 %t887, 0
  %t892 = insertvalue { i64, ptr } %t891, ptr %t888, 1
  %t894 = extractvalue { i64, ptr } %t892, 0
  %t895 = extractvalue { i64, ptr } %t892, 1
  %t896 = mul i64 %t894, 1
  %t897 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t896)
  call void @llvm.memcpy.p0.p0.i64(ptr %t897, ptr %t895, i64 %t896, i1 false)
  %t898 = insertvalue { i64, ptr } undef, i64 %t894, 0
  %t899 = insertvalue { i64, ptr } %t898, ptr %t897, 1
  %t900 = load ptr, ptr %l303, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s36, ptr %t900, { i64, ptr } %t899)
  br label %bb187
bb187:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s36, ptr %l15, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d180, i32 0, i32 1) })
  br label %bb188
bb188:
  store ptr %l15, ptr %l309, !tbaa !29
  %t903 = load ptr, ptr %l0, !tbaa !29
  %t905 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s36, ptr %s36, ptr %t903, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d181, i32 0, i32 1) })
  store { i64, ptr } %t905, ptr %l311
  br label %bb189
bb189:
  %t906 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t907 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t908 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t909 = extractvalue { i64, ptr } %t908, 1
  %t910 = extractvalue { i64, ptr } %t908, 0
  %t911 = add i64 %t907, %t910
  %t912 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t913 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t914 = add i64 %t911, %t913
  %t915 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t914)
  call void @olang_textcopy(ptr %t915, ptr %t906, i64 %t907)
  %t916 = getelementptr i8, ptr %t915, i64 %t907
  call void @olang_textcopy(ptr %t916, ptr %t909, i64 %t910)
  %t917 = getelementptr i8, ptr %t916, i64 %t910
  call void @olang_textcopy(ptr %t917, ptr %t912, i64 %t913)
  %t918 = insertvalue { i64, ptr } undef, i64 %t914, 0
  %t919 = insertvalue { i64, ptr } %t918, ptr %t915, 1
  %t921 = extractvalue { i64, ptr } %t919, 0
  %t922 = extractvalue { i64, ptr } %t919, 1
  %t923 = mul i64 %t921, 1
  %t924 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t923)
  call void @llvm.memcpy.p0.p0.i64(ptr %t924, ptr %t922, i64 %t923, i1 false)
  %t925 = insertvalue { i64, ptr } undef, i64 %t921, 0
  %t926 = insertvalue { i64, ptr } %t925, ptr %t924, 1
  %t927 = load ptr, ptr %l309, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s36, ptr %t927, { i64, ptr } %t926)
  br label %bb190
bb190:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s36, ptr %l15, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d184, i32 0, i32 1) })
  br label %bb191
bb191:
  call void @__olang_scope_close(ptr %s36)
  br label %bb192
bb192:
  store ptr %l15, ptr %l315, !tbaa !29
  %t930 = load ptr, ptr %l0, !tbaa !29
  %t932 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s0, ptr %s0, ptr %t930, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d185, i32 0, i32 1) })
  store { i64, ptr } %t932, ptr %l317
  br label %bb193
bb193:
  %t933 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t934 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t935 = load { i64, ptr }, ptr %l317, !tbaa !27
  %t936 = extractvalue { i64, ptr } %t935, 1
  %t937 = extractvalue { i64, ptr } %t935, 0
  %t938 = add i64 %t934, %t937
  %t939 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t940 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t941 = add i64 %t938, %t940
  %t942 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t941)
  call void @olang_textcopy(ptr %t942, ptr %t933, i64 %t934)
  %t943 = getelementptr i8, ptr %t942, i64 %t934
  call void @olang_textcopy(ptr %t943, ptr %t936, i64 %t937)
  %t944 = getelementptr i8, ptr %t943, i64 %t937
  call void @olang_textcopy(ptr %t944, ptr %t939, i64 %t940)
  %t945 = insertvalue { i64, ptr } undef, i64 %t941, 0
  %t946 = insertvalue { i64, ptr } %t945, ptr %t942, 1
  %t948 = extractvalue { i64, ptr } %t946, 0
  %t949 = extractvalue { i64, ptr } %t946, 1
  %t950 = mul i64 %t948, 1
  %t951 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t950)
  call void @llvm.memcpy.p0.p0.i64(ptr %t951, ptr %t949, i64 %t950, i1 false)
  %t952 = insertvalue { i64, ptr } undef, i64 %t948, 0
  %t953 = insertvalue { i64, ptr } %t952, ptr %t951, 1
  %t954 = load ptr, ptr %l315, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t954, { i64, ptr } %t953)
  br label %bb194
bb194:
  %t956 = load ptr, ptr %l0, !tbaa !29
  %t958 = getelementptr %"compiler/emit:Emitter", ptr %t956, i32 0, i32 60
  %t959 = load i64, ptr %t958, !tbaa !24
  %t961 = icmp ne i64 %t959, 0
  br i1 %t961, label %bb195, label %bb196
bb195:
  store %olang.scope zeroinitializer, ptr %s41
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s41, ptr %l15, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d188, i32 0, i32 1) })
  br label %bb197
bb196:
  br label %bb198
bb197:
  call void @__olang_scope_close(ptr %s41)
  br label %bb198
bb198:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l15, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d189, i32 0, i32 1) })
  br label %bb199
bb199:
  %t965 = load ptr, ptr %l0, !tbaa !29
  store ptr %t965, ptr %l325, !tbaa !29
  %t966 = load ptr, ptr %l0, !tbaa !29
  %t968 = getelementptr %"compiler/emit:Emitter", ptr %t966, i32 0, i32 0
  %t969 = load ptr, ptr %t968, !tbaa !29
  %t971 = getelementptr %"compiler/generic:Program", ptr %t969, i32 0, i32 0
  %t972 = load ptr, ptr %t971, !tbaa !29
  %t974 = getelementptr %"compiler/load:Loader", ptr %t972, i32 0, i32 12
  %t975 = load i64, ptr %t974, !tbaa !24
  store i64 %t975, ptr %l329, !tbaa !24
  %t977 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l15)
  store { i64, ptr } %t977, ptr %l331
  br label %bb200
bb200:
  %t978 = load { i64, ptr }, ptr %l331, !tbaa !27
  %t979 = extractvalue { i64, ptr } %t978, 0
  %t980 = extractvalue { i64, ptr } %t978, 1
  %t981 = mul i64 %t979, 1
  %t982 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t981)
  call void @llvm.memcpy.p0.p0.i64(ptr %t982, ptr %t980, i64 %t981, i1 false)
  %t983 = insertvalue { i64, ptr } undef, i64 %t979, 0
  %t984 = insertvalue { i64, ptr } %t983, ptr %t982, 1
  %t985 = load ptr, ptr %l325, !tbaa !29
  %t986 = load i64, ptr %l329, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t985, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d190, i32 0, i32 1) }, i64 %t986, { i64, ptr } %t984, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb201
bb201:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i1
  %l12 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb14
bb4:
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l2, !tbaa !23
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t21 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisLambda(ptr %v0, ptr %a0, i64 %t18)
  store i1 %t21, ptr %l12
  br label %bb8
bb8:
  %t22 = load i1, ptr %l12, !tbaa !21
  store i1 %t22, ptr %l3, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_22c0ecf0dfd2f0b7_2552f1950a299d53)
  unreachable
bb14:
  %t23 = load i1, ptr %l3, !tbaa !21
  store i1 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2elocations(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l4 = alloca %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f"
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l15 = alloca %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f"
  %l17 = alloca %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f"
  %l18 = alloca i32
  %l20 = alloca i1
  %l26 = alloca { i64, ptr }
  %l30 = alloca %"std/prelude/text:StringBuilder"
  %l31 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t34 = alloca { ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t5 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eIter_3cI64_2c_20Bool_3e(ptr %v1, ptr %v1, ptr %a1)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t5, ptr %l14
  br label %bb2
bb2:
  %t6 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l14
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t6, ptr %l3
  br label %bb3
bb3:
  %t8 = call { i32, %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v1, ptr %l3)
  %t9 = extractvalue { i32, %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" } %t8, 1
  %t10 = extractvalue { i32, %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" } %t8, 0
  store i32 %t10, ptr %l18
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" %t9, ptr %l17
  br label %bb4
bb4:
  %t13 = load %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %l17
  store %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" %t13, ptr %l15
  br label %bb7
bb5:
  %t14 = load i32, ptr %l18, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  br label %bb10
bb7:
  %t18 = load %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %l15
  store %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" %t18, ptr %l4
  %t19 = getelementptr %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %l4, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t20)
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %bb3
bb10:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/emit:Emitter", ptr %t23, i32 0, i32 19
  store ptr %t25, ptr %l5, !tbaa !29
  %t28 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t28, ptr %l26
  br label %bb11
bb11:
  %t29 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t29, ptr %l6, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t33 = ptrtoint ptr %t32 to i64
  %t35 = getelementptr { ptr, ptr }, ptr %t34, i32 0, i32 0
  store ptr %t31, ptr %t35, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t37 = getelementptr { ptr, ptr }, ptr %t34, i32 0, i32 1
  store ptr %v0, ptr %t37, !tbaa !28
  %t38 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_191, 0
  %t39 = insertvalue { ptr, ptr } %t38, ptr %t34, 1
  %t42 = extractvalue { ptr, ptr } %t39, 0
  %t43 = extractvalue { ptr, ptr } %t39, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, { i64, ptr } %t30, ptr %t42, ptr %t43)
  br label %bb12
bb12:
  %t44 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t44, ptr %l30
  br label %bb13
bb13:
  %t45 = load %"std/prelude/text:StringBuilder", ptr %l30
  store %"std/prelude/text:StringBuilder" %t45, ptr %l7
  store ptr %l7, ptr %l31, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehead(ptr %v0, ptr %s0, ptr %t46)
  store { i64, ptr } %t48, ptr %l33
  br label %bb14
bb14:
  %t49 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t56, { i64, ptr } %t55)
  br label %bb15
bb15:
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t58, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  store i64 %t62, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l10, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t72 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t72, ptr %l42, !tbaa !27
  %t73 = load i64, ptr %l9, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i64, ptr %t76, i64 %t73
  %t78 = load i64, ptr %t77, !tbaa !34
  store ptr %l7, ptr %l45, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/emit:Emitter", ptr %t80, i32 0, i32 20
  %t86 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t82, i64 %t78)
  store { i64, ptr } %t86, ptr %l49
  br label %bb20
bb20:
  %t87 = load ptr, ptr %l45, !tbaa !29
  %t88 = load { i64, ptr }, ptr %l49, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t87, { i64, ptr } %t88)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t89 = load i64, ptr %l9, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l9, !tbaa !24
  br label %bb16
bb23:
  %t94 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l7)
  store { i64, ptr } %t94, ptr %l53
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t95 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i32
  %l30 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l39 = alloca i1
  %l49 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l17
  br label %bb1
bb1:
  %t11 = load i32, ptr %l17, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l20
  br label %bb2
bb2:
  %t17 = load i32, ptr %l20, !range !{i32 0, i32 33}
  store i32 %t17, ptr %l4
  %t18 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t20 = trunc i64 18 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb29
bb5:
  %t23 = load ptr, ptr %l2, !tbaa !29
  store ptr %t23, ptr %l23, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l26
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l23, !tbaa !29
  %t30 = load i32, ptr %l26, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t31, ptr %l27
  br label %bb7
bb7:
  %t32 = load i32, ptr %l27, !range !{i32 0, i32 6}
  %t34 = trunc i64 0 to i32
  %t35 = icmp eq i32 %t32, %t34
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t38 = load i32, ptr %l3, !tbaa !23
  %t41 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t41, ptr %l33
  br label %bb10
bb9:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb11
bb10:
  %t42 = load i1, ptr %l33, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l30, !tbaa !21
  br label %bb11
bb11:
  %t45 = load i1, ptr %l30, !tbaa !21
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/emit:Emitter", ptr %t46, i32 0, i32 18
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l39
  br label %bb14
bb13:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb15
bb14:
  %t53 = load i1, ptr %l39, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l35, !tbaa !21
  br label %bb15
bb15:
  %t56 = load i1, ptr %l35, !tbaa !21
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/emit:Emitter", ptr %t57, i32 0, i32 18
  %t60 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t59, i32 %t60, i1 true)
  br label %bb18
bb17:
  br label %bb28
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/emit:Emitter", ptr %t63, i32 0, i32 17
  %t66 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t65, i32 %t66)
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t70 = load i32, ptr %l3, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s3, ptr %t69, i32 %t70)
  store { i64, ptr } %t73, ptr %l49
  br label %bb20
bb20:
  %t74 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  %t76 = extractvalue { i64, ptr } %t74, 1
  %t77 = mul i64 %t75, 4
  %t78 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  store { i64, ptr } %t80, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb21
bb21:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb22, label %bb23
bb22:
  br label %bb27
bb23:
  br label %bb24
bb24:
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t94, ptr %l57, !tbaa !27
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i32, ptr %t98, i64 %t95
  %t100 = load i32, ptr %t99, !tbaa !33
  %t102 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %t102, i32 %t100)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l6, !tbaa !24
  br label %bb21
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb28:
  br label %bb50
bb29:
  %t110 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t112 = trunc i64 19 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb30, label %bb31
bb30:
  br label %bb36
bb31:
  %t115 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t117 = trunc i64 22 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb32, label %bb33
bb32:
  br label %bb36
bb33:
  %t120 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t122 = trunc i64 23 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb45
bb36:
  store %olang.scope zeroinitializer, ptr %s7
  %t125 = load ptr, ptr %l2, !tbaa !29
  %t126 = load i32, ptr %l3, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s7, ptr %t125, i32 %t126)
  store { i64, ptr } %t129, ptr %l72
  br label %bb37
bb37:
  %t130 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  %t132 = extractvalue { i64, ptr } %t130, 1
  %t133 = mul i64 %t131, 4
  %t134 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t134, ptr %t132, i64 %t133, i1 false)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  store { i64, ptr } %t136, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  store i64 %t140, ptr %l11, !tbaa !24
  br label %bb38
bb38:
  %t142 = load i64, ptr %l10, !tbaa !24
  %t143 = load i64, ptr %l11, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb39, label %bb40
bb39:
  br label %bb44
bb40:
  br label %bb41
bb41:
  %t150 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t150, ptr %l80, !tbaa !27
  %t151 = load i64, ptr %l10, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i32, ptr %t154, i64 %t151
  %t156 = load i32, ptr %t155, !tbaa !33
  %t158 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %t158, i32 %t156)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t162 = load i64, ptr %l10, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l10, !tbaa !24
  br label %bb38
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_ef8ce655497c6e66_70bdfc36b0b8c4fa)
  unreachable
bb50:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eretires(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 0
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
  br label %bb11
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
  %t29 = getelementptr %"compiler/load:Module", ptr %t27, i32 0, i32 4
  %t30 = load i64, ptr %t29, !tbaa !24
  %t34 = icmp eq i64 %t30, %a1
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr %"compiler/load:Module", ptr %t36, i32 0, i32 5
  %t39 = load i1, ptr %t38, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i1
  %l15 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l27 = alloca i32
  %l30 = alloca i32
  %l33 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t21 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %v1, ptr %t15, i64 %t18)
  store { i64, ptr } %t21, ptr %l22
  br label %bb4
bb4:
  %t22 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t22, ptr %l15, !tbaa !27
  br label %bb48
bb5:
  %t23 = load { i64, [2 x i64] }, ptr %l1
  %t25 = extractvalue { i64, [2 x i64] } %t23, 0
  %t26 = icmp eq i64 %t25, 3
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t29 = getelementptr { i32, i32 }, ptr %t28, i32 0, i32 0
  %t30 = load i32, ptr %t29, !range !{i32 0, i32 8}
  store i32 %t30, ptr %l4
  %t32 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t33 = getelementptr { i32, i32 }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l5, !tbaa !23
  br label %bb8
bb7:
  br label %bb17
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load i32, ptr %l4, !range !{i32 0, i32 8}
  store i32 %t36, ptr %l27
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t38 = load i32, ptr %l5, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l30
  br label %bb9
bb9:
  %t42 = load i32, ptr %l5, !tbaa !23
  %t43 = load i32, ptr %l30, !tbaa !23
  %t45 = icmp eq i32 %t43, %t42
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t48 = load i32, ptr %l5, !tbaa !23
  %t50 = inttoptr i64 0 to ptr
  %t53 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s2, ptr %t50, ptr %t47, i32 %t48)
  store { i64, ptr } %t53, ptr %l37
  br label %bb12
bb11:
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t55 = load i32, ptr %l5, !tbaa !23
  %t57 = inttoptr i64 0 to ptr
  %t60 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonNamed(ptr %v0, ptr %s2, ptr %t57, ptr %t54, i32 %t55)
  store { i64, ptr } %t60, ptr %l41
  br label %bb13
bb12:
  %t61 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t61, ptr %l33, !tbaa !27
  br label %bb14
bb13:
  %t62 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t62, ptr %l33, !tbaa !27
  br label %bb14
bb14:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  %t63 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t63, i64 %t64)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aHelperKind(ptr %s3, ptr %l27, i64 0)
  br label %bb15
bb15:
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t66, i64 %t67)
  %t68 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  call void @__olang_sb_put(ptr %s3, ptr %t69, i64 %t70)
  %t71 = load ptr, ptr %s3
  %t72 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t73 = load i64, ptr %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t71, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l43, !tbaa !27
  %t77 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t78 = load ptr, ptr %t77
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %sbgrew.80, label %sbdone.81
sbgrew.80:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.81
sbdone.81:
  %t82 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  %t84 = extractvalue { i64, ptr } %t82, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t90 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %s2, ptr %v1, { i64, ptr } %t88)
  store { i64, ptr } %t90, ptr %l45
  br label %bb16
bb16:
  %t91 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t91, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb17:
  %t92 = load { i64, [2 x i64] }, ptr %l1
  %t94 = extractvalue { i64, [2 x i64] } %t92, 0
  %t95 = icmp eq i64 %t94, 1
  br i1 %t95, label %bb18, label %bb19
bb18:
  %t97 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t98 = getelementptr { i32 }, ptr %t97, i32 0, i32 0
  %t99 = load i32, ptr %t98
  store i32 %t99, ptr %l6, !tbaa !23
  br label %bb20
bb19:
  br label %bb22
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i32, ptr %l6, !tbaa !23
  %t104 = sext i32 %t102 to i64
  %t107 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %s4, ptr %t101, i64 %t104)
  store { i64, ptr } %t107, ptr %l52
  br label %bb21
bb21:
  %t108 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t111 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t113 = add i64 %t110, %t112
  %t114 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t113)
  call void @olang_textcopy(ptr %t114, ptr %t109, i64 %t110)
  %t115 = getelementptr i8, ptr %t114, i64 %t110
  call void @olang_textcopy(ptr %t115, ptr %t111, i64 %t112)
  %t116 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t114, 1
  store { i64, ptr } %t117, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb48
bb22:
  %t119 = load { i64, [2 x i64] }, ptr %l1
  %t121 = extractvalue { i64, [2 x i64] } %t119, 0
  %t122 = icmp eq i64 %t121, 2
  br i1 %t122, label %bb23, label %bb24
bb23:
  %t124 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t125 = getelementptr { i32 }, ptr %t124, i32 0, i32 0
  %t126 = load i32, ptr %t125
  store i32 %t126, ptr %l7, !tbaa !23
  br label %bb25
bb24:
  br label %bb27
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i32, ptr %l7, !tbaa !23
  %t131 = sext i32 %t129 to i64
  %t134 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %s6, ptr %t128, i64 %t131)
  store { i64, ptr } %t134, ptr %l60
  br label %bb26
bb26:
  %t135 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t138 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t140 = add i64 %t137, %t139
  %t141 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t140)
  call void @olang_textcopy(ptr %t141, ptr %t136, i64 %t137)
  %t142 = getelementptr i8, ptr %t141, i64 %t137
  call void @olang_textcopy(ptr %t142, ptr %t138, i64 %t139)
  %t143 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  store { i64, ptr } %t144, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb48
bb27:
  %t146 = load { i64, [2 x i64] }, ptr %l1
  %t148 = extractvalue { i64, [2 x i64] } %t146, 0
  %t149 = icmp eq i64 %t148, 6
  br i1 %t149, label %bb28, label %bb29
bb28:
  %t151 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t152 = getelementptr { i32, i64 }, ptr %t151, i32 0, i32 0
  %t153 = load i32, ptr %t152
  store i32 %t153, ptr %l8, !tbaa !23
  %t155 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t156 = getelementptr { i32, i64 }, ptr %t155, i32 0, i32 1
  %t157 = load i64, ptr %t156
  store i64 %t157, ptr %l9, !tbaa !24
  br label %bb30
bb29:
  br label %bb32
bb30:
  store %olang.scope zeroinitializer, ptr %s8
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i32, ptr %l8, !tbaa !23
  %t162 = sext i32 %t160 to i64
  %t165 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %s8, ptr %t159, i64 %t162)
  store { i64, ptr } %t165, ptr %l69
  br label %bb31
bb31:
  %t166 = load i64, ptr %l9, !tbaa !24
  %t167 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d196, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d196, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t174 = call i64 @__olang_fmt_i64(ptr null, i64 %t166)
  %t175 = add i64 %t172, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t168, i64 %t169)
  %t177 = getelementptr i8, ptr %t176, i64 %t169
  call void @olang_textcopy(ptr %t177, ptr %t170, i64 %t171)
  %t178 = getelementptr i8, ptr %t177, i64 %t171
  %t179 = call i64 @__olang_fmt_i64(ptr %t178, i64 %t166)
  %t180 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t176, 1
  store { i64, ptr } %t181, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s8)
  br label %bb48
bb32:
  %t183 = load { i64, [2 x i64] }, ptr %l1
  %t185 = extractvalue { i64, [2 x i64] } %t183, 0
  %t186 = icmp eq i64 %t185, 4
  br i1 %t186, label %bb33, label %bb34
bb33:
  %t188 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t189 = getelementptr { i64 }, ptr %t188, i32 0, i32 0
  %t190 = load i64, ptr %t189
  store i64 %t190, ptr %l10, !tbaa !24
  br label %bb35
bb34:
  br label %bb38
bb35:
  store %olang.scope zeroinitializer, ptr %s10
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/emit:Emitter", ptr %t192, i32 0, i32 0
  %t195 = load ptr, ptr %t194, !tbaa !29
  %t197 = getelementptr %"compiler/generic:Program", ptr %t195, i32 0, i32 0
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/load:Loader", ptr %t198, i32 0, i32 10
  %t201 = load i64, ptr %l10, !tbaa !24
  %t204 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t200, i64 %t201)
  store ptr %t204, ptr %l80
  br label %bb36
bb36:
  %t205 = load ptr, ptr %l80, !tbaa !29
  %t207 = getelementptr %"compiler/load:Module", ptr %t205, i32 0, i32 2
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  %t209 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t212 = extractvalue { i64, ptr } %t208, 1
  %t213 = extractvalue { i64, ptr } %t208, 0
  %t214 = add i64 %t210, %t213
  %t215 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t214)
  call void @olang_textcopy(ptr %t215, ptr %t209, i64 %t210)
  %t216 = getelementptr i8, ptr %t215, i64 %t210
  call void @olang_textcopy(ptr %t216, ptr %t212, i64 %t213)
  %t217 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t215, 1
  %t220 = extractvalue { i64, ptr } %t218, 0
  %t221 = extractvalue { i64, ptr } %t218, 1
  %t222 = mul i64 %t220, 1
  %t223 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t223, ptr %t221, i64 %t222, i1 false)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  %t227 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %s10, ptr %v1, { i64, ptr } %t225)
  store { i64, ptr } %t227, ptr %l85
  br label %bb37
bb37:
  %t228 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t228, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s10)
  br label %bb48
bb38:
  %t229 = load { i64, [2 x i64] }, ptr %l1
  %t231 = extractvalue { i64, [2 x i64] } %t229, 0
  %t232 = icmp eq i64 %t231, 5
  br i1 %t232, label %bb39, label %bb40
bb39:
  %t234 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t235 = getelementptr { i64, i1 }, ptr %t234, i32 0, i32 0
  %t236 = load i64, ptr %t235
  store i64 %t236, ptr %l11, !tbaa !24
  %t238 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t239 = getelementptr { i64, i1 }, ptr %t238, i32 0, i32 1
  %t240 = load i1, ptr %t239
  store i1 %t240, ptr %l12, !tbaa !21
  br label %bb41
bb40:
  br label %bb47
bb41:
  store %olang.scope zeroinitializer, ptr %s12
  %t242 = load i1, ptr %l12, !tbaa !21
  br i1 %t242, label %bb42, label %bb43
bb42:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d198, i32 0, i32 1) }, ptr %l91, !tbaa !27
  br label %bb44
bb43:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d199, i32 0, i32 1) }, ptr %l91, !tbaa !27
  br label %bb44
bb44:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i64, ptr %l11, !tbaa !24
  %t248 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etableName(ptr %v0, ptr %s12, ptr %t244, i64 %t245)
  store { i64, ptr } %t248, ptr %l94
  br label %bb45
bb45:
  %t249 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t251 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 1
  %t253 = extractvalue { i64, ptr } %t251, 0
  %t254 = add i64 %t250, %t253
  %t255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t257 = add i64 %t254, %t256
  %t258 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t261 = add i64 %t257, %t260
  %t262 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t261)
  call void @olang_textcopy(ptr %t262, ptr %t249, i64 %t250)
  %t263 = getelementptr i8, ptr %t262, i64 %t250
  call void @olang_textcopy(ptr %t263, ptr %t252, i64 %t253)
  %t264 = getelementptr i8, ptr %t263, i64 %t253
  call void @olang_textcopy(ptr %t264, ptr %t255, i64 %t256)
  %t265 = getelementptr i8, ptr %t264, i64 %t256
  call void @olang_textcopy(ptr %t265, ptr %t259, i64 %t260)
  %t266 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t262, 1
  %t269 = extractvalue { i64, ptr } %t267, 0
  %t270 = extractvalue { i64, ptr } %t267, 1
  %t271 = mul i64 %t269, 1
  %t272 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t271)
  call void @llvm.memcpy.p0.p0.i64(ptr %t272, ptr %t270, i64 %t271, i1 false)
  %t273 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t272, 1
  %t276 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %s12, ptr %v1, { i64, ptr } %t274)
  store { i64, ptr } %t276, ptr %l97
  br label %bb46
bb46:
  %t277 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t277, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s12)
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_325a0aca37049b03_8faf0435ed6a0227)
  unreachable
bb48:
  %t278 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t278, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca ptr
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/types:Table", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = call ptr @__olang_scope_of(ptr %t9, ptr null)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l4, !tbaa !29
  %t16 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t13, ptr %v1, ptr %t14, i32 %a1)
  store { i64, ptr } %t16, ptr %l7
  br label %bb1
bb1:
  %t17 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t17, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeHome(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i1
  %l18 = alloca i32
  %l21 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t19 = trunc i64 18 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb4:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l18
  br label %bb5
bb5:
  %t29 = load i32, ptr %l18, !tbaa !23
  %t30 = icmp ne i32 %t29, 0
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t32 = load i1, ptr %l15, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t33 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l2, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t37 = load i32, ptr %l3, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l24
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l21, !tbaa !29
  %t42 = load i32, ptr %l24, !tbaa !23
  %t43 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t43, ptr %l25
  br label %bb11
bb11:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewalkStub(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i1
  %l7 = alloca { i64, ptr }
  %l10 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca { i64, [2 x i64] }
  %l22 = alloca i32
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i1
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t5 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %t1, { i64, [2 x i64] } %t2)
  store i1 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i1, ptr %l10, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = extractvalue { i64, ptr } %a3, 1
  %t12 = extractvalue { i64, ptr } %a3, 0
  %t13 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t11, i64 %t12)
  %t17 = getelementptr i8, ptr %t16, i64 %t12
  call void @olang_textcopy(ptr %t17, ptr %t13, i64 %t14)
  %t18 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t16, 1
  store { i64, ptr } %t19, ptr %l7, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  %t22 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t22, ptr %l15
  %t23 = load i32, ptr %l2, !tbaa !23
  store i32 %t23, ptr %l16, !tbaa !23
  %t24 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t24, ptr %l17, !tbaa !27
  %t25 = load i64, ptr %l4, !tbaa !24
  store i64 %t25, ptr %l18, !tbaa !24
  %t26 = load i1, ptr %l5, !tbaa !21
  store i1 %t26, ptr %l19, !tbaa !21
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l20, !tbaa !29
  %t28 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t28, ptr %l21
  %t29 = load i32, ptr %l2, !tbaa !23
  store i32 %t29, ptr %l22, !tbaa !23
  %t30 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t30, ptr %l23, !tbaa !27
  %t31 = load i64, ptr %l4, !tbaa !24
  store i64 %t31, ptr %l24, !tbaa !24
  %t32 = load i1, ptr %l5, !tbaa !21
  store i1 %t32, ptr %l25, !tbaa !21
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load { i64, [2 x i64] }, ptr %l1
  %t37 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t33, { i64, [2 x i64] } %t34)
  store i64 %t37, ptr %l28
  br label %bb5
bb5:
  %t38 = load i64, ptr %l28, !tbaa !24
  %t39 = call { i64, ptr } @compiler_2femit_2elinkFor(ptr %s0, i64 %t38)
  store { i64, ptr } %t39, ptr %l29
  br label %bb6
bb6:
  %t40 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  %t42 = extractvalue { i64, ptr } %t40, 1
  %t43 = mul i64 %t41, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t43)
  call void @llvm.memcpy.p0.p0.i64(ptr %t44, ptr %t42, i64 %t43, i1 false)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  %t47 = load ptr, ptr %l20, !tbaa !29
  %t48 = load { i64, [2 x i64] }, ptr %l21
  %t49 = load i32, ptr %l22, !tbaa !23
  %t50 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t51 = load i64, ptr %l24, !tbaa !24
  %t52 = load i1, ptr %l25, !tbaa !21
  %t54 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t47, { i64, [2 x i64] } %t48, i32 %t49, { i64, ptr } %t50, i64 %t51, i1 %t52, { i64, ptr } %t46, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d203, i32 0, i32 1) })
  store { i64, ptr } %t54, ptr %l31
  br label %bb7
bb7:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t61 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %v2, ptr %s0, ptr %s0, ptr %t55, { i64, ptr } %a6, { i64, ptr } %t57)
  store { i64, ptr } %t61, ptr %l35
  br label %bb8
bb8:
  %t62 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = add i64 %t64, %t67
  %t69 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t63, i64 %t64)
  %t70 = getelementptr i8, ptr %t69, i64 %t64
  call void @olang_textcopy(ptr %t70, ptr %t66, i64 %t67)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = extractvalue { i64, ptr } %t72, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load ptr, ptr %l14, !tbaa !29
  %t81 = load { i64, [2 x i64] }, ptr %l15
  %t82 = load i32, ptr %l16, !tbaa !23
  %t83 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t84 = load i64, ptr %l18, !tbaa !24
  %t85 = load i1, ptr %l19, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %s0, ptr %s0, ptr %t80, { i64, [2 x i64] } %t81, i32 %t82, { i64, ptr } %t83, i64 %t84, i1 %t85, { i64, ptr } %t79)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eweakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %l10 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t4)
  store ptr %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/emit:Emitter", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t13 = load ptr, ptr %l5, !tbaa !29
  %t17 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v0, ptr %t13, ptr %t10, i32 %a1, i64 %a2)
  store i1 %t17, ptr %l10
  br label %bb2
bb2:
  %t18 = load i1, ptr %l10, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ebigArena(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 13
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:fnEm", ptr %t6, i32 0, i32 13
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t11, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d204, i32 0, i32 1) })
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/emit:fnEm", ptr %t13, i32 0, i32 4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t15, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d205, i32 0, i32 1) })
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/emit:fnEm", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l9, !tbaa !29
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t22 = call ptr @__olang_scope_or(ptr %v1, ptr %t21)
  %t23 = ptrtoint ptr %t22 to i64
  %t25 = inttoptr i64 %t23 to ptr
  %t26 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t25, ptr %s0, ptr %t26, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d206, i32 0, i32 1) })
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/emit:fnEm", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l12, !tbaa !29
  %t31 = load ptr, ptr %l12, !tbaa !29
  %t32 = call ptr @__olang_scope_or(ptr %v1, ptr %t31)
  %t33 = ptrtoint ptr %t32 to i64
  %t35 = inttoptr i64 %t33 to ptr
  %t36 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t35, ptr %s0, ptr %t36, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca i64
  %l6 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { { i64, ptr }, { i64, ptr }, i64 }
  %lp10 = alloca ptr
  %l11 = alloca { { i64, ptr }, i64 }
  %lp12 = alloca ptr
  %l13 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca { i64, [1 x i64] }
  %l28 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca ptr
  %l40 = alloca i1
  %l41 = alloca i32
  %l42 = alloca ptr
  %l45 = alloca i32
  %l49 = alloca i32
  %l53 = alloca ptr
  %l54 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca i1
  %l68 = alloca i1
  %l69 = alloca ptr
  %l72 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca ptr
  %l78 = alloca i32
  %l80 = alloca { { i64, ptr }, { i64, ptr }, i64 }
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l83 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l89 = alloca i32
  %l91 = alloca { { i64, ptr }, i64 }
  %l92 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l99 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/mir:Fn", ptr %t12, i32 0, i32 19
  store ptr %t14, ptr %l19, !tbaa !29
  %t15 = load i32, ptr %l2, !tbaa !23
  %t17 = sext i32 %t15 to i64
  %t18 = load ptr, ptr %l19, !tbaa !29
  %t19 = call ptr @__olang_scope_or(ptr %v2, ptr %t18)
  %t20 = ptrtoint ptr %t19 to i64
  %t22 = inttoptr i64 %t20 to ptr
  %t23 = load ptr, ptr %l19, !tbaa !29
  %t25 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %t22, ptr %t23, i64 %t17)
  store { i64, [1 x i64] } %t25, ptr %l23
  br label %bb1
bb1:
  %t26 = load { i64, [1 x i64] }, ptr %l23
  store { i64, [1 x i64] } %t26, ptr %l4
  %t27 = load { i64, [1 x i64] }, ptr %l4
  %t29 = extractvalue { i64, [1 x i64] } %t27, 0
  %t30 = icmp eq i64 %t29, 0
  br i1 %t30, label %bb2, label %bb3
bb2:
  %t32 = getelementptr { i64, [1 x i64] }, ptr %l4, i32 0, i32 1
  %t33 = getelementptr { i64 }, ptr %t32, i32 0, i32 0
  %t34 = load i64, ptr %t33
  store i64 %t34, ptr %l5, !tbaa !24
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/emit:fnEm", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  store ptr %t39, ptr %l28, !tbaa !29
  %t40 = load i32, ptr %l1, !tbaa !23
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load ptr, ptr %l28, !tbaa !29
  %t43 = call ptr @__olang_scope_or(ptr %v3, ptr %t42)
  %t44 = ptrtoint ptr %t43 to i64
  %t46 = inttoptr i64 %t44 to ptr
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t50 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %t46, ptr %v1, ptr %t47, i32 %t40, i64 %t41)
  store { i64, ptr } %t50, ptr %l32
  br label %bb5
bb5:
  %t51 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb42
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t52 = load ptr, ptr %l3, !tbaa !29
  store ptr %t52, ptr %l33, !tbaa !29
  %t53 = load i32, ptr %l1, !tbaa !23
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t55 = call ptr @__olang_scope_or(ptr %v3, ptr %t54)
  %t56 = ptrtoint ptr %t55 to i64
  %t58 = inttoptr i64 %t56 to ptr
  %t59 = load ptr, ptr %l33, !tbaa !29
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t58, ptr %t59, i32 %t53)
  store i32 %t61, ptr %l36
  br label %bb10
bb10:
  %t62 = load i32, ptr %l36, !tbaa !23
  store i32 %t62, ptr %l6, !tbaa !23
  %t63 = load ptr, ptr %l3, !tbaa !29
  store ptr %t63, ptr %l37, !tbaa !29
  %t64 = load i32, ptr %l6, !tbaa !23
  %t65 = load ptr, ptr %l37, !tbaa !29
  %t66 = call ptr @__olang_scope_or(ptr %v3, ptr %t65)
  %t67 = ptrtoint ptr %t66 to i64
  %t69 = inttoptr i64 %t67 to ptr
  %t70 = load ptr, ptr %l37, !tbaa !29
  %t72 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t69, ptr %t70, i32 %t64)
  store i1 %t72, ptr %l40
  br label %bb11
bb11:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb12, label %bb13
bb12:
  %t74 = load ptr, ptr %l3, !tbaa !29
  store ptr %t74, ptr %l42, !tbaa !29
  %t75 = load i32, ptr %l6, !tbaa !23
  %t76 = load ptr, ptr %l42, !tbaa !29
  %t77 = call ptr @__olang_scope_or(ptr %v3, ptr %t76)
  %t78 = ptrtoint ptr %t77 to i64
  %t80 = inttoptr i64 %t78 to ptr
  %t81 = load ptr, ptr %l42, !tbaa !29
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t80, ptr %t81, i32 %t75)
  store i32 %t83, ptr %l45
  br label %bb14
bb13:
  %t84 = load i32, ptr %l6, !tbaa !23
  store i32 %t84, ptr %l41, !tbaa !23
  br label %bb15
bb14:
  %t86 = load i32, ptr %l45, !tbaa !23
  store i32 %t86, ptr %l41, !tbaa !23
  br label %bb15
bb15:
  %t87 = load i32, ptr %l41, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t92 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %v3, ptr %t88, i32 %t87)
  store i32 %t92, ptr %l49
  br label %bb16
bb16:
  %t93 = load i32, ptr %l49, !tbaa !23
  store i32 %t93, ptr %l8, !tbaa !23
  %t94 = load i32, ptr %l8, !tbaa !23
  %t95 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t98 = icmp eq i32 %t94, %t95
  br i1 %t98, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l53, !tbaa !29
  %t101 = load ptr, ptr %l3, !tbaa !29
  store ptr %t101, ptr %l54, !tbaa !29
  %t102 = load i32, ptr %l1, !tbaa !23
  %t103 = load ptr, ptr %l54, !tbaa !29
  %t104 = call ptr @__olang_scope_or(ptr %v3, ptr %t103)
  %t105 = ptrtoint ptr %t104 to i64
  %t107 = inttoptr i64 %t105 to ptr
  %t109 = inttoptr i64 0 to ptr
  %t110 = load ptr, ptr %l54, !tbaa !29
  %t112 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t107, ptr %s3, ptr %t109, ptr %t110, i32 %t102)
  store { i64, ptr } %t112, ptr %l58
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t113 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t115 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 1
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t118 = add i64 %t114, %t117
  %t119 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t118)
  call void @olang_textcopy(ptr %t119, ptr %t113, i64 %t114)
  %t120 = getelementptr i8, ptr %t119, i64 %t114
  call void @olang_textcopy(ptr %t120, ptr %t116, i64 %t117)
  %t121 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t119, 1
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t125 = extractvalue { i64, ptr } %t122, 1
  %t126 = mul i64 %t124, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t127, ptr %t125, i64 %t126, i1 false)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  %t130 = load ptr, ptr %l53, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s3, ptr %v3, ptr %t130, { i64, ptr } %t129)
  br label %bb20
bb20:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d209, i32 0, i32 1) }, ptr %l61, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t132, ptr %l62, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 0
  store i64 %t134, ptr %l63, !tbaa !24
  %t135 = load i64, ptr %l63, !tbaa !24
  %t136 = mul i64 %t135, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t136)
  %t138 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  store { i64, ptr } %t139, ptr %l64, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = load i64, ptr %l63, !tbaa !24
  %t145 = mul i64 %t144, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t141, ptr %t143, i64 %t145, i1 false)
  %t146 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t146, ptr %l62, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  %t147 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t147, ptr %rv
  br label %ret
bb21:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i32, ptr %l8, !tbaa !23
  %t152 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %v3, ptr %t148, i32 %t149)
  store i1 %t152, ptr %l67
  br label %bb22
bb22:
  %t153 = load i1, ptr %l67, !tbaa !21
  br i1 %t153, label %bb23, label %bb24
bb23:
  %t154 = load ptr, ptr %l3, !tbaa !29
  store ptr %t154, ptr %l69, !tbaa !29
  %t155 = load i32, ptr %l6, !tbaa !23
  %t156 = load ptr, ptr %l69, !tbaa !29
  %t157 = call ptr @__olang_scope_or(ptr %v3, ptr %t156)
  %t158 = ptrtoint ptr %t157 to i64
  %t160 = inttoptr i64 %t158 to ptr
  %t161 = load ptr, ptr %l69, !tbaa !29
  %t163 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t160, ptr %t161, i32 %t155)
  store i1 %t163, ptr %l72
  br label %bb25
bb24:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb26
bb25:
  %t164 = load i1, ptr %l72, !tbaa !21
  %t165 = xor i1 %t164, true
  store i1 %t165, ptr %l68, !tbaa !21
  br label %bb26
bb26:
  %t167 = load i1, ptr %l68, !tbaa !21
  br i1 %t167, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l74, !tbaa !29
  %t169 = load ptr, ptr %l3, !tbaa !29
  store ptr %t169, ptr %l75, !tbaa !29
  %t170 = load i32, ptr %l8, !tbaa !23
  %t171 = load ptr, ptr %l75, !tbaa !29
  %t172 = call ptr @__olang_scope_or(ptr %v3, ptr %t171)
  %t173 = ptrtoint ptr %t172 to i64
  %t175 = inttoptr i64 %t173 to ptr
  %t176 = load ptr, ptr %l75, !tbaa !29
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t175, ptr %t176, i32 %t170)
  store i32 %t178, ptr %l78
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t179 = load i32, ptr %l2, !tbaa !23
  %t180 = load ptr, ptr %l74, !tbaa !29
  %t181 = load i32, ptr %l78, !tbaa !23
  %t183 = call { { i64, ptr }, { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstInit(ptr %v0, ptr %s5, ptr %v2, ptr %v3, ptr %t180, i32 %t181, i32 %t179)
  store { { i64, ptr }, { i64, ptr }, i64 } %t183, ptr %l80
  br label %bb30
bb30:
  %t184 = load { { i64, ptr }, { i64, ptr }, i64 }, ptr %l80
  store { { i64, ptr }, { i64, ptr }, i64 } %t184, ptr %l9
  %t185 = getelementptr { { i64, ptr }, { i64, ptr }, i64 }, ptr %l9, i32 0, i32 1
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  store { i64, ptr } %t186, ptr %l81, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  store i64 %t188, ptr %l82, !tbaa !24
  %t189 = load i64, ptr %l82, !tbaa !24
  %t190 = mul i64 %t189, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t190)
  %t192 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l83, !tbaa !27
  %t194 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = load i64, ptr %l82, !tbaa !24
  %t199 = mul i64 %t198, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t195, ptr %t197, i64 %t199, i1 false)
  %t200 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t200, ptr %lp10
  %t201 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t202 = load ptr, ptr %lp10
  store { i64, ptr } %t201, ptr %t202, !tbaa !27
  %t203 = load ptr, ptr %lp10
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t204, ptr %rv
  br label %ret
bb31:
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l85, !tbaa !29
  %t207 = load ptr, ptr %l3, !tbaa !29
  store ptr %t207, ptr %l86, !tbaa !29
  %t208 = load i32, ptr %l8, !tbaa !23
  %t209 = load ptr, ptr %l86, !tbaa !29
  %t210 = call ptr @__olang_scope_or(ptr %v3, ptr %t209)
  %t211 = ptrtoint ptr %t210 to i64
  %t213 = inttoptr i64 %t211 to ptr
  %t214 = load ptr, ptr %l86, !tbaa !29
  %t216 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t213, ptr %t214, i32 %t208)
  store i32 %t216, ptr %l89
  br label %bb32
bb32:
  %t217 = load i32, ptr %l2, !tbaa !23
  %t218 = load ptr, ptr %l85, !tbaa !29
  %t219 = load i32, ptr %l89, !tbaa !23
  %t221 = call { { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstGlobal(ptr %v0, ptr %s2, ptr %s2, ptr %v2, ptr %v3, ptr %t218, i32 %t219, i32 %t217, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d210, i32 0, i32 1) })
  store { { i64, ptr }, i64 } %t221, ptr %l91
  br label %bb33
bb33:
  %t222 = load { { i64, ptr }, i64 }, ptr %l91
  store { { i64, ptr }, i64 } %t222, ptr %l11
  %t223 = getelementptr { { i64, ptr }, i64 }, ptr %l11, i32 0, i32 0
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  store { i64, ptr } %t224, ptr %l92, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t225, 0
  store i64 %t226, ptr %l93, !tbaa !24
  %t227 = load i64, ptr %l93, !tbaa !24
  %t228 = mul i64 %t227, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t228)
  %t230 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  store { i64, ptr } %t231, ptr %l94, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = load i64, ptr %l93, !tbaa !24
  %t237 = mul i64 %t236, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t233, ptr %t235, i64 %t237, i1 false)
  %t238 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t238, ptr %lp12
  %t239 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t240 = load ptr, ptr %lp12
  store { i64, ptr } %t239, ptr %t240, !tbaa !27
  %t241 = getelementptr { { i64, ptr }, i64 }, ptr %l11, i32 0, i32 1
  %t242 = load i64, ptr %t241, !tbaa !24
  store i64 %t242, ptr %l13, !tbaa !24
  %t244 = load ptr, ptr %l3, !tbaa !29
  store ptr %t244, ptr %l96, !tbaa !29
  %t245 = load i32, ptr %l6, !tbaa !23
  %t246 = load ptr, ptr %l96, !tbaa !29
  %t247 = call ptr @__olang_scope_or(ptr %v3, ptr %t246)
  %t248 = ptrtoint ptr %t247 to i64
  %t250 = inttoptr i64 %t248 to ptr
  %t251 = load ptr, ptr %l96, !tbaa !29
  %t253 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t250, ptr %t251, i32 %t245)
  store i1 %t253, ptr %l99
  br label %bb34
bb34:
  %t254 = load i1, ptr %l99, !tbaa !21
  br i1 %t254, label %bb35, label %bb36
bb35:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i32, ptr %l8, !tbaa !23
  %t259 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %v3, ptr %t255, i32 %t256)
  store i1 %t259, ptr %l103
  br label %bb37
bb36:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb38
bb37:
  %t260 = load i1, ptr %l103, !tbaa !21
  store i1 %t260, ptr %l100, !tbaa !21
  br label %bb38
bb38:
  %t261 = load i1, ptr %l100, !tbaa !21
  br i1 %t261, label %bb39, label %bb40
bb39:
  %t262 = load ptr, ptr %lp12
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t263, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t265 = load i64, ptr %l13, !tbaa !24
  %t266 = load ptr, ptr %lp12
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  %t268 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t269 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t271 = call i64 @__olang_fmt_i64(ptr null, i64 %t265)
  %t272 = add i64 %t269, %t271
  %t273 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t275 = add i64 %t272, %t274
  %t277 = extractvalue { i64, ptr } %t267, 1
  %t278 = extractvalue { i64, ptr } %t267, 0
  %t279 = add i64 %t275, %t278
  %t280 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  %t282 = add i64 %t279, %t281
  %t283 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t282)
  call void @olang_textcopy(ptr %t283, ptr %t268, i64 %t269)
  %t284 = getelementptr i8, ptr %t283, i64 %t269
  %t285 = call i64 @__olang_fmt_i64(ptr %t284, i64 %t265)
  %t286 = getelementptr i8, ptr %t284, i64 %t271
  call void @olang_textcopy(ptr %t286, ptr %t273, i64 %t274)
  %t287 = getelementptr i8, ptr %t286, i64 %t274
  call void @olang_textcopy(ptr %t287, ptr %t277, i64 %t278)
  %t288 = getelementptr i8, ptr %t287, i64 %t278
  call void @olang_textcopy(ptr %t288, ptr %t280, i64 %t281)
  %t289 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t283, 1
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t290, ptr %rv
  br label %ret
bb42:
  call void @__olang_check_failed(ptr @olang_loc_3de177096d03f952_4b04555d717d3dfe)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecopyArrayIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca i32
  %l23 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l33 = alloca i64
  %l36 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l54 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l13, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %v4, ptr %t10, i32 %a3)
  store i32 %t14, ptr %l16
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l13, !tbaa !29
  %t16 = call ptr @__olang_scope_or(ptr %v4, ptr %t15)
  %t17 = ptrtoint ptr %t16 to i64
  %t19 = inttoptr i64 %t17 to ptr
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i32, ptr %l16, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t19, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l18
  br label %bb2
bb2:
  %t23 = load i32, ptr %l18, !tbaa !23
  store i32 %t23, ptr %l5, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t26 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t29 = extractvalue { i64, ptr } %t25, 1
  %t30 = extractvalue { i64, ptr } %t25, 0
  %t31 = add i64 %t27, %t30
  %t32 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t34 = add i64 %t31, %t33
  %t35 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t34)
  call void @olang_textcopy(ptr %t35, ptr %t26, i64 %t27)
  %t36 = getelementptr i8, ptr %t35, i64 %t27
  call void @olang_textcopy(ptr %t36, ptr %t29, i64 %t30)
  %t37 = getelementptr i8, ptr %t36, i64 %t30
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t35, 1
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t42 = extractvalue { i64, ptr } %t39, 1
  %t43 = mul i64 %t41, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t43)
  call void @llvm.memcpy.p0.p0.i64(ptr %t44, ptr %t42, i64 %t43, i1 false)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  %t49 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v4, ptr %t24, { i64, ptr } %t46)
  store { i64, ptr } %t49, ptr %l23
  br label %bb3
bb3:
  %t50 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t50, ptr %l6, !tbaa !27
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t53 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t56 = extractvalue { i64, ptr } %t52, 1
  %t57 = extractvalue { i64, ptr } %t52, 0
  %t58 = add i64 %t54, %t57
  %t59 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t53, i64 %t54)
  %t63 = getelementptr i8, ptr %t62, i64 %t54
  call void @olang_textcopy(ptr %t63, ptr %t56, i64 %t57)
  %t64 = getelementptr i8, ptr %t63, i64 %t57
  call void @olang_textcopy(ptr %t64, ptr %t59, i64 %t60)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t62, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = extractvalue { i64, ptr } %t66, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t76 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v4, ptr %t51, { i64, ptr } %t73)
  store { i64, ptr } %t76, ptr %l28
  br label %bb4
bb4:
  %t77 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t77, ptr %l7, !tbaa !27
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l29, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t79, ptr %l30, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l5, !tbaa !23
  %t84 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v4, ptr %t80, i32 %t81)
  store i64 %t84, ptr %l33
  br label %bb5
bb5:
  %t85 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  %t87 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = add i64 %t86, %t89
  %t91 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  %t93 = add i64 %t90, %t92
  %t94 = load i64, ptr %l33, !tbaa !24
  %t95 = call i64 @__olang_fmt_i64(ptr null, i64 %t94)
  %t96 = add i64 %t93, %t95
  %t97 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t85, i64 %t86)
  %t98 = getelementptr i8, ptr %t97, i64 %t86
  call void @olang_textcopy(ptr %t98, ptr %t88, i64 %t89)
  %t99 = getelementptr i8, ptr %t98, i64 %t89
  call void @olang_textcopy(ptr %t99, ptr %t91, i64 %t92)
  %t100 = getelementptr i8, ptr %t99, i64 %t92
  %t101 = call i64 @__olang_fmt_i64(ptr %t100, i64 %t94)
  %t102 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t97, 1
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t106 = extractvalue { i64, ptr } %t103, 1
  %t107 = mul i64 %t105, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t107)
  call void @llvm.memcpy.p0.p0.i64(ptr %t108, ptr %t106, i64 %t107, i1 false)
  %t109 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  %t111 = load ptr, ptr %l29, !tbaa !29
  %t113 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v4, ptr %t111, { i64, ptr } %t110)
  store { i64, ptr } %t113, ptr %l36
  br label %bb6
bb6:
  %t114 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t114, ptr %l8, !tbaa !27
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t118 = load i32, ptr %l5, !tbaa !23
  %t123 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %v4, ptr %t115, { i64, ptr } %a1, { i64, ptr } %t117, i32 %t118, i1 false)
  store { i64, ptr } %t123, ptr %l41
  br label %bb7
bb7:
  %t124 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t124, ptr %l9, !tbaa !27
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/emit:fnEm", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  store ptr %t128, ptr %l43, !tbaa !29
  %t129 = load ptr, ptr %l43, !tbaa !29
  %t130 = call ptr @__olang_scope_or(ptr %v4, ptr %t129)
  %t131 = ptrtoint ptr %t130 to i64
  %t133 = inttoptr i64 %t131 to ptr
  %t134 = load ptr, ptr %l43, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %t133, ptr %s0, ptr %s0, ptr %t134, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d220, i32 0, i32 1) }, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d221, i32 0, i32 1) })
  br label %bb8
bb8:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t139 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t142 = extractvalue { i64, ptr } %t136, 1
  %t143 = extractvalue { i64, ptr } %t136, 0
  %t144 = add i64 %t140, %t143
  %t145 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t147 = add i64 %t144, %t146
  %t149 = extractvalue { i64, ptr } %t137, 1
  %t150 = extractvalue { i64, ptr } %t137, 0
  %t151 = add i64 %t147, %t150
  %t152 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t154 = add i64 %t151, %t153
  %t156 = extractvalue { i64, ptr } %t138, 1
  %t157 = extractvalue { i64, ptr } %t138, 0
  %t158 = add i64 %t154, %t157
  %t159 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t162 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t161)
  call void @olang_textcopy(ptr %t162, ptr %t139, i64 %t140)
  %t163 = getelementptr i8, ptr %t162, i64 %t140
  call void @olang_textcopy(ptr %t163, ptr %t142, i64 %t143)
  %t164 = getelementptr i8, ptr %t163, i64 %t143
  call void @olang_textcopy(ptr %t164, ptr %t145, i64 %t146)
  %t165 = getelementptr i8, ptr %t164, i64 %t146
  call void @olang_textcopy(ptr %t165, ptr %t149, i64 %t150)
  %t166 = getelementptr i8, ptr %t165, i64 %t150
  call void @olang_textcopy(ptr %t166, ptr %t152, i64 %t153)
  %t167 = getelementptr i8, ptr %t166, i64 %t153
  call void @olang_textcopy(ptr %t167, ptr %t156, i64 %t157)
  %t168 = getelementptr i8, ptr %t167, i64 %t157
  call void @olang_textcopy(ptr %t168, ptr %t159, i64 %t160)
  %t169 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t162, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = extractvalue { i64, ptr } %t170, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %v4, ptr %t135, { i64, ptr } %t177)
  br label %bb9
bb9:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t186 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %v4, ptr %t180, { i64, ptr } %t181, { i64, ptr } %t182)
  store { i64, ptr } %t186, ptr %l54
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t187 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t187, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eextend(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca i32
  %l16 = alloca { i64, ptr }
  %l20 = alloca i1
  %l23 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l10, !tbaa !29
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = call ptr @__olang_scope_or(ptr %v4, ptr %t11)
  %t13 = ptrtoint ptr %t12 to i64
  %t15 = inttoptr i64 %t13 to ptr
  %t16 = load ptr, ptr %l10, !tbaa !29
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t15, ptr %t16, i32 %a2)
  store i32 %t18, ptr %l13
  br label %bb1
bb1:
  %t19 = load i32, ptr %l13, !tbaa !23
  store i32 %t19, ptr %l6, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l6, !tbaa !23
  %t24 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %v4, ptr %t20, i32 %t21)
  store { i64, ptr } %t24, ptr %l16
  br label %bb2
bb2:
  %t25 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t27)
  call void @olang_textcopy(ptr %t28, ptr %t26, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = extractvalue { i64, ptr } %t30, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v2, { i64, ptr } %t37, { i64, ptr } %t38)
  store i1 %t41, ptr %l20
  br label %bb3
bb3:
  %t42 = load i1, ptr %l20, !tbaa !21
  br i1 %t42, label %bb4, label %bb5
bb4:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 1
  %t46 = extractvalue { i64, ptr } %t43, 0
  %t47 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t45, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t49, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l23, !tbaa !29
  br i1 %a4, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d226, i32 0, i32 1) }, ptr %l25, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d227, i32 0, i32 1) }, ptr %l25, !tbaa !27
  br label %bb9
bb9:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l6, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %v4, ptr %t54, i32 %t55)
  store { i64, ptr } %t58, ptr %l28
  br label %bb10
bb10:
  %t59 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = add i64 %t63, %t66
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t72 = extractvalue { i64, ptr } %t59, 1
  %t73 = extractvalue { i64, ptr } %t59, 0
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t79 = extractvalue { i64, ptr } %t60, 1
  %t80 = extractvalue { i64, ptr } %t60, 0
  %t81 = add i64 %t77, %t80
  %t82 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t81)
  call void @olang_textcopy(ptr %t82, ptr %t62, i64 %t63)
  %t83 = getelementptr i8, ptr %t82, i64 %t63
  call void @olang_textcopy(ptr %t83, ptr %t65, i64 %t66)
  %t84 = getelementptr i8, ptr %t83, i64 %t66
  call void @olang_textcopy(ptr %t84, ptr %t68, i64 %t69)
  %t85 = getelementptr i8, ptr %t84, i64 %t69
  call void @olang_textcopy(ptr %t85, ptr %t72, i64 %t73)
  %t86 = getelementptr i8, ptr %t85, i64 %t73
  call void @olang_textcopy(ptr %t86, ptr %t75, i64 %t76)
  %t87 = getelementptr i8, ptr %t86, i64 %t76
  call void @olang_textcopy(ptr %t87, ptr %t79, i64 %t80)
  %t88 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t82, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load ptr, ptr %l23, !tbaa !29
  %t99 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %v3, ptr %v4, ptr %t97, { i64, ptr } %t96)
  store { i64, ptr } %t99, ptr %l33
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t100 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t100, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2egenAlloc(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %lp7 = alloca ptr
  %lp9 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l48 = alloca i64
  %l51 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l74 = alloca i1
  %l75 = alloca i64
  %l76 = alloca ptr
  %l77 = alloca i64
  %l82 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %v2, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr %l13, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sle i64 %t7, 8
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb4
bb3:
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l16, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l16, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l2, !tbaa !23
  %t18 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2egenBytes(ptr %v0, ptr %v2, ptr %t14, i32 %t15)
  store i64 %t18, ptr %l20
  br label %bb5
bb5:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l20, !tbaa !24
  %t22 = add i64 %t20, %t19
  store i64 %t22, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = call i64 @compiler_2femit_2egenClass(i64 %t24)
  store i64 %t26, ptr %l24
  br label %bb6
bb6:
  %t27 = load i64, ptr %l24, !tbaa !24
  store i64 %t27, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp eq i64 %t28, 8
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t34 = icmp sge i64 %t32, 0
  store i1 %t34, ptr %l27, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l27, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load { i64, [1 x i64] }, ptr %l1
  %t41 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t37, { i64, [1 x i64] } %t38)
  store i1 %t41, ptr %l33
  br label %bb12
bb11:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb13
bb12:
  %t42 = load i1, ptr %l33, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l30, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t46 = load { i64, [1 x i64] }, ptr %l1
  %t48 = extractvalue { i64, [1 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 4
  %t51 = xor i1 %t49, true
  store i1 %t51, ptr %l35, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb16
bb16:
  %t53 = load i1, ptr %l35, !tbaa !21
  br i1 %t53, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s1
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/emit:fnEm", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  store ptr %t57, ptr %l40, !tbaa !29
  %t58 = load ptr, ptr %l40, !tbaa !29
  %t59 = call ptr @__olang_scope_or(ptr %v2, ptr %t58)
  %t60 = ptrtoint ptr %t59 to i64
  %t62 = inttoptr i64 %t60 to ptr
  %t63 = load ptr, ptr %l40, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t62, ptr %s1, ptr %t63, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d230, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb24
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l42, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load { i64, [1 x i64] }, ptr %l1
  %t69 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s1, ptr %v2, ptr %v3, ptr %t65, { i64, [1 x i64] } %t66)
  store { i64, ptr } %t69, ptr %l45
  br label %bb20
bb20:
  %t70 = load i64, ptr %l6, !tbaa !24
  store i64 %t70, ptr %l46, !tbaa !24
  %t71 = load i64, ptr %l6, !tbaa !24
  %t73 = call i64 @compiler_2femit_2egenClassSize(i64 %t71)
  store i64 %t73, ptr %l48
  br label %bb21
bb21:
  %t74 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  %t76 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t83 = load i64, ptr %l46, !tbaa !24
  %t84 = call i64 @__olang_fmt_i64(ptr null, i64 %t83)
  %t85 = add i64 %t82, %t84
  %t86 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  %t88 = add i64 %t85, %t87
  %t89 = load i64, ptr %l48, !tbaa !24
  %t90 = call i64 @__olang_fmt_i64(ptr null, i64 %t89)
  %t91 = add i64 %t88, %t90
  %t92 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t95 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t74, i64 %t75)
  %t96 = getelementptr i8, ptr %t95, i64 %t75
  call void @olang_textcopy(ptr %t96, ptr %t77, i64 %t78)
  %t97 = getelementptr i8, ptr %t96, i64 %t78
  call void @olang_textcopy(ptr %t97, ptr %t80, i64 %t81)
  %t98 = getelementptr i8, ptr %t97, i64 %t81
  %t99 = call i64 @__olang_fmt_i64(ptr %t98, i64 %t83)
  %t100 = getelementptr i8, ptr %t98, i64 %t84
  call void @olang_textcopy(ptr %t100, ptr %t86, i64 %t87)
  %t101 = getelementptr i8, ptr %t100, i64 %t87
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t89)
  %t103 = getelementptr i8, ptr %t101, i64 %t90
  call void @olang_textcopy(ptr %t103, ptr %t92, i64 %t93)
  %t104 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t95, 1
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t108 = extractvalue { i64, ptr } %t105, 1
  %t109 = mul i64 %t107, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t110, ptr %t108, i64 %t109, i1 false)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  %t113 = load ptr, ptr %l42, !tbaa !29
  %t115 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s1, ptr %v1, ptr %v2, ptr %t113, { i64, ptr } %t112)
  store { i64, ptr } %t115, ptr %l51
  br label %bb22
bb22:
  %t116 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t116, ptr %lp7
  %t117 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t118 = load ptr, ptr %lp7
  store { i64, ptr } %t117, ptr %t118, !tbaa !27
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %lp7
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t122 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eownWordsClear(ptr %v0, ptr %v1, ptr %v2, ptr %t119, { i64, ptr } %t121, i32 %t122)
  br label %bb23
bb23:
  %t126 = load ptr, ptr %lp7
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t127, ptr %rv
  br label %ret
bb24:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load { i64, [1 x i64] }, ptr %l1
  %t131 = load i64, ptr %l5, !tbaa !24
  %t133 = call i64 @__olang_fmt_i64(ptr null, i64 %t131)
  %t134 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t133)
  %t135 = call i64 @__olang_fmt_i64(ptr %t134, i64 %t131)
  %t136 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t134, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = extractvalue { i64, ptr } %t137, 1
  %t141 = mul i64 %t139, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t141)
  call void @llvm.memcpy.p0.p0.i64(ptr %t142, ptr %t140, i64 %t141, i1 false)
  %t143 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  %t145 = load i64, ptr %l4, !tbaa !24
  %t146 = load i64, ptr %l5, !tbaa !24
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  %t150 = call i64 @__olang_fmt_i64(ptr null, i64 %t146)
  %t151 = add i64 %t148, %t150
  %t152 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t154 = add i64 %t151, %t153
  %t155 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t154)
  call void @olang_textcopy(ptr %t155, ptr %t147, i64 %t148)
  %t156 = getelementptr i8, ptr %t155, i64 %t148
  %t157 = call i64 @__olang_fmt_i64(ptr %t156, i64 %t146)
  %t158 = getelementptr i8, ptr %t156, i64 %t150
  call void @olang_textcopy(ptr %t158, ptr %t152, i64 %t153)
  %t159 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t155, 1
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t163 = extractvalue { i64, ptr } %t160, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t173 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %v2, ptr %v3, ptr %t129, { i64, [1 x i64] } %t130, { i64, ptr } %t144, i64 %t145, { i64, ptr } %t167)
  store { i64, ptr } %t173, ptr %l65
  br label %bb25
bb25:
  %t174 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i64, ptr %l4, !tbaa !24
  %t178 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t181 = extractvalue { i64, ptr } %t174, 1
  %t182 = extractvalue { i64, ptr } %t174, 0
  %t183 = add i64 %t179, %t182
  %t184 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  %t186 = add i64 %t183, %t185
  %t188 = call i64 @__olang_fmt_i64(ptr null, i64 %t177)
  %t189 = add i64 %t186, %t188
  %t190 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t189)
  call void @olang_textcopy(ptr %t190, ptr %t178, i64 %t179)
  %t191 = getelementptr i8, ptr %t190, i64 %t179
  call void @olang_textcopy(ptr %t191, ptr %t181, i64 %t182)
  %t192 = getelementptr i8, ptr %t191, i64 %t182
  call void @olang_textcopy(ptr %t192, ptr %t184, i64 %t185)
  %t193 = getelementptr i8, ptr %t192, i64 %t185
  %t194 = call i64 @__olang_fmt_i64(ptr %t193, i64 %t177)
  %t195 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t190, 1
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t199 = extractvalue { i64, ptr } %t196, 1
  %t200 = mul i64 %t198, 1
  %t201 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t200)
  call void @llvm.memcpy.p0.p0.i64(ptr %t201, ptr %t199, i64 %t200, i1 false)
  %t202 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  %t206 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %v1, ptr %v2, ptr %t175, { i64, ptr } %t203)
  store { i64, ptr } %t206, ptr %l71
  br label %bb26
bb26:
  %t207 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t207, ptr %lp9
  %t208 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t209 = load ptr, ptr %lp9
  store { i64, ptr } %t208, ptr %t209, !tbaa !27
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load { i64, [1 x i64] }, ptr %l1
  %t214 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t210, { i64, [1 x i64] } %t211)
  store i1 %t214, ptr %l74
  br label %bb27
bb27:
  %t215 = load i1, ptr %l74, !tbaa !21
  br i1 %t215, label %bb28, label %bb29
bb28:
  store i64 196609, ptr %l75, !tbaa !24
  br label %bb30
bb29:
  store i64 1, ptr %l75, !tbaa !24
  br label %bb30
bb30:
  %t216 = load i64, ptr %l75, !tbaa !24
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l76, !tbaa !29
  store i64 %t216, ptr %l77, !tbaa !24
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %lp9
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  %t222 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d238, i32 0, i32 1) }, 1
  %t223 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d238, i32 0, i32 1) }, 0
  %t225 = extractvalue { i64, ptr } %t221, 1
  %t226 = extractvalue { i64, ptr } %t221, 0
  %t227 = add i64 %t223, %t226
  %t228 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d239, i32 0, i32 1) }, 1
  %t229 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d239, i32 0, i32 1) }, 0
  %t230 = add i64 %t227, %t229
  %t231 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t230)
  call void @olang_textcopy(ptr %t231, ptr %t222, i64 %t223)
  %t232 = getelementptr i8, ptr %t231, i64 %t223
  call void @olang_textcopy(ptr %t232, ptr %t225, i64 %t226)
  %t233 = getelementptr i8, ptr %t232, i64 %t226
  call void @olang_textcopy(ptr %t233, ptr %t228, i64 %t229)
  %t234 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t231, 1
  %t237 = extractvalue { i64, ptr } %t235, 0
  %t238 = extractvalue { i64, ptr } %t235, 1
  %t239 = mul i64 %t237, 1
  %t240 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  %t245 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v2, ptr %t219, { i64, ptr } %t242)
  store { i64, ptr } %t245, ptr %l82
  br label %bb31
bb31:
  %t246 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d240, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d240, i32 0, i32 1) }, 0
  %t248 = load i64, ptr %l77, !tbaa !24
  %t249 = call i64 @__olang_fmt_i64(ptr null, i64 %t248)
  %t250 = add i64 %t247, %t249
  %t251 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t253 = add i64 %t250, %t252
  %t254 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = extractvalue { i64, ptr } %t254, 0
  %t257 = add i64 %t253, %t256
  %t258 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t259 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t260 = add i64 %t257, %t259
  %t261 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t260)
  call void @olang_textcopy(ptr %t261, ptr %t246, i64 %t247)
  %t262 = getelementptr i8, ptr %t261, i64 %t247
  %t263 = call i64 @__olang_fmt_i64(ptr %t262, i64 %t248)
  %t264 = getelementptr i8, ptr %t262, i64 %t249
  call void @olang_textcopy(ptr %t264, ptr %t251, i64 %t252)
  %t265 = getelementptr i8, ptr %t264, i64 %t252
  call void @olang_textcopy(ptr %t265, ptr %t255, i64 %t256)
  %t266 = getelementptr i8, ptr %t265, i64 %t256
  call void @olang_textcopy(ptr %t266, ptr %t258, i64 %t259)
  %t267 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t261, 1
  %t270 = extractvalue { i64, ptr } %t268, 0
  %t271 = extractvalue { i64, ptr } %t268, 1
  %t272 = mul i64 %t270, 1
  %t273 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t272)
  call void @llvm.memcpy.p0.p0.i64(ptr %t273, ptr %t271, i64 %t272, i1 false)
  %t274 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  %t276 = load ptr, ptr %l76, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %v2, ptr %t276, { i64, ptr } %t275)
  br label %bb32
bb32:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load ptr, ptr %lp9
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  %t281 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eownWordsClear(ptr %v0, ptr %v1, ptr %v2, ptr %t278, { i64, ptr } %t280, i32 %t281)
  br label %bb33
bb33:
  %t285 = load ptr, ptr %lp9
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t286, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l10 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t8 = extractvalue { i64, ptr } %a1, 1
  %t9 = extractvalue { i64, ptr } %a1, 0
  %t10 = add i64 %t6, %t9
  %t11 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a2, 1
  %t16 = extractvalue { i64, ptr } %a2, 0
  %t17 = add i64 %t13, %t16
  %t19 = extractvalue { i64, ptr } %a3, 1
  %t20 = extractvalue { i64, ptr } %a3, 0
  %t21 = add i64 %t17, %t20
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t5, i64 %t6)
  %t23 = getelementptr i8, ptr %t22, i64 %t6
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t19, i64 %t20)
  %t27 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t22, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } %t28, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t38 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %t35)
  store { i64, ptr } %t38, ptr %l10
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t39 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = call ptr @__olang_scope_or(ptr %v3, ptr %t5)
  %t7 = ptrtoint ptr %t6 to i64
  %t9 = inttoptr i64 %t7 to ptr
  %t10 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %t9, ptr %s0, ptr %s0, ptr %t10, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d245, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d246, i32 0, i32 1) })
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t15 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d247, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d247, i32 0, i32 1) }, 0
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d248, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d248, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = extractvalue { i64, ptr } %a2, 1
  %t26 = extractvalue { i64, ptr } %a2, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d249, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d249, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %a3)
  %t33 = add i64 %t30, %t32
  %t34 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d250, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d250, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t15, i64 %t16)
  %t38 = getelementptr i8, ptr %t37, i64 %t16
  call void @olang_textcopy(ptr %t38, ptr %t18, i64 %t19)
  %t39 = getelementptr i8, ptr %t38, i64 %t19
  call void @olang_textcopy(ptr %t39, ptr %t21, i64 %t22)
  %t40 = getelementptr i8, ptr %t39, i64 %t22
  call void @olang_textcopy(ptr %t40, ptr %t25, i64 %t26)
  %t41 = getelementptr i8, ptr %t40, i64 %t26
  call void @olang_textcopy(ptr %t41, ptr %t28, i64 %t29)
  %t42 = getelementptr i8, ptr %t41, i64 %t29
  %t43 = call i64 @__olang_fmt_i64(ptr %t42, i64 %a3)
  %t44 = getelementptr i8, ptr %t42, i64 %t32
  call void @olang_textcopy(ptr %t44, ptr %t34, i64 %t35)
  %t45 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t37, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = extractvalue { i64, ptr } %t46, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %v3, ptr %t11, { i64, ptr } %t53)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eopaque16(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l6 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d251, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d251, i32 0, i32 1) }, 0
  %t6 = extractvalue { i64, ptr } %a1, 1
  %t7 = extractvalue { i64, ptr } %a1, 0
  %t8 = add i64 %t4, %t7
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t3, i64 %t4)
  %t13 = getelementptr i8, ptr %t12, i64 %t4
  call void @olang_textcopy(ptr %t13, ptr %t6, i64 %t7)
  %t14 = getelementptr i8, ptr %t13, i64 %t7
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t12, 1
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t19 = extractvalue { i64, ptr } %t16, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t26 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %t23)
  store { i64, ptr } %t26, ptr %l6
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t27 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t27, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eownWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l17 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store { i64, ptr } %a1, ptr %l5, !tbaa !27
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v3, ptr %t3, i32 %a2)
  store i64 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i64, ptr %l8, !tbaa !24
  %t9 = add i64 %t8, 7
  %t11 = sdiv i64 %t9, 8
  %t13 = mul i64 %t11, 8
  %t16 = mul i64 8, %a3
  %t19 = add i64 %t13, %t16
  %t20 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t30 = call i64 @__olang_fmt_i64(ptr null, i64 %t19)
  %t31 = add i64 %t28, %t30
  %t32 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t20, i64 %t21)
  %t33 = getelementptr i8, ptr %t32, i64 %t21
  call void @olang_textcopy(ptr %t33, ptr %t23, i64 %t24)
  %t34 = getelementptr i8, ptr %t33, i64 %t24
  call void @olang_textcopy(ptr %t34, ptr %t26, i64 %t27)
  %t35 = getelementptr i8, ptr %t34, i64 %t27
  %t36 = call i64 @__olang_fmt_i64(ptr %t35, i64 %t19)
  %t37 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t32, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %v2, ptr %v3, ptr %t46, { i64, ptr } %t45)
  store { i64, ptr } %t48, ptr %l17
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t49 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t49, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedInto(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2, { i64, [15 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/mir:Range"
  %l8 = alloca i32
  %l9 = alloca %"compiler/mir:Range"
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca { { i64, ptr }, i32 }
  %l17 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca ptr
  %l28 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i64
  %l36 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l57 = alloca { i64, [4 x i64] }
  %l60 = alloca { i64, [4 x i64] }
  %l61 = alloca i64
  %l66 = alloca ptr
  %l67 = alloca ptr
  %l70 = alloca i32
  %l72 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l79 = alloca i64
  %l80 = alloca i64
  %l82 = alloca ptr
  %l86 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca i64
  %l92 = alloca ptr
  %l95 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca i64
  %l99 = alloca ptr
  %l100 = alloca ptr
  %l103 = alloca { i64, [4 x i64] }
  %l105 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l118 = alloca { { i64, ptr }, i32 }
  %l120 = alloca ptr
  %l123 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [15 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  store ptr %t9, ptr %l21, !tbaa !29
  %t11 = load ptr, ptr %l21, !tbaa !29
  %t12 = call ptr @__olang_scope_or(ptr %v1, ptr %t11)
  %t13 = ptrtoint ptr %t12 to i64
  %t15 = inttoptr i64 %t13 to ptr
  %t16 = load ptr, ptr %l21, !tbaa !29
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t15, ptr %t16, i32 %a2)
  store i32 %t18, ptr %l24
  br label %bb1
bb1:
  %t19 = load i32, ptr %l24, !tbaa !23
  store i32 %t19, ptr %l5, !tbaa !23
  %t20 = load ptr, ptr %l4, !tbaa !29
  store ptr %t20, ptr %l25, !tbaa !29
  %t21 = load i32, ptr %l5, !tbaa !23
  %t22 = load ptr, ptr %l25, !tbaa !29
  %t23 = call ptr @__olang_scope_or(ptr %v1, ptr %t22)
  %t24 = ptrtoint ptr %t23 to i64
  %t26 = inttoptr i64 %t24 to ptr
  %t27 = load ptr, ptr %l25, !tbaa !29
  %t29 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %t26, ptr %t27, i32 %t21)
  store i1 %t29, ptr %l28
  br label %bb2
bb2:
  %t30 = load i1, ptr %l28, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb6
bb4:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l5, !tbaa !23
  %t37 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v1, ptr %t33, i32 %t34)
  store i64 %t37, ptr %l33
  br label %bb5
bb5:
  %t38 = load i64, ptr %l33, !tbaa !24
  %t39 = icmp eq i64 %t38, 0
  store i1 %t39, ptr %l30, !tbaa !21
  br label %bb6
bb6:
  %t41 = load i1, ptr %l30, !tbaa !21
  br i1 %t41, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d255, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t43, ptr %l6, !tbaa !27
  %t45 = load { i64, [15 x i64] }, ptr %l3
  %t47 = extractvalue { i64, [15 x i64] } %t45, 0
  %t48 = icmp eq i64 %t47, 6
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t51 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t50, i32 0, i32 2
  %t52 = load %"compiler/mir:Range", ptr %t51
  store %"compiler/mir:Range" %t52, ptr %l7
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l5, !tbaa !23
  %t56 = load %"compiler/mir:Range", ptr %l7
  %t60 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedMake(ptr %v0, ptr %s0, ptr %v1, ptr %v2, ptr %t54, i32 %t55, %"compiler/mir:Range" %t56)
  store { i64, ptr } %t60, ptr %l44
  br label %bb13
bb13:
  %t61 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t61, ptr %l45, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t62, ptr %l6, !tbaa !27
  %t63 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2epackedInto_2elocal_2e6
  br i1 %t63, label %bb14, label %bb15
bb14:
  %t65 = load { i64, ptr }, ptr %l45
  %t66 = extractvalue { i64, ptr } %t65, 1
  call void @__olang_region_release(ptr %t66)
  store { i64, ptr } zeroinitializer, ptr %l45
  br label %bb15
bb15:
  br label %bb55
bb16:
  %t67 = load { i64, [15 x i64] }, ptr %l3
  %t69 = extractvalue { i64, [15 x i64] } %t67, 0
  %t70 = icmp eq i64 %t69, 3
  br i1 %t70, label %bb17, label %bb18
bb17:
  %t72 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t73 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t72, i32 0, i32 0
  %t74 = load i32, ptr %t73, !range !{i32 0, i32 51}
  store i32 %t74, ptr %l8
  %t76 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t77 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t76, i32 0, i32 2
  %t78 = load %"compiler/mir:Range", ptr %t77
  store %"compiler/mir:Range" %t78, ptr %l9
  br label %bb19
bb18:
  br label %bb50
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t80 = load i32, ptr %l8, !range !{i32 0, i32 51}
  %t82 = trunc i64 40 to i32
  %t83 = icmp eq i32 %t80, %t82
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load %"compiler/mir:Range", ptr %l9
  %t92 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v2, ptr %t88, %"compiler/mir:Range" %t89, i64 0)
  store { i64, [4 x i64] } %t92, ptr %l57
  br label %bb23
bb23:
  %t93 = load { i64, [4 x i64] }, ptr %l57
  store { i64, [4 x i64] } %t93, ptr %l10
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load %"compiler/mir:Range", ptr %l9
  %t98 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v2, ptr %t94, %"compiler/mir:Range" %t95, i64 1)
  store { i64, [4 x i64] } %t98, ptr %l60
  br label %bb24
bb24:
  %t99 = load { i64, [4 x i64] }, ptr %l60
  store { i64, [4 x i64] } %t99, ptr %l11
  %t100 = load { i64, [4 x i64] }, ptr %l11
  %t102 = extractvalue { i64, [4 x i64] } %t100, 0
  %t103 = icmp eq i64 %t102, 2
  br i1 %t103, label %bb25, label %bb26
bb25:
  %t105 = getelementptr { i64, [4 x i64] }, ptr %l11, i32 0, i32 1
  %t106 = getelementptr { i32, i64 }, ptr %t105, i32 0, i32 1
  %t107 = load i64, ptr %t106
  store i64 %t107, ptr %l12, !tbaa !24
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t109 = load i64, ptr %l12, !tbaa !24
  store i64 %t109, ptr %l61, !tbaa !24
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_44ed23dda5502268_7ffab923032619a4)
  unreachable
bb33:
  %t111 = load i64, ptr %l61, !tbaa !24
  store i64 %t111, ptr %l13, !tbaa !24
  %t112 = load ptr, ptr %l4, !tbaa !29
  store ptr %t112, ptr %l66, !tbaa !29
  %t113 = load ptr, ptr %l4, !tbaa !29
  store ptr %t113, ptr %l67, !tbaa !29
  %t114 = load i32, ptr %l5, !tbaa !23
  %t115 = load ptr, ptr %l67, !tbaa !29
  %t116 = call ptr @__olang_scope_or(ptr %v1, ptr %t115)
  %t117 = ptrtoint ptr %t116 to i64
  %t119 = inttoptr i64 %t117 to ptr
  %t120 = load ptr, ptr %l67, !tbaa !29
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %t119, ptr %t120, i32 %t114)
  store i32 %t122, ptr %l70
  br label %bb34
bb34:
  %t123 = load ptr, ptr %l66, !tbaa !29
  %t124 = call ptr @__olang_scope_or(ptr %v1, ptr %t123)
  %t125 = ptrtoint ptr %t124 to i64
  %t127 = inttoptr i64 %t125 to ptr
  %t128 = load ptr, ptr %l66, !tbaa !29
  %t129 = load i32, ptr %l70, !tbaa !23
  %t130 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t127, ptr %s3, ptr %t128, i32 %t129)
  store { i64, ptr } %t130, ptr %l72
  br label %bb35
bb35:
  %t131 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t131, ptr %l73, !tbaa !27
  %t132 = load i64, ptr %l13, !tbaa !24
  %t134 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr i32, ptr %t135, i64 %t132
  %t137 = load i32, ptr %t136, !tbaa !33
  store i32 %t137, ptr %l14, !tbaa !23
  %t139 = load ptr, ptr %l4, !tbaa !29
  store ptr %t139, ptr %l76, !tbaa !29
  %t140 = load i32, ptr %l14, !tbaa !23
  %t141 = load ptr, ptr %l76, !tbaa !29
  %t142 = call ptr @__olang_scope_or(ptr %v1, ptr %t141)
  %t143 = ptrtoint ptr %t142 to i64
  %t145 = inttoptr i64 %t143 to ptr
  %t146 = load ptr, ptr %l76, !tbaa !29
  %t148 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %t145, ptr %t146, i32 %t140)
  store i64 %t148, ptr %l79
  br label %bb36
bb36:
  %t149 = load i64, ptr %l79, !tbaa !24
  store i64 %t149, ptr %l15, !tbaa !24
  %t150 = ptrtoint ptr %s0 to i64
  store i64 %t150, ptr %l80, !tbaa !24
  %t151 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2epackedInto_2elocal_2e6
  br i1 %t151, label %bb37, label %bb38
bb37:
  %t153 = call ptr @__olang_region_make(ptr %s0)
  %t154 = ptrtoint ptr %t153 to i64
  store i64 %t154, ptr %l80, !tbaa !24
  br label %bb38
bb38:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l82, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load { i64, [4 x i64] }, ptr %l10
  %t158 = load i32, ptr %l5, !tbaa !23
  %t162 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedBits(ptr %v0, ptr %s3, ptr %v1, ptr %v2, ptr %t156, { i64, [4 x i64] } %t157, i32 %t158)
  store { i64, ptr } %t162, ptr %l86
  br label %bb39
bb39:
  %t163 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  %t165 = extractvalue { i64, ptr } %t163, 1
  %t166 = mul i64 %t164, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t166)
  call void @llvm.memcpy.p0.p0.i64(ptr %t167, ptr %t165, i64 %t166, i1 false)
  %t168 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  store { i64, ptr } %t169, ptr %l87, !tbaa !27
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i32, ptr %l5, !tbaa !23
  %t174 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v1, ptr %t170, i32 %t171)
  store i64 %t174, ptr %l90
  br label %bb40
bb40:
  %t175 = load i64, ptr %l90, !tbaa !24
  %t176 = mul i64 8, %t175
  store i64 %t176, ptr %l91, !tbaa !24
  %t177 = load ptr, ptr %l4, !tbaa !29
  store ptr %t177, ptr %l92, !tbaa !29
  %t178 = load i32, ptr %l5, !tbaa !23
  %t179 = load ptr, ptr %l92, !tbaa !29
  %t180 = call ptr @__olang_scope_or(ptr %v1, ptr %t179)
  %t181 = ptrtoint ptr %t180 to i64
  %t183 = inttoptr i64 %t181 to ptr
  %t184 = load ptr, ptr %l92, !tbaa !29
  %t186 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %t183, ptr %s3, ptr %t184, i32 %t178)
  store { i64, ptr } %t186, ptr %l95
  br label %bb41
bb41:
  %t187 = load i64, ptr %l13, !tbaa !24
  %t189 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i64, ptr %t190, i64 %t187
  %t192 = load i64, ptr %t191, !tbaa !34
  store i64 %t192, ptr %l97, !tbaa !24
  %t193 = load i64, ptr %l15, !tbaa !24
  store i64 %t193, ptr %l98, !tbaa !24
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l99, !tbaa !29
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l100, !tbaa !29
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load %"compiler/mir:Range", ptr %l9
  %t200 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v2, ptr %t196, %"compiler/mir:Range" %t197, i64 2)
  store { i64, [4 x i64] } %t200, ptr %l103
  br label %bb42
bb42:
  %t201 = load i32, ptr %l14, !tbaa !23
  %t202 = load ptr, ptr %l100, !tbaa !29
  %t203 = load { i64, [4 x i64] }, ptr %l103
  %t205 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s3, ptr %v2, ptr %v1, ptr %t202, { i64, [4 x i64] } %t203, i32 %t201)
  store { i64, ptr } %t205, ptr %l105
  br label %bb43
bb43:
  %t206 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 0
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = mul i64 %t207, 1
  %t210 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t209)
  call void @llvm.memcpy.p0.p0.i64(ptr %t210, ptr %t208, i64 %t209, i1 false)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  %t213 = load i32, ptr %l14, !tbaa !23
  %t214 = load i64, ptr %l15, !tbaa !24
  %t215 = load ptr, ptr %l99, !tbaa !29
  %t219 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %s3, ptr %s3, ptr %v1, ptr %t215, { i64, ptr } %t212, i32 %t213, i64 %t214)
  store { i64, ptr } %t219, ptr %l109
  br label %bb44
bb44:
  %t220 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  %t222 = extractvalue { i64, ptr } %t220, 1
  %t223 = mul i64 %t221, 1
  %t224 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t223)
  call void @llvm.memcpy.p0.p0.i64(ptr %t224, ptr %t222, i64 %t223, i1 false)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  %t227 = load i64, ptr %l80
  %t228 = inttoptr i64 %t227 to ptr
  %t229 = load ptr, ptr %l82, !tbaa !29
  %t230 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t231 = load i64, ptr %l91, !tbaa !24
  %t232 = load i64, ptr %l97, !tbaa !24
  %t233 = load i64, ptr %l98, !tbaa !24
  %t235 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %s3, ptr %s3, ptr %t228, ptr %v1, ptr %t229, { i64, ptr } %t230, i64 %t231, i64 %t232, i64 %t233, { i64, ptr } %t226)
  store { i64, ptr } %t235, ptr %l111
  br label %bb45
bb45:
  %t236 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2epackedInto_2elocal_2e6
  br i1 %t236, label %bb46, label %bb47
bb46:
  %t238 = load i64, ptr %l80
  %t239 = inttoptr i64 %t238 to ptr
  %t240 = load { i64, ptr }, ptr %l111
  %t241 = extractvalue { i64, ptr } %t240, 1
  %t242 = call ptr @__olang_region_or(ptr %t241, ptr null)
  %t243 = icmp ne ptr %t242, null
  %t244 = select i1 %t243, ptr %t242, ptr null
  %t245 = icmp eq ptr %t244, %t239
  call void @__olang_region_settle(ptr %t239, i1 %t245)
  br label %bb47
bb47:
  %t246 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t246, ptr %l113, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t247, ptr %l6, !tbaa !27
  %t248 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2epackedInto_2elocal_2e6
  br i1 %t248, label %bb48, label %bb49
bb48:
  %t250 = load { i64, ptr }, ptr %l113
  %t251 = extractvalue { i64, ptr } %t250, 1
  call void @__olang_region_release(ptr %t251)
  store { i64, ptr } zeroinitializer, ptr %l113
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s3)
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb54:
  call void @__olang_check_failed(ptr @olang_loc_745b41379bd01239_c904106b8ad08895)
  unreachable
bb55:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t257 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s0, ptr %v2, ptr %v1, ptr %t253, %"compiler/mir:Lvalue" %a1)
  store { { i64, ptr }, i32 } %t257, ptr %l118
  br label %bb56
bb56:
  %t258 = load { { i64, ptr }, i32 }, ptr %l118
  store { { i64, ptr }, i32 } %t258, ptr %l16
  %t259 = getelementptr { { i64, ptr }, i32 }, ptr %l16, i32 0, i32 0
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !27
  store { i64, ptr } %t260, ptr %l17, !tbaa !27
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l120, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i32, ptr %l5, !tbaa !23
  %t267 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v1, ptr %t263, i32 %t264)
  store i64 %t267, ptr %l123
  br label %bb57
bb57:
  %t268 = load i64, ptr %l123, !tbaa !24
  %t269 = mul i64 8, %t268
  %t270 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t273 = call i64 @__olang_fmt_i64(ptr null, i64 %t269)
  %t274 = add i64 %t271, %t273
  %t275 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t274)
  call void @olang_textcopy(ptr %t275, ptr %t270, i64 %t271)
  %t276 = getelementptr i8, ptr %t275, i64 %t271
  %t277 = call i64 @__olang_fmt_i64(ptr %t276, i64 %t269)
  %t278 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t275, 1
  %t281 = extractvalue { i64, ptr } %t279, 0
  %t282 = extractvalue { i64, ptr } %t279, 1
  %t283 = mul i64 %t281, 1
  %t284 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t284, ptr %t282, i64 %t283, i1 false)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  %t287 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t288 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t289 = load ptr, ptr %l120, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %t289, { i64, ptr } %t286, { i64, ptr } %t287, { i64, ptr } %t288, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d257, i32 0, i32 1) })
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca ptr
  %l48 = alloca { i64, [4 x i64] }
  %l49 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l55 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l78 = alloca i64
  %l79 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %v3, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d258, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t8, ptr %lp5
  %t10 = load ptr, ptr %lp5
  store { i64, ptr } %t7, ptr %t10, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t15 = load i64, ptr %l7, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load i64, ptr %l8, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb4:
  %t25 = load i64, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l8, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l8, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l26, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t41 = load i64, ptr %l26, !tbaa !24
  store i64 %t41, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l23, !tbaa !24
  store i64 %t42, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i64, ptr %l10, !tbaa !24
  %t44 = load i64, ptr %l9, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb10:
  br label %bb11
bb11:
  %t51 = load i64, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l10, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l11, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l44, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i64, ptr %l11, !tbaa !24
  %t68 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v4, ptr %t62, %"compiler/mir:Range" %a3, i64 %t64)
  store { i64, [4 x i64] } %t68, ptr %l48
  br label %bb12
bb12:
  %t69 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t69, ptr %l49, !tbaa !27
  %t70 = load i64, ptr %l11, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i32, ptr %t73, i64 %t70
  %t75 = load i32, ptr %t74, !tbaa !33
  %t76 = load ptr, ptr %l44, !tbaa !29
  %t77 = load { i64, [4 x i64] }, ptr %l48
  %t79 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s2, ptr %v4, ptr %v3, ptr %t76, { i64, [4 x i64] } %t77, i32 %t75)
  store { i64, ptr } %t79, ptr %l52
  br label %bb13
bb13:
  %t80 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t80, ptr %l12, !tbaa !27
  %t81 = ptrtoint ptr %v2 to i64
  store i64 %t81, ptr %l53, !tbaa !24
  %t82 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2eparts_2elocal_2e5
  br i1 %t82, label %bb14, label %bb15
bb14:
  %t84 = call ptr @__olang_region_make(ptr %v2)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l53, !tbaa !24
  br label %bb15
bb15:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l55, !tbaa !29
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t87, ptr %l56, !tbaa !27
  %t88 = load ptr, ptr %lp5
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  store { i64, ptr } %t89, ptr %l57, !tbaa !27
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t91, ptr %l59, !tbaa !27
  %t92 = load i64, ptr %l11, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i32, ptr %t95, i64 %t92
  %t97 = load i32, ptr %t96, !tbaa !33
  %t100 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s2, ptr %v3, ptr %t90, i32 %t97)
  store { i64, ptr } %t100, ptr %l62
  br label %bb16
bb16:
  %t101 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t102 = load i64, ptr %l11, !tbaa !24
  %t103 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d259, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d259, i32 0, i32 1) }, 0
  %t105 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t108 = add i64 %t104, %t107
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
  %t111 = add i64 %t108, %t110
  %t112 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = add i64 %t111, %t114
  %t116 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t118 = add i64 %t115, %t117
  %t119 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t122 = add i64 %t118, %t121
  %t123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
  %t125 = add i64 %t122, %t124
  %t127 = extractvalue { i64, ptr } %t101, 1
  %t128 = extractvalue { i64, ptr } %t101, 0
  %t129 = add i64 %t125, %t128
  %t130 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t132 = add i64 %t129, %t131
  %t134 = call i64 @__olang_fmt_i64(ptr null, i64 %t102)
  %t135 = add i64 %t132, %t134
  %t136 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t135)
  call void @olang_textcopy(ptr %t136, ptr %t103, i64 %t104)
  %t137 = getelementptr i8, ptr %t136, i64 %t104
  call void @olang_textcopy(ptr %t137, ptr %t106, i64 %t107)
  %t138 = getelementptr i8, ptr %t137, i64 %t107
  call void @olang_textcopy(ptr %t138, ptr %t109, i64 %t110)
  %t139 = getelementptr i8, ptr %t138, i64 %t110
  call void @olang_textcopy(ptr %t139, ptr %t113, i64 %t114)
  %t140 = getelementptr i8, ptr %t139, i64 %t114
  call void @olang_textcopy(ptr %t140, ptr %t116, i64 %t117)
  %t141 = getelementptr i8, ptr %t140, i64 %t117
  call void @olang_textcopy(ptr %t141, ptr %t120, i64 %t121)
  %t142 = getelementptr i8, ptr %t141, i64 %t121
  call void @olang_textcopy(ptr %t142, ptr %t123, i64 %t124)
  %t143 = getelementptr i8, ptr %t142, i64 %t124
  call void @olang_textcopy(ptr %t143, ptr %t127, i64 %t128)
  %t144 = getelementptr i8, ptr %t143, i64 %t128
  call void @olang_textcopy(ptr %t144, ptr %t130, i64 %t131)
  %t145 = getelementptr i8, ptr %t144, i64 %t131
  %t146 = call i64 @__olang_fmt_i64(ptr %t145, i64 %t102)
  %t147 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t136, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = extractvalue { i64, ptr } %t148, 1
  %t152 = mul i64 %t150, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t152)
  call void @llvm.memcpy.p0.p0.i64(ptr %t153, ptr %t151, i64 %t152, i1 false)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  %t156 = load i64, ptr %l53
  %t157 = inttoptr i64 %t156 to ptr
  %t158 = load ptr, ptr %l55, !tbaa !29
  %t160 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s2, ptr %t157, ptr %v3, ptr %t158, { i64, ptr } %t155)
  store { i64, ptr } %t160, ptr %l67
  br label %bb17
bb17:
  %t161 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2eparts_2elocal_2e5
  br i1 %t161, label %bb18, label %bb19
bb18:
  %t163 = load i64, ptr %l53
  %t164 = inttoptr i64 %t163 to ptr
  %t165 = load { i64, ptr }, ptr %l67
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = call ptr @__olang_region_or(ptr %t166, ptr null)
  %t168 = icmp ne ptr %t167, null
  %t169 = select i1 %t168, ptr %t167, ptr null
  %t170 = icmp eq ptr %t169, %t164
  call void @__olang_region_settle(ptr %t164, i1 %t170)
  br label %bb19
bb19:
  %t171 = load ptr, ptr %lp5
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  store { i64, ptr } %t172, ptr %l69, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t174 = load ptr, ptr %lp5
  store { i64, ptr } %t173, ptr %t174, !tbaa !27
  %t175 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2eparts_2elocal_2e5
  br i1 %t175, label %bb20, label %bb21
bb20:
  %t177 = load { i64, ptr }, ptr %l69
  %t178 = extractvalue { i64, ptr } %t177, 1
  call void @__olang_region_release(ptr %t178)
  store { i64, ptr } zeroinitializer, ptr %l69
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t179 = load i64, ptr %l10, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l10, !tbaa !24
  br label %bb8
bb23:
  %t183 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t187 = icmp eq i64 %t185, 0
  br i1 %t187, label %bb24, label %bb25
bb24:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d262, i32 0, i32 1) }, ptr %l76, !tbaa !27
  %t189 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t189, ptr %l77, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 0
  store i64 %t191, ptr %l78, !tbaa !24
  %t192 = load i64, ptr %l78, !tbaa !24
  %t193 = mul i64 %t192, 1
  %t194 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t193)
  %t195 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  store { i64, ptr } %t196, ptr %l79, !tbaa !27
  %t197 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = load i64, ptr %l78, !tbaa !24
  %t202 = mul i64 %t201, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t198, ptr %t200, i64 %t202, i1 false)
  %t203 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t203, ptr %l77, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t204 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t204, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t205 = load ptr, ptr %lp5
  %t206 = load { i64, ptr }, ptr %t205, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t206, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epartsResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/cabi:Way" %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/cabi:Way"
  %l2 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l39 = alloca i64
  %l41 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i64
  %l77 = alloca i64
  %l79 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l82 = alloca { i64, ptr }
  %l85 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca { i64, ptr }
  %l91 = alloca i64
  %l93 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/cabi:Way" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l18, !tbaa !29
  store ptr %t7, ptr %l19, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l19, !tbaa !29
  %t13 = call ptr @__olang_scope_or(ptr %v4, ptr %t12)
  %t14 = ptrtoint ptr %t13 to i64
  %t16 = inttoptr i64 %t14 to ptr
  %t17 = load ptr, ptr %l19, !tbaa !29
  %t20 = call i64 @compiler_2fcabi_2eSpan(ptr %t16, ptr %v1, ptr %t17, ptr %l1, i32 %t11)
  store i64 %t20, ptr %l23
  br label %bb1
bb1:
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t23 = load i64, ptr %l23, !tbaa !24
  %t24 = call i64 @__olang_fmt_i64(ptr null, i64 %t23)
  %t25 = add i64 %t22, %t24
  %t26 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d264, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d264, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t21, i64 %t22)
  %t30 = getelementptr i8, ptr %t29, i64 %t22
  %t31 = call i64 @__olang_fmt_i64(ptr %t30, i64 %t23)
  %t32 = getelementptr i8, ptr %t30, i64 %t24
  call void @olang_textcopy(ptr %t32, ptr %t26, i64 %t27)
  %t33 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t29, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = extractvalue { i64, ptr } %t34, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load ptr, ptr %l18, !tbaa !29
  %t44 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s0, ptr %s0, ptr %t42, { i64, ptr } %t41, i64 8)
  store { i64, ptr } %t44, ptr %l26
  br label %bb2
bb2:
  %t45 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t45, ptr %l5, !tbaa !27
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l27, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/emit:fnEm", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  store ptr %t50, ptr %l29, !tbaa !29
  %t51 = load i32, ptr %l2, !tbaa !23
  %t52 = load ptr, ptr %l29, !tbaa !29
  %t53 = call ptr @__olang_scope_or(ptr %v4, ptr %t52)
  %t54 = ptrtoint ptr %t53 to i64
  %t56 = inttoptr i64 %t54 to ptr
  %t57 = load ptr, ptr %l29, !tbaa !29
  %t59 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %t56, ptr %s0, ptr %t57, i32 %t51)
  store { i64, ptr } %t59, ptr %l32
  br label %bb3
bb3:
  %t60 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  %t62 = extractvalue { i64, ptr } %t60, 1
  %t63 = mul i64 %t61, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t63)
  call void @llvm.memcpy.p0.p0.i64(ptr %t64, ptr %t62, i64 %t63, i1 false)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t69 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %v2, ptr %s0, ptr %s0, ptr %v4, ptr %t69, { i64, ptr } %t66, { i64, ptr } %a3, { i64, ptr } %t68, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d257, i32 0, i32 1) })
  br label %bb4
bb4:
  %t74 = call { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %v1, ptr %s0, ptr %l1)
  store { i64, ptr } %t74, ptr %l37
  br label %bb5
bb5:
  %t75 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t75, ptr %l6, !tbaa !27
  %t76 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t78 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t76)
  store i64 %t78, ptr %l39
  br label %bb6
bb6:
  %t79 = load i64, ptr %l39, !tbaa !24
  %t80 = icmp eq i64 %t79, 1
  br i1 %t80, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t82 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t82, ptr %l41, !tbaa !27
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t89 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %s2, ptr %s2, ptr %v4, ptr %t83, { i64, ptr } %t84, { i64, ptr } %t85, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t89, ptr %l45
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t90 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t96 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t99 = add i64 %t95, %t98
  %t100 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t99)
  call void @olang_textcopy(ptr %t100, ptr %t91, i64 %t92)
  %t101 = getelementptr i8, ptr %t100, i64 %t92
  call void @olang_textcopy(ptr %t101, ptr %t93, i64 %t94)
  %t102 = getelementptr i8, ptr %t101, i64 %t94
  call void @olang_textcopy(ptr %t102, ptr %t97, i64 %t98)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t100, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t104, ptr %rv
  br label %ret
bb10:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d266, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t106, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t108 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t108)
  store i64 %t110, ptr %l50
  br label %bb11
bb11:
  %t111 = load i64, ptr %l50, !tbaa !24
  store i64 %t111, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t112 = load i64, ptr %l9, !tbaa !24
  %t113 = load i64, ptr %l8, !tbaa !24
  %t116 = icmp sgt i64 %t112, %t113
  br i1 %t116, label %bb12, label %bb13
bb12:
  %t118 = load i64, ptr %l10, !tbaa !24
  %t120 = icmp sgt i64 %t118, 0
  br i1 %t120, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb17
bb14:
  %t122 = load i64, ptr %l9, !tbaa !24
  %t123 = load i64, ptr %l8, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t127 = load i64, ptr %l10, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t132 = sub i64 %t130, 1
  %t133 = load i64, ptr %l10, !tbaa !24
  %t136 = sdiv i64 %t132, %t133
  store i64 %t136, ptr %l57, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb16
bb16:
  %t138 = load i64, ptr %l57, !tbaa !24
  store i64 %t138, ptr %l54, !tbaa !24
  br label %bb17
bb17:
  %t139 = load i64, ptr %l54, !tbaa !24
  store i64 %t139, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t140 = load i64, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l11, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb39
bb20:
  br label %bb21
bb21:
  %t148 = load i64, ptr %l8, !tbaa !24
  %t149 = load i64, ptr %l12, !tbaa !24
  %t150 = load i64, ptr %l10, !tbaa !24
  %t153 = mul i64 %t149, %t150
  %t156 = add i64 %t148, %t153
  store i64 %t156, ptr %l13, !tbaa !24
  %t158 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 2
  %t159 = load i64, ptr %l13, !tbaa !24
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t158, i64 %t159)
  store i64 %t162, ptr %l77
  br label %bb22
bb22:
  %t163 = load i64, ptr %l77, !tbaa !24
  %t164 = icmp eq i64 %t163, 0
  br i1 %t164, label %bb23, label %bb24
bb23:
  %t166 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t166, ptr %l79, !tbaa !27
  br label %bb27
bb24:
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l81, !tbaa !29
  %t169 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t169, ptr %l82, !tbaa !27
  %t170 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 2
  %t171 = load i64, ptr %l13, !tbaa !24
  %t174 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t170, i64 %t171)
  store i64 %t174, ptr %l85
  br label %bb25
bb25:
  %t175 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d267, i32 0, i32 1) }, 1
  %t176 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d267, i32 0, i32 1) }, 0
  %t177 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 1
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t180 = add i64 %t176, %t179
  %t181 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d268, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d268, i32 0, i32 1) }, 0
  %t183 = add i64 %t180, %t182
  %t184 = load i64, ptr %l85, !tbaa !24
  %t185 = call i64 @__olang_fmt_i64(ptr null, i64 %t184)
  %t186 = add i64 %t183, %t185
  %t187 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t186)
  call void @olang_textcopy(ptr %t187, ptr %t175, i64 %t176)
  %t188 = getelementptr i8, ptr %t187, i64 %t176
  call void @olang_textcopy(ptr %t188, ptr %t178, i64 %t179)
  %t189 = getelementptr i8, ptr %t188, i64 %t179
  call void @olang_textcopy(ptr %t189, ptr %t181, i64 %t182)
  %t190 = getelementptr i8, ptr %t189, i64 %t182
  %t191 = call i64 @__olang_fmt_i64(ptr %t190, i64 %t184)
  %t192 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t187, 1
  %t195 = extractvalue { i64, ptr } %t193, 0
  %t196 = extractvalue { i64, ptr } %t193, 1
  %t197 = mul i64 %t195, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t197)
  call void @llvm.memcpy.p0.p0.i64(ptr %t198, ptr %t196, i64 %t197, i1 false)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  %t201 = load ptr, ptr %l81, !tbaa !29
  %t203 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s5, ptr %s5, ptr %v4, ptr %t201, { i64, ptr } %t200)
  store { i64, ptr } %t203, ptr %l88
  br label %bb26
bb26:
  %t204 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t204, ptr %l79, !tbaa !27
  br label %bb27
bb27:
  %t205 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t205, 0
  store i64 %t206, ptr %l89, !tbaa !24
  %t207 = load i64, ptr %l89, !tbaa !24
  %t208 = mul i64 %t207, 1
  %t209 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t208)
  %t210 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t209, 1
  store { i64, ptr } %t211, ptr %l90, !tbaa !27
  %t212 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = load i64, ptr %l89, !tbaa !24
  %t217 = mul i64 %t216, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t213, ptr %t215, i64 %t217, i1 false)
  %t218 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t218, ptr %l14, !tbaa !27
  %t219 = ptrtoint ptr %s0 to i64
  store i64 %t219, ptr %l91, !tbaa !24
  %t220 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2epartsResult_2elocal_2e7
  br i1 %t220, label %bb28, label %bb29
bb28:
  %t222 = call ptr @__olang_region_make(ptr %s0)
  %t223 = ptrtoint ptr %t222 to i64
  store i64 %t223, ptr %l91, !tbaa !24
  br label %bb29
bb29:
  %t224 = load ptr, ptr %l0, !tbaa !29
  store ptr %t224, ptr %l93, !tbaa !29
  %t225 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t225, ptr %l94, !tbaa !27
  %t226 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t226, ptr %l95, !tbaa !27
  %t227 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t228 = load i64, ptr %l13, !tbaa !24
  %t231 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %s5, ptr %t227, i64 %t228)
  store { i64, ptr } %t231, ptr %l98
  br label %bb30
bb30:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l99, !tbaa !29
  %t233 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t234 = load i64, ptr %l13, !tbaa !24
  %t237 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t233, i64 %t234)
  store { i64, ptr } %t237, ptr %l102
  br label %bb31
bb31:
  %t238 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t239 = load ptr, ptr %l99, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t242 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %s5, ptr %s5, ptr %s5, ptr %v4, ptr %t239, { i64, ptr } %t240, { i64, ptr } %t238, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t242, ptr %l104
  br label %bb32
bb32:
  %t243 = load i64, ptr %l13, !tbaa !24
  %t244 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d269, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d269, i32 0, i32 1) }, 0
  %t246 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = extractvalue { i64, ptr } %t246, 0
  %t249 = add i64 %t245, %t248
  %t250 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t251 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t252 = add i64 %t249, %t251
  %t253 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = add i64 %t252, %t255
  %t257 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t259 = add i64 %t256, %t258
  %t260 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t263 = add i64 %t259, %t262
  %t264 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t265 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t266 = add i64 %t263, %t265
  %t267 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t267, 1
  %t269 = extractvalue { i64, ptr } %t267, 0
  %t270 = add i64 %t266, %t269
  %t271 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t272 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t273 = add i64 %t270, %t272
  %t275 = call i64 @__olang_fmt_i64(ptr null, i64 %t243)
  %t276 = add i64 %t273, %t275
  %t277 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t276)
  call void @olang_textcopy(ptr %t277, ptr %t244, i64 %t245)
  %t278 = getelementptr i8, ptr %t277, i64 %t245
  call void @olang_textcopy(ptr %t278, ptr %t247, i64 %t248)
  %t279 = getelementptr i8, ptr %t278, i64 %t248
  call void @olang_textcopy(ptr %t279, ptr %t250, i64 %t251)
  %t280 = getelementptr i8, ptr %t279, i64 %t251
  call void @olang_textcopy(ptr %t280, ptr %t254, i64 %t255)
  %t281 = getelementptr i8, ptr %t280, i64 %t255
  call void @olang_textcopy(ptr %t281, ptr %t257, i64 %t258)
  %t282 = getelementptr i8, ptr %t281, i64 %t258
  call void @olang_textcopy(ptr %t282, ptr %t261, i64 %t262)
  %t283 = getelementptr i8, ptr %t282, i64 %t262
  call void @olang_textcopy(ptr %t283, ptr %t264, i64 %t265)
  %t284 = getelementptr i8, ptr %t283, i64 %t265
  call void @olang_textcopy(ptr %t284, ptr %t268, i64 %t269)
  %t285 = getelementptr i8, ptr %t284, i64 %t269
  call void @olang_textcopy(ptr %t285, ptr %t271, i64 %t272)
  %t286 = getelementptr i8, ptr %t285, i64 %t272
  %t287 = call i64 @__olang_fmt_i64(ptr %t286, i64 %t243)
  %t288 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t277, 1
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t292 = extractvalue { i64, ptr } %t289, 1
  %t293 = mul i64 %t291, 1
  %t294 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t293)
  call void @llvm.memcpy.p0.p0.i64(ptr %t294, ptr %t292, i64 %t293, i1 false)
  %t295 = insertvalue { i64, ptr } undef, i64 %t291, 0
  %t296 = insertvalue { i64, ptr } %t295, ptr %t294, 1
  %t297 = load i64, ptr %l91
  %t298 = inttoptr i64 %t297 to ptr
  %t299 = load ptr, ptr %l93, !tbaa !29
  %t301 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s5, ptr %t298, ptr %v4, ptr %t299, { i64, ptr } %t296)
  store { i64, ptr } %t301, ptr %l108
  br label %bb33
bb33:
  %t302 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2epartsResult_2elocal_2e7
  br i1 %t302, label %bb34, label %bb35
bb34:
  %t304 = load i64, ptr %l91
  %t305 = inttoptr i64 %t304 to ptr
  %t306 = load { i64, ptr }, ptr %l108
  %t307 = extractvalue { i64, ptr } %t306, 1
  %t308 = call ptr @__olang_region_or(ptr %t307, ptr null)
  %t309 = icmp ne ptr %t308, null
  %t310 = select i1 %t309, ptr %t308, ptr null
  %t311 = icmp eq ptr %t310, %t305
  call void @__olang_region_settle(ptr %t305, i1 %t311)
  br label %bb35
bb35:
  %t312 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t312, ptr %l110, !tbaa !27
  %t313 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t313, ptr %l7, !tbaa !27
  %t314 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2epartsResult_2elocal_2e7
  br i1 %t314, label %bb36, label %bb37
bb36:
  %t316 = load { i64, ptr }, ptr %l110
  %t317 = extractvalue { i64, ptr } %t316, 1
  call void @__olang_region_release(ptr %t317)
  store { i64, ptr } zeroinitializer, ptr %l110
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb38:
  %t318 = load i64, ptr %l12, !tbaa !24
  %t320 = add i64 %t318, 1
  store i64 %t320, ptr %l12, !tbaa !24
  br label %bb18
bb39:
  %t322 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t323 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t322, 1
  %t326 = extractvalue { i64, ptr } %t322, 0
  %t327 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 0
  %t329 = add i64 %t326, %t328
  %t331 = extractvalue { i64, ptr } %t323, 1
  %t332 = extractvalue { i64, ptr } %t323, 0
  %t333 = add i64 %t329, %t332
  %t334 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t333)
  call void @olang_textcopy(ptr %t334, ptr %t325, i64 %t326)
  %t335 = getelementptr i8, ptr %t334, i64 %t326
  call void @olang_textcopy(ptr %t335, ptr %t327, i64 %t328)
  %t336 = getelementptr i8, ptr %t335, i64 %t328
  call void @olang_textcopy(ptr %t336, ptr %t331, i64 %t332)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t334, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t338, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca { i64, [15 x i64] }
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { { i64, ptr }, i32 }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca { i64, [1 x i64] }
  %l12 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i1
  %l16 = alloca i32
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca { i64, [4 x i64] }
  %l24 = alloca { i64, [4 x i64] }
  %l25 = alloca { i64, [4 x i64] }
  %l26 = alloca i32
  %l27 = alloca %"compiler/mir:Range"
  %l28 = alloca { i64, [1 x i64] }
  %l29 = alloca i32
  %l30 = alloca { i64, [4 x i64] }
  %l31 = alloca { i64, [2 x i64] }
  %l32 = alloca %"compiler/mir:Lvalue"
  %l33 = alloca { { i64, ptr }, i32 }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca %"compiler/mir:Lvalue"
  %l38 = alloca { { i64, ptr }, i32 }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l43 = alloca %"compiler/mir:Lvalue"
  %l44 = alloca { { i64, ptr }, i32 }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i32
  %l47 = alloca { i64, ptr }
  %l48 = alloca i32
  %l49 = alloca %"compiler/mir:Lvalue"
  %l50 = alloca { { i64, ptr }, i32 }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, [1 x i64] }
  %l56 = alloca i32
  %l57 = alloca { i64, [4 x i64] }
  %l58 = alloca %"compiler/mir:Lvalue"
  %l59 = alloca %"compiler/mir:Lvalue"
  %l60 = alloca { i64, [4 x i64] }
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i32
  %l64 = alloca { i64, ptr }
  %l65 = alloca i32
  %l66 = alloca i32
  %l73 = alloca ptr
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca ptr
  %l77 = alloca i1
  %l86 = alloca i1
  %l92 = alloca i32
  %l97 = alloca i1
  %l102 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i1
  %l111 = alloca i1
  %l115 = alloca { i64, ptr }
  %l119 = alloca i1
  %l125 = alloca { { i64, ptr }, i32 }
  %l127 = alloca ptr
  %l130 = alloca { i64, ptr }
  %l136 = alloca ptr
  %l137 = alloca i1
  %l144 = alloca ptr
  %l148 = alloca %"compiler/mir:Local"
  %l152 = alloca i1
  %l156 = alloca i32
  %l157 = alloca ptr
  %l158 = alloca { i64, [1 x i64] }
  %l161 = alloca i64
  %l163 = alloca { i64, ptr }
  %l166 = alloca i64
  %l167 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l174 = alloca i1
  %l177 = alloca ptr
  %l178 = alloca i1
  %l187 = alloca i1
  %l192 = alloca i1
  %l199 = alloca ptr
  %l203 = alloca %"compiler/mir:ScopeInfo"
  %l217 = alloca ptr
  %l221 = alloca %"compiler/mir:ScopeInfo"
  %l231 = alloca ptr
  %l235 = alloca %"compiler/mir:ScopeInfo"
  %l249 = alloca ptr
  %l250 = alloca i1
  %l259 = alloca i1
  %l260 = alloca i1
  %l265 = alloca i1
  %l268 = alloca ptr
  %l272 = alloca %"compiler/mir:ScopeInfo"
  %l276 = alloca ptr
  %l278 = alloca ptr
  %l283 = alloca { i64, ptr }
  %l285 = alloca { i64, ptr }
  %l290 = alloca { i64, ptr }
  %l292 = alloca { i64, ptr }
  %l294 = alloca { i64, ptr }
  %l313 = alloca ptr
  %l315 = alloca i64
  %l321 = alloca i64
  %l323 = alloca ptr
  %l334 = alloca ptr
  %l335 = alloca i1
  %l342 = alloca ptr
  %l343 = alloca i1
  %l349 = alloca ptr
  %l351 = alloca ptr
  %l355 = alloca { i64, ptr }
  %l358 = alloca ptr
  %l359 = alloca i1
  %l363 = alloca ptr
  %l366 = alloca ptr
  %l367 = alloca i1
  %l371 = alloca ptr
  %l372 = alloca i1
  %l379 = alloca ptr
  %l380 = alloca { i64, [4 x i64] }
  %l384 = alloca { i64, ptr }
  %l386 = alloca ptr
  %l387 = alloca i1
  %l400 = alloca ptr
  %l401 = alloca i1
  %l410 = alloca { i64, [2 x i64] }
  %l411 = alloca ptr
  %l412 = alloca i32
  %l413 = alloca i64
  %l416 = alloca ptr
  %l419 = alloca i64
  %l420 = alloca i32
  %l422 = alloca { i64, [2 x i64] }
  %l423 = alloca i32
  %l424 = alloca ptr
  %l425 = alloca ptr
  %l429 = alloca { i64, ptr }
  %l433 = alloca ptr
  %l438 = alloca ptr
  %l441 = alloca i1
  %l445 = alloca ptr
  %l450 = alloca ptr
  %l454 = alloca ptr
  %l456 = alloca ptr
  %l459 = alloca { i64, ptr }
  %l463 = alloca { i64, ptr }
  %l465 = alloca ptr
  %l468 = alloca { i64, ptr }
  %l471 = alloca ptr
  %l472 = alloca i1
  %l479 = alloca { { i64, ptr }, i32 }
  %l480 = alloca { i64, ptr }
  %l481 = alloca i64
  %l482 = alloca { i64, ptr }
  %l484 = alloca ptr
  %l487 = alloca i1
  %l489 = alloca i1
  %l490 = alloca ptr
  %l493 = alloca i1
  %l496 = alloca ptr
  %l498 = alloca ptr
  %l502 = alloca { i64, ptr }
  %l505 = alloca ptr
  %l508 = alloca { i64, ptr }
  %l511 = alloca ptr
  %l514 = alloca { i64, ptr }
  %l517 = alloca { i64, ptr }
  %l519 = alloca ptr
  %l521 = alloca ptr
  %l525 = alloca { i64, ptr }
  %l526 = alloca i64
  %l527 = alloca { i64, ptr }
  %l530 = alloca ptr
  %l533 = alloca { i64, ptr }
  %l534 = alloca { i64, ptr }
  %l536 = alloca ptr
  %l539 = alloca { i64, ptr }
  %l542 = alloca ptr
  %l543 = alloca i1
  %l550 = alloca { { i64, ptr }, i32 }
  %l553 = alloca ptr
  %l556 = alloca { i64, ptr }
  %l559 = alloca { i64, ptr }
  %l561 = alloca ptr
  %l567 = alloca { i64, ptr }
  %l568 = alloca ptr
  %l572 = alloca { i64, ptr }
  %l573 = alloca i64
  %l574 = alloca { i64, ptr }
  %l578 = alloca ptr
  %l581 = alloca { i64, ptr }
  %l582 = alloca { i64, ptr }
  %l584 = alloca ptr
  %l587 = alloca { i64, ptr }
  %l590 = alloca ptr
  %l591 = alloca i1
  %l598 = alloca { { i64, ptr }, i32 }
  %l601 = alloca ptr
  %l604 = alloca { i64, ptr }
  %l607 = alloca { i64, ptr }
  %l609 = alloca ptr
  %l611 = alloca ptr
  %l615 = alloca { i64, ptr }
  %l616 = alloca i64
  %l617 = alloca { i64, ptr }
  %l620 = alloca ptr
  %l623 = alloca { i64, ptr }
  %l624 = alloca { i64, ptr }
  %l626 = alloca ptr
  %l629 = alloca { i64, ptr }
  %l632 = alloca ptr
  %l633 = alloca i1
  %l642 = alloca { { i64, ptr }, i32 }
  %l643 = alloca { i64, ptr }
  %l644 = alloca i64
  %l645 = alloca { i64, ptr }
  %l647 = alloca ptr
  %l648 = alloca ptr
  %l651 = alloca { i64, ptr }
  %l653 = alloca { i64, ptr }
  %l656 = alloca { i64, ptr }
  %l657 = alloca ptr
  %l661 = alloca { i64, ptr }
  %l665 = alloca { i64, ptr }
  %l667 = alloca ptr
  %l674 = alloca ptr
  %l675 = alloca i1
  %l686 = alloca i1
  %l693 = alloca ptr
  %l696 = alloca { i64, ptr }
  %l700 = alloca ptr
  %l701 = alloca i1
  %l712 = alloca { i64, ptr }
  %l715 = alloca { i64, ptr }
  %l716 = alloca ptr
  %l717 = alloca ptr
  %l720 = alloca i32
  %l721 = alloca i32
  %l723 = alloca i32
  %l724 = alloca ptr
  %l725 = alloca ptr
  %l729 = alloca { i64, ptr }
  %l730 = alloca { i64, ptr }
  %l733 = alloca i32
  %l734 = alloca { i64, ptr }
  %l737 = alloca i64
  %l740 = alloca { i64, ptr }
  %l742 = alloca ptr
  %l750 = alloca ptr
  %l751 = alloca i1
  %l758 = alloca ptr
  %l759 = alloca i32
  %l762 = alloca ptr
  %l766 = alloca %"compiler/mir:Task"
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s49 = alloca %olang.scope
  %s52 = alloca %olang.scope
  %s55 = alloca %olang.scope
  %s57 = alloca %olang.scope
  %s61 = alloca %olang.scope
  %s63 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 18
  %t12 = load i64, ptr %t11, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l73, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = call %"compiler/source:Span" @compiler_2femit_2estmtSpan(ptr %v1, ptr %t17)
  store %"compiler/source:Span" %t19, ptr %l75
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t20 = load ptr, ptr %l73, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l75
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elocate(ptr %v0, ptr %v2, ptr %v3, ptr %t20, %"compiler/source:Span" %t21)
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t23 = load ptr, ptr %l76, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l76, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 19}
  %t29 = icmp eq i64 %t27, 0
  store i1 %t29, ptr %l77, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l77, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [21 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t33, i32 0, i32 1
  %t35 = load %"compiler/mir:Lvalue", ptr %t34
  store %"compiler/mir:Lvalue" %t35, ptr %l3
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [21 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t39, i32 0, i32 2
  %t41 = load { i64, [15 x i64] }, ptr %t40
  store { i64, [15 x i64] } %t41, ptr %l4
  br label %bb10
bb9:
  br label %bb44
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load { i64, [15 x i64] }, ptr %l4
  %t45 = extractvalue { i64, [15 x i64] } %t43, 0
  %t46 = icmp eq i64 %t45, 0
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t49 = getelementptr { { i64, [4 x i64] } }, ptr %t48, i32 0, i32 0
  %t50 = load { i64, [4 x i64] }, ptr %t49
  %t52 = extractvalue { i64, [4 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 0
  store i1 %t53, ptr %l86, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l86, !tbaa !21
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t56 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t57 = getelementptr { { i64, [4 x i64] } }, ptr %t56, i32 0, i32 0
  %t58 = load { i64, [4 x i64] }, ptr %t57
  store { i64, [4 x i64] } %t58, ptr %l5
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb15:
  br label %bb16
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load %"compiler/mir:Lvalue", ptr %l3
  %t64 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %v3, ptr %v2, ptr %t60, %"compiler/mir:Lvalue" %t61)
  store i32 %t64, ptr %l92
  br label %bb17
bb17:
  %t65 = load i32, ptr %l92, !tbaa !23
  store i32 %t65, ptr %l6, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load %"compiler/mir:Lvalue", ptr %l3
  %t68 = load i32, ptr %l6, !tbaa !23
  %t69 = load { i64, [15 x i64] }, ptr %l4
  %t74 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedInto(ptr %v0, ptr %v2, ptr %v3, ptr %t66, %"compiler/mir:Lvalue" %t67, i32 %t68, { i64, [15 x i64] } %t69)
  store i1 %t74, ptr %l97
  br label %bb18
bb18:
  %t75 = load i1, ptr %l97, !tbaa !21
  br i1 %t75, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb20:
  br label %bb21
bb21:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load %"compiler/mir:Lvalue", ptr %l3
  %t78 = load i32, ptr %l6, !tbaa !23
  %t79 = load { i64, [15 x i64] }, ptr %l4
  %t84 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efillInPlace(ptr %v0, ptr %v2, ptr %v3, ptr %t76, %"compiler/mir:Lvalue" %t77, i32 %t78, { i64, [15 x i64] } %t79)
  store i1 %t84, ptr %l102
  br label %bb22
bb22:
  %t85 = load i1, ptr %l102, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb24:
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l6, !tbaa !23
  %t90 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %v2, ptr %t86, i32 %t87)
  store i1 %t90, ptr %l105
  br label %bb26
bb26:
  %t91 = load i1, ptr %l105, !tbaa !21
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load %"compiler/mir:Lvalue", ptr %l3
  %t94 = load i32, ptr %l6, !tbaa !23
  %t95 = load { i64, [15 x i64] }, ptr %l4
  %t100 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eintoPlace(ptr %v0, ptr %v3, ptr %v2, ptr %t92, %"compiler/mir:Lvalue" %t93, i32 %t94, { i64, [15 x i64] } %t95)
  store i1 %t100, ptr %l111
  br label %bb29
bb28:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb30
bb29:
  %t101 = load i1, ptr %l111, !tbaa !21
  store i1 %t101, ptr %l106, !tbaa !21
  br label %bb30
bb30:
  %t102 = load i1, ptr %l106, !tbaa !21
  br i1 %t102, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb32:
  br label %bb33
bb33:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load { i64, [15 x i64] }, ptr %l4
  %t105 = load i32, ptr %l6, !tbaa !23
  %t109 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ervalue(ptr %v0, ptr %s2, ptr %v3, ptr %v2, ptr %t103, { i64, [15 x i64] } %t104, i32 %t105)
  store { i64, ptr } %t109, ptr %l115
  br label %bb34
bb34:
  %t110 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t110, ptr %l7, !tbaa !27
  %t111 = load i32, ptr %l6, !tbaa !23
  %t112 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t115 = icmp eq i32 %t111, %t112
  br i1 %t115, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb37
bb36:
  %t117 = load i32, ptr %l6, !tbaa !23
  %t118 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t121 = icmp eq i32 %t117, %t118
  store i1 %t121, ptr %l119, !tbaa !21
  br label %bb37
bb37:
  %t123 = load i1, ptr %l119, !tbaa !21
  br i1 %t123, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb39:
  br label %bb40
bb40:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load %"compiler/mir:Lvalue", ptr %l3
  %t128 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s2, ptr %v3, ptr %v2, ptr %t124, %"compiler/mir:Lvalue" %t125)
  store { { i64, ptr }, i32 } %t128, ptr %l125
  br label %bb41
bb41:
  %t129 = load { { i64, ptr }, i32 }, ptr %l125
  store { { i64, ptr }, i32 } %t129, ptr %l8
  %t130 = getelementptr { { i64, ptr }, i32 }, ptr %l8, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  store { i64, ptr } %t131, ptr %l9, !tbaa !27
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l127, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l6, !tbaa !23
  %t138 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s2, ptr %v2, ptr %t134, i32 %t135)
  store { i64, ptr } %t138, ptr %l130
  br label %bb42
bb42:
  %t139 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 0
  %t141 = extractvalue { i64, ptr } %t139, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t146 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/emit:fnEm", ptr %t148, i32 0, i32 15
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  %t152 = load ptr, ptr %l127, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %v0, ptr %v2, ptr %t152, { i64, ptr } %t145, { i64, ptr } %t146, { i64, ptr } %t147, { i64, ptr } %t151)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s2)
  br label %bb328
bb44:
  %t157 = load ptr, ptr %l1, !tbaa !29
  store ptr %t157, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t158 = load ptr, ptr %l136, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb45, label %bb46
bb45:
  %t161 = load ptr, ptr %l136, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 19}
  %t164 = icmp eq i64 %t162, 1
  store i1 %t164, ptr %l137, !tbaa !21
  br label %bb46
bb46:
  %t165 = load i1, ptr %l137, !tbaa !21
  br i1 %t165, label %bb47, label %bb48
bb47:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr { i64, [21 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", i32 }, ptr %t168, i32 0, i32 1
  %t170 = load i32, ptr %t169
  store i32 %t170, ptr %l10, !tbaa !23
  br label %bb49
bb48:
  br label %bb60
bb49:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/emit:fnEm", ptr %t172, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = getelementptr %"compiler/mir:Fn", ptr %t175, i32 0, i32 7
  store ptr %t177, ptr %l144, !tbaa !29
  %t178 = load i32, ptr %l10, !tbaa !23
  %t180 = sext i32 %t178 to i64
  %t181 = load ptr, ptr %l144, !tbaa !29
  %t182 = call ptr @__olang_scope_or(ptr %v3, ptr %t181)
  %t183 = ptrtoint ptr %t182 to i64
  %t185 = inttoptr i64 %t183 to ptr
  %t186 = load ptr, ptr %l144, !tbaa !29
  %t188 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %t185, ptr %t186, i64 %t180)
  store %"compiler/mir:Local" %t188, ptr %l148
  br label %bb50
bb50:
  %t189 = getelementptr %"compiler/mir:Local", ptr %l148, i32 0, i32 4
  %t190 = load { i64, [1 x i64] }, ptr %t189
  store { i64, [1 x i64] } %t190, ptr %l11
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load { i64, [1 x i64] }, ptr %l11
  %t196 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t192, { i64, [1 x i64] } %t193)
  store i1 %t196, ptr %l152
  br label %bb51
bb51:
  %t197 = load i1, ptr %l152, !tbaa !21
  %t198 = xor i1 %t197, true
  br i1 %t198, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s9
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i32, ptr %l10, !tbaa !23
  %t204 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalType(ptr %v0, ptr %v3, ptr %t200, i32 %t201)
  store i32 %t204, ptr %l156
  br label %bb54
bb53:
  br label %bb59
bb54:
  %t205 = load i32, ptr %l156, !tbaa !23
  store i32 %t205, ptr %l12, !tbaa !23
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l157, !tbaa !29
  %t207 = load { i64, [1 x i64] }, ptr %l11
  store { i64, [1 x i64] } %t207, ptr %l158
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i32, ptr %l12, !tbaa !23
  %t212 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v2, ptr %t208, i32 %t209)
  store i64 %t212, ptr %l161
  br label %bb55
bb55:
  %t213 = load i64, ptr %l161, !tbaa !24
  %t214 = call i64 @__olang_fmt_i64(ptr null, i64 %t213)
  %t215 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t214)
  %t216 = call i64 @__olang_fmt_i64(ptr %t215, i64 %t213)
  %t217 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t215, 1
  %t220 = extractvalue { i64, ptr } %t218, 0
  %t221 = extractvalue { i64, ptr } %t218, 1
  %t222 = mul i64 %t220, 1
  %t223 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t223, ptr %t221, i64 %t222, i1 false)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  store { i64, ptr } %t225, ptr %l163, !tbaa !27
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load i32, ptr %l12, !tbaa !23
  %t230 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %v2, ptr %t226, i32 %t227)
  store i64 %t230, ptr %l166
  br label %bb56
bb56:
  %t231 = load ptr, ptr %l157, !tbaa !29
  %t232 = load { i64, [1 x i64] }, ptr %l158
  %t233 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t234 = load i64, ptr %l166, !tbaa !24
  %t235 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %s9, ptr %s9, ptr %s9, ptr %v2, ptr %v3, ptr %t231, { i64, [1 x i64] } %t232, { i64, ptr } %t233, i64 %t234, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d273, i32 0, i32 1) })
  store { i64, ptr } %t235, ptr %l167
  br label %bb57
bb57:
  %t236 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = load i32, ptr %l10, !tbaa !23
  %t240 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
  %t243 = sext i32 %t239 to i64
  %t244 = call i64 @__olang_fmt_i64(ptr null, i64 %t243)
  %t245 = add i64 %t241, %t244
  %t246 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t245)
  call void @olang_textcopy(ptr %t246, ptr %t240, i64 %t241)
  %t247 = getelementptr i8, ptr %t246, i64 %t241
  %t248 = call i64 @__olang_fmt_i64(ptr %t247, i64 %t243)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t246, 1
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t253 = extractvalue { i64, ptr } %t250, 1
  %t254 = mul i64 %t252, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t254)
  call void @llvm.memcpy.p0.p0.i64(ptr %t255, ptr %t253, i64 %t254, i1 false)
  %t256 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s9, ptr %s9, ptr %s9, ptr %s9, ptr %v2, ptr %t237, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d275, i32 0, i32 1) }, { i64, ptr } %t236, { i64, ptr } %t257, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d257, i32 0, i32 1) })
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s9)
  br label %bb59
bb59:
  br label %bb328
bb60:
  %t261 = load ptr, ptr %l1, !tbaa !29
  store ptr %t261, ptr %l173, !tbaa !29
  store i1 false, ptr %l174, !tbaa !21
  %t262 = load ptr, ptr %l173, !tbaa !29
  %t263 = icmp ne ptr %t262, null
  br i1 %t263, label %bb61, label %bb62
bb61:
  %t265 = load ptr, ptr %l173, !tbaa !29
  %t266 = load i64, ptr %t265, !range !{i64 0, i64 19}
  %t268 = icmp eq i64 %t266, 2
  store i1 %t268, ptr %l174, !tbaa !21
  br label %bb62
bb62:
  %t269 = load i1, ptr %l174, !tbaa !21
  br i1 %t269, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb328
bb66:
  %t270 = load ptr, ptr %l1, !tbaa !29
  store ptr %t270, ptr %l177, !tbaa !29
  store i1 false, ptr %l178, !tbaa !21
  %t271 = load ptr, ptr %l177, !tbaa !29
  %t272 = icmp ne ptr %t271, null
  br i1 %t272, label %bb67, label %bb68
bb67:
  %t274 = load ptr, ptr %l177, !tbaa !29
  %t275 = load i64, ptr %t274, !range !{i64 0, i64 19}
  %t277 = icmp eq i64 %t275, 3
  store i1 %t277, ptr %l178, !tbaa !21
  br label %bb68
bb68:
  %t278 = load i1, ptr %l178, !tbaa !21
  br i1 %t278, label %bb69, label %bb70
bb69:
  %t279 = load ptr, ptr %l1, !tbaa !29
  %t281 = getelementptr { i64, [21 x i64] }, ptr %t279, i32 0, i32 1
  %t282 = getelementptr { %"compiler/source:Span", i32 }, ptr %t281, i32 0, i32 1
  %t283 = load i32, ptr %t282
  store i32 %t283, ptr %l14, !tbaa !23
  br label %bb71
bb70:
  br label %bb103
bb71:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/emit:fnEm", ptr %t285, i32 0, i32 26
  %t288 = load i32, ptr %l14, !tbaa !23
  %t290 = sext i32 %t288 to i64
  %t293 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t287, i64 %t290)
  store i1 %t293, ptr %l187
  br label %bb72
bb72:
  %t294 = load i1, ptr %l187, !tbaa !21
  br i1 %t294, label %bb73, label %bb74
bb73:
  br label %ret
bb74:
  br label %bb75
bb75:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/emit:fnEm", ptr %t295, i32 0, i32 25
  %t298 = load i32, ptr %l14, !tbaa !23
  %t300 = sext i32 %t298 to i64
  %t303 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t297, i64 %t300)
  store i1 %t303, ptr %l192
  br label %bb76
bb76:
  %t304 = load i1, ptr %l192, !tbaa !21
  br i1 %t304, label %bb77, label %bb78
bb77:
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"compiler/emit:fnEm", ptr %t305, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2eClear_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %t307)
  br label %bb79
bb78:
  br label %bb81
bb79:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/emit:fnEm", ptr %t309, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eClear_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t311)
  br label %bb80
bb80:
  br label %ret
bb81:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/emit:fnEm", ptr %t313, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !29
  %t318 = getelementptr %"compiler/mir:Fn", ptr %t316, i32 0, i32 8
  store ptr %t318, ptr %l199, !tbaa !29
  %t319 = load i32, ptr %l14, !tbaa !23
  %t321 = sext i32 %t319 to i64
  %t322 = load ptr, ptr %l199, !tbaa !29
  %t323 = call ptr @__olang_scope_or(ptr %v3, ptr %t322)
  %t324 = ptrtoint ptr %t323 to i64
  %t326 = inttoptr i64 %t324 to ptr
  %t327 = load ptr, ptr %l199, !tbaa !29
  %t329 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t326, ptr %t327, i64 %t321)
  store %"compiler/mir:ScopeInfo" %t329, ptr %l203
  br label %bb82
bb82:
  %t330 = getelementptr %"compiler/mir:ScopeInfo", ptr %l203, i32 0, i32 0
  %t331 = load i32, ptr %t330, !range !{i32 0, i32 7}
  %t333 = trunc i64 6 to i32
  %t334 = icmp eq i32 %t331, %t333
  br i1 %t334, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s16
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load i32, ptr %l14, !tbaa !23
  %t338 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d276, i32 0, i32 1) }, 1
  %t339 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d276, i32 0, i32 1) }, 0
  %t341 = sext i32 %t337 to i64
  %t342 = call i64 @__olang_fmt_i64(ptr null, i64 %t341)
  %t343 = add i64 %t339, %t342
  %t344 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t343)
  call void @olang_textcopy(ptr %t344, ptr %t338, i64 %t339)
  %t345 = getelementptr i8, ptr %t344, i64 %t339
  %t346 = call i64 @__olang_fmt_i64(ptr %t345, i64 %t341)
  %t347 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t344, 1
  %t350 = extractvalue { i64, ptr } %t348, 0
  %t351 = extractvalue { i64, ptr } %t348, 1
  %t352 = mul i64 %t350, 1
  %t353 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t352)
  call void @llvm.memcpy.p0.p0.i64(ptr %t353, ptr %t351, i64 %t352, i1 false)
  %t354 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s16, ptr %v2, ptr %t336, { i64, ptr } %t355)
  br label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s19
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = getelementptr %"compiler/emit:fnEm", ptr %t358, i32 0, i32 1
  %t361 = load ptr, ptr %t360, !tbaa !29
  %t363 = getelementptr %"compiler/mir:Fn", ptr %t361, i32 0, i32 8
  store ptr %t363, ptr %l217, !tbaa !29
  %t364 = load i32, ptr %l14, !tbaa !23
  %t366 = sext i32 %t364 to i64
  %t367 = load ptr, ptr %l217, !tbaa !29
  %t368 = call ptr @__olang_scope_or(ptr %v3, ptr %t367)
  %t369 = ptrtoint ptr %t368 to i64
  %t371 = inttoptr i64 %t369 to ptr
  %t372 = load ptr, ptr %l217, !tbaa !29
  %t374 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t371, ptr %t372, i64 %t366)
  store %"compiler/mir:ScopeInfo" %t374, ptr %l221
  br label %bb87
bb85:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load i32, ptr %l14, !tbaa !23
  %t377 = load i32, ptr %l14, !tbaa !23
  %t378 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d277, i32 0, i32 1) }, 1
  %t379 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d277, i32 0, i32 1) }, 0
  %t381 = sext i32 %t376 to i64
  %t382 = call i64 @__olang_fmt_i64(ptr null, i64 %t381)
  %t383 = add i64 %t379, %t382
  %t384 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
  %t386 = add i64 %t383, %t385
  %t388 = sext i32 %t377 to i64
  %t389 = call i64 @__olang_fmt_i64(ptr null, i64 %t388)
  %t390 = add i64 %t386, %t389
  %t391 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t390)
  call void @olang_textcopy(ptr %t391, ptr %t378, i64 %t379)
  %t392 = getelementptr i8, ptr %t391, i64 %t379
  %t393 = call i64 @__olang_fmt_i64(ptr %t392, i64 %t381)
  %t394 = getelementptr i8, ptr %t392, i64 %t382
  call void @olang_textcopy(ptr %t394, ptr %t384, i64 %t385)
  %t395 = getelementptr i8, ptr %t394, i64 %t385
  %t396 = call i64 @__olang_fmt_i64(ptr %t395, i64 %t388)
  %t397 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t391, 1
  %t400 = extractvalue { i64, ptr } %t398, 0
  %t401 = extractvalue { i64, ptr } %t398, 1
  %t402 = mul i64 %t400, 1
  %t403 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t403, ptr %t401, i64 %t402, i1 false)
  %t404 = insertvalue { i64, ptr } undef, i64 %t400, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t403, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s16, ptr %v2, ptr %t375, { i64, ptr } %t405)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s16)
  br label %bb102
bb87:
  %t408 = getelementptr %"compiler/mir:ScopeInfo", ptr %l221, i32 0, i32 0
  %t409 = load i32, ptr %t408, !range !{i32 0, i32 7}
  %t411 = trunc i64 4 to i32
  %t412 = icmp eq i32 %t409, %t411
  br i1 %t412, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s20
  %t414 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s20, ptr %v2, ptr %t414, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d279, i32 0, i32 1) })
  br label %bb90
bb89:
  br label %bb91
bb90:
  call void @__olang_scope_close(ptr %s20)
  br label %bb91
bb91:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load i32, ptr %l14, !tbaa !23
  %t418 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t421 = sext i32 %t417 to i64
  %t422 = call i64 @__olang_fmt_i64(ptr null, i64 %t421)
  %t423 = add i64 %t419, %t422
  %t424 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t423)
  call void @olang_textcopy(ptr %t424, ptr %t418, i64 %t419)
  %t425 = getelementptr i8, ptr %t424, i64 %t419
  %t426 = call i64 @__olang_fmt_i64(ptr %t425, i64 %t421)
  %t427 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t428 = insertvalue { i64, ptr } %t427, ptr %t424, 1
  %t430 = extractvalue { i64, ptr } %t428, 0
  %t431 = extractvalue { i64, ptr } %t428, 1
  %t432 = mul i64 %t430, 1
  %t433 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t432)
  call void @llvm.memcpy.p0.p0.i64(ptr %t433, ptr %t431, i64 %t432, i1 false)
  %t434 = insertvalue { i64, ptr } undef, i64 %t430, 0
  %t435 = insertvalue { i64, ptr } %t434, ptr %t433, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s19, ptr %v2, ptr %t416, { i64, ptr } %t435)
  br label %bb92
bb92:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/emit:fnEm", ptr %t438, i32 0, i32 1
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t443 = getelementptr %"compiler/mir:Fn", ptr %t441, i32 0, i32 8
  store ptr %t443, ptr %l231, !tbaa !29
  %t444 = load i32, ptr %l14, !tbaa !23
  %t446 = sext i32 %t444 to i64
  %t447 = load ptr, ptr %l231, !tbaa !29
  %t448 = call ptr @__olang_scope_or(ptr %v3, ptr %t447)
  %t449 = ptrtoint ptr %t448 to i64
  %t451 = inttoptr i64 %t449 to ptr
  %t452 = load ptr, ptr %l231, !tbaa !29
  %t454 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t451, ptr %t452, i64 %t446)
  store %"compiler/mir:ScopeInfo" %t454, ptr %l235
  br label %bb93
bb93:
  %t455 = getelementptr %"compiler/mir:ScopeInfo", ptr %l235, i32 0, i32 0
  %t456 = load i32, ptr %t455, !range !{i32 0, i32 7}
  %t458 = trunc i64 3 to i32
  %t459 = icmp eq i32 %t456, %t458
  store i1 %t459, ptr %l15, !tbaa !21
  %t461 = load i1, ptr %l15, !tbaa !21
  br i1 %t461, label %bb94, label %bb95
bb94:
  store %olang.scope zeroinitializer, ptr %s22
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t464 = load i32, ptr %l14, !tbaa !23
  %t465 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t466 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t468 = sext i32 %t464 to i64
  %t469 = call i64 @__olang_fmt_i64(ptr null, i64 %t468)
  %t470 = add i64 %t466, %t469
  %t471 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t470)
  call void @olang_textcopy(ptr %t471, ptr %t465, i64 %t466)
  %t472 = getelementptr i8, ptr %t471, i64 %t466
  %t473 = call i64 @__olang_fmt_i64(ptr %t472, i64 %t468)
  %t474 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t475 = insertvalue { i64, ptr } %t474, ptr %t471, 1
  %t477 = extractvalue { i64, ptr } %t475, 0
  %t478 = extractvalue { i64, ptr } %t475, 1
  %t479 = mul i64 %t477, 1
  %t480 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t479)
  call void @llvm.memcpy.p0.p0.i64(ptr %t480, ptr %t478, i64 %t479, i1 false)
  %t481 = insertvalue { i64, ptr } undef, i64 %t477, 0
  %t482 = insertvalue { i64, ptr } %t481, ptr %t480, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s22, ptr %v2, ptr %t463, { i64, ptr } %t482)
  br label %bb96
bb95:
  br label %bb97
bb96:
  call void @__olang_scope_close(ptr %s22)
  br label %bb97
bb97:
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/emit:fnEm", ptr %t485, i32 0, i32 0
  %t488 = load ptr, ptr %t487, !tbaa !29
  %t490 = getelementptr %"compiler/emit:Emitter", ptr %t488, i32 0, i32 4
  %t491 = load i1, ptr %t490, !tbaa !21
  br i1 %t491, label %bb98, label %bb99
bb98:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t494 = load i32, ptr %l14, !tbaa !23
  %t495 = load i1, ptr %l15, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPush(ptr %v0, ptr %v2, ptr %t493, i32 %t494, i1 %t495)
  br label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s19)
  br label %bb102
bb102:
  br label %bb328
bb103:
  %t499 = load ptr, ptr %l1, !tbaa !29
  store ptr %t499, ptr %l249, !tbaa !29
  store i1 false, ptr %l250, !tbaa !21
  %t500 = load ptr, ptr %l249, !tbaa !29
  %t501 = icmp ne ptr %t500, null
  br i1 %t501, label %bb104, label %bb105
bb104:
  %t503 = load ptr, ptr %l249, !tbaa !29
  %t504 = load i64, ptr %t503, !range !{i64 0, i64 19}
  %t506 = icmp eq i64 %t504, 4
  store i1 %t506, ptr %l250, !tbaa !21
  br label %bb105
bb105:
  %t507 = load i1, ptr %l250, !tbaa !21
  br i1 %t507, label %bb106, label %bb107
bb106:
  %t508 = load ptr, ptr %l1, !tbaa !29
  %t510 = getelementptr { i64, [21 x i64] }, ptr %t508, i32 0, i32 1
  %t511 = getelementptr { %"compiler/source:Span", i32 }, ptr %t510, i32 0, i32 1
  %t512 = load i32, ptr %t511
  store i32 %t512, ptr %l16, !tbaa !23
  br label %bb108
bb107:
  br label %bb140
bb108:
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t516 = getelementptr %"compiler/emit:fnEm", ptr %t514, i32 0, i32 25
  %t517 = load i32, ptr %l16, !tbaa !23
  %t519 = sext i32 %t517 to i64
  %t522 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t516, i64 %t519)
  store i1 %t522, ptr %l259
  br label %bb109
bb109:
  %t523 = load i1, ptr %l259, !tbaa !21
  br i1 %t523, label %bb110, label %bb111
bb110:
  store i1 true, ptr %l260, !tbaa !21
  br label %bb113
bb111:
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t526 = getelementptr %"compiler/emit:fnEm", ptr %t524, i32 0, i32 26
  %t527 = load i32, ptr %l16, !tbaa !23
  %t529 = sext i32 %t527 to i64
  %t532 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t526, i64 %t529)
  store i1 %t532, ptr %l265
  br label %bb112
bb112:
  %t533 = load i1, ptr %l265, !tbaa !21
  store i1 %t533, ptr %l260, !tbaa !21
  br label %bb113
bb113:
  %t534 = load i1, ptr %l260, !tbaa !21
  br i1 %t534, label %bb114, label %bb115
bb114:
  br label %ret
bb115:
  br label %bb116
bb116:
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/emit:fnEm", ptr %t535, i32 0, i32 1
  %t538 = load ptr, ptr %t537, !tbaa !29
  %t540 = getelementptr %"compiler/mir:Fn", ptr %t538, i32 0, i32 8
  store ptr %t540, ptr %l268, !tbaa !29
  %t541 = load i32, ptr %l16, !tbaa !23
  %t543 = sext i32 %t541 to i64
  %t544 = load ptr, ptr %l268, !tbaa !29
  %t545 = call ptr @__olang_scope_or(ptr %v3, ptr %t544)
  %t546 = ptrtoint ptr %t545 to i64
  %t548 = inttoptr i64 %t546 to ptr
  %t549 = load ptr, ptr %l268, !tbaa !29
  %t551 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t548, ptr %t549, i64 %t543)
  store %"compiler/mir:ScopeInfo" %t551, ptr %l272
  br label %bb117
bb117:
  %t552 = getelementptr %"compiler/mir:ScopeInfo", ptr %l272, i32 0, i32 0
  %t553 = load i32, ptr %t552, !range !{i32 0, i32 7}
  %t555 = trunc i64 6 to i32
  %t556 = icmp eq i32 %t553, %t555
  br i1 %t556, label %bb118, label %bb119
bb118:
  store %olang.scope zeroinitializer, ptr %s27
  %t558 = load ptr, ptr %l0, !tbaa !29
  %t560 = getelementptr %"compiler/emit:fnEm", ptr %t558, i32 0, i32 0
  %t561 = load ptr, ptr %t560, !tbaa !29
  store ptr %t561, ptr %l276, !tbaa !29
  %t562 = load ptr, ptr %l276, !tbaa !29
  %t563 = call ptr @__olang_scope_or(ptr %v2, ptr %t562)
  %t564 = ptrtoint ptr %t563 to i64
  %t566 = inttoptr i64 %t564 to ptr
  %t567 = load ptr, ptr %l276, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t566, ptr %s27, ptr %t567, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d282, i32 0, i32 1) })
  br label %bb120
bb119:
  store %olang.scope zeroinitializer, ptr %s33
  %t568 = load ptr, ptr %l0, !tbaa !29
  store ptr %t568, ptr %l313, !tbaa !29
  %t569 = load i32, ptr %l16, !tbaa !23
  %t571 = sext i32 %t569 to i64
  store i64 %t571, ptr %l315, !tbaa !24
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/emit:fnEm", ptr %t573, i32 0, i32 37
  %t576 = load i64, ptr %t575, !tbaa !24
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t579 = getelementptr %"compiler/emit:fnEm", ptr %t577, i32 0, i32 38
  %t580 = load i64, ptr %t579, !tbaa !24
  %t584 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkKey(ptr %v0, ptr %t572, i64 %t576, i64 %t580)
  store i64 %t584, ptr %l321
  br label %bb131
bb120:
  %t585 = load ptr, ptr %l0, !tbaa !29
  store ptr %t585, ptr %l278, !tbaa !29
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t587 = load i32, ptr %l16, !tbaa !23
  %t588 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t589 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t591 = sext i32 %t587 to i64
  %t592 = call i64 @__olang_fmt_i64(ptr null, i64 %t591)
  %t593 = add i64 %t589, %t592
  %t594 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t595 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
  %t596 = add i64 %t593, %t595
  %t597 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t596)
  call void @olang_textcopy(ptr %t597, ptr %t588, i64 %t589)
  %t598 = getelementptr i8, ptr %t597, i64 %t589
  %t599 = call i64 @__olang_fmt_i64(ptr %t598, i64 %t591)
  %t600 = getelementptr i8, ptr %t598, i64 %t592
  call void @olang_textcopy(ptr %t600, ptr %t594, i64 %t595)
  %t601 = insertvalue { i64, ptr } undef, i64 %t596, 0
  %t602 = insertvalue { i64, ptr } %t601, ptr %t597, 1
  %t604 = extractvalue { i64, ptr } %t602, 0
  %t605 = extractvalue { i64, ptr } %t602, 1
  %t606 = mul i64 %t604, 1
  %t607 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t606)
  call void @llvm.memcpy.p0.p0.i64(ptr %t607, ptr %t605, i64 %t606, i1 false)
  %t608 = insertvalue { i64, ptr } undef, i64 %t604, 0
  %t609 = insertvalue { i64, ptr } %t608, ptr %t607, 1
  %t612 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s27, ptr %s27, ptr %v2, ptr %t586, { i64, ptr } %t609)
  store { i64, ptr } %t612, ptr %l283
  br label %bb121
bb121:
  %t613 = load { i64, ptr }, ptr %l283, !tbaa !27
  %t614 = extractvalue { i64, ptr } %t613, 0
  %t615 = extractvalue { i64, ptr } %t613, 1
  %t616 = mul i64 %t614, 1
  %t617 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t616)
  call void @llvm.memcpy.p0.p0.i64(ptr %t617, ptr %t615, i64 %t616, i1 false)
  %t618 = insertvalue { i64, ptr } undef, i64 %t614, 0
  %t619 = insertvalue { i64, ptr } %t618, ptr %t617, 1
  %t620 = load ptr, ptr %l278, !tbaa !29
  %t622 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s27, ptr %s27, ptr %s27, ptr %s27, ptr %v2, ptr %t620, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d285, i32 0, i32 1) }, { i64, ptr } %t619, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t622, ptr %l285
  br label %bb122
bb122:
  %t623 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t624 = load ptr, ptr %l0, !tbaa !29
  %t626 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d286, i32 0, i32 1) }, 1
  %t627 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d286, i32 0, i32 1) }, 0
  %t629 = extractvalue { i64, ptr } %t623, 1
  %t630 = extractvalue { i64, ptr } %t623, 0
  %t631 = add i64 %t627, %t630
  %t632 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d287, i32 0, i32 1) }, 1
  %t633 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d287, i32 0, i32 1) }, 0
  %t634 = add i64 %t631, %t633
  %t635 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t634)
  call void @olang_textcopy(ptr %t635, ptr %t626, i64 %t627)
  %t636 = getelementptr i8, ptr %t635, i64 %t627
  call void @olang_textcopy(ptr %t636, ptr %t629, i64 %t630)
  %t637 = getelementptr i8, ptr %t636, i64 %t630
  call void @olang_textcopy(ptr %t637, ptr %t632, i64 %t633)
  %t638 = insertvalue { i64, ptr } undef, i64 %t634, 0
  %t639 = insertvalue { i64, ptr } %t638, ptr %t635, 1
  %t641 = extractvalue { i64, ptr } %t639, 0
  %t642 = extractvalue { i64, ptr } %t639, 1
  %t643 = mul i64 %t641, 1
  %t644 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t643)
  call void @llvm.memcpy.p0.p0.i64(ptr %t644, ptr %t642, i64 %t643, i1 false)
  %t645 = insertvalue { i64, ptr } undef, i64 %t641, 0
  %t646 = insertvalue { i64, ptr } %t645, ptr %t644, 1
  %t649 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s27, ptr %s27, ptr %v2, ptr %t624, { i64, ptr } %t646)
  store { i64, ptr } %t649, ptr %l290
  br label %bb123
bb123:
  %t650 = load { i64, ptr }, ptr %l290, !tbaa !27
  store { i64, ptr } %t650, ptr %l18, !tbaa !27
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t653 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s27, ptr %s27, ptr %t651, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d288, i32 0, i32 1) })
  store { i64, ptr } %t653, ptr %l292
  br label %bb124
bb124:
  %t654 = load { i64, ptr }, ptr %l292, !tbaa !27
  store { i64, ptr } %t654, ptr %l19, !tbaa !27
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t657 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s27, ptr %s27, ptr %t655, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d289, i32 0, i32 1) })
  store { i64, ptr } %t657, ptr %l294
  br label %bb125
bb125:
  %t658 = load { i64, ptr }, ptr %l294, !tbaa !27
  store { i64, ptr } %t658, ptr %l20, !tbaa !27
  %t659 = load ptr, ptr %l0, !tbaa !29
  %t660 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t661 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t662 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t663 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d290, i32 0, i32 1) }, 1
  %t664 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d290, i32 0, i32 1) }, 0
  %t666 = extractvalue { i64, ptr } %t660, 1
  %t667 = extractvalue { i64, ptr } %t660, 0
  %t668 = add i64 %t664, %t667
  %t669 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t670 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t671 = add i64 %t668, %t670
  %t673 = extractvalue { i64, ptr } %t661, 1
  %t674 = extractvalue { i64, ptr } %t661, 0
  %t675 = add i64 %t671, %t674
  %t676 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t677 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t678 = add i64 %t675, %t677
  %t680 = extractvalue { i64, ptr } %t662, 1
  %t681 = extractvalue { i64, ptr } %t662, 0
  %t682 = add i64 %t678, %t681
  %t683 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t682)
  call void @olang_textcopy(ptr %t683, ptr %t663, i64 %t664)
  %t684 = getelementptr i8, ptr %t683, i64 %t664
  call void @olang_textcopy(ptr %t684, ptr %t666, i64 %t667)
  %t685 = getelementptr i8, ptr %t684, i64 %t667
  call void @olang_textcopy(ptr %t685, ptr %t669, i64 %t670)
  %t686 = getelementptr i8, ptr %t685, i64 %t670
  call void @olang_textcopy(ptr %t686, ptr %t673, i64 %t674)
  %t687 = getelementptr i8, ptr %t686, i64 %t674
  call void @olang_textcopy(ptr %t687, ptr %t676, i64 %t677)
  %t688 = getelementptr i8, ptr %t687, i64 %t677
  call void @olang_textcopy(ptr %t688, ptr %t680, i64 %t681)
  %t689 = insertvalue { i64, ptr } undef, i64 %t682, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t683, 1
  %t692 = extractvalue { i64, ptr } %t690, 0
  %t693 = extractvalue { i64, ptr } %t690, 1
  %t694 = mul i64 %t692, 1
  %t695 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t694)
  call void @llvm.memcpy.p0.p0.i64(ptr %t695, ptr %t693, i64 %t694, i1 false)
  %t696 = insertvalue { i64, ptr } undef, i64 %t692, 0
  %t697 = insertvalue { i64, ptr } %t696, ptr %t695, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s27, ptr %v2, ptr %t659, { i64, ptr } %t697)
  br label %bb126
bb126:
  %t700 = load ptr, ptr %l0, !tbaa !29
  %t701 = load { i64, ptr }, ptr %l19, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s27, ptr %t700, { i64, ptr } %t701)
  br label %bb127
bb127:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t705 = load i32, ptr %l16, !tbaa !23
  %t706 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t707 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t709 = sext i32 %t705 to i64
  %t710 = call i64 @__olang_fmt_i64(ptr null, i64 %t709)
  %t711 = add i64 %t707, %t710
  %t712 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 1
  %t713 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 0
  %t714 = add i64 %t711, %t713
  %t715 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t714)
  call void @olang_textcopy(ptr %t715, ptr %t706, i64 %t707)
  %t716 = getelementptr i8, ptr %t715, i64 %t707
  %t717 = call i64 @__olang_fmt_i64(ptr %t716, i64 %t709)
  %t718 = getelementptr i8, ptr %t716, i64 %t710
  call void @olang_textcopy(ptr %t718, ptr %t712, i64 %t713)
  %t719 = insertvalue { i64, ptr } undef, i64 %t714, 0
  %t720 = insertvalue { i64, ptr } %t719, ptr %t715, 1
  %t722 = extractvalue { i64, ptr } %t720, 0
  %t723 = extractvalue { i64, ptr } %t720, 1
  %t724 = mul i64 %t722, 1
  %t725 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t724)
  call void @llvm.memcpy.p0.p0.i64(ptr %t725, ptr %t723, i64 %t724, i1 false)
  %t726 = insertvalue { i64, ptr } undef, i64 %t722, 0
  %t727 = insertvalue { i64, ptr } %t726, ptr %t725, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s27, ptr %v2, ptr %t704, { i64, ptr } %t727)
  br label %bb128
bb128:
  %t730 = load ptr, ptr %l0, !tbaa !29
  %t731 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t732 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d294, i32 0, i32 1) }, 1
  %t733 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d294, i32 0, i32 1) }, 0
  %t735 = extractvalue { i64, ptr } %t731, 1
  %t736 = extractvalue { i64, ptr } %t731, 0
  %t737 = add i64 %t733, %t736
  %t738 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t737)
  call void @olang_textcopy(ptr %t738, ptr %t732, i64 %t733)
  %t739 = getelementptr i8, ptr %t738, i64 %t733
  call void @olang_textcopy(ptr %t739, ptr %t735, i64 %t736)
  %t740 = insertvalue { i64, ptr } undef, i64 %t737, 0
  %t741 = insertvalue { i64, ptr } %t740, ptr %t738, 1
  %t743 = extractvalue { i64, ptr } %t741, 0
  %t744 = extractvalue { i64, ptr } %t741, 1
  %t745 = mul i64 %t743, 1
  %t746 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t745)
  call void @llvm.memcpy.p0.p0.i64(ptr %t746, ptr %t744, i64 %t745, i1 false)
  %t747 = insertvalue { i64, ptr } undef, i64 %t743, 0
  %t748 = insertvalue { i64, ptr } %t747, ptr %t746, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s27, ptr %v2, ptr %t730, { i64, ptr } %t748)
  br label %bb129
bb129:
  %t751 = load ptr, ptr %l0, !tbaa !29
  %t752 = load { i64, ptr }, ptr %l20, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s27, ptr %t751, { i64, ptr } %t752)
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s27)
  br label %bb139
bb131:
  %t755 = load ptr, ptr %l313, !tbaa !29
  %t756 = load i64, ptr %l315, !tbaa !24
  %t757 = load i64, ptr %l321, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkEnd(ptr %v0, ptr %v2, ptr %t755, i64 %t756, i64 %t757)
  br label %bb132
bb132:
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t760 = getelementptr %"compiler/emit:fnEm", ptr %t758, i32 0, i32 0
  %t761 = load ptr, ptr %t760, !tbaa !29
  store ptr %t761, ptr %l323, !tbaa !29
  %t762 = load ptr, ptr %l323, !tbaa !29
  %t763 = call ptr @__olang_scope_or(ptr %v2, ptr %t762)
  %t764 = ptrtoint ptr %t763 to i64
  %t766 = inttoptr i64 %t764 to ptr
  %t767 = load ptr, ptr %l323, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t766, ptr %s33, ptr %t767, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d295, i32 0, i32 1) })
  br label %bb133
bb133:
  %t768 = load ptr, ptr %l0, !tbaa !29
  %t769 = load i32, ptr %l16, !tbaa !23
  %t770 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t771 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t773 = sext i32 %t769 to i64
  %t774 = call i64 @__olang_fmt_i64(ptr null, i64 %t773)
  %t775 = add i64 %t771, %t774
  %t776 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t777 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t778 = add i64 %t775, %t777
  %t779 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t778)
  call void @olang_textcopy(ptr %t779, ptr %t770, i64 %t771)
  %t780 = getelementptr i8, ptr %t779, i64 %t771
  %t781 = call i64 @__olang_fmt_i64(ptr %t780, i64 %t773)
  %t782 = getelementptr i8, ptr %t780, i64 %t774
  call void @olang_textcopy(ptr %t782, ptr %t776, i64 %t777)
  %t783 = insertvalue { i64, ptr } undef, i64 %t778, 0
  %t784 = insertvalue { i64, ptr } %t783, ptr %t779, 1
  %t786 = extractvalue { i64, ptr } %t784, 0
  %t787 = extractvalue { i64, ptr } %t784, 1
  %t788 = mul i64 %t786, 1
  %t789 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t788)
  call void @llvm.memcpy.p0.p0.i64(ptr %t789, ptr %t787, i64 %t788, i1 false)
  %t790 = insertvalue { i64, ptr } undef, i64 %t786, 0
  %t791 = insertvalue { i64, ptr } %t790, ptr %t789, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s33, ptr %v2, ptr %t768, { i64, ptr } %t791)
  br label %bb134
bb134:
  %t794 = load ptr, ptr %l0, !tbaa !29
  %t796 = getelementptr %"compiler/emit:fnEm", ptr %t794, i32 0, i32 0
  %t797 = load ptr, ptr %t796, !tbaa !29
  %t799 = getelementptr %"compiler/emit:Emitter", ptr %t797, i32 0, i32 4
  %t800 = load i1, ptr %t799, !tbaa !21
  br i1 %t800, label %bb135, label %bb136
bb135:
  %t802 = load ptr, ptr %l0, !tbaa !29
  %t803 = load i32, ptr %l16, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPop(ptr %v0, ptr %v2, ptr %t802, i32 %t803)
  br label %bb137
bb136:
  br label %bb138
bb137:
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s33)
  br label %bb139
bb139:
  br label %bb328
bb140:
  %t806 = load ptr, ptr %l1, !tbaa !29
  store ptr %t806, ptr %l334, !tbaa !29
  store i1 false, ptr %l335, !tbaa !21
  %t807 = load ptr, ptr %l334, !tbaa !29
  %t808 = icmp ne ptr %t807, null
  br i1 %t808, label %bb141, label %bb142
bb141:
  %t810 = load ptr, ptr %l334, !tbaa !29
  %t811 = load i64, ptr %t810, !range !{i64 0, i64 19}
  %t813 = icmp eq i64 %t811, 13
  store i1 %t813, ptr %l335, !tbaa !21
  br label %bb142
bb142:
  %t814 = load i1, ptr %l335, !tbaa !21
  br i1 %t814, label %bb143, label %bb144
bb143:
  %t815 = load ptr, ptr %l1, !tbaa !29
  %t817 = getelementptr { i64, [21 x i64] }, ptr %t815, i32 0, i32 1
  %t818 = getelementptr { %"compiler/source:Span" }, ptr %t817, i32 0, i32 0
  %t819 = load %"compiler/source:Span", ptr %t818
  store %"compiler/source:Span" %t819, ptr %l21
  br label %bb145
bb144:
  br label %bb147
bb145:
  %t821 = load ptr, ptr %l0, !tbaa !29
  %t822 = load %"compiler/source:Span", ptr %l21
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2etrace(ptr %v0, ptr %v2, ptr %v3, ptr %t821, %"compiler/source:Span" %t822)
  br label %bb146
bb146:
  br label %bb328
bb147:
  %t825 = load ptr, ptr %l1, !tbaa !29
  store ptr %t825, ptr %l342, !tbaa !29
  store i1 false, ptr %l343, !tbaa !21
  %t826 = load ptr, ptr %l342, !tbaa !29
  %t827 = icmp ne ptr %t826, null
  br i1 %t827, label %bb148, label %bb149
bb148:
  %t829 = load ptr, ptr %l342, !tbaa !29
  %t830 = load i64, ptr %t829, !range !{i64 0, i64 19}
  %t832 = icmp eq i64 %t830, 14
  store i1 %t832, ptr %l343, !tbaa !21
  br label %bb149
bb149:
  %t833 = load i1, ptr %l343, !tbaa !21
  br i1 %t833, label %bb150, label %bb151
bb150:
  %t834 = load ptr, ptr %l1, !tbaa !29
  %t836 = getelementptr { i64, [21 x i64] }, ptr %t834, i32 0, i32 1
  %t837 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t836, i32 0, i32 1
  %t838 = load { i64, [4 x i64] }, ptr %t837
  store { i64, [4 x i64] } %t838, ptr %l22
  br label %bb152
bb151:
  br label %bb156
bb152:
  store %olang.scope zeroinitializer, ptr %s37
  %t840 = load ptr, ptr %l0, !tbaa !29
  %t842 = getelementptr %"compiler/emit:fnEm", ptr %t840, i32 0, i32 0
  %t843 = load ptr, ptr %t842, !tbaa !29
  store ptr %t843, ptr %l349, !tbaa !29
  %t844 = load ptr, ptr %l349, !tbaa !29
  %t845 = call ptr @__olang_scope_or(ptr %v2, ptr %t844)
  %t846 = ptrtoint ptr %t845 to i64
  %t848 = inttoptr i64 %t846 to ptr
  %t849 = load ptr, ptr %l349, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t848, ptr %s37, ptr %t849, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d298, i32 0, i32 1) })
  br label %bb153
bb153:
  %t850 = load ptr, ptr %l0, !tbaa !29
  store ptr %t850, ptr %l351, !tbaa !29
  %t851 = load ptr, ptr %l0, !tbaa !29
  %t852 = load { i64, [4 x i64] }, ptr %l22
  %t853 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t857 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s37, ptr %v3, ptr %v2, ptr %t851, { i64, [4 x i64] } %t852, i32 %t853)
  store { i64, ptr } %t857, ptr %l355
  br label %bb154
bb154:
  %t858 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t859 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
  %t860 = load { i64, ptr }, ptr %l355, !tbaa !27
  %t861 = extractvalue { i64, ptr } %t860, 1
  %t862 = extractvalue { i64, ptr } %t860, 0
  %t863 = add i64 %t859, %t862
  %t864 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d300, i32 0, i32 1) }, 1
  %t865 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d300, i32 0, i32 1) }, 0
  %t866 = add i64 %t863, %t865
  %t867 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t866)
  call void @olang_textcopy(ptr %t867, ptr %t858, i64 %t859)
  %t868 = getelementptr i8, ptr %t867, i64 %t859
  call void @olang_textcopy(ptr %t868, ptr %t861, i64 %t862)
  %t869 = getelementptr i8, ptr %t868, i64 %t862
  call void @olang_textcopy(ptr %t869, ptr %t864, i64 %t865)
  %t870 = insertvalue { i64, ptr } undef, i64 %t866, 0
  %t871 = insertvalue { i64, ptr } %t870, ptr %t867, 1
  %t873 = extractvalue { i64, ptr } %t871, 0
  %t874 = extractvalue { i64, ptr } %t871, 1
  %t875 = mul i64 %t873, 1
  %t876 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t875)
  call void @llvm.memcpy.p0.p0.i64(ptr %t876, ptr %t874, i64 %t875, i1 false)
  %t877 = insertvalue { i64, ptr } undef, i64 %t873, 0
  %t878 = insertvalue { i64, ptr } %t877, ptr %t876, 1
  %t879 = load ptr, ptr %l351, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s37, ptr %v2, ptr %t879, { i64, ptr } %t878)
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s37)
  br label %bb328
bb156:
  %t881 = load ptr, ptr %l1, !tbaa !29
  store ptr %t881, ptr %l358, !tbaa !29
  store i1 false, ptr %l359, !tbaa !21
  %t882 = load ptr, ptr %l358, !tbaa !29
  %t883 = icmp ne ptr %t882, null
  br i1 %t883, label %bb157, label %bb158
bb157:
  %t885 = load ptr, ptr %l358, !tbaa !29
  %t886 = load i64, ptr %t885, !range !{i64 0, i64 19}
  %t888 = icmp eq i64 %t886, 15
  store i1 %t888, ptr %l359, !tbaa !21
  br label %bb158
bb158:
  %t889 = load i1, ptr %l359, !tbaa !21
  br i1 %t889, label %bb159, label %bb160
bb159:
  br label %bb161
bb160:
  br label %bb164
bb161:
  store %olang.scope zeroinitializer, ptr %s39
  %t890 = load ptr, ptr %l0, !tbaa !29
  %t892 = getelementptr %"compiler/emit:fnEm", ptr %t890, i32 0, i32 0
  %t893 = load ptr, ptr %t892, !tbaa !29
  store ptr %t893, ptr %l363, !tbaa !29
  %t894 = load ptr, ptr %l363, !tbaa !29
  %t895 = call ptr @__olang_scope_or(ptr %v2, ptr %t894)
  %t896 = ptrtoint ptr %t895 to i64
  %t898 = inttoptr i64 %t896 to ptr
  %t899 = load ptr, ptr %l363, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t898, ptr %s39, ptr %t899, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d301, i32 0, i32 1) })
  br label %bb162
bb162:
  %t900 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s39, ptr %v2, ptr %t900, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d302, i32 0, i32 1) })
  br label %bb163
bb163:
  call void @__olang_scope_close(ptr %s39)
  br label %bb328
bb164:
  %t902 = load ptr, ptr %l1, !tbaa !29
  store ptr %t902, ptr %l366, !tbaa !29
  store i1 false, ptr %l367, !tbaa !21
  %t903 = load ptr, ptr %l366, !tbaa !29
  %t904 = icmp ne ptr %t903, null
  br i1 %t904, label %bb165, label %bb166
bb165:
  %t906 = load ptr, ptr %l366, !tbaa !29
  %t907 = load i64, ptr %t906, !range !{i64 0, i64 19}
  %t909 = icmp eq i64 %t907, 18
  store i1 %t909, ptr %l367, !tbaa !21
  br label %bb166
bb166:
  %t910 = load i1, ptr %l367, !tbaa !21
  br i1 %t910, label %bb167, label %bb168
bb167:
  br label %bb169
bb168:
  br label %bb171
bb169:
  store %olang.scope zeroinitializer, ptr %s40
  %t911 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s40, ptr %v2, ptr %t911, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d303, i32 0, i32 1) })
  br label %bb170
bb170:
  call void @__olang_scope_close(ptr %s40)
  br label %bb328
bb171:
  %t913 = load ptr, ptr %l1, !tbaa !29
  store ptr %t913, ptr %l371, !tbaa !29
  store i1 false, ptr %l372, !tbaa !21
  %t914 = load ptr, ptr %l371, !tbaa !29
  %t915 = icmp ne ptr %t914, null
  br i1 %t915, label %bb172, label %bb173
bb172:
  %t917 = load ptr, ptr %l371, !tbaa !29
  %t918 = load i64, ptr %t917, !range !{i64 0, i64 19}
  %t920 = icmp eq i64 %t918, 16
  store i1 %t920, ptr %l372, !tbaa !21
  br label %bb173
bb173:
  %t921 = load i1, ptr %l372, !tbaa !21
  br i1 %t921, label %bb174, label %bb175
bb174:
  %t922 = load ptr, ptr %l1, !tbaa !29
  %t924 = getelementptr { i64, [21 x i64] }, ptr %t922, i32 0, i32 1
  %t925 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t924, i32 0, i32 1
  %t926 = load { i64, [4 x i64] }, ptr %t925
  store { i64, [4 x i64] } %t926, ptr %l23
  %t928 = load ptr, ptr %l1, !tbaa !29
  %t930 = getelementptr { i64, [21 x i64] }, ptr %t928, i32 0, i32 1
  %t931 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t930, i32 0, i32 2
  %t932 = load { i64, [4 x i64] }, ptr %t931
  store { i64, [4 x i64] } %t932, ptr %l24
  br label %bb176
bb175:
  br label %bb179
bb176:
  store %olang.scope zeroinitializer, ptr %s41
  %t934 = load ptr, ptr %l0, !tbaa !29
  store ptr %t934, ptr %l379, !tbaa !29
  %t935 = load { i64, [4 x i64] }, ptr %l23
  store { i64, [4 x i64] } %t935, ptr %l380
  %t936 = load ptr, ptr %l0, !tbaa !29
  %t937 = load { i64, [4 x i64] }, ptr %l24
  %t938 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t942 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s41, ptr %v3, ptr %v2, ptr %t936, { i64, [4 x i64] } %t937, i32 %t938)
  store { i64, ptr } %t942, ptr %l384
  br label %bb177
bb177:
  %t943 = load { i64, ptr }, ptr %l384, !tbaa !27
  %t944 = extractvalue { i64, ptr } %t943, 0
  %t945 = extractvalue { i64, ptr } %t943, 1
  %t946 = mul i64 %t944, 1
  %t947 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t946)
  call void @llvm.memcpy.p0.p0.i64(ptr %t947, ptr %t945, i64 %t946, i1 false)
  %t948 = insertvalue { i64, ptr } undef, i64 %t944, 0
  %t949 = insertvalue { i64, ptr } %t948, ptr %t947, 1
  %t950 = load ptr, ptr %l379, !tbaa !29
  %t951 = load { i64, [4 x i64] }, ptr %l380
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholders(ptr %v0, ptr %s41, ptr %v3, ptr %v2, ptr %t950, { i64, [4 x i64] } %t951, { i64, ptr } %t949)
  br label %bb178
bb178:
  call void @__olang_scope_close(ptr %s41)
  br label %bb328
bb179:
  %t953 = load ptr, ptr %l1, !tbaa !29
  store ptr %t953, ptr %l386, !tbaa !29
  store i1 false, ptr %l387, !tbaa !21
  %t954 = load ptr, ptr %l386, !tbaa !29
  %t955 = icmp ne ptr %t954, null
  br i1 %t955, label %bb180, label %bb181
bb180:
  %t957 = load ptr, ptr %l386, !tbaa !29
  %t958 = load i64, ptr %t957, !range !{i64 0, i64 19}
  %t960 = icmp eq i64 %t958, 17
  store i1 %t960, ptr %l387, !tbaa !21
  br label %bb181
bb181:
  %t961 = load i1, ptr %l387, !tbaa !21
  br i1 %t961, label %bb182, label %bb183
bb182:
  %t962 = load ptr, ptr %l1, !tbaa !29
  %t964 = getelementptr { i64, [21 x i64] }, ptr %t962, i32 0, i32 1
  %t965 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range" }, ptr %t964, i32 0, i32 1
  %t966 = load { i64, [4 x i64] }, ptr %t965
  store { i64, [4 x i64] } %t966, ptr %l25
  %t968 = load ptr, ptr %l1, !tbaa !29
  %t970 = getelementptr { i64, [21 x i64] }, ptr %t968, i32 0, i32 1
  %t971 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range" }, ptr %t970, i32 0, i32 2
  %t972 = load i32, ptr %t971
  store i32 %t972, ptr %l26, !tbaa !23
  %t974 = load ptr, ptr %l1, !tbaa !29
  %t976 = getelementptr { i64, [21 x i64] }, ptr %t974, i32 0, i32 1
  %t977 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range" }, ptr %t976, i32 0, i32 3
  %t978 = load %"compiler/mir:Range", ptr %t977
  store %"compiler/mir:Range" %t978, ptr %l27
  br label %bb184
bb183:
  br label %bb186
bb184:
  %t980 = load ptr, ptr %l0, !tbaa !29
  %t981 = load { i64, [4 x i64] }, ptr %l25
  %t982 = load i32, ptr %l26, !tbaa !23
  %t983 = load %"compiler/mir:Range", ptr %l27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ereclaim(ptr %v0, ptr %v2, ptr %v3, ptr %t980, { i64, [4 x i64] } %t981, i32 %t982, %"compiler/mir:Range" %t983)
  br label %bb185
bb185:
  br label %bb328
bb186:
  %t988 = load ptr, ptr %l1, !tbaa !29
  store ptr %t988, ptr %l400, !tbaa !29
  store i1 false, ptr %l401, !tbaa !21
  %t989 = load ptr, ptr %l400, !tbaa !29
  %t990 = icmp ne ptr %t989, null
  br i1 %t990, label %bb187, label %bb188
bb187:
  %t992 = load ptr, ptr %l400, !tbaa !29
  %t993 = load i64, ptr %t992, !range !{i64 0, i64 19}
  %t995 = icmp eq i64 %t993, 5
  store i1 %t995, ptr %l401, !tbaa !21
  br label %bb188
bb188:
  %t996 = load i1, ptr %l401, !tbaa !21
  br i1 %t996, label %bb189, label %bb190
bb189:
  %t997 = load ptr, ptr %l1, !tbaa !29
  %t999 = getelementptr { i64, [21 x i64] }, ptr %t997, i32 0, i32 1
  %t1000 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t999, i32 0, i32 1
  %t1001 = load { i64, [1 x i64] }, ptr %t1000
  store { i64, [1 x i64] } %t1001, ptr %l28
  %t1003 = load ptr, ptr %l1, !tbaa !29
  %t1005 = getelementptr { i64, [21 x i64] }, ptr %t1003, i32 0, i32 1
  %t1006 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t1005, i32 0, i32 2
  %t1007 = load i32, ptr %t1006
  store i32 %t1007, ptr %l29, !tbaa !23
  %t1009 = load ptr, ptr %l1, !tbaa !29
  %t1011 = getelementptr { i64, [21 x i64] }, ptr %t1009, i32 0, i32 1
  %t1012 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t1011, i32 0, i32 3
  %t1013 = load { i64, [4 x i64] }, ptr %t1012
  store { i64, [4 x i64] } %t1013, ptr %l30
  br label %bb191
bb190:
  br label %bb214
bb191:
  store %olang.scope zeroinitializer, ptr %s43
  %t1015 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1015, ptr %l411, !tbaa !29
  %t1016 = load i32, ptr %l29, !tbaa !23
  store i32 %t1016, ptr %l412, !tbaa !23
  %t1017 = load ptr, ptr %l0, !tbaa !29
  %t1019 = getelementptr %"compiler/emit:fnEm", ptr %t1017, i32 0, i32 0
  %t1020 = load ptr, ptr %t1019, !tbaa !29
  %t1022 = getelementptr %"compiler/emit:Emitter", ptr %t1020, i32 0, i32 40
  store ptr %t1022, ptr %l416, !tbaa !29
  %t1023 = load i32, ptr %l29, !tbaa !23
  %t1024 = load ptr, ptr %l416, !tbaa !29
  %t1025 = call ptr @__olang_scope_or(ptr %v2, ptr %t1024)
  %t1026 = ptrtoint ptr %t1025 to i64
  %t1028 = inttoptr i64 %t1026 to ptr
  %t1029 = load ptr, ptr %l416, !tbaa !29
  %t1031 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %t1028, ptr %t1029, i32 %t1023)
  %t1032 = extractvalue { i32, i64 } %t1031, 1
  %t1033 = extractvalue { i32, i64 } %t1031, 0
  store i32 %t1033, ptr %l420
  %t1034 = icmp ne i32 %t1033, 0
  br i1 %t1034, label %bb193, label %ok.1035, !prof !99
ok.1035:
  store i64 %t1032, ptr %l419
  br label %bb192
bb192:
  %t1036 = load i64, ptr %l419, !tbaa !24
  store i64 %t1036, ptr %l413, !tbaa !24
  br label %bb195
bb193:
  br label %bb194
bb194:
  store i64 -1, ptr %l413, !tbaa !24
  br label %bb195
bb195:
  %t1037 = load ptr, ptr %l411, !tbaa !29
  %t1038 = call ptr @__olang_scope_or(ptr %v2, ptr %t1037)
  %t1039 = ptrtoint ptr %t1038 to i64
  %t1041 = inttoptr i64 %t1039 to ptr
  %t1042 = load ptr, ptr %l411, !tbaa !29
  %t1043 = load i32, ptr %l412, !tbaa !23
  %t1044 = load i64, ptr %l413, !tbaa !24
  %t1045 = call { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %t1041, ptr %t1042, i32 %t1043, i64 %t1044)
  %t1046 = extractvalue { i32, { i64, [2 x i64] } } %t1045, 1
  %t1047 = extractvalue { i32, { i64, [2 x i64] } } %t1045, 0
  store i32 %t1047, ptr %l423
  %t1048 = icmp ne i32 %t1047, 0
  br i1 %t1048, label %bb197, label %ok.1049, !prof !99
ok.1049:
  store { i64, [2 x i64] } %t1046, ptr %l422
  br label %bb196
bb196:
  %t1050 = load { i64, [2 x i64] }, ptr %l422
  store { i64, [2 x i64] } %t1050, ptr %l410
  br label %bb201
bb197:
  br label %bb198
bb198:
  store %olang.scope zeroinitializer, ptr %s44
  %t1051 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1051, ptr %l424, !tbaa !29
  %t1052 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1052, ptr %l425, !tbaa !29
  %t1053 = load i32, ptr %l29, !tbaa !23
  %t1054 = load ptr, ptr %l425, !tbaa !29
  %t1055 = call ptr @__olang_scope_or(ptr %v2, ptr %t1054)
  %t1056 = ptrtoint ptr %t1055 to i64
  %t1058 = inttoptr i64 %t1056 to ptr
  %t1060 = inttoptr i64 0 to ptr
  %t1061 = load ptr, ptr %l425, !tbaa !29
  %t1063 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t1058, ptr %s44, ptr %t1060, ptr %t1061, i32 %t1053)
  store { i64, ptr } %t1063, ptr %l429
  br label %bb199
bb199:
  %t1064 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t1065 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t1066 = load { i64, ptr }, ptr %l429, !tbaa !27
  %t1067 = extractvalue { i64, ptr } %t1066, 1
  %t1068 = extractvalue { i64, ptr } %t1066, 0
  %t1069 = add i64 %t1065, %t1068
  %t1070 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1069)
  call void @olang_textcopy(ptr %t1070, ptr %t1064, i64 %t1065)
  %t1071 = getelementptr i8, ptr %t1070, i64 %t1065
  call void @olang_textcopy(ptr %t1071, ptr %t1067, i64 %t1068)
  %t1072 = insertvalue { i64, ptr } undef, i64 %t1069, 0
  %t1073 = insertvalue { i64, ptr } %t1072, ptr %t1070, 1
  %t1075 = extractvalue { i64, ptr } %t1073, 0
  %t1076 = extractvalue { i64, ptr } %t1073, 1
  %t1077 = mul i64 %t1075, 1
  %t1078 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1077)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1078, ptr %t1076, i64 %t1077, i1 false)
  %t1079 = insertvalue { i64, ptr } undef, i64 %t1075, 0
  %t1080 = insertvalue { i64, ptr } %t1079, ptr %t1078, 1
  %t1081 = load ptr, ptr %l424, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s44, ptr %v2, ptr %t1081, { i64, ptr } %t1080)
  br label %bb200
bb200:
  call void @__olang_scope_close(ptr %s44)
  call void @__olang_scope_close(ptr %s43)
  br label %ret
bb201:
  %t1083 = load { i64, [2 x i64] }, ptr %l410
  store { i64, [2 x i64] } %t1083, ptr %l31
  %t1084 = load ptr, ptr %l0, !tbaa !29
  %t1086 = getelementptr %"compiler/emit:fnEm", ptr %t1084, i32 0, i32 0
  %t1087 = load ptr, ptr %t1086, !tbaa !29
  store ptr %t1087, ptr %l433, !tbaa !29
  %t1088 = load { i64, [2 x i64] }, ptr %l31
  %t1089 = load ptr, ptr %l433, !tbaa !29
  %t1090 = call ptr @__olang_scope_or(ptr %v2, ptr %t1089)
  %t1091 = ptrtoint ptr %t1090 to i64
  %t1093 = inttoptr i64 %t1091 to ptr
  %t1094 = load ptr, ptr %l433, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %t1093, ptr %t1094, { i64, [2 x i64] } %t1088)
  br label %bb202
bb202:
  %t1096 = load ptr, ptr %l0, !tbaa !29
  %t1098 = getelementptr %"compiler/emit:fnEm", ptr %t1096, i32 0, i32 0
  %t1099 = load ptr, ptr %t1098, !tbaa !29
  %t1101 = getelementptr %"compiler/emit:Emitter", ptr %t1099, i32 0, i32 38
  store ptr %t1101, ptr %l438, !tbaa !29
  %t1102 = load { i64, [2 x i64] }, ptr %l31
  %t1103 = load ptr, ptr %l438, !tbaa !29
  %t1104 = call ptr @__olang_scope_or(ptr %v2, ptr %t1103)
  %t1105 = ptrtoint ptr %t1104 to i64
  %t1107 = inttoptr i64 %t1105 to ptr
  %t1108 = load ptr, ptr %l438, !tbaa !29
  %t1110 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %t1107, ptr %t1108, { i64, [2 x i64] } %t1102)
  store i1 %t1110, ptr %l441
  br label %bb203
bb203:
  %t1111 = load i1, ptr %l441, !tbaa !21
  %t1112 = xor i1 %t1111, true
  br i1 %t1112, label %bb204, label %bb205
bb204:
  %t1114 = load ptr, ptr %l0, !tbaa !29
  %t1116 = getelementptr %"compiler/emit:fnEm", ptr %t1114, i32 0, i32 0
  %t1117 = load ptr, ptr %t1116, !tbaa !29
  %t1119 = getelementptr %"compiler/emit:Emitter", ptr %t1117, i32 0, i32 38
  store ptr %t1119, ptr %l445, !tbaa !29
  %t1120 = load { i64, [2 x i64] }, ptr %l31
  %t1121 = load ptr, ptr %l445, !tbaa !29
  %t1122 = call ptr @__olang_scope_or(ptr %v2, ptr %t1121)
  %t1123 = ptrtoint ptr %t1122 to i64
  %t1125 = inttoptr i64 %t1123 to ptr
  %t1126 = load ptr, ptr %l445, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %t1125, ptr %t1126, { i64, [2 x i64] } %t1120, i1 true)
  br label %bb206
bb205:
  br label %bb208
bb206:
  %t1128 = load ptr, ptr %l0, !tbaa !29
  %t1130 = getelementptr %"compiler/emit:fnEm", ptr %t1128, i32 0, i32 0
  %t1131 = load ptr, ptr %t1130, !tbaa !29
  %t1133 = getelementptr %"compiler/emit:Emitter", ptr %t1131, i32 0, i32 37
  store ptr %t1133, ptr %l450, !tbaa !29
  %t1134 = load { i64, [2 x i64] }, ptr %l31
  %t1135 = load ptr, ptr %l450, !tbaa !29
  %t1136 = call ptr @__olang_scope_or(ptr %v2, ptr %t1135)
  %t1137 = ptrtoint ptr %t1136 to i64
  %t1139 = inttoptr i64 %t1137 to ptr
  %t1140 = load ptr, ptr %l450, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %t1139, ptr %t1140, { i64, [2 x i64] } %t1134)
  br label %bb207
bb207:
  br label %bb208
bb208:
  %t1142 = load ptr, ptr %l0, !tbaa !29
  %t1144 = getelementptr %"compiler/emit:fnEm", ptr %t1142, i32 0, i32 0
  %t1145 = load ptr, ptr %t1144, !tbaa !29
  store ptr %t1145, ptr %l454, !tbaa !29
  %t1146 = load ptr, ptr %l454, !tbaa !29
  %t1147 = call ptr @__olang_scope_or(ptr %v2, ptr %t1146)
  %t1148 = ptrtoint ptr %t1147 to i64
  %t1150 = inttoptr i64 %t1148 to ptr
  %t1151 = load ptr, ptr %l454, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t1150, ptr %s43, ptr %t1151, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d305, i32 0, i32 1) })
  br label %bb209
bb209:
  %t1152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1152, ptr %l456, !tbaa !29
  %t1153 = load ptr, ptr %l0, !tbaa !29
  %t1154 = load { i64, [1 x i64] }, ptr %l28
  %t1157 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s43, ptr %v2, ptr %v3, ptr %t1153, { i64, [1 x i64] } %t1154)
  store { i64, ptr } %t1157, ptr %l459
  br label %bb210
bb210:
  %t1158 = load ptr, ptr %l0, !tbaa !29
  %t1159 = load { i64, [4 x i64] }, ptr %l30
  %t1160 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1164 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s43, ptr %v3, ptr %v2, ptr %t1158, { i64, [4 x i64] } %t1159, i32 %t1160)
  store { i64, ptr } %t1164, ptr %l463
  br label %bb211
bb211:
  %t1165 = load ptr, ptr %l0, !tbaa !29
  %t1167 = getelementptr %"compiler/emit:fnEm", ptr %t1165, i32 0, i32 0
  %t1168 = load ptr, ptr %t1167, !tbaa !29
  store ptr %t1168, ptr %l465, !tbaa !29
  %t1169 = load { i64, [2 x i64] }, ptr %l31
  %t1170 = load ptr, ptr %l465, !tbaa !29
  %t1171 = call ptr @__olang_scope_or(ptr %v2, ptr %t1170)
  %t1172 = ptrtoint ptr %t1171 to i64
  %t1174 = inttoptr i64 %t1172 to ptr
  %t1175 = load ptr, ptr %l465, !tbaa !29
  %t1177 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %t1174, ptr %s43, ptr %t1175, { i64, [2 x i64] } %t1169)
  store { i64, ptr } %t1177, ptr %l468
  br label %bb212
bb212:
  %t1178 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d306, i32 0, i32 1) }, 1
  %t1179 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d306, i32 0, i32 1) }, 0
  %t1180 = load { i64, ptr }, ptr %l459, !tbaa !27
  %t1181 = extractvalue { i64, ptr } %t1180, 1
  %t1182 = extractvalue { i64, ptr } %t1180, 0
  %t1183 = add i64 %t1179, %t1182
  %t1184 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t1185 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t1186 = add i64 %t1183, %t1185
  %t1187 = load { i64, ptr }, ptr %l463, !tbaa !27
  %t1188 = extractvalue { i64, ptr } %t1187, 1
  %t1189 = extractvalue { i64, ptr } %t1187, 0
  %t1190 = add i64 %t1186, %t1189
  %t1191 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d308, i32 0, i32 1) }, 1
  %t1192 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d308, i32 0, i32 1) }, 0
  %t1193 = add i64 %t1190, %t1192
  %t1194 = load { i64, ptr }, ptr %l468, !tbaa !27
  %t1195 = extractvalue { i64, ptr } %t1194, 1
  %t1196 = extractvalue { i64, ptr } %t1194, 0
  %t1197 = add i64 %t1193, %t1196
  %t1198 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t1199 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t1200 = add i64 %t1197, %t1199
  %t1201 = call ptr @__olang_scope_alloc(ptr %s43, i64 %t1200)
  call void @olang_textcopy(ptr %t1201, ptr %t1178, i64 %t1179)
  %t1202 = getelementptr i8, ptr %t1201, i64 %t1179
  call void @olang_textcopy(ptr %t1202, ptr %t1181, i64 %t1182)
  %t1203 = getelementptr i8, ptr %t1202, i64 %t1182
  call void @olang_textcopy(ptr %t1203, ptr %t1184, i64 %t1185)
  %t1204 = getelementptr i8, ptr %t1203, i64 %t1185
  call void @olang_textcopy(ptr %t1204, ptr %t1188, i64 %t1189)
  %t1205 = getelementptr i8, ptr %t1204, i64 %t1189
  call void @olang_textcopy(ptr %t1205, ptr %t1191, i64 %t1192)
  %t1206 = getelementptr i8, ptr %t1205, i64 %t1192
  call void @olang_textcopy(ptr %t1206, ptr %t1195, i64 %t1196)
  %t1207 = getelementptr i8, ptr %t1206, i64 %t1196
  call void @olang_textcopy(ptr %t1207, ptr %t1198, i64 %t1199)
  %t1208 = insertvalue { i64, ptr } undef, i64 %t1200, 0
  %t1209 = insertvalue { i64, ptr } %t1208, ptr %t1201, 1
  %t1211 = extractvalue { i64, ptr } %t1209, 0
  %t1212 = extractvalue { i64, ptr } %t1209, 1
  %t1213 = mul i64 %t1211, 1
  %t1214 = call ptr @__olang_scope_alloc(ptr %s43, i64 %t1213)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1214, ptr %t1212, i64 %t1213, i1 false)
  %t1215 = insertvalue { i64, ptr } undef, i64 %t1211, 0
  %t1216 = insertvalue { i64, ptr } %t1215, ptr %t1214, 1
  %t1217 = load ptr, ptr %l456, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s43, ptr %v2, ptr %t1217, { i64, ptr } %t1216)
  br label %bb213
bb213:
  call void @__olang_scope_close(ptr %s43)
  br label %bb328
bb214:
  %t1219 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1219, ptr %l471, !tbaa !29
  store i1 false, ptr %l472, !tbaa !21
  %t1220 = load ptr, ptr %l471, !tbaa !29
  %t1221 = icmp ne ptr %t1220, null
  br i1 %t1221, label %bb215, label %bb216
bb215:
  %t1223 = load ptr, ptr %l471, !tbaa !29
  %t1224 = load i64, ptr %t1223, !range !{i64 0, i64 19}
  %t1226 = icmp eq i64 %t1224, 6
  store i1 %t1226, ptr %l472, !tbaa !21
  br label %bb216
bb216:
  %t1227 = load i1, ptr %l472, !tbaa !21
  br i1 %t1227, label %bb217, label %bb218
bb217:
  %t1228 = load ptr, ptr %l1, !tbaa !29
  %t1230 = getelementptr { i64, [21 x i64] }, ptr %t1228, i32 0, i32 1
  %t1231 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t1230, i32 0, i32 1
  %t1232 = load %"compiler/mir:Lvalue", ptr %t1231
  store %"compiler/mir:Lvalue" %t1232, ptr %l32
  br label %bb219
bb218:
  br label %bb242
bb219:
  store %olang.scope zeroinitializer, ptr %s48
  %t1234 = load ptr, ptr %l0, !tbaa !29
  %t1235 = load %"compiler/mir:Lvalue", ptr %l32
  %t1238 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s48, ptr %v3, ptr %v2, ptr %t1234, %"compiler/mir:Lvalue" %t1235)
  store { { i64, ptr }, i32 } %t1238, ptr %l479
  br label %bb220
bb220:
  %t1239 = load { { i64, ptr }, i32 }, ptr %l479
  store { { i64, ptr }, i32 } %t1239, ptr %l33
  %t1240 = getelementptr { { i64, ptr }, i32 }, ptr %l33, i32 0, i32 0
  %t1241 = load { i64, ptr }, ptr %t1240, !tbaa !27
  store { i64, ptr } %t1241, ptr %l480, !tbaa !27
  %t1242 = load { i64, ptr }, ptr %l480, !tbaa !27
  %t1243 = extractvalue { i64, ptr } %t1242, 0
  store i64 %t1243, ptr %l481, !tbaa !24
  %t1244 = load i64, ptr %l481, !tbaa !24
  %t1245 = mul i64 %t1244, 1
  %t1246 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1245)
  %t1247 = insertvalue { i64, ptr } undef, i64 %t1244, 0
  %t1248 = insertvalue { i64, ptr } %t1247, ptr %t1246, 1
  store { i64, ptr } %t1248, ptr %l482, !tbaa !27
  %t1249 = getelementptr { i64, ptr }, ptr %l482, i32 0, i32 1
  %t1250 = load ptr, ptr %t1249, !tbaa !27
  %t1251 = getelementptr { i64, ptr }, ptr %l480, i32 0, i32 1
  %t1252 = load ptr, ptr %t1251, !tbaa !27
  %t1253 = load i64, ptr %l481, !tbaa !24
  %t1254 = mul i64 %t1253, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1250, ptr %t1252, i64 %t1254, i1 false)
  %t1255 = load { i64, ptr }, ptr %l482, !tbaa !27
  store { i64, ptr } %t1255, ptr %l34, !tbaa !27
  %t1256 = getelementptr { { i64, ptr }, i32 }, ptr %l33, i32 0, i32 1
  %t1257 = load i32, ptr %t1256, !tbaa !23
  store i32 %t1257, ptr %l35, !tbaa !23
  %t1259 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1259, ptr %l484, !tbaa !29
  %t1260 = load i32, ptr %l35, !tbaa !23
  %t1261 = load ptr, ptr %l484, !tbaa !29
  %t1262 = call ptr @__olang_scope_or(ptr %v2, ptr %t1261)
  %t1263 = ptrtoint ptr %t1262 to i64
  %t1265 = inttoptr i64 %t1263 to ptr
  %t1266 = load ptr, ptr %l484, !tbaa !29
  %t1268 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t1265, ptr %t1266, i32 %t1260)
  store i1 %t1268, ptr %l487
  br label %bb221
bb221:
  %t1269 = load i1, ptr %l487, !tbaa !21
  %t1270 = xor i1 %t1269, true
  br i1 %t1270, label %bb222, label %bb223
bb222:
  %t1272 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1272, ptr %l490, !tbaa !29
  %t1273 = load i32, ptr %l35, !tbaa !23
  %t1274 = load ptr, ptr %l490, !tbaa !29
  %t1275 = call ptr @__olang_scope_or(ptr %v2, ptr %t1274)
  %t1276 = ptrtoint ptr %t1275 to i64
  %t1278 = inttoptr i64 %t1276 to ptr
  %t1279 = load ptr, ptr %l490, !tbaa !29
  %t1281 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %t1278, ptr %t1279, i32 %t1273)
  store i1 %t1281, ptr %l493
  br label %bb224
bb223:
  store i1 false, ptr %l489, !tbaa !21
  br label %bb225
bb224:
  %t1282 = load i1, ptr %l493, !tbaa !21
  %t1283 = xor i1 %t1282, true
  store i1 %t1283, ptr %l489, !tbaa !21
  br label %bb225
bb225:
  %t1285 = load i1, ptr %l489, !tbaa !21
  br i1 %t1285, label %bb226, label %bb227
bb226:
  store %olang.scope zeroinitializer, ptr %s49
  %t1286 = load ptr, ptr %l0, !tbaa !29
  %t1288 = getelementptr %"compiler/emit:fnEm", ptr %t1286, i32 0, i32 0
  %t1289 = load ptr, ptr %t1288, !tbaa !29
  store ptr %t1289, ptr %l496, !tbaa !29
  %t1290 = load ptr, ptr %l496, !tbaa !29
  %t1291 = call ptr @__olang_scope_or(ptr %v2, ptr %t1290)
  %t1292 = ptrtoint ptr %t1291 to i64
  %t1294 = inttoptr i64 %t1292 to ptr
  %t1295 = load ptr, ptr %l496, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t1294, ptr %s49, ptr %t1295, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d310, i32 0, i32 1) })
  br label %bb228
bb227:
  br label %bb233
bb228:
  %t1296 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1296, ptr %l498, !tbaa !29
  %t1297 = load ptr, ptr %l0, !tbaa !29
  %t1298 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1299 = load i32, ptr %l35, !tbaa !23
  %t1303 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eanchorRegion(ptr %v0, ptr %s48, ptr %s49, ptr %v2, ptr %t1297, { i64, ptr } %t1298, i32 %t1299)
  store { i64, ptr } %t1303, ptr %l502
  br label %bb229
bb229:
  %t1304 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t1305 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
  %t1306 = load { i64, ptr }, ptr %l502, !tbaa !27
  %t1307 = extractvalue { i64, ptr } %t1306, 1
  %t1308 = extractvalue { i64, ptr } %t1306, 0
  %t1309 = add i64 %t1305, %t1308
  %t1310 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d312, i32 0, i32 1) }, 1
  %t1311 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d312, i32 0, i32 1) }, 0
  %t1312 = add i64 %t1309, %t1311
  %t1313 = call ptr @__olang_scope_alloc(ptr %s49, i64 %t1312)
  call void @olang_textcopy(ptr %t1313, ptr %t1304, i64 %t1305)
  %t1314 = getelementptr i8, ptr %t1313, i64 %t1305
  call void @olang_textcopy(ptr %t1314, ptr %t1307, i64 %t1308)
  %t1315 = getelementptr i8, ptr %t1314, i64 %t1308
  call void @olang_textcopy(ptr %t1315, ptr %t1310, i64 %t1311)
  %t1316 = insertvalue { i64, ptr } undef, i64 %t1312, 0
  %t1317 = insertvalue { i64, ptr } %t1316, ptr %t1313, 1
  %t1319 = extractvalue { i64, ptr } %t1317, 0
  %t1320 = extractvalue { i64, ptr } %t1317, 1
  %t1321 = mul i64 %t1319, 1
  %t1322 = call ptr @__olang_scope_alloc(ptr %s49, i64 %t1321)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1322, ptr %t1320, i64 %t1321, i1 false)
  %t1323 = insertvalue { i64, ptr } undef, i64 %t1319, 0
  %t1324 = insertvalue { i64, ptr } %t1323, ptr %t1322, 1
  %t1325 = load ptr, ptr %l498, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s49, ptr %v2, ptr %t1325, { i64, ptr } %t1324)
  br label %bb230
bb230:
  %t1327 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1327, ptr %l505, !tbaa !29
  %t1328 = load ptr, ptr %l0, !tbaa !29
  %t1329 = load i32, ptr %l35, !tbaa !23
  %t1332 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s49, ptr %v2, ptr %t1328, i32 %t1329)
  store { i64, ptr } %t1332, ptr %l508
  br label %bb231
bb231:
  %t1333 = load { i64, ptr }, ptr %l508, !tbaa !27
  %t1334 = extractvalue { i64, ptr } %t1333, 0
  %t1335 = extractvalue { i64, ptr } %t1333, 1
  %t1336 = mul i64 %t1334, 1
  %t1337 = call ptr @__olang_scope_alloc(ptr %s49, i64 %t1336)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1337, ptr %t1335, i64 %t1336, i1 false)
  %t1338 = insertvalue { i64, ptr } undef, i64 %t1334, 0
  %t1339 = insertvalue { i64, ptr } %t1338, ptr %t1337, 1
  %t1340 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1341 = load ptr, ptr %l505, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s49, ptr %s49, ptr %s48, ptr %s49, ptr %v2, ptr %t1341, { i64, ptr } %t1339, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d313, i32 0, i32 1) }, { i64, ptr } %t1340, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d257, i32 0, i32 1) })
  br label %bb232
bb232:
  call void @__olang_scope_close(ptr %s49)
  call void @__olang_scope_close(ptr %s48)
  br label %ret
bb233:
  %t1344 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1344, ptr %l511, !tbaa !29
  %t1345 = load ptr, ptr %l0, !tbaa !29
  %t1346 = load i32, ptr %l35, !tbaa !23
  %t1349 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s48, ptr %v2, ptr %t1345, i32 %t1346)
  store { i64, ptr } %t1349, ptr %l514
  br label %bb234
bb234:
  %t1350 = load { i64, ptr }, ptr %l514, !tbaa !27
  %t1351 = extractvalue { i64, ptr } %t1350, 0
  %t1352 = extractvalue { i64, ptr } %t1350, 1
  %t1353 = mul i64 %t1351, 1
  %t1354 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1353)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1354, ptr %t1352, i64 %t1353, i1 false)
  %t1355 = insertvalue { i64, ptr } undef, i64 %t1351, 0
  %t1356 = insertvalue { i64, ptr } %t1355, ptr %t1354, 1
  %t1357 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1358 = load ptr, ptr %l511, !tbaa !29
  %t1361 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s48, ptr %s48, ptr %s48, ptr %s48, ptr %v2, ptr %t1358, { i64, ptr } %t1356, { i64, ptr } %t1357, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t1361, ptr %l517
  br label %bb235
bb235:
  %t1362 = load { i64, ptr }, ptr %l517, !tbaa !27
  store { i64, ptr } %t1362, ptr %l36, !tbaa !27
  %t1363 = load ptr, ptr %l0, !tbaa !29
  %t1365 = getelementptr %"compiler/emit:fnEm", ptr %t1363, i32 0, i32 0
  %t1366 = load ptr, ptr %t1365, !tbaa !29
  store ptr %t1366, ptr %l519, !tbaa !29
  %t1367 = load ptr, ptr %l519, !tbaa !29
  %t1368 = call ptr @__olang_scope_or(ptr %v2, ptr %t1367)
  %t1369 = ptrtoint ptr %t1368 to i64
  %t1371 = inttoptr i64 %t1369 to ptr
  %t1372 = load ptr, ptr %l519, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t1371, ptr %s48, ptr %t1372, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d314, i32 0, i32 1) })
  br label %bb236
bb236:
  %t1373 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1373, ptr %l521, !tbaa !29
  %t1374 = load ptr, ptr %l0, !tbaa !29
  %t1375 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t1376 = load i32, ptr %l35, !tbaa !23
  %t1380 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %s48, ptr %s48, ptr %v2, ptr %t1374, { i64, ptr } %t1375, i32 %t1376)
  store { i64, ptr } %t1380, ptr %l525
  br label %bb237
bb237:
  %t1381 = load { i64, ptr }, ptr %l525, !tbaa !27
  %t1382 = extractvalue { i64, ptr } %t1381, 0
  store i64 %t1382, ptr %l526, !tbaa !24
  %t1383 = load i64, ptr %l526, !tbaa !24
  %t1384 = mul i64 %t1383, 1
  %t1385 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1384)
  %t1386 = insertvalue { i64, ptr } undef, i64 %t1383, 0
  %t1387 = insertvalue { i64, ptr } %t1386, ptr %t1385, 1
  store { i64, ptr } %t1387, ptr %l527, !tbaa !27
  %t1388 = getelementptr { i64, ptr }, ptr %l527, i32 0, i32 1
  %t1389 = load ptr, ptr %t1388, !tbaa !27
  %t1390 = getelementptr { i64, ptr }, ptr %l525, i32 0, i32 1
  %t1391 = load ptr, ptr %t1390, !tbaa !27
  %t1392 = load i64, ptr %l526, !tbaa !24
  %t1393 = mul i64 %t1392, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1389, ptr %t1391, i64 %t1393, i1 false)
  %t1394 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t1395 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
  %t1396 = load { i64, ptr }, ptr %l527, !tbaa !27
  %t1397 = extractvalue { i64, ptr } %t1396, 1
  %t1398 = extractvalue { i64, ptr } %t1396, 0
  %t1399 = add i64 %t1395, %t1398
  %t1400 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t1401 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t1402 = add i64 %t1399, %t1401
  %t1403 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1402)
  call void @olang_textcopy(ptr %t1403, ptr %t1394, i64 %t1395)
  %t1404 = getelementptr i8, ptr %t1403, i64 %t1395
  call void @olang_textcopy(ptr %t1404, ptr %t1397, i64 %t1398)
  %t1405 = getelementptr i8, ptr %t1404, i64 %t1398
  call void @olang_textcopy(ptr %t1405, ptr %t1400, i64 %t1401)
  %t1406 = insertvalue { i64, ptr } undef, i64 %t1402, 0
  %t1407 = insertvalue { i64, ptr } %t1406, ptr %t1403, 1
  %t1409 = extractvalue { i64, ptr } %t1407, 0
  %t1410 = extractvalue { i64, ptr } %t1407, 1
  %t1411 = mul i64 %t1409, 1
  %t1412 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1411)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1412, ptr %t1410, i64 %t1411, i1 false)
  %t1413 = insertvalue { i64, ptr } undef, i64 %t1409, 0
  %t1414 = insertvalue { i64, ptr } %t1413, ptr %t1412, 1
  %t1415 = load ptr, ptr %l521, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s48, ptr %v2, ptr %t1415, { i64, ptr } %t1414)
  br label %bb238
bb238:
  %t1417 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1417, ptr %l530, !tbaa !29
  %t1418 = load ptr, ptr %l0, !tbaa !29
  %t1419 = load i32, ptr %l35, !tbaa !23
  %t1422 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s48, ptr %v2, ptr %t1418, i32 %t1419)
  store { i64, ptr } %t1422, ptr %l533
  br label %bb239
bb239:
  %t1423 = load { i64, ptr }, ptr %l533, !tbaa !27
  %t1424 = extractvalue { i64, ptr } %t1423, 0
  %t1425 = extractvalue { i64, ptr } %t1423, 1
  %t1426 = mul i64 %t1424, 1
  %t1427 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1426)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1427, ptr %t1425, i64 %t1426, i1 false)
  %t1428 = insertvalue { i64, ptr } undef, i64 %t1424, 0
  %t1429 = insertvalue { i64, ptr } %t1428, ptr %t1427, 1
  store { i64, ptr } %t1429, ptr %l534, !tbaa !27
  %t1430 = load ptr, ptr %l0, !tbaa !29
  %t1432 = getelementptr %"compiler/emit:fnEm", ptr %t1430, i32 0, i32 0
  %t1433 = load ptr, ptr %t1432, !tbaa !29
  store ptr %t1433, ptr %l536, !tbaa !29
  %t1434 = load i32, ptr %l35, !tbaa !23
  %t1435 = load ptr, ptr %l536, !tbaa !29
  %t1436 = call ptr @__olang_scope_or(ptr %v2, ptr %t1435)
  %t1437 = ptrtoint ptr %t1436 to i64
  %t1439 = inttoptr i64 %t1437 to ptr
  %t1440 = load ptr, ptr %l536, !tbaa !29
  %t1442 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %t1439, ptr %s48, ptr %t1440, i32 %t1434, i64 0)
  store { i64, ptr } %t1442, ptr %l539
  br label %bb240
bb240:
  %t1443 = load { i64, ptr }, ptr %l539, !tbaa !27
  %t1444 = extractvalue { i64, ptr } %t1443, 0
  %t1445 = extractvalue { i64, ptr } %t1443, 1
  %t1446 = mul i64 %t1444, 1
  %t1447 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1446)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1447, ptr %t1445, i64 %t1446, i1 false)
  %t1448 = insertvalue { i64, ptr } undef, i64 %t1444, 0
  %t1449 = insertvalue { i64, ptr } %t1448, ptr %t1447, 1
  %t1450 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1451 = load ptr, ptr %l530, !tbaa !29
  %t1452 = load { i64, ptr }, ptr %l534, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s48, ptr %s48, ptr %s48, ptr %s48, ptr %v2, ptr %t1451, { i64, ptr } %t1452, { i64, ptr } %t1449, { i64, ptr } %t1450, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d257, i32 0, i32 1) })
  br label %bb241
bb241:
  call void @__olang_scope_close(ptr %s48)
  br label %bb328
bb242:
  %t1455 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1455, ptr %l542, !tbaa !29
  store i1 false, ptr %l543, !tbaa !21
  %t1456 = load ptr, ptr %l542, !tbaa !29
  %t1457 = icmp ne ptr %t1456, null
  br i1 %t1457, label %bb243, label %bb244
bb243:
  %t1459 = load ptr, ptr %l542, !tbaa !29
  %t1460 = load i64, ptr %t1459, !range !{i64 0, i64 19}
  %t1462 = icmp eq i64 %t1460, 8
  store i1 %t1462, ptr %l543, !tbaa !21
  br label %bb244
bb244:
  %t1463 = load i1, ptr %l543, !tbaa !21
  br i1 %t1463, label %bb245, label %bb246
bb245:
  %t1464 = load ptr, ptr %l1, !tbaa !29
  %t1466 = getelementptr { i64, [21 x i64] }, ptr %t1464, i32 0, i32 1
  %t1467 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t1466, i32 0, i32 1
  %t1468 = load %"compiler/mir:Lvalue", ptr %t1467
  store %"compiler/mir:Lvalue" %t1468, ptr %l37
  br label %bb247
bb246:
  br label %bb258
bb247:
  store %olang.scope zeroinitializer, ptr %s52
  %t1470 = load ptr, ptr %l0, !tbaa !29
  %t1471 = load %"compiler/mir:Lvalue", ptr %l37
  %t1474 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s52, ptr %v3, ptr %v2, ptr %t1470, %"compiler/mir:Lvalue" %t1471)
  store { { i64, ptr }, i32 } %t1474, ptr %l550
  br label %bb248
bb248:
  %t1475 = load { { i64, ptr }, i32 }, ptr %l550
  store { { i64, ptr }, i32 } %t1475, ptr %l38
  %t1476 = getelementptr { { i64, ptr }, i32 }, ptr %l38, i32 0, i32 0
  %t1477 = load { i64, ptr }, ptr %t1476, !tbaa !27
  store { i64, ptr } %t1477, ptr %l39, !tbaa !27
  %t1479 = getelementptr { { i64, ptr }, i32 }, ptr %l38, i32 0, i32 1
  %t1480 = load i32, ptr %t1479, !tbaa !23
  store i32 %t1480, ptr %l40, !tbaa !23
  %t1482 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1482, ptr %l553, !tbaa !29
  %t1483 = load ptr, ptr %l0, !tbaa !29
  %t1484 = load i32, ptr %l40, !tbaa !23
  %t1487 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s52, ptr %v2, ptr %t1483, i32 %t1484)
  store { i64, ptr } %t1487, ptr %l556
  br label %bb249
bb249:
  %t1488 = load { i64, ptr }, ptr %l556, !tbaa !27
  %t1489 = extractvalue { i64, ptr } %t1488, 0
  %t1490 = extractvalue { i64, ptr } %t1488, 1
  %t1491 = mul i64 %t1489, 1
  %t1492 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1491)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1492, ptr %t1490, i64 %t1491, i1 false)
  %t1493 = insertvalue { i64, ptr } undef, i64 %t1489, 0
  %t1494 = insertvalue { i64, ptr } %t1493, ptr %t1492, 1
  %t1495 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t1496 = load ptr, ptr %l553, !tbaa !29
  %t1499 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s52, ptr %s52, ptr %s52, ptr %s52, ptr %v2, ptr %t1496, { i64, ptr } %t1494, { i64, ptr } %t1495, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t1499, ptr %l559
  br label %bb250
bb250:
  %t1500 = load { i64, ptr }, ptr %l559, !tbaa !27
  store { i64, ptr } %t1500, ptr %l41, !tbaa !27
  %t1501 = load ptr, ptr %l0, !tbaa !29
  %t1503 = getelementptr %"compiler/emit:fnEm", ptr %t1501, i32 0, i32 0
  %t1504 = load ptr, ptr %t1503, !tbaa !29
  store ptr %t1504, ptr %l561, !tbaa !29
  %t1505 = load ptr, ptr %l561, !tbaa !29
  %t1506 = call ptr @__olang_scope_or(ptr %v2, ptr %t1505)
  %t1507 = ptrtoint ptr %t1506 to i64
  %t1509 = inttoptr i64 %t1507 to ptr
  %t1510 = load ptr, ptr %l561, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t1509, ptr %s52, ptr %t1510, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d317, i32 0, i32 1) })
  br label %bb251
bb251:
  %t1511 = load ptr, ptr %l0, !tbaa !29
  %t1512 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1513 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t1514 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
  %t1516 = extractvalue { i64, ptr } %t1512, 1
  %t1517 = extractvalue { i64, ptr } %t1512, 0
  %t1518 = add i64 %t1514, %t1517
  %t1519 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d319, i32 0, i32 1) }, 1
  %t1520 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d319, i32 0, i32 1) }, 0
  %t1521 = add i64 %t1518, %t1520
  %t1522 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1521)
  call void @olang_textcopy(ptr %t1522, ptr %t1513, i64 %t1514)
  %t1523 = getelementptr i8, ptr %t1522, i64 %t1514
  call void @olang_textcopy(ptr %t1523, ptr %t1516, i64 %t1517)
  %t1524 = getelementptr i8, ptr %t1523, i64 %t1517
  call void @olang_textcopy(ptr %t1524, ptr %t1519, i64 %t1520)
  %t1525 = insertvalue { i64, ptr } undef, i64 %t1521, 0
  %t1526 = insertvalue { i64, ptr } %t1525, ptr %t1522, 1
  %t1528 = extractvalue { i64, ptr } %t1526, 0
  %t1529 = extractvalue { i64, ptr } %t1526, 1
  %t1530 = mul i64 %t1528, 1
  %t1531 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1530)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1531, ptr %t1529, i64 %t1530, i1 false)
  %t1532 = insertvalue { i64, ptr } undef, i64 %t1528, 0
  %t1533 = insertvalue { i64, ptr } %t1532, ptr %t1531, 1
  %t1536 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s52, ptr %s52, ptr %v2, ptr %t1511, { i64, ptr } %t1533)
  store { i64, ptr } %t1536, ptr %l567
  br label %bb252
bb252:
  %t1537 = load { i64, ptr }, ptr %l567, !tbaa !27
  store { i64, ptr } %t1537, ptr %l42, !tbaa !27
  %t1538 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1538, ptr %l568, !tbaa !29
  %t1539 = load ptr, ptr %l0, !tbaa !29
  %t1540 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1541 = load i32, ptr %l40, !tbaa !23
  %t1545 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %s52, ptr %s52, ptr %v2, ptr %t1539, { i64, ptr } %t1540, i32 %t1541)
  store { i64, ptr } %t1545, ptr %l572
  br label %bb253
bb253:
  %t1546 = load { i64, ptr }, ptr %l572, !tbaa !27
  %t1547 = extractvalue { i64, ptr } %t1546, 0
  store i64 %t1547, ptr %l573, !tbaa !24
  %t1548 = load i64, ptr %l573, !tbaa !24
  %t1549 = mul i64 %t1548, 1
  %t1550 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1549)
  %t1551 = insertvalue { i64, ptr } undef, i64 %t1548, 0
  %t1552 = insertvalue { i64, ptr } %t1551, ptr %t1550, 1
  store { i64, ptr } %t1552, ptr %l574, !tbaa !27
  %t1553 = getelementptr { i64, ptr }, ptr %l574, i32 0, i32 1
  %t1554 = load ptr, ptr %t1553, !tbaa !27
  %t1555 = getelementptr { i64, ptr }, ptr %l572, i32 0, i32 1
  %t1556 = load ptr, ptr %t1555, !tbaa !27
  %t1557 = load i64, ptr %l573, !tbaa !24
  %t1558 = mul i64 %t1557, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1554, ptr %t1556, i64 %t1558, i1 false)
  %t1559 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t1560 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d320, i32 0, i32 1) }, 1
  %t1561 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d320, i32 0, i32 1) }, 0
  %t1562 = load { i64, ptr }, ptr %l574, !tbaa !27
  %t1563 = extractvalue { i64, ptr } %t1562, 1
  %t1564 = extractvalue { i64, ptr } %t1562, 0
  %t1565 = add i64 %t1561, %t1564
  %t1566 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t1567 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t1568 = add i64 %t1565, %t1567
  %t1570 = extractvalue { i64, ptr } %t1559, 1
  %t1571 = extractvalue { i64, ptr } %t1559, 0
  %t1572 = add i64 %t1568, %t1571
  %t1573 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d322, i32 0, i32 1) }, 1
  %t1574 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d322, i32 0, i32 1) }, 0
  %t1575 = add i64 %t1572, %t1574
  %t1576 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1575)
  call void @olang_textcopy(ptr %t1576, ptr %t1560, i64 %t1561)
  %t1577 = getelementptr i8, ptr %t1576, i64 %t1561
  call void @olang_textcopy(ptr %t1577, ptr %t1563, i64 %t1564)
  %t1578 = getelementptr i8, ptr %t1577, i64 %t1564
  call void @olang_textcopy(ptr %t1578, ptr %t1566, i64 %t1567)
  %t1579 = getelementptr i8, ptr %t1578, i64 %t1567
  call void @olang_textcopy(ptr %t1579, ptr %t1570, i64 %t1571)
  %t1580 = getelementptr i8, ptr %t1579, i64 %t1571
  call void @olang_textcopy(ptr %t1580, ptr %t1573, i64 %t1574)
  %t1581 = insertvalue { i64, ptr } undef, i64 %t1575, 0
  %t1582 = insertvalue { i64, ptr } %t1581, ptr %t1576, 1
  %t1584 = extractvalue { i64, ptr } %t1582, 0
  %t1585 = extractvalue { i64, ptr } %t1582, 1
  %t1586 = mul i64 %t1584, 1
  %t1587 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1586)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1587, ptr %t1585, i64 %t1586, i1 false)
  %t1588 = insertvalue { i64, ptr } undef, i64 %t1584, 0
  %t1589 = insertvalue { i64, ptr } %t1588, ptr %t1587, 1
  %t1590 = load ptr, ptr %l568, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s52, ptr %v2, ptr %t1590, { i64, ptr } %t1589)
  br label %bb254
bb254:
  %t1592 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1592, ptr %l578, !tbaa !29
  %t1593 = load ptr, ptr %l0, !tbaa !29
  %t1594 = load i32, ptr %l40, !tbaa !23
  %t1597 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s52, ptr %v2, ptr %t1593, i32 %t1594)
  store { i64, ptr } %t1597, ptr %l581
  br label %bb255
bb255:
  %t1598 = load { i64, ptr }, ptr %l581, !tbaa !27
  %t1599 = extractvalue { i64, ptr } %t1598, 0
  %t1600 = extractvalue { i64, ptr } %t1598, 1
  %t1601 = mul i64 %t1599, 1
  %t1602 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1601)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1602, ptr %t1600, i64 %t1601, i1 false)
  %t1603 = insertvalue { i64, ptr } undef, i64 %t1599, 0
  %t1604 = insertvalue { i64, ptr } %t1603, ptr %t1602, 1
  store { i64, ptr } %t1604, ptr %l582, !tbaa !27
  %t1605 = load ptr, ptr %l0, !tbaa !29
  %t1607 = getelementptr %"compiler/emit:fnEm", ptr %t1605, i32 0, i32 0
  %t1608 = load ptr, ptr %t1607, !tbaa !29
  store ptr %t1608, ptr %l584, !tbaa !29
  %t1609 = load i32, ptr %l40, !tbaa !23
  %t1610 = load ptr, ptr %l584, !tbaa !29
  %t1611 = call ptr @__olang_scope_or(ptr %v2, ptr %t1610)
  %t1612 = ptrtoint ptr %t1611 to i64
  %t1614 = inttoptr i64 %t1612 to ptr
  %t1615 = load ptr, ptr %l584, !tbaa !29
  %t1617 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %t1614, ptr %s52, ptr %t1615, i32 %t1609, i64 0)
  store { i64, ptr } %t1617, ptr %l587
  br label %bb256
bb256:
  %t1618 = load { i64, ptr }, ptr %l587, !tbaa !27
  %t1619 = extractvalue { i64, ptr } %t1618, 0
  %t1620 = extractvalue { i64, ptr } %t1618, 1
  %t1621 = mul i64 %t1619, 1
  %t1622 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1621)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1622, ptr %t1620, i64 %t1621, i1 false)
  %t1623 = insertvalue { i64, ptr } undef, i64 %t1619, 0
  %t1624 = insertvalue { i64, ptr } %t1623, ptr %t1622, 1
  %t1625 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t1626 = load ptr, ptr %l578, !tbaa !29
  %t1627 = load { i64, ptr }, ptr %l582, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s52, ptr %s52, ptr %s52, ptr %s52, ptr %v2, ptr %t1626, { i64, ptr } %t1627, { i64, ptr } %t1624, { i64, ptr } %t1625, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d257, i32 0, i32 1) })
  br label %bb257
bb257:
  call void @__olang_scope_close(ptr %s52)
  br label %bb328
bb258:
  %t1630 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1630, ptr %l590, !tbaa !29
  store i1 false, ptr %l591, !tbaa !21
  %t1631 = load ptr, ptr %l590, !tbaa !29
  %t1632 = icmp ne ptr %t1631, null
  br i1 %t1632, label %bb259, label %bb260
bb259:
  %t1634 = load ptr, ptr %l590, !tbaa !29
  %t1635 = load i64, ptr %t1634, !range !{i64 0, i64 19}
  %t1637 = icmp eq i64 %t1635, 7
  store i1 %t1637, ptr %l591, !tbaa !21
  br label %bb260
bb260:
  %t1638 = load i1, ptr %l591, !tbaa !21
  br i1 %t1638, label %bb261, label %bb262
bb261:
  %t1639 = load ptr, ptr %l1, !tbaa !29
  %t1641 = getelementptr { i64, [21 x i64] }, ptr %t1639, i32 0, i32 1
  %t1642 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t1641, i32 0, i32 1
  %t1643 = load %"compiler/mir:Lvalue", ptr %t1642
  store %"compiler/mir:Lvalue" %t1643, ptr %l43
  br label %bb263
bb262:
  br label %bb273
bb263:
  store %olang.scope zeroinitializer, ptr %s55
  %t1645 = load ptr, ptr %l0, !tbaa !29
  %t1646 = load %"compiler/mir:Lvalue", ptr %l43
  %t1649 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s55, ptr %v3, ptr %v2, ptr %t1645, %"compiler/mir:Lvalue" %t1646)
  store { { i64, ptr }, i32 } %t1649, ptr %l598
  br label %bb264
bb264:
  %t1650 = load { { i64, ptr }, i32 }, ptr %l598
  store { { i64, ptr }, i32 } %t1650, ptr %l44
  %t1651 = getelementptr { { i64, ptr }, i32 }, ptr %l44, i32 0, i32 0
  %t1652 = load { i64, ptr }, ptr %t1651, !tbaa !27
  store { i64, ptr } %t1652, ptr %l45, !tbaa !27
  %t1654 = getelementptr { { i64, ptr }, i32 }, ptr %l44, i32 0, i32 1
  %t1655 = load i32, ptr %t1654, !tbaa !23
  store i32 %t1655, ptr %l46, !tbaa !23
  %t1657 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1657, ptr %l601, !tbaa !29
  %t1658 = load ptr, ptr %l0, !tbaa !29
  %t1659 = load i32, ptr %l46, !tbaa !23
  %t1662 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s55, ptr %v2, ptr %t1658, i32 %t1659)
  store { i64, ptr } %t1662, ptr %l604
  br label %bb265
bb265:
  %t1663 = load { i64, ptr }, ptr %l604, !tbaa !27
  %t1664 = extractvalue { i64, ptr } %t1663, 0
  %t1665 = extractvalue { i64, ptr } %t1663, 1
  %t1666 = mul i64 %t1664, 1
  %t1667 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1666)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1667, ptr %t1665, i64 %t1666, i1 false)
  %t1668 = insertvalue { i64, ptr } undef, i64 %t1664, 0
  %t1669 = insertvalue { i64, ptr } %t1668, ptr %t1667, 1
  %t1670 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t1671 = load ptr, ptr %l601, !tbaa !29
  %t1674 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s55, ptr %s55, ptr %s55, ptr %s55, ptr %v2, ptr %t1671, { i64, ptr } %t1669, { i64, ptr } %t1670, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t1674, ptr %l607
  br label %bb266
bb266:
  %t1675 = load { i64, ptr }, ptr %l607, !tbaa !27
  store { i64, ptr } %t1675, ptr %l47, !tbaa !27
  %t1676 = load ptr, ptr %l0, !tbaa !29
  %t1678 = getelementptr %"compiler/emit:fnEm", ptr %t1676, i32 0, i32 0
  %t1679 = load ptr, ptr %t1678, !tbaa !29
  store ptr %t1679, ptr %l609, !tbaa !29
  %t1680 = load ptr, ptr %l609, !tbaa !29
  %t1681 = call ptr @__olang_scope_or(ptr %v2, ptr %t1680)
  %t1682 = ptrtoint ptr %t1681 to i64
  %t1684 = inttoptr i64 %t1682 to ptr
  %t1685 = load ptr, ptr %l609, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t1684, ptr %s55, ptr %t1685, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d323, i32 0, i32 1) })
  br label %bb267
bb267:
  %t1686 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1686, ptr %l611, !tbaa !29
  %t1687 = load ptr, ptr %l0, !tbaa !29
  %t1688 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t1689 = load i32, ptr %l46, !tbaa !23
  %t1693 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %s55, ptr %s55, ptr %v2, ptr %t1687, { i64, ptr } %t1688, i32 %t1689)
  store { i64, ptr } %t1693, ptr %l615
  br label %bb268
bb268:
  %t1694 = load { i64, ptr }, ptr %l615, !tbaa !27
  %t1695 = extractvalue { i64, ptr } %t1694, 0
  store i64 %t1695, ptr %l616, !tbaa !24
  %t1696 = load i64, ptr %l616, !tbaa !24
  %t1697 = mul i64 %t1696, 1
  %t1698 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1697)
  %t1699 = insertvalue { i64, ptr } undef, i64 %t1696, 0
  %t1700 = insertvalue { i64, ptr } %t1699, ptr %t1698, 1
  store { i64, ptr } %t1700, ptr %l617, !tbaa !27
  %t1701 = getelementptr { i64, ptr }, ptr %l617, i32 0, i32 1
  %t1702 = load ptr, ptr %t1701, !tbaa !27
  %t1703 = getelementptr { i64, ptr }, ptr %l615, i32 0, i32 1
  %t1704 = load ptr, ptr %t1703, !tbaa !27
  %t1705 = load i64, ptr %l616, !tbaa !24
  %t1706 = mul i64 %t1705, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1702, ptr %t1704, i64 %t1706, i1 false)
  %t1707 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t1708 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t1709 = load { i64, ptr }, ptr %l617, !tbaa !27
  %t1710 = extractvalue { i64, ptr } %t1709, 1
  %t1711 = extractvalue { i64, ptr } %t1709, 0
  %t1712 = add i64 %t1708, %t1711
  %t1713 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t1714 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t1715 = add i64 %t1712, %t1714
  %t1716 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1715)
  call void @olang_textcopy(ptr %t1716, ptr %t1707, i64 %t1708)
  %t1717 = getelementptr i8, ptr %t1716, i64 %t1708
  call void @olang_textcopy(ptr %t1717, ptr %t1710, i64 %t1711)
  %t1718 = getelementptr i8, ptr %t1717, i64 %t1711
  call void @olang_textcopy(ptr %t1718, ptr %t1713, i64 %t1714)
  %t1719 = insertvalue { i64, ptr } undef, i64 %t1715, 0
  %t1720 = insertvalue { i64, ptr } %t1719, ptr %t1716, 1
  %t1722 = extractvalue { i64, ptr } %t1720, 0
  %t1723 = extractvalue { i64, ptr } %t1720, 1
  %t1724 = mul i64 %t1722, 1
  %t1725 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1724)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1725, ptr %t1723, i64 %t1724, i1 false)
  %t1726 = insertvalue { i64, ptr } undef, i64 %t1722, 0
  %t1727 = insertvalue { i64, ptr } %t1726, ptr %t1725, 1
  %t1728 = load ptr, ptr %l611, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s55, ptr %v2, ptr %t1728, { i64, ptr } %t1727)
  br label %bb269
bb269:
  %t1730 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1730, ptr %l620, !tbaa !29
  %t1731 = load ptr, ptr %l0, !tbaa !29
  %t1732 = load i32, ptr %l46, !tbaa !23
  %t1735 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s55, ptr %v2, ptr %t1731, i32 %t1732)
  store { i64, ptr } %t1735, ptr %l623
  br label %bb270
bb270:
  %t1736 = load { i64, ptr }, ptr %l623, !tbaa !27
  %t1737 = extractvalue { i64, ptr } %t1736, 0
  %t1738 = extractvalue { i64, ptr } %t1736, 1
  %t1739 = mul i64 %t1737, 1
  %t1740 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1739)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1740, ptr %t1738, i64 %t1739, i1 false)
  %t1741 = insertvalue { i64, ptr } undef, i64 %t1737, 0
  %t1742 = insertvalue { i64, ptr } %t1741, ptr %t1740, 1
  store { i64, ptr } %t1742, ptr %l624, !tbaa !27
  %t1743 = load ptr, ptr %l0, !tbaa !29
  %t1745 = getelementptr %"compiler/emit:fnEm", ptr %t1743, i32 0, i32 0
  %t1746 = load ptr, ptr %t1745, !tbaa !29
  store ptr %t1746, ptr %l626, !tbaa !29
  %t1747 = load i32, ptr %l46, !tbaa !23
  %t1748 = load ptr, ptr %l626, !tbaa !29
  %t1749 = call ptr @__olang_scope_or(ptr %v2, ptr %t1748)
  %t1750 = ptrtoint ptr %t1749 to i64
  %t1752 = inttoptr i64 %t1750 to ptr
  %t1753 = load ptr, ptr %l626, !tbaa !29
  %t1755 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %t1752, ptr %s55, ptr %t1753, i32 %t1747, i64 0)
  store { i64, ptr } %t1755, ptr %l629
  br label %bb271
bb271:
  %t1756 = load { i64, ptr }, ptr %l629, !tbaa !27
  %t1757 = extractvalue { i64, ptr } %t1756, 0
  %t1758 = extractvalue { i64, ptr } %t1756, 1
  %t1759 = mul i64 %t1757, 1
  %t1760 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1759)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1760, ptr %t1758, i64 %t1759, i1 false)
  %t1761 = insertvalue { i64, ptr } undef, i64 %t1757, 0
  %t1762 = insertvalue { i64, ptr } %t1761, ptr %t1760, 1
  %t1763 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t1764 = load ptr, ptr %l620, !tbaa !29
  %t1765 = load { i64, ptr }, ptr %l624, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s55, ptr %s55, ptr %s55, ptr %s55, ptr %v2, ptr %t1764, { i64, ptr } %t1765, { i64, ptr } %t1762, { i64, ptr } %t1763, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d257, i32 0, i32 1) })
  br label %bb272
bb272:
  call void @__olang_scope_close(ptr %s55)
  br label %bb328
bb273:
  %t1768 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1768, ptr %l632, !tbaa !29
  store i1 false, ptr %l633, !tbaa !21
  %t1769 = load ptr, ptr %l632, !tbaa !29
  %t1770 = icmp ne ptr %t1769, null
  br i1 %t1770, label %bb274, label %bb275
bb274:
  %t1772 = load ptr, ptr %l632, !tbaa !29
  %t1773 = load i64, ptr %t1772, !range !{i64 0, i64 19}
  %t1775 = icmp eq i64 %t1773, 9
  store i1 %t1775, ptr %l633, !tbaa !21
  br label %bb275
bb275:
  %t1776 = load i1, ptr %l633, !tbaa !21
  br i1 %t1776, label %bb276, label %bb277
bb276:
  %t1777 = load ptr, ptr %l1, !tbaa !29
  %t1779 = getelementptr { i64, [21 x i64] }, ptr %t1777, i32 0, i32 1
  %t1780 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t1779, i32 0, i32 1
  %t1781 = load i32, ptr %t1780
  store i32 %t1781, ptr %l48, !tbaa !23
  %t1783 = load ptr, ptr %l1, !tbaa !29
  %t1785 = getelementptr { i64, [21 x i64] }, ptr %t1783, i32 0, i32 1
  %t1786 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t1785, i32 0, i32 2
  %t1787 = load %"compiler/mir:Lvalue", ptr %t1786
  store %"compiler/mir:Lvalue" %t1787, ptr %l49
  br label %bb278
bb277:
  br label %bb287
bb278:
  store %olang.scope zeroinitializer, ptr %s57
  %t1789 = load ptr, ptr %l0, !tbaa !29
  %t1790 = load %"compiler/mir:Lvalue", ptr %l49
  %t1793 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s57, ptr %v3, ptr %v2, ptr %t1789, %"compiler/mir:Lvalue" %t1790)
  store { { i64, ptr }, i32 } %t1793, ptr %l642
  br label %bb279
bb279:
  %t1794 = load { { i64, ptr }, i32 }, ptr %l642
  store { { i64, ptr }, i32 } %t1794, ptr %l50
  %t1795 = getelementptr { { i64, ptr }, i32 }, ptr %l50, i32 0, i32 0
  %t1796 = load { i64, ptr }, ptr %t1795, !tbaa !27
  store { i64, ptr } %t1796, ptr %l643, !tbaa !27
  %t1797 = load { i64, ptr }, ptr %l643, !tbaa !27
  %t1798 = extractvalue { i64, ptr } %t1797, 0
  store i64 %t1798, ptr %l644, !tbaa !24
  %t1799 = load i64, ptr %l644, !tbaa !24
  %t1800 = mul i64 %t1799, 1
  %t1801 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1800)
  %t1802 = insertvalue { i64, ptr } undef, i64 %t1799, 0
  %t1803 = insertvalue { i64, ptr } %t1802, ptr %t1801, 1
  store { i64, ptr } %t1803, ptr %l645, !tbaa !27
  %t1804 = getelementptr { i64, ptr }, ptr %l645, i32 0, i32 1
  %t1805 = load ptr, ptr %t1804, !tbaa !27
  %t1806 = getelementptr { i64, ptr }, ptr %l643, i32 0, i32 1
  %t1807 = load ptr, ptr %t1806, !tbaa !27
  %t1808 = load i64, ptr %l644, !tbaa !24
  %t1809 = mul i64 %t1808, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1805, ptr %t1807, i64 %t1809, i1 false)
  %t1810 = load { i64, ptr }, ptr %l645, !tbaa !27
  store { i64, ptr } %t1810, ptr %l51, !tbaa !27
  %t1811 = getelementptr { { i64, ptr }, i32 }, ptr %l50, i32 0, i32 1
  %t1812 = load i32, ptr %t1811, !tbaa !23
  store i32 %t1812, ptr %l52, !tbaa !23
  %t1814 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1814, ptr %l647, !tbaa !29
  %t1815 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1815, ptr %l648, !tbaa !29
  %t1816 = load ptr, ptr %l0, !tbaa !29
  %t1817 = load i32, ptr %l48, !tbaa !23
  %t1820 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalAt(ptr %v0, ptr %s57, ptr %v3, ptr %v2, ptr %t1816, i32 %t1817)
  store { i64, ptr } %t1820, ptr %l651
  br label %bb280
bb280:
  %t1821 = load { i64, ptr }, ptr %l651, !tbaa !27
  %t1822 = extractvalue { i64, ptr } %t1821, 0
  %t1823 = extractvalue { i64, ptr } %t1821, 1
  %t1824 = mul i64 %t1822, 1
  %t1825 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1824)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1825, ptr %t1823, i64 %t1824, i1 false)
  %t1826 = insertvalue { i64, ptr } undef, i64 %t1822, 0
  %t1827 = insertvalue { i64, ptr } %t1826, ptr %t1825, 1
  %t1828 = load ptr, ptr %l648, !tbaa !29
  %t1830 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s57, ptr %s57, ptr %s57, ptr %s57, ptr %v2, ptr %t1828, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d326, i32 0, i32 1) }, { i64, ptr } %t1827, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t1830, ptr %l653
  br label %bb281
bb281:
  %t1831 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d327, i32 0, i32 1) }, 1
  %t1832 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d327, i32 0, i32 1) }, 0
  %t1833 = load { i64, ptr }, ptr %l653, !tbaa !27
  %t1834 = extractvalue { i64, ptr } %t1833, 1
  %t1835 = extractvalue { i64, ptr } %t1833, 0
  %t1836 = add i64 %t1832, %t1835
  %t1837 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t1838 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t1839 = add i64 %t1836, %t1838
  %t1840 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1839)
  call void @olang_textcopy(ptr %t1840, ptr %t1831, i64 %t1832)
  %t1841 = getelementptr i8, ptr %t1840, i64 %t1832
  call void @olang_textcopy(ptr %t1841, ptr %t1834, i64 %t1835)
  %t1842 = getelementptr i8, ptr %t1841, i64 %t1835
  call void @olang_textcopy(ptr %t1842, ptr %t1837, i64 %t1838)
  %t1843 = insertvalue { i64, ptr } undef, i64 %t1839, 0
  %t1844 = insertvalue { i64, ptr } %t1843, ptr %t1840, 1
  %t1846 = extractvalue { i64, ptr } %t1844, 0
  %t1847 = extractvalue { i64, ptr } %t1844, 1
  %t1848 = mul i64 %t1846, 1
  %t1849 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1848)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1849, ptr %t1847, i64 %t1848, i1 false)
  %t1850 = insertvalue { i64, ptr } undef, i64 %t1846, 0
  %t1851 = insertvalue { i64, ptr } %t1850, ptr %t1849, 1
  %t1852 = load ptr, ptr %l647, !tbaa !29
  %t1854 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s57, ptr %s57, ptr %v2, ptr %t1852, { i64, ptr } %t1851)
  store { i64, ptr } %t1854, ptr %l656
  br label %bb282
bb282:
  %t1855 = load { i64, ptr }, ptr %l656, !tbaa !27
  store { i64, ptr } %t1855, ptr %l53, !tbaa !27
  %t1856 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1856, ptr %l657, !tbaa !29
  %t1857 = load ptr, ptr %l0, !tbaa !29
  %t1858 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t1859 = load i32, ptr %l52, !tbaa !23
  %t1863 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eanchorRegion(ptr %v0, ptr %s57, ptr %s57, ptr %v2, ptr %t1857, { i64, ptr } %t1858, i32 %t1859)
  store { i64, ptr } %t1863, ptr %l661
  br label %bb283
bb283:
  %t1864 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t1865 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t1866 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
  %t1867 = load { i64, ptr }, ptr %l661, !tbaa !27
  %t1868 = extractvalue { i64, ptr } %t1867, 1
  %t1869 = extractvalue { i64, ptr } %t1867, 0
  %t1870 = add i64 %t1866, %t1869
  %t1871 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t1872 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t1873 = add i64 %t1870, %t1872
  %t1875 = extractvalue { i64, ptr } %t1864, 1
  %t1876 = extractvalue { i64, ptr } %t1864, 0
  %t1877 = add i64 %t1873, %t1876
  %t1878 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1877)
  call void @olang_textcopy(ptr %t1878, ptr %t1865, i64 %t1866)
  %t1879 = getelementptr i8, ptr %t1878, i64 %t1866
  call void @olang_textcopy(ptr %t1879, ptr %t1868, i64 %t1869)
  %t1880 = getelementptr i8, ptr %t1879, i64 %t1869
  call void @olang_textcopy(ptr %t1880, ptr %t1871, i64 %t1872)
  %t1881 = getelementptr i8, ptr %t1880, i64 %t1872
  call void @olang_textcopy(ptr %t1881, ptr %t1875, i64 %t1876)
  %t1882 = insertvalue { i64, ptr } undef, i64 %t1877, 0
  %t1883 = insertvalue { i64, ptr } %t1882, ptr %t1878, 1
  %t1885 = extractvalue { i64, ptr } %t1883, 0
  %t1886 = extractvalue { i64, ptr } %t1883, 1
  %t1887 = mul i64 %t1885, 1
  %t1888 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1887)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1888, ptr %t1886, i64 %t1887, i1 false)
  %t1889 = insertvalue { i64, ptr } undef, i64 %t1885, 0
  %t1890 = insertvalue { i64, ptr } %t1889, ptr %t1888, 1
  %t1891 = load ptr, ptr %l657, !tbaa !29
  %t1893 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s57, ptr %s57, ptr %v2, ptr %t1891, { i64, ptr } %t1890)
  store { i64, ptr } %t1893, ptr %l665
  br label %bb284
bb284:
  %t1894 = load { i64, ptr }, ptr %l665, !tbaa !27
  store { i64, ptr } %t1894, ptr %l54, !tbaa !27
  %t1895 = load ptr, ptr %l0, !tbaa !29
  %t1897 = getelementptr %"compiler/emit:fnEm", ptr %t1895, i32 0, i32 0
  %t1898 = load ptr, ptr %t1897, !tbaa !29
  store ptr %t1898, ptr %l667, !tbaa !29
  %t1899 = load ptr, ptr %l667, !tbaa !29
  %t1900 = call ptr @__olang_scope_or(ptr %v2, ptr %t1899)
  %t1901 = ptrtoint ptr %t1900 to i64
  %t1903 = inttoptr i64 %t1901 to ptr
  %t1904 = load ptr, ptr %l667, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t1903, ptr %s57, ptr %t1904, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d331, i32 0, i32 1) })
  br label %bb285
bb285:
  %t1905 = load ptr, ptr %l0, !tbaa !29
  %t1906 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t1907 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t1908 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t1909 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t1911 = extractvalue { i64, ptr } %t1906, 1
  %t1912 = extractvalue { i64, ptr } %t1906, 0
  %t1913 = add i64 %t1909, %t1912
  %t1914 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t1915 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t1916 = add i64 %t1913, %t1915
  %t1918 = extractvalue { i64, ptr } %t1907, 1
  %t1919 = extractvalue { i64, ptr } %t1907, 0
  %t1920 = add i64 %t1916, %t1919
  %t1921 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d334, i32 0, i32 1) }, 1
  %t1922 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d334, i32 0, i32 1) }, 0
  %t1923 = add i64 %t1920, %t1922
  %t1924 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1923)
  call void @olang_textcopy(ptr %t1924, ptr %t1908, i64 %t1909)
  %t1925 = getelementptr i8, ptr %t1924, i64 %t1909
  call void @olang_textcopy(ptr %t1925, ptr %t1911, i64 %t1912)
  %t1926 = getelementptr i8, ptr %t1925, i64 %t1912
  call void @olang_textcopy(ptr %t1926, ptr %t1914, i64 %t1915)
  %t1927 = getelementptr i8, ptr %t1926, i64 %t1915
  call void @olang_textcopy(ptr %t1927, ptr %t1918, i64 %t1919)
  %t1928 = getelementptr i8, ptr %t1927, i64 %t1919
  call void @olang_textcopy(ptr %t1928, ptr %t1921, i64 %t1922)
  %t1929 = insertvalue { i64, ptr } undef, i64 %t1923, 0
  %t1930 = insertvalue { i64, ptr } %t1929, ptr %t1924, 1
  %t1932 = extractvalue { i64, ptr } %t1930, 0
  %t1933 = extractvalue { i64, ptr } %t1930, 1
  %t1934 = mul i64 %t1932, 1
  %t1935 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1934)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1935, ptr %t1933, i64 %t1934, i1 false)
  %t1936 = insertvalue { i64, ptr } undef, i64 %t1932, 0
  %t1937 = insertvalue { i64, ptr } %t1936, ptr %t1935, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s57, ptr %v2, ptr %t1905, { i64, ptr } %t1937)
  br label %bb286
bb286:
  call void @__olang_scope_close(ptr %s57)
  br label %bb328
bb287:
  %t1940 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1940, ptr %l674, !tbaa !29
  store i1 false, ptr %l675, !tbaa !21
  %t1941 = load ptr, ptr %l674, !tbaa !29
  %t1942 = icmp ne ptr %t1941, null
  br i1 %t1942, label %bb288, label %bb289
bb288:
  %t1944 = load ptr, ptr %l674, !tbaa !29
  %t1945 = load i64, ptr %t1944, !range !{i64 0, i64 19}
  %t1947 = icmp eq i64 %t1945, 10
  store i1 %t1947, ptr %l675, !tbaa !21
  br label %bb289
bb289:
  %t1948 = load i1, ptr %l675, !tbaa !21
  br i1 %t1948, label %bb290, label %bb291
bb290:
  %t1949 = load ptr, ptr %l1, !tbaa !29
  %t1951 = getelementptr { i64, [21 x i64] }, ptr %t1949, i32 0, i32 1
  %t1952 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t1951, i32 0, i32 1
  %t1953 = load { i64, [1 x i64] }, ptr %t1952
  store { i64, [1 x i64] } %t1953, ptr %l55
  %t1955 = load ptr, ptr %l1, !tbaa !29
  %t1957 = getelementptr { i64, [21 x i64] }, ptr %t1955, i32 0, i32 1
  %t1958 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t1957, i32 0, i32 2
  %t1959 = load i32, ptr %t1958, !range !{i32 0, i32 8}
  store i32 %t1959, ptr %l56
  %t1961 = load ptr, ptr %l1, !tbaa !29
  %t1963 = getelementptr { i64, [21 x i64] }, ptr %t1961, i32 0, i32 1
  %t1964 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t1963, i32 0, i32 3
  %t1965 = load { i64, [4 x i64] }, ptr %t1964
  store { i64, [4 x i64] } %t1965, ptr %l57
  br label %bb292
bb291:
  br label %bb301
bb292:
  store %olang.scope zeroinitializer, ptr %s61
  %t1967 = load ptr, ptr %l0, !tbaa !29
  %t1968 = load { i64, [1 x i64] }, ptr %l55
  %t1971 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectRef(ptr %v0, ptr %t1967, { i64, [1 x i64] } %t1968)
  store i1 %t1971, ptr %l686
  br label %bb293
bb293:
  %t1972 = load i1, ptr %l686, !tbaa !21
  br i1 %t1972, label %bb294, label %bb295
bb294:
  %t1973 = load ptr, ptr %l0, !tbaa !29
  %t1975 = getelementptr %"compiler/emit:fnEm", ptr %t1973, i32 0, i32 27
  %t1976 = load i32, ptr %l56, !range !{i32 0, i32 8}
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2ePush_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %t1975, i32 %t1976)
  br label %bb296
bb295:
  br label %bb298
bb296:
  %t1979 = load ptr, ptr %l0, !tbaa !29
  %t1981 = getelementptr %"compiler/emit:fnEm", ptr %t1979, i32 0, i32 28
  %t1982 = load { i64, [4 x i64] }, ptr %l57
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t1981, { i64, [4 x i64] } %t1982)
  br label %bb297
bb297:
  call void @__olang_scope_close(ptr %s61)
  br label %ret
bb298:
  %t1985 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1985, ptr %l693, !tbaa !29
  %t1986 = load ptr, ptr %l0, !tbaa !29
  %t1987 = load { i64, [1 x i64] }, ptr %l55
  %t1990 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s61, ptr %v2, ptr %v3, ptr %t1986, { i64, [1 x i64] } %t1987)
  store { i64, ptr } %t1990, ptr %l696
  br label %bb299
bb299:
  %t1991 = load { i64, ptr }, ptr %l696, !tbaa !27
  %t1992 = extractvalue { i64, ptr } %t1991, 0
  %t1993 = extractvalue { i64, ptr } %t1991, 1
  %t1994 = mul i64 %t1992, 1
  %t1995 = call ptr @__olang_scope_alloc(ptr %s61, i64 %t1994)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1995, ptr %t1993, i64 %t1994, i1 false)
  %t1996 = insertvalue { i64, ptr } undef, i64 %t1992, 0
  %t1997 = insertvalue { i64, ptr } %t1996, ptr %t1995, 1
  %t1998 = load i32, ptr %l56, !range !{i32 0, i32 8}
  %t1999 = load { i64, [4 x i64] }, ptr %l57
  %t2000 = load ptr, ptr %l693, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewrite(ptr %v0, ptr %s61, ptr %v3, ptr %v2, ptr %t2000, { i64, ptr } %t1997, i32 %t1998, { i64, [4 x i64] } %t1999)
  br label %bb300
bb300:
  call void @__olang_scope_close(ptr %s61)
  br label %bb328
bb301:
  %t2004 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2004, ptr %l700, !tbaa !29
  store i1 false, ptr %l701, !tbaa !21
  %t2005 = load ptr, ptr %l700, !tbaa !29
  %t2006 = icmp ne ptr %t2005, null
  br i1 %t2006, label %bb302, label %bb303
bb302:
  %t2008 = load ptr, ptr %l700, !tbaa !29
  %t2009 = load i64, ptr %t2008, !range !{i64 0, i64 19}
  %t2011 = icmp eq i64 %t2009, 11
  store i1 %t2011, ptr %l701, !tbaa !21
  br label %bb303
bb303:
  %t2012 = load i1, ptr %l701, !tbaa !21
  br i1 %t2012, label %bb304, label %bb305
bb304:
  %t2013 = load ptr, ptr %l1, !tbaa !29
  %t2015 = getelementptr { i64, [21 x i64] }, ptr %t2013, i32 0, i32 1
  %t2016 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t2015, i32 0, i32 1
  %t2017 = load %"compiler/mir:Lvalue", ptr %t2016
  store %"compiler/mir:Lvalue" %t2017, ptr %l58
  %t2019 = load ptr, ptr %l1, !tbaa !29
  %t2021 = getelementptr { i64, [21 x i64] }, ptr %t2019, i32 0, i32 1
  %t2022 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t2021, i32 0, i32 2
  %t2023 = load %"compiler/mir:Lvalue", ptr %t2022
  store %"compiler/mir:Lvalue" %t2023, ptr %l59
  %t2025 = load ptr, ptr %l1, !tbaa !29
  %t2027 = getelementptr { i64, [21 x i64] }, ptr %t2025, i32 0, i32 1
  %t2028 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t2027, i32 0, i32 3
  %t2029 = load { i64, [4 x i64] }, ptr %t2028
  store { i64, [4 x i64] } %t2029, ptr %l60
  br label %bb306
bb305:
  br label %bb319
bb306:
  store %olang.scope zeroinitializer, ptr %s63
  %t2031 = load ptr, ptr %l0, !tbaa !29
  %t2032 = load %"compiler/mir:Lvalue", ptr %l58
  %t2035 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edataPtr(ptr %v0, ptr %s63, ptr %v3, ptr %v2, ptr %t2031, %"compiler/mir:Lvalue" %t2032)
  store { i64, ptr } %t2035, ptr %l712
  br label %bb307
bb307:
  %t2036 = load { i64, ptr }, ptr %l712, !tbaa !27
  store { i64, ptr } %t2036, ptr %l61, !tbaa !27
  %t2037 = load ptr, ptr %l0, !tbaa !29
  %t2038 = load %"compiler/mir:Lvalue", ptr %l59
  %t2041 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edataPtr(ptr %v0, ptr %s63, ptr %v3, ptr %v2, ptr %t2037, %"compiler/mir:Lvalue" %t2038)
  store { i64, ptr } %t2041, ptr %l715
  br label %bb308
bb308:
  %t2042 = load { i64, ptr }, ptr %l715, !tbaa !27
  store { i64, ptr } %t2042, ptr %l62, !tbaa !27
  %t2043 = load ptr, ptr %l2, !tbaa !29
  store ptr %t2043, ptr %l716, !tbaa !29
  %t2044 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2044, ptr %l717, !tbaa !29
  %t2045 = load ptr, ptr %l0, !tbaa !29
  %t2046 = load %"compiler/mir:Lvalue", ptr %l58
  %t2049 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %v3, ptr %v2, ptr %t2045, %"compiler/mir:Lvalue" %t2046)
  store i32 %t2049, ptr %l720
  br label %bb309
bb309:
  %t2050 = load ptr, ptr %l717, !tbaa !29
  %t2051 = load i32, ptr %l720, !tbaa !23
  %t2052 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %v2, ptr %t2050, i32 %t2051)
  store i32 %t2052, ptr %l721
  br label %bb310
bb310:
  %t2053 = load ptr, ptr %l716, !tbaa !29
  %t2054 = call ptr @__olang_scope_or(ptr %v2, ptr %t2053)
  %t2055 = ptrtoint ptr %t2054 to i64
  %t2057 = inttoptr i64 %t2055 to ptr
  %t2058 = load ptr, ptr %l716, !tbaa !29
  %t2059 = load i32, ptr %l721, !tbaa !23
  %t2060 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t2057, ptr %t2058, i32 %t2059)
  store i32 %t2060, ptr %l723
  br label %bb311
bb311:
  %t2061 = load i32, ptr %l723, !tbaa !23
  store i32 %t2061, ptr %l63, !tbaa !23
  %t2062 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2062, ptr %l724, !tbaa !29
  %t2063 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2063, ptr %l725, !tbaa !29
  %t2064 = load ptr, ptr %l0, !tbaa !29
  %t2065 = load { i64, [4 x i64] }, ptr %l60
  %t2066 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t2070 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s63, ptr %v3, ptr %v2, ptr %t2064, { i64, [4 x i64] } %t2065, i32 %t2066)
  store { i64, ptr } %t2070, ptr %l729
  br label %bb312
bb312:
  %t2071 = load { i64, ptr }, ptr %l729, !tbaa !27
  %t2072 = extractvalue { i64, ptr } %t2071, 0
  %t2073 = extractvalue { i64, ptr } %t2071, 1
  %t2074 = mul i64 %t2072, 1
  %t2075 = call ptr @__olang_scope_alloc(ptr %s63, i64 %t2074)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2075, ptr %t2073, i64 %t2074, i1 false)
  %t2076 = insertvalue { i64, ptr } undef, i64 %t2072, 0
  %t2077 = insertvalue { i64, ptr } %t2076, ptr %t2075, 1
  store { i64, ptr } %t2077, ptr %l730, !tbaa !27
  %t2078 = load ptr, ptr %l0, !tbaa !29
  %t2079 = load { i64, [4 x i64] }, ptr %l60
  %t2082 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %v3, ptr %v2, ptr %t2078, { i64, [4 x i64] } %t2079)
  store i32 %t2082, ptr %l733
  br label %bb313
bb313:
  %t2083 = load ptr, ptr %l725, !tbaa !29
  %t2084 = load { i64, ptr }, ptr %l730, !tbaa !27
  %t2085 = load i32, ptr %l733, !tbaa !23
  %t2086 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %s63, ptr %s63, ptr %v2, ptr %t2083, { i64, ptr } %t2084, i32 %t2085)
  store { i64, ptr } %t2086, ptr %l734
  br label %bb314
bb314:
  %t2087 = load ptr, ptr %l0, !tbaa !29
  %t2088 = load i32, ptr %l63, !tbaa !23
  %t2091 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v2, ptr %t2087, i32 %t2088)
  store i64 %t2091, ptr %l737
  br label %bb315
bb315:
  %t2092 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d335, i32 0, i32 1) }, 1
  %t2093 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d335, i32 0, i32 1) }, 0
  %t2094 = load { i64, ptr }, ptr %l734, !tbaa !27
  %t2095 = extractvalue { i64, ptr } %t2094, 1
  %t2096 = extractvalue { i64, ptr } %t2094, 0
  %t2097 = add i64 %t2093, %t2096
  %t2098 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t2099 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
  %t2100 = add i64 %t2097, %t2099
  %t2101 = load i64, ptr %l737, !tbaa !24
  %t2102 = call i64 @__olang_fmt_i64(ptr null, i64 %t2101)
  %t2103 = add i64 %t2100, %t2102
  %t2104 = call ptr @__olang_scope_alloc(ptr %s63, i64 %t2103)
  call void @olang_textcopy(ptr %t2104, ptr %t2092, i64 %t2093)
  %t2105 = getelementptr i8, ptr %t2104, i64 %t2093
  call void @olang_textcopy(ptr %t2105, ptr %t2095, i64 %t2096)
  %t2106 = getelementptr i8, ptr %t2105, i64 %t2096
  call void @olang_textcopy(ptr %t2106, ptr %t2098, i64 %t2099)
  %t2107 = getelementptr i8, ptr %t2106, i64 %t2099
  %t2108 = call i64 @__olang_fmt_i64(ptr %t2107, i64 %t2101)
  %t2109 = insertvalue { i64, ptr } undef, i64 %t2103, 0
  %t2110 = insertvalue { i64, ptr } %t2109, ptr %t2104, 1
  %t2112 = extractvalue { i64, ptr } %t2110, 0
  %t2113 = extractvalue { i64, ptr } %t2110, 1
  %t2114 = mul i64 %t2112, 1
  %t2115 = call ptr @__olang_scope_alloc(ptr %s63, i64 %t2114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2115, ptr %t2113, i64 %t2114, i1 false)
  %t2116 = insertvalue { i64, ptr } undef, i64 %t2112, 0
  %t2117 = insertvalue { i64, ptr } %t2116, ptr %t2115, 1
  %t2118 = load ptr, ptr %l724, !tbaa !29
  %t2120 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s63, ptr %s63, ptr %v2, ptr %t2118, { i64, ptr } %t2117)
  store { i64, ptr } %t2120, ptr %l740
  br label %bb316
bb316:
  %t2121 = load { i64, ptr }, ptr %l740, !tbaa !27
  store { i64, ptr } %t2121, ptr %l64, !tbaa !27
  %t2122 = load ptr, ptr %l0, !tbaa !29
  %t2124 = getelementptr %"compiler/emit:fnEm", ptr %t2122, i32 0, i32 0
  %t2125 = load ptr, ptr %t2124, !tbaa !29
  store ptr %t2125, ptr %l742, !tbaa !29
  %t2126 = load ptr, ptr %l742, !tbaa !29
  %t2127 = call ptr @__olang_scope_or(ptr %v2, ptr %t2126)
  %t2128 = ptrtoint ptr %t2127 to i64
  %t2130 = inttoptr i64 %t2128 to ptr
  %t2131 = load ptr, ptr %l742, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %t2130, ptr %s63, ptr %s63, ptr %t2131, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d337, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d338, i32 0, i32 1) })
  br label %bb317
bb317:
  %t2132 = load ptr, ptr %l0, !tbaa !29
  %t2133 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t2134 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t2135 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t2136 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t2137 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
  %t2139 = extractvalue { i64, ptr } %t2133, 1
  %t2140 = extractvalue { i64, ptr } %t2133, 0
  %t2141 = add i64 %t2137, %t2140
  %t2142 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d340, i32 0, i32 1) }, 1
  %t2143 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d340, i32 0, i32 1) }, 0
  %t2144 = add i64 %t2141, %t2143
  %t2146 = extractvalue { i64, ptr } %t2134, 1
  %t2147 = extractvalue { i64, ptr } %t2134, 0
  %t2148 = add i64 %t2144, %t2147
  %t2149 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d341, i32 0, i32 1) }, 1
  %t2150 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d341, i32 0, i32 1) }, 0
  %t2151 = add i64 %t2148, %t2150
  %t2153 = extractvalue { i64, ptr } %t2135, 1
  %t2154 = extractvalue { i64, ptr } %t2135, 0
  %t2155 = add i64 %t2151, %t2154
  %t2156 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t2157 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
  %t2158 = add i64 %t2155, %t2157
  %t2159 = call ptr @__olang_scope_alloc(ptr %s63, i64 %t2158)
  call void @olang_textcopy(ptr %t2159, ptr %t2136, i64 %t2137)
  %t2160 = getelementptr i8, ptr %t2159, i64 %t2137
  call void @olang_textcopy(ptr %t2160, ptr %t2139, i64 %t2140)
  %t2161 = getelementptr i8, ptr %t2160, i64 %t2140
  call void @olang_textcopy(ptr %t2161, ptr %t2142, i64 %t2143)
  %t2162 = getelementptr i8, ptr %t2161, i64 %t2143
  call void @olang_textcopy(ptr %t2162, ptr %t2146, i64 %t2147)
  %t2163 = getelementptr i8, ptr %t2162, i64 %t2147
  call void @olang_textcopy(ptr %t2163, ptr %t2149, i64 %t2150)
  %t2164 = getelementptr i8, ptr %t2163, i64 %t2150
  call void @olang_textcopy(ptr %t2164, ptr %t2153, i64 %t2154)
  %t2165 = getelementptr i8, ptr %t2164, i64 %t2154
  call void @olang_textcopy(ptr %t2165, ptr %t2156, i64 %t2157)
  %t2166 = insertvalue { i64, ptr } undef, i64 %t2158, 0
  %t2167 = insertvalue { i64, ptr } %t2166, ptr %t2159, 1
  %t2169 = extractvalue { i64, ptr } %t2167, 0
  %t2170 = extractvalue { i64, ptr } %t2167, 1
  %t2171 = mul i64 %t2169, 1
  %t2172 = call ptr @__olang_scope_alloc(ptr %s63, i64 %t2171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2172, ptr %t2170, i64 %t2171, i1 false)
  %t2173 = insertvalue { i64, ptr } undef, i64 %t2169, 0
  %t2174 = insertvalue { i64, ptr } %t2173, ptr %t2172, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s63, ptr %v2, ptr %t2132, { i64, ptr } %t2174)
  br label %bb318
bb318:
  call void @__olang_scope_close(ptr %s63)
  br label %bb328
bb319:
  %t2177 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2177, ptr %l750, !tbaa !29
  store i1 false, ptr %l751, !tbaa !21
  %t2178 = load ptr, ptr %l750, !tbaa !29
  %t2179 = icmp ne ptr %t2178, null
  br i1 %t2179, label %bb320, label %bb321
bb320:
  %t2181 = load ptr, ptr %l750, !tbaa !29
  %t2182 = load i64, ptr %t2181, !range !{i64 0, i64 19}
  %t2184 = icmp eq i64 %t2182, 12
  store i1 %t2184, ptr %l751, !tbaa !21
  br label %bb321
bb321:
  %t2185 = load i1, ptr %l751, !tbaa !21
  br i1 %t2185, label %bb322, label %bb323
bb322:
  %t2186 = load ptr, ptr %l1, !tbaa !29
  %t2188 = getelementptr { i64, [21 x i64] }, ptr %t2186, i32 0, i32 1
  %t2189 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t2188, i32 0, i32 1
  %t2190 = load i32, ptr %t2189
  store i32 %t2190, ptr %l65, !tbaa !23
  %t2192 = load ptr, ptr %l1, !tbaa !29
  %t2194 = getelementptr { i64, [21 x i64] }, ptr %t2192, i32 0, i32 1
  %t2195 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t2194, i32 0, i32 2
  %t2196 = load i32, ptr %t2195
  store i32 %t2196, ptr %l66, !tbaa !23
  br label %bb324
bb323:
  br label %bb327
bb324:
  %t2198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2198, ptr %l758, !tbaa !29
  %t2199 = load i32, ptr %l65, !tbaa !23
  store i32 %t2199, ptr %l759, !tbaa !23
  %t2200 = load ptr, ptr %l0, !tbaa !29
  %t2202 = getelementptr %"compiler/emit:fnEm", ptr %t2200, i32 0, i32 1
  %t2203 = load ptr, ptr %t2202, !tbaa !29
  %t2205 = getelementptr %"compiler/mir:Fn", ptr %t2203, i32 0, i32 16
  store ptr %t2205, ptr %l762, !tbaa !29
  %t2206 = load i32, ptr %l66, !tbaa !23
  %t2208 = sext i32 %t2206 to i64
  %t2209 = load ptr, ptr %l762, !tbaa !29
  %t2210 = call ptr @__olang_scope_or(ptr %v3, ptr %t2209)
  %t2211 = ptrtoint ptr %t2210 to i64
  %t2213 = inttoptr i64 %t2211 to ptr
  %t2214 = load ptr, ptr %l762, !tbaa !29
  %t2216 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %t2213, ptr %t2214, i64 %t2208)
  store %"compiler/mir:Task" %t2216, ptr %l766
  br label %bb325
bb325:
  %t2217 = load ptr, ptr %l758, !tbaa !29
  %t2218 = load i32, ptr %l759, !tbaa !23
  %t2219 = load %"compiler/mir:Task", ptr %l766
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2espawn(ptr %v0, ptr %v2, ptr %v3, ptr %t2217, i32 %t2218, %"compiler/mir:Task" %t2219)
  br label %bb326
bb326:
  br label %bb328
bb327:
  call void @__olang_check_failed(ptr @olang_loc_73cacc8093766858_2881ed4d4d5af0d4)
  unreachable
bb328:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskFix(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, %"compiler/mir:Task" %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/mir:Task"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l28 = alloca i32
  %l31 = alloca i32
  %l53 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca ptr
  %l59 = alloca ptr
  %l66 = alloca %"compiler/mir:Lvalue"
  %l67 = alloca i32
  %l69 = alloca i32
  %l70 = alloca ptr
  %l73 = alloca i32
  %l75 = alloca ptr
  %l78 = alloca i1
  %l79 = alloca ptr
  %l111 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l114 = alloca ptr
  %l117 = alloca i64
  %l143 = alloca { i64, ptr }
  %l147 = alloca ptr
  %l150 = alloca i64
  %l153 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l157 = alloca ptr
  %l161 = alloca { i64, ptr }
  %l176 = alloca ptr
  %l177 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/mir:Task" %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l6, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 3
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l7, !tbaa !29
  store i32 0, ptr %l8, !tbaa !23
  %t11 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 3
  %t12 = getelementptr %"compiler/mir:Range", ptr %t11, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l9, !tbaa !23
  store i32 1, ptr %l10, !tbaa !23
  %t15 = load i32, ptr %l9, !tbaa !23
  %t16 = load i32, ptr %l8, !tbaa !23
  %t19 = icmp sgt i32 %t15, %t16
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load i32, ptr %l10, !tbaa !23
  %t23 = icmp sgt i32 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l28, !tbaa !23
  br label %bb6
bb3:
  %t25 = load i32, ptr %l9, !tbaa !23
  %t26 = load i32, ptr %l8, !tbaa !23
  %t29 = sub i32 %t25, %t26
  %t30 = load i32, ptr %l10, !tbaa !23
  %t33 = add i32 %t29, %t30
  %t35 = sub i32 %t33, 1
  %t36 = load i32, ptr %l10, !tbaa !23
  %t39 = sdiv i32 %t35, %t36
  store i32 %t39, ptr %l31, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l31, !tbaa !23
  br label %bb5
bb5:
  %t41 = load i32, ptr %l31, !tbaa !23
  store i32 %t41, ptr %l28, !tbaa !23
  br label %bb6
bb6:
  %t42 = load i32, ptr %l28, !tbaa !23
  store i32 %t42, ptr %l11, !tbaa !23
  store i32 0, ptr %l12, !tbaa !23
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i32, ptr %l12, !tbaa !23
  %t44 = load i32, ptr %l11, !tbaa !23
  %t47 = icmp slt i32 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb49
bb9:
  br label %bb10
bb10:
  %t51 = load i32, ptr %l8, !tbaa !23
  %t52 = load i32, ptr %l12, !tbaa !23
  %t53 = load i32, ptr %l10, !tbaa !23
  %t56 = mul i32 %t52, %t53
  %t59 = add i32 %t51, %t56
  store i32 %t59, ptr %l13, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load %"compiler/mir:Task", ptr %l2
  %t63 = load i32, ptr %l13, !tbaa !23
  %t65 = sext i32 %t63 to i64
  %t69 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2evalueTarget(ptr %v0, ptr %v4, ptr %v5, ptr %t61, %"compiler/mir:Task" %t62, i64 %t65)
  store i1 %t69, ptr %l53
  br label %bb11
bb11:
  %t70 = load i1, ptr %l53, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb13:
  br label %bb14
bb14:
  %t73 = load ptr, ptr %l7, !tbaa !29
  store ptr %t73, ptr %l55, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l56, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/emit:fnEm", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/mir:Fn", ptr %t78, i32 0, i32 13
  store ptr %t80, ptr %l59, !tbaa !29
  %t81 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 3
  %t82 = getelementptr %"compiler/mir:Range", ptr %t81, i32 0, i32 0
  %t83 = load i32, ptr %t82, !tbaa !23
  %t85 = sext i32 %t83 to i64
  %t86 = load i32, ptr %l13, !tbaa !23
  %t88 = sext i32 %t86 to i64
  %t91 = add i64 %t85, %t88
  %t92 = load ptr, ptr %l59, !tbaa !29
  %t93 = call ptr @__olang_scope_or(ptr %v4, ptr %t92)
  %t94 = ptrtoint ptr %t93 to i64
  %t96 = inttoptr i64 %t94 to ptr
  %t97 = load ptr, ptr %l59, !tbaa !29
  %t99 = call %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %t96, ptr %t97, i64 %t91)
  store %"compiler/mir:Lvalue" %t99, ptr %l66
  br label %bb15
bb15:
  %t100 = load ptr, ptr %l56, !tbaa !29
  %t101 = load %"compiler/mir:Lvalue", ptr %l66
  %t102 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %v4, ptr %v5, ptr %t100, %"compiler/mir:Lvalue" %t101)
  store i32 %t102, ptr %l67
  br label %bb16
bb16:
  %t103 = load ptr, ptr %l55, !tbaa !29
  %t104 = call ptr @__olang_scope_or(ptr %v5, ptr %t103)
  %t105 = ptrtoint ptr %t104 to i64
  %t107 = inttoptr i64 %t105 to ptr
  %t108 = load ptr, ptr %l55, !tbaa !29
  %t109 = load i32, ptr %l67, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t107, ptr %t108, i32 %t109)
  store i32 %t110, ptr %l69
  br label %bb17
bb17:
  %t111 = load i32, ptr %l69, !tbaa !23
  %t112 = load ptr, ptr %l7, !tbaa !29
  store ptr %t112, ptr %l70, !tbaa !29
  %t114 = load ptr, ptr %l70, !tbaa !29
  %t115 = call ptr @__olang_scope_or(ptr %v5, ptr %t114)
  %t116 = ptrtoint ptr %t115 to i64
  %t118 = inttoptr i64 %t116 to ptr
  %t119 = load ptr, ptr %l70, !tbaa !29
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t118, ptr %t119, i32 %t111)
  store i32 %t121, ptr %l73
  br label %bb18
bb18:
  %t122 = load i32, ptr %l73, !tbaa !23
  store i32 %t122, ptr %l15, !tbaa !23
  %t123 = load ptr, ptr %l6, !tbaa !29
  %t125 = getelementptr %"compiler/emit:Emitter", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  store ptr %t126, ptr %l75, !tbaa !29
  %t127 = load i32, ptr %l15, !tbaa !23
  %t128 = load ptr, ptr %l75, !tbaa !29
  %t129 = call ptr @__olang_scope_or(ptr %v5, ptr %t128)
  %t130 = ptrtoint ptr %t129 to i64
  %t132 = inttoptr i64 %t130 to ptr
  %t133 = load ptr, ptr %l75, !tbaa !29
  %t135 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %t132, ptr %t133, i32 %t127)
  store i1 %t135, ptr %l78
  br label %bb19
bb19:
  %t136 = load ptr, ptr %l6, !tbaa !29
  store ptr %t136, ptr %l79, !tbaa !29
  %t137 = load ptr, ptr %l79, !tbaa !29
  %t138 = call ptr @__olang_scope_or(ptr %v5, ptr %t137)
  %t139 = ptrtoint ptr %t138 to i64
  %t141 = inttoptr i64 %t139 to ptr
  %t142 = load ptr, ptr %l79, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %t141, ptr %s2, ptr %s2, ptr %t142, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d343, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d344, i32 0, i32 1) })
  br label %bb20
bb20:
  %t143 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t144 = load i32, ptr %l13, !tbaa !23
  %t145 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d345, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d345, i32 0, i32 1) }, 0
  %t148 = extractvalue { i64, ptr } %t143, 1
  %t149 = extractvalue { i64, ptr } %t143, 0
  %t150 = add i64 %t146, %t149
  %t151 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t153 = add i64 %t150, %t152
  %t155 = sext i32 %t144 to i64
  %t156 = call i64 @__olang_fmt_i64(ptr null, i64 %t155)
  %t157 = add i64 %t153, %t156
  %t158 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t157)
  call void @olang_textcopy(ptr %t158, ptr %t145, i64 %t146)
  %t159 = getelementptr i8, ptr %t158, i64 %t146
  call void @olang_textcopy(ptr %t159, ptr %t148, i64 %t149)
  %t160 = getelementptr i8, ptr %t159, i64 %t149
  call void @olang_textcopy(ptr %t160, ptr %t151, i64 %t152)
  %t161 = getelementptr i8, ptr %t160, i64 %t152
  %t162 = call i64 @__olang_fmt_i64(ptr %t161, i64 %t155)
  %t163 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t158, 1
  store { i64, ptr } %t164, ptr %l16, !tbaa !27
  %t166 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t167 = load i32, ptr %l13, !tbaa !23
  %t168 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t171 = extractvalue { i64, ptr } %t166, 1
  %t172 = extractvalue { i64, ptr } %t166, 0
  %t173 = add i64 %t169, %t172
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
  %t176 = add i64 %t173, %t175
  %t178 = sext i32 %t167 to i64
  %t179 = call i64 @__olang_fmt_i64(ptr null, i64 %t178)
  %t180 = add i64 %t176, %t179
  %t181 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t180)
  call void @olang_textcopy(ptr %t181, ptr %t168, i64 %t169)
  %t182 = getelementptr i8, ptr %t181, i64 %t169
  call void @olang_textcopy(ptr %t182, ptr %t171, i64 %t172)
  %t183 = getelementptr i8, ptr %t182, i64 %t172
  call void @olang_textcopy(ptr %t183, ptr %t174, i64 %t175)
  %t184 = getelementptr i8, ptr %t183, i64 %t175
  %t185 = call i64 @__olang_fmt_i64(ptr %t184, i64 %t178)
  %t186 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t181, 1
  store { i64, ptr } %t187, ptr %l17, !tbaa !27
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t190 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t192 = load i32, ptr %l13, !tbaa !23
  %t194 = sext i32 %t192 to i64
  %t197 = add i64 %a3, %t194
  %t198 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t199 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t200 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d349, i32 0, i32 1) }, 1
  %t201 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d349, i32 0, i32 1) }, 0
  %t203 = extractvalue { i64, ptr } %t190, 1
  %t204 = extractvalue { i64, ptr } %t190, 0
  %t205 = add i64 %t201, %t204
  %t206 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t208 = add i64 %t205, %t207
  %t210 = call i64 @__olang_fmt_i64(ptr null, i64 %t197)
  %t211 = add i64 %t208, %t210
  %t212 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t214 = add i64 %t211, %t213
  %t216 = extractvalue { i64, ptr } %t198, 1
  %t217 = extractvalue { i64, ptr } %t198, 0
  %t218 = add i64 %t214, %t217
  %t219 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
  %t221 = add i64 %t218, %t220
  %t223 = extractvalue { i64, ptr } %t199, 1
  %t224 = extractvalue { i64, ptr } %t199, 0
  %t225 = add i64 %t221, %t224
  %t226 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d353, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d353, i32 0, i32 1) }, 0
  %t228 = add i64 %t225, %t227
  %t229 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t228)
  call void @olang_textcopy(ptr %t229, ptr %t200, i64 %t201)
  %t230 = getelementptr i8, ptr %t229, i64 %t201
  call void @olang_textcopy(ptr %t230, ptr %t203, i64 %t204)
  %t231 = getelementptr i8, ptr %t230, i64 %t204
  call void @olang_textcopy(ptr %t231, ptr %t206, i64 %t207)
  %t232 = getelementptr i8, ptr %t231, i64 %t207
  %t233 = call i64 @__olang_fmt_i64(ptr %t232, i64 %t197)
  %t234 = getelementptr i8, ptr %t232, i64 %t210
  call void @olang_textcopy(ptr %t234, ptr %t212, i64 %t213)
  %t235 = getelementptr i8, ptr %t234, i64 %t213
  call void @olang_textcopy(ptr %t235, ptr %t216, i64 %t217)
  %t236 = getelementptr i8, ptr %t235, i64 %t217
  call void @olang_textcopy(ptr %t236, ptr %t219, i64 %t220)
  %t237 = getelementptr i8, ptr %t236, i64 %t220
  call void @olang_textcopy(ptr %t237, ptr %t223, i64 %t224)
  %t238 = getelementptr i8, ptr %t237, i64 %t224
  call void @olang_textcopy(ptr %t238, ptr %t226, i64 %t227)
  %t239 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t229, 1
  %t242 = extractvalue { i64, ptr } %t240, 0
  %t243 = extractvalue { i64, ptr } %t240, 1
  %t244 = mul i64 %t242, 1
  %t245 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t244)
  call void @llvm.memcpy.p0.p0.i64(ptr %t245, ptr %t243, i64 %t244, i1 false)
  %t246 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t247 = insertvalue { i64, ptr } %t246, ptr %t245, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t189, { i64, ptr } %t247)
  br label %bb21
bb21:
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t251 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t252 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t253 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t254 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t255 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t256 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
  %t258 = extractvalue { i64, ptr } %t251, 1
  %t259 = extractvalue { i64, ptr } %t251, 0
  %t260 = add i64 %t256, %t259
  %t261 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d355, i32 0, i32 1) }, 1
  %t262 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d355, i32 0, i32 1) }, 0
  %t263 = add i64 %t260, %t262
  %t265 = extractvalue { i64, ptr } %t252, 1
  %t266 = extractvalue { i64, ptr } %t252, 0
  %t267 = add i64 %t263, %t266
  %t268 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d356, i32 0, i32 1) }, 1
  %t269 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d356, i32 0, i32 1) }, 0
  %t270 = add i64 %t267, %t269
  %t272 = extractvalue { i64, ptr } %t253, 1
  %t273 = extractvalue { i64, ptr } %t253, 0
  %t274 = add i64 %t270, %t273
  %t275 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d357, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d357, i32 0, i32 1) }, 0
  %t277 = add i64 %t274, %t276
  %t279 = extractvalue { i64, ptr } %t254, 1
  %t280 = extractvalue { i64, ptr } %t254, 0
  %t281 = add i64 %t277, %t280
  %t282 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d358, i32 0, i32 1) }, 1
  %t283 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d358, i32 0, i32 1) }, 0
  %t284 = add i64 %t281, %t283
  %t285 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t284)
  call void @olang_textcopy(ptr %t285, ptr %t255, i64 %t256)
  %t286 = getelementptr i8, ptr %t285, i64 %t256
  call void @olang_textcopy(ptr %t286, ptr %t258, i64 %t259)
  %t287 = getelementptr i8, ptr %t286, i64 %t259
  call void @olang_textcopy(ptr %t287, ptr %t261, i64 %t262)
  %t288 = getelementptr i8, ptr %t287, i64 %t262
  call void @olang_textcopy(ptr %t288, ptr %t265, i64 %t266)
  %t289 = getelementptr i8, ptr %t288, i64 %t266
  call void @olang_textcopy(ptr %t289, ptr %t268, i64 %t269)
  %t290 = getelementptr i8, ptr %t289, i64 %t269
  call void @olang_textcopy(ptr %t290, ptr %t272, i64 %t273)
  %t291 = getelementptr i8, ptr %t290, i64 %t273
  call void @olang_textcopy(ptr %t291, ptr %t275, i64 %t276)
  %t292 = getelementptr i8, ptr %t291, i64 %t276
  call void @olang_textcopy(ptr %t292, ptr %t279, i64 %t280)
  %t293 = getelementptr i8, ptr %t292, i64 %t280
  call void @olang_textcopy(ptr %t293, ptr %t282, i64 %t283)
  %t294 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t285, 1
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t298 = extractvalue { i64, ptr } %t295, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t250, { i64, ptr } %t302)
  br label %bb22
bb22:
  %t305 = load ptr, ptr %l1, !tbaa !29
  %t306 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t307 = load i32, ptr %l13, !tbaa !23
  %t308 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t309 = load i32, ptr %l13, !tbaa !23
  %t310 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d359, i32 0, i32 1) }, 1
  %t311 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d359, i32 0, i32 1) }, 0
  %t313 = extractvalue { i64, ptr } %t306, 1
  %t314 = extractvalue { i64, ptr } %t306, 0
  %t315 = add i64 %t311, %t314
  %t316 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d360, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d360, i32 0, i32 1) }, 0
  %t318 = add i64 %t315, %t317
  %t320 = sext i32 %t307 to i64
  %t321 = call i64 @__olang_fmt_i64(ptr null, i64 %t320)
  %t322 = add i64 %t318, %t321
  %t323 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
  %t325 = add i64 %t322, %t324
  %t327 = extractvalue { i64, ptr } %t308, 1
  %t328 = extractvalue { i64, ptr } %t308, 0
  %t329 = add i64 %t325, %t328
  %t330 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d362, i32 0, i32 1) }, 1
  %t331 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d362, i32 0, i32 1) }, 0
  %t332 = add i64 %t329, %t331
  %t334 = sext i32 %t309 to i64
  %t335 = call i64 @__olang_fmt_i64(ptr null, i64 %t334)
  %t336 = add i64 %t332, %t335
  %t337 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d363, i32 0, i32 1) }, 1
  %t338 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d363, i32 0, i32 1) }, 0
  %t339 = add i64 %t336, %t338
  %t340 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t339)
  call void @olang_textcopy(ptr %t340, ptr %t310, i64 %t311)
  %t341 = getelementptr i8, ptr %t340, i64 %t311
  call void @olang_textcopy(ptr %t341, ptr %t313, i64 %t314)
  %t342 = getelementptr i8, ptr %t341, i64 %t314
  call void @olang_textcopy(ptr %t342, ptr %t316, i64 %t317)
  %t343 = getelementptr i8, ptr %t342, i64 %t317
  %t344 = call i64 @__olang_fmt_i64(ptr %t343, i64 %t320)
  %t345 = getelementptr i8, ptr %t343, i64 %t321
  call void @olang_textcopy(ptr %t345, ptr %t323, i64 %t324)
  %t346 = getelementptr i8, ptr %t345, i64 %t324
  call void @olang_textcopy(ptr %t346, ptr %t327, i64 %t328)
  %t347 = getelementptr i8, ptr %t346, i64 %t328
  call void @olang_textcopy(ptr %t347, ptr %t330, i64 %t331)
  %t348 = getelementptr i8, ptr %t347, i64 %t331
  %t349 = call i64 @__olang_fmt_i64(ptr %t348, i64 %t334)
  %t350 = getelementptr i8, ptr %t348, i64 %t335
  call void @olang_textcopy(ptr %t350, ptr %t337, i64 %t338)
  %t351 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t340, 1
  %t354 = extractvalue { i64, ptr } %t352, 0
  %t355 = extractvalue { i64, ptr } %t352, 1
  %t356 = mul i64 %t354, 1
  %t357 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t356)
  call void @llvm.memcpy.p0.p0.i64(ptr %t357, ptr %t355, i64 %t356, i1 false)
  %t358 = insertvalue { i64, ptr } undef, i64 %t354, 0
  %t359 = insertvalue { i64, ptr } %t358, ptr %t357, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t305, { i64, ptr } %t359)
  br label %bb23
bb23:
  %t362 = load ptr, ptr %l1, !tbaa !29
  store ptr %t362, ptr %l111, !tbaa !29
  %t363 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t363, ptr %l112, !tbaa !27
  %t364 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t364, ptr %l113, !tbaa !27
  %t365 = load ptr, ptr %l7, !tbaa !29
  store ptr %t365, ptr %l114, !tbaa !29
  %t366 = load i32, ptr %l15, !tbaa !23
  %t367 = load ptr, ptr %l114, !tbaa !29
  %t368 = call ptr @__olang_scope_or(ptr %v5, ptr %t367)
  %t369 = ptrtoint ptr %t368 to i64
  %t371 = inttoptr i64 %t369 to ptr
  %t372 = load ptr, ptr %l114, !tbaa !29
  %t374 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %t371, ptr %t372, i32 %t366)
  store i64 %t374, ptr %l117
  br label %bb24
bb24:
  %t375 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t376 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t377 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t378 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d364, i32 0, i32 1) }, 1
  %t379 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d364, i32 0, i32 1) }, 0
  %t380 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t380, 1
  %t382 = extractvalue { i64, ptr } %t380, 0
  %t383 = add i64 %t379, %t382
  %t384 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d365, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d365, i32 0, i32 1) }, 0
  %t386 = add i64 %t383, %t385
  %t387 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t388 = extractvalue { i64, ptr } %t387, 1
  %t389 = extractvalue { i64, ptr } %t387, 0
  %t390 = add i64 %t386, %t389
  %t391 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d366, i32 0, i32 1) }, 1
  %t392 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d366, i32 0, i32 1) }, 0
  %t393 = add i64 %t390, %t392
  %t394 = load i64, ptr %l117, !tbaa !24
  %t395 = call i64 @__olang_fmt_i64(ptr null, i64 %t394)
  %t396 = add i64 %t393, %t395
  %t397 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d367, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d367, i32 0, i32 1) }, 0
  %t399 = add i64 %t396, %t398
  %t401 = extractvalue { i64, ptr } %t375, 1
  %t402 = extractvalue { i64, ptr } %t375, 0
  %t403 = add i64 %t399, %t402
  %t404 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d368, i32 0, i32 1) }, 1
  %t405 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d368, i32 0, i32 1) }, 0
  %t406 = add i64 %t403, %t405
  %t408 = extractvalue { i64, ptr } %t376, 1
  %t409 = extractvalue { i64, ptr } %t376, 0
  %t410 = add i64 %t406, %t409
  %t411 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d366, i32 0, i32 1) }, 1
  %t412 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d366, i32 0, i32 1) }, 0
  %t413 = add i64 %t410, %t412
  %t415 = extractvalue { i64, ptr } %t377, 1
  %t416 = extractvalue { i64, ptr } %t377, 0
  %t417 = add i64 %t413, %t416
  %t418 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d369, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d369, i32 0, i32 1) }, 0
  %t420 = add i64 %t417, %t419
  %t421 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t420)
  call void @olang_textcopy(ptr %t421, ptr %t378, i64 %t379)
  %t422 = getelementptr i8, ptr %t421, i64 %t379
  call void @olang_textcopy(ptr %t422, ptr %t381, i64 %t382)
  %t423 = getelementptr i8, ptr %t422, i64 %t382
  call void @olang_textcopy(ptr %t423, ptr %t384, i64 %t385)
  %t424 = getelementptr i8, ptr %t423, i64 %t385
  call void @olang_textcopy(ptr %t424, ptr %t388, i64 %t389)
  %t425 = getelementptr i8, ptr %t424, i64 %t389
  call void @olang_textcopy(ptr %t425, ptr %t391, i64 %t392)
  %t426 = getelementptr i8, ptr %t425, i64 %t392
  %t427 = call i64 @__olang_fmt_i64(ptr %t426, i64 %t394)
  %t428 = getelementptr i8, ptr %t426, i64 %t395
  call void @olang_textcopy(ptr %t428, ptr %t397, i64 %t398)
  %t429 = getelementptr i8, ptr %t428, i64 %t398
  call void @olang_textcopy(ptr %t429, ptr %t401, i64 %t402)
  %t430 = getelementptr i8, ptr %t429, i64 %t402
  call void @olang_textcopy(ptr %t430, ptr %t404, i64 %t405)
  %t431 = getelementptr i8, ptr %t430, i64 %t405
  call void @olang_textcopy(ptr %t431, ptr %t408, i64 %t409)
  %t432 = getelementptr i8, ptr %t431, i64 %t409
  call void @olang_textcopy(ptr %t432, ptr %t411, i64 %t412)
  %t433 = getelementptr i8, ptr %t432, i64 %t412
  call void @olang_textcopy(ptr %t433, ptr %t415, i64 %t416)
  %t434 = getelementptr i8, ptr %t433, i64 %t416
  call void @olang_textcopy(ptr %t434, ptr %t418, i64 %t419)
  %t435 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t436 = insertvalue { i64, ptr } %t435, ptr %t421, 1
  %t438 = extractvalue { i64, ptr } %t436, 0
  %t439 = extractvalue { i64, ptr } %t436, 1
  %t440 = mul i64 %t438, 1
  %t441 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t440)
  call void @llvm.memcpy.p0.p0.i64(ptr %t441, ptr %t439, i64 %t440, i1 false)
  %t442 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t441, 1
  %t444 = load ptr, ptr %l111, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t444, { i64, ptr } %t443)
  br label %bb25
bb25:
  %t446 = load ptr, ptr %l1, !tbaa !29
  %t447 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t448 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t449 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t450 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t451 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d370, i32 0, i32 1) }, 1
  %t452 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d370, i32 0, i32 1) }, 0
  %t454 = extractvalue { i64, ptr } %t447, 1
  %t455 = extractvalue { i64, ptr } %t447, 0
  %t456 = add i64 %t452, %t455
  %t457 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d371, i32 0, i32 1) }, 1
  %t458 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d371, i32 0, i32 1) }, 0
  %t459 = add i64 %t456, %t458
  %t461 = extractvalue { i64, ptr } %t448, 1
  %t462 = extractvalue { i64, ptr } %t448, 0
  %t463 = add i64 %t459, %t462
  %t464 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d372, i32 0, i32 1) }, 1
  %t465 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d372, i32 0, i32 1) }, 0
  %t466 = add i64 %t463, %t465
  %t468 = extractvalue { i64, ptr } %t449, 1
  %t469 = extractvalue { i64, ptr } %t449, 0
  %t470 = add i64 %t466, %t469
  %t471 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d373, i32 0, i32 1) }, 1
  %t472 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d373, i32 0, i32 1) }, 0
  %t473 = add i64 %t470, %t472
  %t475 = extractvalue { i64, ptr } %t450, 1
  %t476 = extractvalue { i64, ptr } %t450, 0
  %t477 = add i64 %t473, %t476
  %t478 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d374, i32 0, i32 1) }, 1
  %t479 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d374, i32 0, i32 1) }, 0
  %t480 = add i64 %t477, %t479
  %t481 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t480)
  call void @olang_textcopy(ptr %t481, ptr %t451, i64 %t452)
  %t482 = getelementptr i8, ptr %t481, i64 %t452
  call void @olang_textcopy(ptr %t482, ptr %t454, i64 %t455)
  %t483 = getelementptr i8, ptr %t482, i64 %t455
  call void @olang_textcopy(ptr %t483, ptr %t457, i64 %t458)
  %t484 = getelementptr i8, ptr %t483, i64 %t458
  call void @olang_textcopy(ptr %t484, ptr %t461, i64 %t462)
  %t485 = getelementptr i8, ptr %t484, i64 %t462
  call void @olang_textcopy(ptr %t485, ptr %t464, i64 %t465)
  %t486 = getelementptr i8, ptr %t485, i64 %t465
  call void @olang_textcopy(ptr %t486, ptr %t468, i64 %t469)
  %t487 = getelementptr i8, ptr %t486, i64 %t469
  call void @olang_textcopy(ptr %t487, ptr %t471, i64 %t472)
  %t488 = getelementptr i8, ptr %t487, i64 %t472
  call void @olang_textcopy(ptr %t488, ptr %t475, i64 %t476)
  %t489 = getelementptr i8, ptr %t488, i64 %t476
  call void @olang_textcopy(ptr %t489, ptr %t478, i64 %t479)
  %t490 = insertvalue { i64, ptr } undef, i64 %t480, 0
  %t491 = insertvalue { i64, ptr } %t490, ptr %t481, 1
  %t493 = extractvalue { i64, ptr } %t491, 0
  %t494 = extractvalue { i64, ptr } %t491, 1
  %t495 = mul i64 %t493, 1
  %t496 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t495)
  call void @llvm.memcpy.p0.p0.i64(ptr %t496, ptr %t494, i64 %t495, i1 false)
  %t497 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t446, { i64, ptr } %t498)
  br label %bb26
bb26:
  %t501 = load ptr, ptr %l1, !tbaa !29
  %t502 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t503 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t504 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t505 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d375, i32 0, i32 1) }, 1
  %t506 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d375, i32 0, i32 1) }, 0
  %t508 = extractvalue { i64, ptr } %t502, 1
  %t509 = extractvalue { i64, ptr } %t502, 0
  %t510 = add i64 %t506, %t509
  %t511 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d376, i32 0, i32 1) }, 1
  %t512 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d376, i32 0, i32 1) }, 0
  %t513 = add i64 %t510, %t512
  %t515 = extractvalue { i64, ptr } %t503, 1
  %t516 = extractvalue { i64, ptr } %t503, 0
  %t517 = add i64 %t513, %t516
  %t518 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d377, i32 0, i32 1) }, 1
  %t519 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d377, i32 0, i32 1) }, 0
  %t520 = add i64 %t517, %t519
  %t522 = extractvalue { i64, ptr } %t504, 1
  %t523 = extractvalue { i64, ptr } %t504, 0
  %t524 = add i64 %t520, %t523
  %t525 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d378, i32 0, i32 1) }, 1
  %t526 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d378, i32 0, i32 1) }, 0
  %t527 = add i64 %t524, %t526
  %t528 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t527)
  call void @olang_textcopy(ptr %t528, ptr %t505, i64 %t506)
  %t529 = getelementptr i8, ptr %t528, i64 %t506
  call void @olang_textcopy(ptr %t529, ptr %t508, i64 %t509)
  %t530 = getelementptr i8, ptr %t529, i64 %t509
  call void @olang_textcopy(ptr %t530, ptr %t511, i64 %t512)
  %t531 = getelementptr i8, ptr %t530, i64 %t512
  call void @olang_textcopy(ptr %t531, ptr %t515, i64 %t516)
  %t532 = getelementptr i8, ptr %t531, i64 %t516
  call void @olang_textcopy(ptr %t532, ptr %t518, i64 %t519)
  %t533 = getelementptr i8, ptr %t532, i64 %t519
  call void @olang_textcopy(ptr %t533, ptr %t522, i64 %t523)
  %t534 = getelementptr i8, ptr %t533, i64 %t523
  call void @olang_textcopy(ptr %t534, ptr %t525, i64 %t526)
  %t535 = insertvalue { i64, ptr } undef, i64 %t527, 0
  %t536 = insertvalue { i64, ptr } %t535, ptr %t528, 1
  %t538 = extractvalue { i64, ptr } %t536, 0
  %t539 = extractvalue { i64, ptr } %t536, 1
  %t540 = mul i64 %t538, 1
  %t541 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t540)
  call void @llvm.memcpy.p0.p0.i64(ptr %t541, ptr %t539, i64 %t540, i1 false)
  %t542 = insertvalue { i64, ptr } undef, i64 %t538, 0
  %t543 = insertvalue { i64, ptr } %t542, ptr %t541, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t501, { i64, ptr } %t543)
  br label %bb27
bb27:
  %t546 = load ptr, ptr %l1, !tbaa !29
  %t547 = load i32, ptr %l13, !tbaa !23
  %t548 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t549 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t550 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t551 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t552 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
  %t554 = sext i32 %t547 to i64
  %t555 = call i64 @__olang_fmt_i64(ptr null, i64 %t554)
  %t556 = add i64 %t552, %t555
  %t557 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d380, i32 0, i32 1) }, 1
  %t558 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d380, i32 0, i32 1) }, 0
  %t559 = add i64 %t556, %t558
  %t561 = extractvalue { i64, ptr } %t548, 1
  %t562 = extractvalue { i64, ptr } %t548, 0
  %t563 = add i64 %t559, %t562
  %t564 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d381, i32 0, i32 1) }, 1
  %t565 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d381, i32 0, i32 1) }, 0
  %t566 = add i64 %t563, %t565
  %t568 = extractvalue { i64, ptr } %t549, 1
  %t569 = extractvalue { i64, ptr } %t549, 0
  %t570 = add i64 %t566, %t569
  %t571 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d382, i32 0, i32 1) }, 1
  %t572 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d382, i32 0, i32 1) }, 0
  %t573 = add i64 %t570, %t572
  %t575 = extractvalue { i64, ptr } %t550, 1
  %t576 = extractvalue { i64, ptr } %t550, 0
  %t577 = add i64 %t573, %t576
  %t578 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t579 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
  %t580 = add i64 %t577, %t579
  %t581 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t580)
  call void @olang_textcopy(ptr %t581, ptr %t551, i64 %t552)
  %t582 = getelementptr i8, ptr %t581, i64 %t552
  %t583 = call i64 @__olang_fmt_i64(ptr %t582, i64 %t554)
  %t584 = getelementptr i8, ptr %t582, i64 %t555
  call void @olang_textcopy(ptr %t584, ptr %t557, i64 %t558)
  %t585 = getelementptr i8, ptr %t584, i64 %t558
  call void @olang_textcopy(ptr %t585, ptr %t561, i64 %t562)
  %t586 = getelementptr i8, ptr %t585, i64 %t562
  call void @olang_textcopy(ptr %t586, ptr %t564, i64 %t565)
  %t587 = getelementptr i8, ptr %t586, i64 %t565
  call void @olang_textcopy(ptr %t587, ptr %t568, i64 %t569)
  %t588 = getelementptr i8, ptr %t587, i64 %t569
  call void @olang_textcopy(ptr %t588, ptr %t571, i64 %t572)
  %t589 = getelementptr i8, ptr %t588, i64 %t572
  call void @olang_textcopy(ptr %t589, ptr %t575, i64 %t576)
  %t590 = getelementptr i8, ptr %t589, i64 %t576
  call void @olang_textcopy(ptr %t590, ptr %t578, i64 %t579)
  %t591 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t592 = insertvalue { i64, ptr } %t591, ptr %t581, 1
  %t594 = extractvalue { i64, ptr } %t592, 0
  %t595 = extractvalue { i64, ptr } %t592, 1
  %t596 = mul i64 %t594, 1
  %t597 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t596)
  call void @llvm.memcpy.p0.p0.i64(ptr %t597, ptr %t595, i64 %t596, i1 false)
  %t598 = insertvalue { i64, ptr } undef, i64 %t594, 0
  %t599 = insertvalue { i64, ptr } %t598, ptr %t597, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t546, { i64, ptr } %t599)
  br label %bb28
bb28:
  %t602 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t602, ptr %l143, !tbaa !27
  %t603 = load i32, ptr %l13, !tbaa !23
  %t605 = sext i32 %t603 to i64
  %t606 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !27
  %t608 = getelementptr i64, ptr %t607, i64 %t605
  %t609 = load i64, ptr %t608, !tbaa !34
  %t611 = icmp sge i64 %t609, 0
  br i1 %t611, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s13
  %t613 = load ptr, ptr %l7, !tbaa !29
  store ptr %t613, ptr %l147, !tbaa !29
  %t614 = load i32, ptr %l15, !tbaa !23
  %t615 = load ptr, ptr %l147, !tbaa !29
  %t616 = call ptr @__olang_scope_or(ptr %v5, ptr %t615)
  %t617 = ptrtoint ptr %t616 to i64
  %t619 = inttoptr i64 %t617 to ptr
  %t620 = load ptr, ptr %l147, !tbaa !29
  %t622 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %t619, ptr %t620, i32 %t614)
  store i64 %t622, ptr %l150
  br label %bb31
bb30:
  br label %bb46
bb31:
  %t623 = load i64, ptr %l150, !tbaa !24
  store i64 %t623, ptr %l18, !tbaa !24
  %t624 = load i64, ptr %l18, !tbaa !24
  %t626 = icmp sgt i64 %t624, 8
  br i1 %t626, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d384, i32 0, i32 1) }, ptr %l153, !tbaa !27
  br label %bb34
bb33:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d385, i32 0, i32 1) }, ptr %l153, !tbaa !27
  br label %bb34
bb34:
  %t628 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t628, ptr %l19, !tbaa !27
  %t629 = load ptr, ptr %l6, !tbaa !29
  store ptr %t629, ptr %l154, !tbaa !29
  %t630 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t631 = load ptr, ptr %l154, !tbaa !29
  %t632 = call ptr @__olang_scope_or(ptr %v5, ptr %t631)
  %t633 = ptrtoint ptr %t632 to i64
  %t635 = inttoptr i64 %t633 to ptr
  %t636 = load ptr, ptr @__olang_prog_scope
  %t637 = load ptr, ptr %l154, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t635, ptr %t636, ptr %t637, { i64, ptr } %t630)
  br label %bb35
bb35:
  %t639 = load ptr, ptr %l6, !tbaa !29
  store ptr %t639, ptr %l157, !tbaa !29
  %t640 = load ptr, ptr %l157, !tbaa !29
  %t641 = call ptr @__olang_scope_or(ptr %v5, ptr %t640)
  %t642 = ptrtoint ptr %t641 to i64
  %t644 = inttoptr i64 %t642 to ptr
  %t645 = load ptr, ptr %l157, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %t644, ptr %s13, ptr %s13, ptr %t645, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d386, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d387, i32 0, i32 1) })
  br label %bb36
bb36:
  %t646 = load ptr, ptr %l1, !tbaa !29
  %t647 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t648 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t648, ptr %l161, !tbaa !27
  %t649 = load i32, ptr %l13, !tbaa !23
  %t651 = sext i32 %t649 to i64
  %t652 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t653 = load ptr, ptr %t652, !tbaa !27
  %t654 = getelementptr i64, ptr %t653, i64 %t651
  %t655 = load i64, ptr %t654, !tbaa !34
  %t656 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t657 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t658 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d388, i32 0, i32 1) }, 1
  %t659 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d388, i32 0, i32 1) }, 0
  %t661 = extractvalue { i64, ptr } %t647, 1
  %t662 = extractvalue { i64, ptr } %t647, 0
  %t663 = add i64 %t659, %t662
  %t664 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d389, i32 0, i32 1) }, 1
  %t665 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d389, i32 0, i32 1) }, 0
  %t666 = add i64 %t663, %t665
  %t668 = call i64 @__olang_fmt_i64(ptr null, i64 %t655)
  %t669 = add i64 %t666, %t668
  %t670 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d390, i32 0, i32 1) }, 1
  %t671 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d390, i32 0, i32 1) }, 0
  %t672 = add i64 %t669, %t671
  %t674 = extractvalue { i64, ptr } %t656, 1
  %t675 = extractvalue { i64, ptr } %t656, 0
  %t676 = add i64 %t672, %t675
  %t677 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d391, i32 0, i32 1) }, 1
  %t678 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d391, i32 0, i32 1) }, 0
  %t679 = add i64 %t676, %t678
  %t681 = extractvalue { i64, ptr } %t657, 1
  %t682 = extractvalue { i64, ptr } %t657, 0
  %t683 = add i64 %t679, %t682
  %t684 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d392, i32 0, i32 1) }, 1
  %t685 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d392, i32 0, i32 1) }, 0
  %t686 = add i64 %t683, %t685
  %t687 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t686)
  call void @olang_textcopy(ptr %t687, ptr %t658, i64 %t659)
  %t688 = getelementptr i8, ptr %t687, i64 %t659
  call void @olang_textcopy(ptr %t688, ptr %t661, i64 %t662)
  %t689 = getelementptr i8, ptr %t688, i64 %t662
  call void @olang_textcopy(ptr %t689, ptr %t664, i64 %t665)
  %t690 = getelementptr i8, ptr %t689, i64 %t665
  %t691 = call i64 @__olang_fmt_i64(ptr %t690, i64 %t655)
  %t692 = getelementptr i8, ptr %t690, i64 %t668
  call void @olang_textcopy(ptr %t692, ptr %t670, i64 %t671)
  %t693 = getelementptr i8, ptr %t692, i64 %t671
  call void @olang_textcopy(ptr %t693, ptr %t674, i64 %t675)
  %t694 = getelementptr i8, ptr %t693, i64 %t675
  call void @olang_textcopy(ptr %t694, ptr %t677, i64 %t678)
  %t695 = getelementptr i8, ptr %t694, i64 %t678
  call void @olang_textcopy(ptr %t695, ptr %t681, i64 %t682)
  %t696 = getelementptr i8, ptr %t695, i64 %t682
  call void @olang_textcopy(ptr %t696, ptr %t684, i64 %t685)
  %t697 = insertvalue { i64, ptr } undef, i64 %t686, 0
  %t698 = insertvalue { i64, ptr } %t697, ptr %t687, 1
  %t700 = extractvalue { i64, ptr } %t698, 0
  %t701 = extractvalue { i64, ptr } %t698, 1
  %t702 = mul i64 %t700, 1
  %t703 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t702)
  call void @llvm.memcpy.p0.p0.i64(ptr %t703, ptr %t701, i64 %t702, i1 false)
  %t704 = insertvalue { i64, ptr } undef, i64 %t700, 0
  %t705 = insertvalue { i64, ptr } %t704, ptr %t703, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s13, ptr %t646, { i64, ptr } %t705)
  br label %bb37
bb37:
  %t708 = load ptr, ptr %l1, !tbaa !29
  %t709 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t710 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t711 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t712 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t713 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t714 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d393, i32 0, i32 1) }, 1
  %t715 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d393, i32 0, i32 1) }, 0
  %t717 = extractvalue { i64, ptr } %t709, 1
  %t718 = extractvalue { i64, ptr } %t709, 0
  %t719 = add i64 %t715, %t718
  %t720 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d394, i32 0, i32 1) }, 1
  %t721 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d394, i32 0, i32 1) }, 0
  %t722 = add i64 %t719, %t721
  %t724 = extractvalue { i64, ptr } %t710, 1
  %t725 = extractvalue { i64, ptr } %t710, 0
  %t726 = add i64 %t722, %t725
  %t727 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d395, i32 0, i32 1) }, 1
  %t728 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d395, i32 0, i32 1) }, 0
  %t729 = add i64 %t726, %t728
  %t731 = extractvalue { i64, ptr } %t711, 1
  %t732 = extractvalue { i64, ptr } %t711, 0
  %t733 = add i64 %t729, %t732
  %t734 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d396, i32 0, i32 1) }, 1
  %t735 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d396, i32 0, i32 1) }, 0
  %t736 = add i64 %t733, %t735
  %t738 = extractvalue { i64, ptr } %t712, 1
  %t739 = extractvalue { i64, ptr } %t712, 0
  %t740 = add i64 %t736, %t739
  %t741 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d397, i32 0, i32 1) }, 1
  %t742 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d397, i32 0, i32 1) }, 0
  %t743 = add i64 %t740, %t742
  %t745 = extractvalue { i64, ptr } %t713, 1
  %t746 = extractvalue { i64, ptr } %t713, 0
  %t747 = add i64 %t743, %t746
  %t748 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t749 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
  %t750 = add i64 %t747, %t749
  %t751 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t750)
  call void @olang_textcopy(ptr %t751, ptr %t714, i64 %t715)
  %t752 = getelementptr i8, ptr %t751, i64 %t715
  call void @olang_textcopy(ptr %t752, ptr %t717, i64 %t718)
  %t753 = getelementptr i8, ptr %t752, i64 %t718
  call void @olang_textcopy(ptr %t753, ptr %t720, i64 %t721)
  %t754 = getelementptr i8, ptr %t753, i64 %t721
  call void @olang_textcopy(ptr %t754, ptr %t724, i64 %t725)
  %t755 = getelementptr i8, ptr %t754, i64 %t725
  call void @olang_textcopy(ptr %t755, ptr %t727, i64 %t728)
  %t756 = getelementptr i8, ptr %t755, i64 %t728
  call void @olang_textcopy(ptr %t756, ptr %t731, i64 %t732)
  %t757 = getelementptr i8, ptr %t756, i64 %t732
  call void @olang_textcopy(ptr %t757, ptr %t734, i64 %t735)
  %t758 = getelementptr i8, ptr %t757, i64 %t735
  call void @olang_textcopy(ptr %t758, ptr %t738, i64 %t739)
  %t759 = getelementptr i8, ptr %t758, i64 %t739
  call void @olang_textcopy(ptr %t759, ptr %t741, i64 %t742)
  %t760 = getelementptr i8, ptr %t759, i64 %t742
  call void @olang_textcopy(ptr %t760, ptr %t745, i64 %t746)
  %t761 = getelementptr i8, ptr %t760, i64 %t746
  call void @olang_textcopy(ptr %t761, ptr %t748, i64 %t749)
  %t762 = insertvalue { i64, ptr } undef, i64 %t750, 0
  %t763 = insertvalue { i64, ptr } %t762, ptr %t751, 1
  %t765 = extractvalue { i64, ptr } %t763, 0
  %t766 = extractvalue { i64, ptr } %t763, 1
  %t767 = mul i64 %t765, 1
  %t768 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t767)
  call void @llvm.memcpy.p0.p0.i64(ptr %t768, ptr %t766, i64 %t767, i1 false)
  %t769 = insertvalue { i64, ptr } undef, i64 %t765, 0
  %t770 = insertvalue { i64, ptr } %t769, ptr %t768, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s13, ptr %t708, { i64, ptr } %t770)
  br label %bb38
bb38:
  %t773 = load ptr, ptr %l1, !tbaa !29
  store ptr %t773, ptr %l176, !tbaa !29
  %t774 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t774, ptr %l177, !tbaa !27
  %t775 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t775, ptr %l178, !tbaa !27
  %t776 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t776, ptr %l179, !tbaa !27
  %t777 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t777, ptr %l180, !tbaa !27
  %t778 = load i64, ptr %l18, !tbaa !24
  %t780 = icmp sgt i64 %t778, 8
  br i1 %t780, label %bb39, label %bb40
bb39:
  %t782 = load i64, ptr %l18, !tbaa !24
  %t783 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d399, i32 0, i32 1) }, 1
  %t784 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d399, i32 0, i32 1) }, 0
  %t786 = call i64 @__olang_fmt_i64(ptr null, i64 %t782)
  %t787 = add i64 %t784, %t786
  %t788 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t787)
  call void @olang_textcopy(ptr %t788, ptr %t783, i64 %t784)
  %t789 = getelementptr i8, ptr %t788, i64 %t784
  %t790 = call i64 @__olang_fmt_i64(ptr %t789, i64 %t782)
  %t791 = insertvalue { i64, ptr } undef, i64 %t787, 0
  %t792 = insertvalue { i64, ptr } %t791, ptr %t788, 1
  %t794 = extractvalue { i64, ptr } %t792, 0
  %t795 = extractvalue { i64, ptr } %t792, 1
  %t796 = mul i64 %t794, 1
  %t797 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t796)
  call void @llvm.memcpy.p0.p0.i64(ptr %t797, ptr %t795, i64 %t796, i1 false)
  %t798 = insertvalue { i64, ptr } undef, i64 %t794, 0
  %t799 = insertvalue { i64, ptr } %t798, ptr %t797, 1
  store { i64, ptr } %t799, ptr %l183, !tbaa !27
  br label %bb41
bb40:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d400, i32 0, i32 1) }, ptr %l183, !tbaa !27
  br label %bb41
bb41:
  %t801 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d401, i32 0, i32 1) }, 1
  %t802 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d401, i32 0, i32 1) }, 0
  %t803 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t804 = extractvalue { i64, ptr } %t803, 1
  %t805 = extractvalue { i64, ptr } %t803, 0
  %t806 = add i64 %t802, %t805
  %t807 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d402, i32 0, i32 1) }, 1
  %t808 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d402, i32 0, i32 1) }, 0
  %t809 = add i64 %t806, %t808
  %t810 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t811 = extractvalue { i64, ptr } %t810, 1
  %t812 = extractvalue { i64, ptr } %t810, 0
  %t813 = add i64 %t809, %t812
  %t814 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d403, i32 0, i32 1) }, 1
  %t815 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d403, i32 0, i32 1) }, 0
  %t816 = add i64 %t813, %t815
  %t817 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t818 = extractvalue { i64, ptr } %t817, 1
  %t819 = extractvalue { i64, ptr } %t817, 0
  %t820 = add i64 %t816, %t819
  %t821 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d404, i32 0, i32 1) }, 1
  %t822 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d404, i32 0, i32 1) }, 0
  %t823 = add i64 %t820, %t822
  %t824 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t825 = extractvalue { i64, ptr } %t824, 1
  %t826 = extractvalue { i64, ptr } %t824, 0
  %t827 = add i64 %t823, %t826
  %t828 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d405, i32 0, i32 1) }, 1
  %t829 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d405, i32 0, i32 1) }, 0
  %t830 = add i64 %t827, %t829
  %t831 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t832 = extractvalue { i64, ptr } %t831, 1
  %t833 = extractvalue { i64, ptr } %t831, 0
  %t834 = add i64 %t830, %t833
  %t835 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d406, i32 0, i32 1) }, 1
  %t836 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d406, i32 0, i32 1) }, 0
  %t837 = add i64 %t834, %t836
  %t838 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t837)
  call void @olang_textcopy(ptr %t838, ptr %t801, i64 %t802)
  %t839 = getelementptr i8, ptr %t838, i64 %t802
  call void @olang_textcopy(ptr %t839, ptr %t804, i64 %t805)
  %t840 = getelementptr i8, ptr %t839, i64 %t805
  call void @olang_textcopy(ptr %t840, ptr %t807, i64 %t808)
  %t841 = getelementptr i8, ptr %t840, i64 %t808
  call void @olang_textcopy(ptr %t841, ptr %t811, i64 %t812)
  %t842 = getelementptr i8, ptr %t841, i64 %t812
  call void @olang_textcopy(ptr %t842, ptr %t814, i64 %t815)
  %t843 = getelementptr i8, ptr %t842, i64 %t815
  call void @olang_textcopy(ptr %t843, ptr %t818, i64 %t819)
  %t844 = getelementptr i8, ptr %t843, i64 %t819
  call void @olang_textcopy(ptr %t844, ptr %t821, i64 %t822)
  %t845 = getelementptr i8, ptr %t844, i64 %t822
  call void @olang_textcopy(ptr %t845, ptr %t825, i64 %t826)
  %t846 = getelementptr i8, ptr %t845, i64 %t826
  call void @olang_textcopy(ptr %t846, ptr %t828, i64 %t829)
  %t847 = getelementptr i8, ptr %t846, i64 %t829
  call void @olang_textcopy(ptr %t847, ptr %t832, i64 %t833)
  %t848 = getelementptr i8, ptr %t847, i64 %t833
  call void @olang_textcopy(ptr %t848, ptr %t835, i64 %t836)
  %t849 = insertvalue { i64, ptr } undef, i64 %t837, 0
  %t850 = insertvalue { i64, ptr } %t849, ptr %t838, 1
  %t852 = extractvalue { i64, ptr } %t850, 0
  %t853 = extractvalue { i64, ptr } %t850, 1
  %t854 = mul i64 %t852, 1
  %t855 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t854)
  call void @llvm.memcpy.p0.p0.i64(ptr %t855, ptr %t853, i64 %t854, i1 false)
  %t856 = insertvalue { i64, ptr } undef, i64 %t852, 0
  %t857 = insertvalue { i64, ptr } %t856, ptr %t855, 1
  %t858 = load ptr, ptr %l176, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s13, ptr %t858, { i64, ptr } %t857)
  br label %bb42
bb42:
  %t860 = load ptr, ptr %l1, !tbaa !29
  %t861 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t862 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t863 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t864 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d407, i32 0, i32 1) }, 1
  %t865 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d407, i32 0, i32 1) }, 0
  %t867 = extractvalue { i64, ptr } %t861, 1
  %t868 = extractvalue { i64, ptr } %t861, 0
  %t869 = add i64 %t865, %t868
  %t870 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d408, i32 0, i32 1) }, 1
  %t871 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d408, i32 0, i32 1) }, 0
  %t872 = add i64 %t869, %t871
  %t874 = extractvalue { i64, ptr } %t862, 1
  %t875 = extractvalue { i64, ptr } %t862, 0
  %t876 = add i64 %t872, %t875
  %t877 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d409, i32 0, i32 1) }, 1
  %t878 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d409, i32 0, i32 1) }, 0
  %t879 = add i64 %t876, %t878
  %t881 = extractvalue { i64, ptr } %t863, 1
  %t882 = extractvalue { i64, ptr } %t863, 0
  %t883 = add i64 %t879, %t882
  %t884 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d410, i32 0, i32 1) }, 1
  %t885 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d410, i32 0, i32 1) }, 0
  %t886 = add i64 %t883, %t885
  %t887 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t886)
  call void @olang_textcopy(ptr %t887, ptr %t864, i64 %t865)
  %t888 = getelementptr i8, ptr %t887, i64 %t865
  call void @olang_textcopy(ptr %t888, ptr %t867, i64 %t868)
  %t889 = getelementptr i8, ptr %t888, i64 %t868
  call void @olang_textcopy(ptr %t889, ptr %t870, i64 %t871)
  %t890 = getelementptr i8, ptr %t889, i64 %t871
  call void @olang_textcopy(ptr %t890, ptr %t874, i64 %t875)
  %t891 = getelementptr i8, ptr %t890, i64 %t875
  call void @olang_textcopy(ptr %t891, ptr %t877, i64 %t878)
  %t892 = getelementptr i8, ptr %t891, i64 %t878
  call void @olang_textcopy(ptr %t892, ptr %t881, i64 %t882)
  %t893 = getelementptr i8, ptr %t892, i64 %t882
  call void @olang_textcopy(ptr %t893, ptr %t884, i64 %t885)
  %t894 = insertvalue { i64, ptr } undef, i64 %t886, 0
  %t895 = insertvalue { i64, ptr } %t894, ptr %t887, 1
  %t897 = extractvalue { i64, ptr } %t895, 0
  %t898 = extractvalue { i64, ptr } %t895, 1
  %t899 = mul i64 %t897, 1
  %t900 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t899)
  call void @llvm.memcpy.p0.p0.i64(ptr %t900, ptr %t898, i64 %t899, i1 false)
  %t901 = insertvalue { i64, ptr } undef, i64 %t897, 0
  %t902 = insertvalue { i64, ptr } %t901, ptr %t900, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s13, ptr %t860, { i64, ptr } %t902)
  br label %bb43
bb43:
  %t905 = load ptr, ptr %l1, !tbaa !29
  %t906 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t907 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t908 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d411, i32 0, i32 1) }, 1
  %t909 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d411, i32 0, i32 1) }, 0
  %t911 = extractvalue { i64, ptr } %t906, 1
  %t912 = extractvalue { i64, ptr } %t906, 0
  %t913 = add i64 %t909, %t912
  %t914 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d412, i32 0, i32 1) }, 1
  %t915 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d412, i32 0, i32 1) }, 0
  %t916 = add i64 %t913, %t915
  %t918 = extractvalue { i64, ptr } %t907, 1
  %t919 = extractvalue { i64, ptr } %t907, 0
  %t920 = add i64 %t916, %t919
  %t921 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d413, i32 0, i32 1) }, 1
  %t922 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d413, i32 0, i32 1) }, 0
  %t923 = add i64 %t920, %t922
  %t924 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t923)
  call void @olang_textcopy(ptr %t924, ptr %t908, i64 %t909)
  %t925 = getelementptr i8, ptr %t924, i64 %t909
  call void @olang_textcopy(ptr %t925, ptr %t911, i64 %t912)
  %t926 = getelementptr i8, ptr %t925, i64 %t912
  call void @olang_textcopy(ptr %t926, ptr %t914, i64 %t915)
  %t927 = getelementptr i8, ptr %t926, i64 %t915
  call void @olang_textcopy(ptr %t927, ptr %t918, i64 %t919)
  %t928 = getelementptr i8, ptr %t927, i64 %t919
  call void @olang_textcopy(ptr %t928, ptr %t921, i64 %t922)
  %t929 = insertvalue { i64, ptr } undef, i64 %t923, 0
  %t930 = insertvalue { i64, ptr } %t929, ptr %t924, 1
  %t932 = extractvalue { i64, ptr } %t930, 0
  %t933 = extractvalue { i64, ptr } %t930, 1
  %t934 = mul i64 %t932, 1
  %t935 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t934)
  call void @llvm.memcpy.p0.p0.i64(ptr %t935, ptr %t933, i64 %t934, i1 false)
  %t936 = insertvalue { i64, ptr } undef, i64 %t932, 0
  %t937 = insertvalue { i64, ptr } %t936, ptr %t935, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s13, ptr %t905, { i64, ptr } %t937)
  br label %bb44
bb44:
  %t940 = load ptr, ptr %l1, !tbaa !29
  %t941 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t942 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t943 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t944 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t945 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t946 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d414, i32 0, i32 1) }, 1
  %t947 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d414, i32 0, i32 1) }, 0
  %t949 = extractvalue { i64, ptr } %t941, 1
  %t950 = extractvalue { i64, ptr } %t941, 0
  %t951 = add i64 %t947, %t950
  %t952 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d415, i32 0, i32 1) }, 1
  %t953 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d415, i32 0, i32 1) }, 0
  %t954 = add i64 %t951, %t953
  %t956 = extractvalue { i64, ptr } %t942, 1
  %t957 = extractvalue { i64, ptr } %t942, 0
  %t958 = add i64 %t954, %t957
  %t959 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d416, i32 0, i32 1) }, 1
  %t960 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d416, i32 0, i32 1) }, 0
  %t961 = add i64 %t958, %t960
  %t963 = extractvalue { i64, ptr } %t943, 1
  %t964 = extractvalue { i64, ptr } %t943, 0
  %t965 = add i64 %t961, %t964
  %t966 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d417, i32 0, i32 1) }, 1
  %t967 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d417, i32 0, i32 1) }, 0
  %t968 = add i64 %t965, %t967
  %t970 = extractvalue { i64, ptr } %t944, 1
  %t971 = extractvalue { i64, ptr } %t944, 0
  %t972 = add i64 %t968, %t971
  %t973 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d418, i32 0, i32 1) }, 1
  %t974 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d418, i32 0, i32 1) }, 0
  %t975 = add i64 %t972, %t974
  %t977 = extractvalue { i64, ptr } %t945, 1
  %t978 = extractvalue { i64, ptr } %t945, 0
  %t979 = add i64 %t975, %t978
  %t980 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d419, i32 0, i32 1) }, 1
  %t981 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d419, i32 0, i32 1) }, 0
  %t982 = add i64 %t979, %t981
  %t983 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t982)
  call void @olang_textcopy(ptr %t983, ptr %t946, i64 %t947)
  %t984 = getelementptr i8, ptr %t983, i64 %t947
  call void @olang_textcopy(ptr %t984, ptr %t949, i64 %t950)
  %t985 = getelementptr i8, ptr %t984, i64 %t950
  call void @olang_textcopy(ptr %t985, ptr %t952, i64 %t953)
  %t986 = getelementptr i8, ptr %t985, i64 %t953
  call void @olang_textcopy(ptr %t986, ptr %t956, i64 %t957)
  %t987 = getelementptr i8, ptr %t986, i64 %t957
  call void @olang_textcopy(ptr %t987, ptr %t959, i64 %t960)
  %t988 = getelementptr i8, ptr %t987, i64 %t960
  call void @olang_textcopy(ptr %t988, ptr %t963, i64 %t964)
  %t989 = getelementptr i8, ptr %t988, i64 %t964
  call void @olang_textcopy(ptr %t989, ptr %t966, i64 %t967)
  %t990 = getelementptr i8, ptr %t989, i64 %t967
  call void @olang_textcopy(ptr %t990, ptr %t970, i64 %t971)
  %t991 = getelementptr i8, ptr %t990, i64 %t971
  call void @olang_textcopy(ptr %t991, ptr %t973, i64 %t974)
  %t992 = getelementptr i8, ptr %t991, i64 %t974
  call void @olang_textcopy(ptr %t992, ptr %t977, i64 %t978)
  %t993 = getelementptr i8, ptr %t992, i64 %t978
  call void @olang_textcopy(ptr %t993, ptr %t980, i64 %t981)
  %t994 = insertvalue { i64, ptr } undef, i64 %t982, 0
  %t995 = insertvalue { i64, ptr } %t994, ptr %t983, 1
  %t997 = extractvalue { i64, ptr } %t995, 0
  %t998 = extractvalue { i64, ptr } %t995, 1
  %t999 = mul i64 %t997, 1
  %t1000 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t999)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1000, ptr %t998, i64 %t999, i1 false)
  %t1001 = insertvalue { i64, ptr } undef, i64 %t997, 0
  %t1002 = insertvalue { i64, ptr } %t1001, ptr %t1000, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s13, ptr %t940, { i64, ptr } %t1002)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s13)
  br label %bb46
bb46:
  %t1005 = load ptr, ptr %l1, !tbaa !29
  %t1006 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t1007 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t1008 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d420, i32 0, i32 1) }, 1
  %t1009 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d420, i32 0, i32 1) }, 0
  %t1011 = extractvalue { i64, ptr } %t1006, 1
  %t1012 = extractvalue { i64, ptr } %t1006, 0
  %t1013 = add i64 %t1009, %t1012
  %t1014 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d421, i32 0, i32 1) }, 1
  %t1015 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d421, i32 0, i32 1) }, 0
  %t1016 = add i64 %t1013, %t1015
  %t1018 = extractvalue { i64, ptr } %t1007, 1
  %t1019 = extractvalue { i64, ptr } %t1007, 0
  %t1020 = add i64 %t1016, %t1019
  %t1021 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d422, i32 0, i32 1) }, 1
  %t1022 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d422, i32 0, i32 1) }, 0
  %t1023 = add i64 %t1020, %t1022
  %t1024 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t1023)
  call void @olang_textcopy(ptr %t1024, ptr %t1008, i64 %t1009)
  %t1025 = getelementptr i8, ptr %t1024, i64 %t1009
  call void @olang_textcopy(ptr %t1025, ptr %t1011, i64 %t1012)
  %t1026 = getelementptr i8, ptr %t1025, i64 %t1012
  call void @olang_textcopy(ptr %t1026, ptr %t1014, i64 %t1015)
  %t1027 = getelementptr i8, ptr %t1026, i64 %t1015
  call void @olang_textcopy(ptr %t1027, ptr %t1018, i64 %t1019)
  %t1028 = getelementptr i8, ptr %t1027, i64 %t1019
  call void @olang_textcopy(ptr %t1028, ptr %t1021, i64 %t1022)
  %t1029 = insertvalue { i64, ptr } undef, i64 %t1023, 0
  %t1030 = insertvalue { i64, ptr } %t1029, ptr %t1024, 1
  %t1032 = extractvalue { i64, ptr } %t1030, 0
  %t1033 = extractvalue { i64, ptr } %t1030, 1
  %t1034 = mul i64 %t1032, 1
  %t1035 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t1034)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1035, ptr %t1033, i64 %t1034, i1 false)
  %t1036 = insertvalue { i64, ptr } undef, i64 %t1032, 0
  %t1037 = insertvalue { i64, ptr } %t1036, ptr %t1035, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t1005, { i64, ptr } %t1037)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb48:
  %t1040 = load i32, ptr %l12, !tbaa !23
  %t1042 = add i32 %t1040, 1
  store i32 %t1042, ptr %l12, !tbaa !23
  br label %bb7
bb49:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  store i1 %t11, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l5, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb6
bb5:
  %t14 = load i32, ptr %l1, !tbaa !23
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t18 = icmp eq i32 %t14, %t15
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:fnEm", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/emit:Emitter", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load i32, ptr %l1, !tbaa !23
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = call ptr @__olang_scope_or(ptr %v1, ptr %t30)
  %t32 = ptrtoint ptr %t31 to i64
  %t34 = inttoptr i64 %t32 to ptr
  %t35 = load ptr, ptr %l16, !tbaa !29
  %t37 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %t34, ptr %t35, i32 %t29)
  store i1 %t37, ptr %l19
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/emit:fnEm", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/emit:Emitter", ptr %t41, i32 0, i32 3
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l22, !tbaa !29
  %t45 = load i32, ptr %l1, !tbaa !23
  %t46 = load ptr, ptr %l22, !tbaa !29
  %t47 = call ptr @__olang_scope_or(ptr %v1, ptr %t46)
  %t48 = ptrtoint ptr %t47 to i64
  %t50 = inttoptr i64 %t48 to ptr
  %t51 = load ptr, ptr %l22, !tbaa !29
  %t53 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %t50, ptr %t51, i32 %t45)
  store i1 %t53, ptr %l25
  br label %bb11
bb11:
  %t54 = load i1, ptr %l25, !tbaa !21
  store i1 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5, ptr %a6, ptr %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, [21 x i64] }
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca { i64, [8 x i64] }
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca %"compiler/mir:Range"
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l33 = alloca i32
  %l34 = alloca %"compiler/mir:Call"
  %l35 = alloca i32
  %l36 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca i64
  %l44 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l54 = alloca ptr
  %l56 = alloca ptr
  %l58 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i64
  %l84 = alloca ptr
  %l87 = alloca { i64, [21 x i64] }
  %l88 = alloca { i64, [21 x i64] }
  %l95 = alloca { i64, [21 x i64] }
  %l107 = alloca ptr
  %l111 = alloca i64
  %l116 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca i32
  %l146 = alloca i32
  %l164 = alloca ptr
  %l166 = alloca ptr
  %l173 = alloca %"compiler/mir:Case"
  %l185 = alloca ptr
  %l189 = alloca %"compiler/mir:Call"
  %l207 = alloca i1
  %l251 = alloca i64
  %l253 = alloca i64
  %l258 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l8, !tbaa !29
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t6, ptr %l44, !tbaa !27
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr i64, ptr %t10, i64 %t7
  %t12 = load i64, ptr %t11, !tbaa !34
  store i64 %t12, ptr %l9, !tbaa !24
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t16 = getelementptr %"compiler/mir:Fn", ptr %t14, i32 0, i32 9
  store ptr %t16, ptr %l48, !tbaa !29
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load ptr, ptr %l48, !tbaa !29
  %t19 = call ptr @__olang_scope_or(ptr %v4, ptr %t18)
  %t20 = ptrtoint ptr %t19 to i64
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/emit:fnEm", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = call ptr @__olang_scope_or(ptr %v4, ptr %t24)
  %t27 = ptrtoint ptr %t26 to i64
  %t29 = inttoptr i64 %t20 to ptr
  %t31 = inttoptr i64 %t27 to ptr
  %t32 = load ptr, ptr %l48, !tbaa !29
  %t34 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t29, ptr %t31, ptr %t32, i64 %t17)
  store ptr %t34, ptr %l54
  br label %bb1
bb1:
  %t35 = load ptr, ptr %l54, !tbaa !29
  store ptr %t35, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  %t36 = load ptr, ptr %l10, !tbaa !29
  %t38 = getelementptr %"compiler/mir:BasicBlock", ptr %t36, i32 0, i32 0
  store ptr %t38, ptr %l56, !tbaa !29
  %t39 = load ptr, ptr %l56, !tbaa !29
  %t40 = call ptr @__olang_scope_or(ptr %v4, ptr %t39)
  %t41 = ptrtoint ptr %t40 to i64
  %t43 = inttoptr i64 %t41 to ptr
  %t44 = load ptr, ptr %l56, !tbaa !29
  %t45 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %t43, ptr %t44)
  store i64 %t45, ptr %l58
  br label %bb2
bb2:
  %t46 = load i64, ptr %l58, !tbaa !24
  store i64 %t46, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t47 = load i64, ptr %l12, !tbaa !24
  %t48 = load i64, ptr %l11, !tbaa !24
  %t51 = icmp sgt i64 %t47, %t48
  br i1 %t51, label %bb3, label %bb4
bb3:
  %t53 = load i64, ptr %l13, !tbaa !24
  %t55 = icmp sgt i64 %t53, 0
  br i1 %t55, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb8
bb5:
  %t57 = load i64, ptr %l12, !tbaa !24
  %t58 = load i64, ptr %l11, !tbaa !24
  %t61 = sub i64 %t57, %t58
  %t62 = load i64, ptr %l13, !tbaa !24
  %t65 = add i64 %t61, %t62
  %t67 = sub i64 %t65, 1
  %t68 = load i64, ptr %l13, !tbaa !24
  %t71 = sdiv i64 %t67, %t68
  store i64 %t71, ptr %l65, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb7
bb7:
  %t73 = load i64, ptr %l65, !tbaa !24
  store i64 %t73, ptr %l62, !tbaa !24
  br label %bb8
bb8:
  %t74 = load i64, ptr %l62, !tbaa !24
  store i64 %t74, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb9
bb9:
  %t75 = load i64, ptr %l15, !tbaa !24
  %t76 = load i64, ptr %l14, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb10, label %bb11
bb10:
  br label %bb42
bb11:
  br label %bb12
bb12:
  %t83 = load i64, ptr %l11, !tbaa !24
  %t84 = load i64, ptr %l15, !tbaa !24
  %t85 = load i64, ptr %l13, !tbaa !24
  %t88 = mul i64 %t84, %t85
  %t91 = add i64 %t83, %t88
  store i64 %t91, ptr %l16, !tbaa !24
  %t93 = load ptr, ptr %l10, !tbaa !29
  %t95 = getelementptr %"compiler/mir:BasicBlock", ptr %t93, i32 0, i32 0
  store ptr %t95, ptr %l84, !tbaa !29
  %t96 = load i64, ptr %l16, !tbaa !24
  %t97 = load ptr, ptr %l84, !tbaa !29
  %t98 = call ptr @__olang_scope_or(ptr %v4, ptr %t97)
  %t99 = ptrtoint ptr %t98 to i64
  %t101 = inttoptr i64 %t99 to ptr
  %t102 = load ptr, ptr %l84, !tbaa !29
  %t104 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %t101, ptr %t102, i64 %t96)
  store { i64, [21 x i64] } %t104, ptr %l87
  br label %bb13
bb13:
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %l87, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l88, ptr %l17, i64 176, i1 false)
  %t105 = load { i64, [21 x i64] }, ptr %l88
  %t106 = extractvalue { i64, [21 x i64] } %t105, 0
  %t107 = icmp eq i64 %t106, 3
  br i1 %t107, label %bb14, label %bb15
bb14:
  %t109 = getelementptr { i64, [21 x i64] }, ptr %l17, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32 }, ptr %t109, i32 0, i32 1
  %t111 = load i32, ptr %t110
  store i32 %t111, ptr %l18, !tbaa !23
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t113 = load i32, ptr %l18, !tbaa !23
  %t115 = sext i32 %t113 to i64
  %t116 = load i64, ptr %l1, !tbaa !24
  %t119 = icmp eq i64 %t115, %t116
  br i1 %t119, label %bb17, label %bb18
bb17:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb40
bb20:
  call void @llvm.memmove.p0.p0.i64(ptr %l95, ptr %l17, i64 176, i1 false)
  %t121 = load { i64, [21 x i64] }, ptr %l95
  %t122 = extractvalue { i64, [21 x i64] } %t121, 0
  %t123 = icmp eq i64 %t122, 4
  br i1 %t123, label %bb21, label %bb22
bb21:
  %t125 = getelementptr { i64, [21 x i64] }, ptr %l17, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32 }, ptr %t125, i32 0, i32 1
  %t127 = load i32, ptr %t126
  store i32 %t127, ptr %l19, !tbaa !23
  br label %bb23
bb22:
  br label %bb35
bb23:
  %t129 = load i32, ptr %l19, !tbaa !23
  %t131 = sext i32 %t129 to i64
  %t132 = load i64, ptr %l1, !tbaa !24
  %t135 = icmp ne i64 %t131, %t132
  br i1 %t135, label %bb24, label %bb25
bb24:
  br label %bb41
bb25:
  br label %bb26
bb26:
  %t137 = load i64, ptr %l4, !tbaa !24
  %t139 = icmp eq i64 %t137, 1
  br i1 %t139, label %bb27, label %bb28
bb27:
  %t141 = load i64, ptr %l9, !tbaa !24
  %t143 = icmp eq i64 %t141, 2
  br i1 %t143, label %bb29, label %bb30
bb28:
  br label %bb34
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  store ptr %a7, ptr %l107, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l3, !tbaa !24
  %t149 = load i64, ptr %l16, !tbaa !24
  %t153 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkKey(ptr %v0, ptr %t147, i64 %t148, i64 %t149)
  store i64 %t153, ptr %l111
  br label %bb32
bb32:
  %t154 = load i64, ptr %l9, !tbaa !24
  %t156 = icmp eq i64 %t154, 1
  %t157 = load ptr, ptr %l107, !tbaa !29
  %t158 = load i64, ptr %l111, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v3, ptr %t157, i64 %t158, i1 %t156)
  br label %bb33
bb33:
  br label %bb34
bb34:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_93708b25bcca1908_59bc9d4dcf3d1544)
  unreachable
bb40:
  br label %bb41
bb41:
  %t160 = load i64, ptr %l15, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l15, !tbaa !24
  br label %bb9
bb42:
  %t164 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %l116
  br label %bb43
bb43:
  %t165 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l116
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t165, ptr %l20
  %t166 = load ptr, ptr %l10, !tbaa !29
  %t168 = getelementptr %"compiler/mir:BasicBlock", ptr %t166, i32 0, i32 1
  %t169 = load { i64, [8 x i64] }, ptr %t168
  store { i64, [8 x i64] } %t169, ptr %l21
  %t171 = load { i64, [8 x i64] }, ptr %l21
  %t173 = extractvalue { i64, [8 x i64] } %t171, 0
  %t174 = icmp eq i64 %t173, 1
  br i1 %t174, label %bb44, label %bb45
bb44:
  %t176 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t177 = getelementptr { i32 }, ptr %t176, i32 0, i32 0
  %t178 = load i32, ptr %t177
  store i32 %t178, ptr %l22, !tbaa !23
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t180 = load i32, ptr %l22, !tbaa !23
  %t182 = sext i32 %t180 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t182)
  br label %bb47
bb47:
  br label %bb120
bb48:
  %t185 = load { i64, [8 x i64] }, ptr %l21
  %t187 = extractvalue { i64, [8 x i64] } %t185, 0
  %t188 = icmp eq i64 %t187, 2
  br i1 %t188, label %bb49, label %bb50
bb49:
  %t190 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t191 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t190, i32 0, i32 1
  %t192 = load i32, ptr %t191
  store i32 %t192, ptr %l23, !tbaa !23
  %t194 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t195 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t194, i32 0, i32 2
  %t196 = load i32, ptr %t195
  store i32 %t196, ptr %l24, !tbaa !23
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t198 = load i32, ptr %l23, !tbaa !23
  %t200 = sext i32 %t198 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t200)
  br label %bb52
bb52:
  %t203 = load i32, ptr %l24, !tbaa !23
  %t205 = sext i32 %t203 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t205)
  br label %bb53
bb53:
  br label %bb120
bb54:
  %t208 = load { i64, [8 x i64] }, ptr %l21
  %t210 = extractvalue { i64, [8 x i64] } %t208, 0
  %t211 = icmp eq i64 %t210, 3
  br i1 %t211, label %bb55, label %bb56
bb55:
  %t213 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t214 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t213, i32 0, i32 1
  %t215 = load %"compiler/mir:Range", ptr %t214
  store %"compiler/mir:Range" %t215, ptr %l25
  %t217 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t218 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t217, i32 0, i32 2
  %t219 = load i32, ptr %t218
  store i32 %t219, ptr %l26, !tbaa !23
  br label %bb57
bb56:
  br label %bb73
bb57:
  store i32 0, ptr %l27, !tbaa !23
  %t221 = getelementptr %"compiler/mir:Range", ptr %l25, i32 0, i32 1
  %t222 = load i32, ptr %t221, !tbaa !23
  store i32 %t222, ptr %l28, !tbaa !23
  store i32 1, ptr %l29, !tbaa !23
  %t224 = load i32, ptr %l28, !tbaa !23
  %t225 = load i32, ptr %l27, !tbaa !23
  %t228 = icmp sgt i32 %t224, %t225
  br i1 %t228, label %bb58, label %bb59
bb58:
  %t230 = load i32, ptr %l29, !tbaa !23
  %t232 = icmp sgt i32 %t230, 0
  br i1 %t232, label %bb60, label %bb61
bb59:
  store i32 0, ptr %l143, !tbaa !23
  br label %bb63
bb60:
  %t234 = load i32, ptr %l28, !tbaa !23
  %t235 = load i32, ptr %l27, !tbaa !23
  %t238 = sub i32 %t234, %t235
  %t239 = load i32, ptr %l29, !tbaa !23
  %t242 = add i32 %t238, %t239
  %t244 = sub i32 %t242, 1
  %t245 = load i32, ptr %l29, !tbaa !23
  %t248 = sdiv i32 %t244, %t245
  store i32 %t248, ptr %l146, !tbaa !23
  br label %bb62
bb61:
  store i32 0, ptr %l146, !tbaa !23
  br label %bb62
bb62:
  %t250 = load i32, ptr %l146, !tbaa !23
  store i32 %t250, ptr %l143, !tbaa !23
  br label %bb63
bb63:
  %t251 = load i32, ptr %l143, !tbaa !23
  store i32 %t251, ptr %l30, !tbaa !23
  store i32 0, ptr %l31, !tbaa !23
  br label %bb64
bb64:
  %t252 = load i32, ptr %l31, !tbaa !23
  %t253 = load i32, ptr %l30, !tbaa !23
  %t256 = icmp slt i32 %t252, %t253
  %t258 = xor i1 %t256, true
  br i1 %t258, label %bb65, label %bb66
bb65:
  br label %bb71
bb66:
  br label %bb67
bb67:
  %t260 = load i32, ptr %l27, !tbaa !23
  %t261 = load i32, ptr %l31, !tbaa !23
  %t262 = load i32, ptr %l29, !tbaa !23
  %t265 = mul i32 %t261, %t262
  %t268 = add i32 %t260, %t265
  store ptr %l20, ptr %l164, !tbaa !29
  %t270 = load ptr, ptr %l8, !tbaa !29
  %t272 = getelementptr %"compiler/mir:Fn", ptr %t270, i32 0, i32 15
  store ptr %t272, ptr %l166, !tbaa !29
  %t273 = getelementptr %"compiler/mir:Range", ptr %l25, i32 0, i32 0
  %t274 = load i32, ptr %t273, !tbaa !23
  %t276 = sext i32 %t274 to i64
  %t279 = sext i32 %t268 to i64
  %t282 = add i64 %t276, %t279
  %t283 = load ptr, ptr %l166, !tbaa !29
  %t284 = call ptr @__olang_scope_or(ptr %v4, ptr %t283)
  %t285 = ptrtoint ptr %t284 to i64
  %t287 = inttoptr i64 %t285 to ptr
  %t288 = load ptr, ptr %l166, !tbaa !29
  %t290 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %t287, ptr %t288, i64 %t282)
  store %"compiler/mir:Case" %t290, ptr %l173
  br label %bb68
bb68:
  %t291 = getelementptr %"compiler/mir:Case", ptr %l173, i32 0, i32 1
  %t292 = load i32, ptr %t291, !tbaa !23
  %t294 = sext i32 %t292 to i64
  %t295 = load ptr, ptr %l164, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t295, i64 %t294)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t297 = load i32, ptr %l31, !tbaa !23
  %t299 = add i32 %t297, 1
  store i32 %t299, ptr %l31, !tbaa !23
  br label %bb64
bb71:
  %t301 = load i32, ptr %l26, !tbaa !23
  %t303 = sext i32 %t301 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t303)
  br label %bb72
bb72:
  br label %bb120
bb73:
  %t306 = load { i64, [8 x i64] }, ptr %l21
  %t308 = extractvalue { i64, [8 x i64] } %t306, 0
  %t309 = icmp eq i64 %t308, 4
  br i1 %t309, label %bb74, label %bb75
bb74:
  %t311 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t312 = getelementptr { %"compiler/source:Span", i32 }, ptr %t311, i32 0, i32 1
  %t313 = load i32, ptr %t312
  store i32 %t313, ptr %l33, !tbaa !23
  br label %bb76
bb75:
  br label %bb100
bb76:
  %t315 = load ptr, ptr %l8, !tbaa !29
  %t317 = getelementptr %"compiler/mir:Fn", ptr %t315, i32 0, i32 14
  store ptr %t317, ptr %l185, !tbaa !29
  %t318 = load i32, ptr %l33, !tbaa !23
  %t320 = sext i32 %t318 to i64
  %t321 = load ptr, ptr %l185, !tbaa !29
  %t322 = call ptr @__olang_scope_or(ptr %v4, ptr %t321)
  %t323 = ptrtoint ptr %t322 to i64
  %t325 = inttoptr i64 %t323 to ptr
  %t326 = load ptr, ptr %l185, !tbaa !29
  %t328 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t325, ptr %t326, i64 %t320)
  store %"compiler/mir:Call" %t328, ptr %l189
  br label %bb77
bb77:
  %t329 = load %"compiler/mir:Call", ptr %l189
  store %"compiler/mir:Call" %t329, ptr %l34
  %t330 = load i32, ptr %l33, !tbaa !23
  %t332 = sext i32 %t330 to i64
  %t336 = icmp eq i64 %t332, %a2
  br i1 %t336, label %bb78, label %bb79
bb78:
  %t338 = load i64, ptr %l9, !tbaa !24
  %t340 = icmp ne i64 %t338, 0
  br i1 %t340, label %bb80, label %bb81
bb79:
  br label %bb94
bb80:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb81:
  br label %bb82
bb82:
  %t343 = load i64, ptr %l4, !tbaa !24
  %t345 = icmp eq i64 %t343, 0
  br i1 %t345, label %bb83, label %bb84
bb83:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t349 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 5
  %t350 = load i32, ptr %t349, !tbaa !23
  %t352 = sext i32 %t350 to i64
  %t353 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkJoin(ptr %v0, ptr %v1, ptr %v2, ptr %t347, { i64, ptr } %t348, i64 %t352, i64 1, ptr %t353)
  br label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb86
bb86:
  %t358 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 7
  %t359 = load i32, ptr %t358, !tbaa !23
  %t360 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t363 = icmp ne i32 %t359, %t360
  br i1 %t363, label %bb87, label %bb88
bb87:
  %t365 = load i64, ptr %l4, !tbaa !24
  %t367 = icmp eq i64 %t365, 0
  store i1 %t367, ptr %l207, !tbaa !21
  br label %bb89
bb88:
  store i1 false, ptr %l207, !tbaa !21
  br label %bb89
bb89:
  %t369 = load i1, ptr %l207, !tbaa !21
  br i1 %t369, label %bb90, label %bb91
bb90:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t372 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 7
  %t373 = load i32, ptr %t372, !tbaa !23
  %t375 = sext i32 %t373 to i64
  %t376 = load i64, ptr %l9, !tbaa !24
  %t377 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkJoin(ptr %v0, ptr %v1, ptr %v2, ptr %t370, { i64, ptr } %t371, i64 %t375, i64 %t376, ptr %t377)
  br label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb94:
  %t383 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 5
  %t384 = load i32, ptr %t383, !tbaa !23
  %t386 = sext i32 %t384 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t386)
  br label %bb95
bb95:
  %t389 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 7
  %t390 = load i32, ptr %t389, !tbaa !23
  %t391 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t394 = icmp ne i32 %t390, %t391
  br i1 %t394, label %bb96, label %bb97
bb96:
  %t396 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 7
  %t397 = load i32, ptr %t396, !tbaa !23
  %t399 = sext i32 %t397 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t399)
  br label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb99
bb99:
  br label %bb120
bb100:
  %t402 = load { i64, [8 x i64] }, ptr %l21
  %t404 = extractvalue { i64, [8 x i64] } %t402, 0
  %t405 = icmp eq i64 %t404, 8
  br i1 %t405, label %bb101, label %bb102
bb101:
  %t407 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t408 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t407, i32 0, i32 2
  %t409 = load i32, ptr %t408
  store i32 %t409, ptr %l35, !tbaa !23
  %t411 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t412 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t411, i32 0, i32 4
  %t413 = load i32, ptr %t412
  store i32 %t413, ptr %l36, !tbaa !23
  br label %bb103
bb102:
  br label %bb109
bb103:
  %t415 = load i32, ptr %l35, !tbaa !23
  %t417 = sext i32 %t415 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t417)
  br label %bb104
bb104:
  %t420 = load i32, ptr %l36, !tbaa !23
  %t421 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t424 = icmp ne i32 %t420, %t421
  br i1 %t424, label %bb105, label %bb106
bb105:
  %t426 = load i32, ptr %l36, !tbaa !23
  %t428 = sext i32 %t426 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t428)
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  br label %bb120
bb109:
  %t431 = load { i64, [8 x i64] }, ptr %l21
  %t433 = extractvalue { i64, [8 x i64] } %t431, 0
  %t434 = icmp eq i64 %t433, 11
  br i1 %t434, label %bb110, label %bb111
bb110:
  %t436 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t437 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t436, i32 0, i32 2
  %t438 = load i32, ptr %t437
  store i32 %t438, ptr %l37, !tbaa !23
  %t440 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t441 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t440, i32 0, i32 4
  %t442 = load i32, ptr %t441
  store i32 %t442, ptr %l38, !tbaa !23
  br label %bb112
bb111:
  br label %bb115
bb112:
  %t444 = load i32, ptr %l37, !tbaa !23
  %t446 = sext i32 %t444 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t446)
  br label %bb113
bb113:
  %t449 = load i32, ptr %l38, !tbaa !23
  %t451 = sext i32 %t449 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t451)
  br label %bb114
bb114:
  br label %bb120
bb115:
  br i1 true, label %bb116, label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb119
bb118:
  br label %bb120
bb119:
  call void @__olang_check_failed(ptr @olang_loc_82759c8127bb92d9_9a26fc180f98a435)
  unreachable
bb120:
  %t454 = load i64, ptr %l4, !tbaa !24
  %t456 = icmp eq i64 %t454, 0
  br i1 %t456, label %bb121, label %bb122
bb121:
  store ptr %l20, ptr %l39, !tbaa !29
  store i64 0, ptr %l40, !tbaa !24
  br label %bb123
bb122:
  br label %bb132
bb123:
  %t459 = load i64, ptr %l40, !tbaa !24
  store i64 %t459, ptr %l251, !tbaa !24
  %t460 = load ptr, ptr %l39, !tbaa !29
  %t462 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t460)
  store i64 %t462, ptr %l253
  br label %bb124
bb124:
  %t463 = load i64, ptr %l251, !tbaa !24
  %t464 = load i64, ptr %l253, !tbaa !24
  %t465 = icmp slt i64 %t463, %t464
  %t467 = xor i1 %t465, true
  br i1 %t467, label %bb125, label %bb126
bb125:
  br label %bb131
bb126:
  br label %bb127
bb127:
  %t469 = load ptr, ptr %l39, !tbaa !29
  %t470 = load i64, ptr %l40, !tbaa !24
  %t473 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t469, i64 %t470)
  store i64 %t473, ptr %l258
  br label %bb128
bb128:
  %t474 = load i64, ptr %l258, !tbaa !24
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t476 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t478 = load i64, ptr %l9, !tbaa !24
  %t479 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkJoin(ptr %v0, ptr %v1, ptr %v2, ptr %t475, { i64, ptr } %t476, i64 %t474, i64 %t478, ptr %t479)
  br label %bb129
bb129:
  br label %bb130
bb130:
  %t485 = load i64, ptr %l40, !tbaa !24
  %t487 = add i64 %t485, 1
  store i64 %t487, ptr %l40, !tbaa !24
  br label %bb123
bb131:
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewideToBF16(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca { i64, ptr }
  %l32 = alloca i1
  %l34 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l40 = alloca i1
  %l41 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l58 = alloca i1
  %l60 = alloca i64
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l83 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l88 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l121 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l131 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l135 = alloca ptr
  %l136 = alloca ptr
  %l142 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l162 = alloca { i64, ptr }
  %l163 = alloca ptr
  %l164 = alloca ptr
  %l169 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l181 = alloca ptr
  %l182 = alloca ptr
  %l185 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l191 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %v3, ptr %t9, i32 %t10)
  store { i64, ptr } %t13, ptr %l25
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  %t15 = ptrtoint ptr %s0 to i64
  store i64 %t15, ptr %l26, !tbaa !24
  %t16 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e5
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = call ptr @__olang_region_make(ptr %s0)
  %t19 = ptrtoint ptr %t18 to i64
  store i64 %t19, ptr %l26, !tbaa !24
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = extractvalue { i64, ptr } %t20, 0
  %t24 = load i64, ptr %l26
  %t25 = inttoptr i64 %t24 to ptr
  %t26 = call ptr @__olang_scope_alloc(ptr %t25, i64 %t23)
  call void @olang_textcopy(ptr %t26, ptr %t22, i64 %t23)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l29, !tbaa !27
  %t29 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e5
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t31 = load i64, ptr %l26
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = load { i64, ptr }, ptr %l29
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = call ptr @__olang_region_or(ptr %t34, ptr null)
  %t36 = icmp ne ptr %t35, null
  %t37 = select i1 %t36, ptr %t35, ptr null
  %t38 = icmp eq ptr %t37, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t38)
  br label %bb5
bb5:
  %t39 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t39, ptr %l5, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t40, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d423, i32 0, i32 1) })
  store i1 %t42, ptr %l32
  br label %bb6
bb6:
  %t43 = load i1, ptr %l32, !tbaa !21
  %t44 = xor i1 %t43, true
  br i1 %t44, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = ptrtoint ptr %s0 to i64
  store i64 %t46, ptr %l34, !tbaa !24
  %t47 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e5
  br i1 %t47, label %bb9, label %bb10
bb8:
  br label %bb20
bb9:
  %t49 = call ptr @__olang_region_make(ptr %s0)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l34, !tbaa !24
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l36, !tbaa !29
  %t52 = load ptr, ptr %l3, !tbaa !29
  store ptr %t52, ptr %l37, !tbaa !29
  %t53 = load i32, ptr %l2, !tbaa !23
  %t54 = load ptr, ptr %l37, !tbaa !29
  %t55 = call ptr @__olang_scope_or(ptr %v3, ptr %t54)
  %t56 = ptrtoint ptr %t55 to i64
  %t58 = inttoptr i64 %t56 to ptr
  %t59 = load ptr, ptr %l37, !tbaa !29
  %t61 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %t58, ptr %t59, i32 %t53)
  store i1 %t61, ptr %l40
  br label %bb11
bb11:
  %t62 = load i1, ptr %l40, !tbaa !21
  br i1 %t62, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d424, i32 0, i32 1) }, ptr %l41, !tbaa !27
  br label %bb14
bb13:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d425, i32 0, i32 1) }, ptr %l41, !tbaa !27
  br label %bb14
bb14:
  %t63 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t69 = extractvalue { i64, ptr } %t63, 1
  %t70 = extractvalue { i64, ptr } %t63, 0
  %t71 = add i64 %t67, %t70
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d426, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d426, i32 0, i32 1) }, 0
  %t74 = add i64 %t71, %t73
  %t76 = extractvalue { i64, ptr } %t64, 1
  %t77 = extractvalue { i64, ptr } %t64, 0
  %t78 = add i64 %t74, %t77
  %t79 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d427, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d427, i32 0, i32 1) }, 0
  %t81 = add i64 %t78, %t80
  %t82 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t81)
  call void @olang_textcopy(ptr %t82, ptr %t66, i64 %t67)
  %t83 = getelementptr i8, ptr %t82, i64 %t67
  call void @olang_textcopy(ptr %t83, ptr %t69, i64 %t70)
  %t84 = getelementptr i8, ptr %t83, i64 %t70
  call void @olang_textcopy(ptr %t84, ptr %t72, i64 %t73)
  %t85 = getelementptr i8, ptr %t84, i64 %t73
  call void @olang_textcopy(ptr %t85, ptr %t76, i64 %t77)
  %t86 = getelementptr i8, ptr %t85, i64 %t77
  call void @olang_textcopy(ptr %t86, ptr %t79, i64 %t80)
  %t87 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t82, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = extractvalue { i64, ptr } %t88, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t96 = load i64, ptr %l34
  %t97 = inttoptr i64 %t96 to ptr
  %t98 = load ptr, ptr %l36, !tbaa !29
  %t100 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s2, ptr %t97, ptr %v3, ptr %t98, { i64, ptr } %t95)
  store { i64, ptr } %t100, ptr %l46
  br label %bb15
bb15:
  %t101 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e5
  br i1 %t101, label %bb16, label %bb17
bb16:
  %t103 = load i64, ptr %l34
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = load { i64, ptr }, ptr %l46
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = call ptr @__olang_region_or(ptr %t106, ptr null)
  %t108 = icmp ne ptr %t107, null
  %t109 = select i1 %t108, ptr %t107, ptr null
  %t110 = icmp eq ptr %t109, %t104
  call void @__olang_region_settle(ptr %t104, i1 %t110)
  br label %bb17
bb17:
  %t111 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t111, ptr %l48, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t112, ptr %l5, !tbaa !27
  %t113 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e5
  br i1 %t113, label %bb18, label %bb19
bb18:
  %t115 = load { i64, ptr }, ptr %l48
  %t116 = extractvalue { i64, ptr } %t115, 1
  call void @__olang_region_release(ptr %t116)
  store { i64, ptr } zeroinitializer, ptr %l48
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d428, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t117, ptr %l6, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t119, ptr %l52, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 0
  store i64 %t121, ptr %l53, !tbaa !24
  %t122 = load i64, ptr %l53, !tbaa !24
  %t123 = mul i64 %t122, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t123)
  %t125 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  store { i64, ptr } %t126, ptr %l54, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = load i64, ptr %l53, !tbaa !24
  %t132 = mul i64 %t131, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t128, ptr %t130, i64 %t132, i1 false)
  %t133 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t133, ptr %l7, !tbaa !27
  %t134 = load ptr, ptr %l3, !tbaa !29
  store ptr %t134, ptr %l55, !tbaa !29
  %t135 = load i32, ptr %l2, !tbaa !23
  %t136 = load ptr, ptr %l55, !tbaa !29
  %t137 = call ptr @__olang_scope_or(ptr %v3, ptr %t136)
  %t138 = ptrtoint ptr %t137 to i64
  %t140 = inttoptr i64 %t138 to ptr
  %t141 = load ptr, ptr %l55, !tbaa !29
  %t143 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %t140, ptr %t141, i32 %t135)
  store i1 %t143, ptr %l58
  br label %bb21
bb21:
  %t144 = load i1, ptr %l58, !tbaa !21
  %t145 = xor i1 %t144, true
  br i1 %t145, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t147 = ptrtoint ptr %s0 to i64
  store i64 %t147, ptr %l60, !tbaa !24
  %t148 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e6
  br i1 %t148, label %bb24, label %bb25
bb23:
  br label %bb39
bb24:
  %t150 = call ptr @__olang_region_make(ptr %s0)
  %t151 = ptrtoint ptr %t150 to i64
  store i64 %t151, ptr %l60, !tbaa !24
  br label %bb25
bb25:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t154 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d429, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d429, i32 0, i32 1) }, 0
  %t157 = extractvalue { i64, ptr } %t153, 1
  %t158 = extractvalue { i64, ptr } %t153, 0
  %t159 = add i64 %t155, %t158
  %t160 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d430, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d430, i32 0, i32 1) }, 0
  %t162 = add i64 %t159, %t161
  %t163 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t162)
  call void @olang_textcopy(ptr %t163, ptr %t154, i64 %t155)
  %t164 = getelementptr i8, ptr %t163, i64 %t155
  call void @olang_textcopy(ptr %t164, ptr %t157, i64 %t158)
  %t165 = getelementptr i8, ptr %t164, i64 %t158
  call void @olang_textcopy(ptr %t165, ptr %t160, i64 %t161)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t163, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } %t167, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load i64, ptr %l60
  %t176 = inttoptr i64 %t175 to ptr
  %t179 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %t176, ptr %v3, ptr %t152, { i64, ptr } %t174)
  store { i64, ptr } %t179, ptr %l66
  br label %bb26
bb26:
  %t180 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e6
  br i1 %t180, label %bb27, label %bb28
bb27:
  %t182 = load i64, ptr %l60
  %t183 = inttoptr i64 %t182 to ptr
  %t184 = load { i64, ptr }, ptr %l66
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr null
  %t189 = icmp eq ptr %t188, %t183
  call void @__olang_region_settle(ptr %t183, i1 %t189)
  br label %bb28
bb28:
  %t190 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t190, ptr %l68, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t191, ptr %l6, !tbaa !27
  %t192 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e6
  br i1 %t192, label %bb29, label %bb30
bb29:
  %t194 = load { i64, ptr }, ptr %l68
  %t195 = extractvalue { i64, ptr } %t194, 1
  call void @__olang_region_release(ptr %t195)
  store { i64, ptr } zeroinitializer, ptr %l68
  br label %bb30
bb30:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t198 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d431, i32 0, i32 1) }, 1
  %t199 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d431, i32 0, i32 1) }, 0
  %t201 = extractvalue { i64, ptr } %t197, 1
  %t202 = extractvalue { i64, ptr } %t197, 0
  %t203 = add i64 %t199, %t202
  %t204 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t203)
  call void @olang_textcopy(ptr %t204, ptr %t198, i64 %t199)
  %t205 = getelementptr i8, ptr %t204, i64 %t199
  call void @olang_textcopy(ptr %t205, ptr %t201, i64 %t202)
  %t206 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t204, 1
  %t209 = extractvalue { i64, ptr } %t207, 0
  %t210 = extractvalue { i64, ptr } %t207, 1
  %t211 = mul i64 %t209, 1
  %t212 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t211)
  call void @llvm.memcpy.p0.p0.i64(ptr %t212, ptr %t210, i64 %t211, i1 false)
  %t213 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t212, 1
  %t217 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %s4, ptr %v3, ptr %t196, { i64, ptr } %t214)
  store { i64, ptr } %t217, ptr %l74
  br label %bb31
bb31:
  %t218 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t218, ptr %l8, !tbaa !27
  %t219 = ptrtoint ptr %s0 to i64
  store i64 %t219, ptr %l75, !tbaa !24
  %t220 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e7
  br i1 %t220, label %bb32, label %bb33
bb32:
  %t222 = call ptr @__olang_region_make(ptr %s0)
  %t223 = ptrtoint ptr %t222 to i64
  store i64 %t223, ptr %l75, !tbaa !24
  br label %bb33
bb33:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t226 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t228 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d432, i32 0, i32 1) }, 1
  %t229 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d432, i32 0, i32 1) }, 0
  %t231 = extractvalue { i64, ptr } %t225, 1
  %t232 = extractvalue { i64, ptr } %t225, 0
  %t233 = add i64 %t229, %t232
  %t234 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d433, i32 0, i32 1) }, 1
  %t235 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d433, i32 0, i32 1) }, 0
  %t236 = add i64 %t233, %t235
  %t238 = extractvalue { i64, ptr } %t226, 1
  %t239 = extractvalue { i64, ptr } %t226, 0
  %t240 = add i64 %t236, %t239
  %t241 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d433, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d433, i32 0, i32 1) }, 0
  %t243 = add i64 %t240, %t242
  %t245 = extractvalue { i64, ptr } %t227, 1
  %t246 = extractvalue { i64, ptr } %t227, 0
  %t247 = add i64 %t243, %t246
  %t248 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t247)
  call void @olang_textcopy(ptr %t248, ptr %t228, i64 %t229)
  %t249 = getelementptr i8, ptr %t248, i64 %t229
  call void @olang_textcopy(ptr %t249, ptr %t231, i64 %t232)
  %t250 = getelementptr i8, ptr %t249, i64 %t232
  call void @olang_textcopy(ptr %t250, ptr %t234, i64 %t235)
  %t251 = getelementptr i8, ptr %t250, i64 %t235
  call void @olang_textcopy(ptr %t251, ptr %t238, i64 %t239)
  %t252 = getelementptr i8, ptr %t251, i64 %t239
  call void @olang_textcopy(ptr %t252, ptr %t241, i64 %t242)
  %t253 = getelementptr i8, ptr %t252, i64 %t242
  call void @olang_textcopy(ptr %t253, ptr %t245, i64 %t246)
  %t254 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t248, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = extractvalue { i64, ptr } %t255, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  %t263 = load i64, ptr %l75
  %t264 = inttoptr i64 %t263 to ptr
  %t267 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %t264, ptr %v3, ptr %t224, { i64, ptr } %t262)
  store { i64, ptr } %t267, ptr %l83
  br label %bb34
bb34:
  %t268 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e7
  br i1 %t268, label %bb35, label %bb36
bb35:
  %t270 = load i64, ptr %l75
  %t271 = inttoptr i64 %t270 to ptr
  %t272 = load { i64, ptr }, ptr %l83
  %t273 = extractvalue { i64, ptr } %t272, 1
  %t274 = call ptr @__olang_region_or(ptr %t273, ptr null)
  %t275 = icmp ne ptr %t274, null
  %t276 = select i1 %t275, ptr %t274, ptr null
  %t277 = icmp eq ptr %t276, %t271
  call void @__olang_region_settle(ptr %t271, i1 %t277)
  br label %bb36
bb36:
  %t278 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t278, ptr %l85, !tbaa !27
  %t279 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t279, ptr %l7, !tbaa !27
  %t280 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e7
  br i1 %t280, label %bb37, label %bb38
bb37:
  %t282 = load { i64, ptr }, ptr %l85
  %t283 = extractvalue { i64, ptr } %t282, 1
  call void @__olang_region_release(ptr %t283)
  store { i64, ptr } zeroinitializer, ptr %l85
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb39:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/emit:fnEm", ptr %t284, i32 0, i32 0
  %t287 = load ptr, ptr %t286, !tbaa !29
  store ptr %t287, ptr %l88, !tbaa !29
  %t288 = load ptr, ptr %l88, !tbaa !29
  %t289 = call ptr @__olang_scope_or(ptr %v3, ptr %t288)
  %t290 = ptrtoint ptr %t289 to i64
  %t292 = inttoptr i64 %t290 to ptr
  %t293 = load ptr, ptr %l88, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %t292, ptr %s0, ptr %s0, ptr %t293, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d434, i32 0, i32 1) }, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d435, i32 0, i32 1) })
  br label %bb40
bb40:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t296 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d436, i32 0, i32 1) }, 1
  %t297 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d436, i32 0, i32 1) }, 0
  %t299 = extractvalue { i64, ptr } %t295, 1
  %t300 = extractvalue { i64, ptr } %t295, 0
  %t301 = add i64 %t297, %t300
  %t302 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d437, i32 0, i32 1) }, 1
  %t303 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d437, i32 0, i32 1) }, 0
  %t304 = add i64 %t301, %t303
  %t305 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t304)
  call void @olang_textcopy(ptr %t305, ptr %t296, i64 %t297)
  %t306 = getelementptr i8, ptr %t305, i64 %t297
  call void @olang_textcopy(ptr %t306, ptr %t299, i64 %t300)
  %t307 = getelementptr i8, ptr %t306, i64 %t300
  call void @olang_textcopy(ptr %t307, ptr %t302, i64 %t303)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t305, 1
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t312 = extractvalue { i64, ptr } %t309, 1
  %t313 = mul i64 %t311, 1
  %t314 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t313)
  call void @llvm.memcpy.p0.p0.i64(ptr %t314, ptr %t312, i64 %t313, i1 false)
  %t315 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t314, 1
  %t319 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t294, { i64, ptr } %t316)
  store { i64, ptr } %t319, ptr %l94
  br label %bb41
bb41:
  %t320 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d438, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d438, i32 0, i32 1) }, 0
  %t326 = extractvalue { i64, ptr } %t320, 1
  %t327 = extractvalue { i64, ptr } %t320, 0
  %t328 = add i64 %t324, %t327
  %t329 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d439, i32 0, i32 1) }, 1
  %t330 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d439, i32 0, i32 1) }, 0
  %t331 = add i64 %t328, %t330
  %t332 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t331)
  call void @olang_textcopy(ptr %t332, ptr %t323, i64 %t324)
  %t333 = getelementptr i8, ptr %t332, i64 %t324
  call void @olang_textcopy(ptr %t333, ptr %t326, i64 %t327)
  %t334 = getelementptr i8, ptr %t333, i64 %t327
  call void @olang_textcopy(ptr %t334, ptr %t329, i64 %t330)
  %t335 = insertvalue { i64, ptr } undef, i64 %t331, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t332, 1
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t339 = extractvalue { i64, ptr } %t336, 1
  %t340 = mul i64 %t338, 1
  %t341 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t340)
  call void @llvm.memcpy.p0.p0.i64(ptr %t341, ptr %t339, i64 %t340, i1 false)
  %t342 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t341, 1
  %t346 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t321, { i64, ptr } %t343)
  store { i64, ptr } %t346, ptr %l99
  br label %bb42
bb42:
  %t347 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d440, i32 0, i32 1) }, 1
  %t351 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d440, i32 0, i32 1) }, 0
  %t353 = extractvalue { i64, ptr } %t347, 1
  %t354 = extractvalue { i64, ptr } %t347, 0
  %t355 = add i64 %t351, %t354
  %t356 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t355)
  call void @olang_textcopy(ptr %t356, ptr %t350, i64 %t351)
  %t357 = getelementptr i8, ptr %t356, i64 %t351
  call void @olang_textcopy(ptr %t357, ptr %t353, i64 %t354)
  %t358 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t359 = insertvalue { i64, ptr } %t358, ptr %t356, 1
  %t361 = extractvalue { i64, ptr } %t359, 0
  %t362 = extractvalue { i64, ptr } %t359, 1
  %t363 = mul i64 %t361, 1
  %t364 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t363)
  call void @llvm.memcpy.p0.p0.i64(ptr %t364, ptr %t362, i64 %t363, i1 false)
  %t365 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t366 = insertvalue { i64, ptr } %t365, ptr %t364, 1
  %t369 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t348, { i64, ptr } %t366)
  store { i64, ptr } %t369, ptr %l104
  br label %bb43
bb43:
  %t370 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t370, ptr %l11, !tbaa !27
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t373 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d441, i32 0, i32 1) }, 1
  %t374 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d441, i32 0, i32 1) }, 0
  %t376 = extractvalue { i64, ptr } %t372, 1
  %t377 = extractvalue { i64, ptr } %t372, 0
  %t378 = add i64 %t374, %t377
  %t379 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d442, i32 0, i32 1) }, 1
  %t380 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d442, i32 0, i32 1) }, 0
  %t381 = add i64 %t378, %t380
  %t382 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t381)
  call void @olang_textcopy(ptr %t382, ptr %t373, i64 %t374)
  %t383 = getelementptr i8, ptr %t382, i64 %t374
  call void @olang_textcopy(ptr %t383, ptr %t376, i64 %t377)
  %t384 = getelementptr i8, ptr %t383, i64 %t377
  call void @olang_textcopy(ptr %t384, ptr %t379, i64 %t380)
  %t385 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t382, 1
  %t388 = extractvalue { i64, ptr } %t386, 0
  %t389 = extractvalue { i64, ptr } %t386, 1
  %t390 = mul i64 %t388, 1
  %t391 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t390)
  call void @llvm.memcpy.p0.p0.i64(ptr %t391, ptr %t389, i64 %t390, i1 false)
  %t392 = insertvalue { i64, ptr } undef, i64 %t388, 0
  %t393 = insertvalue { i64, ptr } %t392, ptr %t391, 1
  %t396 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t371, { i64, ptr } %t393)
  store { i64, ptr } %t396, ptr %l109
  br label %bb44
bb44:
  %t397 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t401 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d443, i32 0, i32 1) }, 1
  %t402 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d443, i32 0, i32 1) }, 0
  %t404 = extractvalue { i64, ptr } %t397, 1
  %t405 = extractvalue { i64, ptr } %t397, 0
  %t406 = add i64 %t402, %t405
  %t407 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d444, i32 0, i32 1) }, 1
  %t408 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d444, i32 0, i32 1) }, 0
  %t409 = add i64 %t406, %t408
  %t411 = extractvalue { i64, ptr } %t400, 1
  %t412 = extractvalue { i64, ptr } %t400, 0
  %t413 = add i64 %t409, %t412
  %t414 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d445, i32 0, i32 1) }, 1
  %t415 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d445, i32 0, i32 1) }, 0
  %t416 = add i64 %t413, %t415
  %t417 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t416)
  call void @olang_textcopy(ptr %t417, ptr %t401, i64 %t402)
  %t418 = getelementptr i8, ptr %t417, i64 %t402
  call void @olang_textcopy(ptr %t418, ptr %t404, i64 %t405)
  %t419 = getelementptr i8, ptr %t418, i64 %t405
  call void @olang_textcopy(ptr %t419, ptr %t407, i64 %t408)
  %t420 = getelementptr i8, ptr %t419, i64 %t408
  call void @olang_textcopy(ptr %t420, ptr %t411, i64 %t412)
  %t421 = getelementptr i8, ptr %t420, i64 %t412
  call void @olang_textcopy(ptr %t421, ptr %t414, i64 %t415)
  %t422 = insertvalue { i64, ptr } undef, i64 %t416, 0
  %t423 = insertvalue { i64, ptr } %t422, ptr %t417, 1
  %t425 = extractvalue { i64, ptr } %t423, 0
  %t426 = extractvalue { i64, ptr } %t423, 1
  %t427 = mul i64 %t425, 1
  %t428 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t427)
  call void @llvm.memcpy.p0.p0.i64(ptr %t428, ptr %t426, i64 %t427, i1 false)
  %t429 = insertvalue { i64, ptr } undef, i64 %t425, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr %t428, 1
  %t433 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t398, { i64, ptr } %t430)
  store { i64, ptr } %t433, ptr %l115
  br label %bb45
bb45:
  %t434 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t434, ptr %l13, !tbaa !27
  %t435 = load ptr, ptr %l0, !tbaa !29
  store ptr %t435, ptr %l116, !tbaa !29
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t438 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d446, i32 0, i32 1) }, 1
  %t439 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d446, i32 0, i32 1) }, 0
  %t441 = extractvalue { i64, ptr } %t437, 1
  %t442 = extractvalue { i64, ptr } %t437, 0
  %t443 = add i64 %t439, %t442
  %t444 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t443)
  call void @olang_textcopy(ptr %t444, ptr %t438, i64 %t439)
  %t445 = getelementptr i8, ptr %t444, i64 %t439
  call void @olang_textcopy(ptr %t445, ptr %t441, i64 %t442)
  %t446 = insertvalue { i64, ptr } undef, i64 %t443, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t444, 1
  %t449 = extractvalue { i64, ptr } %t447, 0
  %t450 = extractvalue { i64, ptr } %t447, 1
  %t451 = mul i64 %t449, 1
  %t452 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t452, ptr %t450, i64 %t451, i1 false)
  %t453 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t452, 1
  %t457 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t436, { i64, ptr } %t454)
  store { i64, ptr } %t457, ptr %l121
  br label %bb46
bb46:
  %t458 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d447, i32 0, i32 1) }, 1
  %t459 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d447, i32 0, i32 1) }, 0
  %t460 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t460, 1
  %t462 = extractvalue { i64, ptr } %t460, 0
  %t463 = add i64 %t459, %t462
  %t464 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d448, i32 0, i32 1) }, 1
  %t465 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d448, i32 0, i32 1) }, 0
  %t466 = add i64 %t463, %t465
  %t467 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t466)
  call void @olang_textcopy(ptr %t467, ptr %t458, i64 %t459)
  %t468 = getelementptr i8, ptr %t467, i64 %t459
  call void @olang_textcopy(ptr %t468, ptr %t461, i64 %t462)
  %t469 = getelementptr i8, ptr %t468, i64 %t462
  call void @olang_textcopy(ptr %t469, ptr %t464, i64 %t465)
  %t470 = insertvalue { i64, ptr } undef, i64 %t466, 0
  %t471 = insertvalue { i64, ptr } %t470, ptr %t467, 1
  %t473 = extractvalue { i64, ptr } %t471, 0
  %t474 = extractvalue { i64, ptr } %t471, 1
  %t475 = mul i64 %t473, 1
  %t476 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t475)
  call void @llvm.memcpy.p0.p0.i64(ptr %t476, ptr %t474, i64 %t475, i1 false)
  %t477 = insertvalue { i64, ptr } undef, i64 %t473, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t476, 1
  %t479 = load ptr, ptr %l116, !tbaa !29
  %t481 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t479, { i64, ptr } %t478)
  store { i64, ptr } %t481, ptr %l124
  br label %bb47
bb47:
  %t482 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t483 = load ptr, ptr %l0, !tbaa !29
  store ptr %t483, ptr %l125, !tbaa !29
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t487 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d449, i32 0, i32 1) }, 1
  %t488 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d449, i32 0, i32 1) }, 0
  %t490 = extractvalue { i64, ptr } %t485, 1
  %t491 = extractvalue { i64, ptr } %t485, 0
  %t492 = add i64 %t488, %t491
  %t493 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d450, i32 0, i32 1) }, 1
  %t494 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d450, i32 0, i32 1) }, 0
  %t495 = add i64 %t492, %t494
  %t497 = extractvalue { i64, ptr } %t482, 1
  %t498 = extractvalue { i64, ptr } %t482, 0
  %t499 = add i64 %t495, %t498
  %t500 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t499)
  call void @olang_textcopy(ptr %t500, ptr %t487, i64 %t488)
  %t501 = getelementptr i8, ptr %t500, i64 %t488
  call void @olang_textcopy(ptr %t501, ptr %t490, i64 %t491)
  %t502 = getelementptr i8, ptr %t501, i64 %t491
  call void @olang_textcopy(ptr %t502, ptr %t493, i64 %t494)
  %t503 = getelementptr i8, ptr %t502, i64 %t494
  call void @olang_textcopy(ptr %t503, ptr %t497, i64 %t498)
  %t504 = insertvalue { i64, ptr } undef, i64 %t499, 0
  %t505 = insertvalue { i64, ptr } %t504, ptr %t500, 1
  %t507 = extractvalue { i64, ptr } %t505, 0
  %t508 = extractvalue { i64, ptr } %t505, 1
  %t509 = mul i64 %t507, 1
  %t510 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t509)
  call void @llvm.memcpy.p0.p0.i64(ptr %t510, ptr %t508, i64 %t509, i1 false)
  %t511 = insertvalue { i64, ptr } undef, i64 %t507, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t510, 1
  %t515 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t484, { i64, ptr } %t512)
  store { i64, ptr } %t515, ptr %l131
  br label %bb48
bb48:
  %t516 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d451, i32 0, i32 1) }, 1
  %t517 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d451, i32 0, i32 1) }, 0
  %t518 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t519 = extractvalue { i64, ptr } %t518, 1
  %t520 = extractvalue { i64, ptr } %t518, 0
  %t521 = add i64 %t517, %t520
  %t522 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d452, i32 0, i32 1) }, 1
  %t523 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d452, i32 0, i32 1) }, 0
  %t524 = add i64 %t521, %t523
  %t525 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t524)
  call void @olang_textcopy(ptr %t525, ptr %t516, i64 %t517)
  %t526 = getelementptr i8, ptr %t525, i64 %t517
  call void @olang_textcopy(ptr %t526, ptr %t519, i64 %t520)
  %t527 = getelementptr i8, ptr %t526, i64 %t520
  call void @olang_textcopy(ptr %t527, ptr %t522, i64 %t523)
  %t528 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t529 = insertvalue { i64, ptr } %t528, ptr %t525, 1
  %t531 = extractvalue { i64, ptr } %t529, 0
  %t532 = extractvalue { i64, ptr } %t529, 1
  %t533 = mul i64 %t531, 1
  %t534 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t533)
  call void @llvm.memcpy.p0.p0.i64(ptr %t534, ptr %t532, i64 %t533, i1 false)
  %t535 = insertvalue { i64, ptr } undef, i64 %t531, 0
  %t536 = insertvalue { i64, ptr } %t535, ptr %t534, 1
  %t537 = load ptr, ptr %l125, !tbaa !29
  %t539 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t537, { i64, ptr } %t536)
  store { i64, ptr } %t539, ptr %l134
  br label %bb49
bb49:
  %t540 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t540, ptr %l15, !tbaa !27
  %t541 = load ptr, ptr %l0, !tbaa !29
  store ptr %t541, ptr %l135, !tbaa !29
  %t542 = load ptr, ptr %l0, !tbaa !29
  store ptr %t542, ptr %l136, !tbaa !29
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t545 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t546 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d453, i32 0, i32 1) }, 1
  %t547 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d453, i32 0, i32 1) }, 0
  %t549 = extractvalue { i64, ptr } %t544, 1
  %t550 = extractvalue { i64, ptr } %t544, 0
  %t551 = add i64 %t547, %t550
  %t552 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d454, i32 0, i32 1) }, 1
  %t553 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d454, i32 0, i32 1) }, 0
  %t554 = add i64 %t551, %t553
  %t556 = extractvalue { i64, ptr } %t545, 1
  %t557 = extractvalue { i64, ptr } %t545, 0
  %t558 = add i64 %t554, %t557
  %t559 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t558)
  call void @olang_textcopy(ptr %t559, ptr %t546, i64 %t547)
  %t560 = getelementptr i8, ptr %t559, i64 %t547
  call void @olang_textcopy(ptr %t560, ptr %t549, i64 %t550)
  %t561 = getelementptr i8, ptr %t560, i64 %t550
  call void @olang_textcopy(ptr %t561, ptr %t552, i64 %t553)
  %t562 = getelementptr i8, ptr %t561, i64 %t553
  call void @olang_textcopy(ptr %t562, ptr %t556, i64 %t557)
  %t563 = insertvalue { i64, ptr } undef, i64 %t558, 0
  %t564 = insertvalue { i64, ptr } %t563, ptr %t559, 1
  %t566 = extractvalue { i64, ptr } %t564, 0
  %t567 = extractvalue { i64, ptr } %t564, 1
  %t568 = mul i64 %t566, 1
  %t569 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t568)
  call void @llvm.memcpy.p0.p0.i64(ptr %t569, ptr %t567, i64 %t568, i1 false)
  %t570 = insertvalue { i64, ptr } undef, i64 %t566, 0
  %t571 = insertvalue { i64, ptr } %t570, ptr %t569, 1
  %t574 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t543, { i64, ptr } %t571)
  store { i64, ptr } %t574, ptr %l142
  br label %bb50
bb50:
  %t575 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d455, i32 0, i32 1) }, 1
  %t576 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d455, i32 0, i32 1) }, 0
  %t577 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t578 = extractvalue { i64, ptr } %t577, 1
  %t579 = extractvalue { i64, ptr } %t577, 0
  %t580 = add i64 %t576, %t579
  %t581 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d456, i32 0, i32 1) }, 1
  %t582 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d456, i32 0, i32 1) }, 0
  %t583 = add i64 %t580, %t582
  %t584 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t583)
  call void @olang_textcopy(ptr %t584, ptr %t575, i64 %t576)
  %t585 = getelementptr i8, ptr %t584, i64 %t576
  call void @olang_textcopy(ptr %t585, ptr %t578, i64 %t579)
  %t586 = getelementptr i8, ptr %t585, i64 %t579
  call void @olang_textcopy(ptr %t586, ptr %t581, i64 %t582)
  %t587 = insertvalue { i64, ptr } undef, i64 %t583, 0
  %t588 = insertvalue { i64, ptr } %t587, ptr %t584, 1
  %t590 = extractvalue { i64, ptr } %t588, 0
  %t591 = extractvalue { i64, ptr } %t588, 1
  %t592 = mul i64 %t590, 1
  %t593 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t592)
  call void @llvm.memcpy.p0.p0.i64(ptr %t593, ptr %t591, i64 %t592, i1 false)
  %t594 = insertvalue { i64, ptr } undef, i64 %t590, 0
  %t595 = insertvalue { i64, ptr } %t594, ptr %t593, 1
  %t596 = load ptr, ptr %l136, !tbaa !29
  %t598 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t596, { i64, ptr } %t595)
  store { i64, ptr } %t598, ptr %l145
  br label %bb51
bb51:
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t600 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t601 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d457, i32 0, i32 1) }, 1
  %t602 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d457, i32 0, i32 1) }, 0
  %t604 = extractvalue { i64, ptr } %t600, 1
  %t605 = extractvalue { i64, ptr } %t600, 0
  %t606 = add i64 %t602, %t605
  %t607 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d458, i32 0, i32 1) }, 1
  %t608 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d458, i32 0, i32 1) }, 0
  %t609 = add i64 %t606, %t608
  %t610 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t609)
  call void @olang_textcopy(ptr %t610, ptr %t601, i64 %t602)
  %t611 = getelementptr i8, ptr %t610, i64 %t602
  call void @olang_textcopy(ptr %t611, ptr %t604, i64 %t605)
  %t612 = getelementptr i8, ptr %t611, i64 %t605
  call void @olang_textcopy(ptr %t612, ptr %t607, i64 %t608)
  %t613 = insertvalue { i64, ptr } undef, i64 %t609, 0
  %t614 = insertvalue { i64, ptr } %t613, ptr %t610, 1
  %t616 = extractvalue { i64, ptr } %t614, 0
  %t617 = extractvalue { i64, ptr } %t614, 1
  %t618 = mul i64 %t616, 1
  %t619 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t618)
  call void @llvm.memcpy.p0.p0.i64(ptr %t619, ptr %t617, i64 %t618, i1 false)
  %t620 = insertvalue { i64, ptr } undef, i64 %t616, 0
  %t621 = insertvalue { i64, ptr } %t620, ptr %t619, 1
  %t624 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t599, { i64, ptr } %t621)
  store { i64, ptr } %t624, ptr %l150
  br label %bb52
bb52:
  %t625 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d459, i32 0, i32 1) }, 1
  %t626 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d459, i32 0, i32 1) }, 0
  %t627 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t628 = extractvalue { i64, ptr } %t627, 1
  %t629 = extractvalue { i64, ptr } %t627, 0
  %t630 = add i64 %t626, %t629
  %t631 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d460, i32 0, i32 1) }, 1
  %t632 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d460, i32 0, i32 1) }, 0
  %t633 = add i64 %t630, %t632
  %t634 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t635 = extractvalue { i64, ptr } %t634, 1
  %t636 = extractvalue { i64, ptr } %t634, 0
  %t637 = add i64 %t633, %t636
  %t638 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t637)
  call void @olang_textcopy(ptr %t638, ptr %t625, i64 %t626)
  %t639 = getelementptr i8, ptr %t638, i64 %t626
  call void @olang_textcopy(ptr %t639, ptr %t628, i64 %t629)
  %t640 = getelementptr i8, ptr %t639, i64 %t629
  call void @olang_textcopy(ptr %t640, ptr %t631, i64 %t632)
  %t641 = getelementptr i8, ptr %t640, i64 %t632
  call void @olang_textcopy(ptr %t641, ptr %t635, i64 %t636)
  %t642 = insertvalue { i64, ptr } undef, i64 %t637, 0
  %t643 = insertvalue { i64, ptr } %t642, ptr %t638, 1
  %t645 = extractvalue { i64, ptr } %t643, 0
  %t646 = extractvalue { i64, ptr } %t643, 1
  %t647 = mul i64 %t645, 1
  %t648 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t647)
  call void @llvm.memcpy.p0.p0.i64(ptr %t648, ptr %t646, i64 %t647, i1 false)
  %t649 = insertvalue { i64, ptr } undef, i64 %t645, 0
  %t650 = insertvalue { i64, ptr } %t649, ptr %t648, 1
  %t651 = load ptr, ptr %l135, !tbaa !29
  %t653 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t651, { i64, ptr } %t650)
  store { i64, ptr } %t653, ptr %l153
  br label %bb53
bb53:
  %t654 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t654, ptr %l16, !tbaa !27
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t657 = getelementptr %"compiler/emit:fnEm", ptr %t655, i32 0, i32 0
  %t658 = load ptr, ptr %t657, !tbaa !29
  store ptr %t658, ptr %l155, !tbaa !29
  %t659 = load ptr, ptr %l155, !tbaa !29
  %t660 = call ptr @__olang_scope_or(ptr %v3, ptr %t659)
  %t661 = ptrtoint ptr %t660 to i64
  %t663 = inttoptr i64 %t661 to ptr
  %t664 = load ptr, ptr %l155, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t663, ptr %s0, ptr %t664, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d461, i32 0, i32 1) })
  br label %bb54
bb54:
  %t665 = load ptr, ptr %l0, !tbaa !29
  %t666 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t667 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t668 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d462, i32 0, i32 1) }, 1
  %t669 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d462, i32 0, i32 1) }, 0
  %t671 = extractvalue { i64, ptr } %t666, 1
  %t672 = extractvalue { i64, ptr } %t666, 0
  %t673 = add i64 %t669, %t672
  %t674 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d463, i32 0, i32 1) }, 1
  %t675 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d463, i32 0, i32 1) }, 0
  %t676 = add i64 %t673, %t675
  %t678 = extractvalue { i64, ptr } %t667, 1
  %t679 = extractvalue { i64, ptr } %t667, 0
  %t680 = add i64 %t676, %t679
  %t681 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d464, i32 0, i32 1) }, 1
  %t682 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d464, i32 0, i32 1) }, 0
  %t683 = add i64 %t680, %t682
  %t684 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t683)
  call void @olang_textcopy(ptr %t684, ptr %t668, i64 %t669)
  %t685 = getelementptr i8, ptr %t684, i64 %t669
  call void @olang_textcopy(ptr %t685, ptr %t671, i64 %t672)
  %t686 = getelementptr i8, ptr %t685, i64 %t672
  call void @olang_textcopy(ptr %t686, ptr %t674, i64 %t675)
  %t687 = getelementptr i8, ptr %t686, i64 %t675
  call void @olang_textcopy(ptr %t687, ptr %t678, i64 %t679)
  %t688 = getelementptr i8, ptr %t687, i64 %t679
  call void @olang_textcopy(ptr %t688, ptr %t681, i64 %t682)
  %t689 = insertvalue { i64, ptr } undef, i64 %t683, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t684, 1
  %t692 = extractvalue { i64, ptr } %t690, 0
  %t693 = extractvalue { i64, ptr } %t690, 1
  %t694 = mul i64 %t692, 1
  %t695 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t694)
  call void @llvm.memcpy.p0.p0.i64(ptr %t695, ptr %t693, i64 %t694, i1 false)
  %t696 = insertvalue { i64, ptr } undef, i64 %t692, 0
  %t697 = insertvalue { i64, ptr } %t696, ptr %t695, 1
  %t700 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t665, { i64, ptr } %t697)
  store { i64, ptr } %t700, ptr %l162
  br label %bb55
bb55:
  %t701 = load { i64, ptr }, ptr %l162, !tbaa !27
  store { i64, ptr } %t701, ptr %l17, !tbaa !27
  %t702 = load ptr, ptr %l0, !tbaa !29
  store ptr %t702, ptr %l163, !tbaa !29
  %t703 = load ptr, ptr %l0, !tbaa !29
  store ptr %t703, ptr %l164, !tbaa !29
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t705 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t706 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d465, i32 0, i32 1) }, 1
  %t707 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d465, i32 0, i32 1) }, 0
  %t709 = extractvalue { i64, ptr } %t705, 1
  %t710 = extractvalue { i64, ptr } %t705, 0
  %t711 = add i64 %t707, %t710
  %t712 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d466, i32 0, i32 1) }, 1
  %t713 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d466, i32 0, i32 1) }, 0
  %t714 = add i64 %t711, %t713
  %t715 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t714)
  call void @olang_textcopy(ptr %t715, ptr %t706, i64 %t707)
  %t716 = getelementptr i8, ptr %t715, i64 %t707
  call void @olang_textcopy(ptr %t716, ptr %t709, i64 %t710)
  %t717 = getelementptr i8, ptr %t716, i64 %t710
  call void @olang_textcopy(ptr %t717, ptr %t712, i64 %t713)
  %t718 = insertvalue { i64, ptr } undef, i64 %t714, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t715, 1
  %t721 = extractvalue { i64, ptr } %t719, 0
  %t722 = extractvalue { i64, ptr } %t719, 1
  %t723 = mul i64 %t721, 1
  %t724 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t723)
  call void @llvm.memcpy.p0.p0.i64(ptr %t724, ptr %t722, i64 %t723, i1 false)
  %t725 = insertvalue { i64, ptr } undef, i64 %t721, 0
  %t726 = insertvalue { i64, ptr } %t725, ptr %t724, 1
  %t729 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t704, { i64, ptr } %t726)
  store { i64, ptr } %t729, ptr %l169
  br label %bb56
bb56:
  %t730 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d467, i32 0, i32 1) }, 1
  %t731 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d467, i32 0, i32 1) }, 0
  %t732 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t733 = extractvalue { i64, ptr } %t732, 1
  %t734 = extractvalue { i64, ptr } %t732, 0
  %t735 = add i64 %t731, %t734
  %t736 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d468, i32 0, i32 1) }, 1
  %t737 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d468, i32 0, i32 1) }, 0
  %t738 = add i64 %t735, %t737
  %t739 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t738)
  call void @olang_textcopy(ptr %t739, ptr %t730, i64 %t731)
  %t740 = getelementptr i8, ptr %t739, i64 %t731
  call void @olang_textcopy(ptr %t740, ptr %t733, i64 %t734)
  %t741 = getelementptr i8, ptr %t740, i64 %t734
  call void @olang_textcopy(ptr %t741, ptr %t736, i64 %t737)
  %t742 = insertvalue { i64, ptr } undef, i64 %t738, 0
  %t743 = insertvalue { i64, ptr } %t742, ptr %t739, 1
  %t745 = extractvalue { i64, ptr } %t743, 0
  %t746 = extractvalue { i64, ptr } %t743, 1
  %t747 = mul i64 %t745, 1
  %t748 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t747)
  call void @llvm.memcpy.p0.p0.i64(ptr %t748, ptr %t746, i64 %t747, i1 false)
  %t749 = insertvalue { i64, ptr } undef, i64 %t745, 0
  %t750 = insertvalue { i64, ptr } %t749, ptr %t748, 1
  %t751 = load ptr, ptr %l164, !tbaa !29
  %t753 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t751, { i64, ptr } %t750)
  store { i64, ptr } %t753, ptr %l172
  br label %bb57
bb57:
  %t754 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d469, i32 0, i32 1) }, 1
  %t755 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d469, i32 0, i32 1) }, 0
  %t756 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t757 = extractvalue { i64, ptr } %t756, 1
  %t758 = extractvalue { i64, ptr } %t756, 0
  %t759 = add i64 %t755, %t758
  %t760 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d470, i32 0, i32 1) }, 1
  %t761 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d470, i32 0, i32 1) }, 0
  %t762 = add i64 %t759, %t761
  %t763 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t762)
  call void @olang_textcopy(ptr %t763, ptr %t754, i64 %t755)
  %t764 = getelementptr i8, ptr %t763, i64 %t755
  call void @olang_textcopy(ptr %t764, ptr %t757, i64 %t758)
  %t765 = getelementptr i8, ptr %t764, i64 %t758
  call void @olang_textcopy(ptr %t765, ptr %t760, i64 %t761)
  %t766 = insertvalue { i64, ptr } undef, i64 %t762, 0
  %t767 = insertvalue { i64, ptr } %t766, ptr %t763, 1
  %t769 = extractvalue { i64, ptr } %t767, 0
  %t770 = extractvalue { i64, ptr } %t767, 1
  %t771 = mul i64 %t769, 1
  %t772 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t771)
  call void @llvm.memcpy.p0.p0.i64(ptr %t772, ptr %t770, i64 %t771, i1 false)
  %t773 = insertvalue { i64, ptr } undef, i64 %t769, 0
  %t774 = insertvalue { i64, ptr } %t773, ptr %t772, 1
  %t775 = load ptr, ptr %l163, !tbaa !29
  %t777 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t775, { i64, ptr } %t774)
  store { i64, ptr } %t777, ptr %l175
  br label %bb58
bb58:
  %t778 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t779 = load ptr, ptr %l0, !tbaa !29
  %t781 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d471, i32 0, i32 1) }, 1
  %t782 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d471, i32 0, i32 1) }, 0
  %t784 = extractvalue { i64, ptr } %t778, 1
  %t785 = extractvalue { i64, ptr } %t778, 0
  %t786 = add i64 %t782, %t785
  %t787 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d472, i32 0, i32 1) }, 1
  %t788 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d472, i32 0, i32 1) }, 0
  %t789 = add i64 %t786, %t788
  %t790 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t789)
  call void @olang_textcopy(ptr %t790, ptr %t781, i64 %t782)
  %t791 = getelementptr i8, ptr %t790, i64 %t782
  call void @olang_textcopy(ptr %t791, ptr %t784, i64 %t785)
  %t792 = getelementptr i8, ptr %t791, i64 %t785
  call void @olang_textcopy(ptr %t792, ptr %t787, i64 %t788)
  %t793 = insertvalue { i64, ptr } undef, i64 %t789, 0
  %t794 = insertvalue { i64, ptr } %t793, ptr %t790, 1
  %t796 = extractvalue { i64, ptr } %t794, 0
  %t797 = extractvalue { i64, ptr } %t794, 1
  %t798 = mul i64 %t796, 1
  %t799 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t798)
  call void @llvm.memcpy.p0.p0.i64(ptr %t799, ptr %t797, i64 %t798, i1 false)
  %t800 = insertvalue { i64, ptr } undef, i64 %t796, 0
  %t801 = insertvalue { i64, ptr } %t800, ptr %t799, 1
  %t804 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t779, { i64, ptr } %t801)
  store { i64, ptr } %t804, ptr %l180
  br label %bb59
bb59:
  %t805 = load { i64, ptr }, ptr %l180, !tbaa !27
  store { i64, ptr } %t805, ptr %l19, !tbaa !27
  %t806 = load ptr, ptr %l0, !tbaa !29
  store ptr %t806, ptr %l181, !tbaa !29
  %t807 = load ptr, ptr %l0, !tbaa !29
  store ptr %t807, ptr %l182, !tbaa !29
  %t808 = load ptr, ptr %l0, !tbaa !29
  %t809 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t812 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %v3, ptr %t808, { i64, ptr } %t809, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d473, i32 0, i32 1) })
  store { i64, ptr } %t812, ptr %l185
  br label %bb60
bb60:
  %t813 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t814 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d474, i32 0, i32 1) }, 1
  %t815 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d474, i32 0, i32 1) }, 0
  %t816 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t817 = extractvalue { i64, ptr } %t816, 1
  %t818 = extractvalue { i64, ptr } %t816, 0
  %t819 = add i64 %t815, %t818
  %t820 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d475, i32 0, i32 1) }, 1
  %t821 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d475, i32 0, i32 1) }, 0
  %t822 = add i64 %t819, %t821
  %t824 = extractvalue { i64, ptr } %t813, 1
  %t825 = extractvalue { i64, ptr } %t813, 0
  %t826 = add i64 %t822, %t825
  %t827 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t826)
  call void @olang_textcopy(ptr %t827, ptr %t814, i64 %t815)
  %t828 = getelementptr i8, ptr %t827, i64 %t815
  call void @olang_textcopy(ptr %t828, ptr %t817, i64 %t818)
  %t829 = getelementptr i8, ptr %t828, i64 %t818
  call void @olang_textcopy(ptr %t829, ptr %t820, i64 %t821)
  %t830 = getelementptr i8, ptr %t829, i64 %t821
  call void @olang_textcopy(ptr %t830, ptr %t824, i64 %t825)
  %t831 = insertvalue { i64, ptr } undef, i64 %t826, 0
  %t832 = insertvalue { i64, ptr } %t831, ptr %t827, 1
  %t834 = extractvalue { i64, ptr } %t832, 0
  %t835 = extractvalue { i64, ptr } %t832, 1
  %t836 = mul i64 %t834, 1
  %t837 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t836)
  call void @llvm.memcpy.p0.p0.i64(ptr %t837, ptr %t835, i64 %t836, i1 false)
  %t838 = insertvalue { i64, ptr } undef, i64 %t834, 0
  %t839 = insertvalue { i64, ptr } %t838, ptr %t837, 1
  %t840 = load ptr, ptr %l182, !tbaa !29
  %t842 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t840, { i64, ptr } %t839)
  store { i64, ptr } %t842, ptr %l189
  br label %bb61
bb61:
  %t843 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t844 = extractvalue { i64, ptr } %t843, 0
  %t845 = extractvalue { i64, ptr } %t843, 1
  %t846 = mul i64 %t844, 1
  %t847 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t846)
  call void @llvm.memcpy.p0.p0.i64(ptr %t847, ptr %t845, i64 %t846, i1 false)
  %t848 = insertvalue { i64, ptr } undef, i64 %t844, 0
  %t849 = insertvalue { i64, ptr } %t848, ptr %t847, 1
  %t850 = load ptr, ptr %l181, !tbaa !29
  %t852 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enarrowBF16(ptr %v0, ptr %s0, ptr %v2, ptr %v3, ptr %t850, { i64, ptr } %t849)
  store { i64, ptr } %t852, ptr %l191
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  %t853 = load { i64, ptr }, ptr %l191, !tbaa !27
  store { i64, ptr } %t853, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2edbgTail(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d476, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d476, i32 0, i32 1) }, 0
  %t5 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t6 = add i64 %t3, %t5
  %t7 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d477, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d477, i32 0, i32 1) }, 0
  %t9 = add i64 %t6, %t8
  %t10 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d478, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d478, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t2, i64 %t3)
  %t14 = getelementptr i8, ptr %t13, i64 %t3
  %t15 = call i64 @__olang_fmt_i64(ptr %t14, i64 %a0)
  %t16 = getelementptr i8, ptr %t14, i64 %t5
  call void @olang_textcopy(ptr %t16, ptr %t7, i64 %t8)
  %t17 = getelementptr i8, ptr %t16, i64 %t8
  call void @olang_textcopy(ptr %t17, ptr %t10, i64 %t11)
  %t18 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t13, 1
  store { i64, ptr } %t19, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
define internal i1 @olang_lambda_0(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t5 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t1, i64 %a0)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t6, i64 %a1)
  store { i64, ptr } %t10, ptr %l8
  br label %bb2
bb2:
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc0, ptr %vc0, { i64, ptr } %t11, { i64, ptr } %t12)
  store i1 %t13, ptr %l9
  br label %bb3
bb3:
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define linkonce_odr %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %rv = alloca %"std/prelude/text:StringBuilder"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l0
  store %"std/prelude/text:StringBuilder" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/text:StringBuilder", ptr %rv
  ret %"std/prelude/text:StringBuilder" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1 = weak hidden constant i1 false
declare void @__olang_check_failed(ptr) cold noreturn
declare i64 @__olang_fmt_i64(ptr, i64)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
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

@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"void ()" }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d4 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = dso_local alias " }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"bool" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"int" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"uint" }>, align 8
@.d12 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__int128" }>, align 8
@.d13 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"unsigned __int128" }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"_t" }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d20 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"_clone" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d22 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".dtor" }>, align 8
@.d23 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"lambda" }>, align 8
@.d24 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"test " }>, align 8
@.d25 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".init" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang.gendrop." }>, align 8
@.d29 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%x" }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-1" }>, align 8
@.d31 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_gen_leaf" }>, align 8
@.d32 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%x" }>, align 8
@.d33 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"getelementptr { i64, ptr }, ptr " }>, align 8
@.d34 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%x" }>, align 8
@.d38 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d39 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"call void @__olang_gen_leaf(ptr " }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d42 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret i64 " }>, align 8
@.d43 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"define linkonce_odr hidden i64 @" }>, align 8
@.d44 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"(ptr %x, ptr %keep, i64 %n) #0 {\0Aentry:\0A" }>, align 8
@.d45 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"}\0A\0A" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d47 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" = weak hidden constant i1 false\0A" }>, align 8
@.d48 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"__olang_argc" }>, align 8
@.d49 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"@__olang_argc = external global i32" }>, align 8
@.d50 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"__olang_argv" }>, align 8
@.d51 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"@__olang_argv = external global ptr" }>, align 8
@.d52 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_jmp_target" }>, align 8
@.d53 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"@__olang_jmp_target = external thread_local(initialexec) global ptr" }>, align 8
@.d54 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_unwind_top" }>, align 8
@.d55 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"@__olang_unwind_top = external thread_local(initialexec) global ptr" }>, align 8
@.d56 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_unwind_mark" }>, align 8
@.d57 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"@__olang_unwind_mark = external thread_local(initialexec) global ptr" }>, align 8
@.d58 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"setjmp" }>, align 8
@.d59 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"i32 @setjmp(ptr) returns_twice" }>, align 8
@.d60 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"printf" }>, align 8
@.d61 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"i32 @printf(ptr, ...)" }>, align 8
@.d62 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"fflush" }>, align 8
@.d63 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"i32 @fflush(ptr)" }>, align 8
@.d64 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_thread_init" }>, align 8
@.d65 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_test_failed" }>, align 8
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ptr @" }>, align 8
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ptr @" }>, align 8
@.d69 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"{ ptr, ptr, ptr, ptr } { " }>, align 8
@.d70 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d71 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d72 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"@olang.race.reports = internal global i32 0\0A" }>, align 8
@.d73 = private constant <{ i64, [126 x i8] }> <{ i64 0, [126 x i8] c"define void @__tsan_on_report(ptr %r) nounwind {\0Aentry:\0A  atomicrmw add ptr @olang.race.reports, i32 1 monotonic\0A  ret void\0A}\0A" }>, align 8
@.d74 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d75 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"@olang.harness.inits = private constant [" }>, align 8
@.d76 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" x ptr] [" }>, align 8
@.d77 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]\0A" }>, align 8
@.d78 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d79 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"@olang.harness.tests = private constant [" }>, align 8
@.d80 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" x { ptr, ptr, ptr, ptr }] [" }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]\0A" }>, align 8
@.d82 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"strcmp" }>, align 8
@.d83 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"i32 @strcmp(ptr, ptr)" }>, align 8
@.d84 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"strncmp" }>, align 8
@.d85 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"i32 @strncmp(ptr, ptr, i64)" }>, align 8
@.d86 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"strlen" }>, align 8
@.d87 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"i64 @strlen(ptr)" }>, align 8
@.d88 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"strstr" }>, align 8
@.d89 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"ptr @strstr(ptr, ptr)" }>, align 8
@.d90 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c"\0Adefine private i1 @olang.harness.selected(ptr %tg, ptr %td, i32 %argc, ptr %argv) {\0Aentry:\0A" }>, align 8
@.d91 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"  %few = icmp sle i32 %argc, 1\0A  br i1 %few, label %yes, label %loop\0Aloop:\0A" }>, align 8
@.d92 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"  %i = phi i32 [ 1, %entry ], [ %i2, %next ]\0A  %i64 = sext i32 %i to i64\0A" }>, align 8
@.d93 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"  %ip = getelementptr ptr, ptr %argv, i64 %i64\0A  %f = load ptr, ptr %ip\0A" }>, align 8
@.d94 = private constant <{ i64, [108 x i8] }> <{ i64 0, [108 x i8] c"  %c1 = call i32 @strcmp(ptr %tg, ptr %f)\0A  %e1 = icmp eq i32 %c1, 0\0A  br i1 %e1, label %yes, label %t2\0At2:\0A" }>, align 8
@.d95 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"  %fl = call i64 @strlen(ptr %f)\0A  %c2 = call i32 @strncmp(ptr %tg, ptr %f, i64 %fl)\0A" }>, align 8
@.d96 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"  %e2 = icmp eq i32 %c2, 0\0A  br i1 %e2, label %t2b, label %t3\0At2b:\0A" }>, align 8
@.d97 = private constant <{ i64, [96 x i8] }> <{ i64 0, [96 x i8] c"  %dp = getelementptr i8, ptr %tg, i64 %fl\0A  %dc = load i8, ptr %dp\0A  %dot = icmp eq i8 %dc, 46\0A" }>, align 8
@.d98 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"  br i1 %dot, label %yes, label %t3\0At3:\0A  %ss = call ptr @strstr(ptr %td, ptr %f)\0A" }>, align 8
@.d99 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c"  %e3 = icmp ne ptr %ss, null\0A  br i1 %e3, label %yes, label %next\0Anext:\0A  %i2 = add i32 %i, 1\0A" }>, align 8
@.d100 = private constant <{ i64, [105 x i8] }> <{ i64 0, [105 x i8] c"  %more = icmp slt i32 %i2, %argc\0A  br i1 %more, label %loop, label %no\0Ayes:\0A  ret i1 1\0Ano:\0A  ret i1 0\0A}\0A" }>, align 8
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
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

@.d102 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"\0Adefine i32 @main(i32 %argc, ptr %argv) #0 {\0Aentry:\0A" }>, align 8
@.d103 = private constant <{ i64, [96 x i8] }> <{ i64 0, [96 x i8] c"  %pass = alloca i32\0A  %fail = alloca i32\0A  %k = alloca i64\0A  %jb = alloca [200 x i8], align 16\0A" }>, align 8
@.d104 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"  %sel = alloca i32\0A  store volatile i32 0, ptr %sel\0A" }>, align 8
@.d105 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"  store volatile i32 0, ptr %pass\0A  store volatile i32 0, ptr %fail\0A" }>, align 8
@.d106 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"  store i32 %argc, ptr @__olang_argc\0A  store ptr %argv, ptr @__olang_argv\0A" }>, align 8
@.d107 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"  store ptr " }>, align 8
@.d108 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", ptr @__olang_test_file\0A" }>, align 8
@.d109 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"  call void @__olang_thread_init()\0A" }>, align 8
@.d110 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c"  store volatile i64 0, ptr %k\0A  br label %gloop\0Agloop:\0A  %gk = load volatile i64, ptr %k\0A" }>, align 8
@.d111 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"  %gm = icmp slt i64 %gk, " }>, align 8
@.d112 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"\0A  br i1 %gm, label %gbody, label %gdone\0Agbody:\0A" }>, align 8
@.d113 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"  store ptr %jb, ptr @__olang_jmp_target\0A  %gj = call i32 @setjmp(ptr %jb)\0A" }>, align 8
@.d114 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"  %gz = icmp eq i32 %gj, 0\0A  br i1 %gz, label %grun, label %gnext\0Agrun:\0A  %gk2 = load volatile i64, ptr %k\0A" }>, align 8
@.d115 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"  %gp = getelementptr [" }>, align 8
@.d116 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c" x ptr], ptr @olang.harness.inits, i64 0, i64 %gk2\0A" }>, align 8
@.d117 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"  %gf = load ptr, ptr %gp\0A  call void %gf()\0A  br label %gnext\0Agnext:\0A" }>, align 8
@.d118 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"  %gk3 = load volatile i64, ptr %k\0A  %gk4 = add i64 %gk3, 1\0A  store volatile i64 %gk4, ptr %k\0A" }>, align 8
@.d119 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"  br label %gloop\0Agdone:\0A" }>, align 8
@.d120 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d121 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c" x { ptr, ptr, ptr, ptr }]" }>, align 8
@.d122 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c"  store volatile i64 0, ptr %k\0A  br label %tloop\0Atloop:\0A  %tk = load volatile i64, ptr %k\0A" }>, align 8
@.d123 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"  %tm = icmp slt i64 %tk, " }>, align 8
@.d124 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"\0A  br i1 %tm, label %tpick, label %tdone\0Atpick:\0A" }>, align 8
@.d125 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"  %tgp = getelementptr " }>, align 8
@.d126 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c", ptr @olang.harness.tests, i64 0, i64 %tk, i32 2\0A" }>, align 8
@.d127 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"  %tdp = getelementptr " }>, align 8
@.d128 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c", ptr @olang.harness.tests, i64 0, i64 %tk, i32 3\0A" }>, align 8
@.d129 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"  %tg = load ptr, ptr %tgp\0A  %td = load ptr, ptr %tdp\0A" }>, align 8
@.d130 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"  %tsel = call i1 @olang.harness.selected(ptr %tg, ptr %td, i32 %argc, ptr %argv)\0A" }>, align 8
@.d131 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"  br i1 %tsel, label %tbody, label %tnext\0Atbody:\0A" }>, align 8
@.d132 = private constant <{ i64, [96 x i8] }> <{ i64 0, [96 x i8] c"  %sl = load volatile i32, ptr %sel\0A  %sl2 = add i32 %sl, 1\0A  store volatile i32 %sl2, ptr %sel\0A" }>, align 8
@.d133 = private constant <{ i64, [86 x i8] }> <{ i64 0, [86 x i8] c"  %top = load ptr, ptr @__olang_unwind_top\0A  store ptr %top, ptr @__olang_unwind_mark\0A" }>, align 8
@.d134 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"  store ptr %jb, ptr @__olang_jmp_target\0A  %tj = call i32 @setjmp(ptr %jb)\0A" }>, align 8
@.d135 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"  %tk2 = load volatile i64, ptr %k\0A" }>, align 8
@.d136 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"  %tfp = getelementptr " }>, align 8
@.d137 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c", ptr @olang.harness.tests, i64 0, i64 %tk2, i32 0\0A" }>, align 8
@.d138 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"  %tnp = getelementptr " }>, align 8
@.d139 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c", ptr @olang.harness.tests, i64 0, i64 %tk2, i32 1\0A" }>, align 8
@.d140 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"  %tf = load ptr, ptr %tfp\0A  %tn = load ptr, ptr %tnp\0A" }>, align 8
@.d141 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"  %tz = icmp eq i32 %tj, 0\0A  br i1 %tz, label %trun, label %tbad\0Atrun:\0A" }>, align 8
@.d142 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"  store ptr %tn, ptr @__olang_test_name\0A" }>, align 8
@.d143 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"  %rr0 = load atomic i32, ptr @olang.race.reports monotonic, align 4\0A" }>, align 8
@.d144 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"  call void %tf()\0A" }>, align 8
@.d145 = private constant <{ i64, [103 x i8] }> <{ i64 0, [103 x i8] c"  %rr1 = load atomic i32, ptr @olang.race.reports monotonic, align 4\0A  %raced = icmp ne i32 %rr1, %rr0\0A" }>, align 8
@.d146 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"  br i1 %raced, label %trace, label %tpass\0Atrace:\0A" }>, align 8
@.d147 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c"  %rf = load volatile i32, ptr %fail\0A  %rff = add i32 %rf, 1\0A  store volatile i32 %rff, ptr %fail\0A" }>, align 8
@.d148 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"FAIL - %s: data race\0A" }>, align 8
@.d149 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"  call i32 (ptr, ...) @printf(ptr " }>, align 8
@.d150 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c", ptr %tn)\0A  call i32 @fflush(ptr null)\0A" }>, align 8
@.d151 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"  br label %tnext\0Atpass:\0A" }>, align 8
@.d152 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"  %p = load volatile i32, ptr %pass\0A  %pp = add i32 %p, 1\0A  store volatile i32 %pp, ptr %pass\0A" }>, align 8
@.d153 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ok - %s\0A" }>, align 8
@.d154 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"  call i32 (ptr, ...) @printf(ptr " }>, align 8
@.d155 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c", ptr %tn)\0A  call i32 @fflush(ptr null)\0A" }>, align 8
@.d156 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"  br label %tnext\0Atbad:\0A  %f = load volatile i32, ptr %fail\0A  %ff = add i32 %f, 1\0A" }>, align 8
@.d157 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"  store volatile i32 %ff, ptr %fail\0A  call void @__olang_test_failed(ptr %tn)\0A  call i32 @fflush(ptr null)\0A" }>, align 8
@.d158 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"  br label %tnext\0Atnext:\0A  %tk3 = load volatile i64, ptr %k\0A  %tk4 = add i64 %tk3, 1\0A" }>, align 8
@.d159 = private constant <{ i64, [59 x i8] }> <{ i64 0, [59 x i8] c"  store volatile i64 %tk4, ptr %k\0A  br label %tloop\0Atdone:\0A" }>, align 8
@.d160 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"  store ptr null, ptr @__olang_jmp_target\0A" }>, align 8
@.d161 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c"  %ns = load volatile i32, ptr %sel\0A  %none = icmp eq i32 %ns, 0\0A  %words = icmp sgt i32 %argc, 1\0A" }>, align 8
@.d162 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c"  %unmatched = and i1 %none, %words\0A  br i1 %unmatched, label %nomatch, label %counts\0Anomatch:\0A" }>, align 8
@.d163 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"  ret i32 3\0Acounts:\0A" }>, align 8
@.d164 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"  %np = load volatile i32, ptr %pass\0A  %nf = load volatile i32, ptr %fail\0A" }>, align 8
@.d165 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"getenv" }>, align 8
@.d166 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"ptr @getenv(ptr)" }>, align 8
@.d167 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fopen" }>, align 8
@.d168 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"ptr @fopen(ptr, ptr)" }>, align 8
@.d169 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"fclose" }>, align 8
@.d170 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"i32 @fclose(ptr)" }>, align 8
@.d171 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"fprintf" }>, align 8
@.d172 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"i32 @fprintf(ptr, ptr, ...)" }>, align 8
@.d173 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"OLANG_TEST_COUNTS" }>, align 8
@.d174 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"  %cf = call ptr @getenv(ptr " }>, align 8
@.d175 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c")\0A  %hascf = icmp ne ptr %cf, null\0A" }>, align 8
@.d176 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"  br i1 %hascf, label %tofile, label %say\0Atofile:\0A" }>, align 8
@.d177 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"w" }>, align 8
@.d178 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"  %fh = call ptr @fopen(ptr %cf, ptr " }>, align 8
@.d179 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c")\0A  %fhok = icmp ne ptr %fh, null\0A" }>, align 8
@.d180 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"  br i1 %fhok, label %wrote, label %say\0Awrote:\0A" }>, align 8
@.d181 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"%d %d\0A" }>, align 8
@.d182 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"  call i32 (ptr, ...) @fprintf(ptr %fh, ptr " }>, align 8
@.d183 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", i32 %np, i32 %nf)\0A" }>, align 8
@.d184 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"  call i32 @fclose(ptr %fh)\0A  br label %fin\0Asay:\0A" }>, align 8
@.d185 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"%d passed, %d failed\0A" }>, align 8
@.d186 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"  call i32 (ptr, ...) @printf(ptr " }>, align 8
@.d187 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", i32 %np, i32 %nf)\0A" }>, align 8
@.d188 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"  br label %fin\0Afin:\0A" }>, align 8
@.d189 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"  %any = icmp sgt i32 %nf, 0\0A  %st = zext i1 %any to i32\0A  ret i32 %st\0A}\0A\0A" }>, align 8
@.d190 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
define internal i1 @olang_lambda_191(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t5 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t1, i64 %a0)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %vc0, ptr %vc0, ptr %t6, i64 %a1)
  store { i64, ptr } %t10, ptr %l8
  br label %bb2
bb2:
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc0, ptr %vc0, { i64, ptr } %t11, { i64, ptr } %t12)
  store i1 %t13, ptr %l9
  br label %bb3
bb3:
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d192 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"olang." }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aHelperKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 8}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d479, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d479, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d480, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d480, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d481, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d481, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d482, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d482, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d483, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d483, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d484, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d484, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d485, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d485, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d486, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d486, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
ret:
  ret void
}

@.d193 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare void @__olang_sb_done(ptr)
@.d194 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"_adapter" }>, align 8
@.d195 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"_copied" }>, align 8
@.d196 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_twin" }>, align 8
@.d197 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang.init." }>, align 8
@.d198 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".top" }>, align 8
@.d199 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d200 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang.anyrender" }>, align 8
@.d201 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d202 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".walk" }>, align 8
@.d203 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d204 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"  %big = alloca %olang.scope\0A" }>, align 8
@.d205 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"  store %olang.scope zeroinitializer, ptr %big\0A" }>, align 8
declare ptr @__olang_scope_or(ptr, ptr)
@.d206 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_scope_alloc_a" }>, align 8
@.d207 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_close" }>, align 8
@.d208 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a constant element of a " }>, align 8
@.d209 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d210 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d211 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"{ i64 " }>, align 8
@.d212 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d213 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d214 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d215 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d216 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d217 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d218 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"mul i64 " }>, align 8
@.d219 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d220 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"llvm.memcpy.p0.p0.i64" }>, align 8
@.d221 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d222 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"call void @llvm.memcpy.p0.p0.i64(ptr " }>, align 8
@.d223 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d224 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d225 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i1 false)" }>, align 8
@.d226 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d227 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"sext " }>, align 8
@.d228 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d229 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d230 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_gen_alloc" }>, align 8
@.d231 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"call ptr @__olang_gen_alloc(ptr " }>, align 8
@.d232 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d233 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d234 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d235 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d236 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d237 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d238 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d239 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i64 -8" }>, align 8
@.d240 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"store i64 " }>, align 8
@.d241 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d242 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", align 8" }>, align 8
@.d243 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"load " }>, align 8
@.d244 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d245 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"llvm.memmove.p0.p0.i64" }>, align 8
@.d246 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d247 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"call void @llvm.memmove.p0.p0.i64(ptr " }>, align 8
@.d248 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d249 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d250 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i1 false)" }>, align 8
@.d251 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"call i16 asm \22\22, \22=r,0\22(i16 " }>, align 8
@.d252 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d253 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d254 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d255 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2epackedInto_2elocal_2e6 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d256 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d257 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d258 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2eparts_2elocal_2e5 = weak hidden constant i1 false
@.d259 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d260 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d261 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d262 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d263 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d264 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d265 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d266 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
@.d267 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d268 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2epartsResult_2elocal_2e7 = weak hidden constant i1 false
@.d269 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d270 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d271 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d272 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d273 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d274 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%lp" }>, align 8
@.d275 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d276 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s" }>, align 8
@.d277 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"store ptr %s" }>, align 8
@.d278 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"room, ptr %s" }>, align 8
@.d279 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a region" }>, align 8
@.d280 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"store %olang.scope zeroinitializer, ptr %s" }>, align 8
@.d281 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"store ptr null, ptr %jh" }>, align 8
@.d282 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_sb_done" }>, align 8
@.d283 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"getelementptr %olang.builder, ptr %s" }>, align 8
@.d284 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 3" }>, align 8
@.d285 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d286 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp ne ptr " }>, align 8
@.d287 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", null" }>, align 8
@.d288 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"sbgrew" }>, align 8
@.d289 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"sbdone" }>, align 8
@.d290 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d291 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", label %" }>, align 8
@.d292 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"call void @__olang_sb_done(ptr %s" }>, align 8
@.d293 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d294 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d295 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_close" }>, align 8
@.d296 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"call void @__olang_scope_close(ptr %s" }>, align 8
@.d297 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d298 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_errpay_set" }>, align 8
@.d299 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call void @__olang_errpay_set(ptr " }>, align 8
@.d300 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d301 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_errpay_pop" }>, align 8
@.d302 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call void @__olang_errpay_pop()" }>, align 8
@.d303 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"a cleanup (interpret's)" }>, align 8
@.d304 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a destructor not found: " }>, align 8
@.d305 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"__olang_scope_register_dtor" }>, align 8
@.d306 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"call void @__olang_scope_register_dtor(ptr " }>, align 8
@.d307 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d308 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@.d309 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"_rt)" }>, align 8
@.d310 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_region_drop" }>, align 8
@.d311 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"call void @__olang_region_drop(ptr " }>, align 8
@.d312 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d313 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d314 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"__olang_region_release" }>, align 8
@.d315 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"call void @__olang_region_release(ptr " }>, align 8
@.d316 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d317 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"__olang_region_release_part" }>, align 8
@.d318 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d319 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d320 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"call void @__olang_region_release_part(ptr " }>, align 8
@.d321 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d322 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d323 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_slot_release" }>, align 8
@.d324 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call void @__olang_slot_release(ptr " }>, align 8
@.d325 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d326 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d327 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"inttoptr i64 " }>, align 8
@.d328 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to ptr" }>, align 8
@.d329 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq ptr " }>, align 8
@.d330 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d331 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_region_settle" }>, align 8
@.d332 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"call void @__olang_region_settle(ptr " }>, align 8
@.d333 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", i1 " }>, align 8
@.d334 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d335 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"mul i64 " }>, align 8
@.d336 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d337 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"llvm.memmove.p0.p0.i64" }>, align 8
@.d338 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d339 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"call void @llvm.memmove.p0.p0.i64(ptr " }>, align 8
@.d340 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d341 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d342 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i1 false)" }>, align 8
@.d343 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"llvm.memmove.p0.p0.i64" }>, align 8
@.d344 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d345 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%tf" }>, align 8
@.d346 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d347 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"tf" }>, align 8
@.d348 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d349 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d350 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"d = load ptr, ptr %f" }>, align 8
@.d351 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\0A  " }>, align 8
@.d352 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"v = load { i64, ptr }, ptr " }>, align 8
@.d353 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"d\0A" }>, align 8
@.d354 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d355 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"n = extractvalue { i64, ptr } " }>, align 8
@.d356 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"v, 0\0A  " }>, align 8
@.d357 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"p = extractvalue { i64, ptr } " }>, align 8
@.d358 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"v, 1\0A" }>, align 8
@.d359 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d360 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"on = extractvalue { i64, ptr } %old" }>, align 8
@.d361 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", 0\0A  " }>, align 8
@.d362 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"op = extractvalue { i64, ptr } %old" }>, align 8
@.d363 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 1\0A" }>, align 8
@.d364 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d365 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"b = mul i64 " }>, align 8
@.d366 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"n, " }>, align 8
@.d367 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\0A  " }>, align 8
@.d368 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"s = icmp eq i64 " }>, align 8
@.d369 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"on\0A" }>, align 8
@.d370 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  br i1 " }>, align 8
@.d371 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"s, label %" }>, align 8
@.d372 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"i, label %" }>, align 8
@.d373 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"f\0A" }>, align 8
@.d374 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i:\0A" }>, align 8
@.d375 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"  call void @llvm.memmove.p0.p0.i64(ptr " }>, align 8
@.d376 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"op, ptr " }>, align 8
@.d377 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"p, i64 " }>, align 8
@.d378 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"b, i1 false)\0A" }>, align 8
@.d379 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"  store { i64, ptr } %old" }>, align 8
@.d380 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d381 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"d\0A  br label %" }>, align 8
@.d382 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"e\0A" }>, align 8
@.d383 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"f:\0A" }>, align 8
@.d384 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"__olang_scope_alloc_min" }>, align 8
@.d385 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_alloc" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d386 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_prog_scope" }>, align 8
@.d387 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"@__olang_prog_scope = external thread_local(initialexec) global ptr" }>, align 8
@.d388 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d389 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"c = load ptr, ptr %f" }>, align 8
@.d390 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\0A  " }>, align 8
@.d391 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"z = icmp eq ptr " }>, align 8
@.d392 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"c, null\0A" }>, align 8
@.d393 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d394 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"g = load ptr, ptr @__olang_prog_scope\0A  " }>, align 8
@.d395 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"w = select i1 " }>, align 8
@.d396 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"z, ptr " }>, align 8
@.d397 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"g, ptr " }>, align 8
@.d398 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"c\0A" }>, align 8
@.d399 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d400 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d401 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d402 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"q = call ptr @" }>, align 8
@.d403 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr " }>, align 8
@.d404 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"w, i64 " }>, align 8
@.d405 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"b" }>, align 8
@.d406 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d407 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"  call void @llvm.memmove.p0.p0.i64(ptr " }>, align 8
@.d408 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"q, ptr " }>, align 8
@.d409 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"p, i64 " }>, align 8
@.d410 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"b, i1 false)\0A" }>, align 8
@.d411 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d412 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"x = insertvalue { i64, ptr } undef, i64 " }>, align 8
@.d413 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"n, 0\0A" }>, align 8
@.d414 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d415 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"y = insertvalue { i64, ptr } " }>, align 8
@.d416 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"x, ptr " }>, align 8
@.d417 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"q, 1\0A  store { i64, ptr } " }>, align 8
@.d418 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"y, ptr " }>, align 8
@.d419 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"d\0A" }>, align 8
@.d420 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"  br label %" }>, align 8
@.d421 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"e\0A" }>, align 8
@.d422 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"e:\0A" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e5 = weak hidden constant i1 false
@.d423 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i128" }>, align 8
@.d424 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d425 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"sext " }>, align 8
@.d426 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d427 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" to i128" }>, align 8
@.d428 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e6 = weak hidden constant i1 false
@.d429 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"icmp slt i128 " }>, align 8
@.d430 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d431 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"sub i128 0, " }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ewideToBF16_2elocal_2e7 = weak hidden constant i1 false
@.d432 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d433 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", i128 " }>, align 8
@.d434 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"llvm.ctlz.i128" }>, align 8
@.d435 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"i128 @llvm.ctlz.i128(i128, i1)" }>, align 8
@.d436 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"or i128 " }>, align 8
@.d437 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d438 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call i128 @llvm.ctlz.i128(i128 " }>, align 8
@.d439 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", i1 true)" }>, align 8
@.d440 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"sub i128 65, " }>, align 8
@.d441 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"icmp sgt i128 " }>, align 8
@.d442 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d443 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d444 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", i128 " }>, align 8
@.d445 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i128 0" }>, align 8
@.d446 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"shl i128 1, " }>, align 8
@.d447 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"sub i128 " }>, align 8
@.d448 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d449 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"and i128 " }>, align 8
@.d450 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d451 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"icmp ne i128 " }>, align 8
@.d452 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d453 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"lshr i128 " }>, align 8
@.d454 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d455 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"trunc i128 " }>, align 8
@.d456 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d457 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"zext i1 " }>, align 8
@.d458 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d459 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"or i64 " }>, align 8
@.d460 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d461 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_int_bf16" }>, align 8
@.d462 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call bfloat @__olang_int_bf16(i64 " }>, align 8
@.d463 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", i1 " }>, align 8
@.d464 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d465 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"trunc i128 " }>, align 8
@.d466 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i32" }>, align 8
@.d467 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"add i32 " }>, align 8
@.d468 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", 127" }>, align 8
@.d469 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"shl i32 " }>, align 8
@.d470 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 23" }>, align 8
@.d471 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"bitcast i32 " }>, align 8
@.d472 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" to float" }>, align 8
@.d473 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d474 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"fmul float " }>, align 8
@.d475 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d476 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"!llvm.dbg.cu = !{!" }>, align 8
@.d477 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"}\0A!llvm.module.flags = !{!1, !2}\0A!1 = !{i32 7, !\22Dwarf Version\22, i32 4}\0A" }>, align 8
@.d478 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"!2 = !{i32 2, !\22Debug Info Version\22, i32 3}\0A" }>, align 8
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
@.d479 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"mir.HelperKind.Render" }>, align 8
@.d480 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Equal" }>, align 8
@.d481 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Hash" }>, align 8
@.d482 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Zero" }>, align 8
@.d483 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Copy" }>, align 8
@.d484 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Parts" }>, align 8
@.d485 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Drop" }>, align 8
@.d486 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Guard" }>, align 8
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
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eadaptKey(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupOf(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstGroupOf(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epartOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ealiased(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewrapper(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypesNamedIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclTypes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erefs(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ad9436b5748221a9_385739db7a2b20ed = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewantType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitemNamed(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2eprefixOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehead(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H0211835ad1df5edc8086b9b7bc878d6e(ptr %v0, ptr %a0)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbg(ptr %v0, ptr %a0)
@olang_loc_4635f1a318b549bc_759936c3a7928310 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_2968b987139e6167_76a7d58ddfcdba8b = external constant [0 x i8]
declare i64 @compiler_2femit_2emetaNumber(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_493930ee087ace8a_eb37955c75d36e8e = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H86f724e2dc8b3b4d675d56b45c81e2ce(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_82b9110c3ab34805_cdca7d87f9ba97f1 = external constant [0 x i8]
@olang_loc_20b52d6bf9b06c28_18043bf0e12df584 = external constant [0 x i8]
@olang_loc_9bd48c53dce2a143_9d318240a700faef = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eattributes(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2eIntBytes8(i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_6aada305a3873fb6_c16c54d6f05c33ea = external constant [0 x i8]
declare %"compiler/lower:Clone" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aClone_3e_2eAt_3ccompiler_2flower_3aClone_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ethunkSym(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_18f6acb4865fb5f2_de2c0e3f26126f06 = external constant [0 x i8]
@olang_loc_795f0ceaa031aa73_92815be2925279e7 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efunction(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2femit_3afnEm_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, i1 %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3afnEm_2egenLeaves(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eleafAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2egenBytes(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2egenClass(i64 %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenOkName(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
@olang_loc_2aa1b6f8675f9eff_587e0f89839d7783 = external constant [0 x i8]
@olang_loc_d066018c79b1953a_bec35d4ece20e406 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2einitOrder(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %a0, i64 %a1)
declare { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestParts(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eInPart(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efuzzHarness(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, ptr %a3)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestSource(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esanInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisLambda(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_22c0ecf0dfd2f0b7_2552f1950a299d53 = external constant [0 x i8]
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eIter_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_ef8ce655497c6e66_70bdfc36b0b8c4fa = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etableName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_325a0aca37049b03_8faf0435ed6a0227 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2elinkFor(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare { { i64, ptr }, { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstInit(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, i32 %a2)
declare { { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstGlobal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_3de177096d03f952_4b04555d717d3dfe = external constant [0 x i8]
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3, i1 %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [1 x i64] } %a1)
declare i64 @compiler_2femit_2egenClassSize(i64 %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eownWordsClear(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedMake(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, %"compiler/mir:Range" %a2)
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
@olang_loc_44ed23dda5502268_7ffab923032619a4 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5)
@olang_loc_745b41379bd01239_c904106b8ad08895 = external constant [0 x i8]
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2femit_2estmtSpan(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2elocate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efillInPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2, { i64, [15 x i64] } %a3)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eintoPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2, { i64, [15 x i64] } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ervalue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [15 x i64] } %a1, i32 %a2)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalType(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2eClear_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eClear_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPush(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkKey(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkEnd(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPop(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2etrace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholders(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ereclaim(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/mir:Range" %a3)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eanchorRegion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectRef(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2ePush_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edataPtr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [4 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2espawn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, %"compiler/mir:Task" %a2)
@olang_loc_73cacc8093766858_2881ed4d4d5af0d4 = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2evalueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Task" %a1, i64 %a2)
declare %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_93708b25bcca1908_59bc9d4dcf3d1544 = external constant [0 x i8]
declare %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, ptr %a4)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@olang_loc_82759c8127bb92d9_9a26fc180f98a435 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enarrowBF16(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)

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
