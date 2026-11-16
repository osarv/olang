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
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:RefsKept", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"compiler/typed:RefsKept" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cabi:Way" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/cabi:Regs" = type { i64, i64 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, { i64, ptr }, i1 }
%"compiler/emit:Reused" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/lower:Clone" = type { { i64, [2 x i64] }, i64, { i64, [2 x i64] }, i32 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:TaskClause" = type { %"compiler/mir:Range", i1, { i64, [4 x i64] } }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/emit:scopeUse" = type { { i64, ptr }, i1 }
define dso_local i64 @compiler_2femit_2eIntBytes8(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sle i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 8, ptr %l3, !tbaa !24
  br label %bb9
bb2:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = icmp sle i64 %t5, 16
  br i1 %t7, label %bb3, label %bb4
bb3:
  store i64 16, ptr %l6, !tbaa !24
  br label %bb8
bb4:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t11 = icmp sle i64 %t9, 32
  br i1 %t11, label %bb5, label %bb6
bb5:
  store i64 32, ptr %l9, !tbaa !24
  br label %bb7
bb6:
  store i64 64, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t13 = load i64, ptr %l9, !tbaa !24
  store i64 %t13, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t14 = load i64, ptr %l6, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  br label %bb9
bb9:
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgPair(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l21 = alloca i64
  %l27 = alloca i64
  %l29 = alloca i64
  %l35 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i64
  %l42 = alloca { i64, ptr }
  %l49 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca i64
  %l76 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = load i64, ptr %l14, !tbaa !24
  store i64 %t4, ptr %l6, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/emit:Emitter", ptr %t5, i32 0, i32 78
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t11 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t7, i64 %t10, i64 %t11)
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgVoidPtr(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l21
  br label %bb3
bb3:
  %t18 = load i64, ptr %l21, !tbaa !24
  store i64 %t18, ptr %l7, !tbaa !24
  %t19 = load i32, ptr %l3, !tbaa !23
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t23 = icmp ne i32 %t19, %t20
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l27
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t30 = load i64, ptr %l27, !tbaa !24
  store i64 %t30, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgVoidPtr(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l29
  br label %bb8
bb8:
  %t34 = load i64, ptr %l29, !tbaa !24
  store i64 %t34, ptr %l8, !tbaa !24
  %t35 = load i32, ptr %l5, !tbaa !23
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t39 = icmp ne i32 %t35, %t36
  br i1 %t39, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l5, !tbaa !23
  %t45 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t45, ptr %l35
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t46 = load i64, ptr %l35, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t47)
  store i64 %t49, ptr %l37
  br label %bb12
bb12:
  %t50 = load i64, ptr %l37, !tbaa !24
  store i64 %t50, ptr %l8, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l38, !tbaa !29
  %t52 = load i64, ptr %l8, !tbaa !24
  store i64 %t52, ptr %l39, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t55 = icmp sge i64 %t53, 0
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t61 = call i64 @__olang_fmt_i64(ptr null, i64 %t57)
  %t62 = add i64 %t59, %t61
  %t63 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t62)
  call void @olang_textcopy(ptr %t63, ptr %t58, i64 %t59)
  %t64 = getelementptr i8, ptr %t63, i64 %t59
  %t65 = call i64 @__olang_fmt_i64(ptr %t64, i64 %t57)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t63, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } %t67, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l42, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l42, !tbaa !27
  br label %bb15
bb15:
  %t76 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t78 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = add i64 %t77, %t80
  %t82 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t84 = add i64 %t81, %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t76, i64 %t77)
  %t86 = getelementptr i8, ptr %t85, i64 %t77
  call void @olang_textcopy(ptr %t86, ptr %t79, i64 %t80)
  %t87 = getelementptr i8, ptr %t86, i64 %t80
  call void @olang_textcopy(ptr %t87, ptr %t82, i64 %t83)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t85, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load ptr, ptr %l38, !tbaa !29
  %t98 = load i64, ptr %l39, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s2, ptr %t97, i64 %t98, { i64, ptr } %t96)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l49
  br label %bb18
bb18:
  %t103 = load i64, ptr %l49, !tbaa !24
  store i64 %t103, ptr %l10, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t104)
  store i64 %t106, ptr %l51
  br label %bb19
bb19:
  %t107 = load i64, ptr %l51, !tbaa !24
  store i64 %t107, ptr %l11, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t108)
  store i64 %t110, ptr %l53
  br label %bb20
bb20:
  %t111 = load i64, ptr %l53, !tbaa !24
  store i64 %t111, ptr %l12, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l7, !tbaa !24
  %t116 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t119 = extractvalue { i64, ptr } %a2, 1
  %t120 = extractvalue { i64, ptr } %a2, 0
  %t121 = add i64 %t117, %t120
  %t122 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t124 = add i64 %t121, %t123
  %t126 = call i64 @__olang_fmt_i64(ptr null, i64 %t115)
  %t127 = add i64 %t124, %t126
  %t128 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t130 = add i64 %t127, %t129
  %t131 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t130)
  call void @olang_textcopy(ptr %t131, ptr %t116, i64 %t117)
  %t132 = getelementptr i8, ptr %t131, i64 %t117
  call void @olang_textcopy(ptr %t132, ptr %t119, i64 %t120)
  %t133 = getelementptr i8, ptr %t132, i64 %t120
  call void @olang_textcopy(ptr %t133, ptr %t122, i64 %t123)
  %t134 = getelementptr i8, ptr %t133, i64 %t123
  %t135 = call i64 @__olang_fmt_i64(ptr %t134, i64 %t115)
  %t136 = getelementptr i8, ptr %t134, i64 %t126
  call void @olang_textcopy(ptr %t136, ptr %t128, i64 %t129)
  %t137 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t131, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = extractvalue { i64, ptr } %t138, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t112, i64 %t113, { i64, ptr } %t145)
  br label %bb21
bb21:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i64, ptr %l11, !tbaa !24
  %t152 = load i64, ptr %l8, !tbaa !24
  %t153 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t156 = extractvalue { i64, ptr } %a4, 1
  %t157 = extractvalue { i64, ptr } %a4, 0
  %t158 = add i64 %t154, %t157
  %t159 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t163 = call i64 @__olang_fmt_i64(ptr null, i64 %t152)
  %t164 = add i64 %t161, %t163
  %t165 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t167 = add i64 %t164, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t153, i64 %t154)
  %t169 = getelementptr i8, ptr %t168, i64 %t154
  call void @olang_textcopy(ptr %t169, ptr %t156, i64 %t157)
  %t170 = getelementptr i8, ptr %t169, i64 %t157
  call void @olang_textcopy(ptr %t170, ptr %t159, i64 %t160)
  %t171 = getelementptr i8, ptr %t170, i64 %t160
  %t172 = call i64 @__olang_fmt_i64(ptr %t171, i64 %t152)
  %t173 = getelementptr i8, ptr %t171, i64 %t163
  call void @olang_textcopy(ptr %t173, ptr %t165, i64 %t166)
  %t174 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t168, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = extractvalue { i64, ptr } %t175, 1
  %t179 = mul i64 %t177, 1
  %t180 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t180, ptr %t178, i64 %t179, i1 false)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t149, i64 %t150, { i64, ptr } %t182)
  br label %bb22
bb22:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l12, !tbaa !24
  %t188 = load i64, ptr %l10, !tbaa !24
  %t189 = load i64, ptr %l11, !tbaa !24
  %t190 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t193 = call i64 @__olang_fmt_i64(ptr null, i64 %t188)
  %t194 = add i64 %t191, %t193
  %t195 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t197 = add i64 %t194, %t196
  %t199 = call i64 @__olang_fmt_i64(ptr null, i64 %t189)
  %t200 = add i64 %t197, %t199
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t203 = add i64 %t200, %t202
  %t204 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t203)
  call void @olang_textcopy(ptr %t204, ptr %t190, i64 %t191)
  %t205 = getelementptr i8, ptr %t204, i64 %t191
  %t206 = call i64 @__olang_fmt_i64(ptr %t205, i64 %t188)
  %t207 = getelementptr i8, ptr %t205, i64 %t193
  call void @olang_textcopy(ptr %t207, ptr %t195, i64 %t196)
  %t208 = getelementptr i8, ptr %t207, i64 %t196
  %t209 = call i64 @__olang_fmt_i64(ptr %t208, i64 %t189)
  %t210 = getelementptr i8, ptr %t208, i64 %t199
  call void @olang_textcopy(ptr %t210, ptr %t201, i64 %t202)
  %t211 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t204, 1
  %t214 = extractvalue { i64, ptr } %t212, 0
  %t215 = extractvalue { i64, ptr } %t212, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t186, i64 %t187, { i64, ptr } %t219)
  br label %bb23
bb23:
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l72, !tbaa !29
  %t224 = load i64, ptr %l6, !tbaa !24
  store i64 %t224, ptr %l73, !tbaa !24
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i32, ptr %l1, !tbaa !23
  %t229 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %s0, ptr %t225, i32 %t226)
  store { i64, ptr } %t229, ptr %l76
  br label %bb24
bb24:
  %t230 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 0
  %t232 = extractvalue { i64, ptr } %t230, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t238 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s0, ptr %s0, { i64, ptr } %t236)
  store { i64, ptr } %t238, ptr %l78
  br label %bb25
bb25:
  %t239 = load i64, ptr %l12, !tbaa !24
  %t240 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t242 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = add i64 %t241, %t244
  %t246 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t248 = add i64 %t245, %t247
  %t250 = call i64 @__olang_fmt_i64(ptr null, i64 %t239)
  %t251 = add i64 %t248, %t250
  %t252 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t253 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t254 = add i64 %t251, %t253
  %t255 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t254)
  call void @olang_textcopy(ptr %t255, ptr %t240, i64 %t241)
  %t256 = getelementptr i8, ptr %t255, i64 %t241
  call void @olang_textcopy(ptr %t256, ptr %t243, i64 %t244)
  %t257 = getelementptr i8, ptr %t256, i64 %t244
  call void @olang_textcopy(ptr %t257, ptr %t246, i64 %t247)
  %t258 = getelementptr i8, ptr %t257, i64 %t247
  %t259 = call i64 @__olang_fmt_i64(ptr %t258, i64 %t239)
  %t260 = getelementptr i8, ptr %t258, i64 %t250
  call void @olang_textcopy(ptr %t260, ptr %t252, i64 %t253)
  %t261 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t255, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = extractvalue { i64, ptr } %t262, 1
  %t266 = mul i64 %t264, 1
  %t267 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t267, ptr %t265, i64 %t266, i1 false)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  %t270 = load ptr, ptr %l72, !tbaa !29
  %t271 = load i64, ptr %l73, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t270, i64 %t271, { i64, ptr } %t269)
  br label %bb26
bb26:
  %t273 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t273, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgSubTy(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 73
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l6
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 73
  store i64 %t12, ptr %t14, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/emit:Emitter", ptr %t16, i32 0, i32 73
  %t19 = load i64, ptr %t18, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s1, ptr %t15, i64 %t19, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:Emitter", ptr %t22, i32 0, i32 73
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypedef(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l19 = alloca i64
  %l24 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i64
  %l34 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 78
  %t4 = load i32, ptr %l1, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t9 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t6)
  store i1 %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load i1, ptr %l9, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:Emitter", ptr %t11, i32 0, i32 78
  %t14 = load i32, ptr %l1, !tbaa !23
  %t16 = sext i32 %t14 to i64
  %t19 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t13, i64 %t16)
  %t20 = extractvalue { i32, i64 } %t19, 1
  %t21 = extractvalue { i32, i64 } %t19, 0
  store i32 %t21, ptr %l16
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb5, label %ok.23, !prof !99
ok.23:
  store i64 %t20, ptr %l15
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t24 = load i64, ptr %l15, !tbaa !24
  store i64 %t24, ptr %l10, !tbaa !24
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i64 -1, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t25 = load i64, ptr %l10, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t30 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t26, i32 %a2)
  store i64 %t30, ptr %l19
  br label %bb9
bb9:
  %t31 = load i64, ptr %l19, !tbaa !24
  store i64 %t31, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = icmp slt i64 %t32, 0
  br i1 %t34, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t37)
  store i64 %t39, ptr %l24
  br label %bb13
bb13:
  %t40 = load i64, ptr %l24, !tbaa !24
  store i64 %t40, ptr %l4, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/emit:Emitter", ptr %t41, i32 0, i32 78
  %t44 = load i32, ptr %l1, !tbaa !23
  %t46 = sext i32 %t44 to i64
  %t47 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t43, i64 %t46, i64 %t47)
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l30, !tbaa !29
  %t52 = load i64, ptr %l4, !tbaa !24
  store i64 %t52, ptr %l31, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l1, !tbaa !23
  %t57 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %s0, ptr %t53, i32 %t54)
  store { i64, ptr } %t57, ptr %l34
  br label %bb15
bb15:
  %t58 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t66 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s0, ptr %s0, { i64, ptr } %t64)
  store { i64, ptr } %t66, ptr %l36
  br label %bb16
bb16:
  %t67 = load i64, ptr %l3, !tbaa !24
  %t68 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t70 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = add i64 %t69, %t72
  %t74 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t76 = add i64 %t73, %t75
  %t78 = call i64 @__olang_fmt_i64(ptr null, i64 %t67)
  %t79 = add i64 %t76, %t78
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t68, i64 %t69)
  %t84 = getelementptr i8, ptr %t83, i64 %t69
  call void @olang_textcopy(ptr %t84, ptr %t71, i64 %t72)
  %t85 = getelementptr i8, ptr %t84, i64 %t72
  call void @olang_textcopy(ptr %t85, ptr %t74, i64 %t75)
  %t86 = getelementptr i8, ptr %t85, i64 %t75
  %t87 = call i64 @__olang_fmt_i64(ptr %t86, i64 %t67)
  %t88 = getelementptr i8, ptr %t86, i64 %t78
  call void @olang_textcopy(ptr %t88, ptr %t80, i64 %t81)
  %t89 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t83, 1
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t93 = extractvalue { i64, ptr } %t90, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t98 = load ptr, ptr %l30, !tbaa !29
  %t99 = load i64, ptr %l31, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t98, i64 %t99, { i64, ptr } %t97)
  br label %bb17
bb17:
  %t101 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t101, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportBodies(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l48 = alloca ptr
  %l56 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca i1
  %l68 = alloca ptr
  %l73 = alloca i1
  %l77 = alloca i1
  %l80 = alloca i64
  %s3 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/emit:Emitter", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/emit:Emitter", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/lower:Lowerer", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l18
  br label %bb2
bb2:
  %t17 = load i64, ptr %l18, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb3, label %bb4
bb3:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l22, !tbaa !24
  store i64 %t45, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb10, label %bb11
bb10:
  br label %bb41
bb11:
  br label %bb12
bb12:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l5, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l8, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/emit:Emitter", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/lower:Lowerer", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t70, i64 %t72)
  store ptr %t75, ptr %l48
  br label %bb13
bb13:
  %t76 = load ptr, ptr %l48, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Body", ptr %t76, i32 0, i32 1
  %t79 = load { i64, [2 x i64] }, ptr %t78
  store { i64, [2 x i64] } %t79, ptr %l9
  %t81 = load { i64, [2 x i64] }, ptr %l9
  %t83 = extractvalue { i64, [2 x i64] } %t81, 0
  %t84 = icmp eq i64 %t83, 0
  br i1 %t84, label %bb14, label %bb15
bb14:
  %t86 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t87 = getelementptr { i64 }, ptr %t86, i32 0, i32 0
  %t88 = load i64, ptr %t87
  store i64 %t88, ptr %l10, !tbaa !24
  br label %bb16
bb15:
  br label %bb34
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t91 = load i64, ptr %l10, !tbaa !24
  %t94 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l56
  br label %bb17
bb17:
  %t95 = load i64, ptr %l56, !tbaa !24
  store i64 %t95, ptr %l11, !tbaa !24
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t97 = load i64, ptr %l11, !tbaa !24
  %t100 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s3, ptr %t96, i64 %t97)
  store ptr %t100, ptr %l59
  br label %bb18
bb18:
  %t101 = load ptr, ptr %l59, !tbaa !29
  %t103 = getelementptr %"compiler/ast:Func", ptr %t101, i32 0, i32 7
  %t104 = load i1, ptr %t103, !tbaa !21
  br i1 %t104, label %bb19, label %bb20
bb19:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/emit:Emitter", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/lower:Lowerer", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = load i64, ptr %l8, !tbaa !24
  %t117 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t112, i64 %t114)
  store ptr %t117, ptr %l68
  br label %bb21
bb20:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb22
bb21:
  %t118 = load ptr, ptr %l68, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Body", ptr %t118, i32 0, i32 11
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = icmp eq ptr %t121, null
  %t125 = xor i1 %t123, true
  store i1 %t125, ptr %l62, !tbaa !21
  br label %bb22
bb22:
  %t127 = load i1, ptr %l62, !tbaa !21
  br i1 %t127, label %bb23, label %bb24
bb23:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/emit:Emitter", ptr %t128, i32 0, i32 42
  %t131 = load i1, ptr %t130, !tbaa !21
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb25, label %bb26
bb24:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb29
bb25:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb28
bb26:
  %t135 = load ptr, ptr %l2, !tbaa !29
  %t136 = load i64, ptr %l11, !tbaa !24
  %t139 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t135, i64 %t136)
  store i64 %t139, ptr %l80
  br label %bb27
bb27:
  %t140 = load ptr, ptr %l2, !tbaa !29
  %t142 = getelementptr %"compiler/generic:Program", ptr %t140, i32 0, i32 0
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/load:Loader", ptr %t143, i32 0, i32 12
  %t146 = load i64, ptr %t145, !tbaa !24
  %t147 = load i64, ptr %l80, !tbaa !24
  %t149 = icmp eq i64 %t147, %t146
  store i1 %t149, ptr %l77, !tbaa !21
  br label %bb28
bb28:
  %t151 = load i1, ptr %l77, !tbaa !21
  store i1 %t151, ptr %l73, !tbaa !21
  br label %bb29
bb29:
  %t152 = load i1, ptr %l73, !tbaa !21
  br i1 %t152, label %bb30, label %bb31
bb30:
  %t153 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 %t153)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s3)
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
  call void @__olang_check_failed(ptr @olang_loc_70000d3e005ea498_c6a0fd2b538569fc)
  unreachable
bb39:
  br label %bb40
bb40:
  %t156 = load i64, ptr %l7, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l7, !tbaa !24
  br label %bb9
bb41:
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportParams(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"compiler/cabi:Way"
  %l22 = alloca i32
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l49 = alloca i64
  %l52 = alloca i64
  %l70 = alloca { i64, ptr }
  %l75 = alloca i1
  %l78 = alloca i32
  %l79 = alloca i64
  %l82 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca ptr
  %l90 = alloca i32
  %l91 = alloca i32
  %l94 = alloca i32
  %l97 = alloca i1
  %l100 = alloca i32
  %l102 = alloca ptr
  %l103 = alloca i64
  %l108 = alloca ptr
  %l109 = alloca i64
  %l114 = alloca ptr
  %l121 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l123 = alloca i64
  %l130 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca i64
  %l139 = alloca ptr
  %l142 = alloca ptr
  %l143 = alloca i64
  %l154 = alloca %"compiler/cabi:Way"
  %l158 = alloca ptr
  %l159 = alloca i64
  %l163 = alloca { i64, ptr }
  %l165 = alloca i1
  %l167 = alloca { i64, ptr }
  %l174 = alloca ptr
  %l175 = alloca i64
  %l179 = alloca { i64, ptr }
  %l185 = alloca ptr
  %l189 = alloca i64
  %l192 = alloca { i64, ptr }
  %l194 = alloca i64
  %l198 = alloca i64
  %l201 = alloca i64
  %l219 = alloca ptr
  %l220 = alloca i64
  %l224 = alloca { i64, ptr }
  %l231 = alloca i64
  %l233 = alloca { i64, ptr }
  %l235 = alloca ptr
  %l236 = alloca { i64, ptr }
  %l239 = alloca i64
  %l242 = alloca { i64, ptr }
  %l243 = alloca i64
  %l244 = alloca { i64, ptr }
  %l245 = alloca ptr
  %l248 = alloca { i64, ptr }
  %l250 = alloca { i64, ptr }
  %l251 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l253 = alloca i64
  %l254 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l266 = alloca i64
  %l267 = alloca { i64, ptr }
  %l271 = alloca ptr
  %l272 = alloca i64
  %l276 = alloca { i64, ptr }
  %l279 = alloca i64
  %l280 = alloca i64
  %l284 = alloca ptr
  %l285 = alloca i64
  %l295 = alloca { i64, ptr }
  %l296 = alloca ptr
  %l297 = alloca { i64, ptr }
  %l298 = alloca { i64, ptr }
  %l301 = alloca i64
  %l302 = alloca ptr
  %l303 = alloca i64
  %l308 = alloca ptr
  %l309 = alloca i64
  %l313 = alloca { i64, ptr }
  %l314 = alloca ptr
  %l317 = alloca { i64, ptr }
  %l320 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s32 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l6, !tbaa !29
  store ptr %t11, ptr %l36, !tbaa !29
  %t12 = load ptr, ptr %l6, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l39
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l36, !tbaa !29
  %t18 = load i32, ptr %l39, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l40
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t20, ptr %l8, !tbaa !27
  %t21 = load ptr, ptr %l6, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s0, ptr %t21, i32 %t22)
  store { i64, ptr } %t25, ptr %l43
  br label %bb3
bb3:
  %t26 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t26, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t31 = load i64, ptr %l11, !tbaa !24
  %t32 = load i64, ptr %l10, !tbaa !24
  %t35 = icmp sgt i64 %t31, %t32
  br i1 %t35, label %bb4, label %bb5
bb4:
  %t37 = load i64, ptr %l12, !tbaa !24
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb9
bb6:
  %t41 = load i64, ptr %l11, !tbaa !24
  %t42 = load i64, ptr %l10, !tbaa !24
  %t45 = sub i64 %t41, %t42
  %t46 = load i64, ptr %l12, !tbaa !24
  %t49 = add i64 %t45, %t46
  %t51 = sub i64 %t49, 1
  %t52 = load i64, ptr %l12, !tbaa !24
  %t55 = sdiv i64 %t51, %t52
  store i64 %t55, ptr %l52, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb8
bb8:
  %t57 = load i64, ptr %l52, !tbaa !24
  store i64 %t57, ptr %l49, !tbaa !24
  br label %bb9
bb9:
  %t58 = load i64, ptr %l49, !tbaa !24
  store i64 %t58, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t59 = load i64, ptr %l14, !tbaa !24
  %t60 = load i64, ptr %l13, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb136
bb12:
  br label %bb13
bb13:
  %t67 = load i64, ptr %l10, !tbaa !24
  %t68 = load i64, ptr %l14, !tbaa !24
  %t69 = load i64, ptr %l12, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t75 = add i64 %t67, %t72
  store i64 %t75, ptr %l15, !tbaa !24
  %t77 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t77, ptr %l70, !tbaa !27
  %t78 = load i64, ptr %l15, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i32, ptr %t81, i64 %t78
  %t83 = load i32, ptr %t82, !tbaa !33
  store i32 %t83, ptr %l16, !tbaa !23
  %t85 = load ptr, ptr %l7, !tbaa !29
  %t86 = load i32, ptr %l16, !tbaa !23
  %t89 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t85, i32 %t86)
  store i1 %t89, ptr %l75
  br label %bb14
bb14:
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t91 = load i32, ptr %l16, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l78
  br label %bb15
bb15:
  %t95 = load i32, ptr %l78, !tbaa !23
  store i32 %t95, ptr %l17, !tbaa !23
  %t96 = ptrtoint ptr %s2 to i64
  store i64 %t96, ptr %l79, !tbaa !24
  %t97 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eexportParams_2elocal_2e18
  br i1 %t97, label %bb16, label %bb17
bb16:
  %t99 = call ptr @__olang_region_make(ptr %s2)
  %t100 = ptrtoint ptr %t99 to i64
  store i64 %t100, ptr %l79, !tbaa !24
  br label %bb17
bb17:
  %t101 = load i64, ptr %l15, !tbaa !24
  %t102 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t105 = call i64 @__olang_fmt_i64(ptr null, i64 %t101)
  %t106 = add i64 %t103, %t105
  %t107 = load i64, ptr %l79
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t106)
  call void @olang_textcopy(ptr %t109, ptr %t102, i64 %t103)
  %t110 = getelementptr i8, ptr %t109, i64 %t103
  %t111 = call i64 @__olang_fmt_i64(ptr %t110, i64 %t101)
  %t112 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t109, 1
  store { i64, ptr } %t113, ptr %l82, !tbaa !27
  %t114 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eexportParams_2elocal_2e18
  br i1 %t114, label %bb18, label %bb19
bb18:
  %t116 = load i64, ptr %l79
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = load { i64, ptr }, ptr %l82
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = icmp ne ptr %t120, null
  %t122 = select i1 %t121, ptr %t120, ptr null
  %t123 = icmp eq ptr %t122, %t117
  call void @__olang_region_settle(ptr %t117, i1 %t123)
  br label %bb19
bb19:
  %t124 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t124, ptr %l18, !tbaa !27
  %t125 = load ptr, ptr %l6, !tbaa !29
  %t126 = load i32, ptr %l17, !tbaa !23
  %t129 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t125, i32 %t126)
  store i1 %t129, ptr %l86
  br label %bb20
bb20:
  %t130 = load i1, ptr %l86, !tbaa !21
  br i1 %t130, label %bb21, label %bb22
bb21:
  %t131 = load ptr, ptr %l6, !tbaa !29
  store ptr %t131, ptr %l87, !tbaa !29
  %t132 = load ptr, ptr %l6, !tbaa !29
  %t133 = load i32, ptr %l17, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l90
  br label %bb23
bb22:
  br label %bb50
bb23:
  %t137 = load ptr, ptr %l87, !tbaa !29
  %t138 = load i32, ptr %l90, !tbaa !23
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t137, i32 %t138)
  store i32 %t139, ptr %l91
  br label %bb24
bb24:
  %t140 = load i32, ptr %l91, !tbaa !23
  store i32 %t140, ptr %l19, !tbaa !23
  %t141 = load ptr, ptr %l6, !tbaa !29
  %t142 = load i32, ptr %l19, !tbaa !23
  %t145 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t141, i32 %t142)
  store i32 %t145, ptr %l94
  br label %bb25
bb25:
  %t146 = load i32, ptr %l94, !range !{i32 0, i32 33}
  %t148 = trunc i64 19 to i32
  %t149 = icmp eq i32 %t146, %t148
  br i1 %t149, label %bb26, label %bb27
bb26:
  %t151 = load ptr, ptr %l6, !tbaa !29
  %t152 = load i32, ptr %l19, !tbaa !23
  %t155 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t151, i32 %t152)
  store i32 %t155, ptr %l100
  br label %bb28
bb27:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb29
bb28:
  %t156 = load i32, ptr %l100, !tbaa !23
  %t157 = icmp eq i32 %t156, 0
  store i1 %t157, ptr %l97, !tbaa !21
  br label %bb29
bb29:
  %t159 = load i1, ptr %l97, !tbaa !21
  br i1 %t159, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t160 = load ptr, ptr %l3, !tbaa !29
  store ptr %t160, ptr %l102, !tbaa !29
  %t161 = ptrtoint ptr %v2 to i64
  store i64 %t161, ptr %l103, !tbaa !24
  %t162 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t162, label %bb32, label %bb33
bb31:
  %t164 = load ptr, ptr %l3, !tbaa !29
  store ptr %t164, ptr %l133, !tbaa !29
  %t165 = ptrtoint ptr %v2 to i64
  store i64 %t165, ptr %l134, !tbaa !24
  %t166 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t166, label %bb43, label %bb44
bb32:
  %t168 = call ptr @__olang_region_make(ptr %v2)
  %t169 = ptrtoint ptr %t168 to i64
  store i64 %t169, ptr %l103, !tbaa !24
  br label %bb33
bb33:
  %t170 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t171 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t174 = extractvalue { i64, ptr } %t170, 1
  %t175 = extractvalue { i64, ptr } %t170, 0
  %t176 = add i64 %t172, %t175
  %t177 = load i64, ptr %l103
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = call ptr @__olang_scope_alloc(ptr %t178, i64 %t176)
  call void @olang_textcopy(ptr %t179, ptr %t171, i64 %t172)
  %t180 = getelementptr i8, ptr %t179, i64 %t172
  call void @olang_textcopy(ptr %t180, ptr %t174, i64 %t175)
  %t181 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t179, 1
  %t184 = load i64, ptr %l103
  %t185 = inttoptr i64 %t184 to ptr
  %t186 = extractvalue { i64, ptr } %t182, 0
  %t187 = extractvalue { i64, ptr } %t182, 1
  %t188 = mul i64 %t186, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %t185, i64 %t188)
  call void @llvm.memcpy.p0.p0.i64(ptr %t189, ptr %t187, i64 %t188, i1 false)
  %t190 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  %t192 = load ptr, ptr %l102, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t192, { i64, ptr } %t191)
  br label %bb34
bb34:
  %t194 = load ptr, ptr %l3, !tbaa !29
  store ptr %t194, ptr %l108, !tbaa !29
  %t195 = ptrtoint ptr %v2 to i64
  store i64 %t195, ptr %l109, !tbaa !24
  %t196 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t196, label %bb35, label %bb36
bb35:
  %t198 = call ptr @__olang_region_make(ptr %v2)
  %t199 = ptrtoint ptr %t198 to i64
  store i64 %t199, ptr %l109, !tbaa !24
  br label %bb36
bb36:
  %t200 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t201 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t204 = extractvalue { i64, ptr } %t200, 1
  %t205 = extractvalue { i64, ptr } %t200, 0
  %t206 = add i64 %t202, %t205
  %t207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t209 = add i64 %t206, %t208
  %t210 = load i64, ptr %l109
  %t211 = inttoptr i64 %t210 to ptr
  %t212 = call ptr @__olang_scope_alloc(ptr %t211, i64 %t209)
  call void @olang_textcopy(ptr %t212, ptr %t201, i64 %t202)
  %t213 = getelementptr i8, ptr %t212, i64 %t202
  call void @olang_textcopy(ptr %t213, ptr %t204, i64 %t205)
  %t214 = getelementptr i8, ptr %t213, i64 %t205
  call void @olang_textcopy(ptr %t214, ptr %t207, i64 %t208)
  %t215 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t212, 1
  %t218 = load i64, ptr %l109
  %t219 = inttoptr i64 %t218 to ptr
  %t220 = extractvalue { i64, ptr } %t216, 0
  %t221 = extractvalue { i64, ptr } %t216, 1
  %t222 = mul i64 %t220, 1
  %t223 = call ptr @__olang_scope_alloc(ptr %t219, i64 %t222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t223, ptr %t221, i64 %t222, i1 false)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  %t226 = load ptr, ptr %l108, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t226, { i64, ptr } %t225)
  br label %bb37
bb37:
  %t228 = load ptr, ptr %l4, !tbaa !29
  store ptr %t228, ptr %l114, !tbaa !29
  %t229 = load ptr, ptr %l114, !tbaa !29
  %t230 = getelementptr %"compiler/cabi:Regs", ptr %t229, i32 0, i32 0
  %t231 = load i64, ptr %t230, !tbaa !24
  %t233 = sub i64 %t231, 2
  %t235 = load ptr, ptr %l114, !tbaa !29
  %t236 = getelementptr %"compiler/cabi:Regs", ptr %t235, i32 0, i32 0
  store i64 %t233, ptr %t236, !tbaa !24
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t238 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t239 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t240 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t242 = extractvalue { i64, ptr } %t238, 1
  %t243 = extractvalue { i64, ptr } %t238, 0
  %t244 = add i64 %t240, %t243
  %t245 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t246 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t247 = add i64 %t244, %t246
  %t248 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t247)
  call void @olang_textcopy(ptr %t248, ptr %t239, i64 %t240)
  %t249 = getelementptr i8, ptr %t248, i64 %t240
  call void @olang_textcopy(ptr %t249, ptr %t242, i64 %t243)
  %t250 = getelementptr i8, ptr %t249, i64 %t243
  call void @olang_textcopy(ptr %t250, ptr %t245, i64 %t246)
  %t251 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t248, 1
  %t254 = extractvalue { i64, ptr } %t252, 0
  %t255 = extractvalue { i64, ptr } %t252, 1
  %t256 = mul i64 %t254, 1
  %t257 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t256)
  call void @llvm.memcpy.p0.p0.i64(ptr %t257, ptr %t255, i64 %t256, i1 false)
  %t258 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t257, 1
  %t262 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v1, ptr %s5, ptr %s5, ptr %v5, ptr %t237, { i64, ptr } %t259)
  store { i64, ptr } %t262, ptr %l121
  br label %bb38
bb38:
  %t263 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t263, ptr %l20, !tbaa !27
  %t264 = load ptr, ptr %l5, !tbaa !29
  store ptr %t264, ptr %l122, !tbaa !29
  %t265 = ptrtoint ptr %v4 to i64
  store i64 %t265, ptr %l123, !tbaa !24
  %t266 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t266, label %bb39, label %bb40
bb39:
  %t268 = call ptr @__olang_region_make(ptr %v4)
  %t269 = ptrtoint ptr %t268 to i64
  store i64 %t269, ptr %l123, !tbaa !24
  br label %bb40
bb40:
  %t270 = load ptr, ptr %l1, !tbaa !29
  %t271 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t273 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t276 = extractvalue { i64, ptr } %t271, 1
  %t277 = extractvalue { i64, ptr } %t271, 0
  %t278 = add i64 %t274, %t277
  %t279 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t280 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t281 = add i64 %t278, %t280
  %t283 = extractvalue { i64, ptr } %t272, 1
  %t284 = extractvalue { i64, ptr } %t272, 0
  %t285 = add i64 %t281, %t284
  %t286 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t287 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t288 = add i64 %t285, %t287
  %t289 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t288)
  call void @olang_textcopy(ptr %t289, ptr %t273, i64 %t274)
  %t290 = getelementptr i8, ptr %t289, i64 %t274
  call void @olang_textcopy(ptr %t290, ptr %t276, i64 %t277)
  %t291 = getelementptr i8, ptr %t290, i64 %t277
  call void @olang_textcopy(ptr %t291, ptr %t279, i64 %t280)
  %t292 = getelementptr i8, ptr %t291, i64 %t280
  call void @olang_textcopy(ptr %t292, ptr %t283, i64 %t284)
  %t293 = getelementptr i8, ptr %t292, i64 %t284
  call void @olang_textcopy(ptr %t293, ptr %t286, i64 %t287)
  %t294 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t289, 1
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t298 = extractvalue { i64, ptr } %t295, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t305 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v1, ptr %s5, ptr %s5, ptr %v5, ptr %t270, { i64, ptr } %t302)
  store { i64, ptr } %t305, ptr %l130
  br label %bb41
bb41:
  %t306 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t307 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t308 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t309 = extractvalue { i64, ptr } %t308, 1
  %t310 = extractvalue { i64, ptr } %t308, 0
  %t311 = add i64 %t307, %t310
  %t312 = load i64, ptr %l123
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = call ptr @__olang_scope_alloc(ptr %t313, i64 %t311)
  call void @olang_textcopy(ptr %t314, ptr %t306, i64 %t307)
  %t315 = getelementptr i8, ptr %t314, i64 %t307
  call void @olang_textcopy(ptr %t315, ptr %t309, i64 %t310)
  %t316 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t314, 1
  %t319 = load i64, ptr %l123
  %t320 = inttoptr i64 %t319 to ptr
  %t321 = extractvalue { i64, ptr } %t317, 0
  %t322 = extractvalue { i64, ptr } %t317, 1
  %t323 = mul i64 %t321, 1
  %t324 = call ptr @__olang_scope_alloc(ptr %t320, i64 %t323)
  call void @llvm.memcpy.p0.p0.i64(ptr %t324, ptr %t322, i64 %t323, i1 false)
  %t325 = insertvalue { i64, ptr } undef, i64 %t321, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t324, 1
  %t327 = load ptr, ptr %l122, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t327, { i64, ptr } %t326)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb49
bb43:
  %t329 = call ptr @__olang_region_make(ptr %v2)
  %t330 = ptrtoint ptr %t329 to i64
  store i64 %t330, ptr %l134, !tbaa !24
  br label %bb44
bb44:
  %t331 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t332 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t335 = extractvalue { i64, ptr } %t331, 1
  %t336 = extractvalue { i64, ptr } %t331, 0
  %t337 = add i64 %t333, %t336
  %t338 = load i64, ptr %l134
  %t339 = inttoptr i64 %t338 to ptr
  %t340 = call ptr @__olang_scope_alloc(ptr %t339, i64 %t337)
  call void @olang_textcopy(ptr %t340, ptr %t332, i64 %t333)
  %t341 = getelementptr i8, ptr %t340, i64 %t333
  call void @olang_textcopy(ptr %t341, ptr %t335, i64 %t336)
  %t342 = insertvalue { i64, ptr } undef, i64 %t337, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t340, 1
  %t345 = load i64, ptr %l134
  %t346 = inttoptr i64 %t345 to ptr
  %t347 = extractvalue { i64, ptr } %t343, 0
  %t348 = extractvalue { i64, ptr } %t343, 1
  %t349 = mul i64 %t347, 1
  %t350 = call ptr @__olang_scope_alloc(ptr %t346, i64 %t349)
  call void @llvm.memcpy.p0.p0.i64(ptr %t350, ptr %t348, i64 %t349, i1 false)
  %t351 = insertvalue { i64, ptr } undef, i64 %t347, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t350, 1
  %t353 = load ptr, ptr %l133, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t353, { i64, ptr } %t352)
  br label %bb45
bb45:
  %t355 = load ptr, ptr %l4, !tbaa !29
  store ptr %t355, ptr %l139, !tbaa !29
  %t356 = load ptr, ptr %l139, !tbaa !29
  %t357 = getelementptr %"compiler/cabi:Regs", ptr %t356, i32 0, i32 0
  %t358 = load i64, ptr %t357, !tbaa !24
  %t360 = sub i64 %t358, 1
  %t362 = load ptr, ptr %l139, !tbaa !29
  %t363 = getelementptr %"compiler/cabi:Regs", ptr %t362, i32 0, i32 0
  store i64 %t360, ptr %t363, !tbaa !24
  %t364 = load ptr, ptr %l5, !tbaa !29
  store ptr %t364, ptr %l142, !tbaa !29
  %t365 = ptrtoint ptr %v4 to i64
  store i64 %t365, ptr %l143, !tbaa !24
  %t366 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t366, label %bb46, label %bb47
bb46:
  %t368 = call ptr @__olang_region_make(ptr %v4)
  %t369 = ptrtoint ptr %t368 to i64
  store i64 %t369, ptr %l143, !tbaa !24
  br label %bb47
bb47:
  %t370 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t371 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t372 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t374 = extractvalue { i64, ptr } %t370, 1
  %t375 = extractvalue { i64, ptr } %t370, 0
  %t376 = add i64 %t372, %t375
  %t377 = load i64, ptr %l143
  %t378 = inttoptr i64 %t377 to ptr
  %t379 = call ptr @__olang_scope_alloc(ptr %t378, i64 %t376)
  call void @olang_textcopy(ptr %t379, ptr %t371, i64 %t372)
  %t380 = getelementptr i8, ptr %t379, i64 %t372
  call void @olang_textcopy(ptr %t380, ptr %t374, i64 %t375)
  %t381 = insertvalue { i64, ptr } undef, i64 %t376, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t379, 1
  %t384 = load i64, ptr %l143
  %t385 = inttoptr i64 %t384 to ptr
  %t386 = extractvalue { i64, ptr } %t382, 0
  %t387 = extractvalue { i64, ptr } %t382, 1
  %t388 = mul i64 %t386, 1
  %t389 = call ptr @__olang_scope_alloc(ptr %t385, i64 %t388)
  call void @llvm.memcpy.p0.p0.i64(ptr %t389, ptr %t387, i64 %t388, i1 false)
  %t390 = insertvalue { i64, ptr } undef, i64 %t386, 0
  %t391 = insertvalue { i64, ptr } %t390, ptr %t389, 1
  %t392 = load ptr, ptr %l142, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t392, { i64, ptr } %t391)
  br label %bb48
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s2)
  br label %bb135
bb50:
  %t394 = load ptr, ptr %l6, !tbaa !29
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/emit:Emitter", ptr %t395, i32 0, i32 56
  %t398 = load { i64, ptr }, ptr %t397, !tbaa !27
  %t399 = load i32, ptr %l16, !tbaa !23
  %t400 = load ptr, ptr %l4, !tbaa !29
  %t402 = inttoptr i64 0 to ptr
  %t407 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v0, ptr %v3, ptr %s2, ptr %t402, ptr %t394, { i64, ptr } %t398, i32 %t399, ptr %t400)
  store %"compiler/cabi:Way" %t407, ptr %l154
  br label %bb51
bb51:
  %t408 = load %"compiler/cabi:Way", ptr %l154
  store %"compiler/cabi:Way" %t408, ptr %l21
  %t409 = getelementptr %"compiler/cabi:Way", ptr %l21, i32 0, i32 0
  %t410 = load i32, ptr %t409, !range !{i32 0, i32 5}
  store i32 %t410, ptr %l22
  %t412 = load i32, ptr %l22, !range !{i32 0, i32 5}
  %t414 = trunc i64 0 to i32
  %t415 = icmp eq i32 %t412, %t414
  br i1 %t415, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb67
bb54:
  store %olang.scope zeroinitializer, ptr %s14
  %t417 = load ptr, ptr %l3, !tbaa !29
  store ptr %t417, ptr %l158, !tbaa !29
  %t418 = ptrtoint ptr %v2 to i64
  store i64 %t418, ptr %l159, !tbaa !24
  %t419 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t419, label %bb55, label %bb56
bb55:
  %t421 = call ptr @__olang_region_make(ptr %v2)
  %t422 = ptrtoint ptr %t421 to i64
  store i64 %t422, ptr %l159, !tbaa !24
  br label %bb56
bb56:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load i32, ptr %l16, !tbaa !23
  %t427 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s14, ptr %t423, i32 %t424)
  store { i64, ptr } %t427, ptr %l163
  br label %bb57
bb57:
  %t428 = getelementptr %"compiler/cabi:Way", ptr %l21, i32 0, i32 4
  %t429 = load { i64, ptr }, ptr %t428, !tbaa !27
  %t431 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s14, { i64, ptr } %t429, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t431, ptr %l165
  br label %bb58
bb58:
  %t432 = load i1, ptr %l165, !tbaa !21
  %t433 = xor i1 %t432, true
  br i1 %t433, label %bb59, label %bb60
bb59:
  %t435 = getelementptr %"compiler/cabi:Way", ptr %l21, i32 0, i32 4
  %t436 = load { i64, ptr }, ptr %t435, !tbaa !27
  %t437 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t438 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t440 = extractvalue { i64, ptr } %t436, 1
  %t441 = extractvalue { i64, ptr } %t436, 0
  %t442 = add i64 %t438, %t441
  %t443 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t442)
  call void @olang_textcopy(ptr %t443, ptr %t437, i64 %t438)
  %t444 = getelementptr i8, ptr %t443, i64 %t438
  call void @olang_textcopy(ptr %t444, ptr %t440, i64 %t441)
  %t445 = insertvalue { i64, ptr } undef, i64 %t442, 0
  %t446 = insertvalue { i64, ptr } %t445, ptr %t443, 1
  %t448 = extractvalue { i64, ptr } %t446, 0
  %t449 = extractvalue { i64, ptr } %t446, 1
  %t450 = mul i64 %t448, 1
  %t451 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t450)
  call void @llvm.memcpy.p0.p0.i64(ptr %t451, ptr %t449, i64 %t450, i1 false)
  %t452 = insertvalue { i64, ptr } undef, i64 %t448, 0
  %t453 = insertvalue { i64, ptr } %t452, ptr %t451, 1
  store { i64, ptr } %t453, ptr %l167, !tbaa !27
  br label %bb61
bb60:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l167, !tbaa !27
  br label %bb61
bb61:
  %t455 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t456 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t457 = extractvalue { i64, ptr } %t456, 1
  %t458 = extractvalue { i64, ptr } %t456, 0
  %t459 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t460 = extractvalue { i64, ptr } %t459, 1
  %t461 = extractvalue { i64, ptr } %t459, 0
  %t462 = add i64 %t458, %t461
  %t463 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t464 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t465 = add i64 %t462, %t464
  %t467 = extractvalue { i64, ptr } %t455, 1
  %t468 = extractvalue { i64, ptr } %t455, 0
  %t469 = add i64 %t465, %t468
  %t470 = load i64, ptr %l159
  %t471 = inttoptr i64 %t470 to ptr
  %t472 = call ptr @__olang_scope_alloc(ptr %t471, i64 %t469)
  call void @olang_textcopy(ptr %t472, ptr %t457, i64 %t458)
  %t473 = getelementptr i8, ptr %t472, i64 %t458
  call void @olang_textcopy(ptr %t473, ptr %t460, i64 %t461)
  %t474 = getelementptr i8, ptr %t473, i64 %t461
  call void @olang_textcopy(ptr %t474, ptr %t463, i64 %t464)
  %t475 = getelementptr i8, ptr %t474, i64 %t464
  call void @olang_textcopy(ptr %t475, ptr %t467, i64 %t468)
  %t476 = insertvalue { i64, ptr } undef, i64 %t469, 0
  %t477 = insertvalue { i64, ptr } %t476, ptr %t472, 1
  %t479 = load i64, ptr %l159
  %t480 = inttoptr i64 %t479 to ptr
  %t481 = extractvalue { i64, ptr } %t477, 0
  %t482 = extractvalue { i64, ptr } %t477, 1
  %t483 = mul i64 %t481, 1
  %t484 = call ptr @__olang_scope_alloc(ptr %t480, i64 %t483)
  call void @llvm.memcpy.p0.p0.i64(ptr %t484, ptr %t482, i64 %t483, i1 false)
  %t485 = insertvalue { i64, ptr } undef, i64 %t481, 0
  %t486 = insertvalue { i64, ptr } %t485, ptr %t484, 1
  %t487 = load ptr, ptr %l158, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t487, { i64, ptr } %t486)
  br label %bb62
bb62:
  %t489 = load ptr, ptr %l5, !tbaa !29
  store ptr %t489, ptr %l174, !tbaa !29
  %t490 = ptrtoint ptr %v4 to i64
  store i64 %t490, ptr %l175, !tbaa !24
  %t491 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t491, label %bb63, label %bb64
bb63:
  %t493 = call ptr @__olang_region_make(ptr %v4)
  %t494 = ptrtoint ptr %t493 to i64
  store i64 %t494, ptr %l175, !tbaa !24
  br label %bb64
bb64:
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t496 = load i32, ptr %l16, !tbaa !23
  %t499 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s14, ptr %t495, i32 %t496)
  store { i64, ptr } %t499, ptr %l179
  br label %bb65
bb65:
  %t500 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t501 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t502 = extractvalue { i64, ptr } %t501, 1
  %t503 = extractvalue { i64, ptr } %t501, 0
  %t504 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t505 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t506 = add i64 %t503, %t505
  %t508 = extractvalue { i64, ptr } %t500, 1
  %t509 = extractvalue { i64, ptr } %t500, 0
  %t510 = add i64 %t506, %t509
  %t511 = load i64, ptr %l175
  %t512 = inttoptr i64 %t511 to ptr
  %t513 = call ptr @__olang_scope_alloc(ptr %t512, i64 %t510)
  call void @olang_textcopy(ptr %t513, ptr %t502, i64 %t503)
  %t514 = getelementptr i8, ptr %t513, i64 %t503
  call void @olang_textcopy(ptr %t514, ptr %t504, i64 %t505)
  %t515 = getelementptr i8, ptr %t514, i64 %t505
  call void @olang_textcopy(ptr %t515, ptr %t508, i64 %t509)
  %t516 = insertvalue { i64, ptr } undef, i64 %t510, 0
  %t517 = insertvalue { i64, ptr } %t516, ptr %t513, 1
  %t519 = load i64, ptr %l175
  %t520 = inttoptr i64 %t519 to ptr
  %t521 = extractvalue { i64, ptr } %t517, 0
  %t522 = extractvalue { i64, ptr } %t517, 1
  %t523 = mul i64 %t521, 1
  %t524 = call ptr @__olang_scope_alloc(ptr %t520, i64 %t523)
  call void @llvm.memcpy.p0.p0.i64(ptr %t524, ptr %t522, i64 %t523, i1 false)
  %t525 = insertvalue { i64, ptr } undef, i64 %t521, 0
  %t526 = insertvalue { i64, ptr } %t525, ptr %t524, 1
  %t527 = load ptr, ptr %l174, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t527, { i64, ptr } %t526)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s2)
  br label %bb135
bb67:
  %t529 = load i32, ptr %l22, !range !{i32 0, i32 5}
  %t531 = trunc i64 1 to i32
  %t532 = icmp eq i32 %t529, %t531
  br i1 %t532, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb101
bb70:
  store %olang.scope zeroinitializer, ptr %s18
  %t534 = load ptr, ptr %l1, !tbaa !29
  store ptr %t534, ptr %l185, !tbaa !29
  %t535 = load ptr, ptr %l6, !tbaa !29
  %t536 = load i32, ptr %l16, !tbaa !23
  %t540 = call i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %s2, ptr %t535, ptr %l21, i32 %t536)
  store i64 %t540, ptr %l189
  br label %bb71
bb71:
  %t541 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t542 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t543 = load i64, ptr %l189, !tbaa !24
  %t544 = call i64 @__olang_fmt_i64(ptr null, i64 %t543)
  %t545 = add i64 %t542, %t544
  %t546 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t547 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t548 = add i64 %t545, %t547
  %t549 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t548)
  call void @olang_textcopy(ptr %t549, ptr %t541, i64 %t542)
  %t550 = getelementptr i8, ptr %t549, i64 %t542
  %t551 = call i64 @__olang_fmt_i64(ptr %t550, i64 %t543)
  %t552 = getelementptr i8, ptr %t550, i64 %t544
  call void @olang_textcopy(ptr %t552, ptr %t546, i64 %t547)
  %t553 = insertvalue { i64, ptr } undef, i64 %t548, 0
  %t554 = insertvalue { i64, ptr } %t553, ptr %t549, 1
  %t556 = extractvalue { i64, ptr } %t554, 0
  %t557 = extractvalue { i64, ptr } %t554, 1
  %t558 = mul i64 %t556, 1
  %t559 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t558)
  call void @llvm.memcpy.p0.p0.i64(ptr %t559, ptr %t557, i64 %t558, i1 false)
  %t560 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t561 = insertvalue { i64, ptr } %t560, ptr %t559, 1
  %t562 = load ptr, ptr %l185, !tbaa !29
  %t564 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v1, ptr %s18, ptr %s18, ptr %t562, { i64, ptr } %t561, i64 8)
  store { i64, ptr } %t564, ptr %l192
  br label %bb72
bb72:
  %t565 = load { i64, ptr }, ptr %l192, !tbaa !27
  store { i64, ptr } %t565, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t566 = getelementptr %"compiler/cabi:Way", ptr %l21, i32 0, i32 1
  %t568 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %t566)
  store i64 %t568, ptr %l194
  br label %bb73
bb73:
  %t569 = load i64, ptr %l194, !tbaa !24
  store i64 %t569, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t570 = load i64, ptr %l25, !tbaa !24
  %t571 = load i64, ptr %l24, !tbaa !24
  %t574 = icmp sgt i64 %t570, %t571
  br i1 %t574, label %bb74, label %bb75
bb74:
  %t576 = load i64, ptr %l26, !tbaa !24
  %t578 = icmp sgt i64 %t576, 0
  br i1 %t578, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb79
bb76:
  %t580 = load i64, ptr %l25, !tbaa !24
  %t581 = load i64, ptr %l24, !tbaa !24
  %t584 = sub i64 %t580, %t581
  %t585 = load i64, ptr %l26, !tbaa !24
  %t588 = add i64 %t584, %t585
  %t590 = sub i64 %t588, 1
  %t591 = load i64, ptr %l26, !tbaa !24
  %t594 = sdiv i64 %t590, %t591
  store i64 %t594, ptr %l201, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l201, !tbaa !24
  br label %bb78
bb78:
  %t596 = load i64, ptr %l201, !tbaa !24
  store i64 %t596, ptr %l198, !tbaa !24
  br label %bb79
bb79:
  %t597 = load i64, ptr %l198, !tbaa !24
  store i64 %t597, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s21
  %t598 = load i64, ptr %l28, !tbaa !24
  %t599 = load i64, ptr %l27, !tbaa !24
  %t602 = icmp slt i64 %t598, %t599
  %t604 = xor i1 %t602, true
  br i1 %t604, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s21)
  br label %bb98
bb82:
  br label %bb83
bb83:
  %t606 = load i64, ptr %l24, !tbaa !24
  %t607 = load i64, ptr %l28, !tbaa !24
  %t608 = load i64, ptr %l26, !tbaa !24
  %t611 = mul i64 %t607, %t608
  %t614 = add i64 %t606, %t611
  store i64 %t614, ptr %l29, !tbaa !24
  %t616 = load ptr, ptr %l3, !tbaa !29
  store ptr %t616, ptr %l219, !tbaa !29
  %t617 = ptrtoint ptr %v2 to i64
  store i64 %t617, ptr %l220, !tbaa !24
  %t618 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t618, label %bb84, label %bb85
bb84:
  %t620 = call ptr @__olang_region_make(ptr %v2)
  %t621 = ptrtoint ptr %t620 to i64
  store i64 %t621, ptr %l220, !tbaa !24
  br label %bb85
bb85:
  %t622 = getelementptr %"compiler/cabi:Way", ptr %l21, i32 0, i32 1
  %t623 = load i64, ptr %l29, !tbaa !24
  %t626 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s21, ptr %t622, i64 %t623)
  store { i64, ptr } %t626, ptr %l224
  br label %bb86
bb86:
  %t627 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t628 = load i64, ptr %l29, !tbaa !24
  %t629 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t630 = extractvalue { i64, ptr } %t629, 1
  %t631 = extractvalue { i64, ptr } %t629, 0
  %t632 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t633 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t634 = add i64 %t631, %t633
  %t636 = extractvalue { i64, ptr } %t627, 1
  %t637 = extractvalue { i64, ptr } %t627, 0
  %t638 = add i64 %t634, %t637
  %t639 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t640 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t641 = add i64 %t638, %t640
  %t643 = call i64 @__olang_fmt_i64(ptr null, i64 %t628)
  %t644 = add i64 %t641, %t643
  %t645 = load i64, ptr %l220
  %t646 = inttoptr i64 %t645 to ptr
  %t647 = call ptr @__olang_scope_alloc(ptr %t646, i64 %t644)
  call void @olang_textcopy(ptr %t647, ptr %t630, i64 %t631)
  %t648 = getelementptr i8, ptr %t647, i64 %t631
  call void @olang_textcopy(ptr %t648, ptr %t632, i64 %t633)
  %t649 = getelementptr i8, ptr %t648, i64 %t633
  call void @olang_textcopy(ptr %t649, ptr %t636, i64 %t637)
  %t650 = getelementptr i8, ptr %t649, i64 %t637
  call void @olang_textcopy(ptr %t650, ptr %t639, i64 %t640)
  %t651 = getelementptr i8, ptr %t650, i64 %t640
  %t652 = call i64 @__olang_fmt_i64(ptr %t651, i64 %t628)
  %t653 = insertvalue { i64, ptr } undef, i64 %t644, 0
  %t654 = insertvalue { i64, ptr } %t653, ptr %t647, 1
  %t656 = load i64, ptr %l220
  %t657 = inttoptr i64 %t656 to ptr
  %t658 = extractvalue { i64, ptr } %t654, 0
  %t659 = extractvalue { i64, ptr } %t654, 1
  %t660 = mul i64 %t658, 1
  %t661 = call ptr @__olang_scope_alloc(ptr %t657, i64 %t660)
  call void @llvm.memcpy.p0.p0.i64(ptr %t661, ptr %t659, i64 %t660, i1 false)
  %t662 = insertvalue { i64, ptr } undef, i64 %t658, 0
  %t663 = insertvalue { i64, ptr } %t662, ptr %t661, 1
  %t664 = load ptr, ptr %l219, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t664, { i64, ptr } %t663)
  br label %bb87
bb87:
  %t666 = getelementptr %"compiler/cabi:Way", ptr %l21, i32 0, i32 2
  %t667 = load i64, ptr %l29, !tbaa !24
  %t670 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t666, i64 %t667)
  store i64 %t670, ptr %l231
  br label %bb88
bb88:
  %t671 = load i64, ptr %l231, !tbaa !24
  %t672 = icmp eq i64 %t671, 0
  br i1 %t672, label %bb89, label %bb90
bb89:
  %t674 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t674, ptr %l233, !tbaa !27
  br label %bb93
bb90:
  %t676 = load ptr, ptr %l1, !tbaa !29
  store ptr %t676, ptr %l235, !tbaa !29
  %t677 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t677, ptr %l236, !tbaa !27
  %t678 = getelementptr %"compiler/cabi:Way", ptr %l21, i32 0, i32 2
  %t679 = load i64, ptr %l29, !tbaa !24
  %t682 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t678, i64 %t679)
  store i64 %t682, ptr %l239
  br label %bb91
bb91:
  %t683 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t684 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t685 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t686 = extractvalue { i64, ptr } %t685, 1
  %t687 = extractvalue { i64, ptr } %t685, 0
  %t688 = add i64 %t684, %t687
  %t689 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t690 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t691 = add i64 %t688, %t690
  %t692 = load i64, ptr %l239, !tbaa !24
  %t693 = call i64 @__olang_fmt_i64(ptr null, i64 %t692)
  %t694 = add i64 %t691, %t693
  %t695 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t694)
  call void @olang_textcopy(ptr %t695, ptr %t683, i64 %t684)
  %t696 = getelementptr i8, ptr %t695, i64 %t684
  call void @olang_textcopy(ptr %t696, ptr %t686, i64 %t687)
  %t697 = getelementptr i8, ptr %t696, i64 %t687
  call void @olang_textcopy(ptr %t697, ptr %t689, i64 %t690)
  %t698 = getelementptr i8, ptr %t697, i64 %t690
  %t699 = call i64 @__olang_fmt_i64(ptr %t698, i64 %t692)
  %t700 = insertvalue { i64, ptr } undef, i64 %t694, 0
  %t701 = insertvalue { i64, ptr } %t700, ptr %t695, 1
  %t703 = extractvalue { i64, ptr } %t701, 0
  %t704 = extractvalue { i64, ptr } %t701, 1
  %t705 = mul i64 %t703, 1
  %t706 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t705)
  call void @llvm.memcpy.p0.p0.i64(ptr %t706, ptr %t704, i64 %t705, i1 false)
  %t707 = insertvalue { i64, ptr } undef, i64 %t703, 0
  %t708 = insertvalue { i64, ptr } %t707, ptr %t706, 1
  %t709 = load ptr, ptr %l235, !tbaa !29
  %t711 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v1, ptr %s21, ptr %s21, ptr %v5, ptr %t709, { i64, ptr } %t708)
  store { i64, ptr } %t711, ptr %l242
  br label %bb92
bb92:
  %t712 = load { i64, ptr }, ptr %l242, !tbaa !27
  store { i64, ptr } %t712, ptr %l233, !tbaa !27
  br label %bb93
bb93:
  %t713 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t714 = extractvalue { i64, ptr } %t713, 0
  store i64 %t714, ptr %l243, !tbaa !24
  %t715 = load i64, ptr %l243, !tbaa !24
  %t716 = mul i64 %t715, 1
  %t717 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t716)
  %t718 = insertvalue { i64, ptr } undef, i64 %t715, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t717, 1
  store { i64, ptr } %t719, ptr %l244, !tbaa !27
  %t720 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t721 = load ptr, ptr %t720, !tbaa !27
  %t722 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t723 = load ptr, ptr %t722, !tbaa !27
  %t724 = load i64, ptr %l243, !tbaa !24
  %t725 = mul i64 %t724, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t721, ptr %t723, i64 %t725, i1 false)
  %t726 = load { i64, ptr }, ptr %l244, !tbaa !27
  store { i64, ptr } %t726, ptr %l30, !tbaa !27
  %t727 = load ptr, ptr %l1, !tbaa !29
  store ptr %t727, ptr %l245, !tbaa !29
  %t728 = getelementptr %"compiler/cabi:Way", ptr %l21, i32 0, i32 1
  %t729 = load i64, ptr %l29, !tbaa !24
  %t732 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s21, ptr %t728, i64 %t729)
  store { i64, ptr } %t732, ptr %l248
  br label %bb94
bb94:
  %t733 = load { i64, ptr }, ptr %l248, !tbaa !27
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l250, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l251, !tbaa !27
  %t735 = load { i64, ptr }, ptr %l250, !tbaa !27
  %t736 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t737 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s21, ptr %s21, ptr %s21, ptr %s21, { i64, ptr } %t733, { i64, ptr } %t735, { i64, ptr } %t736)
  store { i64, ptr } %t737, ptr %l252
  br label %bb95
bb95:
  %t738 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t739 = extractvalue { i64, ptr } %t738, 0
  store i64 %t739, ptr %l253, !tbaa !24
  %t740 = load i64, ptr %l253, !tbaa !24
  %t741 = mul i64 %t740, 1
  %t742 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t741)
  %t743 = insertvalue { i64, ptr } undef, i64 %t740, 0
  %t744 = insertvalue { i64, ptr } %t743, ptr %t742, 1
  store { i64, ptr } %t744, ptr %l254, !tbaa !27
  %t745 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t746 = load ptr, ptr %t745, !tbaa !27
  %t747 = getelementptr { i64, ptr }, ptr %l252, i32 0, i32 1
  %t748 = load ptr, ptr %t747, !tbaa !27
  %t749 = load i64, ptr %l253, !tbaa !24
  %t750 = mul i64 %t749, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t746, ptr %t748, i64 %t750, i1 false)
  %t751 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t753 = extractvalue { i64, ptr } %t751, 0
  %t754 = extractvalue { i64, ptr } %t751, 1
  %t755 = mul i64 %t753, 1
  %t756 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t755)
  call void @llvm.memcpy.p0.p0.i64(ptr %t756, ptr %t754, i64 %t755, i1 false)
  %t757 = insertvalue { i64, ptr } undef, i64 %t753, 0
  %t758 = insertvalue { i64, ptr } %t757, ptr %t756, 1
  %t759 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t760 = load i64, ptr %l29, !tbaa !24
  %t762 = extractvalue { i64, ptr } %t759, 1
  %t763 = extractvalue { i64, ptr } %t759, 0
  %t764 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t765 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t766 = add i64 %t763, %t765
  %t768 = call i64 @__olang_fmt_i64(ptr null, i64 %t760)
  %t769 = add i64 %t766, %t768
  %t770 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t769)
  call void @olang_textcopy(ptr %t770, ptr %t762, i64 %t763)
  %t771 = getelementptr i8, ptr %t770, i64 %t763
  call void @olang_textcopy(ptr %t771, ptr %t764, i64 %t765)
  %t772 = getelementptr i8, ptr %t771, i64 %t765
  %t773 = call i64 @__olang_fmt_i64(ptr %t772, i64 %t760)
  %t774 = insertvalue { i64, ptr } undef, i64 %t769, 0
  %t775 = insertvalue { i64, ptr } %t774, ptr %t770, 1
  %t777 = extractvalue { i64, ptr } %t775, 0
  %t778 = extractvalue { i64, ptr } %t775, 1
  %t779 = mul i64 %t777, 1
  %t780 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t779)
  call void @llvm.memcpy.p0.p0.i64(ptr %t780, ptr %t778, i64 %t779, i1 false)
  %t781 = insertvalue { i64, ptr } undef, i64 %t777, 0
  %t782 = insertvalue { i64, ptr } %t781, ptr %t780, 1
  %t783 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t784 = load ptr, ptr %l245, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v1, ptr %s21, ptr %s21, ptr %s21, ptr %s21, ptr %v5, ptr %t784, { i64, ptr } %t758, { i64, ptr } %t782, { i64, ptr } %t783, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s21)
  br label %bb97
bb97:
  %t788 = load i64, ptr %l28, !tbaa !24
  %t790 = add i64 %t788, 1
  store i64 %t790, ptr %l28, !tbaa !24
  br label %bb80
bb98:
  %t792 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t792, ptr %l264, !tbaa !27
  %t793 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t793, ptr %l265, !tbaa !27
  %t794 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t795 = extractvalue { i64, ptr } %t794, 0
  store i64 %t795, ptr %l266, !tbaa !24
  %t796 = load i64, ptr %l266, !tbaa !24
  %t797 = mul i64 %t796, 1
  %t798 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t797)
  %t799 = insertvalue { i64, ptr } undef, i64 %t796, 0
  %t800 = insertvalue { i64, ptr } %t799, ptr %t798, 1
  store { i64, ptr } %t800, ptr %l267, !tbaa !27
  %t801 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t802 = load ptr, ptr %t801, !tbaa !27
  %t803 = getelementptr { i64, ptr }, ptr %l264, i32 0, i32 1
  %t804 = load ptr, ptr %t803, !tbaa !27
  %t805 = load i64, ptr %l266, !tbaa !24
  %t806 = mul i64 %t805, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t802, ptr %t804, i64 %t806, i1 false)
  %t807 = load { i64, ptr }, ptr %l267, !tbaa !27
  store { i64, ptr } %t807, ptr %l18, !tbaa !27
  %t808 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eexportParams_2elocal_2e18
  br i1 %t808, label %bb99, label %bb100
bb99:
  %t810 = load { i64, ptr }, ptr %l265
  %t811 = extractvalue { i64, ptr } %t810, 1
  call void @__olang_region_release(ptr %t811)
  store { i64, ptr } zeroinitializer, ptr %l265
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s18)
  br label %bb119
bb101:
  %t812 = load i32, ptr %l22, !range !{i32 0, i32 5}
  %t814 = trunc i64 2 to i32
  %t815 = icmp eq i32 %t812, %t814
  br i1 %t815, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb111
bb104:
  store %olang.scope zeroinitializer, ptr %s26
  %t817 = load ptr, ptr %l3, !tbaa !29
  store ptr %t817, ptr %l271, !tbaa !29
  %t818 = ptrtoint ptr %v2 to i64
  store i64 %t818, ptr %l272, !tbaa !24
  %t819 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t819, label %bb105, label %bb106
bb105:
  %t821 = call ptr @__olang_region_make(ptr %v2)
  %t822 = ptrtoint ptr %t821 to i64
  store i64 %t822, ptr %l272, !tbaa !24
  br label %bb106
bb106:
  %t823 = load ptr, ptr %l0, !tbaa !29
  %t824 = load i32, ptr %l16, !tbaa !23
  %t827 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s26, ptr %t823, i32 %t824)
  store { i64, ptr } %t827, ptr %l276
  br label %bb107
bb107:
  %t828 = load ptr, ptr %l6, !tbaa !29
  %t829 = load i32, ptr %l16, !tbaa !23
  %t832 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t828, i32 %t829)
  store i64 %t832, ptr %l279
  br label %bb108
bb108:
  %t833 = load i64, ptr %l279, !tbaa !24
  %t834 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t833, i64 8)
  store i64 %t834, ptr %l280
  br label %bb109
bb109:
  %t835 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t836 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t837 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t838 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t839 = extractvalue { i64, ptr } %t838, 1
  %t840 = extractvalue { i64, ptr } %t838, 0
  %t841 = add i64 %t837, %t840
  %t842 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t843 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t844 = add i64 %t841, %t843
  %t845 = load i64, ptr %l280, !tbaa !24
  %t846 = call i64 @__olang_fmt_i64(ptr null, i64 %t845)
  %t847 = add i64 %t844, %t846
  %t848 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t849 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t850 = add i64 %t847, %t849
  %t852 = extractvalue { i64, ptr } %t835, 1
  %t853 = extractvalue { i64, ptr } %t835, 0
  %t854 = add i64 %t850, %t853
  %t855 = load i64, ptr %l272
  %t856 = inttoptr i64 %t855 to ptr
  %t857 = call ptr @__olang_scope_alloc(ptr %t856, i64 %t854)
  call void @olang_textcopy(ptr %t857, ptr %t836, i64 %t837)
  %t858 = getelementptr i8, ptr %t857, i64 %t837
  call void @olang_textcopy(ptr %t858, ptr %t839, i64 %t840)
  %t859 = getelementptr i8, ptr %t858, i64 %t840
  call void @olang_textcopy(ptr %t859, ptr %t842, i64 %t843)
  %t860 = getelementptr i8, ptr %t859, i64 %t843
  %t861 = call i64 @__olang_fmt_i64(ptr %t860, i64 %t845)
  %t862 = getelementptr i8, ptr %t860, i64 %t846
  call void @olang_textcopy(ptr %t862, ptr %t848, i64 %t849)
  %t863 = getelementptr i8, ptr %t862, i64 %t849
  call void @olang_textcopy(ptr %t863, ptr %t852, i64 %t853)
  %t864 = insertvalue { i64, ptr } undef, i64 %t854, 0
  %t865 = insertvalue { i64, ptr } %t864, ptr %t857, 1
  %t867 = load i64, ptr %l272
  %t868 = inttoptr i64 %t867 to ptr
  %t869 = extractvalue { i64, ptr } %t865, 0
  %t870 = extractvalue { i64, ptr } %t865, 1
  %t871 = mul i64 %t869, 1
  %t872 = call ptr @__olang_scope_alloc(ptr %t868, i64 %t871)
  call void @llvm.memcpy.p0.p0.i64(ptr %t872, ptr %t870, i64 %t871, i1 false)
  %t873 = insertvalue { i64, ptr } undef, i64 %t869, 0
  %t874 = insertvalue { i64, ptr } %t873, ptr %t872, 1
  %t875 = load ptr, ptr %l271, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t875, { i64, ptr } %t874)
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s26)
  br label %bb119
bb111:
  br i1 true, label %bb112, label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb118
bb114:
  %t877 = load ptr, ptr %l3, !tbaa !29
  store ptr %t877, ptr %l284, !tbaa !29
  %t878 = ptrtoint ptr %v2 to i64
  store i64 %t878, ptr %l285, !tbaa !24
  %t879 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t879, label %bb115, label %bb116
bb115:
  %t881 = call ptr @__olang_region_make(ptr %v2)
  %t882 = ptrtoint ptr %t881 to i64
  store i64 %t882, ptr %l285, !tbaa !24
  br label %bb116
bb116:
  %t883 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t884 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t885 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t887 = extractvalue { i64, ptr } %t883, 1
  %t888 = extractvalue { i64, ptr } %t883, 0
  %t889 = add i64 %t885, %t888
  %t890 = load i64, ptr %l285
  %t891 = inttoptr i64 %t890 to ptr
  %t892 = call ptr @__olang_scope_alloc(ptr %t891, i64 %t889)
  call void @olang_textcopy(ptr %t892, ptr %t884, i64 %t885)
  %t893 = getelementptr i8, ptr %t892, i64 %t885
  call void @olang_textcopy(ptr %t893, ptr %t887, i64 %t888)
  %t894 = insertvalue { i64, ptr } undef, i64 %t889, 0
  %t895 = insertvalue { i64, ptr } %t894, ptr %t892, 1
  %t897 = load i64, ptr %l285
  %t898 = inttoptr i64 %t897 to ptr
  %t899 = extractvalue { i64, ptr } %t895, 0
  %t900 = extractvalue { i64, ptr } %t895, 1
  %t901 = mul i64 %t899, 1
  %t902 = call ptr @__olang_scope_alloc(ptr %t898, i64 %t901)
  call void @llvm.memcpy.p0.p0.i64(ptr %t902, ptr %t900, i64 %t901, i1 false)
  %t903 = insertvalue { i64, ptr } undef, i64 %t899, 0
  %t904 = insertvalue { i64, ptr } %t903, ptr %t902, 1
  %t905 = load ptr, ptr %l284, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t905, { i64, ptr } %t904)
  br label %bb117
bb117:
  br label %bb119
bb118:
  call void @__olang_check_failed(ptr @olang_loc_a19b535d764b2fc2_b8d21aa34486a36)
  unreachable
bb119:
  %t907 = load i64, ptr %l15, !tbaa !24
  %t909 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t910 = load ptr, ptr %t909, !tbaa !27
  %t911 = getelementptr i8, ptr %t910, i64 %t907
  %t912 = load i8, ptr %t911, !tbaa !32
  %t914 = icmp eq i8 %t912, 109
  br i1 %t914, label %bb120, label %bb121
bb120:
  store %olang.scope zeroinitializer, ptr %s30
  %t916 = load ptr, ptr %l1, !tbaa !29
  %t917 = load i32, ptr %l16, !tbaa !23
  %t920 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v1, ptr %s30, ptr %v5, ptr %t916, i32 %t917)
  store { i64, ptr } %t920, ptr %l295
  br label %bb122
bb121:
  store %olang.scope zeroinitializer, ptr %s32
  %t921 = load ptr, ptr %l5, !tbaa !29
  store ptr %t921, ptr %l308, !tbaa !29
  %t922 = ptrtoint ptr %v4 to i64
  store i64 %t922, ptr %l309, !tbaa !24
  %t923 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t923, label %bb128, label %bb129
bb122:
  %t925 = load { i64, ptr }, ptr %l295, !tbaa !27
  store { i64, ptr } %t925, ptr %l31, !tbaa !27
  %t926 = load ptr, ptr %l1, !tbaa !29
  store ptr %t926, ptr %l296, !tbaa !29
  %t927 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t927, ptr %l297, !tbaa !27
  %t928 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t928, ptr %l298, !tbaa !27
  %t929 = load ptr, ptr %l6, !tbaa !29
  %t930 = load i32, ptr %l16, !tbaa !23
  %t933 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t929, i32 %t930)
  store i64 %t933, ptr %l301
  br label %bb123
bb123:
  %t934 = load ptr, ptr %l296, !tbaa !29
  %t935 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t936 = load { i64, ptr }, ptr %l298, !tbaa !27
  %t937 = load i64, ptr %l301, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v1, ptr %s30, ptr %s2, ptr %v5, ptr %t934, { i64, ptr } %t935, { i64, ptr } %t936, i64 %t937)
  br label %bb124
bb124:
  %t938 = load ptr, ptr %l5, !tbaa !29
  store ptr %t938, ptr %l302, !tbaa !29
  %t939 = ptrtoint ptr %v4 to i64
  store i64 %t939, ptr %l303, !tbaa !24
  %t940 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t940, label %bb125, label %bb126
bb125:
  %t942 = call ptr @__olang_region_make(ptr %v4)
  %t943 = ptrtoint ptr %t942 to i64
  store i64 %t943, ptr %l303, !tbaa !24
  br label %bb126
bb126:
  %t944 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t945 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t946 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t948 = extractvalue { i64, ptr } %t944, 1
  %t949 = extractvalue { i64, ptr } %t944, 0
  %t950 = add i64 %t946, %t949
  %t951 = load i64, ptr %l303
  %t952 = inttoptr i64 %t951 to ptr
  %t953 = call ptr @__olang_scope_alloc(ptr %t952, i64 %t950)
  call void @olang_textcopy(ptr %t953, ptr %t945, i64 %t946)
  %t954 = getelementptr i8, ptr %t953, i64 %t946
  call void @olang_textcopy(ptr %t954, ptr %t948, i64 %t949)
  %t955 = insertvalue { i64, ptr } undef, i64 %t950, 0
  %t956 = insertvalue { i64, ptr } %t955, ptr %t953, 1
  %t958 = load i64, ptr %l303
  %t959 = inttoptr i64 %t958 to ptr
  %t960 = extractvalue { i64, ptr } %t956, 0
  %t961 = extractvalue { i64, ptr } %t956, 1
  %t962 = mul i64 %t960, 1
  %t963 = call ptr @__olang_scope_alloc(ptr %t959, i64 %t962)
  call void @llvm.memcpy.p0.p0.i64(ptr %t963, ptr %t961, i64 %t962, i1 false)
  %t964 = insertvalue { i64, ptr } undef, i64 %t960, 0
  %t965 = insertvalue { i64, ptr } %t964, ptr %t963, 1
  %t966 = load ptr, ptr %l302, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t966, { i64, ptr } %t965)
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s30)
  br label %bb134
bb128:
  %t968 = call ptr @__olang_region_make(ptr %v4)
  %t969 = ptrtoint ptr %t968 to i64
  store i64 %t969, ptr %l309, !tbaa !24
  br label %bb129
bb129:
  %t970 = load ptr, ptr %l0, !tbaa !29
  %t971 = load i32, ptr %l16, !tbaa !23
  %t974 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s32, ptr %t970, i32 %t971)
  store { i64, ptr } %t974, ptr %l313
  br label %bb130
bb130:
  %t975 = load ptr, ptr %l1, !tbaa !29
  store ptr %t975, ptr %l314, !tbaa !29
  %t976 = load ptr, ptr %l0, !tbaa !29
  %t977 = load i32, ptr %l16, !tbaa !23
  %t980 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s32, ptr %t976, i32 %t977)
  store { i64, ptr } %t980, ptr %l317
  br label %bb131
bb131:
  %t981 = load { i64, ptr }, ptr %l317, !tbaa !27
  %t982 = extractvalue { i64, ptr } %t981, 0
  %t983 = extractvalue { i64, ptr } %t981, 1
  %t984 = mul i64 %t982, 1
  %t985 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t984)
  call void @llvm.memcpy.p0.p0.i64(ptr %t985, ptr %t983, i64 %t984, i1 false)
  %t986 = insertvalue { i64, ptr } undef, i64 %t982, 0
  %t987 = insertvalue { i64, ptr } %t986, ptr %t985, 1
  %t988 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t989 = load ptr, ptr %l314, !tbaa !29
  %t992 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v1, ptr %s32, ptr %s2, ptr %s32, ptr %s32, ptr %v5, ptr %t989, { i64, ptr } %t987, { i64, ptr } %t988, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t992, ptr %l320
  br label %bb132
bb132:
  %t993 = load { i64, ptr }, ptr %l313, !tbaa !27
  %t994 = extractvalue { i64, ptr } %t993, 1
  %t995 = extractvalue { i64, ptr } %t993, 0
  %t996 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t997 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t998 = add i64 %t995, %t997
  %t999 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t1000 = extractvalue { i64, ptr } %t999, 1
  %t1001 = extractvalue { i64, ptr } %t999, 0
  %t1002 = add i64 %t998, %t1001
  %t1003 = load i64, ptr %l309
  %t1004 = inttoptr i64 %t1003 to ptr
  %t1005 = call ptr @__olang_scope_alloc(ptr %t1004, i64 %t1002)
  call void @olang_textcopy(ptr %t1005, ptr %t994, i64 %t995)
  %t1006 = getelementptr i8, ptr %t1005, i64 %t995
  call void @olang_textcopy(ptr %t1006, ptr %t996, i64 %t997)
  %t1007 = getelementptr i8, ptr %t1006, i64 %t997
  call void @olang_textcopy(ptr %t1007, ptr %t1000, i64 %t1001)
  %t1008 = insertvalue { i64, ptr } undef, i64 %t1002, 0
  %t1009 = insertvalue { i64, ptr } %t1008, ptr %t1005, 1
  %t1011 = load i64, ptr %l309
  %t1012 = inttoptr i64 %t1011 to ptr
  %t1013 = extractvalue { i64, ptr } %t1009, 0
  %t1014 = extractvalue { i64, ptr } %t1009, 1
  %t1015 = mul i64 %t1013, 1
  %t1016 = call ptr @__olang_scope_alloc(ptr %t1012, i64 %t1015)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1016, ptr %t1014, i64 %t1015, i1 false)
  %t1017 = insertvalue { i64, ptr } undef, i64 %t1013, 0
  %t1018 = insertvalue { i64, ptr } %t1017, ptr %t1016, 1
  %t1019 = load ptr, ptr %l308, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t1019, { i64, ptr } %t1018)
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s32)
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s2)
  br label %bb135
bb135:
  %t1021 = load i64, ptr %l14, !tbaa !24
  %t1023 = add i64 %t1021, 1
  store i64 %t1023, ptr %l14, !tbaa !24
  br label %bb10
bb136:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efunction(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l26 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca { i64, [2 x i64] }
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i1
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l48 = alloca i1
  %l52 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l61 = alloca i1
  %l63 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l68 = alloca i1
  %l70 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l79 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca { i64, [2 x i64] }
  %l94 = alloca i32
  %l95 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca i1
  %l98 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l118 = alloca i1
  %l122 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca { i64, [2 x i64] }
  %l127 = alloca i32
  %l130 = alloca { i64, ptr }
  %l131 = alloca i64
  %l132 = alloca i1
  %l135 = alloca i64
  %l136 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l148 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 83
  store ptr %t3, ptr %l10, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load { i64, [2 x i64] }, ptr %l1
  %t8 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t4, { i64, [2 x i64] } %t5)
  store i64 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l10, !tbaa !29
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t9, i64 %t10)
  store i1 %t11, ptr %l14
  br label %bb2
bb2:
  %t12 = load i1, ptr %l14, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclared(ptr %v0, ptr %t13, { i64, [2 x i64] } %t14)
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/emit:Emitter", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load { i64, [2 x i64] }, ptr %l1
  %t24 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v0, ptr %t20, { i64, [2 x i64] } %t21)
  store ptr %t24, ptr %l20
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l20, !tbaa !29
  store ptr %t25, ptr %l2, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load { i64, [2 x i64] }, ptr %l1
  %t30 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t26, { i64, [2 x i64] } %t27)
  store { i64, ptr } %t30, ptr %l23
  br label %bb8
bb8:
  %t31 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t31, ptr %l3, !tbaa !27
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load { i64, [2 x i64] }, ptr %l1
  %t36 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %t32, { i64, [2 x i64] } %t33)
  store i1 %t36, ptr %l26
  br label %bb9
bb9:
  %t37 = load i1, ptr %l26, !tbaa !21
  store i1 %t37, ptr %l4, !tbaa !21
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load { i64, [2 x i64] }, ptr %l1
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = getelementptr %"compiler/mir:Fn", ptr %t40, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t47 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t38, { i64, [2 x i64] } %t39, i32 %t43)
  store i64 %t47, ptr %l31
  br label %bb10
bb10:
  %t48 = load i64, ptr %l31, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l32, !tbaa !29
  %t50 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t50, ptr %l33
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr %"compiler/mir:Fn", ptr %t51, i32 0, i32 1
  %t54 = load i32, ptr %t53, !tbaa !23
  store i32 %t54, ptr %l35, !tbaa !23
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t55, ptr %l36, !tbaa !27
  %t56 = load i64, ptr %l5, !tbaa !24
  store i64 %t56, ptr %l37, !tbaa !24
  %t57 = load i1, ptr %l4, !tbaa !21
  store i1 %t57, ptr %l38, !tbaa !21
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load { i64, [2 x i64] }, ptr %l1
  %t62 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t58, { i64, [2 x i64] } %t59)
  store i64 %t62, ptr %l41
  br label %bb11
bb11:
  %t63 = load i64, ptr %l41, !tbaa !24
  %t64 = call { i64, ptr } @compiler_2femit_2elinkFor(ptr %s0, i64 %t63)
  store { i64, ptr } %t64, ptr %l42
  br label %bb12
bb12:
  %t65 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t72 = load ptr, ptr %l32, !tbaa !29
  %t73 = load { i64, [2 x i64] }, ptr %l33
  %t74 = load i32, ptr %l35, !tbaa !23
  %t75 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t76 = load i64, ptr %l37, !tbaa !24
  %t77 = load i1, ptr %l38, !tbaa !21
  %t79 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t72, { i64, [2 x i64] } %t73, i32 %t74, { i64, ptr } %t75, i64 %t76, i1 %t77, { i64, ptr } %t71, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store { i64, ptr } %t79, ptr %l44
  br label %bb13
bb13:
  %t80 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t80, ptr %l6, !tbaa !27
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/emit:Emitter", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/lower:Lowerer", ptr %t84, i32 0, i32 11
  %t87 = load i1, ptr %t86, !tbaa !21
  br i1 %t87, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb16
bb15:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/emit:Emitter", ptr %t89, i32 0, i32 11
  %t92 = load i1, ptr %t91, !tbaa !21
  %t94 = xor i1 %t92, true
  store i1 %t94, ptr %l48, !tbaa !21
  br label %bb16
bb16:
  %t96 = load i1, ptr %l48, !tbaa !21
  br i1 %t96, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb20
bb18:
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/emit:Emitter", ptr %t98, i32 0, i32 3
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t104 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v0, ptr %s0, ptr %t97, ptr %t101)
  store { i64, ptr } %t104, ptr %l56
  br label %bb19
bb19:
  %t105 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l52, !tbaa !27
  br label %bb20
bb20:
  %t113 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t113, ptr %l7, !tbaa !27
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/emit:Emitter", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/lower:Lowerer", ptr %t117, i32 0, i32 11
  %t120 = load i1, ptr %t119, !tbaa !21
  br i1 %t120, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb24
bb22:
  %t122 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t124 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t122, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i1 %t124, ptr %l63
  br label %bb23
bb23:
  %t125 = load i1, ptr %l63, !tbaa !21
  %t126 = xor i1 %t125, true
  store i1 %t126, ptr %l61, !tbaa !21
  br label %bb24
bb24:
  %t128 = load i1, ptr %l61, !tbaa !21
  br i1 %t128, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s2
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l65, !tbaa !29
  %t130 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t130, ptr %l66, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t133 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t131, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t133, ptr %l68
  br label %bb27
bb26:
  br label %bb42
bb27:
  %t134 = load i1, ptr %l68, !tbaa !21
  %t135 = xor i1 %t134, true
  br i1 %t135, label %bb28, label %bb29
bb28:
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t139 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s2, { i64, ptr } %t137)
  store { i64, ptr } %t139, ptr %l72
  br label %bb30
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l70, !tbaa !27
  br label %bb31
bb30:
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t142 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = add i64 %t141, %t144
  %t146 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t140, i64 %t141)
  %t150 = getelementptr i8, ptr %t149, i64 %t141
  call void @olang_textcopy(ptr %t150, ptr %t143, i64 %t144)
  %t151 = getelementptr i8, ptr %t150, i64 %t144
  call void @olang_textcopy(ptr %t151, ptr %t146, i64 %t147)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t149, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  store { i64, ptr } %t160, ptr %l70, !tbaa !27
  br label %bb31
bb31:
  %t162 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t164 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t167 = add i64 %t163, %t166
  %t168 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t171 = add i64 %t167, %t170
  %t172 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t171)
  call void @olang_textcopy(ptr %t172, ptr %t162, i64 %t163)
  %t173 = getelementptr i8, ptr %t172, i64 %t163
  call void @olang_textcopy(ptr %t173, ptr %t165, i64 %t166)
  %t174 = getelementptr i8, ptr %t173, i64 %t166
  call void @olang_textcopy(ptr %t174, ptr %t169, i64 %t170)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t172, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = extractvalue { i64, ptr } %t176, 1
  %t180 = mul i64 %t178, 1
  %t181 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t180)
  call void @llvm.memcpy.p0.p0.i64(ptr %t181, ptr %t179, i64 %t180, i1 false)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  %t184 = load ptr, ptr %l65, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %v0, ptr %s2, ptr %t184, { i64, ptr } %t183)
  br label %bb32
bb32:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load { i64, [2 x i64] }, ptr %l1
  %t190 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGlobalInit(ptr %v0, ptr %t186, { i64, [2 x i64] } %t187)
  store i1 %t190, ptr %l79
  br label %bb33
bb33:
  %t191 = load i1, ptr %l79, !tbaa !21
  br i1 %t191, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s5
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load { i64, [2 x i64] }, ptr %l1
  %t194 = load ptr, ptr %l2, !tbaa !29
  %t196 = getelementptr %"compiler/mir:Fn", ptr %t194, i32 0, i32 1
  %t197 = load i32, ptr %t196, !tbaa !23
  %t198 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t199 = load i64, ptr %l5, !tbaa !24
  %t200 = load i1, ptr %l4, !tbaa !21
  %t201 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t201, 1
  %t204 = extractvalue { i64, ptr } %t201, 0
  %t205 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t206 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t207 = add i64 %t204, %t206
  %t208 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t207)
  call void @olang_textcopy(ptr %t208, ptr %t203, i64 %t204)
  %t209 = getelementptr i8, ptr %t208, i64 %t204
  call void @olang_textcopy(ptr %t209, ptr %t205, i64 %t206)
  %t210 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t208, 1
  %t213 = extractvalue { i64, ptr } %t211, 0
  %t214 = extractvalue { i64, ptr } %t211, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %s0, ptr %s5, ptr %t192, { i64, [2 x i64] } %t193, i32 %t197, { i64, ptr } %t198, i64 %t199, i1 %t200, { i64, ptr } %t218)
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb37:
  %t226 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s2, ptr %t226, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb38
bb38:
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l91, !tbaa !29
  %t229 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t229, ptr %l92
  %t230 = load ptr, ptr %l2, !tbaa !29
  %t232 = getelementptr %"compiler/mir:Fn", ptr %t230, i32 0, i32 1
  %t233 = load i32, ptr %t232, !tbaa !23
  store i32 %t233, ptr %l94, !tbaa !23
  %t234 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t234, ptr %l95, !tbaa !27
  %t235 = load i64, ptr %l5, !tbaa !24
  store i64 %t235, ptr %l96, !tbaa !24
  %t236 = load i1, ptr %l4, !tbaa !21
  store i1 %t236, ptr %l97, !tbaa !21
  %t237 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t237, ptr %l98, !tbaa !27
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t242 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %s2, ptr %s0, ptr %s2, ptr %t238, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d64, i32 0, i32 1) }, { i64, ptr } %t239)
  store { i64, ptr } %t242, ptr %l101
  br label %bb39
bb39:
  %t243 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 1
  %t245 = extractvalue { i64, ptr } %t243, 0
  %t246 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = extractvalue { i64, ptr } %t246, 0
  %t249 = add i64 %t245, %t248
  %t250 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t249)
  call void @olang_textcopy(ptr %t250, ptr %t244, i64 %t245)
  %t251 = getelementptr i8, ptr %t250, i64 %t245
  call void @olang_textcopy(ptr %t251, ptr %t247, i64 %t248)
  %t252 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t250, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = extractvalue { i64, ptr } %t253, 1
  %t257 = mul i64 %t255, 1
  %t258 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t257)
  call void @llvm.memcpy.p0.p0.i64(ptr %t258, ptr %t256, i64 %t257, i1 false)
  %t259 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t258, 1
  %t261 = load ptr, ptr %l91, !tbaa !29
  %t262 = load { i64, [2 x i64] }, ptr %l92
  %t263 = load i32, ptr %l94, !tbaa !23
  %t264 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t265 = load i64, ptr %l96, !tbaa !24
  %t266 = load i1, ptr %l97, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %s0, ptr %s2, ptr %t261, { i64, [2 x i64] } %t262, i32 %t263, { i64, ptr } %t264, i64 %t265, i1 %t266, { i64, ptr } %t260)
  br label %bb40
bb40:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load { i64, [2 x i64] }, ptr %l1
  %t270 = load ptr, ptr %l2, !tbaa !29
  %t272 = getelementptr %"compiler/mir:Fn", ptr %t270, i32 0, i32 1
  %t273 = load i32, ptr %t272, !tbaa !23
  %t274 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t275 = load i64, ptr %l5, !tbaa !24
  %t276 = load i1, ptr %l4, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewalkStub(ptr %v0, ptr %s0, ptr %s2, ptr %t268, { i64, [2 x i64] } %t269, i32 %t273, { i64, ptr } %t274, i64 %t275, i1 %t276, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d65, i32 0, i32 1) })
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb42:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load { i64, [2 x i64] }, ptr %l1
  %t285 = load ptr, ptr %l2, !tbaa !29
  %t286 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t287 = load i64, ptr %l5, !tbaa !24
  %t288 = load i1, ptr %l4, !tbaa !21
  %t289 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t297 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewriteBody(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t283, { i64, [2 x i64] } %t284, ptr %t285, { i64, ptr } %t286, i64 %t287, i1 %t288, { i64, ptr } %t289, i1 false)
  store i1 %t297, ptr %l118
  br label %bb43
bb43:
  %t298 = load i1, ptr %l118, !tbaa !21
  %t299 = xor i1 %t298, true
  br i1 %t299, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb45:
  br label %bb46
bb46:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load { i64, [2 x i64] }, ptr %l1
  %t305 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %t301, { i64, [2 x i64] } %t302)
  store i1 %t305, ptr %l122
  br label %bb47
bb47:
  %t306 = load i1, ptr %l122, !tbaa !21
  %t307 = xor i1 %t306, true
  br i1 %t307, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb49:
  br label %bb50
bb50:
  %t309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t309, ptr %l124, !tbaa !29
  %t310 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t310, ptr %l125
  %t311 = load ptr, ptr %l2, !tbaa !29
  %t313 = getelementptr %"compiler/mir:Fn", ptr %t311, i32 0, i32 1
  %t314 = load i32, ptr %t313, !tbaa !23
  store i32 %t314, ptr %l127, !tbaa !23
  %t315 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t317 = extractvalue { i64, ptr } %t315, 1
  %t318 = extractvalue { i64, ptr } %t315, 0
  %t319 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t321 = add i64 %t318, %t320
  %t322 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t321)
  call void @olang_textcopy(ptr %t322, ptr %t317, i64 %t318)
  %t323 = getelementptr i8, ptr %t322, i64 %t318
  call void @olang_textcopy(ptr %t323, ptr %t319, i64 %t320)
  %t324 = insertvalue { i64, ptr } undef, i64 %t321, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t322, 1
  %t327 = extractvalue { i64, ptr } %t325, 0
  %t328 = extractvalue { i64, ptr } %t325, 1
  %t329 = mul i64 %t327, 1
  %t330 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t329)
  call void @llvm.memcpy.p0.p0.i64(ptr %t330, ptr %t328, i64 %t329, i1 false)
  %t331 = insertvalue { i64, ptr } undef, i64 %t327, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t330, 1
  store { i64, ptr } %t332, ptr %l130, !tbaa !27
  %t333 = load i64, ptr %l5, !tbaa !24
  store i64 %t333, ptr %l131, !tbaa !24
  %t334 = load i1, ptr %l4, !tbaa !21
  store i1 %t334, ptr %l132, !tbaa !21
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load { i64, [2 x i64] }, ptr %l1
  %t339 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t335, { i64, [2 x i64] } %t336)
  store i64 %t339, ptr %l135
  br label %bb51
bb51:
  %t340 = load i64, ptr %l135, !tbaa !24
  %t341 = call { i64, ptr } @compiler_2femit_2elinkFor(ptr %s0, i64 %t340)
  store { i64, ptr } %t341, ptr %l136
  br label %bb52
bb52:
  %t342 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 0
  %t344 = extractvalue { i64, ptr } %t342, 1
  %t345 = mul i64 %t343, 1
  %t346 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t345)
  call void @llvm.memcpy.p0.p0.i64(ptr %t346, ptr %t344, i64 %t345, i1 false)
  %t347 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  %t349 = load ptr, ptr %l124, !tbaa !29
  %t350 = load { i64, [2 x i64] }, ptr %l125
  %t351 = load i32, ptr %l127, !tbaa !23
  %t352 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t353 = load i64, ptr %l131, !tbaa !24
  %t354 = load i1, ptr %l132, !tbaa !21
  %t356 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t349, { i64, [2 x i64] } %t350, i32 %t351, { i64, ptr } %t352, i64 %t353, i1 %t354, { i64, ptr } %t348, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store { i64, ptr } %t356, ptr %l138
  br label %bb53
bb53:
  %t357 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load { i64, [2 x i64] }, ptr %l1
  %t360 = load ptr, ptr %l2, !tbaa !29
  %t361 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t363 = extractvalue { i64, ptr } %t361, 1
  %t364 = extractvalue { i64, ptr } %t361, 0
  %t365 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t366 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t367 = add i64 %t364, %t366
  %t368 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t367)
  call void @olang_textcopy(ptr %t368, ptr %t363, i64 %t364)
  %t369 = getelementptr i8, ptr %t368, i64 %t364
  call void @olang_textcopy(ptr %t369, ptr %t365, i64 %t366)
  %t370 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t368, 1
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t374 = extractvalue { i64, ptr } %t371, 1
  %t375 = mul i64 %t373, 1
  %t376 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t375)
  call void @llvm.memcpy.p0.p0.i64(ptr %t376, ptr %t374, i64 %t375, i1 false)
  %t377 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  %t379 = load i64, ptr %l5, !tbaa !24
  %t380 = load i1, ptr %l4, !tbaa !21
  %t389 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewriteBody(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t358, { i64, [2 x i64] } %t359, ptr %t360, { i64, ptr } %t378, i64 %t379, i1 %t380, { i64, ptr } %t357, i1 true)
  store i1 %t389, ptr %l148
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efvAdapter(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i8
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l44 = alloca i64
  %l49 = alloca i64
  %l53 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l63 = alloca { i64, [2 x i64] }
  %l64 = alloca i32
  %l65 = alloca %"compiler/source:Span"
  %l66 = alloca %"compiler/mir:Fn"
  %l69 = alloca %"compiler/emit:fnEm"
  %l72 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l78 = alloca %"std/prelude/text:StringBuilder"
  %l87 = alloca i32
  %l91 = alloca i1
  %l95 = alloca i1
  %l98 = alloca i1
  %l104 = alloca i64
  %l107 = alloca i64
  %l132 = alloca ptr
  %l134 = alloca { i64, ptr }
  %l139 = alloca ptr
  %l142 = alloca i32
  %l143 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l152 = alloca i64
  %l155 = alloca i64
  %l188 = alloca ptr
  %l190 = alloca { i64, ptr }
  %l193 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l209 = alloca i32
  %l212 = alloca i32
  %l214 = alloca i1
  %l215 = alloca ptr
  %l216 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l221 = alloca ptr
  %l223 = alloca i1
  %l224 = alloca { i64, ptr }
  %l225 = alloca ptr
  %l226 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l236 = alloca i1
  %l240 = alloca i1
  %l243 = alloca i1
  %l247 = alloca { i64, ptr }
  %l250 = alloca { i64, ptr }
  %l253 = alloca i64
  %l255 = alloca ptr
  %l258 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l269 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l274 = alloca { i64, ptr }
  %l276 = alloca { i64, ptr }
  %l282 = alloca { i64, ptr }
  %l286 = alloca i1
  %l293 = alloca { i64, ptr }
  %l306 = alloca { i64, ptr }
  %l307 = alloca ptr
  %l308 = alloca { i64, ptr }
  %l309 = alloca ptr
  %l310 = alloca { i64, ptr }
  %l311 = alloca { i64, ptr }
  %l312 = alloca ptr
  %l315 = alloca i32
  %l316 = alloca { i64, ptr }
  %l320 = alloca { i64, ptr }
  %l323 = alloca ptr
  %l326 = alloca { i64, ptr }
  %l327 = alloca i64
  %l328 = alloca { i64, ptr }
  %l331 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %t7 = alloca { i64, [4 x i64] }, align 8
  %t10 = alloca { i64, [7 x i64] }, align 8
  %t23 = alloca { i64, [4 x i64] }, align 8
  %t26 = alloca { i64, [7 x i64] }, align 8
  %t47 = alloca { i64, [2 x i64] }, align 8
  %t80 = alloca { i64, [2 x i64] }, align 8
  %t87 = alloca %"compiler/mir:Fn", align 8
  %t92 = alloca { i64, [2 x i64] }, align 8
  %t97 = alloca %"compiler/emit:fnEm", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t7
  %t8 = getelementptr { i64, [4 x i64] }, ptr %t7, i32 0, i32 0
  store i64 0, ptr %t8
  %t9 = load { i64, [4 x i64] }, ptr %t7
  store { i64, [7 x i64] } zeroinitializer, ptr %t10
  %t11 = getelementptr { i64, [7 x i64] }, ptr %t10, i32 0, i32 0
  store i64 2, ptr %t11
  %t13 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t9, 0
  %t14 = getelementptr { i64, [7 x i64] }, ptr %t10, i32 0, i32 1
  store { { i64, [4 x i64] } } %t13, ptr %t14
  %t15 = load { i64, [7 x i64] }, ptr %t10
  %t16 = load i32, ptr %l2, !tbaa !23
  %t20 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t6, { i64, [7 x i64] } %t15, i32 %t16)
  store i64 %t20, ptr %l44
  br label %bb1
bb1:
  %t21 = load i64, ptr %l44, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 0
  store i64 0, ptr %t24
  %t25 = load { i64, [4 x i64] }, ptr %t23
  store { i64, [7 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [7 x i64] }, ptr %t26, i32 0, i32 0
  store i64 2, ptr %t27
  %t29 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t25, 0
  %t30 = getelementptr { i64, [7 x i64] }, ptr %t26, i32 0, i32 1
  store { { i64, [4 x i64] } } %t29, ptr %t30
  %t31 = load { i64, [7 x i64] }, ptr %t26
  %t32 = load i32, ptr %l1, !tbaa !23
  %t36 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t22, { i64, [7 x i64] } %t31, i32 %t32)
  store i64 %t36, ptr %l49
  br label %bb2
bb2:
  %t37 = load i64, ptr %l49, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l1, !tbaa !23
  %t40 = load i32, ptr %l2, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eadaptKey(ptr %v0, ptr %s0, ptr %t38, i32 %t39, i32 %t40)
  store { i64, ptr } %t44, ptr %l53
  br label %bb3
bb3:
  %t45 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  %t46 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t47
  %t48 = getelementptr { i64, [2 x i64] }, ptr %t47, i32 0, i32 0
  store i64 4, ptr %t48
  %t49 = insertvalue { i64 } undef, i64 0, 0
  %t50 = getelementptr { i64, [2 x i64] }, ptr %t47, i32 0, i32 1
  store { i64 } %t49, ptr %t50
  %t51 = load { i64, [2 x i64] }, ptr %t47
  %t52 = load i32, ptr %l2, !tbaa !23
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t54 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t57 = extractvalue { i64, ptr } %t53, 1
  %t58 = extractvalue { i64, ptr } %t53, 0
  %t59 = add i64 %t55, %t58
  %t60 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t59)
  call void @olang_textcopy(ptr %t60, ptr %t54, i64 %t55)
  %t61 = getelementptr i8, ptr %t60, i64 %t55
  call void @olang_textcopy(ptr %t61, ptr %t57, i64 %t58)
  %t62 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t60, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = extractvalue { i64, ptr } %t63, 1
  %t67 = mul i64 %t65, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t67)
  call void @llvm.memcpy.p0.p0.i64(ptr %t68, ptr %t66, i64 %t67, i1 false)
  %t69 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  %t71 = load i64, ptr %l4, !tbaa !24
  %t77 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t46, { i64, [2 x i64] } %t51, i32 %t52, { i64, ptr } %t70, i64 %t71, i1 true, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d70, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store { i64, ptr } %t77, ptr %l61
  br label %bb4
bb4:
  %t78 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t78, ptr %l7, !tbaa !27
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l62, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 0
  store i64 4, ptr %t81
  %t82 = insertvalue { i64 } undef, i64 0, 0
  %t83 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 1
  store { i64 } %t82, ptr %t83
  %t84 = load { i64, [2 x i64] }, ptr %t80
  store { i64, [2 x i64] } %t84, ptr %l63
  %t85 = load i32, ptr %l2, !tbaa !23
  store i32 %t85, ptr %l64, !tbaa !23
  %t86 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t86, ptr %l65
  br label %bb5
bb5:
  %t88 = load { i64, [2 x i64] }, ptr %l63
  %t89 = load i32, ptr %l64, !tbaa !23
  %t90 = load %"compiler/source:Span", ptr %l65
  call void @compiler_2fmir_3aFn_2ector(ptr %t87, ptr %s0, { i64, [2 x i64] } %t88, i32 %t89, i64 0, %"compiler/source:Span" %t90)
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t87, i64 800, i1 false)
  br label %bb6
bb6:
  %t91 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t91, ptr %l66, i64 800, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t92
  %t93 = getelementptr { i64, [2 x i64] }, ptr %t92, i32 0, i32 0
  store i64 4, ptr %t93
  %t94 = insertvalue { i64 } undef, i64 0, 0
  %t95 = getelementptr { i64, [2 x i64] }, ptr %t92, i32 0, i32 1
  store { i64 } %t94, ptr %t95
  %t96 = load { i64, [2 x i64] }, ptr %t92
  %t98 = load ptr, ptr %l62, !tbaa !29
  call void @compiler_2femit_3afnEm_2ector(ptr %t97, ptr %v0, ptr %s0, ptr %s0, ptr %t98, ptr %t91, { i64, [2 x i64] } %t96)
  call void @llvm.memmove.p0.p0.i64(ptr %l69, ptr %t97, i64 1104, i1 false)
  br label %bb7
bb7:
  %t101 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 1104, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t101, ptr %l69, i64 1104, i1 false)
  store ptr %t101, ptr %l8, !tbaa !29
  %t103 = load ptr, ptr %l8, !tbaa !29
  %t105 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v0, ptr %t103, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d71, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d72, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t105, ptr %l72
  br label %bb8
bb8:
  %t106 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t106, ptr %l9, !tbaa !27
  %t107 = load ptr, ptr %l8, !tbaa !29
  store ptr %t107, ptr %l73, !tbaa !29
  %t108 = load ptr, ptr %l8, !tbaa !29
  %t110 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %s0, ptr %s0, ptr %s0, ptr %v0, ptr %t108, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d73, i32 0, i32 1) })
  store { i64, ptr } %t110, ptr %l75
  br label %bb9
bb9:
  %t111 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t118 = load ptr, ptr %l73, !tbaa !29
  %t120 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v0, ptr %t118, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d74, i32 0, i32 1) }, { i64, ptr } %t117, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t120, ptr %l77
  br label %bb10
bb10:
  %t121 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t121, ptr %l10, !tbaa !27
  %t122 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t122, ptr %l78
  br label %bb11
bb11:
  %t123 = load %"std/prelude/text:StringBuilder", ptr %l78
  store %"std/prelude/text:StringBuilder" %t123, ptr %l11
  %t124 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t125 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t128 = extractvalue { i64, ptr } %t124, 1
  %t129 = extractvalue { i64, ptr } %t124, 0
  %t130 = add i64 %t126, %t129
  %t131 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t130)
  call void @olang_textcopy(ptr %t131, ptr %t125, i64 %t126)
  %t132 = getelementptr i8, ptr %t131, i64 %t126
  call void @olang_textcopy(ptr %t132, ptr %t128, i64 %t129)
  %t133 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t131, 1
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t137 = extractvalue { i64, ptr } %t134, 1
  %t138 = mul i64 %t136, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t138)
  call void @llvm.memcpy.p0.p0.i64(ptr %t139, ptr %t137, i64 %t138, i1 false)
  %t140 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l11, { i64, ptr } %t141)
  br label %bb12
bb12:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %t144, i32 %t145)
  br label %bb13
bb13:
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t149 = load i32, ptr %l1, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l87
  br label %bb14
bb14:
  %t153 = load i32, ptr %l87, !tbaa !23
  store i32 %t153, ptr %l12, !tbaa !23
  %t154 = load i32, ptr %l12, !tbaa !23
  %t155 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t158 = icmp ne i32 %t154, %t155
  br i1 %t158, label %bb15, label %bb16
bb15:
  %t160 = load i32, ptr %l12, !tbaa !23
  %t161 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t164 = icmp ne i32 %t160, %t161
  store i1 %t164, ptr %l91, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb17
bb17:
  %t166 = load i1, ptr %l91, !tbaa !21
  br i1 %t166, label %bb18, label %bb19
bb18:
  %t167 = load ptr, ptr %l3, !tbaa !29
  %t168 = load i32, ptr %l12, !tbaa !23
  %t171 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t167, i32 %t168)
  store i1 %t171, ptr %l98
  br label %bb20
bb19:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb21
bb20:
  %t172 = load i1, ptr %l98, !tbaa !21
  store i1 %t172, ptr %l95, !tbaa !21
  br label %bb21
bb21:
  %t173 = load i1, ptr %l95, !tbaa !21
  br i1 %t173, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l11, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d76, i32 0, i32 1) })
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  store i64 0, ptr %l13, !tbaa !24
  %t175 = load i64, ptr %l5, !tbaa !24
  store i64 %t175, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t177 = load i64, ptr %l14, !tbaa !24
  %t178 = load i64, ptr %l13, !tbaa !24
  %t181 = icmp sgt i64 %t177, %t178
  br i1 %t181, label %bb26, label %bb27
bb26:
  %t183 = load i64, ptr %l15, !tbaa !24
  %t185 = icmp sgt i64 %t183, 0
  br i1 %t185, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb31
bb28:
  %t187 = load i64, ptr %l14, !tbaa !24
  %t188 = load i64, ptr %l13, !tbaa !24
  %t191 = sub i64 %t187, %t188
  %t192 = load i64, ptr %l15, !tbaa !24
  %t195 = add i64 %t191, %t192
  %t197 = sub i64 %t195, 1
  %t198 = load i64, ptr %l15, !tbaa !24
  %t201 = sdiv i64 %t197, %t198
  store i64 %t201, ptr %l107, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb30
bb30:
  %t203 = load i64, ptr %l107, !tbaa !24
  store i64 %t203, ptr %l104, !tbaa !24
  br label %bb31
bb31:
  %t204 = load i64, ptr %l104, !tbaa !24
  store i64 %t204, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb32
bb32:
  %t205 = load i64, ptr %l17, !tbaa !24
  %t206 = load i64, ptr %l16, !tbaa !24
  %t209 = icmp slt i64 %t205, %t206
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb33, label %bb34
bb33:
  br label %bb43
bb34:
  br label %bb35
bb35:
  %t213 = load i64, ptr %l13, !tbaa !24
  %t214 = load i64, ptr %l17, !tbaa !24
  %t215 = load i64, ptr %l15, !tbaa !24
  %t218 = mul i64 %t214, %t215
  %t221 = add i64 %t213, %t218
  store i64 %t221, ptr %l18, !tbaa !24
  %t223 = load i64, ptr %l18, !tbaa !24
  %t224 = load i64, ptr %l4, !tbaa !24
  %t227 = icmp slt i64 %t223, %t224
  br i1 %t227, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t229 = load i64, ptr %l18, !tbaa !24
  %t230 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t233 = call i64 @__olang_fmt_i64(ptr null, i64 %t229)
  %t234 = add i64 %t231, %t233
  %t235 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t234)
  call void @olang_textcopy(ptr %t235, ptr %t230, i64 %t231)
  %t236 = getelementptr i8, ptr %t235, i64 %t231
  %t237 = call i64 @__olang_fmt_i64(ptr %t236, i64 %t229)
  %t238 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t235, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = extractvalue { i64, ptr } %t239, 1
  %t243 = mul i64 %t241, 1
  %t244 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t243)
  call void @llvm.memcpy.p0.p0.i64(ptr %t244, ptr %t242, i64 %t243, i1 false)
  %t245 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t244, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l11, { i64, ptr } %t246)
  br label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %l11, ptr %l132, !tbaa !29
  %t249 = load ptr, ptr %l8, !tbaa !29
  %t251 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprogram(ptr %s0, ptr %s8, ptr %v0, ptr %t249)
  store { i64, ptr } %t251, ptr %l134
  br label %bb39
bb38:
  call void @__olang_scope_close(ptr %s6)
  br label %bb41
bb39:
  %t252 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t253 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t254 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = extractvalue { i64, ptr } %t254, 0
  %t257 = add i64 %t253, %t256
  %t258 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t257)
  call void @olang_textcopy(ptr %t258, ptr %t252, i64 %t253)
  %t259 = getelementptr i8, ptr %t258, i64 %t253
  call void @olang_textcopy(ptr %t259, ptr %t255, i64 %t256)
  %t260 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t258, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = extractvalue { i64, ptr } %t261, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  %t269 = load ptr, ptr %l132, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t269, { i64, ptr } %t268)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s8)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t271 = load i64, ptr %l17, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l17, !tbaa !24
  br label %bb32
bb43:
  %t275 = load ptr, ptr %l3, !tbaa !29
  store ptr %t275, ptr %l139, !tbaa !29
  %t276 = load ptr, ptr %l3, !tbaa !29
  %t277 = load i32, ptr %l2, !tbaa !23
  %t280 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t276, i32 %t277)
  store i32 %t280, ptr %l142
  br label %bb44
bb44:
  %t281 = load ptr, ptr %l139, !tbaa !29
  %t282 = load i32, ptr %l142, !tbaa !23
  %t283 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t281, i32 %t282)
  store { i64, ptr } %t283, ptr %l143
  br label %bb45
bb45:
  %t284 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t284, ptr %l19, !tbaa !27
  %t285 = load ptr, ptr %l3, !tbaa !29
  %t286 = load i32, ptr %l2, !tbaa !23
  %t289 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s0, ptr %t285, i32 %t286)
  store { i64, ptr } %t289, ptr %l146
  br label %bb46
bb46:
  %t290 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } %t290, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t291 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t293 = extractvalue { i64, ptr } %t291, 0
  store i64 %t293, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t295 = load i64, ptr %l22, !tbaa !24
  %t296 = load i64, ptr %l21, !tbaa !24
  %t299 = icmp sgt i64 %t295, %t296
  br i1 %t299, label %bb47, label %bb48
bb47:
  %t301 = load i64, ptr %l23, !tbaa !24
  %t303 = icmp sgt i64 %t301, 0
  br i1 %t303, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb52
bb49:
  %t305 = load i64, ptr %l22, !tbaa !24
  %t306 = load i64, ptr %l21, !tbaa !24
  %t309 = sub i64 %t305, %t306
  %t310 = load i64, ptr %l23, !tbaa !24
  %t313 = add i64 %t309, %t310
  %t315 = sub i64 %t313, 1
  %t316 = load i64, ptr %l23, !tbaa !24
  %t319 = sdiv i64 %t315, %t316
  store i64 %t319, ptr %l155, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb51
bb51:
  %t321 = load i64, ptr %l155, !tbaa !24
  store i64 %t321, ptr %l152, !tbaa !24
  br label %bb52
bb52:
  %t322 = load i64, ptr %l152, !tbaa !24
  store i64 %t322, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb53
bb53:
  %t323 = load i64, ptr %l25, !tbaa !24
  %t324 = load i64, ptr %l24, !tbaa !24
  %t327 = icmp slt i64 %t323, %t324
  %t329 = xor i1 %t327, true
  br i1 %t329, label %bb54, label %bb55
bb54:
  br label %bb75
bb55:
  br label %bb56
bb56:
  %t331 = load i64, ptr %l21, !tbaa !24
  %t332 = load i64, ptr %l25, !tbaa !24
  %t333 = load i64, ptr %l23, !tbaa !24
  %t336 = mul i64 %t332, %t333
  %t339 = add i64 %t331, %t336
  store i64 %t339, ptr %l26, !tbaa !24
  %t341 = load i64, ptr %l26, !tbaa !24
  %t343 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = getelementptr i8, ptr %t344, i64 %t341
  %t346 = load i8, ptr %t345, !tbaa !32
  store i8 %t346, ptr %l27, !tbaa !22
  %t348 = load i8, ptr %l27, !tbaa !22
  %t350 = icmp eq i8 %t348, 109
  br i1 %t350, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb61
bb59:
  store %olang.scope zeroinitializer, ptr %s13
  %t352 = load i64, ptr %l26, !tbaa !24
  %t353 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t354 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t356 = call i64 @__olang_fmt_i64(ptr null, i64 %t352)
  %t357 = add i64 %t354, %t356
  %t358 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t357)
  call void @olang_textcopy(ptr %t358, ptr %t353, i64 %t354)
  %t359 = getelementptr i8, ptr %t358, i64 %t354
  %t360 = call i64 @__olang_fmt_i64(ptr %t359, i64 %t352)
  %t361 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t358, 1
  %t364 = extractvalue { i64, ptr } %t362, 0
  %t365 = extractvalue { i64, ptr } %t362, 1
  %t366 = mul i64 %t364, 1
  %t367 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t366)
  call void @llvm.memcpy.p0.p0.i64(ptr %t367, ptr %t365, i64 %t366, i1 false)
  %t368 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t369 = insertvalue { i64, ptr } %t368, ptr %t367, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %l11, { i64, ptr } %t369)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s13)
  br label %bb73
bb61:
  %t372 = load i8, ptr %l27, !tbaa !22
  %t374 = icmp eq i8 %t372, 115
  br i1 %t374, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb66
bb64:
  store %olang.scope zeroinitializer, ptr %s15
  %t376 = load i64, ptr %l26, !tbaa !24
  %t377 = load i64, ptr %l26, !tbaa !24
  %t378 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t379 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t381 = call i64 @__olang_fmt_i64(ptr null, i64 %t376)
  %t382 = add i64 %t379, %t381
  %t383 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t385 = add i64 %t382, %t384
  %t387 = call i64 @__olang_fmt_i64(ptr null, i64 %t377)
  %t388 = add i64 %t385, %t387
  %t389 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t391 = add i64 %t388, %t390
  %t392 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t391)
  call void @olang_textcopy(ptr %t392, ptr %t378, i64 %t379)
  %t393 = getelementptr i8, ptr %t392, i64 %t379
  %t394 = call i64 @__olang_fmt_i64(ptr %t393, i64 %t376)
  %t395 = getelementptr i8, ptr %t393, i64 %t381
  call void @olang_textcopy(ptr %t395, ptr %t383, i64 %t384)
  %t396 = getelementptr i8, ptr %t395, i64 %t384
  %t397 = call i64 @__olang_fmt_i64(ptr %t396, i64 %t377)
  %t398 = getelementptr i8, ptr %t396, i64 %t387
  call void @olang_textcopy(ptr %t398, ptr %t389, i64 %t390)
  %t399 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t400 = insertvalue { i64, ptr } %t399, ptr %t392, 1
  %t402 = extractvalue { i64, ptr } %t400, 0
  %t403 = extractvalue { i64, ptr } %t400, 1
  %t404 = mul i64 %t402, 1
  %t405 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t404)
  call void @llvm.memcpy.p0.p0.i64(ptr %t405, ptr %t403, i64 %t404, i1 false)
  %t406 = insertvalue { i64, ptr } undef, i64 %t402, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t405, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %l11, { i64, ptr } %t407)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s15)
  br label %bb73
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb72
bb69:
  store %olang.scope zeroinitializer, ptr %s17
  store ptr %l11, ptr %l188, !tbaa !29
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t411, ptr %l190, !tbaa !27
  %t412 = load i64, ptr %l26, !tbaa !24
  %t414 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = getelementptr i32, ptr %t415, i64 %t412
  %t417 = load i32, ptr %t416, !tbaa !33
  %t420 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s17, ptr %t410, i32 %t417)
  store { i64, ptr } %t420, ptr %l193
  br label %bb70
bb70:
  %t421 = load i64, ptr %l26, !tbaa !24
  %t422 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t423 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t424 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 1
  %t426 = extractvalue { i64, ptr } %t424, 0
  %t427 = add i64 %t423, %t426
  %t428 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t429 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t430 = add i64 %t427, %t429
  %t432 = call i64 @__olang_fmt_i64(ptr null, i64 %t421)
  %t433 = add i64 %t430, %t432
  %t434 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t433)
  call void @olang_textcopy(ptr %t434, ptr %t422, i64 %t423)
  %t435 = getelementptr i8, ptr %t434, i64 %t423
  call void @olang_textcopy(ptr %t435, ptr %t425, i64 %t426)
  %t436 = getelementptr i8, ptr %t435, i64 %t426
  call void @olang_textcopy(ptr %t436, ptr %t428, i64 %t429)
  %t437 = getelementptr i8, ptr %t436, i64 %t429
  %t438 = call i64 @__olang_fmt_i64(ptr %t437, i64 %t421)
  %t439 = insertvalue { i64, ptr } undef, i64 %t433, 0
  %t440 = insertvalue { i64, ptr } %t439, ptr %t434, 1
  %t442 = extractvalue { i64, ptr } %t440, 0
  %t443 = extractvalue { i64, ptr } %t440, 1
  %t444 = mul i64 %t442, 1
  %t445 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t444)
  call void @llvm.memcpy.p0.p0.i64(ptr %t445, ptr %t443, i64 %t444, i1 false)
  %t446 = insertvalue { i64, ptr } undef, i64 %t442, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t445, 1
  %t448 = load ptr, ptr %l188, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s17, ptr %t448, { i64, ptr } %t447)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s17)
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_e3ad71d8c7542caf_f4839b67a89e1c73)
  unreachable
bb73:
  br label %bb74
bb74:
  %t450 = load i64, ptr %l25, !tbaa !24
  %t452 = add i64 %t450, 1
  store i64 %t452, ptr %l25, !tbaa !24
  br label %bb53
bb75:
  %t454 = load ptr, ptr %l3, !tbaa !29
  %t455 = load i32, ptr %l1, !tbaa !23
  %t457 = inttoptr i64 0 to ptr
  %t460 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t457, ptr %t454, i32 %t455)
  store { i64, ptr } %t460, ptr %l202
  br label %bb76
bb76:
  %t461 = load { i64, ptr }, ptr %l202, !tbaa !27
  store { i64, ptr } %t461, ptr %l28, !tbaa !27
  %t462 = load ptr, ptr %l3, !tbaa !29
  %t463 = load i32, ptr %l2, !tbaa !23
  %t465 = inttoptr i64 0 to ptr
  %t468 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t465, ptr %t462, i32 %t463)
  store { i64, ptr } %t468, ptr %l206
  br label %bb77
bb77:
  %t469 = load { i64, ptr }, ptr %l206, !tbaa !27
  store { i64, ptr } %t469, ptr %l29, !tbaa !27
  %t470 = load ptr, ptr %l3, !tbaa !29
  %t471 = load i32, ptr %l1, !tbaa !23
  %t474 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t470, i32 %t471)
  store i32 %t474, ptr %l209
  br label %bb78
bb78:
  %t475 = load i32, ptr %l209, !tbaa !23
  store i32 %t475, ptr %l30, !tbaa !23
  %t476 = load ptr, ptr %l3, !tbaa !29
  %t477 = load i32, ptr %l2, !tbaa !23
  %t480 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t476, i32 %t477)
  store i32 %t480, ptr %l212
  br label %bb79
bb79:
  %t481 = load i32, ptr %l212, !tbaa !23
  store i32 %t481, ptr %l31, !tbaa !23
  %t482 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t484 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t482, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t484, ptr %l214
  br label %bb80
bb80:
  %t485 = load i1, ptr %l214, !tbaa !21
  br i1 %t485, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s20
  %t486 = load ptr, ptr %l8, !tbaa !29
  store ptr %t486, ptr %l215, !tbaa !29
  %t487 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t487, ptr %l216, !tbaa !27
  %t489 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s20, ptr %l11)
  store { i64, ptr } %t489, ptr %l218
  br label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s22
  %t490 = load ptr, ptr %l8, !tbaa !29
  store ptr %t490, ptr %l225, !tbaa !29
  %t491 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t491, ptr %l226, !tbaa !27
  %t492 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t492, ptr %l227, !tbaa !27
  %t494 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s22, ptr %l11)
  store { i64, ptr } %t494, ptr %l229
  br label %bb90
bb83:
  %t495 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t496 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t497 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t498 = extractvalue { i64, ptr } %t497, 1
  %t499 = extractvalue { i64, ptr } %t497, 0
  %t500 = add i64 %t496, %t499
  %t501 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t502 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t503 = add i64 %t500, %t502
  %t504 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t505 = extractvalue { i64, ptr } %t504, 1
  %t506 = extractvalue { i64, ptr } %t504, 0
  %t507 = add i64 %t503, %t506
  %t508 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t509 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t510 = add i64 %t507, %t509
  %t511 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t510)
  call void @olang_textcopy(ptr %t511, ptr %t495, i64 %t496)
  %t512 = getelementptr i8, ptr %t511, i64 %t496
  call void @olang_textcopy(ptr %t512, ptr %t498, i64 %t499)
  %t513 = getelementptr i8, ptr %t512, i64 %t499
  call void @olang_textcopy(ptr %t513, ptr %t501, i64 %t502)
  %t514 = getelementptr i8, ptr %t513, i64 %t502
  call void @olang_textcopy(ptr %t514, ptr %t505, i64 %t506)
  %t515 = getelementptr i8, ptr %t514, i64 %t506
  call void @olang_textcopy(ptr %t515, ptr %t508, i64 %t509)
  %t516 = insertvalue { i64, ptr } undef, i64 %t510, 0
  %t517 = insertvalue { i64, ptr } %t516, ptr %t511, 1
  %t519 = extractvalue { i64, ptr } %t517, 0
  %t520 = extractvalue { i64, ptr } %t517, 1
  %t521 = mul i64 %t519, 1
  %t522 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t521)
  call void @llvm.memcpy.p0.p0.i64(ptr %t522, ptr %t520, i64 %t521, i1 false)
  %t523 = insertvalue { i64, ptr } undef, i64 %t519, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t522, 1
  %t525 = load ptr, ptr %l215, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %s0, ptr %s20, ptr %v0, ptr %t525, { i64, ptr } %t524)
  br label %bb84
bb84:
  %t527 = load ptr, ptr %l8, !tbaa !29
  store ptr %t527, ptr %l221, !tbaa !29
  %t528 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t530 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s20, { i64, ptr } %t528, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t530, ptr %l223
  br label %bb85
bb85:
  %t531 = load i1, ptr %l223, !tbaa !21
  br i1 %t531, label %bb86, label %bb87
bb86:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d90, i32 0, i32 1) }, ptr %l224, !tbaa !27
  br label %bb88
bb87:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l224, !tbaa !27
  br label %bb88
bb88:
  %t532 = load ptr, ptr %l221, !tbaa !29
  %t533 = load { i64, ptr }, ptr %l224, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %s0, ptr %s20, ptr %v0, ptr %t532, { i64, ptr } %t533)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s20)
  br label %bb136
bb90:
  %t534 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t535 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t536 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t536, 1
  %t538 = extractvalue { i64, ptr } %t536, 0
  %t539 = add i64 %t535, %t538
  %t540 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t541 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t542 = add i64 %t539, %t541
  %t543 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t544 = extractvalue { i64, ptr } %t543, 1
  %t545 = extractvalue { i64, ptr } %t543, 0
  %t546 = add i64 %t542, %t545
  %t547 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t548 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t549 = add i64 %t546, %t548
  %t550 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t551 = extractvalue { i64, ptr } %t550, 1
  %t552 = extractvalue { i64, ptr } %t550, 0
  %t553 = add i64 %t549, %t552
  %t554 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t555 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t556 = add i64 %t553, %t555
  %t557 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t556)
  call void @olang_textcopy(ptr %t557, ptr %t534, i64 %t535)
  %t558 = getelementptr i8, ptr %t557, i64 %t535
  call void @olang_textcopy(ptr %t558, ptr %t537, i64 %t538)
  %t559 = getelementptr i8, ptr %t558, i64 %t538
  call void @olang_textcopy(ptr %t559, ptr %t540, i64 %t541)
  %t560 = getelementptr i8, ptr %t559, i64 %t541
  call void @olang_textcopy(ptr %t560, ptr %t544, i64 %t545)
  %t561 = getelementptr i8, ptr %t560, i64 %t545
  call void @olang_textcopy(ptr %t561, ptr %t547, i64 %t548)
  %t562 = getelementptr i8, ptr %t561, i64 %t548
  call void @olang_textcopy(ptr %t562, ptr %t551, i64 %t552)
  %t563 = getelementptr i8, ptr %t562, i64 %t552
  call void @olang_textcopy(ptr %t563, ptr %t554, i64 %t555)
  %t564 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t565 = insertvalue { i64, ptr } %t564, ptr %t557, 1
  %t567 = extractvalue { i64, ptr } %t565, 0
  %t568 = extractvalue { i64, ptr } %t565, 1
  %t569 = mul i64 %t567, 1
  %t570 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t569)
  call void @llvm.memcpy.p0.p0.i64(ptr %t570, ptr %t568, i64 %t569, i1 false)
  %t571 = insertvalue { i64, ptr } undef, i64 %t567, 0
  %t572 = insertvalue { i64, ptr } %t571, ptr %t570, 1
  %t573 = load ptr, ptr %l225, !tbaa !29
  %t575 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %s0, ptr %s22, ptr %s22, ptr %v0, ptr %t573, { i64, ptr } %t572)
  store { i64, ptr } %t575, ptr %l232
  br label %bb91
bb91:
  %t576 = load { i64, ptr }, ptr %l232, !tbaa !27
  store { i64, ptr } %t576, ptr %l32, !tbaa !27
  %t577 = load i32, ptr %l12, !tbaa !23
  %t578 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t581 = icmp ne i32 %t577, %t578
  br i1 %t581, label %bb92, label %bb93
bb92:
  %t583 = load i32, ptr %l12, !tbaa !23
  %t584 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t587 = icmp ne i32 %t583, %t584
  store i1 %t587, ptr %l236, !tbaa !21
  br label %bb94
bb93:
  store i1 false, ptr %l236, !tbaa !21
  br label %bb94
bb94:
  %t589 = load i1, ptr %l236, !tbaa !21
  br i1 %t589, label %bb95, label %bb96
bb95:
  %t590 = load ptr, ptr %l3, !tbaa !29
  %t591 = load i32, ptr %l12, !tbaa !23
  %t594 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t590, i32 %t591)
  store i1 %t594, ptr %l243
  br label %bb97
bb96:
  store i1 false, ptr %l240, !tbaa !21
  br label %bb98
bb97:
  %t595 = load i1, ptr %l243, !tbaa !21
  %t596 = xor i1 %t595, true
  store i1 %t596, ptr %l240, !tbaa !21
  br label %bb98
bb98:
  %t598 = load i1, ptr %l240, !tbaa !21
  store i1 %t598, ptr %l33, !tbaa !21
  %t599 = load ptr, ptr %l3, !tbaa !29
  %t600 = load i32, ptr %l30, !tbaa !23
  %t603 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s22, ptr %t599, i32 %t600)
  store { i64, ptr } %t603, ptr %l247
  br label %bb99
bb99:
  %t604 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t605 = extractvalue { i64, ptr } %t604, 0
  %t607 = icmp sgt i64 %t605, 0
  store i1 %t607, ptr %l34, !tbaa !21
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l250, !tbaa !27
  %t609 = load { i64, ptr }, ptr %l250, !tbaa !27
  store { i64, ptr } %t609, ptr %l35, !tbaa !27
  %t611 = load i1, ptr %l34, !tbaa !21
  br i1 %t611, label %bb100, label %bb101
bb100:
  store %olang.scope zeroinitializer, ptr %s24
  %t613 = ptrtoint ptr %s22 to i64
  store i64 %t613, ptr %l253, !tbaa !24
  %t614 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2efvAdapter_2elocal_2e35
  br i1 %t614, label %bb102, label %bb103
bb101:
  br label %bb113
bb102:
  %t616 = call ptr @__olang_region_make(ptr %s22)
  %t617 = ptrtoint ptr %t616 to i64
  store i64 %t617, ptr %l253, !tbaa !24
  br label %bb103
bb103:
  %t618 = load ptr, ptr %l8, !tbaa !29
  store ptr %t618, ptr %l255, !tbaa !29
  %t619 = load i1, ptr %l33, !tbaa !21
  %t621 = xor i1 %t619, true
  br i1 %t621, label %bb104, label %bb105
bb104:
  %t623 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t623, ptr %l258, !tbaa !27
  br label %bb107
bb105:
  %t625 = load ptr, ptr %l8, !tbaa !29
  %t626 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t627 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t628 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t629 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t631 = extractvalue { i64, ptr } %t626, 1
  %t632 = extractvalue { i64, ptr } %t626, 0
  %t633 = add i64 %t629, %t632
  %t634 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t635 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t636 = add i64 %t633, %t635
  %t638 = extractvalue { i64, ptr } %t627, 1
  %t639 = extractvalue { i64, ptr } %t627, 0
  %t640 = add i64 %t636, %t639
  %t641 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t642 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t643 = add i64 %t640, %t642
  %t644 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t643)
  call void @olang_textcopy(ptr %t644, ptr %t628, i64 %t629)
  %t645 = getelementptr i8, ptr %t644, i64 %t629
  call void @olang_textcopy(ptr %t645, ptr %t631, i64 %t632)
  %t646 = getelementptr i8, ptr %t645, i64 %t632
  call void @olang_textcopy(ptr %t646, ptr %t634, i64 %t635)
  %t647 = getelementptr i8, ptr %t646, i64 %t635
  call void @olang_textcopy(ptr %t647, ptr %t638, i64 %t639)
  %t648 = getelementptr i8, ptr %t647, i64 %t639
  call void @olang_textcopy(ptr %t648, ptr %t641, i64 %t642)
  %t649 = insertvalue { i64, ptr } undef, i64 %t643, 0
  %t650 = insertvalue { i64, ptr } %t649, ptr %t644, 1
  %t652 = extractvalue { i64, ptr } %t650, 0
  %t653 = extractvalue { i64, ptr } %t650, 1
  %t654 = mul i64 %t652, 1
  %t655 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t654)
  call void @llvm.memcpy.p0.p0.i64(ptr %t655, ptr %t653, i64 %t654, i1 false)
  %t656 = insertvalue { i64, ptr } undef, i64 %t652, 0
  %t657 = insertvalue { i64, ptr } %t656, ptr %t655, 1
  %t660 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %s0, ptr %s24, ptr %s22, ptr %v0, ptr %t625, { i64, ptr } %t657)
  store { i64, ptr } %t660, ptr %l265
  br label %bb106
bb106:
  %t661 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t662 = extractvalue { i64, ptr } %t661, 0
  %t663 = extractvalue { i64, ptr } %t661, 1
  %t664 = mul i64 %t662, 1
  %t665 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t664)
  call void @llvm.memcpy.p0.p0.i64(ptr %t665, ptr %t663, i64 %t664, i1 false)
  %t666 = insertvalue { i64, ptr } undef, i64 %t662, 0
  %t667 = insertvalue { i64, ptr } %t666, ptr %t665, 1
  store { i64, ptr } %t667, ptr %l258, !tbaa !27
  br label %bb107
bb107:
  %t669 = load i32, ptr %l30, !tbaa !23
  %t670 = load i32, ptr %l31, !tbaa !23
  %t671 = load i64, ptr %l253
  %t672 = inttoptr i64 %t671 to ptr
  %t673 = load ptr, ptr %l255, !tbaa !29
  %t674 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t677 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2erecode(ptr %s0, ptr %s22, ptr %t672, ptr %v0, ptr %t673, { i64, ptr } %t674, i32 %t669, i32 %t670)
  store { i64, ptr } %t677, ptr %l269
  br label %bb108
bb108:
  %t678 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2efvAdapter_2elocal_2e35
  br i1 %t678, label %bb109, label %bb110
bb109:
  %t680 = load i64, ptr %l253
  %t681 = inttoptr i64 %t680 to ptr
  %t682 = load { i64, ptr }, ptr %l269
  %t683 = extractvalue { i64, ptr } %t682, 1
  %t684 = call ptr @__olang_region_or(ptr %t683, ptr null)
  %t685 = icmp ne ptr %t684, null
  %t686 = select i1 %t685, ptr %t684, ptr null
  %t687 = icmp eq ptr %t686, %t681
  call void @__olang_region_settle(ptr %t681, i1 %t687)
  br label %bb110
bb110:
  %t688 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t688, ptr %l271, !tbaa !27
  %t689 = load { i64, ptr }, ptr %l269, !tbaa !27
  store { i64, ptr } %t689, ptr %l35, !tbaa !27
  %t690 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2efvAdapter_2elocal_2e35
  br i1 %t690, label %bb111, label %bb112
bb111:
  %t692 = load { i64, ptr }, ptr %l271
  %t693 = extractvalue { i64, ptr } %t692, 1
  call void @__olang_region_release(ptr %t693)
  store { i64, ptr } zeroinitializer, ptr %l271
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s24)
  br label %bb113
bb113:
  %t694 = load i1, ptr %l33, !tbaa !21
  br i1 %t694, label %bb114, label %bb115
bb114:
  %t696 = load i1, ptr %l34, !tbaa !21
  br i1 %t696, label %bb116, label %bb117
bb115:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d100, i32 0, i32 1) }, ptr %l274, !tbaa !27
  br label %bb120
bb116:
  %t698 = load ptr, ptr %l8, !tbaa !29
  %t699 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t700 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t701 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t702 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t704 = extractvalue { i64, ptr } %t699, 1
  %t705 = extractvalue { i64, ptr } %t699, 0
  %t706 = add i64 %t702, %t705
  %t707 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t708 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t709 = add i64 %t706, %t708
  %t711 = extractvalue { i64, ptr } %t700, 1
  %t712 = extractvalue { i64, ptr } %t700, 0
  %t713 = add i64 %t709, %t712
  %t714 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t715 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t716 = add i64 %t713, %t715
  %t717 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t716)
  call void @olang_textcopy(ptr %t717, ptr %t701, i64 %t702)
  %t718 = getelementptr i8, ptr %t717, i64 %t702
  call void @olang_textcopy(ptr %t718, ptr %t704, i64 %t705)
  %t719 = getelementptr i8, ptr %t718, i64 %t705
  call void @olang_textcopy(ptr %t719, ptr %t707, i64 %t708)
  %t720 = getelementptr i8, ptr %t719, i64 %t708
  call void @olang_textcopy(ptr %t720, ptr %t711, i64 %t712)
  %t721 = getelementptr i8, ptr %t720, i64 %t712
  call void @olang_textcopy(ptr %t721, ptr %t714, i64 %t715)
  %t722 = insertvalue { i64, ptr } undef, i64 %t716, 0
  %t723 = insertvalue { i64, ptr } %t722, ptr %t717, 1
  %t725 = extractvalue { i64, ptr } %t723, 0
  %t726 = extractvalue { i64, ptr } %t723, 1
  %t727 = mul i64 %t725, 1
  %t728 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t727)
  call void @llvm.memcpy.p0.p0.i64(ptr %t728, ptr %t726, i64 %t727, i1 false)
  %t729 = insertvalue { i64, ptr } undef, i64 %t725, 0
  %t730 = insertvalue { i64, ptr } %t729, ptr %t728, 1
  %t733 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %s0, ptr %s22, ptr %s22, ptr %v0, ptr %t698, { i64, ptr } %t730)
  store { i64, ptr } %t733, ptr %l282
  br label %bb118
bb117:
  %t734 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t734, ptr %l276, !tbaa !27
  br label %bb119
bb118:
  %t736 = load { i64, ptr }, ptr %l282, !tbaa !27
  store { i64, ptr } %t736, ptr %l276, !tbaa !27
  br label %bb119
bb119:
  %t737 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t738 = extractvalue { i64, ptr } %t737, 0
  %t739 = extractvalue { i64, ptr } %t737, 1
  %t740 = mul i64 %t738, 1
  %t741 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t740)
  call void @llvm.memcpy.p0.p0.i64(ptr %t741, ptr %t739, i64 %t740, i1 false)
  %t742 = insertvalue { i64, ptr } undef, i64 %t738, 0
  %t743 = insertvalue { i64, ptr } %t742, ptr %t741, 1
  store { i64, ptr } %t743, ptr %l274, !tbaa !27
  br label %bb120
bb120:
  %t745 = load { i64, ptr }, ptr %l274, !tbaa !27
  store { i64, ptr } %t745, ptr %l36, !tbaa !27
  %t746 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t748 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s22, { i64, ptr } %t746, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d104, i32 0, i32 1) })
  store i1 %t748, ptr %l286
  br label %bb121
bb121:
  %t749 = load i1, ptr %l286, !tbaa !21
  br i1 %t749, label %bb122, label %bb123
bb122:
  store %olang.scope zeroinitializer, ptr %s27
  %t750 = load ptr, ptr %l8, !tbaa !29
  %t751 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t752 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t753 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t755 = extractvalue { i64, ptr } %t751, 1
  %t756 = extractvalue { i64, ptr } %t751, 0
  %t757 = add i64 %t753, %t756
  %t758 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t757)
  call void @olang_textcopy(ptr %t758, ptr %t752, i64 %t753)
  %t759 = getelementptr i8, ptr %t758, i64 %t753
  call void @olang_textcopy(ptr %t759, ptr %t755, i64 %t756)
  %t760 = insertvalue { i64, ptr } undef, i64 %t757, 0
  %t761 = insertvalue { i64, ptr } %t760, ptr %t758, 1
  %t763 = extractvalue { i64, ptr } %t761, 0
  %t764 = extractvalue { i64, ptr } %t761, 1
  %t765 = mul i64 %t763, 1
  %t766 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t765)
  call void @llvm.memcpy.p0.p0.i64(ptr %t766, ptr %t764, i64 %t765, i1 false)
  %t767 = insertvalue { i64, ptr } undef, i64 %t763, 0
  %t768 = insertvalue { i64, ptr } %t767, ptr %t766, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %s0, ptr %s27, ptr %v0, ptr %t750, { i64, ptr } %t768)
  br label %bb124
bb123:
  store %olang.scope zeroinitializer, ptr %s29
  %t771 = load ptr, ptr %l3, !tbaa !29
  %t772 = load i32, ptr %l31, !tbaa !23
  %t775 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s29, ptr %t771, i32 %t772)
  store { i64, ptr } %t775, ptr %l293
  br label %bb125
bb124:
  call void @__olang_scope_close(ptr %s27)
  br label %bb135
bb125:
  %t776 = load { i64, ptr }, ptr %l293, !tbaa !27
  %t777 = extractvalue { i64, ptr } %t776, 0
  %t779 = icmp eq i64 %t777, 0
  br i1 %t779, label %bb126, label %bb127
bb126:
  store %olang.scope zeroinitializer, ptr %s30
  %t781 = load ptr, ptr %l8, !tbaa !29
  %t782 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t783 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t784 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t785 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t787 = extractvalue { i64, ptr } %t782, 1
  %t788 = extractvalue { i64, ptr } %t782, 0
  %t789 = add i64 %t785, %t788
  %t790 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t791 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t792 = add i64 %t789, %t791
  %t794 = extractvalue { i64, ptr } %t783, 1
  %t795 = extractvalue { i64, ptr } %t783, 0
  %t796 = add i64 %t792, %t795
  %t797 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t796)
  call void @olang_textcopy(ptr %t797, ptr %t784, i64 %t785)
  %t798 = getelementptr i8, ptr %t797, i64 %t785
  call void @olang_textcopy(ptr %t798, ptr %t787, i64 %t788)
  %t799 = getelementptr i8, ptr %t798, i64 %t788
  call void @olang_textcopy(ptr %t799, ptr %t790, i64 %t791)
  %t800 = getelementptr i8, ptr %t799, i64 %t791
  call void @olang_textcopy(ptr %t800, ptr %t794, i64 %t795)
  %t801 = insertvalue { i64, ptr } undef, i64 %t796, 0
  %t802 = insertvalue { i64, ptr } %t801, ptr %t797, 1
  %t804 = extractvalue { i64, ptr } %t802, 0
  %t805 = extractvalue { i64, ptr } %t802, 1
  %t806 = mul i64 %t804, 1
  %t807 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t806)
  call void @llvm.memcpy.p0.p0.i64(ptr %t807, ptr %t805, i64 %t806, i1 false)
  %t808 = insertvalue { i64, ptr } undef, i64 %t804, 0
  %t809 = insertvalue { i64, ptr } %t808, ptr %t807, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %s0, ptr %s30, ptr %v0, ptr %t781, { i64, ptr } %t809)
  br label %bb128
bb127:
  store %olang.scope zeroinitializer, ptr %s32
  %t812 = load ptr, ptr %l8, !tbaa !29
  %t813 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t814 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t815 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t816 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t818 = extractvalue { i64, ptr } %t813, 1
  %t819 = extractvalue { i64, ptr } %t813, 0
  %t820 = add i64 %t816, %t819
  %t821 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t822 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t823 = add i64 %t820, %t822
  %t825 = extractvalue { i64, ptr } %t814, 1
  %t826 = extractvalue { i64, ptr } %t814, 0
  %t827 = add i64 %t823, %t826
  %t828 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t829 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t830 = add i64 %t827, %t829
  %t831 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t830)
  call void @olang_textcopy(ptr %t831, ptr %t815, i64 %t816)
  %t832 = getelementptr i8, ptr %t831, i64 %t816
  call void @olang_textcopy(ptr %t832, ptr %t818, i64 %t819)
  %t833 = getelementptr i8, ptr %t832, i64 %t819
  call void @olang_textcopy(ptr %t833, ptr %t821, i64 %t822)
  %t834 = getelementptr i8, ptr %t833, i64 %t822
  call void @olang_textcopy(ptr %t834, ptr %t825, i64 %t826)
  %t835 = getelementptr i8, ptr %t834, i64 %t826
  call void @olang_textcopy(ptr %t835, ptr %t828, i64 %t829)
  %t836 = insertvalue { i64, ptr } undef, i64 %t830, 0
  %t837 = insertvalue { i64, ptr } %t836, ptr %t831, 1
  %t839 = extractvalue { i64, ptr } %t837, 0
  %t840 = extractvalue { i64, ptr } %t837, 1
  %t841 = mul i64 %t839, 1
  %t842 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t841)
  call void @llvm.memcpy.p0.p0.i64(ptr %t842, ptr %t840, i64 %t841, i1 false)
  %t843 = insertvalue { i64, ptr } undef, i64 %t839, 0
  %t844 = insertvalue { i64, ptr } %t843, ptr %t842, 1
  %t847 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %s0, ptr %s32, ptr %s32, ptr %v0, ptr %t812, { i64, ptr } %t844)
  store { i64, ptr } %t847, ptr %l306
  br label %bb129
bb128:
  call void @__olang_scope_close(ptr %s30)
  br label %bb134
bb129:
  %t848 = load { i64, ptr }, ptr %l306, !tbaa !27
  %t849 = load ptr, ptr %l8, !tbaa !29
  store ptr %t849, ptr %l307, !tbaa !29
  %t850 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t850, ptr %l308, !tbaa !27
  %t851 = load ptr, ptr %l8, !tbaa !29
  store ptr %t851, ptr %l309, !tbaa !29
  %t852 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t852, ptr %l310, !tbaa !27
  store { i64, ptr } %t848, ptr %l311, !tbaa !27
  %t854 = load ptr, ptr %l0, !tbaa !29
  store ptr %t854, ptr %l312, !tbaa !29
  %t855 = load ptr, ptr %l3, !tbaa !29
  %t856 = load i32, ptr %l2, !tbaa !23
  %t859 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t855, i32 %t856)
  store i32 %t859, ptr %l315
  br label %bb130
bb130:
  %t860 = load ptr, ptr %l312, !tbaa !29
  %t861 = load i32, ptr %l315, !tbaa !23
  %t862 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s32, ptr %t860, i32 %t861)
  store { i64, ptr } %t862, ptr %l316
  br label %bb131
bb131:
  %t863 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t864 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t865 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t866 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t867 = extractvalue { i64, ptr } %t866, 1
  %t868 = extractvalue { i64, ptr } %t866, 0
  %t869 = add i64 %t865, %t868
  %t870 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t871 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t872 = add i64 %t869, %t871
  %t873 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t874 = extractvalue { i64, ptr } %t873, 1
  %t875 = extractvalue { i64, ptr } %t873, 0
  %t876 = add i64 %t872, %t875
  %t877 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t878 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t879 = add i64 %t876, %t878
  %t880 = load { i64, ptr }, ptr %l316, !tbaa !27
  %t881 = extractvalue { i64, ptr } %t880, 1
  %t882 = extractvalue { i64, ptr } %t880, 0
  %t883 = add i64 %t879, %t882
  %t884 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t885 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t886 = add i64 %t883, %t885
  %t888 = extractvalue { i64, ptr } %t863, 1
  %t889 = extractvalue { i64, ptr } %t863, 0
  %t890 = add i64 %t886, %t889
  %t891 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t892 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t893 = add i64 %t890, %t892
  %t894 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t893)
  call void @olang_textcopy(ptr %t894, ptr %t864, i64 %t865)
  %t895 = getelementptr i8, ptr %t894, i64 %t865
  call void @olang_textcopy(ptr %t895, ptr %t867, i64 %t868)
  %t896 = getelementptr i8, ptr %t895, i64 %t868
  call void @olang_textcopy(ptr %t896, ptr %t870, i64 %t871)
  %t897 = getelementptr i8, ptr %t896, i64 %t871
  call void @olang_textcopy(ptr %t897, ptr %t874, i64 %t875)
  %t898 = getelementptr i8, ptr %t897, i64 %t875
  call void @olang_textcopy(ptr %t898, ptr %t877, i64 %t878)
  %t899 = getelementptr i8, ptr %t898, i64 %t878
  call void @olang_textcopy(ptr %t899, ptr %t881, i64 %t882)
  %t900 = getelementptr i8, ptr %t899, i64 %t882
  call void @olang_textcopy(ptr %t900, ptr %t884, i64 %t885)
  %t901 = getelementptr i8, ptr %t900, i64 %t885
  call void @olang_textcopy(ptr %t901, ptr %t888, i64 %t889)
  %t902 = getelementptr i8, ptr %t901, i64 %t889
  call void @olang_textcopy(ptr %t902, ptr %t891, i64 %t892)
  %t903 = insertvalue { i64, ptr } undef, i64 %t893, 0
  %t904 = insertvalue { i64, ptr } %t903, ptr %t894, 1
  %t906 = extractvalue { i64, ptr } %t904, 0
  %t907 = extractvalue { i64, ptr } %t904, 1
  %t908 = mul i64 %t906, 1
  %t909 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t908)
  call void @llvm.memcpy.p0.p0.i64(ptr %t909, ptr %t907, i64 %t908, i1 false)
  %t910 = insertvalue { i64, ptr } undef, i64 %t906, 0
  %t911 = insertvalue { i64, ptr } %t910, ptr %t909, 1
  %t912 = load ptr, ptr %l309, !tbaa !29
  %t914 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %s0, ptr %s32, ptr %s32, ptr %v0, ptr %t912, { i64, ptr } %t911)
  store { i64, ptr } %t914, ptr %l320
  br label %bb132
bb132:
  %t915 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t916 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t917 = load { i64, ptr }, ptr %l308, !tbaa !27
  %t918 = extractvalue { i64, ptr } %t917, 1
  %t919 = extractvalue { i64, ptr } %t917, 0
  %t920 = add i64 %t916, %t919
  %t921 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t922 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t923 = add i64 %t920, %t922
  %t924 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t925 = extractvalue { i64, ptr } %t924, 1
  %t926 = extractvalue { i64, ptr } %t924, 0
  %t927 = add i64 %t923, %t926
  %t928 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t927)
  call void @olang_textcopy(ptr %t928, ptr %t915, i64 %t916)
  %t929 = getelementptr i8, ptr %t928, i64 %t916
  call void @olang_textcopy(ptr %t929, ptr %t918, i64 %t919)
  %t930 = getelementptr i8, ptr %t929, i64 %t919
  call void @olang_textcopy(ptr %t930, ptr %t921, i64 %t922)
  %t931 = getelementptr i8, ptr %t930, i64 %t922
  call void @olang_textcopy(ptr %t931, ptr %t925, i64 %t926)
  %t932 = insertvalue { i64, ptr } undef, i64 %t927, 0
  %t933 = insertvalue { i64, ptr } %t932, ptr %t928, 1
  %t935 = extractvalue { i64, ptr } %t933, 0
  %t936 = extractvalue { i64, ptr } %t933, 1
  %t937 = mul i64 %t935, 1
  %t938 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t937)
  call void @llvm.memcpy.p0.p0.i64(ptr %t938, ptr %t936, i64 %t937, i1 false)
  %t939 = insertvalue { i64, ptr } undef, i64 %t935, 0
  %t940 = insertvalue { i64, ptr } %t939, ptr %t938, 1
  %t941 = load ptr, ptr %l307, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %s0, ptr %s32, ptr %v0, ptr %t941, { i64, ptr } %t940)
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s32)
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s29)
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s22)
  br label %bb136
bb136:
  %t943 = load ptr, ptr %l0, !tbaa !29
  store ptr %t943, ptr %l323, !tbaa !29
  %t944 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t945 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t946 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t948 = extractvalue { i64, ptr } %t944, 1
  %t949 = extractvalue { i64, ptr } %t944, 0
  %t950 = add i64 %t946, %t949
  %t951 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t950)
  call void @olang_textcopy(ptr %t951, ptr %t945, i64 %t946)
  %t952 = getelementptr i8, ptr %t951, i64 %t946
  call void @olang_textcopy(ptr %t952, ptr %t948, i64 %t949)
  %t953 = insertvalue { i64, ptr } undef, i64 %t950, 0
  %t954 = insertvalue { i64, ptr } %t953, ptr %t951, 1
  %t956 = extractvalue { i64, ptr } %t954, 0
  %t957 = extractvalue { i64, ptr } %t954, 1
  %t958 = mul i64 %t956, 1
  %t959 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t958)
  call void @llvm.memcpy.p0.p0.i64(ptr %t959, ptr %t957, i64 %t958, i1 false)
  %t960 = insertvalue { i64, ptr } undef, i64 %t956, 0
  %t961 = insertvalue { i64, ptr } %t960, ptr %t959, 1
  store { i64, ptr } %t961, ptr %l326, !tbaa !27
  %t962 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t962, ptr %l327, !tbaa !24
  %t963 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t963, ptr %l328, !tbaa !27
  %t964 = load ptr, ptr %l8, !tbaa !29
  %t966 = getelementptr %"compiler/emit:fnEm", ptr %t964, i32 0, i32 5
  %t968 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t966)
  store { i64, ptr } %t968, ptr %l331
  br label %bb137
bb137:
  %t969 = load { i64, ptr }, ptr %l328, !tbaa !27
  %t970 = extractvalue { i64, ptr } %t969, 1
  %t971 = extractvalue { i64, ptr } %t969, 0
  %t972 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t973 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t974 = add i64 %t971, %t973
  %t975 = load { i64, ptr }, ptr %l331, !tbaa !27
  %t976 = extractvalue { i64, ptr } %t975, 1
  %t977 = extractvalue { i64, ptr } %t975, 0
  %t978 = add i64 %t974, %t977
  %t979 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t980 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t981 = add i64 %t978, %t980
  %t982 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t981)
  call void @olang_textcopy(ptr %t982, ptr %t970, i64 %t971)
  %t983 = getelementptr i8, ptr %t982, i64 %t971
  call void @olang_textcopy(ptr %t983, ptr %t972, i64 %t973)
  %t984 = getelementptr i8, ptr %t983, i64 %t973
  call void @olang_textcopy(ptr %t984, ptr %t976, i64 %t977)
  %t985 = getelementptr i8, ptr %t984, i64 %t977
  call void @olang_textcopy(ptr %t985, ptr %t979, i64 %t980)
  %t986 = insertvalue { i64, ptr } undef, i64 %t981, 0
  %t987 = insertvalue { i64, ptr } %t986, ptr %t982, 1
  %t989 = extractvalue { i64, ptr } %t987, 0
  %t990 = extractvalue { i64, ptr } %t987, 1
  %t991 = mul i64 %t989, 1
  %t992 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t991)
  call void @llvm.memcpy.p0.p0.i64(ptr %t992, ptr %t990, i64 %t991, i1 false)
  %t993 = insertvalue { i64, ptr } undef, i64 %t989, 0
  %t994 = insertvalue { i64, ptr } %t993, ptr %t992, 1
  %t995 = load ptr, ptr %l323, !tbaa !29
  %t996 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t997 = load i64, ptr %l327, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t995, { i64, ptr } %t996, i64 %t997, { i64, ptr } %t994, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d120, i32 0, i32 1) })
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l5 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 23
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %a1)
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

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
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
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i64
  %l23 = alloca ptr
  %l31 = alloca i32
  %l33 = alloca i64
  %l35 = alloca ptr
  %l38 = alloca i64
  %l39 = alloca i64
  %l46 = alloca i64
  %l50 = alloca i64
  %l56 = alloca i64
  %l79 = alloca i64
  %rv = alloca i64
  %t156 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 0
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
  br label %bb44
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/emit:Emitter", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/lower:Lowerer", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t21, i64 %t25)
  store ptr %t28, ptr %l23
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l23, !tbaa !29
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
  br label %bb14
bb7:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t43, i64 %t44)
  store i32 %t47, ptr %l31
  br label %bb8
bb8:
  %t48 = load i32, ptr %l31, !tbaa !23
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb9, label %bb10
bb9:
  %t51 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  store i64 %t51, ptr %l33, !tbaa !24
  br label %bb13
bb10:
  %t53 = load ptr, ptr %l2, !tbaa !29
  store ptr %t53, ptr %l35, !tbaa !29
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t54, i64 %t55)
  store i64 %t58, ptr %l38
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l35, !tbaa !29
  %t60 = load i64, ptr %l38, !tbaa !24
  %t61 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t59, i64 %t60)
  store i64 %t61, ptr %l39
  br label %bb12
bb12:
  %t62 = load i64, ptr %l39, !tbaa !24
  store i64 %t62, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t63 = load i64, ptr %l33, !tbaa !24
  store i64 %t63, ptr %rv
  br label %ret
bb14:
  %t64 = load { i64, [2 x i64] }, ptr %l4
  %t66 = extractvalue { i64, [2 x i64] } %t64, 0
  %t67 = icmp eq i64 %t66, 1
  br i1 %t67, label %bb15, label %bb16
bb15:
  %t69 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t70 = getelementptr { i32, i32 }, ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70
  store i32 %t71, ptr %l6, !tbaa !23
  %t73 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t74 = getelementptr { i32, i32 }, ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l7, !tbaa !23
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t77 = load i32, ptr %l7, !tbaa !23
  %t79 = icmp ne i32 %t77, 0
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  store i64 %t81, ptr %l46, !tbaa !24
  br label %bb21
bb19:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i32, ptr %l6, !tbaa !23
  %t87 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeHome(ptr %v0, ptr %t83, i32 %t84)
  store i64 %t87, ptr %l50
  br label %bb20
bb20:
  %t88 = load i64, ptr %l50, !tbaa !24
  store i64 %t88, ptr %l46, !tbaa !24
  br label %bb21
bb21:
  %t89 = load i64, ptr %l46, !tbaa !24
  store i64 %t89, ptr %rv
  br label %ret
bb22:
  %t90 = load { i64, [2 x i64] }, ptr %l4
  %t92 = extractvalue { i64, [2 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 3
  br i1 %t93, label %bb23, label %bb24
bb23:
  %t95 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t96 = getelementptr { i32 }, ptr %t95, i32 0, i32 0
  %t97 = load i32, ptr %t96
  store i32 %t97, ptr %l8, !tbaa !23
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i32, ptr %l8, !tbaa !23
  %t103 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeHome(ptr %v0, ptr %t99, i32 %t100)
  store i64 %t103, ptr %l56
  br label %bb26
bb26:
  %t104 = load i64, ptr %l56, !tbaa !24
  store i64 %t104, ptr %rv
  br label %ret
bb27:
  %t105 = load { i64, [2 x i64] }, ptr %l4
  %t107 = extractvalue { i64, [2 x i64] } %t105, 0
  %t108 = icmp eq i64 %t107, 6
  br i1 %t108, label %bb28, label %bb29
bb28:
  %t110 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t111 = getelementptr { i64, i32 }, ptr %t110, i32 0, i32 0
  %t112 = load i64, ptr %t111
  store i64 %t112, ptr %l9, !tbaa !24
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t114 = load i64, ptr %l9, !tbaa !24
  store i64 %t114, ptr %rv
  br label %ret
bb31:
  %t116 = load { i64, [2 x i64] }, ptr %l4
  %t118 = extractvalue { i64, [2 x i64] } %t116, 0
  %t119 = icmp eq i64 %t118, 5
  br i1 %t119, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 0
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/load:Loader", ptr %t124, i32 0, i32 12
  %t127 = load i64, ptr %t126, !tbaa !24
  store i64 %t127, ptr %rv
  br label %ret
bb35:
  %t129 = load { i64, [2 x i64] }, ptr %l4
  %t131 = extractvalue { i64, [2 x i64] } %t129, 0
  %t132 = icmp eq i64 %t131, 9
  br i1 %t132, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t134 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  store i64 %t134, ptr %rv
  br label %ret
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  %t136 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  store i64 %t136, ptr %rv
  br label %ret
bb43:
  call void @__olang_check_failed(ptr @olang_loc_884b1f134ce8f58_4f25fcbaf6ee0184)
  unreachable
bb44:
  %t138 = load { i64, [2 x i64] }, ptr %l1
  %t140 = extractvalue { i64, [2 x i64] } %t138, 0
  %t141 = icmp eq i64 %t140, 3
  br i1 %t141, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  %t143 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t143, ptr %rv
  br label %ret
bb48:
  %t145 = load { i64, [2 x i64] }, ptr %l1
  %t147 = extractvalue { i64, [2 x i64] } %t145, 0
  %t148 = icmp eq i64 %t147, 1
  br i1 %t148, label %bb49, label %bb50
bb49:
  %t150 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t151 = getelementptr { i32 }, ptr %t150, i32 0, i32 0
  %t152 = load i32, ptr %t151
  store i32 %t152, ptr %l10, !tbaa !23
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i32, ptr %l10, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t156
  %t157 = getelementptr { i64, [2 x i64] }, ptr %t156, i32 0, i32 0
  store i64 0, ptr %t157
  %t159 = insertvalue { i32 } undef, i32 %t155, 0
  %t160 = getelementptr { i64, [2 x i64] }, ptr %t156, i32 0, i32 1
  store { i32 } %t159, ptr %t160
  %t161 = load { i64, [2 x i64] }, ptr %t156
  %t164 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t154, { i64, [2 x i64] } %t161)
  store i64 %t164, ptr %l79
  br label %bb52
bb52:
  %t165 = load i64, ptr %l79, !tbaa !24
  store i64 %t165, ptr %rv
  br label %ret
bb53:
  %t166 = load { i64, [2 x i64] }, ptr %l1
  %t168 = extractvalue { i64, [2 x i64] } %t166, 0
  %t169 = icmp eq i64 %t168, 2
  br i1 %t169, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t171 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t171, ptr %rv
  br label %ret
bb57:
  %t173 = load { i64, [2 x i64] }, ptr %l1
  %t175 = extractvalue { i64, [2 x i64] } %t173, 0
  %t176 = icmp eq i64 %t175, 6
  br i1 %t176, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t178 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  store i64 %t178, ptr %rv
  br label %ret
bb61:
  %t180 = load { i64, [2 x i64] }, ptr %l1
  %t182 = extractvalue { i64, [2 x i64] } %t180, 0
  %t183 = icmp eq i64 %t182, 4
  br i1 %t183, label %bb62, label %bb63
bb62:
  %t185 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t186 = getelementptr { i64 }, ptr %t185, i32 0, i32 0
  %t187 = load i64, ptr %t186
  store i64 %t187, ptr %l11, !tbaa !24
  br label %bb64
bb63:
  br label %bb65
bb64:
  %t189 = load i64, ptr %l11, !tbaa !24
  store i64 %t189, ptr %rv
  br label %ret
bb65:
  %t191 = load { i64, [2 x i64] }, ptr %l1
  %t193 = extractvalue { i64, [2 x i64] } %t191, 0
  %t194 = icmp eq i64 %t193, 5
  br i1 %t194, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb69
bb68:
  %t196 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t196, ptr %rv
  br label %ret
bb69:
  call void @__olang_check_failed(ptr @olang_loc_77c745ca54276229_8072b8e8f7d66d75)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstGroups(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i64
  %l39 = alloca i64
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i64
  %l85 = alloca i64
  %l91 = alloca i64
  %l97 = alloca i64
  %l101 = alloca i64
  %l104 = alloca i64
  %l124 = alloca i64
  %l131 = alloca i64
  %l134 = alloca i1
  %l135 = alloca i64
  %l137 = alloca i64
  %l147 = alloca i64
  %l149 = alloca i64
  %l154 = alloca i64
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l156 = alloca i64
  %l160 = alloca i64
  %l161 = alloca i32
  %l167 = alloca %"compiler/emit:Reused"
  %l169 = alloca %"compiler/emit:Reused"
  %l171 = alloca i64
  %l173 = alloca i64
  %l178 = alloca { i64, ptr }
  %l179 = alloca i64
  %l183 = alloca i64
  %l184 = alloca i32
  %l187 = alloca i1
  %l191 = alloca i64
  %l194 = alloca i1
  %l198 = alloca i1
  %l222 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l225 = alloca i64
  %l229 = alloca i64
  %l232 = alloca i64
  %l253 = alloca i64
  %l259 = alloca i1
  %l265 = alloca ptr
  %l266 = alloca i64
  %l270 = alloca i64
  %l271 = alloca i32
  %l276 = alloca i64
  %l278 = alloca i64
  %l283 = alloca i64
  %l286 = alloca i1
  %l288 = alloca ptr
  %l289 = alloca i64
  %l292 = alloca i64
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %t102 = alloca i64
  %t127 = alloca i64
  %t286 = alloca %"compiler/emit:Reused", align 8
  %t296 = alloca %"compiler/emit:Reused", align 8
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
  store ptr %t9, ptr %l1, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:Emitter", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/load:Loader", ptr %t17, i32 0, i32 12
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l2, !tbaa !24
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l48
  br label %bb1
bb1:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l50
  br label %bb2
bb2:
  %t27 = load i64, ptr %l50, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb3, label %bb4
bb3:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb8
bb5:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l57, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb7
bb7:
  %t54 = load i64, ptr %l57, !tbaa !24
  store i64 %t54, ptr %l54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load i64, ptr %l54, !tbaa !24
  store i64 %t55, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t56 = load i64, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t64 = load i64, ptr %l4, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l9, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l2, !tbaa !24
  %t78 = icmp ne i64 %t74, %t75
  br i1 %t78, label %bb13, label %bb14
bb13:
  %t80 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t80)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t83 = load i64, ptr %l8, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l8, !tbaa !24
  br label %bb9
bb18:
  %t87 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t87)
  br label %bb19
bb19:
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t90)
  store i64 %t92, ptr %l85
  br label %bb20
bb20:
  %t93 = load i64, ptr %l85, !tbaa !24
  %t94 = icmp sge i64 %t93, 0
  br i1 %t94, label %bb21, label %bb22
bb21:
  %t96 = load i64, ptr %l85, !tbaa !24
  %t97 = icmp sle i64 %t96, 1152921504606846975
  br i1 %t97, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_5ff468ede8d2dad5_ce6794a5e99bfc39)
  unreachable
bb23:
  %t99 = load i64, ptr %l85, !tbaa !24
  %t100 = mul i64 %t99, 8
  %t101 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t100)
  store i64 0, ptr %t102
  br label %fill.103
fill.103:
  %t106 = load i64, ptr %t102
  %t107 = icmp slt i64 %t106, %t99
  br i1 %t107, label %fillb.104, label %filld.105
fillb.104:
  %t108 = getelementptr i64, ptr %t101, i64 %t106
  store i64 -1, ptr %t108
  %t109 = add i64 %t106, 1
  store i64 %t109, ptr %t102
  br label %fill.103
filld.105:
  %t110 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t101, 1
  store { i64, ptr } %t111, ptr %l10, !tbaa !27
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/emit:Emitter", ptr %t113, i32 0, i32 19
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t115)
  store i64 %t117, ptr %l91
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_5ff468ede8d2dad5_ce6794a5e99bfc39)
  unreachable
bb25:
  %t118 = load i64, ptr %l91, !tbaa !24
  %t119 = icmp sge i64 %t118, 0
  br i1 %t119, label %bb26, label %bb27
bb26:
  %t121 = load i64, ptr %l91, !tbaa !24
  %t122 = icmp sle i64 %t121, 1152921504606846975
  br i1 %t122, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_fd5758dba8282ae8_cbed788f914882ac)
  unreachable
bb28:
  %t124 = load i64, ptr %l91, !tbaa !24
  %t125 = mul i64 %t124, 8
  %t126 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t125)
  store i64 0, ptr %t127
  br label %fill.128
fill.128:
  %t131 = load i64, ptr %t127
  %t132 = icmp slt i64 %t131, %t124
  br i1 %t132, label %fillb.129, label %filld.130
fillb.129:
  %t133 = getelementptr i64, ptr %t126, i64 %t131
  store i64 -1, ptr %t133
  %t134 = add i64 %t131, 1
  store i64 %t134, ptr %t127
  br label %fill.128
filld.130:
  %t135 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t126, 1
  store { i64, ptr } %t136, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/emit:Emitter", ptr %t138, i32 0, i32 19
  %t142 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t140)
  store i64 %t142, ptr %l97
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_fd5758dba8282ae8_cbed788f914882ac)
  unreachable
bb30:
  %t143 = load i64, ptr %l97, !tbaa !24
  store i64 %t143, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t144 = load i64, ptr %l13, !tbaa !24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t148 = icmp sgt i64 %t144, %t145
  br i1 %t148, label %bb31, label %bb32
bb31:
  %t150 = load i64, ptr %l14, !tbaa !24
  %t152 = icmp sgt i64 %t150, 0
  br i1 %t152, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb36
bb33:
  %t154 = load i64, ptr %l13, !tbaa !24
  %t155 = load i64, ptr %l12, !tbaa !24
  %t158 = sub i64 %t154, %t155
  %t159 = load i64, ptr %l14, !tbaa !24
  %t162 = add i64 %t158, %t159
  %t164 = sub i64 %t162, 1
  %t165 = load i64, ptr %l14, !tbaa !24
  %t168 = sdiv i64 %t164, %t165
  store i64 %t168, ptr %l104, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb35
bb35:
  %t170 = load i64, ptr %l104, !tbaa !24
  store i64 %t170, ptr %l101, !tbaa !24
  br label %bb36
bb36:
  %t171 = load i64, ptr %l101, !tbaa !24
  store i64 %t171, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb37
bb37:
  %t172 = load i64, ptr %l16, !tbaa !24
  %t173 = load i64, ptr %l15, !tbaa !24
  %t176 = icmp slt i64 %t172, %t173
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb38, label %bb39
bb38:
  br label %bb51
bb39:
  br label %bb40
bb40:
  %t180 = load i64, ptr %l12, !tbaa !24
  %t181 = load i64, ptr %l16, !tbaa !24
  %t182 = load i64, ptr %l14, !tbaa !24
  %t185 = mul i64 %t181, %t182
  %t188 = add i64 %t180, %t185
  store i64 %t188, ptr %l17, !tbaa !24
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/emit:Emitter", ptr %t190, i32 0, i32 19
  %t194 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t192)
  store i64 %t194, ptr %l124
  br label %bb41
bb41:
  %t195 = load i64, ptr %l124, !tbaa !24
  %t196 = sub i64 %t195, 1
  %t197 = load i64, ptr %l17, !tbaa !24
  %t200 = sub i64 %t196, %t197
  store i64 %t200, ptr %l18, !tbaa !24
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/emit:Emitter", ptr %t202, i32 0, i32 21
  %t205 = load i64, ptr %l18, !tbaa !24
  %t208 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t204, i64 %t205)
  store i64 %t208, ptr %l131
  br label %bb42
bb42:
  %t209 = load i64, ptr %l131, !tbaa !24
  store i64 %t209, ptr %l19, !tbaa !24
  %t210 = load i64, ptr %l19, !tbaa !24
  %t212 = icmp sge i64 %t210, 0
  br i1 %t212, label %bb43, label %bb44
bb43:
  %t214 = load i64, ptr %l19, !tbaa !24
  store i64 %t214, ptr %l135, !tbaa !24
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t215)
  store i64 %t217, ptr %l137
  br label %bb45
bb44:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb46
bb45:
  %t218 = load i64, ptr %l135, !tbaa !24
  %t219 = load i64, ptr %l137, !tbaa !24
  %t220 = icmp slt i64 %t218, %t219
  store i1 %t220, ptr %l134, !tbaa !21
  br label %bb46
bb46:
  %t222 = load i1, ptr %l134, !tbaa !21
  br i1 %t222, label %bb47, label %bb48
bb47:
  %t223 = load i64, ptr %l18, !tbaa !24
  %t224 = load i64, ptr %l19, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr i64, ptr %t227, i64 %t224
  %t229 = load i64, ptr %t228, !tbaa !34
  %t232 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr i64, ptr %t233, i64 %t223
  store i64 %t229, ptr %t234, !tbaa !34
  %t235 = load i64, ptr %l19, !tbaa !24
  %t236 = load i64, ptr %l18, !tbaa !24
  %t239 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !27
  %t241 = getelementptr i64, ptr %t240, i64 %t235
  store i64 %t236, ptr %t241, !tbaa !34
  br label %bb49
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t242 = load i64, ptr %l16, !tbaa !24
  %t244 = add i64 %t242, 1
  store i64 %t244, ptr %l16, !tbaa !24
  br label %bb37
bb51:
  store ptr %l3, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb52
bb52:
  store %olang.scope zeroinitializer, ptr %s10
  %t247 = load i64, ptr %l21, !tbaa !24
  store i64 %t247, ptr %l147, !tbaa !24
  %t248 = load ptr, ptr %l20, !tbaa !29
  %t250 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t248)
  store i64 %t250, ptr %l149
  br label %bb53
bb53:
  %t251 = load i64, ptr %l147, !tbaa !24
  %t252 = load i64, ptr %l149, !tbaa !24
  %t253 = icmp slt i64 %t251, %t252
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s10)
  br label %bb102
bb55:
  br label %bb56
bb56:
  %t257 = load ptr, ptr %l20, !tbaa !29
  %t258 = load i64, ptr %l21, !tbaa !24
  %t261 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t257, i64 %t258)
  store i64 %t261, ptr %l154
  br label %bb57
bb57:
  %t262 = load i64, ptr %l154, !tbaa !24
  store i64 %t262, ptr %l22, !tbaa !24
  %t263 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s10, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t263, ptr %l155
  br label %bb58
bb58:
  %t264 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %l23
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/emit:Emitter", ptr %t265, i32 0, i32 83
  %t268 = load i64, ptr %l22, !tbaa !24
  %t271 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t267, i64 %t268)
  %t272 = extractvalue { i32, i64 } %t271, 1
  %t273 = extractvalue { i32, i64 } %t271, 0
  store i32 %t273, ptr %l161
  %t274 = icmp ne i32 %t273, 0
  br i1 %t274, label %bb60, label %ok.275, !prof !99
ok.275:
  store i64 %t272, ptr %l160
  br label %bb59
bb59:
  %t276 = load i64, ptr %l160, !tbaa !24
  store i64 %t276, ptr %l156, !tbaa !24
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i64 -1, ptr %l156, !tbaa !24
  br label %bb62
bb62:
  %t277 = load i64, ptr %l156, !tbaa !24
  store i64 %t277, ptr %l24, !tbaa !24
  %t278 = load i64, ptr %l24, !tbaa !24
  %t280 = icmp sge i64 %t278, 0
  br i1 %t280, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s12
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/emit:Emitter", ptr %t282, i32 0, i32 82
  %t285 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2eAt_3ccompiler_2femit_3aReused_3e(ptr %t286, ptr %v0, ptr %v0, ptr %t284, i64 %t285)
  call void @llvm.memmove.p0.p0.i64(ptr %l167, ptr %t286, i64 192, i1 false)
  br label %bb65
bb64:
  %t289 = load i64, ptr %l22, !tbaa !24
  %t291 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr i64, ptr %t292, i64 %t289
  %t294 = load i64, ptr %t293, !tbaa !34
  store i64 %t294, ptr %l29, !tbaa !24
  br label %bb92
bb65:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2femit_3aReused(ptr %t296, ptr %v0, ptr %l167)
  call void @llvm.memmove.p0.p0.i64(ptr %l169, ptr %t296, i64 192, i1 false)
  br label %bb66
bb66:
  %t298 = getelementptr %"compiler/emit:Reused", ptr %l169, i32 0, i32 6
  store ptr %t298, ptr %l25, !tbaa !29
  store i64 0, ptr %l26, !tbaa !24
  br label %bb67
bb67:
  %t300 = load i64, ptr %l26, !tbaa !24
  store i64 %t300, ptr %l171, !tbaa !24
  %t301 = load ptr, ptr %l25, !tbaa !29
  %t303 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s12, ptr %t301)
  store i64 %t303, ptr %l173
  br label %bb68
bb68:
  %t304 = load i64, ptr %l171, !tbaa !24
  %t305 = load i64, ptr %l173, !tbaa !24
  %t306 = icmp slt i64 %t304, %t305
  %t308 = xor i1 %t306, true
  br i1 %t308, label %bb69, label %bb70
bb69:
  br label %bb91
bb70:
  br label %bb71
bb71:
  %t310 = load ptr, ptr %l25, !tbaa !29
  %t311 = load i64, ptr %l26, !tbaa !24
  %t314 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s12, ptr %s12, ptr %t310, i64 %t311)
  store { i64, ptr } %t314, ptr %l178
  br label %bb72
bb72:
  %t315 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/emit:Emitter", ptr %t316, i32 0, i32 23
  %t322 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %s12, ptr %t318, { i64, ptr } %t315)
  %t323 = extractvalue { i32, i64 } %t322, 1
  %t324 = extractvalue { i32, i64 } %t322, 0
  store i32 %t324, ptr %l184
  %t325 = icmp ne i32 %t324, 0
  br i1 %t325, label %bb74, label %ok.326, !prof !99
ok.326:
  store i64 %t323, ptr %l183
  br label %bb73
bb73:
  %t327 = load i64, ptr %l183, !tbaa !24
  store i64 %t327, ptr %l179, !tbaa !24
  br label %bb76
bb74:
  br label %bb75
bb75:
  store i64 -1, ptr %l179, !tbaa !24
  br label %bb76
bb76:
  %t328 = load i64, ptr %l179, !tbaa !24
  store i64 %t328, ptr %l28, !tbaa !24
  %t329 = load i64, ptr %l28, !tbaa !24
  %t331 = icmp sge i64 %t329, 0
  br i1 %t331, label %bb77, label %bb78
bb77:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/emit:Emitter", ptr %t333, i32 0, i32 21
  %t336 = load i64, ptr %l28, !tbaa !24
  %t339 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t335, i64 %t336)
  store i64 %t339, ptr %l191
  br label %bb79
bb78:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb80
bb79:
  %t340 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t341 = load i64, ptr %l191, !tbaa !24
  %t343 = icmp eq i64 %t341, %t340
  store i1 %t343, ptr %l187, !tbaa !21
  br label %bb80
bb80:
  %t345 = load i1, ptr %l187, !tbaa !21
  br i1 %t345, label %bb81, label %bb82
bb81:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/emit:Emitter", ptr %t346, i32 0, i32 89
  %t349 = load i64, ptr %l28, !tbaa !24
  %t352 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t348, i64 %t349)
  store i1 %t352, ptr %l198
  br label %bb83
bb82:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb84
bb83:
  %t353 = load i1, ptr %l198, !tbaa !21
  %t354 = xor i1 %t353, true
  store i1 %t354, ptr %l194, !tbaa !21
  br label %bb84
bb84:
  %t356 = load i1, ptr %l194, !tbaa !21
  br i1 %t356, label %bb85, label %bb86
bb85:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/emit:Emitter", ptr %t357, i32 0, i32 89
  %t360 = load i64, ptr %l28, !tbaa !24
  %t361 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t359, i64 %t360, i64 %t361)
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t365 = load i64, ptr %l28, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s10, ptr %l23, i64 %t365)
  br label %bb88
bb88:
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t368 = load i64, ptr %l26, !tbaa !24
  %t370 = add i64 %t368, 1
  store i64 %t370, ptr %l26, !tbaa !24
  br label %bb67
bb91:
  call void @__olang_scope_close(ptr %s12)
  br label %bb99
bb92:
  %t372 = load i64, ptr %l29, !tbaa !24
  %t374 = icmp sge i64 %t372, 0
  %t376 = xor i1 %t374, true
  br i1 %t376, label %bb93, label %bb94
bb93:
  br label %bb98
bb94:
  br label %bb95
bb95:
  %t378 = load i64, ptr %l29, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s10, ptr %l23, i64 %t378)
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t381 = load i64, ptr %l29, !tbaa !24
  %t383 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = getelementptr i64, ptr %t384, i64 %t381
  %t386 = load i64, ptr %t385, !tbaa !34
  store i64 %t386, ptr %l29, !tbaa !24
  br label %bb92
bb98:
  br label %bb99
bb99:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load i64, ptr %l22, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupReached(ptr %v0, ptr %s10, ptr %t388, i64 %t389, ptr %l23)
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s10)
  br label %bb101
bb101:
  %t393 = load i64, ptr %l21, !tbaa !24
  %t395 = add i64 %t393, 1
  store i64 %t395, ptr %l21, !tbaa !24
  br label %bb52
bb102:
  %t397 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t397, ptr %l222
  br label %bb103
bb103:
  %t398 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l222
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t398, ptr %l30
  store i64 0, ptr %l31, !tbaa !24
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/emit:Emitter", ptr %t399, i32 0, i32 19
  %t403 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t401)
  store i64 %t403, ptr %l225
  br label %bb104
bb104:
  %t404 = load i64, ptr %l225, !tbaa !24
  store i64 %t404, ptr %l32, !tbaa !24
  store i64 1, ptr %l33, !tbaa !24
  %t405 = load i64, ptr %l32, !tbaa !24
  %t406 = load i64, ptr %l31, !tbaa !24
  %t409 = icmp sgt i64 %t405, %t406
  br i1 %t409, label %bb105, label %bb106
bb105:
  %t411 = load i64, ptr %l33, !tbaa !24
  %t413 = icmp sgt i64 %t411, 0
  br i1 %t413, label %bb107, label %bb108
bb106:
  store i64 0, ptr %l229, !tbaa !24
  br label %bb110
bb107:
  %t415 = load i64, ptr %l32, !tbaa !24
  %t416 = load i64, ptr %l31, !tbaa !24
  %t419 = sub i64 %t415, %t416
  %t420 = load i64, ptr %l33, !tbaa !24
  %t423 = add i64 %t419, %t420
  %t425 = sub i64 %t423, 1
  %t426 = load i64, ptr %l33, !tbaa !24
  %t429 = sdiv i64 %t425, %t426
  store i64 %t429, ptr %l232, !tbaa !24
  br label %bb109
bb108:
  store i64 0, ptr %l232, !tbaa !24
  br label %bb109
bb109:
  %t431 = load i64, ptr %l232, !tbaa !24
  store i64 %t431, ptr %l229, !tbaa !24
  br label %bb110
bb110:
  %t432 = load i64, ptr %l229, !tbaa !24
  store i64 %t432, ptr %l34, !tbaa !24
  store i64 0, ptr %l35, !tbaa !24
  br label %bb111
bb111:
  %t433 = load i64, ptr %l35, !tbaa !24
  %t434 = load i64, ptr %l34, !tbaa !24
  %t437 = icmp slt i64 %t433, %t434
  %t439 = xor i1 %t437, true
  br i1 %t439, label %bb112, label %bb113
bb112:
  br label %bb130
bb113:
  br label %bb114
bb114:
  %t441 = load i64, ptr %l31, !tbaa !24
  %t442 = load i64, ptr %l35, !tbaa !24
  %t443 = load i64, ptr %l33, !tbaa !24
  %t446 = mul i64 %t442, %t443
  %t449 = add i64 %t441, %t446
  store i64 %t449, ptr %l36, !tbaa !24
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr %"compiler/emit:Emitter", ptr %t451, i32 0, i32 21
  %t454 = load i64, ptr %l36, !tbaa !24
  %t457 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t453, i64 %t454)
  store i64 %t457, ptr %l253
  br label %bb115
bb115:
  %t458 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t459 = load i64, ptr %l253, !tbaa !24
  %t461 = icmp ne i64 %t459, %t458
  br i1 %t461, label %bb116, label %bb117
bb116:
  br label %bb129
bb117:
  br label %bb118
bb118:
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/emit:Emitter", ptr %t463, i32 0, i32 89
  %t466 = load i64, ptr %l36, !tbaa !24
  %t469 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t465, i64 %t466)
  store i1 %t469, ptr %l259
  br label %bb119
bb119:
  %t470 = load i1, ptr %l259, !tbaa !21
  %t471 = xor i1 %t470, true
  br i1 %t471, label %bb120, label %bb121
bb120:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = getelementptr %"compiler/emit:Emitter", ptr %t473, i32 0, i32 89
  %t476 = load i64, ptr %l36, !tbaa !24
  %t477 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t475, i64 %t476, i64 %t477)
  br label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb123
bb123:
  store ptr %l30, ptr %l265, !tbaa !29
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = getelementptr %"compiler/emit:Emitter", ptr %t481, i32 0, i32 89
  %t484 = load i64, ptr %l36, !tbaa !24
  %t487 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t483, i64 %t484)
  %t488 = extractvalue { i32, i64 } %t487, 1
  %t489 = extractvalue { i32, i64 } %t487, 0
  store i32 %t489, ptr %l271
  %t490 = icmp ne i32 %t489, 0
  br i1 %t490, label %bb125, label %ok.491, !prof !99
ok.491:
  store i64 %t488, ptr %l270
  br label %bb124
bb124:
  %t492 = load i64, ptr %l270, !tbaa !24
  store i64 %t492, ptr %l266, !tbaa !24
  br label %bb127
bb125:
  br label %bb126
bb126:
  %t493 = load i64, ptr %l2, !tbaa !24
  store i64 %t493, ptr %l266, !tbaa !24
  br label %bb127
bb127:
  %t495 = load ptr, ptr %l265, !tbaa !29
  %t496 = load i64, ptr %l266, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %t495, i64 %t496, i1 true)
  br label %bb128
bb128:
  br label %bb129
bb129:
  %t497 = load i64, ptr %l35, !tbaa !24
  %t499 = add i64 %t497, 1
  store i64 %t499, ptr %l35, !tbaa !24
  br label %bb111
bb130:
  store ptr %l3, ptr %l37, !tbaa !29
  store i64 0, ptr %l38, !tbaa !24
  br label %bb131
bb131:
  %t502 = load i64, ptr %l38, !tbaa !24
  store i64 %t502, ptr %l276, !tbaa !24
  %t503 = load ptr, ptr %l37, !tbaa !29
  %t505 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t503)
  store i64 %t505, ptr %l278
  br label %bb132
bb132:
  %t506 = load i64, ptr %l276, !tbaa !24
  %t507 = load i64, ptr %l278, !tbaa !24
  %t508 = icmp slt i64 %t506, %t507
  %t510 = xor i1 %t508, true
  br i1 %t510, label %bb133, label %bb134
bb133:
  br label %bb145
bb134:
  br label %bb135
bb135:
  %t512 = load ptr, ptr %l37, !tbaa !29
  %t513 = load i64, ptr %l38, !tbaa !24
  %t516 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t512, i64 %t513)
  store i64 %t516, ptr %l283
  br label %bb136
bb136:
  %t517 = load i64, ptr %l283, !tbaa !24
  store i64 %t517, ptr %l39, !tbaa !24
  %t518 = load i64, ptr %l39, !tbaa !24
  %t521 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l30, i64 %t518)
  store i1 %t521, ptr %l286
  br label %bb137
bb137:
  %t522 = load i1, ptr %l286, !tbaa !21
  br i1 %t522, label %bb138, label %bb139
bb138:
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/emit:Emitter", ptr %t523, i32 0, i32 91
  store ptr %t525, ptr %l288, !tbaa !29
  %t526 = load i64, ptr %l39, !tbaa !24
  store i64 %t526, ptr %l289, !tbaa !24
  %t527 = load ptr, ptr %l0, !tbaa !29
  %t529 = getelementptr %"compiler/emit:Emitter", ptr %t527, i32 0, i32 90
  %t531 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t529)
  store i64 %t531, ptr %l292
  br label %bb140
bb139:
  br label %bb143
bb140:
  %t532 = load ptr, ptr %l288, !tbaa !29
  %t533 = load i64, ptr %l289, !tbaa !24
  %t534 = load i64, ptr %l292, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t532, i64 %t533, i64 %t534)
  br label %bb141
bb141:
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/emit:Emitter", ptr %t535, i32 0, i32 90
  %t538 = load i64, ptr %l39, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t537, i64 %t538)
  br label %bb142
bb142:
  br label %bb143
bb143:
  br label %bb144
bb144:
  %t541 = load i64, ptr %l38, !tbaa !24
  %t543 = add i64 %t541, 1
  store i64 %t543, ptr %l38, !tbaa !24
  br label %bb131
bb145:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2enoTable(ptr %v0, ptr %v1, ptr %a0) #0 {
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
  %t2 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d121, i32 0, i32 1) }, i64 %t2, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d122, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d120, i32 0, i32 1) })
  br label %bb1
bb1:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d123, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t5, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epartOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca i64
  %l29 = alloca i64
  %l34 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sle i64 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ealiased(ptr %v0, ptr %t6, i64 %t7)
  store i1 %t10, ptr %l11
  br label %bb4
bb4:
  %t11 = load i1, ptr %l11, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/emit:Emitter", ptr %t12, i32 0, i32 79
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t14, i64 %t15)
  %t19 = extractvalue { i32, i64 } %t18, 1
  %t20 = extractvalue { i32, i64 } %t18, 0
  store i32 %t20, ptr %l18
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb8, label %ok.22, !prof !99
ok.22:
  store i64 %t19, ptr %l17
  br label %bb7
bb6:
  %t23 = load i64, ptr %l1, !tbaa !24
  store i64 %t23, ptr %l12, !tbaa !24
  br label %bb11
bb7:
  %t25 = load i64, ptr %l17, !tbaa !24
  store i64 %t25, ptr %l13, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  %t26 = load i64, ptr %l1, !tbaa !24
  store i64 %t26, ptr %l13, !tbaa !24
  br label %bb10
bb10:
  %t28 = load i64, ptr %l13, !tbaa !24
  store i64 %t28, ptr %l12, !tbaa !24
  br label %bb11
bb11:
  %t29 = load i64, ptr %l12, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/emit:Emitter", ptr %t30, i32 0, i32 19
  %t36 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t32, i64 %t29)
  store { i64, ptr } %t36, ptr %l24
  br label %bb12
bb12:
  %t37 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d124, i32 0, i32 1) })
  store i1 %t40, ptr %l26
  br label %bb13
bb13:
  %t41 = load i1, ptr %l26, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb17
bb15:
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t44 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %t42)
  store i64 %t44, ptr %l29
  br label %bb16
bb16:
  %t45 = load i64, ptr %l29, !tbaa !24
  store i64 %t45, ptr %l27, !tbaa !24
  br label %bb17
bb17:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load i64, ptr %l27, !tbaa !24
  %t49 = srem i64 %t47, %t46
  store i64 %t49, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp slt i64 %t51, 0
  br i1 %t53, label %bb18, label %bb19
bb18:
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l2, !tbaa !24
  %t59 = add i64 %t55, %t56
  store i64 %t59, ptr %l34, !tbaa !24
  br label %bb20
bb19:
  %t61 = load i64, ptr %l5, !tbaa !24
  store i64 %t61, ptr %l34, !tbaa !24
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load i64, ptr %l34, !tbaa !24
  store i64 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %l26 = alloca %"std/prelude/text:StringBuilder"
  %l35 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l46 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l76 = alloca ptr
  %l87 = alloca i1
  %l91 = alloca i1
  %l92 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca i64
  %l95 = alloca i64
  %l101 = alloca i1
  %l105 = alloca i1
  %l106 = alloca { i64, ptr }
  %l110 = alloca i1
  %l121 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l128 = alloca ptr
  %l129 = alloca { i64, ptr }
  %l130 = alloca i64
  %l133 = alloca i64
  %l134 = alloca i64
  %l145 = alloca ptr
  %l146 = alloca { i64, ptr }
  %l147 = alloca i64
  %l150 = alloca i64
  %l151 = alloca i64
  %l157 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t5 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t4)
  store i1 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i1, ptr %l22, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 1
  %t12 = extractvalue { i64, ptr } %t9, 0
  %t13 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t11, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t17, ptr %l26
  br label %bb5
bb5:
  %t18 = load %"std/prelude/text:StringBuilder", ptr %l26
  store %"std/prelude/text:StringBuilder" %t18, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s4
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s4)
  br label %bb65
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l5, !tbaa !24
  store i64 %t33, ptr %l7, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t35, ptr %l35, !tbaa !27
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i8, ptr %t39, i64 %t36
  %t41 = load i8, ptr %t40, !tbaa !32
  %t45 = icmp ne i8 %t41, 58
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s4)
  br label %bb64
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l9, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t47, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/emit:Emitter", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/load:Loader", ptr %t55, i32 0, i32 10
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t57)
  store i64 %t59, ptr %l46
  br label %bb13
bb13:
  %t60 = load i64, ptr %l46, !tbaa !24
  store i64 %t60, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t61 = load i64, ptr %l12, !tbaa !24
  %t62 = load i64, ptr %l11, !tbaa !24
  %t65 = icmp sgt i64 %t61, %t62
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load i64, ptr %l13, !tbaa !24
  %t69 = icmp sgt i64 %t67, 0
  br i1 %t69, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb19
bb16:
  %t71 = load i64, ptr %l12, !tbaa !24
  %t72 = load i64, ptr %l11, !tbaa !24
  %t75 = sub i64 %t71, %t72
  %t76 = load i64, ptr %l13, !tbaa !24
  %t79 = add i64 %t75, %t76
  %t81 = sub i64 %t79, 1
  %t82 = load i64, ptr %l13, !tbaa !24
  %t85 = sdiv i64 %t81, %t82
  store i64 %t85, ptr %l53, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb18
bb18:
  %t87 = load i64, ptr %l53, !tbaa !24
  store i64 %t87, ptr %l50, !tbaa !24
  br label %bb19
bb19:
  %t88 = load i64, ptr %l50, !tbaa !24
  store i64 %t88, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb20
bb20:
  %t89 = load i64, ptr %l15, !tbaa !24
  %t90 = load i64, ptr %l14, !tbaa !24
  %t93 = icmp slt i64 %t89, %t90
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb21, label %bb22
bb21:
  br label %bb52
bb22:
  br label %bb23
bb23:
  %t97 = load i64, ptr %l11, !tbaa !24
  %t98 = load i64, ptr %l15, !tbaa !24
  %t99 = load i64, ptr %l13, !tbaa !24
  %t102 = mul i64 %t98, %t99
  %t105 = add i64 %t97, %t102
  store i64 %t105, ptr %l16, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/emit:Emitter", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/load:Loader", ptr %t113, i32 0, i32 10
  %t116 = load i64, ptr %l16, !tbaa !24
  %t119 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t115, i64 %t116)
  store ptr %t119, ptr %l76
  br label %bb24
bb24:
  %t120 = load ptr, ptr %l76, !tbaa !29
  %t122 = getelementptr %"compiler/load:Module", ptr %t120, i32 0, i32 2
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l17, !tbaa !27
  %t125 = load i64, ptr %l7, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t131 = sub i64 %t125, %t128
  store i64 %t131, ptr %l18, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t136 = load i64, ptr %l9, !tbaa !24
  %t139 = icmp sle i64 %t135, %t136
  br i1 %t139, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb27
bb26:
  %t141 = load i64, ptr %l18, !tbaa !24
  %t142 = load i64, ptr %l3, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  store i1 %t145, ptr %l87, !tbaa !21
  br label %bb27
bb27:
  %t147 = load i1, ptr %l87, !tbaa !21
  br i1 %t147, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb37
bb29:
  %t148 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t148, ptr %l92, !tbaa !27
  %t149 = load i64, ptr %l18, !tbaa !24
  store i64 %t149, ptr %l93, !tbaa !24
  %t150 = load i64, ptr %l7, !tbaa !24
  store i64 %t150, ptr %l94, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t151, 0
  store i64 %t152, ptr %l95, !tbaa !24
  %t153 = load i64, ptr %l93, !tbaa !24
  %t154 = icmp sge i64 %t153, 0
  br i1 %t154, label %bb30, label %bb31
bb30:
  %t156 = load i64, ptr %l93, !tbaa !24
  %t157 = load i64, ptr %l94, !tbaa !24
  %t158 = icmp sle i64 %t156, %t157
  br i1 %t158, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_1a9d82a78676b0a6_b4156ec517c232f2)
  unreachable
bb32:
  %t160 = load i64, ptr %l94, !tbaa !24
  %t161 = load i64, ptr %l95, !tbaa !24
  %t162 = icmp sle i64 %t160, %t161
  br i1 %t162, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_1a9d82a78676b0a6_b4156ec517c232f2)
  unreachable
bb34:
  %t164 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = load i64, ptr %l93, !tbaa !24
  %t167 = load i64, ptr %l94, !tbaa !24
  %t168 = getelementptr i8, ptr %t165, i64 %t166
  %t169 = sub i64 %t167, %t166
  %t170 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t168, 1
  %t172 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t175 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v0, { i64, ptr } %t171, { i64, ptr } %t172)
  store i1 %t175, ptr %l101
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_1a9d82a78676b0a6_b4156ec517c232f2)
  unreachable
bb36:
  %t176 = load i1, ptr %l101, !tbaa !21
  %t177 = xor i1 %t176, true
  store i1 %t177, ptr %l91, !tbaa !21
  br label %bb37
bb37:
  %t179 = load i1, ptr %l91, !tbaa !21
  br i1 %t179, label %bb38, label %bb39
bb38:
  br label %bb51
bb39:
  br label %bb40
bb40:
  %t180 = load i64, ptr %l18, !tbaa !24
  %t182 = icmp sgt i64 %t180, 0
  br i1 %t182, label %bb41, label %bb42
bb41:
  %t184 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t184, ptr %l106, !tbaa !27
  %t185 = load i64, ptr %l18, !tbaa !24
  %t187 = sub i64 %t185, 1
  %t189 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i8, ptr %t190, i64 %t187
  %t192 = load i8, ptr %t191, !tbaa !32
  %t194 = call i1 @compiler_2femit_2etypeDelim(i8 %t192)
  store i1 %t194, ptr %l110
  br label %bb43
bb42:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb44
bb43:
  %t195 = load i1, ptr %l110, !tbaa !21
  %t196 = xor i1 %t195, true
  store i1 %t196, ptr %l105, !tbaa !21
  br label %bb44
bb44:
  %t198 = load i1, ptr %l105, !tbaa !21
  br i1 %t198, label %bb45, label %bb46
bb45:
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t199 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 0
  store i64 %t201, ptr %l9, !tbaa !24
  %t203 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t204 = load i64, ptr %l16, !tbaa !24
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/emit:Emitter", ptr %t205, i32 0, i32 0
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t210 = getelementptr %"compiler/generic:Program", ptr %t208, i32 0, i32 0
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t213 = getelementptr %"compiler/load:Loader", ptr %t211, i32 0, i32 12
  %t214 = load i64, ptr %t213, !tbaa !24
  %t217 = icmp eq i64 %t204, %t214
  %t220 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s4, { i64, ptr } %t203, i1 %t217)
  store { i64, ptr } %t220, ptr %l121
  br label %bb48
bb48:
  %t221 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t221, ptr %l122, !tbaa !27
  %t222 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t222, ptr %l10, !tbaa !27
  %t223 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2ereadableTypes_2elocal_2e10
  br i1 %t223, label %bb49, label %bb50
bb49:
  %t225 = load { i64, ptr }, ptr %l122
  %t226 = extractvalue { i64, ptr } %t225, 1
  call void @__olang_region_release(ptr %t226)
  store { i64, ptr } zeroinitializer, ptr %l122
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t227 = load i64, ptr %l15, !tbaa !24
  %t229 = add i64 %t227, 1
  store i64 %t229, ptr %l15, !tbaa !24
  br label %bb20
bb52:
  %t231 = load i64, ptr %l9, !tbaa !24
  %t233 = icmp slt i64 %t231, 0
  br i1 %t233, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s4)
  br label %bb64
bb54:
  br label %bb55
bb55:
  store ptr %l2, ptr %l128, !tbaa !29
  %t235 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t235, ptr %l129, !tbaa !27
  %t236 = load i64, ptr %l3, !tbaa !24
  store i64 %t236, ptr %l130, !tbaa !24
  %t237 = load i64, ptr %l7, !tbaa !24
  %t238 = load i64, ptr %l9, !tbaa !24
  %t241 = sub i64 %t237, %t238
  store i64 %t241, ptr %l133, !tbaa !24
  %t242 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 0
  store i64 %t243, ptr %l134, !tbaa !24
  %t244 = load i64, ptr %l130, !tbaa !24
  %t245 = icmp sge i64 %t244, 0
  br i1 %t245, label %bb56, label %bb57
bb56:
  %t247 = load i64, ptr %l130, !tbaa !24
  %t248 = load i64, ptr %l133, !tbaa !24
  %t249 = icmp sle i64 %t247, %t248
  br i1 %t249, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_59a9be6f9464903_424bcbda67d6186f)
  unreachable
bb58:
  %t251 = load i64, ptr %l133, !tbaa !24
  %t252 = load i64, ptr %l134, !tbaa !24
  %t253 = icmp sle i64 %t251, %t252
  br i1 %t253, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_59a9be6f9464903_424bcbda67d6186f)
  unreachable
bb60:
  %t255 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !27
  %t257 = load i64, ptr %l130, !tbaa !24
  %t258 = load i64, ptr %l133, !tbaa !24
  %t259 = getelementptr i8, ptr %t256, i64 %t257
  %t260 = sub i64 %t258, %t257
  %t261 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t259, 1
  %t263 = load ptr, ptr %l128, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t263, { i64, ptr } %t262)
  br label %bb62
bb61:
  call void @__olang_check_failed(ptr @olang_loc_59a9be6f9464903_424bcbda67d6186f)
  unreachable
bb62:
  %t265 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l2, { i64, ptr } %t265)
  br label %bb63
bb63:
  %t268 = load i64, ptr %l7, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb64
bb64:
  %t272 = load i64, ptr %l5, !tbaa !24
  %t274 = add i64 %t272, 1
  store i64 %t274, ptr %l5, !tbaa !24
  br label %bb6
bb65:
  store ptr %l2, ptr %l145, !tbaa !29
  %t276 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t276, ptr %l146, !tbaa !27
  %t277 = load i64, ptr %l3, !tbaa !24
  store i64 %t277, ptr %l147, !tbaa !24
  %t278 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t278, 0
  store i64 %t281, ptr %l150, !tbaa !24
  %t282 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t282, 0
  store i64 %t283, ptr %l151, !tbaa !24
  %t284 = load i64, ptr %l147, !tbaa !24
  %t285 = icmp sge i64 %t284, 0
  br i1 %t285, label %bb66, label %bb67
bb66:
  %t287 = load i64, ptr %l147, !tbaa !24
  %t288 = load i64, ptr %l150, !tbaa !24
  %t289 = icmp sle i64 %t287, %t288
  br i1 %t289, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_f7c6dddb13d754e8_bd1e858aa2031304)
  unreachable
bb68:
  %t291 = load i64, ptr %l150, !tbaa !24
  %t292 = load i64, ptr %l151, !tbaa !24
  %t293 = icmp sle i64 %t291, %t292
  br i1 %t293, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_f7c6dddb13d754e8_bd1e858aa2031304)
  unreachable
bb70:
  %t295 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = load i64, ptr %l147, !tbaa !24
  %t298 = load i64, ptr %l150, !tbaa !24
  %t299 = getelementptr i8, ptr %t296, i64 %t297
  %t300 = sub i64 %t298, %t297
  %t301 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t299, 1
  %t303 = load ptr, ptr %l145, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t303, { i64, ptr } %t302)
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_f7c6dddb13d754e8_bd1e858aa2031304)
  unreachable
bb72:
  %t306 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t306, ptr %l157
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s0)
  %t307 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t307, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignatureText(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l10 = alloca i64
  %l16 = alloca ptr
  %l22 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i32
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
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
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t4, i64 %t5)
  store i64 %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 10
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t18, i64 %t9)
  store ptr %t22, ptr %l16
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 6
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t31, i64 %t32)
  store ptr %t35, ptr %l22
  br label %bb3
bb3:
  %t36 = load ptr, ptr %l22, !tbaa !29
  store ptr %t36, ptr %l4, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/ast:Func", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %t44, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s1, ptr %t41, i32 %t45)
  store { i64, ptr } %t48, ptr %l28
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t49 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t51 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = add i64 %t50, %t53
  %t55 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t54)
  call void @olang_textcopy(ptr %t55, ptr %t49, i64 %t50)
  %t56 = getelementptr i8, ptr %t55, i64 %t50
  call void @olang_textcopy(ptr %t56, ptr %t52, i64 %t53)
  %t57 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t58, ptr %rv
  br label %ret
bb7:
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = getelementptr %"compiler/source:Source", ptr %t60, i32 0, i32 1
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l31, !tbaa !27
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t66 = getelementptr %"compiler/ast:Func", ptr %t64, i32 0, i32 0
  %t67 = getelementptr %"compiler/source:Span", ptr %t66, i32 0, i32 0
  %t68 = load i32, ptr %t67, !tbaa !23
  %t70 = sext i32 %t68 to i64
  store i64 %t70, ptr %l34, !tbaa !24
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Func", ptr %t71, i32 0, i32 0
  %t74 = getelementptr %"compiler/source:Span", ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74, !tbaa !23
  %t77 = sext i32 %t75 to i64
  store i64 %t77, ptr %l37, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  store i64 %t79, ptr %l38, !tbaa !24
  %t80 = load i64, ptr %l34, !tbaa !24
  %t81 = icmp sge i64 %t80, 0
  br i1 %t81, label %bb8, label %bb9
bb8:
  %t83 = load i64, ptr %l34, !tbaa !24
  %t84 = load i64, ptr %l37, !tbaa !24
  %t85 = icmp sle i64 %t83, %t84
  br i1 %t85, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_42bc5298e90f43ae_6d491b8985e0cdda)
  unreachable
bb10:
  %t87 = load i64, ptr %l37, !tbaa !24
  %t88 = load i64, ptr %l38, !tbaa !24
  %t89 = icmp sle i64 %t87, %t88
  br i1 %t89, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_42bc5298e90f43ae_6d491b8985e0cdda)
  unreachable
bb12:
  %t91 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l34, !tbaa !24
  %t94 = load i64, ptr %l37, !tbaa !24
  %t95 = getelementptr i8, ptr %t92, i64 %t93
  %t96 = sub i64 %t94, %t93
  %t97 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t95, 1
  store { i64, ptr } %t98, ptr %l5, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t103 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t100, i8 123)
  %t104 = extractvalue { i32, i64 } %t103, 1
  %t105 = extractvalue { i32, i64 } %t103, 0
  store i32 %t105, ptr %l47
  %t106 = icmp ne i32 %t105, 0
  br i1 %t106, label %bb15, label %ok.107, !prof !99
ok.107:
  store i64 %t104, ptr %l46
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_42bc5298e90f43ae_6d491b8985e0cdda)
  unreachable
bb14:
  %t108 = load i64, ptr %l46, !tbaa !24
  store i64 %t108, ptr %l43, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  %t109 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  store i64 %t111, ptr %l43, !tbaa !24
  br label %bb17
bb17:
  %t113 = load i64, ptr %l43, !tbaa !24
  %t114 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t114, ptr %l50, !tbaa !27
  store i64 %t113, ptr %l51, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l52, !tbaa !24
  %t118 = icmp sge i64 0, 0
  br i1 %t118, label %bb18, label %bb19
bb18:
  %t120 = load i64, ptr %l51, !tbaa !24
  %t121 = icmp sle i64 0, %t120
  br i1 %t121, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_5c86fd64ff4c2cab_ac7223dcbaf0ef37)
  unreachable
bb20:
  %t123 = load i64, ptr %l51, !tbaa !24
  %t124 = load i64, ptr %l52, !tbaa !24
  %t125 = icmp sle i64 %t123, %t124
  br i1 %t125, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_5c86fd64ff4c2cab_ac7223dcbaf0ef37)
  unreachable
bb22:
  %t127 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = load i64, ptr %l51, !tbaa !24
  %t130 = getelementptr i8, ptr %t128, i64 0
  %t131 = sub i64 %t129, 0
  %t132 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t130, 1
  %t135 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t133)
  store { i64, ptr } %t135, ptr %l57
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_5c86fd64ff4c2cab_ac7223dcbaf0ef37)
  unreachable
bb24:
  %t136 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d128, i32 0, i32 1) }, ptr %l59, !tbaa !27
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t140 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t136, { i64, ptr } %t138, { i64, ptr } %t139)
  store { i64, ptr } %t140, ptr %l61
  br label %bb25
bb25:
  %t141 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  store i64 %t142, ptr %l62, !tbaa !24
  %t143 = load i64, ptr %l62, !tbaa !24
  %t144 = mul i64 %t143, 1
  %t145 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t144)
  %t146 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  store { i64, ptr } %t147, ptr %l63, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = load i64, ptr %l62, !tbaa !24
  %t153 = mul i64 %t152, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t149, ptr %t151, i64 %t153, i1 false)
  %t154 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = extractvalue { i64, ptr } %t154, 0
  %t158 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t157)
  call void @olang_textcopy(ptr %t158, ptr %t156, i64 %t157)
  %t159 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t160, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esole(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l5 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esoleName(ptr %v0, ptr %v1, ptr %t1, i64 %a1)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t6, ptr %lp2
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t8 = load ptr, ptr %lp2
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %lp2
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t12 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  %t13 = load ptr, ptr %lp2
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t18 = extractvalue { i64, ptr } %t14, 1
  %t19 = extractvalue { i64, ptr } %t14, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t15, i64 %t16)
  %t25 = getelementptr i8, ptr %t24, i64 %t16
  call void @olang_textcopy(ptr %t25, ptr %t18, i64 %t19)
  %t26 = getelementptr i8, ptr %t25, i64 %t19
  call void @olang_textcopy(ptr %t26, ptr %t21, i64 %t22)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t24, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } %t28, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t9, { i64, ptr } %t11, i64 %t12, { i64, ptr } %t35, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d120, i32 0, i32 1) })
  br label %bb2
bb2:
  %t40 = load ptr, ptr %lp2
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t41, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etableName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 61
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l7, !tbaa !29
  store ptr %t11, ptr %l2, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/generic:AnyTable", ptr %t13, i32 0, i32 0
  %t16 = load i32, ptr %t15, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecanonOf(ptr %v0, ptr %s0, ptr %t12, i32 %t16)
  store { i64, ptr } %t19, ptr %l11
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/generic:AnyTable", ptr %t21, i32 0, i32 1
  %t24 = load i32, ptr %t23, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecanonOf(ptr %v0, ptr %s0, ptr %t20, i32 %t24)
  store { i64, ptr } %t27, ptr %l15
  br label %bb3
bb3:
  %t28 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t34 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = add i64 %t33, %t36
  %t38 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t37)
  call void @olang_textcopy(ptr %t38, ptr %t29, i64 %t30)
  %t39 = getelementptr i8, ptr %t38, i64 %t30
  call void @olang_textcopy(ptr %t39, ptr %t31, i64 %t32)
  %t40 = getelementptr i8, ptr %t39, i64 %t32
  call void @olang_textcopy(ptr %t40, ptr %t35, i64 %t36)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t38, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t42, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d133, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d134, i32 0, i32 1) }, ptr %l28, !tbaa !27
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

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewantType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i64
  %l55 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l60 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l70 = alloca i64
  %l71 = alloca i32
  %l74 = alloca i1
  %l77 = alloca i1
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
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v2, ptr %t1, i64 %t2, i1 true)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t5, i64 %t6)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:Emitter", ptr %t9, i32 0, i32 53
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t11, i64 %t12)
  store { i64, ptr } %t15, ptr %l20
  br label %bb3
bb3:
  %t16 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2erefsIn(ptr %v0, ptr %s0, { i64, ptr } %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l22
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t22, ptr %l24
  br label %bb5
bb5:
  %t23 = load i64, ptr %l24, !tbaa !24
  store i64 %t23, ptr %l7, !tbaa !24
  store i64 3, ptr %l8, !tbaa !24
  %t24 = load i64, ptr %l7, !tbaa !24
  %t25 = load i64, ptr %l6, !tbaa !24
  %t28 = icmp sgt i64 %t24, %t25
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load i64, ptr %l8, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb11
bb8:
  %t34 = load i64, ptr %l7, !tbaa !24
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = sub i64 %t34, %t35
  %t39 = load i64, ptr %l8, !tbaa !24
  %t42 = add i64 %t38, %t39
  %t44 = sub i64 %t42, 1
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = sdiv i64 %t44, %t45
  store i64 %t48, ptr %l31, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l31, !tbaa !24
  store i64 %t50, ptr %l28, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l28, !tbaa !24
  store i64 %t51, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l10, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb13, label %bb14
bb13:
  br label %bb41
bb14:
  br label %bb15
bb15:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l10, !tbaa !24
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = mul i64 %t61, %t62
  %t68 = add i64 %t60, %t65
  store i64 %t68, ptr %l11, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t70)
  store i64 %t73, ptr %l51
  br label %bb16
bb16:
  %t74 = load i64, ptr %l51, !tbaa !24
  %t75 = icmp ne i64 %t74, 1
  br i1 %t75, label %bb17, label %bb18
bb17:
  br label %bb40
bb18:
  br label %bb19
bb19:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/emit:Emitter", ptr %t77, i32 0, i32 54
  store ptr %t79, ptr %l55, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t80, ptr %l56, !tbaa !27
  %t81 = load i64, ptr %l11, !tbaa !24
  %t83 = add i64 %t81, 1
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t83)
  store i64 %t86, ptr %l60
  br label %bb20
bb20:
  %t87 = load i64, ptr %l11, !tbaa !24
  %t89 = add i64 %t87, 2
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t89)
  store i64 %t92, ptr %l64
  br label %bb21
bb21:
  %t93 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  store i64 %t94, ptr %l65, !tbaa !24
  %t95 = load i64, ptr %l60, !tbaa !24
  %t96 = icmp sge i64 %t95, 0
  br i1 %t96, label %bb22, label %bb23
bb22:
  %t98 = load i64, ptr %l60, !tbaa !24
  %t99 = load i64, ptr %l64, !tbaa !24
  %t100 = icmp sle i64 %t98, %t99
  br i1 %t100, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_6f064da57090b2af_17093dce158f11fb)
  unreachable
bb24:
  %t102 = load i64, ptr %l64, !tbaa !24
  %t103 = load i64, ptr %l65, !tbaa !24
  %t104 = icmp sle i64 %t102, %t103
  br i1 %t104, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_6f064da57090b2af_17093dce158f11fb)
  unreachable
bb26:
  %t106 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l60, !tbaa !24
  %t109 = load i64, ptr %l64, !tbaa !24
  %t110 = getelementptr i8, ptr %t107, i64 %t108
  %t111 = sub i64 %t109, %t108
  %t112 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t110, 1
  %t114 = load ptr, ptr %l55, !tbaa !29
  %t116 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v0, ptr %t114, { i64, ptr } %t113)
  %t117 = extractvalue { i32, i64 } %t116, 1
  %t118 = extractvalue { i32, i64 } %t116, 0
  store i32 %t118, ptr %l71
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb29, label %ok.120, !prof !99
ok.120:
  store i64 %t117, ptr %l70
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_6f064da57090b2af_17093dce158f11fb)
  unreachable
bb28:
  %t121 = load i64, ptr %l70, !tbaa !24
  store i64 %t121, ptr %l53, !tbaa !24
  br label %bb31
bb29:
  br label %bb30
bb30:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb31
bb31:
  %t122 = load i64, ptr %l53, !tbaa !24
  store i64 %t122, ptr %l12, !tbaa !24
  %t123 = load i64, ptr %l12, !tbaa !24
  %t125 = icmp sge i64 %t123, 0
  br i1 %t125, label %bb32, label %bb33
bb32:
  %t127 = load ptr, ptr %l3, !tbaa !29
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v2, ptr %t127, i64 %t128)
  store i1 %t131, ptr %l77
  br label %bb34
bb33:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb35
bb34:
  %t132 = load i1, ptr %l77, !tbaa !21
  %t133 = xor i1 %t132, true
  store i1 %t133, ptr %l74, !tbaa !21
  br label %bb35
bb35:
  %t135 = load i1, ptr %l74, !tbaa !21
  br i1 %t135, label %bb36, label %bb37
bb36:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i64, ptr %l12, !tbaa !24
  %t138 = load ptr, ptr %l2, !tbaa !29
  %t139 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewantType(ptr %v0, ptr %v1, ptr %v2, ptr %t136, i64 %t137, ptr %t138, ptr %t139)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t144 = load i64, ptr %l10, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l10, !tbaa !24
  br label %bb12
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewriteBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i1
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l17 = alloca { i64, ptr }
  %l22 = alloca %"compiler/emit:fnEm"
  %l38 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca { i64, [2 x i64] }
  %l47 = alloca i32
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i1
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l67 = alloca %"std/prelude/text:StringBuilder"
  %l70 = alloca i64
  %l73 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l83 = alloca i64
  %l84 = alloca i64
  %l97 = alloca ptr
  %l100 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l105 = alloca { i64, ptr }
  %l110 = alloca i1
  %l116 = alloca ptr
  %l119 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l125 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l151 = alloca ptr
  %l152 = alloca { i64, [2 x i64] }
  %l154 = alloca i32
  %l155 = alloca { i64, ptr }
  %l156 = alloca i64
  %l157 = alloca i1
  %l158 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l160 = alloca i64
  %l163 = alloca { i64, ptr }
  %l164 = alloca { i64, ptr }
  %l167 = alloca i64
  %l168 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l176 = alloca { i64, [2 x i64] }
  %l178 = alloca i32
  %l179 = alloca { i64, ptr }
  %l180 = alloca i64
  %l181 = alloca i1
  %l183 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l187 = alloca i64
  %l188 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca i1
  %t29 = alloca %"compiler/emit:fnEm", align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i1 %a5, ptr %l5
  store i1 %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %s0 to i64
  store i64 %t1, ptr %l14, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2ewriteBody_2elocal_2e8
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %s0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l14, !tbaa !24
  br label %bb2
bb2:
  %t8 = extractvalue { i64, ptr } %a6, 1
  %t9 = extractvalue { i64, ptr } %a6, 0
  %t10 = load i64, ptr %l14
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call ptr @__olang_scope_alloc(ptr %t11, i64 %t9)
  call void @olang_textcopy(ptr %t12, ptr %t8, i64 %t9)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l17, !tbaa !27
  %t15 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2ewriteBody_2elocal_2e8
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l14
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = load { i64, ptr }, ptr %l17
  %t20 = extractvalue { i64, ptr } %t19, 1
  %t21 = call ptr @__olang_region_or(ptr %t20, ptr null)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t24)
  br label %bb4
bb4:
  %t25 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t25, ptr %l8, !tbaa !27
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t28 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2femit_3afnEm_2ector(ptr %t29, ptr %v0, ptr %v1, ptr %s0, ptr %t26, ptr %t27, { i64, [2 x i64] } %t28)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t29, i64 1104, i1 false)
  br label %bb5
bb5:
  %t33 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 1104, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %l22, i64 1104, i1 false)
  store ptr %t33, ptr %l9, !tbaa !29
  %t35 = load ptr, ptr %l9, !tbaa !29
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = getelementptr %"compiler/emit:fnEm", ptr %t35, i32 0, i32 7
  store i64 %t36, ptr %t39, !tbaa !24
  %t40 = load ptr, ptr %l9, !tbaa !29
  %t41 = load i1, ptr %l5, !tbaa !21
  %t44 = getelementptr %"compiler/emit:fnEm", ptr %t40, i32 0, i32 12
  store i1 %t41, ptr %t44, !tbaa !21
  %t45 = load ptr, ptr %l9, !tbaa !29
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr %"compiler/mir:Fn", ptr %t46, i32 0, i32 25
  %t49 = load i1, ptr %t48, !tbaa !21
  %t52 = getelementptr %"compiler/emit:fnEm", ptr %t45, i32 0, i32 29
  store i1 %t49, ptr %t52, !tbaa !21
  %t53 = load ptr, ptr %l9, !tbaa !29
  %t54 = load i1, ptr %l7, !tbaa !21
  %t57 = getelementptr %"compiler/emit:fnEm", ptr %t53, i32 0, i32 33
  store i1 %t54, ptr %t57, !tbaa !21
  %t58 = load ptr, ptr %l9, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/emit:Emitter", ptr %t59, i32 0, i32 52
  %t62 = load i64, ptr %t61, !tbaa !24
  %t65 = getelementptr %"compiler/emit:fnEm", ptr %t58, i32 0, i32 40
  store i64 %t62, ptr %t65, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/emit:Emitter", ptr %t66, i32 0, i32 27
  store i1 false, ptr %t68, !tbaa !21
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbg(ptr %v0, ptr %t69)
  store i1 %t71, ptr %l38
  br label %bb6
bb6:
  %t72 = load i1, ptr %l38, !tbaa !21
  br i1 %t72, label %bb7, label %bb8
bb7:
  %t73 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2esubprogram(ptr %s0, ptr %v0, ptr %v1, ptr %t73)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t75 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2erun(ptr %s0, ptr %v0, ptr %v1, ptr %t75)
  br label %bb11
bb11:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/emit:Emitter", ptr %t77, i32 0, i32 27
  %t80 = load i1, ptr %t79, !tbaa !21
  br i1 %t80, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t82 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s3, ptr %t82, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d135, i32 0, i32 1) })
  br label %bb14
bb13:
  br label %bb21
bb14:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l44, !tbaa !29
  %t85 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t85, ptr %l45
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = getelementptr %"compiler/mir:Fn", ptr %t86, i32 0, i32 1
  %t89 = load i32, ptr %t88, !tbaa !23
  store i32 %t89, ptr %l47, !tbaa !23
  %t90 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t90, ptr %l48, !tbaa !27
  %t91 = load i64, ptr %l4, !tbaa !24
  store i64 %t91, ptr %l49, !tbaa !24
  %t92 = load i1, ptr %l5, !tbaa !21
  store i1 %t92, ptr %l50, !tbaa !21
  %t93 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t93, ptr %l51, !tbaa !27
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t98 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %s3, ptr %v2, ptr %s3, ptr %t94, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d136, i32 0, i32 1) }, { i64, ptr } %t95)
  store { i64, ptr } %t98, ptr %l54
  br label %bb15
bb15:
  %t99 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t102 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t105 = add i64 %t101, %t104
  %t106 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t105)
  call void @olang_textcopy(ptr %t106, ptr %t100, i64 %t101)
  %t107 = getelementptr i8, ptr %t106, i64 %t101
  call void @olang_textcopy(ptr %t107, ptr %t103, i64 %t104)
  %t108 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t112 = extractvalue { i64, ptr } %t109, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load ptr, ptr %l44, !tbaa !29
  %t118 = load { i64, [2 x i64] }, ptr %l45
  %t119 = load i32, ptr %l47, !tbaa !23
  %t120 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t121 = load i64, ptr %l49, !tbaa !24
  %t122 = load i1, ptr %l50, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v2, ptr %s3, ptr %t117, { i64, [2 x i64] } %t118, i32 %t119, { i64, ptr } %t120, i64 %t121, i1 %t122, { i64, ptr } %t116)
  br label %bb16
bb16:
  %t124 = load i1, ptr %l7, !tbaa !21
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load { i64, [2 x i64] }, ptr %l1
  %t130 = load ptr, ptr %l2, !tbaa !29
  %t132 = getelementptr %"compiler/mir:Fn", ptr %t130, i32 0, i32 1
  %t133 = load i32, ptr %t132, !tbaa !23
  %t134 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t135 = load i64, ptr %l4, !tbaa !24
  %t136 = load i1, ptr %l5, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewalkStub(ptr %v0, ptr %v2, ptr %s5, ptr %t128, { i64, [2 x i64] } %t129, i32 %t133, { i64, ptr } %t134, i64 %t135, i1 %t136, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d137, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb21:
  %t144 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t144, ptr %l67
  br label %bb22
bb22:
  %t145 = load %"std/prelude/text:StringBuilder", ptr %l67
  store %"std/prelude/text:StringBuilder" %t145, ptr %l10
  %t146 = load ptr, ptr %l9, !tbaa !29
  %t148 = getelementptr %"compiler/emit:fnEm", ptr %t146, i32 0, i32 29
  %t149 = load i1, ptr %t148, !tbaa !21
  br i1 %t149, label %bb23, label %bb24
bb23:
  %t151 = ptrtoint ptr %s0 to i64
  store i64 %t151, ptr %l70, !tbaa !24
  %t152 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2ewriteBody_2elocal_2e8
  br i1 %t152, label %bb25, label %bb26
bb24:
  br label %bb31
bb25:
  %t154 = call ptr @__olang_region_make(ptr %s0)
  %t155 = ptrtoint ptr %t154 to i64
  store i64 %t155, ptr %l70, !tbaa !24
  br label %bb26
bb26:
  %t156 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t157 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t158 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t160 = extractvalue { i64, ptr } %t156, 1
  %t161 = extractvalue { i64, ptr } %t156, 0
  %t162 = add i64 %t158, %t161
  %t163 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t166 = load i64, ptr %l70
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = call ptr @__olang_scope_alloc(ptr %t167, i64 %t165)
  call void @olang_textcopy(ptr %t168, ptr %t157, i64 %t158)
  %t169 = getelementptr i8, ptr %t168, i64 %t158
  call void @olang_textcopy(ptr %t169, ptr %t160, i64 %t161)
  %t170 = getelementptr i8, ptr %t169, i64 %t161
  call void @olang_textcopy(ptr %t170, ptr %t163, i64 %t164)
  %t171 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t168, 1
  store { i64, ptr } %t172, ptr %l73, !tbaa !27
  %t173 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2ewriteBody_2elocal_2e8
  br i1 %t173, label %bb27, label %bb28
bb27:
  %t175 = load i64, ptr %l70
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = load { i64, ptr }, ptr %l73
  %t178 = extractvalue { i64, ptr } %t177, 1
  %t179 = call ptr @__olang_region_or(ptr %t178, ptr null)
  %t180 = icmp ne ptr %t179, null
  %t181 = select i1 %t180, ptr %t179, ptr null
  %t182 = icmp eq ptr %t181, %t176
  call void @__olang_region_settle(ptr %t176, i1 %t182)
  br label %bb28
bb28:
  %t183 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t183, ptr %l75, !tbaa !27
  %t184 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t184, ptr %l8, !tbaa !27
  %t185 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2ewriteBody_2elocal_2e8
  br i1 %t185, label %bb29, label %bb30
bb29:
  %t187 = load { i64, ptr }, ptr %l75
  %t188 = extractvalue { i64, ptr } %t187, 1
  call void @__olang_region_release(ptr %t188)
  store { i64, ptr } zeroinitializer, ptr %l75
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t189 = load ptr, ptr %l9, !tbaa !29
  %t191 = getelementptr %"compiler/emit:fnEm", ptr %t189, i32 0, i32 18
  %t192 = load i64, ptr %t191, !tbaa !24
  %t194 = icmp sge i64 %t192, 0
  br i1 %t194, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %l10, ptr %l80, !tbaa !29
  %t196 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t200 = sub i64 %t198, 2
  store i64 %t200, ptr %l83, !tbaa !24
  %t201 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t201, 0
  store i64 %t202, ptr %l84, !tbaa !24
  %t203 = icmp sge i64 0, 0
  br i1 %t203, label %bb34, label %bb35
bb33:
  %t205 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t205)
  br label %bb42
bb34:
  %t208 = load i64, ptr %l83, !tbaa !24
  %t209 = icmp sle i64 0, %t208
  br i1 %t209, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_8de51998cc7658b0_11d2469cc10d3f54)
  unreachable
bb36:
  %t211 = load i64, ptr %l83, !tbaa !24
  %t212 = load i64, ptr %l84, !tbaa !24
  %t213 = icmp sle i64 %t211, %t212
  br i1 %t213, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_8de51998cc7658b0_11d2469cc10d3f54)
  unreachable
bb38:
  %t215 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = load i64, ptr %l83, !tbaa !24
  %t218 = getelementptr i8, ptr %t216, i64 0
  %t219 = sub i64 %t217, 0
  %t220 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t218, 1
  %t222 = load ptr, ptr %l80, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t222, { i64, ptr } %t221)
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_8de51998cc7658b0_11d2469cc10d3f54)
  unreachable
bb40:
  %t224 = load ptr, ptr %l9, !tbaa !29
  %t226 = getelementptr %"compiler/emit:fnEm", ptr %t224, i32 0, i32 18
  %t227 = load i64, ptr %t226, !tbaa !24
  %t228 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t229 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t231 = call i64 @__olang_fmt_i64(ptr null, i64 %t227)
  %t232 = add i64 %t229, %t231
  %t233 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t234 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t235 = add i64 %t232, %t234
  %t236 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t235)
  call void @olang_textcopy(ptr %t236, ptr %t228, i64 %t229)
  %t237 = getelementptr i8, ptr %t236, i64 %t229
  %t238 = call i64 @__olang_fmt_i64(ptr %t237, i64 %t227)
  %t239 = getelementptr i8, ptr %t237, i64 %t231
  call void @olang_textcopy(ptr %t239, ptr %t233, i64 %t234)
  %t240 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t236, 1
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t244 = extractvalue { i64, ptr } %t241, 1
  %t245 = mul i64 %t243, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t245)
  call void @llvm.memcpy.p0.p0.i64(ptr %t246, ptr %t244, i64 %t245, i1 false)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l10, { i64, ptr } %t248)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s8)
  br label %bb43
bb42:
  br label %bb43
bb43:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d142, i32 0, i32 1) })
  br label %bb44
bb44:
  store ptr %l10, ptr %l97, !tbaa !29
  %t252 = load ptr, ptr %l9, !tbaa !29
  %t254 = getelementptr %"compiler/emit:fnEm", ptr %t252, i32 0, i32 3
  %t256 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t254)
  store { i64, ptr } %t256, ptr %l100
  br label %bb45
bb45:
  %t257 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t258 = extractvalue { i64, ptr } %t257, 0
  %t259 = extractvalue { i64, ptr } %t257, 1
  %t260 = mul i64 %t258, 1
  %t261 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t260)
  call void @llvm.memcpy.p0.p0.i64(ptr %t261, ptr %t259, i64 %t260, i1 false)
  %t262 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t261, 1
  %t264 = load ptr, ptr %l97, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t264, { i64, ptr } %t263)
  br label %bb46
bb46:
  store ptr %l10, ptr %l102, !tbaa !29
  %t266 = load ptr, ptr %l9, !tbaa !29
  %t268 = getelementptr %"compiler/emit:fnEm", ptr %t266, i32 0, i32 4
  %t270 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t268)
  store { i64, ptr } %t270, ptr %l105
  br label %bb47
bb47:
  %t271 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 0
  %t273 = extractvalue { i64, ptr } %t271, 1
  %t274 = mul i64 %t272, 1
  %t275 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t274)
  call void @llvm.memcpy.p0.p0.i64(ptr %t275, ptr %t273, i64 %t274, i1 false)
  %t276 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  %t278 = load ptr, ptr %l102, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t278, { i64, ptr } %t277)
  br label %bb48
bb48:
  %t280 = load ptr, ptr %l9, !tbaa !29
  %t282 = getelementptr %"compiler/emit:fnEm", ptr %t280, i32 0, i32 18
  %t283 = load i64, ptr %t282, !tbaa !24
  %t285 = icmp sge i64 %t283, 0
  br i1 %t285, label %bb49, label %bb50
bb49:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/emit:Emitter", ptr %t287, i32 0, i32 5
  %t290 = load i1, ptr %t289, !tbaa !21
  store i1 %t290, ptr %l110, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb51
bb51:
  %t292 = load i1, ptr %l110, !tbaa !21
  br i1 %t292, label %bb52, label %bb53
bb52:
  %t293 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2edeclareVars(ptr %s0, ptr %s0, ptr %v0, ptr %v1, ptr %t293, ptr %l10)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d143, i32 0, i32 1) })
  br label %bb56
bb56:
  store ptr %l10, ptr %l116, !tbaa !29
  %t297 = load ptr, ptr %l9, !tbaa !29
  %t299 = getelementptr %"compiler/emit:fnEm", ptr %t297, i32 0, i32 5
  %t301 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t299)
  store { i64, ptr } %t301, ptr %l119
  br label %bb57
bb57:
  %t302 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t302, 0
  %t304 = extractvalue { i64, ptr } %t302, 1
  %t305 = mul i64 %t303, 1
  %t306 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t305)
  call void @llvm.memcpy.p0.p0.i64(ptr %t306, ptr %t304, i64 %t305, i1 false)
  %t307 = insertvalue { i64, ptr } undef, i64 %t303, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t306, 1
  %t309 = load ptr, ptr %l116, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t309, { i64, ptr } %t308)
  br label %bb58
bb58:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d144, i32 0, i32 1) })
  br label %bb59
bb59:
  store ptr %l10, ptr %l122, !tbaa !29
  %t312 = load ptr, ptr %l9, !tbaa !29
  %t314 = getelementptr %"compiler/emit:fnEm", ptr %t312, i32 0, i32 22
  %t316 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t314)
  store { i64, ptr } %t316, ptr %l125
  br label %bb60
bb60:
  %t317 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t317, 0
  %t319 = extractvalue { i64, ptr } %t317, 1
  %t320 = mul i64 %t318, 1
  %t321 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t320)
  call void @llvm.memcpy.p0.p0.i64(ptr %t321, ptr %t319, i64 %t320, i1 false)
  %t322 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t323 = insertvalue { i64, ptr } %t322, ptr %t321, 1
  %t324 = load ptr, ptr %l122, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t324, { i64, ptr } %t323)
  br label %bb61
bb61:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l10, i8 10)
  br label %bb62
bb62:
  %t327 = load ptr, ptr %l9, !tbaa !29
  %t329 = getelementptr %"compiler/emit:fnEm", ptr %t327, i32 0, i32 29
  %t330 = load i1, ptr %t329, !tbaa !21
  br i1 %t330, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s12
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load { i64, [2 x i64] }, ptr %l1
  %t334 = load ptr, ptr %l2, !tbaa !29
  %t335 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t336 = load i64, ptr %l4, !tbaa !24
  %t337 = load ptr, ptr %l9, !tbaa !29
  %t339 = getelementptr %"compiler/emit:fnEm", ptr %t337, i32 0, i32 30
  %t340 = load { i64, ptr }, ptr %t339, !tbaa !27
  %t347 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenNext(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %s12, ptr %t332, { i64, [2 x i64] } %t333, ptr %t334, { i64, ptr } %t335, i64 %t336, { i64, ptr } %t340, i1 false)
  store { i64, ptr } %t347, ptr %l137
  br label %bb65
bb64:
  br label %bb75
bb65:
  %t348 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t348, ptr %l11, !tbaa !27
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load { i64, [2 x i64] }, ptr %l1
  %t351 = load ptr, ptr %l2, !tbaa !29
  %t352 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t353 = load i64, ptr %l4, !tbaa !24
  %t354 = load ptr, ptr %l9, !tbaa !29
  %t356 = getelementptr %"compiler/emit:fnEm", ptr %t354, i32 0, i32 30
  %t357 = load { i64, ptr }, ptr %t356, !tbaa !27
  %t364 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenNext(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %s12, ptr %t349, { i64, [2 x i64] } %t350, ptr %t351, { i64, ptr } %t352, i64 %t353, { i64, ptr } %t357, i1 true)
  store { i64, ptr } %t364, ptr %l145
  br label %bb66
bb66:
  %t365 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t365, ptr %l12, !tbaa !27
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t368 = load ptr, ptr %l9, !tbaa !29
  %t370 = getelementptr %"compiler/emit:fnEm", ptr %t368, i32 0, i32 30
  %t371 = load { i64, ptr }, ptr %t370, !tbaa !27
  %t375 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenDrop(ptr %v0, ptr %v2, ptr %s0, ptr %s12, ptr %t366, { i64, ptr } %t367, { i64, ptr } %t371)
  store { i64, ptr } %t375, ptr %l150
  br label %bb67
bb67:
  %t376 = load { i64, ptr }, ptr %l150, !tbaa !27
  store { i64, ptr } %t376, ptr %l13, !tbaa !27
  %t377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t377, ptr %l151, !tbaa !29
  %t378 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t378, ptr %l152
  %t379 = load ptr, ptr %l2, !tbaa !29
  %t381 = getelementptr %"compiler/mir:Fn", ptr %t379, i32 0, i32 1
  %t382 = load i32, ptr %t381, !tbaa !23
  store i32 %t382, ptr %l154, !tbaa !23
  %t383 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t383, ptr %l155, !tbaa !27
  %t384 = load i64, ptr %l4, !tbaa !24
  store i64 %t384, ptr %l156, !tbaa !24
  %t385 = load i1, ptr %l5, !tbaa !21
  store i1 %t385, ptr %l157, !tbaa !21
  %t386 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t386, ptr %l158, !tbaa !27
  %t387 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t387, ptr %l159, !tbaa !27
  %t388 = ptrtoint ptr %s12 to i64
  store i64 %t388, ptr %l160, !tbaa !24
  %t389 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t389, label %bb68, label %bb69
bb68:
  %t391 = call ptr @__olang_region_make(ptr %s12)
  %t392 = ptrtoint ptr %t391 to i64
  store i64 %t392, ptr %l160, !tbaa !24
  br label %bb69
bb69:
  %t393 = load i64, ptr %l160
  %t394 = inttoptr i64 %t393 to ptr
  %t396 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t394, ptr %l10)
  store { i64, ptr } %t396, ptr %l163
  br label %bb70
bb70:
  %t397 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t398 = load i64, ptr %l160
  %t399 = inttoptr i64 %t398 to ptr
  %t400 = extractvalue { i64, ptr } %t397, 0
  %t401 = extractvalue { i64, ptr } %t397, 1
  %t402 = mul i64 %t400, 1
  %t403 = call ptr @__olang_scope_alloc(ptr %t399, i64 %t402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t403, ptr %t401, i64 %t402, i1 false)
  %t404 = insertvalue { i64, ptr } undef, i64 %t400, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t403, 1
  store { i64, ptr } %t405, ptr %l164, !tbaa !27
  %t406 = load ptr, ptr %l2, !tbaa !29
  %t408 = getelementptr %"compiler/mir:Fn", ptr %t406, i32 0, i32 7
  %t410 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t408)
  store i64 %t410, ptr %l167
  br label %bb71
bb71:
  %t411 = load i64, ptr %l160
  %t412 = inttoptr i64 %t411 to ptr
  %t413 = load i64, ptr %l160
  %t414 = inttoptr i64 %t413 to ptr
  %t415 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t416 = load i64, ptr %l167, !tbaa !24
  %t417 = call { i64, ptr } @compiler_2femit_2efoldSlots(ptr %t412, ptr %t414, { i64, ptr } %t415, i64 %t416)
  store { i64, ptr } %t417, ptr %l168
  br label %bb72
bb72:
  %t418 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t419 = load i64, ptr %l160
  %t420 = inttoptr i64 %t419 to ptr
  %t421 = extractvalue { i64, ptr } %t418, 0
  %t422 = extractvalue { i64, ptr } %t418, 1
  %t423 = mul i64 %t421, 1
  %t424 = call ptr @__olang_scope_alloc(ptr %t420, i64 %t423)
  call void @llvm.memcpy.p0.p0.i64(ptr %t424, ptr %t422, i64 %t423, i1 false)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t424, 1
  %t428 = call { i64, ptr } @compiler_2femit_2eframeKept(ptr %s12, ptr %s12, { i64, ptr } %t426)
  store { i64, ptr } %t428, ptr %l170
  br label %bb73
bb73:
  %t429 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t430 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t431 = extractvalue { i64, ptr } %t430, 1
  %t432 = extractvalue { i64, ptr } %t430, 0
  %t433 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t433, 1
  %t435 = extractvalue { i64, ptr } %t433, 0
  %t436 = add i64 %t432, %t435
  %t437 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t437, 1
  %t439 = extractvalue { i64, ptr } %t437, 0
  %t440 = add i64 %t436, %t439
  %t442 = extractvalue { i64, ptr } %t429, 1
  %t443 = extractvalue { i64, ptr } %t429, 0
  %t444 = add i64 %t440, %t443
  %t445 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t444)
  call void @olang_textcopy(ptr %t445, ptr %t431, i64 %t432)
  %t446 = getelementptr i8, ptr %t445, i64 %t432
  call void @olang_textcopy(ptr %t446, ptr %t434, i64 %t435)
  %t447 = getelementptr i8, ptr %t446, i64 %t435
  call void @olang_textcopy(ptr %t447, ptr %t438, i64 %t439)
  %t448 = getelementptr i8, ptr %t447, i64 %t439
  call void @olang_textcopy(ptr %t448, ptr %t442, i64 %t443)
  %t449 = insertvalue { i64, ptr } undef, i64 %t444, 0
  %t450 = insertvalue { i64, ptr } %t449, ptr %t445, 1
  %t452 = extractvalue { i64, ptr } %t450, 0
  %t453 = extractvalue { i64, ptr } %t450, 1
  %t454 = mul i64 %t452, 1
  %t455 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t454)
  call void @llvm.memcpy.p0.p0.i64(ptr %t455, ptr %t453, i64 %t454, i1 false)
  %t456 = insertvalue { i64, ptr } undef, i64 %t452, 0
  %t457 = insertvalue { i64, ptr } %t456, ptr %t455, 1
  %t458 = load ptr, ptr %l151, !tbaa !29
  %t459 = load { i64, [2 x i64] }, ptr %l152
  %t460 = load i32, ptr %l154, !tbaa !23
  %t461 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t462 = load i64, ptr %l156, !tbaa !24
  %t463 = load i1, ptr %l157, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v2, ptr %s12, ptr %t458, { i64, [2 x i64] } %t459, i32 %t460, { i64, ptr } %t461, i64 %t462, i1 %t463, { i64, ptr } %t457)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb75:
  %t466 = load ptr, ptr %l0, !tbaa !29
  store ptr %t466, ptr %l175, !tbaa !29
  %t467 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t467, ptr %l176
  %t468 = load ptr, ptr %l2, !tbaa !29
  %t470 = getelementptr %"compiler/mir:Fn", ptr %t468, i32 0, i32 1
  %t471 = load i32, ptr %t470, !tbaa !23
  store i32 %t471, ptr %l178, !tbaa !23
  %t472 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t472, ptr %l179, !tbaa !27
  %t473 = load i64, ptr %l4, !tbaa !24
  store i64 %t473, ptr %l180, !tbaa !24
  %t474 = load i1, ptr %l5, !tbaa !21
  store i1 %t474, ptr %l181, !tbaa !21
  %t476 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l10)
  store { i64, ptr } %t476, ptr %l183
  br label %bb76
bb76:
  %t477 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t478 = extractvalue { i64, ptr } %t477, 0
  %t479 = extractvalue { i64, ptr } %t477, 1
  %t480 = mul i64 %t478, 1
  %t481 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t480)
  call void @llvm.memcpy.p0.p0.i64(ptr %t481, ptr %t479, i64 %t480, i1 false)
  %t482 = insertvalue { i64, ptr } undef, i64 %t478, 0
  %t483 = insertvalue { i64, ptr } %t482, ptr %t481, 1
  store { i64, ptr } %t483, ptr %l184, !tbaa !27
  %t484 = load ptr, ptr %l2, !tbaa !29
  %t486 = getelementptr %"compiler/mir:Fn", ptr %t484, i32 0, i32 7
  %t488 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t486)
  store i64 %t488, ptr %l187
  br label %bb77
bb77:
  %t489 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t490 = load i64, ptr %l187, !tbaa !24
  %t491 = call { i64, ptr } @compiler_2femit_2efoldSlots(ptr %s0, ptr %s0, { i64, ptr } %t489, i64 %t490)
  store { i64, ptr } %t491, ptr %l188
  br label %bb78
bb78:
  %t492 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t493 = extractvalue { i64, ptr } %t492, 0
  %t494 = extractvalue { i64, ptr } %t492, 1
  %t495 = mul i64 %t493, 1
  %t496 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t495)
  call void @llvm.memcpy.p0.p0.i64(ptr %t496, ptr %t494, i64 %t495, i1 false)
  %t497 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  %t499 = load ptr, ptr %l175, !tbaa !29
  %t500 = load { i64, [2 x i64] }, ptr %l176
  %t501 = load i32, ptr %l178, !tbaa !23
  %t502 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t503 = load i64, ptr %l180, !tbaa !24
  %t504 = load i1, ptr %l181, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v2, ptr %s0, ptr %t499, { i64, [2 x i64] } %t500, i32 %t501, { i64, ptr } %t502, i64 %t503, i1 %t504, { i64, ptr } %t498)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l5 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %v2, ptr %t1)
  store { i64, ptr } %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t4, ptr %lp3
  %t5 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t6 = load ptr, ptr %lp3
  store { i64, ptr } %t5, ptr %t6, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/emit:fnEm", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %lp3
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t16 = extractvalue { i64, ptr } %t11, 1
  %t17 = extractvalue { i64, ptr } %t11, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a1, 1
  %t24 = extractvalue { i64, ptr } %a1, 0
  %t25 = add i64 %t21, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t13, i64 %t14)
  %t27 = getelementptr i8, ptr %t26, i64 %t14
  call void @olang_textcopy(ptr %t27, ptr %t16, i64 %t17)
  %t28 = getelementptr i8, ptr %t27, i64 %t17
  call void @olang_textcopy(ptr %t28, ptr %t19, i64 %t20)
  %t29 = getelementptr i8, ptr %t28, i64 %t20
  call void @olang_textcopy(ptr %t29, ptr %t23, i64 %t24)
  %t30 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t26, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = extractvalue { i64, ptr } %t31, 1
  %t35 = mul i64 %t33, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  call void @llvm.memcpy.p0.p0.i64(ptr %t36, ptr %t34, i64 %t35, i1 false)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } %t38)
  br label %bb2
bb2:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/emit:fnEm", ptr %t45, i32 0, i32 3
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t52 = call i64 @__olang_fmt_i64(ptr null, i64 %t48)
  %t53 = add i64 %t50, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t49, i64 %t50)
  %t55 = getelementptr i8, ptr %t54, i64 %t50
  %t56 = call i64 @__olang_fmt_i64(ptr %t55, i64 %t48)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t54, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = extractvalue { i64, ptr } %t58, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t47, { i64, ptr } %t65)
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb6
bb6:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/emit:fnEm", ptr %t68, i32 0, i32 3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t70, i8 10)
  br label %bb7
bb7:
  %t72 = load ptr, ptr %lp3
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca i32
  %l17 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  store ptr %t9, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = call ptr @__olang_scope_or(ptr %v1, ptr %t11)
  %t13 = ptrtoint ptr %t12 to i64
  %t15 = inttoptr i64 %t13 to ptr
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t15, ptr %t16, i32 %a1)
  store i32 %t18, ptr %l10
  br label %bb1
bb1:
  %t19 = load i32, ptr %l10, !tbaa !23
  store i32 %t19, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l2, !tbaa !29
  store ptr %t20, ptr %l11, !tbaa !29
  %t21 = load i32, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l11, !tbaa !29
  %t23 = call ptr @__olang_scope_or(ptr %v1, ptr %t22)
  %t24 = ptrtoint ptr %t23 to i64
  %t26 = inttoptr i64 %t24 to ptr
  %t27 = load ptr, ptr %l11, !tbaa !29
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t26, ptr %t27, i32 %t21)
  store i32 %t29, ptr %l14
  br label %bb2
bb2:
  %t30 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t32 = trunc i64 19 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = load i32, ptr %l3, !tbaa !23
  store i32 %t35, ptr %l17, !tbaa !23
  br label %bb5
bb4:
  %t37 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t37, ptr %l17, !tbaa !23
  br label %bb5
bb5:
  %t39 = load i32, ptr %l17, !tbaa !23
  store i32 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ecCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Call" %a1, { i64, ptr } %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Call"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca i1
  %l9 = alloca %"compiler/cabi:Regs"
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"compiler/cabi:Way"
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, [4 x i64] }
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca %"compiler/cabi:Way"
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca { i64, [4 x i64] }
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca %"std/prelude/text:StringBuilder"
  %l45 = alloca %"compiler/cabi:Regs"
  %l46 = alloca { i64, ptr }
  %l48 = alloca i32
  %l49 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca %"compiler/cabi:Way"
  %l65 = alloca i1
  %l71 = alloca ptr
  %l74 = alloca i1
  %l75 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l83 = alloca %"compiler/cabi:Way"
  %l84 = alloca %"compiler/cabi:Way"
  %l91 = alloca i64
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l106 = alloca i64
  %l112 = alloca ptr
  %l113 = alloca ptr
  %l116 = alloca i32
  %l121 = alloca { i64, ptr }
  %l127 = alloca i64
  %l130 = alloca i64
  %l154 = alloca { i64, [4 x i64] }
  %l155 = alloca { i64, ptr }
  %l158 = alloca ptr
  %l161 = alloca i32
  %l162 = alloca ptr
  %l165 = alloca i32
  %l168 = alloca i1
  %l170 = alloca i1
  %l173 = alloca ptr
  %l174 = alloca ptr
  %l178 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l183 = alloca ptr
  %l186 = alloca i32
  %l191 = alloca ptr
  %l194 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l200 = alloca i1
  %l201 = alloca i32
  %l202 = alloca ptr
  %l205 = alloca i32
  %l207 = alloca ptr
  %l210 = alloca i1
  %l211 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca ptr
  %l216 = alloca i32
  %l218 = alloca i32
  %l225 = alloca i32
  %l226 = alloca ptr
  %l227 = alloca ptr
  %l231 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l238 = alloca ptr
  %l241 = alloca i1
  %l242 = alloca ptr
  %l245 = alloca { i64, ptr }
  %l251 = alloca %"compiler/cabi:Way"
  %l266 = alloca i64
  %l269 = alloca i64
  %l293 = alloca { i64, [4 x i64] }
  %l296 = alloca i32
  %l297 = alloca ptr
  %l298 = alloca ptr
  %l302 = alloca { i64, ptr }
  %l305 = alloca { i64, ptr }
  %l310 = alloca ptr
  %l313 = alloca { i64, ptr }
  %l314 = alloca { i64, ptr }
  %l315 = alloca i64
  %l316 = alloca { i64, ptr }
  %l319 = alloca i1
  %l321 = alloca i1
  %l325 = alloca i64
  %l327 = alloca i64
  %l328 = alloca i64
  %l333 = alloca { i64, ptr }
  %l334 = alloca { i64, ptr }
  %l335 = alloca i64
  %l336 = alloca { i64, ptr }
  %l338 = alloca { i64, ptr }
  %l339 = alloca i64
  %l340 = alloca { i64, ptr }
  %l342 = alloca i64
  %l344 = alloca { i64, ptr }
  %l346 = alloca ptr
  %l349 = alloca { i64, ptr }
  %l353 = alloca { i64, ptr }
  %l354 = alloca { i64, ptr }
  %l356 = alloca { i64, ptr }
  %l358 = alloca { i64, ptr }
  %l361 = alloca i1
  %l362 = alloca ptr
  %l363 = alloca { i64, ptr }
  %l364 = alloca { i64, ptr }
  %l366 = alloca { i64, ptr }
  %l369 = alloca i64
  %l371 = alloca ptr
  %l372 = alloca { i64, ptr }
  %l373 = alloca { i64, ptr }
  %l375 = alloca { i64, ptr }
  %l378 = alloca { i64, ptr }
  %l380 = alloca { i64, ptr }
  %l387 = alloca i1
  %l398 = alloca ptr
  %l400 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/mir:Call" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
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
  store ptr %t7, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l5, !tbaa !29
  store ptr %t9, ptr %l40, !tbaa !29
  %t10 = load i32, ptr %l3, !tbaa !23
  %t11 = load ptr, ptr %l40, !tbaa !29
  %t12 = call ptr @__olang_scope_or(ptr %v2, ptr %t11)
  %t13 = ptrtoint ptr %t12 to i64
  %t15 = inttoptr i64 %t13 to ptr
  %t16 = load ptr, ptr %l40, !tbaa !29
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %t15, ptr %t16, i32 %t10)
  store i32 %t18, ptr %l43
  br label %bb1
bb1:
  %t19 = load i32, ptr %l43, !tbaa !23
  store i32 %t19, ptr %l6, !tbaa !23
  %t20 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t20, ptr %l44
  br label %bb2
bb2:
  %t21 = load %"std/prelude/text:StringBuilder", ptr %l44
  store %"std/prelude/text:StringBuilder" %t21, ptr %l7
  store i1 true, ptr %l8, !tbaa !21
  %t22 = call %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %s0, i64 6, i64 8)
  store %"compiler/cabi:Regs" %t22, ptr %l45
  br label %bb3
bb3:
  %t23 = load %"compiler/cabi:Regs", ptr %l45
  store %"compiler/cabi:Regs" %t23, ptr %l9
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) }, ptr %l46, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t24, ptr %l10, !tbaa !27
  store i32 0, ptr %l48
  %t26 = ptrtoint ptr %s0 to i64
  store i64 %t26, ptr %l49, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t27, label %bb4, label %bb5
bb4:
  %t29 = call ptr @__olang_region_make(ptr %s0)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l49, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l49
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t32, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l51
  br label %bb6
bb6:
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load i64, ptr %l49
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = call ptr @__olang_region_or(ptr %t40, ptr null)
  %t42 = call ptr @__olang_region_home(ptr %t41)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t37
  call void @__olang_region_settle(ptr %t37, i1 %t45)
  br label %bb8
bb8:
  %t46 = ptrtoint ptr %s0 to i64
  store i64 %t46, ptr %l53, !tbaa !24
  %t47 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t49 = call ptr @__olang_region_make(ptr %s0)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l53, !tbaa !24
  br label %bb10
bb10:
  %t51 = load i64, ptr %l53
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t52, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l55
  br label %bb11
bb11:
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = load i64, ptr %l53
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = call ptr @__olang_region_or(ptr %t60, ptr null)
  %t62 = call ptr @__olang_region_home(ptr %t61)
  %t63 = icmp ne ptr %t62, null
  %t64 = select i1 %t63, ptr %t62, ptr null
  %t65 = icmp eq ptr %t64, %t57
  call void @__olang_region_settle(ptr %t57, i1 %t65)
  br label %bb13
bb13:
  %t66 = ptrtoint ptr %s0 to i64
  store i64 %t66, ptr %l57, !tbaa !24
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t67, label %bb14, label %bb15
bb14:
  %t69 = call ptr @__olang_region_make(ptr %s0)
  %t70 = ptrtoint ptr %t69 to i64
  store i64 %t70, ptr %l57, !tbaa !24
  br label %bb15
bb15:
  %t71 = load i64, ptr %l57
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t72, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l59
  br label %bb16
bb16:
  %t74 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t76 = load i64, ptr %l57
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59, i32 0, i32 0
  %t79 = load { i64, ptr }, ptr %t78
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = call ptr @__olang_region_or(ptr %t80, ptr null)
  %t82 = call ptr @__olang_region_home(ptr %t81)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr null
  %t85 = icmp eq ptr %t84, %t77
  call void @__olang_region_settle(ptr %t77, i1 %t85)
  br label %bb18
bb18:
  %t86 = load i32, ptr %l48, !range !{i32 0, i32 5}
  %t87 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  %t89 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  %t90 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, i32 %t86, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d149, i32 0, i32 1) })
  store %"compiler/cabi:Way" %t90, ptr %l61
  br label %bb19
bb19:
  %t91 = load %"compiler/cabi:Way", ptr %l61
  store %"compiler/cabi:Way" %t91, ptr %l11
  %t92 = load i32, ptr %l6, !tbaa !23
  %t93 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t96 = icmp ne i32 %t92, %t93
  br i1 %t96, label %bb20, label %bb21
bb20:
  %t98 = load i32, ptr %l6, !tbaa !23
  %t99 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t102 = icmp ne i32 %t98, %t99
  store i1 %t102, ptr %l65, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb22
bb22:
  %t104 = load i1, ptr %l65, !tbaa !21
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/emit:fnEm", ptr %t105, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/emit:Emitter", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  store ptr %t111, ptr %l71, !tbaa !29
  %t112 = load i32, ptr %l6, !tbaa !23
  %t113 = load ptr, ptr %l71, !tbaa !29
  %t114 = call ptr @__olang_scope_or(ptr %v2, ptr %t113)
  %t115 = ptrtoint ptr %t114 to i64
  %t117 = inttoptr i64 %t115 to ptr
  %t118 = load ptr, ptr %l71, !tbaa !29
  %t120 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %t117, ptr %t118, i32 %t112)
  store i1 %t120, ptr %l74
  br label %bb25
bb24:
  br label %bb48
bb25:
  %t121 = load ptr, ptr %l5, !tbaa !29
  store ptr %t121, ptr %l75, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/emit:fnEm", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/emit:Emitter", ptr %t125, i32 0, i32 56
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  store { i64, ptr } %t128, ptr %l78, !tbaa !27
  %t129 = load i32, ptr %l6, !tbaa !23
  %t130 = load ptr, ptr %l75, !tbaa !29
  %t131 = call ptr @__olang_scope_or(ptr %v2, ptr %t130)
  %t132 = ptrtoint ptr %t131 to i64
  %t133 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = call ptr @__olang_scope_or(ptr %v2, ptr %t134)
  %t136 = ptrtoint ptr %t135 to i64
  %t138 = inttoptr i64 %t132 to ptr
  %t140 = inttoptr i64 %t136 to ptr
  %t142 = inttoptr i64 0 to ptr
  %t143 = load ptr, ptr %l75, !tbaa !29
  %t144 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t146 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %t138, ptr %t140, ptr %s0, ptr %t142, ptr %t143, { i64, ptr } %t144, i32 %t129)
  store %"compiler/cabi:Way" %t146, ptr %l83
  br label %bb26
bb26:
  %t147 = load %"compiler/cabi:Way", ptr %l11
  store %"compiler/cabi:Way" %t147, ptr %l84
  %t148 = load %"compiler/cabi:Way", ptr %l83
  store %"compiler/cabi:Way" %t148, ptr %l11
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t149, label %bb27, label %bb28
bb27:
  %t151 = getelementptr %"compiler/cabi:Way", ptr %l84, i32 0, i32 1
  %t152 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t151, i32 0, i32 0
  %t153 = load { i64, ptr }, ptr %t152
  %t154 = extractvalue { i64, ptr } %t153, 1
  %t155 = call ptr @__olang_region_or(ptr %t154, ptr null)
  %t156 = call ptr @__olang_region_home(ptr %t155)
  %t157 = icmp ne ptr %t156, null
  %t158 = select i1 %t157, ptr %t156, ptr null
  call void @__olang_region_drop(ptr %t158)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t151
  br label %bb28
bb28:
  %t159 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t159, label %bb29, label %bb30
bb29:
  %t161 = getelementptr %"compiler/cabi:Way", ptr %l84, i32 0, i32 2
  %t162 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t161, i32 0, i32 0
  %t163 = load { i64, ptr }, ptr %t162
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = call ptr @__olang_region_or(ptr %t164, ptr null)
  %t166 = call ptr @__olang_region_home(ptr %t165)
  %t167 = icmp ne ptr %t166, null
  %t168 = select i1 %t167, ptr %t166, ptr null
  call void @__olang_region_drop(ptr %t168)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t161
  br label %bb30
bb30:
  %t169 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t169, label %bb31, label %bb32
bb31:
  %t171 = getelementptr %"compiler/cabi:Way", ptr %l84, i32 0, i32 3
  %t172 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t171, i32 0, i32 0
  %t173 = load { i64, ptr }, ptr %t172
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr null)
  %t176 = call ptr @__olang_region_home(ptr %t175)
  %t177 = icmp ne ptr %t176, null
  %t178 = select i1 %t177, ptr %t176, ptr null
  call void @__olang_region_drop(ptr %t178)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t171
  br label %bb32
bb32:
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e4
  br i1 %t179, label %bb33, label %bb34
bb33:
  %t181 = getelementptr %"compiler/cabi:Way", ptr %l84, i32 0, i32 4
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  call void @__olang_region_release(ptr %t183)
  store { i64, ptr } zeroinitializer, ptr %t181
  br label %bb34
bb34:
  %t184 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 0
  %t185 = load i32, ptr %t184, !range !{i32 0, i32 5}
  %t187 = trunc i64 4 to i32
  %t188 = icmp eq i32 %t185, %t187
  br i1 %t188, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s2
  %t190 = ptrtoint ptr %s0 to i64
  store i64 %t190, ptr %l91, !tbaa !24
  %t191 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e10
  br i1 %t191, label %bb37, label %bb38
bb36:
  br label %bb47
bb37:
  %t193 = call ptr @__olang_region_make(ptr %s0)
  %t194 = ptrtoint ptr %t193 to i64
  store i64 %t194, ptr %l91, !tbaa !24
  br label %bb38
bb38:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l6, !tbaa !23
  %t197 = load i64, ptr %l91
  %t198 = inttoptr i64 %t197 to ptr
  %t201 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %t198, ptr %v2, ptr %t195, i32 %t196)
  store { i64, ptr } %t201, ptr %l95
  br label %bb39
bb39:
  %t202 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e10
  br i1 %t202, label %bb40, label %bb41
bb40:
  %t204 = load i64, ptr %l91
  %t205 = inttoptr i64 %t204 to ptr
  %t206 = load { i64, ptr }, ptr %l95
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = call ptr @__olang_region_or(ptr %t207, ptr null)
  %t209 = icmp ne ptr %t208, null
  %t210 = select i1 %t209, ptr %t208, ptr null
  %t211 = icmp eq ptr %t210, %t205
  call void @__olang_region_settle(ptr %t205, i1 %t211)
  br label %bb41
bb41:
  %t212 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t212, ptr %l97, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t213, ptr %l10, !tbaa !27
  %t214 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e10
  br i1 %t214, label %bb42, label %bb43
bb42:
  %t216 = load { i64, ptr }, ptr %l97
  %t217 = extractvalue { i64, ptr } %t216, 1
  call void @__olang_region_release(ptr %t217)
  store { i64, ptr } zeroinitializer, ptr %l97
  br label %bb43
bb43:
  store ptr %l7, ptr %l99, !tbaa !29
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load i32, ptr %l6, !tbaa !23
  %t222 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s2, ptr %v2, ptr %t218, i32 %t219)
  store { i64, ptr } %t222, ptr %l102
  br label %bb44
bb44:
  %t223 = load ptr, ptr %l5, !tbaa !29
  store ptr %t223, ptr %l103, !tbaa !29
  %t224 = load i32, ptr %l6, !tbaa !23
  %t225 = load ptr, ptr %l103, !tbaa !29
  %t226 = call ptr @__olang_scope_or(ptr %v2, ptr %t225)
  %t227 = ptrtoint ptr %t226 to i64
  %t229 = inttoptr i64 %t227 to ptr
  %t230 = load ptr, ptr %l103, !tbaa !29
  %t232 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %t229, ptr %t230, i32 %t224)
  store i64 %t232, ptr %l106
  br label %bb45
bb45:
  %t233 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t234 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t235 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t236 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = add i64 %t235, %t238
  %t240 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t242 = add i64 %t239, %t241
  %t243 = load i64, ptr %l106, !tbaa !24
  %t244 = call i64 @__olang_fmt_i64(ptr null, i64 %t243)
  %t245 = add i64 %t242, %t244
  %t246 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t248 = add i64 %t245, %t247
  %t250 = extractvalue { i64, ptr } %t233, 1
  %t251 = extractvalue { i64, ptr } %t233, 0
  %t252 = add i64 %t248, %t251
  %t253 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t252)
  call void @olang_textcopy(ptr %t253, ptr %t234, i64 %t235)
  %t254 = getelementptr i8, ptr %t253, i64 %t235
  call void @olang_textcopy(ptr %t254, ptr %t237, i64 %t238)
  %t255 = getelementptr i8, ptr %t254, i64 %t238
  call void @olang_textcopy(ptr %t255, ptr %t240, i64 %t241)
  %t256 = getelementptr i8, ptr %t255, i64 %t241
  %t257 = call i64 @__olang_fmt_i64(ptr %t256, i64 %t243)
  %t258 = getelementptr i8, ptr %t256, i64 %t244
  call void @olang_textcopy(ptr %t258, ptr %t246, i64 %t247)
  %t259 = getelementptr i8, ptr %t258, i64 %t247
  call void @olang_textcopy(ptr %t259, ptr %t250, i64 %t251)
  %t260 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t253, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = extractvalue { i64, ptr } %t261, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  %t269 = load ptr, ptr %l99, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t269, { i64, ptr } %t268)
  br label %bb46
bb46:
  store i1 false, ptr %l8, !tbaa !21
  %t271 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  %t272 = load i64, ptr %t271, !tbaa !24
  %t274 = sub i64 %t272, 1
  %t276 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  store i64 %t274, ptr %t276, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t277 = load ptr, ptr %l5, !tbaa !29
  store ptr %t277, ptr %l112, !tbaa !29
  %t278 = load ptr, ptr %l5, !tbaa !29
  store ptr %t278, ptr %l113, !tbaa !29
  %t279 = load i32, ptr %l3, !tbaa !23
  %t280 = load ptr, ptr %l113, !tbaa !29
  %t281 = call ptr @__olang_scope_or(ptr %v2, ptr %t280)
  %t282 = ptrtoint ptr %t281 to i64
  %t284 = inttoptr i64 %t282 to ptr
  %t285 = load ptr, ptr %l113, !tbaa !29
  %t287 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %t284, ptr %t285, i32 %t279)
  store i32 %t287, ptr %l116
  br label %bb49
bb49:
  %t288 = load ptr, ptr %l112, !tbaa !29
  %t289 = call ptr @__olang_scope_or(ptr %v2, ptr %t288)
  %t290 = ptrtoint ptr %t289 to i64
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/emit:fnEm", ptr %t291, i32 0, i32 0
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t296 = call ptr @__olang_scope_or(ptr %v2, ptr %t294)
  %t297 = ptrtoint ptr %t296 to i64
  %t299 = inttoptr i64 %t290 to ptr
  %t301 = inttoptr i64 %t297 to ptr
  %t302 = load ptr, ptr %l112, !tbaa !29
  %t303 = load i32, ptr %l116, !tbaa !23
  %t304 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t299, ptr %t301, ptr %t302, i32 %t303)
  store { i64, ptr } %t304, ptr %l121
  br label %bb50
bb50:
  %t305 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t305, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t306 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t306, 0
  store i64 %t308, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t310 = load i64, ptr %l14, !tbaa !24
  %t311 = load i64, ptr %l13, !tbaa !24
  %t314 = icmp sgt i64 %t310, %t311
  br i1 %t314, label %bb51, label %bb52
bb51:
  %t316 = load i64, ptr %l15, !tbaa !24
  %t318 = icmp sgt i64 %t316, 0
  br i1 %t318, label %bb53, label %bb54
bb52:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb56
bb53:
  %t320 = load i64, ptr %l14, !tbaa !24
  %t321 = load i64, ptr %l13, !tbaa !24
  %t324 = sub i64 %t320, %t321
  %t325 = load i64, ptr %l15, !tbaa !24
  %t328 = add i64 %t324, %t325
  %t330 = sub i64 %t328, 1
  %t331 = load i64, ptr %l15, !tbaa !24
  %t334 = sdiv i64 %t330, %t331
  store i64 %t334, ptr %l130, !tbaa !24
  br label %bb55
bb54:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb55
bb55:
  %t336 = load i64, ptr %l130, !tbaa !24
  store i64 %t336, ptr %l127, !tbaa !24
  br label %bb56
bb56:
  %t337 = load i64, ptr %l127, !tbaa !24
  store i64 %t337, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb57
bb57:
  store %olang.scope zeroinitializer, ptr %s5
  %t338 = load i64, ptr %l17, !tbaa !24
  %t339 = load i64, ptr %l16, !tbaa !24
  %t342 = icmp slt i64 %t338, %t339
  %t344 = xor i1 %t342, true
  br i1 %t344, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s5)
  br label %bb106
bb59:
  br label %bb60
bb60:
  %t346 = load i64, ptr %l13, !tbaa !24
  %t347 = load i64, ptr %l17, !tbaa !24
  %t348 = load i64, ptr %l15, !tbaa !24
  %t351 = mul i64 %t347, %t348
  %t354 = add i64 %t346, %t351
  store i64 %t354, ptr %l18, !tbaa !24
  %t356 = load i1, ptr %l8, !tbaa !21
  %t358 = xor i1 %t356, true
  br i1 %t358, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d153, i32 0, i32 1) })
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_scope_close(ptr %s6)
  br label %bb64
bb64:
  store i1 false, ptr %l8, !tbaa !21
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 1
  %t363 = load %"compiler/mir:Range", ptr %t362
  %t364 = load i64, ptr %l18, !tbaa !24
  %t368 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v3, ptr %t361, %"compiler/mir:Range" %t363, i64 %t364)
  store { i64, [4 x i64] } %t368, ptr %l154
  br label %bb65
bb65:
  %t369 = load { i64, [4 x i64] }, ptr %l154
  store { i64, [4 x i64] } %t369, ptr %l19
  %t370 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t370, ptr %l155, !tbaa !27
  %t371 = load i64, ptr %l18, !tbaa !24
  %t373 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !27
  %t375 = getelementptr i32, ptr %t374, i64 %t371
  %t376 = load i32, ptr %t375, !tbaa !33
  store i32 %t376, ptr %l20, !tbaa !23
  %t378 = load ptr, ptr %l5, !tbaa !29
  store ptr %t378, ptr %l158, !tbaa !29
  %t379 = load i32, ptr %l20, !tbaa !23
  %t380 = load ptr, ptr %l158, !tbaa !29
  %t381 = call ptr @__olang_scope_or(ptr %v2, ptr %t380)
  %t382 = ptrtoint ptr %t381 to i64
  %t384 = inttoptr i64 %t382 to ptr
  %t385 = load ptr, ptr %l158, !tbaa !29
  %t387 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t384, ptr %t385, i32 %t379)
  store i32 %t387, ptr %l161
  br label %bb66
bb66:
  %t388 = load i32, ptr %l161, !tbaa !23
  store i32 %t388, ptr %l21, !tbaa !23
  %t389 = load ptr, ptr %l5, !tbaa !29
  store ptr %t389, ptr %l162, !tbaa !29
  %t390 = load i32, ptr %l21, !tbaa !23
  %t391 = load ptr, ptr %l162, !tbaa !29
  %t392 = call ptr @__olang_scope_or(ptr %v2, ptr %t391)
  %t393 = ptrtoint ptr %t392 to i64
  %t395 = inttoptr i64 %t393 to ptr
  %t396 = load ptr, ptr %l162, !tbaa !29
  %t398 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t395, ptr %t396, i32 %t390)
  store i32 %t398, ptr %l165
  br label %bb67
bb67:
  %t399 = load i32, ptr %l165, !range !{i32 0, i32 33}
  %t401 = trunc i64 21 to i32
  %t402 = icmp eq i32 %t399, %t401
  br i1 %t402, label %bb68, label %bb69
bb68:
  %t404 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t406 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s5, { i64, ptr } %t404, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d154, i32 0, i32 1) })
  store i1 %t406, ptr %l170
  br label %bb70
bb69:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb71
bb70:
  %t407 = load i1, ptr %l170, !tbaa !21
  store i1 %t407, ptr %l168, !tbaa !21
  br label %bb71
bb71:
  %t408 = load i1, ptr %l168, !tbaa !21
  br i1 %t408, label %bb72, label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s7
  %t409 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  %t410 = load i64, ptr %t409, !tbaa !24
  %t412 = sub i64 %t410, 2
  %t414 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  store i64 %t412, ptr %t414, !tbaa !24
  store ptr %l7, ptr %l173, !tbaa !29
  %t415 = load ptr, ptr %l0, !tbaa !29
  store ptr %t415, ptr %l174, !tbaa !29
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load { i64, [4 x i64] }, ptr %l19
  %t418 = load i32, ptr %l20, !tbaa !23
  %t422 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s7, ptr %v3, ptr %v2, ptr %t416, { i64, [4 x i64] } %t417, i32 %t418)
  store { i64, ptr } %t422, ptr %l178
  br label %bb74
bb73:
  br label %bb77
bb74:
  %t423 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t423, 0
  %t425 = extractvalue { i64, ptr } %t423, 1
  %t426 = mul i64 %t424, 1
  %t427 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t426)
  call void @llvm.memcpy.p0.p0.i64(ptr %t427, ptr %t425, i64 %t426, i1 false)
  %t428 = insertvalue { i64, ptr } undef, i64 %t424, 0
  %t429 = insertvalue { i64, ptr } %t428, ptr %t427, 1
  %t430 = load i32, ptr %l20, !tbaa !23
  %t431 = load ptr, ptr %l174, !tbaa !29
  %t434 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexternArg(ptr %v0, ptr %s7, ptr %s7, ptr %v2, ptr %t431, { i64, ptr } %t429, i32 %t430)
  store { i64, ptr } %t434, ptr %l181
  br label %bb75
bb75:
  %t435 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t436 = extractvalue { i64, ptr } %t435, 0
  %t437 = extractvalue { i64, ptr } %t435, 1
  %t438 = mul i64 %t436, 1
  %t439 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t438)
  call void @llvm.memcpy.p0.p0.i64(ptr %t439, ptr %t437, i64 %t438, i1 false)
  %t440 = insertvalue { i64, ptr } undef, i64 %t436, 0
  %t441 = insertvalue { i64, ptr } %t440, ptr %t439, 1
  %t442 = load ptr, ptr %l173, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t442, { i64, ptr } %t441)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  br label %bb105
bb77:
  %t444 = load ptr, ptr %l5, !tbaa !29
  store ptr %t444, ptr %l183, !tbaa !29
  %t445 = load i32, ptr %l21, !tbaa !23
  %t446 = load ptr, ptr %l183, !tbaa !29
  %t447 = call ptr @__olang_scope_or(ptr %v2, ptr %t446)
  %t448 = ptrtoint ptr %t447 to i64
  %t450 = inttoptr i64 %t448 to ptr
  %t451 = load ptr, ptr %l183, !tbaa !29
  %t453 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t450, ptr %t451, i32 %t445)
  store i32 %t453, ptr %l186
  br label %bb78
bb78:
  %t454 = load i32, ptr %l186, !range !{i32 0, i32 33}
  %t456 = trunc i64 21 to i32
  %t457 = icmp eq i32 %t454, %t456
  br i1 %t457, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s8
  %t459 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  %t460 = load i64, ptr %t459, !tbaa !24
  %t462 = sub i64 %t460, 1
  %t464 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  store i64 %t462, ptr %t464, !tbaa !24
  store ptr %l7, ptr %l191, !tbaa !29
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t466 = load { i64, [4 x i64] }, ptr %l19
  %t469 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexportNamed(ptr %v0, ptr %s8, ptr %v3, ptr %v2, ptr %t465, { i64, [4 x i64] } %t466)
  store { i64, ptr } %t469, ptr %l194
  br label %bb81
bb80:
  br label %bb83
bb81:
  %t470 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t471 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t472 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t473 = extractvalue { i64, ptr } %t472, 1
  %t474 = extractvalue { i64, ptr } %t472, 0
  %t475 = add i64 %t471, %t474
  %t476 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t475)
  call void @olang_textcopy(ptr %t476, ptr %t470, i64 %t471)
  %t477 = getelementptr i8, ptr %t476, i64 %t471
  call void @olang_textcopy(ptr %t477, ptr %t473, i64 %t474)
  %t478 = insertvalue { i64, ptr } undef, i64 %t475, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t476, 1
  %t481 = extractvalue { i64, ptr } %t479, 0
  %t482 = extractvalue { i64, ptr } %t479, 1
  %t483 = mul i64 %t481, 1
  %t484 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t483)
  call void @llvm.memcpy.p0.p0.i64(ptr %t484, ptr %t482, i64 %t483, i1 false)
  %t485 = insertvalue { i64, ptr } undef, i64 %t481, 0
  %t486 = insertvalue { i64, ptr } %t485, ptr %t484, 1
  %t487 = load ptr, ptr %l191, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t487, { i64, ptr } %t486)
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s5)
  br label %bb105
bb83:
  %t489 = load ptr, ptr %l5, !tbaa !29
  store ptr %t489, ptr %l197, !tbaa !29
  %t490 = load i32, ptr %l21, !tbaa !23
  %t491 = load ptr, ptr %l197, !tbaa !29
  %t492 = call ptr @__olang_scope_or(ptr %v2, ptr %t491)
  %t493 = ptrtoint ptr %t492 to i64
  %t495 = inttoptr i64 %t493 to ptr
  %t496 = load ptr, ptr %l197, !tbaa !29
  %t498 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t495, ptr %t496, i32 %t490)
  store i1 %t498, ptr %l200
  br label %bb84
bb84:
  %t499 = load i1, ptr %l200, !tbaa !21
  br i1 %t499, label %bb85, label %bb86
bb85:
  %t500 = load ptr, ptr %l5, !tbaa !29
  store ptr %t500, ptr %l202, !tbaa !29
  %t501 = load i32, ptr %l21, !tbaa !23
  %t502 = load ptr, ptr %l202, !tbaa !29
  %t503 = call ptr @__olang_scope_or(ptr %v2, ptr %t502)
  %t504 = ptrtoint ptr %t503 to i64
  %t506 = inttoptr i64 %t504 to ptr
  %t507 = load ptr, ptr %l202, !tbaa !29
  %t509 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t506, ptr %t507, i32 %t501)
  store i32 %t509, ptr %l205
  br label %bb87
bb86:
  %t510 = load i32, ptr %l21, !tbaa !23
  store i32 %t510, ptr %l201, !tbaa !23
  br label %bb88
bb87:
  %t512 = load i32, ptr %l205, !tbaa !23
  store i32 %t512, ptr %l201, !tbaa !23
  br label %bb88
bb88:
  %t513 = load i32, ptr %l201, !tbaa !23
  store i32 %t513, ptr %l22, !tbaa !23
  %t514 = load ptr, ptr %l5, !tbaa !29
  store ptr %t514, ptr %l207, !tbaa !29
  %t515 = load i32, ptr %l21, !tbaa !23
  %t516 = load ptr, ptr %l207, !tbaa !29
  %t517 = call ptr @__olang_scope_or(ptr %v2, ptr %t516)
  %t518 = ptrtoint ptr %t517 to i64
  %t520 = inttoptr i64 %t518 to ptr
  %t521 = load ptr, ptr %l207, !tbaa !29
  %t523 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t520, ptr %t521, i32 %t515)
  store i1 %t523, ptr %l210
  br label %bb89
bb89:
  %t524 = load i1, ptr %l210, !tbaa !21
  br i1 %t524, label %bb90, label %bb91
bb90:
  store i1 true, ptr %l211, !tbaa !21
  br label %bb94
bb91:
  %t525 = load ptr, ptr %l5, !tbaa !29
  store ptr %t525, ptr %l212, !tbaa !29
  %t526 = load ptr, ptr %l5, !tbaa !29
  store ptr %t526, ptr %l213, !tbaa !29
  %t527 = load i32, ptr %l22, !tbaa !23
  %t528 = load ptr, ptr %l213, !tbaa !29
  %t529 = call ptr @__olang_scope_or(ptr %v2, ptr %t528)
  %t530 = ptrtoint ptr %t529 to i64
  %t532 = inttoptr i64 %t530 to ptr
  %t533 = load ptr, ptr %l213, !tbaa !29
  %t535 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t532, ptr %t533, i32 %t527)
  store i32 %t535, ptr %l216
  br label %bb92
bb92:
  %t536 = load ptr, ptr %l212, !tbaa !29
  %t537 = call ptr @__olang_scope_or(ptr %v2, ptr %t536)
  %t538 = ptrtoint ptr %t537 to i64
  %t540 = inttoptr i64 %t538 to ptr
  %t541 = load ptr, ptr %l212, !tbaa !29
  %t542 = load i32, ptr %l216, !tbaa !23
  %t543 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t540, ptr %t541, i32 %t542)
  store i32 %t543, ptr %l218
  br label %bb93
bb93:
  %t544 = load i32, ptr %l218, !range !{i32 0, i32 33}
  %t546 = trunc i64 19 to i32
  %t547 = icmp eq i32 %t544, %t546
  store i1 %t547, ptr %l211, !tbaa !21
  br label %bb94
bb94:
  %t549 = load i1, ptr %l211, !tbaa !21
  br i1 %t549, label %bb95, label %bb96
bb95:
  store %olang.scope zeroinitializer, ptr %s10
  %t550 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  %t551 = load i64, ptr %t550, !tbaa !24
  %t553 = sub i64 %t551, 1
  %t555 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  store i64 %t553, ptr %t555, !tbaa !24
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t557 = load { i64, [4 x i64] }, ptr %l19
  %t560 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %v3, ptr %v2, ptr %t556, { i64, [4 x i64] } %t557)
  store i32 %t560, ptr %l225
  br label %bb97
bb96:
  br label %bb101
bb97:
  %t561 = load i32, ptr %l225, !tbaa !23
  store i32 %t561, ptr %l23, !tbaa !23
  store ptr %l7, ptr %l226, !tbaa !29
  %t562 = load ptr, ptr %l0, !tbaa !29
  store ptr %t562, ptr %l227, !tbaa !29
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load { i64, [4 x i64] }, ptr %l19
  %t565 = load i32, ptr %l23, !tbaa !23
  %t569 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s10, ptr %v3, ptr %v2, ptr %t563, { i64, [4 x i64] } %t564, i32 %t565)
  store { i64, ptr } %t569, ptr %l231
  br label %bb98
bb98:
  %t570 = load { i64, ptr }, ptr %l231, !tbaa !27
  %t571 = extractvalue { i64, ptr } %t570, 0
  %t572 = extractvalue { i64, ptr } %t570, 1
  %t573 = mul i64 %t571, 1
  %t574 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t573)
  call void @llvm.memcpy.p0.p0.i64(ptr %t574, ptr %t572, i64 %t573, i1 false)
  %t575 = insertvalue { i64, ptr } undef, i64 %t571, 0
  %t576 = insertvalue { i64, ptr } %t575, ptr %t574, 1
  %t577 = load i32, ptr %l23, !tbaa !23
  %t578 = load ptr, ptr %l227, !tbaa !29
  %t581 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexternArg(ptr %v0, ptr %s10, ptr %s10, ptr %v2, ptr %t578, { i64, ptr } %t576, i32 %t577)
  store { i64, ptr } %t581, ptr %l234
  br label %bb99
bb99:
  %t582 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t583 = extractvalue { i64, ptr } %t582, 0
  %t584 = extractvalue { i64, ptr } %t582, 1
  %t585 = mul i64 %t583, 1
  %t586 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t585)
  call void @llvm.memcpy.p0.p0.i64(ptr %t586, ptr %t584, i64 %t585, i1 false)
  %t587 = insertvalue { i64, ptr } undef, i64 %t583, 0
  %t588 = insertvalue { i64, ptr } %t587, ptr %t586, 1
  %t589 = load ptr, ptr %l226, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %t589, { i64, ptr } %t588)
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s5)
  br label %bb105
bb101:
  %t591 = load ptr, ptr %l0, !tbaa !29
  %t593 = getelementptr %"compiler/emit:fnEm", ptr %t591, i32 0, i32 0
  %t594 = load ptr, ptr %t593, !tbaa !29
  %t596 = getelementptr %"compiler/emit:Emitter", ptr %t594, i32 0, i32 0
  %t597 = load ptr, ptr %t596, !tbaa !29
  store ptr %t597, ptr %l238, !tbaa !29
  %t598 = load i32, ptr %l20, !tbaa !23
  %t599 = load ptr, ptr %l238, !tbaa !29
  %t600 = call ptr @__olang_scope_or(ptr %v2, ptr %t599)
  %t601 = ptrtoint ptr %t600 to i64
  %t603 = inttoptr i64 %t601 to ptr
  %t604 = load ptr, ptr %l238, !tbaa !29
  %t606 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %t603, ptr %t604, i32 %t598)
  store i1 %t606, ptr %l241
  br label %bb102
bb102:
  %t607 = load ptr, ptr %l5, !tbaa !29
  store ptr %t607, ptr %l242, !tbaa !29
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t610 = getelementptr %"compiler/emit:fnEm", ptr %t608, i32 0, i32 0
  %t611 = load ptr, ptr %t610, !tbaa !29
  %t613 = getelementptr %"compiler/emit:Emitter", ptr %t611, i32 0, i32 56
  %t614 = load { i64, ptr }, ptr %t613, !tbaa !27
  store { i64, ptr } %t614, ptr %l245, !tbaa !27
  %t615 = load i32, ptr %l20, !tbaa !23
  %t616 = load ptr, ptr %l242, !tbaa !29
  %t617 = call ptr @__olang_scope_or(ptr %v2, ptr %t616)
  %t618 = ptrtoint ptr %t617 to i64
  %t619 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t620 = extractvalue { i64, ptr } %t619, 1
  %t621 = call ptr @__olang_scope_or(ptr %v2, ptr %t620)
  %t622 = ptrtoint ptr %t621 to i64
  %t624 = inttoptr i64 %t618 to ptr
  %t626 = inttoptr i64 %t622 to ptr
  %t628 = inttoptr i64 0 to ptr
  %t629 = load ptr, ptr %l242, !tbaa !29
  %t630 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t633 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %t624, ptr %t626, ptr %s0, ptr %s5, ptr %t628, ptr %t629, { i64, ptr } %t630, i32 %t615, ptr %l9)
  store %"compiler/cabi:Way" %t633, ptr %l251
  br label %bb103
bb103:
  %t634 = load %"compiler/cabi:Way", ptr %l251
  store %"compiler/cabi:Way" %t634, ptr %l24
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t636 = load i32, ptr %l20, !tbaa !23
  %t637 = load { i64, [4 x i64] }, ptr %l19
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ecArg(ptr %v0, ptr %s0, ptr %s5, ptr %v2, ptr %v3, ptr %t635, ptr %l7, ptr %l24, i32 %t636, { i64, [4 x i64] } %t637)
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s5)
  br label %bb105
bb105:
  %t643 = load i64, ptr %l17, !tbaa !24
  %t645 = add i64 %t643, 1
  store i64 %t645, ptr %l17, !tbaa !24
  br label %bb57
bb106:
  %t647 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t649 = extractvalue { i64, ptr } %t647, 0
  store i64 %t649, ptr %l25, !tbaa !24
  %t651 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 1
  %t652 = getelementptr %"compiler/mir:Range", ptr %t651, i32 0, i32 1
  %t653 = load i32, ptr %t652, !tbaa !23
  %t655 = sext i32 %t653 to i64
  store i64 %t655, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t657 = load i64, ptr %l26, !tbaa !24
  %t658 = load i64, ptr %l25, !tbaa !24
  %t661 = icmp sgt i64 %t657, %t658
  br i1 %t661, label %bb107, label %bb108
bb107:
  %t663 = load i64, ptr %l27, !tbaa !24
  %t665 = icmp sgt i64 %t663, 0
  br i1 %t665, label %bb109, label %bb110
bb108:
  store i64 0, ptr %l266, !tbaa !24
  br label %bb112
bb109:
  %t667 = load i64, ptr %l26, !tbaa !24
  %t668 = load i64, ptr %l25, !tbaa !24
  %t671 = sub i64 %t667, %t668
  %t672 = load i64, ptr %l27, !tbaa !24
  %t675 = add i64 %t671, %t672
  %t677 = sub i64 %t675, 1
  %t678 = load i64, ptr %l27, !tbaa !24
  %t681 = sdiv i64 %t677, %t678
  store i64 %t681, ptr %l269, !tbaa !24
  br label %bb111
bb110:
  store i64 0, ptr %l269, !tbaa !24
  br label %bb111
bb111:
  %t683 = load i64, ptr %l269, !tbaa !24
  store i64 %t683, ptr %l266, !tbaa !24
  br label %bb112
bb112:
  %t684 = load i64, ptr %l266, !tbaa !24
  store i64 %t684, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb113
bb113:
  store %olang.scope zeroinitializer, ptr %s13
  %t685 = load i64, ptr %l29, !tbaa !24
  %t686 = load i64, ptr %l28, !tbaa !24
  %t689 = icmp slt i64 %t685, %t686
  %t691 = xor i1 %t689, true
  br i1 %t691, label %bb114, label %bb115
bb114:
  call void @__olang_scope_close(ptr %s13)
  br label %bb127
bb115:
  br label %bb116
bb116:
  %t693 = load i64, ptr %l25, !tbaa !24
  %t694 = load i64, ptr %l29, !tbaa !24
  %t695 = load i64, ptr %l27, !tbaa !24
  %t698 = mul i64 %t694, %t695
  %t701 = add i64 %t693, %t698
  store i64 %t701, ptr %l30, !tbaa !24
  %t703 = load i1, ptr %l8, !tbaa !21
  %t705 = xor i1 %t703, true
  br i1 %t705, label %bb117, label %bb118
bb117:
  store %olang.scope zeroinitializer, ptr %s14
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d156, i32 0, i32 1) })
  br label %bb119
bb118:
  br label %bb120
bb119:
  call void @__olang_scope_close(ptr %s14)
  br label %bb120
bb120:
  store i1 false, ptr %l8, !tbaa !21
  %t708 = load ptr, ptr %l0, !tbaa !29
  %t709 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 1
  %t710 = load %"compiler/mir:Range", ptr %t709
  %t711 = load i64, ptr %l30, !tbaa !24
  %t715 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v3, ptr %t708, %"compiler/mir:Range" %t710, i64 %t711)
  store { i64, [4 x i64] } %t715, ptr %l293
  br label %bb121
bb121:
  %t716 = load { i64, [4 x i64] }, ptr %l293
  store { i64, [4 x i64] } %t716, ptr %l31
  %t717 = load ptr, ptr %l0, !tbaa !29
  %t718 = load { i64, [4 x i64] }, ptr %l31
  %t721 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %v3, ptr %v2, ptr %t717, { i64, [4 x i64] } %t718)
  store i32 %t721, ptr %l296
  br label %bb122
bb122:
  %t722 = load i32, ptr %l296, !tbaa !23
  store i32 %t722, ptr %l32, !tbaa !23
  store ptr %l7, ptr %l297, !tbaa !29
  %t723 = load ptr, ptr %l0, !tbaa !29
  store ptr %t723, ptr %l298, !tbaa !29
  %t724 = load ptr, ptr %l0, !tbaa !29
  %t725 = load { i64, [4 x i64] }, ptr %l31
  %t726 = load i32, ptr %l32, !tbaa !23
  %t730 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s13, ptr %v3, ptr %v2, ptr %t724, { i64, [4 x i64] } %t725, i32 %t726)
  store { i64, ptr } %t730, ptr %l302
  br label %bb123
bb123:
  %t731 = load { i64, ptr }, ptr %l302, !tbaa !27
  %t732 = extractvalue { i64, ptr } %t731, 0
  %t733 = extractvalue { i64, ptr } %t731, 1
  %t734 = mul i64 %t732, 1
  %t735 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t734)
  call void @llvm.memcpy.p0.p0.i64(ptr %t735, ptr %t733, i64 %t734, i1 false)
  %t736 = insertvalue { i64, ptr } undef, i64 %t732, 0
  %t737 = insertvalue { i64, ptr } %t736, ptr %t735, 1
  %t738 = load i32, ptr %l32, !tbaa !23
  %t739 = load ptr, ptr %l298, !tbaa !29
  %t742 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexternArg(ptr %v0, ptr %s13, ptr %s13, ptr %v2, ptr %t739, { i64, ptr } %t737, i32 %t738)
  store { i64, ptr } %t742, ptr %l305
  br label %bb124
bb124:
  %t743 = load { i64, ptr }, ptr %l305, !tbaa !27
  %t744 = extractvalue { i64, ptr } %t743, 0
  %t745 = extractvalue { i64, ptr } %t743, 1
  %t746 = mul i64 %t744, 1
  %t747 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t746)
  call void @llvm.memcpy.p0.p0.i64(ptr %t747, ptr %t745, i64 %t746, i1 false)
  %t748 = insertvalue { i64, ptr } undef, i64 %t744, 0
  %t749 = insertvalue { i64, ptr } %t748, ptr %t747, 1
  %t750 = load ptr, ptr %l297, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %t750, { i64, ptr } %t749)
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s13)
  br label %bb126
bb126:
  %t752 = load i64, ptr %l29, !tbaa !24
  %t754 = add i64 %t752, 1
  store i64 %t754, ptr %l29, !tbaa !24
  br label %bb113
bb127:
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t758 = getelementptr %"compiler/emit:fnEm", ptr %t756, i32 0, i32 0
  %t759 = load ptr, ptr %t758, !tbaa !29
  store ptr %t759, ptr %l310, !tbaa !29
  %t760 = load i32, ptr %l3, !tbaa !23
  %t761 = load ptr, ptr %l310, !tbaa !29
  %t762 = call ptr @__olang_scope_or(ptr %v2, ptr %t761)
  %t763 = ptrtoint ptr %t762 to i64
  %t765 = inttoptr i64 %t763 to ptr
  %t766 = load ptr, ptr %l310, !tbaa !29
  %t768 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecHeader(ptr %t765, ptr %s0, ptr %t766, i32 %t760)
  store { i64, ptr } %t768, ptr %l313
  br label %bb128
bb128:
  %t769 = load { i64, ptr }, ptr %l313, !tbaa !27
  store { i64, ptr } %t769, ptr %l33, !tbaa !27
  %t770 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t770, ptr %l314, !tbaa !27
  %t771 = load { i64, ptr }, ptr %l314, !tbaa !27
  %t772 = extractvalue { i64, ptr } %t771, 0
  store i64 %t772, ptr %l315, !tbaa !24
  %t773 = load i64, ptr %l315, !tbaa !24
  %t774 = mul i64 %t773, 1
  %t775 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t774)
  %t776 = insertvalue { i64, ptr } undef, i64 %t773, 0
  %t777 = insertvalue { i64, ptr } %t776, ptr %t775, 1
  store { i64, ptr } %t777, ptr %l316, !tbaa !27
  %t778 = getelementptr { i64, ptr }, ptr %l316, i32 0, i32 1
  %t779 = load ptr, ptr %t778, !tbaa !27
  %t780 = getelementptr { i64, ptr }, ptr %l314, i32 0, i32 1
  %t781 = load ptr, ptr %t780, !tbaa !27
  %t782 = load i64, ptr %l315, !tbaa !24
  %t783 = mul i64 %t782, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t779, ptr %t781, i64 %t783, i1 false)
  %t784 = load { i64, ptr }, ptr %l316, !tbaa !27
  store { i64, ptr } %t784, ptr %l34, !tbaa !27
  %t785 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 0
  %t786 = load i32, ptr %t785, !range !{i32 0, i32 5}
  %t788 = trunc i64 0 to i32
  %t789 = icmp eq i32 %t786, %t788
  br i1 %t789, label %bb129, label %bb130
bb129:
  %t791 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 4
  %t792 = load { i64, ptr }, ptr %t791, !tbaa !27
  %t794 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t792, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d157, i32 0, i32 1) })
  store i1 %t794, ptr %l321
  br label %bb131
bb130:
  store i1 false, ptr %l319, !tbaa !21
  br label %bb132
bb131:
  %t795 = load i1, ptr %l321, !tbaa !21
  %t796 = xor i1 %t795, true
  store i1 %t796, ptr %l319, !tbaa !21
  br label %bb132
bb132:
  %t798 = load i1, ptr %l319, !tbaa !21
  br i1 %t798, label %bb133, label %bb134
bb133:
  %t799 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 4
  %t800 = load { i64, ptr }, ptr %t799, !tbaa !27
  %t802 = extractvalue { i64, ptr } %t800, 0
  %t804 = add i64 %t802, 1
  store i64 %t804, ptr %l325, !tbaa !24
  %t805 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t807 = extractvalue { i64, ptr } %t805, 0
  store i64 %t807, ptr %l327, !tbaa !24
  %t808 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t809 = extractvalue { i64, ptr } %t808, 0
  store i64 %t809, ptr %l328, !tbaa !24
  %t810 = load i64, ptr %l325, !tbaa !24
  %t811 = icmp sge i64 %t810, 0
  br i1 %t811, label %bb135, label %bb136
bb134:
  br label %bb143
bb135:
  %t813 = load i64, ptr %l325, !tbaa !24
  %t814 = load i64, ptr %l327, !tbaa !24
  %t815 = icmp sle i64 %t813, %t814
  br i1 %t815, label %bb137, label %bb138
bb136:
  call void @__olang_check_failed(ptr @olang_loc_89905a2f16c466ce_9c68de6bba1a420a)
  unreachable
bb137:
  %t817 = load i64, ptr %l327, !tbaa !24
  %t818 = load i64, ptr %l328, !tbaa !24
  %t819 = icmp sle i64 %t817, %t818
  br i1 %t819, label %bb139, label %bb140
bb138:
  call void @__olang_check_failed(ptr @olang_loc_89905a2f16c466ce_9c68de6bba1a420a)
  unreachable
bb139:
  %t821 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t822 = load ptr, ptr %t821, !tbaa !27
  %t823 = load i64, ptr %l325, !tbaa !24
  %t824 = load i64, ptr %l327, !tbaa !24
  %t825 = getelementptr i8, ptr %t822, i64 %t823
  %t826 = sub i64 %t824, %t823
  %t827 = insertvalue { i64, ptr } undef, i64 %t826, 0
  %t828 = insertvalue { i64, ptr } %t827, ptr %t825, 1
  store { i64, ptr } %t828, ptr %l333, !tbaa !27
  %t830 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t830, ptr %l334, !tbaa !27
  %t831 = load { i64, ptr }, ptr %l333, !tbaa !27
  %t832 = extractvalue { i64, ptr } %t831, 0
  store i64 %t832, ptr %l335, !tbaa !24
  %t833 = load i64, ptr %l335, !tbaa !24
  %t834 = mul i64 %t833, 1
  %t835 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t834)
  %t836 = insertvalue { i64, ptr } undef, i64 %t833, 0
  %t837 = insertvalue { i64, ptr } %t836, ptr %t835, 1
  store { i64, ptr } %t837, ptr %l336, !tbaa !27
  %t838 = getelementptr { i64, ptr }, ptr %l336, i32 0, i32 1
  %t839 = load ptr, ptr %t838, !tbaa !27
  %t840 = getelementptr { i64, ptr }, ptr %l333, i32 0, i32 1
  %t841 = load ptr, ptr %t840, !tbaa !27
  %t842 = load i64, ptr %l335, !tbaa !24
  %t843 = mul i64 %t842, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t839, ptr %t841, i64 %t843, i1 false)
  %t844 = load { i64, ptr }, ptr %l336, !tbaa !27
  store { i64, ptr } %t844, ptr %l34, !tbaa !27
  %t845 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e34
  br i1 %t845, label %bb141, label %bb142
bb140:
  call void @__olang_check_failed(ptr @olang_loc_89905a2f16c466ce_9c68de6bba1a420a)
  unreachable
bb141:
  %t847 = load { i64, ptr }, ptr %l334
  %t848 = extractvalue { i64, ptr } %t847, 1
  call void @__olang_region_release(ptr %t848)
  store { i64, ptr } zeroinitializer, ptr %l334
  br label %bb142
bb142:
  br label %bb143
bb143:
  %t849 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t849, ptr %l338, !tbaa !27
  %t850 = load { i64, ptr }, ptr %l338, !tbaa !27
  %t851 = extractvalue { i64, ptr } %t850, 0
  store i64 %t851, ptr %l339, !tbaa !24
  %t852 = load i64, ptr %l339, !tbaa !24
  %t853 = mul i64 %t852, 1
  %t854 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t853)
  %t855 = insertvalue { i64, ptr } undef, i64 %t852, 0
  %t856 = insertvalue { i64, ptr } %t855, ptr %t854, 1
  store { i64, ptr } %t856, ptr %l340, !tbaa !27
  %t857 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t858 = load ptr, ptr %t857, !tbaa !27
  %t859 = getelementptr { i64, ptr }, ptr %l338, i32 0, i32 1
  %t860 = load ptr, ptr %t859, !tbaa !27
  %t861 = load i64, ptr %l339, !tbaa !24
  %t862 = mul i64 %t861, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t858, ptr %t860, i64 %t862, i1 false)
  %t863 = load { i64, ptr }, ptr %l340, !tbaa !27
  store { i64, ptr } %t863, ptr %l35, !tbaa !27
  br i1 %a4, label %bb144, label %bb145
bb144:
  store %olang.scope zeroinitializer, ptr %s17
  %t866 = ptrtoint ptr %s0 to i64
  store i64 %t866, ptr %l342, !tbaa !24
  %t867 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e35
  br i1 %t867, label %bb146, label %bb147
bb145:
  br label %bb156
bb146:
  %t869 = call ptr @__olang_region_make(ptr %s0)
  %t870 = ptrtoint ptr %t869 to i64
  store i64 %t870, ptr %l342, !tbaa !24
  br label %bb147
bb147:
  %t871 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t871, ptr %l344, !tbaa !27
  %t872 = load ptr, ptr %l0, !tbaa !29
  %t874 = getelementptr %"compiler/emit:fnEm", ptr %t872, i32 0, i32 0
  %t875 = load ptr, ptr %t874, !tbaa !29
  store ptr %t875, ptr %l346, !tbaa !29
  %t876 = load i32, ptr %l3, !tbaa !23
  %t877 = load ptr, ptr %l346, !tbaa !29
  %t878 = call ptr @__olang_scope_or(ptr %v2, ptr %t877)
  %t879 = ptrtoint ptr %t878 to i64
  %t881 = inttoptr i64 %t879 to ptr
  %t882 = load ptr, ptr %l346, !tbaa !29
  %t884 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecParamList(ptr %t881, ptr %s17, ptr %t882, i32 %t876, i1 false)
  store { i64, ptr } %t884, ptr %l349
  br label %bb148
bb148:
  %t885 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t887 = extractvalue { i64, ptr } %t885, 0
  %t889 = icmp sgt i64 %t887, 0
  br i1 %t889, label %bb149, label %bb150
bb149:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d158, i32 0, i32 1) }, ptr %l353, !tbaa !27
  br label %bb151
bb150:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d159, i32 0, i32 1) }, ptr %l353, !tbaa !27
  br label %bb151
bb151:
  %t891 = load { i64, ptr }, ptr %l344, !tbaa !27
  %t892 = extractvalue { i64, ptr } %t891, 1
  %t893 = extractvalue { i64, ptr } %t891, 0
  %t894 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t895 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t896 = add i64 %t893, %t895
  %t897 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t898 = extractvalue { i64, ptr } %t897, 1
  %t899 = extractvalue { i64, ptr } %t897, 0
  %t900 = add i64 %t896, %t899
  %t901 = load { i64, ptr }, ptr %l353, !tbaa !27
  %t902 = extractvalue { i64, ptr } %t901, 1
  %t903 = extractvalue { i64, ptr } %t901, 0
  %t904 = add i64 %t900, %t903
  %t905 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t906 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t907 = add i64 %t904, %t906
  %t908 = load i64, ptr %l342
  %t909 = inttoptr i64 %t908 to ptr
  %t910 = call ptr @__olang_scope_alloc(ptr %t909, i64 %t907)
  call void @olang_textcopy(ptr %t910, ptr %t892, i64 %t893)
  %t911 = getelementptr i8, ptr %t910, i64 %t893
  call void @olang_textcopy(ptr %t911, ptr %t894, i64 %t895)
  %t912 = getelementptr i8, ptr %t911, i64 %t895
  call void @olang_textcopy(ptr %t912, ptr %t898, i64 %t899)
  %t913 = getelementptr i8, ptr %t912, i64 %t899
  call void @olang_textcopy(ptr %t913, ptr %t902, i64 %t903)
  %t914 = getelementptr i8, ptr %t913, i64 %t903
  call void @olang_textcopy(ptr %t914, ptr %t905, i64 %t906)
  %t915 = insertvalue { i64, ptr } undef, i64 %t907, 0
  %t916 = insertvalue { i64, ptr } %t915, ptr %t910, 1
  store { i64, ptr } %t916, ptr %l354, !tbaa !27
  %t917 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e35
  br i1 %t917, label %bb152, label %bb153
bb152:
  %t919 = load i64, ptr %l342
  %t920 = inttoptr i64 %t919 to ptr
  %t921 = load { i64, ptr }, ptr %l354
  %t922 = extractvalue { i64, ptr } %t921, 1
  %t923 = call ptr @__olang_region_or(ptr %t922, ptr null)
  %t924 = icmp ne ptr %t923, null
  %t925 = select i1 %t924, ptr %t923, ptr null
  %t926 = icmp eq ptr %t925, %t920
  call void @__olang_region_settle(ptr %t920, i1 %t926)
  br label %bb153
bb153:
  %t927 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t927, ptr %l356, !tbaa !27
  %t928 = load { i64, ptr }, ptr %l354, !tbaa !27
  store { i64, ptr } %t928, ptr %l35, !tbaa !27
  %t929 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e35
  br i1 %t929, label %bb154, label %bb155
bb154:
  %t931 = load { i64, ptr }, ptr %l356
  %t932 = extractvalue { i64, ptr } %t931, 1
  call void @__olang_region_release(ptr %t932)
  store { i64, ptr } zeroinitializer, ptr %l356
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s17)
  br label %bb156
bb156:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d162, i32 0, i32 1) }, ptr %l358, !tbaa !27
  %t933 = load { i64, ptr }, ptr %l358, !tbaa !27
  store { i64, ptr } %t933, ptr %l36, !tbaa !27
  %t935 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t937 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t935, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d163, i32 0, i32 1) })
  store i1 %t937, ptr %l361
  br label %bb157
bb157:
  %t938 = load i1, ptr %l361, !tbaa !21
  br i1 %t938, label %bb158, label %bb159
bb158:
  store %olang.scope zeroinitializer, ptr %s19
  %t939 = load ptr, ptr %l0, !tbaa !29
  store ptr %t939, ptr %l362, !tbaa !29
  %t940 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t940, ptr %l363, !tbaa !27
  %t941 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t941, ptr %l364, !tbaa !27
  %t943 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s19, ptr %l7)
  store { i64, ptr } %t943, ptr %l366
  br label %bb160
bb159:
  store %olang.scope zeroinitializer, ptr %s21
  %t944 = ptrtoint ptr %s0 to i64
  store i64 %t944, ptr %l369, !tbaa !24
  %t945 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e36
  br i1 %t945, label %bb162, label %bb163
bb160:
  %t947 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t948 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t949 = load { i64, ptr }, ptr %l363, !tbaa !27
  %t950 = extractvalue { i64, ptr } %t949, 1
  %t951 = extractvalue { i64, ptr } %t949, 0
  %t952 = add i64 %t948, %t951
  %t953 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t954 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t955 = add i64 %t952, %t954
  %t956 = load { i64, ptr }, ptr %l364, !tbaa !27
  %t957 = extractvalue { i64, ptr } %t956, 1
  %t958 = extractvalue { i64, ptr } %t956, 0
  %t959 = add i64 %t955, %t958
  %t960 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t961 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t962 = add i64 %t959, %t961
  %t963 = load { i64, ptr }, ptr %l366, !tbaa !27
  %t964 = extractvalue { i64, ptr } %t963, 1
  %t965 = extractvalue { i64, ptr } %t963, 0
  %t966 = add i64 %t962, %t965
  %t967 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t968 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t969 = add i64 %t966, %t968
  %t970 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t969)
  call void @olang_textcopy(ptr %t970, ptr %t947, i64 %t948)
  %t971 = getelementptr i8, ptr %t970, i64 %t948
  call void @olang_textcopy(ptr %t971, ptr %t950, i64 %t951)
  %t972 = getelementptr i8, ptr %t971, i64 %t951
  call void @olang_textcopy(ptr %t972, ptr %t953, i64 %t954)
  %t973 = getelementptr i8, ptr %t972, i64 %t954
  call void @olang_textcopy(ptr %t973, ptr %t957, i64 %t958)
  %t974 = getelementptr i8, ptr %t973, i64 %t958
  call void @olang_textcopy(ptr %t974, ptr %t960, i64 %t961)
  %t975 = getelementptr i8, ptr %t974, i64 %t961
  call void @olang_textcopy(ptr %t975, ptr %t964, i64 %t965)
  %t976 = getelementptr i8, ptr %t975, i64 %t965
  call void @olang_textcopy(ptr %t976, ptr %t967, i64 %t968)
  %t977 = insertvalue { i64, ptr } undef, i64 %t969, 0
  %t978 = insertvalue { i64, ptr } %t977, ptr %t970, 1
  %t980 = extractvalue { i64, ptr } %t978, 0
  %t981 = extractvalue { i64, ptr } %t978, 1
  %t982 = mul i64 %t980, 1
  %t983 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t982)
  call void @llvm.memcpy.p0.p0.i64(ptr %t983, ptr %t981, i64 %t982, i1 false)
  %t984 = insertvalue { i64, ptr } undef, i64 %t980, 0
  %t985 = insertvalue { i64, ptr } %t984, ptr %t983, 1
  %t986 = load ptr, ptr %l362, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s19, ptr %v2, ptr %t986, { i64, ptr } %t985)
  br label %bb161
bb161:
  call void @__olang_scope_close(ptr %s19)
  br label %bb170
bb162:
  %t988 = call ptr @__olang_region_make(ptr %s0)
  %t989 = ptrtoint ptr %t988 to i64
  store i64 %t989, ptr %l369, !tbaa !24
  br label %bb163
bb163:
  %t990 = load ptr, ptr %l0, !tbaa !29
  store ptr %t990, ptr %l371, !tbaa !29
  %t991 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t991, ptr %l372, !tbaa !27
  %t992 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t992, ptr %l373, !tbaa !27
  %t994 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s21, ptr %l7)
  store { i64, ptr } %t994, ptr %l375
  br label %bb164
bb164:
  %t995 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t996 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t997 = load { i64, ptr }, ptr %l372, !tbaa !27
  %t998 = extractvalue { i64, ptr } %t997, 1
  %t999 = extractvalue { i64, ptr } %t997, 0
  %t1000 = add i64 %t996, %t999
  %t1001 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t1002 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t1003 = add i64 %t1000, %t1002
  %t1004 = load { i64, ptr }, ptr %l373, !tbaa !27
  %t1005 = extractvalue { i64, ptr } %t1004, 1
  %t1006 = extractvalue { i64, ptr } %t1004, 0
  %t1007 = add i64 %t1003, %t1006
  %t1008 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t1009 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t1010 = add i64 %t1007, %t1009
  %t1011 = load { i64, ptr }, ptr %l375, !tbaa !27
  %t1012 = extractvalue { i64, ptr } %t1011, 1
  %t1013 = extractvalue { i64, ptr } %t1011, 0
  %t1014 = add i64 %t1010, %t1013
  %t1015 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t1016 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t1017 = add i64 %t1014, %t1016
  %t1018 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t1017)
  call void @olang_textcopy(ptr %t1018, ptr %t995, i64 %t996)
  %t1019 = getelementptr i8, ptr %t1018, i64 %t996
  call void @olang_textcopy(ptr %t1019, ptr %t998, i64 %t999)
  %t1020 = getelementptr i8, ptr %t1019, i64 %t999
  call void @olang_textcopy(ptr %t1020, ptr %t1001, i64 %t1002)
  %t1021 = getelementptr i8, ptr %t1020, i64 %t1002
  call void @olang_textcopy(ptr %t1021, ptr %t1005, i64 %t1006)
  %t1022 = getelementptr i8, ptr %t1021, i64 %t1006
  call void @olang_textcopy(ptr %t1022, ptr %t1008, i64 %t1009)
  %t1023 = getelementptr i8, ptr %t1022, i64 %t1009
  call void @olang_textcopy(ptr %t1023, ptr %t1012, i64 %t1013)
  %t1024 = getelementptr i8, ptr %t1023, i64 %t1013
  call void @olang_textcopy(ptr %t1024, ptr %t1015, i64 %t1016)
  %t1025 = insertvalue { i64, ptr } undef, i64 %t1017, 0
  %t1026 = insertvalue { i64, ptr } %t1025, ptr %t1018, 1
  %t1028 = extractvalue { i64, ptr } %t1026, 0
  %t1029 = extractvalue { i64, ptr } %t1026, 1
  %t1030 = mul i64 %t1028, 1
  %t1031 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t1030)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1031, ptr %t1029, i64 %t1030, i1 false)
  %t1032 = insertvalue { i64, ptr } undef, i64 %t1028, 0
  %t1033 = insertvalue { i64, ptr } %t1032, ptr %t1031, 1
  %t1034 = load i64, ptr %l369
  %t1035 = inttoptr i64 %t1034 to ptr
  %t1036 = load ptr, ptr %l371, !tbaa !29
  %t1038 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s21, ptr %t1035, ptr %v2, ptr %t1036, { i64, ptr } %t1033)
  store { i64, ptr } %t1038, ptr %l378
  br label %bb165
bb165:
  %t1039 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e36
  br i1 %t1039, label %bb166, label %bb167
bb166:
  %t1041 = load i64, ptr %l369
  %t1042 = inttoptr i64 %t1041 to ptr
  %t1043 = load { i64, ptr }, ptr %l378
  %t1044 = extractvalue { i64, ptr } %t1043, 1
  %t1045 = call ptr @__olang_region_or(ptr %t1044, ptr null)
  %t1046 = icmp ne ptr %t1045, null
  %t1047 = select i1 %t1046, ptr %t1045, ptr null
  %t1048 = icmp eq ptr %t1047, %t1042
  call void @__olang_region_settle(ptr %t1042, i1 %t1048)
  br label %bb167
bb167:
  %t1049 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t1049, ptr %l380, !tbaa !27
  %t1050 = load { i64, ptr }, ptr %l378, !tbaa !27
  store { i64, ptr } %t1050, ptr %l36, !tbaa !27
  %t1051 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e36
  br i1 %t1051, label %bb168, label %bb169
bb168:
  %t1053 = load { i64, ptr }, ptr %l380
  %t1054 = extractvalue { i64, ptr } %t1053, 1
  call void @__olang_region_release(ptr %t1054)
  store { i64, ptr } zeroinitializer, ptr %l380
  br label %bb169
bb169:
  call void @__olang_scope_close(ptr %s21)
  br label %bb170
bb170:
  %t1055 = load i32, ptr %l6, !tbaa !23
  %t1056 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t1059 = icmp eq i32 %t1055, %t1056
  br i1 %t1059, label %bb171, label %bb172
bb171:
  store %olang.scope zeroinitializer, ptr %s23
  %t1061 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s23, ptr %v2, ptr %t1061, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d172, i32 0, i32 1) })
  br label %bb173
bb172:
  br label %bb174
bb173:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb174:
  %t1063 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 4
  %t1064 = load i1, ptr %t1063, !tbaa !21
  br i1 %t1064, label %bb175, label %bb176
bb175:
  %t1066 = load i32, ptr %l6, !tbaa !23
  %t1067 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1070 = icmp ne i32 %t1066, %t1067
  store i1 %t1070, ptr %l387, !tbaa !21
  br label %bb177
bb176:
  store i1 false, ptr %l387, !tbaa !21
  br label %bb177
bb177:
  %t1072 = load i1, ptr %l387, !tbaa !21
  br i1 %t1072, label %bb178, label %bb179
bb178:
  %t1073 = load ptr, ptr %l0, !tbaa !29
  %t1074 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t1075 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1076 = load i32, ptr %l6, !tbaa !23
  %t1077 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ecResult(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v3, ptr %v2, ptr %t1073, ptr %l1, ptr %l11, { i64, ptr } %t1074, { i64, ptr } %t1075, i32 %t1076, { i64, ptr } %t1077)
  br label %bb180
bb179:
  br label %bb181
bb180:
  br label %bb181
bb181:
  %t1085 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1085, ptr %l398, !tbaa !29
  %t1086 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 5
  %t1087 = load i32, ptr %t1086, !tbaa !23
  %t1089 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s0, i32 %t1087)
  store { i64, ptr } %t1089, ptr %l400
  br label %bb182
bb182:
  %t1090 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t1091 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  %t1092 = load { i64, ptr }, ptr %l400, !tbaa !27
  %t1093 = extractvalue { i64, ptr } %t1092, 1
  %t1094 = extractvalue { i64, ptr } %t1092, 0
  %t1095 = add i64 %t1091, %t1094
  %t1096 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1095)
  call void @olang_textcopy(ptr %t1096, ptr %t1090, i64 %t1091)
  %t1097 = getelementptr i8, ptr %t1096, i64 %t1091
  call void @olang_textcopy(ptr %t1097, ptr %t1093, i64 %t1094)
  %t1098 = insertvalue { i64, ptr } undef, i64 %t1095, 0
  %t1099 = insertvalue { i64, ptr } %t1098, ptr %t1096, 1
  %t1101 = extractvalue { i64, ptr } %t1099, 0
  %t1102 = extractvalue { i64, ptr } %t1099, 1
  %t1103 = mul i64 %t1101, 1
  %t1104 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1103)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1104, ptr %t1102, i64 %t1103, i1 false)
  %t1105 = insertvalue { i64, ptr } undef, i64 %t1101, 0
  %t1106 = insertvalue { i64, ptr } %t1105, ptr %t1104, 1
  %t1107 = load ptr, ptr %l398, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %v2, ptr %t1107, { i64, ptr } %t1106)
  br label %bb183
bb183:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecallSym(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, %"compiler/mir:Call" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Call"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/lower:Clone"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, [4 x i64] }
  %l15 = alloca i64
  %l16 = alloca i64
  %l26 = alloca ptr
  %l30 = alloca %"compiler/lower:Clone"
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l35 = alloca i32
  %l40 = alloca { i64, ptr }
  %l46 = alloca i64
  %l49 = alloca i64
  %l70 = alloca { i64, [4 x i64] }
  %l75 = alloca i1
  %l76 = alloca { i64, ptr }
  %l81 = alloca i1
  %l84 = alloca i32
  %l87 = alloca i1
  %l90 = alloca { i64, [4 x i64] }
  %l93 = alloca i1
  %l96 = alloca { i64, [4 x i64] }
  %l102 = alloca ptr
  %l108 = alloca i64
  %l111 = alloca ptr
  %l114 = alloca { i64, ptr }
  %l117 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l124 = alloca i1
  %l126 = alloca ptr
  %l129 = alloca { i64, ptr }
  %l132 = alloca i64
  %l134 = alloca ptr
  %l135 = alloca ptr
  %l139 = alloca { i64, ptr }
  %l145 = alloca i64
  %l146 = alloca i32
  %l149 = alloca { i64, ptr }
  %l150 = alloca ptr
  %l153 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l157 = alloca { i64, ptr }
  %l162 = alloca ptr
  %l165 = alloca { i64, ptr }
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/mir:Call" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 3
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:fnEm", ptr %t11, i32 0, i32 40
  %t14 = load i64, ptr %t13, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t20 = getelementptr %"compiler/emit:Emitter", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/lower:Lowerer", ptr %t21, i32 0, i32 45
  store ptr %t23, ptr %l26, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/emit:fnEm", ptr %t24, i32 0, i32 40
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = load ptr, ptr %l26, !tbaa !29
  %t29 = call ptr @__olang_scope_or(ptr %v2, ptr %t28)
  %t30 = ptrtoint ptr %t29 to i64
  %t32 = inttoptr i64 %t30 to ptr
  %t33 = load ptr, ptr %l26, !tbaa !29
  %t35 = call %"compiler/lower:Clone" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aClone_3e_2eAt_3ccompiler_2flower_3aClone_3e(ptr %t32, ptr %t33, i64 %t27)
  store %"compiler/lower:Clone" %t35, ptr %l30
  br label %bb3
bb2:
  br label %bb43
bb3:
  %t36 = load %"compiler/lower:Clone", ptr %l30
  store %"compiler/lower:Clone" %t36, ptr %l6
  %t37 = load ptr, ptr %l5, !tbaa !29
  store ptr %t37, ptr %l31, !tbaa !29
  %t38 = load ptr, ptr %l5, !tbaa !29
  store ptr %t38, ptr %l32, !tbaa !29
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = load ptr, ptr %l32, !tbaa !29
  %t41 = call ptr @__olang_scope_or(ptr %v2, ptr %t40)
  %t42 = ptrtoint ptr %t41 to i64
  %t44 = inttoptr i64 %t42 to ptr
  %t45 = load ptr, ptr %l32, !tbaa !29
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %t44, ptr %t45, i32 %t39)
  store i32 %t47, ptr %l35
  br label %bb4
bb4:
  %t48 = load ptr, ptr %l31, !tbaa !29
  %t49 = call ptr @__olang_scope_or(ptr %v2, ptr %t48)
  %t50 = ptrtoint ptr %t49 to i64
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/emit:fnEm", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = call ptr @__olang_scope_or(ptr %v2, ptr %t54)
  %t57 = ptrtoint ptr %t56 to i64
  %t59 = inttoptr i64 %t50 to ptr
  %t61 = inttoptr i64 %t57 to ptr
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = load i32, ptr %l35, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t59, ptr %t61, ptr %t62, i32 %t63)
  store { i64, ptr } %t64, ptr %l40
  br label %bb5
bb5:
  %t65 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t65, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t66 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 1
  %t67 = getelementptr %"compiler/mir:Range", ptr %t66, i32 0, i32 1
  %t68 = load i32, ptr %t67, !tbaa !23
  %t70 = sext i32 %t68 to i64
  store i64 %t70, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb6, label %bb7
bb6:
  %t78 = load i64, ptr %l10, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb11
bb8:
  %t82 = load i64, ptr %l9, !tbaa !24
  %t83 = load i64, ptr %l8, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l10, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l10, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l49, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb10
bb10:
  %t98 = load i64, ptr %l49, !tbaa !24
  store i64 %t98, ptr %l46, !tbaa !24
  br label %bb11
bb11:
  %t99 = load i64, ptr %l46, !tbaa !24
  store i64 %t99, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb12
bb12:
  %t100 = load i64, ptr %l12, !tbaa !24
  %t101 = load i64, ptr %l11, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb13, label %bb14
bb13:
  br label %bb41
bb14:
  br label %bb15
bb15:
  %t108 = load i64, ptr %l8, !tbaa !24
  %t109 = load i64, ptr %l12, !tbaa !24
  %t110 = load i64, ptr %l10, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  store i64 %t116, ptr %l13, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 1
  %t120 = load %"compiler/mir:Range", ptr %t119
  %t121 = load i64, ptr %l13, !tbaa !24
  %t125 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v3, ptr %t118, %"compiler/mir:Range" %t120, i64 %t121)
  store { i64, [4 x i64] } %t125, ptr %l70
  br label %bb16
bb16:
  %t126 = load { i64, [4 x i64] }, ptr %l70
  store { i64, [4 x i64] } %t126, ptr %l14
  %t127 = load i64, ptr %l13, !tbaa !24
  %t128 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t133 = icmp sge i64 %t127, %t130
  br i1 %t133, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb19
bb18:
  %t135 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t135, ptr %l76, !tbaa !27
  %t136 = load i64, ptr %l13, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr i32, ptr %t139, i64 %t136
  %t141 = load i32, ptr %t140, !tbaa !33
  %t142 = getelementptr %"compiler/lower:Clone", ptr %l6, i32 0, i32 3
  %t143 = load i32, ptr %t142, !tbaa !23
  %t146 = icmp ne i32 %t141, %t143
  store i1 %t146, ptr %l75, !tbaa !21
  br label %bb19
bb19:
  %t148 = load i1, ptr %l75, !tbaa !21
  br i1 %t148, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l81, !tbaa !21
  br label %bb23
bb21:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load { i64, [4 x i64] }, ptr %l14
  %t153 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %v3, ptr %v2, ptr %t149, { i64, [4 x i64] } %t150)
  store i32 %t153, ptr %l84
  br label %bb22
bb22:
  %t154 = getelementptr %"compiler/lower:Clone", ptr %l6, i32 0, i32 3
  %t155 = load i32, ptr %t154, !tbaa !23
  %t156 = load i32, ptr %l84, !tbaa !23
  %t158 = icmp ne i32 %t156, %t155
  store i1 %t158, ptr %l81, !tbaa !21
  br label %bb23
bb23:
  %t160 = load i1, ptr %l81, !tbaa !21
  br i1 %t160, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb31
bb25:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load { i64, [4 x i64] }, ptr %l14
  %t165 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2eknownOf(ptr %v0, ptr %v3, ptr %t161, { i64, [4 x i64] } %t162)
  store { i64, [4 x i64] } %t165, ptr %l90
  br label %bb26
bb26:
  %t166 = load { i64, [4 x i64] }, ptr %l90
  %t168 = extractvalue { i64, [4 x i64] } %t166, 0
  %t169 = icmp eq i64 %t168, 1
  br i1 %t169, label %bb27, label %bb28
bb27:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load { i64, [4 x i64] }, ptr %l14
  %t175 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2eknownOf(ptr %v0, ptr %v3, ptr %t171, { i64, [4 x i64] } %t172)
  store { i64, [4 x i64] } %t175, ptr %l96
  br label %bb29
bb28:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb30
bb29:
  %t176 = getelementptr { i64, [4 x i64] }, ptr %l96, i32 0, i32 1
  %t177 = getelementptr { i64 }, ptr %t176, i32 0, i32 0
  %t178 = load i64, ptr %t177
  %t179 = getelementptr %"compiler/lower:Clone", ptr %l6, i32 0, i32 1
  %t180 = load i64, ptr %t179, !tbaa !24
  %t183 = icmp eq i64 %t178, %t180
  store i1 %t183, ptr %l93, !tbaa !21
  br label %bb30
bb30:
  %t185 = load i1, ptr %l93, !tbaa !21
  %t186 = xor i1 %t185, true
  store i1 %t186, ptr %l87, !tbaa !21
  br label %bb31
bb31:
  %t188 = load i1, ptr %l87, !tbaa !21
  br i1 %t188, label %bb32, label %bb33
bb32:
  br label %bb40
bb33:
  br label %bb34
bb34:
  %t189 = load ptr, ptr %l4, !tbaa !29
  %t191 = getelementptr %"compiler/emit:Emitter", ptr %t189, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !29
  store ptr %t192, ptr %l102, !tbaa !29
  %t193 = load { i64, [2 x i64] }, ptr %l1
  %t194 = load i64, ptr %l13, !tbaa !24
  %t195 = getelementptr %"compiler/lower:Clone", ptr %l6, i32 0, i32 2
  %t196 = load { i64, [2 x i64] }, ptr %t195
  %t197 = getelementptr %"compiler/lower:Clone", ptr %l6, i32 0, i32 3
  %t198 = load i32, ptr %t197, !tbaa !23
  %t199 = load ptr, ptr %l102, !tbaa !29
  %t200 = call ptr @__olang_scope_or(ptr %v2, ptr %t199)
  %t201 = ptrtoint ptr %t200 to i64
  %t203 = inttoptr i64 %t201 to ptr
  %t204 = load ptr, ptr %l102, !tbaa !29
  %t209 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCloneOf(ptr %t203, ptr %t204, { i64, [2 x i64] } %t193, i64 %t194, { i64, [2 x i64] } %t196, i32 %t198)
  store i64 %t209, ptr %l108
  br label %bb35
bb35:
  %t210 = load i64, ptr %l108, !tbaa !24
  store i64 %t210, ptr %l15, !tbaa !24
  %t211 = load i64, ptr %l15, !tbaa !24
  %t213 = icmp sge i64 %t211, 0
  br i1 %t213, label %bb36, label %bb37
bb36:
  %t215 = load ptr, ptr %l4, !tbaa !29
  store ptr %t215, ptr %l111, !tbaa !29
  %t216 = load i64, ptr %l15, !tbaa !24
  %t217 = load ptr, ptr %l111, !tbaa !29
  %t218 = call ptr @__olang_scope_or(ptr %v2, ptr %t217)
  %t219 = ptrtoint ptr %t218 to i64
  %t221 = inttoptr i64 %t219 to ptr
  %t222 = load ptr, ptr %l111, !tbaa !29
  %t224 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecloneSym(ptr %t221, ptr %v1, ptr %t222, i64 %t216)
  store { i64, ptr } %t224, ptr %l114
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t225 = load { i64, ptr }, ptr %l114, !tbaa !27
  store { i64, ptr } %t225, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t226 = load i64, ptr %l12, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l12, !tbaa !24
  br label %bb12
bb41:
  %t230 = load ptr, ptr %l4, !tbaa !29
  store ptr %t230, ptr %l117, !tbaa !29
  %t231 = load { i64, [2 x i64] }, ptr %l1
  %t232 = load ptr, ptr %l117, !tbaa !29
  %t233 = call ptr @__olang_scope_or(ptr %v2, ptr %t232)
  %t234 = ptrtoint ptr %t233 to i64
  %t236 = inttoptr i64 %t234 to ptr
  %t237 = load ptr, ptr %l117, !tbaa !29
  %t239 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %t236, ptr %v1, ptr %t237, { i64, [2 x i64] } %t231)
  store { i64, ptr } %t239, ptr %l120
  br label %bb42
bb42:
  %t240 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t240, ptr %rv
  br label %ret
bb43:
  %t241 = load ptr, ptr %l4, !tbaa !29
  store ptr %t241, ptr %l121, !tbaa !29
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l121, !tbaa !29
  %t244 = call ptr @__olang_scope_or(ptr %v2, ptr %t243)
  %t245 = ptrtoint ptr %t244 to i64
  %t247 = inttoptr i64 %t245 to ptr
  %t248 = load ptr, ptr %l121, !tbaa !29
  %t250 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2esiteable(ptr %t247, ptr %v0, ptr %t248, ptr %t242)
  store i1 %t250, ptr %l124
  br label %bb44
bb44:
  %t251 = load i1, ptr %l124, !tbaa !21
  %t252 = xor i1 %t251, true
  br i1 %t252, label %bb45, label %bb46
bb45:
  %t254 = load ptr, ptr %l4, !tbaa !29
  store ptr %t254, ptr %l126, !tbaa !29
  %t255 = load { i64, [2 x i64] }, ptr %l1
  %t256 = load ptr, ptr %l126, !tbaa !29
  %t257 = call ptr @__olang_scope_or(ptr %v2, ptr %t256)
  %t258 = ptrtoint ptr %t257 to i64
  %t260 = inttoptr i64 %t258 to ptr
  %t261 = load ptr, ptr %l126, !tbaa !29
  %t263 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %t260, ptr %v1, ptr %t261, { i64, [2 x i64] } %t255)
  store { i64, ptr } %t263, ptr %l129
  br label %bb47
bb46:
  br label %bb48
bb47:
  %t264 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t264, ptr %rv
  br label %ret
bb48:
  %t265 = load ptr, ptr %l4, !tbaa !29
  %t267 = getelementptr %"compiler/emit:Emitter", ptr %t265, i32 0, i32 50
  %t268 = load i1, ptr %t267, !tbaa !21
  br i1 %t268, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s8
  %t270 = load ptr, ptr %l4, !tbaa !29
  %t272 = getelementptr %"compiler/emit:Emitter", ptr %t270, i32 0, i32 49
  store ptr %t272, ptr %l134, !tbaa !29
  %t273 = load ptr, ptr %l4, !tbaa !29
  store ptr %t273, ptr %l135, !tbaa !29
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/emit:fnEm", ptr %t274, i32 0, i32 2
  %t277 = load { i64, [2 x i64] }, ptr %t276
  %t278 = load ptr, ptr %l135, !tbaa !29
  %t279 = call ptr @__olang_scope_or(ptr %v2, ptr %t278)
  %t280 = ptrtoint ptr %t279 to i64
  %t282 = inttoptr i64 %t280 to ptr
  %t283 = load ptr, ptr %l135, !tbaa !29
  %t285 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %t282, ptr %s8, ptr %t283, { i64, [2 x i64] } %t277)
  store { i64, ptr } %t285, ptr %l139
  br label %bb51
bb50:
  br label %bb61
bb51:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/emit:fnEm", ptr %t286, i32 0, i32 39
  %t289 = load i64, ptr %t288, !tbaa !24
  %t290 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t290, 1
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t293 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t294 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t295 = add i64 %t292, %t294
  %t297 = call i64 @__olang_fmt_i64(ptr null, i64 %t289)
  %t298 = add i64 %t295, %t297
  %t299 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t298)
  call void @olang_textcopy(ptr %t299, ptr %t291, i64 %t292)
  %t300 = getelementptr i8, ptr %t299, i64 %t292
  call void @olang_textcopy(ptr %t300, ptr %t293, i64 %t294)
  %t301 = getelementptr i8, ptr %t300, i64 %t294
  %t302 = call i64 @__olang_fmt_i64(ptr %t301, i64 %t289)
  %t303 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t299, 1
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t307 = extractvalue { i64, ptr } %t304, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  %t312 = load ptr, ptr %l134, !tbaa !29
  %t313 = call ptr @__olang_scope_or(ptr %v2, ptr %t312)
  %t314 = ptrtoint ptr %t313 to i64
  %t316 = inttoptr i64 %t314 to ptr
  %t317 = load ptr, ptr %l134, !tbaa !29
  %t319 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %t316, ptr %s8, ptr %t317, { i64, ptr } %t311)
  %t320 = extractvalue { i32, i64 } %t319, 1
  %t321 = extractvalue { i32, i64 } %t319, 0
  store i32 %t321, ptr %l146
  %t322 = icmp ne i32 %t321, 0
  br i1 %t322, label %bb53, label %ok.323, !prof !99
ok.323:
  store i64 %t320, ptr %l145
  br label %bb52
bb52:
  %t324 = load i64, ptr %l145, !tbaa !24
  store i64 %t324, ptr %l132, !tbaa !24
  br label %bb55
bb53:
  br label %bb54
bb54:
  store i64 -1, ptr %l132, !tbaa !24
  br label %bb55
bb55:
  %t325 = load i64, ptr %l132, !tbaa !24
  store i64 %t325, ptr %l16, !tbaa !24
  %t326 = load i64, ptr %l16, !tbaa !24
  %t328 = icmp sge i64 %t326, 0
  br i1 %t328, label %bb56, label %bb57
bb56:
  %t330 = load ptr, ptr %l4, !tbaa !29
  store ptr %t330, ptr %l150, !tbaa !29
  %t331 = load i64, ptr %l16, !tbaa !24
  %t332 = load ptr, ptr %l150, !tbaa !29
  %t333 = call ptr @__olang_scope_or(ptr %v2, ptr %t332)
  %t334 = ptrtoint ptr %t333 to i64
  %t336 = inttoptr i64 %t334 to ptr
  %t337 = load ptr, ptr %l150, !tbaa !29
  %t339 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecloneSym(ptr %t336, ptr %v1, ptr %t337, i64 %t331)
  store { i64, ptr } %t339, ptr %l153
  br label %bb58
bb57:
  %t340 = load ptr, ptr %l4, !tbaa !29
  store ptr %t340, ptr %l154, !tbaa !29
  %t341 = load { i64, [2 x i64] }, ptr %l1
  %t342 = load ptr, ptr %l154, !tbaa !29
  %t343 = call ptr @__olang_scope_or(ptr %v2, ptr %t342)
  %t344 = ptrtoint ptr %t343 to i64
  %t346 = inttoptr i64 %t344 to ptr
  %t347 = load ptr, ptr %l154, !tbaa !29
  %t349 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %t346, ptr %v1, ptr %t347, { i64, [2 x i64] } %t341)
  store { i64, ptr } %t349, ptr %l157
  br label %bb59
bb58:
  %t350 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t350, ptr %l149, !tbaa !27
  br label %bb60
bb59:
  %t351 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t351, ptr %l149, !tbaa !27
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s8)
  %t352 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t352, ptr %rv
  br label %ret
bb61:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load { i64, [2 x i64] }, ptr %l1
  %t355 = load i32, ptr %l2, !tbaa !23
  %t356 = load %"compiler/mir:Call", ptr %l3
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2enoteSites(ptr %v0, ptr %v2, ptr %v3, ptr %t353, { i64, [2 x i64] } %t354, i32 %t355, %"compiler/mir:Call" %t356)
  br label %bb62
bb62:
  %t361 = load ptr, ptr %l4, !tbaa !29
  store ptr %t361, ptr %l162, !tbaa !29
  %t362 = load { i64, [2 x i64] }, ptr %l1
  %t363 = load ptr, ptr %l162, !tbaa !29
  %t364 = call ptr @__olang_scope_or(ptr %v2, ptr %t363)
  %t365 = ptrtoint ptr %t364 to i64
  %t367 = inttoptr i64 %t365 to ptr
  %t368 = load ptr, ptr %l162, !tbaa !29
  %t370 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %t367, ptr %v1, ptr %t368, { i64, [2 x i64] } %t362)
  store { i64, ptr } %t370, ptr %l165
  br label %bb63
bb63:
  %t371 = load { i64, ptr }, ptr %l165, !tbaa !27
  store { i64, ptr } %t371, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecloneCode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/lower:Clone"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l18 = alloca %"compiler/lower:Clone"
  %l22 = alloca i1
  %l25 = alloca { i64, [4 x i64] }
  %l28 = alloca i1
  %l31 = alloca { i64, [4 x i64] }
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l45 = alloca ptr
  %l49 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 40
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d175, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t8, ptr %l8, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l9, !tbaa !24
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l9, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t22, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/emit:fnEm", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/emit:Emitter", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/lower:Lowerer", ptr %t30, i32 0, i32 45
  store ptr %t32, ptr %l14, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/emit:fnEm", ptr %t33, i32 0, i32 40
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = load ptr, ptr %l14, !tbaa !29
  %t38 = call ptr @__olang_scope_or(ptr %v2, ptr %t37)
  %t39 = ptrtoint ptr %t38 to i64
  %t41 = inttoptr i64 %t39 to ptr
  %t42 = load ptr, ptr %l14, !tbaa !29
  %t44 = call %"compiler/lower:Clone" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aClone_3e_2eAt_3ccompiler_2flower_3aClone_3e(ptr %t41, ptr %t42, i64 %t36)
  store %"compiler/lower:Clone" %t44, ptr %l18
  br label %bb4
bb4:
  %t45 = load %"compiler/lower:Clone", ptr %l18
  store %"compiler/lower:Clone" %t45, ptr %l3
  %t47 = getelementptr %"compiler/lower:Clone", ptr %l3, i32 0, i32 3
  %t48 = load i32, ptr %t47, !tbaa !23
  %t51 = icmp ne i32 %a2, %t48
  br i1 %t51, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb12
bb6:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load { i64, [4 x i64] }, ptr %l1
  %t57 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2eknownOf(ptr %v0, ptr %v3, ptr %t53, { i64, [4 x i64] } %t54)
  store { i64, [4 x i64] } %t57, ptr %l25
  br label %bb7
bb7:
  %t58 = load { i64, [4 x i64] }, ptr %l25
  %t60 = extractvalue { i64, [4 x i64] } %t58, 0
  %t61 = icmp eq i64 %t60, 1
  br i1 %t61, label %bb8, label %bb9
bb8:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load { i64, [4 x i64] }, ptr %l1
  %t67 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2eknownOf(ptr %v0, ptr %v3, ptr %t63, { i64, [4 x i64] } %t64)
  store { i64, [4 x i64] } %t67, ptr %l31
  br label %bb10
bb9:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb11
bb10:
  %t68 = getelementptr { i64, [4 x i64] }, ptr %l31, i32 0, i32 1
  %t69 = getelementptr { i64 }, ptr %t68, i32 0, i32 0
  %t70 = load i64, ptr %t69
  %t71 = getelementptr %"compiler/lower:Clone", ptr %l3, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t75 = icmp eq i64 %t70, %t72
  store i1 %t75, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t77 = load i1, ptr %l28, !tbaa !21
  %t78 = xor i1 %t77, true
  store i1 %t78, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t80 = load i1, ptr %l22, !tbaa !21
  br i1 %t80, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d176, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t81, ptr %l37, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l38, !tbaa !24
  %t84 = load i64, ptr %l38, !tbaa !24
  %t85 = mul i64 %t84, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l39, !tbaa !27
  %t89 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l38, !tbaa !24
  %t94 = mul i64 %t93, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %t92, i64 %t94, i1 false)
  %t95 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t95, ptr %l37, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t96 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t96, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/emit:fnEm", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  store ptr %t100, ptr %l41, !tbaa !29
  %t101 = getelementptr %"compiler/lower:Clone", ptr %l3, i32 0, i32 2
  %t102 = load { i64, [2 x i64] }, ptr %t101
  %t103 = load ptr, ptr %l41, !tbaa !29
  %t104 = call ptr @__olang_scope_or(ptr %v2, ptr %t103)
  %t105 = ptrtoint ptr %t104 to i64
  %t107 = inttoptr i64 %t105 to ptr
  %t108 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %t107, ptr %t108, { i64, [2 x i64] } %t102)
  br label %bb16
bb16:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/emit:fnEm", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  store ptr %t113, ptr %l45, !tbaa !29
  %t114 = getelementptr %"compiler/lower:Clone", ptr %l3, i32 0, i32 2
  %t115 = load { i64, [2 x i64] }, ptr %t114
  %t116 = getelementptr %"compiler/lower:Clone", ptr %l3, i32 0, i32 3
  %t117 = load i32, ptr %t116, !tbaa !23
  %t118 = load ptr, ptr %l45, !tbaa !29
  %t119 = call ptr @__olang_scope_or(ptr %v2, ptr %t118)
  %t120 = ptrtoint ptr %t119 to i64
  %t122 = inttoptr i64 %t120 to ptr
  %t123 = load ptr, ptr %l45, !tbaa !29
  %t126 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeFor(ptr %t122, ptr %s0, ptr %t123, { i64, [2 x i64] } %t115, i32 %t117)
  store { i64, ptr } %t126, ptr %l49
  br label %bb17
bb17:
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  %t129 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = add i64 %t128, %t131
  %t133 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t132)
  call void @olang_textcopy(ptr %t133, ptr %t127, i64 %t128)
  %t134 = getelementptr i8, ptr %t133, i64 %t128
  call void @olang_textcopy(ptr %t134, ptr %t130, i64 %t131)
  %t135 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t133, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t136, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstGlobal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { { i64, ptr }, { i64, ptr }, i64 }
  %l7 = alloca i64
  %l11 = alloca { { i64, ptr }, { i64, ptr }, i64 }
  %l16 = alloca ptr
  %l21 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { { i64, ptr }, { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstInit(ptr %v0, ptr %s0, ptr %v3, ptr %v4, ptr %t1, i32 %a1, i32 %a2)
  store { { i64, ptr }, { i64, ptr }, i64 } %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load { { i64, ptr }, { i64, ptr }, i64 }, ptr %l11
  store { { i64, ptr }, { i64, ptr }, i64 } %t8, ptr %l4
  %t9 = getelementptr { { i64, ptr }, { i64, ptr }, i64 }, ptr %l4, i32 0, i32 0
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t12 = getelementptr { { i64, ptr }, { i64, ptr }, i64 }, ptr %l4, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = getelementptr { { i64, ptr }, { i64, ptr }, i64 }, ptr %l4, i32 0, i32 2
  %t16 = load i64, ptr %t15, !tbaa !24
  store i64 %t16, ptr %l7, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/emit:fnEm", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  store ptr %t21, ptr %l16, !tbaa !29
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = call ptr @__olang_scope_or(ptr %v4, ptr %t25)
  %t27 = ptrtoint ptr %t26 to i64
  %t29 = inttoptr i64 %t27 to ptr
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t34 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstData(ptr %t29, ptr %s0, ptr %s0, ptr %v1, ptr %v2, ptr %t30, { i64, ptr } %t10, { i64, ptr } %t13, { i64, ptr } %a3)
  store { i64, ptr } %t34, ptr %l21
  br label %bb2
bb2:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t37 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t36, 0
  %t39 = insertvalue { { i64, ptr }, i64 } %t37, i64 %t35, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t39, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i64 }, ptr %rv
  ret { { i64, ptr }, i64 } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca ptr
  %l18 = alloca { i64, [1 x i64] }
  %l26 = alloca i32
  %l29 = alloca i32
  %l47 = alloca ptr
  %l50 = alloca ptr
  %l57 = alloca i8
  %l62 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l11
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/emit:fnEm", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Fn", ptr %t6, i32 0, i32 19
  store ptr %t8, ptr %l14, !tbaa !29
  %t11 = sext i32 %a1 to i64
  %t12 = load ptr, ptr %l14, !tbaa !29
  %t13 = call ptr @__olang_scope_or(ptr %v2, ptr %t12)
  %t14 = ptrtoint ptr %t13 to i64
  %t16 = inttoptr i64 %t14 to ptr
  %t17 = load ptr, ptr %l14, !tbaa !29
  %t19 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %t16, ptr %t17, i64 %t11)
  store { i64, [1 x i64] } %t19, ptr %l18
  br label %bb2
bb2:
  %t20 = load { i64, [1 x i64] }, ptr %l18
  store { i64, [1 x i64] } %t20, ptr %l3
  %t21 = load { i64, [1 x i64] }, ptr %l3
  %t23 = extractvalue { i64, [1 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 1
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = getelementptr { i64, [1 x i64] }, ptr %l3, i32 0, i32 1
  %t27 = getelementptr { %"compiler/mir:Range" }, ptr %t26, i32 0, i32 0
  %t28 = load %"compiler/mir:Range", ptr %t27
  store %"compiler/mir:Range" %t28, ptr %l4
  br label %bb5
bb4:
  br label %bb20
bb5:
  store i32 0, ptr %l5, !tbaa !23
  %t30 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t31 = load i32, ptr %t30, !tbaa !23
  store i32 %t31, ptr %l6, !tbaa !23
  store i32 1, ptr %l7, !tbaa !23
  %t33 = load i32, ptr %l6, !tbaa !23
  %t34 = load i32, ptr %l5, !tbaa !23
  %t37 = icmp sgt i32 %t33, %t34
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load i32, ptr %l7, !tbaa !23
  %t41 = icmp sgt i32 %t39, 0
  br i1 %t41, label %bb8, label %bb9
bb7:
  store i32 0, ptr %l26, !tbaa !23
  br label %bb11
bb8:
  %t43 = load i32, ptr %l6, !tbaa !23
  %t44 = load i32, ptr %l5, !tbaa !23
  %t47 = sub i32 %t43, %t44
  %t48 = load i32, ptr %l7, !tbaa !23
  %t51 = add i32 %t47, %t48
  %t53 = sub i32 %t51, 1
  %t54 = load i32, ptr %l7, !tbaa !23
  %t57 = sdiv i32 %t53, %t54
  store i32 %t57, ptr %l29, !tbaa !23
  br label %bb10
bb9:
  store i32 0, ptr %l29, !tbaa !23
  br label %bb10
bb10:
  %t59 = load i32, ptr %l29, !tbaa !23
  store i32 %t59, ptr %l26, !tbaa !23
  br label %bb11
bb11:
  %t60 = load i32, ptr %l26, !tbaa !23
  store i32 %t60, ptr %l8, !tbaa !23
  store i32 0, ptr %l9, !tbaa !23
  br label %bb12
bb12:
  %t61 = load i32, ptr %l9, !tbaa !23
  %t62 = load i32, ptr %l8, !tbaa !23
  %t65 = icmp slt i32 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  br label %bb15
bb15:
  %t69 = load i32, ptr %l5, !tbaa !23
  %t70 = load i32, ptr %l9, !tbaa !23
  %t71 = load i32, ptr %l7, !tbaa !23
  %t74 = mul i32 %t70, %t71
  %t77 = add i32 %t69, %t74
  store ptr %l2, ptr %l47, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/emit:fnEm", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/mir:Fn", ptr %t82, i32 0, i32 21
  store ptr %t84, ptr %l50, !tbaa !29
  %t85 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t86 = load i32, ptr %t85, !tbaa !23
  %t88 = sext i32 %t86 to i64
  %t91 = sext i32 %t77 to i64
  %t94 = add i64 %t88, %t91
  %t95 = load ptr, ptr %l50, !tbaa !29
  %t96 = call ptr @__olang_scope_or(ptr %v2, ptr %t95)
  %t97 = ptrtoint ptr %t96 to i64
  %t99 = inttoptr i64 %t97 to ptr
  %t100 = load ptr, ptr %l50, !tbaa !29
  %t102 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %t99, ptr %t100, i64 %t94)
  store i8 %t102, ptr %l57
  br label %bb16
bb16:
  %t103 = load i8, ptr %l57, !tbaa !22
  %t104 = load ptr, ptr %l47, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t104, i8 %t103)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t106 = load i32, ptr %l9, !tbaa !23
  %t108 = add i32 %t106, 1
  store i32 %t108, ptr %l9, !tbaa !23
  br label %bb12
bb19:
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_a00373ca27d5619a_9315010cb9ead296)
  unreachable
bb25:
  %t111 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t111, ptr %l62
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t112 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t112, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgEntry(ptr %v0, ptr %v1, ptr %v2, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l11 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 18
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d178, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l6, !tbaa !24
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l7, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t22, ptr %l5, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l8, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/emit:fnEm", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 2
  %t31 = load ptr, ptr %t30, !tbaa !29
  store ptr %t31, ptr %l11, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/emit:fnEm", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/mir:Fn", ptr %t35, i32 0, i32 2
  %t38 = load i64, ptr %t37, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/emit:fnEm", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/mir:Fn", ptr %t42, i32 0, i32 3
  %t45 = getelementptr %"compiler/source:Span", ptr %t44, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t48 = sext i32 %t46 to i64
  %t49 = load ptr, ptr %l11, !tbaa !29
  %t50 = call ptr @__olang_scope_or(ptr %v2, ptr %t49)
  %t51 = ptrtoint ptr %t50 to i64
  %t53 = inttoptr i64 %t51 to ptr
  %t54 = load ptr, ptr %l11, !tbaa !29
  %t57 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %t53, ptr %t54, i64 %t38, i64 %t48)
  store i64 %t57, ptr %l20
  br label %bb4
bb4:
  %t58 = load ptr, ptr %l8, !tbaa !29
  %t59 = load i64, ptr %l20, !tbaa !24
  %t60 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgLine(ptr %v0, ptr %v1, ptr %v2, ptr %t58, i64 %t59, i64 -1)
  store { i64, ptr } %t60, ptr %l21
  br label %bb5
bb5:
  %t61 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t61, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2efindDirect(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
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
  %l17 = alloca i1
  %l18 = alloca { i64, [21 x i64] }
  %l19 = alloca i32
  %l20 = alloca i1
  %l23 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l52 = alloca ptr
  %l58 = alloca ptr
  %l60 = alloca ptr
  %l62 = alloca i64
  %l67 = alloca i64
  %l70 = alloca i64
  %l88 = alloca ptr
  %l90 = alloca ptr
  %l93 = alloca { i64, [21 x i64] }
  %l95 = alloca i64
  %l103 = alloca i1
  %l104 = alloca ptr
  %l106 = alloca ptr
  %l109 = alloca { i64, [21 x i64] }
  %l112 = alloca i1
  %l120 = alloca ptr
  %l122 = alloca ptr
  %l125 = alloca { i64, [21 x i64] }
  %l128 = alloca i1
  %l130 = alloca ptr
  %l134 = alloca { i64, [21 x i64] }
  %l135 = alloca i1
  %l136 = alloca { i64, [21 x i64] }
  %l144 = alloca i1
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 9
  store ptr %t6, ptr %l23, !tbaa !29
  %t7 = load ptr, ptr %l23, !tbaa !29
  %t8 = call ptr @__olang_scope_or(ptr %v1, ptr %t7)
  %t9 = ptrtoint ptr %t8 to i64
  %t11 = inttoptr i64 %t9 to ptr
  %t12 = load ptr, ptr %l23, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t11, ptr %t12)
  store i64 %t13, ptr %l25
  br label %bb1
bb1:
  %t14 = load i64, ptr %l25, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb7
bb4:
  %t25 = load i64, ptr %l2, !tbaa !24
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l32, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb6
bb6:
  %t41 = load i64, ptr %l32, !tbaa !24
  store i64 %t41, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l29, !tbaa !24
  store i64 %t42, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  br label %bb65
bb10:
  br label %bb11
bb11:
  %t51 = load i64, ptr %l1, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/emit:fnEm", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/mir:Fn", ptr %t64, i32 0, i32 9
  store ptr %t66, ptr %l52, !tbaa !29
  %t68 = load ptr, ptr %l52, !tbaa !29
  %t69 = call ptr @__olang_scope_or(ptr %v1, ptr %t68)
  %t70 = ptrtoint ptr %t69 to i64
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/emit:fnEm", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = call ptr @__olang_scope_or(ptr %v1, ptr %t74)
  %t77 = ptrtoint ptr %t76 to i64
  %t79 = inttoptr i64 %t70 to ptr
  %t81 = inttoptr i64 %t77 to ptr
  %t82 = load ptr, ptr %l52, !tbaa !29
  %t84 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t79, ptr %t81, ptr %t82, i64 %t59)
  store ptr %t84, ptr %l58
  br label %bb12
bb12:
  %t85 = load ptr, ptr %l58, !tbaa !29
  store ptr %t85, ptr %l7, !tbaa !29
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/mir:BasicBlock", ptr %t86, i32 0, i32 0
  store ptr %t88, ptr %l60, !tbaa !29
  %t89 = load ptr, ptr %l60, !tbaa !29
  %t90 = call ptr @__olang_scope_or(ptr %v1, ptr %t89)
  %t91 = ptrtoint ptr %t90 to i64
  %t93 = inttoptr i64 %t91 to ptr
  %t94 = load ptr, ptr %l60, !tbaa !29
  %t95 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %t93, ptr %t94)
  store i64 %t95, ptr %l62
  br label %bb13
bb13:
  %t96 = load i64, ptr %l62, !tbaa !24
  store i64 %t96, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t97 = load i64, ptr %l8, !tbaa !24
  store i64 %t97, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t99 = load i64, ptr %l10, !tbaa !24
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = icmp sgt i64 %t99, %t100
  br i1 %t103, label %bb14, label %bb15
bb14:
  %t105 = load i64, ptr %l11, !tbaa !24
  %t107 = icmp sgt i64 %t105, 0
  br i1 %t107, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb19
bb16:
  %t109 = load i64, ptr %l10, !tbaa !24
  %t110 = load i64, ptr %l9, !tbaa !24
  %t113 = sub i64 %t109, %t110
  %t114 = load i64, ptr %l11, !tbaa !24
  %t117 = add i64 %t113, %t114
  %t119 = sub i64 %t117, 1
  %t120 = load i64, ptr %l11, !tbaa !24
  %t123 = sdiv i64 %t119, %t120
  store i64 %t123, ptr %l70, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb18
bb18:
  %t125 = load i64, ptr %l70, !tbaa !24
  store i64 %t125, ptr %l67, !tbaa !24
  br label %bb19
bb19:
  %t126 = load i64, ptr %l67, !tbaa !24
  store i64 %t126, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t127 = load i64, ptr %l13, !tbaa !24
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = icmp slt i64 %t127, %t128
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb63
bb22:
  br label %bb23
bb23:
  %t135 = load i64, ptr %l9, !tbaa !24
  %t136 = load i64, ptr %l13, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t140 = mul i64 %t136, %t137
  %t143 = add i64 %t135, %t140
  store i64 %t143, ptr %l14, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l88, !tbaa !29
  %t146 = load ptr, ptr %l7, !tbaa !29
  %t148 = getelementptr %"compiler/mir:BasicBlock", ptr %t146, i32 0, i32 0
  store ptr %t148, ptr %l90, !tbaa !29
  %t149 = load i64, ptr %l14, !tbaa !24
  %t150 = load ptr, ptr %l90, !tbaa !29
  %t151 = call ptr @__olang_scope_or(ptr %v1, ptr %t150)
  %t152 = ptrtoint ptr %t151 to i64
  %t154 = inttoptr i64 %t152 to ptr
  %t155 = load ptr, ptr %l90, !tbaa !29
  %t157 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %t154, ptr %t155, i64 %t149)
  store { i64, [21 x i64] } %t157, ptr %l93
  br label %bb24
bb24:
  %t158 = load ptr, ptr %l88, !tbaa !29
  %t160 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ebuilderOpened(ptr %v0, ptr %s4, ptr %v1, ptr %t158, ptr %l93)
  store i64 %t160, ptr %l95
  br label %bb25
bb25:
  %t161 = load i64, ptr %l95, !tbaa !24
  store i64 %t161, ptr %l15, !tbaa !24
  %t162 = load i64, ptr %l15, !tbaa !24
  %t164 = icmp slt i64 %t162, 0
  br i1 %t164, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb62
bb27:
  br label %bb28
bb28:
  %t166 = load i64, ptr %l14, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l16, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s6
  %t170 = load i64, ptr %l16, !tbaa !24
  %t171 = load i64, ptr %l8, !tbaa !24
  %t174 = icmp slt i64 %t170, %t171
  br i1 %t174, label %bb30, label %bb31
bb30:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l104, !tbaa !29
  %t177 = load ptr, ptr %l7, !tbaa !29
  %t179 = getelementptr %"compiler/mir:BasicBlock", ptr %t177, i32 0, i32 0
  store ptr %t179, ptr %l106, !tbaa !29
  %t180 = load i64, ptr %l16, !tbaa !24
  %t181 = load ptr, ptr %l106, !tbaa !29
  %t182 = call ptr @__olang_scope_or(ptr %v1, ptr %t181)
  %t183 = ptrtoint ptr %t182 to i64
  %t185 = inttoptr i64 %t183 to ptr
  %t186 = load ptr, ptr %l106, !tbaa !29
  %t188 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %t185, ptr %t186, i64 %t180)
  store { i64, [21 x i64] } %t188, ptr %l109
  br label %bb32
bb31:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb34
bb32:
  %t189 = load { i64, [21 x i64] }, ptr %l109
  %t190 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 176, i64 8)
  store { i64, [21 x i64] } %t189, ptr %t190
  %t191 = load i64, ptr %l15, !tbaa !24
  %t192 = load ptr, ptr %l104, !tbaa !29
  %t195 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplainWrite(ptr %v0, ptr %s6, ptr %t192, ptr %t190, i64 %t191)
  store i1 %t195, ptr %l112
  br label %bb33
bb33:
  %t196 = load i1, ptr %l112, !tbaa !21
  store i1 %t196, ptr %l103, !tbaa !21
  br label %bb34
bb34:
  %t197 = load i1, ptr %l103, !tbaa !21
  %t198 = xor i1 %t197, true
  br i1 %t198, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s6)
  br label %bb39
bb36:
  br label %bb37
bb37:
  %t200 = load i64, ptr %l16, !tbaa !24
  %t202 = add i64 %t200, 1
  store i64 %t202, ptr %l16, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb38
bb38:
  br label %bb29
bb39:
  %t204 = load i64, ptr %l16, !tbaa !24
  %t206 = add i64 %t204, 1
  %t207 = load i64, ptr %l8, !tbaa !24
  %t210 = icmp sge i64 %t206, %t207
  br i1 %t210, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb62
bb41:
  br label %bb42
bb42:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l120, !tbaa !29
  %t213 = load ptr, ptr %l7, !tbaa !29
  %t215 = getelementptr %"compiler/mir:BasicBlock", ptr %t213, i32 0, i32 0
  store ptr %t215, ptr %l122, !tbaa !29
  %t216 = load i64, ptr %l16, !tbaa !24
  %t217 = load ptr, ptr %l122, !tbaa !29
  %t218 = call ptr @__olang_scope_or(ptr %v1, ptr %t217)
  %t219 = ptrtoint ptr %t218 to i64
  %t221 = inttoptr i64 %t219 to ptr
  %t222 = load ptr, ptr %l122, !tbaa !29
  %t224 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %t221, ptr %t222, i64 %t216)
  store { i64, [21 x i64] } %t224, ptr %l125
  br label %bb43
bb43:
  %t225 = load { i64, [21 x i64] }, ptr %l125
  %t226 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 176, i64 8)
  store { i64, [21 x i64] } %t225, ptr %t226
  %t227 = load i64, ptr %l15, !tbaa !24
  %t228 = load ptr, ptr %l120, !tbaa !29
  %t231 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2etextInto(ptr %v0, ptr %s4, ptr %t228, ptr %t226, i64 %t227)
  store i1 %t231, ptr %l128
  br label %bb44
bb44:
  %t232 = load i1, ptr %l128, !tbaa !21
  store i1 %t232, ptr %l17, !tbaa !21
  %t233 = load ptr, ptr %l7, !tbaa !29
  %t235 = getelementptr %"compiler/mir:BasicBlock", ptr %t233, i32 0, i32 0
  store ptr %t235, ptr %l130, !tbaa !29
  %t236 = load i64, ptr %l16, !tbaa !24
  %t238 = add i64 %t236, 1
  %t239 = load ptr, ptr %l130, !tbaa !29
  %t240 = call ptr @__olang_scope_or(ptr %v1, ptr %t239)
  %t241 = ptrtoint ptr %t240 to i64
  %t243 = inttoptr i64 %t241 to ptr
  %t244 = load ptr, ptr %l130, !tbaa !29
  %t246 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %t243, ptr %t244, i64 %t238)
  store { i64, [21 x i64] } %t246, ptr %l134
  br label %bb45
bb45:
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %l134, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l136, ptr %l18, i64 176, i1 false)
  %t247 = load { i64, [21 x i64] }, ptr %l136
  %t248 = extractvalue { i64, [21 x i64] } %t247, 0
  %t249 = icmp eq i64 %t248, 4
  br i1 %t249, label %bb46, label %bb47
bb46:
  %t251 = getelementptr { i64, [21 x i64] }, ptr %l18, i32 0, i32 1
  %t252 = getelementptr { %"compiler/source:Span", i32 }, ptr %t251, i32 0, i32 1
  %t253 = load i32, ptr %t252
  store i32 %t253, ptr %l19, !tbaa !23
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t255 = load i32, ptr %l19, !tbaa !23
  %t257 = sext i32 %t255 to i64
  %t258 = load i64, ptr %l15, !tbaa !24
  %t261 = icmp eq i64 %t257, %t258
  store i1 %t261, ptr %l135, !tbaa !21
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_8a0f087481b95ab0_a13f080fe7b316d4)
  unreachable
bb54:
  %t263 = load i1, ptr %l135, !tbaa !21
  store i1 %t263, ptr %l20, !tbaa !21
  %t264 = load i1, ptr %l17, !tbaa !21
  br i1 %t264, label %bb55, label %bb56
bb55:
  %t266 = load i1, ptr %l20, !tbaa !21
  store i1 %t266, ptr %l144, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb57
bb57:
  %t268 = load i1, ptr %l144, !tbaa !21
  br i1 %t268, label %bb58, label %bb59
bb58:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/emit:fnEm", ptr %t269, i32 0, i32 25
  %t272 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t271, i64 %t272, i1 true)
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s4)
  br label %bb62
bb62:
  %t275 = load i64, ptr %l13, !tbaa !24
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l13, !tbaa !24
  br label %bb20
bb63:
  br label %bb64
bb64:
  %t279 = load i64, ptr %l5, !tbaa !24
  %t281 = add i64 %t279, 1
  store i64 %t281, ptr %l5, !tbaa !24
  br label %bb8
bb65:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca i32
  %l17 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  store ptr %t9, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = call ptr @__olang_scope_or(ptr %v1, ptr %t11)
  %t13 = ptrtoint ptr %t12 to i64
  %t15 = inttoptr i64 %t13 to ptr
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %t15, ptr %t16, i32 %a1)
  store i32 %t18, ptr %l10
  br label %bb1
bb1:
  %t19 = load i32, ptr %l10, !tbaa !23
  store i32 %t19, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l2, !tbaa !29
  store ptr %t20, ptr %l11, !tbaa !29
  %t21 = load i32, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l11, !tbaa !29
  %t23 = call ptr @__olang_scope_or(ptr %v1, ptr %t22)
  %t24 = ptrtoint ptr %t23 to i64
  %t26 = inttoptr i64 %t24 to ptr
  %t27 = load ptr, ptr %l11, !tbaa !29
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t26, ptr %t27, i32 %t21)
  store i32 %t29, ptr %l14
  br label %bb2
bb2:
  %t30 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t32 = trunc i64 26 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = load ptr, ptr %l2, !tbaa !29
  store ptr %t35, ptr %l18, !tbaa !29
  %t36 = load i32, ptr %l3, !tbaa !23
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = call ptr @__olang_scope_or(ptr %v1, ptr %t37)
  %t39 = ptrtoint ptr %t38 to i64
  %t41 = inttoptr i64 %t39 to ptr
  %t42 = load ptr, ptr %l18, !tbaa !29
  %t44 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %t41, ptr %t42, i32 %t36)
  store i64 %t44, ptr %l21
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  %t45 = load i64, ptr %l21, !tbaa !24
  store i64 %t45, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t46 = load i64, ptr %l17, !tbaa !24
  store i64 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l3 = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v2, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t11 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %t10, ptr %v1, ptr %t11, { i64, ptr } %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3afnEm_2egenLeaves(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l5
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l3
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l6, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/emit:fnEm", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/emit:Emitter", ptr %t11, i32 0, i32 3
  %t14 = load ptr, ptr %t13, !tbaa !29
  store ptr %t14, ptr %l9, !tbaa !29
  %t16 = load ptr, ptr %l9, !tbaa !29
  %t17 = call ptr @__olang_scope_or(ptr %v2, ptr %t16)
  %t18 = ptrtoint ptr %t17 to i64
  %t20 = inttoptr i64 %t18 to ptr
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t20, ptr %t21, i32 %a1)
  store i32 %t23, ptr %l12
  br label %bb3
bb3:
  %t24 = load ptr, ptr %lp2
  %t25 = load ptr, ptr %l6, !tbaa !29
  %t26 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eleavesOf(ptr %v0, ptr %s0, ptr %v1, ptr %v2, ptr %t25, i32 %t26, ptr %l3, ptr %t24)
  br label %bb4
bb4:
  %t29 = load ptr, ptr %lp2
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t29
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2egenOwn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca ptr
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l49 = alloca i32
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l69 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3afnEm_2egenLeaves(ptr %v0, ptr %s0, ptr %v3, ptr %t1, i32 %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l4
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/emit:fnEm", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l17, !tbaa !29
  %t11 = load ptr, ptr %l17, !tbaa !29
  %t12 = call ptr @__olang_scope_or(ptr %v3, ptr %t11)
  %t13 = ptrtoint ptr %t12 to i64
  %t15 = inttoptr i64 %t13 to ptr
  %t16 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t15, ptr %s0, ptr %t16, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d179, i32 0, i32 1) })
  br label %bb2
bb2:
  store i64 0, ptr %l5, !tbaa !24
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s0, ptr %l4)
  store i64 %t18, ptr %l20
  br label %bb3
bb3:
  %t19 = load i64, ptr %l20, !tbaa !24
  store i64 %t19, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb4, label %bb5
bb4:
  %t26 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb6:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l27, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l27, !tbaa !24
  store i64 %t46, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l24, !tbaa !24
  store i64 %t47, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t48 = load i64, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb12:
  br label %bb13
bb13:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l10, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l45, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l46, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l47, !tbaa !29
  %t69 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t69, ptr %l48, !tbaa !27
  %t70 = load i32, ptr %l2, !tbaa !23
  store i32 %t70, ptr %l49, !tbaa !23
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %s0, ptr %s2, ptr %l4, i64 %t71)
  store { i64, ptr } %t74, ptr %l52
  br label %bb14
bb14:
  %t75 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  store i64 %t76, ptr %l53, !tbaa !24
  %t77 = load i64, ptr %l53, !tbaa !24
  %t78 = mul i64 %t77, 8
  %t79 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t78)
  %t80 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l54, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = load i64, ptr %l53, !tbaa !24
  %t87 = mul i64 %t86, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t83, ptr %t85, i64 %t87, i1 false)
  %t88 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  %t90 = extractvalue { i64, ptr } %t88, 1
  %t91 = mul i64 %t89, 8
  %t92 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t91)
  call void @llvm.memcpy.p0.p0.i64(ptr %t92, ptr %t90, i64 %t91, i1 false)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  %t95 = load ptr, ptr %l47, !tbaa !29
  %t96 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t97 = load i32, ptr %l49, !tbaa !23
  %t99 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eleafAt(ptr %v0, ptr %v1, ptr %s2, ptr %s2, ptr %v3, ptr %t95, { i64, ptr } %t96, i32 %t97, { i64, ptr } %t94)
  store { i64, ptr } %t99, ptr %l56
  br label %bb15
bb15:
  %t100 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t102 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t105 = add i64 %t101, %t104
  %t106 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t109 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t108)
  call void @olang_textcopy(ptr %t109, ptr %t100, i64 %t101)
  %t110 = getelementptr i8, ptr %t109, i64 %t101
  call void @olang_textcopy(ptr %t110, ptr %t103, i64 %t104)
  %t111 = getelementptr i8, ptr %t110, i64 %t104
  call void @olang_textcopy(ptr %t111, ptr %t106, i64 %t107)
  %t112 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t109, 1
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = extractvalue { i64, ptr } %t113, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t121 = load ptr, ptr %l46, !tbaa !29
  %t123 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s2, ptr %s2, ptr %v3, ptr %t121, { i64, ptr } %t120)
  store { i64, ptr } %t123, ptr %l59
  br label %bb16
bb16:
  %t124 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = load ptr, ptr %l45, !tbaa !29
  %t133 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %s2, ptr %v3, ptr %t131, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d182, i32 0, i32 1) }, { i64, ptr } %t130, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t133, ptr %l61
  br label %bb17
bb17:
  %t134 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t138 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t141 = extractvalue { i64, ptr } %a3, 1
  %t142 = extractvalue { i64, ptr } %a3, 0
  %t143 = add i64 %t139, %t142
  %t144 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t146 = add i64 %t143, %t145
  %t148 = extractvalue { i64, ptr } %t134, 1
  %t149 = extractvalue { i64, ptr } %t134, 0
  %t150 = add i64 %t146, %t149
  %t151 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t153 = add i64 %t150, %t152
  %t154 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t153)
  call void @olang_textcopy(ptr %t154, ptr %t138, i64 %t139)
  %t155 = getelementptr i8, ptr %t154, i64 %t139
  call void @olang_textcopy(ptr %t155, ptr %t141, i64 %t142)
  %t156 = getelementptr i8, ptr %t155, i64 %t142
  call void @olang_textcopy(ptr %t156, ptr %t144, i64 %t145)
  %t157 = getelementptr i8, ptr %t156, i64 %t145
  call void @olang_textcopy(ptr %t157, ptr %t148, i64 %t149)
  %t158 = getelementptr i8, ptr %t157, i64 %t149
  call void @olang_textcopy(ptr %t158, ptr %t151, i64 %t152)
  %t159 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t154, 1
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t163 = extractvalue { i64, ptr } %t160, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t170 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s2, ptr %s2, ptr %v3, ptr %t135, { i64, ptr } %t167)
  store { i64, ptr } %t170, ptr %l67
  br label %bb18
bb18:
  %t171 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l68, !tbaa !29
  store { i64, ptr } %t171, ptr %l69, !tbaa !27
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t176 = load i32, ptr %l2, !tbaa !23
  %t177 = load i64, ptr %l10, !tbaa !24
  %t182 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eownWord(ptr %v0, ptr %v1, ptr %s2, ptr %v3, ptr %t174, { i64, ptr } %t175, i32 %t176, i64 %t177)
  store { i64, ptr } %t182, ptr %l74
  br label %bb19
bb19:
  %t183 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t185 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 1
  %t187 = extractvalue { i64, ptr } %t185, 0
  %t188 = add i64 %t184, %t187
  %t189 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t190 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t191 = add i64 %t188, %t190
  %t192 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = add i64 %t191, %t194
  %t196 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t197 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t198 = add i64 %t195, %t197
  %t199 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t198)
  call void @olang_textcopy(ptr %t199, ptr %t183, i64 %t184)
  %t200 = getelementptr i8, ptr %t199, i64 %t184
  call void @olang_textcopy(ptr %t200, ptr %t186, i64 %t187)
  %t201 = getelementptr i8, ptr %t200, i64 %t187
  call void @olang_textcopy(ptr %t201, ptr %t189, i64 %t190)
  %t202 = getelementptr i8, ptr %t201, i64 %t190
  call void @olang_textcopy(ptr %t202, ptr %t193, i64 %t194)
  %t203 = getelementptr i8, ptr %t202, i64 %t194
  call void @olang_textcopy(ptr %t203, ptr %t196, i64 %t197)
  %t204 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t199, 1
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t208 = extractvalue { i64, ptr } %t205, 1
  %t209 = mul i64 %t207, 1
  %t210 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t209)
  call void @llvm.memcpy.p0.p0.i64(ptr %t210, ptr %t208, i64 %t209, i1 false)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  %t213 = load ptr, ptr %l68, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s2, ptr %v3, ptr %t213, { i64, ptr } %t212)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb21:
  %t215 = load i64, ptr %l9, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l9, !tbaa !24
  br label %bb10
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i32
  %l9 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l16 = alloca i64
  %l20 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
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
  %t9 = load ptr, ptr %l3, !tbaa !29
  store ptr %t9, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t12 = call ptr @__olang_scope_or(ptr %v3, ptr %t11)
  %t13 = ptrtoint ptr %t12 to i64
  %t15 = inttoptr i64 %t13 to ptr
  %t16 = load ptr, ptr %l9, !tbaa !29
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t15, ptr %t16, i32 %a2)
  store i32 %t18, ptr %l12
  br label %bb1
bb1:
  %t19 = load i32, ptr %l12, !tbaa !23
  store i32 %t19, ptr %l4, !tbaa !23
  %t20 = load ptr, ptr %l3, !tbaa !29
  store ptr %t20, ptr %l13, !tbaa !29
  %t21 = load i32, ptr %l4, !tbaa !23
  %t22 = load ptr, ptr %l13, !tbaa !29
  %t23 = call ptr @__olang_scope_or(ptr %v3, ptr %t22)
  %t24 = ptrtoint ptr %t23 to i64
  %t26 = inttoptr i64 %t24 to ptr
  %t27 = load ptr, ptr %l13, !tbaa !29
  %t29 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %t26, ptr %t27, i32 %t21)
  store i64 %t29, ptr %l16
  br label %bb2
bb2:
  %t30 = load i64, ptr %l16, !tbaa !24
  %t31 = icmp eq i64 %t30, 64
  br i1 %t31, label %bb3, label %bb4
bb3:
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = extractvalue { i64, ptr } %t33, 0
  %t37 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t35, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l3, !tbaa !29
  store ptr %t41, ptr %l20, !tbaa !29
  %t42 = load i32, ptr %l4, !tbaa !23
  %t43 = load ptr, ptr %l20, !tbaa !29
  %t44 = call ptr @__olang_scope_or(ptr %v3, ptr %t43)
  %t45 = ptrtoint ptr %t44 to i64
  %t47 = inttoptr i64 %t45 to ptr
  %t48 = load ptr, ptr %l20, !tbaa !29
  %t50 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %t47, ptr %t48, i32 %t42)
  store i64 %t50, ptr %l23
  br label %bb6
bb6:
  %t51 = load i64, ptr %l23, !tbaa !24
  %t52 = icmp sgt i64 %t51, 64
  br i1 %t52, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l25, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l4, !tbaa !23
  %t59 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s3, ptr %v3, ptr %t55, i32 %t56)
  store { i64, ptr } %t59, ptr %l28
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t61 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t63 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = add i64 %t62, %t65
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t69 = add i64 %t66, %t68
  %t71 = extractvalue { i64, ptr } %t60, 1
  %t72 = extractvalue { i64, ptr } %t60, 0
  %t73 = add i64 %t69, %t72
  %t74 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t76 = add i64 %t73, %t75
  %t77 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t76)
  call void @olang_textcopy(ptr %t77, ptr %t61, i64 %t62)
  %t78 = getelementptr i8, ptr %t77, i64 %t62
  call void @olang_textcopy(ptr %t78, ptr %t64, i64 %t65)
  %t79 = getelementptr i8, ptr %t78, i64 %t65
  call void @olang_textcopy(ptr %t79, ptr %t67, i64 %t68)
  %t80 = getelementptr i8, ptr %t79, i64 %t68
  call void @olang_textcopy(ptr %t80, ptr %t71, i64 %t72)
  %t81 = getelementptr i8, ptr %t80, i64 %t72
  call void @olang_textcopy(ptr %t81, ptr %t74, i64 %t75)
  %t82 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t77, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = extractvalue { i64, ptr } %t83, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = load ptr, ptr %l25, !tbaa !29
  %t93 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s3, ptr %v2, ptr %v3, ptr %t91, { i64, ptr } %t90)
  store { i64, ptr } %t93, ptr %l32
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t94 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t94, ptr %rv
  br label %ret
bb11:
  %t95 = load ptr, ptr %l3, !tbaa !29
  store ptr %t95, ptr %l33, !tbaa !29
  %t96 = load i32, ptr %l4, !tbaa !23
  %t97 = load ptr, ptr %l33, !tbaa !29
  %t98 = call ptr @__olang_scope_or(ptr %v3, ptr %t97)
  %t99 = ptrtoint ptr %t98 to i64
  %t101 = inttoptr i64 %t99 to ptr
  %t102 = load ptr, ptr %l33, !tbaa !29
  %t104 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %t101, ptr %t102, i32 %t96)
  store i1 %t104, ptr %l36
  br label %bb12
bb12:
  %t105 = load i1, ptr %l36, !tbaa !21
  br i1 %t105, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d192, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d193, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb15
bb15:
  %t106 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l38, !tbaa !29
  store { i64, ptr } %t106, ptr %l39, !tbaa !27
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i32, ptr %l4, !tbaa !23
  %t113 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %v3, ptr %t109, i32 %t110)
  store { i64, ptr } %t113, ptr %l42
  br label %bb16
bb16:
  %t114 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 1
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t121 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t124 = add i64 %t120, %t123
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t127 = add i64 %t124, %t126
  %t129 = extractvalue { i64, ptr } %t114, 1
  %t130 = extractvalue { i64, ptr } %t114, 0
  %t131 = add i64 %t127, %t130
  %t132 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t134 = add i64 %t131, %t133
  %t135 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t134)
  call void @olang_textcopy(ptr %t135, ptr %t116, i64 %t117)
  %t136 = getelementptr i8, ptr %t135, i64 %t117
  call void @olang_textcopy(ptr %t136, ptr %t118, i64 %t119)
  %t137 = getelementptr i8, ptr %t136, i64 %t119
  call void @olang_textcopy(ptr %t137, ptr %t122, i64 %t123)
  %t138 = getelementptr i8, ptr %t137, i64 %t123
  call void @olang_textcopy(ptr %t138, ptr %t125, i64 %t126)
  %t139 = getelementptr i8, ptr %t138, i64 %t126
  call void @olang_textcopy(ptr %t139, ptr %t129, i64 %t130)
  %t140 = getelementptr i8, ptr %t139, i64 %t130
  call void @olang_textcopy(ptr %t140, ptr %t132, i64 %t133)
  %t141 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t135, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load ptr, ptr %l38, !tbaa !29
  %t152 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %v2, ptr %v3, ptr %t150, { i64, ptr } %t149)
  store { i64, ptr } %t152, ptr %l46
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t153 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t153, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %v2, ptr %t1)
  store { i64, ptr } %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t4, ptr %lp2
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t6 = load ptr, ptr %lp2
  store { i64, ptr } %t5, ptr %t6, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %lp2
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t9, 1
  %t13 = extractvalue { i64, ptr } %t9, 0
  %t14 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d196, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d196, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  call void @olang_textcopy(ptr %t21, ptr %t12, i64 %t13)
  %t22 = getelementptr i8, ptr %t21, i64 %t13
  call void @olang_textcopy(ptr %t22, ptr %t14, i64 %t15)
  %t23 = getelementptr i8, ptr %t22, i64 %t15
  call void @olang_textcopy(ptr %t23, ptr %t18, i64 %t19)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t21, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = extractvalue { i64, ptr } %t25, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %v3, ptr %t7, { i64, ptr } %t32)
  br label %bb2
bb2:
  %t35 = load ptr, ptr %lp2
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2elexical(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/mir:ScopeInfo"
  %l5 = alloca ptr
  %l8 = alloca %"compiler/mir:ScopeInfo"
  %l11 = alloca i1
  %l20 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 8
  store ptr %t6, ptr %l5, !tbaa !29
  %t8 = load ptr, ptr %l5, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l5, !tbaa !29
  %t15 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t12, ptr %t13, i64 %a1)
  store %"compiler/mir:ScopeInfo" %t15, ptr %l8
  br label %bb1
bb1:
  %t16 = load %"compiler/mir:ScopeInfo", ptr %l8
  store %"compiler/mir:ScopeInfo" %t16, ptr %l2
  %t17 = getelementptr %"compiler/mir:ScopeInfo", ptr %l2, i32 0, i32 3
  %t18 = getelementptr %"compiler/source:Span", ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18, !tbaa !23
  %t21 = icmp eq i32 %t19, 0
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = getelementptr %"compiler/mir:ScopeInfo", ptr %l2, i32 0, i32 3
  %t24 = getelementptr %"compiler/source:Span", ptr %t23, i32 0, i32 1
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = icmp eq i32 %t25, 0
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t29 = load i1, ptr %l11, !tbaa !21
  br i1 %t29, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t31 = getelementptr %"compiler/mir:ScopeInfo", ptr %l2, i32 0, i32 3
  %t32 = getelementptr %"compiler/source:Span", ptr %t31, i32 0, i32 0
  %t33 = load i32, ptr %t32, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/emit:fnEm", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/mir:Fn", ptr %t37, i32 0, i32 3
  %t40 = getelementptr %"compiler/source:Span", ptr %t39, i32 0, i32 0
  %t41 = load i32, ptr %t40, !tbaa !23
  %t44 = icmp eq i32 %t33, %t41
  br i1 %t44, label %bb8, label %bb9
bb8:
  %t46 = getelementptr %"compiler/mir:ScopeInfo", ptr %l2, i32 0, i32 3
  %t47 = getelementptr %"compiler/source:Span", ptr %t46, i32 0, i32 1
  %t48 = load i32, ptr %t47, !tbaa !23
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/emit:fnEm", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/mir:Fn", ptr %t52, i32 0, i32 3
  %t55 = getelementptr %"compiler/source:Span", ptr %t54, i32 0, i32 1
  %t56 = load i32, ptr %t55, !tbaa !23
  %t59 = icmp eq i32 %t48, %t56
  store i1 %t59, ptr %l20, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t61 = load i1, ptr %l20, !tbaa !21
  br i1 %t61, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t63 = getelementptr %"compiler/mir:ScopeInfo", ptr %l2, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 7}
  %t66 = trunc i64 1 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb16
bb15:
  %t69 = getelementptr %"compiler/mir:ScopeInfo", ptr %l2, i32 0, i32 0
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 7}
  %t72 = trunc i64 2 to i32
  %t73 = icmp eq i32 %t70, %t72
  store i1 %t73, ptr %l29, !tbaa !21
  br label %bb16
bb16:
  %t75 = load i1, ptr %l29, !tbaa !21
  br i1 %t75, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb19
bb18:
  %t76 = getelementptr %"compiler/mir:ScopeInfo", ptr %l2, i32 0, i32 0
  %t77 = load i32, ptr %t76, !range !{i32 0, i32 7}
  %t79 = trunc i64 3 to i32
  %t80 = icmp eq i32 %t77, %t79
  store i1 %t80, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t82 = load i1, ptr %l32, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca %"compiler/mir:Lvalue"
  %l5 = alloca { { i64, ptr }, i32 }
  %l9 = alloca i64
  %l16 = alloca { { i64, ptr }, i32 }
  %l23 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v2, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  %t7 = mul i64 8, %t6
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = load { i64, [4 x i64] }, ptr %l1
  %t11 = extractvalue { i64, [4 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 1
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t15 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t14, i32 0, i32 0
  %t16 = load %"compiler/mir:Lvalue", ptr %t15
  store %"compiler/mir:Lvalue" %t16, ptr %l4
  br label %bb4
bb3:
  br label %bb7
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load %"compiler/mir:Lvalue", ptr %l4
  %t22 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s1, ptr %v3, ptr %v2, ptr %t18, %"compiler/mir:Lvalue" %t19)
  store { { i64, ptr }, i32 } %t22, ptr %l16
  br label %bb5
bb5:
  %t23 = load { { i64, ptr }, i32 }, ptr %l16
  store { { i64, ptr }, i32 } %t23, ptr %l5
  %t24 = getelementptr { { i64, ptr }, i32 }, ptr %l5, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t28)
  %t33 = add i64 %t30, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t29, i64 %t30)
  %t35 = getelementptr i8, ptr %t34, i64 %t30
  %t36 = call i64 @__olang_fmt_i64(ptr %t35, i64 %t28)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t34, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  %t50 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s1, ptr %s1, ptr %s1, ptr %v1, ptr %v2, ptr %t27, { i64, ptr } %t45, { i64, ptr } %t25, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t50, ptr %l23
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  %t51 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb7:
  %t52 = load { i64, [4 x i64] }, ptr %l1
  %t54 = extractvalue { i64, [4 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 2
  br i1 %t55, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  %t57 = load { i64, [4 x i64] }, ptr %l1
  %t59 = extractvalue { i64, [4 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 0
  br i1 %t60, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d198, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t62, ptr %l29, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l30, !tbaa !24
  %t65 = load i64, ptr %l30, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l31, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l30, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t76, ptr %l29, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t77, ptr %rv
  br label %ret
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb19
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l32, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load { i64, [4 x i64] }, ptr %l1
  %t81 = load i32, ptr %l2, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s4, ptr %v3, ptr %v2, ptr %t79, { i64, [4 x i64] } %t80, i32 %t81)
  store { i64, ptr } %t85, ptr %l36
  br label %bb17
bb17:
  %t86 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t93 = load i32, ptr %l2, !tbaa !23
  %t94 = load ptr, ptr %l32, !tbaa !29
  %t97 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easInt(ptr %v0, ptr %s4, ptr %v1, ptr %v2, ptr %t94, { i64, ptr } %t92, i32 %t93)
  store { i64, ptr } %t97, ptr %l39
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s4)
  %t98 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_96948ec8b108caf2_f11085d875d0f99e)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedPrim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca ptr
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l21 = alloca { i64, [4 x i64] }
  %l22 = alloca ptr
  %l25 = alloca i32
  %l27 = alloca i32
  %l30 = alloca { i64, [4 x i64] }
  %l31 = alloca i64
  %l38 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca i32
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l59 = alloca i64
  %l63 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l79 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l86 = alloca { i64, [4 x i64] }
  %l88 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
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
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/mir:Range", ptr %l3
  %t13 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v2, ptr %t9, %"compiler/mir:Range" %t10, i64 0)
  store { i64, [4 x i64] } %t13, ptr %l21
  br label %bb1
bb1:
  %t14 = load { i64, [4 x i64] }, ptr %l21
  store { i64, [4 x i64] } %t14, ptr %l5
  %t15 = load ptr, ptr %l4, !tbaa !29
  store ptr %t15, ptr %l22, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load { i64, [4 x i64] }, ptr %l5
  %t20 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %v2, ptr %v3, ptr %t16, { i64, [4 x i64] } %t17)
  store i32 %t20, ptr %l25
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l22, !tbaa !29
  %t22 = call ptr @__olang_scope_or(ptr %v3, ptr %t21)
  %t23 = ptrtoint ptr %t22 to i64
  %t25 = inttoptr i64 %t23 to ptr
  %t26 = load ptr, ptr %l22, !tbaa !29
  %t27 = load i32, ptr %l25, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t25, ptr %t26, i32 %t27)
  store i32 %t28, ptr %l27
  br label %bb3
bb3:
  %t29 = load i32, ptr %l27, !tbaa !23
  store i32 %t29, ptr %l6, !tbaa !23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"compiler/mir:Range", ptr %l3
  %t34 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v2, ptr %t30, %"compiler/mir:Range" %t31, i64 1)
  store { i64, [4 x i64] } %t34, ptr %l30
  br label %bb4
bb4:
  %t35 = load { i64, [4 x i64] }, ptr %l30
  store { i64, [4 x i64] } %t35, ptr %l7
  %t36 = load { i64, [4 x i64] }, ptr %l7
  %t38 = extractvalue { i64, [4 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 2
  br i1 %t39, label %bb5, label %bb6
bb5:
  %t41 = getelementptr { i64, [4 x i64] }, ptr %l7, i32 0, i32 1
  %t42 = getelementptr { i32, i64 }, ptr %t41, i32 0, i32 1
  %t43 = load i64, ptr %t42
  store i64 %t43, ptr %l8, !tbaa !24
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t45 = load i64, ptr %l8, !tbaa !24
  store i64 %t45, ptr %l31, !tbaa !24
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_961c92f0031f8566_93f78080bb0935c2)
  unreachable
bb13:
  %t47 = load i64, ptr %l31, !tbaa !24
  store i64 %t47, ptr %l9, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l6, !tbaa !23
  %t52 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v3, ptr %t48, i32 %t49)
  store i64 %t52, ptr %l38
  br label %bb14
bb14:
  %t53 = load i64, ptr %l38, !tbaa !24
  %t54 = mul i64 8, %t53
  store i64 %t54, ptr %l10, !tbaa !24
  %t56 = load ptr, ptr %l4, !tbaa !29
  store ptr %t56, ptr %l40, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  store ptr %t57, ptr %l41, !tbaa !29
  %t58 = load i32, ptr %l6, !tbaa !23
  %t59 = load ptr, ptr %l41, !tbaa !29
  %t60 = call ptr @__olang_scope_or(ptr %v3, ptr %t59)
  %t61 = ptrtoint ptr %t60 to i64
  %t63 = inttoptr i64 %t61 to ptr
  %t64 = load ptr, ptr %l41, !tbaa !29
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %t63, ptr %t64, i32 %t58)
  store i32 %t66, ptr %l44
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l40, !tbaa !29
  %t68 = call ptr @__olang_scope_or(ptr %v3, ptr %t67)
  %t69 = ptrtoint ptr %t68 to i64
  %t71 = inttoptr i64 %t69 to ptr
  %t72 = load ptr, ptr %l40, !tbaa !29
  %t73 = load i32, ptr %l44, !tbaa !23
  %t74 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t71, ptr %s0, ptr %t72, i32 %t73)
  store { i64, ptr } %t74, ptr %l46
  br label %bb16
bb16:
  %t75 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t75, ptr %l47, !tbaa !27
  %t76 = load i64, ptr %l9, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i32, ptr %t79, i64 %t76
  %t81 = load i32, ptr %t80, !tbaa !33
  store i32 %t81, ptr %l11, !tbaa !23
  %t83 = load ptr, ptr %l4, !tbaa !29
  store ptr %t83, ptr %l50, !tbaa !29
  %t84 = load i32, ptr %l6, !tbaa !23
  %t85 = load ptr, ptr %l50, !tbaa !29
  %t86 = call ptr @__olang_scope_or(ptr %v3, ptr %t85)
  %t87 = ptrtoint ptr %t86 to i64
  %t89 = inttoptr i64 %t87 to ptr
  %t90 = load ptr, ptr %l50, !tbaa !29
  %t92 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %t89, ptr %s0, ptr %t90, i32 %t84)
  store { i64, ptr } %t92, ptr %l53
  br label %bb17
bb17:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t95 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i64, ptr %t96, i64 %t93
  %t98 = load i64, ptr %t97, !tbaa !34
  store i64 %t98, ptr %l12, !tbaa !24
  %t100 = load ptr, ptr %l4, !tbaa !29
  store ptr %t100, ptr %l56, !tbaa !29
  %t101 = load i32, ptr %l11, !tbaa !23
  %t102 = load ptr, ptr %l56, !tbaa !29
  %t103 = call ptr @__olang_scope_or(ptr %v3, ptr %t102)
  %t104 = ptrtoint ptr %t103 to i64
  %t106 = inttoptr i64 %t104 to ptr
  %t107 = load ptr, ptr %l56, !tbaa !29
  %t109 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %t106, ptr %t107, i32 %t101)
  store i64 %t109, ptr %l59
  br label %bb18
bb18:
  %t110 = load i64, ptr %l59, !tbaa !24
  store i64 %t110, ptr %l13, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load { i64, [4 x i64] }, ptr %l5
  %t113 = load i32, ptr %l6, !tbaa !23
  %t117 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedBits(ptr %v0, ptr %s0, ptr %v3, ptr %v2, ptr %t111, { i64, [4 x i64] } %t112, i32 %t113)
  store { i64, ptr } %t117, ptr %l63
  br label %bb19
bb19:
  %t118 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t118, ptr %l14, !tbaa !27
  %t121 = trunc i64 39 to i32
  %t122 = icmp eq i32 %a1, %t121
  br i1 %t122, label %bb20, label %bb21
bb20:
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l66, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t127 = load i64, ptr %l10, !tbaa !24
  %t128 = load i64, ptr %l12, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t135 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecut(ptr %v0, ptr %s0, ptr %v1, ptr %v3, ptr %t125, { i64, ptr } %t126, i64 %t127, i64 %t128, i64 %t129)
  store { i64, ptr } %t135, ptr %l72
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t136 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  %t138 = extractvalue { i64, ptr } %t136, 1
  %t139 = mul i64 %t137, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t139)
  call void @llvm.memcpy.p0.p0.i64(ptr %t140, ptr %t138, i64 %t139, i1 false)
  %t141 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  %t143 = load i64, ptr %l13, !tbaa !24
  %t144 = load i32, ptr %l11, !tbaa !23
  %t145 = load ptr, ptr %l66, !tbaa !29
  %t149 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efromBits(ptr %v0, ptr %v1, ptr %v1, ptr %v3, ptr %t145, { i64, ptr } %t142, i64 %t143, i32 %t144)
  store { i64, ptr } %t149, ptr %l76
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t150 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t150, ptr %rv
  br label %ret
bb24:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l77, !tbaa !29
  %t152 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t152, ptr %l78, !tbaa !27
  %t153 = load i64, ptr %l10, !tbaa !24
  store i64 %t153, ptr %l79, !tbaa !24
  %t154 = load i64, ptr %l12, !tbaa !24
  store i64 %t154, ptr %l80, !tbaa !24
  %t155 = load i64, ptr %l13, !tbaa !24
  store i64 %t155, ptr %l81, !tbaa !24
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l82, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l83, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load %"compiler/mir:Range", ptr %l3
  %t162 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v2, ptr %t158, %"compiler/mir:Range" %t159, i64 2)
  store { i64, [4 x i64] } %t162, ptr %l86
  br label %bb25
bb25:
  %t163 = load i32, ptr %l11, !tbaa !23
  %t164 = load ptr, ptr %l83, !tbaa !29
  %t165 = load { i64, [4 x i64] }, ptr %l86
  %t167 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %v2, ptr %v3, ptr %t164, { i64, [4 x i64] } %t165, i32 %t163)
  store { i64, ptr } %t167, ptr %l88
  br label %bb26
bb26:
  %t168 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load i32, ptr %l11, !tbaa !23
  %t176 = load i64, ptr %l13, !tbaa !24
  %t177 = load ptr, ptr %l82, !tbaa !29
  %t181 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t177, { i64, ptr } %t174, i32 %t175, i64 %t176)
  store { i64, ptr } %t181, ptr %l92
  br label %bb27
bb27:
  %t182 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 0
  %t184 = extractvalue { i64, ptr } %t182, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t189 = load ptr, ptr %l77, !tbaa !29
  %t190 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t191 = load i64, ptr %l79, !tbaa !24
  %t192 = load i64, ptr %l80, !tbaa !24
  %t193 = load i64, ptr %l81, !tbaa !24
  %t195 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %v3, ptr %t189, { i64, ptr } %t190, i64 %t191, i64 %t192, i64 %t193, { i64, ptr } %t188)
  store { i64, ptr } %t195, ptr %l94
  br label %bb28
bb28:
  %t196 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = load i32, ptr %l6, !tbaa !23
  %t203 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easPacked(ptr %v0, ptr %s0, ptr %v1, ptr %v3, ptr %t197, { i64, ptr } %t196, i32 %t199)
  store { i64, ptr } %t203, ptr %l98
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t204 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t204, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 1
  %t8 = extractvalue { i64, ptr } %t5, 0
  %t9 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t7, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t11, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t17 = call i64 @__olang_fmt_i64(ptr null, i64 %t13)
  %t18 = add i64 %t15, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t14, i64 %t15)
  %t20 = getelementptr i8, ptr %t19, i64 %t15
  %t21 = call i64 @__olang_fmt_i64(ptr %t20, i64 %t13)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t19, 1
  store { i64, ptr } %t23, ptr %l6, !tbaa !27
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t35 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t38 = call i64 @__olang_fmt_i64(ptr null, i64 %t32)
  %t39 = add i64 %t36, %t38
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t44 = extractvalue { i64, ptr } %t33, 1
  %t45 = extractvalue { i64, ptr } %t33, 0
  %t46 = add i64 %t42, %t45
  %t47 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t51 = extractvalue { i64, ptr } %t34, 1
  %t52 = extractvalue { i64, ptr } %t34, 0
  %t53 = add i64 %t49, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t35, i64 %t36)
  %t55 = getelementptr i8, ptr %t54, i64 %t36
  %t56 = call i64 @__olang_fmt_i64(ptr %t55, i64 %t32)
  %t57 = getelementptr i8, ptr %t55, i64 %t38
  call void @olang_textcopy(ptr %t57, ptr %t40, i64 %t41)
  %t58 = getelementptr i8, ptr %t57, i64 %t41
  call void @olang_textcopy(ptr %t58, ptr %t44, i64 %t45)
  %t59 = getelementptr i8, ptr %t58, i64 %t45
  call void @olang_textcopy(ptr %t59, ptr %t47, i64 %t48)
  %t60 = getelementptr i8, ptr %t59, i64 %t48
  call void @olang_textcopy(ptr %t60, ptr %t51, i64 %t52)
  %t61 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t54, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = extractvalue { i64, ptr } %t62, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  %t72 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v4, ptr %t31, { i64, ptr } %t69)
  store { i64, ptr } %t72, ptr %l28
  br label %bb6
bb5:
  %t73 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = extractvalue { i64, ptr } %t73, 0
  %t77 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t76)
  call void @olang_textcopy(ptr %t77, ptr %t75, i64 %t76)
  %t78 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  store { i64, ptr } %t79, ptr %l21, !tbaa !27
  br label %bb7
bb6:
  %t81 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t81, ptr %l21, !tbaa !27
  br label %bb7
bb7:
  %t82 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t82, ptr %l7, !tbaa !27
  %t83 = load i64, ptr %l3, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb8, label %bb9
bb8:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t90 = load i64, ptr %l3, !tbaa !24
  %t91 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t94 = extractvalue { i64, ptr } %t88, 1
  %t95 = extractvalue { i64, ptr } %t88, 0
  %t96 = add i64 %t92, %t95
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  %t99 = add i64 %t96, %t98
  %t101 = extractvalue { i64, ptr } %t89, 1
  %t102 = extractvalue { i64, ptr } %t89, 0
  %t103 = add i64 %t99, %t102
  %t104 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  %t106 = add i64 %t103, %t105
  %t108 = call i64 @__olang_fmt_i64(ptr null, i64 %t90)
  %t109 = add i64 %t106, %t108
  %t110 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t109)
  call void @olang_textcopy(ptr %t110, ptr %t91, i64 %t92)
  %t111 = getelementptr i8, ptr %t110, i64 %t92
  call void @olang_textcopy(ptr %t111, ptr %t94, i64 %t95)
  %t112 = getelementptr i8, ptr %t111, i64 %t95
  call void @olang_textcopy(ptr %t112, ptr %t97, i64 %t98)
  %t113 = getelementptr i8, ptr %t112, i64 %t98
  call void @olang_textcopy(ptr %t113, ptr %t101, i64 %t102)
  %t114 = getelementptr i8, ptr %t113, i64 %t102
  call void @olang_textcopy(ptr %t114, ptr %t104, i64 %t105)
  %t115 = getelementptr i8, ptr %t114, i64 %t105
  %t116 = call i64 @__olang_fmt_i64(ptr %t115, i64 %t90)
  %t117 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t110, 1
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t121 = extractvalue { i64, ptr } %t118, 1
  %t122 = mul i64 %t120, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t122)
  call void @llvm.memcpy.p0.p0.i64(ptr %t123, ptr %t121, i64 %t122, i1 false)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t128 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v4, ptr %t87, { i64, ptr } %t125)
  store { i64, ptr } %t128, ptr %l40
  br label %bb10
bb9:
  %t129 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t129, ptr %l33, !tbaa !27
  br label %bb11
bb10:
  %t131 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t131, ptr %l33, !tbaa !27
  br label %bb11
bb11:
  %t132 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 0
  store i64 %t133, ptr %l42, !tbaa !24
  %t134 = load i64, ptr %l42, !tbaa !24
  %t135 = mul i64 %t134, 1
  %t136 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t135)
  %t137 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  store { i64, ptr } %t138, ptr %l43, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = load i64, ptr %l42, !tbaa !24
  %t144 = mul i64 %t143, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t140, ptr %t142, i64 %t144, i1 false)
  %t145 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t145, ptr %l8, !tbaa !27
  %t146 = load i64, ptr %l4, !tbaa !24
  %t147 = load i64, ptr %l2, !tbaa !24
  %t150 = icmp slt i64 %t146, %t147
  br i1 %t150, label %bb12, label %bb13
bb12:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t154 = load i64, ptr %l2, !tbaa !24
  %t155 = load i64, ptr %l4, !tbaa !24
  %t158 = sub i64 %t154, %t155
  %t159 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t162 = extractvalue { i64, ptr } %t153, 1
  %t163 = extractvalue { i64, ptr } %t153, 0
  %t164 = add i64 %t160, %t163
  %t165 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t167 = add i64 %t164, %t166
  %t169 = call i64 @__olang_fmt_i64(ptr null, i64 %t158)
  %t170 = add i64 %t167, %t169
  %t171 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t170)
  call void @olang_textcopy(ptr %t171, ptr %t159, i64 %t160)
  %t172 = getelementptr i8, ptr %t171, i64 %t160
  call void @olang_textcopy(ptr %t172, ptr %t162, i64 %t163)
  %t173 = getelementptr i8, ptr %t172, i64 %t163
  call void @olang_textcopy(ptr %t173, ptr %t165, i64 %t166)
  %t174 = getelementptr i8, ptr %t173, i64 %t166
  %t175 = call i64 @__olang_fmt_i64(ptr %t174, i64 %t158)
  %t176 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t171, 1
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t180 = extractvalue { i64, ptr } %t177, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  %t187 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v4, ptr %t152, { i64, ptr } %t184)
  store { i64, ptr } %t187, ptr %l55
  br label %bb14
bb13:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d208, i32 0, i32 1) }, ptr %l47, !tbaa !27
  br label %bb15
bb14:
  %t188 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 0
  %t190 = extractvalue { i64, ptr } %t188, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  store { i64, ptr } %t194, ptr %l47, !tbaa !27
  br label %bb15
bb15:
  %t196 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t196, ptr %l9, !tbaa !27
  %t197 = load i64, ptr %l3, !tbaa !24
  %t199 = icmp sgt i64 %t197, 0
  br i1 %t199, label %bb16, label %bb17
bb16:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t204 = load i64, ptr %l3, !tbaa !24
  %t205 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t206 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  %t208 = extractvalue { i64, ptr } %t202, 1
  %t209 = extractvalue { i64, ptr } %t202, 0
  %t210 = add i64 %t206, %t209
  %t211 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t212 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
  %t213 = add i64 %t210, %t212
  %t215 = extractvalue { i64, ptr } %t203, 1
  %t216 = extractvalue { i64, ptr } %t203, 0
  %t217 = add i64 %t213, %t216
  %t218 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t222 = call i64 @__olang_fmt_i64(ptr null, i64 %t204)
  %t223 = add i64 %t220, %t222
  %t224 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t223)
  call void @olang_textcopy(ptr %t224, ptr %t205, i64 %t206)
  %t225 = getelementptr i8, ptr %t224, i64 %t206
  call void @olang_textcopy(ptr %t225, ptr %t208, i64 %t209)
  %t226 = getelementptr i8, ptr %t225, i64 %t209
  call void @olang_textcopy(ptr %t226, ptr %t211, i64 %t212)
  %t227 = getelementptr i8, ptr %t226, i64 %t212
  call void @olang_textcopy(ptr %t227, ptr %t215, i64 %t216)
  %t228 = getelementptr i8, ptr %t227, i64 %t216
  call void @olang_textcopy(ptr %t228, ptr %t218, i64 %t219)
  %t229 = getelementptr i8, ptr %t228, i64 %t219
  %t230 = call i64 @__olang_fmt_i64(ptr %t229, i64 %t204)
  %t231 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t224, 1
  %t234 = extractvalue { i64, ptr } %t232, 0
  %t235 = extractvalue { i64, ptr } %t232, 1
  %t236 = mul i64 %t234, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t236)
  call void @llvm.memcpy.p0.p0.i64(ptr %t237, ptr %t235, i64 %t236, i1 false)
  %t238 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  %t242 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v4, ptr %t201, { i64, ptr } %t239)
  store { i64, ptr } %t242, ptr %l66
  br label %bb18
bb17:
  %t243 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t243, ptr %l59, !tbaa !27
  br label %bb19
bb18:
  %t245 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 0
  %t247 = extractvalue { i64, ptr } %t245, 1
  %t248 = mul i64 %t246, 1
  %t249 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t248)
  call void @llvm.memcpy.p0.p0.i64(ptr %t249, ptr %t247, i64 %t248, i1 false)
  %t250 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  store { i64, ptr } %t251, ptr %l59, !tbaa !27
  br label %bb19
bb19:
  %t253 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l69, !tbaa !29
  %t255 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t255, ptr %l70, !tbaa !27
  %t256 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t256, ptr %l71, !tbaa !27
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t260 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t263 = extractvalue { i64, ptr } %t258, 1
  %t264 = extractvalue { i64, ptr } %t258, 0
  %t265 = add i64 %t261, %t264
  %t266 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t267 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  %t268 = add i64 %t265, %t267
  %t270 = extractvalue { i64, ptr } %t253, 1
  %t271 = extractvalue { i64, ptr } %t253, 0
  %t272 = add i64 %t268, %t271
  %t273 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t275 = add i64 %t272, %t274
  %t276 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t275)
  call void @olang_textcopy(ptr %t276, ptr %t260, i64 %t261)
  %t277 = getelementptr i8, ptr %t276, i64 %t261
  call void @olang_textcopy(ptr %t277, ptr %t263, i64 %t264)
  %t278 = getelementptr i8, ptr %t277, i64 %t264
  call void @olang_textcopy(ptr %t278, ptr %t266, i64 %t267)
  %t279 = getelementptr i8, ptr %t278, i64 %t267
  call void @olang_textcopy(ptr %t279, ptr %t270, i64 %t271)
  %t280 = getelementptr i8, ptr %t279, i64 %t271
  call void @olang_textcopy(ptr %t280, ptr %t273, i64 %t274)
  %t281 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t276, 1
  %t284 = extractvalue { i64, ptr } %t282, 0
  %t285 = extractvalue { i64, ptr } %t282, 1
  %t286 = mul i64 %t284, 1
  %t287 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t286)
  call void @llvm.memcpy.p0.p0.i64(ptr %t287, ptr %t285, i64 %t286, i1 false)
  %t288 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  %t292 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v4, ptr %t257, { i64, ptr } %t289)
  store { i64, ptr } %t292, ptr %l77
  br label %bb20
bb20:
  %t293 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t294 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t295 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t295, 1
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t298 = add i64 %t294, %t297
  %t299 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t300 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t301 = add i64 %t298, %t300
  %t302 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t302, 1
  %t304 = extractvalue { i64, ptr } %t302, 0
  %t305 = add i64 %t301, %t304
  %t306 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t307 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t308 = add i64 %t305, %t307
  %t309 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 1
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t312 = add i64 %t308, %t311
  %t313 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t312)
  call void @olang_textcopy(ptr %t313, ptr %t293, i64 %t294)
  %t314 = getelementptr i8, ptr %t313, i64 %t294
  call void @olang_textcopy(ptr %t314, ptr %t296, i64 %t297)
  %t315 = getelementptr i8, ptr %t314, i64 %t297
  call void @olang_textcopy(ptr %t315, ptr %t299, i64 %t300)
  %t316 = getelementptr i8, ptr %t315, i64 %t300
  call void @olang_textcopy(ptr %t316, ptr %t303, i64 %t304)
  %t317 = getelementptr i8, ptr %t316, i64 %t304
  call void @olang_textcopy(ptr %t317, ptr %t306, i64 %t307)
  %t318 = getelementptr i8, ptr %t317, i64 %t307
  call void @olang_textcopy(ptr %t318, ptr %t310, i64 %t311)
  %t319 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t313, 1
  %t322 = extractvalue { i64, ptr } %t320, 0
  %t323 = extractvalue { i64, ptr } %t320, 1
  %t324 = mul i64 %t322, 1
  %t325 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t325, ptr %t323, i64 %t324, i1 false)
  %t326 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  %t328 = load ptr, ptr %l69, !tbaa !29
  %t330 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v4, ptr %t328, { i64, ptr } %t327)
  store { i64, ptr } %t330, ptr %l80
  br label %bb21
bb21:
  %t331 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t335 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t336 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t337 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  %t339 = extractvalue { i64, ptr } %t333, 1
  %t340 = extractvalue { i64, ptr } %t333, 0
  %t341 = add i64 %t337, %t340
  %t342 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t343 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  %t344 = add i64 %t341, %t343
  %t346 = extractvalue { i64, ptr } %t331, 1
  %t347 = extractvalue { i64, ptr } %t331, 0
  %t348 = add i64 %t344, %t347
  %t349 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t351 = add i64 %t348, %t350
  %t353 = extractvalue { i64, ptr } %t335, 1
  %t354 = extractvalue { i64, ptr } %t335, 0
  %t355 = add i64 %t351, %t354
  %t356 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t355)
  call void @olang_textcopy(ptr %t356, ptr %t336, i64 %t337)
  %t357 = getelementptr i8, ptr %t356, i64 %t337
  call void @olang_textcopy(ptr %t357, ptr %t339, i64 %t340)
  %t358 = getelementptr i8, ptr %t357, i64 %t340
  call void @olang_textcopy(ptr %t358, ptr %t342, i64 %t343)
  %t359 = getelementptr i8, ptr %t358, i64 %t343
  call void @olang_textcopy(ptr %t359, ptr %t346, i64 %t347)
  %t360 = getelementptr i8, ptr %t359, i64 %t347
  call void @olang_textcopy(ptr %t360, ptr %t349, i64 %t350)
  %t361 = getelementptr i8, ptr %t360, i64 %t350
  call void @olang_textcopy(ptr %t361, ptr %t353, i64 %t354)
  %t362 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t356, 1
  %t365 = extractvalue { i64, ptr } %t363, 0
  %t366 = extractvalue { i64, ptr } %t363, 1
  %t367 = mul i64 %t365, 1
  %t368 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t373 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %v3, ptr %v4, ptr %t332, { i64, ptr } %t370)
  store { i64, ptr } %t373, ptr %l87
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t374 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t374, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2erecode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l46 = alloca i64
  %l49 = alloca i64
  %l68 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l74 = alloca i64
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l106 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
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
  store ptr %t7, ptr %l22, !tbaa !29
  %t11 = load ptr, ptr %l22, !tbaa !29
  %t12 = call ptr @__olang_scope_or(ptr %v3, ptr %t11)
  %t13 = ptrtoint ptr %t12 to i64
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/emit:fnEm", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = call ptr @__olang_scope_or(ptr %v3, ptr %t17)
  %t20 = ptrtoint ptr %t19 to i64
  %t22 = inttoptr i64 %t13 to ptr
  %t24 = inttoptr i64 %t20 to ptr
  %t25 = load ptr, ptr %l22, !tbaa !29
  %t27 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t22, ptr %t24, ptr %t25, i32 %a2)
  store { i64, ptr } %t27, ptr %l28
  br label %bb1
bb1:
  %t28 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t28, ptr %l5, !tbaa !27
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  %t34 = extractvalue { i64, ptr } %t30, 1
  %t35 = extractvalue { i64, ptr } %t30, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t39)
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
  %t49 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t54 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t29, { i64, ptr } %t51)
  store { i64, ptr } %t54, ptr %l33
  br label %bb2
bb2:
  %t55 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t55, ptr %l6, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t58 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t61 = extractvalue { i64, ptr } %t57, 1
  %t62 = extractvalue { i64, ptr } %t57, 0
  %t63 = add i64 %t59, %t62
  %t64 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t66 = add i64 %t63, %t65
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t58, i64 %t59)
  %t68 = getelementptr i8, ptr %t67, i64 %t59
  call void @olang_textcopy(ptr %t68, ptr %t61, i64 %t62)
  %t69 = getelementptr i8, ptr %t68, i64 %t62
  call void @olang_textcopy(ptr %t69, ptr %t64, i64 %t65)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t67, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = extractvalue { i64, ptr } %t71, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t81 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t56, { i64, ptr } %t78)
  store { i64, ptr } %t81, ptr %l38
  br label %bb3
bb3:
  %t82 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t82, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t83, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  store i64 %t87, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  %t90 = load i64, ptr %l9, !tbaa !24
  %t93 = icmp sgt i64 %t89, %t90
  br i1 %t93, label %bb4, label %bb5
bb4:
  %t95 = load i64, ptr %l11, !tbaa !24
  %t97 = icmp sgt i64 %t95, 0
  br i1 %t97, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb9
bb6:
  %t99 = load i64, ptr %l10, !tbaa !24
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = sub i64 %t99, %t100
  %t104 = load i64, ptr %l11, !tbaa !24
  %t107 = add i64 %t103, %t104
  %t109 = sub i64 %t107, 1
  %t110 = load i64, ptr %l11, !tbaa !24
  %t113 = sdiv i64 %t109, %t110
  store i64 %t113, ptr %l49, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb8
bb8:
  %t115 = load i64, ptr %l49, !tbaa !24
  store i64 %t115, ptr %l46, !tbaa !24
  br label %bb9
bb9:
  %t116 = load i64, ptr %l46, !tbaa !24
  store i64 %t116, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s4
  %t117 = load i64, ptr %l13, !tbaa !24
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s4)
  br label %bb24
bb12:
  br label %bb13
bb13:
  %t125 = load i64, ptr %l9, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t127 = load i64, ptr %l11, !tbaa !24
  %t130 = mul i64 %t126, %t127
  %t133 = add i64 %t125, %t130
  store i64 %t133, ptr %l14, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/emit:fnEm", ptr %t135, i32 0, i32 0
  %t138 = load ptr, ptr %t137, !tbaa !29
  store ptr %t138, ptr %l68, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t140, ptr %l70, !tbaa !27
  %t141 = load i64, ptr %l14, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr i32, ptr %t144, i64 %t141
  %t146 = load i32, ptr %t145, !tbaa !33
  %t147 = load ptr, ptr %l68, !tbaa !29
  %t148 = call ptr @__olang_scope_or(ptr %v3, ptr %t147)
  %t149 = ptrtoint ptr %t148 to i64
  %t151 = inttoptr i64 %t149 to ptr
  %t152 = load ptr, ptr %l68, !tbaa !29
  %t155 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eposition(ptr %t151, ptr %t152, i32 %a3, i32 %t146)
  store i64 %t155, ptr %l74
  br label %bb14
bb14:
  %t156 = load i64, ptr %l74, !tbaa !24
  store i64 %t156, ptr %l15, !tbaa !24
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t159 = load i64, ptr %l14, !tbaa !24
  %t161 = add i64 %t159, 1
  %t162 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  %t165 = extractvalue { i64, ptr } %t158, 1
  %t166 = extractvalue { i64, ptr } %t158, 0
  %t167 = add i64 %t163, %t166
  %t168 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d227, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d227, i32 0, i32 1) }, 0
  %t170 = add i64 %t167, %t169
  %t172 = call i64 @__olang_fmt_i64(ptr null, i64 %t161)
  %t173 = add i64 %t170, %t172
  %t174 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t173)
  call void @olang_textcopy(ptr %t174, ptr %t162, i64 %t163)
  %t175 = getelementptr i8, ptr %t174, i64 %t163
  call void @olang_textcopy(ptr %t175, ptr %t165, i64 %t166)
  %t176 = getelementptr i8, ptr %t175, i64 %t166
  call void @olang_textcopy(ptr %t176, ptr %t168, i64 %t169)
  %t177 = getelementptr i8, ptr %t176, i64 %t169
  %t178 = call i64 @__olang_fmt_i64(ptr %t177, i64 %t161)
  %t179 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t174, 1
  %t182 = extractvalue { i64, ptr } %t180, 0
  %t183 = extractvalue { i64, ptr } %t180, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t190 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %s4, ptr %v3, ptr %t157, { i64, ptr } %t187)
  store { i64, ptr } %t190, ptr %l81
  br label %bb15
bb15:
  %t191 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t191, ptr %l16, !tbaa !27
  %t192 = ptrtoint ptr %s0 to i64
  store i64 %t192, ptr %l82, !tbaa !24
  %t193 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2erecode_2elocal_2e8
  br i1 %t193, label %bb16, label %bb17
bb16:
  %t195 = call ptr @__olang_region_make(ptr %s0)
  %t196 = ptrtoint ptr %t195 to i64
  store i64 %t196, ptr %l82, !tbaa !24
  br label %bb17
bb17:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t199 = load i64, ptr %l15, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t201 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t204 = extractvalue { i64, ptr } %t198, 1
  %t205 = extractvalue { i64, ptr } %t198, 0
  %t206 = add i64 %t202, %t205
  %t207 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  %t209 = add i64 %t206, %t208
  %t211 = call i64 @__olang_fmt_i64(ptr null, i64 %t199)
  %t212 = add i64 %t209, %t211
  %t213 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t217 = extractvalue { i64, ptr } %t200, 1
  %t218 = extractvalue { i64, ptr } %t200, 0
  %t219 = add i64 %t215, %t218
  %t220 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t219)
  call void @olang_textcopy(ptr %t220, ptr %t201, i64 %t202)
  %t221 = getelementptr i8, ptr %t220, i64 %t202
  call void @olang_textcopy(ptr %t221, ptr %t204, i64 %t205)
  %t222 = getelementptr i8, ptr %t221, i64 %t205
  call void @olang_textcopy(ptr %t222, ptr %t207, i64 %t208)
  %t223 = getelementptr i8, ptr %t222, i64 %t208
  %t224 = call i64 @__olang_fmt_i64(ptr %t223, i64 %t199)
  %t225 = getelementptr i8, ptr %t223, i64 %t211
  call void @olang_textcopy(ptr %t225, ptr %t213, i64 %t214)
  %t226 = getelementptr i8, ptr %t225, i64 %t214
  call void @olang_textcopy(ptr %t226, ptr %t217, i64 %t218)
  %t227 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t220, 1
  %t230 = extractvalue { i64, ptr } %t228, 0
  %t231 = extractvalue { i64, ptr } %t228, 1
  %t232 = mul i64 %t230, 1
  %t233 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t232)
  call void @llvm.memcpy.p0.p0.i64(ptr %t233, ptr %t231, i64 %t232, i1 false)
  %t234 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t233, 1
  %t236 = load i64, ptr %l82
  %t237 = inttoptr i64 %t236 to ptr
  %t240 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %t237, ptr %v3, ptr %t197, { i64, ptr } %t235)
  store { i64, ptr } %t240, ptr %l90
  br label %bb18
bb18:
  %t241 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2erecode_2elocal_2e8
  br i1 %t241, label %bb19, label %bb20
bb19:
  %t243 = load i64, ptr %l82
  %t244 = inttoptr i64 %t243 to ptr
  %t245 = load { i64, ptr }, ptr %l90
  %t246 = extractvalue { i64, ptr } %t245, 1
  %t247 = call ptr @__olang_region_or(ptr %t246, ptr null)
  %t248 = icmp ne ptr %t247, null
  %t249 = select i1 %t248, ptr %t247, ptr null
  %t250 = icmp eq ptr %t249, %t244
  call void @__olang_region_settle(ptr %t244, i1 %t250)
  br label %bb20
bb20:
  %t251 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t251, ptr %l92, !tbaa !27
  %t252 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t252, ptr %l8, !tbaa !27
  %t253 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2erecode_2elocal_2e8
  br i1 %t253, label %bb21, label %bb22
bb21:
  %t255 = load { i64, ptr }, ptr %l92
  %t256 = extractvalue { i64, ptr } %t255, 1
  call void @__olang_region_release(ptr %t256)
  store { i64, ptr } zeroinitializer, ptr %l92
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  %t257 = load i64, ptr %l13, !tbaa !24
  %t259 = add i64 %t257, 1
  store i64 %t259, ptr %l13, !tbaa !24
  br label %bb10
bb24:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t263 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t264 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t266 = extractvalue { i64, ptr } %t262, 1
  %t267 = extractvalue { i64, ptr } %t262, 0
  %t268 = add i64 %t264, %t267
  %t269 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t270 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  %t271 = add i64 %t268, %t270
  %t272 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t271)
  call void @olang_textcopy(ptr %t272, ptr %t263, i64 %t264)
  %t273 = getelementptr i8, ptr %t272, i64 %t264
  call void @olang_textcopy(ptr %t273, ptr %t266, i64 %t267)
  %t274 = getelementptr i8, ptr %t273, i64 %t267
  call void @olang_textcopy(ptr %t274, ptr %t269, i64 %t270)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t272, 1
  %t278 = extractvalue { i64, ptr } %t276, 0
  %t279 = extractvalue { i64, ptr } %t276, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t286 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t261, { i64, ptr } %t283)
  store { i64, ptr } %t286, ptr %l100
  br label %bb25
bb25:
  %t287 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t287, ptr %l17, !tbaa !27
  %t288 = load ptr, ptr %l0, !tbaa !29
  store ptr %t288, ptr %l101, !tbaa !29
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t291 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  %t294 = extractvalue { i64, ptr } %t290, 1
  %t295 = extractvalue { i64, ptr } %t290, 0
  %t296 = add i64 %t292, %t295
  %t297 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t298 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  %t299 = add i64 %t296, %t298
  %t300 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t299)
  call void @olang_textcopy(ptr %t300, ptr %t291, i64 %t292)
  %t301 = getelementptr i8, ptr %t300, i64 %t292
  call void @olang_textcopy(ptr %t301, ptr %t294, i64 %t295)
  %t302 = getelementptr i8, ptr %t301, i64 %t295
  call void @olang_textcopy(ptr %t302, ptr %t297, i64 %t298)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t300, 1
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t307 = extractvalue { i64, ptr } %t304, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  %t314 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t289, { i64, ptr } %t311)
  store { i64, ptr } %t314, ptr %l106
  br label %bb26
bb26:
  %t315 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t316 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  %t318 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t319 = extractvalue { i64, ptr } %t318, 1
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t321 = add i64 %t317, %t320
  %t322 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t323 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t324 = add i64 %t321, %t323
  %t326 = extractvalue { i64, ptr } %t315, 1
  %t327 = extractvalue { i64, ptr } %t315, 0
  %t328 = add i64 %t324, %t327
  %t329 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t328)
  call void @olang_textcopy(ptr %t329, ptr %t316, i64 %t317)
  %t330 = getelementptr i8, ptr %t329, i64 %t317
  call void @olang_textcopy(ptr %t330, ptr %t319, i64 %t320)
  %t331 = getelementptr i8, ptr %t330, i64 %t320
  call void @olang_textcopy(ptr %t331, ptr %t322, i64 %t323)
  %t332 = getelementptr i8, ptr %t331, i64 %t323
  call void @olang_textcopy(ptr %t332, ptr %t326, i64 %t327)
  %t333 = insertvalue { i64, ptr } undef, i64 %t328, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t329, 1
  %t336 = extractvalue { i64, ptr } %t334, 0
  %t337 = extractvalue { i64, ptr } %t334, 1
  %t338 = mul i64 %t336, 1
  %t339 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t338)
  call void @llvm.memcpy.p0.p0.i64(ptr %t339, ptr %t337, i64 %t338, i1 false)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t339, 1
  %t342 = load ptr, ptr %l101, !tbaa !29
  %t344 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t342, { i64, ptr } %t341)
  store { i64, ptr } %t344, ptr %l110
  br label %bb27
bb27:
  %t345 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t349 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t352 = extractvalue { i64, ptr } %t347, 1
  %t353 = extractvalue { i64, ptr } %t347, 0
  %t354 = add i64 %t350, %t353
  %t355 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t356 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  %t357 = add i64 %t354, %t356
  %t359 = extractvalue { i64, ptr } %t345, 1
  %t360 = extractvalue { i64, ptr } %t345, 0
  %t361 = add i64 %t357, %t360
  %t362 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t361)
  call void @olang_textcopy(ptr %t362, ptr %t349, i64 %t350)
  %t363 = getelementptr i8, ptr %t362, i64 %t350
  call void @olang_textcopy(ptr %t363, ptr %t352, i64 %t353)
  %t364 = getelementptr i8, ptr %t363, i64 %t353
  call void @olang_textcopy(ptr %t364, ptr %t355, i64 %t356)
  %t365 = getelementptr i8, ptr %t364, i64 %t356
  call void @olang_textcopy(ptr %t365, ptr %t359, i64 %t360)
  %t366 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t367 = insertvalue { i64, ptr } %t366, ptr %t362, 1
  %t369 = extractvalue { i64, ptr } %t367, 0
  %t370 = extractvalue { i64, ptr } %t367, 1
  %t371 = mul i64 %t369, 1
  %t372 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t371)
  call void @llvm.memcpy.p0.p0.i64(ptr %t372, ptr %t370, i64 %t371, i1 false)
  %t373 = insertvalue { i64, ptr } undef, i64 %t369, 0
  %t374 = insertvalue { i64, ptr } %t373, ptr %t372, 1
  %t377 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %v2, ptr %v3, ptr %t346, { i64, ptr } %t374)
  store { i64, ptr } %t377, ptr %l116
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t378 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t378, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2esatMulWide(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l35 = alloca ptr
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca i64
  %l53 = alloca i64
  %l56 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l60 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca { i64, ptr }
  %l68 = alloca i64
  %l71 = alloca { i64, ptr }
  %l74 = alloca i64
  %l77 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = mul i64 2, %t1
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d238, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d238, i32 0, i32 1) }, 0
  %t7 = call i64 @__olang_fmt_i64(ptr null, i64 %t3)
  %t8 = add i64 %t5, %t7
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t4, i64 %t5)
  %t10 = getelementptr i8, ptr %t9, i64 %t5
  %t11 = call i64 @__olang_fmt_i64(ptr %t10, i64 %t3)
  %t12 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t9, 1
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d239, i32 0, i32 1) })
  store i1 %t17, ptr %l15
  br label %bb1
bb1:
  %t18 = load i1, ptr %l15, !tbaa !21
  br i1 %t18, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d240, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb4
bb3:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d241, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb4
bb4:
  %t19 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t19, ptr %l7, !tbaa !27
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t21, 1
  %t27 = extractvalue { i64, ptr } %t21, 0
  %t29 = extractvalue { i64, ptr } %t22, 1
  %t30 = extractvalue { i64, ptr } %t22, 0
  %t31 = add i64 %t27, %t30
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t34 = add i64 %t31, %t33
  %t36 = extractvalue { i64, ptr } %a4, 1
  %t37 = extractvalue { i64, ptr } %a4, 0
  %t38 = add i64 %t34, %t37
  %t39 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t43 = extractvalue { i64, ptr } %t24, 1
  %t44 = extractvalue { i64, ptr } %t24, 0
  %t45 = add i64 %t41, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t26, i64 %t27)
  %t47 = getelementptr i8, ptr %t46, i64 %t27
  call void @olang_textcopy(ptr %t47, ptr %t29, i64 %t30)
  %t48 = getelementptr i8, ptr %t47, i64 %t30
  call void @olang_textcopy(ptr %t48, ptr %t32, i64 %t33)
  %t49 = getelementptr i8, ptr %t48, i64 %t33
  call void @olang_textcopy(ptr %t49, ptr %t36, i64 %t37)
  %t50 = getelementptr i8, ptr %t49, i64 %t37
  call void @olang_textcopy(ptr %t50, ptr %t39, i64 %t40)
  %t51 = getelementptr i8, ptr %t50, i64 %t40
  call void @olang_textcopy(ptr %t51, ptr %t43, i64 %t44)
  %t52 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t46, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = extractvalue { i64, ptr } %t53, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t63 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v6, ptr %t20, { i64, ptr } %t60)
  store { i64, ptr } %t63, ptr %l24
  br label %bb5
bb5:
  %t64 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t64, ptr %l8, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t66, 1
  %t72 = extractvalue { i64, ptr } %t66, 0
  %t74 = extractvalue { i64, ptr } %t67, 1
  %t75 = extractvalue { i64, ptr } %t67, 0
  %t76 = add i64 %t72, %t75
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t81 = extractvalue { i64, ptr } %a5, 1
  %t82 = extractvalue { i64, ptr } %a5, 0
  %t83 = add i64 %t79, %t82
  %t84 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t88 = extractvalue { i64, ptr } %t69, 1
  %t89 = extractvalue { i64, ptr } %t69, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t71, i64 %t72)
  %t92 = getelementptr i8, ptr %t91, i64 %t72
  call void @olang_textcopy(ptr %t92, ptr %t74, i64 %t75)
  %t93 = getelementptr i8, ptr %t92, i64 %t75
  call void @olang_textcopy(ptr %t93, ptr %t77, i64 %t78)
  %t94 = getelementptr i8, ptr %t93, i64 %t78
  call void @olang_textcopy(ptr %t94, ptr %t81, i64 %t82)
  %t95 = getelementptr i8, ptr %t94, i64 %t82
  call void @olang_textcopy(ptr %t95, ptr %t84, i64 %t85)
  %t96 = getelementptr i8, ptr %t95, i64 %t85
  call void @olang_textcopy(ptr %t96, ptr %t88, i64 %t89)
  %t97 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t91, 1
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t101 = extractvalue { i64, ptr } %t98, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  %t108 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v6, ptr %t65, { i64, ptr } %t105)
  store { i64, ptr } %t108, ptr %l32
  br label %bb6
bb6:
  %t109 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t109, ptr %l9, !tbaa !27
  %t110 = ptrtoint ptr %s0 to i64
  store i64 %t110, ptr %l33, !tbaa !24
  %t111 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2esatMulWide_2elocal_2e10
  br i1 %t111, label %bb7, label %bb8
bb7:
  %t113 = call ptr @__olang_region_make(ptr %s0)
  %t114 = ptrtoint ptr %t113 to i64
  store i64 %t114, ptr %l33, !tbaa !24
  br label %bb8
bb8:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l35, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t116, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d246, i32 0, i32 1) })
  store i1 %t118, ptr %l37
  br label %bb9
bb9:
  %t119 = load i1, ptr %l37, !tbaa !21
  br i1 %t119, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d247, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb12
bb11:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d248, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb12
bb12:
  %t120 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t123 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d249, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d249, i32 0, i32 1) }, 0
  %t125 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = add i64 %t124, %t127
  %t130 = extractvalue { i64, ptr } %t120, 1
  %t131 = extractvalue { i64, ptr } %t120, 0
  %t132 = add i64 %t128, %t131
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d250, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d250, i32 0, i32 1) }, 0
  %t135 = add i64 %t132, %t134
  %t137 = extractvalue { i64, ptr } %t121, 1
  %t138 = extractvalue { i64, ptr } %t121, 0
  %t139 = add i64 %t135, %t138
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d251, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d251, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t144 = extractvalue { i64, ptr } %t122, 1
  %t145 = extractvalue { i64, ptr } %t122, 0
  %t146 = add i64 %t142, %t145
  %t147 = load i64, ptr %l33
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = call ptr @__olang_scope_alloc(ptr %t148, i64 %t146)
  call void @olang_textcopy(ptr %t149, ptr %t123, i64 %t124)
  %t150 = getelementptr i8, ptr %t149, i64 %t124
  call void @olang_textcopy(ptr %t150, ptr %t126, i64 %t127)
  %t151 = getelementptr i8, ptr %t150, i64 %t127
  call void @olang_textcopy(ptr %t151, ptr %t130, i64 %t131)
  %t152 = getelementptr i8, ptr %t151, i64 %t131
  call void @olang_textcopy(ptr %t152, ptr %t133, i64 %t134)
  %t153 = getelementptr i8, ptr %t152, i64 %t134
  call void @olang_textcopy(ptr %t153, ptr %t137, i64 %t138)
  %t154 = getelementptr i8, ptr %t153, i64 %t138
  call void @olang_textcopy(ptr %t154, ptr %t140, i64 %t141)
  %t155 = getelementptr i8, ptr %t154, i64 %t141
  call void @olang_textcopy(ptr %t155, ptr %t144, i64 %t145)
  %t156 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t149, 1
  %t159 = load i64, ptr %l33
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = extractvalue { i64, ptr } %t157, 0
  %t162 = extractvalue { i64, ptr } %t157, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %t160, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t167 = load i64, ptr %l33
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = load i64, ptr %l33
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = load ptr, ptr %l35, !tbaa !29
  %t173 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %t168, ptr %t170, ptr %v6, ptr %t171, { i64, ptr } %t166)
  store { i64, ptr } %t173, ptr %l44
  br label %bb13
bb13:
  %t174 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2esatMulWide_2elocal_2e10
  br i1 %t174, label %bb14, label %bb15
bb14:
  %t176 = load i64, ptr %l33
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = load { i64, ptr }, ptr %l44
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = call ptr @__olang_region_or(ptr %t179, ptr null)
  %t181 = icmp ne ptr %t180, null
  %t182 = select i1 %t181, ptr %t180, ptr null
  %t183 = icmp eq ptr %t182, %t177
  call void @__olang_region_settle(ptr %t177, i1 %t183)
  br label %bb15
bb15:
  %t184 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t184, ptr %l10, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t187 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t185, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d252, i32 0, i32 1) })
  store i1 %t187, ptr %l47
  br label %bb16
bb16:
  %t188 = load i1, ptr %l47, !tbaa !21
  br i1 %t188, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t189 = ptrtoint ptr %s0 to i64
  store i64 %t189, ptr %l48, !tbaa !24
  %t190 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2esatMulWide_2elocal_2e10
  br i1 %t190, label %bb19, label %bb20
bb18:
  store %olang.scope zeroinitializer, ptr %s6
  %t192 = ptrtoint ptr %s0 to i64
  store i64 %t192, ptr %l60, !tbaa !24
  %t193 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2esatMulWide_2elocal_2e10
  br i1 %t193, label %bb26, label %bb27
bb19:
  %t195 = call ptr @__olang_region_make(ptr %s0)
  %t196 = ptrtoint ptr %t195 to i64
  store i64 %t196, ptr %l48, !tbaa !24
  br label %bb20
bb20:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t199 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t200 = load i64, ptr %l3, !tbaa !24
  store i64 %t200, ptr %l53, !tbaa !24
  %t201 = load i64, ptr %l53, !tbaa !24
  %t202 = load i64, ptr %l53, !tbaa !24
  %t203 = shl i64 1, %t202
  %t205 = sub i64 %t203, 1
  %t206 = load i64, ptr %l48
  %t207 = inttoptr i64 %t206 to ptr
  %t212 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eminMax(ptr %v0, ptr %s5, ptr %s0, ptr %s0, ptr %t207, ptr %v6, ptr %t197, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d253, i32 0, i32 1) }, { i64, ptr } %t198, { i64, ptr } %t199, i64 %t205)
  store { i64, ptr } %t212, ptr %l56
  br label %bb21
bb21:
  %t213 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2esatMulWide_2elocal_2e10
  br i1 %t213, label %bb22, label %bb23
bb22:
  %t215 = load i64, ptr %l48
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = load { i64, ptr }, ptr %l56
  %t218 = extractvalue { i64, ptr } %t217, 1
  %t219 = call ptr @__olang_region_or(ptr %t218, ptr null)
  %t220 = icmp ne ptr %t219, null
  %t221 = select i1 %t220, ptr %t219, ptr null
  %t222 = icmp eq ptr %t221, %t216
  call void @__olang_region_settle(ptr %t216, i1 %t222)
  br label %bb23
bb23:
  %t223 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t223, ptr %l58, !tbaa !27
  %t224 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t224, ptr %l10, !tbaa !27
  %t225 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2esatMulWide_2elocal_2e10
  br i1 %t225, label %bb24, label %bb25
bb24:
  %t227 = load { i64, ptr }, ptr %l58
  %t228 = extractvalue { i64, ptr } %t227, 1
  call void @__olang_region_release(ptr %t228)
  store { i64, ptr } zeroinitializer, ptr %l58
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb34
bb26:
  %t229 = call ptr @__olang_region_make(ptr %s0)
  %t230 = ptrtoint ptr %t229 to i64
  store i64 %t230, ptr %l60, !tbaa !24
  br label %bb27
bb27:
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l62, !tbaa !29
  %t232 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t232, ptr %l63, !tbaa !27
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t235 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t236 = load i64, ptr %l3, !tbaa !24
  %t238 = sub i64 %t236, 1
  store i64 %t238, ptr %l68, !tbaa !24
  %t239 = load i64, ptr %l68, !tbaa !24
  %t240 = load i64, ptr %l68, !tbaa !24
  %t241 = shl i64 1, %t240
  %t243 = sub i64 %t241, 1
  %t248 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eminMax(ptr %v0, ptr %s6, ptr %s0, ptr %s0, ptr %s6, ptr %v6, ptr %t233, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d254, i32 0, i32 1) }, { i64, ptr } %t234, { i64, ptr } %t235, i64 %t243)
  store { i64, ptr } %t248, ptr %l71
  br label %bb28
bb28:
  %t249 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t249, 0
  %t251 = extractvalue { i64, ptr } %t249, 1
  %t252 = mul i64 %t250, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t252)
  call void @llvm.memcpy.p0.p0.i64(ptr %t253, ptr %t251, i64 %t252, i1 false)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  %t256 = load i64, ptr %l3, !tbaa !24
  %t258 = sub i64 %t256, 1
  store i64 %t258, ptr %l74, !tbaa !24
  %t259 = load i64, ptr %l74, !tbaa !24
  %t260 = load i64, ptr %l74, !tbaa !24
  %t261 = shl i64 1, %t260
  %t263 = sub i64 0, %t261
  %t264 = load i64, ptr %l60
  %t265 = inttoptr i64 %t264 to ptr
  %t266 = load ptr, ptr %l62, !tbaa !29
  %t267 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t270 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eminMax(ptr %v0, ptr %s6, ptr %s0, ptr %s6, ptr %t265, ptr %v6, ptr %t266, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d255, i32 0, i32 1) }, { i64, ptr } %t267, { i64, ptr } %t255, i64 %t263)
  store { i64, ptr } %t270, ptr %l77
  br label %bb29
bb29:
  %t271 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2esatMulWide_2elocal_2e10
  br i1 %t271, label %bb30, label %bb31
bb30:
  %t273 = load i64, ptr %l60
  %t274 = inttoptr i64 %t273 to ptr
  %t275 = load { i64, ptr }, ptr %l77
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = call ptr @__olang_region_or(ptr %t276, ptr null)
  %t278 = icmp ne ptr %t277, null
  %t279 = select i1 %t278, ptr %t277, ptr null
  %t280 = icmp eq ptr %t279, %t274
  call void @__olang_region_settle(ptr %t274, i1 %t280)
  br label %bb31
bb31:
  %t281 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t281, ptr %l79, !tbaa !27
  %t282 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t282, ptr %l10, !tbaa !27
  %t283 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2esatMulWide_2elocal_2e10
  br i1 %t283, label %bb32, label %bb33
bb32:
  %t285 = load { i64, ptr }, ptr %l79
  %t286 = extractvalue { i64, ptr } %t285, 1
  call void @__olang_region_release(ptr %t286)
  store { i64, ptr } zeroinitializer, ptr %l79
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb34:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t289 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t290 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t291 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t294 = extractvalue { i64, ptr } %t288, 1
  %t295 = extractvalue { i64, ptr } %t288, 0
  %t296 = add i64 %t292, %t295
  %t297 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t298 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t299 = add i64 %t296, %t298
  %t301 = extractvalue { i64, ptr } %t289, 1
  %t302 = extractvalue { i64, ptr } %t289, 0
  %t303 = add i64 %t299, %t302
  %t304 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d258, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d258, i32 0, i32 1) }, 0
  %t306 = add i64 %t303, %t305
  %t308 = extractvalue { i64, ptr } %t290, 1
  %t309 = extractvalue { i64, ptr } %t290, 0
  %t310 = add i64 %t306, %t309
  %t311 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t310)
  call void @olang_textcopy(ptr %t311, ptr %t291, i64 %t292)
  %t312 = getelementptr i8, ptr %t311, i64 %t292
  call void @olang_textcopy(ptr %t312, ptr %t294, i64 %t295)
  %t313 = getelementptr i8, ptr %t312, i64 %t295
  call void @olang_textcopy(ptr %t313, ptr %t297, i64 %t298)
  %t314 = getelementptr i8, ptr %t313, i64 %t298
  call void @olang_textcopy(ptr %t314, ptr %t301, i64 %t302)
  %t315 = getelementptr i8, ptr %t314, i64 %t302
  call void @olang_textcopy(ptr %t315, ptr %t304, i64 %t305)
  %t316 = getelementptr i8, ptr %t315, i64 %t305
  call void @olang_textcopy(ptr %t316, ptr %t308, i64 %t309)
  %t317 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t311, 1
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t321 = extractvalue { i64, ptr } %t318, 1
  %t322 = mul i64 %t320, 1
  %t323 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t322)
  call void @llvm.memcpy.p0.p0.i64(ptr %t323, ptr %t321, i64 %t322, i1 false)
  %t324 = insertvalue { i64, ptr } undef, i64 %t320, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t323, 1
  %t328 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %v5, ptr %v6, ptr %t287, { i64, ptr } %t325)
  store { i64, ptr } %t328, ptr %l87
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t329 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t329, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2escopeAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/source:Span"
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l40 = alloca ptr
  %l43 = alloca %"compiler/mir:ScopeInfo"
  %l48 = alloca i1
  %l52 = alloca i1
  %l58 = alloca i1
  %l61 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l2, !tbaa !24
  store i32 2147483647, ptr %l3, !tbaa !23
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 21
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr %l13, !tbaa !24
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
  store i64 0, ptr %l17, !tbaa !24
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
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l20, !tbaa !24
  store i64 %t33, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l17, !tbaa !24
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
  br label %bb27
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
  %t55 = getelementptr %"compiler/emit:fnEm", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/mir:Fn", ptr %t56, i32 0, i32 8
  store ptr %t58, ptr %l40, !tbaa !29
  %t59 = load i64, ptr %l9, !tbaa !24
  %t60 = load ptr, ptr %l40, !tbaa !29
  %t61 = call ptr @__olang_scope_or(ptr %v1, ptr %t60)
  %t62 = ptrtoint ptr %t61 to i64
  %t64 = inttoptr i64 %t62 to ptr
  %t65 = load ptr, ptr %l40, !tbaa !29
  %t67 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t64, ptr %t65, i64 %t59)
  store %"compiler/mir:ScopeInfo" %t67, ptr %l43
  br label %bb12
bb12:
  %t68 = getelementptr %"compiler/mir:ScopeInfo", ptr %l43, i32 0, i32 3
  %t69 = load %"compiler/source:Span", ptr %t68
  store %"compiler/source:Span" %t69, ptr %l10
  %t71 = load i32, ptr %l1, !tbaa !23
  %t72 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t73 = load i32, ptr %t72, !tbaa !23
  %t76 = icmp slt i32 %t71, %t73
  br i1 %t76, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb15
bb14:
  %t78 = load i32, ptr %l1, !tbaa !23
  %t79 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t80 = load i32, ptr %t79, !tbaa !23
  %t83 = icmp sge i32 %t78, %t80
  store i1 %t83, ptr %l48, !tbaa !21
  br label %bb15
bb15:
  %t85 = load i1, ptr %l48, !tbaa !21
  br i1 %t85, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb18
bb17:
  %t86 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t89 = load i32, ptr %t88, !tbaa !23
  %t92 = sub i32 %t87, %t89
  %t93 = load i32, ptr %l3, !tbaa !23
  %t96 = icmp sge i32 %t92, %t93
  store i1 %t96, ptr %l52, !tbaa !21
  br label %bb18
bb18:
  %t98 = load i1, ptr %l52, !tbaa !21
  br i1 %t98, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb22
bb20:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2elexical(ptr %v0, ptr %v1, ptr %t99, i64 %t100)
  store i1 %t103, ptr %l61
  br label %bb21
bb21:
  %t104 = load i1, ptr %l61, !tbaa !21
  %t105 = xor i1 %t104, true
  store i1 %t105, ptr %l58, !tbaa !21
  br label %bb22
bb22:
  %t107 = load i1, ptr %l58, !tbaa !21
  br i1 %t107, label %bb23, label %bb24
bb23:
  br label %bb26
bb24:
  br label %bb25
bb25:
  %t108 = load i64, ptr %l9, !tbaa !24
  store i64 %t108, ptr %l2, !tbaa !24
  %t110 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t111 = load i32, ptr %t110, !tbaa !23
  %t112 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t113 = load i32, ptr %t112, !tbaa !23
  %t116 = sub i32 %t111, %t113
  store i32 %t116, ptr %l3, !tbaa !23
  br label %bb26
bb26:
  %t118 = load i64, ptr %l8, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l8, !tbaa !24
  br label %bb8
bb27:
  %t122 = load i64, ptr %l2, !tbaa !24
  store i64 %t122, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2eslotCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Call" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Call"
  %l2 = alloca ptr
  %l3 = alloca { i64, [7 x i64] }
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i32
  %l11 = alloca i64
  %l16 = alloca i32
  %l20 = alloca i32
  %l27 = alloca i32
  %l35 = alloca i1
  %l38 = alloca i1
  %l41 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca i32
  %l50 = alloca ptr
  %l53 = alloca i1
  %l55 = alloca i1
  %l56 = alloca ptr
  %l59 = alloca i1
  %l60 = alloca i1
  %l61 = alloca ptr
  %l64 = alloca i1
  %l65 = alloca i1
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca i64
  %l74 = alloca i64
  %l82 = alloca i1
  %l86 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/mir:Call" %a1, ptr %l1
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
  store ptr %t7, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 0
  %t10 = load { i64, [7 x i64] }, ptr %t9
  store { i64, [7 x i64] } %t10, ptr %l3
  %t12 = load { i64, [7 x i64] }, ptr %l3
  %t14 = extractvalue { i64, [7 x i64] } %t12, 0
  %t15 = icmp eq i64 %t14, 0
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = getelementptr { i64, [7 x i64] }, ptr %l3, i32 0, i32 1
  %t18 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t17, i32 0, i32 0
  %t19 = load { i64, [2 x i64] }, ptr %t18
  store { i64, [2 x i64] } %t19, ptr %l4
  br label %bb3
bb2:
  br label %bb16
bb3:
  %t21 = load { i64, [2 x i64] }, ptr %l4
  %t23 = extractvalue { i64, [2 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 3
  br i1 %t24, label %bb4, label %bb5
bb4:
  %t26 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t27 = getelementptr { i32, i32 }, ptr %t26, i32 0, i32 0
  %t28 = load i32, ptr %t27, !range !{i32 0, i32 8}
  store i32 %t28, ptr %l5
  %t30 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t31 = getelementptr { i32, i32 }, ptr %t30, i32 0, i32 1
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l6, !tbaa !23
  br label %bb6
bb5:
  br label %bb10
bb6:
  %t34 = load i32, ptr %l5, !range !{i32 0, i32 8}
  %t36 = trunc i64 4 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb7, label %bb8
bb7:
  %t39 = load i32, ptr %l6, !tbaa !23
  store i32 %t39, ptr %l27, !tbaa !23
  br label %bb9
bb8:
  %t41 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t41, ptr %l27, !tbaa !23
  br label %bb9
bb9:
  %t43 = load i32, ptr %l27, !tbaa !23
  store i32 %t43, ptr %l20, !tbaa !23
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t44, ptr %l20, !tbaa !23
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_b9f3dbc2e93b92cd_66187346ebf9cfe1)
  unreachable
bb15:
  %t46 = load i32, ptr %l20, !tbaa !23
  store i32 %t46, ptr %l16, !tbaa !23
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t47, ptr %l16, !tbaa !23
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_96197af7424aa9c_b080309cba8f3a50)
  unreachable
bb21:
  %t49 = load i32, ptr %l16, !tbaa !23
  store i32 %t49, ptr %l7, !tbaa !23
  %t50 = load i32, ptr %l7, !tbaa !23
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t54 = icmp eq i32 %t50, %t51
  br i1 %t54, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb24
bb23:
  %t56 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 2
  %t57 = getelementptr %"compiler/mir:Range", ptr %t56, i32 0, i32 1
  %t58 = load i32, ptr %t57, !tbaa !23
  %t60 = icmp ne i32 %t58, 1
  store i1 %t60, ptr %l35, !tbaa !21
  br label %bb24
bb24:
  %t62 = load i1, ptr %l35, !tbaa !21
  br i1 %t62, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb27
bb26:
  %t63 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 4
  %t64 = load i1, ptr %t63, !tbaa !21
  %t66 = xor i1 %t64, true
  store i1 %t66, ptr %l38, !tbaa !21
  br label %bb27
bb27:
  %t68 = load i1, ptr %l38, !tbaa !21
  br i1 %t68, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb30
bb29:
  %t69 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 3
  %t70 = getelementptr %"compiler/mir:Lvalue", ptr %t69, i32 0, i32 1
  %t71 = getelementptr %"compiler/mir:Range", ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71, !tbaa !23
  %t74 = icmp ne i32 %t72, 0
  store i1 %t74, ptr %l41, !tbaa !21
  br label %bb30
bb30:
  %t76 = load i1, ptr %l41, !tbaa !21
  br i1 %t76, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t78 = load ptr, ptr %l2, !tbaa !29
  store ptr %t78, ptr %l45, !tbaa !29
  %t79 = load i32, ptr %l7, !tbaa !23
  %t80 = load ptr, ptr %l45, !tbaa !29
  %t81 = call ptr @__olang_scope_or(ptr %v1, ptr %t80)
  %t82 = ptrtoint ptr %t81 to i64
  %t84 = inttoptr i64 %t82 to ptr
  %t85 = load ptr, ptr %l45, !tbaa !29
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t84, ptr %t85, i32 %t79)
  store i32 %t87, ptr %l48
  br label %bb34
bb34:
  %t88 = load i32, ptr %l48, !tbaa !23
  store i32 %t88, ptr %l8, !tbaa !23
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/emit:fnEm", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  store ptr %t92, ptr %l50, !tbaa !29
  %t93 = load i32, ptr %l8, !tbaa !23
  %t94 = load ptr, ptr %l50, !tbaa !29
  %t95 = call ptr @__olang_scope_or(ptr %v1, ptr %t94)
  %t96 = ptrtoint ptr %t95 to i64
  %t98 = inttoptr i64 %t96 to ptr
  %t99 = load ptr, ptr %l50, !tbaa !29
  %t101 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenType(ptr %t98, ptr %t99, i32 %t93)
  store i1 %t101, ptr %l53
  br label %bb35
bb35:
  %t102 = load i1, ptr %l53, !tbaa !21
  %t103 = xor i1 %t102, true
  br i1 %t103, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb39
bb37:
  %t105 = load ptr, ptr %l2, !tbaa !29
  store ptr %t105, ptr %l56, !tbaa !29
  %t106 = load i32, ptr %l8, !tbaa !23
  %t107 = load ptr, ptr %l56, !tbaa !29
  %t108 = call ptr @__olang_scope_or(ptr %v1, ptr %t107)
  %t109 = ptrtoint ptr %t108 to i64
  %t111 = inttoptr i64 %t109 to ptr
  %t112 = load ptr, ptr %l56, !tbaa !29
  %t114 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %t111, ptr %t112, i32 %t106)
  store i1 %t114, ptr %l59
  br label %bb38
bb38:
  %t115 = load i1, ptr %l59, !tbaa !21
  store i1 %t115, ptr %l55, !tbaa !21
  br label %bb39
bb39:
  %t116 = load i1, ptr %l55, !tbaa !21
  br i1 %t116, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb43
bb41:
  %t117 = load ptr, ptr %l2, !tbaa !29
  store ptr %t117, ptr %l61, !tbaa !29
  %t118 = load i32, ptr %l8, !tbaa !23
  %t119 = load ptr, ptr %l61, !tbaa !29
  %t120 = call ptr @__olang_scope_or(ptr %v1, ptr %t119)
  %t121 = ptrtoint ptr %t120 to i64
  %t123 = inttoptr i64 %t121 to ptr
  %t124 = load ptr, ptr %l61, !tbaa !29
  %t126 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %t123, ptr %t124, i32 %t118)
  store i1 %t126, ptr %l64
  br label %bb42
bb42:
  %t127 = load i1, ptr %l64, !tbaa !21
  store i1 %t127, ptr %l60, !tbaa !21
  br label %bb43
bb43:
  %t128 = load i1, ptr %l60, !tbaa !21
  br i1 %t128, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb48
bb45:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l8, !tbaa !23
  %t133 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3afnEm_2egenLeaves(ptr %v0, ptr %s0, ptr %v1, ptr %t129, i32 %t130)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %l68
  br label %bb46
bb46:
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s0, ptr %l68)
  store i64 %t135, ptr %l70
  br label %bb47
bb47:
  %t136 = load i64, ptr %l70, !tbaa !24
  %t137 = icmp eq i64 %t136, 0
  store i1 %t137, ptr %l65, !tbaa !21
  br label %bb48
bb48:
  %t139 = load i1, ptr %l65, !tbaa !21
  br i1 %t139, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t141 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 3
  %t142 = getelementptr %"compiler/mir:Lvalue", ptr %t141, i32 0, i32 0
  %t143 = load { i64, [2 x i64] }, ptr %t142
  store { i64, [2 x i64] } %t143, ptr %l9
  %t145 = load { i64, [2 x i64] }, ptr %l9
  %t147 = extractvalue { i64, [2 x i64] } %t145, 0
  %t148 = icmp eq i64 %t147, 1
  br i1 %t148, label %bb52, label %bb53
bb52:
  %t150 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t151 = getelementptr { i32 }, ptr %t150, i32 0, i32 0
  %t152 = load i32, ptr %t151
  store i32 %t152, ptr %l10, !tbaa !23
  br label %bb54
bb53:
  br label %bb55
bb54:
  %t154 = load i32, ptr %l10, !tbaa !23
  %t156 = sext i32 %t154 to i64
  store i64 %t156, ptr %l74, !tbaa !24
  br label %bb60
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  store i64 -1, ptr %l74, !tbaa !24
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_4a9082f792731fd7_7c42022e8195998b)
  unreachable
bb60:
  %t158 = load i64, ptr %l74, !tbaa !24
  store i64 %t158, ptr %l11, !tbaa !24
  %t159 = load i64, ptr %l11, !tbaa !24
  %t161 = icmp slt i64 %t159, 0
  br i1 %t161, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb64
bb62:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i64, ptr %l11, !tbaa !24
  %t165 = load i32, ptr %l8, !tbaa !23
  %t169 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2enewOnce(ptr %v0, ptr %v2, ptr %v1, ptr %t163, i64 %t164, i32 %t165)
  store i1 %t169, ptr %l86
  br label %bb63
bb63:
  %t170 = load i1, ptr %l86, !tbaa !21
  %t171 = xor i1 %t170, true
  store i1 %t171, ptr %l82, !tbaa !21
  br label %bb64
bb64:
  %t173 = load i1, ptr %l82, !tbaa !21
  br i1 %t173, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  %t175 = load i64, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t175, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2espawn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, %"compiler/mir:Task" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/mir:Task"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, [7 x i64] }
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca { i64, [4 x i64] }
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l33 = alloca { i64, [1 x i64] }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l36 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca { { i64, ptr }, i32 }
  %l42 = alloca { i64, ptr }
  %l43 = alloca i32
  %l44 = alloca i32
  %l45 = alloca i32
  %l46 = alloca i32
  %l47 = alloca i32
  %l49 = alloca { i64, [4 x i64] }
  %l50 = alloca { i64, ptr }
  %l51 = alloca i32
  %l52 = alloca i32
  %l53 = alloca i32
  %l54 = alloca i32
  %l55 = alloca i32
  %l56 = alloca i32
  %l57 = alloca { i64, [1 x i64] }
  %l58 = alloca { i64, ptr }
  %l59 = alloca %"std/prelude/text:StringBuilder"
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l80 = alloca i64
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l106 = alloca i64
  %l108 = alloca ptr
  %l111 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l121 = alloca i64
  %l123 = alloca ptr
  %l127 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l138 = alloca i32
  %l142 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l150 = alloca ptr
  %l151 = alloca ptr
  %l154 = alloca i32
  %l159 = alloca { i64, ptr }
  %l160 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l161 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l171 = alloca i64
  %l174 = alloca i64
  %l192 = alloca ptr
  %l193 = alloca i64
  %l196 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l201 = alloca ptr
  %l202 = alloca i64
  %l205 = alloca { i64, ptr }
  %l208 = alloca i1
  %l209 = alloca { i64, ptr }
  %l210 = alloca { i64, ptr }
  %l212 = alloca ptr
  %l216 = alloca { i64, [4 x i64] }
  %l217 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l224 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l229 = alloca i32
  %l232 = alloca i32
  %l252 = alloca ptr
  %l259 = alloca { i64, [1 x i64] }
  %l264 = alloca ptr
  %l266 = alloca ptr
  %l269 = alloca { i64, ptr }
  %l272 = alloca { i64, ptr }
  %l273 = alloca ptr
  %l274 = alloca i64
  %l279 = alloca ptr
  %l280 = alloca i64
  %l291 = alloca i32
  %l294 = alloca i32
  %l313 = alloca ptr
  %l316 = alloca ptr
  %l323 = alloca %"compiler/mir:Lvalue"
  %l324 = alloca { { i64, ptr }, i32 }
  %l326 = alloca ptr
  %l327 = alloca i64
  %l338 = alloca i32
  %l341 = alloca i32
  %l361 = alloca ptr
  %l368 = alloca %"compiler/mir:TaskClause"
  %l374 = alloca ptr
  %l375 = alloca i64
  %l377 = alloca ptr
  %l378 = alloca { i64, [4 x i64] }
  %l381 = alloca i32
  %l382 = alloca { i64, ptr }
  %l387 = alloca i64
  %l395 = alloca i32
  %l398 = alloca i32
  %l418 = alloca ptr
  %l425 = alloca { i64, [1 x i64] }
  %l430 = alloca i32
  %l432 = alloca i64
  %l435 = alloca ptr
  %l437 = alloca ptr
  %l440 = alloca { i64, ptr }
  %l443 = alloca { i64, ptr }
  %l444 = alloca ptr
  %l445 = alloca i64
  %l450 = alloca i32
  %l452 = alloca i64
  %l454 = alloca ptr
  %l455 = alloca i64
  %l462 = alloca %"std/prelude/text:StringBuilder"
  %l465 = alloca i64
  %l469 = alloca i64
  %l472 = alloca i64
  %l493 = alloca ptr
  %l496 = alloca { i64, ptr }
  %l500 = alloca i64
  %l505 = alloca { i64, ptr }
  %l506 = alloca ptr
  %l508 = alloca ptr
  %l513 = alloca { i64, ptr }
  %l516 = alloca { i64, ptr }
  %l522 = alloca { i64, ptr }
  %l524 = alloca i64
  %l526 = alloca i64
  %l530 = alloca i64
  %l533 = alloca i64
  %l557 = alloca { i64, ptr }
  %l560 = alloca { i64, ptr }
  %l561 = alloca i1
  %l562 = alloca ptr
  %l563 = alloca { i64, ptr }
  %l564 = alloca { i64, ptr }
  %l568 = alloca i32
  %l574 = alloca { i64, [4 x i64] }
  %l575 = alloca ptr
  %l578 = alloca { i64, ptr }
  %l581 = alloca { i64, ptr }
  %l589 = alloca { i64, ptr }
  %l590 = alloca { i64, ptr }
  %l593 = alloca i64
  %l595 = alloca i64
  %l600 = alloca { i64, ptr }
  %l605 = alloca { i64, ptr }
  %l609 = alloca ptr
  %l610 = alloca { i64, ptr }
  %l615 = alloca { i64, ptr }
  %l617 = alloca { i64, ptr }
  %l618 = alloca { i64, ptr }
  %l619 = alloca i64
  %l620 = alloca { i64, ptr }
  %l624 = alloca ptr
  %l625 = alloca { i64, ptr }
  %l630 = alloca { i64, ptr }
  %l632 = alloca ptr
  %l637 = alloca { i64, ptr }
  %l639 = alloca ptr
  %l644 = alloca { i64, ptr }
  %l646 = alloca ptr
  %l651 = alloca { i64, ptr }
  %l653 = alloca ptr
  %l654 = alloca { i64, ptr }
  %l655 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l657 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l658 = alloca i1
  %l659 = alloca { i64, ptr }
  %l660 = alloca i32
  %l662 = alloca i64
  %l663 = alloca %"compiler/mir:Task"
  %l666 = alloca ptr
  %l670 = alloca %"compiler/mir:ScopeInfo"
  %l673 = alloca { i64, ptr }
  %l674 = alloca ptr
  %l676 = alloca ptr
  %l679 = alloca { i64, ptr }
  %l687 = alloca ptr
  %l692 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s49 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %t802 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/mir:Task" %a2, ptr %l2
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
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l4, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d259, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d259, i32 0, i32 1) }, 0
  %t18 = sext i32 %t14 to i64
  %t19 = call i64 @__olang_fmt_i64(ptr null, i64 %t18)
  %t20 = add i64 %t16, %t19
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  call void @olang_textcopy(ptr %t21, ptr %t15, i64 %t16)
  %t22 = getelementptr i8, ptr %t21, i64 %t16
  %t23 = call i64 @__olang_fmt_i64(ptr %t22, i64 %t18)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t21, 1
  store { i64, ptr } %t25, ptr %l5, !tbaa !27
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t27, ptr %l6, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d260, i32 0, i32 1) }, ptr %l93, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t29, ptr %l7, !tbaa !27
  store i1 false, ptr %l8, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d261, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t31, ptr %l9, !tbaa !27
  %t33 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 0
  %t34 = load { i64, [7 x i64] }, ptr %t33
  store { i64, [7 x i64] } %t34, ptr %l10
  %t36 = load { i64, [7 x i64] }, ptr %l10
  %t38 = extractvalue { i64, [7 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 0
  br i1 %t39, label %bb1, label %bb2
bb1:
  %t41 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t42 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t41, i32 0, i32 0
  %t43 = load { i64, [2 x i64] }, ptr %t42
  store { i64, [2 x i64] } %t43, ptr %l11
  %t45 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t46 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t45, i32 0, i32 1
  %t47 = load i32, ptr %t46
  store i32 %t47, ptr %l12, !tbaa !23
  br label %bb3
bb2:
  br label %bb12
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load ptr, ptr %l4, !tbaa !29
  store ptr %t49, ptr %l102, !tbaa !29
  %t50 = load { i64, [2 x i64] }, ptr %l11
  %t51 = load ptr, ptr %l102, !tbaa !29
  %t52 = call ptr @__olang_scope_or(ptr %v1, ptr %t51)
  %t53 = ptrtoint ptr %t52 to i64
  %t55 = inttoptr i64 %t53 to ptr
  %t56 = load ptr, ptr %l102, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %t55, ptr %t56, { i64, [2 x i64] } %t50)
  br label %bb4
bb4:
  %t58 = load i32, ptr %l12, !tbaa !23
  store i32 %t58, ptr %l6, !tbaa !23
  %t60 = ptrtoint ptr %s0 to i64
  store i64 %t60, ptr %l106, !tbaa !24
  %t61 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e7
  br i1 %t61, label %bb5, label %bb6
bb5:
  %t63 = call ptr @__olang_region_make(ptr %s0)
  %t64 = ptrtoint ptr %t63 to i64
  store i64 %t64, ptr %l106, !tbaa !24
  br label %bb6
bb6:
  %t65 = load ptr, ptr %l4, !tbaa !29
  store ptr %t65, ptr %l108, !tbaa !29
  %t66 = load { i64, [2 x i64] }, ptr %l11
  %t67 = load ptr, ptr %l108, !tbaa !29
  %t68 = call ptr @__olang_scope_or(ptr %v1, ptr %t67)
  %t69 = ptrtoint ptr %t68 to i64
  %t71 = inttoptr i64 %t69 to ptr
  %t72 = load ptr, ptr %l108, !tbaa !29
  %t74 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %t71, ptr %s2, ptr %t72, { i64, [2 x i64] } %t66)
  store { i64, ptr } %t74, ptr %l111
  br label %bb7
bb7:
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
  %t77 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t80 = add i64 %t76, %t79
  %t81 = load i64, ptr %l106
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = call ptr @__olang_scope_alloc(ptr %t82, i64 %t80)
  call void @olang_textcopy(ptr %t83, ptr %t75, i64 %t76)
  %t84 = getelementptr i8, ptr %t83, i64 %t76
  call void @olang_textcopy(ptr %t84, ptr %t78, i64 %t79)
  %t85 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t83, 1
  store { i64, ptr } %t86, ptr %l112, !tbaa !27
  %t87 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e7
  br i1 %t87, label %bb8, label %bb9
bb8:
  %t89 = load i64, ptr %l106
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = load { i64, ptr }, ptr %l112
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = call ptr @__olang_region_or(ptr %t92, ptr null)
  %t94 = icmp ne ptr %t93, null
  %t95 = select i1 %t94, ptr %t93, ptr null
  %t96 = icmp eq ptr %t95, %t90
  call void @__olang_region_settle(ptr %t90, i1 %t96)
  br label %bb9
bb9:
  %t97 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t97, ptr %l114, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t98, ptr %l7, !tbaa !27
  %t99 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e7
  br i1 %t99, label %bb10, label %bb11
bb10:
  %t101 = load { i64, ptr }, ptr %l114
  %t102 = extractvalue { i64, ptr } %t101, 1
  call void @__olang_region_release(ptr %t102)
  store { i64, ptr } zeroinitializer, ptr %l114
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb38
bb12:
  %t103 = load { i64, [7 x i64] }, ptr %l10
  %t105 = extractvalue { i64, [7 x i64] } %t103, 0
  %t106 = icmp eq i64 %t105, 1
  br i1 %t106, label %bb13, label %bb14
bb13:
  %t108 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t109 = getelementptr { i64, i32 }, ptr %t108, i32 0, i32 0
  %t110 = load i64, ptr %t109
  store i64 %t110, ptr %l13, !tbaa !24
  %t112 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t113 = getelementptr { i64, i32 }, ptr %t112, i32 0, i32 1
  %t114 = load i32, ptr %t113
  store i32 %t114, ptr %l14, !tbaa !23
  br label %bb15
bb14:
  br label %bb24
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t116 = load i32, ptr %l14, !tbaa !23
  store i32 %t116, ptr %l6, !tbaa !23
  %t118 = ptrtoint ptr %s0 to i64
  store i64 %t118, ptr %l121, !tbaa !24
  %t119 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e7
  br i1 %t119, label %bb16, label %bb17
bb16:
  %t121 = call ptr @__olang_region_make(ptr %s0)
  %t122 = ptrtoint ptr %t121 to i64
  store i64 %t122, ptr %l121, !tbaa !24
  br label %bb17
bb17:
  %t123 = load ptr, ptr %l4, !tbaa !29
  store ptr %t123, ptr %l123, !tbaa !29
  %t124 = load i64, ptr %l13, !tbaa !24
  %t125 = load i32, ptr %l14, !tbaa !23
  %t126 = load ptr, ptr %l123, !tbaa !29
  %t127 = call ptr @__olang_scope_or(ptr %v1, ptr %t126)
  %t128 = ptrtoint ptr %t127 to i64
  %t130 = inttoptr i64 %t128 to ptr
  %t131 = load ptr, ptr %l123, !tbaa !29
  %t134 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eextern(ptr %t130, ptr %s4, ptr %t131, i64 %t124, i32 %t125)
  store { i64, ptr } %t134, ptr %l127
  br label %bb18
bb18:
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t137 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = add i64 %t136, %t139
  %t141 = load i64, ptr %l121
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = call ptr @__olang_scope_alloc(ptr %t142, i64 %t140)
  call void @olang_textcopy(ptr %t143, ptr %t135, i64 %t136)
  %t144 = getelementptr i8, ptr %t143, i64 %t136
  call void @olang_textcopy(ptr %t144, ptr %t138, i64 %t139)
  %t145 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t143, 1
  store { i64, ptr } %t146, ptr %l128, !tbaa !27
  %t147 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e7
  br i1 %t147, label %bb19, label %bb20
bb19:
  %t149 = load i64, ptr %l121
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = load { i64, ptr }, ptr %l128
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = call ptr @__olang_region_or(ptr %t152, ptr null)
  %t154 = icmp ne ptr %t153, null
  %t155 = select i1 %t154, ptr %t153, ptr null
  %t156 = icmp eq ptr %t155, %t150
  call void @__olang_region_settle(ptr %t150, i1 %t156)
  br label %bb20
bb20:
  %t157 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t157, ptr %l130, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t158, ptr %l7, !tbaa !27
  %t159 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e7
  br i1 %t159, label %bb21, label %bb22
bb21:
  %t161 = load { i64, ptr }, ptr %l130
  %t162 = extractvalue { i64, ptr } %t161, 1
  call void @__olang_region_release(ptr %t162)
  store { i64, ptr } zeroinitializer, ptr %l130
  br label %bb22
bb22:
  %t163 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s4, ptr %v1, ptr %t163, { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d264, i32 0, i32 1) })
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb24:
  %t165 = load { i64, [7 x i64] }, ptr %l10
  %t167 = extractvalue { i64, [7 x i64] } %t165, 0
  %t168 = icmp eq i64 %t167, 2
  br i1 %t168, label %bb25, label %bb26
bb25:
  %t170 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t171 = getelementptr { { i64, [4 x i64] } }, ptr %t170, i32 0, i32 0
  %t172 = load { i64, [4 x i64] }, ptr %t171
  store { i64, [4 x i64] } %t172, ptr %l15
  br label %bb27
bb26:
  br label %bb32
bb27:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load { i64, [4 x i64] }, ptr %l15
  %t178 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %v2, ptr %v1, ptr %t174, { i64, [4 x i64] } %t175)
  store i32 %t178, ptr %l138
  br label %bb28
bb28:
  %t179 = load i32, ptr %l138, !tbaa !23
  store i32 %t179, ptr %l6, !tbaa !23
  store i1 true, ptr %l8, !tbaa !21
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load { i64, [4 x i64] }, ptr %l15
  %t182 = load i32, ptr %l6, !tbaa !23
  %t186 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %v2, ptr %v1, ptr %t180, { i64, [4 x i64] } %t181, i32 %t182)
  store { i64, ptr } %t186, ptr %l142
  br label %bb29
bb29:
  %t187 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t187, ptr %l143, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t188, ptr %l9, !tbaa !27
  %t189 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e9
  br i1 %t189, label %bb30, label %bb31
bb30:
  %t191 = load { i64, ptr }, ptr %l143
  %t192 = extractvalue { i64, ptr } %t191, 1
  call void @__olang_region_release(ptr %t192)
  store { i64, ptr } zeroinitializer, ptr %l143
  br label %bb31
bb31:
  br label %bb38
bb32:
  %t193 = load { i64, [7 x i64] }, ptr %l10
  %t195 = extractvalue { i64, [7 x i64] } %t193, 0
  %t196 = icmp eq i64 %t195, 3
  br i1 %t196, label %bb33, label %bb34
bb33:
  %t198 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t199 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t198, i32 0, i32 2
  %t200 = load i32, ptr %t199
  store i32 %t200, ptr %l16, !tbaa !23
  br label %bb35
bb34:
  br label %bb37
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t202 = load i32, ptr %l16, !tbaa !23
  store i32 %t202, ptr %l6, !tbaa !23
  %t204 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s7, ptr %v1, ptr %t204, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d265, i32 0, i32 1) })
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_e0bde991406b3b8f_e6287fb3b91b7a9b)
  unreachable
bb38:
  %t206 = load ptr, ptr %l3, !tbaa !29
  store ptr %t206, ptr %l150, !tbaa !29
  %t207 = load ptr, ptr %l3, !tbaa !29
  store ptr %t207, ptr %l151, !tbaa !29
  %t208 = load i32, ptr %l6, !tbaa !23
  %t209 = load ptr, ptr %l151, !tbaa !29
  %t210 = call ptr @__olang_scope_or(ptr %v1, ptr %t209)
  %t211 = ptrtoint ptr %t210 to i64
  %t213 = inttoptr i64 %t211 to ptr
  %t214 = load ptr, ptr %l151, !tbaa !29
  %t216 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %t213, ptr %t214, i32 %t208)
  store i32 %t216, ptr %l154
  br label %bb39
bb39:
  %t217 = load ptr, ptr %l150, !tbaa !29
  %t218 = call ptr @__olang_scope_or(ptr %v1, ptr %t217)
  %t219 = ptrtoint ptr %t218 to i64
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/emit:fnEm", ptr %t220, i32 0, i32 0
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = call ptr @__olang_scope_or(ptr %v1, ptr %t223)
  %t226 = ptrtoint ptr %t225 to i64
  %t228 = inttoptr i64 %t219 to ptr
  %t230 = inttoptr i64 %t226 to ptr
  %t231 = load ptr, ptr %l150, !tbaa !29
  %t232 = load i32, ptr %l154, !tbaa !23
  %t233 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t228, ptr %t230, ptr %t231, i32 %t232)
  store { i64, ptr } %t233, ptr %l159
  br label %bb40
bb40:
  %t234 = load { i64, ptr }, ptr %l159, !tbaa !27
  store { i64, ptr } %t234, ptr %l17, !tbaa !27
  %t235 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t235, ptr %l160
  br label %bb41
bb41:
  %t236 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l160
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %l18
  %t237 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t237, ptr %l161
  br label %bb42
bb42:
  %t238 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l161
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l19
  %t239 = load i1, ptr %l8, !tbaa !21
  br i1 %t239, label %bb43, label %bb44
bb43:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d266, i32 0, i32 1) })
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t242 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l19, { i64, ptr } %t242)
  br label %bb46
bb46:
  br label %bb47
bb47:
  store i64 0, ptr %l20, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  store i64 %t247, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t249 = load i64, ptr %l21, !tbaa !24
  %t250 = load i64, ptr %l20, !tbaa !24
  %t253 = icmp sgt i64 %t249, %t250
  br i1 %t253, label %bb48, label %bb49
bb48:
  %t255 = load i64, ptr %l22, !tbaa !24
  %t257 = icmp sgt i64 %t255, 0
  br i1 %t257, label %bb50, label %bb51
bb49:
  store i64 0, ptr %l171, !tbaa !24
  br label %bb53
bb50:
  %t259 = load i64, ptr %l21, !tbaa !24
  %t260 = load i64, ptr %l20, !tbaa !24
  %t263 = sub i64 %t259, %t260
  %t264 = load i64, ptr %l22, !tbaa !24
  %t267 = add i64 %t263, %t264
  %t269 = sub i64 %t267, 1
  %t270 = load i64, ptr %l22, !tbaa !24
  %t273 = sdiv i64 %t269, %t270
  store i64 %t273, ptr %l174, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l174, !tbaa !24
  br label %bb52
bb52:
  %t275 = load i64, ptr %l174, !tbaa !24
  store i64 %t275, ptr %l171, !tbaa !24
  br label %bb53
bb53:
  %t276 = load i64, ptr %l171, !tbaa !24
  store i64 %t276, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb54
bb54:
  %t277 = load i64, ptr %l24, !tbaa !24
  %t278 = load i64, ptr %l23, !tbaa !24
  %t281 = icmp slt i64 %t277, %t278
  %t283 = xor i1 %t281, true
  br i1 %t283, label %bb55, label %bb56
bb55:
  br label %bb72
bb56:
  br label %bb57
bb57:
  %t285 = load i64, ptr %l20, !tbaa !24
  %t286 = load i64, ptr %l24, !tbaa !24
  %t287 = load i64, ptr %l22, !tbaa !24
  %t290 = mul i64 %t286, %t287
  %t293 = add i64 %t285, %t290
  store i64 %t293, ptr %l25, !tbaa !24
  store ptr %l18, ptr %l192, !tbaa !29
  %t295 = ptrtoint ptr %s0 to i64
  store i64 %t295, ptr %l193, !tbaa !24
  %t296 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t296, label %bb58, label %bb59
bb58:
  %t298 = call ptr @__olang_region_make(ptr %s0)
  %t299 = ptrtoint ptr %t298 to i64
  store i64 %t299, ptr %l193, !tbaa !24
  br label %bb59
bb59:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t301, ptr %l196, !tbaa !27
  %t302 = load i64, ptr %l25, !tbaa !24
  %t304 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = getelementptr i32, ptr %t305, i64 %t302
  %t307 = load i32, ptr %t306, !tbaa !33
  %t308 = load i64, ptr %l193
  %t309 = inttoptr i64 %t308 to ptr
  %t312 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %t309, ptr %v1, ptr %t300, i32 %t307)
  store { i64, ptr } %t312, ptr %l199
  br label %bb60
bb60:
  %t313 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t314 = load i64, ptr %l193
  %t315 = inttoptr i64 %t314 to ptr
  %t316 = extractvalue { i64, ptr } %t313, 0
  %t317 = extractvalue { i64, ptr } %t313, 1
  %t318 = mul i64 %t316, 1
  %t319 = call ptr @__olang_scope_alloc(ptr %t315, i64 %t318)
  call void @llvm.memcpy.p0.p0.i64(ptr %t319, ptr %t317, i64 %t318, i1 false)
  %t320 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t319, 1
  %t322 = load ptr, ptr %l192, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t322, { i64, ptr } %t321)
  br label %bb61
bb61:
  store ptr %l19, ptr %l201, !tbaa !29
  %t324 = ptrtoint ptr %s0 to i64
  store i64 %t324, ptr %l202, !tbaa !24
  %t325 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t325, label %bb62, label %bb63
bb62:
  %t327 = call ptr @__olang_region_make(ptr %s0)
  %t328 = ptrtoint ptr %t327 to i64
  store i64 %t328, ptr %l202, !tbaa !24
  br label %bb63
bb63:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t330, ptr %l205, !tbaa !27
  %t331 = load i64, ptr %l25, !tbaa !24
  %t333 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr i32, ptr %t334, i64 %t331
  %t336 = load i32, ptr %t335, !tbaa !33
  %t339 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %v1, ptr %t329, i32 %t336)
  store i1 %t339, ptr %l208
  br label %bb64
bb64:
  %t340 = load i1, ptr %l208, !tbaa !21
  br i1 %t340, label %bb65, label %bb66
bb65:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d267, i32 0, i32 1) }, ptr %l210, !tbaa !27
  %t341 = load { i64, ptr }, ptr %l210, !tbaa !27
  store { i64, ptr } %t341, ptr %l209, !tbaa !27
  br label %bb69
bb66:
  %t343 = load ptr, ptr %l0, !tbaa !29
  store ptr %t343, ptr %l212, !tbaa !29
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 1
  %t346 = load %"compiler/mir:Range", ptr %t345
  %t347 = load i64, ptr %l25, !tbaa !24
  %t351 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v2, ptr %t344, %"compiler/mir:Range" %t346, i64 %t347)
  store { i64, [4 x i64] } %t351, ptr %l216
  br label %bb67
bb67:
  %t352 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t352, ptr %l217, !tbaa !27
  %t353 = load i64, ptr %l25, !tbaa !24
  %t355 = getelementptr { i64, ptr }, ptr %l217, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = getelementptr i32, ptr %t356, i64 %t353
  %t358 = load i32, ptr %t357, !tbaa !33
  %t359 = load ptr, ptr %l212, !tbaa !29
  %t360 = load { i64, [4 x i64] }, ptr %l216
  %t362 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %v2, ptr %v1, ptr %t359, { i64, [4 x i64] } %t360, i32 %t358)
  store { i64, ptr } %t362, ptr %l220
  br label %bb68
bb68:
  %t363 = load { i64, ptr }, ptr %l220, !tbaa !27
  store { i64, ptr } %t363, ptr %l209, !tbaa !27
  br label %bb69
bb69:
  %t364 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t365 = load i64, ptr %l202
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = extractvalue { i64, ptr } %t364, 0
  %t368 = extractvalue { i64, ptr } %t364, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %t366, i64 %t369)
  call void @llvm.memcpy.p0.p0.i64(ptr %t370, ptr %t368, i64 %t369, i1 false)
  %t371 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t370, 1
  %t373 = load ptr, ptr %l201, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t373, { i64, ptr } %t372)
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t375 = load i64, ptr %l24, !tbaa !24
  %t377 = add i64 %t375, 1
  store i64 %t377, ptr %l24, !tbaa !24
  br label %bb54
bb72:
  %t379 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t379, ptr %l224
  br label %bb73
bb73:
  %t380 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l224
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t380, ptr %l26
  store i32 0, ptr %l27, !tbaa !23
  %t381 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 2
  %t382 = getelementptr %"compiler/mir:Range", ptr %t381, i32 0, i32 1
  %t383 = load i32, ptr %t382, !tbaa !23
  store i32 %t383, ptr %l28, !tbaa !23
  store i32 1, ptr %l29, !tbaa !23
  %t385 = load i32, ptr %l28, !tbaa !23
  %t386 = load i32, ptr %l27, !tbaa !23
  %t389 = icmp sgt i32 %t385, %t386
  br i1 %t389, label %bb74, label %bb75
bb74:
  %t391 = load i32, ptr %l29, !tbaa !23
  %t393 = icmp sgt i32 %t391, 0
  br i1 %t393, label %bb76, label %bb77
bb75:
  store i32 0, ptr %l229, !tbaa !23
  br label %bb79
bb76:
  %t395 = load i32, ptr %l28, !tbaa !23
  %t396 = load i32, ptr %l27, !tbaa !23
  %t399 = sub i32 %t395, %t396
  %t400 = load i32, ptr %l29, !tbaa !23
  %t403 = add i32 %t399, %t400
  %t405 = sub i32 %t403, 1
  %t406 = load i32, ptr %l29, !tbaa !23
  %t409 = sdiv i32 %t405, %t406
  store i32 %t409, ptr %l232, !tbaa !23
  br label %bb78
bb77:
  store i32 0, ptr %l232, !tbaa !23
  br label %bb78
bb78:
  %t411 = load i32, ptr %l232, !tbaa !23
  store i32 %t411, ptr %l229, !tbaa !23
  br label %bb79
bb79:
  %t412 = load i32, ptr %l229, !tbaa !23
  store i32 %t412, ptr %l30, !tbaa !23
  store i32 0, ptr %l31, !tbaa !23
  br label %bb80
bb80:
  %t413 = load i32, ptr %l31, !tbaa !23
  %t414 = load i32, ptr %l30, !tbaa !23
  %t417 = icmp slt i32 %t413, %t414
  %t419 = xor i1 %t417, true
  br i1 %t419, label %bb81, label %bb82
bb81:
  br label %bb106
bb82:
  br label %bb83
bb83:
  %t421 = load i32, ptr %l27, !tbaa !23
  %t422 = load i32, ptr %l31, !tbaa !23
  %t423 = load i32, ptr %l29, !tbaa !23
  %t426 = mul i32 %t422, %t423
  %t429 = add i32 %t421, %t426
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t433 = getelementptr %"compiler/emit:fnEm", ptr %t431, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !29
  %t436 = getelementptr %"compiler/mir:Fn", ptr %t434, i32 0, i32 12
  store ptr %t436, ptr %l252, !tbaa !29
  %t437 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 2
  %t438 = getelementptr %"compiler/mir:Range", ptr %t437, i32 0, i32 0
  %t439 = load i32, ptr %t438, !tbaa !23
  %t441 = sext i32 %t439 to i64
  %t444 = sext i32 %t429 to i64
  %t447 = add i64 %t441, %t444
  %t448 = load ptr, ptr %l252, !tbaa !29
  %t449 = call ptr @__olang_scope_or(ptr %v2, ptr %t448)
  %t450 = ptrtoint ptr %t449 to i64
  %t452 = inttoptr i64 %t450 to ptr
  %t453 = load ptr, ptr %l252, !tbaa !29
  %t455 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t452, ptr %t453, i64 %t447)
  store { i64, [1 x i64] } %t455, ptr %l259
  br label %bb84
bb84:
  %t456 = load { i64, [1 x i64] }, ptr %l259
  store { i64, [1 x i64] } %t456, ptr %l33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d268, i32 0, i32 1) })
  br label %bb85
bb85:
  %t458 = load { i64, [1 x i64] }, ptr %l33
  %t460 = extractvalue { i64, [1 x i64] } %t458, 0
  %t461 = icmp eq i64 %t460, 2
  br i1 %t461, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb90
bb88:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l19, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d269, i32 0, i32 1) })
  br label %bb89
bb89:
  br label %bb104
bb90:
  br i1 true, label %bb91, label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb103
bb93:
  store %olang.scope zeroinitializer, ptr %s15
  %t464 = load ptr, ptr %l4, !tbaa !29
  store ptr %t464, ptr %l264, !tbaa !29
  %t465 = load ptr, ptr %l264, !tbaa !29
  %t466 = call ptr @__olang_scope_or(ptr %v1, ptr %t465)
  %t467 = ptrtoint ptr %t466 to i64
  %t469 = inttoptr i64 %t467 to ptr
  %t470 = load ptr, ptr %l264, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %t469, ptr %s15, ptr %s15, ptr %t470, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d270, i32 0, i32 1) }, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d271, i32 0, i32 1) })
  br label %bb94
bb94:
  %t471 = load ptr, ptr %l0, !tbaa !29
  store ptr %t471, ptr %l266, !tbaa !29
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t473 = load { i64, [1 x i64] }, ptr %l33
  %t476 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s15, ptr %v1, ptr %v2, ptr %t472, { i64, [1 x i64] } %t473)
  store { i64, ptr } %t476, ptr %l269
  br label %bb95
bb95:
  %t477 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d272, i32 0, i32 1) }, 1
  %t478 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d272, i32 0, i32 1) }, 0
  %t479 = load { i64, ptr }, ptr %l269, !tbaa !27
  %t480 = extractvalue { i64, ptr } %t479, 1
  %t481 = extractvalue { i64, ptr } %t479, 0
  %t482 = add i64 %t478, %t481
  %t483 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d273, i32 0, i32 1) }, 1
  %t484 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d273, i32 0, i32 1) }, 0
  %t485 = add i64 %t482, %t484
  %t486 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t485)
  call void @olang_textcopy(ptr %t486, ptr %t477, i64 %t478)
  %t487 = getelementptr i8, ptr %t486, i64 %t478
  call void @olang_textcopy(ptr %t487, ptr %t480, i64 %t481)
  %t488 = getelementptr i8, ptr %t487, i64 %t481
  call void @olang_textcopy(ptr %t488, ptr %t483, i64 %t484)
  %t489 = insertvalue { i64, ptr } undef, i64 %t485, 0
  %t490 = insertvalue { i64, ptr } %t489, ptr %t486, 1
  %t492 = extractvalue { i64, ptr } %t490, 0
  %t493 = extractvalue { i64, ptr } %t490, 1
  %t494 = mul i64 %t492, 1
  %t495 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t494)
  call void @llvm.memcpy.p0.p0.i64(ptr %t495, ptr %t493, i64 %t494, i1 false)
  %t496 = insertvalue { i64, ptr } undef, i64 %t492, 0
  %t497 = insertvalue { i64, ptr } %t496, ptr %t495, 1
  %t498 = load ptr, ptr %l266, !tbaa !29
  %t500 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s15, ptr %s15, ptr %v1, ptr %t498, { i64, ptr } %t497)
  store { i64, ptr } %t500, ptr %l272
  br label %bb96
bb96:
  %t501 = load { i64, ptr }, ptr %l272, !tbaa !27
  store { i64, ptr } %t501, ptr %l34, !tbaa !27
  store ptr %l26, ptr %l273, !tbaa !29
  %t502 = ptrtoint ptr %s0 to i64
  store i64 %t502, ptr %l274, !tbaa !24
  %t503 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t503, label %bb97, label %bb98
bb97:
  %t505 = call ptr @__olang_region_make(ptr %s0)
  %t506 = ptrtoint ptr %t505 to i64
  store i64 %t506, ptr %l274, !tbaa !24
  br label %bb98
bb98:
  %t507 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t509 = extractvalue { i64, ptr } %t507, 1
  %t510 = extractvalue { i64, ptr } %t507, 0
  %t511 = load i64, ptr %l274
  %t512 = inttoptr i64 %t511 to ptr
  %t513 = call ptr @__olang_scope_alloc(ptr %t512, i64 %t510)
  call void @olang_textcopy(ptr %t513, ptr %t509, i64 %t510)
  %t514 = insertvalue { i64, ptr } undef, i64 %t510, 0
  %t515 = insertvalue { i64, ptr } %t514, ptr %t513, 1
  %t517 = load i64, ptr %l274
  %t518 = inttoptr i64 %t517 to ptr
  %t519 = extractvalue { i64, ptr } %t515, 0
  %t520 = extractvalue { i64, ptr } %t515, 1
  %t521 = mul i64 %t519, 1
  %t522 = call ptr @__olang_scope_alloc(ptr %t518, i64 %t521)
  call void @llvm.memcpy.p0.p0.i64(ptr %t522, ptr %t520, i64 %t521, i1 false)
  %t523 = insertvalue { i64, ptr } undef, i64 %t519, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t522, 1
  %t525 = load ptr, ptr %l273, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t525, { i64, ptr } %t524)
  br label %bb99
bb99:
  store ptr %l19, ptr %l279, !tbaa !29
  %t527 = ptrtoint ptr %s0 to i64
  store i64 %t527, ptr %l280, !tbaa !24
  %t528 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t528, label %bb100, label %bb101
bb100:
  %t530 = call ptr @__olang_region_make(ptr %s0)
  %t531 = ptrtoint ptr %t530 to i64
  store i64 %t531, ptr %l280, !tbaa !24
  br label %bb101
bb101:
  %t532 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t534 = extractvalue { i64, ptr } %t532, 1
  %t535 = extractvalue { i64, ptr } %t532, 0
  %t536 = load i64, ptr %l280
  %t537 = inttoptr i64 %t536 to ptr
  %t538 = call ptr @__olang_scope_alloc(ptr %t537, i64 %t535)
  call void @olang_textcopy(ptr %t538, ptr %t534, i64 %t535)
  %t539 = insertvalue { i64, ptr } undef, i64 %t535, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t538, 1
  %t542 = load i64, ptr %l280
  %t543 = inttoptr i64 %t542 to ptr
  %t544 = extractvalue { i64, ptr } %t540, 0
  %t545 = extractvalue { i64, ptr } %t540, 1
  %t546 = mul i64 %t544, 1
  %t547 = call ptr @__olang_scope_alloc(ptr %t543, i64 %t546)
  call void @llvm.memcpy.p0.p0.i64(ptr %t547, ptr %t545, i64 %t546, i1 false)
  %t548 = insertvalue { i64, ptr } undef, i64 %t544, 0
  %t549 = insertvalue { i64, ptr } %t548, ptr %t547, 1
  %t550 = load ptr, ptr %l279, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t550, { i64, ptr } %t549)
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s15)
  br label %bb104
bb103:
  call void @__olang_check_failed(ptr @olang_loc_a90a878cc09c574e_a9a55cce621e609a)
  unreachable
bb104:
  br label %bb105
bb105:
  %t552 = load i32, ptr %l31, !tbaa !23
  %t554 = add i32 %t552, 1
  store i32 %t554, ptr %l31, !tbaa !23
  br label %bb80
bb106:
  store i32 0, ptr %l35, !tbaa !23
  %t556 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 3
  %t557 = getelementptr %"compiler/mir:Range", ptr %t556, i32 0, i32 1
  %t558 = load i32, ptr %t557, !tbaa !23
  store i32 %t558, ptr %l36, !tbaa !23
  store i32 1, ptr %l37, !tbaa !23
  %t560 = load i32, ptr %l36, !tbaa !23
  %t561 = load i32, ptr %l35, !tbaa !23
  %t564 = icmp sgt i32 %t560, %t561
  br i1 %t564, label %bb107, label %bb108
bb107:
  %t566 = load i32, ptr %l37, !tbaa !23
  %t568 = icmp sgt i32 %t566, 0
  br i1 %t568, label %bb109, label %bb110
bb108:
  store i32 0, ptr %l291, !tbaa !23
  br label %bb112
bb109:
  %t570 = load i32, ptr %l36, !tbaa !23
  %t571 = load i32, ptr %l35, !tbaa !23
  %t574 = sub i32 %t570, %t571
  %t575 = load i32, ptr %l37, !tbaa !23
  %t578 = add i32 %t574, %t575
  %t580 = sub i32 %t578, 1
  %t581 = load i32, ptr %l37, !tbaa !23
  %t584 = sdiv i32 %t580, %t581
  store i32 %t584, ptr %l294, !tbaa !23
  br label %bb111
bb110:
  store i32 0, ptr %l294, !tbaa !23
  br label %bb111
bb111:
  %t586 = load i32, ptr %l294, !tbaa !23
  store i32 %t586, ptr %l291, !tbaa !23
  br label %bb112
bb112:
  %t587 = load i32, ptr %l291, !tbaa !23
  store i32 %t587, ptr %l38, !tbaa !23
  store i32 0, ptr %l39, !tbaa !23
  br label %bb113
bb113:
  store %olang.scope zeroinitializer, ptr %s21
  %t588 = load i32, ptr %l39, !tbaa !23
  %t589 = load i32, ptr %l38, !tbaa !23
  %t592 = icmp slt i32 %t588, %t589
  %t594 = xor i1 %t592, true
  br i1 %t594, label %bb114, label %bb115
bb114:
  call void @__olang_scope_close(ptr %s21)
  br label %bb124
bb115:
  br label %bb116
bb116:
  %t596 = load i32, ptr %l35, !tbaa !23
  %t597 = load i32, ptr %l39, !tbaa !23
  %t598 = load i32, ptr %l37, !tbaa !23
  %t601 = mul i32 %t597, %t598
  %t604 = add i32 %t596, %t601
  store i32 %t604, ptr %l40, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d274, i32 0, i32 1) })
  br label %bb117
bb117:
  %t607 = load ptr, ptr %l0, !tbaa !29
  store ptr %t607, ptr %l313, !tbaa !29
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t610 = getelementptr %"compiler/emit:fnEm", ptr %t608, i32 0, i32 1
  %t611 = load ptr, ptr %t610, !tbaa !29
  %t613 = getelementptr %"compiler/mir:Fn", ptr %t611, i32 0, i32 13
  store ptr %t613, ptr %l316, !tbaa !29
  %t614 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 3
  %t615 = getelementptr %"compiler/mir:Range", ptr %t614, i32 0, i32 0
  %t616 = load i32, ptr %t615, !tbaa !23
  %t618 = sext i32 %t616 to i64
  %t619 = load i32, ptr %l40, !tbaa !23
  %t621 = sext i32 %t619 to i64
  %t624 = add i64 %t618, %t621
  %t625 = load ptr, ptr %l316, !tbaa !29
  %t626 = call ptr @__olang_scope_or(ptr %v2, ptr %t625)
  %t627 = ptrtoint ptr %t626 to i64
  %t629 = inttoptr i64 %t627 to ptr
  %t630 = load ptr, ptr %l316, !tbaa !29
  %t632 = call %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %t629, ptr %t630, i64 %t624)
  store %"compiler/mir:Lvalue" %t632, ptr %l323
  br label %bb118
bb118:
  %t633 = load ptr, ptr %l313, !tbaa !29
  %t634 = load %"compiler/mir:Lvalue", ptr %l323
  %t635 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s21, ptr %v2, ptr %v1, ptr %t633, %"compiler/mir:Lvalue" %t634)
  store { { i64, ptr }, i32 } %t635, ptr %l324
  br label %bb119
bb119:
  %t636 = load { { i64, ptr }, i32 }, ptr %l324
  store { { i64, ptr }, i32 } %t636, ptr %l41
  %t637 = getelementptr { { i64, ptr }, i32 }, ptr %l41, i32 0, i32 0
  %t638 = load { i64, ptr }, ptr %t637, !tbaa !27
  store { i64, ptr } %t638, ptr %l42, !tbaa !27
  store ptr %l19, ptr %l326, !tbaa !29
  %t640 = ptrtoint ptr %s0 to i64
  store i64 %t640, ptr %l327, !tbaa !24
  %t641 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t641, label %bb120, label %bb121
bb120:
  %t643 = call ptr @__olang_region_make(ptr %s0)
  %t644 = ptrtoint ptr %t643 to i64
  store i64 %t644, ptr %l327, !tbaa !24
  br label %bb121
bb121:
  %t645 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t647 = extractvalue { i64, ptr } %t645, 1
  %t648 = extractvalue { i64, ptr } %t645, 0
  %t649 = load i64, ptr %l327
  %t650 = inttoptr i64 %t649 to ptr
  %t651 = call ptr @__olang_scope_alloc(ptr %t650, i64 %t648)
  call void @olang_textcopy(ptr %t651, ptr %t647, i64 %t648)
  %t652 = insertvalue { i64, ptr } undef, i64 %t648, 0
  %t653 = insertvalue { i64, ptr } %t652, ptr %t651, 1
  %t655 = load i64, ptr %l327
  %t656 = inttoptr i64 %t655 to ptr
  %t657 = extractvalue { i64, ptr } %t653, 0
  %t658 = extractvalue { i64, ptr } %t653, 1
  %t659 = mul i64 %t657, 1
  %t660 = call ptr @__olang_scope_alloc(ptr %t656, i64 %t659)
  call void @llvm.memcpy.p0.p0.i64(ptr %t660, ptr %t658, i64 %t659, i1 false)
  %t661 = insertvalue { i64, ptr } undef, i64 %t657, 0
  %t662 = insertvalue { i64, ptr } %t661, ptr %t660, 1
  %t663 = load ptr, ptr %l326, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t663, { i64, ptr } %t662)
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s21)
  br label %bb123
bb123:
  %t665 = load i32, ptr %l39, !tbaa !23
  %t667 = add i32 %t665, 1
  store i32 %t667, ptr %l39, !tbaa !23
  br label %bb113
bb124:
  store i32 0, ptr %l43, !tbaa !23
  %t669 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 4
  %t670 = getelementptr %"compiler/mir:Range", ptr %t669, i32 0, i32 1
  %t671 = load i32, ptr %t670, !tbaa !23
  store i32 %t671, ptr %l44, !tbaa !23
  store i32 1, ptr %l45, !tbaa !23
  %t673 = load i32, ptr %l44, !tbaa !23
  %t674 = load i32, ptr %l43, !tbaa !23
  %t677 = icmp sgt i32 %t673, %t674
  br i1 %t677, label %bb125, label %bb126
bb125:
  %t679 = load i32, ptr %l45, !tbaa !23
  %t681 = icmp sgt i32 %t679, 0
  br i1 %t681, label %bb127, label %bb128
bb126:
  store i32 0, ptr %l338, !tbaa !23
  br label %bb130
bb127:
  %t683 = load i32, ptr %l44, !tbaa !23
  %t684 = load i32, ptr %l43, !tbaa !23
  %t687 = sub i32 %t683, %t684
  %t688 = load i32, ptr %l45, !tbaa !23
  %t691 = add i32 %t687, %t688
  %t693 = sub i32 %t691, 1
  %t694 = load i32, ptr %l45, !tbaa !23
  %t697 = sdiv i32 %t693, %t694
  store i32 %t697, ptr %l341, !tbaa !23
  br label %bb129
bb128:
  store i32 0, ptr %l341, !tbaa !23
  br label %bb129
bb129:
  %t699 = load i32, ptr %l341, !tbaa !23
  store i32 %t699, ptr %l338, !tbaa !23
  br label %bb130
bb130:
  %t700 = load i32, ptr %l338, !tbaa !23
  store i32 %t700, ptr %l46, !tbaa !23
  store i32 0, ptr %l47, !tbaa !23
  br label %bb131
bb131:
  %t701 = load i32, ptr %l47, !tbaa !23
  %t702 = load i32, ptr %l46, !tbaa !23
  %t705 = icmp slt i32 %t701, %t702
  %t707 = xor i1 %t705, true
  br i1 %t707, label %bb132, label %bb133
bb132:
  br label %bb146
bb133:
  br label %bb134
bb134:
  %t709 = load i32, ptr %l43, !tbaa !23
  %t710 = load i32, ptr %l47, !tbaa !23
  %t711 = load i32, ptr %l45, !tbaa !23
  %t714 = mul i32 %t710, %t711
  %t717 = add i32 %t709, %t714
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t721 = getelementptr %"compiler/emit:fnEm", ptr %t719, i32 0, i32 1
  %t722 = load ptr, ptr %t721, !tbaa !29
  %t724 = getelementptr %"compiler/mir:Fn", ptr %t722, i32 0, i32 17
  store ptr %t724, ptr %l361, !tbaa !29
  %t725 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 4
  %t726 = getelementptr %"compiler/mir:Range", ptr %t725, i32 0, i32 0
  %t727 = load i32, ptr %t726, !tbaa !23
  %t729 = sext i32 %t727 to i64
  %t732 = sext i32 %t717 to i64
  %t735 = add i64 %t729, %t732
  %t736 = load ptr, ptr %l361, !tbaa !29
  %t737 = call ptr @__olang_scope_or(ptr %v2, ptr %t736)
  %t738 = ptrtoint ptr %t737 to i64
  %t740 = inttoptr i64 %t738 to ptr
  %t741 = load ptr, ptr %l361, !tbaa !29
  %t743 = call %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %t740, ptr %t741, i64 %t735)
  store %"compiler/mir:TaskClause" %t743, ptr %l368
  br label %bb135
bb135:
  %t744 = getelementptr %"compiler/mir:TaskClause", ptr %l368, i32 0, i32 2
  %t745 = load { i64, [4 x i64] }, ptr %t744
  store { i64, [4 x i64] } %t745, ptr %l49
  %t747 = load { i64, [4 x i64] }, ptr %l49
  %t749 = extractvalue { i64, [4 x i64] } %t747, 0
  %t750 = icmp eq i64 %t749, 0
  %t752 = xor i1 %t750, true
  br i1 %t752, label %bb136, label %bb137
bb136:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d275, i32 0, i32 1) })
  br label %bb138
bb137:
  br label %bb144
bb138:
  store ptr %l19, ptr %l374, !tbaa !29
  %t755 = ptrtoint ptr %s0 to i64
  store i64 %t755, ptr %l375, !tbaa !24
  %t756 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t756, label %bb139, label %bb140
bb139:
  %t758 = call ptr @__olang_region_make(ptr %s0)
  %t759 = ptrtoint ptr %t758 to i64
  store i64 %t759, ptr %l375, !tbaa !24
  br label %bb140
bb140:
  %t760 = load ptr, ptr %l0, !tbaa !29
  store ptr %t760, ptr %l377, !tbaa !29
  %t761 = load { i64, [4 x i64] }, ptr %l49
  store { i64, [4 x i64] } %t761, ptr %l378
  %t762 = load ptr, ptr %l0, !tbaa !29
  %t763 = load { i64, [4 x i64] }, ptr %l49
  %t766 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %v2, ptr %v1, ptr %t762, { i64, [4 x i64] } %t763)
  store i32 %t766, ptr %l381
  br label %bb141
bb141:
  %t767 = load i64, ptr %l375
  %t768 = inttoptr i64 %t767 to ptr
  %t769 = load ptr, ptr %l377, !tbaa !29
  %t770 = load { i64, [4 x i64] }, ptr %l378
  %t771 = load i32, ptr %l381, !tbaa !23
  %t772 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %t768, ptr %v2, ptr %v1, ptr %t769, { i64, [4 x i64] } %t770, i32 %t771)
  store { i64, ptr } %t772, ptr %l382
  br label %bb142
bb142:
  %t773 = load { i64, ptr }, ptr %l382, !tbaa !27
  %t774 = load i64, ptr %l375
  %t775 = inttoptr i64 %t774 to ptr
  %t776 = extractvalue { i64, ptr } %t773, 0
  %t777 = extractvalue { i64, ptr } %t773, 1
  %t778 = mul i64 %t776, 1
  %t779 = call ptr @__olang_scope_alloc(ptr %t775, i64 %t778)
  call void @llvm.memcpy.p0.p0.i64(ptr %t779, ptr %t777, i64 %t778, i1 false)
  %t780 = insertvalue { i64, ptr } undef, i64 %t776, 0
  %t781 = insertvalue { i64, ptr } %t780, ptr %t779, 1
  %t782 = load ptr, ptr %l374, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t782, { i64, ptr } %t781)
  br label %bb143
bb143:
  br label %bb144
bb144:
  br label %bb145
bb145:
  %t784 = load i32, ptr %l47, !tbaa !23
  %t786 = add i32 %t784, 1
  store i32 %t786, ptr %l47, !tbaa !23
  br label %bb131
bb146:
  %t788 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 3
  %t789 = getelementptr %"compiler/mir:Range", ptr %t788, i32 0, i32 1
  %t790 = load i32, ptr %t789, !tbaa !23
  %t792 = sext i32 %t790 to i64
  store i64 %t792, ptr %l387, !tbaa !24
  %t793 = load i64, ptr %l387, !tbaa !24
  %t794 = icmp sge i64 %t793, 0
  br i1 %t794, label %bb147, label %bb148
bb147:
  %t796 = load i64, ptr %l387, !tbaa !24
  %t797 = icmp sle i64 %t796, 1152921504606846975
  br i1 %t797, label %bb149, label %bb150
bb148:
  call void @__olang_check_failed(ptr @olang_loc_9287686e475a7dbe_ea834ed677e35522)
  unreachable
bb149:
  %t799 = load i64, ptr %l387, !tbaa !24
  %t800 = mul i64 %t799, 8
  %t801 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t800)
  store i64 0, ptr %t802
  br label %fill.803
fill.803:
  %t806 = load i64, ptr %t802
  %t807 = icmp slt i64 %t806, %t799
  br i1 %t807, label %fillb.804, label %filld.805
fillb.804:
  %t808 = getelementptr i64, ptr %t801, i64 %t806
  store i64 -1, ptr %t808
  %t809 = add i64 %t806, 1
  store i64 %t809, ptr %t802
  br label %fill.803
filld.805:
  %t810 = insertvalue { i64, ptr } undef, i64 %t799, 0
  %t811 = insertvalue { i64, ptr } %t810, ptr %t801, 1
  store { i64, ptr } %t811, ptr %l50, !tbaa !27
  store i32 0, ptr %l51, !tbaa !23
  %t813 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 7
  %t814 = getelementptr %"compiler/mir:Range", ptr %t813, i32 0, i32 1
  %t815 = load i32, ptr %t814, !tbaa !23
  store i32 %t815, ptr %l52, !tbaa !23
  store i32 1, ptr %l53, !tbaa !23
  %t817 = load i32, ptr %l52, !tbaa !23
  %t818 = load i32, ptr %l51, !tbaa !23
  %t821 = icmp sgt i32 %t817, %t818
  br i1 %t821, label %bb151, label %bb152
bb150:
  call void @__olang_check_failed(ptr @olang_loc_9287686e475a7dbe_ea834ed677e35522)
  unreachable
bb151:
  %t823 = load i32, ptr %l53, !tbaa !23
  %t825 = icmp sgt i32 %t823, 0
  br i1 %t825, label %bb153, label %bb154
bb152:
  store i32 0, ptr %l395, !tbaa !23
  br label %bb156
bb153:
  %t827 = load i32, ptr %l52, !tbaa !23
  %t828 = load i32, ptr %l51, !tbaa !23
  %t831 = sub i32 %t827, %t828
  %t832 = load i32, ptr %l53, !tbaa !23
  %t835 = add i32 %t831, %t832
  %t837 = sub i32 %t835, 1
  %t838 = load i32, ptr %l53, !tbaa !23
  %t841 = sdiv i32 %t837, %t838
  store i32 %t841, ptr %l398, !tbaa !23
  br label %bb155
bb154:
  store i32 0, ptr %l398, !tbaa !23
  br label %bb155
bb155:
  %t843 = load i32, ptr %l398, !tbaa !23
  store i32 %t843, ptr %l395, !tbaa !23
  br label %bb156
bb156:
  %t844 = load i32, ptr %l395, !tbaa !23
  store i32 %t844, ptr %l54, !tbaa !23
  store i32 0, ptr %l55, !tbaa !23
  br label %bb157
bb157:
  %t845 = load i32, ptr %l55, !tbaa !23
  %t846 = load i32, ptr %l54, !tbaa !23
  %t849 = icmp slt i32 %t845, %t846
  %t851 = xor i1 %t849, true
  br i1 %t851, label %bb158, label %bb159
bb158:
  br label %bb190
bb159:
  br label %bb160
bb160:
  %t853 = load i32, ptr %l51, !tbaa !23
  %t854 = load i32, ptr %l55, !tbaa !23
  %t855 = load i32, ptr %l53, !tbaa !23
  %t858 = mul i32 %t854, %t855
  %t861 = add i32 %t853, %t858
  store i32 %t861, ptr %l56, !tbaa !23
  %t863 = load ptr, ptr %l0, !tbaa !29
  %t865 = getelementptr %"compiler/emit:fnEm", ptr %t863, i32 0, i32 1
  %t866 = load ptr, ptr %t865, !tbaa !29
  %t868 = getelementptr %"compiler/mir:Fn", ptr %t866, i32 0, i32 12
  store ptr %t868, ptr %l418, !tbaa !29
  %t869 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 7
  %t870 = getelementptr %"compiler/mir:Range", ptr %t869, i32 0, i32 0
  %t871 = load i32, ptr %t870, !tbaa !23
  %t873 = sext i32 %t871 to i64
  %t874 = load i32, ptr %l56, !tbaa !23
  %t876 = sext i32 %t874 to i64
  %t879 = add i64 %t873, %t876
  %t880 = load ptr, ptr %l418, !tbaa !29
  %t881 = call ptr @__olang_scope_or(ptr %v2, ptr %t880)
  %t882 = ptrtoint ptr %t881 to i64
  %t884 = inttoptr i64 %t882 to ptr
  %t885 = load ptr, ptr %l418, !tbaa !29
  %t887 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t884, ptr %t885, i64 %t879)
  store { i64, [1 x i64] } %t887, ptr %l425
  br label %bb161
bb161:
  %t888 = load { i64, [1 x i64] }, ptr %l425
  store { i64, [1 x i64] } %t888, ptr %l57
  %t889 = load { i64, [1 x i64] }, ptr %l57
  %t891 = extractvalue { i64, [1 x i64] } %t889, 0
  %t892 = icmp eq i64 %t891, 3
  br i1 %t892, label %bb162, label %bb163
bb162:
  br label %bb164
bb163:
  br label %bb165
bb164:
  br label %bb188
bb165:
  %t894 = load { i64, [1 x i64] }, ptr %l57
  %t896 = extractvalue { i64, [1 x i64] } %t894, 0
  %t897 = icmp eq i64 %t896, 2
  br i1 %t897, label %bb166, label %bb167
bb166:
  br label %bb168
bb167:
  br label %bb172
bb168:
  %t899 = load i32, ptr %l56, !tbaa !23
  store i32 %t899, ptr %l430, !tbaa !23
  %t901 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t901, ptr %l432
  br label %bb169
bb169:
  %t902 = load i64, ptr %l432, !tbaa !24
  %t903 = load i32, ptr %l430, !tbaa !23
  %t904 = sext i32 %t903 to i64
  %t905 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t906 = load ptr, ptr %t905, !tbaa !27
  %t907 = getelementptr i64, ptr %t906, i64 %t904
  store i64 %t902, ptr %t907, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d276, i32 0, i32 1) })
  br label %bb170
bb170:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l19, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d277, i32 0, i32 1) })
  br label %bb171
bb171:
  br label %bb188
bb172:
  br i1 true, label %bb173, label %bb174
bb173:
  br label %bb175
bb174:
  br label %bb187
bb175:
  store %olang.scope zeroinitializer, ptr %s32
  %t910 = load ptr, ptr %l4, !tbaa !29
  store ptr %t910, ptr %l435, !tbaa !29
  %t911 = load ptr, ptr %l435, !tbaa !29
  %t912 = call ptr @__olang_scope_or(ptr %v1, ptr %t911)
  %t913 = ptrtoint ptr %t912 to i64
  %t915 = inttoptr i64 %t913 to ptr
  %t916 = load ptr, ptr %l435, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %t915, ptr %s32, ptr %s32, ptr %t916, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d278, i32 0, i32 1) }, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d279, i32 0, i32 1) })
  br label %bb176
bb176:
  %t917 = load ptr, ptr %l0, !tbaa !29
  store ptr %t917, ptr %l437, !tbaa !29
  %t918 = load ptr, ptr %l0, !tbaa !29
  %t919 = load { i64, [1 x i64] }, ptr %l57
  %t922 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s32, ptr %v1, ptr %v2, ptr %t918, { i64, [1 x i64] } %t919)
  store { i64, ptr } %t922, ptr %l440
  br label %bb177
bb177:
  %t923 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t924 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t925 = load { i64, ptr }, ptr %l440, !tbaa !27
  %t926 = extractvalue { i64, ptr } %t925, 1
  %t927 = extractvalue { i64, ptr } %t925, 0
  %t928 = add i64 %t924, %t927
  %t929 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t930 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t931 = add i64 %t928, %t930
  %t932 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t931)
  call void @olang_textcopy(ptr %t932, ptr %t923, i64 %t924)
  %t933 = getelementptr i8, ptr %t932, i64 %t924
  call void @olang_textcopy(ptr %t933, ptr %t926, i64 %t927)
  %t934 = getelementptr i8, ptr %t933, i64 %t927
  call void @olang_textcopy(ptr %t934, ptr %t929, i64 %t930)
  %t935 = insertvalue { i64, ptr } undef, i64 %t931, 0
  %t936 = insertvalue { i64, ptr } %t935, ptr %t932, 1
  %t938 = extractvalue { i64, ptr } %t936, 0
  %t939 = extractvalue { i64, ptr } %t936, 1
  %t940 = mul i64 %t938, 1
  %t941 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t940)
  call void @llvm.memcpy.p0.p0.i64(ptr %t941, ptr %t939, i64 %t940, i1 false)
  %t942 = insertvalue { i64, ptr } undef, i64 %t938, 0
  %t943 = insertvalue { i64, ptr } %t942, ptr %t941, 1
  %t944 = load ptr, ptr %l437, !tbaa !29
  %t946 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s32, ptr %s32, ptr %v1, ptr %t944, { i64, ptr } %t943)
  store { i64, ptr } %t946, ptr %l443
  br label %bb178
bb178:
  %t947 = load { i64, ptr }, ptr %l443, !tbaa !27
  store { i64, ptr } %t947, ptr %l58, !tbaa !27
  store ptr %l26, ptr %l444, !tbaa !29
  %t948 = ptrtoint ptr %s0 to i64
  store i64 %t948, ptr %l445, !tbaa !24
  %t949 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t949, label %bb179, label %bb180
bb179:
  %t951 = call ptr @__olang_region_make(ptr %s0)
  %t952 = ptrtoint ptr %t951 to i64
  store i64 %t952, ptr %l445, !tbaa !24
  br label %bb180
bb180:
  %t953 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t955 = extractvalue { i64, ptr } %t953, 1
  %t956 = extractvalue { i64, ptr } %t953, 0
  %t957 = load i64, ptr %l445
  %t958 = inttoptr i64 %t957 to ptr
  %t959 = call ptr @__olang_scope_alloc(ptr %t958, i64 %t956)
  call void @olang_textcopy(ptr %t959, ptr %t955, i64 %t956)
  %t960 = insertvalue { i64, ptr } undef, i64 %t956, 0
  %t961 = insertvalue { i64, ptr } %t960, ptr %t959, 1
  %t963 = load i64, ptr %l445
  %t964 = inttoptr i64 %t963 to ptr
  %t965 = extractvalue { i64, ptr } %t961, 0
  %t966 = extractvalue { i64, ptr } %t961, 1
  %t967 = mul i64 %t965, 1
  %t968 = call ptr @__olang_scope_alloc(ptr %t964, i64 %t967)
  call void @llvm.memcpy.p0.p0.i64(ptr %t968, ptr %t966, i64 %t967, i1 false)
  %t969 = insertvalue { i64, ptr } undef, i64 %t965, 0
  %t970 = insertvalue { i64, ptr } %t969, ptr %t968, 1
  %t971 = load ptr, ptr %l444, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t971, { i64, ptr } %t970)
  br label %bb181
bb181:
  %t973 = load i32, ptr %l56, !tbaa !23
  store i32 %t973, ptr %l450, !tbaa !23
  %t975 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t975, ptr %l452
  br label %bb182
bb182:
  %t976 = load i64, ptr %l452, !tbaa !24
  %t977 = load i32, ptr %l450, !tbaa !23
  %t978 = sext i32 %t977 to i64
  %t979 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t980 = load ptr, ptr %t979, !tbaa !27
  %t981 = getelementptr i64, ptr %t980, i64 %t978
  store i64 %t976, ptr %t981, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d282, i32 0, i32 1) })
  br label %bb183
bb183:
  store ptr %l19, ptr %l454, !tbaa !29
  %t983 = ptrtoint ptr %s0 to i64
  store i64 %t983, ptr %l455, !tbaa !24
  %t984 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t984, label %bb184, label %bb185
bb184:
  %t986 = call ptr @__olang_region_make(ptr %s0)
  %t987 = ptrtoint ptr %t986 to i64
  store i64 %t987, ptr %l455, !tbaa !24
  br label %bb185
bb185:
  %t988 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t990 = extractvalue { i64, ptr } %t988, 1
  %t991 = extractvalue { i64, ptr } %t988, 0
  %t992 = load i64, ptr %l455
  %t993 = inttoptr i64 %t992 to ptr
  %t994 = call ptr @__olang_scope_alloc(ptr %t993, i64 %t991)
  call void @olang_textcopy(ptr %t994, ptr %t990, i64 %t991)
  %t995 = insertvalue { i64, ptr } undef, i64 %t991, 0
  %t996 = insertvalue { i64, ptr } %t995, ptr %t994, 1
  %t998 = load i64, ptr %l455
  %t999 = inttoptr i64 %t998 to ptr
  %t1000 = extractvalue { i64, ptr } %t996, 0
  %t1001 = extractvalue { i64, ptr } %t996, 1
  %t1002 = mul i64 %t1000, 1
  %t1003 = call ptr @__olang_scope_alloc(ptr %t999, i64 %t1002)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1003, ptr %t1001, i64 %t1002, i1 false)
  %t1004 = insertvalue { i64, ptr } undef, i64 %t1000, 0
  %t1005 = insertvalue { i64, ptr } %t1004, ptr %t1003, 1
  %t1006 = load ptr, ptr %l454, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t1006, { i64, ptr } %t1005)
  br label %bb186
bb186:
  call void @__olang_scope_close(ptr %s32)
  br label %bb188
bb187:
  call void @__olang_check_failed(ptr @olang_loc_45f21d64bb841654_8b47099e9550bca0)
  unreachable
bb188:
  br label %bb189
bb189:
  %t1008 = load i32, ptr %l55, !tbaa !23
  %t1010 = add i32 %t1008, 1
  store i32 %t1010, ptr %l55, !tbaa !23
  br label %bb157
bb190:
  %t1012 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1012, ptr %l462
  br label %bb191
bb191:
  %t1013 = load %"std/prelude/text:StringBuilder", ptr %l462
  store %"std/prelude/text:StringBuilder" %t1013, ptr %l59
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l59, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d283, i32 0, i32 1) })
  br label %bb192
bb192:
  store i64 0, ptr %l60, !tbaa !24
  %t1016 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t1016, ptr %l465
  br label %bb193
bb193:
  %t1017 = load i64, ptr %l465, !tbaa !24
  store i64 %t1017, ptr %l61, !tbaa !24
  store i64 1, ptr %l62, !tbaa !24
  %t1018 = load i64, ptr %l61, !tbaa !24
  %t1019 = load i64, ptr %l60, !tbaa !24
  %t1022 = icmp sgt i64 %t1018, %t1019
  br i1 %t1022, label %bb194, label %bb195
bb194:
  %t1024 = load i64, ptr %l62, !tbaa !24
  %t1026 = icmp sgt i64 %t1024, 0
  br i1 %t1026, label %bb196, label %bb197
bb195:
  store i64 0, ptr %l469, !tbaa !24
  br label %bb199
bb196:
  %t1028 = load i64, ptr %l61, !tbaa !24
  %t1029 = load i64, ptr %l60, !tbaa !24
  %t1032 = sub i64 %t1028, %t1029
  %t1033 = load i64, ptr %l62, !tbaa !24
  %t1036 = add i64 %t1032, %t1033
  %t1038 = sub i64 %t1036, 1
  %t1039 = load i64, ptr %l62, !tbaa !24
  %t1042 = sdiv i64 %t1038, %t1039
  store i64 %t1042, ptr %l472, !tbaa !24
  br label %bb198
bb197:
  store i64 0, ptr %l472, !tbaa !24
  br label %bb198
bb198:
  %t1044 = load i64, ptr %l472, !tbaa !24
  store i64 %t1044, ptr %l469, !tbaa !24
  br label %bb199
bb199:
  %t1045 = load i64, ptr %l469, !tbaa !24
  store i64 %t1045, ptr %l63, !tbaa !24
  store i64 0, ptr %l64, !tbaa !24
  br label %bb200
bb200:
  %t1046 = load i64, ptr %l64, !tbaa !24
  %t1047 = load i64, ptr %l63, !tbaa !24
  %t1050 = icmp slt i64 %t1046, %t1047
  %t1052 = xor i1 %t1050, true
  br i1 %t1052, label %bb201, label %bb202
bb201:
  br label %bb211
bb202:
  br label %bb203
bb203:
  %t1054 = load i64, ptr %l60, !tbaa !24
  %t1055 = load i64, ptr %l64, !tbaa !24
  %t1056 = load i64, ptr %l62, !tbaa !24
  %t1059 = mul i64 %t1055, %t1056
  %t1062 = add i64 %t1054, %t1059
  store i64 %t1062, ptr %l65, !tbaa !24
  %t1064 = load i64, ptr %l65, !tbaa !24
  %t1066 = icmp sgt i64 %t1064, 0
  br i1 %t1066, label %bb204, label %bb205
bb204:
  store %olang.scope zeroinitializer, ptr %s39
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s39, ptr %l59, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d284, i32 0, i32 1) })
  br label %bb206
bb205:
  br label %bb207
bb206:
  call void @__olang_scope_close(ptr %s39)
  br label %bb207
bb207:
  store ptr %l59, ptr %l493, !tbaa !29
  %t1069 = load i64, ptr %l65, !tbaa !24
  %t1072 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l18, i64 %t1069)
  store { i64, ptr } %t1072, ptr %l496
  br label %bb208
bb208:
  %t1073 = load ptr, ptr %l493, !tbaa !29
  %t1074 = load { i64, ptr }, ptr %l496, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t1073, { i64, ptr } %t1074)
  br label %bb209
bb209:
  br label %bb210
bb210:
  %t1075 = load i64, ptr %l64, !tbaa !24
  %t1077 = add i64 %t1075, 1
  store i64 %t1077, ptr %l64, !tbaa !24
  br label %bb200
bb211:
  %t1080 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t1080, ptr %l500
  br label %bb212
bb212:
  %t1081 = load i64, ptr %l500, !tbaa !24
  %t1082 = icmp eq i64 %t1081, 0
  br i1 %t1082, label %bb213, label %bb214
bb213:
  store %olang.scope zeroinitializer, ptr %s41
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s41, ptr %l59, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d285, i32 0, i32 1) })
  br label %bb215
bb214:
  br label %bb216
bb215:
  call void @__olang_scope_close(ptr %s41)
  br label %bb216
bb216:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l59, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d286, i32 0, i32 1) })
  br label %bb217
bb217:
  %t1087 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l59)
  store { i64, ptr } %t1087, ptr %l505
  br label %bb218
bb218:
  %t1088 = load { i64, ptr }, ptr %l505, !tbaa !27
  store { i64, ptr } %t1088, ptr %l66, !tbaa !27
  %t1089 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1089, ptr %l506, !tbaa !29
  %t1090 = load ptr, ptr %l506, !tbaa !29
  %t1091 = call ptr @__olang_scope_or(ptr %v1, ptr %t1090)
  %t1092 = ptrtoint ptr %t1091 to i64
  %t1094 = inttoptr i64 %t1092 to ptr
  %t1095 = load ptr, ptr %l506, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %t1094, ptr %s0, ptr %t1095, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d287, i32 0, i32 1) })
  br label %bb219
bb219:
  %t1096 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1096, ptr %l508, !tbaa !29
  %t1097 = load ptr, ptr %l0, !tbaa !29
  %t1098 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1099 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t1100 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
  %t1102 = extractvalue { i64, ptr } %t1098, 1
  %t1103 = extractvalue { i64, ptr } %t1098, 0
  %t1104 = add i64 %t1100, %t1103
  %t1105 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d289, i32 0, i32 1) }, 1
  %t1106 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d289, i32 0, i32 1) }, 0
  %t1107 = add i64 %t1104, %t1106
  %t1108 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1107)
  call void @olang_textcopy(ptr %t1108, ptr %t1099, i64 %t1100)
  %t1109 = getelementptr i8, ptr %t1108, i64 %t1100
  call void @olang_textcopy(ptr %t1109, ptr %t1102, i64 %t1103)
  %t1110 = getelementptr i8, ptr %t1109, i64 %t1103
  call void @olang_textcopy(ptr %t1110, ptr %t1105, i64 %t1106)
  %t1111 = insertvalue { i64, ptr } undef, i64 %t1107, 0
  %t1112 = insertvalue { i64, ptr } %t1111, ptr %t1108, 1
  %t1114 = extractvalue { i64, ptr } %t1112, 0
  %t1115 = extractvalue { i64, ptr } %t1112, 1
  %t1116 = mul i64 %t1114, 1
  %t1117 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1117, ptr %t1115, i64 %t1116, i1 false)
  %t1118 = insertvalue { i64, ptr } undef, i64 %t1114, 0
  %t1119 = insertvalue { i64, ptr } %t1118, ptr %t1117, 1
  %t1122 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1097, { i64, ptr } %t1119)
  store { i64, ptr } %t1122, ptr %l513
  br label %bb220
bb220:
  %t1123 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d290, i32 0, i32 1) }, 1
  %t1124 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d290, i32 0, i32 1) }, 0
  %t1125 = load { i64, ptr }, ptr %l513, !tbaa !27
  %t1126 = extractvalue { i64, ptr } %t1125, 1
  %t1127 = extractvalue { i64, ptr } %t1125, 0
  %t1128 = add i64 %t1124, %t1127
  %t1129 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t1130 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t1131 = add i64 %t1128, %t1130
  %t1132 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1131)
  call void @olang_textcopy(ptr %t1132, ptr %t1123, i64 %t1124)
  %t1133 = getelementptr i8, ptr %t1132, i64 %t1124
  call void @olang_textcopy(ptr %t1133, ptr %t1126, i64 %t1127)
  %t1134 = getelementptr i8, ptr %t1133, i64 %t1127
  call void @olang_textcopy(ptr %t1134, ptr %t1129, i64 %t1130)
  %t1135 = insertvalue { i64, ptr } undef, i64 %t1131, 0
  %t1136 = insertvalue { i64, ptr } %t1135, ptr %t1132, 1
  %t1138 = extractvalue { i64, ptr } %t1136, 0
  %t1139 = extractvalue { i64, ptr } %t1136, 1
  %t1140 = mul i64 %t1138, 1
  %t1141 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1141, ptr %t1139, i64 %t1140, i1 false)
  %t1142 = insertvalue { i64, ptr } undef, i64 %t1138, 0
  %t1143 = insertvalue { i64, ptr } %t1142, ptr %t1141, 1
  %t1144 = load ptr, ptr %l508, !tbaa !29
  %t1146 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1144, { i64, ptr } %t1143)
  store { i64, ptr } %t1146, ptr %l516
  br label %bb221
bb221:
  %t1147 = load { i64, ptr }, ptr %l516, !tbaa !27
  %t1148 = load ptr, ptr %l0, !tbaa !29
  %t1149 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1151 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t1152 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t1154 = extractvalue { i64, ptr } %t1149, 1
  %t1155 = extractvalue { i64, ptr } %t1149, 0
  %t1156 = add i64 %t1152, %t1155
  %t1157 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d293, i32 0, i32 1) }, 1
  %t1158 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d293, i32 0, i32 1) }, 0
  %t1159 = add i64 %t1156, %t1158
  %t1161 = extractvalue { i64, ptr } %t1147, 1
  %t1162 = extractvalue { i64, ptr } %t1147, 0
  %t1163 = add i64 %t1159, %t1162
  %t1164 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d294, i32 0, i32 1) }, 1
  %t1165 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d294, i32 0, i32 1) }, 0
  %t1166 = add i64 %t1163, %t1165
  %t1167 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1166)
  call void @olang_textcopy(ptr %t1167, ptr %t1151, i64 %t1152)
  %t1168 = getelementptr i8, ptr %t1167, i64 %t1152
  call void @olang_textcopy(ptr %t1168, ptr %t1154, i64 %t1155)
  %t1169 = getelementptr i8, ptr %t1168, i64 %t1155
  call void @olang_textcopy(ptr %t1169, ptr %t1157, i64 %t1158)
  %t1170 = getelementptr i8, ptr %t1169, i64 %t1158
  call void @olang_textcopy(ptr %t1170, ptr %t1161, i64 %t1162)
  %t1171 = getelementptr i8, ptr %t1170, i64 %t1162
  call void @olang_textcopy(ptr %t1171, ptr %t1164, i64 %t1165)
  %t1172 = insertvalue { i64, ptr } undef, i64 %t1166, 0
  %t1173 = insertvalue { i64, ptr } %t1172, ptr %t1167, 1
  %t1175 = extractvalue { i64, ptr } %t1173, 0
  %t1176 = extractvalue { i64, ptr } %t1173, 1
  %t1177 = mul i64 %t1175, 1
  %t1178 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1177)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1178, ptr %t1176, i64 %t1177, i1 false)
  %t1179 = insertvalue { i64, ptr } undef, i64 %t1175, 0
  %t1180 = insertvalue { i64, ptr } %t1179, ptr %t1178, 1
  %t1183 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1148, { i64, ptr } %t1180)
  store { i64, ptr } %t1183, ptr %l522
  br label %bb222
bb222:
  %t1184 = load { i64, ptr }, ptr %l522, !tbaa !27
  store { i64, ptr } %t1184, ptr %l68, !tbaa !27
  %t1185 = load i1, ptr %l8, !tbaa !21
  br i1 %t1185, label %bb223, label %bb224
bb223:
  store i64 1, ptr %l524, !tbaa !24
  br label %bb225
bb224:
  store i64 0, ptr %l524, !tbaa !24
  br label %bb225
bb225:
  %t1187 = load i64, ptr %l524, !tbaa !24
  store i64 %t1187, ptr %l69, !tbaa !24
  store i64 0, ptr %l70, !tbaa !24
  %t1189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t1189, ptr %l526
  br label %bb226
bb226:
  %t1190 = load i64, ptr %l526, !tbaa !24
  store i64 %t1190, ptr %l71, !tbaa !24
  store i64 1, ptr %l72, !tbaa !24
  %t1191 = load i64, ptr %l71, !tbaa !24
  %t1192 = load i64, ptr %l70, !tbaa !24
  %t1195 = icmp sgt i64 %t1191, %t1192
  br i1 %t1195, label %bb227, label %bb228
bb227:
  %t1197 = load i64, ptr %l72, !tbaa !24
  %t1199 = icmp sgt i64 %t1197, 0
  br i1 %t1199, label %bb229, label %bb230
bb228:
  store i64 0, ptr %l530, !tbaa !24
  br label %bb232
bb229:
  %t1201 = load i64, ptr %l71, !tbaa !24
  %t1202 = load i64, ptr %l70, !tbaa !24
  %t1205 = sub i64 %t1201, %t1202
  %t1206 = load i64, ptr %l72, !tbaa !24
  %t1209 = add i64 %t1205, %t1206
  %t1211 = sub i64 %t1209, 1
  %t1212 = load i64, ptr %l72, !tbaa !24
  %t1215 = sdiv i64 %t1211, %t1212
  store i64 %t1215, ptr %l533, !tbaa !24
  br label %bb231
bb230:
  store i64 0, ptr %l533, !tbaa !24
  br label %bb231
bb231:
  %t1217 = load i64, ptr %l533, !tbaa !24
  store i64 %t1217, ptr %l530, !tbaa !24
  br label %bb232
bb232:
  %t1218 = load i64, ptr %l530, !tbaa !24
  store i64 %t1218, ptr %l73, !tbaa !24
  store i64 0, ptr %l74, !tbaa !24
  br label %bb233
bb233:
  store %olang.scope zeroinitializer, ptr %s46
  %t1219 = load i64, ptr %l74, !tbaa !24
  %t1220 = load i64, ptr %l73, !tbaa !24
  %t1223 = icmp slt i64 %t1219, %t1220
  %t1225 = xor i1 %t1223, true
  br i1 %t1225, label %bb234, label %bb235
bb234:
  call void @__olang_scope_close(ptr %s46)
  br label %bb249
bb235:
  br label %bb236
bb236:
  %t1227 = load i64, ptr %l70, !tbaa !24
  %t1228 = load i64, ptr %l74, !tbaa !24
  %t1229 = load i64, ptr %l72, !tbaa !24
  %t1232 = mul i64 %t1228, %t1229
  %t1235 = add i64 %t1227, %t1232
  store i64 %t1235, ptr %l75, !tbaa !24
  %t1237 = load ptr, ptr %l0, !tbaa !29
  %t1238 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1239 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t1240 = load i64, ptr %l75, !tbaa !24
  %t1241 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t1242 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
  %t1244 = extractvalue { i64, ptr } %t1238, 1
  %t1245 = extractvalue { i64, ptr } %t1238, 0
  %t1246 = add i64 %t1242, %t1245
  %t1247 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t1248 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t1249 = add i64 %t1246, %t1248
  %t1251 = extractvalue { i64, ptr } %t1239, 1
  %t1252 = extractvalue { i64, ptr } %t1239, 0
  %t1253 = add i64 %t1249, %t1252
  %t1254 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t1255 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t1256 = add i64 %t1253, %t1255
  %t1258 = call i64 @__olang_fmt_i64(ptr null, i64 %t1240)
  %t1259 = add i64 %t1256, %t1258
  %t1260 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1259)
  call void @olang_textcopy(ptr %t1260, ptr %t1241, i64 %t1242)
  %t1261 = getelementptr i8, ptr %t1260, i64 %t1242
  call void @olang_textcopy(ptr %t1261, ptr %t1244, i64 %t1245)
  %t1262 = getelementptr i8, ptr %t1261, i64 %t1245
  call void @olang_textcopy(ptr %t1262, ptr %t1247, i64 %t1248)
  %t1263 = getelementptr i8, ptr %t1262, i64 %t1248
  call void @olang_textcopy(ptr %t1263, ptr %t1251, i64 %t1252)
  %t1264 = getelementptr i8, ptr %t1263, i64 %t1252
  call void @olang_textcopy(ptr %t1264, ptr %t1254, i64 %t1255)
  %t1265 = getelementptr i8, ptr %t1264, i64 %t1255
  %t1266 = call i64 @__olang_fmt_i64(ptr %t1265, i64 %t1240)
  %t1267 = insertvalue { i64, ptr } undef, i64 %t1259, 0
  %t1268 = insertvalue { i64, ptr } %t1267, ptr %t1260, 1
  %t1270 = extractvalue { i64, ptr } %t1268, 0
  %t1271 = extractvalue { i64, ptr } %t1268, 1
  %t1272 = mul i64 %t1270, 1
  %t1273 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1272)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1273, ptr %t1271, i64 %t1272, i1 false)
  %t1274 = insertvalue { i64, ptr } undef, i64 %t1270, 0
  %t1275 = insertvalue { i64, ptr } %t1274, ptr %t1273, 1
  %t1278 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s46, ptr %s46, ptr %v1, ptr %t1237, { i64, ptr } %t1275)
  store { i64, ptr } %t1278, ptr %l557
  br label %bb237
bb237:
  %t1279 = load { i64, ptr }, ptr %l557, !tbaa !27
  store { i64, ptr } %t1279, ptr %l76, !tbaa !27
  %t1280 = load i64, ptr %l75, !tbaa !24
  %t1283 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l19, i64 %t1280)
  store { i64, ptr } %t1283, ptr %l560
  br label %bb238
bb238:
  %t1284 = load { i64, ptr }, ptr %l560, !tbaa !27
  %t1285 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s46, { i64, ptr } %t1284, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d298, i32 0, i32 1) })
  store i1 %t1285, ptr %l561
  br label %bb239
bb239:
  %t1286 = load i1, ptr %l561, !tbaa !21
  br i1 %t1286, label %bb240, label %bb241
bb240:
  store %olang.scope zeroinitializer, ptr %s48
  %t1287 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1287, ptr %l562, !tbaa !29
  %t1288 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t1288, ptr %l563, !tbaa !27
  %t1289 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t1289, ptr %l564, !tbaa !27
  %t1290 = load i64, ptr %l75, !tbaa !24
  %t1291 = load i64, ptr %l69, !tbaa !24
  %t1294 = sub i64 %t1290, %t1291
  %t1296 = getelementptr { i64, ptr }, ptr %l564, i32 0, i32 1
  %t1297 = load ptr, ptr %t1296, !tbaa !27
  %t1298 = getelementptr i32, ptr %t1297, i64 %t1294
  %t1299 = load i32, ptr %t1298, !tbaa !33
  store i32 %t1299, ptr %l568, !tbaa !23
  %t1300 = load ptr, ptr %l0, !tbaa !29
  %t1301 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 1
  %t1302 = load %"compiler/mir:Range", ptr %t1301
  %t1303 = load i64, ptr %l75, !tbaa !24
  %t1304 = load i64, ptr %l69, !tbaa !24
  %t1307 = sub i64 %t1303, %t1304
  %t1311 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v2, ptr %t1300, %"compiler/mir:Range" %t1302, i64 %t1307)
  store { i64, [4 x i64] } %t1311, ptr %l574
  br label %bb242
bb241:
  store %olang.scope zeroinitializer, ptr %s49
  %t1312 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1312, ptr %l575, !tbaa !29
  %t1313 = load i64, ptr %l75, !tbaa !24
  %t1316 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l18, i64 %t1313)
  store { i64, ptr } %t1316, ptr %l578
  br label %bb244
bb242:
  %t1317 = load ptr, ptr %l562, !tbaa !29
  %t1318 = load { i64, ptr }, ptr %l563, !tbaa !27
  %t1319 = load i32, ptr %l568, !tbaa !23
  %t1320 = load { i64, [4 x i64] }, ptr %l574
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s46, ptr %s48, ptr %v1, ptr %v2, ptr %t1317, { i64, ptr } %t1318, i32 %t1319, { i64, [4 x i64] } %t1320, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d299, i32 0, i32 1) })
  br label %bb243
bb243:
  call void @__olang_scope_close(ptr %s48)
  br label %bb247
bb244:
  %t1321 = load i64, ptr %l75, !tbaa !24
  %t1324 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l19, i64 %t1321)
  store { i64, ptr } %t1324, ptr %l581
  br label %bb245
bb245:
  %t1325 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t1326 = load ptr, ptr %l575, !tbaa !29
  %t1327 = load { i64, ptr }, ptr %l578, !tbaa !27
  %t1328 = load { i64, ptr }, ptr %l581, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s46, ptr %s49, ptr %v1, ptr %t1326, { i64, ptr } %t1327, { i64, ptr } %t1328, { i64, ptr } %t1325, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb246
bb246:
  call void @__olang_scope_close(ptr %s49)
  br label %bb247
bb247:
  call void @__olang_scope_close(ptr %s46)
  br label %bb248
bb248:
  %t1330 = load i64, ptr %l74, !tbaa !24
  %t1332 = add i64 %t1330, 1
  store i64 %t1332, ptr %l74, !tbaa !24
  br label %bb233
bb249:
  %t1334 = load ptr, ptr %l0, !tbaa !29
  %t1335 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1336 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d300, i32 0, i32 1) }, 1
  %t1337 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d300, i32 0, i32 1) }, 0
  %t1339 = extractvalue { i64, ptr } %t1335, 1
  %t1340 = extractvalue { i64, ptr } %t1335, 0
  %t1341 = add i64 %t1337, %t1340
  %t1342 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d301, i32 0, i32 1) }, 1
  %t1343 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d301, i32 0, i32 1) }, 0
  %t1344 = add i64 %t1341, %t1343
  %t1345 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1344)
  call void @olang_textcopy(ptr %t1345, ptr %t1336, i64 %t1337)
  %t1346 = getelementptr i8, ptr %t1345, i64 %t1337
  call void @olang_textcopy(ptr %t1346, ptr %t1339, i64 %t1340)
  %t1347 = getelementptr i8, ptr %t1346, i64 %t1340
  call void @olang_textcopy(ptr %t1347, ptr %t1342, i64 %t1343)
  %t1348 = insertvalue { i64, ptr } undef, i64 %t1344, 0
  %t1349 = insertvalue { i64, ptr } %t1348, ptr %t1345, 1
  %t1351 = extractvalue { i64, ptr } %t1349, 0
  %t1352 = extractvalue { i64, ptr } %t1349, 1
  %t1353 = mul i64 %t1351, 1
  %t1354 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1353)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1354, ptr %t1352, i64 %t1353, i1 false)
  %t1355 = insertvalue { i64, ptr } undef, i64 %t1351, 0
  %t1356 = insertvalue { i64, ptr } %t1355, ptr %t1354, 1
  %t1359 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1334, { i64, ptr } %t1356)
  store { i64, ptr } %t1359, ptr %l589
  br label %bb250
bb250:
  %t1360 = load { i64, ptr }, ptr %l589, !tbaa !27
  store { i64, ptr } %t1360, ptr %l77, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d302, i32 0, i32 1) }, ptr %l590, !tbaa !27
  %t1361 = load { i64, ptr }, ptr %l590, !tbaa !27
  store { i64, ptr } %t1361, ptr %l78, !tbaa !27
  store ptr %l26, ptr %l79, !tbaa !29
  store i64 0, ptr %l80, !tbaa !24
  br label %bb251
bb251:
  store %olang.scope zeroinitializer, ptr %s53
  %t1364 = load i64, ptr %l80, !tbaa !24
  store i64 %t1364, ptr %l593, !tbaa !24
  %t1365 = load ptr, ptr %l79, !tbaa !29
  %t1367 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t1365)
  store i64 %t1367, ptr %l595
  br label %bb252
bb252:
  %t1368 = load i64, ptr %l593, !tbaa !24
  %t1369 = load i64, ptr %l595, !tbaa !24
  %t1370 = icmp slt i64 %t1368, %t1369
  %t1372 = xor i1 %t1370, true
  br i1 %t1372, label %bb253, label %bb254
bb253:
  call void @__olang_scope_close(ptr %s53)
  br label %bb264
bb254:
  br label %bb255
bb255:
  %t1374 = load ptr, ptr %l79, !tbaa !29
  %t1375 = load i64, ptr %l80, !tbaa !24
  %t1378 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t1374, i64 %t1375)
  store { i64, ptr } %t1378, ptr %l600
  br label %bb256
bb256:
  %t1379 = load { i64, ptr }, ptr %l600, !tbaa !27
  store { i64, ptr } %t1379, ptr %l81, !tbaa !27
  %t1380 = load ptr, ptr %l0, !tbaa !29
  %t1381 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1382 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t1383 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
  %t1385 = extractvalue { i64, ptr } %t1381, 1
  %t1386 = extractvalue { i64, ptr } %t1381, 0
  %t1387 = add i64 %t1383, %t1386
  %t1388 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t1389 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t1390 = add i64 %t1387, %t1389
  %t1391 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1390)
  call void @olang_textcopy(ptr %t1391, ptr %t1382, i64 %t1383)
  %t1392 = getelementptr i8, ptr %t1391, i64 %t1383
  call void @olang_textcopy(ptr %t1392, ptr %t1385, i64 %t1386)
  %t1393 = getelementptr i8, ptr %t1392, i64 %t1386
  call void @olang_textcopy(ptr %t1393, ptr %t1388, i64 %t1389)
  %t1394 = insertvalue { i64, ptr } undef, i64 %t1390, 0
  %t1395 = insertvalue { i64, ptr } %t1394, ptr %t1391, 1
  %t1397 = extractvalue { i64, ptr } %t1395, 0
  %t1398 = extractvalue { i64, ptr } %t1395, 1
  %t1399 = mul i64 %t1397, 1
  %t1400 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1399)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1400, ptr %t1398, i64 %t1399, i1 false)
  %t1401 = insertvalue { i64, ptr } undef, i64 %t1397, 0
  %t1402 = insertvalue { i64, ptr } %t1401, ptr %t1400, 1
  %t1405 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s53, ptr %s53, ptr %v1, ptr %t1380, { i64, ptr } %t1402)
  store { i64, ptr } %t1405, ptr %l605
  br label %bb257
bb257:
  %t1406 = load { i64, ptr }, ptr %l605, !tbaa !27
  store { i64, ptr } %t1406, ptr %l82, !tbaa !27
  %t1407 = load ptr, ptr %l0, !tbaa !29
  %t1408 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t1409 = load { i64, ptr }, ptr %l82, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s53, ptr %s0, ptr %s53, ptr %s53, ptr %v1, ptr %t1407, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d305, i32 0, i32 1) }, { i64, ptr } %t1408, { i64, ptr } %t1409, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb258
bb258:
  %t1413 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1413, ptr %l609, !tbaa !29
  %t1414 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t1414, ptr %l610, !tbaa !27
  %t1415 = load ptr, ptr %l0, !tbaa !29
  %t1416 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t1417 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d306, i32 0, i32 1) }, 1
  %t1418 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d306, i32 0, i32 1) }, 0
  %t1420 = extractvalue { i64, ptr } %t1416, 1
  %t1421 = extractvalue { i64, ptr } %t1416, 0
  %t1422 = add i64 %t1418, %t1421
  %t1423 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t1424 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t1425 = add i64 %t1422, %t1424
  %t1426 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1425)
  call void @olang_textcopy(ptr %t1426, ptr %t1417, i64 %t1418)
  %t1427 = getelementptr i8, ptr %t1426, i64 %t1418
  call void @olang_textcopy(ptr %t1427, ptr %t1420, i64 %t1421)
  %t1428 = getelementptr i8, ptr %t1427, i64 %t1421
  call void @olang_textcopy(ptr %t1428, ptr %t1423, i64 %t1424)
  %t1429 = insertvalue { i64, ptr } undef, i64 %t1425, 0
  %t1430 = insertvalue { i64, ptr } %t1429, ptr %t1426, 1
  %t1432 = extractvalue { i64, ptr } %t1430, 0
  %t1433 = extractvalue { i64, ptr } %t1430, 1
  %t1434 = mul i64 %t1432, 1
  %t1435 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1434)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1435, ptr %t1433, i64 %t1434, i1 false)
  %t1436 = insertvalue { i64, ptr } undef, i64 %t1432, 0
  %t1437 = insertvalue { i64, ptr } %t1436, ptr %t1435, 1
  %t1440 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s53, ptr %s53, ptr %v1, ptr %t1415, { i64, ptr } %t1437)
  store { i64, ptr } %t1440, ptr %l615
  br label %bb259
bb259:
  %t1441 = load { i64, ptr }, ptr %l615, !tbaa !27
  %t1442 = extractvalue { i64, ptr } %t1441, 0
  %t1443 = extractvalue { i64, ptr } %t1441, 1
  %t1444 = mul i64 %t1442, 1
  %t1445 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1444)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1445, ptr %t1443, i64 %t1444, i1 false)
  %t1446 = insertvalue { i64, ptr } undef, i64 %t1442, 0
  %t1447 = insertvalue { i64, ptr } %t1446, ptr %t1445, 1
  %t1448 = load ptr, ptr %l609, !tbaa !29
  %t1449 = load { i64, ptr }, ptr %l610, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s53, ptr %s0, ptr %s53, ptr %s53, ptr %v1, ptr %t1448, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d308, i32 0, i32 1) }, { i64, ptr } %t1449, { i64, ptr } %t1447, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb260
bb260:
  %t1451 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t1451, ptr %l617, !tbaa !27
  %t1452 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t1452, ptr %l618, !tbaa !27
  %t1453 = load { i64, ptr }, ptr %l617, !tbaa !27
  %t1454 = extractvalue { i64, ptr } %t1453, 0
  store i64 %t1454, ptr %l619, !tbaa !24
  %t1455 = load i64, ptr %l619, !tbaa !24
  %t1456 = mul i64 %t1455, 1
  %t1457 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1456)
  %t1458 = insertvalue { i64, ptr } undef, i64 %t1455, 0
  %t1459 = insertvalue { i64, ptr } %t1458, ptr %t1457, 1
  store { i64, ptr } %t1459, ptr %l620, !tbaa !27
  %t1460 = getelementptr { i64, ptr }, ptr %l620, i32 0, i32 1
  %t1461 = load ptr, ptr %t1460, !tbaa !27
  %t1462 = getelementptr { i64, ptr }, ptr %l617, i32 0, i32 1
  %t1463 = load ptr, ptr %t1462, !tbaa !27
  %t1464 = load i64, ptr %l619, !tbaa !24
  %t1465 = mul i64 %t1464, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1461, ptr %t1463, i64 %t1465, i1 false)
  %t1466 = load { i64, ptr }, ptr %l620, !tbaa !27
  store { i64, ptr } %t1466, ptr %l78, !tbaa !27
  %t1467 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e78
  br i1 %t1467, label %bb261, label %bb262
bb261:
  %t1469 = load { i64, ptr }, ptr %l618
  %t1470 = extractvalue { i64, ptr } %t1469, 1
  call void @__olang_region_release(ptr %t1470)
  store { i64, ptr } zeroinitializer, ptr %l618
  br label %bb262
bb262:
  call void @__olang_scope_close(ptr %s53)
  br label %bb263
bb263:
  %t1471 = load i64, ptr %l80, !tbaa !24
  %t1473 = add i64 %t1471, 1
  store i64 %t1473, ptr %l80, !tbaa !24
  br label %bb251
bb264:
  %t1475 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1475, ptr %l624, !tbaa !29
  %t1476 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t1476, ptr %l625, !tbaa !27
  %t1477 = load ptr, ptr %l0, !tbaa !29
  %t1478 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1479 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t1480 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t1482 = extractvalue { i64, ptr } %t1478, 1
  %t1483 = extractvalue { i64, ptr } %t1478, 0
  %t1484 = add i64 %t1480, %t1483
  %t1485 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t1486 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t1487 = add i64 %t1484, %t1486
  %t1488 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1487)
  call void @olang_textcopy(ptr %t1488, ptr %t1479, i64 %t1480)
  %t1489 = getelementptr i8, ptr %t1488, i64 %t1480
  call void @olang_textcopy(ptr %t1489, ptr %t1482, i64 %t1483)
  %t1490 = getelementptr i8, ptr %t1489, i64 %t1483
  call void @olang_textcopy(ptr %t1490, ptr %t1485, i64 %t1486)
  %t1491 = insertvalue { i64, ptr } undef, i64 %t1487, 0
  %t1492 = insertvalue { i64, ptr } %t1491, ptr %t1488, 1
  %t1494 = extractvalue { i64, ptr } %t1492, 0
  %t1495 = extractvalue { i64, ptr } %t1492, 1
  %t1496 = mul i64 %t1494, 1
  %t1497 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1496)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1497, ptr %t1495, i64 %t1496, i1 false)
  %t1498 = insertvalue { i64, ptr } undef, i64 %t1494, 0
  %t1499 = insertvalue { i64, ptr } %t1498, ptr %t1497, 1
  %t1502 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1477, { i64, ptr } %t1499)
  store { i64, ptr } %t1502, ptr %l630
  br label %bb265
bb265:
  %t1503 = load { i64, ptr }, ptr %l630, !tbaa !27
  %t1504 = extractvalue { i64, ptr } %t1503, 0
  %t1505 = extractvalue { i64, ptr } %t1503, 1
  %t1506 = mul i64 %t1504, 1
  %t1507 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1506)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1507, ptr %t1505, i64 %t1506, i1 false)
  %t1508 = insertvalue { i64, ptr } undef, i64 %t1504, 0
  %t1509 = insertvalue { i64, ptr } %t1508, ptr %t1507, 1
  %t1510 = load ptr, ptr %l624, !tbaa !29
  %t1511 = load { i64, ptr }, ptr %l625, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %t1510, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d311, i32 0, i32 1) }, { i64, ptr } %t1511, { i64, ptr } %t1509, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb266
bb266:
  %t1513 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1513, ptr %l632, !tbaa !29
  %t1514 = load ptr, ptr %l0, !tbaa !29
  %t1515 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1516 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d312, i32 0, i32 1) }, 1
  %t1517 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d312, i32 0, i32 1) }, 0
  %t1519 = extractvalue { i64, ptr } %t1515, 1
  %t1520 = extractvalue { i64, ptr } %t1515, 0
  %t1521 = add i64 %t1517, %t1520
  %t1522 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d313, i32 0, i32 1) }, 1
  %t1523 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d313, i32 0, i32 1) }, 0
  %t1524 = add i64 %t1521, %t1523
  %t1525 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1524)
  call void @olang_textcopy(ptr %t1525, ptr %t1516, i64 %t1517)
  %t1526 = getelementptr i8, ptr %t1525, i64 %t1517
  call void @olang_textcopy(ptr %t1526, ptr %t1519, i64 %t1520)
  %t1527 = getelementptr i8, ptr %t1526, i64 %t1520
  call void @olang_textcopy(ptr %t1527, ptr %t1522, i64 %t1523)
  %t1528 = insertvalue { i64, ptr } undef, i64 %t1524, 0
  %t1529 = insertvalue { i64, ptr } %t1528, ptr %t1525, 1
  %t1531 = extractvalue { i64, ptr } %t1529, 0
  %t1532 = extractvalue { i64, ptr } %t1529, 1
  %t1533 = mul i64 %t1531, 1
  %t1534 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1533)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1534, ptr %t1532, i64 %t1533, i1 false)
  %t1535 = insertvalue { i64, ptr } undef, i64 %t1531, 0
  %t1536 = insertvalue { i64, ptr } %t1535, ptr %t1534, 1
  %t1539 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1514, { i64, ptr } %t1536)
  store { i64, ptr } %t1539, ptr %l637
  br label %bb267
bb267:
  %t1540 = load { i64, ptr }, ptr %l637, !tbaa !27
  %t1541 = extractvalue { i64, ptr } %t1540, 0
  %t1542 = extractvalue { i64, ptr } %t1540, 1
  %t1543 = mul i64 %t1541, 1
  %t1544 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1543)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1544, ptr %t1542, i64 %t1543, i1 false)
  %t1545 = insertvalue { i64, ptr } undef, i64 %t1541, 0
  %t1546 = insertvalue { i64, ptr } %t1545, ptr %t1544, 1
  %t1547 = load ptr, ptr %l632, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %t1547, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d314, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d315, i32 0, i32 1) }, { i64, ptr } %t1546, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb268
bb268:
  %t1549 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1549, ptr %l639, !tbaa !29
  %t1550 = load ptr, ptr %l0, !tbaa !29
  %t1551 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1552 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t1553 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t1555 = extractvalue { i64, ptr } %t1551, 1
  %t1556 = extractvalue { i64, ptr } %t1551, 0
  %t1557 = add i64 %t1553, %t1556
  %t1558 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t1559 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t1560 = add i64 %t1557, %t1559
  %t1561 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1560)
  call void @olang_textcopy(ptr %t1561, ptr %t1552, i64 %t1553)
  %t1562 = getelementptr i8, ptr %t1561, i64 %t1553
  call void @olang_textcopy(ptr %t1562, ptr %t1555, i64 %t1556)
  %t1563 = getelementptr i8, ptr %t1562, i64 %t1556
  call void @olang_textcopy(ptr %t1563, ptr %t1558, i64 %t1559)
  %t1564 = insertvalue { i64, ptr } undef, i64 %t1560, 0
  %t1565 = insertvalue { i64, ptr } %t1564, ptr %t1561, 1
  %t1567 = extractvalue { i64, ptr } %t1565, 0
  %t1568 = extractvalue { i64, ptr } %t1565, 1
  %t1569 = mul i64 %t1567, 1
  %t1570 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1569)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1570, ptr %t1568, i64 %t1569, i1 false)
  %t1571 = insertvalue { i64, ptr } undef, i64 %t1567, 0
  %t1572 = insertvalue { i64, ptr } %t1571, ptr %t1570, 1
  %t1575 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1550, { i64, ptr } %t1572)
  store { i64, ptr } %t1575, ptr %l644
  br label %bb269
bb269:
  %t1576 = load { i64, ptr }, ptr %l644, !tbaa !27
  %t1577 = extractvalue { i64, ptr } %t1576, 0
  %t1578 = extractvalue { i64, ptr } %t1576, 1
  %t1579 = mul i64 %t1577, 1
  %t1580 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1579)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1580, ptr %t1578, i64 %t1579, i1 false)
  %t1581 = insertvalue { i64, ptr } undef, i64 %t1577, 0
  %t1582 = insertvalue { i64, ptr } %t1581, ptr %t1580, 1
  %t1583 = load ptr, ptr %l639, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %t1583, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d318, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d319, i32 0, i32 1) }, { i64, ptr } %t1582, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb270
bb270:
  %t1585 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1585, ptr %l646, !tbaa !29
  %t1586 = load ptr, ptr %l0, !tbaa !29
  %t1587 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1588 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d320, i32 0, i32 1) }, 1
  %t1589 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d320, i32 0, i32 1) }, 0
  %t1591 = extractvalue { i64, ptr } %t1587, 1
  %t1592 = extractvalue { i64, ptr } %t1587, 0
  %t1593 = add i64 %t1589, %t1592
  %t1594 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t1595 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t1596 = add i64 %t1593, %t1595
  %t1597 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1596)
  call void @olang_textcopy(ptr %t1597, ptr %t1588, i64 %t1589)
  %t1598 = getelementptr i8, ptr %t1597, i64 %t1589
  call void @olang_textcopy(ptr %t1598, ptr %t1591, i64 %t1592)
  %t1599 = getelementptr i8, ptr %t1598, i64 %t1592
  call void @olang_textcopy(ptr %t1599, ptr %t1594, i64 %t1595)
  %t1600 = insertvalue { i64, ptr } undef, i64 %t1596, 0
  %t1601 = insertvalue { i64, ptr } %t1600, ptr %t1597, 1
  %t1603 = extractvalue { i64, ptr } %t1601, 0
  %t1604 = extractvalue { i64, ptr } %t1601, 1
  %t1605 = mul i64 %t1603, 1
  %t1606 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1605)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1606, ptr %t1604, i64 %t1605, i1 false)
  %t1607 = insertvalue { i64, ptr } undef, i64 %t1603, 0
  %t1608 = insertvalue { i64, ptr } %t1607, ptr %t1606, 1
  %t1611 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1586, { i64, ptr } %t1608)
  store { i64, ptr } %t1611, ptr %l651
  br label %bb271
bb271:
  %t1612 = load { i64, ptr }, ptr %l651, !tbaa !27
  %t1613 = extractvalue { i64, ptr } %t1612, 0
  %t1614 = extractvalue { i64, ptr } %t1612, 1
  %t1615 = mul i64 %t1613, 1
  %t1616 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1615)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1616, ptr %t1614, i64 %t1615, i1 false)
  %t1617 = insertvalue { i64, ptr } undef, i64 %t1613, 0
  %t1618 = insertvalue { i64, ptr } %t1617, ptr %t1616, 1
  %t1619 = load ptr, ptr %l646, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %t1619, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d322, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d323, i32 0, i32 1) }, { i64, ptr } %t1618, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb272
bb272:
  %t1621 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1621, ptr %l653, !tbaa !29
  %t1622 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t1622, ptr %l654, !tbaa !27
  %t1623 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1623, ptr %l655
  %t1625 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s0, ptr %l655)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1625, ptr %l657
  br label %bb273
bb273:
  %t1626 = load i1, ptr %l8, !tbaa !21
  store i1 %t1626, ptr %l658, !tbaa !21
  %t1627 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t1627, ptr %l659, !tbaa !27
  %t1628 = load i32, ptr %l6, !tbaa !23
  store i32 %t1628, ptr %l660, !tbaa !23
  %t1629 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 2
  %t1630 = getelementptr %"compiler/mir:Range", ptr %t1629, i32 0, i32 1
  %t1631 = load i32, ptr %t1630, !tbaa !23
  %t1633 = sext i32 %t1631 to i64
  store i64 %t1633, ptr %l662, !tbaa !24
  %t1634 = load %"compiler/mir:Task", ptr %l2
  store %"compiler/mir:Task" %t1634, ptr %l663
  %t1635 = load ptr, ptr %l0, !tbaa !29
  %t1637 = getelementptr %"compiler/emit:fnEm", ptr %t1635, i32 0, i32 1
  %t1638 = load ptr, ptr %t1637, !tbaa !29
  %t1640 = getelementptr %"compiler/mir:Fn", ptr %t1638, i32 0, i32 8
  store ptr %t1640, ptr %l666, !tbaa !29
  %t1641 = load i32, ptr %l1, !tbaa !23
  %t1643 = sext i32 %t1641 to i64
  %t1644 = load ptr, ptr %l666, !tbaa !29
  %t1645 = call ptr @__olang_scope_or(ptr %v2, ptr %t1644)
  %t1646 = ptrtoint ptr %t1645 to i64
  %t1648 = inttoptr i64 %t1646 to ptr
  %t1649 = load ptr, ptr %l666, !tbaa !29
  %t1651 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t1648, ptr %t1649, i64 %t1643)
  store %"compiler/mir:ScopeInfo" %t1651, ptr %l670
  br label %bb274
bb274:
  %t1652 = getelementptr %"compiler/mir:ScopeInfo", ptr %l670, i32 0, i32 4
  %t1653 = load i32, ptr %t1652, !tbaa !23
  %t1654 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t1655 = load ptr, ptr %l653, !tbaa !29
  %t1656 = load { i64, ptr }, ptr %l654, !tbaa !27
  %t1657 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l657
  %t1658 = load i1, ptr %l658, !tbaa !21
  %t1659 = load { i64, ptr }, ptr %l659, !tbaa !27
  %t1660 = load i32, ptr %l660, !tbaa !23
  %t1661 = load i64, ptr %l662, !tbaa !24
  %t1662 = load %"compiler/mir:Task", ptr %l663
  %t1665 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etrampoline(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %v2, ptr %t1655, { i64, ptr } %t1656, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1657, i1 %t1658, { i64, ptr } %t1659, i32 %t1660, i64 %t1661, %"compiler/mir:Task" %t1662, i32 %t1653, { i64, ptr } %t1654)
  store { i64, ptr } %t1665, ptr %l673
  br label %bb275
bb275:
  %t1666 = load { i64, ptr }, ptr %l673, !tbaa !27
  store { i64, ptr } %t1666, ptr %l83, !tbaa !27
  %t1667 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1667, ptr %l674, !tbaa !29
  %t1668 = load ptr, ptr %l674, !tbaa !29
  %t1669 = call ptr @__olang_scope_or(ptr %v1, ptr %t1668)
  %t1670 = ptrtoint ptr %t1669 to i64
  %t1672 = inttoptr i64 %t1670 to ptr
  %t1673 = load ptr, ptr %l674, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %t1672, ptr %s0, ptr %s0, ptr %t1673, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d324, i32 0, i32 1) }, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d325, i32 0, i32 1) })
  br label %bb276
bb276:
  %t1674 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1674, ptr %l676, !tbaa !29
  %t1675 = load ptr, ptr %l676, !tbaa !29
  %t1676 = call ptr @__olang_scope_or(ptr %v1, ptr %t1675)
  %t1677 = ptrtoint ptr %t1676 to i64
  %t1679 = inttoptr i64 %t1677 to ptr
  %t1680 = load ptr, ptr %l676, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %t1679, ptr %s0, ptr %s0, ptr %t1680, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d326, i32 0, i32 1) }, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d327, i32 0, i32 1) })
  br label %bb277
bb277:
  %t1681 = load ptr, ptr %l0, !tbaa !29
  %t1683 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1681, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d328, i32 0, i32 1) })
  store { i64, ptr } %t1683, ptr %l679
  br label %bb278
bb278:
  %t1684 = load { i64, ptr }, ptr %l679, !tbaa !27
  %t1685 = load ptr, ptr %l0, !tbaa !29
  %t1687 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t1688 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t1689 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1690 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t1691 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
  %t1693 = extractvalue { i64, ptr } %t1684, 1
  %t1694 = extractvalue { i64, ptr } %t1684, 0
  %t1695 = add i64 %t1691, %t1694
  %t1696 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t1697 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t1698 = add i64 %t1695, %t1697
  %t1700 = extractvalue { i64, ptr } %t1687, 1
  %t1701 = extractvalue { i64, ptr } %t1687, 0
  %t1702 = add i64 %t1698, %t1701
  %t1703 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t1704 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t1705 = add i64 %t1702, %t1704
  %t1707 = extractvalue { i64, ptr } %t1688, 1
  %t1708 = extractvalue { i64, ptr } %t1688, 0
  %t1709 = add i64 %t1705, %t1708
  %t1710 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t1711 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t1712 = add i64 %t1709, %t1711
  %t1714 = extractvalue { i64, ptr } %t1689, 1
  %t1715 = extractvalue { i64, ptr } %t1689, 0
  %t1716 = add i64 %t1712, %t1715
  %t1717 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t1718 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t1719 = add i64 %t1716, %t1718
  %t1720 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1719)
  call void @olang_textcopy(ptr %t1720, ptr %t1690, i64 %t1691)
  %t1721 = getelementptr i8, ptr %t1720, i64 %t1691
  call void @olang_textcopy(ptr %t1721, ptr %t1693, i64 %t1694)
  %t1722 = getelementptr i8, ptr %t1721, i64 %t1694
  call void @olang_textcopy(ptr %t1722, ptr %t1696, i64 %t1697)
  %t1723 = getelementptr i8, ptr %t1722, i64 %t1697
  call void @olang_textcopy(ptr %t1723, ptr %t1700, i64 %t1701)
  %t1724 = getelementptr i8, ptr %t1723, i64 %t1701
  call void @olang_textcopy(ptr %t1724, ptr %t1703, i64 %t1704)
  %t1725 = getelementptr i8, ptr %t1724, i64 %t1704
  call void @olang_textcopy(ptr %t1725, ptr %t1707, i64 %t1708)
  %t1726 = getelementptr i8, ptr %t1725, i64 %t1708
  call void @olang_textcopy(ptr %t1726, ptr %t1710, i64 %t1711)
  %t1727 = getelementptr i8, ptr %t1726, i64 %t1711
  call void @olang_textcopy(ptr %t1727, ptr %t1714, i64 %t1715)
  %t1728 = getelementptr i8, ptr %t1727, i64 %t1715
  call void @olang_textcopy(ptr %t1728, ptr %t1717, i64 %t1718)
  %t1729 = insertvalue { i64, ptr } undef, i64 %t1719, 0
  %t1730 = insertvalue { i64, ptr } %t1729, ptr %t1720, 1
  %t1732 = extractvalue { i64, ptr } %t1730, 0
  %t1733 = extractvalue { i64, ptr } %t1730, 1
  %t1734 = mul i64 %t1732, 1
  %t1735 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1734)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1735, ptr %t1733, i64 %t1734, i1 false)
  %t1736 = insertvalue { i64, ptr } undef, i64 %t1732, 0
  %t1737 = insertvalue { i64, ptr } %t1736, ptr %t1735, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %v1, ptr %t1685, { i64, ptr } %t1737)
  br label %bb279
bb279:
  %t1740 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1740, ptr %l687, !tbaa !29
  %t1741 = load ptr, ptr %l0, !tbaa !29
  %t1742 = load i32, ptr %l1, !tbaa !23
  %t1743 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t1744 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t1746 = sext i32 %t1742 to i64
  %t1747 = call i64 @__olang_fmt_i64(ptr null, i64 %t1746)
  %t1748 = add i64 %t1744, %t1747
  %t1749 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1748)
  call void @olang_textcopy(ptr %t1749, ptr %t1743, i64 %t1744)
  %t1750 = getelementptr i8, ptr %t1749, i64 %t1744
  %t1751 = call i64 @__olang_fmt_i64(ptr %t1750, i64 %t1746)
  %t1752 = insertvalue { i64, ptr } undef, i64 %t1748, 0
  %t1753 = insertvalue { i64, ptr } %t1752, ptr %t1749, 1
  %t1755 = extractvalue { i64, ptr } %t1753, 0
  %t1756 = extractvalue { i64, ptr } %t1753, 1
  %t1757 = mul i64 %t1755, 1
  %t1758 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1757)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1758, ptr %t1756, i64 %t1757, i1 false)
  %t1759 = insertvalue { i64, ptr } undef, i64 %t1755, 0
  %t1760 = insertvalue { i64, ptr } %t1759, ptr %t1758, 1
  %t1763 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %t1741, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d334, i32 0, i32 1) }, { i64, ptr } %t1760, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t1763, ptr %l692
  br label %bb280
bb280:
  %t1764 = load { i64, ptr }, ptr %l692, !tbaa !27
  %t1765 = extractvalue { i64, ptr } %t1764, 0
  %t1766 = extractvalue { i64, ptr } %t1764, 1
  %t1767 = mul i64 %t1765, 1
  %t1768 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1767)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1768, ptr %t1766, i64 %t1767, i1 false)
  %t1769 = insertvalue { i64, ptr } undef, i64 %t1765, 0
  %t1770 = insertvalue { i64, ptr } %t1769, ptr %t1768, 1
  %t1771 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1772 = load ptr, ptr %l687, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %t1772, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d335, i32 0, i32 1) }, { i64, ptr } %t1770, { i64, ptr } %t1771, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb281
bb281:
  %t1775 = load ptr, ptr %l0, !tbaa !29
  %t1776 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1777 = load i32, ptr %l1, !tbaa !23
  %t1778 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t1779 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
  %t1781 = sext i32 %t1777 to i64
  %t1782 = call i64 @__olang_fmt_i64(ptr null, i64 %t1781)
  %t1783 = add i64 %t1779, %t1782
  %t1784 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1783)
  call void @olang_textcopy(ptr %t1784, ptr %t1778, i64 %t1779)
  %t1785 = getelementptr i8, ptr %t1784, i64 %t1779
  %t1786 = call i64 @__olang_fmt_i64(ptr %t1785, i64 %t1781)
  %t1787 = insertvalue { i64, ptr } undef, i64 %t1783, 0
  %t1788 = insertvalue { i64, ptr } %t1787, ptr %t1784, 1
  %t1790 = extractvalue { i64, ptr } %t1788, 0
  %t1791 = extractvalue { i64, ptr } %t1788, 1
  %t1792 = mul i64 %t1790, 1
  %t1793 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1792)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1793, ptr %t1791, i64 %t1792, i1 false)
  %t1794 = insertvalue { i64, ptr } undef, i64 %t1790, 0
  %t1795 = insertvalue { i64, ptr } %t1794, ptr %t1793, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %t1775, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d337, i32 0, i32 1) }, { i64, ptr } %t1776, { i64, ptr } %t1795, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb282
bb282:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2estoreParts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4, i64 %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l23 = alloca i32
  %l25 = alloca i32
  %l30 = alloca { i64, ptr }
  %l35 = alloca i32
  %l38 = alloca i32
  %l65 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l67 = alloca i32
  %l69 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l79 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l7, !tbaa !29
  %t9 = load ptr, ptr %l7, !tbaa !29
  store ptr %t9, ptr %l18, !tbaa !29
  %t10 = load ptr, ptr %l7, !tbaa !29
  store ptr %t10, ptr %l19, !tbaa !29
  %t11 = load ptr, ptr %l7, !tbaa !29
  store ptr %t11, ptr %l20, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t13 = load ptr, ptr %l20, !tbaa !29
  %t14 = call ptr @__olang_scope_or(ptr %v4, ptr %t13)
  %t15 = ptrtoint ptr %t14 to i64
  %t17 = inttoptr i64 %t15 to ptr
  %t18 = load ptr, ptr %l20, !tbaa !29
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t17, ptr %t18, i32 %t12)
  store i32 %t20, ptr %l23
  br label %bb1
bb1:
  %t21 = load ptr, ptr %l19, !tbaa !29
  %t22 = call ptr @__olang_scope_or(ptr %v4, ptr %t21)
  %t23 = ptrtoint ptr %t22 to i64
  %t25 = inttoptr i64 %t23 to ptr
  %t26 = load ptr, ptr %l19, !tbaa !29
  %t27 = load i32, ptr %l23, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t25, ptr %t26, i32 %t27)
  store i32 %t28, ptr %l25
  br label %bb2
bb2:
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t30 = call ptr @__olang_scope_or(ptr %v4, ptr %t29)
  %t31 = ptrtoint ptr %t30 to i64
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/emit:fnEm", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = call ptr @__olang_scope_or(ptr %v4, ptr %t35)
  %t38 = ptrtoint ptr %t37 to i64
  %t40 = inttoptr i64 %t31 to ptr
  %t42 = inttoptr i64 %t38 to ptr
  %t43 = load ptr, ptr %l18, !tbaa !29
  %t44 = load i32, ptr %l25, !tbaa !23
  %t45 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t40, ptr %t42, ptr %t43, i32 %t44)
  store { i64, ptr } %t45, ptr %l30
  br label %bb3
bb3:
  %t46 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t46, ptr %l8, !tbaa !27
  store i32 0, ptr %l9, !tbaa !23
  store i32 %a6, ptr %l10, !tbaa !23
  store i32 1, ptr %l11, !tbaa !23
  %t49 = load i32, ptr %l10, !tbaa !23
  %t50 = load i32, ptr %l9, !tbaa !23
  %t53 = icmp sgt i32 %t49, %t50
  br i1 %t53, label %bb4, label %bb5
bb4:
  %t55 = load i32, ptr %l11, !tbaa !23
  %t57 = icmp sgt i32 %t55, 0
  br i1 %t57, label %bb6, label %bb7
bb5:
  store i32 0, ptr %l35, !tbaa !23
  br label %bb9
bb6:
  %t59 = load i32, ptr %l10, !tbaa !23
  %t60 = load i32, ptr %l9, !tbaa !23
  %t63 = sub i32 %t59, %t60
  %t64 = load i32, ptr %l11, !tbaa !23
  %t67 = add i32 %t63, %t64
  %t69 = sub i32 %t67, 1
  %t70 = load i32, ptr %l11, !tbaa !23
  %t73 = sdiv i32 %t69, %t70
  store i32 %t73, ptr %l38, !tbaa !23
  br label %bb8
bb7:
  store i32 0, ptr %l38, !tbaa !23
  br label %bb8
bb8:
  %t75 = load i32, ptr %l38, !tbaa !23
  store i32 %t75, ptr %l35, !tbaa !23
  br label %bb9
bb9:
  %t76 = load i32, ptr %l35, !tbaa !23
  store i32 %t76, ptr %l12, !tbaa !23
  store i32 0, ptr %l13, !tbaa !23
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t77 = load i32, ptr %l13, !tbaa !23
  %t78 = load i32, ptr %l12, !tbaa !23
  %t81 = icmp slt i32 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t85 = load i32, ptr %l9, !tbaa !23
  %t86 = load i32, ptr %l13, !tbaa !23
  %t87 = load i32, ptr %l11, !tbaa !23
  %t90 = mul i32 %t86, %t87
  %t93 = add i32 %t85, %t90
  store i32 %t93, ptr %l14, !tbaa !23
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t96 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t97 = load i32, ptr %l14, !tbaa !23
  %t99 = load i32, ptr %l14, !tbaa !23
  %t101 = sext i32 %t99 to i64
  %t104 = add i64 %a5, %t101
  %t105 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d338, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d338, i32 0, i32 1) }, 0
  %t108 = extractvalue { i64, ptr } %t96, 1
  %t109 = extractvalue { i64, ptr } %t96, 0
  %t110 = add i64 %t106, %t109
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
  %t113 = add i64 %t110, %t112
  %t115 = sext i32 %t97 to i64
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t115)
  %t117 = add i64 %t113, %t116
  %t118 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d340, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d340, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t122 = call i64 @__olang_fmt_i64(ptr null, i64 %t104)
  %t123 = add i64 %t120, %t122
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d341, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d341, i32 0, i32 1) }, 0
  %t126 = add i64 %t123, %t125
  %t127 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t126)
  call void @olang_textcopy(ptr %t127, ptr %t105, i64 %t106)
  %t128 = getelementptr i8, ptr %t127, i64 %t106
  call void @olang_textcopy(ptr %t128, ptr %t108, i64 %t109)
  %t129 = getelementptr i8, ptr %t128, i64 %t109
  call void @olang_textcopy(ptr %t129, ptr %t111, i64 %t112)
  %t130 = getelementptr i8, ptr %t129, i64 %t112
  %t131 = call i64 @__olang_fmt_i64(ptr %t130, i64 %t115)
  %t132 = getelementptr i8, ptr %t130, i64 %t116
  call void @olang_textcopy(ptr %t132, ptr %t118, i64 %t119)
  %t133 = getelementptr i8, ptr %t132, i64 %t119
  %t134 = call i64 @__olang_fmt_i64(ptr %t133, i64 %t104)
  %t135 = getelementptr i8, ptr %t133, i64 %t122
  call void @olang_textcopy(ptr %t135, ptr %t124, i64 %t125)
  %t136 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t127, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = extractvalue { i64, ptr } %t137, 1
  %t141 = mul i64 %t139, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t141)
  call void @llvm.memcpy.p0.p0.i64(ptr %t142, ptr %t140, i64 %t141, i1 false)
  %t143 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t95, { i64, ptr } %t144)
  br label %bb14
bb14:
  %t147 = load ptr, ptr %l1, !tbaa !29
  store ptr %t147, ptr %l65, !tbaa !29
  %t148 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t148, ptr %l66, !tbaa !27
  %t149 = load i32, ptr %l14, !tbaa !23
  store i32 %t149, ptr %l67, !tbaa !23
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/emit:fnEm", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  store ptr %t153, ptr %l69, !tbaa !29
  %t154 = load i32, ptr %l3, !tbaa !23
  %t155 = load ptr, ptr %l69, !tbaa !29
  %t156 = call ptr @__olang_scope_or(ptr %v4, ptr %t155)
  %t157 = ptrtoint ptr %t156 to i64
  %t159 = inttoptr i64 %t157 to ptr
  %t160 = load ptr, ptr %l69, !tbaa !29
  %t162 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %t159, ptr %s2, ptr %t160, i32 %t154)
  store { i64, ptr } %t162, ptr %l72
  br label %bb15
bb15:
  %t164 = load i32, ptr %l14, !tbaa !23
  %t165 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
  %t167 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = add i64 %t166, %t169
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t174 = load i32, ptr %l67, !tbaa !23
  %t175 = sext i32 %t174 to i64
  %t176 = call i64 @__olang_fmt_i64(ptr null, i64 %t175)
  %t177 = add i64 %t173, %t176
  %t178 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
  %t180 = add i64 %t177, %t179
  %t181 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 1
  %t183 = extractvalue { i64, ptr } %t181, 0
  %t184 = add i64 %t180, %t183
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d345, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d345, i32 0, i32 1) }, 0
  %t187 = add i64 %t184, %t186
  %t189 = extractvalue { i64, ptr } %a4, 1
  %t190 = extractvalue { i64, ptr } %a4, 0
  %t191 = add i64 %t187, %t190
  %t192 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t194 = add i64 %t191, %t193
  %t196 = sext i32 %t164 to i64
  %t197 = call i64 @__olang_fmt_i64(ptr null, i64 %t196)
  %t198 = add i64 %t194, %t197
  %t199 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t202 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t201)
  call void @olang_textcopy(ptr %t202, ptr %t165, i64 %t166)
  %t203 = getelementptr i8, ptr %t202, i64 %t166
  call void @olang_textcopy(ptr %t203, ptr %t168, i64 %t169)
  %t204 = getelementptr i8, ptr %t203, i64 %t169
  call void @olang_textcopy(ptr %t204, ptr %t171, i64 %t172)
  %t205 = getelementptr i8, ptr %t204, i64 %t172
  %t206 = call i64 @__olang_fmt_i64(ptr %t205, i64 %t175)
  %t207 = getelementptr i8, ptr %t205, i64 %t176
  call void @olang_textcopy(ptr %t207, ptr %t178, i64 %t179)
  %t208 = getelementptr i8, ptr %t207, i64 %t179
  call void @olang_textcopy(ptr %t208, ptr %t182, i64 %t183)
  %t209 = getelementptr i8, ptr %t208, i64 %t183
  call void @olang_textcopy(ptr %t209, ptr %t185, i64 %t186)
  %t210 = getelementptr i8, ptr %t209, i64 %t186
  call void @olang_textcopy(ptr %t210, ptr %t189, i64 %t190)
  %t211 = getelementptr i8, ptr %t210, i64 %t190
  call void @olang_textcopy(ptr %t211, ptr %t192, i64 %t193)
  %t212 = getelementptr i8, ptr %t211, i64 %t193
  %t213 = call i64 @__olang_fmt_i64(ptr %t212, i64 %t196)
  %t214 = getelementptr i8, ptr %t212, i64 %t197
  call void @olang_textcopy(ptr %t214, ptr %t199, i64 %t200)
  %t215 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t202, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t219 = extractvalue { i64, ptr } %t216, 1
  %t220 = mul i64 %t218, 1
  %t221 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t220)
  call void @llvm.memcpy.p0.p0.i64(ptr %t221, ptr %t219, i64 %t220, i1 false)
  %t222 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  %t224 = load ptr, ptr %l65, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t224, { i64, ptr } %t223)
  br label %bb16
bb16:
  %t226 = load ptr, ptr %l1, !tbaa !29
  store ptr %t226, ptr %l77, !tbaa !29
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/emit:fnEm", ptr %t227, i32 0, i32 0
  %t230 = load ptr, ptr %t229, !tbaa !29
  store ptr %t230, ptr %l79, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t231, ptr %l80, !tbaa !27
  %t232 = load i32, ptr %l14, !tbaa !23
  %t234 = sext i32 %t232 to i64
  %t235 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr i32, ptr %t236, i64 %t234
  %t238 = load i32, ptr %t237, !tbaa !33
  %t239 = load ptr, ptr %l79, !tbaa !29
  %t240 = call ptr @__olang_scope_or(ptr %v4, ptr %t239)
  %t241 = ptrtoint ptr %t240 to i64
  %t243 = inttoptr i64 %t241 to ptr
  %t244 = load ptr, ptr %l79, !tbaa !29
  %t246 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %t243, ptr %s2, ptr %t244, i32 %t238)
  store { i64, ptr } %t246, ptr %l84
  br label %bb17
bb17:
  %t247 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t248 = load i32, ptr %l14, !tbaa !23
  %t249 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t250 = load i32, ptr %l14, !tbaa !23
  %t251 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
  %t253 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = add i64 %t252, %t255
  %t257 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d349, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d349, i32 0, i32 1) }, 0
  %t259 = add i64 %t256, %t258
  %t261 = extractvalue { i64, ptr } %t247, 1
  %t262 = extractvalue { i64, ptr } %t247, 0
  %t263 = add i64 %t259, %t262
  %t264 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t265 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t266 = add i64 %t263, %t265
  %t268 = sext i32 %t248 to i64
  %t269 = call i64 @__olang_fmt_i64(ptr null, i64 %t268)
  %t270 = add i64 %t266, %t269
  %t271 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t272 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t273 = add i64 %t270, %t272
  %t275 = extractvalue { i64, ptr } %t249, 1
  %t276 = extractvalue { i64, ptr } %t249, 0
  %t277 = add i64 %t273, %t276
  %t278 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t280 = add i64 %t277, %t279
  %t282 = sext i32 %t250 to i64
  %t283 = call i64 @__olang_fmt_i64(ptr null, i64 %t282)
  %t284 = add i64 %t280, %t283
  %t285 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t286 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
  %t287 = add i64 %t284, %t286
  %t288 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t287)
  call void @olang_textcopy(ptr %t288, ptr %t251, i64 %t252)
  %t289 = getelementptr i8, ptr %t288, i64 %t252
  call void @olang_textcopy(ptr %t289, ptr %t254, i64 %t255)
  %t290 = getelementptr i8, ptr %t289, i64 %t255
  call void @olang_textcopy(ptr %t290, ptr %t257, i64 %t258)
  %t291 = getelementptr i8, ptr %t290, i64 %t258
  call void @olang_textcopy(ptr %t291, ptr %t261, i64 %t262)
  %t292 = getelementptr i8, ptr %t291, i64 %t262
  call void @olang_textcopy(ptr %t292, ptr %t264, i64 %t265)
  %t293 = getelementptr i8, ptr %t292, i64 %t265
  %t294 = call i64 @__olang_fmt_i64(ptr %t293, i64 %t268)
  %t295 = getelementptr i8, ptr %t293, i64 %t269
  call void @olang_textcopy(ptr %t295, ptr %t271, i64 %t272)
  %t296 = getelementptr i8, ptr %t295, i64 %t272
  call void @olang_textcopy(ptr %t296, ptr %t275, i64 %t276)
  %t297 = getelementptr i8, ptr %t296, i64 %t276
  call void @olang_textcopy(ptr %t297, ptr %t278, i64 %t279)
  %t298 = getelementptr i8, ptr %t297, i64 %t279
  %t299 = call i64 @__olang_fmt_i64(ptr %t298, i64 %t282)
  %t300 = getelementptr i8, ptr %t298, i64 %t283
  call void @olang_textcopy(ptr %t300, ptr %t285, i64 %t286)
  %t301 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t288, 1
  %t304 = extractvalue { i64, ptr } %t302, 0
  %t305 = extractvalue { i64, ptr } %t302, 1
  %t306 = mul i64 %t304, 1
  %t307 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t306)
  call void @llvm.memcpy.p0.p0.i64(ptr %t307, ptr %t305, i64 %t306, i1 false)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  %t310 = load ptr, ptr %l77, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t310, { i64, ptr } %t309)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t312 = load i32, ptr %l13, !tbaa !23
  %t314 = add i32 %t312, 1
  store i32 %t314, ptr %l13, !tbaa !23
  br label %bb10
bb20:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2etailCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Call" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Call"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, [7 x i64] }
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i32
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca i1
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l44 = alloca i64
  %l47 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l59 = alloca i1
  %l64 = alloca ptr
  %l67 = alloca %"std/prelude/text:StringBuilder"
  %l72 = alloca i32
  %l75 = alloca i32
  %l96 = alloca ptr
  %l97 = alloca ptr
  %l100 = alloca ptr
  %l107 = alloca { i64, [1 x i64] }
  %l108 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l114 = alloca ptr
  %l117 = alloca i32
  %l122 = alloca { i64, ptr }
  %l123 = alloca ptr
  %l126 = alloca { i64, ptr }
  %l132 = alloca i64
  %l135 = alloca i64
  %l160 = alloca ptr
  %l164 = alloca { i64, [4 x i64] }
  %l165 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l178 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l186 = alloca ptr
  %l188 = alloca { i64, ptr }
  %l191 = alloca { i64, ptr }
  %l201 = alloca ptr
  %l205 = alloca { i64, ptr }
  %l207 = alloca i1
  %l208 = alloca ptr
  %l209 = alloca { i64, ptr }
  %l211 = alloca { i64, ptr }
  %l215 = alloca ptr
  %l216 = alloca { i64, ptr }
  %l217 = alloca { i64, ptr }
  %l219 = alloca { i64, ptr }
  %l222 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/mir:Call" %a1, ptr %l1
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
  store ptr %t7, ptr %l2, !tbaa !29
  %t9 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d353, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t13 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 0
  %t14 = load { i64, [7 x i64] }, ptr %t13
  store { i64, [7 x i64] } %t14, ptr %l5
  %t16 = load { i64, [7 x i64] }, ptr %l5
  %t18 = extractvalue { i64, [7 x i64] } %t16, 0
  %t19 = icmp eq i64 %t18, 0
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = getelementptr { i64, [7 x i64] }, ptr %l5, i32 0, i32 1
  %t22 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t21, i32 0, i32 0
  %t23 = load { i64, [2 x i64] }, ptr %t22
  store { i64, [2 x i64] } %t23, ptr %l6
  %t25 = getelementptr { i64, [7 x i64] }, ptr %l5, i32 0, i32 1
  %t26 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t25, i32 0, i32 1
  %t27 = load i32, ptr %t26
  store i32 %t27, ptr %l7, !tbaa !23
  br label %bb3
bb2:
  br label %bb17
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/emit:fnEm", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l40, !tbaa !29
  %t33 = load { i64, [2 x i64] }, ptr %l6
  %t34 = load ptr, ptr %l40, !tbaa !29
  %t35 = call ptr @__olang_scope_or(ptr %v1, ptr %t34)
  %t36 = ptrtoint ptr %t35 to i64
  %t38 = inttoptr i64 %t36 to ptr
  %t39 = load ptr, ptr %l40, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %t38, ptr %t39, { i64, [2 x i64] } %t33)
  br label %bb4
bb4:
  %t41 = load i32, ptr %l7, !tbaa !23
  store i32 %t41, ptr %l3, !tbaa !23
  %t43 = ptrtoint ptr %s0 to i64
  store i64 %t43, ptr %l44, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2etailCall_2elocal_2e4
  br i1 %t44, label %bb5, label %bb6
bb5:
  %t46 = call ptr @__olang_region_make(ptr %s0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l44, !tbaa !24
  br label %bb6
bb6:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/emit:fnEm", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  store ptr %t51, ptr %l47, !tbaa !29
  %t52 = load { i64, [2 x i64] }, ptr %l6
  %t53 = load ptr, ptr %l47, !tbaa !29
  %t54 = call ptr @__olang_scope_or(ptr %v1, ptr %t53)
  %t55 = ptrtoint ptr %t54 to i64
  %t57 = inttoptr i64 %t55 to ptr
  %t58 = load ptr, ptr %l47, !tbaa !29
  %t60 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %t57, ptr %s1, ptr %t58, { i64, [2 x i64] } %t52)
  store { i64, ptr } %t60, ptr %l50
  br label %bb7
bb7:
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
  %t63 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = add i64 %t62, %t65
  %t67 = load i64, ptr %l44
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = call ptr @__olang_scope_alloc(ptr %t68, i64 %t66)
  call void @olang_textcopy(ptr %t69, ptr %t61, i64 %t62)
  %t70 = getelementptr i8, ptr %t69, i64 %t62
  call void @olang_textcopy(ptr %t70, ptr %t64, i64 %t65)
  %t71 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  store { i64, ptr } %t72, ptr %l51, !tbaa !27
  %t73 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2etailCall_2elocal_2e4
  br i1 %t73, label %bb8, label %bb9
bb8:
  %t75 = load i64, ptr %l44
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = load { i64, ptr }, ptr %l51
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = icmp ne ptr %t79, null
  %t81 = select i1 %t80, ptr %t79, ptr null
  %t82 = icmp eq ptr %t81, %t76
  call void @__olang_region_settle(ptr %t76, i1 %t82)
  br label %bb9
bb9:
  %t83 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t83, ptr %l53, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t84, ptr %l4, !tbaa !27
  %t85 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2etailCall_2elocal_2e4
  br i1 %t85, label %bb10, label %bb11
bb10:
  %t87 = load { i64, ptr }, ptr %l53
  %t88 = extractvalue { i64, ptr } %t87, 1
  call void @__olang_region_release(ptr %t88)
  store { i64, ptr } zeroinitializer, ptr %l53
  br label %bb11
bb11:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/emit:fnEm", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  store ptr %t92, ptr %l56, !tbaa !29
  %t93 = load { i64, [2 x i64] }, ptr %l6
  %t94 = load ptr, ptr %l56, !tbaa !29
  %t95 = call ptr @__olang_scope_or(ptr %v1, ptr %t94)
  %t96 = ptrtoint ptr %t95 to i64
  %t98 = inttoptr i64 %t96 to ptr
  %t99 = load ptr, ptr %l56, !tbaa !29
  %t101 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %t98, ptr %t99, { i64, [2 x i64] } %t93)
  store i1 %t101, ptr %l59
  br label %bb12
bb12:
  %t102 = load i1, ptr %l59, !tbaa !21
  br i1 %t102, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t103 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s3, ptr %v1, ptr %t103, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d355, i32 0, i32 1) })
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s1)
  br label %bb24
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb23
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t105 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s4, ptr %v1, ptr %t105, { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d356, i32 0, i32 1) })
  br label %bb21
bb21:
  %t107 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s4, ptr %v1, ptr %t107, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d357, i32 0, i32 1) })
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_5928719bf5ddeb28_6f82e9f6c6163cdc)
  unreachable
bb24:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/emit:fnEm", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  store ptr %t112, ptr %l64, !tbaa !29
  %t113 = load i32, ptr %l3, !tbaa !23
  %t114 = load ptr, ptr %l64, !tbaa !29
  %t115 = call ptr @__olang_scope_or(ptr %v1, ptr %t114)
  %t116 = ptrtoint ptr %t115 to i64
  %t118 = inttoptr i64 %t116 to ptr
  %t119 = load ptr, ptr %l64, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %t118, ptr %t119, i32 %t113)
  br label %bb25
bb25:
  %t121 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t121, ptr %l67
  br label %bb26
bb26:
  %t122 = load %"std/prelude/text:StringBuilder", ptr %l67
  store %"std/prelude/text:StringBuilder" %t122, ptr %l8
  store i1 true, ptr %l9, !tbaa !21
  store i32 0, ptr %l10, !tbaa !23
  %t123 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 2
  %t124 = getelementptr %"compiler/mir:Range", ptr %t123, i32 0, i32 1
  %t125 = load i32, ptr %t124, !tbaa !23
  store i32 %t125, ptr %l11, !tbaa !23
  store i32 1, ptr %l12, !tbaa !23
  %t127 = load i32, ptr %l11, !tbaa !23
  %t128 = load i32, ptr %l10, !tbaa !23
  %t131 = icmp sgt i32 %t127, %t128
  br i1 %t131, label %bb27, label %bb28
bb27:
  %t133 = load i32, ptr %l12, !tbaa !23
  %t135 = icmp sgt i32 %t133, 0
  br i1 %t135, label %bb29, label %bb30
bb28:
  store i32 0, ptr %l72, !tbaa !23
  br label %bb32
bb29:
  %t137 = load i32, ptr %l11, !tbaa !23
  %t138 = load i32, ptr %l10, !tbaa !23
  %t141 = sub i32 %t137, %t138
  %t142 = load i32, ptr %l12, !tbaa !23
  %t145 = add i32 %t141, %t142
  %t147 = sub i32 %t145, 1
  %t148 = load i32, ptr %l12, !tbaa !23
  %t151 = sdiv i32 %t147, %t148
  store i32 %t151, ptr %l75, !tbaa !23
  br label %bb31
bb30:
  store i32 0, ptr %l75, !tbaa !23
  br label %bb31
bb31:
  %t153 = load i32, ptr %l75, !tbaa !23
  store i32 %t153, ptr %l72, !tbaa !23
  br label %bb32
bb32:
  %t154 = load i32, ptr %l72, !tbaa !23
  store i32 %t154, ptr %l13, !tbaa !23
  store i32 0, ptr %l14, !tbaa !23
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t155 = load i32, ptr %l14, !tbaa !23
  %t156 = load i32, ptr %l13, !tbaa !23
  %t159 = icmp slt i32 %t155, %t156
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s6)
  br label %bb45
bb35:
  br label %bb36
bb36:
  %t163 = load i32, ptr %l10, !tbaa !23
  %t164 = load i32, ptr %l14, !tbaa !23
  %t165 = load i32, ptr %l12, !tbaa !23
  %t168 = mul i32 %t164, %t165
  %t171 = add i32 %t163, %t168
  store i32 %t171, ptr %l15, !tbaa !23
  %t173 = load i1, ptr %l9, !tbaa !21
  %t175 = xor i1 %t173, true
  br i1 %t175, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d358, i32 0, i32 1) })
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb40:
  store i1 false, ptr %l9, !tbaa !21
  store ptr %l8, ptr %l96, !tbaa !29
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l97, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/emit:fnEm", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/mir:Fn", ptr %t182, i32 0, i32 12
  store ptr %t184, ptr %l100, !tbaa !29
  %t185 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 2
  %t186 = getelementptr %"compiler/mir:Range", ptr %t185, i32 0, i32 0
  %t187 = load i32, ptr %t186, !tbaa !23
  %t189 = sext i32 %t187 to i64
  %t190 = load i32, ptr %l15, !tbaa !23
  %t192 = sext i32 %t190 to i64
  %t195 = add i64 %t189, %t192
  %t196 = load ptr, ptr %l100, !tbaa !29
  %t197 = call ptr @__olang_scope_or(ptr %v2, ptr %t196)
  %t198 = ptrtoint ptr %t197 to i64
  %t200 = inttoptr i64 %t198 to ptr
  %t201 = load ptr, ptr %l100, !tbaa !29
  %t203 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t200, ptr %t201, i64 %t195)
  store { i64, [1 x i64] } %t203, ptr %l107
  br label %bb41
bb41:
  %t204 = load ptr, ptr %l97, !tbaa !29
  %t205 = load { i64, [1 x i64] }, ptr %l107
  %t206 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s6, ptr %v1, ptr %v2, ptr %t204, { i64, [1 x i64] } %t205)
  store { i64, ptr } %t206, ptr %l108
  br label %bb42
bb42:
  %t207 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d359, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d359, i32 0, i32 1) }, 0
  %t209 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 1
  %t211 = extractvalue { i64, ptr } %t209, 0
  %t212 = add i64 %t208, %t211
  %t213 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t212)
  call void @olang_textcopy(ptr %t213, ptr %t207, i64 %t208)
  %t214 = getelementptr i8, ptr %t213, i64 %t208
  call void @olang_textcopy(ptr %t214, ptr %t210, i64 %t211)
  %t215 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t213, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t219 = extractvalue { i64, ptr } %t216, 1
  %t220 = mul i64 %t218, 1
  %t221 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t220)
  call void @llvm.memcpy.p0.p0.i64(ptr %t221, ptr %t219, i64 %t220, i1 false)
  %t222 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  %t224 = load ptr, ptr %l96, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t224, { i64, ptr } %t223)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb44:
  %t226 = load i32, ptr %l14, !tbaa !23
  %t228 = add i32 %t226, 1
  store i32 %t228, ptr %l14, !tbaa !23
  br label %bb33
bb45:
  %t230 = load ptr, ptr %l2, !tbaa !29
  store ptr %t230, ptr %l113, !tbaa !29
  %t231 = load ptr, ptr %l2, !tbaa !29
  store ptr %t231, ptr %l114, !tbaa !29
  %t232 = load i32, ptr %l3, !tbaa !23
  %t233 = load ptr, ptr %l114, !tbaa !29
  %t234 = call ptr @__olang_scope_or(ptr %v1, ptr %t233)
  %t235 = ptrtoint ptr %t234 to i64
  %t237 = inttoptr i64 %t235 to ptr
  %t238 = load ptr, ptr %l114, !tbaa !29
  %t240 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %t237, ptr %t238, i32 %t232)
  store i32 %t240, ptr %l117
  br label %bb46
bb46:
  %t241 = load ptr, ptr %l113, !tbaa !29
  %t242 = call ptr @__olang_scope_or(ptr %v1, ptr %t241)
  %t243 = ptrtoint ptr %t242 to i64
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/emit:fnEm", ptr %t244, i32 0, i32 0
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t249 = call ptr @__olang_scope_or(ptr %v1, ptr %t247)
  %t250 = ptrtoint ptr %t249 to i64
  %t252 = inttoptr i64 %t243 to ptr
  %t254 = inttoptr i64 %t250 to ptr
  %t255 = load ptr, ptr %l113, !tbaa !29
  %t256 = load i32, ptr %l117, !tbaa !23
  %t257 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t252, ptr %t254, ptr %t255, i32 %t256)
  store { i64, ptr } %t257, ptr %l122
  br label %bb47
bb47:
  %t258 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t258, ptr %l16, !tbaa !27
  %t259 = load ptr, ptr %l2, !tbaa !29
  store ptr %t259, ptr %l123, !tbaa !29
  %t260 = load i32, ptr %l3, !tbaa !23
  %t261 = load ptr, ptr %l123, !tbaa !29
  %t262 = call ptr @__olang_scope_or(ptr %v1, ptr %t261)
  %t263 = ptrtoint ptr %t262 to i64
  %t265 = inttoptr i64 %t263 to ptr
  %t266 = load ptr, ptr %l123, !tbaa !29
  %t268 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %t265, ptr %s0, ptr %t266, i32 %t260)
  store { i64, ptr } %t268, ptr %l126
  br label %bb48
bb48:
  %t269 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t269, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t270 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t270, 0
  store i64 %t272, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t274 = load i64, ptr %l19, !tbaa !24
  %t275 = load i64, ptr %l18, !tbaa !24
  %t278 = icmp sgt i64 %t274, %t275
  br i1 %t278, label %bb49, label %bb50
bb49:
  %t280 = load i64, ptr %l20, !tbaa !24
  %t282 = icmp sgt i64 %t280, 0
  br i1 %t282, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb54
bb51:
  %t284 = load i64, ptr %l19, !tbaa !24
  %t285 = load i64, ptr %l18, !tbaa !24
  %t288 = sub i64 %t284, %t285
  %t289 = load i64, ptr %l20, !tbaa !24
  %t292 = add i64 %t288, %t289
  %t294 = sub i64 %t292, 1
  %t295 = load i64, ptr %l20, !tbaa !24
  %t298 = sdiv i64 %t294, %t295
  store i64 %t298, ptr %l135, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb53
bb53:
  %t300 = load i64, ptr %l135, !tbaa !24
  store i64 %t300, ptr %l132, !tbaa !24
  br label %bb54
bb54:
  %t301 = load i64, ptr %l132, !tbaa !24
  store i64 %t301, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s11
  %t302 = load i64, ptr %l22, !tbaa !24
  %t303 = load i64, ptr %l21, !tbaa !24
  %t306 = icmp slt i64 %t302, %t303
  %t308 = xor i1 %t306, true
  br i1 %t308, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s11)
  br label %bb84
bb57:
  br label %bb58
bb58:
  %t310 = load i64, ptr %l18, !tbaa !24
  %t311 = load i64, ptr %l22, !tbaa !24
  %t312 = load i64, ptr %l20, !tbaa !24
  %t315 = mul i64 %t311, %t312
  %t318 = add i64 %t310, %t315
  store i64 %t318, ptr %l23, !tbaa !24
  %t320 = load i1, ptr %l9, !tbaa !21
  %t322 = xor i1 %t320, true
  br i1 %t322, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s12
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d360, i32 0, i32 1) })
  br label %bb61
bb60:
  br label %bb62
bb61:
  call void @__olang_scope_close(ptr %s12)
  br label %bb62
bb62:
  store i1 false, ptr %l9, !tbaa !21
  %t325 = load i64, ptr %l23, !tbaa !24
  %t327 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr i8, ptr %t328, i64 %t325
  %t330 = load i8, ptr %t329, !tbaa !32
  %t332 = icmp eq i8 %t330, 109
  br i1 %t332, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s13
  %t334 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s13, ptr %v1, ptr %t334, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d361, i32 0, i32 1) })
  br label %bb65
bb64:
  br label %bb66
bb65:
  call void @__olang_scope_close(ptr %s13)
  br label %bb66
bb66:
  %t336 = load ptr, ptr %l0, !tbaa !29
  store ptr %t336, ptr %l160, !tbaa !29
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 1
  %t339 = load %"compiler/mir:Range", ptr %t338
  %t340 = load i64, ptr %l23, !tbaa !24
  %t344 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v2, ptr %t337, %"compiler/mir:Range" %t339, i64 %t340)
  store { i64, [4 x i64] } %t344, ptr %l164
  br label %bb67
bb67:
  %t345 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t345, ptr %l165, !tbaa !27
  %t346 = load i64, ptr %l23, !tbaa !24
  %t348 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !27
  %t350 = getelementptr i32, ptr %t349, i64 %t346
  %t351 = load i32, ptr %t350, !tbaa !33
  %t352 = load ptr, ptr %l160, !tbaa !29
  %t353 = load { i64, [4 x i64] }, ptr %l164
  %t355 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s11, ptr %v2, ptr %v1, ptr %t352, { i64, [4 x i64] } %t353, i32 %t351)
  store { i64, ptr } %t355, ptr %l168
  br label %bb68
bb68:
  %t356 = load { i64, ptr }, ptr %l168, !tbaa !27
  store { i64, ptr } %t356, ptr %l24, !tbaa !27
  %t357 = load i64, ptr %l23, !tbaa !24
  %t359 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = getelementptr i8, ptr %t360, i64 %t357
  %t362 = load i8, ptr %t361, !tbaa !32
  %t366 = icmp eq i8 %t362, 115
  br i1 %t366, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb75
bb71:
  store %olang.scope zeroinitializer, ptr %s14
  store ptr %l8, ptr %l173, !tbaa !29
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t370 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d362, i32 0, i32 1) }, 1
  %t371 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d362, i32 0, i32 1) }, 0
  %t373 = extractvalue { i64, ptr } %t369, 1
  %t374 = extractvalue { i64, ptr } %t369, 0
  %t375 = add i64 %t371, %t374
  %t376 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d363, i32 0, i32 1) }, 1
  %t377 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d363, i32 0, i32 1) }, 0
  %t378 = add i64 %t375, %t377
  %t379 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t378)
  call void @olang_textcopy(ptr %t379, ptr %t370, i64 %t371)
  %t380 = getelementptr i8, ptr %t379, i64 %t371
  call void @olang_textcopy(ptr %t380, ptr %t373, i64 %t374)
  %t381 = getelementptr i8, ptr %t380, i64 %t374
  call void @olang_textcopy(ptr %t381, ptr %t376, i64 %t377)
  %t382 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t383 = insertvalue { i64, ptr } %t382, ptr %t379, 1
  %t385 = extractvalue { i64, ptr } %t383, 0
  %t386 = extractvalue { i64, ptr } %t383, 1
  %t387 = mul i64 %t385, 1
  %t388 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t387)
  call void @llvm.memcpy.p0.p0.i64(ptr %t388, ptr %t386, i64 %t387, i1 false)
  %t389 = insertvalue { i64, ptr } undef, i64 %t385, 0
  %t390 = insertvalue { i64, ptr } %t389, ptr %t388, 1
  %t393 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s14, ptr %s14, ptr %v1, ptr %t368, { i64, ptr } %t390)
  store { i64, ptr } %t393, ptr %l178
  br label %bb72
bb72:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t396 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d364, i32 0, i32 1) }, 1
  %t397 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d364, i32 0, i32 1) }, 0
  %t399 = extractvalue { i64, ptr } %t395, 1
  %t400 = extractvalue { i64, ptr } %t395, 0
  %t401 = add i64 %t397, %t400
  %t402 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d365, i32 0, i32 1) }, 1
  %t403 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d365, i32 0, i32 1) }, 0
  %t404 = add i64 %t401, %t403
  %t405 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t404)
  call void @olang_textcopy(ptr %t405, ptr %t396, i64 %t397)
  %t406 = getelementptr i8, ptr %t405, i64 %t397
  call void @olang_textcopy(ptr %t406, ptr %t399, i64 %t400)
  %t407 = getelementptr i8, ptr %t406, i64 %t400
  call void @olang_textcopy(ptr %t407, ptr %t402, i64 %t403)
  %t408 = insertvalue { i64, ptr } undef, i64 %t404, 0
  %t409 = insertvalue { i64, ptr } %t408, ptr %t405, 1
  %t411 = extractvalue { i64, ptr } %t409, 0
  %t412 = extractvalue { i64, ptr } %t409, 1
  %t413 = mul i64 %t411, 1
  %t414 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t413)
  call void @llvm.memcpy.p0.p0.i64(ptr %t414, ptr %t412, i64 %t413, i1 false)
  %t415 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t416 = insertvalue { i64, ptr } %t415, ptr %t414, 1
  %t419 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s14, ptr %s14, ptr %v1, ptr %t394, { i64, ptr } %t416)
  store { i64, ptr } %t419, ptr %l183
  br label %bb73
bb73:
  %t420 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d366, i32 0, i32 1) }, 1
  %t421 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d366, i32 0, i32 1) }, 0
  %t422 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t422, 1
  %t424 = extractvalue { i64, ptr } %t422, 0
  %t425 = add i64 %t421, %t424
  %t426 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d367, i32 0, i32 1) }, 1
  %t427 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d367, i32 0, i32 1) }, 0
  %t428 = add i64 %t425, %t427
  %t429 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t430 = extractvalue { i64, ptr } %t429, 1
  %t431 = extractvalue { i64, ptr } %t429, 0
  %t432 = add i64 %t428, %t431
  %t433 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t432)
  call void @olang_textcopy(ptr %t433, ptr %t420, i64 %t421)
  %t434 = getelementptr i8, ptr %t433, i64 %t421
  call void @olang_textcopy(ptr %t434, ptr %t423, i64 %t424)
  %t435 = getelementptr i8, ptr %t434, i64 %t424
  call void @olang_textcopy(ptr %t435, ptr %t426, i64 %t427)
  %t436 = getelementptr i8, ptr %t435, i64 %t427
  call void @olang_textcopy(ptr %t436, ptr %t430, i64 %t431)
  %t437 = insertvalue { i64, ptr } undef, i64 %t432, 0
  %t438 = insertvalue { i64, ptr } %t437, ptr %t433, 1
  %t440 = extractvalue { i64, ptr } %t438, 0
  %t441 = extractvalue { i64, ptr } %t438, 1
  %t442 = mul i64 %t440, 1
  %t443 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t442)
  call void @llvm.memcpy.p0.p0.i64(ptr %t443, ptr %t441, i64 %t442, i1 false)
  %t444 = insertvalue { i64, ptr } undef, i64 %t440, 0
  %t445 = insertvalue { i64, ptr } %t444, ptr %t443, 1
  %t446 = load ptr, ptr %l173, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %t446, { i64, ptr } %t445)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s14)
  br label %bb82
bb75:
  br i1 true, label %bb76, label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb81
bb78:
  store %olang.scope zeroinitializer, ptr %s18
  store ptr %l8, ptr %l186, !tbaa !29
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t449, ptr %l188, !tbaa !27
  %t450 = load i64, ptr %l23, !tbaa !24
  %t452 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t453 = load ptr, ptr %t452, !tbaa !27
  %t454 = getelementptr i32, ptr %t453, i64 %t450
  %t455 = load i32, ptr %t454, !tbaa !33
  %t458 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s18, ptr %v1, ptr %t448, i32 %t455)
  store { i64, ptr } %t458, ptr %l191
  br label %bb79
bb79:
  %t459 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t460 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t460, 1
  %t462 = extractvalue { i64, ptr } %t460, 0
  %t463 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d368, i32 0, i32 1) }, 1
  %t464 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d368, i32 0, i32 1) }, 0
  %t465 = add i64 %t462, %t464
  %t467 = extractvalue { i64, ptr } %t459, 1
  %t468 = extractvalue { i64, ptr } %t459, 0
  %t469 = add i64 %t465, %t468
  %t470 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t469)
  call void @olang_textcopy(ptr %t470, ptr %t461, i64 %t462)
  %t471 = getelementptr i8, ptr %t470, i64 %t462
  call void @olang_textcopy(ptr %t471, ptr %t463, i64 %t464)
  %t472 = getelementptr i8, ptr %t471, i64 %t464
  call void @olang_textcopy(ptr %t472, ptr %t467, i64 %t468)
  %t473 = insertvalue { i64, ptr } undef, i64 %t469, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %t470, 1
  %t476 = extractvalue { i64, ptr } %t474, 0
  %t477 = extractvalue { i64, ptr } %t474, 1
  %t478 = mul i64 %t476, 1
  %t479 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t478)
  call void @llvm.memcpy.p0.p0.i64(ptr %t479, ptr %t477, i64 %t478, i1 false)
  %t480 = insertvalue { i64, ptr } undef, i64 %t476, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t479, 1
  %t482 = load ptr, ptr %l186, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %t482, { i64, ptr } %t481)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s18)
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_51f36d50f4dfa9f9_6a3d5d7fb2ed60d)
  unreachable
bb82:
  call void @__olang_scope_close(ptr %s11)
  br label %bb83
bb83:
  %t484 = load i64, ptr %l22, !tbaa !24
  %t486 = add i64 %t484, 1
  store i64 %t486, ptr %l22, !tbaa !24
  br label %bb55
bb84:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t490 = getelementptr %"compiler/emit:fnEm", ptr %t488, i32 0, i32 14
  store i1 true, ptr %t490, !tbaa !21
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t493 = getelementptr %"compiler/emit:fnEm", ptr %t491, i32 0, i32 5
  %t494 = load { i64, ptr }, ptr @G_2ecompiler_2femit_2eBigCloseMark, !tbaa !27
  %t495 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %t495, ptr %t493, { i64, ptr } %t494)
  br label %bb85
bb85:
  %t498 = load ptr, ptr %l2, !tbaa !29
  store ptr %t498, ptr %l201, !tbaa !29
  %t499 = load i32, ptr %l3, !tbaa !23
  %t500 = load ptr, ptr %l201, !tbaa !29
  %t501 = call ptr @__olang_scope_or(ptr %v1, ptr %t500)
  %t502 = ptrtoint ptr %t501 to i64
  %t504 = inttoptr i64 %t502 to ptr
  %t506 = inttoptr i64 0 to ptr
  %t507 = load ptr, ptr %l201, !tbaa !29
  %t509 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %t504, ptr %s0, ptr %t506, ptr %t507, i32 %t499)
  store { i64, ptr } %t509, ptr %l205
  br label %bb86
bb86:
  %t510 = load { i64, ptr }, ptr %l205, !tbaa !27
  store { i64, ptr } %t510, ptr %l26, !tbaa !27
  %t511 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t513 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t511, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d369, i32 0, i32 1) })
  store i1 %t513, ptr %l207
  br label %bb87
bb87:
  %t514 = load i1, ptr %l207, !tbaa !21
  br i1 %t514, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s21
  %t515 = load ptr, ptr %l0, !tbaa !29
  store ptr %t515, ptr %l208, !tbaa !29
  %t516 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t516, ptr %l209, !tbaa !27
  %t518 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s21, ptr %l8)
  store { i64, ptr } %t518, ptr %l211
  br label %bb90
bb89:
  store %olang.scope zeroinitializer, ptr %s23
  %t519 = load ptr, ptr %l0, !tbaa !29
  store ptr %t519, ptr %l215, !tbaa !29
  %t520 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t520, ptr %l216, !tbaa !27
  %t521 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t521, ptr %l217, !tbaa !27
  %t523 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s23, ptr %l8)
  store { i64, ptr } %t523, ptr %l219
  br label %bb93
bb90:
  %t524 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d370, i32 0, i32 1) }, 1
  %t525 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d370, i32 0, i32 1) }, 0
  %t526 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t527 = extractvalue { i64, ptr } %t526, 1
  %t528 = extractvalue { i64, ptr } %t526, 0
  %t529 = add i64 %t525, %t528
  %t530 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d371, i32 0, i32 1) }, 1
  %t531 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d371, i32 0, i32 1) }, 0
  %t532 = add i64 %t529, %t531
  %t533 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t534 = extractvalue { i64, ptr } %t533, 1
  %t535 = extractvalue { i64, ptr } %t533, 0
  %t536 = add i64 %t532, %t535
  %t537 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d372, i32 0, i32 1) }, 1
  %t538 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d372, i32 0, i32 1) }, 0
  %t539 = add i64 %t536, %t538
  %t540 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t539)
  call void @olang_textcopy(ptr %t540, ptr %t524, i64 %t525)
  %t541 = getelementptr i8, ptr %t540, i64 %t525
  call void @olang_textcopy(ptr %t541, ptr %t527, i64 %t528)
  %t542 = getelementptr i8, ptr %t541, i64 %t528
  call void @olang_textcopy(ptr %t542, ptr %t530, i64 %t531)
  %t543 = getelementptr i8, ptr %t542, i64 %t531
  call void @olang_textcopy(ptr %t543, ptr %t534, i64 %t535)
  %t544 = getelementptr i8, ptr %t543, i64 %t535
  call void @olang_textcopy(ptr %t544, ptr %t537, i64 %t538)
  %t545 = insertvalue { i64, ptr } undef, i64 %t539, 0
  %t546 = insertvalue { i64, ptr } %t545, ptr %t540, 1
  %t548 = extractvalue { i64, ptr } %t546, 0
  %t549 = extractvalue { i64, ptr } %t546, 1
  %t550 = mul i64 %t548, 1
  %t551 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t550)
  call void @llvm.memcpy.p0.p0.i64(ptr %t551, ptr %t549, i64 %t550, i1 false)
  %t552 = insertvalue { i64, ptr } undef, i64 %t548, 0
  %t553 = insertvalue { i64, ptr } %t552, ptr %t551, 1
  %t554 = load ptr, ptr %l208, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s21, ptr %v1, ptr %t554, { i64, ptr } %t553)
  br label %bb91
bb91:
  %t556 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s21, ptr %v1, ptr %t556, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d373, i32 0, i32 1) })
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s21)
  br label %bb96
bb93:
  %t558 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d374, i32 0, i32 1) }, 1
  %t559 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d374, i32 0, i32 1) }, 0
  %t560 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t561 = extractvalue { i64, ptr } %t560, 1
  %t562 = extractvalue { i64, ptr } %t560, 0
  %t563 = add i64 %t559, %t562
  %t564 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d375, i32 0, i32 1) }, 1
  %t565 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d375, i32 0, i32 1) }, 0
  %t566 = add i64 %t563, %t565
  %t567 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t568 = extractvalue { i64, ptr } %t567, 1
  %t569 = extractvalue { i64, ptr } %t567, 0
  %t570 = add i64 %t566, %t569
  %t571 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d376, i32 0, i32 1) }, 1
  %t572 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d376, i32 0, i32 1) }, 0
  %t573 = add i64 %t570, %t572
  %t574 = load { i64, ptr }, ptr %l219, !tbaa !27
  %t575 = extractvalue { i64, ptr } %t574, 1
  %t576 = extractvalue { i64, ptr } %t574, 0
  %t577 = add i64 %t573, %t576
  %t578 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d377, i32 0, i32 1) }, 1
  %t579 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d377, i32 0, i32 1) }, 0
  %t580 = add i64 %t577, %t579
  %t581 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t580)
  call void @olang_textcopy(ptr %t581, ptr %t558, i64 %t559)
  %t582 = getelementptr i8, ptr %t581, i64 %t559
  call void @olang_textcopy(ptr %t582, ptr %t561, i64 %t562)
  %t583 = getelementptr i8, ptr %t582, i64 %t562
  call void @olang_textcopy(ptr %t583, ptr %t564, i64 %t565)
  %t584 = getelementptr i8, ptr %t583, i64 %t565
  call void @olang_textcopy(ptr %t584, ptr %t568, i64 %t569)
  %t585 = getelementptr i8, ptr %t584, i64 %t569
  call void @olang_textcopy(ptr %t585, ptr %t571, i64 %t572)
  %t586 = getelementptr i8, ptr %t585, i64 %t572
  call void @olang_textcopy(ptr %t586, ptr %t575, i64 %t576)
  %t587 = getelementptr i8, ptr %t586, i64 %t576
  call void @olang_textcopy(ptr %t587, ptr %t578, i64 %t579)
  %t588 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t589 = insertvalue { i64, ptr } %t588, ptr %t581, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = extractvalue { i64, ptr } %t589, 1
  %t593 = mul i64 %t591, 1
  %t594 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t593)
  call void @llvm.memcpy.p0.p0.i64(ptr %t594, ptr %t592, i64 %t593, i1 false)
  %t595 = insertvalue { i64, ptr } undef, i64 %t591, 0
  %t596 = insertvalue { i64, ptr } %t595, ptr %t594, 1
  %t597 = load ptr, ptr %l215, !tbaa !29
  %t599 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s23, ptr %s23, ptr %v1, ptr %t597, { i64, ptr } %t596)
  store { i64, ptr } %t599, ptr %l222
  br label %bb94
bb94:
  %t600 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t602 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t604 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d378, i32 0, i32 1) }, 1
  %t605 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d378, i32 0, i32 1) }, 0
  %t607 = extractvalue { i64, ptr } %t602, 1
  %t608 = extractvalue { i64, ptr } %t602, 0
  %t609 = add i64 %t605, %t608
  %t610 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t611 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
  %t612 = add i64 %t609, %t611
  %t614 = extractvalue { i64, ptr } %t600, 1
  %t615 = extractvalue { i64, ptr } %t600, 0
  %t616 = add i64 %t612, %t615
  %t617 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t616)
  call void @olang_textcopy(ptr %t617, ptr %t604, i64 %t605)
  %t618 = getelementptr i8, ptr %t617, i64 %t605
  call void @olang_textcopy(ptr %t618, ptr %t607, i64 %t608)
  %t619 = getelementptr i8, ptr %t618, i64 %t608
  call void @olang_textcopy(ptr %t619, ptr %t610, i64 %t611)
  %t620 = getelementptr i8, ptr %t619, i64 %t611
  call void @olang_textcopy(ptr %t620, ptr %t614, i64 %t615)
  %t621 = insertvalue { i64, ptr } undef, i64 %t616, 0
  %t622 = insertvalue { i64, ptr } %t621, ptr %t617, 1
  %t624 = extractvalue { i64, ptr } %t622, 0
  %t625 = extractvalue { i64, ptr } %t622, 1
  %t626 = mul i64 %t624, 1
  %t627 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t626)
  call void @llvm.memcpy.p0.p0.i64(ptr %t627, ptr %t625, i64 %t626, i1 false)
  %t628 = insertvalue { i64, ptr } undef, i64 %t624, 0
  %t629 = insertvalue { i64, ptr } %t628, ptr %t627, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s23, ptr %v1, ptr %t601, { i64, ptr } %t629)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s23)
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskKey(ptr %v0, ptr %a0, %"compiler/mir:Task" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Task"
  %l2 = alloca { i64, [7 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l5 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t15 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/mir:Task" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [7 x i64] }, ptr %t1
  store { i64, [7 x i64] } %t2, ptr %l2
  %t4 = load { i64, [7 x i64] }, ptr %l2
  %t6 = extractvalue { i64, [7 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t9, i32 0, i32 0
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l3
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t13 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t13, ptr %l5
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, [2 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [2 x i64] }, ptr %t15, i32 0, i32 0
  store i64 4, ptr %t16
  %t17 = insertvalue { i64 } undef, i64 0, 0
  %t18 = getelementptr { i64, [2 x i64] }, ptr %t15, i32 0, i32 1
  store { i64 } %t17, ptr %t18
  %t19 = load { i64, [2 x i64] }, ptr %t15
  store { i64, [2 x i64] } %t19, ptr %l5
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3820e339cb1786be_89fed3c6bce3701a)
  unreachable
bb9:
  %t21 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkEnd(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
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
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 34
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
  %t13 = getelementptr %"compiler/emit:fnEm", ptr %t11, i32 0, i32 35
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
  %t29 = getelementptr %"compiler/emit:fnEm", ptr %t27, i32 0, i32 36
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
  %t42 = getelementptr %"compiler/emit:fnEm", ptr %t40, i32 0, i32 36
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
  %t66 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d380, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d380, i32 0, i32 1) }, 0
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
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v1, ptr %t50, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d381, i32 0, i32 1) }, { i64, ptr } %t64, { i64, ptr } %t82, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb17
bb17:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i64, ptr %l1, !tbaa !24
  %t88 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d382, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d382, i32 0, i32 1) }, 0
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
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %v1, ptr %t86, { i64, ptr } %t104)
  br label %bb18
bb18:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i64, ptr %l1, !tbaa !24
  %t109 = load i64, ptr %l3, !tbaa !24
  %t110 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
  %t113 = call i64 @__olang_fmt_i64(ptr null, i64 %t108)
  %t114 = add i64 %t111, %t113
  %t115 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d384, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d384, i32 0, i32 1) }, 0
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

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkEnds(ptr %v0, ptr %v1, ptr %v2, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i64
  %l5 = alloca %"compiler/mir:Call"
  %l6 = alloca i32
  %l7 = alloca { i64, [7 x i64] }
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"std/prelude/text:StringBuilder"
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l35 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l36 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l38 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l39 = alloca i32
  %l41 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i32
  %l57 = alloca %"compiler/mir:Call"
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca ptr
  %l70 = alloca i32
  %l72 = alloca i32
  %l74 = alloca i32
  %l76 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l84 = alloca ptr
  %l86 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l114 = alloca %"std/prelude/text:StringBuilder"
  %l119 = alloca ptr
  %l122 = alloca i32
  %l126 = alloca i1
  %l130 = alloca i1
  %l131 = alloca ptr
  %l134 = alloca i1
  %l135 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l141 = alloca ptr
  %l146 = alloca i64
  %l150 = alloca i64
  %l153 = alloca i64
  %l175 = alloca i1
  %l176 = alloca ptr
  %l177 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l182 = alloca ptr
  %l183 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l186 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l195 = alloca %"std/prelude/text:StringBuilder"
  %l205 = alloca i64
  %l208 = alloca i64
  %l235 = alloca ptr
  %l237 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %t374 = alloca { i64, [4 x i64] }, align 8
  %t377 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l1, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 36
  %t13 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t11)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t13, ptr %l35
  br label %bb1
bb1:
  %t14 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l35
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t14, ptr %l2
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = call { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %l2)
  %t17 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t16, 1
  %t18 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t16, 0
  store i32 %t18, ptr %l39
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb4, label %ok.20, !prof !99
ok.20:
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t17, ptr %l38
  br label %bb3
bb3:
  %t21 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l38
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t21, ptr %l36
  br label %bb6
bb4:
  %t22 = load i32, ptr %l39, !tbaa !23
  %t23 = ashr i32 %t22, 16
  %t25 = icmp eq i32 %t23, 1
  store i1 %t25, ptr %l41, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb91
bb6:
  %t26 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l36
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t26, ptr %l3
  %t27 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 0
  %t28 = load i64, ptr %t27, !tbaa !24
  store i64 %t28, ptr %l4, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d385, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d385, i32 0, i32 1) }, 0
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = getelementptr i8, ptr %t37, i64 %t33
  %t39 = call i64 @__olang_fmt_i64(ptr %t38, i64 %t31)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t37, 1
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = extractvalue { i64, ptr } %t41, 1
  %t45 = mul i64 %t43, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t45)
  call void @llvm.memcpy.p0.p0.i64(ptr %t46, ptr %t44, i64 %t45, i1 false)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s2, ptr %t30, { i64, ptr } %t48)
  br label %bb7
bb7:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/emit:fnEm", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/mir:Fn", ptr %t54, i32 0, i32 14
  store ptr %t56, ptr %l49, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/emit:fnEm", ptr %t57, i32 0, i32 34
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t59, i64 %t60)
  %t64 = extractvalue { i32, i64 } %t63, 1
  %t65 = extractvalue { i32, i64 } %t63, 0
  store i32 %t65, ptr %l55
  %t66 = icmp ne i32 %t65, 0
  br i1 %t66, label %bb9, label %ok.67, !prof !99
ok.67:
  store i64 %t64, ptr %l54
  br label %bb8
bb8:
  %t68 = load i64, ptr %l54, !tbaa !24
  store i64 %t68, ptr %l50, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d55aab1360531c47_f82e8a31cf9de643)
  unreachable
bb11:
  %t69 = load ptr, ptr %l49, !tbaa !29
  %t70 = call ptr @__olang_scope_or(ptr %v1, ptr %t69)
  %t71 = ptrtoint ptr %t70 to i64
  %t73 = inttoptr i64 %t71 to ptr
  %t74 = load ptr, ptr %l49, !tbaa !29
  %t75 = load i64, ptr %l50, !tbaa !24
  %t76 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t73, ptr %t74, i64 %t75)
  store %"compiler/mir:Call" %t76, ptr %l57
  br label %bb12
bb12:
  %t77 = load %"compiler/mir:Call", ptr %l57
  store %"compiler/mir:Call" %t77, ptr %l5
  %t78 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t78, ptr %l6, !tbaa !23
  %t80 = getelementptr %"compiler/mir:Call", ptr %l5, i32 0, i32 0
  %t81 = load { i64, [7 x i64] }, ptr %t80
  store { i64, [7 x i64] } %t81, ptr %l7
  %t83 = load { i64, [7 x i64] }, ptr %l7
  %t85 = extractvalue { i64, [7 x i64] } %t83, 0
  %t86 = icmp eq i64 %t85, 0
  br i1 %t86, label %bb13, label %bb14
bb13:
  %t88 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t89 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t88, i32 0, i32 1
  %t90 = load i32, ptr %t89
  store i32 %t90, ptr %l8, !tbaa !23
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t92 = load i32, ptr %l8, !tbaa !23
  store i32 %t92, ptr %l6, !tbaa !23
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
  call void @__olang_check_failed(ptr @olang_loc_e9cd50c1ae7327e6_bc31e41603ed9ec2)
  unreachable
bb21:
  %t94 = load ptr, ptr %l1, !tbaa !29
  store ptr %t94, ptr %l64, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  store ptr %t95, ptr %l65, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  store ptr %t96, ptr %l66, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l67, !tbaa !29
  %t98 = load i32, ptr %l6, !tbaa !23
  %t99 = load ptr, ptr %l67, !tbaa !29
  %t100 = call ptr @__olang_scope_or(ptr %v2, ptr %t99)
  %t101 = ptrtoint ptr %t100 to i64
  %t103 = inttoptr i64 %t101 to ptr
  %t104 = load ptr, ptr %l67, !tbaa !29
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %t103, ptr %t104, i32 %t98)
  store i32 %t106, ptr %l70
  br label %bb22
bb22:
  %t107 = load ptr, ptr %l66, !tbaa !29
  %t108 = call ptr @__olang_scope_or(ptr %v2, ptr %t107)
  %t109 = ptrtoint ptr %t108 to i64
  %t111 = inttoptr i64 %t109 to ptr
  %t112 = load ptr, ptr %l66, !tbaa !29
  %t113 = load i32, ptr %l70, !tbaa !23
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t111, ptr %t112, i32 %t113)
  store i32 %t114, ptr %l72
  br label %bb23
bb23:
  %t115 = load ptr, ptr %l65, !tbaa !29
  %t116 = call ptr @__olang_scope_or(ptr %v2, ptr %t115)
  %t117 = ptrtoint ptr %t116 to i64
  %t119 = inttoptr i64 %t117 to ptr
  %t120 = load ptr, ptr %l65, !tbaa !29
  %t121 = load i32, ptr %l72, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %t119, ptr %t120, i32 %t121)
  store i32 %t122, ptr %l74
  br label %bb24
bb24:
  %t123 = load ptr, ptr %l64, !tbaa !29
  %t124 = call ptr @__olang_scope_or(ptr %v2, ptr %t123)
  %t125 = ptrtoint ptr %t124 to i64
  %t127 = inttoptr i64 %t125 to ptr
  %t128 = load ptr, ptr %l64, !tbaa !29
  %t129 = load i32, ptr %l74, !tbaa !23
  %t130 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t127, ptr %s2, ptr %t128, i32 %t129)
  store { i64, ptr } %t130, ptr %l76
  br label %bb25
bb25:
  %t131 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t131, ptr %l77, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr i32, ptr %t133, i64 0
  %t135 = load i32, ptr %t134, !tbaa !33
  store i32 %t135, ptr %l9, !tbaa !23
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/emit:fnEm", ptr %t137, i32 0, i32 0
  %t140 = load ptr, ptr %t139, !tbaa !29
  store ptr %t140, ptr %l80, !tbaa !29
  %t141 = load i32, ptr %l9, !tbaa !23
  %t142 = load ptr, ptr %l80, !tbaa !29
  %t143 = call ptr @__olang_scope_or(ptr %v2, ptr %t142)
  %t144 = ptrtoint ptr %t143 to i64
  %t146 = inttoptr i64 %t144 to ptr
  %t147 = load ptr, ptr %l80, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %t146, ptr %t147, i32 %t141)
  br label %bb26
bb26:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/emit:fnEm", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  store ptr %t152, ptr %l84, !tbaa !29
  %t153 = load ptr, ptr %l84, !tbaa !29
  %t154 = call ptr @__olang_scope_or(ptr %v2, ptr %t153)
  %t155 = ptrtoint ptr %t154 to i64
  %t157 = inttoptr i64 %t155 to ptr
  %t158 = load ptr, ptr %l84, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecoroDecls(ptr %t157, ptr %t158)
  br label %bb27
bb27:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l86, !tbaa !29
  %t160 = load i32, ptr %l9, !tbaa !23
  %t161 = load ptr, ptr %l86, !tbaa !29
  %t162 = call ptr @__olang_scope_or(ptr %v2, ptr %t161)
  %t163 = ptrtoint ptr %t162 to i64
  %t165 = inttoptr i64 %t163 to ptr
  %t167 = inttoptr i64 0 to ptr
  %t168 = load ptr, ptr %l86, !tbaa !29
  %t170 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %t165, ptr %s2, ptr %t167, ptr %t168, i32 %t160)
  store { i64, ptr } %t170, ptr %l90
  br label %bb28
bb28:
  %t171 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t171, ptr %l10, !tbaa !27
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i64, ptr %l4, !tbaa !24
  %t174 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d386, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d386, i32 0, i32 1) }, 0
  %t177 = call i64 @__olang_fmt_i64(ptr null, i64 %t173)
  %t178 = add i64 %t175, %t177
  %t179 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t178)
  call void @olang_textcopy(ptr %t179, ptr %t174, i64 %t175)
  %t180 = getelementptr i8, ptr %t179, i64 %t175
  %t181 = call i64 @__olang_fmt_i64(ptr %t180, i64 %t173)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t179, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = extractvalue { i64, ptr } %t183, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t193 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %s2, ptr %v2, ptr %t172, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d387, i32 0, i32 1) }, { i64, ptr } %t190, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t193, ptr %l95
  br label %bb29
bb29:
  %t194 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t194, ptr %l11, !tbaa !27
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr %l4, !tbaa !24
  %t197 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d388, i32 0, i32 1) }, 1
  %t198 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d388, i32 0, i32 1) }, 0
  %t200 = call i64 @__olang_fmt_i64(ptr null, i64 %t196)
  %t201 = add i64 %t198, %t200
  %t202 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t201)
  call void @olang_textcopy(ptr %t202, ptr %t197, i64 %t198)
  %t203 = getelementptr i8, ptr %t202, i64 %t198
  %t204 = call i64 @__olang_fmt_i64(ptr %t203, i64 %t196)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t202, 1
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t209 = extractvalue { i64, ptr } %t206, 1
  %t210 = mul i64 %t208, 1
  %t211 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t210)
  call void @llvm.memcpy.p0.p0.i64(ptr %t211, ptr %t209, i64 %t210, i1 false)
  %t212 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  %t216 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %s2, ptr %v2, ptr %t195, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d389, i32 0, i32 1) }, { i64, ptr } %t213, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t216, ptr %l100
  br label %bb30
bb30:
  %t217 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t217, ptr %l12, !tbaa !27
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t220 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d390, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d390, i32 0, i32 1) }, 0
  %t223 = extractvalue { i64, ptr } %t219, 1
  %t224 = extractvalue { i64, ptr } %t219, 0
  %t225 = add i64 %t221, %t224
  %t226 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d391, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d391, i32 0, i32 1) }, 0
  %t228 = add i64 %t225, %t227
  %t229 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t228)
  call void @olang_textcopy(ptr %t229, ptr %t220, i64 %t221)
  %t230 = getelementptr i8, ptr %t229, i64 %t221
  call void @olang_textcopy(ptr %t230, ptr %t223, i64 %t224)
  %t231 = getelementptr i8, ptr %t230, i64 %t224
  call void @olang_textcopy(ptr %t231, ptr %t226, i64 %t227)
  %t232 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t229, 1
  %t235 = extractvalue { i64, ptr } %t233, 0
  %t236 = extractvalue { i64, ptr } %t233, 1
  %t237 = mul i64 %t235, 1
  %t238 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t238, ptr %t236, i64 %t237, i1 false)
  %t239 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  %t243 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s2, ptr %s2, ptr %v2, ptr %t218, { i64, ptr } %t240)
  store { i64, ptr } %t243, ptr %l105
  br label %bb31
bb31:
  %t244 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l106, !tbaa !29
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t249 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d392, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d392, i32 0, i32 1) }, 0
  %t252 = extractvalue { i64, ptr } %t247, 1
  %t253 = extractvalue { i64, ptr } %t247, 0
  %t254 = add i64 %t250, %t253
  %t255 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d393, i32 0, i32 1) }, 1
  %t256 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d393, i32 0, i32 1) }, 0
  %t257 = add i64 %t254, %t256
  %t259 = extractvalue { i64, ptr } %t244, 1
  %t260 = extractvalue { i64, ptr } %t244, 0
  %t261 = add i64 %t257, %t260
  %t262 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d394, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d394, i32 0, i32 1) }, 0
  %t264 = add i64 %t261, %t263
  %t265 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t264)
  call void @olang_textcopy(ptr %t265, ptr %t249, i64 %t250)
  %t266 = getelementptr i8, ptr %t265, i64 %t250
  call void @olang_textcopy(ptr %t266, ptr %t252, i64 %t253)
  %t267 = getelementptr i8, ptr %t266, i64 %t253
  call void @olang_textcopy(ptr %t267, ptr %t255, i64 %t256)
  %t268 = getelementptr i8, ptr %t267, i64 %t256
  call void @olang_textcopy(ptr %t268, ptr %t259, i64 %t260)
  %t269 = getelementptr i8, ptr %t268, i64 %t260
  call void @olang_textcopy(ptr %t269, ptr %t262, i64 %t263)
  %t270 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t265, 1
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t274 = extractvalue { i64, ptr } %t271, 1
  %t275 = mul i64 %t273, 1
  %t276 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t275)
  call void @llvm.memcpy.p0.p0.i64(ptr %t276, ptr %t274, i64 %t275, i1 false)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  %t281 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s2, ptr %s2, ptr %v2, ptr %t246, { i64, ptr } %t278)
  store { i64, ptr } %t281, ptr %l112
  br label %bb32
bb32:
  %t282 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t282, 0
  %t284 = extractvalue { i64, ptr } %t282, 1
  %t285 = mul i64 %t283, 1
  %t286 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t285)
  call void @llvm.memcpy.p0.p0.i64(ptr %t286, ptr %t284, i64 %t285, i1 false)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  %t289 = load ptr, ptr %l106, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %s2, ptr %v2, ptr %t289, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d395, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d396, i32 0, i32 1) }, { i64, ptr } %t288, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb33
bb33:
  %t291 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t291, ptr %l114
  br label %bb34
bb34:
  %t292 = load %"std/prelude/text:StringBuilder", ptr %l114
  store %"std/prelude/text:StringBuilder" %t292, ptr %l14
  %t293 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t294 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d397, i32 0, i32 1) }, 1
  %t295 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d397, i32 0, i32 1) }, 0
  %t297 = extractvalue { i64, ptr } %t293, 1
  %t298 = extractvalue { i64, ptr } %t293, 0
  %t299 = add i64 %t295, %t298
  %t300 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t299)
  call void @olang_textcopy(ptr %t300, ptr %t294, i64 %t295)
  %t301 = getelementptr i8, ptr %t300, i64 %t295
  call void @olang_textcopy(ptr %t301, ptr %t297, i64 %t298)
  %t302 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t300, 1
  %t305 = extractvalue { i64, ptr } %t303, 0
  %t306 = extractvalue { i64, ptr } %t303, 1
  %t307 = mul i64 %t305, 1
  %t308 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t307)
  call void @llvm.memcpy.p0.p0.i64(ptr %t308, ptr %t306, i64 %t307, i1 false)
  %t309 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t308, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %l14, { i64, ptr } %t310)
  br label %bb35
bb35:
  %t313 = load ptr, ptr %l1, !tbaa !29
  store ptr %t313, ptr %l119, !tbaa !29
  %t314 = load i32, ptr %l9, !tbaa !23
  %t315 = load ptr, ptr %l119, !tbaa !29
  %t316 = call ptr @__olang_scope_or(ptr %v2, ptr %t315)
  %t317 = ptrtoint ptr %t316 to i64
  %t319 = inttoptr i64 %t317 to ptr
  %t320 = load ptr, ptr %l119, !tbaa !29
  %t322 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %t319, ptr %t320, i32 %t314)
  store i32 %t322, ptr %l122
  br label %bb36
bb36:
  %t323 = load i32, ptr %l122, !tbaa !23
  store i32 %t323, ptr %l15, !tbaa !23
  %t324 = load i32, ptr %l15, !tbaa !23
  %t325 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t328 = icmp ne i32 %t324, %t325
  br i1 %t328, label %bb37, label %bb38
bb37:
  %t330 = load i32, ptr %l15, !tbaa !23
  %t331 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t334 = icmp ne i32 %t330, %t331
  store i1 %t334, ptr %l126, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb39
bb39:
  %t336 = load i1, ptr %l126, !tbaa !21
  br i1 %t336, label %bb40, label %bb41
bb40:
  %t337 = load ptr, ptr %l1, !tbaa !29
  store ptr %t337, ptr %l131, !tbaa !29
  %t338 = load i32, ptr %l15, !tbaa !23
  %t339 = load ptr, ptr %l131, !tbaa !29
  %t340 = call ptr @__olang_scope_or(ptr %v2, ptr %t339)
  %t341 = ptrtoint ptr %t340 to i64
  %t343 = inttoptr i64 %t341 to ptr
  %t344 = load ptr, ptr %l131, !tbaa !29
  %t346 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %t343, ptr %t344, i32 %t338)
  store i1 %t346, ptr %l134
  br label %bb42
bb41:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb43
bb42:
  %t347 = load i1, ptr %l134, !tbaa !21
  store i1 %t347, ptr %l130, !tbaa !21
  br label %bb43
bb43:
  %t348 = load i1, ptr %l130, !tbaa !21
  br i1 %t348, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s12
  store ptr %l14, ptr %l135, !tbaa !29
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load i32, ptr %l15, !tbaa !23
  %t353 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %s12, ptr %v2, ptr %t349, i32 %t350)
  store { i64, ptr } %t353, ptr %l138
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t354 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t355 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
  %t356 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t356, 1
  %t358 = extractvalue { i64, ptr } %t356, 0
  %t359 = add i64 %t355, %t358
  %t360 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t359)
  call void @olang_textcopy(ptr %t360, ptr %t354, i64 %t355)
  %t361 = getelementptr i8, ptr %t360, i64 %t355
  call void @olang_textcopy(ptr %t361, ptr %t357, i64 %t358)
  %t362 = insertvalue { i64, ptr } undef, i64 %t359, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t360, 1
  %t365 = extractvalue { i64, ptr } %t363, 0
  %t366 = extractvalue { i64, ptr } %t363, 1
  %t367 = mul i64 %t365, 1
  %t368 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t371 = load ptr, ptr %l135, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s12, ptr %t371, { i64, ptr } %t370)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s12)
  br label %bb48
bb48:
  store i64 0, ptr %l16, !tbaa !24
  %t373 = load ptr, ptr %l1, !tbaa !29
  store ptr %t373, ptr %l141, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t374
  %t375 = getelementptr { i64, [4 x i64] }, ptr %t374, i32 0, i32 0
  store i64 0, ptr %t375
  %t376 = load { i64, [4 x i64] }, ptr %t374
  store { i64, [7 x i64] } zeroinitializer, ptr %t377
  %t378 = getelementptr { i64, [7 x i64] }, ptr %t377, i32 0, i32 0
  store i64 2, ptr %t378
  %t380 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t376, 0
  %t381 = getelementptr { i64, [7 x i64] }, ptr %t377, i32 0, i32 1
  store { { i64, [4 x i64] } } %t380, ptr %t381
  %t382 = load { i64, [7 x i64] }, ptr %t377
  %t383 = load i32, ptr %l9, !tbaa !23
  %t384 = load ptr, ptr %l141, !tbaa !29
  %t385 = call ptr @__olang_scope_or(ptr %v2, ptr %t384)
  %t386 = ptrtoint ptr %t385 to i64
  %t388 = inttoptr i64 %t386 to ptr
  %t389 = load ptr, ptr %l141, !tbaa !29
  %t392 = call i64 @compiler_2fmir_2ePassedCount(ptr %t388, ptr %t389, { i64, [7 x i64] } %t382, i32 %t383)
  store i64 %t392, ptr %l146
  br label %bb49
bb49:
  %t393 = load i64, ptr %l146, !tbaa !24
  store i64 %t393, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t394 = load i64, ptr %l17, !tbaa !24
  %t395 = load i64, ptr %l16, !tbaa !24
  %t398 = icmp sgt i64 %t394, %t395
  br i1 %t398, label %bb50, label %bb51
bb50:
  %t400 = load i64, ptr %l18, !tbaa !24
  %t402 = icmp sgt i64 %t400, 0
  br i1 %t402, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l150, !tbaa !24
  br label %bb55
bb52:
  %t404 = load i64, ptr %l17, !tbaa !24
  %t405 = load i64, ptr %l16, !tbaa !24
  %t408 = sub i64 %t404, %t405
  %t409 = load i64, ptr %l18, !tbaa !24
  %t412 = add i64 %t408, %t409
  %t414 = sub i64 %t412, 1
  %t415 = load i64, ptr %l18, !tbaa !24
  %t418 = sdiv i64 %t414, %t415
  store i64 %t418, ptr %l153, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l153, !tbaa !24
  br label %bb54
bb54:
  %t420 = load i64, ptr %l153, !tbaa !24
  store i64 %t420, ptr %l150, !tbaa !24
  br label %bb55
bb55:
  %t421 = load i64, ptr %l150, !tbaa !24
  store i64 %t421, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb56
bb56:
  store %olang.scope zeroinitializer, ptr %s15
  %t422 = load i64, ptr %l20, !tbaa !24
  %t423 = load i64, ptr %l19, !tbaa !24
  %t426 = icmp slt i64 %t422, %t423
  %t428 = xor i1 %t426, true
  br i1 %t428, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s15)
  br label %bb62
bb58:
  br label %bb59
bb59:
  %t430 = load i64, ptr %l16, !tbaa !24
  %t431 = load i64, ptr %l20, !tbaa !24
  %t432 = load i64, ptr %l18, !tbaa !24
  %t435 = mul i64 %t431, %t432
  %t438 = add i64 %t430, %t435
  store i64 %t438, ptr %l21, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s15, ptr %l14, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d399, i32 0, i32 1) })
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s15)
  br label %bb61
bb61:
  %t441 = load i64, ptr %l20, !tbaa !24
  %t443 = add i64 %t441, 1
  store i64 %t443, ptr %l20, !tbaa !24
  br label %bb56
bb62:
  %t445 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t447 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t445, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d400, i32 0, i32 1) })
  store i1 %t447, ptr %l175
  br label %bb63
bb63:
  %t448 = load i1, ptr %l175, !tbaa !21
  br i1 %t448, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s17
  %t449 = load ptr, ptr %l0, !tbaa !29
  store ptr %t449, ptr %l176, !tbaa !29
  %t450 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t450, ptr %l177, !tbaa !27
  %t452 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s17, ptr %l14)
  store { i64, ptr } %t452, ptr %l179
  br label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s19
  %t453 = load ptr, ptr %l0, !tbaa !29
  store ptr %t453, ptr %l182, !tbaa !29
  %t454 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t454, ptr %l183, !tbaa !27
  %t455 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t455, ptr %l184, !tbaa !27
  %t457 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s19, ptr %l14)
  store { i64, ptr } %t457, ptr %l186
  br label %bb68
bb66:
  %t458 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d401, i32 0, i32 1) }, 1
  %t459 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d401, i32 0, i32 1) }, 0
  %t460 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t460, 1
  %t462 = extractvalue { i64, ptr } %t460, 0
  %t463 = add i64 %t459, %t462
  %t464 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d402, i32 0, i32 1) }, 1
  %t465 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d402, i32 0, i32 1) }, 0
  %t466 = add i64 %t463, %t465
  %t467 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t468 = extractvalue { i64, ptr } %t467, 1
  %t469 = extractvalue { i64, ptr } %t467, 0
  %t470 = add i64 %t466, %t469
  %t471 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d403, i32 0, i32 1) }, 1
  %t472 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d403, i32 0, i32 1) }, 0
  %t473 = add i64 %t470, %t472
  %t474 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t473)
  call void @olang_textcopy(ptr %t474, ptr %t458, i64 %t459)
  %t475 = getelementptr i8, ptr %t474, i64 %t459
  call void @olang_textcopy(ptr %t475, ptr %t461, i64 %t462)
  %t476 = getelementptr i8, ptr %t475, i64 %t462
  call void @olang_textcopy(ptr %t476, ptr %t464, i64 %t465)
  %t477 = getelementptr i8, ptr %t476, i64 %t465
  call void @olang_textcopy(ptr %t477, ptr %t468, i64 %t469)
  %t478 = getelementptr i8, ptr %t477, i64 %t469
  call void @olang_textcopy(ptr %t478, ptr %t471, i64 %t472)
  %t479 = insertvalue { i64, ptr } undef, i64 %t473, 0
  %t480 = insertvalue { i64, ptr } %t479, ptr %t474, 1
  %t482 = extractvalue { i64, ptr } %t480, 0
  %t483 = extractvalue { i64, ptr } %t480, 1
  %t484 = mul i64 %t482, 1
  %t485 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t484)
  call void @llvm.memcpy.p0.p0.i64(ptr %t485, ptr %t483, i64 %t484, i1 false)
  %t486 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t485, 1
  %t488 = load ptr, ptr %l176, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s17, ptr %v2, ptr %t488, { i64, ptr } %t487)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s17)
  br label %bb70
bb68:
  %t490 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d404, i32 0, i32 1) }, 1
  %t491 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d404, i32 0, i32 1) }, 0
  %t492 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t493 = extractvalue { i64, ptr } %t492, 1
  %t494 = extractvalue { i64, ptr } %t492, 0
  %t495 = add i64 %t491, %t494
  %t496 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d405, i32 0, i32 1) }, 1
  %t497 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d405, i32 0, i32 1) }, 0
  %t498 = add i64 %t495, %t497
  %t499 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t500 = extractvalue { i64, ptr } %t499, 1
  %t501 = extractvalue { i64, ptr } %t499, 0
  %t502 = add i64 %t498, %t501
  %t503 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d406, i32 0, i32 1) }, 1
  %t504 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d406, i32 0, i32 1) }, 0
  %t505 = add i64 %t502, %t504
  %t506 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t507 = extractvalue { i64, ptr } %t506, 1
  %t508 = extractvalue { i64, ptr } %t506, 0
  %t509 = add i64 %t505, %t508
  %t510 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d407, i32 0, i32 1) }, 1
  %t511 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d407, i32 0, i32 1) }, 0
  %t512 = add i64 %t509, %t511
  %t513 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t512)
  call void @olang_textcopy(ptr %t513, ptr %t490, i64 %t491)
  %t514 = getelementptr i8, ptr %t513, i64 %t491
  call void @olang_textcopy(ptr %t514, ptr %t493, i64 %t494)
  %t515 = getelementptr i8, ptr %t514, i64 %t494
  call void @olang_textcopy(ptr %t515, ptr %t496, i64 %t497)
  %t516 = getelementptr i8, ptr %t515, i64 %t497
  call void @olang_textcopy(ptr %t516, ptr %t500, i64 %t501)
  %t517 = getelementptr i8, ptr %t516, i64 %t501
  call void @olang_textcopy(ptr %t517, ptr %t503, i64 %t504)
  %t518 = getelementptr i8, ptr %t517, i64 %t504
  call void @olang_textcopy(ptr %t518, ptr %t507, i64 %t508)
  %t519 = getelementptr i8, ptr %t518, i64 %t508
  call void @olang_textcopy(ptr %t519, ptr %t510, i64 %t511)
  %t520 = insertvalue { i64, ptr } undef, i64 %t512, 0
  %t521 = insertvalue { i64, ptr } %t520, ptr %t513, 1
  %t523 = extractvalue { i64, ptr } %t521, 0
  %t524 = extractvalue { i64, ptr } %t521, 1
  %t525 = mul i64 %t523, 1
  %t526 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t525)
  call void @llvm.memcpy.p0.p0.i64(ptr %t526, ptr %t524, i64 %t525, i1 false)
  %t527 = insertvalue { i64, ptr } undef, i64 %t523, 0
  %t528 = insertvalue { i64, ptr } %t527, ptr %t526, 1
  %t529 = load ptr, ptr %l182, !tbaa !29
  %t531 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s19, ptr %s19, ptr %v2, ptr %t529, { i64, ptr } %t528)
  store { i64, ptr } %t531, ptr %l189
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s19)
  br label %bb70
bb70:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load i64, ptr %l4, !tbaa !24
  %t534 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d408, i32 0, i32 1) }, 1
  %t535 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d408, i32 0, i32 1) }, 0
  %t537 = call i64 @__olang_fmt_i64(ptr null, i64 %t533)
  %t538 = add i64 %t535, %t537
  %t539 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t538)
  call void @olang_textcopy(ptr %t539, ptr %t534, i64 %t535)
  %t540 = getelementptr i8, ptr %t539, i64 %t535
  %t541 = call i64 @__olang_fmt_i64(ptr %t540, i64 %t533)
  %t542 = insertvalue { i64, ptr } undef, i64 %t538, 0
  %t543 = insertvalue { i64, ptr } %t542, ptr %t539, 1
  %t545 = extractvalue { i64, ptr } %t543, 0
  %t546 = extractvalue { i64, ptr } %t543, 1
  %t547 = mul i64 %t545, 1
  %t548 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t547)
  call void @llvm.memcpy.p0.p0.i64(ptr %t548, ptr %t546, i64 %t547, i1 false)
  %t549 = insertvalue { i64, ptr } undef, i64 %t545, 0
  %t550 = insertvalue { i64, ptr } %t549, ptr %t548, 1
  %t553 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %s2, ptr %v2, ptr %t532, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d409, i32 0, i32 1) }, { i64, ptr } %t550, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t553, ptr %l194
  br label %bb71
bb71:
  %t554 = load { i64, ptr }, ptr %l194, !tbaa !27
  store { i64, ptr } %t554, ptr %l22, !tbaa !27
  %t555 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t555, ptr %l195
  br label %bb72
bb72:
  %t556 = load %"std/prelude/text:StringBuilder", ptr %l195
  store %"std/prelude/text:StringBuilder" %t556, ptr %l23
  %t557 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t558 = load i64, ptr %l4, !tbaa !24
  %t559 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d410, i32 0, i32 1) }, 1
  %t560 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d410, i32 0, i32 1) }, 0
  %t562 = extractvalue { i64, ptr } %t557, 1
  %t563 = extractvalue { i64, ptr } %t557, 0
  %t564 = add i64 %t560, %t563
  %t565 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d411, i32 0, i32 1) }, 1
  %t566 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d411, i32 0, i32 1) }, 0
  %t567 = add i64 %t564, %t566
  %t569 = call i64 @__olang_fmt_i64(ptr null, i64 %t558)
  %t570 = add i64 %t567, %t569
  %t571 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d412, i32 0, i32 1) }, 1
  %t572 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d412, i32 0, i32 1) }, 0
  %t573 = add i64 %t570, %t572
  %t574 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t573)
  call void @olang_textcopy(ptr %t574, ptr %t559, i64 %t560)
  %t575 = getelementptr i8, ptr %t574, i64 %t560
  call void @olang_textcopy(ptr %t575, ptr %t562, i64 %t563)
  %t576 = getelementptr i8, ptr %t575, i64 %t563
  call void @olang_textcopy(ptr %t576, ptr %t565, i64 %t566)
  %t577 = getelementptr i8, ptr %t576, i64 %t566
  %t578 = call i64 @__olang_fmt_i64(ptr %t577, i64 %t558)
  %t579 = getelementptr i8, ptr %t577, i64 %t569
  call void @olang_textcopy(ptr %t579, ptr %t571, i64 %t572)
  %t580 = insertvalue { i64, ptr } undef, i64 %t573, 0
  %t581 = insertvalue { i64, ptr } %t580, ptr %t574, 1
  %t583 = extractvalue { i64, ptr } %t581, 0
  %t584 = extractvalue { i64, ptr } %t581, 1
  %t585 = mul i64 %t583, 1
  %t586 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t585)
  call void @llvm.memcpy.p0.p0.i64(ptr %t586, ptr %t584, i64 %t585, i1 false)
  %t587 = insertvalue { i64, ptr } undef, i64 %t583, 0
  %t588 = insertvalue { i64, ptr } %t587, ptr %t586, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %l23, { i64, ptr } %t588)
  br label %bb73
bb73:
  store i64 1, ptr %l24, !tbaa !24
  %t591 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t592 = load i64, ptr %t591, !tbaa !24
  store i64 %t592, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t594 = load i64, ptr %l25, !tbaa !24
  %t595 = load i64, ptr %l24, !tbaa !24
  %t598 = icmp sgt i64 %t594, %t595
  br i1 %t598, label %bb74, label %bb75
bb74:
  %t600 = load i64, ptr %l26, !tbaa !24
  %t602 = icmp sgt i64 %t600, 0
  br i1 %t602, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l205, !tbaa !24
  br label %bb79
bb76:
  %t604 = load i64, ptr %l25, !tbaa !24
  %t605 = load i64, ptr %l24, !tbaa !24
  %t608 = sub i64 %t604, %t605
  %t609 = load i64, ptr %l26, !tbaa !24
  %t612 = add i64 %t608, %t609
  %t614 = sub i64 %t612, 1
  %t615 = load i64, ptr %l26, !tbaa !24
  %t618 = sdiv i64 %t614, %t615
  store i64 %t618, ptr %l208, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l208, !tbaa !24
  br label %bb78
bb78:
  %t620 = load i64, ptr %l208, !tbaa !24
  store i64 %t620, ptr %l205, !tbaa !24
  br label %bb79
bb79:
  %t621 = load i64, ptr %l205, !tbaa !24
  store i64 %t621, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s24
  %t622 = load i64, ptr %l28, !tbaa !24
  %t623 = load i64, ptr %l27, !tbaa !24
  %t626 = icmp slt i64 %t622, %t623
  %t628 = xor i1 %t626, true
  br i1 %t628, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s24)
  br label %bb86
bb82:
  br label %bb83
bb83:
  %t630 = load i64, ptr %l24, !tbaa !24
  %t631 = load i64, ptr %l28, !tbaa !24
  %t632 = load i64, ptr %l26, !tbaa !24
  %t635 = mul i64 %t631, %t632
  %t638 = add i64 %t630, %t635
  store i64 %t638, ptr %l29, !tbaa !24
  %t640 = load i64, ptr %l29, !tbaa !24
  %t641 = load i64, ptr %l4, !tbaa !24
  %t642 = load i64, ptr %l29, !tbaa !24
  %t643 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d413, i32 0, i32 1) }, 1
  %t644 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d413, i32 0, i32 1) }, 0
  %t646 = call i64 @__olang_fmt_i64(ptr null, i64 %t640)
  %t647 = add i64 %t644, %t646
  %t648 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d414, i32 0, i32 1) }, 1
  %t649 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d414, i32 0, i32 1) }, 0
  %t650 = add i64 %t647, %t649
  %t652 = call i64 @__olang_fmt_i64(ptr null, i64 %t641)
  %t653 = add i64 %t650, %t652
  %t654 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d415, i32 0, i32 1) }, 1
  %t655 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d415, i32 0, i32 1) }, 0
  %t656 = add i64 %t653, %t655
  %t658 = call i64 @__olang_fmt_i64(ptr null, i64 %t642)
  %t659 = add i64 %t656, %t658
  %t660 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t659)
  call void @olang_textcopy(ptr %t660, ptr %t643, i64 %t644)
  %t661 = getelementptr i8, ptr %t660, i64 %t644
  %t662 = call i64 @__olang_fmt_i64(ptr %t661, i64 %t640)
  %t663 = getelementptr i8, ptr %t661, i64 %t646
  call void @olang_textcopy(ptr %t663, ptr %t648, i64 %t649)
  %t664 = getelementptr i8, ptr %t663, i64 %t649
  %t665 = call i64 @__olang_fmt_i64(ptr %t664, i64 %t641)
  %t666 = getelementptr i8, ptr %t664, i64 %t652
  call void @olang_textcopy(ptr %t666, ptr %t654, i64 %t655)
  %t667 = getelementptr i8, ptr %t666, i64 %t655
  %t668 = call i64 @__olang_fmt_i64(ptr %t667, i64 %t642)
  %t669 = insertvalue { i64, ptr } undef, i64 %t659, 0
  %t670 = insertvalue { i64, ptr } %t669, ptr %t660, 1
  %t672 = extractvalue { i64, ptr } %t670, 0
  %t673 = extractvalue { i64, ptr } %t670, 1
  %t674 = mul i64 %t672, 1
  %t675 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t674)
  call void @llvm.memcpy.p0.p0.i64(ptr %t675, ptr %t673, i64 %t674, i1 false)
  %t676 = insertvalue { i64, ptr } undef, i64 %t672, 0
  %t677 = insertvalue { i64, ptr } %t676, ptr %t675, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s24, ptr %l23, { i64, ptr } %t677)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s24)
  br label %bb85
bb85:
  %t680 = load i64, ptr %l28, !tbaa !24
  %t682 = add i64 %t680, 1
  store i64 %t682, ptr %l28, !tbaa !24
  br label %bb80
bb86:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %l23, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d416, i32 0, i32 1) })
  br label %bb87
bb87:
  %t685 = load ptr, ptr %l0, !tbaa !29
  store ptr %t685, ptr %l235, !tbaa !29
  %t687 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s2, ptr %l23)
  store { i64, ptr } %t687, ptr %l237
  br label %bb88
bb88:
  %t688 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t689 = extractvalue { i64, ptr } %t688, 0
  %t690 = extractvalue { i64, ptr } %t688, 1
  %t691 = mul i64 %t689, 1
  %t692 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t691)
  call void @llvm.memcpy.p0.p0.i64(ptr %t692, ptr %t690, i64 %t691, i1 false)
  %t693 = insertvalue { i64, ptr } undef, i64 %t689, 0
  %t694 = insertvalue { i64, ptr } %t693, ptr %t692, 1
  %t695 = load ptr, ptr %l235, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s2, ptr %v2, ptr %t695, { i64, ptr } %t694)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s2)
  br label %bb90
bb90:
  br label %bb2
bb91:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2estmt(ptr %v0, ptr %a0, { i64, [21 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [21 x i64] }
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca i32
  %l4 = alloca { i64, [15 x i64] }
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca { i64, [1 x i64] }
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca { i64, [21 x i64] }
  %l12 = alloca { i64, [21 x i64] }
  %l17 = alloca { i64, [21 x i64] }
  %l21 = alloca { i64, ptr }
  %l24 = alloca { i64, [21 x i64] }
  store ptr %a0, ptr %l0
  store { i64, [21 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l1, i64 176, i1 false)
  %t1 = load { i64, [21 x i64] }, ptr %l9
  %t2 = extractvalue { i64, [21 x i64] } %t1, 0
  %t3 = icmp eq i64 %t2, 5
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t6 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t5, i32 0, i32 1
  %t7 = load { i64, [1 x i64] }, ptr %t6
  store { i64, [1 x i64] } %t7, ptr %l2
  br label %bb5
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l1, i64 176, i1 false)
  %t9 = load { i64, [21 x i64] }, ptr %l12
  %t10 = extractvalue { i64, [21 x i64] } %t9, 0
  %t11 = icmp eq i64 %t10, 10
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t14 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t13, i32 0, i32 1
  %t15 = load { i64, [1 x i64] }, ptr %t14
  store { i64, [1 x i64] } %t15, ptr %l2
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t17, { i64, [1 x i64] } %t18)
  br label %bb6
bb6:
  br label %bb51
bb7:
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %l1, i64 176, i1 false)
  %t21 = load { i64, [21 x i64] }, ptr %l17
  %t22 = extractvalue { i64, [21 x i64] } %t21, 0
  %t23 = icmp eq i64 %t22, 12
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t25, i32 0, i32 1
  %t27 = load i32, ptr %t26
  store i32 %t27, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/emit:scopeUse", ptr %t29, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l21, !tbaa !27
  %t33 = load i32, ptr %l3, !tbaa !23
  %t35 = sext i32 %t33 to i64
  %t37 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i1, ptr %t38, i64 %t35
  store i1 true, ptr %t39, !tbaa !31
  br label %bb51
bb11:
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %l1, i64 176, i1 false)
  %t40 = load { i64, [21 x i64] }, ptr %l24
  %t41 = extractvalue { i64, [21 x i64] } %t40, 0
  %t42 = icmp eq i64 %t41, 0
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t44, i32 0, i32 2
  %t46 = load { i64, [15 x i64] }, ptr %t45
  store { i64, [15 x i64] } %t46, ptr %l4
  br label %bb14
bb13:
  br label %bb46
bb14:
  %t48 = load { i64, [15 x i64] }, ptr %l4
  %t50 = extractvalue { i64, [15 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 7
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t54 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t53, i32 0, i32 0
  %t55 = load { i64, [1 x i64] }, ptr %t54
  store { i64, [1 x i64] } %t55, ptr %l5
  br label %bb21
bb16:
  %t57 = load { i64, [15 x i64] }, ptr %l4
  %t59 = extractvalue { i64, [15 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 8
  br i1 %t60, label %bb17, label %bb18
bb17:
  %t62 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t63 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t62, i32 0, i32 0
  %t64 = load { i64, [1 x i64] }, ptr %t63
  store { i64, [1 x i64] } %t64, ptr %l5
  br label %bb21
bb18:
  %t66 = load { i64, [15 x i64] }, ptr %l4
  %t68 = extractvalue { i64, [15 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 10
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t72 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t71, i32 0, i32 2
  %t73 = load { i64, [1 x i64] }, ptr %t72
  store { i64, [1 x i64] } %t73, ptr %l5
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load { i64, [1 x i64] }, ptr %l5
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t75, { i64, [1 x i64] } %t76)
  br label %bb22
bb22:
  br label %bb45
bb23:
  %t79 = load { i64, [15 x i64] }, ptr %l4
  %t81 = extractvalue { i64, [15 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 12
  br i1 %t82, label %bb24, label %bb25
bb24:
  %t84 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t85 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t84, i32 0, i32 0
  %t86 = load { i64, [1 x i64] }, ptr %t85
  store { i64, [1 x i64] } %t86, ptr %l6
  %t88 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t89 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t88, i32 0, i32 1
  %t90 = load { i64, [1 x i64] }, ptr %t89
  store { i64, [1 x i64] } %t90, ptr %l7
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load { i64, [1 x i64] }, ptr %l6
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t92, { i64, [1 x i64] } %t93)
  br label %bb27
bb27:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load { i64, [1 x i64] }, ptr %l7
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t96, { i64, [1 x i64] } %t97)
  br label %bb28
bb28:
  br label %bb45
bb29:
  %t100 = load { i64, [15 x i64] }, ptr %l4
  %t102 = extractvalue { i64, [15 x i64] } %t100, 0
  %t103 = icmp eq i64 %t102, 13
  br i1 %t103, label %bb30, label %bb31
bb30:
  %t105 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t106 = getelementptr { { i64, [1 x i64] } }, ptr %t105, i32 0, i32 0
  %t107 = load { i64, [1 x i64] }, ptr %t106
  store { i64, [1 x i64] } %t107, ptr %l8
  br label %bb38
bb31:
  %t109 = load { i64, [15 x i64] }, ptr %l4
  %t111 = extractvalue { i64, [15 x i64] } %t109, 0
  %t112 = icmp eq i64 %t111, 14
  br i1 %t112, label %bb32, label %bb33
bb32:
  %t114 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t115 = getelementptr { { i64, [1 x i64] } }, ptr %t114, i32 0, i32 0
  %t116 = load { i64, [1 x i64] }, ptr %t115
  store { i64, [1 x i64] } %t116, ptr %l8
  br label %bb38
bb33:
  %t118 = load { i64, [15 x i64] }, ptr %l4
  %t120 = extractvalue { i64, [15 x i64] } %t118, 0
  %t121 = icmp eq i64 %t120, 15
  br i1 %t121, label %bb34, label %bb35
bb34:
  %t123 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t124 = getelementptr { { i64, [1 x i64] } }, ptr %t123, i32 0, i32 0
  %t125 = load { i64, [1 x i64] }, ptr %t124
  store { i64, [1 x i64] } %t125, ptr %l8
  br label %bb38
bb35:
  %t127 = load { i64, [15 x i64] }, ptr %l4
  %t129 = extractvalue { i64, [15 x i64] } %t127, 0
  %t130 = icmp eq i64 %t129, 16
  br i1 %t130, label %bb36, label %bb37
bb36:
  %t132 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t133 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t132, i32 0, i32 1
  %t134 = load { i64, [1 x i64] }, ptr %t133
  store { i64, [1 x i64] } %t134, ptr %l8
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load { i64, [1 x i64] }, ptr %l8
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t136, { i64, [1 x i64] } %t137)
  br label %bb39
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
  call void @__olang_check_failed(ptr @olang_loc_c9d6c002ea2b5b8d_4b7ac4eff7d67ea9)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_32b5d421b512c25c_dc383116d87dabd8)
  unreachable
bb51:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2efuzzCorpus(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l29 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d417, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l6
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l5
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l3, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = call { i64, ptr } @compiler_2femit_2efuzzSlug(ptr %v1, ptr %s1, { i64, ptr } %t14)
  store { i64, ptr } %t16, ptr %l10
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t17 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d418, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d418, i32 0, i32 1) }, 0
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 1
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t22 = add i64 %t18, %t21
  %t23 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t17, i64 %t18)
  %t24 = getelementptr i8, ptr %t23, i64 %t18
  call void @olang_textcopy(ptr %t24, ptr %t20, i64 %t21)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t23, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb8:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp eq i64 %t28, 0
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t32, ptr %l15, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l16, !tbaa !24
  %t35 = icmp sge i64 0, 0
  br i1 %t35, label %bb11, label %bb12
bb10:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t37, ptr %l21, !tbaa !27
  %t38 = load i64, ptr %l2, !tbaa !24
  store i64 %t38, ptr %l22, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l23, !tbaa !24
  %t41 = icmp sge i64 0, 0
  br i1 %t41, label %bb17, label %bb18
bb11:
  %t43 = icmp sle i64 0, 1
  br i1 %t43, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb13:
  %t45 = load i64, ptr %l16, !tbaa !24
  %t46 = icmp sle i64 1, %t45
  br i1 %t46, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb15:
  %t48 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i8, ptr %t49, i64 0
  %t51 = sub i64 1, 0
  %t52 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t50, 1
  store { i64, ptr } %t53, ptr %l14, !tbaa !27
  br label %bb23
bb16:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb17:
  %t55 = load i64, ptr %l22, !tbaa !24
  %t56 = icmp sle i64 0, %t55
  br i1 %t56, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb19:
  %t58 = load i64, ptr %l22, !tbaa !24
  %t59 = load i64, ptr %l23, !tbaa !24
  %t60 = icmp sle i64 %t58, %t59
  br i1 %t60, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb21:
  %t62 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l22, !tbaa !24
  %t65 = getelementptr i8, ptr %t63, i64 0
  %t66 = sub i64 %t64, 0
  %t67 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t65, 1
  store { i64, ptr } %t68, ptr %l14, !tbaa !27
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb23:
  %t70 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t72 = call { i64, ptr } @compiler_2femit_2efuzzSlug(ptr %v1, ptr %s0, { i64, ptr } %t70)
  store { i64, ptr } %t72, ptr %l29
  br label %bb24
bb24:
  %t73 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d419, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d419, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t79 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = add i64 %t78, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t74, i64 %t75)
  %t84 = getelementptr i8, ptr %t83, i64 %t75
  call void @olang_textcopy(ptr %t84, ptr %t76, i64 %t77)
  %t85 = getelementptr i8, ptr %t84, i64 %t77
  call void @olang_textcopy(ptr %t85, ptr %t80, i64 %t81)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t83, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t87, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ehexByte(ptr %v0, i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d420, i32 0, i32 1) }, ptr %l2, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t3 = load i8, ptr %l0, !tbaa !22
  %t5 = lshr i8 %t3, 4
  %t7 = zext i8 %t5 to i64
  %t9 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr i8, ptr %t10, i64 %t7
  %t12 = load i8, ptr %t11, !tbaa !32
  %t13 = load i8, ptr %l0, !tbaa !22
  %t15 = and i8 %t13, 15
  %t17 = zext i8 %t15 to i64
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 %t17
  %t22 = load i8, ptr %t21, !tbaa !32
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d421, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d421, i32 0, i32 1) }, 0
  %t26 = add i64 %t24, 1
  %t28 = add i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t23, i64 %t24)
  %t30 = getelementptr i8, ptr %t29, i64 %t24
  store i8 %t12, ptr %t30
  %t31 = getelementptr i8, ptr %t30, i64 1
  store i8 %t22, ptr %t31
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t29, 1
  store { i64, ptr } %t33, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2eprefixOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l15, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l15, !tbaa !24
  store i64 %t31, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l12, !tbaa !24
  store i64 %t32, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb22
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l6, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t51, ptr %l33, !tbaa !27
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t57)
  store i1 %t59, ptr %l36
  br label %bb11
bb11:
  %t60 = load i1, ptr %l36, !tbaa !21
  br i1 %t60, label %bb12, label %bb13
bb12:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t61, ptr %l37, !tbaa !27
  %t62 = load i64, ptr %l6, !tbaa !24
  store i64 %t62, ptr %l38, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l39, !tbaa !24
  %t65 = icmp sge i64 0, 0
  br i1 %t65, label %bb14, label %bb15
bb13:
  br label %bb20
bb14:
  %t67 = load i64, ptr %l38, !tbaa !24
  %t68 = icmp sle i64 0, %t67
  br i1 %t68, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_1e1ac9afcf25b4a6_b14a079dd13715c2)
  unreachable
bb16:
  %t70 = load i64, ptr %l38, !tbaa !24
  %t71 = load i64, ptr %l39, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_1e1ac9afcf25b4a6_b14a079dd13715c2)
  unreachable
bb18:
  %t74 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = load i64, ptr %l38, !tbaa !24
  %t77 = getelementptr i8, ptr %t75, i64 0
  %t78 = sub i64 %t76, 0
  %t79 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t77, 1
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = extractvalue { i64, ptr } %t80, 0
  %t84 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t82, i64 %t83)
  %t85 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_1e1ac9afcf25b4a6_b14a079dd13715c2)
  unreachable
bb20:
  br label %bb21
bb21:
  %t88 = load i64, ptr %l5, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l5, !tbaa !24
  br label %bb7
bb22:
  %t92 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 1
  %t95 = extractvalue { i64, ptr } %t92, 0
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d422, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d422, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t99 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t94, i64 %t95)
  %t100 = getelementptr i8, ptr %t99, i64 %t95
  call void @olang_textcopy(ptr %t100, ptr %t96, i64 %t97)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  store { i64, ptr } %t102, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2erefsIn(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i8
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca { i64, ptr }
  %l25 = alloca i1
  %l26 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca { i64, ptr }
  %l50 = alloca i1
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l67 = alloca i1
  %l68 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca { i64, ptr }
  %l94 = alloca i1
  %l108 = alloca i1
  %l113 = alloca i1
  %l114 = alloca { i64, ptr }
  %l118 = alloca i1
  %l125 = alloca i1
  %l126 = alloca { i64, ptr }
  %l129 = alloca i1
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb94
bb4:
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l15, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  store i8 %t21, ptr %l4, !tbaa !22
  %t23 = load i8, ptr %l4, !tbaa !22
  %t25 = icmp eq i8 %t23, 34
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l3, !tbaa !24
  br label %bb8
bb7:
  %t31 = load i8, ptr %l4, !tbaa !22
  %t33 = icmp eq i8 %t31, 59
  br i1 %t33, label %bb17, label %bb18
bb8:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t41, ptr %l26, !tbaa !27
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  %t49 = icmp ne i8 %t47, 34
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
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l3, !tbaa !24
  br label %bb15
bb15:
  br label %bb8
bb16:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l3, !tbaa !24
  br label %bb92
bb17:
  br label %bb19
bb18:
  %t62 = load i8, ptr %l4, !tbaa !22
  %t64 = icmp eq i8 %t62, 37
  br i1 %t64, label %bb28, label %bb29
bb19:
  %t66 = load i64, ptr %l3, !tbaa !24
  %t67 = load i64, ptr %l2, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t72, ptr %l41, !tbaa !27
  %t73 = load i64, ptr %l3, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i8, ptr %t76, i64 %t73
  %t78 = load i8, ptr %t77, !tbaa !32
  %t80 = icmp ne i8 %t78, 10
  store i1 %t80, ptr %l40, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb22
bb22:
  %t82 = load i1, ptr %l40, !tbaa !21
  %t83 = xor i1 %t82, true
  br i1 %t83, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t85 = load i64, ptr %l3, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l3, !tbaa !24
  br label %bb26
bb26:
  br label %bb19
bb27:
  br label %bb91
bb28:
  %t89 = load i64, ptr %l3, !tbaa !24
  %t91 = add i64 %t89, 1
  %t92 = load i64, ptr %l2, !tbaa !24
  %t95 = icmp slt i64 %t91, %t92
  store i1 %t95, ptr %l50, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb30
bb30:
  %t97 = load i1, ptr %l50, !tbaa !21
  br i1 %t97, label %bb31, label %bb32
bb31:
  %t98 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t98, ptr %l56, !tbaa !27
  %t99 = load i64, ptr %l3, !tbaa !24
  %t101 = add i64 %t99, 1
  %t103 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr i8, ptr %t104, i64 %t101
  %t106 = load i8, ptr %t105, !tbaa !32
  %t108 = icmp eq i8 %t106, 34
  store i1 %t108, ptr %l55, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb33
bb33:
  %t110 = load i1, ptr %l55, !tbaa !21
  br i1 %t110, label %bb34, label %bb35
bb34:
  %t111 = load i64, ptr %l3, !tbaa !24
  %t113 = add i64 %t111, 2
  store i64 %t113, ptr %l5, !tbaa !24
  %t115 = load i64, ptr %l5, !tbaa !24
  store i64 %t115, ptr %l3, !tbaa !24
  br label %bb36
bb35:
  %t117 = load i8, ptr %l4, !tbaa !22
  %t119 = icmp eq i8 %t117, 64
  br i1 %t119, label %bb48, label %bb49
bb36:
  %t121 = load i64, ptr %l3, !tbaa !24
  %t122 = load i64, ptr %l2, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  br i1 %t125, label %bb37, label %bb38
bb37:
  %t127 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t127, ptr %l68, !tbaa !27
  %t128 = load i64, ptr %l3, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i8, ptr %t131, i64 %t128
  %t133 = load i8, ptr %t132, !tbaa !32
  %t135 = icmp ne i8 %t133, 34
  store i1 %t135, ptr %l67, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb39
bb39:
  %t137 = load i1, ptr %l67, !tbaa !21
  %t138 = xor i1 %t137, true
  br i1 %t138, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  br label %bb42
bb42:
  %t140 = load i64, ptr %l3, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l3, !tbaa !24
  br label %bb43
bb43:
  br label %bb36
bb44:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 1)
  br label %bb45
bb45:
  %t145 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 %t145)
  br label %bb46
bb46:
  %t148 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 %t148)
  br label %bb47
bb47:
  %t151 = load i64, ptr %l3, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l3, !tbaa !24
  br label %bb90
bb48:
  %t155 = load i64, ptr %l3, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l6, !tbaa !24
  %t159 = load i64, ptr %l6, !tbaa !24
  store i64 %t159, ptr %l3, !tbaa !24
  br label %bb50
bb49:
  %t161 = load i8, ptr %l4, !tbaa !22
  %t163 = icmp eq i8 %t161, 33
  br i1 %t163, label %bb66, label %bb67
bb50:
  %t165 = load i64, ptr %l3, !tbaa !24
  %t166 = load i64, ptr %l2, !tbaa !24
  %t169 = icmp slt i64 %t165, %t166
  br i1 %t169, label %bb51, label %bb52
bb51:
  %t171 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t171, ptr %l91, !tbaa !27
  %t172 = load i64, ptr %l3, !tbaa !24
  %t174 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr i8, ptr %t175, i64 %t172
  %t177 = load i8, ptr %t176, !tbaa !32
  %t179 = call i1 @compiler_2femit_2esymbolChar(i8 %t177)
  store i1 %t179, ptr %l94
  br label %bb53
bb52:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb54
bb53:
  %t180 = load i1, ptr %l94, !tbaa !21
  store i1 %t180, ptr %l90, !tbaa !21
  br label %bb54
bb54:
  %t181 = load i1, ptr %l90, !tbaa !21
  %t182 = xor i1 %t181, true
  br i1 %t182, label %bb55, label %bb56
bb55:
  br label %bb59
bb56:
  br label %bb57
bb57:
  %t184 = load i64, ptr %l3, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l3, !tbaa !24
  br label %bb58
bb58:
  br label %bb50
bb59:
  %t188 = load i64, ptr %l3, !tbaa !24
  %t189 = load i64, ptr %l6, !tbaa !24
  %t192 = icmp sgt i64 %t188, %t189
  br i1 %t192, label %bb60, label %bb61
bb60:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 0)
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t195 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 %t195)
  br label %bb63
bb63:
  %t198 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 %t198)
  br label %bb64
bb64:
  br label %bb65
bb65:
  br label %bb89
bb66:
  %t201 = load i64, ptr %l3, !tbaa !24
  %t203 = add i64 %t201, 1
  %t204 = load i64, ptr %l2, !tbaa !24
  %t207 = icmp slt i64 %t203, %t204
  store i1 %t207, ptr %l108, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb68
bb68:
  %t209 = load i1, ptr %l108, !tbaa !21
  br i1 %t209, label %bb69, label %bb70
bb69:
  %t210 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t210, ptr %l114, !tbaa !27
  %t211 = load i64, ptr %l3, !tbaa !24
  %t213 = add i64 %t211, 1
  %t215 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i8, ptr %t216, i64 %t213
  %t218 = load i8, ptr %t217, !tbaa !32
  %t220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t218)
  store i1 %t220, ptr %l118
  br label %bb71
bb70:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb72
bb71:
  %t221 = load i1, ptr %l118, !tbaa !21
  store i1 %t221, ptr %l113, !tbaa !21
  br label %bb72
bb72:
  %t222 = load i1, ptr %l113, !tbaa !21
  br i1 %t222, label %bb73, label %bb74
bb73:
  %t223 = load i64, ptr %l3, !tbaa !24
  store i64 %t223, ptr %l7, !tbaa !24
  %t225 = load i64, ptr %l3, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l3, !tbaa !24
  br label %bb75
bb74:
  %t229 = load i64, ptr %l3, !tbaa !24
  %t231 = add i64 %t229, 1
  store i64 %t231, ptr %l3, !tbaa !24
  br label %bb88
bb75:
  %t233 = load i64, ptr %l3, !tbaa !24
  %t234 = load i64, ptr %l2, !tbaa !24
  %t237 = icmp slt i64 %t233, %t234
  br i1 %t237, label %bb76, label %bb77
bb76:
  %t239 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t239, ptr %l126, !tbaa !27
  %t240 = load i64, ptr %l3, !tbaa !24
  %t242 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = getelementptr i8, ptr %t243, i64 %t240
  %t245 = load i8, ptr %t244, !tbaa !32
  %t247 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t245)
  store i1 %t247, ptr %l129
  br label %bb78
bb77:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb79
bb78:
  %t248 = load i1, ptr %l129, !tbaa !21
  store i1 %t248, ptr %l125, !tbaa !21
  br label %bb79
bb79:
  %t249 = load i1, ptr %l125, !tbaa !21
  %t250 = xor i1 %t249, true
  br i1 %t250, label %bb80, label %bb81
bb80:
  br label %bb84
bb81:
  br label %bb82
bb82:
  %t252 = load i64, ptr %l3, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l3, !tbaa !24
  br label %bb83
bb83:
  br label %bb75
bb84:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 2)
  br label %bb85
bb85:
  %t257 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 %t257)
  br label %bb86
bb86:
  %t260 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 %t260)
  br label %bb87
bb87:
  br label %bb88
bb88:
  br label %bb89
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  br label %bb92
bb92:
  br label %bb93
bb93:
  br label %bb2
bb94:
  %t263 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t263, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
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
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d2 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"!DIDerivedType(tag: DW_TAG_pointer_type, baseType: " }>, align 8
@.d3 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", size: 64)" }>, align 8
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
@.d4 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"!DIDerivedType(tag: DW_TAG_member, name: \22" }>, align 8
@.d5 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22, baseType: !" }>, align 8
@.d6 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c", size: 64, offset: 0)" }>, align 8
@.d7 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"!DIDerivedType(tag: DW_TAG_member, name: \22" }>, align 8
@.d8 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22, baseType: !" }>, align 8
@.d9 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", size: 64, offset: 64)" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"!{!" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", !" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d13 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"!DICompositeType(tag: DW_TAG_structure_type, name: \22" }>, align 8
@.d14 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"\22, size: 128, elements: !" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d16 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"!DISubroutineType(types: !{})" }>, align 8
@.d17 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"!DIDerivedType(tag: DW_TAG_typedef, name: \22" }>, align 8
@.d18 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22, baseType: !" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eexportParams_2elocal_2e18 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%p" }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i64 " }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"n" }>, align 8
@.d24 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"insertvalue { i64, ptr } undef, i64 " }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"n, 0" }>, align 8
@.d26 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"insertvalue { i64, ptr } " }>, align 8
@.d27 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d29 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"{ i64, ptr } " }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d38 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d41 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d42 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d43 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" alignstack(8)" }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_region_release(ptr) noinline
@.d47 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ptr byval(" }>, align 8
@.d48 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c") align " }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d50 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d51 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d59 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d61 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"not lowered: " }>, align 8
@.d62 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"entry:\0A  ret void\0A}\0A\0A" }>, align 8
@.d63 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_check_failed" }>, align 8
@.d64 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"not lowered" }>, align 8
@.d65 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"not lowered" }>, align 8
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".walk" }>, align 8
@.d67 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" alwaysinline" }>, align 8
@.d68 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".walk" }>, align 8
@.d69 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang_fvadapt_" }>, align 8
@.d70 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"linkonce_odr" }>, align 8
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
@.d71 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d72 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"%env" }>, align 8
@.d73 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1" }>, align 8
@.d74 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d75 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d76 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr %out" }>, align 8
@.d77 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %v" }>, align 8
@.d78 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d79 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %a" }>, align 8
@.d80 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %a" }>, align 8
@.d81 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"c, ptr %a" }>, align 8
@.d82 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"e" }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d84 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" %a" }>, align 8
@.d85 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d86 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call void " }>, align 8
@.d87 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d88 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d89 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d90 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret void" }>, align 8
@.d91 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ret i32 0" }>, align 8
@.d92 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d93 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d95 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d96 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2efvAdapter_2elocal_2e35 = weak hidden constant i1 false
@.d97 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d100 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d101 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d102 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d103 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d104 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d105 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret i32 " }>, align 8
@.d106 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d107 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d108 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d109 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" zeroinitializer, i32 " }>, align 8
@.d110 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d111 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d113 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d114 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d115 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d116 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d117 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang_fvadapt_" }>, align 8
@.d118 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"entry:\0A" }>, align 8
@.d119 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"}\0A\0A" }>, align 8
@.d120 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2femit_3aReused(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/emit:Reused"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 192, i1 false)
  %t2 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 1
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 2
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 3
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 6
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 7
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/emit:Reused", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 192, i1 false)
  br label %ret
ret:
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

@.d121 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang.notable" }>, align 8
@.d122 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"@olang.notable = linkonce_odr constant ptr null\0A" }>, align 8
@.d123 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang.notable" }>, align 8
@.d124 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"G_2e" }>, align 8
@.d125 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d126 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2ereadableTypes_2elocal_2e10 = weak hidden constant i1 false
@.d127 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d128 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"*/" }>, align 8
@.d129 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"* /" }>, align 8
@.d130 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d131 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" = weak hidden constant i1 false\0A" }>, align 8
@.d132 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d133 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d134 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2ewriteBody_2elocal_2e8 = weak hidden constant i1 false
@.d135 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_check_failed" }>, align 8
@.d136 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"not emitted" }>, align 8
@.d137 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"not emitted" }>, align 8
@.d138 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"define internal ptr @" }>, align 8
@.d139 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c".coro(ptr %env, ptr %home) presplitcoroutine alwaysinline #0 {\0A" }>, align 8
@.d140 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" !dbg !" }>, align 8
@.d141 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" {\0A" }>, align 8
@.d142 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"entry:\0A" }>, align 8
@.d143 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"  br label %start\0A" }>, align 8
@.d144 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}\0A" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d145 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d146 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" = alloca " }>, align 8
@.d147 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", align " }>, align 8
declare ptr @__olang_scope_or(ptr, ptr)
@.d148 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcabi_3aWay_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_home(ptr)
@olang_2esole_2ecompiler_2fcabi_3aWay_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcabi_3aWay_2e3 = weak hidden constant i1 false
@.d149 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2fcabi_3aWay_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e10 = weak hidden constant i1 false
@.d150 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ptr sret(" }>, align 8
@.d151 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c") align " }>, align 8
@.d152 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d153 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d154 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"@__olang_" }>, align 8
@.d155 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ptr @" }>, align 8
@.d156 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d157 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e34 = weak hidden constant i1 false
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e35 = weak hidden constant i1 false
@.d158 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", ..." }>, align 8
@.d159 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d160 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d161 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d162 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d163 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2ecCall_2elocal_2e36 = weak hidden constant i1 false
@.d164 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d165 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d166 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d167 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d168 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d169 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d170 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d171 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d172 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unreachable" }>, align 8
@.d173 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d174 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d175 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d176 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d177 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d178 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d179 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_gen_mine" }>, align 8
@.d180 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"getelementptr { i64, ptr }, ptr " }>, align 8
@.d181 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d182 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d183 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call ptr @__olang_gen_mine(ptr " }>, align 8
@.d184 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d185 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d186 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"store ptr " }>, align 8
@.d187 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d188 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", align 8" }>, align 8
@.d189 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"trunc " }>, align 8
@.d190 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d191 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d192 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"zext" }>, align 8
@.d193 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sext" }>, align 8
@.d194 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d195 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d196 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d197 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d198 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d199 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d200 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"zext i" }>, align 8
@.d201 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d202 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d203 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"shl " }>, align 8
@.d204 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d205 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d206 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"lshr " }>, align 8
@.d207 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" -1, " }>, align 8
@.d208 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-1" }>, align 8
@.d209 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"shl " }>, align 8
@.d210 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d211 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d212 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"xor " }>, align 8
@.d213 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d214 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", -1" }>, align 8
@.d215 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"and " }>, align 8
@.d216 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d217 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d218 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"or " }>, align 8
@.d219 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d220 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d221 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"lshr i32 " }>, align 8
@.d222 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 16" }>, align 8
@.d223 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"and i32 " }>, align 8
@.d224 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", 65535" }>, align 8
@.d225 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d226 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq i32 " }>, align 8
@.d227 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2erecode_2elocal_2e8 = weak hidden constant i1 false
@.d228 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d229 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i32 " }>, align 8
@.d230 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq i32 " }>, align 8
@.d231 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d232 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"shl i32 " }>, align 8
@.d233 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 16" }>, align 8
@.d234 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"or i32 " }>, align 8
@.d235 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d236 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d237 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
@.d238 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d239 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d240 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d241 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"sext " }>, align 8
@.d242 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d243 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d244 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d245 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2esatMulWide_2elocal_2e10 = weak hidden constant i1 false
@.d246 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d247 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"nuw " }>, align 8
@.d248 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"nsw " }>, align 8
@.d249 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mul " }>, align 8
@.d250 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d251 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d252 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d253 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"umin" }>, align 8
@.d254 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"smin" }>, align 8
@.d255 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"smax" }>, align 8
@.d256 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"trunc " }>, align 8
@.d257 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d258 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d259 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%s" }>, align 8
@.d260 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d261 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e7 = weak hidden constant i1 false
@.d262 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d263 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d264 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a task calling an extern" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e9 = weak hidden constant i1 false
@.d265 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"a task calling through an any" }>, align 8
@.d266 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ ptr, ptr }" }>, align 8
@.d267 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d268 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d269 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d270 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_standin" }>, align 8
@.d271 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"ptr @__olang_standin(ptr)" }>, align 8
@.d272 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_standin(ptr " }>, align 8
@.d273 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d274 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d275 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ ptr, ptr }" }>, align 8
@.d276 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d277 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d278 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_standin" }>, align 8
@.d279 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"ptr @__olang_standin(ptr)" }>, align 8
@.d280 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_standin(ptr " }>, align 8
@.d281 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d282 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d283 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{ " }>, align 8
@.d284 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d285 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i8" }>, align 8
@.d286 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d287 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_scope_alloc_a" }>, align 8
@.d288 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d289 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c", ptr null, i32 1" }>, align 8
@.d290 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ptrtoint ptr " }>, align 8
@.d291 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d292 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call ptr @__olang_scope_alloc_a(ptr " }>, align 8
@.d293 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d294 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i64 8)" }>, align 8
@.d295 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d296 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d297 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
@.d298 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d299 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d300 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call ptr @__olang_scope_alloc_a(ptr " }>, align 8
@.d301 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", i64 40, i64 8)" }>, align 8
@.d302 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d303 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call ptr @__olang_scope_alloc_a(ptr " }>, align 8
@.d304 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", i64 16, i64 8)" }>, align 8
@.d305 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d306 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"getelementptr { ptr, ptr }, ptr " }>, align 8
@.d307 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d308 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2espawn_2elocal_2e78 = weak hidden constant i1 false
@.d309 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"getelementptr { ptr, i64, ptr, i64, ptr }, ptr " }>, align 8
@.d310 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 2" }>, align 8
@.d311 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d312 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"getelementptr { ptr, i64, ptr, i64, ptr }, ptr " }>, align 8
@.d313 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d314 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d315 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d316 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"getelementptr { ptr, i64, ptr, i64, ptr }, ptr " }>, align 8
@.d317 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 3" }>, align 8
@.d318 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d319 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d320 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"getelementptr { ptr, i64, ptr, i64, ptr }, ptr " }>, align 8
@.d321 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 4" }>, align 8
@.d322 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d323 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
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

@.d324 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_worker_get" }>, align 8
@.d325 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"ptr @__olang_worker_get()" }>, align 8
@.d326 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_worker_start" }>, align 8
@.d327 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"void @__olang_worker_start(ptr, ptr, ptr, ptr)" }>, align 8
@.d328 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_worker_get()" }>, align 8
@.d329 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call void @__olang_worker_start(ptr " }>, align 8
@.d330 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@.d331 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d332 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d333 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%jh" }>, align 8
@.d334 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d335 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d336 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%jh" }>, align 8
@.d337 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d338 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hd" }>, align 8
@.d339 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d340 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = load ptr, ptr %f" }>, align 8
@.d341 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d342 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hx" }>, align 8
@.d343 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d344 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" = extractvalue " }>, align 8
@.d345 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d346 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d347 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d348 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  store " }>, align 8
@.d349 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" %hx" }>, align 8
@.d350 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d351 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %hd" }>, align 8
@.d352 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d353 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3afnEm__2etailCall_2elocal_2e4 = weak hidden constant i1 false
@.d354 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d355 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"a become's call of a function with an environment" }>, align 8
@.d356 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"a become's call of anything but a function" }>, align 8
@.d357 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unreachable" }>, align 8
@.d358 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d359 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d360 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d361 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a become's argument passed through memory" }>, align 8
@.d362 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { ptr, ptr } " }>, align 8
@.d363 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d364 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { ptr, ptr } " }>, align 8
@.d365 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d366 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d367 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d368 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d369 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d370 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"musttail call void " }>, align 8
@.d371 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d372 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d373 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret void" }>, align 8
@.d374 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"musttail call " }>, align 8
@.d375 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d376 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d377 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d378 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d379 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d380 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%ws" }>, align 8
@.d381 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d382 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"br label %wend" }>, align 8
@.d383 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"wend" }>, align 8
@.d384 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d385 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"wend" }>, align 8
@.d386 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%wh" }>, align 8
@.d387 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d388 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%wc" }>, align 8
@.d389 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d390 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"call ptr @llvm.coro.promise(ptr " }>, align 8
@.d391 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c", i32 8, i1 false)" }>, align 8
@.d392 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"getelementptr { " }>, align 8
@.d393 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 }, ptr " }>, align 8
@.d394 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d395 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d396 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"2" }>, align 8
@.d397 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d398 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d399 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr null" }>, align 8
@.d400 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d401 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call void " }>, align 8
@.d402 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d403 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d404 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d405 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d406 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d407 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d408 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%ws" }>, align 8
@.d409 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d410 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"switch i32 " }>, align 8
@.d411 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", label %wend" }>, align 8
@.d412 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".c0 [" }>, align 8
@.d413 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" i32 " }>, align 8
@.d414 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", label %wend" }>, align 8
@.d415 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d416 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ]" }>, align 8
@.d417 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d418 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"testdata/fuzz/" }>, align 8
@.d419 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"/testdata/fuzz/" }>, align 8
@.d420 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"0123456789ABCDEF" }>, align 8
@.d421 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\5C" }>, align 8
@.d422 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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

declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgVoidPtr(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2eescape(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_70000d3e005ea498_c6a0fd2b538569fc = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, ptr %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_a19b535d764b2fc2_b8d21aa34486a36 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclared(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2elinkFor(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGlobalInit(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewalkStub(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eadaptKey(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2femit_3afnEm_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprogram(ptr %v0, ptr %v1, ptr %v2, ptr %a0)
@olang_loc_e3ad71d8c7542caf_f4839b67a89e1c73 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2femit_2eHomeShared = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2femit_2eHomeInst = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeHome(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2femit_2eHomeLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_884b1f134ce8f58_4f25fcbaf6ee0184 = external constant [0 x i8]
@olang_loc_77c745ca54276229_8072b8e8f7d66d75 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
@olang_loc_5ff468ede8d2dad5_ce6794a5e99bfc39 = external constant [0 x i8]
@olang_loc_fd5758dba8282ae8_cbed788f914882ac = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2eAt_3ccompiler_2femit_3aReused_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupReached(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9224769184a821c8_ff8c445af92d13bc = external constant [0 x i8]
@olang_loc_68254245c55f7699_2855b47650ff1f6d = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ealiased(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_1a9d82a78676b0a6_b4156ec517c232f2 = external constant [0 x i8]
declare i1 @compiler_2femit_2etypeDelim(i8 %a0)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
@olang_loc_59a9be6f9464903_424bcbda67d6186f = external constant [0 x i8]
@olang_loc_f7c6dddb13d754e8_bd1e858aa2031304 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_42bc5298e90f43ae_6d491b8985e0cdda = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_5c86fd64ff4c2cab_ac7223dcbaf0ef37 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esoleName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecanonOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v1, { i64, ptr } %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_cc429a944aa711b1_fe28fb9b816eebdd = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_6f064da57090b2af_17093dce158f11fb = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbg(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2esubprogram(ptr %v0, ptr %v1, ptr %v2, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2erun(ptr %v0, ptr %v1, ptr %v2, ptr %a0)
@olang_loc_8de51998cc7658b0_11d2469cc10d3f54 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2edeclareVars(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenNext(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, { i64, ptr } %a5, i1 %a6)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenDrop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2femit_2efoldSlots(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2eframeKept(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %v0, i64 %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i32 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3, { i64, ptr } %a4)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexternArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexportNamed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [4 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ecArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, { i64, [4 x i64] } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecHeader(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_89905a2f16c466ce_9c68de6bba1a420a = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecParamList(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ecResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %v7, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, { i64, ptr } %a4, i32 %a5, { i64, ptr } %a6)
declare { i64, ptr } @compiler_2femit_2eblockName(ptr %v0, i32 %a0)
declare %"compiler/lower:Clone" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aClone_3e_2eAt_3ccompiler_2flower_3aClone_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2eknownOf(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1)
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCloneOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2, { i64, [2 x i64] } %a3, i32 %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecloneSym(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2esiteable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2enoteSites(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, %"compiler/mir:Call" %a3)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeFor(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare { { i64, ptr }, { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstInit(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstData(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0, i64 %a1)
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a00373ca27d5619a_9315010cb9ead296 = external constant [0 x i8]
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgLine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ebuilderOpened(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplainWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2etextInto(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_8a0f087481b95ab0_a13f080fe7b316d4 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eleavesOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, ptr %a2, ptr %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eleafAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eownWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, i64 %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easInt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
@olang_loc_96948ec8b108caf2_f11085d875d0f99e = external constant [0 x i8]
@olang_loc_961c92f0031f8566_93f78080bb0935c2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecut(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efromBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, i32 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easPacked(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eposition(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eminMax(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4)
@olang_loc_b9f3dbc2e93b92cd_66187346ebf9cfe1 = external constant [0 x i8]
@olang_loc_96197af7424aa9c_b080309cba8f3a50 = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4a9082f792731fd7_7c42022e8195998b = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2enewOnce(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eextern(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_e0bde991406b3b8f_e6287fb3b91b7a9b = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [1 x i64] } %a1)
@olang_loc_a90a878cc09c574e_a9a55cce621e609a = external constant [0 x i8]
declare %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9287686e475a7dbe_ea834ed677e35522 = external constant [0 x i8]
@olang_loc_45f21d64bb841654_8b47099e9550bca0 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etrampoline(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %v7, ptr %a0, { i64, ptr } %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, i1 %a3, { i64, ptr } %a4, i32 %a5, i64 %a6, %"compiler/mir:Task" %a7, i32 %a8, { i64, ptr } %a9)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5928719bf5ddeb28_6f82e9f6c6163cdc = external constant [0 x i8]
@olang_loc_51f36d50f4dfa9f9_6a3d5d7fb2ed60d = external constant [0 x i8]
@G_2ecompiler_2femit_2eBigCloseMark = external constant <{ [8 x i8], ptr }>
@olang_loc_3820e339cb1786be_89fed3c6bce3701a = external constant [0 x i8]
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
@olang_loc_d55aab1360531c47_f82e8a31cf9de643 = external constant [0 x i8]
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e9cd50c1ae7327e6_bc31e41603ed9ec2 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecoroDecls(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
@olang_loc_c9d6c002ea2b5b8d_4b7ac4eff7d67ea9 = external constant [0 x i8]
@olang_loc_32b5d421b512c25c_dc383116d87dabd8 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2efuzzSlug(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_1e1ac9afcf25b4a6_b14a079dd13715c2 = external constant [0 x i8]
declare i1 @compiler_2femit_2esymbolChar(i8 %a0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
