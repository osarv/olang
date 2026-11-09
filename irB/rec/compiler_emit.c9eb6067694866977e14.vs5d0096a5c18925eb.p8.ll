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
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cabi:Regs" = type { i64, i64 }
%"compiler/cabi:Way" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:TaskClause" = type { %"compiler/mir:Range", i1, { i64, [4 x i64] } }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eExportNames(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l24 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca ptr
  %l35 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca ptr
  %l43 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportBodies(ptr %v0, ptr %s1, ptr %t5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l9
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  store ptr %t9, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l11, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t12)
  store i64 %t14, ptr %l13
  br label %bb4
bb4:
  %t15 = load i64, ptr %l11, !tbaa !24
  %t16 = load i64, ptr %l13, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb26
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l18
  br label %bb8
bb8:
  %t26 = load i64, ptr %l18, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/emit:Emitter", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/lower:Lowerer", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t38 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t33, i64 %t26)
  store ptr %t38, ptr %l24
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l24, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Body", ptr %t39, i32 0, i32 1
  %t42 = load { i64, [2 x i64] }, ptr %t41
  store { i64, [2 x i64] } %t42, ptr %l5
  %t44 = load { i64, [2 x i64] }, ptr %l5
  %t46 = extractvalue { i64, [2 x i64] } %t44, 0
  %t47 = icmp eq i64 %t46, 0
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t50 = getelementptr { i64 }, ptr %t49, i32 0, i32 0
  %t51 = load i64, ptr %t50
  store i64 %t51, ptr %l6, !tbaa !24
  br label %bb12
bb11:
  br label %bb19
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load ptr, ptr %lp1
  store ptr %t53, ptr %l30, !tbaa !29
  %t54 = ptrtoint ptr %v1 to i64
  store i64 %t54, ptr %l31, !tbaa !24
  %t55 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = call ptr @__olang_region_make(ptr %v1)
  %t58 = ptrtoint ptr %t57 to i64
  store i64 %t58, ptr %l31, !tbaa !24
  br label %bb14
bb14:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/emit:Emitter", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l35, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/emit:Emitter", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t67, i64 %t68)
  store i64 %t71, ptr %l39
  br label %bb15
bb15:
  %t72 = load ptr, ptr %l35, !tbaa !29
  %t73 = load i64, ptr %l39, !tbaa !24
  %t74 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s3, ptr %t72, i64 %t73)
  store ptr %t74, ptr %l40
  br label %bb16
bb16:
  %t75 = load ptr, ptr %l40, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Func", ptr %t75, i32 0, i32 2
  %t78 = load i32, ptr %t77, !tbaa !23
  %t79 = load ptr, ptr %l33, !tbaa !29
  %t81 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s3, ptr %t79, i32 %t78)
  store { i64, ptr } %t81, ptr %l43
  br label %bb17
bb17:
  %t82 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = load i64, ptr %l31
  %t86 = inttoptr i64 %t85 to ptr
  %t87 = call ptr @__olang_scope_alloc(ptr %t86, i64 %t84)
  call void @olang_textcopy(ptr %t87, ptr %t83, i64 %t84)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  %t91 = load i64, ptr %l31
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = extractvalue { i64, ptr } %t89, 0
  %t94 = extractvalue { i64, ptr } %t89, 1
  %t95 = mul i64 %t93, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %t92, i64 %t95)
  call void @llvm.memcpy.p0.p0.i64(ptr %t96, ptr %t94, i64 %t95, i1 false)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  %t99 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t99, { i64, ptr } %t98)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
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
  call void @__olang_check_failed(ptr @olang_loc_b7cf39b9bc6342b8_b5524b9e4a088564)
  unreachable
bb24:
  br label %bb25
bb25:
  %t101 = load i64, ptr %l3, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l3, !tbaa !24
  br label %bb3
bb26:
  call void @__olang_scope_close(ptr %s1)
  %t105 = load ptr, ptr %lp1
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecParamList(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca i1
  %l6 = alloca %"compiler/cabi:Regs"
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca %"compiler/cabi:Regs"
  %l18 = alloca i32
  %l22 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %l31 = alloca i1
  %l38 = alloca %"compiler/cabi:Way"
  %l41 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l47 = alloca i64
  %l52 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t6, ptr %l14
  br label %bb1
bb1:
  %t7 = load %"std/prelude/text:StringBuilder", ptr %l14
  store %"std/prelude/text:StringBuilder" %t7, ptr %l4
  store i1 true, ptr %l5, !tbaa !21
  %t8 = call %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %s0, i64 6, i64 8)
  store %"compiler/cabi:Regs" %t8, ptr %l15
  br label %bb2
bb2:
  %t9 = load %"compiler/cabi:Regs", ptr %l15
  store %"compiler/cabi:Regs" %t9, ptr %l6
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l18
  br label %bb3
bb3:
  %t15 = load i32, ptr %l18, !tbaa !23
  store i32 %t15, ptr %l7, !tbaa !23
  %t16 = load i32, ptr %l7, !tbaa !23
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t20 = icmp ne i32 %t16, %t17
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = load i32, ptr %l7, !tbaa !23
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t26 = icmp ne i32 %t22, %t23
  store i1 %t26, ptr %l22, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l22, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/emit:Emitter", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t33 = load i32, ptr %l7, !tbaa !23
  %t36 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t36, ptr %l30
  br label %bb9
bb8:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb10
bb9:
  %t37 = load i1, ptr %l30, !tbaa !21
  store i1 %t37, ptr %l26, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l26, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/emit:Emitter", ptr %t39, i32 0, i32 3
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/emit:Emitter", ptr %t43, i32 0, i32 48
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t47 = load i32, ptr %l7, !tbaa !23
  %t49 = inttoptr i64 0 to ptr
  %t53 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v0, ptr %s0, ptr %t49, ptr %t42, { i64, ptr } %t46, i32 %t47)
  store %"compiler/cabi:Way" %t53, ptr %l38
  br label %bb13
bb12:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb14
bb13:
  %t54 = getelementptr %"compiler/cabi:Way", ptr %l38, i32 0, i32 0
  %t55 = load i32, ptr %t54, !range !{i32 0, i32 5}
  %t57 = trunc i64 4 to i32
  %t58 = icmp eq i32 %t55, %t57
  store i1 %t58, ptr %l31, !tbaa !21
  br label %bb14
bb14:
  %t60 = load i1, ptr %l31, !tbaa !21
  br i1 %t60, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %l4, ptr %l41, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l7, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s1, ptr %t61, i32 %t62)
  store { i64, ptr } %t65, ptr %l44
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t67 = load i32, ptr %l7, !tbaa !23
  %t70 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t66, i32 %t67)
  store i64 %t70, ptr %l47
  br label %bb18
bb18:
  %t71 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t73 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = add i64 %t72, %t75
  %t77 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = load i64, ptr %l47, !tbaa !24
  %t81 = call i64 @__olang_fmt_i64(ptr null, i64 %t80)
  %t82 = add i64 %t79, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t71, i64 %t72)
  %t84 = getelementptr i8, ptr %t83, i64 %t72
  call void @olang_textcopy(ptr %t84, ptr %t74, i64 %t75)
  %t85 = getelementptr i8, ptr %t84, i64 %t75
  call void @olang_textcopy(ptr %t85, ptr %t77, i64 %t78)
  %t86 = getelementptr i8, ptr %t85, i64 %t78
  %t87 = call i64 @__olang_fmt_i64(ptr %t86, i64 %t80)
  %t88 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t83, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load ptr, ptr %l41, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %t97, { i64, ptr } %t96)
  br label %bb19
bb19:
  store i1 false, ptr %l5, !tbaa !21
  %t99 = getelementptr %"compiler/cabi:Regs", ptr %l6, i32 0, i32 0
  %t100 = load i64, ptr %t99, !tbaa !24
  %t102 = sub i64 %t100, 1
  %t104 = getelementptr %"compiler/cabi:Regs", ptr %l6, i32 0, i32 0
  store i64 %t102, ptr %t104, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb20
bb20:
  %t105 = load ptr, ptr %l3, !tbaa !29
  store ptr %t105, ptr %l52, !tbaa !29
  %t106 = load ptr, ptr %l3, !tbaa !29
  %t107 = load i32, ptr %l1, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l55
  br label %bb21
bb21:
  %t111 = load ptr, ptr %l52, !tbaa !29
  %t112 = load i32, ptr %l55, !tbaa !23
  %t113 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t111, i32 %t112)
  store { i64, ptr } %t113, ptr %l56
  br label %bb22
bb22:
  %t114 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t114, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t115 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  store i64 %t117, ptr %l10, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t119 = load i64, ptr %l9, !tbaa !24
  %t120 = load i64, ptr %l10, !tbaa !24
  %t123 = icmp slt i64 %t119, %t120
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb34
bb25:
  br label %bb26
bb26:
  %t127 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t127, ptr %l63, !tbaa !27
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i32, ptr %t131, i64 %t128
  %t133 = load i32, ptr %t132, !tbaa !33
  store i32 %t133, ptr %l11, !tbaa !23
  %t135 = load i1, ptr %l5, !tbaa !21
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l4, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) })
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb30
bb30:
  store i1 false, ptr %l5, !tbaa !21
  store ptr %l4, ptr %l69, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l11, !tbaa !23
  %t147 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecParamSpelled(ptr %v0, ptr %s0, ptr %s4, ptr %t140, i32 %t141, ptr %l6, i1 %a2)
  store { i64, ptr } %t147, ptr %l74
  br label %bb31
bb31:
  %t148 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 0
  %t150 = extractvalue { i64, ptr } %t148, 1
  %t151 = mul i64 %t149, 1
  %t152 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t151)
  call void @llvm.memcpy.p0.p0.i64(ptr %t152, ptr %t150, i64 %t151, i1 false)
  %t153 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  %t155 = load ptr, ptr %l69, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t155, { i64, ptr } %t154)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb33:
  %t157 = load i64, ptr %l9, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l9, !tbaa !24
  br label %bb23
bb34:
  %t162 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l4)
  store { i64, ptr } %t162, ptr %l79
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t163 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t163, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecapVars(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca { i64, [1 x i64] }
  %l39 = alloca ptr
  %l41 = alloca ptr
  %l48 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca { i64, ptr }
  %l56 = alloca i1
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb22
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/lower:Lowerer", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t16, i64 %t20)
  store ptr %t23, ptr %l18
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l18, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 6
  store ptr %t26, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t28 = load i64, ptr %l5, !tbaa !24
  store i64 %t28, ptr %l21, !tbaa !24
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l23
  br label %bb6
bb6:
  %t32 = load i64, ptr %l21, !tbaa !24
  %t33 = load i64, ptr %l23, !tbaa !24
  %t34 = icmp slt i64 %t32, %t33
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb7, label %bb8
bb7:
  br label %bb21
bb8:
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t38, i64 %t39)
  store { i64, [1 x i64] } %t42, ptr %l28
  br label %bb10
bb10:
  %t43 = load { i64, [1 x i64] }, ptr %l28
  %t46 = extractvalue { i64, [1 x i64] } %t43, 0
  %t47 = icmp eq i64 %t46, 4
  br i1 %t47, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_9506350913203bfc_41d6488afcc367c0)
  unreachable
bb19:
  br label %bb20
bb20:
  %t53 = load i64, ptr %l5, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l5, !tbaa !24
  br label %bb5
bb21:
  br label %bb41
bb22:
  %t57 = load { i64, [2 x i64] }, ptr %l1
  %t59 = extractvalue { i64, [2 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 1
  br i1 %t60, label %bb23, label %bb24
bb23:
  %t62 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t63 = getelementptr { i32 }, ptr %t62, i32 0, i32 0
  %t64 = load i32, ptr %t63
  store i32 %t64, ptr %l7, !tbaa !23
  br label %bb25
bb24:
  br label %bb36
bb25:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/emit:Emitter", ptr %t66, i32 0, i32 3
  %t69 = load ptr, ptr %t68, !tbaa !29
  store ptr %t69, ptr %l39, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/emit:Emitter", ptr %t70, i32 0, i32 3
  %t73 = load ptr, ptr %t72, !tbaa !29
  store ptr %t73, ptr %l41, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/emit:Emitter", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/lower:Lowerer", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = load i32, ptr %l7, !tbaa !23
  %t84 = sext i32 %t82 to i64
  %t87 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t80, i64 %t84)
  store ptr %t87, ptr %l48
  br label %bb26
bb26:
  %t88 = load ptr, ptr %l48, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Body", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %t90, !tbaa !23
  %t92 = load ptr, ptr %l41, !tbaa !29
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t92, i32 %t91)
  store i32 %t94, ptr %l51
  br label %bb27
bb27:
  %t95 = load ptr, ptr %l39, !tbaa !29
  %t96 = load i32, ptr %l51, !tbaa !23
  %t97 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t95, i32 %t96)
  store { i64, ptr } %t97, ptr %l52
  br label %bb28
bb28:
  %t98 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t98, ptr %l8, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t103 = icmp sgt i64 %t101, 0
  br i1 %t103, label %bb29, label %bb30
bb29:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/emit:Emitter", ptr %t105, i32 0, i32 3
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t109 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t109, ptr %l59, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i32, ptr %t111, i64 0
  %t113 = load i32, ptr %t112, !tbaa !33
  %t116 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t108, i32 %t113)
  store i1 %t116, ptr %l61
  br label %bb31
bb30:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb32
bb31:
  %t117 = load i1, ptr %l61, !tbaa !21
  store i1 %t117, ptr %l56, !tbaa !21
  br label %bb32
bb32:
  %t118 = load i1, ptr %l56, !tbaa !21
  br i1 %t118, label %bb33, label %bb34
bb33:
  store i64 1, ptr %l2, !tbaa !24
  br label %bb35
bb34:
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
  call void @__olang_check_failed(ptr @olang_loc_2a2725b2da5e1bad_47abef39162bd051)
  unreachable
bb41:
  %t119 = load i64, ptr %l2, !tbaa !24
  store i64 %t119, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %s0 = alloca %olang.scope
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l3, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t6 = call i64 @__olang_fmt_i64(ptr null, i64 %t2)
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  %t10 = call i64 @__olang_fmt_i64(ptr %t9, i64 %t2)
  %t11 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t8, 1
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t15 = extractvalue { i64, ptr } %t12, 1
  %t16 = mul i64 %t14, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @llvm.memcpy.p0.p0.i64(ptr %t17, ptr %t15, i64 %t16, i1 false)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l6, !tbaa !27
  %t20 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t20, ptr %l7, !tbaa !24
  %t21 = ptrtoint ptr %s0 to i64
  store i64 %t21, ptr %l8, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t22, label %bb1, label %bb2
bb1:
  %t24 = call ptr @__olang_region_make(ptr %s0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t31 = call i64 @__olang_fmt_i64(ptr null, i64 %t26)
  %t32 = add i64 %t29, %t31
  %t33 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t35 = add i64 %t32, %t34
  %t37 = extractvalue { i64, ptr } %a2, 1
  %t38 = extractvalue { i64, ptr } %a2, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = load i64, ptr %l8
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = call ptr @__olang_scope_alloc(ptr %t44, i64 %t42)
  call void @olang_textcopy(ptr %t45, ptr %t28, i64 %t29)
  %t46 = getelementptr i8, ptr %t45, i64 %t29
  %t47 = call i64 @__olang_fmt_i64(ptr %t46, i64 %t26)
  %t48 = getelementptr i8, ptr %t46, i64 %t31
  call void @olang_textcopy(ptr %t48, ptr %t33, i64 %t34)
  %t49 = getelementptr i8, ptr %t48, i64 %t34
  call void @olang_textcopy(ptr %t49, ptr %t37, i64 %t38)
  %t50 = getelementptr i8, ptr %t49, i64 %t38
  call void @olang_textcopy(ptr %t50, ptr %t40, i64 %t41)
  %t51 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t45, 1
  %t54 = load i64, ptr %l8
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = extractvalue { i64, ptr } %t52, 0
  %t57 = extractvalue { i64, ptr } %t52, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t63 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t64 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t62, { i64, ptr } %t63, i64 %t64, { i64, ptr } %t61, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eextern(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %lp3 = alloca ptr
  %lp4 = alloca ptr
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca i1
  %l19 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l35 = alloca i1
  %l37 = alloca %"std/prelude/text:StringBuilder"
  %l38 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca i32
  %l49 = alloca i1
  %l50 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l59 = alloca ptr
  %l61 = alloca ptr
  %l65 = alloca i32
  %l66 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca i1
  %l77 = alloca { i64, ptr }
  %l79 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
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
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExternSymbol(ptr %v0, ptr %v1, ptr %t4, i64 %t5)
  store { i64, ptr } %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t9, ptr %lp3
  %t10 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t11 = load ptr, ptr %lp3
  store { i64, ptr } %t10, ptr %t11, !tbaa !27
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %lp3
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t15 = load i32, ptr %l2, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2emathIntrinsic(ptr %v0, ptr %v1, ptr %v1, ptr %t12, { i64, ptr } %t14, i32 %t15)
  store { i64, ptr } %t19, ptr %l13
  br label %bb2
bb2:
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t20, ptr %lp4
  %t21 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t22 = load ptr, ptr %lp4
  store { i64, ptr } %t21, ptr %t22, !tbaa !27
  %t23 = load ptr, ptr %lp4
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t26, ptr %l15
  br label %bb3
bb3:
  %t27 = load i1, ptr %l15, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %lp4
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t35 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %v1, ptr %t30, { i64, ptr } %t32)
  store i1 %t35, ptr %l19
  br label %bb6
bb5:
  br label %bb13
bb6:
  %t36 = load i1, ptr %l19, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l21, !tbaa !29
  %t40 = load ptr, ptr %lp4
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l22, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexternRet(ptr %v0, ptr %s2, ptr %t42, i32 %t43)
  store { i64, ptr } %t46, ptr %l25
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t47 = load ptr, ptr %lp4
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l26, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l2, !tbaa !23
  %t53 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2emathParams(ptr %v0, ptr %s2, ptr %t49, i32 %t50)
  store { i64, ptr } %t53, ptr %l29
  br label %bb10
bb10:
  %t54 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t57 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t59 = add i64 %t56, %t58
  %t60 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = add i64 %t59, %t62
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t66 = add i64 %t63, %t65
  %t67 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = add i64 %t66, %t69
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t55, i64 %t56)
  %t75 = getelementptr i8, ptr %t74, i64 %t56
  call void @olang_textcopy(ptr %t75, ptr %t57, i64 %t58)
  %t76 = getelementptr i8, ptr %t75, i64 %t58
  call void @olang_textcopy(ptr %t76, ptr %t61, i64 %t62)
  %t77 = getelementptr i8, ptr %t76, i64 %t62
  call void @olang_textcopy(ptr %t77, ptr %t64, i64 %t65)
  %t78 = getelementptr i8, ptr %t77, i64 %t65
  call void @olang_textcopy(ptr %t78, ptr %t68, i64 %t69)
  %t79 = getelementptr i8, ptr %t78, i64 %t69
  call void @olang_textcopy(ptr %t79, ptr %t71, i64 %t72)
  %t80 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t74, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = extractvalue { i64, ptr } %t81, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t89 = load ptr, ptr %l21, !tbaa !29
  %t90 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %s2, ptr %t89, { i64, ptr } %t90, { i64, ptr } %t88)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t92 = load ptr, ptr %lp4
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t93, ptr %rv
  br label %ret
bb13:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %lp3
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  %t100 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %v1, ptr %t95, { i64, ptr } %t97)
  store i1 %t100, ptr %l35
  br label %bb14
bb14:
  %t101 = load i1, ptr %l35, !tbaa !21
  br i1 %t101, label %bb15, label %bb16
bb15:
  %t102 = load ptr, ptr %lp3
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t103, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t105 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t105, ptr %l37
  br label %bb18
bb18:
  %t106 = load %"std/prelude/text:StringBuilder", ptr %l37
  store %"std/prelude/text:StringBuilder" %t106, ptr %l5
  store ptr %l5, ptr %l38, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l2, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecHeader(ptr %v0, ptr %s0, ptr %t107, i32 %t108)
  store { i64, ptr } %t111, ptr %l41
  br label %bb19
bb19:
  %t112 = load ptr, ptr %lp3
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t118 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t119 = add i64 %t116, %t118
  %t121 = extractvalue { i64, ptr } %t113, 1
  %t122 = extractvalue { i64, ptr } %t113, 0
  %t123 = add i64 %t119, %t122
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t126 = add i64 %t123, %t125
  %t127 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t126)
  call void @olang_textcopy(ptr %t127, ptr %t115, i64 %t116)
  %t128 = getelementptr i8, ptr %t127, i64 %t116
  call void @olang_textcopy(ptr %t128, ptr %t117, i64 %t118)
  %t129 = getelementptr i8, ptr %t128, i64 %t118
  call void @olang_textcopy(ptr %t129, ptr %t121, i64 %t122)
  %t130 = getelementptr i8, ptr %t129, i64 %t122
  call void @olang_textcopy(ptr %t130, ptr %t124, i64 %t125)
  %t131 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t127, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = extractvalue { i64, ptr } %t132, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  %t140 = load ptr, ptr %l38, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t140, { i64, ptr } %t139)
  br label %bb20
bb20:
  store ptr %l5, ptr %l45, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l46, !tbaa !29
  %t143 = load i32, ptr %l2, !tbaa !23
  store i32 %t143, ptr %l47, !tbaa !23
  %t144 = load ptr, ptr %lp3
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  %t147 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t145, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t147, ptr %l49
  br label %bb21
bb21:
  %t148 = load ptr, ptr %l46, !tbaa !29
  %t149 = load i32, ptr %l47, !tbaa !23
  %t150 = load i1, ptr %l49, !tbaa !21
  %t151 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecParamList(ptr %v0, ptr %s0, ptr %t148, i32 %t149, i1 %t150)
  store { i64, ptr } %t151, ptr %l50
  br label %bb22
bb22:
  %t152 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  %t154 = extractvalue { i64, ptr } %t152, 1
  %t155 = mul i64 %t153, 1
  %t156 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t155)
  call void @llvm.memcpy.p0.p0.i64(ptr %t156, ptr %t154, i64 %t155, i1 false)
  %t157 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t156, 1
  %t159 = load ptr, ptr %l45, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t159, { i64, ptr } %t158)
  br label %bb23
bb23:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/emit:Emitter", ptr %t161, i32 0, i32 0
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t165 = load i64, ptr %l1, !tbaa !24
  %t168 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t164, i64 %t165)
  store ptr %t168, ptr %l55
  br label %bb24
bb24:
  %t169 = load ptr, ptr %l55, !tbaa !29
  %t171 = getelementptr %"compiler/ast:Func", ptr %t169, i32 0, i32 3
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/ast:Sig", ptr %t172, i32 0, i32 7
  %t175 = load i1, ptr %t174, !tbaa !21
  br i1 %t175, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  store ptr %l5, ptr %l59, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/emit:Emitter", ptr %t177, i32 0, i32 3
  %t180 = load ptr, ptr %t179, !tbaa !29
  store ptr %t180, ptr %l61, !tbaa !29
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/emit:Emitter", ptr %t181, i32 0, i32 3
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t185 = load i32, ptr %l2, !tbaa !23
  %t188 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t184, i32 %t185)
  store i32 %t188, ptr %l65
  br label %bb27
bb26:
  br label %bb33
bb27:
  %t189 = load ptr, ptr %l61, !tbaa !29
  %t190 = load i32, ptr %l65, !tbaa !23
  %t191 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s6, ptr %t189, i32 %t190)
  store { i64, ptr } %t191, ptr %l66
  br label %bb28
bb28:
  %t192 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  %t195 = icmp sgt i64 %t193, 0
  br i1 %t195, label %bb29, label %bb30
bb29:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb31
bb30:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb31
bb31:
  %t197 = load ptr, ptr %l59, !tbaa !29
  %t198 = load { i64, ptr }, ptr %l69, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t197, { i64, ptr } %t198)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s6)
  br label %bb33
bb33:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb34
bb34:
  %t200 = load ptr, ptr %lp3
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  %t202 = load ptr, ptr @__olang_prog_scope
  %t205 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %t202, ptr %v1, ptr @G_2ecompiler_2femit_2emathInexact, { i64, ptr } %t201)
  store i1 %t205, ptr %l73
  br label %bb35
bb35:
  %t206 = load i1, ptr %l73, !tbaa !21
  br i1 %t206, label %bb36, label %bb37
bb36:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l2, !tbaa !23
  %t211 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2emathParams(ptr %v0, ptr %s0, ptr %t207, i32 %t208)
  store { i64, ptr } %t211, ptr %l77
  br label %bb38
bb37:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb40
bb38:
  %t212 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  %t214 = extractvalue { i64, ptr } %t212, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t218, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t220, ptr %l79
  br label %bb39
bb39:
  %t221 = load i1, ptr %l79, !tbaa !21
  %t222 = xor i1 %t221, true
  store i1 %t222, ptr %l74, !tbaa !21
  br label %bb40
bb40:
  %t224 = load i1, ptr %l74, !tbaa !21
  br i1 %t224, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l5, { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d19, i32 0, i32 1) })
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb44:
  %t226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t226, ptr %l82, !tbaa !29
  %t227 = load ptr, ptr %lp3
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  store { i64, ptr } %t228, ptr %l83, !tbaa !27
  %t230 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t230, ptr %l85
  br label %bb45
bb45:
  %t231 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t231, 0
  %t233 = extractvalue { i64, ptr } %t231, 1
  %t234 = mul i64 %t232, 1
  %t235 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t234)
  call void @llvm.memcpy.p0.p0.i64(ptr %t235, ptr %t233, i64 %t234, i1 false)
  %t236 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t235, 1
  %t238 = load ptr, ptr %l82, !tbaa !29
  %t239 = load { i64, ptr }, ptr %l83, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %s0, ptr %t238, { i64, ptr } %t239, { i64, ptr } %t237)
  br label %bb46
bb46:
  %t241 = load ptr, ptr %lp3
  %t242 = load { i64, ptr }, ptr %t241, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t242, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalSym(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t9, i64 %a1)
  store ptr %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t16 = getelementptr %"compiler/load:Module", ptr %t14, i32 0, i32 2
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l10, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t22 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s0, ptr %t18, i32 %a2)
  store { i64, ptr } %t22, ptr %l13
  br label %bb2
bb2:
  %t23 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t25 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = add i64 %t24, %t27
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = add i64 %t31, %t34
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  call void @olang_textcopy(ptr %t36, ptr %t23, i64 %t24)
  %t37 = getelementptr i8, ptr %t36, i64 %t24
  call void @olang_textcopy(ptr %t37, ptr %t26, i64 %t27)
  %t38 = getelementptr i8, ptr %t37, i64 %t27
  call void @olang_textcopy(ptr %t38, ptr %t29, i64 %t30)
  %t39 = getelementptr i8, ptr %t38, i64 %t30
  call void @olang_textcopy(ptr %t39, ptr %t33, i64 %t34)
  %t40 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t36, 1
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = extractvalue { i64, ptr } %t41, 1
  %t45 = mul i64 %t43, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  call void @llvm.memcpy.p0.p0.i64(ptr %t46, ptr %t44, i64 %t45, i1 false)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  %t50 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t48)
  store { i64, ptr } %t50, ptr %l16
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t51 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2einlining(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l12 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb8
bb3:
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/lower:Lowerer", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t16, i64 %t20)
  store ptr %t23, ptr %l12
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 18
  %t27 = load i1, ptr %t26, !tbaa !21
  br i1 %t27, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t29, ptr %l16, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l17, !tbaa !24
  %t32 = load i64, ptr %l17, !tbaa !24
  %t33 = mul i64 %t32, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l18, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l17, !tbaa !24
  %t42 = mul i64 %t41, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %t40, i64 %t42, i1 false)
  %t43 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t43, ptr %l16, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_bb76ec7af7236540_ac44298998ea7a2c)
  unreachable
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t45, ptr %l20, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  store i64 %t47, ptr %l21, !tbaa !24
  %t48 = load i64, ptr %l21, !tbaa !24
  %t49 = mul i64 %t48, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t49)
  %t51 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  store { i64, ptr } %t52, ptr %l22, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = load i64, ptr %l21, !tbaa !24
  %t58 = mul i64 %t57, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t54, ptr %t56, i64 %t58, i1 false)
  %t59 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t59, ptr %l20, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t60, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGen(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i1
  %l13 = alloca ptr
  %rv = alloca i1
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
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/lower:Lowerer", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t16, i64 %t20)
  store ptr %t23, ptr %l13
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 14
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l3, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_a37d1f87ccda68bc_daadd8872686b520)
  unreachable
bb10:
  %t29 = load i1, ptr %l3, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i1
  %l15 = alloca ptr
  %l18 = alloca i1
  %l23 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i1
  %rv = alloca i1
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
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb16
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/lower:Lowerer", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t16, i64 %t20)
  store ptr %t23, ptr %l15
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 1
  %t27 = load { i64, [2 x i64] }, ptr %t26
  store { i64, [2 x i64] } %t27, ptr %l3
  %t29 = load { i64, [2 x i64] }, ptr %l3
  %t31 = extractvalue { i64, [2 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 0
  br i1 %t32, label %bb5, label %bb6
bb5:
  %t34 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t35 = getelementptr { i64 }, ptr %t34, i32 0, i32 0
  %t36 = load i64, ptr %t35
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/emit:Emitter", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l23, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/emit:Emitter", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t45, i64 %t46)
  store i64 %t49, ptr %l27
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l23, !tbaa !29
  %t51 = load i64, ptr %l27, !tbaa !24
  %t52 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t50, i64 %t51)
  store i1 %t52, ptr %l28
  br label %bb9
bb9:
  %t53 = load i1, ptr %l28, !tbaa !21
  store i1 %t53, ptr %l18, !tbaa !21
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_9224769184a821c8_ff8c445af92d13bc)
  unreachable
bb15:
  %t54 = load i1, ptr %l18, !tbaa !21
  store i1 %t54, ptr %l5, !tbaa !21
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_68254245c55f7699_2855b47650ff1f6d)
  unreachable
bb21:
  %t55 = load i1, ptr %l5, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2emergeSame(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca { i64, ptr }
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca %"std/prelude/text:StringBuilder"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca %"std/prelude/text:StringBuilder"
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca i64
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l86 = alloca i64
  %l87 = alloca i64
  %l88 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i64
  %l91 = alloca i64
  %l92 = alloca i64
  %l100 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l104 = alloca i64
  %l108 = alloca i64
  %l111 = alloca i64
  %l132 = alloca i64
  %l136 = alloca i1
  %l146 = alloca i64
  %l148 = alloca i64
  %l153 = alloca i64
  %l159 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l168 = alloca i64
  %l171 = alloca i64
  %l189 = alloca { i64, ptr }
  %l193 = alloca ptr
  %l194 = alloca { i64, ptr }
  %l195 = alloca { i64, ptr }
  %l198 = alloca i64
  %l199 = alloca { i64, ptr }
  %l202 = alloca i64
  %l203 = alloca i64
  %l208 = alloca i64
  %l211 = alloca i1
  %l214 = alloca i1
  %l215 = alloca i1
  %l219 = alloca i64
  %l222 = alloca i1
  %l226 = alloca i64
  %l235 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l236 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l239 = alloca i64
  %l243 = alloca i64
  %l246 = alloca i64
  %l267 = alloca i64
  %l271 = alloca { i64, ptr }
  %l274 = alloca i1
  %l279 = alloca i1
  %l281 = alloca i1
  %l282 = alloca i1
  %l286 = alloca i1
  %l288 = alloca i1
  %l289 = alloca ptr
  %l290 = alloca i64
  %l292 = alloca i64
  %l298 = alloca i64
  %l301 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l302 = alloca i64
  %l306 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l311 = alloca i64
  %l314 = alloca i64
  %l334 = alloca i64
  %l338 = alloca { i64, ptr }
  %l341 = alloca { i64, ptr }
  %l342 = alloca %"std/prelude/text:StringBuilder"
  %l343 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l349 = alloca i64
  %l352 = alloca i64
  %l370 = alloca { i64, ptr }
  %l374 = alloca i64
  %l376 = alloca ptr
  %l377 = alloca { i64, ptr }
  %l378 = alloca { i64, ptr }
  %l381 = alloca i64
  %l382 = alloca { i64, ptr }
  %l385 = alloca i64
  %l386 = alloca i64
  %l391 = alloca i64
  %l392 = alloca i32
  %l395 = alloca i1
  %l399 = alloca i64
  %l402 = alloca ptr
  %l403 = alloca { i64, ptr }
  %l404 = alloca i64
  %l405 = alloca { i64, ptr }
  %l408 = alloca i64
  %l409 = alloca i64
  %l417 = alloca { i64, ptr }
  %l418 = alloca i64
  %l420 = alloca i64
  %l421 = alloca i32
  %l422 = alloca ptr
  %l423 = alloca { i64, ptr }
  %l424 = alloca i64
  %l427 = alloca i64
  %l428 = alloca i64
  %l433 = alloca { i64, ptr }
  %l437 = alloca i64
  %l440 = alloca i64
  %l441 = alloca i32
  %l444 = alloca ptr
  %l445 = alloca { i64, ptr }
  %l446 = alloca i64
  %l447 = alloca { i64, ptr }
  %l450 = alloca i64
  %l451 = alloca i64
  %l456 = alloca { i64, ptr }
  %l464 = alloca ptr
  %l465 = alloca { i64, ptr }
  %l466 = alloca i64
  %l469 = alloca i64
  %l470 = alloca i64
  %l476 = alloca { i64, ptr }
  %l477 = alloca i64
  %l480 = alloca i64
  %l481 = alloca i32
  %l485 = alloca i64
  %l486 = alloca ptr
  %l487 = alloca i64
  %l495 = alloca ptr
  %l496 = alloca i64
  %l499 = alloca { i64, ptr }
  %l503 = alloca i64
  %l508 = alloca i64
  %l512 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l517 = alloca i64
  %l520 = alloca i64
  %l538 = alloca %"std/prelude/text:StringBuilder"
  %l546 = alloca { i64, ptr }
  %l553 = alloca { i64, ptr }
  %l564 = alloca { i64, ptr }
  %l565 = alloca i64
  %l568 = alloca i64
  %l569 = alloca i32
  %l573 = alloca i64
  %l574 = alloca ptr
  %l575 = alloca i64
  %l585 = alloca { i64, ptr }
  %l587 = alloca i64
  %l589 = alloca i64
  %l590 = alloca { i64, ptr }
  %l592 = alloca i64
  %l596 = alloca i64
  %l597 = alloca i64
  %l605 = alloca i64
  %l608 = alloca i64
  %l634 = alloca ptr
  %l637 = alloca i64
  %l638 = alloca i64
  %l639 = alloca ptr
  %l642 = alloca i64
  %l643 = alloca i64
  %l647 = alloca i1
  %l651 = alloca i1
  %l653 = alloca ptr
  %l656 = alloca i64
  %l657 = alloca { i64, ptr }
  %l659 = alloca ptr
  %l662 = alloca i64
  %l663 = alloca { i64, ptr }
  %l664 = alloca i1
  %l674 = alloca i64
  %l677 = alloca i64
  %l702 = alloca ptr
  %l705 = alloca i64
  %l708 = alloca i64
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %t1140 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 69
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 69
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:Emitter", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/load:Loader", ptr %t15, i32 0, i32 12
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l1, !tbaa !24
  %t20 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t20, ptr %l100
  br label %bb4
bb4:
  %t21 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t21, ptr %l2
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l101
  br label %bb5
bb5:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/emit:Emitter", ptr %t24, i32 0, i32 18
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l104
  br label %bb6
bb6:
  %t29 = load i64, ptr %l104, !tbaa !24
  store i64 %t29, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb12
bb9:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l111, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb11
bb11:
  %t56 = load i64, ptr %l111, !tbaa !24
  store i64 %t56, ptr %l108, !tbaa !24
  br label %bb12
bb12:
  %t57 = load i64, ptr %l108, !tbaa !24
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb14, label %bb15
bb14:
  br label %bb27
bb15:
  br label %bb16
bb16:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t67 = load i64, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l9, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/emit:Emitter", ptr %t76, i32 0, i32 20
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t78, i64 %t79)
  store i64 %t82, ptr %l132
  br label %bb17
bb17:
  %t83 = load i64, ptr %l132, !tbaa !24
  store i64 %t83, ptr %l10, !tbaa !24
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t88 = icmp eq i64 %t84, %t85
  br i1 %t88, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb20
bb19:
  %t90 = load i64, ptr %l10, !tbaa !24
  %t91 = load i64, ptr %l1, !tbaa !24
  %t94 = icmp eq i64 %t90, %t91
  store i1 %t94, ptr %l136, !tbaa !21
  br label %bb20
bb20:
  %t96 = load i1, ptr %l136, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb21:
  %t97 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l2, i64 %t97, i1 true)
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t100 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t100)
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t103 = load i64, ptr %l8, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l8, !tbaa !24
  br label %bb13
bb27:
  store i64 0, ptr %l11, !tbaa !24
  br label %bb28
bb28:
  %t107 = load i64, ptr %l11, !tbaa !24
  store i64 %t107, ptr %l146, !tbaa !24
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t109, ptr %l148
  br label %bb29
bb29:
  %t110 = load i64, ptr %l146, !tbaa !24
  %t111 = load i64, ptr %l148, !tbaa !24
  %t112 = icmp slt i64 %t110, %t111
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb30, label %bb31
bb30:
  br label %bb76
bb31:
  br label %bb32
bb32:
  %t116 = load i64, ptr %l11, !tbaa !24
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l3, i64 %t116)
  store i64 %t119, ptr %l153
  br label %bb33
bb33:
  %t120 = load i64, ptr %l153, !tbaa !24
  store i64 %t120, ptr %l12, !tbaa !24
  %t121 = load i64, ptr %l11, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l11, !tbaa !24
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/emit:Emitter", ptr %t125, i32 0, i32 19
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t127, i64 %t128)
  store { i64, ptr } %t131, ptr %l159
  br label %bb34
bb34:
  %t132 = load { i64, ptr }, ptr %l159, !tbaa !27
  store { i64, ptr } %t132, ptr %l13, !tbaa !27
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i64, ptr %l12, !tbaa !24
  %t137 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erefs(ptr %v0, ptr %v0, ptr %t133, i64 %t134)
  store { i64, ptr } %t137, ptr %l162
  br label %bb35
bb35:
  %t138 = load { i64, ptr }, ptr %l162, !tbaa !27
  store { i64, ptr } %t138, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 0
  store i64 %t141, ptr %l16, !tbaa !24
  store i64 3, ptr %l17, !tbaa !24
  %t143 = load i64, ptr %l16, !tbaa !24
  %t144 = load i64, ptr %l15, !tbaa !24
  %t147 = icmp sgt i64 %t143, %t144
  br i1 %t147, label %bb36, label %bb37
bb36:
  %t149 = load i64, ptr %l17, !tbaa !24
  %t151 = icmp sgt i64 %t149, 0
  br i1 %t151, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb41
bb38:
  %t153 = load i64, ptr %l16, !tbaa !24
  %t154 = load i64, ptr %l15, !tbaa !24
  %t157 = sub i64 %t153, %t154
  %t158 = load i64, ptr %l17, !tbaa !24
  %t161 = add i64 %t157, %t158
  %t163 = sub i64 %t161, 1
  %t164 = load i64, ptr %l17, !tbaa !24
  %t167 = sdiv i64 %t163, %t164
  store i64 %t167, ptr %l171, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l171, !tbaa !24
  br label %bb40
bb40:
  %t169 = load i64, ptr %l171, !tbaa !24
  store i64 %t169, ptr %l168, !tbaa !24
  br label %bb41
bb41:
  %t170 = load i64, ptr %l168, !tbaa !24
  store i64 %t170, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb42
bb42:
  %t171 = load i64, ptr %l19, !tbaa !24
  %t172 = load i64, ptr %l18, !tbaa !24
  %t175 = icmp slt i64 %t171, %t172
  %t177 = xor i1 %t175, true
  br i1 %t177, label %bb43, label %bb44
bb43:
  br label %bb74
bb44:
  br label %bb45
bb45:
  %t179 = load i64, ptr %l15, !tbaa !24
  %t180 = load i64, ptr %l19, !tbaa !24
  %t181 = load i64, ptr %l17, !tbaa !24
  %t184 = mul i64 %t180, %t181
  %t187 = add i64 %t179, %t184
  store i64 %t187, ptr %l20, !tbaa !24
  %t189 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t189, ptr %l189, !tbaa !27
  %t190 = load i64, ptr %l20, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr i64, ptr %t193, i64 %t190
  %t195 = load i64, ptr %t194, !tbaa !34
  %t197 = icmp ne i64 %t195, 0
  br i1 %t197, label %bb46, label %bb47
bb46:
  br label %bb73
bb47:
  br label %bb48
bb48:
  %t199 = load ptr, ptr %l0, !tbaa !29
  store ptr %t199, ptr %l193, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t200, ptr %l194, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t201, ptr %l195, !tbaa !27
  %t202 = load i64, ptr %l20, !tbaa !24
  %t204 = add i64 %t202, 1
  %t206 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i64, ptr %t207, i64 %t204
  %t209 = load i64, ptr %t208, !tbaa !34
  store i64 %t209, ptr %l198, !tbaa !24
  %t210 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t210, ptr %l199, !tbaa !27
  %t211 = load i64, ptr %l20, !tbaa !24
  %t213 = add i64 %t211, 2
  %t215 = getelementptr { i64, ptr }, ptr %l199, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i64, ptr %t216, i64 %t213
  %t218 = load i64, ptr %t217, !tbaa !34
  store i64 %t218, ptr %l202, !tbaa !24
  %t219 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 0
  store i64 %t220, ptr %l203, !tbaa !24
  %t221 = load i64, ptr %l198, !tbaa !24
  %t222 = icmp sge i64 %t221, 0
  br i1 %t222, label %bb49, label %bb50
bb49:
  %t224 = load i64, ptr %l198, !tbaa !24
  %t225 = load i64, ptr %l202, !tbaa !24
  %t226 = icmp sle i64 %t224, %t225
  br i1 %t226, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_de92fa5f00317f7b_3680b631254dc667)
  unreachable
bb51:
  %t228 = load i64, ptr %l202, !tbaa !24
  %t229 = load i64, ptr %l203, !tbaa !24
  %t230 = icmp sle i64 %t228, %t229
  br i1 %t230, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_de92fa5f00317f7b_3680b631254dc667)
  unreachable
bb53:
  %t232 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = load i64, ptr %l198, !tbaa !24
  %t235 = load i64, ptr %l202, !tbaa !24
  %t236 = getelementptr i8, ptr %t233, i64 %t234
  %t237 = sub i64 %t235, %t234
  %t238 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t236, 1
  %t240 = load ptr, ptr %l193, !tbaa !29
  %t242 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitemNamed(ptr %v0, ptr %v0, ptr %t240, { i64, ptr } %t239)
  store i64 %t242, ptr %l208
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_de92fa5f00317f7b_3680b631254dc667)
  unreachable
bb55:
  %t243 = load i64, ptr %l208, !tbaa !24
  store i64 %t243, ptr %l21, !tbaa !24
  %t244 = load i64, ptr %l21, !tbaa !24
  %t246 = icmp slt i64 %t244, 0
  br i1 %t246, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l211, !tbaa !21
  br label %bb59
bb57:
  %t248 = load i64, ptr %l21, !tbaa !24
  %t251 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l2, i64 %t248)
  store i1 %t251, ptr %l214
  br label %bb58
bb58:
  %t252 = load i1, ptr %l214, !tbaa !21
  store i1 %t252, ptr %l211, !tbaa !21
  br label %bb59
bb59:
  %t253 = load i1, ptr %l211, !tbaa !21
  br i1 %t253, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l215, !tbaa !21
  br label %bb67
bb61:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/emit:Emitter", ptr %t254, i32 0, i32 20
  %t257 = load i64, ptr %l21, !tbaa !24
  %t260 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t256, i64 %t257)
  store i64 %t260, ptr %l219
  br label %bb62
bb62:
  %t261 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  %t262 = load i64, ptr %l219, !tbaa !24
  %t264 = icmp ne i64 %t262, %t261
  br i1 %t264, label %bb63, label %bb64
bb63:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/emit:Emitter", ptr %t266, i32 0, i32 20
  %t269 = load i64, ptr %l21, !tbaa !24
  %t272 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t268, i64 %t269)
  store i64 %t272, ptr %l226
  br label %bb65
bb64:
  store i1 false, ptr %l222, !tbaa !21
  br label %bb66
bb65:
  %t273 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  %t274 = load i64, ptr %l226, !tbaa !24
  %t276 = icmp ne i64 %t274, %t273
  store i1 %t276, ptr %l222, !tbaa !21
  br label %bb66
bb66:
  %t278 = load i1, ptr %l222, !tbaa !21
  store i1 %t278, ptr %l215, !tbaa !21
  br label %bb67
bb67:
  %t279 = load i1, ptr %l215, !tbaa !21
  br i1 %t279, label %bb68, label %bb69
bb68:
  br label %bb73
bb69:
  br label %bb70
bb70:
  %t280 = load i64, ptr %l21, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l2, i64 %t280, i1 true)
  br label %bb71
bb71:
  %t283 = load i64, ptr %l21, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t283)
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t286 = load i64, ptr %l19, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l19, !tbaa !24
  br label %bb42
bb74:
  br label %bb75
bb75:
  br label %bb28
bb76:
  %t290 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t290, ptr %l235
  br label %bb77
bb77:
  %t291 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l235
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t291, ptr %l22
  %t292 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t292, ptr %l236
  br label %bb78
bb78:
  %t293 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l236
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t293, ptr %l23
  store i64 0, ptr %l24, !tbaa !24
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/emit:Emitter", ptr %t294, i32 0, i32 18
  %t298 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t296)
  store i64 %t298, ptr %l239
  br label %bb79
bb79:
  %t299 = load i64, ptr %l239, !tbaa !24
  store i64 %t299, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t300 = load i64, ptr %l25, !tbaa !24
  %t301 = load i64, ptr %l24, !tbaa !24
  %t304 = icmp sgt i64 %t300, %t301
  br i1 %t304, label %bb80, label %bb81
bb80:
  %t306 = load i64, ptr %l26, !tbaa !24
  %t308 = icmp sgt i64 %t306, 0
  br i1 %t308, label %bb82, label %bb83
bb81:
  store i64 0, ptr %l243, !tbaa !24
  br label %bb85
bb82:
  %t310 = load i64, ptr %l25, !tbaa !24
  %t311 = load i64, ptr %l24, !tbaa !24
  %t314 = sub i64 %t310, %t311
  %t315 = load i64, ptr %l26, !tbaa !24
  %t318 = add i64 %t314, %t315
  %t320 = sub i64 %t318, 1
  %t321 = load i64, ptr %l26, !tbaa !24
  %t324 = sdiv i64 %t320, %t321
  store i64 %t324, ptr %l246, !tbaa !24
  br label %bb84
bb83:
  store i64 0, ptr %l246, !tbaa !24
  br label %bb84
bb84:
  %t326 = load i64, ptr %l246, !tbaa !24
  store i64 %t326, ptr %l243, !tbaa !24
  br label %bb85
bb85:
  %t327 = load i64, ptr %l243, !tbaa !24
  store i64 %t327, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb86
bb86:
  store %olang.scope zeroinitializer, ptr %s13
  %t328 = load i64, ptr %l28, !tbaa !24
  %t329 = load i64, ptr %l27, !tbaa !24
  %t332 = icmp slt i64 %t328, %t329
  %t334 = xor i1 %t332, true
  br i1 %t334, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s13)
  br label %bb114
bb88:
  br label %bb89
bb89:
  %t336 = load i64, ptr %l24, !tbaa !24
  %t337 = load i64, ptr %l28, !tbaa !24
  %t338 = load i64, ptr %l26, !tbaa !24
  %t341 = mul i64 %t337, %t338
  %t344 = add i64 %t336, %t341
  store i64 %t344, ptr %l29, !tbaa !24
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/emit:Emitter", ptr %t346, i32 0, i32 20
  %t349 = load i64, ptr %l29, !tbaa !24
  %t352 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t348, i64 %t349)
  store i64 %t352, ptr %l267
  br label %bb90
bb90:
  %t353 = load i64, ptr %l267, !tbaa !24
  store i64 %t353, ptr %l30, !tbaa !24
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t356 = getelementptr %"compiler/emit:Emitter", ptr %t354, i32 0, i32 19
  %t357 = load i64, ptr %l29, !tbaa !24
  %t360 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t356, i64 %t357)
  store { i64, ptr } %t360, ptr %l271
  br label %bb91
bb91:
  %t361 = load { i64, ptr }, ptr %l271, !tbaa !27
  store { i64, ptr } %t361, ptr %l31, !tbaa !27
  %t362 = load i64, ptr %l29, !tbaa !24
  %t365 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l2, i64 %t362)
  store i1 %t365, ptr %l274
  br label %bb92
bb92:
  %t366 = load i1, ptr %l274, !tbaa !21
  %t367 = xor i1 %t366, true
  br i1 %t367, label %bb93, label %bb94
bb93:
  call void @__olang_scope_close(ptr %s13)
  br label %bb113
bb94:
  br label %bb95
bb95:
  %t369 = load i64, ptr %l30, !tbaa !24
  %t370 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t373 = icmp eq i64 %t369, %t370
  br i1 %t373, label %bb96, label %bb97
bb96:
  %t375 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t377 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s13, { i64, ptr } %t375, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t377, ptr %l281
  br label %bb98
bb97:
  store i1 false, ptr %l279, !tbaa !21
  br label %bb99
bb98:
  %t378 = load i1, ptr %l281, !tbaa !21
  store i1 %t378, ptr %l279, !tbaa !21
  br label %bb99
bb99:
  %t379 = load i1, ptr %l279, !tbaa !21
  br i1 %t379, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l282, !tbaa !21
  br label %bb106
bb101:
  %t380 = load i64, ptr %l30, !tbaa !24
  %t381 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  %t384 = icmp eq i64 %t380, %t381
  br i1 %t384, label %bb102, label %bb103
bb102:
  %t386 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t388 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s13, { i64, ptr } %t386, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t388, ptr %l288
  br label %bb104
bb103:
  store i1 false, ptr %l286, !tbaa !21
  br label %bb105
bb104:
  %t389 = load i1, ptr %l288, !tbaa !21
  store i1 %t389, ptr %l286, !tbaa !21
  br label %bb105
bb105:
  %t390 = load i1, ptr %l286, !tbaa !21
  store i1 %t390, ptr %l282, !tbaa !21
  br label %bb106
bb106:
  %t391 = load i1, ptr %l282, !tbaa !21
  br i1 %t391, label %bb107, label %bb108
bb107:
  store ptr %l23, ptr %l289, !tbaa !29
  %t392 = load i64, ptr %l29, !tbaa !24
  store i64 %t392, ptr %l290, !tbaa !24
  %t394 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l22)
  store i64 %t394, ptr %l292
  br label %bb109
bb108:
  br label %bb112
bb109:
  %t395 = load ptr, ptr %l289, !tbaa !29
  %t396 = load i64, ptr %l290, !tbaa !24
  %t397 = load i64, ptr %l292, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %s0, ptr %t395, i64 %t396, i64 %t397)
  br label %bb110
bb110:
  %t398 = load i64, ptr %l29, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l22, i64 %t398)
  br label %bb111
bb111:
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s13)
  br label %bb113
bb113:
  %t401 = load i64, ptr %l28, !tbaa !24
  %t403 = add i64 %t401, 1
  store i64 %t403, ptr %l28, !tbaa !24
  br label %bb86
bb114:
  %t406 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l22)
  store i64 %t406, ptr %l298
  br label %bb115
bb115:
  %t407 = load i64, ptr %l298, !tbaa !24
  store i64 %t407, ptr %l32, !tbaa !24
  %t408 = load i64, ptr %l32, !tbaa !24
  %t410 = icmp slt i64 %t408, 2
  br i1 %t410, label %bb116, label %bb117
bb116:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb117:
  br label %bb118
bb118:
  %t412 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t412, ptr %l301
  br label %bb119
bb119:
  %t413 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l301
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t413, ptr %l33
  %t414 = load i64, ptr %l32, !tbaa !24
  store i64 %t414, ptr %l302, !tbaa !24
  %t415 = load i64, ptr %l302, !tbaa !24
  %t416 = icmp sge i64 %t415, 0
  br i1 %t416, label %bb120, label %bb121
bb120:
  %t418 = load i64, ptr %l302, !tbaa !24
  %t419 = icmp sle i64 %t418, 1152921504606846975
  br i1 %t419, label %bb122, label %bb123
bb121:
  call void @__olang_check_failed(ptr @olang_loc_ce826338cbf4afde_5a793f5031108f92)
  unreachable
bb122:
  %t421 = load i64, ptr %l302, !tbaa !24
  %t422 = mul i64 %t421, 8
  %t423 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t422)
  %t424 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t423, 1
  store { i64, ptr } %t425, ptr %l34, !tbaa !27
  %t427 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t427, ptr %l306
  br label %bb124
bb123:
  call void @__olang_check_failed(ptr @olang_loc_ce826338cbf4afde_5a793f5031108f92)
  unreachable
bb124:
  %t428 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l306
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t428, ptr %l35
  store i64 0, ptr %l36, !tbaa !24
  %t429 = load i64, ptr %l32, !tbaa !24
  store i64 %t429, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t431 = load i64, ptr %l37, !tbaa !24
  %t432 = load i64, ptr %l36, !tbaa !24
  %t435 = icmp sgt i64 %t431, %t432
  br i1 %t435, label %bb125, label %bb126
bb125:
  %t437 = load i64, ptr %l38, !tbaa !24
  %t439 = icmp sgt i64 %t437, 0
  br i1 %t439, label %bb127, label %bb128
bb126:
  store i64 0, ptr %l311, !tbaa !24
  br label %bb130
bb127:
  %t441 = load i64, ptr %l37, !tbaa !24
  %t442 = load i64, ptr %l36, !tbaa !24
  %t445 = sub i64 %t441, %t442
  %t446 = load i64, ptr %l38, !tbaa !24
  %t449 = add i64 %t445, %t446
  %t451 = sub i64 %t449, 1
  %t452 = load i64, ptr %l38, !tbaa !24
  %t455 = sdiv i64 %t451, %t452
  store i64 %t455, ptr %l314, !tbaa !24
  br label %bb129
bb128:
  store i64 0, ptr %l314, !tbaa !24
  br label %bb129
bb129:
  %t457 = load i64, ptr %l314, !tbaa !24
  store i64 %t457, ptr %l311, !tbaa !24
  br label %bb130
bb130:
  %t458 = load i64, ptr %l311, !tbaa !24
  store i64 %t458, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb131
bb131:
  store %olang.scope zeroinitializer, ptr %s19
  %t459 = load i64, ptr %l40, !tbaa !24
  %t460 = load i64, ptr %l39, !tbaa !24
  %t463 = icmp slt i64 %t459, %t460
  %t465 = xor i1 %t463, true
  br i1 %t465, label %bb132, label %bb133
bb132:
  call void @__olang_scope_close(ptr %s19)
  br label %bb230
bb133:
  br label %bb134
bb134:
  %t467 = load i64, ptr %l36, !tbaa !24
  %t468 = load i64, ptr %l40, !tbaa !24
  %t469 = load i64, ptr %l38, !tbaa !24
  %t472 = mul i64 %t468, %t469
  %t475 = add i64 %t467, %t472
  store i64 %t475, ptr %l41, !tbaa !24
  %t477 = load i64, ptr %l41, !tbaa !24
  %t480 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l22, i64 %t477)
  store i64 %t480, ptr %l334
  br label %bb135
bb135:
  %t481 = load i64, ptr %l334, !tbaa !24
  store i64 %t481, ptr %l42, !tbaa !24
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/emit:Emitter", ptr %t482, i32 0, i32 19
  %t485 = load i64, ptr %l42, !tbaa !24
  %t488 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t484, i64 %t485)
  store { i64, ptr } %t488, ptr %l338
  br label %bb136
bb136:
  %t489 = load { i64, ptr }, ptr %l338, !tbaa !27
  store { i64, ptr } %t489, ptr %l43, !tbaa !27
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t491 = load i64, ptr %l42, !tbaa !24
  %t494 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erefs(ptr %v0, ptr %v0, ptr %t490, i64 %t491)
  store { i64, ptr } %t494, ptr %l341
  br label %bb137
bb137:
  %t495 = load { i64, ptr }, ptr %l341, !tbaa !27
  store { i64, ptr } %t495, ptr %l44, !tbaa !27
  %t496 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s19)
  store %"std/prelude/text:StringBuilder" %t496, ptr %l342
  br label %bb138
bb138:
  %t497 = load %"std/prelude/text:StringBuilder", ptr %l342
  store %"std/prelude/text:StringBuilder" %t497, ptr %l45
  %t498 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s19, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t498, ptr %l343
  br label %bb139
bb139:
  %t499 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l343
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t499, ptr %l46
  store i64 0, ptr %l47, !tbaa !24
  store i64 0, ptr %l48, !tbaa !24
  %t500 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t502 = extractvalue { i64, ptr } %t500, 0
  store i64 %t502, ptr %l49, !tbaa !24
  store i64 3, ptr %l50, !tbaa !24
  %t504 = load i64, ptr %l49, !tbaa !24
  %t505 = load i64, ptr %l48, !tbaa !24
  %t508 = icmp sgt i64 %t504, %t505
  br i1 %t508, label %bb140, label %bb141
bb140:
  %t510 = load i64, ptr %l50, !tbaa !24
  %t512 = icmp sgt i64 %t510, 0
  br i1 %t512, label %bb142, label %bb143
bb141:
  store i64 0, ptr %l349, !tbaa !24
  br label %bb145
bb142:
  %t514 = load i64, ptr %l49, !tbaa !24
  %t515 = load i64, ptr %l48, !tbaa !24
  %t518 = sub i64 %t514, %t515
  %t519 = load i64, ptr %l50, !tbaa !24
  %t522 = add i64 %t518, %t519
  %t524 = sub i64 %t522, 1
  %t525 = load i64, ptr %l50, !tbaa !24
  %t528 = sdiv i64 %t524, %t525
  store i64 %t528, ptr %l352, !tbaa !24
  br label %bb144
bb143:
  store i64 0, ptr %l352, !tbaa !24
  br label %bb144
bb144:
  %t530 = load i64, ptr %l352, !tbaa !24
  store i64 %t530, ptr %l349, !tbaa !24
  br label %bb145
bb145:
  %t531 = load i64, ptr %l349, !tbaa !24
  store i64 %t531, ptr %l51, !tbaa !24
  store i64 0, ptr %l52, !tbaa !24
  br label %bb146
bb146:
  %t532 = load i64, ptr %l52, !tbaa !24
  %t533 = load i64, ptr %l51, !tbaa !24
  %t536 = icmp slt i64 %t532, %t533
  %t538 = xor i1 %t536, true
  br i1 %t538, label %bb147, label %bb148
bb147:
  br label %bb205
bb148:
  br label %bb149
bb149:
  %t540 = load i64, ptr %l48, !tbaa !24
  %t541 = load i64, ptr %l52, !tbaa !24
  %t542 = load i64, ptr %l50, !tbaa !24
  %t545 = mul i64 %t541, %t542
  %t548 = add i64 %t540, %t545
  store i64 %t548, ptr %l53, !tbaa !24
  %t550 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t550, ptr %l370, !tbaa !27
  %t551 = load i64, ptr %l53, !tbaa !24
  %t553 = getelementptr { i64, ptr }, ptr %l370, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !27
  %t555 = getelementptr i64, ptr %t554, i64 %t551
  %t556 = load i64, ptr %t555, !tbaa !34
  %t558 = icmp ne i64 %t556, 0
  br i1 %t558, label %bb150, label %bb151
bb150:
  br label %bb204
bb151:
  br label %bb152
bb152:
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t562 = getelementptr %"compiler/emit:Emitter", ptr %t560, i32 0, i32 22
  store ptr %t562, ptr %l376, !tbaa !29
  %t563 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t563, ptr %l377, !tbaa !27
  %t564 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t564, ptr %l378, !tbaa !27
  %t565 = load i64, ptr %l53, !tbaa !24
  %t567 = add i64 %t565, 1
  %t569 = getelementptr { i64, ptr }, ptr %l378, i32 0, i32 1
  %t570 = load ptr, ptr %t569, !tbaa !27
  %t571 = getelementptr i64, ptr %t570, i64 %t567
  %t572 = load i64, ptr %t571, !tbaa !34
  store i64 %t572, ptr %l381, !tbaa !24
  %t573 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t573, ptr %l382, !tbaa !27
  %t574 = load i64, ptr %l53, !tbaa !24
  %t576 = add i64 %t574, 2
  %t578 = getelementptr { i64, ptr }, ptr %l382, i32 0, i32 1
  %t579 = load ptr, ptr %t578, !tbaa !27
  %t580 = getelementptr i64, ptr %t579, i64 %t576
  %t581 = load i64, ptr %t580, !tbaa !34
  store i64 %t581, ptr %l385, !tbaa !24
  %t582 = load { i64, ptr }, ptr %l377, !tbaa !27
  %t583 = extractvalue { i64, ptr } %t582, 0
  store i64 %t583, ptr %l386, !tbaa !24
  %t584 = load i64, ptr %l381, !tbaa !24
  %t585 = icmp sge i64 %t584, 0
  br i1 %t585, label %bb153, label %bb154
bb153:
  %t587 = load i64, ptr %l381, !tbaa !24
  %t588 = load i64, ptr %l385, !tbaa !24
  %t589 = icmp sle i64 %t587, %t588
  br i1 %t589, label %bb155, label %bb156
bb154:
  call void @__olang_check_failed(ptr @olang_loc_71a9e12f05a3bddd_baac335f863186a9)
  unreachable
bb155:
  %t591 = load i64, ptr %l385, !tbaa !24
  %t592 = load i64, ptr %l386, !tbaa !24
  %t593 = icmp sle i64 %t591, %t592
  br i1 %t593, label %bb157, label %bb158
bb156:
  call void @__olang_check_failed(ptr @olang_loc_71a9e12f05a3bddd_baac335f863186a9)
  unreachable
bb157:
  %t595 = getelementptr { i64, ptr }, ptr %l377, i32 0, i32 1
  %t596 = load ptr, ptr %t595, !tbaa !27
  %t597 = load i64, ptr %l381, !tbaa !24
  %t598 = load i64, ptr %l385, !tbaa !24
  %t599 = getelementptr i8, ptr %t596, i64 %t597
  %t600 = sub i64 %t598, %t597
  %t601 = insertvalue { i64, ptr } undef, i64 %t600, 0
  %t602 = insertvalue { i64, ptr } %t601, ptr %t599, 1
  %t603 = load ptr, ptr %l376, !tbaa !29
  %t605 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v0, ptr %t603, { i64, ptr } %t602)
  %t606 = extractvalue { i32, i64 } %t605, 1
  %t607 = extractvalue { i32, i64 } %t605, 0
  store i32 %t607, ptr %l392
  %t608 = icmp ne i32 %t607, 0
  br i1 %t608, label %bb160, label %ok.609, !prof !99
ok.609:
  store i64 %t606, ptr %l391
  br label %bb159
bb158:
  call void @__olang_check_failed(ptr @olang_loc_71a9e12f05a3bddd_baac335f863186a9)
  unreachable
bb159:
  %t610 = load i64, ptr %l391, !tbaa !24
  store i64 %t610, ptr %l374, !tbaa !24
  br label %bb162
bb160:
  br label %bb161
bb161:
  store i64 -1, ptr %l374, !tbaa !24
  br label %bb162
bb162:
  %t611 = load i64, ptr %l374, !tbaa !24
  store i64 %t611, ptr %l54, !tbaa !24
  %t612 = load i64, ptr %l54, !tbaa !24
  %t614 = icmp sge i64 %t612, 0
  br i1 %t614, label %bb163, label %bb164
bb163:
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t618 = getelementptr %"compiler/emit:Emitter", ptr %t616, i32 0, i32 20
  %t619 = load i64, ptr %l54, !tbaa !24
  %t622 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t618, i64 %t619)
  store i64 %t622, ptr %l399
  br label %bb165
bb164:
  store i1 false, ptr %l395, !tbaa !21
  br label %bb166
bb165:
  %t623 = load i64, ptr @G_2ecompiler_2femit_2eHomeLoc, !tbaa !24
  %t624 = load i64, ptr %l399, !tbaa !24
  %t626 = icmp eq i64 %t624, %t623
  store i1 %t626, ptr %l395, !tbaa !21
  br label %bb166
bb166:
  %t628 = load i1, ptr %l395, !tbaa !21
  br i1 %t628, label %bb167, label %bb168
bb167:
  store %olang.scope zeroinitializer, ptr %s23
  store ptr %l45, ptr %l402, !tbaa !29
  %t629 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t629, ptr %l403, !tbaa !27
  %t630 = load i64, ptr %l47, !tbaa !24
  store i64 %t630, ptr %l404, !tbaa !24
  %t631 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t631, ptr %l405, !tbaa !27
  %t632 = load i64, ptr %l53, !tbaa !24
  %t634 = add i64 %t632, 1
  %t636 = getelementptr { i64, ptr }, ptr %l405, i32 0, i32 1
  %t637 = load ptr, ptr %t636, !tbaa !27
  %t638 = getelementptr i64, ptr %t637, i64 %t634
  %t639 = load i64, ptr %t638, !tbaa !34
  store i64 %t639, ptr %l408, !tbaa !24
  %t640 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t641 = extractvalue { i64, ptr } %t640, 0
  store i64 %t641, ptr %l409, !tbaa !24
  %t642 = load i64, ptr %l404, !tbaa !24
  %t643 = icmp sge i64 %t642, 0
  br i1 %t643, label %bb169, label %bb170
bb168:
  br label %bb188
bb169:
  %t645 = load i64, ptr %l404, !tbaa !24
  %t646 = load i64, ptr %l408, !tbaa !24
  %t647 = icmp sle i64 %t645, %t646
  br i1 %t647, label %bb171, label %bb172
bb170:
  call void @__olang_check_failed(ptr @olang_loc_2d324f4199cd7780_534dee4d2a64aebc)
  unreachable
bb171:
  %t649 = load i64, ptr %l408, !tbaa !24
  %t650 = load i64, ptr %l409, !tbaa !24
  %t651 = icmp sle i64 %t649, %t650
  br i1 %t651, label %bb173, label %bb174
bb172:
  call void @__olang_check_failed(ptr @olang_loc_2d324f4199cd7780_534dee4d2a64aebc)
  unreachable
bb173:
  %t653 = getelementptr { i64, ptr }, ptr %l403, i32 0, i32 1
  %t654 = load ptr, ptr %t653, !tbaa !27
  %t655 = load i64, ptr %l404, !tbaa !24
  %t656 = load i64, ptr %l408, !tbaa !24
  %t657 = getelementptr i8, ptr %t654, i64 %t655
  %t658 = sub i64 %t656, %t655
  %t659 = insertvalue { i64, ptr } undef, i64 %t658, 0
  %t660 = insertvalue { i64, ptr } %t659, ptr %t657, 1
  %t661 = load ptr, ptr %l402, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s19, ptr %v0, ptr %t661, { i64, ptr } %t660)
  br label %bb175
bb174:
  call void @__olang_check_failed(ptr @olang_loc_2d324f4199cd7780_534dee4d2a64aebc)
  unreachable
bb175:
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t665 = getelementptr %"compiler/emit:Emitter", ptr %t663, i32 0, i32 19
  %t666 = load i64, ptr %l54, !tbaa !24
  %t669 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t665, i64 %t666)
  store { i64, ptr } %t669, ptr %l417
  br label %bb176
bb176:
  %t670 = load { i64, ptr }, ptr %l417, !tbaa !27
  store { i64, ptr } %t670, ptr %l55, !tbaa !27
  %t671 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t673 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s23, { i64, ptr } %t671, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) })
  %t674 = extractvalue { i32, i64 } %t673, 1
  %t675 = extractvalue { i32, i64 } %t673, 0
  store i32 %t675, ptr %l421
  %t676 = icmp ne i32 %t675, 0
  br i1 %t676, label %bb178, label %ok.677, !prof !99
ok.677:
  store i64 %t674, ptr %l420
  br label %bb177
bb177:
  %t678 = load i64, ptr %l420, !tbaa !24
  store i64 %t678, ptr %l418, !tbaa !24
  br label %bb180
bb178:
  br label %bb179
bb179:
  store i64 0, ptr %l418, !tbaa !24
  br label %bb180
bb180:
  %t679 = load i64, ptr %l418, !tbaa !24
  store ptr %l45, ptr %l422, !tbaa !29
  %t680 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t680, ptr %l423, !tbaa !27
  store i64 %t679, ptr %l424, !tbaa !24
  %t682 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t685 = extractvalue { i64, ptr } %t682, 0
  store i64 %t685, ptr %l427, !tbaa !24
  %t686 = load { i64, ptr }, ptr %l423, !tbaa !27
  %t687 = extractvalue { i64, ptr } %t686, 0
  store i64 %t687, ptr %l428, !tbaa !24
  %t688 = load i64, ptr %l424, !tbaa !24
  %t689 = icmp sge i64 %t688, 0
  br i1 %t689, label %bb181, label %bb182
bb181:
  %t691 = load i64, ptr %l424, !tbaa !24
  %t692 = load i64, ptr %l427, !tbaa !24
  %t693 = icmp sle i64 %t691, %t692
  br i1 %t693, label %bb183, label %bb184
bb182:
  call void @__olang_check_failed(ptr @olang_loc_ccd5cb87339e775f_a8ec88fdee920643)
  unreachable
bb183:
  %t695 = load i64, ptr %l427, !tbaa !24
  %t696 = load i64, ptr %l428, !tbaa !24
  %t697 = icmp sle i64 %t695, %t696
  br i1 %t697, label %bb185, label %bb186
bb184:
  call void @__olang_check_failed(ptr @olang_loc_ccd5cb87339e775f_a8ec88fdee920643)
  unreachable
bb185:
  %t699 = getelementptr { i64, ptr }, ptr %l423, i32 0, i32 1
  %t700 = load ptr, ptr %t699, !tbaa !27
  %t701 = load i64, ptr %l424, !tbaa !24
  %t702 = load i64, ptr %l427, !tbaa !24
  %t703 = getelementptr i8, ptr %t700, i64 %t701
  %t704 = sub i64 %t702, %t701
  %t705 = insertvalue { i64, ptr } undef, i64 %t704, 0
  %t706 = insertvalue { i64, ptr } %t705, ptr %t703, 1
  %t707 = load ptr, ptr %l422, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s19, ptr %v0, ptr %t707, { i64, ptr } %t706)
  br label %bb187
bb186:
  call void @__olang_check_failed(ptr @olang_loc_ccd5cb87339e775f_a8ec88fdee920643)
  unreachable
bb187:
  %t709 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t709, ptr %l433, !tbaa !27
  %t710 = load i64, ptr %l53, !tbaa !24
  %t712 = add i64 %t710, 2
  %t714 = getelementptr { i64, ptr }, ptr %l433, i32 0, i32 1
  %t715 = load ptr, ptr %t714, !tbaa !27
  %t716 = getelementptr i64, ptr %t715, i64 %t712
  %t717 = load i64, ptr %t716, !tbaa !34
  store i64 %t717, ptr %l47, !tbaa !24
  call void @__olang_scope_close(ptr %s23)
  br label %bb204
bb188:
  %t719 = load i64, ptr %l54, !tbaa !24
  %t722 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %l23, i64 %t719)
  %t723 = extractvalue { i32, i64 } %t722, 1
  %t724 = extractvalue { i32, i64 } %t722, 0
  store i32 %t724, ptr %l441
  %t725 = icmp ne i32 %t724, 0
  br i1 %t725, label %bb190, label %ok.726, !prof !99
ok.726:
  store i64 %t723, ptr %l440
  br label %bb189
bb189:
  %t727 = load i64, ptr %l440, !tbaa !24
  store i64 %t727, ptr %l437, !tbaa !24
  br label %bb192
bb190:
  br label %bb191
bb191:
  store i64 -1, ptr %l437, !tbaa !24
  br label %bb192
bb192:
  %t728 = load i64, ptr %l437, !tbaa !24
  store i64 %t728, ptr %l57, !tbaa !24
  %t729 = load i64, ptr %l57, !tbaa !24
  %t731 = icmp slt i64 %t729, 0
  br i1 %t731, label %bb193, label %bb194
bb193:
  br label %bb204
bb194:
  br label %bb195
bb195:
  store ptr %l45, ptr %l444, !tbaa !29
  %t733 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t733, ptr %l445, !tbaa !27
  %t734 = load i64, ptr %l47, !tbaa !24
  store i64 %t734, ptr %l446, !tbaa !24
  %t735 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t735, ptr %l447, !tbaa !27
  %t736 = load i64, ptr %l53, !tbaa !24
  %t738 = add i64 %t736, 1
  %t740 = getelementptr { i64, ptr }, ptr %l447, i32 0, i32 1
  %t741 = load ptr, ptr %t740, !tbaa !27
  %t742 = getelementptr i64, ptr %t741, i64 %t738
  %t743 = load i64, ptr %t742, !tbaa !34
  store i64 %t743, ptr %l450, !tbaa !24
  %t744 = load { i64, ptr }, ptr %l445, !tbaa !27
  %t745 = extractvalue { i64, ptr } %t744, 0
  store i64 %t745, ptr %l451, !tbaa !24
  %t746 = load i64, ptr %l446, !tbaa !24
  %t747 = icmp sge i64 %t746, 0
  br i1 %t747, label %bb196, label %bb197
bb196:
  %t749 = load i64, ptr %l446, !tbaa !24
  %t750 = load i64, ptr %l450, !tbaa !24
  %t751 = icmp sle i64 %t749, %t750
  br i1 %t751, label %bb198, label %bb199
bb197:
  call void @__olang_check_failed(ptr @olang_loc_502634e55cf63fe2_bb9ce6600b3e98e6)
  unreachable
bb198:
  %t753 = load i64, ptr %l450, !tbaa !24
  %t754 = load i64, ptr %l451, !tbaa !24
  %t755 = icmp sle i64 %t753, %t754
  br i1 %t755, label %bb200, label %bb201
bb199:
  call void @__olang_check_failed(ptr @olang_loc_502634e55cf63fe2_bb9ce6600b3e98e6)
  unreachable
bb200:
  %t757 = getelementptr { i64, ptr }, ptr %l445, i32 0, i32 1
  %t758 = load ptr, ptr %t757, !tbaa !27
  %t759 = load i64, ptr %l446, !tbaa !24
  %t760 = load i64, ptr %l450, !tbaa !24
  %t761 = getelementptr i8, ptr %t758, i64 %t759
  %t762 = sub i64 %t760, %t759
  %t763 = insertvalue { i64, ptr } undef, i64 %t762, 0
  %t764 = insertvalue { i64, ptr } %t763, ptr %t761, 1
  %t765 = load ptr, ptr %l444, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s19, ptr %v0, ptr %t765, { i64, ptr } %t764)
  br label %bb202
bb201:
  call void @__olang_check_failed(ptr @olang_loc_502634e55cf63fe2_bb9ce6600b3e98e6)
  unreachable
bb202:
  %t767 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t767, ptr %l456, !tbaa !27
  %t768 = load i64, ptr %l53, !tbaa !24
  %t770 = add i64 %t768, 2
  %t772 = getelementptr { i64, ptr }, ptr %l456, i32 0, i32 1
  %t773 = load ptr, ptr %t772, !tbaa !27
  %t774 = getelementptr i64, ptr %t773, i64 %t770
  %t775 = load i64, ptr %t774, !tbaa !34
  store i64 %t775, ptr %l47, !tbaa !24
  %t777 = load i64, ptr %l57, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s19, ptr %l46, i64 %t777)
  br label %bb203
bb203:
  br label %bb204
bb204:
  %t780 = load i64, ptr %l52, !tbaa !24
  %t782 = add i64 %t780, 1
  store i64 %t782, ptr %l52, !tbaa !24
  br label %bb146
bb205:
  store ptr %l45, ptr %l464, !tbaa !29
  %t784 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t784, ptr %l465, !tbaa !27
  %t785 = load i64, ptr %l47, !tbaa !24
  store i64 %t785, ptr %l466, !tbaa !24
  %t786 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t789 = extractvalue { i64, ptr } %t786, 0
  store i64 %t789, ptr %l469, !tbaa !24
  %t790 = load { i64, ptr }, ptr %l465, !tbaa !27
  %t791 = extractvalue { i64, ptr } %t790, 0
  store i64 %t791, ptr %l470, !tbaa !24
  %t792 = load i64, ptr %l466, !tbaa !24
  %t793 = icmp sge i64 %t792, 0
  br i1 %t793, label %bb206, label %bb207
bb206:
  %t795 = load i64, ptr %l466, !tbaa !24
  %t796 = load i64, ptr %l469, !tbaa !24
  %t797 = icmp sle i64 %t795, %t796
  br i1 %t797, label %bb208, label %bb209
bb207:
  call void @__olang_check_failed(ptr @olang_loc_b7179de695e5661_8fd10db64c62ad05)
  unreachable
bb208:
  %t799 = load i64, ptr %l469, !tbaa !24
  %t800 = load i64, ptr %l470, !tbaa !24
  %t801 = icmp sle i64 %t799, %t800
  br i1 %t801, label %bb210, label %bb211
bb209:
  call void @__olang_check_failed(ptr @olang_loc_b7179de695e5661_8fd10db64c62ad05)
  unreachable
bb210:
  %t803 = getelementptr { i64, ptr }, ptr %l465, i32 0, i32 1
  %t804 = load ptr, ptr %t803, !tbaa !27
  %t805 = load i64, ptr %l466, !tbaa !24
  %t806 = load i64, ptr %l469, !tbaa !24
  %t807 = getelementptr i8, ptr %t804, i64 %t805
  %t808 = sub i64 %t806, %t805
  %t809 = insertvalue { i64, ptr } undef, i64 %t808, 0
  %t810 = insertvalue { i64, ptr } %t809, ptr %t807, 1
  %t811 = load ptr, ptr %l464, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s19, ptr %v0, ptr %t811, { i64, ptr } %t810)
  br label %bb212
bb211:
  call void @__olang_check_failed(ptr @olang_loc_b7179de695e5661_8fd10db64c62ad05)
  unreachable
bb212:
  %t814 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s19, ptr %s19, ptr %l45)
  store { i64, ptr } %t814, ptr %l476
  br label %bb213
bb213:
  %t815 = load { i64, ptr }, ptr %l476, !tbaa !27
  store { i64, ptr } %t815, ptr %l58, !tbaa !27
  %t816 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t819 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %s0, ptr %s19, ptr %l35, { i64, ptr } %t816)
  %t820 = extractvalue { i32, i64 } %t819, 1
  %t821 = extractvalue { i32, i64 } %t819, 0
  store i32 %t821, ptr %l481
  %t822 = icmp ne i32 %t821, 0
  br i1 %t822, label %bb215, label %ok.823, !prof !99
ok.823:
  store i64 %t820, ptr %l480
  br label %bb214
bb214:
  %t824 = load i64, ptr %l480, !tbaa !24
  store i64 %t824, ptr %l477, !tbaa !24
  br label %bb217
bb215:
  br label %bb216
bb216:
  store i64 -1, ptr %l477, !tbaa !24
  br label %bb217
bb217:
  %t825 = load i64, ptr %l477, !tbaa !24
  store i64 %t825, ptr %l59, !tbaa !24
  %t826 = load i64, ptr %l59, !tbaa !24
  %t828 = icmp slt i64 %t826, 0
  br i1 %t828, label %bb218, label %bb219
bb218:
  %t831 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He890afa3b14bd52c6ea464bca4cef525(ptr %s0, ptr %l35)
  store i64 %t831, ptr %l485
  br label %bb220
bb219:
  br label %bb224
bb220:
  %t832 = load i64, ptr %l485, !tbaa !24
  store i64 %t832, ptr %l59, !tbaa !24
  store ptr %l35, ptr %l486, !tbaa !29
  %t833 = ptrtoint ptr %s0 to i64
  store i64 %t833, ptr %l487, !tbaa !24
  %t834 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t834, label %bb221, label %bb222
bb221:
  %t836 = call ptr @__olang_region_make(ptr %s0)
  %t837 = ptrtoint ptr %t836 to i64
  store i64 %t837, ptr %l487, !tbaa !24
  br label %bb222
bb222:
  %t838 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t840 = extractvalue { i64, ptr } %t838, 1
  %t841 = extractvalue { i64, ptr } %t838, 0
  %t842 = load i64, ptr %l487
  %t843 = inttoptr i64 %t842 to ptr
  %t844 = call ptr @__olang_scope_alloc(ptr %t843, i64 %t841)
  call void @olang_textcopy(ptr %t844, ptr %t840, i64 %t841)
  %t845 = insertvalue { i64, ptr } undef, i64 %t841, 0
  %t846 = insertvalue { i64, ptr } %t845, ptr %t844, 1
  %t848 = load i64, ptr %l487
  %t849 = inttoptr i64 %t848 to ptr
  %t850 = extractvalue { i64, ptr } %t846, 0
  %t851 = extractvalue { i64, ptr } %t846, 1
  %t852 = mul i64 %t850, 1
  %t853 = call ptr @__olang_scope_alloc(ptr %t849, i64 %t852)
  call void @llvm.memcpy.p0.p0.i64(ptr %t853, ptr %t851, i64 %t852, i1 false)
  %t854 = insertvalue { i64, ptr } undef, i64 %t850, 0
  %t855 = insertvalue { i64, ptr } %t854, ptr %t853, 1
  %t856 = load i64, ptr %l59, !tbaa !24
  %t857 = load ptr, ptr %l486, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %s0, ptr %s0, ptr %t857, { i64, ptr } %t855, i64 %t856)
  br label %bb223
bb223:
  br label %bb224
bb224:
  %t860 = load i64, ptr %l41, !tbaa !24
  %t861 = load i64, ptr %l59, !tbaa !24
  %t864 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t865 = load ptr, ptr %t864, !tbaa !27
  %t866 = getelementptr i64, ptr %t865, i64 %t860
  store i64 %t861, ptr %t866, !tbaa !34
  store ptr %l33, ptr %l495, !tbaa !29
  %t867 = ptrtoint ptr %s0 to i64
  store i64 %t867, ptr %l496, !tbaa !24
  %t868 = load i1, ptr @olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1
  br i1 %t868, label %bb225, label %bb226
bb225:
  %t870 = call ptr @__olang_region_make(ptr %s0)
  %t871 = ptrtoint ptr %t870 to i64
  store i64 %t871, ptr %l496, !tbaa !24
  br label %bb226
bb226:
  %t872 = load i64, ptr %l496
  %t873 = inttoptr i64 %t872 to ptr
  %t875 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s19, ptr %t873, ptr %l46)
  store { i64, ptr } %t875, ptr %l499
  br label %bb227
bb227:
  %t876 = load ptr, ptr %l495, !tbaa !29
  %t877 = load { i64, ptr }, ptr %l499, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %s0, ptr %s0, ptr %t876, { i64, ptr } %t877)
  br label %bb228
bb228:
  call void @__olang_scope_close(ptr %s19)
  br label %bb229
bb229:
  %t878 = load i64, ptr %l40, !tbaa !24
  %t880 = add i64 %t878, 1
  store i64 %t880, ptr %l40, !tbaa !24
  br label %bb131
bb230:
  %t883 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He890afa3b14bd52c6ea464bca4cef525(ptr %s0, ptr %l35)
  store i64 %t883, ptr %l503
  br label %bb231
bb231:
  %t884 = load i64, ptr %l503, !tbaa !24
  store i64 %t884, ptr %l60, !tbaa !24
  br label %bb232
bb232:
  store %olang.scope zeroinitializer, ptr %s29
  %t885 = load i64, ptr %l60, !tbaa !24
  %t886 = load i64, ptr %l32, !tbaa !24
  %t889 = icmp slt i64 %t885, %t886
  %t891 = xor i1 %t889, true
  br i1 %t891, label %bb233, label %bb234
bb233:
  call void @__olang_scope_close(ptr %s29)
  br label %bb284
bb234:
  br label %bb235
bb235:
  %t893 = load i64, ptr %l32, !tbaa !24
  store i64 %t893, ptr %l508, !tbaa !24
  %t894 = load i64, ptr %l508, !tbaa !24
  %t895 = icmp sge i64 %t894, 0
  br i1 %t895, label %bb236, label %bb237
bb236:
  %t897 = load i64, ptr %l508, !tbaa !24
  %t898 = icmp sle i64 %t897, 1152921504606846975
  br i1 %t898, label %bb238, label %bb239
bb237:
  call void @__olang_check_failed(ptr @olang_loc_80d737cc9290fb3c_d5f23604b0833618)
  unreachable
bb238:
  %t900 = load i64, ptr %l508, !tbaa !24
  %t901 = mul i64 %t900, 8
  %t902 = call ptr @__olang_scope_alloc_zeroed(ptr %s29, i64 %t901)
  %t903 = insertvalue { i64, ptr } undef, i64 %t900, 0
  %t904 = insertvalue { i64, ptr } %t903, ptr %t902, 1
  store { i64, ptr } %t904, ptr %l61, !tbaa !27
  %t906 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %s29)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t906, ptr %l512
  br label %bb240
bb239:
  call void @__olang_check_failed(ptr @olang_loc_80d737cc9290fb3c_d5f23604b0833618)
  unreachable
bb240:
  %t907 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l512
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t907, ptr %l62
  store i64 0, ptr %l63, !tbaa !24
  %t908 = load i64, ptr %l32, !tbaa !24
  store i64 %t908, ptr %l64, !tbaa !24
  store i64 1, ptr %l65, !tbaa !24
  %t910 = load i64, ptr %l64, !tbaa !24
  %t911 = load i64, ptr %l63, !tbaa !24
  %t914 = icmp sgt i64 %t910, %t911
  br i1 %t914, label %bb241, label %bb242
bb241:
  %t916 = load i64, ptr %l65, !tbaa !24
  %t918 = icmp sgt i64 %t916, 0
  br i1 %t918, label %bb243, label %bb244
bb242:
  store i64 0, ptr %l517, !tbaa !24
  br label %bb246
bb243:
  %t920 = load i64, ptr %l64, !tbaa !24
  %t921 = load i64, ptr %l63, !tbaa !24
  %t924 = sub i64 %t920, %t921
  %t925 = load i64, ptr %l65, !tbaa !24
  %t928 = add i64 %t924, %t925
  %t930 = sub i64 %t928, 1
  %t931 = load i64, ptr %l65, !tbaa !24
  %t934 = sdiv i64 %t930, %t931
  store i64 %t934, ptr %l520, !tbaa !24
  br label %bb245
bb244:
  store i64 0, ptr %l520, !tbaa !24
  br label %bb245
bb245:
  %t936 = load i64, ptr %l520, !tbaa !24
  store i64 %t936, ptr %l517, !tbaa !24
  br label %bb246
bb246:
  %t937 = load i64, ptr %l517, !tbaa !24
  store i64 %t937, ptr %l66, !tbaa !24
  store i64 0, ptr %l67, !tbaa !24
  br label %bb247
bb247:
  store %olang.scope zeroinitializer, ptr %s31
  %t938 = load i64, ptr %l67, !tbaa !24
  %t939 = load i64, ptr %l66, !tbaa !24
  %t942 = icmp slt i64 %t938, %t939
  %t944 = xor i1 %t942, true
  br i1 %t944, label %bb248, label %bb249
bb248:
  call void @__olang_scope_close(ptr %s31)
  br label %bb274
bb249:
  br label %bb250
bb250:
  %t946 = load i64, ptr %l63, !tbaa !24
  %t947 = load i64, ptr %l67, !tbaa !24
  %t948 = load i64, ptr %l65, !tbaa !24
  %t951 = mul i64 %t947, %t948
  %t954 = add i64 %t946, %t951
  store i64 %t954, ptr %l68, !tbaa !24
  %t956 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s31)
  store %"std/prelude/text:StringBuilder" %t956, ptr %l538
  br label %bb251
bb251:
  %t957 = load %"std/prelude/text:StringBuilder", ptr %l538
  store %"std/prelude/text:StringBuilder" %t957, ptr %l69
  %t958 = load i64, ptr %l68, !tbaa !24
  %t960 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t961 = load ptr, ptr %t960, !tbaa !27
  %t962 = getelementptr i64, ptr %t961, i64 %t958
  %t963 = load i64, ptr %t962, !tbaa !34
  %t965 = call i64 @__olang_fmt_i64(ptr null, i64 %t963)
  %t966 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t965)
  %t967 = call i64 @__olang_fmt_i64(ptr %t966, i64 %t963)
  %t968 = insertvalue { i64, ptr } undef, i64 %t965, 0
  %t969 = insertvalue { i64, ptr } %t968, ptr %t966, 1
  %t971 = extractvalue { i64, ptr } %t969, 0
  %t972 = extractvalue { i64, ptr } %t969, 1
  %t973 = mul i64 %t971, 1
  %t974 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t973)
  call void @llvm.memcpy.p0.p0.i64(ptr %t974, ptr %t972, i64 %t973, i1 false)
  %t975 = insertvalue { i64, ptr } undef, i64 %t971, 0
  %t976 = insertvalue { i64, ptr } %t975, ptr %t974, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s31, ptr %s31, ptr %l69, { i64, ptr } %t976)
  br label %bb252
bb252:
  %t979 = load i64, ptr %l68, !tbaa !24
  %t982 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %s0, ptr %s0, ptr %l33, i64 %t979)
  store { i64, ptr } %t982, ptr %l546
  br label %bb253
bb253:
  %t983 = load { i64, ptr }, ptr %l546, !tbaa !27
  store { i64, ptr } %t983, ptr %l70, !tbaa !27
  store i64 0, ptr %l71, !tbaa !24
  %t984 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t986 = extractvalue { i64, ptr } %t984, 0
  store i64 %t986, ptr %l72, !tbaa !24
  br label %bb254
bb254:
  store %olang.scope zeroinitializer, ptr %s34
  %t988 = load i64, ptr %l71, !tbaa !24
  %t989 = load i64, ptr %l72, !tbaa !24
  %t992 = icmp slt i64 %t988, %t989
  %t994 = xor i1 %t992, true
  br i1 %t994, label %bb255, label %bb256
bb255:
  call void @__olang_scope_close(ptr %s34)
  br label %bb260
bb256:
  br label %bb257
bb257:
  %t996 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t996, ptr %l553, !tbaa !27
  %t997 = load i64, ptr %l71, !tbaa !24
  %t999 = getelementptr { i64, ptr }, ptr %l553, i32 0, i32 1
  %t1000 = load ptr, ptr %t999, !tbaa !27
  %t1001 = getelementptr i64, ptr %t1000, i64 %t997
  %t1002 = load i64, ptr %t1001, !tbaa !34
  %t1006 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t1007 = load ptr, ptr %t1006, !tbaa !27
  %t1008 = getelementptr i64, ptr %t1007, i64 %t1002
  %t1009 = load i64, ptr %t1008, !tbaa !34
  %t1010 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t1011 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t1013 = call i64 @__olang_fmt_i64(ptr null, i64 %t1009)
  %t1014 = add i64 %t1011, %t1013
  %t1015 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1014)
  call void @olang_textcopy(ptr %t1015, ptr %t1010, i64 %t1011)
  %t1016 = getelementptr i8, ptr %t1015, i64 %t1011
  %t1017 = call i64 @__olang_fmt_i64(ptr %t1016, i64 %t1009)
  %t1018 = insertvalue { i64, ptr } undef, i64 %t1014, 0
  %t1019 = insertvalue { i64, ptr } %t1018, ptr %t1015, 1
  %t1021 = extractvalue { i64, ptr } %t1019, 0
  %t1022 = extractvalue { i64, ptr } %t1019, 1
  %t1023 = mul i64 %t1021, 1
  %t1024 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1023)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1024, ptr %t1022, i64 %t1023, i1 false)
  %t1025 = insertvalue { i64, ptr } undef, i64 %t1021, 0
  %t1026 = insertvalue { i64, ptr } %t1025, ptr %t1024, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s31, ptr %s34, ptr %l69, { i64, ptr } %t1026)
  br label %bb258
bb258:
  call void @__olang_scope_close(ptr %s34)
  br label %bb259
bb259:
  %t1029 = load i64, ptr %l71, !tbaa !24
  %t1031 = add i64 %t1029, 1
  store i64 %t1031, ptr %l71, !tbaa !24
  br label %bb254
bb260:
  %t1034 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s31, ptr %s31, ptr %l69)
  store { i64, ptr } %t1034, ptr %l564
  br label %bb261
bb261:
  %t1035 = load { i64, ptr }, ptr %l564, !tbaa !27
  store { i64, ptr } %t1035, ptr %l74, !tbaa !27
  %t1036 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t1039 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %s29, ptr %s31, ptr %l62, { i64, ptr } %t1036)
  %t1040 = extractvalue { i32, i64 } %t1039, 1
  %t1041 = extractvalue { i32, i64 } %t1039, 0
  store i32 %t1041, ptr %l569
  %t1042 = icmp ne i32 %t1041, 0
  br i1 %t1042, label %bb263, label %ok.1043, !prof !99
ok.1043:
  store i64 %t1040, ptr %l568
  br label %bb262
bb262:
  %t1044 = load i64, ptr %l568, !tbaa !24
  store i64 %t1044, ptr %l565, !tbaa !24
  br label %bb265
bb263:
  br label %bb264
bb264:
  store i64 -1, ptr %l565, !tbaa !24
  br label %bb265
bb265:
  %t1045 = load i64, ptr %l565, !tbaa !24
  store i64 %t1045, ptr %l75, !tbaa !24
  %t1046 = load i64, ptr %l75, !tbaa !24
  %t1048 = icmp slt i64 %t1046, 0
  br i1 %t1048, label %bb266, label %bb267
bb266:
  %t1051 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He890afa3b14bd52c6ea464bca4cef525(ptr %s29, ptr %l62)
  store i64 %t1051, ptr %l573
  br label %bb268
bb267:
  br label %bb272
bb268:
  %t1052 = load i64, ptr %l573, !tbaa !24
  store i64 %t1052, ptr %l75, !tbaa !24
  store ptr %l62, ptr %l574, !tbaa !29
  %t1053 = ptrtoint ptr %s29 to i64
  store i64 %t1053, ptr %l575, !tbaa !24
  %t1054 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t1054, label %bb269, label %bb270
bb269:
  %t1056 = call ptr @__olang_region_make(ptr %s29)
  %t1057 = ptrtoint ptr %t1056 to i64
  store i64 %t1057, ptr %l575, !tbaa !24
  br label %bb270
bb270:
  %t1058 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t1060 = extractvalue { i64, ptr } %t1058, 1
  %t1061 = extractvalue { i64, ptr } %t1058, 0
  %t1062 = load i64, ptr %l575
  %t1063 = inttoptr i64 %t1062 to ptr
  %t1064 = call ptr @__olang_scope_alloc(ptr %t1063, i64 %t1061)
  call void @olang_textcopy(ptr %t1064, ptr %t1060, i64 %t1061)
  %t1065 = insertvalue { i64, ptr } undef, i64 %t1061, 0
  %t1066 = insertvalue { i64, ptr } %t1065, ptr %t1064, 1
  %t1068 = load i64, ptr %l575
  %t1069 = inttoptr i64 %t1068 to ptr
  %t1070 = extractvalue { i64, ptr } %t1066, 0
  %t1071 = extractvalue { i64, ptr } %t1066, 1
  %t1072 = mul i64 %t1070, 1
  %t1073 = call ptr @__olang_scope_alloc(ptr %t1069, i64 %t1072)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1073, ptr %t1071, i64 %t1072, i1 false)
  %t1074 = insertvalue { i64, ptr } undef, i64 %t1070, 0
  %t1075 = insertvalue { i64, ptr } %t1074, ptr %t1073, 1
  %t1076 = load i64, ptr %l75, !tbaa !24
  %t1077 = load ptr, ptr %l574, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %s29, ptr %s29, ptr %t1077, { i64, ptr } %t1075, i64 %t1076)
  br label %bb271
bb271:
  br label %bb272
bb272:
  %t1080 = load i64, ptr %l68, !tbaa !24
  %t1081 = load i64, ptr %l75, !tbaa !24
  %t1084 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t1085 = load ptr, ptr %t1084, !tbaa !27
  %t1086 = getelementptr i64, ptr %t1085, i64 %t1080
  store i64 %t1081, ptr %t1086, !tbaa !34
  call void @__olang_scope_close(ptr %s31)
  br label %bb273
bb273:
  %t1087 = load i64, ptr %l67, !tbaa !24
  %t1089 = add i64 %t1087, 1
  store i64 %t1089, ptr %l67, !tbaa !24
  br label %bb247
bb274:
  %t1091 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t1091, ptr %l585, !tbaa !27
  %t1092 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1093 = extractvalue { i64, ptr } %t1092, 0
  %t1094 = load { i64, ptr }, ptr %l585, !tbaa !27
  %t1095 = extractvalue { i64, ptr } %t1094, 0
  store i64 %t1095, ptr %l587, !tbaa !24
  %t1097 = load i64, ptr %l587, !tbaa !24
  %t1098 = icmp eq i64 %t1093, %t1097
  br i1 %t1098, label %bb275, label %bb276
bb275:
  %t1100 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t1101 = load ptr, ptr %t1100, !tbaa !27
  %t1102 = getelementptr { i64, ptr }, ptr %l585, i32 0, i32 1
  %t1103 = load ptr, ptr %t1102, !tbaa !27
  %t1104 = load i64, ptr %l587, !tbaa !24
  %t1105 = mul i64 %t1104, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1101, ptr %t1103, i64 %t1105, i1 false)
  br label %bb277
bb276:
  %t1106 = load { i64, ptr }, ptr %l585, !tbaa !27
  %t1107 = extractvalue { i64, ptr } %t1106, 0
  store i64 %t1107, ptr %l589, !tbaa !24
  %t1108 = load i64, ptr %l589, !tbaa !24
  %t1109 = mul i64 %t1108, 8
  %t1110 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1109)
  %t1111 = insertvalue { i64, ptr } undef, i64 %t1108, 0
  %t1112 = insertvalue { i64, ptr } %t1111, ptr %t1110, 1
  store { i64, ptr } %t1112, ptr %l590, !tbaa !27
  %t1113 = getelementptr { i64, ptr }, ptr %l590, i32 0, i32 1
  %t1114 = load ptr, ptr %t1113, !tbaa !27
  %t1115 = getelementptr { i64, ptr }, ptr %l585, i32 0, i32 1
  %t1116 = load ptr, ptr %t1115, !tbaa !27
  %t1117 = load i64, ptr %l589, !tbaa !24
  %t1118 = mul i64 %t1117, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1114, ptr %t1116, i64 %t1118, i1 false)
  %t1119 = load { i64, ptr }, ptr %l590, !tbaa !27
  store { i64, ptr } %t1119, ptr %l34, !tbaa !27
  br label %bb277
bb277:
  %t1121 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He890afa3b14bd52c6ea464bca4cef525(ptr %s29, ptr %l62)
  store i64 %t1121, ptr %l592
  br label %bb278
bb278:
  %t1122 = load i64, ptr %l60, !tbaa !24
  %t1123 = load i64, ptr %l592, !tbaa !24
  %t1125 = icmp eq i64 %t1123, %t1122
  br i1 %t1125, label %bb279, label %bb280
bb279:
  call void @__olang_scope_close(ptr %s29)
  br label %bb284
bb280:
  br label %bb281
bb281:
  %t1128 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He890afa3b14bd52c6ea464bca4cef525(ptr %s29, ptr %l62)
  store i64 %t1128, ptr %l596
  br label %bb282
bb282:
  %t1129 = load i64, ptr %l596, !tbaa !24
  store i64 %t1129, ptr %l60, !tbaa !24
  call void @__olang_scope_close(ptr %s29)
  br label %bb283
bb283:
  br label %bb232
bb284:
  %t1130 = load i64, ptr %l60, !tbaa !24
  store i64 %t1130, ptr %l597, !tbaa !24
  %t1131 = load i64, ptr %l597, !tbaa !24
  %t1132 = icmp sge i64 %t1131, 0
  br i1 %t1132, label %bb285, label %bb286
bb285:
  %t1134 = load i64, ptr %l597, !tbaa !24
  %t1135 = icmp sle i64 %t1134, 1152921504606846975
  br i1 %t1135, label %bb287, label %bb288
bb286:
  call void @__olang_check_failed(ptr @olang_loc_50d6af1e4a9d3e1b_3bae03e7ad9fa57f)
  unreachable
bb287:
  %t1137 = load i64, ptr %l597, !tbaa !24
  %t1138 = mul i64 %t1137, 8
  %t1139 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1138)
  store i64 0, ptr %t1140
  br label %fill.1141
fill.1141:
  %t1144 = load i64, ptr %t1140
  %t1145 = icmp slt i64 %t1144, %t1137
  br i1 %t1145, label %fillb.1142, label %filld.1143
fillb.1142:
  %t1146 = getelementptr i64, ptr %t1139, i64 %t1144
  store i64 -1, ptr %t1146
  %t1147 = add i64 %t1144, 1
  store i64 %t1147, ptr %t1140
  br label %fill.1141
filld.1143:
  %t1148 = insertvalue { i64, ptr } undef, i64 %t1137, 0
  %t1149 = insertvalue { i64, ptr } %t1148, ptr %t1139, 1
  store { i64, ptr } %t1149, ptr %l76, !tbaa !27
  store i64 0, ptr %l77, !tbaa !24
  %t1151 = load i64, ptr %l32, !tbaa !24
  store i64 %t1151, ptr %l78, !tbaa !24
  store i64 1, ptr %l79, !tbaa !24
  %t1153 = load i64, ptr %l78, !tbaa !24
  %t1154 = load i64, ptr %l77, !tbaa !24
  %t1157 = icmp sgt i64 %t1153, %t1154
  br i1 %t1157, label %bb289, label %bb290
bb288:
  call void @__olang_check_failed(ptr @olang_loc_50d6af1e4a9d3e1b_3bae03e7ad9fa57f)
  unreachable
bb289:
  %t1159 = load i64, ptr %l79, !tbaa !24
  %t1161 = icmp sgt i64 %t1159, 0
  br i1 %t1161, label %bb291, label %bb292
bb290:
  store i64 0, ptr %l605, !tbaa !24
  br label %bb294
bb291:
  %t1163 = load i64, ptr %l78, !tbaa !24
  %t1164 = load i64, ptr %l77, !tbaa !24
  %t1167 = sub i64 %t1163, %t1164
  %t1168 = load i64, ptr %l79, !tbaa !24
  %t1171 = add i64 %t1167, %t1168
  %t1173 = sub i64 %t1171, 1
  %t1174 = load i64, ptr %l79, !tbaa !24
  %t1177 = sdiv i64 %t1173, %t1174
  store i64 %t1177, ptr %l608, !tbaa !24
  br label %bb293
bb292:
  store i64 0, ptr %l608, !tbaa !24
  br label %bb293
bb293:
  %t1179 = load i64, ptr %l608, !tbaa !24
  store i64 %t1179, ptr %l605, !tbaa !24
  br label %bb294
bb294:
  %t1180 = load i64, ptr %l605, !tbaa !24
  store i64 %t1180, ptr %l80, !tbaa !24
  store i64 0, ptr %l81, !tbaa !24
  br label %bb295
bb295:
  %t1181 = load i64, ptr %l81, !tbaa !24
  %t1182 = load i64, ptr %l80, !tbaa !24
  %t1185 = icmp slt i64 %t1181, %t1182
  %t1187 = xor i1 %t1185, true
  br i1 %t1187, label %bb296, label %bb297
bb296:
  br label %bb321
bb297:
  br label %bb298
bb298:
  %t1189 = load i64, ptr %l77, !tbaa !24
  %t1190 = load i64, ptr %l81, !tbaa !24
  %t1191 = load i64, ptr %l79, !tbaa !24
  %t1194 = mul i64 %t1190, %t1191
  %t1197 = add i64 %t1189, %t1194
  store i64 %t1197, ptr %l82, !tbaa !24
  %t1199 = load i64, ptr %l82, !tbaa !24
  %t1201 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t1202 = load ptr, ptr %t1201, !tbaa !27
  %t1203 = getelementptr i64, ptr %t1202, i64 %t1199
  %t1204 = load i64, ptr %t1203, !tbaa !34
  %t1206 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t1207 = load ptr, ptr %t1206, !tbaa !27
  %t1208 = getelementptr i64, ptr %t1207, i64 %t1204
  %t1209 = load i64, ptr %t1208, !tbaa !34
  store i64 %t1209, ptr %l83, !tbaa !24
  %t1211 = load i64, ptr %l83, !tbaa !24
  %t1213 = icmp slt i64 %t1211, 0
  br i1 %t1213, label %bb299, label %bb300
bb299:
  %t1215 = load i64, ptr %l82, !tbaa !24
  %t1217 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t1218 = load ptr, ptr %t1217, !tbaa !27
  %t1219 = getelementptr i64, ptr %t1218, i64 %t1215
  %t1220 = load i64, ptr %t1219, !tbaa !34
  %t1221 = load i64, ptr %l82, !tbaa !24
  %t1224 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t1225 = load ptr, ptr %t1224, !tbaa !27
  %t1226 = getelementptr i64, ptr %t1225, i64 %t1220
  store i64 %t1221, ptr %t1226, !tbaa !34
  br label %bb319
bb300:
  %t1227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1227, ptr %l634, !tbaa !29
  %t1228 = load i64, ptr %l82, !tbaa !24
  %t1231 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l22, i64 %t1228)
  store i64 %t1231, ptr %l637
  br label %bb301
bb301:
  %t1232 = load ptr, ptr %l634, !tbaa !29
  %t1233 = load i64, ptr %l637, !tbaa !24
  %t1234 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupRank(ptr %v0, ptr %t1232, i64 %t1233)
  store i64 %t1234, ptr %l638
  br label %bb302
bb302:
  %t1235 = load i64, ptr %l638, !tbaa !24
  store i64 %t1235, ptr %l84, !tbaa !24
  %t1236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1236, ptr %l639, !tbaa !29
  %t1237 = load i64, ptr %l83, !tbaa !24
  %t1240 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l22, i64 %t1237)
  store i64 %t1240, ptr %l642
  br label %bb303
bb303:
  %t1241 = load ptr, ptr %l639, !tbaa !29
  %t1242 = load i64, ptr %l642, !tbaa !24
  %t1243 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupRank(ptr %v0, ptr %t1241, i64 %t1242)
  store i64 %t1243, ptr %l643
  br label %bb304
bb304:
  %t1244 = load i64, ptr %l643, !tbaa !24
  store i64 %t1244, ptr %l85, !tbaa !24
  %t1245 = load i64, ptr %l84, !tbaa !24
  %t1246 = load i64, ptr %l85, !tbaa !24
  %t1249 = icmp slt i64 %t1245, %t1246
  br i1 %t1249, label %bb305, label %bb306
bb305:
  store i1 true, ptr %l647, !tbaa !21
  br label %bb315
bb306:
  %t1251 = load i64, ptr %l84, !tbaa !24
  %t1252 = load i64, ptr %l85, !tbaa !24
  %t1255 = icmp eq i64 %t1251, %t1252
  br i1 %t1255, label %bb307, label %bb308
bb307:
  %t1257 = load ptr, ptr %l0, !tbaa !29
  %t1259 = getelementptr %"compiler/emit:Emitter", ptr %t1257, i32 0, i32 18
  store ptr %t1259, ptr %l653, !tbaa !29
  %t1260 = load i64, ptr %l82, !tbaa !24
  %t1263 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l22, i64 %t1260)
  store i64 %t1263, ptr %l656
  br label %bb309
bb308:
  store i1 false, ptr %l651, !tbaa !21
  br label %bb314
bb309:
  %t1264 = load ptr, ptr %l653, !tbaa !29
  %t1265 = load i64, ptr %l656, !tbaa !24
  %t1266 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t1264, i64 %t1265)
  store { i64, ptr } %t1266, ptr %l657
  br label %bb310
bb310:
  %t1267 = load ptr, ptr %l0, !tbaa !29
  %t1269 = getelementptr %"compiler/emit:Emitter", ptr %t1267, i32 0, i32 18
  store ptr %t1269, ptr %l659, !tbaa !29
  %t1270 = load i64, ptr %l83, !tbaa !24
  %t1273 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l22, i64 %t1270)
  store i64 %t1273, ptr %l662
  br label %bb311
bb311:
  %t1274 = load ptr, ptr %l659, !tbaa !29
  %t1275 = load i64, ptr %l662, !tbaa !24
  %t1276 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t1274, i64 %t1275)
  store { i64, ptr } %t1276, ptr %l663
  br label %bb312
bb312:
  %t1277 = load { i64, ptr }, ptr %l657, !tbaa !27
  %t1278 = load { i64, ptr }, ptr %l663, !tbaa !27
  %t1279 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v0, { i64, ptr } %t1277, { i64, ptr } %t1278)
  store i1 %t1279, ptr %l664
  br label %bb313
bb313:
  %t1280 = load i1, ptr %l664, !tbaa !21
  store i1 %t1280, ptr %l651, !tbaa !21
  br label %bb314
bb314:
  %t1281 = load i1, ptr %l651, !tbaa !21
  store i1 %t1281, ptr %l647, !tbaa !21
  br label %bb315
bb315:
  %t1282 = load i1, ptr %l647, !tbaa !21
  br i1 %t1282, label %bb316, label %bb317
bb316:
  %t1283 = load i64, ptr %l82, !tbaa !24
  %t1285 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t1286 = load ptr, ptr %t1285, !tbaa !27
  %t1287 = getelementptr i64, ptr %t1286, i64 %t1283
  %t1288 = load i64, ptr %t1287, !tbaa !34
  %t1289 = load i64, ptr %l82, !tbaa !24
  %t1292 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t1293 = load ptr, ptr %t1292, !tbaa !27
  %t1294 = getelementptr i64, ptr %t1293, i64 %t1288
  store i64 %t1289, ptr %t1294, !tbaa !34
  br label %bb318
bb317:
  br label %bb318
bb318:
  br label %bb319
bb319:
  br label %bb320
bb320:
  %t1295 = load i64, ptr %l81, !tbaa !24
  %t1297 = add i64 %t1295, 1
  store i64 %t1297, ptr %l81, !tbaa !24
  br label %bb295
bb321:
  store i64 0, ptr %l86, !tbaa !24
  %t1299 = load i64, ptr %l32, !tbaa !24
  store i64 %t1299, ptr %l87, !tbaa !24
  store i64 1, ptr %l88, !tbaa !24
  %t1301 = load i64, ptr %l87, !tbaa !24
  %t1302 = load i64, ptr %l86, !tbaa !24
  %t1305 = icmp sgt i64 %t1301, %t1302
  br i1 %t1305, label %bb322, label %bb323
bb322:
  %t1307 = load i64, ptr %l88, !tbaa !24
  %t1309 = icmp sgt i64 %t1307, 0
  br i1 %t1309, label %bb324, label %bb325
bb323:
  store i64 0, ptr %l674, !tbaa !24
  br label %bb327
bb324:
  %t1311 = load i64, ptr %l87, !tbaa !24
  %t1312 = load i64, ptr %l86, !tbaa !24
  %t1315 = sub i64 %t1311, %t1312
  %t1316 = load i64, ptr %l88, !tbaa !24
  %t1319 = add i64 %t1315, %t1316
  %t1321 = sub i64 %t1319, 1
  %t1322 = load i64, ptr %l88, !tbaa !24
  %t1325 = sdiv i64 %t1321, %t1322
  store i64 %t1325, ptr %l677, !tbaa !24
  br label %bb326
bb325:
  store i64 0, ptr %l677, !tbaa !24
  br label %bb326
bb326:
  %t1327 = load i64, ptr %l677, !tbaa !24
  store i64 %t1327, ptr %l674, !tbaa !24
  br label %bb327
bb327:
  %t1328 = load i64, ptr %l674, !tbaa !24
  store i64 %t1328, ptr %l89, !tbaa !24
  store i64 0, ptr %l90, !tbaa !24
  br label %bb328
bb328:
  %t1329 = load i64, ptr %l90, !tbaa !24
  %t1330 = load i64, ptr %l89, !tbaa !24
  %t1333 = icmp slt i64 %t1329, %t1330
  %t1335 = xor i1 %t1333, true
  br i1 %t1335, label %bb329, label %bb330
bb329:
  br label %bb339
bb330:
  br label %bb331
bb331:
  %t1337 = load i64, ptr %l86, !tbaa !24
  %t1338 = load i64, ptr %l90, !tbaa !24
  %t1339 = load i64, ptr %l88, !tbaa !24
  %t1342 = mul i64 %t1338, %t1339
  %t1345 = add i64 %t1337, %t1342
  store i64 %t1345, ptr %l91, !tbaa !24
  %t1347 = load i64, ptr %l91, !tbaa !24
  %t1349 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t1350 = load ptr, ptr %t1349, !tbaa !27
  %t1351 = getelementptr i64, ptr %t1350, i64 %t1347
  %t1352 = load i64, ptr %t1351, !tbaa !34
  %t1354 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t1355 = load ptr, ptr %t1354, !tbaa !27
  %t1356 = getelementptr i64, ptr %t1355, i64 %t1352
  %t1357 = load i64, ptr %t1356, !tbaa !34
  store i64 %t1357, ptr %l92, !tbaa !24
  %t1359 = load i64, ptr %l92, !tbaa !24
  %t1360 = load i64, ptr %l91, !tbaa !24
  %t1363 = icmp ne i64 %t1359, %t1360
  br i1 %t1363, label %bb332, label %bb333
bb332:
  %t1365 = load ptr, ptr %l0, !tbaa !29
  %t1367 = getelementptr %"compiler/emit:Emitter", ptr %t1365, i32 0, i32 67
  store ptr %t1367, ptr %l702, !tbaa !29
  %t1368 = load i64, ptr %l91, !tbaa !24
  %t1371 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l22, i64 %t1368)
  store i64 %t1371, ptr %l705
  br label %bb334
bb333:
  br label %bb337
bb334:
  %t1372 = load i64, ptr %l92, !tbaa !24
  %t1375 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l22, i64 %t1372)
  store i64 %t1375, ptr %l708
  br label %bb335
bb335:
  %t1376 = load ptr, ptr %l702, !tbaa !29
  %t1377 = load i64, ptr %l705, !tbaa !24
  %t1378 = load i64, ptr %l708, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t1376, i64 %t1377, i64 %t1378)
  br label %bb336
bb336:
  br label %bb337
bb337:
  br label %bb338
bb338:
  %t1379 = load i64, ptr %l90, !tbaa !24
  %t1381 = add i64 %t1379, 1
  store i64 %t1381, ptr %l90, !tbaa !24
  br label %bb328
bb339:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestParts(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l30 = alloca { { i64, ptr }, { i64, ptr } }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l51 = alloca { i64, ptr }
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 12
  %t19 = load i64, ptr %t18, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t9, i64 %t19)
  store ptr %t22, ptr %l12
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l12, !tbaa !29
  store ptr %t23, ptr %l2, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/load:Module", ptr %t24, i32 0, i32 8
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l14, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/lower:Lowerer", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t34, i64 %a1)
  store ptr %t39, ptr %l20
  br label %bb2
bb2:
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Body", ptr %t40, i32 0, i32 4
  %t43 = load %"compiler/source:Span", ptr %t42
  %t44 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t46 = call ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v0, { i64, ptr } %t44, %"compiler/source:Span" %t43)
  store ptr %t46, ptr %l23
  br label %bb3
bb3:
  %t47 = load ptr, ptr %l23, !tbaa !29
  store ptr %t47, ptr %l3, !tbaa !29
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  br i1 %t50, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t55 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t52, 0
  %t57 = insertvalue { { i64, ptr }, { i64, ptr } } %t55, { i64, ptr } %t53, 1
  store { { i64, ptr }, { i64, ptr } } %t57, ptr %l30
  %t58 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l30, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l31, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  store i64 %t61, ptr %l32, !tbaa !24
  %t62 = load i64, ptr %l32, !tbaa !24
  %t63 = mul i64 %t62, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t63)
  %t65 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  store { i64, ptr } %t66, ptr %l33, !tbaa !27
  %t67 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = load i64, ptr %l32, !tbaa !24
  %t72 = mul i64 %t71, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t68, ptr %t70, i64 %t72, i1 false)
  %t73 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t74 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l30, i32 0, i32 0
  store { i64, ptr } %t73, ptr %t74, !tbaa !27
  %t75 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l30, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l34, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  store i64 %t78, ptr %l35, !tbaa !24
  %t79 = load i64, ptr %l35, !tbaa !24
  %t80 = mul i64 %t79, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t80)
  %t82 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  store { i64, ptr } %t83, ptr %l36, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = load i64, ptr %l35, !tbaa !24
  %t89 = mul i64 %t88, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t85, ptr %t87, i64 %t89, i1 false)
  %t90 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t91 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l30, i32 0, i32 1
  store { i64, ptr } %t90, ptr %t91, !tbaa !27
  %t92 = load { { i64, ptr }, { i64, ptr } }, ptr %l30
  store { { i64, ptr }, { i64, ptr } } %t92, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/emit:Emitter", ptr %t94, i32 0, i32 0
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/load:Loader", ptr %t100, i32 0, i32 3
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t106 = call { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v0, ptr %v1, ptr %t93, ptr %t103)
  store { i64, ptr } %t106, ptr %l42
  br label %bb7
bb7:
  %t107 = load ptr, ptr %l3, !tbaa !29
  store ptr %t107, ptr %l43, !tbaa !29
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t110 = getelementptr %"compiler/load:Module", ptr %t108, i32 0, i32 6
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  br i1 %t113, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_cc429a944aa711b1_fe28fb9b816eebdd)
  unreachable
bb9:
  br label %bb10
bb10:
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t117 = getelementptr %"compiler/load:Module", ptr %t115, i32 0, i32 6
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t121 = getelementptr %"compiler/source:Source", ptr %t118, i32 0, i32 1
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  %t123 = load ptr, ptr %l43, !tbaa !29
  %t125 = call { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v0, ptr %v1, ptr %t123, { i64, ptr } %t122)
  store { i64, ptr } %t125, ptr %l51
  br label %bb11
bb11:
  %t126 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t127 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t126, 0
  %t128 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t129 = insertvalue { { i64, ptr }, { i64, ptr } } %t127, { i64, ptr } %t128, 1
  store { { i64, ptr }, { i64, ptr } } %t129, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l13 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 14
  %t4 = load { i64, [2 x i64] }, ptr %l1
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t3, { i64, [2 x i64] } %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i64, ptr %l7, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/emit:Emitter", ptr %t18, i32 0, i32 13
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l13
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t23 = load i64, ptr %l13, !tbaa !24
  store i64 %t23, ptr %l2, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/emit:Emitter", ptr %t24, i32 0, i32 14
  %t27 = load { i64, [2 x i64] }, ptr %l1
  %t28 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eP_H79a97b7337c7adf08bdd37311af7e171(ptr %v0, ptr %t26, { i64, [2 x i64] } %t27, i64 %t28)
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/emit:Emitter", ptr %t32, i32 0, i32 13
  %t35 = load { i64, [2 x i64] }, ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t34, { i64, [2 x i64] } %t35)
  br label %bb9
bb9:
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, %"compiler/mir:Task" %a3, i32 %a4, i64 %a5, i64 %a6, { i64, ptr } %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/mir:Task"
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca %"compiler/mir:TaskClause"
  %l19 = alloca { i64, ptr }
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca %"compiler/typed:Item"
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %l31 = alloca %"std/prelude/text:StringBuilder"
  %l32 = alloca i32
  %l33 = alloca i1
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l48 = alloca i32
  %l54 = alloca i32
  %l57 = alloca i32
  %l83 = alloca %"compiler/mir:TaskClause"
  %l84 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l86 = alloca [4 x i8]
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca i64
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %l102 = alloca i32
  %l105 = alloca i32
  %l131 = alloca %"compiler/typed:Item"
  %l135 = alloca i64
  %l165 = alloca { i64, ptr }
  %l167 = alloca i64
  %l185 = alloca { i64, ptr }
  %l187 = alloca i1
  %l207 = alloca i32
  %l222 = alloca %"std/prelude/text:StringBuilder"
  %l229 = alloca i32
  %l233 = alloca i1
  %l237 = alloca i1
  %l240 = alloca i1
  %l242 = alloca ptr
  %l243 = alloca i32
  %l246 = alloca { i64, ptr }
  %l257 = alloca i64
  %l261 = alloca i64
  %l264 = alloca i64
  %l298 = alloca { i64, ptr }
  %l299 = alloca { i64, ptr }
  %l300 = alloca { i64, ptr }
  %l301 = alloca i64
  %l302 = alloca { i64, ptr }
  %l304 = alloca i1
  %l305 = alloca ptr
  %l306 = alloca i32
  %l308 = alloca { i64, ptr }
  %l311 = alloca ptr
  %l312 = alloca i32
  %l313 = alloca { i64, ptr }
  %l314 = alloca i32
  %l316 = alloca { i64, ptr }
  %l320 = alloca { i64, ptr }
  %l322 = alloca i64
  %l325 = alloca ptr
  %l326 = alloca i32
  %l329 = alloca { i64, ptr }
  %l334 = alloca { i64, ptr }
  %l336 = alloca i64
  %l339 = alloca i1
  %l341 = alloca i1
  %l346 = alloca ptr
  %l347 = alloca i32
  %l348 = alloca i64
  %l351 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %t851 = alloca { i64, [4 x i64] }, align 8
  %t854 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store %"compiler/mir:Task" %a3, ptr %l3
  store i64 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l8, !tbaa !29
  %t6 = load ptr, ptr %l8, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 3
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t11, i32 %a4)
  store i32 %t15, ptr %l48
  br label %bb1
bb1:
  %t16 = load i32, ptr %l48, !tbaa !23
  store i32 %t16, ptr %l10, !tbaa !23
  store i64 %a5, ptr %l11, !tbaa !24
  store i32 0, ptr %l12, !tbaa !23
  %t19 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 4
  %t20 = getelementptr %"compiler/mir:Range", ptr %t19, i32 0, i32 1
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %l13, !tbaa !23
  store i32 1, ptr %l14, !tbaa !23
  %t23 = load i32, ptr %l13, !tbaa !23
  %t24 = load i32, ptr %l12, !tbaa !23
  %t27 = icmp sgt i32 %t23, %t24
  br i1 %t27, label %bb2, label %bb3
bb2:
  %t29 = load i32, ptr %l14, !tbaa !23
  %t31 = icmp sgt i32 %t29, 0
  br i1 %t31, label %bb4, label %bb5
bb3:
  store i32 0, ptr %l54, !tbaa !23
  br label %bb7
bb4:
  %t33 = load i32, ptr %l13, !tbaa !23
  %t34 = load i32, ptr %l12, !tbaa !23
  %t37 = sub i32 %t33, %t34
  %t38 = load i32, ptr %l14, !tbaa !23
  %t41 = add i32 %t37, %t38
  %t43 = sub i32 %t41, 1
  %t44 = load i32, ptr %l14, !tbaa !23
  %t47 = sdiv i32 %t43, %t44
  store i32 %t47, ptr %l57, !tbaa !23
  br label %bb6
bb5:
  store i32 0, ptr %l57, !tbaa !23
  br label %bb6
bb6:
  %t49 = load i32, ptr %l57, !tbaa !23
  store i32 %t49, ptr %l54, !tbaa !23
  br label %bb7
bb7:
  %t50 = load i32, ptr %l54, !tbaa !23
  store i32 %t50, ptr %l15, !tbaa !23
  store i32 0, ptr %l16, !tbaa !23
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t51 = load i32, ptr %l16, !tbaa !23
  %t52 = load i32, ptr %l15, !tbaa !23
  %t55 = icmp slt i32 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb126
bb10:
  br label %bb11
bb11:
  %t59 = load i32, ptr %l12, !tbaa !23
  %t60 = load i32, ptr %l16, !tbaa !23
  %t61 = load i32, ptr %l14, !tbaa !23
  %t64 = mul i32 %t60, %t61
  %t67 = add i32 %t59, %t64
  store i32 %t67, ptr %l17, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/emit:fnEm", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/mir:Fn", ptr %t72, i32 0, i32 17
  %t75 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 4
  %t76 = getelementptr %"compiler/mir:Range", ptr %t75, i32 0, i32 0
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  %t80 = load i32, ptr %l17, !tbaa !23
  %t82 = sext i32 %t80 to i64
  %t85 = add i64 %t79, %t82
  %t88 = call %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %t74, i64 %t85)
  store %"compiler/mir:TaskClause" %t88, ptr %l83
  br label %bb12
bb12:
  %t89 = load %"compiler/mir:TaskClause", ptr %l83
  store %"compiler/mir:TaskClause" %t89, ptr %l18
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t90, ptr %l85, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = mul i64 4, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l86, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 4, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %l86, 1
  store { i64, ptr } %t96, ptr %l19, !tbaa !27
  %t98 = getelementptr %"compiler/mir:TaskClause", ptr %l18, i32 0, i32 1
  %t99 = load i1, ptr %t98, !tbaa !21
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l91, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t103, ptr %l92, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  %t106 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  store i64 %t107, ptr %l94, !tbaa !24
  %t109 = load i64, ptr %l94, !tbaa !24
  %t110 = icmp eq i64 %t105, %t109
  br i1 %t110, label %bb15, label %bb16
bb14:
  br label %bb41
bb15:
  %t112 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = load i64, ptr %l94, !tbaa !24
  %t117 = mul i64 %t116, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t113, ptr %t115, i64 %t117, i1 false)
  br label %bb17
bb16:
  %t118 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  store i64 %t119, ptr %l96, !tbaa !24
  %t120 = load i64, ptr %l96, !tbaa !24
  %t121 = mul i64 %t120, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t121)
  %t123 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  store { i64, ptr } %t124, ptr %l97, !tbaa !27
  %t125 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = load i64, ptr %l96, !tbaa !24
  %t130 = mul i64 %t129, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t126, ptr %t128, i64 %t130, i1 false)
  %t131 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t131, ptr %l19, !tbaa !27
  br label %bb17
bb17:
  store i32 0, ptr %l20, !tbaa !23
  %t132 = getelementptr %"compiler/mir:TaskClause", ptr %l18, i32 0, i32 0
  %t133 = getelementptr %"compiler/mir:Range", ptr %t132, i32 0, i32 1
  %t134 = load i32, ptr %t133, !tbaa !23
  store i32 %t134, ptr %l21, !tbaa !23
  store i32 1, ptr %l22, !tbaa !23
  %t136 = load i32, ptr %l21, !tbaa !23
  %t137 = load i32, ptr %l20, !tbaa !23
  %t140 = icmp sgt i32 %t136, %t137
  br i1 %t140, label %bb18, label %bb19
bb18:
  %t142 = load i32, ptr %l22, !tbaa !23
  %t144 = icmp sgt i32 %t142, 0
  br i1 %t144, label %bb20, label %bb21
bb19:
  store i32 0, ptr %l102, !tbaa !23
  br label %bb23
bb20:
  %t146 = load i32, ptr %l21, !tbaa !23
  %t147 = load i32, ptr %l20, !tbaa !23
  %t150 = sub i32 %t146, %t147
  %t151 = load i32, ptr %l22, !tbaa !23
  %t154 = add i32 %t150, %t151
  %t156 = sub i32 %t154, 1
  %t157 = load i32, ptr %l22, !tbaa !23
  %t160 = sdiv i32 %t156, %t157
  store i32 %t160, ptr %l105, !tbaa !23
  br label %bb22
bb21:
  store i32 0, ptr %l105, !tbaa !23
  br label %bb22
bb22:
  %t162 = load i32, ptr %l105, !tbaa !23
  store i32 %t162, ptr %l102, !tbaa !23
  br label %bb23
bb23:
  %t163 = load i32, ptr %l102, !tbaa !23
  store i32 %t163, ptr %l23, !tbaa !23
  store i32 0, ptr %l24, !tbaa !23
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t164 = load i32, ptr %l24, !tbaa !23
  %t165 = load i32, ptr %l23, !tbaa !23
  %t168 = icmp slt i32 %t164, %t165
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb40
bb26:
  br label %bb27
bb27:
  %t172 = load i32, ptr %l20, !tbaa !23
  %t173 = load i32, ptr %l24, !tbaa !23
  %t174 = load i32, ptr %l22, !tbaa !23
  %t177 = mul i32 %t173, %t174
  %t180 = add i32 %t172, %t177
  store i32 %t180, ptr %l25, !tbaa !23
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/emit:fnEm", ptr %t182, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !29
  %t187 = getelementptr %"compiler/mir:Fn", ptr %t185, i32 0, i32 18
  %t188 = getelementptr %"compiler/mir:TaskClause", ptr %l18, i32 0, i32 0
  %t189 = getelementptr %"compiler/mir:Range", ptr %t188, i32 0, i32 0
  %t190 = load i32, ptr %t189, !tbaa !23
  %t192 = sext i32 %t190 to i64
  %t193 = load i32, ptr %l25, !tbaa !23
  %t195 = sext i32 %t193 to i64
  %t198 = add i64 %t192, %t195
  %t201 = call %"compiler/typed:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eAt_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %t187, i64 %t198)
  store %"compiler/typed:Item" %t201, ptr %l131
  br label %bb28
bb28:
  %t202 = load %"compiler/typed:Item", ptr %l131
  store %"compiler/typed:Item" %t202, ptr %l26
  %t203 = load ptr, ptr %l8, !tbaa !29
  %t204 = load i32, ptr %l10, !tbaa !23
  %t205 = getelementptr %"compiler/typed:Item", ptr %l26, i32 0, i32 0
  %t206 = load i32, ptr %t205, !tbaa !23
  %t210 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eposition(ptr %v0, ptr %t203, i32 %t204, i32 %t206)
  store i64 %t210, ptr %l135
  br label %bb29
bb29:
  %t211 = load i64, ptr %l135, !tbaa !24
  store i64 %t211, ptr %l27, !tbaa !24
  %t212 = load i32, ptr %l17, !tbaa !23
  %t213 = load i32, ptr %l25, !tbaa !23
  %t214 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t215 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t217 = sext i32 %t212 to i64
  %t218 = call i64 @__olang_fmt_i64(ptr null, i64 %t217)
  %t219 = add i64 %t215, %t218
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t222 = add i64 %t219, %t221
  %t224 = sext i32 %t213 to i64
  %t225 = call i64 @__olang_fmt_i64(ptr null, i64 %t224)
  %t226 = add i64 %t222, %t225
  %t227 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t226)
  call void @olang_textcopy(ptr %t227, ptr %t214, i64 %t215)
  %t228 = getelementptr i8, ptr %t227, i64 %t215
  %t229 = call i64 @__olang_fmt_i64(ptr %t228, i64 %t217)
  %t230 = getelementptr i8, ptr %t228, i64 %t218
  call void @olang_textcopy(ptr %t230, ptr %t220, i64 %t221)
  %t231 = getelementptr i8, ptr %t230, i64 %t221
  %t232 = call i64 @__olang_fmt_i64(ptr %t231, i64 %t224)
  %t233 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t234 = insertvalue { i64, ptr } %t233, ptr %t227, 1
  store { i64, ptr } %t234, ptr %l28, !tbaa !27
  %t236 = getelementptr %"compiler/typed:Item", ptr %l26, i32 0, i32 1
  %t237 = load i64, ptr %t236, !tbaa !24
  %t239 = icmp slt i64 %t237, 0
  br i1 %t239, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s7
  %t241 = load ptr, ptr %l1, !tbaa !29
  %t242 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t243 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t244 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t245 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t246 = load i64, ptr %l27, !tbaa !24
  %t247 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t248 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t250 = extractvalue { i64, ptr } %t242, 1
  %t251 = extractvalue { i64, ptr } %t242, 0
  %t252 = add i64 %t248, %t251
  %t253 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t255 = add i64 %t252, %t254
  %t257 = extractvalue { i64, ptr } %t243, 1
  %t258 = extractvalue { i64, ptr } %t243, 0
  %t259 = add i64 %t255, %t258
  %t260 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t262 = add i64 %t259, %t261
  %t264 = extractvalue { i64, ptr } %t244, 1
  %t265 = extractvalue { i64, ptr } %t244, 0
  %t266 = add i64 %t262, %t265
  %t267 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t268 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t269 = add i64 %t266, %t268
  %t271 = extractvalue { i64, ptr } %t245, 1
  %t272 = extractvalue { i64, ptr } %t245, 0
  %t273 = add i64 %t269, %t272
  %t274 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t276 = add i64 %t273, %t275
  %t278 = call i64 @__olang_fmt_i64(ptr null, i64 %t246)
  %t279 = add i64 %t276, %t278
  %t280 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t282 = add i64 %t279, %t281
  %t283 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t282)
  call void @olang_textcopy(ptr %t283, ptr %t247, i64 %t248)
  %t284 = getelementptr i8, ptr %t283, i64 %t248
  call void @olang_textcopy(ptr %t284, ptr %t250, i64 %t251)
  %t285 = getelementptr i8, ptr %t284, i64 %t251
  call void @olang_textcopy(ptr %t285, ptr %t253, i64 %t254)
  %t286 = getelementptr i8, ptr %t285, i64 %t254
  call void @olang_textcopy(ptr %t286, ptr %t257, i64 %t258)
  %t287 = getelementptr i8, ptr %t286, i64 %t258
  call void @olang_textcopy(ptr %t287, ptr %t260, i64 %t261)
  %t288 = getelementptr i8, ptr %t287, i64 %t261
  call void @olang_textcopy(ptr %t288, ptr %t264, i64 %t265)
  %t289 = getelementptr i8, ptr %t288, i64 %t265
  call void @olang_textcopy(ptr %t289, ptr %t267, i64 %t268)
  %t290 = getelementptr i8, ptr %t289, i64 %t268
  call void @olang_textcopy(ptr %t290, ptr %t271, i64 %t272)
  %t291 = getelementptr i8, ptr %t290, i64 %t272
  call void @olang_textcopy(ptr %t291, ptr %t274, i64 %t275)
  %t292 = getelementptr i8, ptr %t291, i64 %t275
  %t293 = call i64 @__olang_fmt_i64(ptr %t292, i64 %t246)
  %t294 = getelementptr i8, ptr %t292, i64 %t278
  call void @olang_textcopy(ptr %t294, ptr %t280, i64 %t281)
  %t295 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t296 = insertvalue { i64, ptr } %t295, ptr %t283, 1
  %t298 = extractvalue { i64, ptr } %t296, 0
  %t299 = extractvalue { i64, ptr } %t296, 1
  %t300 = mul i64 %t298, 1
  %t301 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t300)
  call void @llvm.memcpy.p0.p0.i64(ptr %t301, ptr %t299, i64 %t300, i1 false)
  %t302 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s7, ptr %t241, { i64, ptr } %t303)
  br label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s9
  %t306 = load ptr, ptr %l1, !tbaa !29
  %t307 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t308 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t309 = load i64, ptr %l27, !tbaa !24
  %t311 = shl i64 %t309, 16
  %t312 = getelementptr %"compiler/typed:Item", ptr %l26, i32 0, i32 1
  %t313 = load i64, ptr %t312, !tbaa !24
  %t316 = or i64 %t311, %t313
  %t317 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t318 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t320 = extractvalue { i64, ptr } %t307, 1
  %t321 = extractvalue { i64, ptr } %t307, 0
  %t322 = add i64 %t318, %t321
  %t323 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t325 = add i64 %t322, %t324
  %t327 = extractvalue { i64, ptr } %t308, 1
  %t328 = extractvalue { i64, ptr } %t308, 0
  %t329 = add i64 %t325, %t328
  %t330 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t331 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t332 = add i64 %t329, %t331
  %t334 = call i64 @__olang_fmt_i64(ptr null, i64 %t316)
  %t335 = add i64 %t332, %t334
  %t336 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t337 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t338 = add i64 %t335, %t337
  %t339 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t338)
  call void @olang_textcopy(ptr %t339, ptr %t317, i64 %t318)
  %t340 = getelementptr i8, ptr %t339, i64 %t318
  call void @olang_textcopy(ptr %t340, ptr %t320, i64 %t321)
  %t341 = getelementptr i8, ptr %t340, i64 %t321
  call void @olang_textcopy(ptr %t341, ptr %t323, i64 %t324)
  %t342 = getelementptr i8, ptr %t341, i64 %t324
  call void @olang_textcopy(ptr %t342, ptr %t327, i64 %t328)
  %t343 = getelementptr i8, ptr %t342, i64 %t328
  call void @olang_textcopy(ptr %t343, ptr %t330, i64 %t331)
  %t344 = getelementptr i8, ptr %t343, i64 %t331
  %t345 = call i64 @__olang_fmt_i64(ptr %t344, i64 %t316)
  %t346 = getelementptr i8, ptr %t344, i64 %t334
  call void @olang_textcopy(ptr %t346, ptr %t336, i64 %t337)
  %t347 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t339, 1
  %t350 = extractvalue { i64, ptr } %t348, 0
  %t351 = extractvalue { i64, ptr } %t348, 1
  %t352 = mul i64 %t350, 1
  %t353 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t352)
  call void @llvm.memcpy.p0.p0.i64(ptr %t353, ptr %t351, i64 %t352, i1 false)
  %t354 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s9, ptr %t306, { i64, ptr } %t355)
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s7)
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s9)
  br label %bb34
bb34:
  %t358 = load ptr, ptr %l1, !tbaa !29
  %t359 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t360 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t361 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t362 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t365 = extractvalue { i64, ptr } %t359, 1
  %t366 = extractvalue { i64, ptr } %t359, 0
  %t367 = add i64 %t363, %t366
  %t368 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t369 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t370 = add i64 %t367, %t369
  %t372 = extractvalue { i64, ptr } %t360, 1
  %t373 = extractvalue { i64, ptr } %t360, 0
  %t374 = add i64 %t370, %t373
  %t375 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t376 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t377 = add i64 %t374, %t376
  %t379 = extractvalue { i64, ptr } %t361, 1
  %t380 = extractvalue { i64, ptr } %t361, 0
  %t381 = add i64 %t377, %t380
  %t382 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t383 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t384 = add i64 %t381, %t383
  %t385 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t384)
  call void @olang_textcopy(ptr %t385, ptr %t362, i64 %t363)
  %t386 = getelementptr i8, ptr %t385, i64 %t363
  call void @olang_textcopy(ptr %t386, ptr %t365, i64 %t366)
  %t387 = getelementptr i8, ptr %t386, i64 %t366
  call void @olang_textcopy(ptr %t387, ptr %t368, i64 %t369)
  %t388 = getelementptr i8, ptr %t387, i64 %t369
  call void @olang_textcopy(ptr %t388, ptr %t372, i64 %t373)
  %t389 = getelementptr i8, ptr %t388, i64 %t373
  call void @olang_textcopy(ptr %t389, ptr %t375, i64 %t376)
  %t390 = getelementptr i8, ptr %t389, i64 %t376
  call void @olang_textcopy(ptr %t390, ptr %t379, i64 %t380)
  %t391 = getelementptr i8, ptr %t390, i64 %t380
  call void @olang_textcopy(ptr %t391, ptr %t382, i64 %t383)
  %t392 = insertvalue { i64, ptr } undef, i64 %t384, 0
  %t393 = insertvalue { i64, ptr } %t392, ptr %t385, 1
  %t395 = extractvalue { i64, ptr } %t393, 0
  %t396 = extractvalue { i64, ptr } %t393, 1
  %t397 = mul i64 %t395, 1
  %t398 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t397)
  call void @llvm.memcpy.p0.p0.i64(ptr %t398, ptr %t396, i64 %t397, i1 false)
  %t399 = insertvalue { i64, ptr } undef, i64 %t395, 0
  %t400 = insertvalue { i64, ptr } %t399, ptr %t398, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s5, ptr %t358, { i64, ptr } %t400)
  br label %bb35
bb35:
  %t403 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t403, 1
  %t406 = extractvalue { i64, ptr } %t403, 0
  %t407 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t408 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t409 = add i64 %t406, %t408
  %t410 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t409)
  call void @olang_textcopy(ptr %t410, ptr %t405, i64 %t406)
  %t411 = getelementptr i8, ptr %t410, i64 %t406
  call void @olang_textcopy(ptr %t411, ptr %t407, i64 %t408)
  %t412 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t410, 1
  store { i64, ptr } %t413, ptr %l165, !tbaa !27
  %t414 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t414, 0
  %t416 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t417 = extractvalue { i64, ptr } %t416, 0
  store i64 %t417, ptr %l167, !tbaa !24
  %t419 = load i64, ptr %l167, !tbaa !24
  %t420 = icmp eq i64 %t415, %t419
  br i1 %t420, label %bb36, label %bb37
bb36:
  %t422 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t423 = load ptr, ptr %t422, !tbaa !27
  %t424 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t425 = load ptr, ptr %t424, !tbaa !27
  %t426 = load i64, ptr %l167, !tbaa !24
  %t427 = mul i64 %t426, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t423, ptr %t425, i64 %t427, i1 false)
  br label %bb38
bb37:
  %t428 = load { i64, ptr }, ptr %l165, !tbaa !27
  store { i64, ptr } %t428, ptr %l19, !tbaa !27
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s5)
  br label %bb39
bb39:
  %t429 = load i32, ptr %l24, !tbaa !23
  %t431 = add i32 %t429, 1
  store i32 %t431, ptr %l24, !tbaa !23
  br label %bb24
bb40:
  br label %bb41
bb41:
  %t433 = load ptr, ptr %l1, !tbaa !29
  %t434 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t435 = load i32, ptr %l17, !tbaa !23
  %t436 = load i32, ptr %l17, !tbaa !23
  %t437 = load i32, ptr %l17, !tbaa !23
  %t438 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t439 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t441 = extractvalue { i64, ptr } %t434, 1
  %t442 = extractvalue { i64, ptr } %t434, 0
  %t443 = add i64 %t439, %t442
  %t444 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t445 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t446 = add i64 %t443, %t445
  %t448 = sext i32 %t435 to i64
  %t449 = call i64 @__olang_fmt_i64(ptr null, i64 %t448)
  %t450 = add i64 %t446, %t449
  %t451 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t452 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t453 = add i64 %t450, %t452
  %t455 = sext i32 %t436 to i64
  %t456 = call i64 @__olang_fmt_i64(ptr null, i64 %t455)
  %t457 = add i64 %t453, %t456
  %t458 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t459 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t460 = add i64 %t457, %t459
  %t462 = sext i32 %t437 to i64
  %t463 = call i64 @__olang_fmt_i64(ptr null, i64 %t462)
  %t464 = add i64 %t460, %t463
  %t465 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t466 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t467 = add i64 %t464, %t466
  %t468 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t467)
  call void @olang_textcopy(ptr %t468, ptr %t438, i64 %t439)
  %t469 = getelementptr i8, ptr %t468, i64 %t439
  call void @olang_textcopy(ptr %t469, ptr %t441, i64 %t442)
  %t470 = getelementptr i8, ptr %t469, i64 %t442
  call void @olang_textcopy(ptr %t470, ptr %t444, i64 %t445)
  %t471 = getelementptr i8, ptr %t470, i64 %t445
  %t472 = call i64 @__olang_fmt_i64(ptr %t471, i64 %t448)
  %t473 = getelementptr i8, ptr %t471, i64 %t449
  call void @olang_textcopy(ptr %t473, ptr %t451, i64 %t452)
  %t474 = getelementptr i8, ptr %t473, i64 %t452
  %t475 = call i64 @__olang_fmt_i64(ptr %t474, i64 %t455)
  %t476 = getelementptr i8, ptr %t474, i64 %t456
  call void @olang_textcopy(ptr %t476, ptr %t458, i64 %t459)
  %t477 = getelementptr i8, ptr %t476, i64 %t459
  %t478 = call i64 @__olang_fmt_i64(ptr %t477, i64 %t462)
  %t479 = getelementptr i8, ptr %t477, i64 %t463
  call void @olang_textcopy(ptr %t479, ptr %t465, i64 %t466)
  %t480 = insertvalue { i64, ptr } undef, i64 %t467, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t468, 1
  %t483 = extractvalue { i64, ptr } %t481, 0
  %t484 = extractvalue { i64, ptr } %t481, 1
  %t485 = mul i64 %t483, 1
  %t486 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t485)
  call void @llvm.memcpy.p0.p0.i64(ptr %t486, ptr %t484, i64 %t485, i1 false)
  %t487 = insertvalue { i64, ptr } undef, i64 %t483, 0
  %t488 = insertvalue { i64, ptr } %t487, ptr %t486, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t433, { i64, ptr } %t488)
  br label %bb42
bb42:
  %t491 = load ptr, ptr %l8, !tbaa !29
  %t492 = load ptr, ptr %l1, !tbaa !29
  %t493 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t494 = load i32, ptr %l10, !tbaa !23
  %t495 = load i32, ptr %l17, !tbaa !23
  %t496 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t497 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t499 = sext i32 %t495 to i64
  %t500 = call i64 @__olang_fmt_i64(ptr null, i64 %t499)
  %t501 = add i64 %t497, %t500
  %t502 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t501)
  call void @olang_textcopy(ptr %t502, ptr %t496, i64 %t497)
  %t503 = getelementptr i8, ptr %t502, i64 %t497
  %t504 = call i64 @__olang_fmt_i64(ptr %t503, i64 %t499)
  %t505 = insertvalue { i64, ptr } undef, i64 %t501, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr %t502, 1
  %t508 = extractvalue { i64, ptr } %t506, 0
  %t509 = extractvalue { i64, ptr } %t506, 1
  %t510 = mul i64 %t508, 1
  %t511 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t510)
  call void @llvm.memcpy.p0.p0.i64(ptr %t511, ptr %t509, i64 %t510, i1 false)
  %t512 = insertvalue { i64, ptr } undef, i64 %t508, 0
  %t513 = insertvalue { i64, ptr } %t512, ptr %t511, 1
  %t519 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecarriesText(ptr %v0, ptr %v1, ptr %v2, ptr %s2, ptr %s2, ptr %t491, ptr %t492, { i64, ptr } %t493, i32 %t494, { i64, ptr } %t513)
  store { i64, ptr } %t519, ptr %l185
  br label %bb43
bb43:
  %t520 = load { i64, ptr }, ptr %l185, !tbaa !27
  store { i64, ptr } %t520, ptr %l29, !tbaa !27
  %t521 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t523 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t521, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t523, ptr %l187
  br label %bb44
bb44:
  %t524 = load i1, ptr %l187, !tbaa !21
  %t525 = xor i1 %t524, true
  br i1 %t525, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s16
  %t527 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s16, ptr %t527, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d56, i32 0, i32 1) })
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t529 = load ptr, ptr %l1, !tbaa !29
  %t530 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t531 = load i32, ptr %l17, !tbaa !23
  %t532 = load i32, ptr %l17, !tbaa !23
  %t533 = load i32, ptr %l17, !tbaa !23
  %t534 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t535 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t537 = extractvalue { i64, ptr } %t530, 1
  %t538 = extractvalue { i64, ptr } %t530, 0
  %t539 = add i64 %t535, %t538
  %t540 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t541 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t542 = add i64 %t539, %t541
  %t544 = sext i32 %t531 to i64
  %t545 = call i64 @__olang_fmt_i64(ptr null, i64 %t544)
  %t546 = add i64 %t542, %t545
  %t547 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t548 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t549 = add i64 %t546, %t548
  %t551 = sext i32 %t532 to i64
  %t552 = call i64 @__olang_fmt_i64(ptr null, i64 %t551)
  %t553 = add i64 %t549, %t552
  %t554 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t555 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t556 = add i64 %t553, %t555
  %t558 = sext i32 %t533 to i64
  %t559 = call i64 @__olang_fmt_i64(ptr null, i64 %t558)
  %t560 = add i64 %t556, %t559
  %t561 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t562 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t563 = add i64 %t560, %t562
  %t564 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t563)
  call void @olang_textcopy(ptr %t564, ptr %t534, i64 %t535)
  %t565 = getelementptr i8, ptr %t564, i64 %t535
  call void @olang_textcopy(ptr %t565, ptr %t537, i64 %t538)
  %t566 = getelementptr i8, ptr %t565, i64 %t538
  call void @olang_textcopy(ptr %t566, ptr %t540, i64 %t541)
  %t567 = getelementptr i8, ptr %t566, i64 %t541
  %t568 = call i64 @__olang_fmt_i64(ptr %t567, i64 %t544)
  %t569 = getelementptr i8, ptr %t567, i64 %t545
  call void @olang_textcopy(ptr %t569, ptr %t547, i64 %t548)
  %t570 = getelementptr i8, ptr %t569, i64 %t548
  %t571 = call i64 @__olang_fmt_i64(ptr %t570, i64 %t551)
  %t572 = getelementptr i8, ptr %t570, i64 %t552
  call void @olang_textcopy(ptr %t572, ptr %t554, i64 %t555)
  %t573 = getelementptr i8, ptr %t572, i64 %t555
  %t574 = call i64 @__olang_fmt_i64(ptr %t573, i64 %t558)
  %t575 = getelementptr i8, ptr %t573, i64 %t559
  call void @olang_textcopy(ptr %t575, ptr %t561, i64 %t562)
  %t576 = insertvalue { i64, ptr } undef, i64 %t563, 0
  %t577 = insertvalue { i64, ptr } %t576, ptr %t564, 1
  %t579 = extractvalue { i64, ptr } %t577, 0
  %t580 = extractvalue { i64, ptr } %t577, 1
  %t581 = mul i64 %t579, 1
  %t582 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t581)
  call void @llvm.memcpy.p0.p0.i64(ptr %t582, ptr %t580, i64 %t581, i1 false)
  %t583 = insertvalue { i64, ptr } undef, i64 %t579, 0
  %t584 = insertvalue { i64, ptr } %t583, ptr %t582, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s16, ptr %t529, { i64, ptr } %t584)
  br label %bb48
bb48:
  %t587 = load ptr, ptr %l1, !tbaa !29
  %t588 = load i32, ptr %l17, !tbaa !23
  %t589 = load i32, ptr %l17, !tbaa !23
  %t590 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t591 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t593 = sext i32 %t588 to i64
  %t594 = call i64 @__olang_fmt_i64(ptr null, i64 %t593)
  %t595 = add i64 %t591, %t594
  %t596 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t597 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t598 = add i64 %t595, %t597
  %t600 = sext i32 %t589 to i64
  %t601 = call i64 @__olang_fmt_i64(ptr null, i64 %t600)
  %t602 = add i64 %t598, %t601
  %t603 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t604 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t605 = add i64 %t602, %t604
  %t606 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t605)
  call void @olang_textcopy(ptr %t606, ptr %t590, i64 %t591)
  %t607 = getelementptr i8, ptr %t606, i64 %t591
  %t608 = call i64 @__olang_fmt_i64(ptr %t607, i64 %t593)
  %t609 = getelementptr i8, ptr %t607, i64 %t594
  call void @olang_textcopy(ptr %t609, ptr %t596, i64 %t597)
  %t610 = getelementptr i8, ptr %t609, i64 %t597
  %t611 = call i64 @__olang_fmt_i64(ptr %t610, i64 %t600)
  %t612 = getelementptr i8, ptr %t610, i64 %t601
  call void @olang_textcopy(ptr %t612, ptr %t603, i64 %t604)
  %t613 = insertvalue { i64, ptr } undef, i64 %t605, 0
  %t614 = insertvalue { i64, ptr } %t613, ptr %t606, 1
  %t616 = extractvalue { i64, ptr } %t614, 0
  %t617 = extractvalue { i64, ptr } %t614, 1
  %t618 = mul i64 %t616, 1
  %t619 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t618)
  call void @llvm.memcpy.p0.p0.i64(ptr %t619, ptr %t617, i64 %t618, i1 false)
  %t620 = insertvalue { i64, ptr } undef, i64 %t616, 0
  %t621 = insertvalue { i64, ptr } %t620, ptr %t619, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s16, ptr %t587, { i64, ptr } %t621)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s16)
  br label %bb50
bb50:
  %t624 = getelementptr %"compiler/mir:TaskClause", ptr %l18, i32 0, i32 2
  %t625 = load { i64, [4 x i64] }, ptr %t624
  %t627 = extractvalue { i64, [4 x i64] } %t625, 0
  %t628 = icmp eq i64 %t627, 0
  %t630 = xor i1 %t628, true
  br i1 %t630, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s19
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = getelementptr %"compiler/mir:TaskClause", ptr %l18, i32 0, i32 2
  %t634 = load { i64, [4 x i64] }, ptr %t633
  %t637 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t632, { i64, [4 x i64] } %t634)
  store i32 %t637, ptr %l207
  br label %bb53
bb52:
  br label %bb123
bb53:
  %t638 = load i32, ptr %l207, !tbaa !23
  store i32 %t638, ptr %l30, !tbaa !23
  %t639 = load ptr, ptr %l8, !tbaa !29
  %t640 = load i32, ptr %l30, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %t639, i32 %t640)
  br label %bb54
bb54:
  %t643 = load ptr, ptr %l1, !tbaa !29
  %t644 = load i32, ptr %l17, !tbaa !23
  %t645 = load i64, ptr %l11, !tbaa !24
  %t646 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t647 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t649 = sext i32 %t644 to i64
  %t650 = call i64 @__olang_fmt_i64(ptr null, i64 %t649)
  %t651 = add i64 %t647, %t650
  %t652 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t653 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t654 = add i64 %t651, %t653
  %t656 = call i64 @__olang_fmt_i64(ptr null, i64 %t645)
  %t657 = add i64 %t654, %t656
  %t658 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t659 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t660 = add i64 %t657, %t659
  %t661 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t660)
  call void @olang_textcopy(ptr %t661, ptr %t646, i64 %t647)
  %t662 = getelementptr i8, ptr %t661, i64 %t647
  %t663 = call i64 @__olang_fmt_i64(ptr %t662, i64 %t649)
  %t664 = getelementptr i8, ptr %t662, i64 %t650
  call void @olang_textcopy(ptr %t664, ptr %t652, i64 %t653)
  %t665 = getelementptr i8, ptr %t664, i64 %t653
  %t666 = call i64 @__olang_fmt_i64(ptr %t665, i64 %t645)
  %t667 = getelementptr i8, ptr %t665, i64 %t656
  call void @olang_textcopy(ptr %t667, ptr %t658, i64 %t659)
  %t668 = insertvalue { i64, ptr } undef, i64 %t660, 0
  %t669 = insertvalue { i64, ptr } %t668, ptr %t661, 1
  %t671 = extractvalue { i64, ptr } %t669, 0
  %t672 = extractvalue { i64, ptr } %t669, 1
  %t673 = mul i64 %t671, 1
  %t674 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t673)
  call void @llvm.memcpy.p0.p0.i64(ptr %t674, ptr %t672, i64 %t673, i1 false)
  %t675 = insertvalue { i64, ptr } undef, i64 %t671, 0
  %t676 = insertvalue { i64, ptr } %t675, ptr %t674, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s19, ptr %t643, { i64, ptr } %t676)
  br label %bb55
bb55:
  %t679 = load ptr, ptr %l1, !tbaa !29
  %t680 = load i32, ptr %l17, !tbaa !23
  %t681 = load i32, ptr %l17, !tbaa !23
  %t682 = load i32, ptr %l17, !tbaa !23
  %t683 = load i32, ptr %l17, !tbaa !23
  %t684 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t685 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t687 = sext i32 %t680 to i64
  %t688 = call i64 @__olang_fmt_i64(ptr null, i64 %t687)
  %t689 = add i64 %t685, %t688
  %t690 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t691 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t692 = add i64 %t689, %t691
  %t694 = sext i32 %t681 to i64
  %t695 = call i64 @__olang_fmt_i64(ptr null, i64 %t694)
  %t696 = add i64 %t692, %t695
  %t697 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t698 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t699 = add i64 %t696, %t698
  %t701 = sext i32 %t682 to i64
  %t702 = call i64 @__olang_fmt_i64(ptr null, i64 %t701)
  %t703 = add i64 %t699, %t702
  %t704 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t705 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t706 = add i64 %t703, %t705
  %t708 = sext i32 %t683 to i64
  %t709 = call i64 @__olang_fmt_i64(ptr null, i64 %t708)
  %t710 = add i64 %t706, %t709
  %t711 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t712 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t713 = add i64 %t710, %t712
  %t714 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t713)
  call void @olang_textcopy(ptr %t714, ptr %t684, i64 %t685)
  %t715 = getelementptr i8, ptr %t714, i64 %t685
  %t716 = call i64 @__olang_fmt_i64(ptr %t715, i64 %t687)
  %t717 = getelementptr i8, ptr %t715, i64 %t688
  call void @olang_textcopy(ptr %t717, ptr %t690, i64 %t691)
  %t718 = getelementptr i8, ptr %t717, i64 %t691
  %t719 = call i64 @__olang_fmt_i64(ptr %t718, i64 %t694)
  %t720 = getelementptr i8, ptr %t718, i64 %t695
  call void @olang_textcopy(ptr %t720, ptr %t697, i64 %t698)
  %t721 = getelementptr i8, ptr %t720, i64 %t698
  %t722 = call i64 @__olang_fmt_i64(ptr %t721, i64 %t701)
  %t723 = getelementptr i8, ptr %t721, i64 %t702
  call void @olang_textcopy(ptr %t723, ptr %t704, i64 %t705)
  %t724 = getelementptr i8, ptr %t723, i64 %t705
  %t725 = call i64 @__olang_fmt_i64(ptr %t724, i64 %t708)
  %t726 = getelementptr i8, ptr %t724, i64 %t709
  call void @olang_textcopy(ptr %t726, ptr %t711, i64 %t712)
  %t727 = insertvalue { i64, ptr } undef, i64 %t713, 0
  %t728 = insertvalue { i64, ptr } %t727, ptr %t714, 1
  %t730 = extractvalue { i64, ptr } %t728, 0
  %t731 = extractvalue { i64, ptr } %t728, 1
  %t732 = mul i64 %t730, 1
  %t733 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t732)
  call void @llvm.memcpy.p0.p0.i64(ptr %t733, ptr %t731, i64 %t732, i1 false)
  %t734 = insertvalue { i64, ptr } undef, i64 %t730, 0
  %t735 = insertvalue { i64, ptr } %t734, ptr %t733, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s19, ptr %t679, { i64, ptr } %t735)
  br label %bb56
bb56:
  %t738 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s19)
  store %"std/prelude/text:StringBuilder" %t738, ptr %l222
  br label %bb57
bb57:
  %t739 = load %"std/prelude/text:StringBuilder", ptr %l222
  store %"std/prelude/text:StringBuilder" %t739, ptr %l31
  %t740 = load i32, ptr %l17, !tbaa !23
  %t741 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t742 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t744 = sext i32 %t740 to i64
  %t745 = call i64 @__olang_fmt_i64(ptr null, i64 %t744)
  %t746 = add i64 %t742, %t745
  %t747 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t746)
  call void @olang_textcopy(ptr %t747, ptr %t741, i64 %t742)
  %t748 = getelementptr i8, ptr %t747, i64 %t742
  %t749 = call i64 @__olang_fmt_i64(ptr %t748, i64 %t744)
  %t750 = insertvalue { i64, ptr } undef, i64 %t746, 0
  %t751 = insertvalue { i64, ptr } %t750, ptr %t747, 1
  %t753 = extractvalue { i64, ptr } %t751, 0
  %t754 = extractvalue { i64, ptr } %t751, 1
  %t755 = mul i64 %t753, 1
  %t756 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t755)
  call void @llvm.memcpy.p0.p0.i64(ptr %t756, ptr %t754, i64 %t755, i1 false)
  %t757 = insertvalue { i64, ptr } undef, i64 %t753, 0
  %t758 = insertvalue { i64, ptr } %t757, ptr %t756, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s19, ptr %s19, ptr %l31, { i64, ptr } %t758)
  br label %bb58
bb58:
  %t761 = load ptr, ptr %l9, !tbaa !29
  %t762 = load i32, ptr %l30, !tbaa !23
  %t765 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t761, i32 %t762)
  store i32 %t765, ptr %l229
  br label %bb59
bb59:
  %t766 = load i32, ptr %l229, !tbaa !23
  store i32 %t766, ptr %l32, !tbaa !23
  %t767 = load i32, ptr %l32, !tbaa !23
  %t768 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t771 = icmp ne i32 %t767, %t768
  br i1 %t771, label %bb60, label %bb61
bb60:
  %t773 = load i32, ptr %l32, !tbaa !23
  %t774 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t777 = icmp ne i32 %t773, %t774
  store i1 %t777, ptr %l233, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l233, !tbaa !21
  br label %bb62
bb62:
  %t779 = load i1, ptr %l233, !tbaa !21
  br i1 %t779, label %bb63, label %bb64
bb63:
  %t780 = load ptr, ptr %l9, !tbaa !29
  %t781 = load i32, ptr %l32, !tbaa !23
  %t784 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t780, i32 %t781)
  store i1 %t784, ptr %l240
  br label %bb65
bb64:
  store i1 false, ptr %l237, !tbaa !21
  br label %bb66
bb65:
  %t785 = load i1, ptr %l240, !tbaa !21
  store i1 %t785, ptr %l237, !tbaa !21
  br label %bb66
bb66:
  %t786 = load i1, ptr %l237, !tbaa !21
  store i1 %t786, ptr %l33, !tbaa !21
  %t787 = load i1, ptr %l33, !tbaa !21
  br i1 %t787, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s23
  %t789 = load ptr, ptr %l1, !tbaa !29
  store ptr %t789, ptr %l242, !tbaa !29
  %t790 = load i32, ptr %l17, !tbaa !23
  store i32 %t790, ptr %l243, !tbaa !23
  %t791 = load ptr, ptr %l8, !tbaa !29
  %t792 = load i32, ptr %l32, !tbaa !23
  %t795 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s23, ptr %t791, i32 %t792)
  store { i64, ptr } %t795, ptr %l246
  br label %bb69
bb68:
  br label %bb72
bb69:
  %t796 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t797 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t798 = load i32, ptr %l243, !tbaa !23
  %t799 = sext i32 %t798 to i64
  %t800 = call i64 @__olang_fmt_i64(ptr null, i64 %t799)
  %t801 = add i64 %t797, %t800
  %t802 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t803 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t804 = add i64 %t801, %t803
  %t805 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t806 = extractvalue { i64, ptr } %t805, 1
  %t807 = extractvalue { i64, ptr } %t805, 0
  %t808 = add i64 %t804, %t807
  %t809 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t810 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t811 = add i64 %t808, %t810
  %t812 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t811)
  call void @olang_textcopy(ptr %t812, ptr %t796, i64 %t797)
  %t813 = getelementptr i8, ptr %t812, i64 %t797
  %t814 = call i64 @__olang_fmt_i64(ptr %t813, i64 %t799)
  %t815 = getelementptr i8, ptr %t813, i64 %t800
  call void @olang_textcopy(ptr %t815, ptr %t802, i64 %t803)
  %t816 = getelementptr i8, ptr %t815, i64 %t803
  call void @olang_textcopy(ptr %t816, ptr %t806, i64 %t807)
  %t817 = getelementptr i8, ptr %t816, i64 %t807
  call void @olang_textcopy(ptr %t817, ptr %t809, i64 %t810)
  %t818 = insertvalue { i64, ptr } undef, i64 %t811, 0
  %t819 = insertvalue { i64, ptr } %t818, ptr %t812, 1
  %t821 = extractvalue { i64, ptr } %t819, 0
  %t822 = extractvalue { i64, ptr } %t819, 1
  %t823 = mul i64 %t821, 1
  %t824 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t823)
  call void @llvm.memcpy.p0.p0.i64(ptr %t824, ptr %t822, i64 %t823, i1 false)
  %t825 = insertvalue { i64, ptr } undef, i64 %t821, 0
  %t826 = insertvalue { i64, ptr } %t825, ptr %t824, 1
  %t827 = load ptr, ptr %l242, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s23, ptr %t827, { i64, ptr } %t826)
  br label %bb70
bb70:
  %t829 = load i32, ptr %l17, !tbaa !23
  %t830 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t831 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t833 = sext i32 %t829 to i64
  %t834 = call i64 @__olang_fmt_i64(ptr null, i64 %t833)
  %t835 = add i64 %t831, %t834
  %t836 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t835)
  call void @olang_textcopy(ptr %t836, ptr %t830, i64 %t831)
  %t837 = getelementptr i8, ptr %t836, i64 %t831
  %t838 = call i64 @__olang_fmt_i64(ptr %t837, i64 %t833)
  %t839 = insertvalue { i64, ptr } undef, i64 %t835, 0
  %t840 = insertvalue { i64, ptr } %t839, ptr %t836, 1
  %t842 = extractvalue { i64, ptr } %t840, 0
  %t843 = extractvalue { i64, ptr } %t840, 1
  %t844 = mul i64 %t842, 1
  %t845 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t844)
  call void @llvm.memcpy.p0.p0.i64(ptr %t845, ptr %t843, i64 %t844, i1 false)
  %t846 = insertvalue { i64, ptr } undef, i64 %t842, 0
  %t847 = insertvalue { i64, ptr } %t846, ptr %t845, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s19, ptr %s23, ptr %l31, { i64, ptr } %t847)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s23)
  br label %bb72
bb72:
  store i64 0, ptr %l34, !tbaa !24
  %t850 = load ptr, ptr %l9, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t851
  %t852 = getelementptr { i64, [4 x i64] }, ptr %t851, i32 0, i32 0
  store i64 0, ptr %t852
  %t853 = load { i64, [4 x i64] }, ptr %t851
  store { i64, [7 x i64] } zeroinitializer, ptr %t854
  %t855 = getelementptr { i64, [7 x i64] }, ptr %t854, i32 0, i32 0
  store i64 2, ptr %t855
  %t857 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t853, 0
  %t858 = getelementptr { i64, [7 x i64] }, ptr %t854, i32 0, i32 1
  store { { i64, [4 x i64] } } %t857, ptr %t858
  %t859 = load { i64, [7 x i64] }, ptr %t854
  %t860 = load i32, ptr %l30, !tbaa !23
  %t864 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t850, { i64, [7 x i64] } %t859, i32 %t860)
  store i64 %t864, ptr %l257
  br label %bb73
bb73:
  %t865 = load i64, ptr %l257, !tbaa !24
  store i64 %t865, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t866 = load i64, ptr %l35, !tbaa !24
  %t867 = load i64, ptr %l34, !tbaa !24
  %t870 = icmp sgt i64 %t866, %t867
  br i1 %t870, label %bb74, label %bb75
bb74:
  %t872 = load i64, ptr %l36, !tbaa !24
  %t874 = icmp sgt i64 %t872, 0
  br i1 %t874, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l261, !tbaa !24
  br label %bb79
bb76:
  %t876 = load i64, ptr %l35, !tbaa !24
  %t877 = load i64, ptr %l34, !tbaa !24
  %t880 = sub i64 %t876, %t877
  %t881 = load i64, ptr %l36, !tbaa !24
  %t884 = add i64 %t880, %t881
  %t886 = sub i64 %t884, 1
  %t887 = load i64, ptr %l36, !tbaa !24
  %t890 = sdiv i64 %t886, %t887
  store i64 %t890, ptr %l264, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l264, !tbaa !24
  br label %bb78
bb78:
  %t892 = load i64, ptr %l264, !tbaa !24
  store i64 %t892, ptr %l261, !tbaa !24
  br label %bb79
bb79:
  %t893 = load i64, ptr %l261, !tbaa !24
  store i64 %t893, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s27
  %t894 = load i64, ptr %l38, !tbaa !24
  %t895 = load i64, ptr %l37, !tbaa !24
  %t898 = icmp slt i64 %t894, %t895
  %t900 = xor i1 %t898, true
  br i1 %t900, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s27)
  br label %bb88
bb82:
  br label %bb83
bb83:
  %t902 = load i64, ptr %l34, !tbaa !24
  %t903 = load i64, ptr %l38, !tbaa !24
  %t904 = load i64, ptr %l36, !tbaa !24
  %t907 = mul i64 %t903, %t904
  %t910 = add i64 %t902, %t907
  store i64 %t910, ptr %l39, !tbaa !24
  %t912 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s27, ptr %s27, ptr %t912, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d77, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d78, i32 0, i32 1) })
  br label %bb84
bb84:
  %t914 = load ptr, ptr %l1, !tbaa !29
  %t915 = load i32, ptr %l17, !tbaa !23
  %t916 = load i64, ptr %l39, !tbaa !24
  %t917 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t918 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t920 = sext i32 %t915 to i64
  %t921 = call i64 @__olang_fmt_i64(ptr null, i64 %t920)
  %t922 = add i64 %t918, %t921
  %t923 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t924 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t925 = add i64 %t922, %t924
  %t927 = call i64 @__olang_fmt_i64(ptr null, i64 %t916)
  %t928 = add i64 %t925, %t927
  %t929 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t930 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t931 = add i64 %t928, %t930
  %t932 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t931)
  call void @olang_textcopy(ptr %t932, ptr %t917, i64 %t918)
  %t933 = getelementptr i8, ptr %t932, i64 %t918
  %t934 = call i64 @__olang_fmt_i64(ptr %t933, i64 %t920)
  %t935 = getelementptr i8, ptr %t933, i64 %t921
  call void @olang_textcopy(ptr %t935, ptr %t923, i64 %t924)
  %t936 = getelementptr i8, ptr %t935, i64 %t924
  %t937 = call i64 @__olang_fmt_i64(ptr %t936, i64 %t916)
  %t938 = getelementptr i8, ptr %t936, i64 %t927
  call void @olang_textcopy(ptr %t938, ptr %t929, i64 %t930)
  %t939 = insertvalue { i64, ptr } undef, i64 %t931, 0
  %t940 = insertvalue { i64, ptr } %t939, ptr %t932, 1
  %t942 = extractvalue { i64, ptr } %t940, 0
  %t943 = extractvalue { i64, ptr } %t940, 1
  %t944 = mul i64 %t942, 1
  %t945 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t944)
  call void @llvm.memcpy.p0.p0.i64(ptr %t945, ptr %t943, i64 %t944, i1 false)
  %t946 = insertvalue { i64, ptr } undef, i64 %t942, 0
  %t947 = insertvalue { i64, ptr } %t946, ptr %t945, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s27, ptr %t914, { i64, ptr } %t947)
  br label %bb85
bb85:
  %t950 = load i32, ptr %l17, !tbaa !23
  %t951 = load i64, ptr %l39, !tbaa !24
  %t952 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t953 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t955 = sext i32 %t950 to i64
  %t956 = call i64 @__olang_fmt_i64(ptr null, i64 %t955)
  %t957 = add i64 %t953, %t956
  %t958 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t959 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t960 = add i64 %t957, %t959
  %t962 = call i64 @__olang_fmt_i64(ptr null, i64 %t951)
  %t963 = add i64 %t960, %t962
  %t964 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t963)
  call void @olang_textcopy(ptr %t964, ptr %t952, i64 %t953)
  %t965 = getelementptr i8, ptr %t964, i64 %t953
  %t966 = call i64 @__olang_fmt_i64(ptr %t965, i64 %t955)
  %t967 = getelementptr i8, ptr %t965, i64 %t956
  call void @olang_textcopy(ptr %t967, ptr %t958, i64 %t959)
  %t968 = getelementptr i8, ptr %t967, i64 %t959
  %t969 = call i64 @__olang_fmt_i64(ptr %t968, i64 %t951)
  %t970 = insertvalue { i64, ptr } undef, i64 %t963, 0
  %t971 = insertvalue { i64, ptr } %t970, ptr %t964, 1
  %t973 = extractvalue { i64, ptr } %t971, 0
  %t974 = extractvalue { i64, ptr } %t971, 1
  %t975 = mul i64 %t973, 1
  %t976 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t975)
  call void @llvm.memcpy.p0.p0.i64(ptr %t976, ptr %t974, i64 %t975, i1 false)
  %t977 = insertvalue { i64, ptr } undef, i64 %t973, 0
  %t978 = insertvalue { i64, ptr } %t977, ptr %t976, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s19, ptr %s27, ptr %l31, { i64, ptr } %t978)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s27)
  br label %bb87
bb87:
  %t981 = load i64, ptr %l38, !tbaa !24
  %t983 = add i64 %t981, 1
  store i64 %t983, ptr %l38, !tbaa !24
  br label %bb80
bb88:
  %t985 = load ptr, ptr %l9, !tbaa !29
  %t986 = load i32, ptr %l30, !tbaa !23
  %t988 = inttoptr i64 0 to ptr
  %t991 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s19, ptr %t988, ptr %t985, i32 %t986)
  store { i64, ptr } %t991, ptr %l298
  br label %bb89
bb89:
  %t992 = load { i64, ptr }, ptr %l298, !tbaa !27
  store { i64, ptr } %t992, ptr %l40, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d84, i32 0, i32 1) }, ptr %l299, !tbaa !27
  %t993 = load { i64, ptr }, ptr %l299, !tbaa !27
  store { i64, ptr } %t993, ptr %l300, !tbaa !27
  %t994 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t995 = extractvalue { i64, ptr } %t994, 0
  store i64 %t995, ptr %l301, !tbaa !24
  %t996 = load i64, ptr %l301, !tbaa !24
  %t997 = mul i64 %t996, 1
  %t998 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t997)
  %t999 = insertvalue { i64, ptr } undef, i64 %t996, 0
  %t1000 = insertvalue { i64, ptr } %t999, ptr %t998, 1
  store { i64, ptr } %t1000, ptr %l302, !tbaa !27
  %t1001 = getelementptr { i64, ptr }, ptr %l302, i32 0, i32 1
  %t1002 = load ptr, ptr %t1001, !tbaa !27
  %t1003 = getelementptr { i64, ptr }, ptr %l300, i32 0, i32 1
  %t1004 = load ptr, ptr %t1003, !tbaa !27
  %t1005 = load i64, ptr %l301, !tbaa !24
  %t1006 = mul i64 %t1005, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1002, ptr %t1004, i64 %t1006, i1 false)
  %t1007 = load { i64, ptr }, ptr %l302, !tbaa !27
  store { i64, ptr } %t1007, ptr %l41, !tbaa !27
  %t1008 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t1010 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s19, ptr %s19, { i64, ptr } %t1008, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t1010, ptr %l304
  br label %bb90
bb90:
  %t1011 = load i1, ptr %l304, !tbaa !21
  br i1 %t1011, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s31
  %t1012 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1012, ptr %l305, !tbaa !29
  %t1013 = load i32, ptr %l17, !tbaa !23
  store i32 %t1013, ptr %l306, !tbaa !23
  %t1015 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s19, ptr %s31, ptr %l31)
  store { i64, ptr } %t1015, ptr %l308
  br label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s33
  %t1016 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1016, ptr %l311, !tbaa !29
  %t1017 = load i32, ptr %l17, !tbaa !23
  store i32 %t1017, ptr %l312, !tbaa !23
  %t1018 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t1018, ptr %l313, !tbaa !27
  %t1019 = load i32, ptr %l17, !tbaa !23
  store i32 %t1019, ptr %l314, !tbaa !23
  %t1021 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s19, ptr %s33, ptr %l31)
  store { i64, ptr } %t1021, ptr %l316
  br label %bb95
bb93:
  %t1022 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t1023 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t1024 = load i32, ptr %l306, !tbaa !23
  %t1025 = sext i32 %t1024 to i64
  %t1026 = call i64 @__olang_fmt_i64(ptr null, i64 %t1025)
  %t1027 = add i64 %t1023, %t1026
  %t1028 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t1029 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t1030 = add i64 %t1027, %t1029
  %t1031 = load { i64, ptr }, ptr %l308, !tbaa !27
  %t1032 = extractvalue { i64, ptr } %t1031, 1
  %t1033 = extractvalue { i64, ptr } %t1031, 0
  %t1034 = add i64 %t1030, %t1033
  %t1035 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t1036 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t1037 = add i64 %t1034, %t1036
  %t1038 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t1037)
  call void @olang_textcopy(ptr %t1038, ptr %t1022, i64 %t1023)
  %t1039 = getelementptr i8, ptr %t1038, i64 %t1023
  %t1040 = call i64 @__olang_fmt_i64(ptr %t1039, i64 %t1025)
  %t1041 = getelementptr i8, ptr %t1039, i64 %t1026
  call void @olang_textcopy(ptr %t1041, ptr %t1028, i64 %t1029)
  %t1042 = getelementptr i8, ptr %t1041, i64 %t1029
  call void @olang_textcopy(ptr %t1042, ptr %t1032, i64 %t1033)
  %t1043 = getelementptr i8, ptr %t1042, i64 %t1033
  call void @olang_textcopy(ptr %t1043, ptr %t1035, i64 %t1036)
  %t1044 = insertvalue { i64, ptr } undef, i64 %t1037, 0
  %t1045 = insertvalue { i64, ptr } %t1044, ptr %t1038, 1
  %t1047 = extractvalue { i64, ptr } %t1045, 0
  %t1048 = extractvalue { i64, ptr } %t1045, 1
  %t1049 = mul i64 %t1047, 1
  %t1050 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t1049)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1050, ptr %t1048, i64 %t1049, i1 false)
  %t1051 = insertvalue { i64, ptr } undef, i64 %t1047, 0
  %t1052 = insertvalue { i64, ptr } %t1051, ptr %t1050, 1
  %t1053 = load ptr, ptr %l305, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s31, ptr %t1053, { i64, ptr } %t1052)
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s31)
  br label %bb100
bb95:
  %t1055 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t1056 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t1057 = load i32, ptr %l312, !tbaa !23
  %t1058 = sext i32 %t1057 to i64
  %t1059 = call i64 @__olang_fmt_i64(ptr null, i64 %t1058)
  %t1060 = add i64 %t1056, %t1059
  %t1061 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t1062 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t1063 = add i64 %t1060, %t1062
  %t1064 = load { i64, ptr }, ptr %l313, !tbaa !27
  %t1065 = extractvalue { i64, ptr } %t1064, 1
  %t1066 = extractvalue { i64, ptr } %t1064, 0
  %t1067 = add i64 %t1063, %t1066
  %t1068 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t1069 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t1070 = add i64 %t1067, %t1069
  %t1071 = load i32, ptr %l314, !tbaa !23
  %t1072 = sext i32 %t1071 to i64
  %t1073 = call i64 @__olang_fmt_i64(ptr null, i64 %t1072)
  %t1074 = add i64 %t1070, %t1073
  %t1075 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t1076 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t1077 = add i64 %t1074, %t1076
  %t1078 = load { i64, ptr }, ptr %l316, !tbaa !27
  %t1079 = extractvalue { i64, ptr } %t1078, 1
  %t1080 = extractvalue { i64, ptr } %t1078, 0
  %t1081 = add i64 %t1077, %t1080
  %t1082 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t1083 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t1084 = add i64 %t1081, %t1083
  %t1085 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t1084)
  call void @olang_textcopy(ptr %t1085, ptr %t1055, i64 %t1056)
  %t1086 = getelementptr i8, ptr %t1085, i64 %t1056
  %t1087 = call i64 @__olang_fmt_i64(ptr %t1086, i64 %t1058)
  %t1088 = getelementptr i8, ptr %t1086, i64 %t1059
  call void @olang_textcopy(ptr %t1088, ptr %t1061, i64 %t1062)
  %t1089 = getelementptr i8, ptr %t1088, i64 %t1062
  call void @olang_textcopy(ptr %t1089, ptr %t1065, i64 %t1066)
  %t1090 = getelementptr i8, ptr %t1089, i64 %t1066
  call void @olang_textcopy(ptr %t1090, ptr %t1068, i64 %t1069)
  %t1091 = getelementptr i8, ptr %t1090, i64 %t1069
  %t1092 = call i64 @__olang_fmt_i64(ptr %t1091, i64 %t1072)
  %t1093 = getelementptr i8, ptr %t1091, i64 %t1073
  call void @olang_textcopy(ptr %t1093, ptr %t1075, i64 %t1076)
  %t1094 = getelementptr i8, ptr %t1093, i64 %t1076
  call void @olang_textcopy(ptr %t1094, ptr %t1079, i64 %t1080)
  %t1095 = getelementptr i8, ptr %t1094, i64 %t1080
  call void @olang_textcopy(ptr %t1095, ptr %t1082, i64 %t1083)
  %t1096 = insertvalue { i64, ptr } undef, i64 %t1084, 0
  %t1097 = insertvalue { i64, ptr } %t1096, ptr %t1085, 1
  %t1099 = extractvalue { i64, ptr } %t1097, 0
  %t1100 = extractvalue { i64, ptr } %t1097, 1
  %t1101 = mul i64 %t1099, 1
  %t1102 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t1101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1102, ptr %t1100, i64 %t1101, i1 false)
  %t1103 = insertvalue { i64, ptr } undef, i64 %t1099, 0
  %t1104 = insertvalue { i64, ptr } %t1103, ptr %t1102, 1
  %t1105 = load ptr, ptr %l311, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s33, ptr %t1105, { i64, ptr } %t1104)
  br label %bb96
bb96:
  %t1107 = load i32, ptr %l17, !tbaa !23
  %t1108 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t1109 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t1111 = sext i32 %t1107 to i64
  %t1112 = call i64 @__olang_fmt_i64(ptr null, i64 %t1111)
  %t1113 = add i64 %t1109, %t1112
  %t1114 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t1113)
  call void @olang_textcopy(ptr %t1114, ptr %t1108, i64 %t1109)
  %t1115 = getelementptr i8, ptr %t1114, i64 %t1109
  %t1116 = call i64 @__olang_fmt_i64(ptr %t1115, i64 %t1111)
  %t1117 = insertvalue { i64, ptr } undef, i64 %t1113, 0
  %t1118 = insertvalue { i64, ptr } %t1117, ptr %t1114, 1
  store { i64, ptr } %t1118, ptr %l320, !tbaa !27
  %t1119 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1120 = extractvalue { i64, ptr } %t1119, 0
  %t1121 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t1122 = extractvalue { i64, ptr } %t1121, 0
  store i64 %t1122, ptr %l322, !tbaa !24
  %t1124 = load i64, ptr %l322, !tbaa !24
  %t1125 = icmp eq i64 %t1120, %t1124
  br i1 %t1125, label %bb97, label %bb98
bb97:
  %t1127 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t1128 = load ptr, ptr %t1127, !tbaa !27
  %t1129 = getelementptr { i64, ptr }, ptr %l320, i32 0, i32 1
  %t1130 = load ptr, ptr %t1129, !tbaa !27
  %t1131 = load i64, ptr %l322, !tbaa !24
  %t1132 = mul i64 %t1131, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1128, ptr %t1130, i64 %t1132, i1 false)
  br label %bb99
bb98:
  %t1133 = load { i64, ptr }, ptr %l320, !tbaa !27
  store { i64, ptr } %t1133, ptr %l41, !tbaa !27
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s33)
  br label %bb100
bb100:
  %t1134 = load i1, ptr %l33, !tbaa !21
  br i1 %t1134, label %bb101, label %bb102
bb101:
  store %olang.scope zeroinitializer, ptr %s36
  %t1136 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1136, ptr %l325, !tbaa !29
  %t1137 = load i32, ptr %l17, !tbaa !23
  store i32 %t1137, ptr %l326, !tbaa !23
  %t1138 = load ptr, ptr %l8, !tbaa !29
  %t1139 = load i32, ptr %l32, !tbaa !23
  %t1142 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s36, ptr %t1138, i32 %t1139)
  store { i64, ptr } %t1142, ptr %l329
  br label %bb103
bb102:
  br label %bb108
bb103:
  %t1143 = load i32, ptr %l17, !tbaa !23
  %t1144 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t1145 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t1146 = load i32, ptr %l326, !tbaa !23
  %t1147 = sext i32 %t1146 to i64
  %t1148 = call i64 @__olang_fmt_i64(ptr null, i64 %t1147)
  %t1149 = add i64 %t1145, %t1148
  %t1150 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t1151 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t1152 = add i64 %t1149, %t1151
  %t1153 = load { i64, ptr }, ptr %l329, !tbaa !27
  %t1154 = extractvalue { i64, ptr } %t1153, 1
  %t1155 = extractvalue { i64, ptr } %t1153, 0
  %t1156 = add i64 %t1152, %t1155
  %t1157 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t1158 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t1159 = add i64 %t1156, %t1158
  %t1161 = sext i32 %t1143 to i64
  %t1162 = call i64 @__olang_fmt_i64(ptr null, i64 %t1161)
  %t1163 = add i64 %t1159, %t1162
  %t1164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t1165 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t1166 = add i64 %t1163, %t1165
  %t1167 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t1166)
  call void @olang_textcopy(ptr %t1167, ptr %t1144, i64 %t1145)
  %t1168 = getelementptr i8, ptr %t1167, i64 %t1145
  %t1169 = call i64 @__olang_fmt_i64(ptr %t1168, i64 %t1147)
  %t1170 = getelementptr i8, ptr %t1168, i64 %t1148
  call void @olang_textcopy(ptr %t1170, ptr %t1150, i64 %t1151)
  %t1171 = getelementptr i8, ptr %t1170, i64 %t1151
  call void @olang_textcopy(ptr %t1171, ptr %t1154, i64 %t1155)
  %t1172 = getelementptr i8, ptr %t1171, i64 %t1155
  call void @olang_textcopy(ptr %t1172, ptr %t1157, i64 %t1158)
  %t1173 = getelementptr i8, ptr %t1172, i64 %t1158
  %t1174 = call i64 @__olang_fmt_i64(ptr %t1173, i64 %t1161)
  %t1175 = getelementptr i8, ptr %t1173, i64 %t1162
  call void @olang_textcopy(ptr %t1175, ptr %t1164, i64 %t1165)
  %t1176 = insertvalue { i64, ptr } undef, i64 %t1166, 0
  %t1177 = insertvalue { i64, ptr } %t1176, ptr %t1167, 1
  %t1179 = extractvalue { i64, ptr } %t1177, 0
  %t1180 = extractvalue { i64, ptr } %t1177, 1
  %t1181 = mul i64 %t1179, 1
  %t1182 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t1181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1182, ptr %t1180, i64 %t1181, i1 false)
  %t1183 = insertvalue { i64, ptr } undef, i64 %t1179, 0
  %t1184 = insertvalue { i64, ptr } %t1183, ptr %t1182, 1
  %t1185 = load ptr, ptr %l325, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s36, ptr %t1185, { i64, ptr } %t1184)
  br label %bb104
bb104:
  %t1187 = load i32, ptr %l17, !tbaa !23
  %t1188 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t1189 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t1191 = sext i32 %t1187 to i64
  %t1192 = call i64 @__olang_fmt_i64(ptr null, i64 %t1191)
  %t1193 = add i64 %t1189, %t1192
  %t1194 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t1193)
  call void @olang_textcopy(ptr %t1194, ptr %t1188, i64 %t1189)
  %t1195 = getelementptr i8, ptr %t1194, i64 %t1189
  %t1196 = call i64 @__olang_fmt_i64(ptr %t1195, i64 %t1191)
  %t1197 = insertvalue { i64, ptr } undef, i64 %t1193, 0
  %t1198 = insertvalue { i64, ptr } %t1197, ptr %t1194, 1
  store { i64, ptr } %t1198, ptr %l334, !tbaa !27
  %t1199 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1200 = extractvalue { i64, ptr } %t1199, 0
  %t1201 = load { i64, ptr }, ptr %l334, !tbaa !27
  %t1202 = extractvalue { i64, ptr } %t1201, 0
  store i64 %t1202, ptr %l336, !tbaa !24
  %t1204 = load i64, ptr %l336, !tbaa !24
  %t1205 = icmp eq i64 %t1200, %t1204
  br i1 %t1205, label %bb105, label %bb106
bb105:
  %t1207 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t1208 = load ptr, ptr %t1207, !tbaa !27
  %t1209 = getelementptr { i64, ptr }, ptr %l334, i32 0, i32 1
  %t1210 = load ptr, ptr %t1209, !tbaa !27
  %t1211 = load i64, ptr %l336, !tbaa !24
  %t1212 = mul i64 %t1211, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1208, ptr %t1210, i64 %t1212, i1 false)
  br label %bb107
bb106:
  %t1213 = load { i64, ptr }, ptr %l334, !tbaa !27
  store { i64, ptr } %t1213, ptr %l41, !tbaa !27
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s36)
  br label %bb108
bb108:
  %t1214 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1216 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s19, ptr %s19, { i64, ptr } %t1214, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t1216, ptr %l339
  br label %bb109
bb109:
  %t1217 = load i1, ptr %l339, !tbaa !21
  %t1218 = xor i1 %t1217, true
  br i1 %t1218, label %bb110, label %bb111
bb110:
  %t1220 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 3
  %t1221 = getelementptr %"compiler/mir:Range", ptr %t1220, i32 0, i32 1
  %t1222 = load i32, ptr %t1221, !tbaa !23
  %t1224 = icmp sgt i32 %t1222, 0
  store i1 %t1224, ptr %l341, !tbaa !21
  br label %bb112
bb111:
  store i1 false, ptr %l341, !tbaa !21
  br label %bb112
bb112:
  %t1226 = load i1, ptr %l341, !tbaa !21
  br i1 %t1226, label %bb113, label %bb114
bb113:
  store %olang.scope zeroinitializer, ptr %s39
  %t1227 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 3
  %t1228 = getelementptr %"compiler/mir:Range", ptr %t1227, i32 0, i32 1
  %t1229 = load i32, ptr %t1228, !tbaa !23
  %t1231 = icmp eq i32 %t1229, 1
  br i1 %t1231, label %bb115, label %bb116
bb114:
  br label %bb122
bb115:
  store %olang.scope zeroinitializer, ptr %s40
  %t1233 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1233, ptr %l346, !tbaa !29
  %t1234 = load i32, ptr %l17, !tbaa !23
  store i32 %t1234, ptr %l347, !tbaa !23
  %t1235 = load i64, ptr %l6, !tbaa !24
  store i64 %t1235, ptr %l348, !tbaa !24
  %t1236 = load ptr, ptr %l8, !tbaa !29
  %t1237 = load i32, ptr %l32, !tbaa !23
  %t1240 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s40, ptr %t1236, i32 %t1237)
  store { i64, ptr } %t1240, ptr %l351
  br label %bb117
bb116:
  store %olang.scope zeroinitializer, ptr %s42
  %t1241 = load ptr, ptr %l0, !tbaa !29
  %t1242 = load ptr, ptr %l1, !tbaa !29
  %t1243 = load i32, ptr %l17, !tbaa !23
  %t1245 = sext i32 %t1243 to i64
  %t1246 = call i64 @__olang_fmt_i64(ptr null, i64 %t1245)
  %t1247 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1246)
  %t1248 = call i64 @__olang_fmt_i64(ptr %t1247, i64 %t1245)
  %t1249 = insertvalue { i64, ptr } undef, i64 %t1246, 0
  %t1250 = insertvalue { i64, ptr } %t1249, ptr %t1247, 1
  %t1252 = extractvalue { i64, ptr } %t1250, 0
  %t1253 = extractvalue { i64, ptr } %t1250, 1
  %t1254 = mul i64 %t1252, 1
  %t1255 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1254)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1255, ptr %t1253, i64 %t1254, i1 false)
  %t1256 = insertvalue { i64, ptr } undef, i64 %t1252, 0
  %t1257 = insertvalue { i64, ptr } %t1256, ptr %t1255, 1
  %t1258 = load i32, ptr %l32, !tbaa !23
  %t1259 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1260 = load i64, ptr %l6, !tbaa !24
  %t1261 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 3
  %t1262 = getelementptr %"compiler/mir:Range", ptr %t1261, i32 0, i32 1
  %t1263 = load i32, ptr %t1262, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estoreParts(ptr %v0, ptr %v1, ptr %s42, ptr %s19, ptr %t1241, ptr %t1242, { i64, ptr } %t1257, i32 %t1258, { i64, ptr } %t1259, i64 %t1260, i32 %t1263)
  br label %bb119
bb117:
  %t1271 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1272 = load i32, ptr %l17, !tbaa !23
  %t1273 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t1274 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t1275 = load i32, ptr %l347, !tbaa !23
  %t1276 = sext i32 %t1275 to i64
  %t1277 = call i64 @__olang_fmt_i64(ptr null, i64 %t1276)
  %t1278 = add i64 %t1274, %t1277
  %t1279 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t1280 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t1281 = add i64 %t1278, %t1280
  %t1282 = load i64, ptr %l348, !tbaa !24
  %t1283 = call i64 @__olang_fmt_i64(ptr null, i64 %t1282)
  %t1284 = add i64 %t1281, %t1283
  %t1285 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t1286 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t1287 = add i64 %t1284, %t1286
  %t1288 = load { i64, ptr }, ptr %l351, !tbaa !27
  %t1289 = extractvalue { i64, ptr } %t1288, 1
  %t1290 = extractvalue { i64, ptr } %t1288, 0
  %t1291 = add i64 %t1287, %t1290
  %t1292 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t1293 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t1294 = add i64 %t1291, %t1293
  %t1296 = extractvalue { i64, ptr } %t1271, 1
  %t1297 = extractvalue { i64, ptr } %t1271, 0
  %t1298 = add i64 %t1294, %t1297
  %t1299 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t1300 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t1301 = add i64 %t1298, %t1300
  %t1303 = sext i32 %t1272 to i64
  %t1304 = call i64 @__olang_fmt_i64(ptr null, i64 %t1303)
  %t1305 = add i64 %t1301, %t1304
  %t1306 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t1307 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t1308 = add i64 %t1305, %t1307
  %t1309 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1308)
  call void @olang_textcopy(ptr %t1309, ptr %t1273, i64 %t1274)
  %t1310 = getelementptr i8, ptr %t1309, i64 %t1274
  %t1311 = call i64 @__olang_fmt_i64(ptr %t1310, i64 %t1276)
  %t1312 = getelementptr i8, ptr %t1310, i64 %t1277
  call void @olang_textcopy(ptr %t1312, ptr %t1279, i64 %t1280)
  %t1313 = getelementptr i8, ptr %t1312, i64 %t1280
  %t1314 = call i64 @__olang_fmt_i64(ptr %t1313, i64 %t1282)
  %t1315 = getelementptr i8, ptr %t1313, i64 %t1283
  call void @olang_textcopy(ptr %t1315, ptr %t1285, i64 %t1286)
  %t1316 = getelementptr i8, ptr %t1315, i64 %t1286
  call void @olang_textcopy(ptr %t1316, ptr %t1289, i64 %t1290)
  %t1317 = getelementptr i8, ptr %t1316, i64 %t1290
  call void @olang_textcopy(ptr %t1317, ptr %t1292, i64 %t1293)
  %t1318 = getelementptr i8, ptr %t1317, i64 %t1293
  call void @olang_textcopy(ptr %t1318, ptr %t1296, i64 %t1297)
  %t1319 = getelementptr i8, ptr %t1318, i64 %t1297
  call void @olang_textcopy(ptr %t1319, ptr %t1299, i64 %t1300)
  %t1320 = getelementptr i8, ptr %t1319, i64 %t1300
  %t1321 = call i64 @__olang_fmt_i64(ptr %t1320, i64 %t1303)
  %t1322 = getelementptr i8, ptr %t1320, i64 %t1304
  call void @olang_textcopy(ptr %t1322, ptr %t1306, i64 %t1307)
  %t1323 = insertvalue { i64, ptr } undef, i64 %t1308, 0
  %t1324 = insertvalue { i64, ptr } %t1323, ptr %t1309, 1
  %t1326 = extractvalue { i64, ptr } %t1324, 0
  %t1327 = extractvalue { i64, ptr } %t1324, 1
  %t1328 = mul i64 %t1326, 1
  %t1329 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1328)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1329, ptr %t1327, i64 %t1328, i1 false)
  %t1330 = insertvalue { i64, ptr } undef, i64 %t1326, 0
  %t1331 = insertvalue { i64, ptr } %t1330, ptr %t1329, 1
  %t1332 = load ptr, ptr %l346, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s40, ptr %t1332, { i64, ptr } %t1331)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s40)
  br label %bb120
bb119:
  call void @__olang_scope_close(ptr %s42)
  br label %bb120
bb120:
  %t1334 = load ptr, ptr %l0, !tbaa !29
  %t1335 = load ptr, ptr %l1, !tbaa !29
  %t1336 = load %"compiler/mir:Task", ptr %l3
  %t1337 = load i64, ptr %l6, !tbaa !24
  %t1339 = load i32, ptr %l17, !tbaa !23
  %t1340 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t1341 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t1343 = sext i32 %t1339 to i64
  %t1344 = call i64 @__olang_fmt_i64(ptr null, i64 %t1343)
  %t1345 = add i64 %t1341, %t1344
  %t1346 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t1345)
  call void @olang_textcopy(ptr %t1346, ptr %t1340, i64 %t1341)
  %t1347 = getelementptr i8, ptr %t1346, i64 %t1341
  %t1348 = call i64 @__olang_fmt_i64(ptr %t1347, i64 %t1343)
  %t1349 = insertvalue { i64, ptr } undef, i64 %t1345, 0
  %t1350 = insertvalue { i64, ptr } %t1349, ptr %t1346, 1
  %t1352 = extractvalue { i64, ptr } %t1350, 0
  %t1353 = extractvalue { i64, ptr } %t1350, 1
  %t1354 = mul i64 %t1352, 1
  %t1355 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t1354)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1355, ptr %t1353, i64 %t1354, i1 false)
  %t1356 = insertvalue { i64, ptr } undef, i64 %t1352, 0
  %t1357 = insertvalue { i64, ptr } %t1356, ptr %t1355, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskFix(ptr %v0, ptr %v1, ptr %v3, ptr %s39, ptr %t1334, ptr %t1335, %"compiler/mir:Task" %t1336, i64 %t1337, { i64, ptr } %a7, { i64, ptr } %t1357)
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s39)
  br label %bb122
bb122:
  %t1364 = load i64, ptr %l11, !tbaa !24
  %t1366 = add i64 %t1364, 1
  store i64 %t1366, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s19)
  br label %bb123
bb123:
  %t1368 = load ptr, ptr %l1, !tbaa !29
  %t1369 = load i32, ptr %l17, !tbaa !23
  %t1370 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t1371 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t1373 = sext i32 %t1369 to i64
  %t1374 = call i64 @__olang_fmt_i64(ptr null, i64 %t1373)
  %t1375 = add i64 %t1371, %t1374
  %t1376 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t1377 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t1378 = add i64 %t1375, %t1377
  %t1379 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t1378)
  call void @olang_textcopy(ptr %t1379, ptr %t1370, i64 %t1371)
  %t1380 = getelementptr i8, ptr %t1379, i64 %t1371
  %t1381 = call i64 @__olang_fmt_i64(ptr %t1380, i64 %t1373)
  %t1382 = getelementptr i8, ptr %t1380, i64 %t1374
  call void @olang_textcopy(ptr %t1382, ptr %t1376, i64 %t1377)
  %t1383 = insertvalue { i64, ptr } undef, i64 %t1378, 0
  %t1384 = insertvalue { i64, ptr } %t1383, ptr %t1379, 1
  %t1386 = extractvalue { i64, ptr } %t1384, 0
  %t1387 = extractvalue { i64, ptr } %t1384, 1
  %t1388 = mul i64 %t1386, 1
  %t1389 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t1388)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1389, ptr %t1387, i64 %t1388, i1 false)
  %t1390 = insertvalue { i64, ptr } undef, i64 %t1386, 0
  %t1391 = insertvalue { i64, ptr } %t1390, ptr %t1389, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t1368, { i64, ptr } %t1391)
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s2)
  br label %bb125
bb125:
  %t1394 = load i32, ptr %l16, !tbaa !23
  %t1396 = add i32 %t1394, 1
  store i32 %t1396, ptr %l16, !tbaa !23
  br label %bb8
bb126:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edataPtr(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { { i64, ptr }, i32 }
  %lp3 = alloca ptr
  %l5 = alloca i32
  %l8 = alloca { { i64, ptr }, i32 }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l15 = alloca i32
  %l19 = alloca i1
  %l22 = alloca i1
  %l24 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s0, ptr %t1, %"compiler/mir:Lvalue" %a1)
  store { { i64, ptr }, i32 } %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load { { i64, ptr }, i32 }, ptr %l8
  store { { i64, ptr }, i32 } %t6, ptr %l2
  %t7 = getelementptr { { i64, ptr }, i32 }, ptr %l2, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l9, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l10, !tbaa !24
  %t11 = load i64, ptr %l10, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l11, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l10, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t22, ptr %lp3
  %t23 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t24 = load ptr, ptr %lp3
  store { i64, ptr } %t23, ptr %t24, !tbaa !27
  %t25 = getelementptr { { i64, ptr }, i32 }, ptr %l2, i32 0, i32 1
  %t26 = load i32, ptr %t25, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t28, i32 %t26)
  store i32 %t32, ptr %l15
  br label %bb2
bb2:
  %t33 = load i32, ptr %l15, !tbaa !23
  store i32 %t33, ptr %l5, !tbaa !23
  %t34 = load i32, ptr %l5, !tbaa !23
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t38 = icmp ne i32 %t34, %t35
  br i1 %t38, label %bb3, label %bb4
bb3:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l5, !tbaa !23
  %t44 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t44, ptr %l22
  br label %bb5
bb4:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb6
bb5:
  %t45 = load i1, ptr %l22, !tbaa !21
  store i1 %t45, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t46 = load i1, ptr %l19, !tbaa !21
  br i1 %t46, label %bb7, label %bb8
bb7:
  %t47 = load ptr, ptr %lp3
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l24, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %lp3
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  %t54 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t57 = extractvalue { i64, ptr } %t53, 1
  %t58 = extractvalue { i64, ptr } %t53, 0
  %t59 = add i64 %t55, %t58
  %t60 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t62 = add i64 %t59, %t61
  %t63 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t62)
  call void @olang_textcopy(ptr %t63, ptr %t54, i64 %t55)
  %t64 = getelementptr i8, ptr %t63, i64 %t55
  call void @olang_textcopy(ptr %t64, ptr %t57, i64 %t58)
  %t65 = getelementptr i8, ptr %t64, i64 %t58
  call void @olang_textcopy(ptr %t65, ptr %t60, i64 %t61)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t63, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } %t67, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t77 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t51, { i64, ptr } %t74)
  store { i64, ptr } %t77, ptr %l29
  br label %bb10
bb10:
  %t78 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/emit:fnEm", ptr %t85, i32 0, i32 15
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t89 = load ptr, ptr %l24, !tbaa !29
  %t92 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %v1, ptr %t89, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d112, i32 0, i32 1) }, { i64, ptr } %t84, { i64, ptr } %t88)
  store { i64, ptr } %t92, ptr %l33
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t93 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t93, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/emit:fnEm", ptr %t7, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d113, i32 0, i32 1) })
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedInto(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2, { i64, [15 x i64] } %a3) #0 {
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
  %l23 = alloca i32
  %l26 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l46 = alloca i64
  %l58 = alloca { i64, [4 x i64] }
  %l61 = alloca { i64, [4 x i64] }
  %l62 = alloca i64
  %l67 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca ptr
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l86 = alloca i64
  %l87 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca i64
  %l93 = alloca i64
  %l94 = alloca ptr
  %l95 = alloca ptr
  %l98 = alloca { i64, [4 x i64] }
  %l100 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l108 = alloca i64
  %l113 = alloca { { i64, ptr }, i32 }
  %l115 = alloca ptr
  %l118 = alloca i64
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
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a2)
  store i32 %t13, ptr %l23
  br label %bb1
bb1:
  %t14 = load i32, ptr %l23, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i32, ptr %l5, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l26
  br label %bb2
bb2:
  %t20 = load i1, ptr %l26, !tbaa !21
  %t21 = xor i1 %t20, true
  br i1 %t21, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb6
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l5, !tbaa !23
  %t27 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t23, i32 %t24)
  store i64 %t27, ptr %l31
  br label %bb5
bb5:
  %t28 = load i64, ptr %l31, !tbaa !24
  %t29 = icmp eq i64 %t28, 0
  store i1 %t29, ptr %l28, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l28, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d114, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t33, ptr %l35, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l36, !tbaa !24
  %t36 = load i64, ptr %l36, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l37, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l36, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t47, ptr %l6, !tbaa !27
  %t48 = load { i64, [15 x i64] }, ptr %l3
  %t50 = extractvalue { i64, [15 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 6
  br i1 %t51, label %bb10, label %bb11
bb10:
  %t53 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t54 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t53, i32 0, i32 2
  %t55 = load %"compiler/mir:Range", ptr %t54
  store %"compiler/mir:Range" %t55, ptr %l7
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l5, !tbaa !23
  %t59 = load %"compiler/mir:Range", ptr %l7
  %t63 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedMake(ptr %v0, ptr %s0, ptr %t57, i32 %t58, %"compiler/mir:Range" %t59)
  store { i64, ptr } %t63, ptr %l44
  br label %bb13
bb13:
  %t64 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  %t66 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l46, !tbaa !24
  %t69 = load i64, ptr %l46, !tbaa !24
  %t70 = icmp eq i64 %t65, %t69
  br i1 %t70, label %bb14, label %bb15
bb14:
  %t72 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = load i64, ptr %l46, !tbaa !24
  %t77 = mul i64 %t76, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t73, ptr %t75, i64 %t77, i1 false)
  br label %bb16
bb15:
  %t78 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t78, ptr %l6, !tbaa !27
  br label %bb16
bb16:
  br label %bb53
bb17:
  %t79 = load { i64, [15 x i64] }, ptr %l3
  %t81 = extractvalue { i64, [15 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 3
  br i1 %t82, label %bb18, label %bb19
bb18:
  %t84 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t85 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t84, i32 0, i32 0
  %t86 = load i32, ptr %t85, !range !{i32 0, i32 52}
  store i32 %t86, ptr %l8
  %t88 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t89 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t88, i32 0, i32 2
  %t90 = load %"compiler/mir:Range", ptr %t89
  store %"compiler/mir:Range" %t90, ptr %l9
  br label %bb20
bb19:
  br label %bb48
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t92 = load i32, ptr %l8, !range !{i32 0, i32 52}
  %t94 = trunc i64 41 to i32
  %t95 = icmp eq i32 %t92, %t94
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load %"compiler/mir:Range", ptr %l9
  %t104 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t100, %"compiler/mir:Range" %t101, i64 0)
  store { i64, [4 x i64] } %t104, ptr %l58
  br label %bb24
bb24:
  %t105 = load { i64, [4 x i64] }, ptr %l58
  store { i64, [4 x i64] } %t105, ptr %l10
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load %"compiler/mir:Range", ptr %l9
  %t110 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t106, %"compiler/mir:Range" %t107, i64 1)
  store { i64, [4 x i64] } %t110, ptr %l61
  br label %bb25
bb25:
  %t111 = load { i64, [4 x i64] }, ptr %l61
  store { i64, [4 x i64] } %t111, ptr %l11
  %t112 = load { i64, [4 x i64] }, ptr %l11
  %t114 = extractvalue { i64, [4 x i64] } %t112, 0
  %t115 = icmp eq i64 %t114, 2
  br i1 %t115, label %bb26, label %bb27
bb26:
  %t117 = getelementptr { i64, [4 x i64] }, ptr %l11, i32 0, i32 1
  %t118 = getelementptr { i32, i64 }, ptr %t117, i32 0, i32 1
  %t119 = load i64, ptr %t118
  store i64 %t119, ptr %l12, !tbaa !24
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t121 = load i64, ptr %l12, !tbaa !24
  store i64 %t121, ptr %l62, !tbaa !24
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_44ed23dda5502268_7ffab923032619a4)
  unreachable
bb34:
  %t123 = load i64, ptr %l62, !tbaa !24
  store i64 %t123, ptr %l13, !tbaa !24
  %t124 = load ptr, ptr %l4, !tbaa !29
  store ptr %t124, ptr %l67, !tbaa !29
  %t125 = load ptr, ptr %l4, !tbaa !29
  %t126 = load i32, ptr %l5, !tbaa !23
  %t129 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t125, i32 %t126)
  store i32 %t129, ptr %l70
  br label %bb35
bb35:
  %t130 = load ptr, ptr %l67, !tbaa !29
  %t131 = load i32, ptr %l70, !tbaa !23
  %t132 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t130, i32 %t131)
  store { i64, ptr } %t132, ptr %l71
  br label %bb36
bb36:
  %t133 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t133, ptr %l72, !tbaa !27
  %t134 = load i64, ptr %l13, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i32, ptr %t137, i64 %t134
  %t139 = load i32, ptr %t138, !tbaa !33
  store i32 %t139, ptr %l14, !tbaa !23
  %t141 = load ptr, ptr %l4, !tbaa !29
  %t142 = load i32, ptr %l14, !tbaa !23
  %t145 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t141, i32 %t142)
  store i64 %t145, ptr %l77
  br label %bb37
bb37:
  %t146 = load i64, ptr %l77, !tbaa !24
  store i64 %t146, ptr %l15, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l78, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load { i64, [4 x i64] }, ptr %l10
  %t150 = load i32, ptr %l5, !tbaa !23
  %t154 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedBits(ptr %v0, ptr %s0, ptr %t148, { i64, [4 x i64] } %t149, i32 %t150)
  store { i64, ptr } %t154, ptr %l82
  br label %bb38
bb38:
  %t155 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t155, 0
  %t157 = extractvalue { i64, ptr } %t155, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  store { i64, ptr } %t161, ptr %l83, !tbaa !27
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i32, ptr %l5, !tbaa !23
  %t166 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t162, i32 %t163)
  store i64 %t166, ptr %l86
  br label %bb39
bb39:
  %t167 = load i64, ptr %l86, !tbaa !24
  %t168 = mul i64 8, %t167
  store i64 %t168, ptr %l87, !tbaa !24
  %t169 = load ptr, ptr %l4, !tbaa !29
  %t170 = load i32, ptr %l5, !tbaa !23
  %t173 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %s3, ptr %t169, i32 %t170)
  store { i64, ptr } %t173, ptr %l90
  br label %bb40
bb40:
  %t174 = load i64, ptr %l13, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i64, ptr %t177, i64 %t174
  %t179 = load i64, ptr %t178, !tbaa !34
  store i64 %t179, ptr %l92, !tbaa !24
  %t180 = load i64, ptr %l15, !tbaa !24
  store i64 %t180, ptr %l93, !tbaa !24
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l94, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l95, !tbaa !29
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load %"compiler/mir:Range", ptr %l9
  %t187 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t183, %"compiler/mir:Range" %t184, i64 2)
  store { i64, [4 x i64] } %t187, ptr %l98
  br label %bb41
bb41:
  %t188 = load i32, ptr %l14, !tbaa !23
  %t189 = load ptr, ptr %l95, !tbaa !29
  %t190 = load { i64, [4 x i64] }, ptr %l98
  %t192 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t189, { i64, [4 x i64] } %t190, i32 %t188)
  store { i64, ptr } %t192, ptr %l100
  br label %bb42
bb42:
  %t193 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t193, 0
  %t195 = extractvalue { i64, ptr } %t193, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load i32, ptr %l14, !tbaa !23
  %t201 = load i64, ptr %l15, !tbaa !24
  %t202 = load ptr, ptr %l94, !tbaa !29
  %t206 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %s0, ptr %s0, ptr %t202, { i64, ptr } %t199, i32 %t200, i64 %t201)
  store { i64, ptr } %t206, ptr %l104
  br label %bb43
bb43:
  %t207 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t207, 0
  %t209 = extractvalue { i64, ptr } %t207, 1
  %t210 = mul i64 %t208, 1
  %t211 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t210)
  call void @llvm.memcpy.p0.p0.i64(ptr %t211, ptr %t209, i64 %t210, i1 false)
  %t212 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  %t214 = load ptr, ptr %l78, !tbaa !29
  %t215 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t216 = load i64, ptr %l87, !tbaa !24
  %t217 = load i64, ptr %l92, !tbaa !24
  %t218 = load i64, ptr %l93, !tbaa !24
  %t220 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t214, { i64, ptr } %t215, i64 %t216, i64 %t217, i64 %t218, { i64, ptr } %t213)
  store { i64, ptr } %t220, ptr %l106
  br label %bb44
bb44:
  %t221 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  %t223 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  store i64 %t224, ptr %l108, !tbaa !24
  %t226 = load i64, ptr %l108, !tbaa !24
  %t227 = icmp eq i64 %t222, %t226
  br i1 %t227, label %bb45, label %bb46
bb45:
  %t229 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = load i64, ptr %l108, !tbaa !24
  %t234 = mul i64 %t233, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t230, ptr %t232, i64 %t234, i1 false)
  br label %bb47
bb46:
  %t235 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t235, ptr %l6, !tbaa !27
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s3)
  br label %bb53
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb52:
  call void @__olang_check_failed(ptr @olang_loc_745b41379bd01239_c904106b8ad08895)
  unreachable
bb53:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t241 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s0, ptr %t237, %"compiler/mir:Lvalue" %a1)
  store { { i64, ptr }, i32 } %t241, ptr %l113
  br label %bb54
bb54:
  %t242 = load { { i64, ptr }, i32 }, ptr %l113
  store { { i64, ptr }, i32 } %t242, ptr %l16
  %t243 = getelementptr { { i64, ptr }, i32 }, ptr %l16, i32 0, i32 0
  %t244 = load { i64, ptr }, ptr %t243, !tbaa !27
  store { i64, ptr } %t244, ptr %l17, !tbaa !27
  %t246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t246, ptr %l115, !tbaa !29
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load i32, ptr %l5, !tbaa !23
  %t251 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t247, i32 %t248)
  store i64 %t251, ptr %l118
  br label %bb55
bb55:
  %t252 = load i64, ptr %l118, !tbaa !24
  %t253 = mul i64 8, %t252
  %t254 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t257 = call i64 @__olang_fmt_i64(ptr null, i64 %t253)
  %t258 = add i64 %t255, %t257
  %t259 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t258)
  call void @olang_textcopy(ptr %t259, ptr %t254, i64 %t255)
  %t260 = getelementptr i8, ptr %t259, i64 %t255
  %t261 = call i64 @__olang_fmt_i64(ptr %t260, i64 %t253)
  %t262 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t259, 1
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = extractvalue { i64, ptr } %t263, 1
  %t267 = mul i64 %t265, 1
  %t268 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t267)
  call void @llvm.memcpy.p0.p0.i64(ptr %t268, ptr %t266, i64 %t267, i1 false)
  %t269 = insertvalue { i64, ptr } undef, i64 %t265, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t268, 1
  %t271 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t273 = load ptr, ptr %l115, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t273, { i64, ptr } %t270, { i64, ptr } %t271, { i64, ptr } %t272, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedMake(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/mir:Range" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l20 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l45 = alloca i64
  %l48 = alloca i64
  %l67 = alloca { i64, ptr }
  %l70 = alloca i64
  %l71 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca ptr
  %l78 = alloca ptr
  %l82 = alloca { i64, [4 x i64] }
  %l83 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t9, i32 %t10)
  store i64 %t13, ptr %l20
  br label %bb1
bb1:
  %t14 = load i64, ptr %l20, !tbaa !24
  %t15 = mul i64 8, %t14
  store i64 %t15, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp eq i64 %t17, 0
  br i1 %t19, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t21, ptr %l25, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l26, !tbaa !24
  %t24 = load i64, ptr %l26, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l26, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t35, ptr %l25, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t36 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t37 = load ptr, ptr %l3, !tbaa !29
  store ptr %t37, ptr %l28, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l31
  br label %bb5
bb5:
  %t43 = load ptr, ptr %l28, !tbaa !29
  %t44 = load i32, ptr %l31, !tbaa !23
  %t45 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t43, i32 %t44)
  store { i64, ptr } %t45, ptr %l32
  br label %bb6
bb6:
  %t46 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t46, ptr %l5, !tbaa !27
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %s0, ptr %t47, i32 %t48)
  store { i64, ptr } %t51, ptr %l35
  br label %bb7
bb7:
  %t52 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t52, ptr %l6, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t53, ptr %l37, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l38, !tbaa !24
  %t56 = load i64, ptr %l38, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l39, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l38, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t67, ptr %lp7
  %t68 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t69 = load ptr, ptr %lp7
  store { i64, ptr } %t68, ptr %t69, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t70 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  store i64 %t72, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = icmp sgt i64 %t74, %t75
  br i1 %t78, label %bb8, label %bb9
bb8:
  %t80 = load i64, ptr %l10, !tbaa !24
  %t82 = icmp sgt i64 %t80, 0
  br i1 %t82, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb13
bb10:
  %t84 = load i64, ptr %l9, !tbaa !24
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = sub i64 %t84, %t85
  %t89 = load i64, ptr %l10, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t94 = sub i64 %t92, 1
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = sdiv i64 %t94, %t95
  store i64 %t98, ptr %l48, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb12
bb12:
  %t100 = load i64, ptr %l48, !tbaa !24
  store i64 %t100, ptr %l45, !tbaa !24
  br label %bb13
bb13:
  %t101 = load i64, ptr %l45, !tbaa !24
  store i64 %t101, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb14
bb14:
  %t102 = load i64, ptr %l12, !tbaa !24
  %t103 = load i64, ptr %l11, !tbaa !24
  %t106 = icmp slt i64 %t102, %t103
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb15, label %bb16
bb15:
  br label %bb27
bb16:
  br label %bb17
bb17:
  %t110 = load i64, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l12, !tbaa !24
  %t112 = load i64, ptr %l10, !tbaa !24
  %t115 = mul i64 %t111, %t112
  %t118 = add i64 %t110, %t115
  store i64 %t118, ptr %l13, !tbaa !24
  %t120 = load ptr, ptr %l3, !tbaa !29
  %t121 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t121, ptr %l67, !tbaa !27
  %t122 = load i64, ptr %l13, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i32, ptr %t125, i64 %t122
  %t127 = load i32, ptr %t126, !tbaa !33
  %t130 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t120, i32 %t127)
  store i64 %t130, ptr %l70
  br label %bb18
bb18:
  %t131 = load i64, ptr %l70, !tbaa !24
  store i64 %t131, ptr %l14, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l71, !tbaa !29
  %t133 = load ptr, ptr %lp7
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  store { i64, ptr } %t134, ptr %l72, !tbaa !27
  %t135 = load i64, ptr %l4, !tbaa !24
  store i64 %t135, ptr %l73, !tbaa !24
  %t136 = load i64, ptr %l13, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr i64, ptr %t139, i64 %t136
  %t141 = load i64, ptr %t140, !tbaa !34
  store i64 %t141, ptr %l75, !tbaa !24
  %t142 = load i64, ptr %l14, !tbaa !24
  store i64 %t142, ptr %l76, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l77, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l78, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i64, ptr %l13, !tbaa !24
  %t151 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t145, %"compiler/mir:Range" %a2, i64 %t147)
  store { i64, [4 x i64] } %t151, ptr %l82
  br label %bb19
bb19:
  %t152 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t152, ptr %l83, !tbaa !27
  %t153 = load i64, ptr %l13, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t153
  %t158 = load i32, ptr %t157, !tbaa !33
  %t159 = load ptr, ptr %l78, !tbaa !29
  %t160 = load { i64, [4 x i64] }, ptr %l82
  %t162 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %t159, { i64, [4 x i64] } %t160, i32 %t158)
  store { i64, ptr } %t162, ptr %l86
  br label %bb20
bb20:
  %t163 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  %t165 = extractvalue { i64, ptr } %t163, 1
  %t166 = mul i64 %t164, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t166)
  call void @llvm.memcpy.p0.p0.i64(ptr %t167, ptr %t165, i64 %t166, i1 false)
  %t168 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  %t170 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t170, ptr %l88, !tbaa !27
  %t171 = load i64, ptr %l13, !tbaa !24
  %t173 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr i32, ptr %t174, i64 %t171
  %t176 = load i32, ptr %t175, !tbaa !33
  %t177 = load i64, ptr %l14, !tbaa !24
  %t178 = load ptr, ptr %l77, !tbaa !29
  %t182 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %v1, ptr %v1, ptr %t178, { i64, ptr } %t169, i32 %t176, i64 %t177)
  store { i64, ptr } %t182, ptr %l92
  br label %bb21
bb21:
  %t183 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 0
  %t185 = extractvalue { i64, ptr } %t183, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  %t190 = load ptr, ptr %l71, !tbaa !29
  %t191 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t192 = load i64, ptr %l73, !tbaa !24
  %t193 = load i64, ptr %l75, !tbaa !24
  %t194 = load i64, ptr %l76, !tbaa !24
  %t196 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t190, { i64, ptr } %t191, i64 %t192, i64 %t193, i64 %t194, { i64, ptr } %t189)
  store { i64, ptr } %t196, ptr %l94
  br label %bb22
bb22:
  %t197 = load ptr, ptr %lp7
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 0
  %t200 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  store i64 %t201, ptr %l96, !tbaa !24
  %t203 = load i64, ptr %l96, !tbaa !24
  %t204 = icmp eq i64 %t199, %t203
  br i1 %t204, label %bb23, label %bb24
bb23:
  %t206 = load ptr, ptr %lp7
  %t207 = getelementptr { i64, ptr }, ptr %t206, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = load i64, ptr %l96, !tbaa !24
  %t212 = mul i64 %t211, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t208, ptr %t210, i64 %t212, i1 false)
  br label %bb25
bb24:
  %t213 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t214 = load ptr, ptr %lp7
  store { i64, ptr } %t213, ptr %t214, !tbaa !27
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t215 = load i64, ptr %l12, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l12, !tbaa !24
  br label %bb14
bb27:
  %t219 = load ptr, ptr %lp7
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t220, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l25 = alloca { i64, [1 x i64] }
  %l26 = alloca i32
  %l27 = alloca { i64, [4 x i64] }
  %l28 = alloca { i64, [2 x i64] }
  %l29 = alloca %"compiler/mir:Lvalue"
  %l30 = alloca { { i64, ptr }, i32 }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l34 = alloca i32
  %l35 = alloca %"compiler/mir:Lvalue"
  %l36 = alloca { { i64, ptr }, i32 }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i32
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, [1 x i64] }
  %l42 = alloca i32
  %l43 = alloca { i64, [4 x i64] }
  %l44 = alloca %"compiler/mir:Lvalue"
  %l45 = alloca %"compiler/mir:Lvalue"
  %l46 = alloca { i64, [4 x i64] }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %l51 = alloca i32
  %l52 = alloca i32
  %l59 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca ptr
  %l63 = alloca i1
  %l72 = alloca i1
  %l78 = alloca i32
  %l83 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l92 = alloca i1
  %l97 = alloca i1
  %l101 = alloca { i64, ptr }
  %l105 = alloca i1
  %l111 = alloca { { i64, ptr }, i32 }
  %l113 = alloca ptr
  %l116 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l123 = alloca i1
  %l133 = alloca %"compiler/mir:Local"
  %l137 = alloca i1
  %l141 = alloca i32
  %l142 = alloca ptr
  %l143 = alloca { i64, [1 x i64] }
  %l146 = alloca i64
  %l148 = alloca { i64, ptr }
  %l151 = alloca i64
  %l152 = alloca { i64, ptr }
  %l158 = alloca ptr
  %l159 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i1
  %l172 = alloca i1
  %l177 = alloca i1
  %l187 = alloca %"compiler/mir:ScopeInfo"
  %l204 = alloca %"compiler/mir:ScopeInfo"
  %l217 = alloca %"compiler/mir:ScopeInfo"
  %l231 = alloca ptr
  %l232 = alloca i1
  %l241 = alloca i1
  %l242 = alloca i1
  %l247 = alloca i1
  %l253 = alloca %"compiler/mir:ScopeInfo"
  %l258 = alloca ptr
  %l263 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l270 = alloca { i64, ptr }
  %l272 = alloca { i64, ptr }
  %l274 = alloca { i64, ptr }
  %l293 = alloca ptr
  %l295 = alloca i64
  %l301 = alloca i64
  %l313 = alloca ptr
  %l314 = alloca i1
  %l321 = alloca ptr
  %l322 = alloca i1
  %l329 = alloca ptr
  %l333 = alloca { i64, ptr }
  %l336 = alloca ptr
  %l337 = alloca i1
  %l343 = alloca ptr
  %l344 = alloca i1
  %l348 = alloca ptr
  %l349 = alloca i1
  %l356 = alloca ptr
  %l357 = alloca { i64, [4 x i64] }
  %l361 = alloca { i64, ptr }
  %l363 = alloca ptr
  %l364 = alloca i1
  %l373 = alloca { i64, [2 x i64] }
  %l374 = alloca ptr
  %l375 = alloca i32
  %l376 = alloca i64
  %l381 = alloca i64
  %l382 = alloca i32
  %l383 = alloca { i64, [2 x i64] }
  %l384 = alloca i32
  %l385 = alloca ptr
  %l389 = alloca { i64, ptr }
  %l399 = alloca i1
  %l411 = alloca ptr
  %l414 = alloca { i64, ptr }
  %l418 = alloca { i64, ptr }
  %l422 = alloca { i64, ptr }
  %l425 = alloca ptr
  %l426 = alloca i1
  %l433 = alloca { { i64, ptr }, i32 }
  %l434 = alloca { i64, ptr }
  %l435 = alloca i64
  %l436 = alloca { i64, ptr }
  %l440 = alloca i1
  %l442 = alloca i1
  %l445 = alloca i1
  %l449 = alloca ptr
  %l453 = alloca { i64, ptr }
  %l456 = alloca ptr
  %l459 = alloca { i64, ptr }
  %l462 = alloca ptr
  %l465 = alloca { i64, ptr }
  %l468 = alloca { i64, ptr }
  %l471 = alloca ptr
  %l475 = alloca { i64, ptr }
  %l476 = alloca i64
  %l477 = alloca { i64, ptr }
  %l480 = alloca ptr
  %l483 = alloca { i64, ptr }
  %l484 = alloca { i64, ptr }
  %l488 = alloca { i64, ptr }
  %l491 = alloca ptr
  %l492 = alloca i1
  %l501 = alloca { { i64, ptr }, i32 }
  %l502 = alloca { i64, ptr }
  %l503 = alloca i64
  %l504 = alloca { i64, ptr }
  %l506 = alloca ptr
  %l507 = alloca ptr
  %l510 = alloca { i64, ptr }
  %l512 = alloca { i64, ptr }
  %l515 = alloca { i64, ptr }
  %l516 = alloca ptr
  %l520 = alloca { i64, ptr }
  %l524 = alloca { i64, ptr }
  %l532 = alloca ptr
  %l533 = alloca i1
  %l544 = alloca i1
  %l551 = alloca ptr
  %l554 = alloca { i64, ptr }
  %l558 = alloca ptr
  %l559 = alloca i1
  %l570 = alloca { i64, ptr }
  %l573 = alloca { i64, ptr }
  %l574 = alloca ptr
  %l575 = alloca ptr
  %l578 = alloca i32
  %l579 = alloca i32
  %l580 = alloca i32
  %l581 = alloca ptr
  %l582 = alloca ptr
  %l586 = alloca { i64, ptr }
  %l587 = alloca { i64, ptr }
  %l590 = alloca i32
  %l591 = alloca { i64, ptr }
  %l594 = alloca i64
  %l597 = alloca { i64, ptr }
  %l606 = alloca ptr
  %l607 = alloca i1
  %l614 = alloca ptr
  %l615 = alloca i32
  %l621 = alloca %"compiler/mir:Task"
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
  %s42 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s47 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s55 = alloca %olang.scope
  %s57 = alloca %olang.scope
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
  store ptr %t16, ptr %l59, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = call %"compiler/source:Span" @compiler_2femit_2estmtSpan(ptr %v1, ptr %t17)
  store %"compiler/source:Span" %t19, ptr %l61
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t20 = load ptr, ptr %l59, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l61
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elocate(ptr %v0, ptr %t20, %"compiler/source:Span" %t21)
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t23 = load ptr, ptr %l62, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l62, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 16}
  %t29 = icmp eq i64 %t27, 0
  store i1 %t29, ptr %l63, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l63, !tbaa !21
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
  store i1 %t53, ptr %l72, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l72, !tbaa !21
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
  %t64 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %t60, %"compiler/mir:Lvalue" %t61)
  store i32 %t64, ptr %l78
  br label %bb17
bb17:
  %t65 = load i32, ptr %l78, !tbaa !23
  store i32 %t65, ptr %l6, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load %"compiler/mir:Lvalue", ptr %l3
  %t68 = load i32, ptr %l6, !tbaa !23
  %t69 = load { i64, [15 x i64] }, ptr %l4
  %t74 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedInto(ptr %v0, ptr %t66, %"compiler/mir:Lvalue" %t67, i32 %t68, { i64, [15 x i64] } %t69)
  store i1 %t74, ptr %l83
  br label %bb18
bb18:
  %t75 = load i1, ptr %l83, !tbaa !21
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
  %t84 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efillInPlace(ptr %v0, ptr %t76, %"compiler/mir:Lvalue" %t77, i32 %t78, { i64, [15 x i64] } %t79)
  store i1 %t84, ptr %l88
  br label %bb22
bb22:
  %t85 = load i1, ptr %l88, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb24:
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l6, !tbaa !23
  %t90 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %t86, i32 %t87)
  store i1 %t90, ptr %l91
  br label %bb26
bb26:
  %t91 = load i1, ptr %l91, !tbaa !21
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load %"compiler/mir:Lvalue", ptr %l3
  %t94 = load i32, ptr %l6, !tbaa !23
  %t95 = load { i64, [15 x i64] }, ptr %l4
  %t100 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eintoPlace(ptr %v0, ptr %t92, %"compiler/mir:Lvalue" %t93, i32 %t94, { i64, [15 x i64] } %t95)
  store i1 %t100, ptr %l97
  br label %bb29
bb28:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb30
bb29:
  %t101 = load i1, ptr %l97, !tbaa !21
  store i1 %t101, ptr %l92, !tbaa !21
  br label %bb30
bb30:
  %t102 = load i1, ptr %l92, !tbaa !21
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
  %t109 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ervalue(ptr %v0, ptr %s2, ptr %t103, { i64, [15 x i64] } %t104, i32 %t105)
  store { i64, ptr } %t109, ptr %l101
  br label %bb34
bb34:
  %t110 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t110, ptr %l7, !tbaa !27
  %t111 = load i32, ptr %l6, !tbaa !23
  %t112 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t115 = icmp eq i32 %t111, %t112
  br i1 %t115, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb37
bb36:
  %t117 = load i32, ptr %l6, !tbaa !23
  %t118 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t121 = icmp eq i32 %t117, %t118
  store i1 %t121, ptr %l105, !tbaa !21
  br label %bb37
bb37:
  %t123 = load i1, ptr %l105, !tbaa !21
  br i1 %t123, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb39:
  br label %bb40
bb40:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load %"compiler/mir:Lvalue", ptr %l3
  %t128 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s2, ptr %t124, %"compiler/mir:Lvalue" %t125)
  store { { i64, ptr }, i32 } %t128, ptr %l111
  br label %bb41
bb41:
  %t129 = load { { i64, ptr }, i32 }, ptr %l111
  store { { i64, ptr }, i32 } %t129, ptr %l8
  %t130 = getelementptr { { i64, ptr }, i32 }, ptr %l8, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  store { i64, ptr } %t131, ptr %l9, !tbaa !27
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l113, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l6, !tbaa !23
  %t138 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s2, ptr %t134, i32 %t135)
  store { i64, ptr } %t138, ptr %l116
  br label %bb42
bb42:
  %t139 = load { i64, ptr }, ptr %l116, !tbaa !27
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
  %t152 = load ptr, ptr %l113, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %v0, ptr %t152, { i64, ptr } %t145, { i64, ptr } %t146, { i64, ptr } %t147, { i64, ptr } %t151)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s2)
  br label %bb290
bb44:
  %t157 = load ptr, ptr %l1, !tbaa !29
  store ptr %t157, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t158 = load ptr, ptr %l122, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb45, label %bb46
bb45:
  %t161 = load ptr, ptr %l122, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 16}
  %t164 = icmp eq i64 %t162, 1
  store i1 %t164, ptr %l123, !tbaa !21
  br label %bb46
bb46:
  %t165 = load i1, ptr %l123, !tbaa !21
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
  %t178 = load i32, ptr %l10, !tbaa !23
  %t180 = sext i32 %t178 to i64
  %t183 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t177, i64 %t180)
  store %"compiler/mir:Local" %t183, ptr %l133
  br label %bb50
bb50:
  %t184 = getelementptr %"compiler/mir:Local", ptr %l133, i32 0, i32 4
  %t185 = load { i64, [1 x i64] }, ptr %t184
  store { i64, [1 x i64] } %t185, ptr %l11
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load { i64, [1 x i64] }, ptr %l11
  %t191 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t187, { i64, [1 x i64] } %t188)
  store i1 %t191, ptr %l137
  br label %bb51
bb51:
  %t192 = load i1, ptr %l137, !tbaa !21
  %t193 = xor i1 %t192, true
  br i1 %t193, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s9
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l10, !tbaa !23
  %t199 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalType(ptr %v0, ptr %t195, i32 %t196)
  store i32 %t199, ptr %l141
  br label %bb54
bb53:
  br label %bb59
bb54:
  %t200 = load i32, ptr %l141, !tbaa !23
  store i32 %t200, ptr %l12, !tbaa !23
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l142, !tbaa !29
  %t202 = load { i64, [1 x i64] }, ptr %l11
  store { i64, [1 x i64] } %t202, ptr %l143
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i32, ptr %l12, !tbaa !23
  %t207 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t203, i32 %t204)
  store i64 %t207, ptr %l146
  br label %bb55
bb55:
  %t208 = load i64, ptr %l146, !tbaa !24
  %t209 = call i64 @__olang_fmt_i64(ptr null, i64 %t208)
  %t210 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t209)
  %t211 = call i64 @__olang_fmt_i64(ptr %t210, i64 %t208)
  %t212 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t210, 1
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t216 = extractvalue { i64, ptr } %t213, 1
  %t217 = mul i64 %t215, 1
  %t218 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t217)
  call void @llvm.memcpy.p0.p0.i64(ptr %t218, ptr %t216, i64 %t217, i1 false)
  %t219 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  store { i64, ptr } %t220, ptr %l148, !tbaa !27
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load i32, ptr %l12, !tbaa !23
  %t225 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %t221, i32 %t222)
  store i64 %t225, ptr %l151
  br label %bb56
bb56:
  %t226 = load ptr, ptr %l142, !tbaa !29
  %t227 = load { i64, [1 x i64] }, ptr %l143
  %t228 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t229 = load i64, ptr %l151, !tbaa !24
  %t230 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %s9, ptr %s9, ptr %s9, ptr %t226, { i64, [1 x i64] } %t227, { i64, ptr } %t228, i64 %t229, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d119, i32 0, i32 1) })
  store { i64, ptr } %t230, ptr %l152
  br label %bb57
bb57:
  %t231 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i32, ptr %l10, !tbaa !23
  %t235 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t238 = sext i32 %t234 to i64
  %t239 = call i64 @__olang_fmt_i64(ptr null, i64 %t238)
  %t240 = add i64 %t236, %t239
  %t241 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t240)
  call void @olang_textcopy(ptr %t241, ptr %t235, i64 %t236)
  %t242 = getelementptr i8, ptr %t241, i64 %t236
  %t243 = call i64 @__olang_fmt_i64(ptr %t242, i64 %t238)
  %t244 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t245 = insertvalue { i64, ptr } %t244, ptr %t241, 1
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t248 = extractvalue { i64, ptr } %t245, 1
  %t249 = mul i64 %t247, 1
  %t250 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t249)
  call void @llvm.memcpy.p0.p0.i64(ptr %t250, ptr %t248, i64 %t249, i1 false)
  %t251 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t250, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s9, ptr %s9, ptr %s9, ptr %s9, ptr %t232, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d121, i32 0, i32 1) }, { i64, ptr } %t231, { i64, ptr } %t252, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s9)
  br label %bb59
bb59:
  br label %bb290
bb60:
  %t256 = load ptr, ptr %l1, !tbaa !29
  store ptr %t256, ptr %l158, !tbaa !29
  store i1 false, ptr %l159, !tbaa !21
  %t257 = load ptr, ptr %l158, !tbaa !29
  %t258 = icmp ne ptr %t257, null
  br i1 %t258, label %bb61, label %bb62
bb61:
  %t260 = load ptr, ptr %l158, !tbaa !29
  %t261 = load i64, ptr %t260, !range !{i64 0, i64 16}
  %t263 = icmp eq i64 %t261, 2
  store i1 %t263, ptr %l159, !tbaa !21
  br label %bb62
bb62:
  %t264 = load i1, ptr %l159, !tbaa !21
  br i1 %t264, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb290
bb66:
  %t265 = load ptr, ptr %l1, !tbaa !29
  store ptr %t265, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t266 = load ptr, ptr %l162, !tbaa !29
  %t267 = icmp ne ptr %t266, null
  br i1 %t267, label %bb67, label %bb68
bb67:
  %t269 = load ptr, ptr %l162, !tbaa !29
  %t270 = load i64, ptr %t269, !range !{i64 0, i64 16}
  %t272 = icmp eq i64 %t270, 3
  store i1 %t272, ptr %l163, !tbaa !21
  br label %bb68
bb68:
  %t273 = load i1, ptr %l163, !tbaa !21
  br i1 %t273, label %bb69, label %bb70
bb69:
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t276 = getelementptr { i64, [21 x i64] }, ptr %t274, i32 0, i32 1
  %t277 = getelementptr { %"compiler/source:Span", i32 }, ptr %t276, i32 0, i32 1
  %t278 = load i32, ptr %t277
  store i32 %t278, ptr %l14, !tbaa !23
  br label %bb71
bb70:
  br label %bb103
bb71:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/emit:fnEm", ptr %t280, i32 0, i32 25
  %t283 = load i32, ptr %l14, !tbaa !23
  %t285 = sext i32 %t283 to i64
  %t288 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t282, i64 %t285)
  store i1 %t288, ptr %l172
  br label %bb72
bb72:
  %t289 = load i1, ptr %l172, !tbaa !21
  br i1 %t289, label %bb73, label %bb74
bb73:
  br label %ret
bb74:
  br label %bb75
bb75:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/emit:fnEm", ptr %t290, i32 0, i32 24
  %t293 = load i32, ptr %l14, !tbaa !23
  %t295 = sext i32 %t293 to i64
  %t298 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t292, i64 %t295)
  store i1 %t298, ptr %l177
  br label %bb76
bb76:
  %t299 = load i1, ptr %l177, !tbaa !21
  br i1 %t299, label %bb77, label %bb78
bb77:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/emit:fnEm", ptr %t300, i32 0, i32 26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2eClear_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %t302)
  br label %bb79
bb78:
  br label %bb81
bb79:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/emit:fnEm", ptr %t304, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eClear_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t306)
  br label %bb80
bb80:
  br label %ret
bb81:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/emit:fnEm", ptr %t308, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !29
  %t313 = getelementptr %"compiler/mir:Fn", ptr %t311, i32 0, i32 8
  %t314 = load i32, ptr %l14, !tbaa !23
  %t316 = sext i32 %t314 to i64
  %t319 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t313, i64 %t316)
  store %"compiler/mir:ScopeInfo" %t319, ptr %l187
  br label %bb82
bb82:
  %t320 = getelementptr %"compiler/mir:ScopeInfo", ptr %l187, i32 0, i32 0
  %t321 = load i32, ptr %t320, !range !{i32 0, i32 7}
  %t323 = trunc i64 6 to i32
  %t324 = icmp eq i32 %t321, %t323
  br i1 %t324, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s16
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load i32, ptr %l14, !tbaa !23
  %t328 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t329 = extractvalue { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t331 = sext i32 %t327 to i64
  %t332 = call i64 @__olang_fmt_i64(ptr null, i64 %t331)
  %t333 = add i64 %t329, %t332
  %t334 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t333)
  call void @olang_textcopy(ptr %t334, ptr %t328, i64 %t329)
  %t335 = getelementptr i8, ptr %t334, i64 %t329
  %t336 = call i64 @__olang_fmt_i64(ptr %t335, i64 %t331)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t334, 1
  %t340 = extractvalue { i64, ptr } %t338, 0
  %t341 = extractvalue { i64, ptr } %t338, 1
  %t342 = mul i64 %t340, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t342)
  call void @llvm.memcpy.p0.p0.i64(ptr %t343, ptr %t341, i64 %t342, i1 false)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s16, ptr %t326, { i64, ptr } %t345)
  br label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s19
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/emit:fnEm", ptr %t348, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !29
  %t353 = getelementptr %"compiler/mir:Fn", ptr %t351, i32 0, i32 8
  %t354 = load i32, ptr %l14, !tbaa !23
  %t356 = sext i32 %t354 to i64
  %t359 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t353, i64 %t356)
  store %"compiler/mir:ScopeInfo" %t359, ptr %l204
  br label %bb87
bb85:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load i32, ptr %l14, !tbaa !23
  %t362 = load i32, ptr %l14, !tbaa !23
  %t363 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t364 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t366 = sext i32 %t361 to i64
  %t367 = call i64 @__olang_fmt_i64(ptr null, i64 %t366)
  %t368 = add i64 %t364, %t367
  %t369 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t370 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t371 = add i64 %t368, %t370
  %t373 = sext i32 %t362 to i64
  %t374 = call i64 @__olang_fmt_i64(ptr null, i64 %t373)
  %t375 = add i64 %t371, %t374
  %t376 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t375)
  call void @olang_textcopy(ptr %t376, ptr %t363, i64 %t364)
  %t377 = getelementptr i8, ptr %t376, i64 %t364
  %t378 = call i64 @__olang_fmt_i64(ptr %t377, i64 %t366)
  %t379 = getelementptr i8, ptr %t377, i64 %t367
  call void @olang_textcopy(ptr %t379, ptr %t369, i64 %t370)
  %t380 = getelementptr i8, ptr %t379, i64 %t370
  %t381 = call i64 @__olang_fmt_i64(ptr %t380, i64 %t373)
  %t382 = insertvalue { i64, ptr } undef, i64 %t375, 0
  %t383 = insertvalue { i64, ptr } %t382, ptr %t376, 1
  %t385 = extractvalue { i64, ptr } %t383, 0
  %t386 = extractvalue { i64, ptr } %t383, 1
  %t387 = mul i64 %t385, 1
  %t388 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t387)
  call void @llvm.memcpy.p0.p0.i64(ptr %t388, ptr %t386, i64 %t387, i1 false)
  %t389 = insertvalue { i64, ptr } undef, i64 %t385, 0
  %t390 = insertvalue { i64, ptr } %t389, ptr %t388, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s16, ptr %t360, { i64, ptr } %t390)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s16)
  br label %bb102
bb87:
  %t393 = getelementptr %"compiler/mir:ScopeInfo", ptr %l204, i32 0, i32 0
  %t394 = load i32, ptr %t393, !range !{i32 0, i32 7}
  %t396 = trunc i64 4 to i32
  %t397 = icmp eq i32 %t394, %t396
  br i1 %t397, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s20
  %t399 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s20, ptr %t399, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d125, i32 0, i32 1) })
  br label %bb90
bb89:
  br label %bb91
bb90:
  call void @__olang_scope_close(ptr %s20)
  br label %bb91
bb91:
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t402 = load i32, ptr %l14, !tbaa !23
  %t403 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t404 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t406 = sext i32 %t402 to i64
  %t407 = call i64 @__olang_fmt_i64(ptr null, i64 %t406)
  %t408 = add i64 %t404, %t407
  %t409 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t408)
  call void @olang_textcopy(ptr %t409, ptr %t403, i64 %t404)
  %t410 = getelementptr i8, ptr %t409, i64 %t404
  %t411 = call i64 @__olang_fmt_i64(ptr %t410, i64 %t406)
  %t412 = insertvalue { i64, ptr } undef, i64 %t408, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t409, 1
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t416 = extractvalue { i64, ptr } %t413, 1
  %t417 = mul i64 %t415, 1
  %t418 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t417)
  call void @llvm.memcpy.p0.p0.i64(ptr %t418, ptr %t416, i64 %t417, i1 false)
  %t419 = insertvalue { i64, ptr } undef, i64 %t415, 0
  %t420 = insertvalue { i64, ptr } %t419, ptr %t418, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s19, ptr %t401, { i64, ptr } %t420)
  br label %bb92
bb92:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = getelementptr %"compiler/emit:fnEm", ptr %t423, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !29
  %t428 = getelementptr %"compiler/mir:Fn", ptr %t426, i32 0, i32 8
  %t429 = load i32, ptr %l14, !tbaa !23
  %t431 = sext i32 %t429 to i64
  %t434 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t428, i64 %t431)
  store %"compiler/mir:ScopeInfo" %t434, ptr %l217
  br label %bb93
bb93:
  %t435 = getelementptr %"compiler/mir:ScopeInfo", ptr %l217, i32 0, i32 0
  %t436 = load i32, ptr %t435, !range !{i32 0, i32 7}
  %t438 = trunc i64 3 to i32
  %t439 = icmp eq i32 %t436, %t438
  store i1 %t439, ptr %l15, !tbaa !21
  %t441 = load i1, ptr %l15, !tbaa !21
  br i1 %t441, label %bb94, label %bb95
bb94:
  store %olang.scope zeroinitializer, ptr %s22
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load i32, ptr %l14, !tbaa !23
  %t445 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t446 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t448 = sext i32 %t444 to i64
  %t449 = call i64 @__olang_fmt_i64(ptr null, i64 %t448)
  %t450 = add i64 %t446, %t449
  %t451 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t450)
  call void @olang_textcopy(ptr %t451, ptr %t445, i64 %t446)
  %t452 = getelementptr i8, ptr %t451, i64 %t446
  %t453 = call i64 @__olang_fmt_i64(ptr %t452, i64 %t448)
  %t454 = insertvalue { i64, ptr } undef, i64 %t450, 0
  %t455 = insertvalue { i64, ptr } %t454, ptr %t451, 1
  %t457 = extractvalue { i64, ptr } %t455, 0
  %t458 = extractvalue { i64, ptr } %t455, 1
  %t459 = mul i64 %t457, 1
  %t460 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t459)
  call void @llvm.memcpy.p0.p0.i64(ptr %t460, ptr %t458, i64 %t459, i1 false)
  %t461 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t462 = insertvalue { i64, ptr } %t461, ptr %t460, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s22, ptr %t443, { i64, ptr } %t462)
  br label %bb96
bb95:
  br label %bb97
bb96:
  call void @__olang_scope_close(ptr %s22)
  br label %bb97
bb97:
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t467 = getelementptr %"compiler/emit:fnEm", ptr %t465, i32 0, i32 0
  %t468 = load ptr, ptr %t467, !tbaa !29
  %t470 = getelementptr %"compiler/emit:Emitter", ptr %t468, i32 0, i32 4
  %t471 = load i1, ptr %t470, !tbaa !21
  br i1 %t471, label %bb98, label %bb99
bb98:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i32, ptr %l14, !tbaa !23
  %t475 = load i1, ptr %l15, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPush(ptr %v0, ptr %t473, i32 %t474, i1 %t475)
  br label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s19)
  br label %bb102
bb102:
  br label %bb290
bb103:
  %t479 = load ptr, ptr %l1, !tbaa !29
  store ptr %t479, ptr %l231, !tbaa !29
  store i1 false, ptr %l232, !tbaa !21
  %t480 = load ptr, ptr %l231, !tbaa !29
  %t481 = icmp ne ptr %t480, null
  br i1 %t481, label %bb104, label %bb105
bb104:
  %t483 = load ptr, ptr %l231, !tbaa !29
  %t484 = load i64, ptr %t483, !range !{i64 0, i64 16}
  %t486 = icmp eq i64 %t484, 4
  store i1 %t486, ptr %l232, !tbaa !21
  br label %bb105
bb105:
  %t487 = load i1, ptr %l232, !tbaa !21
  br i1 %t487, label %bb106, label %bb107
bb106:
  %t488 = load ptr, ptr %l1, !tbaa !29
  %t490 = getelementptr { i64, [21 x i64] }, ptr %t488, i32 0, i32 1
  %t491 = getelementptr { %"compiler/source:Span", i32 }, ptr %t490, i32 0, i32 1
  %t492 = load i32, ptr %t491
  store i32 %t492, ptr %l16, !tbaa !23
  br label %bb108
bb107:
  br label %bb140
bb108:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t496 = getelementptr %"compiler/emit:fnEm", ptr %t494, i32 0, i32 24
  %t497 = load i32, ptr %l16, !tbaa !23
  %t499 = sext i32 %t497 to i64
  %t502 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t496, i64 %t499)
  store i1 %t502, ptr %l241
  br label %bb109
bb109:
  %t503 = load i1, ptr %l241, !tbaa !21
  br i1 %t503, label %bb110, label %bb111
bb110:
  store i1 true, ptr %l242, !tbaa !21
  br label %bb113
bb111:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = getelementptr %"compiler/emit:fnEm", ptr %t504, i32 0, i32 25
  %t507 = load i32, ptr %l16, !tbaa !23
  %t509 = sext i32 %t507 to i64
  %t512 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t506, i64 %t509)
  store i1 %t512, ptr %l247
  br label %bb112
bb112:
  %t513 = load i1, ptr %l247, !tbaa !21
  store i1 %t513, ptr %l242, !tbaa !21
  br label %bb113
bb113:
  %t514 = load i1, ptr %l242, !tbaa !21
  br i1 %t514, label %bb114, label %bb115
bb114:
  br label %ret
bb115:
  br label %bb116
bb116:
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t517 = getelementptr %"compiler/emit:fnEm", ptr %t515, i32 0, i32 1
  %t518 = load ptr, ptr %t517, !tbaa !29
  %t520 = getelementptr %"compiler/mir:Fn", ptr %t518, i32 0, i32 8
  %t521 = load i32, ptr %l16, !tbaa !23
  %t523 = sext i32 %t521 to i64
  %t526 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t520, i64 %t523)
  store %"compiler/mir:ScopeInfo" %t526, ptr %l253
  br label %bb117
bb117:
  %t527 = getelementptr %"compiler/mir:ScopeInfo", ptr %l253, i32 0, i32 0
  %t528 = load i32, ptr %t527, !range !{i32 0, i32 7}
  %t530 = trunc i64 6 to i32
  %t531 = icmp eq i32 %t528, %t530
  br i1 %t531, label %bb118, label %bb119
bb118:
  store %olang.scope zeroinitializer, ptr %s27
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t535 = getelementptr %"compiler/emit:fnEm", ptr %t533, i32 0, i32 0
  %t536 = load ptr, ptr %t535, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s27, ptr %t536, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d128, i32 0, i32 1) })
  br label %bb120
bb119:
  store %olang.scope zeroinitializer, ptr %s33
  %t538 = load ptr, ptr %l0, !tbaa !29
  store ptr %t538, ptr %l293, !tbaa !29
  %t539 = load i32, ptr %l16, !tbaa !23
  %t541 = sext i32 %t539 to i64
  store i64 %t541, ptr %l295, !tbaa !24
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t545 = getelementptr %"compiler/emit:fnEm", ptr %t543, i32 0, i32 34
  %t546 = load i64, ptr %t545, !tbaa !24
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = getelementptr %"compiler/emit:fnEm", ptr %t547, i32 0, i32 35
  %t550 = load i64, ptr %t549, !tbaa !24
  %t554 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkKey(ptr %v0, ptr %t542, i64 %t546, i64 %t550)
  store i64 %t554, ptr %l301
  br label %bb131
bb120:
  %t555 = load ptr, ptr %l0, !tbaa !29
  store ptr %t555, ptr %l258, !tbaa !29
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t557 = load i32, ptr %l16, !tbaa !23
  %t558 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t559 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t561 = sext i32 %t557 to i64
  %t562 = call i64 @__olang_fmt_i64(ptr null, i64 %t561)
  %t563 = add i64 %t559, %t562
  %t564 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t565 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t566 = add i64 %t563, %t565
  %t567 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t566)
  call void @olang_textcopy(ptr %t567, ptr %t558, i64 %t559)
  %t568 = getelementptr i8, ptr %t567, i64 %t559
  %t569 = call i64 @__olang_fmt_i64(ptr %t568, i64 %t561)
  %t570 = getelementptr i8, ptr %t568, i64 %t562
  call void @olang_textcopy(ptr %t570, ptr %t564, i64 %t565)
  %t571 = insertvalue { i64, ptr } undef, i64 %t566, 0
  %t572 = insertvalue { i64, ptr } %t571, ptr %t567, 1
  %t574 = extractvalue { i64, ptr } %t572, 0
  %t575 = extractvalue { i64, ptr } %t572, 1
  %t576 = mul i64 %t574, 1
  %t577 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t576)
  call void @llvm.memcpy.p0.p0.i64(ptr %t577, ptr %t575, i64 %t576, i1 false)
  %t578 = insertvalue { i64, ptr } undef, i64 %t574, 0
  %t579 = insertvalue { i64, ptr } %t578, ptr %t577, 1
  %t582 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s27, ptr %s27, ptr %t556, { i64, ptr } %t579)
  store { i64, ptr } %t582, ptr %l263
  br label %bb121
bb121:
  %t583 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t584 = extractvalue { i64, ptr } %t583, 0
  %t585 = extractvalue { i64, ptr } %t583, 1
  %t586 = mul i64 %t584, 1
  %t587 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t586)
  call void @llvm.memcpy.p0.p0.i64(ptr %t587, ptr %t585, i64 %t586, i1 false)
  %t588 = insertvalue { i64, ptr } undef, i64 %t584, 0
  %t589 = insertvalue { i64, ptr } %t588, ptr %t587, 1
  %t590 = load ptr, ptr %l258, !tbaa !29
  %t592 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s27, ptr %s27, ptr %s27, ptr %s27, ptr %t590, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d131, i32 0, i32 1) }, { i64, ptr } %t589, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) })
  store { i64, ptr } %t592, ptr %l265
  br label %bb122
bb122:
  %t593 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t596 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t597 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t599 = extractvalue { i64, ptr } %t593, 1
  %t600 = extractvalue { i64, ptr } %t593, 0
  %t601 = add i64 %t597, %t600
  %t602 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t603 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t604 = add i64 %t601, %t603
  %t605 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t604)
  call void @olang_textcopy(ptr %t605, ptr %t596, i64 %t597)
  %t606 = getelementptr i8, ptr %t605, i64 %t597
  call void @olang_textcopy(ptr %t606, ptr %t599, i64 %t600)
  %t607 = getelementptr i8, ptr %t606, i64 %t600
  call void @olang_textcopy(ptr %t607, ptr %t602, i64 %t603)
  %t608 = insertvalue { i64, ptr } undef, i64 %t604, 0
  %t609 = insertvalue { i64, ptr } %t608, ptr %t605, 1
  %t611 = extractvalue { i64, ptr } %t609, 0
  %t612 = extractvalue { i64, ptr } %t609, 1
  %t613 = mul i64 %t611, 1
  %t614 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t613)
  call void @llvm.memcpy.p0.p0.i64(ptr %t614, ptr %t612, i64 %t613, i1 false)
  %t615 = insertvalue { i64, ptr } undef, i64 %t611, 0
  %t616 = insertvalue { i64, ptr } %t615, ptr %t614, 1
  %t619 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s27, ptr %s27, ptr %t594, { i64, ptr } %t616)
  store { i64, ptr } %t619, ptr %l270
  br label %bb123
bb123:
  %t620 = load { i64, ptr }, ptr %l270, !tbaa !27
  store { i64, ptr } %t620, ptr %l18, !tbaa !27
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s27, ptr %s27, ptr %t621, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d135, i32 0, i32 1) })
  store { i64, ptr } %t623, ptr %l272
  br label %bb124
bb124:
  %t624 = load { i64, ptr }, ptr %l272, !tbaa !27
  store { i64, ptr } %t624, ptr %l19, !tbaa !27
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t627 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s27, ptr %s27, ptr %t625, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d136, i32 0, i32 1) })
  store { i64, ptr } %t627, ptr %l274
  br label %bb125
bb125:
  %t628 = load { i64, ptr }, ptr %l274, !tbaa !27
  store { i64, ptr } %t628, ptr %l20, !tbaa !27
  %t629 = load ptr, ptr %l0, !tbaa !29
  %t630 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t631 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t632 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t633 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t634 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t636 = extractvalue { i64, ptr } %t630, 1
  %t637 = extractvalue { i64, ptr } %t630, 0
  %t638 = add i64 %t634, %t637
  %t639 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t640 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t641 = add i64 %t638, %t640
  %t643 = extractvalue { i64, ptr } %t631, 1
  %t644 = extractvalue { i64, ptr } %t631, 0
  %t645 = add i64 %t641, %t644
  %t646 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t647 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t648 = add i64 %t645, %t647
  %t650 = extractvalue { i64, ptr } %t632, 1
  %t651 = extractvalue { i64, ptr } %t632, 0
  %t652 = add i64 %t648, %t651
  %t653 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t652)
  call void @olang_textcopy(ptr %t653, ptr %t633, i64 %t634)
  %t654 = getelementptr i8, ptr %t653, i64 %t634
  call void @olang_textcopy(ptr %t654, ptr %t636, i64 %t637)
  %t655 = getelementptr i8, ptr %t654, i64 %t637
  call void @olang_textcopy(ptr %t655, ptr %t639, i64 %t640)
  %t656 = getelementptr i8, ptr %t655, i64 %t640
  call void @olang_textcopy(ptr %t656, ptr %t643, i64 %t644)
  %t657 = getelementptr i8, ptr %t656, i64 %t644
  call void @olang_textcopy(ptr %t657, ptr %t646, i64 %t647)
  %t658 = getelementptr i8, ptr %t657, i64 %t647
  call void @olang_textcopy(ptr %t658, ptr %t650, i64 %t651)
  %t659 = insertvalue { i64, ptr } undef, i64 %t652, 0
  %t660 = insertvalue { i64, ptr } %t659, ptr %t653, 1
  %t662 = extractvalue { i64, ptr } %t660, 0
  %t663 = extractvalue { i64, ptr } %t660, 1
  %t664 = mul i64 %t662, 1
  %t665 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t664)
  call void @llvm.memcpy.p0.p0.i64(ptr %t665, ptr %t663, i64 %t664, i1 false)
  %t666 = insertvalue { i64, ptr } undef, i64 %t662, 0
  %t667 = insertvalue { i64, ptr } %t666, ptr %t665, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s27, ptr %t629, { i64, ptr } %t667)
  br label %bb126
bb126:
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load { i64, ptr }, ptr %l19, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s27, ptr %t670, { i64, ptr } %t671)
  br label %bb127
bb127:
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t675 = load i32, ptr %l16, !tbaa !23
  %t676 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t677 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t679 = sext i32 %t675 to i64
  %t680 = call i64 @__olang_fmt_i64(ptr null, i64 %t679)
  %t681 = add i64 %t677, %t680
  %t682 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t683 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t684 = add i64 %t681, %t683
  %t685 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t684)
  call void @olang_textcopy(ptr %t685, ptr %t676, i64 %t677)
  %t686 = getelementptr i8, ptr %t685, i64 %t677
  %t687 = call i64 @__olang_fmt_i64(ptr %t686, i64 %t679)
  %t688 = getelementptr i8, ptr %t686, i64 %t680
  call void @olang_textcopy(ptr %t688, ptr %t682, i64 %t683)
  %t689 = insertvalue { i64, ptr } undef, i64 %t684, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t685, 1
  %t692 = extractvalue { i64, ptr } %t690, 0
  %t693 = extractvalue { i64, ptr } %t690, 1
  %t694 = mul i64 %t692, 1
  %t695 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t694)
  call void @llvm.memcpy.p0.p0.i64(ptr %t695, ptr %t693, i64 %t694, i1 false)
  %t696 = insertvalue { i64, ptr } undef, i64 %t692, 0
  %t697 = insertvalue { i64, ptr } %t696, ptr %t695, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s27, ptr %t674, { i64, ptr } %t697)
  br label %bb128
bb128:
  %t700 = load ptr, ptr %l0, !tbaa !29
  %t701 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t702 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t703 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t705 = extractvalue { i64, ptr } %t701, 1
  %t706 = extractvalue { i64, ptr } %t701, 0
  %t707 = add i64 %t703, %t706
  %t708 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t707)
  call void @olang_textcopy(ptr %t708, ptr %t702, i64 %t703)
  %t709 = getelementptr i8, ptr %t708, i64 %t703
  call void @olang_textcopy(ptr %t709, ptr %t705, i64 %t706)
  %t710 = insertvalue { i64, ptr } undef, i64 %t707, 0
  %t711 = insertvalue { i64, ptr } %t710, ptr %t708, 1
  %t713 = extractvalue { i64, ptr } %t711, 0
  %t714 = extractvalue { i64, ptr } %t711, 1
  %t715 = mul i64 %t713, 1
  %t716 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t715)
  call void @llvm.memcpy.p0.p0.i64(ptr %t716, ptr %t714, i64 %t715, i1 false)
  %t717 = insertvalue { i64, ptr } undef, i64 %t713, 0
  %t718 = insertvalue { i64, ptr } %t717, ptr %t716, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s27, ptr %t700, { i64, ptr } %t718)
  br label %bb129
bb129:
  %t721 = load ptr, ptr %l0, !tbaa !29
  %t722 = load { i64, ptr }, ptr %l20, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s27, ptr %t721, { i64, ptr } %t722)
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s27)
  br label %bb139
bb131:
  %t725 = load ptr, ptr %l293, !tbaa !29
  %t726 = load i64, ptr %l295, !tbaa !24
  %t727 = load i64, ptr %l301, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkEnd(ptr %v0, ptr %t725, i64 %t726, i64 %t727)
  br label %bb132
bb132:
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t730 = getelementptr %"compiler/emit:fnEm", ptr %t728, i32 0, i32 0
  %t731 = load ptr, ptr %t730, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s33, ptr %t731, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d142, i32 0, i32 1) })
  br label %bb133
bb133:
  %t733 = load ptr, ptr %l0, !tbaa !29
  %t734 = load i32, ptr %l16, !tbaa !23
  %t735 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t736 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t738 = sext i32 %t734 to i64
  %t739 = call i64 @__olang_fmt_i64(ptr null, i64 %t738)
  %t740 = add i64 %t736, %t739
  %t741 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t742 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t743 = add i64 %t740, %t742
  %t744 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t743)
  call void @olang_textcopy(ptr %t744, ptr %t735, i64 %t736)
  %t745 = getelementptr i8, ptr %t744, i64 %t736
  %t746 = call i64 @__olang_fmt_i64(ptr %t745, i64 %t738)
  %t747 = getelementptr i8, ptr %t745, i64 %t739
  call void @olang_textcopy(ptr %t747, ptr %t741, i64 %t742)
  %t748 = insertvalue { i64, ptr } undef, i64 %t743, 0
  %t749 = insertvalue { i64, ptr } %t748, ptr %t744, 1
  %t751 = extractvalue { i64, ptr } %t749, 0
  %t752 = extractvalue { i64, ptr } %t749, 1
  %t753 = mul i64 %t751, 1
  %t754 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t753)
  call void @llvm.memcpy.p0.p0.i64(ptr %t754, ptr %t752, i64 %t753, i1 false)
  %t755 = insertvalue { i64, ptr } undef, i64 %t751, 0
  %t756 = insertvalue { i64, ptr } %t755, ptr %t754, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s33, ptr %t733, { i64, ptr } %t756)
  br label %bb134
bb134:
  %t759 = load ptr, ptr %l0, !tbaa !29
  %t761 = getelementptr %"compiler/emit:fnEm", ptr %t759, i32 0, i32 0
  %t762 = load ptr, ptr %t761, !tbaa !29
  %t764 = getelementptr %"compiler/emit:Emitter", ptr %t762, i32 0, i32 4
  %t765 = load i1, ptr %t764, !tbaa !21
  br i1 %t765, label %bb135, label %bb136
bb135:
  %t767 = load ptr, ptr %l0, !tbaa !29
  %t768 = load i32, ptr %l16, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPop(ptr %v0, ptr %t767, i32 %t768)
  br label %bb137
bb136:
  br label %bb138
bb137:
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s33)
  br label %bb139
bb139:
  br label %bb290
bb140:
  %t771 = load ptr, ptr %l1, !tbaa !29
  store ptr %t771, ptr %l313, !tbaa !29
  store i1 false, ptr %l314, !tbaa !21
  %t772 = load ptr, ptr %l313, !tbaa !29
  %t773 = icmp ne ptr %t772, null
  br i1 %t773, label %bb141, label %bb142
bb141:
  %t775 = load ptr, ptr %l313, !tbaa !29
  %t776 = load i64, ptr %t775, !range !{i64 0, i64 16}
  %t778 = icmp eq i64 %t776, 11
  store i1 %t778, ptr %l314, !tbaa !21
  br label %bb142
bb142:
  %t779 = load i1, ptr %l314, !tbaa !21
  br i1 %t779, label %bb143, label %bb144
bb143:
  %t780 = load ptr, ptr %l1, !tbaa !29
  %t782 = getelementptr { i64, [21 x i64] }, ptr %t780, i32 0, i32 1
  %t783 = getelementptr { %"compiler/source:Span" }, ptr %t782, i32 0, i32 0
  %t784 = load %"compiler/source:Span", ptr %t783
  store %"compiler/source:Span" %t784, ptr %l21
  br label %bb145
bb144:
  br label %bb147
bb145:
  %t786 = load ptr, ptr %l0, !tbaa !29
  %t787 = load %"compiler/source:Span", ptr %l21
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2etrace(ptr %v0, ptr %t786, %"compiler/source:Span" %t787)
  br label %bb146
bb146:
  br label %bb290
bb147:
  %t790 = load ptr, ptr %l1, !tbaa !29
  store ptr %t790, ptr %l321, !tbaa !29
  store i1 false, ptr %l322, !tbaa !21
  %t791 = load ptr, ptr %l321, !tbaa !29
  %t792 = icmp ne ptr %t791, null
  br i1 %t792, label %bb148, label %bb149
bb148:
  %t794 = load ptr, ptr %l321, !tbaa !29
  %t795 = load i64, ptr %t794, !range !{i64 0, i64 16}
  %t797 = icmp eq i64 %t795, 12
  store i1 %t797, ptr %l322, !tbaa !21
  br label %bb149
bb149:
  %t798 = load i1, ptr %l322, !tbaa !21
  br i1 %t798, label %bb150, label %bb151
bb150:
  %t799 = load ptr, ptr %l1, !tbaa !29
  %t801 = getelementptr { i64, [21 x i64] }, ptr %t799, i32 0, i32 1
  %t802 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t801, i32 0, i32 1
  %t803 = load { i64, [4 x i64] }, ptr %t802
  store { i64, [4 x i64] } %t803, ptr %l22
  br label %bb152
bb151:
  br label %bb156
bb152:
  store %olang.scope zeroinitializer, ptr %s37
  %t805 = load ptr, ptr %l0, !tbaa !29
  %t807 = getelementptr %"compiler/emit:fnEm", ptr %t805, i32 0, i32 0
  %t808 = load ptr, ptr %t807, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s37, ptr %t808, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d145, i32 0, i32 1) })
  br label %bb153
bb153:
  %t810 = load ptr, ptr %l0, !tbaa !29
  store ptr %t810, ptr %l329, !tbaa !29
  %t811 = load ptr, ptr %l0, !tbaa !29
  %t812 = load { i64, [4 x i64] }, ptr %l22
  %t813 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t817 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s37, ptr %t811, { i64, [4 x i64] } %t812, i32 %t813)
  store { i64, ptr } %t817, ptr %l333
  br label %bb154
bb154:
  %t818 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t819 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t820 = load { i64, ptr }, ptr %l333, !tbaa !27
  %t821 = extractvalue { i64, ptr } %t820, 1
  %t822 = extractvalue { i64, ptr } %t820, 0
  %t823 = add i64 %t819, %t822
  %t824 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t825 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t826 = add i64 %t823, %t825
  %t827 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t826)
  call void @olang_textcopy(ptr %t827, ptr %t818, i64 %t819)
  %t828 = getelementptr i8, ptr %t827, i64 %t819
  call void @olang_textcopy(ptr %t828, ptr %t821, i64 %t822)
  %t829 = getelementptr i8, ptr %t828, i64 %t822
  call void @olang_textcopy(ptr %t829, ptr %t824, i64 %t825)
  %t830 = insertvalue { i64, ptr } undef, i64 %t826, 0
  %t831 = insertvalue { i64, ptr } %t830, ptr %t827, 1
  %t833 = extractvalue { i64, ptr } %t831, 0
  %t834 = extractvalue { i64, ptr } %t831, 1
  %t835 = mul i64 %t833, 1
  %t836 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t835)
  call void @llvm.memcpy.p0.p0.i64(ptr %t836, ptr %t834, i64 %t835, i1 false)
  %t837 = insertvalue { i64, ptr } undef, i64 %t833, 0
  %t838 = insertvalue { i64, ptr } %t837, ptr %t836, 1
  %t839 = load ptr, ptr %l329, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s37, ptr %t839, { i64, ptr } %t838)
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s37)
  br label %bb290
bb156:
  %t841 = load ptr, ptr %l1, !tbaa !29
  store ptr %t841, ptr %l336, !tbaa !29
  store i1 false, ptr %l337, !tbaa !21
  %t842 = load ptr, ptr %l336, !tbaa !29
  %t843 = icmp ne ptr %t842, null
  br i1 %t843, label %bb157, label %bb158
bb157:
  %t845 = load ptr, ptr %l336, !tbaa !29
  %t846 = load i64, ptr %t845, !range !{i64 0, i64 16}
  %t848 = icmp eq i64 %t846, 13
  store i1 %t848, ptr %l337, !tbaa !21
  br label %bb158
bb158:
  %t849 = load i1, ptr %l337, !tbaa !21
  br i1 %t849, label %bb159, label %bb160
bb159:
  br label %bb161
bb160:
  br label %bb164
bb161:
  store %olang.scope zeroinitializer, ptr %s39
  %t850 = load ptr, ptr %l0, !tbaa !29
  %t852 = getelementptr %"compiler/emit:fnEm", ptr %t850, i32 0, i32 0
  %t853 = load ptr, ptr %t852, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s39, ptr %t853, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb162
bb162:
  %t855 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s39, ptr %t855, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d149, i32 0, i32 1) })
  br label %bb163
bb163:
  call void @__olang_scope_close(ptr %s39)
  br label %bb290
bb164:
  %t857 = load ptr, ptr %l1, !tbaa !29
  store ptr %t857, ptr %l343, !tbaa !29
  store i1 false, ptr %l344, !tbaa !21
  %t858 = load ptr, ptr %l343, !tbaa !29
  %t859 = icmp ne ptr %t858, null
  br i1 %t859, label %bb165, label %bb166
bb165:
  %t861 = load ptr, ptr %l343, !tbaa !29
  %t862 = load i64, ptr %t861, !range !{i64 0, i64 16}
  %t864 = icmp eq i64 %t862, 15
  store i1 %t864, ptr %l344, !tbaa !21
  br label %bb166
bb166:
  %t865 = load i1, ptr %l344, !tbaa !21
  br i1 %t865, label %bb167, label %bb168
bb167:
  br label %bb169
bb168:
  br label %bb171
bb169:
  store %olang.scope zeroinitializer, ptr %s40
  %t866 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s40, ptr %t866, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d150, i32 0, i32 1) })
  br label %bb170
bb170:
  call void @__olang_scope_close(ptr %s40)
  br label %bb290
bb171:
  %t868 = load ptr, ptr %l1, !tbaa !29
  store ptr %t868, ptr %l348, !tbaa !29
  store i1 false, ptr %l349, !tbaa !21
  %t869 = load ptr, ptr %l348, !tbaa !29
  %t870 = icmp ne ptr %t869, null
  br i1 %t870, label %bb172, label %bb173
bb172:
  %t872 = load ptr, ptr %l348, !tbaa !29
  %t873 = load i64, ptr %t872, !range !{i64 0, i64 16}
  %t875 = icmp eq i64 %t873, 14
  store i1 %t875, ptr %l349, !tbaa !21
  br label %bb173
bb173:
  %t876 = load i1, ptr %l349, !tbaa !21
  br i1 %t876, label %bb174, label %bb175
bb174:
  %t877 = load ptr, ptr %l1, !tbaa !29
  %t879 = getelementptr { i64, [21 x i64] }, ptr %t877, i32 0, i32 1
  %t880 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t879, i32 0, i32 1
  %t881 = load { i64, [4 x i64] }, ptr %t880
  store { i64, [4 x i64] } %t881, ptr %l23
  %t883 = load ptr, ptr %l1, !tbaa !29
  %t885 = getelementptr { i64, [21 x i64] }, ptr %t883, i32 0, i32 1
  %t886 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t885, i32 0, i32 2
  %t887 = load { i64, [4 x i64] }, ptr %t886
  store { i64, [4 x i64] } %t887, ptr %l24
  br label %bb176
bb175:
  br label %bb179
bb176:
  store %olang.scope zeroinitializer, ptr %s41
  %t889 = load ptr, ptr %l0, !tbaa !29
  store ptr %t889, ptr %l356, !tbaa !29
  %t890 = load { i64, [4 x i64] }, ptr %l23
  store { i64, [4 x i64] } %t890, ptr %l357
  %t891 = load ptr, ptr %l0, !tbaa !29
  %t892 = load { i64, [4 x i64] }, ptr %l24
  %t893 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t897 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s41, ptr %t891, { i64, [4 x i64] } %t892, i32 %t893)
  store { i64, ptr } %t897, ptr %l361
  br label %bb177
bb177:
  %t898 = load { i64, ptr }, ptr %l361, !tbaa !27
  %t899 = extractvalue { i64, ptr } %t898, 0
  %t900 = extractvalue { i64, ptr } %t898, 1
  %t901 = mul i64 %t899, 1
  %t902 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t901)
  call void @llvm.memcpy.p0.p0.i64(ptr %t902, ptr %t900, i64 %t901, i1 false)
  %t903 = insertvalue { i64, ptr } undef, i64 %t899, 0
  %t904 = insertvalue { i64, ptr } %t903, ptr %t902, 1
  %t905 = load ptr, ptr %l356, !tbaa !29
  %t906 = load { i64, [4 x i64] }, ptr %l357
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholders(ptr %v0, ptr %s41, ptr %t905, { i64, [4 x i64] } %t906, { i64, ptr } %t904)
  br label %bb178
bb178:
  call void @__olang_scope_close(ptr %s41)
  br label %bb290
bb179:
  %t908 = load ptr, ptr %l1, !tbaa !29
  store ptr %t908, ptr %l363, !tbaa !29
  store i1 false, ptr %l364, !tbaa !21
  %t909 = load ptr, ptr %l363, !tbaa !29
  %t910 = icmp ne ptr %t909, null
  br i1 %t910, label %bb180, label %bb181
bb180:
  %t912 = load ptr, ptr %l363, !tbaa !29
  %t913 = load i64, ptr %t912, !range !{i64 0, i64 16}
  %t915 = icmp eq i64 %t913, 5
  store i1 %t915, ptr %l364, !tbaa !21
  br label %bb181
bb181:
  %t916 = load i1, ptr %l364, !tbaa !21
  br i1 %t916, label %bb182, label %bb183
bb182:
  %t917 = load ptr, ptr %l1, !tbaa !29
  %t919 = getelementptr { i64, [21 x i64] }, ptr %t917, i32 0, i32 1
  %t920 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t919, i32 0, i32 1
  %t921 = load { i64, [1 x i64] }, ptr %t920
  store { i64, [1 x i64] } %t921, ptr %l25
  %t923 = load ptr, ptr %l1, !tbaa !29
  %t925 = getelementptr { i64, [21 x i64] }, ptr %t923, i32 0, i32 1
  %t926 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t925, i32 0, i32 2
  %t927 = load i32, ptr %t926
  store i32 %t927, ptr %l26, !tbaa !23
  %t929 = load ptr, ptr %l1, !tbaa !29
  %t931 = getelementptr { i64, [21 x i64] }, ptr %t929, i32 0, i32 1
  %t932 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t931, i32 0, i32 3
  %t933 = load { i64, [4 x i64] }, ptr %t932
  store { i64, [4 x i64] } %t933, ptr %l27
  br label %bb184
bb183:
  br label %bb207
bb184:
  store %olang.scope zeroinitializer, ptr %s42
  %t935 = load ptr, ptr %l2, !tbaa !29
  store ptr %t935, ptr %l374, !tbaa !29
  %t936 = load i32, ptr %l26, !tbaa !23
  store i32 %t936, ptr %l375, !tbaa !23
  %t937 = load ptr, ptr %l0, !tbaa !29
  %t939 = getelementptr %"compiler/emit:fnEm", ptr %t937, i32 0, i32 0
  %t940 = load ptr, ptr %t939, !tbaa !29
  %t942 = getelementptr %"compiler/emit:Emitter", ptr %t940, i32 0, i32 39
  %t943 = load i32, ptr %l26, !tbaa !23
  %t946 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t942, i32 %t943)
  %t947 = extractvalue { i32, i64 } %t946, 1
  %t948 = extractvalue { i32, i64 } %t946, 0
  store i32 %t948, ptr %l382
  %t949 = icmp ne i32 %t948, 0
  br i1 %t949, label %bb186, label %ok.950, !prof !99
ok.950:
  store i64 %t947, ptr %l381
  br label %bb185
bb185:
  %t951 = load i64, ptr %l381, !tbaa !24
  store i64 %t951, ptr %l376, !tbaa !24
  br label %bb188
bb186:
  br label %bb187
bb187:
  store i64 -1, ptr %l376, !tbaa !24
  br label %bb188
bb188:
  %t952 = load ptr, ptr %l374, !tbaa !29
  %t953 = load i32, ptr %l375, !tbaa !23
  %t954 = load i64, ptr %l376, !tbaa !24
  %t955 = call { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %t952, i32 %t953, i64 %t954)
  %t956 = extractvalue { i32, { i64, [2 x i64] } } %t955, 1
  %t957 = extractvalue { i32, { i64, [2 x i64] } } %t955, 0
  store i32 %t957, ptr %l384
  %t958 = icmp ne i32 %t957, 0
  br i1 %t958, label %bb190, label %ok.959, !prof !99
ok.959:
  store { i64, [2 x i64] } %t956, ptr %l383
  br label %bb189
bb189:
  %t960 = load { i64, [2 x i64] }, ptr %l383
  store { i64, [2 x i64] } %t960, ptr %l373
  br label %bb194
bb190:
  br label %bb191
bb191:
  store %olang.scope zeroinitializer, ptr %s43
  %t961 = load ptr, ptr %l0, !tbaa !29
  store ptr %t961, ptr %l385, !tbaa !29
  %t962 = load ptr, ptr %l2, !tbaa !29
  %t963 = load i32, ptr %l26, !tbaa !23
  %t965 = inttoptr i64 0 to ptr
  %t968 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s43, ptr %t965, ptr %t962, i32 %t963)
  store { i64, ptr } %t968, ptr %l389
  br label %bb192
bb192:
  %t969 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t970 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t971 = load { i64, ptr }, ptr %l389, !tbaa !27
  %t972 = extractvalue { i64, ptr } %t971, 1
  %t973 = extractvalue { i64, ptr } %t971, 0
  %t974 = add i64 %t970, %t973
  %t975 = call ptr @__olang_scope_alloc(ptr %s43, i64 %t974)
  call void @olang_textcopy(ptr %t975, ptr %t969, i64 %t970)
  %t976 = getelementptr i8, ptr %t975, i64 %t970
  call void @olang_textcopy(ptr %t976, ptr %t972, i64 %t973)
  %t977 = insertvalue { i64, ptr } undef, i64 %t974, 0
  %t978 = insertvalue { i64, ptr } %t977, ptr %t975, 1
  %t980 = extractvalue { i64, ptr } %t978, 0
  %t981 = extractvalue { i64, ptr } %t978, 1
  %t982 = mul i64 %t980, 1
  %t983 = call ptr @__olang_scope_alloc(ptr %s43, i64 %t982)
  call void @llvm.memcpy.p0.p0.i64(ptr %t983, ptr %t981, i64 %t982, i1 false)
  %t984 = insertvalue { i64, ptr } undef, i64 %t980, 0
  %t985 = insertvalue { i64, ptr } %t984, ptr %t983, 1
  %t986 = load ptr, ptr %l385, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s43, ptr %t986, { i64, ptr } %t985)
  br label %bb193
bb193:
  call void @__olang_scope_close(ptr %s43)
  call void @__olang_scope_close(ptr %s42)
  br label %ret
bb194:
  %t988 = load { i64, [2 x i64] }, ptr %l373
  store { i64, [2 x i64] } %t988, ptr %l28
  %t989 = load ptr, ptr %l0, !tbaa !29
  %t991 = getelementptr %"compiler/emit:fnEm", ptr %t989, i32 0, i32 0
  %t992 = load ptr, ptr %t991, !tbaa !29
  %t993 = load { i64, [2 x i64] }, ptr %l28
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t992, { i64, [2 x i64] } %t993)
  br label %bb195
bb195:
  %t996 = load ptr, ptr %l0, !tbaa !29
  %t998 = getelementptr %"compiler/emit:fnEm", ptr %t996, i32 0, i32 0
  %t999 = load ptr, ptr %t998, !tbaa !29
  %t1001 = getelementptr %"compiler/emit:Emitter", ptr %t999, i32 0, i32 37
  %t1002 = load { i64, [2 x i64] }, ptr %l28
  %t1005 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %t1001, { i64, [2 x i64] } %t1002)
  store i1 %t1005, ptr %l399
  br label %bb196
bb196:
  %t1006 = load i1, ptr %l399, !tbaa !21
  %t1007 = xor i1 %t1006, true
  br i1 %t1007, label %bb197, label %bb198
bb197:
  %t1009 = load ptr, ptr %l0, !tbaa !29
  %t1011 = getelementptr %"compiler/emit:fnEm", ptr %t1009, i32 0, i32 0
  %t1012 = load ptr, ptr %t1011, !tbaa !29
  %t1014 = getelementptr %"compiler/emit:Emitter", ptr %t1012, i32 0, i32 37
  %t1015 = load { i64, [2 x i64] }, ptr %l28
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %t1014, { i64, [2 x i64] } %t1015, i1 true)
  br label %bb199
bb198:
  br label %bb201
bb199:
  %t1018 = load ptr, ptr %l0, !tbaa !29
  %t1020 = getelementptr %"compiler/emit:fnEm", ptr %t1018, i32 0, i32 0
  %t1021 = load ptr, ptr %t1020, !tbaa !29
  %t1023 = getelementptr %"compiler/emit:Emitter", ptr %t1021, i32 0, i32 36
  %t1024 = load { i64, [2 x i64] }, ptr %l28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t1023, { i64, [2 x i64] } %t1024)
  br label %bb200
bb200:
  br label %bb201
bb201:
  %t1027 = load ptr, ptr %l0, !tbaa !29
  %t1029 = getelementptr %"compiler/emit:fnEm", ptr %t1027, i32 0, i32 0
  %t1030 = load ptr, ptr %t1029, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s42, ptr %t1030, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d152, i32 0, i32 1) })
  br label %bb202
bb202:
  %t1032 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1032, ptr %l411, !tbaa !29
  %t1033 = load ptr, ptr %l0, !tbaa !29
  %t1034 = load { i64, [1 x i64] }, ptr %l25
  %t1037 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s42, ptr %t1033, { i64, [1 x i64] } %t1034)
  store { i64, ptr } %t1037, ptr %l414
  br label %bb203
bb203:
  %t1038 = load ptr, ptr %l0, !tbaa !29
  %t1039 = load { i64, [4 x i64] }, ptr %l27
  %t1040 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1044 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s42, ptr %t1038, { i64, [4 x i64] } %t1039, i32 %t1040)
  store { i64, ptr } %t1044, ptr %l418
  br label %bb204
bb204:
  %t1045 = load ptr, ptr %l0, !tbaa !29
  %t1047 = getelementptr %"compiler/emit:fnEm", ptr %t1045, i32 0, i32 0
  %t1048 = load ptr, ptr %t1047, !tbaa !29
  %t1049 = load { i64, [2 x i64] }, ptr %l28
  %t1052 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s42, ptr %t1048, { i64, [2 x i64] } %t1049)
  store { i64, ptr } %t1052, ptr %l422
  br label %bb205
bb205:
  %t1053 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t1054 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t1055 = load { i64, ptr }, ptr %l414, !tbaa !27
  %t1056 = extractvalue { i64, ptr } %t1055, 1
  %t1057 = extractvalue { i64, ptr } %t1055, 0
  %t1058 = add i64 %t1054, %t1057
  %t1059 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t1060 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t1061 = add i64 %t1058, %t1060
  %t1062 = load { i64, ptr }, ptr %l418, !tbaa !27
  %t1063 = extractvalue { i64, ptr } %t1062, 1
  %t1064 = extractvalue { i64, ptr } %t1062, 0
  %t1065 = add i64 %t1061, %t1064
  %t1066 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t1067 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t1068 = add i64 %t1065, %t1067
  %t1069 = load { i64, ptr }, ptr %l422, !tbaa !27
  %t1070 = extractvalue { i64, ptr } %t1069, 1
  %t1071 = extractvalue { i64, ptr } %t1069, 0
  %t1072 = add i64 %t1068, %t1071
  %t1073 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t1074 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t1075 = add i64 %t1072, %t1074
  %t1076 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1075)
  call void @olang_textcopy(ptr %t1076, ptr %t1053, i64 %t1054)
  %t1077 = getelementptr i8, ptr %t1076, i64 %t1054
  call void @olang_textcopy(ptr %t1077, ptr %t1056, i64 %t1057)
  %t1078 = getelementptr i8, ptr %t1077, i64 %t1057
  call void @olang_textcopy(ptr %t1078, ptr %t1059, i64 %t1060)
  %t1079 = getelementptr i8, ptr %t1078, i64 %t1060
  call void @olang_textcopy(ptr %t1079, ptr %t1063, i64 %t1064)
  %t1080 = getelementptr i8, ptr %t1079, i64 %t1064
  call void @olang_textcopy(ptr %t1080, ptr %t1066, i64 %t1067)
  %t1081 = getelementptr i8, ptr %t1080, i64 %t1067
  call void @olang_textcopy(ptr %t1081, ptr %t1070, i64 %t1071)
  %t1082 = getelementptr i8, ptr %t1081, i64 %t1071
  call void @olang_textcopy(ptr %t1082, ptr %t1073, i64 %t1074)
  %t1083 = insertvalue { i64, ptr } undef, i64 %t1075, 0
  %t1084 = insertvalue { i64, ptr } %t1083, ptr %t1076, 1
  %t1086 = extractvalue { i64, ptr } %t1084, 0
  %t1087 = extractvalue { i64, ptr } %t1084, 1
  %t1088 = mul i64 %t1086, 1
  %t1089 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1088)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1089, ptr %t1087, i64 %t1088, i1 false)
  %t1090 = insertvalue { i64, ptr } undef, i64 %t1086, 0
  %t1091 = insertvalue { i64, ptr } %t1090, ptr %t1089, 1
  %t1092 = load ptr, ptr %l411, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s42, ptr %t1092, { i64, ptr } %t1091)
  br label %bb206
bb206:
  call void @__olang_scope_close(ptr %s42)
  br label %bb290
bb207:
  %t1094 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1094, ptr %l425, !tbaa !29
  store i1 false, ptr %l426, !tbaa !21
  %t1095 = load ptr, ptr %l425, !tbaa !29
  %t1096 = icmp ne ptr %t1095, null
  br i1 %t1096, label %bb208, label %bb209
bb208:
  %t1098 = load ptr, ptr %l425, !tbaa !29
  %t1099 = load i64, ptr %t1098, !range !{i64 0, i64 16}
  %t1101 = icmp eq i64 %t1099, 6
  store i1 %t1101, ptr %l426, !tbaa !21
  br label %bb209
bb209:
  %t1102 = load i1, ptr %l426, !tbaa !21
  br i1 %t1102, label %bb210, label %bb211
bb210:
  %t1103 = load ptr, ptr %l1, !tbaa !29
  %t1105 = getelementptr { i64, [21 x i64] }, ptr %t1103, i32 0, i32 1
  %t1106 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t1105, i32 0, i32 1
  %t1107 = load %"compiler/mir:Lvalue", ptr %t1106
  store %"compiler/mir:Lvalue" %t1107, ptr %l29
  br label %bb212
bb211:
  br label %bb235
bb212:
  store %olang.scope zeroinitializer, ptr %s47
  %t1109 = load ptr, ptr %l0, !tbaa !29
  %t1110 = load %"compiler/mir:Lvalue", ptr %l29
  %t1113 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s47, ptr %t1109, %"compiler/mir:Lvalue" %t1110)
  store { { i64, ptr }, i32 } %t1113, ptr %l433
  br label %bb213
bb213:
  %t1114 = load { { i64, ptr }, i32 }, ptr %l433
  store { { i64, ptr }, i32 } %t1114, ptr %l30
  %t1115 = getelementptr { { i64, ptr }, i32 }, ptr %l30, i32 0, i32 0
  %t1116 = load { i64, ptr }, ptr %t1115, !tbaa !27
  store { i64, ptr } %t1116, ptr %l434, !tbaa !27
  %t1117 = load { i64, ptr }, ptr %l434, !tbaa !27
  %t1118 = extractvalue { i64, ptr } %t1117, 0
  store i64 %t1118, ptr %l435, !tbaa !24
  %t1119 = load i64, ptr %l435, !tbaa !24
  %t1120 = mul i64 %t1119, 1
  %t1121 = call ptr @__olang_scope_alloc(ptr %s47, i64 %t1120)
  %t1122 = insertvalue { i64, ptr } undef, i64 %t1119, 0
  %t1123 = insertvalue { i64, ptr } %t1122, ptr %t1121, 1
  store { i64, ptr } %t1123, ptr %l436, !tbaa !27
  %t1124 = getelementptr { i64, ptr }, ptr %l436, i32 0, i32 1
  %t1125 = load ptr, ptr %t1124, !tbaa !27
  %t1126 = getelementptr { i64, ptr }, ptr %l434, i32 0, i32 1
  %t1127 = load ptr, ptr %t1126, !tbaa !27
  %t1128 = load i64, ptr %l435, !tbaa !24
  %t1129 = mul i64 %t1128, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1125, ptr %t1127, i64 %t1129, i1 false)
  %t1130 = load { i64, ptr }, ptr %l436, !tbaa !27
  store { i64, ptr } %t1130, ptr %l31, !tbaa !27
  %t1131 = getelementptr { { i64, ptr }, i32 }, ptr %l30, i32 0, i32 1
  %t1132 = load i32, ptr %t1131, !tbaa !23
  store i32 %t1132, ptr %l32, !tbaa !23
  %t1134 = load ptr, ptr %l2, !tbaa !29
  %t1135 = load i32, ptr %l32, !tbaa !23
  %t1138 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t1134, i32 %t1135)
  store i1 %t1138, ptr %l440
  br label %bb214
bb214:
  %t1139 = load i1, ptr %l440, !tbaa !21
  %t1140 = xor i1 %t1139, true
  br i1 %t1140, label %bb215, label %bb216
bb215:
  %t1142 = load ptr, ptr %l2, !tbaa !29
  %t1143 = load i32, ptr %l32, !tbaa !23
  %t1146 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t1142, i32 %t1143)
  store i1 %t1146, ptr %l445
  br label %bb217
bb216:
  store i1 false, ptr %l442, !tbaa !21
  br label %bb218
bb217:
  %t1147 = load i1, ptr %l445, !tbaa !21
  %t1148 = xor i1 %t1147, true
  store i1 %t1148, ptr %l442, !tbaa !21
  br label %bb218
bb218:
  %t1150 = load i1, ptr %l442, !tbaa !21
  br i1 %t1150, label %bb219, label %bb220
bb219:
  store %olang.scope zeroinitializer, ptr %s48
  %t1151 = load ptr, ptr %l0, !tbaa !29
  %t1153 = getelementptr %"compiler/emit:fnEm", ptr %t1151, i32 0, i32 0
  %t1154 = load ptr, ptr %t1153, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s48, ptr %t1154, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d157, i32 0, i32 1) })
  br label %bb221
bb220:
  br label %bb226
bb221:
  %t1156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1156, ptr %l449, !tbaa !29
  %t1157 = load ptr, ptr %l0, !tbaa !29
  %t1158 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1159 = load i32, ptr %l32, !tbaa !23
  %t1163 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eanchorRegion(ptr %v0, ptr %s47, ptr %s48, ptr %t1157, { i64, ptr } %t1158, i32 %t1159)
  store { i64, ptr } %t1163, ptr %l453
  br label %bb222
bb222:
  %t1164 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t1165 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t1166 = load { i64, ptr }, ptr %l453, !tbaa !27
  %t1167 = extractvalue { i64, ptr } %t1166, 1
  %t1168 = extractvalue { i64, ptr } %t1166, 0
  %t1169 = add i64 %t1165, %t1168
  %t1170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t1171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t1172 = add i64 %t1169, %t1171
  %t1173 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1172)
  call void @olang_textcopy(ptr %t1173, ptr %t1164, i64 %t1165)
  %t1174 = getelementptr i8, ptr %t1173, i64 %t1165
  call void @olang_textcopy(ptr %t1174, ptr %t1167, i64 %t1168)
  %t1175 = getelementptr i8, ptr %t1174, i64 %t1168
  call void @olang_textcopy(ptr %t1175, ptr %t1170, i64 %t1171)
  %t1176 = insertvalue { i64, ptr } undef, i64 %t1172, 0
  %t1177 = insertvalue { i64, ptr } %t1176, ptr %t1173, 1
  %t1179 = extractvalue { i64, ptr } %t1177, 0
  %t1180 = extractvalue { i64, ptr } %t1177, 1
  %t1181 = mul i64 %t1179, 1
  %t1182 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1182, ptr %t1180, i64 %t1181, i1 false)
  %t1183 = insertvalue { i64, ptr } undef, i64 %t1179, 0
  %t1184 = insertvalue { i64, ptr } %t1183, ptr %t1182, 1
  %t1185 = load ptr, ptr %l449, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s48, ptr %t1185, { i64, ptr } %t1184)
  br label %bb223
bb223:
  %t1187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1187, ptr %l456, !tbaa !29
  %t1188 = load ptr, ptr %l0, !tbaa !29
  %t1189 = load i32, ptr %l32, !tbaa !23
  %t1192 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s48, ptr %t1188, i32 %t1189)
  store { i64, ptr } %t1192, ptr %l459
  br label %bb224
bb224:
  %t1193 = load { i64, ptr }, ptr %l459, !tbaa !27
  %t1194 = extractvalue { i64, ptr } %t1193, 0
  %t1195 = extractvalue { i64, ptr } %t1193, 1
  %t1196 = mul i64 %t1194, 1
  %t1197 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1197, ptr %t1195, i64 %t1196, i1 false)
  %t1198 = insertvalue { i64, ptr } undef, i64 %t1194, 0
  %t1199 = insertvalue { i64, ptr } %t1198, ptr %t1197, 1
  %t1200 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1201 = load ptr, ptr %l456, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s48, ptr %s48, ptr %s47, ptr %s48, ptr %t1201, { i64, ptr } %t1199, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d160, i32 0, i32 1) }, { i64, ptr } %t1200, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb225
bb225:
  call void @__olang_scope_close(ptr %s48)
  call void @__olang_scope_close(ptr %s47)
  br label %ret
bb226:
  %t1204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1204, ptr %l462, !tbaa !29
  %t1205 = load ptr, ptr %l0, !tbaa !29
  %t1206 = load i32, ptr %l32, !tbaa !23
  %t1209 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s47, ptr %t1205, i32 %t1206)
  store { i64, ptr } %t1209, ptr %l465
  br label %bb227
bb227:
  %t1210 = load { i64, ptr }, ptr %l465, !tbaa !27
  %t1211 = extractvalue { i64, ptr } %t1210, 0
  %t1212 = extractvalue { i64, ptr } %t1210, 1
  %t1213 = mul i64 %t1211, 1
  %t1214 = call ptr @__olang_scope_alloc(ptr %s47, i64 %t1213)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1214, ptr %t1212, i64 %t1213, i1 false)
  %t1215 = insertvalue { i64, ptr } undef, i64 %t1211, 0
  %t1216 = insertvalue { i64, ptr } %t1215, ptr %t1214, 1
  %t1217 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1218 = load ptr, ptr %l462, !tbaa !29
  %t1221 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s47, ptr %s47, ptr %s47, ptr %s47, ptr %t1218, { i64, ptr } %t1216, { i64, ptr } %t1217, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) })
  store { i64, ptr } %t1221, ptr %l468
  br label %bb228
bb228:
  %t1222 = load { i64, ptr }, ptr %l468, !tbaa !27
  store { i64, ptr } %t1222, ptr %l33, !tbaa !27
  %t1223 = load ptr, ptr %l0, !tbaa !29
  %t1225 = getelementptr %"compiler/emit:fnEm", ptr %t1223, i32 0, i32 0
  %t1226 = load ptr, ptr %t1225, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s47, ptr %t1226, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d161, i32 0, i32 1) })
  br label %bb229
bb229:
  %t1228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1228, ptr %l471, !tbaa !29
  %t1229 = load ptr, ptr %l0, !tbaa !29
  %t1230 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t1231 = load i32, ptr %l32, !tbaa !23
  %t1235 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %s47, ptr %s47, ptr %t1229, { i64, ptr } %t1230, i32 %t1231)
  store { i64, ptr } %t1235, ptr %l475
  br label %bb230
bb230:
  %t1236 = load { i64, ptr }, ptr %l475, !tbaa !27
  %t1237 = extractvalue { i64, ptr } %t1236, 0
  store i64 %t1237, ptr %l476, !tbaa !24
  %t1238 = load i64, ptr %l476, !tbaa !24
  %t1239 = mul i64 %t1238, 1
  %t1240 = call ptr @__olang_scope_alloc(ptr %s47, i64 %t1239)
  %t1241 = insertvalue { i64, ptr } undef, i64 %t1238, 0
  %t1242 = insertvalue { i64, ptr } %t1241, ptr %t1240, 1
  store { i64, ptr } %t1242, ptr %l477, !tbaa !27
  %t1243 = getelementptr { i64, ptr }, ptr %l477, i32 0, i32 1
  %t1244 = load ptr, ptr %t1243, !tbaa !27
  %t1245 = getelementptr { i64, ptr }, ptr %l475, i32 0, i32 1
  %t1246 = load ptr, ptr %t1245, !tbaa !27
  %t1247 = load i64, ptr %l476, !tbaa !24
  %t1248 = mul i64 %t1247, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1244, ptr %t1246, i64 %t1248, i1 false)
  %t1249 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t1250 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t1251 = load { i64, ptr }, ptr %l477, !tbaa !27
  %t1252 = extractvalue { i64, ptr } %t1251, 1
  %t1253 = extractvalue { i64, ptr } %t1251, 0
  %t1254 = add i64 %t1250, %t1253
  %t1255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t1256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  %t1257 = add i64 %t1254, %t1256
  %t1258 = call ptr @__olang_scope_alloc(ptr %s47, i64 %t1257)
  call void @olang_textcopy(ptr %t1258, ptr %t1249, i64 %t1250)
  %t1259 = getelementptr i8, ptr %t1258, i64 %t1250
  call void @olang_textcopy(ptr %t1259, ptr %t1252, i64 %t1253)
  %t1260 = getelementptr i8, ptr %t1259, i64 %t1253
  call void @olang_textcopy(ptr %t1260, ptr %t1255, i64 %t1256)
  %t1261 = insertvalue { i64, ptr } undef, i64 %t1257, 0
  %t1262 = insertvalue { i64, ptr } %t1261, ptr %t1258, 1
  %t1264 = extractvalue { i64, ptr } %t1262, 0
  %t1265 = extractvalue { i64, ptr } %t1262, 1
  %t1266 = mul i64 %t1264, 1
  %t1267 = call ptr @__olang_scope_alloc(ptr %s47, i64 %t1266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1267, ptr %t1265, i64 %t1266, i1 false)
  %t1268 = insertvalue { i64, ptr } undef, i64 %t1264, 0
  %t1269 = insertvalue { i64, ptr } %t1268, ptr %t1267, 1
  %t1270 = load ptr, ptr %l471, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s47, ptr %t1270, { i64, ptr } %t1269)
  br label %bb231
bb231:
  %t1272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1272, ptr %l480, !tbaa !29
  %t1273 = load ptr, ptr %l0, !tbaa !29
  %t1274 = load i32, ptr %l32, !tbaa !23
  %t1277 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s47, ptr %t1273, i32 %t1274)
  store { i64, ptr } %t1277, ptr %l483
  br label %bb232
bb232:
  %t1278 = load { i64, ptr }, ptr %l483, !tbaa !27
  %t1279 = extractvalue { i64, ptr } %t1278, 0
  %t1280 = extractvalue { i64, ptr } %t1278, 1
  %t1281 = mul i64 %t1279, 1
  %t1282 = call ptr @__olang_scope_alloc(ptr %s47, i64 %t1281)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1282, ptr %t1280, i64 %t1281, i1 false)
  %t1283 = insertvalue { i64, ptr } undef, i64 %t1279, 0
  %t1284 = insertvalue { i64, ptr } %t1283, ptr %t1282, 1
  store { i64, ptr } %t1284, ptr %l484, !tbaa !27
  %t1285 = load ptr, ptr %l0, !tbaa !29
  %t1287 = getelementptr %"compiler/emit:fnEm", ptr %t1285, i32 0, i32 0
  %t1288 = load ptr, ptr %t1287, !tbaa !29
  %t1289 = load i32, ptr %l32, !tbaa !23
  %t1292 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %s47, ptr %t1288, i32 %t1289, i64 0)
  store { i64, ptr } %t1292, ptr %l488
  br label %bb233
bb233:
  %t1293 = load { i64, ptr }, ptr %l488, !tbaa !27
  %t1294 = extractvalue { i64, ptr } %t1293, 0
  %t1295 = extractvalue { i64, ptr } %t1293, 1
  %t1296 = mul i64 %t1294, 1
  %t1297 = call ptr @__olang_scope_alloc(ptr %s47, i64 %t1296)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1297, ptr %t1295, i64 %t1296, i1 false)
  %t1298 = insertvalue { i64, ptr } undef, i64 %t1294, 0
  %t1299 = insertvalue { i64, ptr } %t1298, ptr %t1297, 1
  %t1300 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1301 = load ptr, ptr %l480, !tbaa !29
  %t1302 = load { i64, ptr }, ptr %l484, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s47, ptr %s47, ptr %s47, ptr %s47, ptr %t1301, { i64, ptr } %t1302, { i64, ptr } %t1299, { i64, ptr } %t1300, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb234
bb234:
  call void @__olang_scope_close(ptr %s47)
  br label %bb290
bb235:
  %t1305 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1305, ptr %l491, !tbaa !29
  store i1 false, ptr %l492, !tbaa !21
  %t1306 = load ptr, ptr %l491, !tbaa !29
  %t1307 = icmp ne ptr %t1306, null
  br i1 %t1307, label %bb236, label %bb237
bb236:
  %t1309 = load ptr, ptr %l491, !tbaa !29
  %t1310 = load i64, ptr %t1309, !range !{i64 0, i64 16}
  %t1312 = icmp eq i64 %t1310, 7
  store i1 %t1312, ptr %l492, !tbaa !21
  br label %bb237
bb237:
  %t1313 = load i1, ptr %l492, !tbaa !21
  br i1 %t1313, label %bb238, label %bb239
bb238:
  %t1314 = load ptr, ptr %l1, !tbaa !29
  %t1316 = getelementptr { i64, [21 x i64] }, ptr %t1314, i32 0, i32 1
  %t1317 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t1316, i32 0, i32 1
  %t1318 = load i32, ptr %t1317
  store i32 %t1318, ptr %l34, !tbaa !23
  %t1320 = load ptr, ptr %l1, !tbaa !29
  %t1322 = getelementptr { i64, [21 x i64] }, ptr %t1320, i32 0, i32 1
  %t1323 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t1322, i32 0, i32 2
  %t1324 = load %"compiler/mir:Lvalue", ptr %t1323
  store %"compiler/mir:Lvalue" %t1324, ptr %l35
  br label %bb240
bb239:
  br label %bb249
bb240:
  store %olang.scope zeroinitializer, ptr %s51
  %t1326 = load ptr, ptr %l0, !tbaa !29
  %t1327 = load %"compiler/mir:Lvalue", ptr %l35
  %t1330 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s51, ptr %t1326, %"compiler/mir:Lvalue" %t1327)
  store { { i64, ptr }, i32 } %t1330, ptr %l501
  br label %bb241
bb241:
  %t1331 = load { { i64, ptr }, i32 }, ptr %l501
  store { { i64, ptr }, i32 } %t1331, ptr %l36
  %t1332 = getelementptr { { i64, ptr }, i32 }, ptr %l36, i32 0, i32 0
  %t1333 = load { i64, ptr }, ptr %t1332, !tbaa !27
  store { i64, ptr } %t1333, ptr %l502, !tbaa !27
  %t1334 = load { i64, ptr }, ptr %l502, !tbaa !27
  %t1335 = extractvalue { i64, ptr } %t1334, 0
  store i64 %t1335, ptr %l503, !tbaa !24
  %t1336 = load i64, ptr %l503, !tbaa !24
  %t1337 = mul i64 %t1336, 1
  %t1338 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1337)
  %t1339 = insertvalue { i64, ptr } undef, i64 %t1336, 0
  %t1340 = insertvalue { i64, ptr } %t1339, ptr %t1338, 1
  store { i64, ptr } %t1340, ptr %l504, !tbaa !27
  %t1341 = getelementptr { i64, ptr }, ptr %l504, i32 0, i32 1
  %t1342 = load ptr, ptr %t1341, !tbaa !27
  %t1343 = getelementptr { i64, ptr }, ptr %l502, i32 0, i32 1
  %t1344 = load ptr, ptr %t1343, !tbaa !27
  %t1345 = load i64, ptr %l503, !tbaa !24
  %t1346 = mul i64 %t1345, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1342, ptr %t1344, i64 %t1346, i1 false)
  %t1347 = load { i64, ptr }, ptr %l504, !tbaa !27
  store { i64, ptr } %t1347, ptr %l37, !tbaa !27
  %t1348 = getelementptr { { i64, ptr }, i32 }, ptr %l36, i32 0, i32 1
  %t1349 = load i32, ptr %t1348, !tbaa !23
  store i32 %t1349, ptr %l38, !tbaa !23
  %t1351 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1351, ptr %l506, !tbaa !29
  %t1352 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1352, ptr %l507, !tbaa !29
  %t1353 = load ptr, ptr %l0, !tbaa !29
  %t1354 = load i32, ptr %l34, !tbaa !23
  %t1357 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalAt(ptr %v0, ptr %s51, ptr %t1353, i32 %t1354)
  store { i64, ptr } %t1357, ptr %l510
  br label %bb242
bb242:
  %t1358 = load { i64, ptr }, ptr %l510, !tbaa !27
  %t1359 = extractvalue { i64, ptr } %t1358, 0
  %t1360 = extractvalue { i64, ptr } %t1358, 1
  %t1361 = mul i64 %t1359, 1
  %t1362 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1361)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1362, ptr %t1360, i64 %t1361, i1 false)
  %t1363 = insertvalue { i64, ptr } undef, i64 %t1359, 0
  %t1364 = insertvalue { i64, ptr } %t1363, ptr %t1362, 1
  %t1365 = load ptr, ptr %l507, !tbaa !29
  %t1367 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s51, ptr %s51, ptr %s51, ptr %s51, ptr %t1365, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d164, i32 0, i32 1) }, { i64, ptr } %t1364, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) })
  store { i64, ptr } %t1367, ptr %l512
  br label %bb243
bb243:
  %t1368 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t1369 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t1370 = load { i64, ptr }, ptr %l512, !tbaa !27
  %t1371 = extractvalue { i64, ptr } %t1370, 1
  %t1372 = extractvalue { i64, ptr } %t1370, 0
  %t1373 = add i64 %t1369, %t1372
  %t1374 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t1375 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t1376 = add i64 %t1373, %t1375
  %t1377 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1376)
  call void @olang_textcopy(ptr %t1377, ptr %t1368, i64 %t1369)
  %t1378 = getelementptr i8, ptr %t1377, i64 %t1369
  call void @olang_textcopy(ptr %t1378, ptr %t1371, i64 %t1372)
  %t1379 = getelementptr i8, ptr %t1378, i64 %t1372
  call void @olang_textcopy(ptr %t1379, ptr %t1374, i64 %t1375)
  %t1380 = insertvalue { i64, ptr } undef, i64 %t1376, 0
  %t1381 = insertvalue { i64, ptr } %t1380, ptr %t1377, 1
  %t1383 = extractvalue { i64, ptr } %t1381, 0
  %t1384 = extractvalue { i64, ptr } %t1381, 1
  %t1385 = mul i64 %t1383, 1
  %t1386 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1385)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1386, ptr %t1384, i64 %t1385, i1 false)
  %t1387 = insertvalue { i64, ptr } undef, i64 %t1383, 0
  %t1388 = insertvalue { i64, ptr } %t1387, ptr %t1386, 1
  %t1389 = load ptr, ptr %l506, !tbaa !29
  %t1391 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s51, ptr %s51, ptr %t1389, { i64, ptr } %t1388)
  store { i64, ptr } %t1391, ptr %l515
  br label %bb244
bb244:
  %t1392 = load { i64, ptr }, ptr %l515, !tbaa !27
  store { i64, ptr } %t1392, ptr %l39, !tbaa !27
  %t1393 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1393, ptr %l516, !tbaa !29
  %t1394 = load ptr, ptr %l0, !tbaa !29
  %t1395 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t1396 = load i32, ptr %l38, !tbaa !23
  %t1400 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eanchorRegion(ptr %v0, ptr %s51, ptr %s51, ptr %t1394, { i64, ptr } %t1395, i32 %t1396)
  store { i64, ptr } %t1400, ptr %l520
  br label %bb245
bb245:
  %t1401 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t1402 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t1403 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t1404 = load { i64, ptr }, ptr %l520, !tbaa !27
  %t1405 = extractvalue { i64, ptr } %t1404, 1
  %t1406 = extractvalue { i64, ptr } %t1404, 0
  %t1407 = add i64 %t1403, %t1406
  %t1408 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t1409 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t1410 = add i64 %t1407, %t1409
  %t1412 = extractvalue { i64, ptr } %t1401, 1
  %t1413 = extractvalue { i64, ptr } %t1401, 0
  %t1414 = add i64 %t1410, %t1413
  %t1415 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1414)
  call void @olang_textcopy(ptr %t1415, ptr %t1402, i64 %t1403)
  %t1416 = getelementptr i8, ptr %t1415, i64 %t1403
  call void @olang_textcopy(ptr %t1416, ptr %t1405, i64 %t1406)
  %t1417 = getelementptr i8, ptr %t1416, i64 %t1406
  call void @olang_textcopy(ptr %t1417, ptr %t1408, i64 %t1409)
  %t1418 = getelementptr i8, ptr %t1417, i64 %t1409
  call void @olang_textcopy(ptr %t1418, ptr %t1412, i64 %t1413)
  %t1419 = insertvalue { i64, ptr } undef, i64 %t1414, 0
  %t1420 = insertvalue { i64, ptr } %t1419, ptr %t1415, 1
  %t1422 = extractvalue { i64, ptr } %t1420, 0
  %t1423 = extractvalue { i64, ptr } %t1420, 1
  %t1424 = mul i64 %t1422, 1
  %t1425 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1424)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1425, ptr %t1423, i64 %t1424, i1 false)
  %t1426 = insertvalue { i64, ptr } undef, i64 %t1422, 0
  %t1427 = insertvalue { i64, ptr } %t1426, ptr %t1425, 1
  %t1428 = load ptr, ptr %l516, !tbaa !29
  %t1430 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s51, ptr %s51, ptr %t1428, { i64, ptr } %t1427)
  store { i64, ptr } %t1430, ptr %l524
  br label %bb246
bb246:
  %t1431 = load { i64, ptr }, ptr %l524, !tbaa !27
  store { i64, ptr } %t1431, ptr %l40, !tbaa !27
  %t1432 = load ptr, ptr %l0, !tbaa !29
  %t1434 = getelementptr %"compiler/emit:fnEm", ptr %t1432, i32 0, i32 0
  %t1435 = load ptr, ptr %t1434, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s51, ptr %t1435, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d169, i32 0, i32 1) })
  br label %bb247
bb247:
  %t1437 = load ptr, ptr %l0, !tbaa !29
  %t1438 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t1439 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t1440 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t1441 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t1443 = extractvalue { i64, ptr } %t1438, 1
  %t1444 = extractvalue { i64, ptr } %t1438, 0
  %t1445 = add i64 %t1441, %t1444
  %t1446 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t1447 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t1448 = add i64 %t1445, %t1447
  %t1450 = extractvalue { i64, ptr } %t1439, 1
  %t1451 = extractvalue { i64, ptr } %t1439, 0
  %t1452 = add i64 %t1448, %t1451
  %t1453 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t1454 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  %t1455 = add i64 %t1452, %t1454
  %t1456 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1455)
  call void @olang_textcopy(ptr %t1456, ptr %t1440, i64 %t1441)
  %t1457 = getelementptr i8, ptr %t1456, i64 %t1441
  call void @olang_textcopy(ptr %t1457, ptr %t1443, i64 %t1444)
  %t1458 = getelementptr i8, ptr %t1457, i64 %t1444
  call void @olang_textcopy(ptr %t1458, ptr %t1446, i64 %t1447)
  %t1459 = getelementptr i8, ptr %t1458, i64 %t1447
  call void @olang_textcopy(ptr %t1459, ptr %t1450, i64 %t1451)
  %t1460 = getelementptr i8, ptr %t1459, i64 %t1451
  call void @olang_textcopy(ptr %t1460, ptr %t1453, i64 %t1454)
  %t1461 = insertvalue { i64, ptr } undef, i64 %t1455, 0
  %t1462 = insertvalue { i64, ptr } %t1461, ptr %t1456, 1
  %t1464 = extractvalue { i64, ptr } %t1462, 0
  %t1465 = extractvalue { i64, ptr } %t1462, 1
  %t1466 = mul i64 %t1464, 1
  %t1467 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1466)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1467, ptr %t1465, i64 %t1466, i1 false)
  %t1468 = insertvalue { i64, ptr } undef, i64 %t1464, 0
  %t1469 = insertvalue { i64, ptr } %t1468, ptr %t1467, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s51, ptr %t1437, { i64, ptr } %t1469)
  br label %bb248
bb248:
  call void @__olang_scope_close(ptr %s51)
  br label %bb290
bb249:
  %t1472 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1472, ptr %l532, !tbaa !29
  store i1 false, ptr %l533, !tbaa !21
  %t1473 = load ptr, ptr %l532, !tbaa !29
  %t1474 = icmp ne ptr %t1473, null
  br i1 %t1474, label %bb250, label %bb251
bb250:
  %t1476 = load ptr, ptr %l532, !tbaa !29
  %t1477 = load i64, ptr %t1476, !range !{i64 0, i64 16}
  %t1479 = icmp eq i64 %t1477, 8
  store i1 %t1479, ptr %l533, !tbaa !21
  br label %bb251
bb251:
  %t1480 = load i1, ptr %l533, !tbaa !21
  br i1 %t1480, label %bb252, label %bb253
bb252:
  %t1481 = load ptr, ptr %l1, !tbaa !29
  %t1483 = getelementptr { i64, [21 x i64] }, ptr %t1481, i32 0, i32 1
  %t1484 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t1483, i32 0, i32 1
  %t1485 = load { i64, [1 x i64] }, ptr %t1484
  store { i64, [1 x i64] } %t1485, ptr %l41
  %t1487 = load ptr, ptr %l1, !tbaa !29
  %t1489 = getelementptr { i64, [21 x i64] }, ptr %t1487, i32 0, i32 1
  %t1490 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t1489, i32 0, i32 2
  %t1491 = load i32, ptr %t1490, !range !{i32 0, i32 8}
  store i32 %t1491, ptr %l42
  %t1493 = load ptr, ptr %l1, !tbaa !29
  %t1495 = getelementptr { i64, [21 x i64] }, ptr %t1493, i32 0, i32 1
  %t1496 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t1495, i32 0, i32 3
  %t1497 = load { i64, [4 x i64] }, ptr %t1496
  store { i64, [4 x i64] } %t1497, ptr %l43
  br label %bb254
bb253:
  br label %bb263
bb254:
  store %olang.scope zeroinitializer, ptr %s55
  %t1499 = load ptr, ptr %l0, !tbaa !29
  %t1500 = load { i64, [1 x i64] }, ptr %l41
  %t1503 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectRef(ptr %v0, ptr %t1499, { i64, [1 x i64] } %t1500)
  store i1 %t1503, ptr %l544
  br label %bb255
bb255:
  %t1504 = load i1, ptr %l544, !tbaa !21
  br i1 %t1504, label %bb256, label %bb257
bb256:
  %t1505 = load ptr, ptr %l0, !tbaa !29
  %t1507 = getelementptr %"compiler/emit:fnEm", ptr %t1505, i32 0, i32 26
  %t1508 = load i32, ptr %l42, !range !{i32 0, i32 8}
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2ePush_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %t1507, i32 %t1508)
  br label %bb258
bb257:
  br label %bb260
bb258:
  %t1511 = load ptr, ptr %l0, !tbaa !29
  %t1513 = getelementptr %"compiler/emit:fnEm", ptr %t1511, i32 0, i32 27
  %t1514 = load { i64, [4 x i64] }, ptr %l43
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t1513, { i64, [4 x i64] } %t1514)
  br label %bb259
bb259:
  call void @__olang_scope_close(ptr %s55)
  br label %ret
bb260:
  %t1517 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1517, ptr %l551, !tbaa !29
  %t1518 = load ptr, ptr %l0, !tbaa !29
  %t1519 = load { i64, [1 x i64] }, ptr %l41
  %t1522 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s55, ptr %t1518, { i64, [1 x i64] } %t1519)
  store { i64, ptr } %t1522, ptr %l554
  br label %bb261
bb261:
  %t1523 = load { i64, ptr }, ptr %l554, !tbaa !27
  %t1524 = extractvalue { i64, ptr } %t1523, 0
  %t1525 = extractvalue { i64, ptr } %t1523, 1
  %t1526 = mul i64 %t1524, 1
  %t1527 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1526)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1527, ptr %t1525, i64 %t1526, i1 false)
  %t1528 = insertvalue { i64, ptr } undef, i64 %t1524, 0
  %t1529 = insertvalue { i64, ptr } %t1528, ptr %t1527, 1
  %t1530 = load i32, ptr %l42, !range !{i32 0, i32 8}
  %t1531 = load { i64, [4 x i64] }, ptr %l43
  %t1532 = load ptr, ptr %l551, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewrite(ptr %v0, ptr %s55, ptr %t1532, { i64, ptr } %t1529, i32 %t1530, { i64, [4 x i64] } %t1531)
  br label %bb262
bb262:
  call void @__olang_scope_close(ptr %s55)
  br label %bb290
bb263:
  %t1536 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1536, ptr %l558, !tbaa !29
  store i1 false, ptr %l559, !tbaa !21
  %t1537 = load ptr, ptr %l558, !tbaa !29
  %t1538 = icmp ne ptr %t1537, null
  br i1 %t1538, label %bb264, label %bb265
bb264:
  %t1540 = load ptr, ptr %l558, !tbaa !29
  %t1541 = load i64, ptr %t1540, !range !{i64 0, i64 16}
  %t1543 = icmp eq i64 %t1541, 9
  store i1 %t1543, ptr %l559, !tbaa !21
  br label %bb265
bb265:
  %t1544 = load i1, ptr %l559, !tbaa !21
  br i1 %t1544, label %bb266, label %bb267
bb266:
  %t1545 = load ptr, ptr %l1, !tbaa !29
  %t1547 = getelementptr { i64, [21 x i64] }, ptr %t1545, i32 0, i32 1
  %t1548 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1547, i32 0, i32 1
  %t1549 = load %"compiler/mir:Lvalue", ptr %t1548
  store %"compiler/mir:Lvalue" %t1549, ptr %l44
  %t1551 = load ptr, ptr %l1, !tbaa !29
  %t1553 = getelementptr { i64, [21 x i64] }, ptr %t1551, i32 0, i32 1
  %t1554 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1553, i32 0, i32 2
  %t1555 = load %"compiler/mir:Lvalue", ptr %t1554
  store %"compiler/mir:Lvalue" %t1555, ptr %l45
  %t1557 = load ptr, ptr %l1, !tbaa !29
  %t1559 = getelementptr { i64, [21 x i64] }, ptr %t1557, i32 0, i32 1
  %t1560 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1559, i32 0, i32 3
  %t1561 = load { i64, [4 x i64] }, ptr %t1560
  store { i64, [4 x i64] } %t1561, ptr %l46
  br label %bb268
bb267:
  br label %bb281
bb268:
  store %olang.scope zeroinitializer, ptr %s57
  %t1563 = load ptr, ptr %l0, !tbaa !29
  %t1564 = load %"compiler/mir:Lvalue", ptr %l44
  %t1567 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edataPtr(ptr %v0, ptr %s57, ptr %t1563, %"compiler/mir:Lvalue" %t1564)
  store { i64, ptr } %t1567, ptr %l570
  br label %bb269
bb269:
  %t1568 = load { i64, ptr }, ptr %l570, !tbaa !27
  store { i64, ptr } %t1568, ptr %l47, !tbaa !27
  %t1569 = load ptr, ptr %l0, !tbaa !29
  %t1570 = load %"compiler/mir:Lvalue", ptr %l45
  %t1573 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edataPtr(ptr %v0, ptr %s57, ptr %t1569, %"compiler/mir:Lvalue" %t1570)
  store { i64, ptr } %t1573, ptr %l573
  br label %bb270
bb270:
  %t1574 = load { i64, ptr }, ptr %l573, !tbaa !27
  store { i64, ptr } %t1574, ptr %l48, !tbaa !27
  %t1575 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1575, ptr %l574, !tbaa !29
  %t1576 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1576, ptr %l575, !tbaa !29
  %t1577 = load ptr, ptr %l0, !tbaa !29
  %t1578 = load %"compiler/mir:Lvalue", ptr %l44
  %t1581 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %t1577, %"compiler/mir:Lvalue" %t1578)
  store i32 %t1581, ptr %l578
  br label %bb271
bb271:
  %t1582 = load ptr, ptr %l575, !tbaa !29
  %t1583 = load i32, ptr %l578, !tbaa !23
  %t1584 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t1582, i32 %t1583)
  store i32 %t1584, ptr %l579
  br label %bb272
bb272:
  %t1585 = load ptr, ptr %l574, !tbaa !29
  %t1586 = load i32, ptr %l579, !tbaa !23
  %t1587 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t1585, i32 %t1586)
  store i32 %t1587, ptr %l580
  br label %bb273
bb273:
  %t1588 = load i32, ptr %l580, !tbaa !23
  store i32 %t1588, ptr %l49, !tbaa !23
  %t1589 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1589, ptr %l581, !tbaa !29
  %t1590 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1590, ptr %l582, !tbaa !29
  %t1591 = load ptr, ptr %l0, !tbaa !29
  %t1592 = load { i64, [4 x i64] }, ptr %l46
  %t1593 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1597 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s57, ptr %t1591, { i64, [4 x i64] } %t1592, i32 %t1593)
  store { i64, ptr } %t1597, ptr %l586
  br label %bb274
bb274:
  %t1598 = load { i64, ptr }, ptr %l586, !tbaa !27
  %t1599 = extractvalue { i64, ptr } %t1598, 0
  %t1600 = extractvalue { i64, ptr } %t1598, 1
  %t1601 = mul i64 %t1599, 1
  %t1602 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1601)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1602, ptr %t1600, i64 %t1601, i1 false)
  %t1603 = insertvalue { i64, ptr } undef, i64 %t1599, 0
  %t1604 = insertvalue { i64, ptr } %t1603, ptr %t1602, 1
  store { i64, ptr } %t1604, ptr %l587, !tbaa !27
  %t1605 = load ptr, ptr %l0, !tbaa !29
  %t1606 = load { i64, [4 x i64] }, ptr %l46
  %t1609 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t1605, { i64, [4 x i64] } %t1606)
  store i32 %t1609, ptr %l590
  br label %bb275
bb275:
  %t1610 = load ptr, ptr %l582, !tbaa !29
  %t1611 = load { i64, ptr }, ptr %l587, !tbaa !27
  %t1612 = load i32, ptr %l590, !tbaa !23
  %t1613 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %s57, ptr %s57, ptr %t1610, { i64, ptr } %t1611, i32 %t1612)
  store { i64, ptr } %t1613, ptr %l591
  br label %bb276
bb276:
  %t1614 = load ptr, ptr %l0, !tbaa !29
  %t1615 = load i32, ptr %l49, !tbaa !23
  %t1618 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t1614, i32 %t1615)
  store i64 %t1618, ptr %l594
  br label %bb277
bb277:
  %t1619 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t1620 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  %t1621 = load { i64, ptr }, ptr %l591, !tbaa !27
  %t1622 = extractvalue { i64, ptr } %t1621, 1
  %t1623 = extractvalue { i64, ptr } %t1621, 0
  %t1624 = add i64 %t1620, %t1623
  %t1625 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t1626 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t1627 = add i64 %t1624, %t1626
  %t1628 = load i64, ptr %l594, !tbaa !24
  %t1629 = call i64 @__olang_fmt_i64(ptr null, i64 %t1628)
  %t1630 = add i64 %t1627, %t1629
  %t1631 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1630)
  call void @olang_textcopy(ptr %t1631, ptr %t1619, i64 %t1620)
  %t1632 = getelementptr i8, ptr %t1631, i64 %t1620
  call void @olang_textcopy(ptr %t1632, ptr %t1622, i64 %t1623)
  %t1633 = getelementptr i8, ptr %t1632, i64 %t1623
  call void @olang_textcopy(ptr %t1633, ptr %t1625, i64 %t1626)
  %t1634 = getelementptr i8, ptr %t1633, i64 %t1626
  %t1635 = call i64 @__olang_fmt_i64(ptr %t1634, i64 %t1628)
  %t1636 = insertvalue { i64, ptr } undef, i64 %t1630, 0
  %t1637 = insertvalue { i64, ptr } %t1636, ptr %t1631, 1
  %t1639 = extractvalue { i64, ptr } %t1637, 0
  %t1640 = extractvalue { i64, ptr } %t1637, 1
  %t1641 = mul i64 %t1639, 1
  %t1642 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1641)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1642, ptr %t1640, i64 %t1641, i1 false)
  %t1643 = insertvalue { i64, ptr } undef, i64 %t1639, 0
  %t1644 = insertvalue { i64, ptr } %t1643, ptr %t1642, 1
  %t1645 = load ptr, ptr %l581, !tbaa !29
  %t1647 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s57, ptr %s57, ptr %t1645, { i64, ptr } %t1644)
  store { i64, ptr } %t1647, ptr %l597
  br label %bb278
bb278:
  %t1648 = load { i64, ptr }, ptr %l597, !tbaa !27
  store { i64, ptr } %t1648, ptr %l50, !tbaa !27
  %t1649 = load ptr, ptr %l0, !tbaa !29
  %t1651 = getelementptr %"compiler/emit:fnEm", ptr %t1649, i32 0, i32 0
  %t1652 = load ptr, ptr %t1651, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s57, ptr %s57, ptr %t1652, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d175, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d176, i32 0, i32 1) })
  br label %bb279
bb279:
  %t1654 = load ptr, ptr %l0, !tbaa !29
  %t1655 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t1656 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1657 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t1658 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t1659 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  %t1661 = extractvalue { i64, ptr } %t1655, 1
  %t1662 = extractvalue { i64, ptr } %t1655, 0
  %t1663 = add i64 %t1659, %t1662
  %t1664 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t1665 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t1666 = add i64 %t1663, %t1665
  %t1668 = extractvalue { i64, ptr } %t1656, 1
  %t1669 = extractvalue { i64, ptr } %t1656, 0
  %t1670 = add i64 %t1666, %t1669
  %t1671 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t1672 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t1673 = add i64 %t1670, %t1672
  %t1675 = extractvalue { i64, ptr } %t1657, 1
  %t1676 = extractvalue { i64, ptr } %t1657, 0
  %t1677 = add i64 %t1673, %t1676
  %t1678 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t1679 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t1680 = add i64 %t1677, %t1679
  %t1681 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1680)
  call void @olang_textcopy(ptr %t1681, ptr %t1658, i64 %t1659)
  %t1682 = getelementptr i8, ptr %t1681, i64 %t1659
  call void @olang_textcopy(ptr %t1682, ptr %t1661, i64 %t1662)
  %t1683 = getelementptr i8, ptr %t1682, i64 %t1662
  call void @olang_textcopy(ptr %t1683, ptr %t1664, i64 %t1665)
  %t1684 = getelementptr i8, ptr %t1683, i64 %t1665
  call void @olang_textcopy(ptr %t1684, ptr %t1668, i64 %t1669)
  %t1685 = getelementptr i8, ptr %t1684, i64 %t1669
  call void @olang_textcopy(ptr %t1685, ptr %t1671, i64 %t1672)
  %t1686 = getelementptr i8, ptr %t1685, i64 %t1672
  call void @olang_textcopy(ptr %t1686, ptr %t1675, i64 %t1676)
  %t1687 = getelementptr i8, ptr %t1686, i64 %t1676
  call void @olang_textcopy(ptr %t1687, ptr %t1678, i64 %t1679)
  %t1688 = insertvalue { i64, ptr } undef, i64 %t1680, 0
  %t1689 = insertvalue { i64, ptr } %t1688, ptr %t1681, 1
  %t1691 = extractvalue { i64, ptr } %t1689, 0
  %t1692 = extractvalue { i64, ptr } %t1689, 1
  %t1693 = mul i64 %t1691, 1
  %t1694 = call ptr @__olang_scope_alloc(ptr %s57, i64 %t1693)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1694, ptr %t1692, i64 %t1693, i1 false)
  %t1695 = insertvalue { i64, ptr } undef, i64 %t1691, 0
  %t1696 = insertvalue { i64, ptr } %t1695, ptr %t1694, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s57, ptr %t1654, { i64, ptr } %t1696)
  br label %bb280
bb280:
  call void @__olang_scope_close(ptr %s57)
  br label %bb290
bb281:
  %t1699 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1699, ptr %l606, !tbaa !29
  store i1 false, ptr %l607, !tbaa !21
  %t1700 = load ptr, ptr %l606, !tbaa !29
  %t1701 = icmp ne ptr %t1700, null
  br i1 %t1701, label %bb282, label %bb283
bb282:
  %t1703 = load ptr, ptr %l606, !tbaa !29
  %t1704 = load i64, ptr %t1703, !range !{i64 0, i64 16}
  %t1706 = icmp eq i64 %t1704, 10
  store i1 %t1706, ptr %l607, !tbaa !21
  br label %bb283
bb283:
  %t1707 = load i1, ptr %l607, !tbaa !21
  br i1 %t1707, label %bb284, label %bb285
bb284:
  %t1708 = load ptr, ptr %l1, !tbaa !29
  %t1710 = getelementptr { i64, [21 x i64] }, ptr %t1708, i32 0, i32 1
  %t1711 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1710, i32 0, i32 1
  %t1712 = load i32, ptr %t1711
  store i32 %t1712, ptr %l51, !tbaa !23
  %t1714 = load ptr, ptr %l1, !tbaa !29
  %t1716 = getelementptr { i64, [21 x i64] }, ptr %t1714, i32 0, i32 1
  %t1717 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1716, i32 0, i32 2
  %t1718 = load i32, ptr %t1717
  store i32 %t1718, ptr %l52, !tbaa !23
  br label %bb286
bb285:
  br label %bb289
bb286:
  %t1720 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1720, ptr %l614, !tbaa !29
  %t1721 = load i32, ptr %l51, !tbaa !23
  store i32 %t1721, ptr %l615, !tbaa !23
  %t1722 = load ptr, ptr %l0, !tbaa !29
  %t1724 = getelementptr %"compiler/emit:fnEm", ptr %t1722, i32 0, i32 1
  %t1725 = load ptr, ptr %t1724, !tbaa !29
  %t1727 = getelementptr %"compiler/mir:Fn", ptr %t1725, i32 0, i32 16
  %t1728 = load i32, ptr %l52, !tbaa !23
  %t1730 = sext i32 %t1728 to i64
  %t1733 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t1727, i64 %t1730)
  store %"compiler/mir:Task" %t1733, ptr %l621
  br label %bb287
bb287:
  %t1734 = load ptr, ptr %l614, !tbaa !29
  %t1735 = load i32, ptr %l615, !tbaa !23
  %t1736 = load %"compiler/mir:Task", ptr %l621
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2espawn(ptr %v0, ptr %t1734, i32 %t1735, %"compiler/mir:Task" %t1736)
  br label %bb288
bb288:
  br label %bb290
bb289:
  call void @__olang_check_failed(ptr @olang_loc_73cacc8093766858_2881ed4d4d5af0d4)
  unreachable
bb290:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2esubprogram(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l11 = alloca i1
  %l15 = alloca i1
  %l24 = alloca i64
  %l32 = alloca i64
  %l33 = alloca ptr
  %l35 = alloca i64
  %l38 = alloca i1
  %l42 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l64 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Fn", ptr %t6, i32 0, i32 2
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb6
bb2:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/mir:Fn", ptr %t13, i32 0, i32 3
  %t16 = getelementptr %"compiler/source:Span", ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = icmp eq i32 %t17, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/mir:Fn", ptr %t21, i32 0, i32 3
  %t24 = getelementptr %"compiler/source:Span", ptr %t23, i32 0, i32 1
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = icmp eq i32 %t25, 0
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l15, !tbaa !21
  store i1 %t29, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l11, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/emit:fnEm", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l2, !tbaa !29
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/mir:Fn", ptr %t37, i32 0, i32 2
  %t40 = load i64, ptr %t39, !tbaa !24
  %t43 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgFile(ptr %v0, ptr %t36, i64 %t40)
  store i64 %t43, ptr %l24
  br label %bb10
bb10:
  %t44 = load i64, ptr %l24, !tbaa !24
  store i64 %t44, ptr %l3, !tbaa !24
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr %"compiler/emit:Emitter", ptr %t45, i32 0, i32 2
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/mir:Fn", ptr %t49, i32 0, i32 2
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/mir:Fn", ptr %t53, i32 0, i32 3
  %t56 = getelementptr %"compiler/source:Span", ptr %t55, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  %t59 = sext i32 %t57 to i64
  %t63 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t48, i64 %t52, i64 %t59)
  store i64 %t63, ptr %l32
  br label %bb11
bb11:
  %t64 = load i64, ptr %l32, !tbaa !24
  store i64 %t64, ptr %l4, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l33, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t66)
  store i64 %t68, ptr %l35
  br label %bb12
bb12:
  %t69 = load i64, ptr %l35, !tbaa !24
  %t70 = load ptr, ptr %l33, !tbaa !29
  %t71 = getelementptr %"compiler/emit:fnEm", ptr %t70, i32 0, i32 18
  store i64 %t69, ptr %t71, !tbaa !24
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t74 = getelementptr %"compiler/emit:Emitter", ptr %t72, i32 0, i32 7
  %t75 = load i1, ptr %t74, !tbaa !21
  br i1 %t75, label %bb13, label %bb14
bb13:
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr %"compiler/emit:Emitter", ptr %t77, i32 0, i32 5
  %t80 = load i1, ptr %t79, !tbaa !21
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l38, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb15
bb15:
  %t84 = load i1, ptr %l38, !tbaa !21
  br i1 %t84, label %bb16, label %bb17
bb16:
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/mir:Fn", ptr %t86, i32 0, i32 0
  %t89 = load { i64, [2 x i64] }, ptr %t88
  %t92 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eProfName(ptr %v0, ptr %s0, ptr %t85, { i64, [2 x i64] } %t89)
  store { i64, ptr } %t92, ptr %l46
  br label %bb18
bb17:
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/mir:Fn", ptr %t94, i32 0, i32 0
  %t97 = load { i64, [2 x i64] }, ptr %t96
  %t100 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgName(ptr %v0, ptr %s0, ptr %t93, { i64, [2 x i64] } %t97)
  store { i64, ptr } %t100, ptr %l50
  br label %bb19
bb18:
  %t101 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t101, ptr %l42, !tbaa !27
  br label %bb20
bb19:
  %t102 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t102, ptr %l42, !tbaa !27
  br label %bb20
bb20:
  %t103 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/emit:fnEm", ptr %t104, i32 0, i32 21
  store ptr %t106, ptr %l52, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/emit:fnEm", ptr %t107, i32 0, i32 18
  %t110 = load i64, ptr %t109, !tbaa !24
  store i64 %t110, ptr %l54, !tbaa !24
  %t113 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s0, ptr %s0, { i64, ptr } %t103)
  store { i64, ptr } %t113, ptr %l56
  br label %bb21
bb21:
  %t114 = load i64, ptr %l3, !tbaa !24
  store i64 %t114, ptr %l57, !tbaa !24
  %t115 = load i64, ptr %l3, !tbaa !24
  store i64 %t115, ptr %l58, !tbaa !24
  %t116 = load i64, ptr %l4, !tbaa !24
  store i64 %t116, ptr %l59, !tbaa !24
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgSubTy(ptr %v0, ptr %t117)
  store i64 %t119, ptr %l61
  br label %bb22
bb22:
  %t120 = load i64, ptr %l4, !tbaa !24
  store i64 %t120, ptr %l62, !tbaa !24
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t123 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgCu(ptr %v0, ptr %t121)
  store i64 %t123, ptr %l64
  br label %bb23
bb23:
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t126 = load i64, ptr %l54, !tbaa !24
  %t127 = call i64 @__olang_fmt_i64(ptr null, i64 %t126)
  %t128 = add i64 %t125, %t127
  %t129 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t131 = add i64 %t128, %t130
  %t132 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = add i64 %t131, %t134
  %t136 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t138 = add i64 %t135, %t137
  %t139 = load i64, ptr %l57, !tbaa !24
  %t140 = call i64 @__olang_fmt_i64(ptr null, i64 %t139)
  %t141 = add i64 %t138, %t140
  %t142 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = load i64, ptr %l58, !tbaa !24
  %t146 = call i64 @__olang_fmt_i64(ptr null, i64 %t145)
  %t147 = add i64 %t144, %t146
  %t148 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t150 = add i64 %t147, %t149
  %t151 = load i64, ptr %l59, !tbaa !24
  %t152 = call i64 @__olang_fmt_i64(ptr null, i64 %t151)
  %t153 = add i64 %t150, %t152
  %t154 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t157 = load i64, ptr %l61, !tbaa !24
  %t158 = call i64 @__olang_fmt_i64(ptr null, i64 %t157)
  %t159 = add i64 %t156, %t158
  %t160 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t162 = add i64 %t159, %t161
  %t163 = load i64, ptr %l62, !tbaa !24
  %t164 = call i64 @__olang_fmt_i64(ptr null, i64 %t163)
  %t165 = add i64 %t162, %t164
  %t166 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t168 = add i64 %t165, %t167
  %t169 = load i64, ptr %l64, !tbaa !24
  %t170 = call i64 @__olang_fmt_i64(ptr null, i64 %t169)
  %t171 = add i64 %t168, %t170
  %t172 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t174 = add i64 %t171, %t173
  %t175 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t174)
  call void @olang_textcopy(ptr %t175, ptr %t124, i64 %t125)
  %t176 = getelementptr i8, ptr %t175, i64 %t125
  %t177 = call i64 @__olang_fmt_i64(ptr %t176, i64 %t126)
  %t178 = getelementptr i8, ptr %t176, i64 %t127
  call void @olang_textcopy(ptr %t178, ptr %t129, i64 %t130)
  %t179 = getelementptr i8, ptr %t178, i64 %t130
  call void @olang_textcopy(ptr %t179, ptr %t133, i64 %t134)
  %t180 = getelementptr i8, ptr %t179, i64 %t134
  call void @olang_textcopy(ptr %t180, ptr %t136, i64 %t137)
  %t181 = getelementptr i8, ptr %t180, i64 %t137
  %t182 = call i64 @__olang_fmt_i64(ptr %t181, i64 %t139)
  %t183 = getelementptr i8, ptr %t181, i64 %t140
  call void @olang_textcopy(ptr %t183, ptr %t142, i64 %t143)
  %t184 = getelementptr i8, ptr %t183, i64 %t143
  %t185 = call i64 @__olang_fmt_i64(ptr %t184, i64 %t145)
  %t186 = getelementptr i8, ptr %t184, i64 %t146
  call void @olang_textcopy(ptr %t186, ptr %t148, i64 %t149)
  %t187 = getelementptr i8, ptr %t186, i64 %t149
  %t188 = call i64 @__olang_fmt_i64(ptr %t187, i64 %t151)
  %t189 = getelementptr i8, ptr %t187, i64 %t152
  call void @olang_textcopy(ptr %t189, ptr %t154, i64 %t155)
  %t190 = getelementptr i8, ptr %t189, i64 %t155
  %t191 = call i64 @__olang_fmt_i64(ptr %t190, i64 %t157)
  %t192 = getelementptr i8, ptr %t190, i64 %t158
  call void @olang_textcopy(ptr %t192, ptr %t160, i64 %t161)
  %t193 = getelementptr i8, ptr %t192, i64 %t161
  %t194 = call i64 @__olang_fmt_i64(ptr %t193, i64 %t163)
  %t195 = getelementptr i8, ptr %t193, i64 %t164
  call void @olang_textcopy(ptr %t195, ptr %t166, i64 %t167)
  %t196 = getelementptr i8, ptr %t195, i64 %t167
  %t197 = call i64 @__olang_fmt_i64(ptr %t196, i64 %t169)
  %t198 = getelementptr i8, ptr %t196, i64 %t170
  call void @olang_textcopy(ptr %t198, ptr %t172, i64 %t173)
  %t199 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t175, 1
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t203 = extractvalue { i64, ptr } %t200, 1
  %t204 = mul i64 %t202, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t204)
  call void @llvm.memcpy.p0.p0.i64(ptr %t205, ptr %t203, i64 %t204, i1 false)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t208 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t208, { i64, ptr } %t207)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5, ptr %a6, ptr %a7) #0 {
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
  %l50 = alloca ptr
  %l53 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l81 = alloca { i64, [21 x i64] }
  %l82 = alloca { i64, [21 x i64] }
  %l89 = alloca { i64, [21 x i64] }
  %l101 = alloca ptr
  %l105 = alloca i64
  %l110 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l137 = alloca i32
  %l140 = alloca i32
  %l158 = alloca ptr
  %l166 = alloca %"compiler/mir:Case"
  %l181 = alloca %"compiler/mir:Call"
  %l199 = alloca i1
  %l243 = alloca i64
  %l245 = alloca i64
  %l250 = alloca i64
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
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  store ptr %t20, ptr %l50
  br label %bb1
bb1:
  %t21 = load ptr, ptr %l50, !tbaa !29
  store ptr %t21, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  %t22 = load ptr, ptr %l10, !tbaa !29
  %t24 = getelementptr %"compiler/mir:BasicBlock", ptr %t22, i32 0, i32 0
  %t26 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l53
  br label %bb2
bb2:
  %t27 = load i64, ptr %l53, !tbaa !24
  store i64 %t27, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t28 = load i64, ptr %l12, !tbaa !24
  %t29 = load i64, ptr %l11, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb3, label %bb4
bb3:
  %t34 = load i64, ptr %l13, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb8
bb5:
  %t38 = load i64, ptr %l12, !tbaa !24
  %t39 = load i64, ptr %l11, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l13, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l13, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l60, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb7
bb7:
  %t54 = load i64, ptr %l60, !tbaa !24
  store i64 %t54, ptr %l57, !tbaa !24
  br label %bb8
bb8:
  %t55 = load i64, ptr %l57, !tbaa !24
  store i64 %t55, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb9
bb9:
  %t56 = load i64, ptr %l15, !tbaa !24
  %t57 = load i64, ptr %l14, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb10, label %bb11
bb10:
  br label %bb42
bb11:
  br label %bb12
bb12:
  %t64 = load i64, ptr %l11, !tbaa !24
  %t65 = load i64, ptr %l15, !tbaa !24
  %t66 = load i64, ptr %l13, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l16, !tbaa !24
  %t74 = load ptr, ptr %l10, !tbaa !29
  %t76 = getelementptr %"compiler/mir:BasicBlock", ptr %t74, i32 0, i32 0
  %t77 = load i64, ptr %l16, !tbaa !24
  %t80 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t76, i64 %t77)
  store { i64, [21 x i64] } %t80, ptr %l81
  br label %bb13
bb13:
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %l81, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l82, ptr %l17, i64 176, i1 false)
  %t81 = load { i64, [21 x i64] }, ptr %l82
  %t82 = extractvalue { i64, [21 x i64] } %t81, 0
  %t83 = icmp eq i64 %t82, 3
  br i1 %t83, label %bb14, label %bb15
bb14:
  %t85 = getelementptr { i64, [21 x i64] }, ptr %l17, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32 }, ptr %t85, i32 0, i32 1
  %t87 = load i32, ptr %t86
  store i32 %t87, ptr %l18, !tbaa !23
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t89 = load i32, ptr %l18, !tbaa !23
  %t91 = sext i32 %t89 to i64
  %t92 = load i64, ptr %l1, !tbaa !24
  %t95 = icmp eq i64 %t91, %t92
  br i1 %t95, label %bb17, label %bb18
bb17:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb40
bb20:
  call void @llvm.memmove.p0.p0.i64(ptr %l89, ptr %l17, i64 176, i1 false)
  %t97 = load { i64, [21 x i64] }, ptr %l89
  %t98 = extractvalue { i64, [21 x i64] } %t97, 0
  %t99 = icmp eq i64 %t98, 4
  br i1 %t99, label %bb21, label %bb22
bb21:
  %t101 = getelementptr { i64, [21 x i64] }, ptr %l17, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32 }, ptr %t101, i32 0, i32 1
  %t103 = load i32, ptr %t102
  store i32 %t103, ptr %l19, !tbaa !23
  br label %bb23
bb22:
  br label %bb35
bb23:
  %t105 = load i32, ptr %l19, !tbaa !23
  %t107 = sext i32 %t105 to i64
  %t108 = load i64, ptr %l1, !tbaa !24
  %t111 = icmp ne i64 %t107, %t108
  br i1 %t111, label %bb24, label %bb25
bb24:
  br label %bb41
bb25:
  br label %bb26
bb26:
  %t113 = load i64, ptr %l4, !tbaa !24
  %t115 = icmp eq i64 %t113, 1
  br i1 %t115, label %bb27, label %bb28
bb27:
  %t117 = load i64, ptr %l9, !tbaa !24
  %t119 = icmp eq i64 %t117, 2
  br i1 %t119, label %bb29, label %bb30
bb28:
  br label %bb34
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  store ptr %a7, ptr %l101, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i64, ptr %l3, !tbaa !24
  %t125 = load i64, ptr %l16, !tbaa !24
  %t129 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkKey(ptr %v0, ptr %t123, i64 %t124, i64 %t125)
  store i64 %t129, ptr %l105
  br label %bb32
bb32:
  %t130 = load i64, ptr %l9, !tbaa !24
  %t132 = icmp eq i64 %t130, 1
  %t133 = load ptr, ptr %l101, !tbaa !29
  %t134 = load i64, ptr %l105, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v3, ptr %t133, i64 %t134, i1 %t132)
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
  %t136 = load i64, ptr %l15, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l15, !tbaa !24
  br label %bb9
bb42:
  %t140 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %l110
  br label %bb43
bb43:
  %t141 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %l20
  %t142 = load ptr, ptr %l10, !tbaa !29
  %t144 = getelementptr %"compiler/mir:BasicBlock", ptr %t142, i32 0, i32 1
  %t145 = load { i64, [8 x i64] }, ptr %t144
  store { i64, [8 x i64] } %t145, ptr %l21
  %t147 = load { i64, [8 x i64] }, ptr %l21
  %t149 = extractvalue { i64, [8 x i64] } %t147, 0
  %t150 = icmp eq i64 %t149, 1
  br i1 %t150, label %bb44, label %bb45
bb44:
  %t152 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t153 = getelementptr { i32 }, ptr %t152, i32 0, i32 0
  %t154 = load i32, ptr %t153
  store i32 %t154, ptr %l22, !tbaa !23
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t156 = load i32, ptr %l22, !tbaa !23
  %t158 = sext i32 %t156 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t158)
  br label %bb47
bb47:
  br label %bb120
bb48:
  %t161 = load { i64, [8 x i64] }, ptr %l21
  %t163 = extractvalue { i64, [8 x i64] } %t161, 0
  %t164 = icmp eq i64 %t163, 2
  br i1 %t164, label %bb49, label %bb50
bb49:
  %t166 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t167 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t166, i32 0, i32 1
  %t168 = load i32, ptr %t167
  store i32 %t168, ptr %l23, !tbaa !23
  %t170 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t171 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t170, i32 0, i32 2
  %t172 = load i32, ptr %t171
  store i32 %t172, ptr %l24, !tbaa !23
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t174 = load i32, ptr %l23, !tbaa !23
  %t176 = sext i32 %t174 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t176)
  br label %bb52
bb52:
  %t179 = load i32, ptr %l24, !tbaa !23
  %t181 = sext i32 %t179 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t181)
  br label %bb53
bb53:
  br label %bb120
bb54:
  %t184 = load { i64, [8 x i64] }, ptr %l21
  %t186 = extractvalue { i64, [8 x i64] } %t184, 0
  %t187 = icmp eq i64 %t186, 3
  br i1 %t187, label %bb55, label %bb56
bb55:
  %t189 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t190 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t189, i32 0, i32 1
  %t191 = load %"compiler/mir:Range", ptr %t190
  store %"compiler/mir:Range" %t191, ptr %l25
  %t193 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t194 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t193, i32 0, i32 2
  %t195 = load i32, ptr %t194
  store i32 %t195, ptr %l26, !tbaa !23
  br label %bb57
bb56:
  br label %bb73
bb57:
  store i32 0, ptr %l27, !tbaa !23
  %t197 = getelementptr %"compiler/mir:Range", ptr %l25, i32 0, i32 1
  %t198 = load i32, ptr %t197, !tbaa !23
  store i32 %t198, ptr %l28, !tbaa !23
  store i32 1, ptr %l29, !tbaa !23
  %t200 = load i32, ptr %l28, !tbaa !23
  %t201 = load i32, ptr %l27, !tbaa !23
  %t204 = icmp sgt i32 %t200, %t201
  br i1 %t204, label %bb58, label %bb59
bb58:
  %t206 = load i32, ptr %l29, !tbaa !23
  %t208 = icmp sgt i32 %t206, 0
  br i1 %t208, label %bb60, label %bb61
bb59:
  store i32 0, ptr %l137, !tbaa !23
  br label %bb63
bb60:
  %t210 = load i32, ptr %l28, !tbaa !23
  %t211 = load i32, ptr %l27, !tbaa !23
  %t214 = sub i32 %t210, %t211
  %t215 = load i32, ptr %l29, !tbaa !23
  %t218 = add i32 %t214, %t215
  %t220 = sub i32 %t218, 1
  %t221 = load i32, ptr %l29, !tbaa !23
  %t224 = sdiv i32 %t220, %t221
  store i32 %t224, ptr %l140, !tbaa !23
  br label %bb62
bb61:
  store i32 0, ptr %l140, !tbaa !23
  br label %bb62
bb62:
  %t226 = load i32, ptr %l140, !tbaa !23
  store i32 %t226, ptr %l137, !tbaa !23
  br label %bb63
bb63:
  %t227 = load i32, ptr %l137, !tbaa !23
  store i32 %t227, ptr %l30, !tbaa !23
  store i32 0, ptr %l31, !tbaa !23
  br label %bb64
bb64:
  %t228 = load i32, ptr %l31, !tbaa !23
  %t229 = load i32, ptr %l30, !tbaa !23
  %t232 = icmp slt i32 %t228, %t229
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb65, label %bb66
bb65:
  br label %bb71
bb66:
  br label %bb67
bb67:
  %t236 = load i32, ptr %l27, !tbaa !23
  %t237 = load i32, ptr %l31, !tbaa !23
  %t238 = load i32, ptr %l29, !tbaa !23
  %t241 = mul i32 %t237, %t238
  %t244 = add i32 %t236, %t241
  store ptr %l20, ptr %l158, !tbaa !29
  %t246 = load ptr, ptr %l8, !tbaa !29
  %t248 = getelementptr %"compiler/mir:Fn", ptr %t246, i32 0, i32 15
  %t249 = getelementptr %"compiler/mir:Range", ptr %l25, i32 0, i32 0
  %t250 = load i32, ptr %t249, !tbaa !23
  %t252 = sext i32 %t250 to i64
  %t255 = sext i32 %t244 to i64
  %t258 = add i64 %t252, %t255
  %t261 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %t248, i64 %t258)
  store %"compiler/mir:Case" %t261, ptr %l166
  br label %bb68
bb68:
  %t262 = getelementptr %"compiler/mir:Case", ptr %l166, i32 0, i32 1
  %t263 = load i32, ptr %t262, !tbaa !23
  %t265 = sext i32 %t263 to i64
  %t266 = load ptr, ptr %l158, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t266, i64 %t265)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t268 = load i32, ptr %l31, !tbaa !23
  %t270 = add i32 %t268, 1
  store i32 %t270, ptr %l31, !tbaa !23
  br label %bb64
bb71:
  %t272 = load i32, ptr %l26, !tbaa !23
  %t274 = sext i32 %t272 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t274)
  br label %bb72
bb72:
  br label %bb120
bb73:
  %t277 = load { i64, [8 x i64] }, ptr %l21
  %t279 = extractvalue { i64, [8 x i64] } %t277, 0
  %t280 = icmp eq i64 %t279, 4
  br i1 %t280, label %bb74, label %bb75
bb74:
  %t282 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t283 = getelementptr { %"compiler/source:Span", i32 }, ptr %t282, i32 0, i32 1
  %t284 = load i32, ptr %t283
  store i32 %t284, ptr %l33, !tbaa !23
  br label %bb76
bb75:
  br label %bb100
bb76:
  %t286 = load ptr, ptr %l8, !tbaa !29
  %t288 = getelementptr %"compiler/mir:Fn", ptr %t286, i32 0, i32 14
  %t289 = load i32, ptr %l33, !tbaa !23
  %t291 = sext i32 %t289 to i64
  %t294 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t288, i64 %t291)
  store %"compiler/mir:Call" %t294, ptr %l181
  br label %bb77
bb77:
  %t295 = load %"compiler/mir:Call", ptr %l181
  store %"compiler/mir:Call" %t295, ptr %l34
  %t296 = load i32, ptr %l33, !tbaa !23
  %t298 = sext i32 %t296 to i64
  %t302 = icmp eq i64 %t298, %a2
  br i1 %t302, label %bb78, label %bb79
bb78:
  %t304 = load i64, ptr %l9, !tbaa !24
  %t306 = icmp ne i64 %t304, 0
  br i1 %t306, label %bb80, label %bb81
bb79:
  br label %bb94
bb80:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb81:
  br label %bb82
bb82:
  %t309 = load i64, ptr %l4, !tbaa !24
  %t311 = icmp eq i64 %t309, 0
  br i1 %t311, label %bb83, label %bb84
bb83:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t315 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 5
  %t316 = load i32, ptr %t315, !tbaa !23
  %t318 = sext i32 %t316 to i64
  %t319 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkJoin(ptr %v0, ptr %v1, ptr %v2, ptr %t313, { i64, ptr } %t314, i64 %t318, i64 1, ptr %t319)
  br label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb86
bb86:
  %t324 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 7
  %t325 = load i32, ptr %t324, !tbaa !23
  %t326 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t329 = icmp ne i32 %t325, %t326
  br i1 %t329, label %bb87, label %bb88
bb87:
  %t331 = load i64, ptr %l4, !tbaa !24
  %t333 = icmp eq i64 %t331, 0
  store i1 %t333, ptr %l199, !tbaa !21
  br label %bb89
bb88:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb89
bb89:
  %t335 = load i1, ptr %l199, !tbaa !21
  br i1 %t335, label %bb90, label %bb91
bb90:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t338 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 7
  %t339 = load i32, ptr %t338, !tbaa !23
  %t341 = sext i32 %t339 to i64
  %t342 = load i64, ptr %l9, !tbaa !24
  %t343 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkJoin(ptr %v0, ptr %v1, ptr %v2, ptr %t336, { i64, ptr } %t337, i64 %t341, i64 %t342, ptr %t343)
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
  %t349 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 5
  %t350 = load i32, ptr %t349, !tbaa !23
  %t352 = sext i32 %t350 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t352)
  br label %bb95
bb95:
  %t355 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 7
  %t356 = load i32, ptr %t355, !tbaa !23
  %t357 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t360 = icmp ne i32 %t356, %t357
  br i1 %t360, label %bb96, label %bb97
bb96:
  %t362 = getelementptr %"compiler/mir:Call", ptr %l34, i32 0, i32 7
  %t363 = load i32, ptr %t362, !tbaa !23
  %t365 = sext i32 %t363 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t365)
  br label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb99
bb99:
  br label %bb120
bb100:
  %t368 = load { i64, [8 x i64] }, ptr %l21
  %t370 = extractvalue { i64, [8 x i64] } %t368, 0
  %t371 = icmp eq i64 %t370, 8
  br i1 %t371, label %bb101, label %bb102
bb101:
  %t373 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t373, i32 0, i32 2
  %t375 = load i32, ptr %t374
  store i32 %t375, ptr %l35, !tbaa !23
  %t377 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t378 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t377, i32 0, i32 4
  %t379 = load i32, ptr %t378
  store i32 %t379, ptr %l36, !tbaa !23
  br label %bb103
bb102:
  br label %bb109
bb103:
  %t381 = load i32, ptr %l35, !tbaa !23
  %t383 = sext i32 %t381 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t383)
  br label %bb104
bb104:
  %t386 = load i32, ptr %l36, !tbaa !23
  %t387 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t390 = icmp ne i32 %t386, %t387
  br i1 %t390, label %bb105, label %bb106
bb105:
  %t392 = load i32, ptr %l36, !tbaa !23
  %t394 = sext i32 %t392 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t394)
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  br label %bb120
bb109:
  %t397 = load { i64, [8 x i64] }, ptr %l21
  %t399 = extractvalue { i64, [8 x i64] } %t397, 0
  %t400 = icmp eq i64 %t399, 11
  br i1 %t400, label %bb110, label %bb111
bb110:
  %t402 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t403 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t402, i32 0, i32 2
  %t404 = load i32, ptr %t403
  store i32 %t404, ptr %l37, !tbaa !23
  %t406 = getelementptr { i64, [8 x i64] }, ptr %l21, i32 0, i32 1
  %t407 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t406, i32 0, i32 4
  %t408 = load i32, ptr %t407
  store i32 %t408, ptr %l38, !tbaa !23
  br label %bb112
bb111:
  br label %bb115
bb112:
  %t410 = load i32, ptr %l37, !tbaa !23
  %t412 = sext i32 %t410 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t412)
  br label %bb113
bb113:
  %t415 = load i32, ptr %l38, !tbaa !23
  %t417 = sext i32 %t415 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t417)
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
  %t420 = load i64, ptr %l4, !tbaa !24
  %t422 = icmp eq i64 %t420, 0
  br i1 %t422, label %bb121, label %bb122
bb121:
  store ptr %l20, ptr %l39, !tbaa !29
  store i64 0, ptr %l40, !tbaa !24
  br label %bb123
bb122:
  br label %bb132
bb123:
  %t425 = load i64, ptr %l40, !tbaa !24
  store i64 %t425, ptr %l243, !tbaa !24
  %t426 = load ptr, ptr %l39, !tbaa !29
  %t428 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t426)
  store i64 %t428, ptr %l245
  br label %bb124
bb124:
  %t429 = load i64, ptr %l243, !tbaa !24
  %t430 = load i64, ptr %l245, !tbaa !24
  %t431 = icmp slt i64 %t429, %t430
  %t433 = xor i1 %t431, true
  br i1 %t433, label %bb125, label %bb126
bb125:
  br label %bb131
bb126:
  br label %bb127
bb127:
  %t435 = load ptr, ptr %l39, !tbaa !29
  %t436 = load i64, ptr %l40, !tbaa !24
  %t439 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t435, i64 %t436)
  store i64 %t439, ptr %l250
  br label %bb128
bb128:
  %t440 = load i64, ptr %l250, !tbaa !24
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t444 = load i64, ptr %l9, !tbaa !24
  %t445 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkJoin(ptr %v0, ptr %v1, ptr %v2, ptr %t441, { i64, ptr } %t442, i64 %t440, i64 %t444, ptr %t445)
  br label %bb129
bb129:
  br label %bb130
bb130:
  %t451 = load i64, ptr %l40, !tbaa !24
  %t453 = add i64 %t451, 1
  store i64 %t453, ptr %l40, !tbaa !24
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

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkEnd(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i32
  %l17 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 31
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i1, ptr %l7, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb8
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:fnEm", ptr %t11, i32 0, i32 32
  %t17 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t13, i64 %a2)
  %t18 = extractvalue { i32, i1 } %t17, 1
  %t19 = extractvalue { i32, i1 } %t17, 0
  store i32 %t19, ptr %l15
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb5, label %ok.21, !prof !99
ok.21:
  store i1 %t18, ptr %l14
  br label %bb4
bb4:
  %t22 = load i1, ptr %l14, !tbaa !21
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l10, !tbaa !21
  %t24 = xor i1 %t23, true
  store i1 %t24, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l9, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/emit:fnEm", ptr %t27, i32 0, i32 33
  %t30 = load i64, ptr %l1, !tbaa !24
  %t33 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t29, i64 %t30)
  %t34 = extractvalue { i32, i64 } %t33, 1
  %t35 = extractvalue { i32, i64 } %t33, 0
  store i32 %t35, ptr %l22
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb13, label %ok.37, !prof !99
ok.37:
  store i64 %t34, ptr %l21
  br label %bb12
bb12:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l17, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb15
bb15:
  %t39 = load i64, ptr %l17, !tbaa !24
  store i64 %t39, ptr %l3, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/emit:fnEm", ptr %t40, i32 0, i32 33
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = add i64 %t44, 1
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t42, i64 %t43, i64 %t46)
  br label %bb16
bb16:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  %t53 = call i64 @__olang_fmt_i64(ptr null, i64 %t51)
  %t54 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t53)
  %t55 = call i64 @__olang_fmt_i64(ptr %t54, i64 %t51)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = extractvalue { i64, ptr } %t57, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t65 = load i64, ptr %l1, !tbaa !24
  %t66 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t69 = call i64 @__olang_fmt_i64(ptr null, i64 %t65)
  %t70 = add i64 %t67, %t69
  %t71 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t70)
  call void @olang_textcopy(ptr %t71, ptr %t66, i64 %t67)
  %t72 = getelementptr i8, ptr %t71, i64 %t67
  %t73 = call i64 @__olang_fmt_i64(ptr %t72, i64 %t65)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t71, 1
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t78 = extractvalue { i64, ptr } %t75, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t50, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d191, i32 0, i32 1) }, { i64, ptr } %t64, { i64, ptr } %t82, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb17
bb17:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i64, ptr %l1, !tbaa !24
  %t88 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  %t91 = call i64 @__olang_fmt_i64(ptr null, i64 %t87)
  %t92 = add i64 %t89, %t91
  %t93 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t92)
  call void @olang_textcopy(ptr %t93, ptr %t88, i64 %t89)
  %t94 = getelementptr i8, ptr %t93, i64 %t89
  %t95 = call i64 @__olang_fmt_i64(ptr %t94, i64 %t87)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t93, 1
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t100 = extractvalue { i64, ptr } %t97, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t86, { i64, ptr } %t104)
  br label %bb18
bb18:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i64, ptr %l1, !tbaa !24
  %t109 = load i64, ptr %l3, !tbaa !24
  %t110 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  %t113 = call i64 @__olang_fmt_i64(ptr null, i64 %t108)
  %t114 = add i64 %t111, %t113
  %t115 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t117 = add i64 %t114, %t116
  %t119 = call i64 @__olang_fmt_i64(ptr null, i64 %t109)
  %t120 = add i64 %t117, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t110, i64 %t111)
  %t122 = getelementptr i8, ptr %t121, i64 %t111
  %t123 = call i64 @__olang_fmt_i64(ptr %t122, i64 %t108)
  %t124 = getelementptr i8, ptr %t122, i64 %t113
  call void @olang_textcopy(ptr %t124, ptr %t115, i64 %t116)
  %t125 = getelementptr i8, ptr %t124, i64 %t116
  %t126 = call i64 @__olang_fmt_i64(ptr %t125, i64 %t109)
  %t127 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t121, 1
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t131 = extractvalue { i64, ptr } %t128, 1
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t133, ptr %t131, i64 %t132, i1 false)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t107, { i64, ptr } %t135)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
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
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
@.d0 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ptr sret(" }>, align 8
@.d1 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c") align " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d2 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d14 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", ..." }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" nobuiltin memory(write)" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"G." }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d22 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" noinline cold" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@.d24 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"define dso_local " }>, align 8
@.d25 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"define linkonce_odr " }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
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

@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0 = weak hidden constant i1 false
@olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d31 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d32 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%k" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d35 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"h = lshr i32 " }>, align 8
@.d36 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", 16\0A  " }>, align 8
@.d37 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" = icmp eq i32 " }>, align 8
@.d38 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"h, " }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d40 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d41 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" = icmp eq i32 " }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d44 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d45 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"o = or i1 " }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"o" }>, align 8
@.d49 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  br i1 " }>, align 8
@.d50 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", label %take" }>, align 8
@.d51 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", label %pass" }>, align 8
@.d52 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\0Atake" }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d54 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"pt" }>, align 8
@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d56 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_errpay_pop" }>, align 8
@.d57 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  br i1 " }>, align 8
@.d58 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", label %ptyes" }>, align 8
@.d59 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", label %ptno" }>, align 8
@.d60 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"\0Aptyes" }>, align 8
@.d61 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c":\0A  call void @__olang_errpay_pop()\0A" }>, align 8
@.d62 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"  br label %ptno" }>, align 8
@.d63 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\0Aptno" }>, align 8
@.d64 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d65 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hv" }>, align 8
@.d66 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" = load { ptr, ptr }, ptr %f" }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d68 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hc" }>, align 8
@.d69 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" = extractvalue { ptr, ptr } %hv" }>, align 8
@.d70 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", 0\0A  %he" }>, align 8
@.d71 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 1\0A" }>, align 8
@.d72 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"ptr %he" }>, align 8
@.d73 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %ho" }>, align 8
@.d74 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" = alloca " }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d76 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %ho" }>, align 8
@.d77 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_prog_scope" }>, align 8
@.d78 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"@__olang_prog_scope = external thread_local(initialexec) global ptr" }>, align 8
@.d79 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hs" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d81 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c" = load ptr, ptr @__olang_prog_scope\0A" }>, align 8
@.d82 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %hs" }>, align 8
@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d84 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d85 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d86 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"  call void %hc" }>, align 8
@.d87 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d88 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d89 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hr" }>, align 8
@.d90 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" = call " }>, align 8
@.d91 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" %hc" }>, align 8
@.d92 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d93 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d94 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%hr" }>, align 8
@.d95 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hl" }>, align 8
@.d96 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" = load " }>, align 8
@.d97 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %ho" }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%hl" }>, align 8
@.d100 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d101 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hd" }>, align 8
@.d102 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = load ptr, ptr %f" }>, align 8
@.d103 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\0A  store " }>, align 8
@.d104 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d105 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %hd" }>, align 8
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d107 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d108 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"  ret ptr null\0Apass" }>, align 8
@.d109 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d110 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"getelementptr { i64, ptr }, ptr " }>, align 8
@.d111 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d112 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d113 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d114 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d116 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d118 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d119 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d120 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%lp" }>, align 8
@.d121 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d122 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s" }>, align 8
@.d123 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"store ptr %s" }>, align 8
@.d124 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"room, ptr %s" }>, align 8
@.d125 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a region" }>, align 8
@.d126 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"store %olang.scope zeroinitializer, ptr %s" }>, align 8
@.d127 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"store ptr null, ptr %jh" }>, align 8
@.d128 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_sb_done" }>, align 8
@.d129 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"getelementptr %olang.builder, ptr %s" }>, align 8
@.d130 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 3" }>, align 8
@.d131 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d132 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d133 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp ne ptr " }>, align 8
@.d134 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", null" }>, align 8
@.d135 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"sbgrew" }>, align 8
@.d136 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"sbdone" }>, align 8
@.d137 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d138 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", label %" }>, align 8
@.d139 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"call void @__olang_sb_done(ptr %s" }>, align 8
@.d140 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d141 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d142 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_close" }>, align 8
@.d143 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"call void @__olang_scope_close(ptr %s" }>, align 8
@.d144 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d145 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_errpay_set" }>, align 8
@.d146 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call void @__olang_errpay_set(ptr " }>, align 8
@.d147 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d148 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_errpay_pop" }>, align 8
@.d149 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call void @__olang_errpay_pop()" }>, align 8
@.d150 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"a cleanup (interpret's)" }>, align 8
@.d151 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a destructor not found: " }>, align 8
@.d152 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"__olang_scope_register_dtor" }>, align 8
@.d153 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"call void @__olang_scope_register_dtor(ptr " }>, align 8
@.d154 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d155 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@.d156 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"_rt)" }>, align 8
@.d157 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_region_drop" }>, align 8
@.d158 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"call void @__olang_region_drop(ptr " }>, align 8
@.d159 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d160 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d161 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"__olang_region_release" }>, align 8
@.d162 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"call void @__olang_region_release(ptr " }>, align 8
@.d163 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d164 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d165 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"inttoptr i64 " }>, align 8
@.d166 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to ptr" }>, align 8
@.d167 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq ptr " }>, align 8
@.d168 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d169 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_region_settle" }>, align 8
@.d170 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"call void @__olang_region_settle(ptr " }>, align 8
@.d171 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", i1 " }>, align 8
@.d172 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d173 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"mul i64 " }>, align 8
@.d174 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d175 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"llvm.memmove.p0.p0.i64" }>, align 8
@.d176 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d177 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"call void @llvm.memmove.p0.p0.i64(ptr " }>, align 8
@.d178 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d179 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d180 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i1 false)" }>, align 8
@.d181 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d182 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" = distinct !DISubprogram(name: \22" }>, align 8
@.d183 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"\22, scope: !" }>, align 8
@.d184 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", file: !" }>, align 8
@.d185 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", line: " }>, align 8
@.d186 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", type: !" }>, align 8
@.d187 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", scopeLine: " }>, align 8
@.d188 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c", spFlags: DISPFlagDefinition, unit: !" }>, align 8
@.d189 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d190 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%ws" }>, align 8
@.d191 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d192 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"br label %wend" }>, align 8
@.d193 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"wend" }>, align 8
@.d194 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
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
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportBodies(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_b7cf39b9bc6342b8_b5524b9e4a088564 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecParamSpelled(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, i1 %a3)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9506350913203bfc_41d6488afcc367c0 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_2a2725b2da5e1bad_47abef39162bd051 = external constant [0 x i8]
@G_2ecompiler_2femit_2eHomeShared = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExternSymbol(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2emathIntrinsic(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexternRet(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2emathParams(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecHeader(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2femit_2emathInexact = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [24 x i8] }>
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_bb76ec7af7236540_ac44298998ea7a2c = external constant [0 x i8]
@olang_loc_a37d1f87ccda68bc_daadd8872686b520 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9224769184a821c8_ff8c445af92d13bc = external constant [0 x i8]
@olang_loc_68254245c55f7699_2855b47650ff1f6d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
@G_2ecompiler_2femit_2eHomeInst = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erefs(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_de92fa5f00317f7b_3680b631254dc667 = external constant [0 x i8]
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitemNamed(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2femit_2eHomeLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_ce826338cbf4afde_5a793f5031108f92 = external constant [0 x i8]
@olang_loc_71a9e12f05a3bddd_baac335f863186a9 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2femit_2eHomeLoc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FC\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_2d324f4199cd7780_534dee4d2a64aebc = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_ccd5cb87339e775f_a8ec88fdee920643 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_502634e55cf63fe2_bb9ce6600b3e98e6 = external constant [0 x i8]
@olang_loc_b7179de695e5661_8fd10db64c62ad05 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He890afa3b14bd52c6ea464bca4cef525(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_80d737cc9290fb3c_d5f23604b0833618 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_50d6af1e4a9d3e1b_3bae03e7ad9fa57f = external constant [0 x i8]
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupRank(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v1, { i64, ptr } %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_cc429a944aa711b1_fe28fb9b816eebdd = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eP_H79a97b7337c7adf08bdd37311af7e171(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eAt_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eposition(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecarriesText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estoreParts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4, i64 %a5, i32 %a6)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskFix(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/mir:Task" %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
@olang_loc_44ed23dda5502268_7ffab923032619a4 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedBits(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5)
@olang_loc_745b41379bd01239_c904106b8ad08895 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare %"compiler/source:Span" @compiler_2femit_2estmtSpan(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2elocate(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efillInPlace(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2, { i64, [15 x i64] } %a3)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eintoPlace(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2, { i64, [15 x i64] } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ervalue(ptr %v0, ptr %v1, ptr %a0, { i64, [15 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2eClear_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eClear_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPush(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkKey(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPop(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2etrace(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholders(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, { i64, ptr } %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eanchorRegion(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectRef(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2ePush_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2espawn(ptr %v0, ptr %a0, i32 %a1, %"compiler/mir:Task" %a2)
@olang_loc_73cacc8093766858_2881ed4d4d5af0d4 = external constant [0 x i8]
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgFile(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eProfName(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgName(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2eescape(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgSubTy(ptr %v0, ptr %a0)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgCu(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_93708b25bcca1908_59bc9d4dcf3d1544 = external constant [0 x i8]
declare %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, ptr %a4)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@olang_loc_82759c8127bb92d9_9a26fc180f98a435 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)

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
