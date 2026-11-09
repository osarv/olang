source_filename = "compiler_emit-4.quick.ll"
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
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/cabi:Way" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/cabi:Regs" = type { i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/emit:Object" = type { { i64, ptr }, i32, { i64, ptr }, i64 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/emit:scopeUse" = type { { i64, ptr }, i1 }
define dso_local { i64, ptr } @compiler_2femit_2eblockName(ptr %v0, i32 %a0) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t5 = sext i32 %a0 to i64
  %t6 = call i64 @__olang_fmt_i64(ptr null, i64 %t5)
  %t7 = add i64 %t3, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t2, i64 %t3)
  %t9 = getelementptr i8, ptr %t8, i64 %t3
  %t10 = call i64 @__olang_fmt_i64(ptr %t9, i64 %t5)
  %t11 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t8, 1
  store { i64, ptr } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecanonOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca ptr
  %l7 = alloca i32
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l1, !tbaa !23
  %t12 = load i32, ptr %l7, !tbaa !23
  %t14 = icmp eq i32 %t12, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t19 = inttoptr i64 0 to ptr
  %t22 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %t19, ptr %t16, i32 %t17)
  store { i64, ptr } %t22, ptr %l14
  br label %bb4
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t26 = inttoptr i64 0 to ptr
  %t29 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonNamed(ptr %v0, ptr %v1, ptr %t26, ptr %t23, i32 %t24)
  store { i64, ptr } %t29, ptr %l18
  br label %bb5
bb4:
  %t30 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t30, ptr %l10, !tbaa !27
  br label %bb6
bb5:
  %t31 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t31, ptr %l10, !tbaa !27
  br label %bb6
bb6:
  %t32 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eemitAll(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i1
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, [2 x i64] }
  %l23 = alloca { i64, [2 x i64] }
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { i64, [2 x i64] }
  %l29 = alloca ptr
  %l30 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca i64
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
  %l52 = alloca ptr
  %l53 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i32
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l72 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca i1
  %l76 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca i64
  %l85 = alloca i64
  %l88 = alloca i64
  %l111 = alloca ptr
  %l118 = alloca i1
  %l124 = alloca ptr
  %l136 = alloca i64
  %l139 = alloca i1
  %l146 = alloca i64
  %l150 = alloca i64
  %l153 = alloca i64
  %l180 = alloca ptr
  %l196 = alloca ptr
  %l203 = alloca i1
  %l208 = alloca i64
  %l212 = alloca i1
  %l223 = alloca i1
  %l233 = alloca i1
  %l242 = alloca ptr
  %l243 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l245 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l246 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l248 = alloca i64
  %l250 = alloca i64
  %l255 = alloca i64
  %l263 = alloca i1
  %l265 = alloca i1
  %l268 = alloca i64
  %l278 = alloca i64
  %l280 = alloca i64
  %l285 = alloca { i64, [2 x i64] }
  %l291 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l293 = alloca i64
  %l295 = alloca i64
  %l300 = alloca i64
  %l310 = alloca i64
  %l312 = alloca i64
  %l317 = alloca i64
  %l332 = alloca i64
  %l335 = alloca i64
  %l341 = alloca { i64, [2 x i64] }
  %l351 = alloca i64
  %l355 = alloca i64
  %l358 = alloca i64
  %l376 = alloca ptr
  %l380 = alloca { i64, [2 x i64] }
  %l384 = alloca i32
  %l389 = alloca i64
  %l393 = alloca i64
  %l396 = alloca i64
  %l414 = alloca ptr
  %l418 = alloca i32
  %l422 = alloca i32
  %l427 = alloca i64
  %l429 = alloca i64
  %l434 = alloca { i64, [2 x i64] }
  %l443 = alloca ptr
  %l444 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l446 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l449 = alloca ptr
  %l450 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l452 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l458 = alloca i64
  %l461 = alloca i64
  %l467 = alloca i32
  %l474 = alloca { i64, ptr }
  %l478 = alloca { i64, ptr }
  %l486 = alloca { i64, ptr }
  %l497 = alloca { i64, ptr }
  %l498 = alloca { i64, ptr }
  %l501 = alloca i64
  %l502 = alloca i64
  %l510 = alloca i1
  %l512 = alloca ptr
  %l513 = alloca i64
  %l517 = alloca { i64, ptr }
  %l520 = alloca i64
  %l522 = alloca ptr
  %l523 = alloca i64
  %s0 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %s55 = alloca %olang.scope
  %s57 = alloca %olang.scope
  %s58 = alloca %olang.scope
  %s59 = alloca %olang.scope
  %t227 = alloca { i64, [2 x i64] }, align 8
  %t408 = alloca { i64, [2 x i64] }, align 8
  %t541 = alloca { i64, [2 x i64] }, align 8
  %t558 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 44
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 44
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntimeItems(ptr %v0, ptr %t9)
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eindex(ptr %v0, ptr %t11)
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l1, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereusing(ptr %v0, ptr %s0, ptr %t18)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l72
  br label %bb6
bb6:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l72
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l2
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereusedReachRoot(ptr %v0, ptr %t22)
  store i1 %t24, ptr %l74
  br label %bb7
bb7:
  %t25 = load i1, ptr %l74, !tbaa !21
  store i1 %t25, ptr %l3, !tbaa !21
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2einitOrder(ptr %v0, ptr %s0, ptr %t26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l76
  br label %bb8
bb8:
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l4
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l77
  br label %bb9
bb9:
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l5
  store i64 -1, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/emit:Emitter", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/lower:Lowerer", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l81
  br label %bb10
bb10:
  %t41 = load i64, ptr %l81, !tbaa !24
  store i64 %t41, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp sgt i64 %t42, %t43
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = load i64, ptr %l9, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb16
bb13:
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = sub i64 %t52, %t53
  %t57 = load i64, ptr %l9, !tbaa !24
  %t60 = add i64 %t56, %t57
  %t62 = sub i64 %t60, 1
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = sdiv i64 %t62, %t63
  store i64 %t66, ptr %l88, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb15
bb15:
  %t68 = load i64, ptr %l88, !tbaa !24
  store i64 %t68, ptr %l85, !tbaa !24
  br label %bb16
bb16:
  %t69 = load i64, ptr %l85, !tbaa !24
  store i64 %t69, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb17
bb17:
  %t70 = load i64, ptr %l11, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb18, label %bb19
bb18:
  br label %bb49
bb19:
  br label %bb20
bb20:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t79 = load i64, ptr %l11, !tbaa !24
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = mul i64 %t79, %t80
  %t86 = add i64 %t78, %t83
  store i64 %t86, ptr %l12, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/emit:Emitter", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/lower:Lowerer", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = load i64, ptr %l12, !tbaa !24
  %t99 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t94, i64 %t96)
  store ptr %t99, ptr %l111
  br label %bb21
bb21:
  %t100 = load ptr, ptr %l111, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Body", ptr %t100, i32 0, i32 1
  %t103 = load { i64, [2 x i64] }, ptr %t102
  store { i64, [2 x i64] } %t103, ptr %l13
  %t105 = load { i64, [2 x i64] }, ptr %l13
  %t107 = extractvalue { i64, [2 x i64] } %t105, 0
  %t108 = icmp eq i64 %t107, 5
  br i1 %t108, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb33
bb24:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/emit:Emitter", ptr %t110, i32 0, i32 4
  %t113 = load i1, ptr %t112, !tbaa !21
  br i1 %t113, label %bb25, label %bb26
bb25:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/emit:Emitter", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/lower:Lowerer", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = load i64, ptr %l12, !tbaa !24
  %t126 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t121, i64 %t123)
  store ptr %t126, ptr %l124
  br label %bb27
bb26:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb28
bb27:
  %t127 = load ptr, ptr %l124, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Body", ptr %t127, i32 0, i32 11
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = icmp eq ptr %t130, null
  %t134 = xor i1 %t132, true
  store i1 %t134, ptr %l118, !tbaa !21
  br label %bb28
bb28:
  %t136 = load i1, ptr %l118, !tbaa !21
  br i1 %t136, label %bb29, label %bb30
bb29:
  %t137 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t137)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  br label %bb47
bb33:
  %t140 = load { i64, [2 x i64] }, ptr %l13
  %t142 = extractvalue { i64, [2 x i64] } %t140, 0
  %t143 = icmp eq i64 %t142, 0
  br i1 %t143, label %bb34, label %bb35
bb34:
  %t145 = getelementptr { i64, [2 x i64] }, ptr %l13, i32 0, i32 1
  %t146 = getelementptr { i64 }, ptr %t145, i32 0, i32 0
  %t147 = load i64, ptr %t146
  store i64 %t147, ptr %l14, !tbaa !24
  br label %bb36
bb35:
  br label %bb42
bb36:
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t150 = load i64, ptr %l14, !tbaa !24
  %t153 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t149, i64 %t150)
  store i64 %t153, ptr %l136
  br label %bb37
bb37:
  %t154 = load i64, ptr %l136, !tbaa !24
  %t155 = load ptr, ptr %l1, !tbaa !29
  %t159 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %t155, i64 %t154)
  store i1 %t159, ptr %l139
  br label %bb38
bb38:
  %t160 = load i1, ptr %l139, !tbaa !21
  br i1 %t160, label %bb39, label %bb40
bb39:
  %t161 = load i64, ptr %l12, !tbaa !24
  store i64 %t161, ptr %l6, !tbaa !24
  br label %bb41
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
  call void @__olang_check_failed(ptr @olang_loc_ca7da4b07cdf4cec_48bb1648ef269dd0)
  unreachable
bb47:
  br label %bb48
bb48:
  %t163 = load i64, ptr %l11, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l11, !tbaa !24
  br label %bb17
bb49:
  store i64 0, ptr %l16, !tbaa !24
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/emit:Emitter", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/lower:Lowerer", ptr %t170, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t173)
  store i64 %t175, ptr %l146
  br label %bb50
bb50:
  %t176 = load i64, ptr %l146, !tbaa !24
  store i64 %t176, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t177 = load i64, ptr %l17, !tbaa !24
  %t178 = load i64, ptr %l16, !tbaa !24
  %t181 = icmp sgt i64 %t177, %t178
  br i1 %t181, label %bb51, label %bb52
bb51:
  %t183 = load i64, ptr %l18, !tbaa !24
  %t185 = icmp sgt i64 %t183, 0
  br i1 %t185, label %bb53, label %bb54
bb52:
  store i64 0, ptr %l150, !tbaa !24
  br label %bb56
bb53:
  %t187 = load i64, ptr %l17, !tbaa !24
  %t188 = load i64, ptr %l16, !tbaa !24
  %t191 = sub i64 %t187, %t188
  %t192 = load i64, ptr %l18, !tbaa !24
  %t195 = add i64 %t191, %t192
  %t197 = sub i64 %t195, 1
  %t198 = load i64, ptr %l18, !tbaa !24
  %t201 = sdiv i64 %t197, %t198
  store i64 %t201, ptr %l153, !tbaa !24
  br label %bb55
bb54:
  store i64 0, ptr %l153, !tbaa !24
  br label %bb55
bb55:
  %t203 = load i64, ptr %l153, !tbaa !24
  store i64 %t203, ptr %l150, !tbaa !24
  br label %bb56
bb56:
  %t204 = load i64, ptr %l150, !tbaa !24
  store i64 %t204, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb57
bb57:
  %t205 = load i64, ptr %l20, !tbaa !24
  %t206 = load i64, ptr %l19, !tbaa !24
  %t209 = icmp slt i64 %t205, %t206
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb58, label %bb59
bb58:
  br label %bb107
bb59:
  br label %bb60
bb60:
  %t213 = load i64, ptr %l16, !tbaa !24
  %t214 = load i64, ptr %l20, !tbaa !24
  %t215 = load i64, ptr %l18, !tbaa !24
  %t218 = mul i64 %t214, %t215
  %t221 = add i64 %t213, %t218
  store i64 %t221, ptr %l21, !tbaa !24
  %t223 = load i64, ptr %l21, !tbaa !24
  %t225 = trunc i64 %t223 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t227
  %t228 = getelementptr { i64, [2 x i64] }, ptr %t227, i32 0, i32 0
  store i64 0, ptr %t228
  %t230 = insertvalue { i32 } undef, i32 %t225, 0
  %t231 = getelementptr { i64, [2 x i64] }, ptr %t227, i32 0, i32 1
  store { i32 } %t230, ptr %t231
  %t232 = load { i64, [2 x i64] }, ptr %t227
  store { i64, [2 x i64] } %t232, ptr %l22
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/emit:Emitter", ptr %t234, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = getelementptr %"compiler/lower:Lowerer", ptr %t237, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t242 = load i64, ptr %l21, !tbaa !24
  %t245 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t240, i64 %t242)
  store ptr %t245, ptr %l180
  br label %bb61
bb61:
  %t246 = load ptr, ptr %l180, !tbaa !29
  %t248 = getelementptr %"compiler/typed:Body", ptr %t246, i32 0, i32 1
  %t249 = load { i64, [2 x i64] }, ptr %t248
  store { i64, [2 x i64] } %t249, ptr %l23
  %t251 = load { i64, [2 x i64] }, ptr %l23
  %t253 = extractvalue { i64, [2 x i64] } %t251, 0
  %t254 = icmp eq i64 %t253, 0
  br i1 %t254, label %bb62, label %bb63
bb62:
  br label %bb70
bb63:
  %t256 = load { i64, [2 x i64] }, ptr %l23
  %t258 = extractvalue { i64, [2 x i64] } %t256, 0
  %t259 = icmp eq i64 %t258, 1
  br i1 %t259, label %bb64, label %bb65
bb64:
  br label %bb70
bb65:
  %t261 = load { i64, [2 x i64] }, ptr %l23
  %t263 = extractvalue { i64, [2 x i64] } %t261, 0
  %t264 = icmp eq i64 %t263, 3
  br i1 %t264, label %bb66, label %bb67
bb66:
  br label %bb70
bb67:
  %t266 = load { i64, [2 x i64] }, ptr %l23
  %t268 = extractvalue { i64, [2 x i64] } %t266, 0
  %t269 = icmp eq i64 %t268, 6
  br i1 %t269, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb100
bb70:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/emit:Emitter", ptr %t271, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t276 = getelementptr %"compiler/lower:Lowerer", ptr %t274, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = load i64, ptr %l21, !tbaa !24
  %t282 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t277, i64 %t279)
  store ptr %t282, ptr %l196
  br label %bb71
bb71:
  %t283 = load ptr, ptr %l196, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Body", ptr %t283, i32 0, i32 11
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t288 = icmp eq ptr %t286, null
  br i1 %t288, label %bb72, label %bb73
bb72:
  br label %bb106
bb73:
  br label %bb74
bb74:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/emit:Emitter", ptr %t290, i32 0, i32 47
  %t293 = load i64, ptr %l21, !tbaa !24
  %t296 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %t292, i64 %t293)
  store i1 %t296, ptr %l203
  br label %bb75
bb75:
  %t297 = load i1, ptr %l203, !tbaa !21
  br i1 %t297, label %bb76, label %bb77
bb76:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebakedStorage(ptr %v0, ptr %t298, i64 %t299)
  br label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb106
bb79:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load { i64, [2 x i64] }, ptr %l22
  %t306 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t302, { i64, [2 x i64] } %t303)
  store i64 %t306, ptr %l208
  br label %bb80
bb80:
  %t307 = load i64, ptr %l208, !tbaa !24
  store i64 %t307, ptr %l24, !tbaa !24
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/emit:Emitter", ptr %t308, i32 0, i32 71
  %t311 = load i64, ptr %l24, !tbaa !24
  %t314 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t310, i64 %t311)
  store i1 %t314, ptr %l212
  br label %bb81
bb81:
  %t315 = load i1, ptr %l212, !tbaa !21
  br i1 %t315, label %bb82, label %bb83
bb82:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load { i64, [2 x i64] }, ptr %l22
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclared(ptr %v0, ptr %t316, { i64, [2 x i64] } %t317)
  br label %bb84
bb83:
  %t320 = load i64, ptr %l24, !tbaa !24
  %t321 = load ptr, ptr %l1, !tbaa !29
  %t323 = getelementptr %"compiler/generic:Program", ptr %t321, i32 0, i32 0
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t326 = getelementptr %"compiler/load:Loader", ptr %t324, i32 0, i32 12
  %t327 = load i64, ptr %t326, !tbaa !24
  %t330 = icmp eq i64 %t320, %t327
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/emit:Emitter", ptr %t331, i32 0, i32 41
  %t334 = load i1, ptr %t333, !tbaa !21
  %t337 = icmp eq i1 %t330, %t334
  br i1 %t337, label %bb85, label %bb86
bb84:
  br label %bb99
bb85:
  %t339 = load i64, ptr %l24, !tbaa !24
  %t341 = icmp sge i64 %t339, 0
  store i1 %t341, ptr %l223, !tbaa !21
  br label %bb87
bb86:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb87
bb87:
  %t343 = load i1, ptr %l223, !tbaa !21
  br i1 %t343, label %bb88, label %bb89
bb88:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load { i64, [2 x i64] }, ptr %l22
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t344, { i64, [2 x i64] } %t345)
  br label %bb90
bb89:
  %t348 = load i64, ptr %l24, !tbaa !24
  %t349 = load ptr, ptr %l1, !tbaa !29
  %t351 = getelementptr %"compiler/generic:Program", ptr %t349, i32 0, i32 0
  %t352 = load ptr, ptr %t351, !tbaa !29
  %t354 = getelementptr %"compiler/load:Loader", ptr %t352, i32 0, i32 12
  %t355 = load i64, ptr %t354, !tbaa !24
  %t358 = icmp eq i64 %t348, %t355
  br i1 %t358, label %bb91, label %bb92
bb90:
  br label %bb98
bb91:
  %t360 = load i1, ptr %l3, !tbaa !21
  store i1 %t360, ptr %l233, !tbaa !21
  br label %bb93
bb92:
  store i1 false, ptr %l233, !tbaa !21
  br label %bb93
bb93:
  %t362 = load i1, ptr %l233, !tbaa !21
  br i1 %t362, label %bb94, label %bb95
bb94:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load { i64, [2 x i64] }, ptr %l22
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t363, { i64, [2 x i64] } %t364)
  br label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb97
bb97:
  br label %bb98
bb98:
  br label %bb99
bb99:
  br label %bb105
bb100:
  br i1 true, label %bb101, label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  call void @__olang_check_failed(ptr @olang_loc_3d03f0fa145d919d_fe5358f320913361)
  unreachable
bb105:
  br label %bb106
bb106:
  %t367 = load i64, ptr %l20, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l20, !tbaa !24
  br label %bb57
bb107:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/emit:Emitter", ptr %t371, i32 0, i32 41
  %t374 = load i1, ptr %t373, !tbaa !21
  %t376 = xor i1 %t374, true
  br i1 %t376, label %bb108, label %bb109
bb108:
  store %olang.scope zeroinitializer, ptr %s23
  %t378 = load ptr, ptr %l0, !tbaa !29
  store ptr %t378, ptr %l242, !tbaa !29
  %t379 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t379, ptr %l243
  %t381 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s23, ptr %l243)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t381, ptr %l245
  br label %bb110
bb109:
  br label %bb129
bb110:
  %t382 = load ptr, ptr %l242, !tbaa !29
  %t383 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l245
  %t384 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalOrder(ptr %v0, ptr %s23, ptr %s23, ptr %t382, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t384, ptr %l246
  br label %bb111
bb111:
  %t385 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l246
  %t386 = call ptr @__olang_scope_alloc_a(ptr %s23, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t385, ptr %t386
  store ptr %t386, ptr %l25, !tbaa !29
  store i64 0, ptr %l26, !tbaa !24
  br label %bb112
bb112:
  %t388 = load i64, ptr %l26, !tbaa !24
  store i64 %t388, ptr %l248, !tbaa !24
  %t389 = load ptr, ptr %l25, !tbaa !29
  %t391 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s23, ptr %t389)
  store i64 %t391, ptr %l250
  br label %bb113
bb113:
  %t392 = load i64, ptr %l248, !tbaa !24
  %t393 = load i64, ptr %l250, !tbaa !24
  %t394 = icmp slt i64 %t392, %t393
  %t396 = xor i1 %t394, true
  br i1 %t396, label %bb114, label %bb115
bb114:
  br label %bb128
bb115:
  br label %bb116
bb116:
  %t398 = load ptr, ptr %l25, !tbaa !29
  %t399 = load i64, ptr %l26, !tbaa !24
  %t402 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s23, ptr %t398, i64 %t399)
  store i64 %t402, ptr %l255
  br label %bb117
bb117:
  %t403 = load i64, ptr %l255, !tbaa !24
  store i64 %t403, ptr %l27, !tbaa !24
  %t404 = load i64, ptr %l27, !tbaa !24
  %t406 = trunc i64 %t404 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t408
  %t409 = getelementptr { i64, [2 x i64] }, ptr %t408, i32 0, i32 0
  store i64 0, ptr %t409
  %t411 = insertvalue { i32 } undef, i32 %t406, 0
  %t412 = getelementptr { i64, [2 x i64] }, ptr %t408, i32 0, i32 1
  store { i32 } %t411, ptr %t412
  %t413 = load { i64, [2 x i64] }, ptr %t408
  store { i64, [2 x i64] } %t413, ptr %l28
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = getelementptr %"compiler/emit:Emitter", ptr %t415, i32 0, i32 47
  %t418 = load i64, ptr %l27, !tbaa !24
  %t421 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %t417, i64 %t418)
  store i1 %t421, ptr %l263
  br label %bb118
bb118:
  %t422 = load i1, ptr %l263, !tbaa !21
  %t423 = xor i1 %t422, true
  br i1 %t423, label %bb119, label %bb120
bb119:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t426 = load { i64, [2 x i64] }, ptr %l28
  %t429 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t425, { i64, [2 x i64] } %t426)
  store i64 %t429, ptr %l268
  br label %bb121
bb120:
  store i1 false, ptr %l265, !tbaa !21
  br label %bb122
bb121:
  %t430 = load ptr, ptr %l1, !tbaa !29
  %t432 = getelementptr %"compiler/generic:Program", ptr %t430, i32 0, i32 0
  %t433 = load ptr, ptr %t432, !tbaa !29
  %t435 = getelementptr %"compiler/load:Loader", ptr %t433, i32 0, i32 12
  %t436 = load i64, ptr %t435, !tbaa !24
  %t437 = load i64, ptr %l268, !tbaa !24
  %t439 = icmp eq i64 %t437, %t436
  store i1 %t439, ptr %l265, !tbaa !21
  br label %bb122
bb122:
  %t441 = load i1, ptr %l265, !tbaa !21
  br i1 %t441, label %bb123, label %bb124
bb123:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t443 = load { i64, [2 x i64] }, ptr %l28
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t442, { i64, [2 x i64] } %t443)
  br label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb126
bb126:
  br label %bb127
bb127:
  %t446 = load i64, ptr %l26, !tbaa !24
  %t448 = add i64 %t446, 1
  store i64 %t448, ptr %l26, !tbaa !24
  br label %bb112
bb128:
  call void @__olang_scope_close(ptr %s23)
  br label %bb129
bb129:
  store ptr %l2, ptr %l29, !tbaa !29
  store i64 0, ptr %l30, !tbaa !24
  br label %bb130
bb130:
  %t451 = load i64, ptr %l30, !tbaa !24
  store i64 %t451, ptr %l278, !tbaa !24
  %t452 = load ptr, ptr %l29, !tbaa !29
  %t454 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %s0, ptr %t452)
  store i64 %t454, ptr %l280
  br label %bb131
bb131:
  %t455 = load i64, ptr %l278, !tbaa !24
  %t456 = load i64, ptr %l280, !tbaa !24
  %t457 = icmp slt i64 %t455, %t456
  %t459 = xor i1 %t457, true
  br i1 %t459, label %bb132, label %bb133
bb132:
  br label %bb138
bb133:
  br label %bb134
bb134:
  %t461 = load ptr, ptr %l29, !tbaa !29
  %t462 = load i64, ptr %l30, !tbaa !24
  %t465 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %s0, ptr %t461, i64 %t462)
  store { i64, [2 x i64] } %t465, ptr %l285
  br label %bb135
bb135:
  %t466 = load { i64, [2 x i64] }, ptr %l285
  %t467 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t467, { i64, [2 x i64] } %t466)
  br label %bb136
bb136:
  br label %bb137
bb137:
  %t471 = load i64, ptr %l30, !tbaa !24
  %t473 = add i64 %t471, 1
  store i64 %t473, ptr %l30, !tbaa !24
  br label %bb130
bb138:
  store %olang.scope zeroinitializer, ptr %s30
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportBodies(ptr %v0, ptr %s30, ptr %t475)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t477, ptr %l291
  br label %bb139
bb139:
  %t478 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l291
  %t479 = call ptr @__olang_scope_alloc_a(ptr %s30, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t478, ptr %t479
  store ptr %t479, ptr %l32, !tbaa !29
  store i64 0, ptr %l33, !tbaa !24
  br label %bb140
bb140:
  %t481 = load i64, ptr %l33, !tbaa !24
  store i64 %t481, ptr %l293, !tbaa !24
  %t482 = load ptr, ptr %l32, !tbaa !29
  %t484 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s30, ptr %t482)
  store i64 %t484, ptr %l295
  br label %bb141
bb141:
  %t485 = load i64, ptr %l293, !tbaa !24
  %t486 = load i64, ptr %l295, !tbaa !24
  %t487 = icmp slt i64 %t485, %t486
  %t489 = xor i1 %t487, true
  br i1 %t489, label %bb142, label %bb143
bb142:
  br label %bb148
bb143:
  br label %bb144
bb144:
  %t491 = load ptr, ptr %l32, !tbaa !29
  %t492 = load i64, ptr %l33, !tbaa !24
  %t495 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s30, ptr %t491, i64 %t492)
  store i64 %t495, ptr %l300
  br label %bb145
bb145:
  %t496 = load i64, ptr %l300, !tbaa !24
  %t497 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportEntry(ptr %v0, ptr %t497, i64 %t496)
  br label %bb146
bb146:
  br label %bb147
bb147:
  %t501 = load i64, ptr %l33, !tbaa !24
  %t503 = add i64 %t501, 1
  store i64 %t503, ptr %l33, !tbaa !24
  br label %bb140
bb148:
  call void @__olang_scope_close(ptr %s30)
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t507 = getelementptr %"compiler/emit:Emitter", ptr %t505, i32 0, i32 41
  %t508 = load i1, ptr %t507, !tbaa !21
  br i1 %t508, label %bb149, label %bb150
bb149:
  br label %bb167
bb150:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t512 = getelementptr %"compiler/emit:Emitter", ptr %t510, i32 0, i32 4
  %t513 = load i1, ptr %t512, !tbaa !21
  br i1 %t513, label %bb151, label %bb152
bb151:
  store ptr %l5, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb153
bb152:
  %t516 = load i64, ptr %l6, !tbaa !24
  %t518 = icmp sge i64 %t516, 0
  br i1 %t518, label %bb162, label %bb163
bb153:
  %t520 = load i64, ptr %l36, !tbaa !24
  store i64 %t520, ptr %l310, !tbaa !24
  %t521 = load ptr, ptr %l35, !tbaa !29
  %t523 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t521)
  store i64 %t523, ptr %l312
  br label %bb154
bb154:
  %t524 = load i64, ptr %l310, !tbaa !24
  %t525 = load i64, ptr %l312, !tbaa !24
  %t526 = icmp slt i64 %t524, %t525
  %t528 = xor i1 %t526, true
  br i1 %t528, label %bb155, label %bb156
bb155:
  br label %bb161
bb156:
  br label %bb157
bb157:
  %t530 = load ptr, ptr %l35, !tbaa !29
  %t531 = load i64, ptr %l36, !tbaa !24
  %t534 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t530, i64 %t531)
  store i64 %t534, ptr %l317
  br label %bb158
bb158:
  %t535 = load i64, ptr %l317, !tbaa !24
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t539 = trunc i64 %t535 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t541
  %t542 = getelementptr { i64, [2 x i64] }, ptr %t541, i32 0, i32 0
  store i64 0, ptr %t542
  %t544 = insertvalue { i32 } undef, i32 %t539, 0
  %t545 = getelementptr { i64, [2 x i64] }, ptr %t541, i32 0, i32 1
  store { i32 } %t544, ptr %t545
  %t546 = load { i64, [2 x i64] }, ptr %t541
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t536, { i64, [2 x i64] } %t546)
  br label %bb159
bb159:
  br label %bb160
bb160:
  %t549 = load i64, ptr %l36, !tbaa !24
  %t551 = add i64 %t549, 1
  store i64 %t551, ptr %l36, !tbaa !24
  br label %bb153
bb161:
  br label %bb166
bb162:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = load i64, ptr %l6, !tbaa !24
  %t556 = trunc i64 %t554 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t558
  %t559 = getelementptr { i64, [2 x i64] }, ptr %t558, i32 0, i32 0
  store i64 0, ptr %t559
  %t561 = insertvalue { i32 } undef, i32 %t556, 0
  %t562 = getelementptr { i64, [2 x i64] }, ptr %t558, i32 0, i32 1
  store { i32 } %t561, ptr %t562
  %t563 = load { i64, [2 x i64] }, ptr %t558
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t553, { i64, [2 x i64] } %t563)
  br label %bb164
bb163:
  br label %bb165
bb164:
  br label %bb165
bb165:
  br label %bb166
bb166:
  br label %bb167
bb167:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb168
bb168:
  %t566 = load i64, ptr %l38, !tbaa !24
  store i64 %t566, ptr %l332, !tbaa !24
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t569 = getelementptr %"compiler/emit:Emitter", ptr %t567, i32 0, i32 13
  %t571 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t569)
  store i64 %t571, ptr %l335
  br label %bb169
bb169:
  %t572 = load i64, ptr %l332, !tbaa !24
  %t573 = load i64, ptr %l335, !tbaa !24
  %t574 = icmp slt i64 %t572, %t573
  %t576 = xor i1 %t574, true
  br i1 %t576, label %bb170, label %bb171
bb170:
  br label %bb176
bb171:
  br label %bb172
bb172:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/emit:Emitter", ptr %t578, i32 0, i32 13
  %t581 = load i64, ptr %l38, !tbaa !24
  %t584 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t580, i64 %t581)
  store { i64, [2 x i64] } %t584, ptr %l341
  br label %bb173
bb173:
  %t585 = load { i64, [2 x i64] }, ptr %l341
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t587 = load i64, ptr %l38, !tbaa !24
  %t590 = getelementptr %"compiler/emit:Emitter", ptr %t586, i32 0, i32 15
  store i64 %t587, ptr %t590, !tbaa !24
  %t591 = load i64, ptr %l38, !tbaa !24
  %t593 = add i64 %t591, 1
  store i64 %t593, ptr %l38, !tbaa !24
  %t595 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efunction(ptr %v0, ptr %t595, { i64, [2 x i64] } %t585)
  br label %bb174
bb174:
  br label %bb175
bb175:
  br label %bb168
bb176:
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t601 = getelementptr %"compiler/emit:Emitter", ptr %t599, i32 0, i32 15
  store i64 -1, ptr %t601, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  %t602 = load ptr, ptr %l0, !tbaa !29
  %t604 = getelementptr %"compiler/emit:Emitter", ptr %t602, i32 0, i32 31
  %t606 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t604)
  store i64 %t606, ptr %l351
  br label %bb177
bb177:
  %t607 = load i64, ptr %l351, !tbaa !24
  store i64 %t607, ptr %l41, !tbaa !24
  store i64 1, ptr %l42, !tbaa !24
  %t608 = load i64, ptr %l41, !tbaa !24
  %t609 = load i64, ptr %l40, !tbaa !24
  %t612 = icmp sgt i64 %t608, %t609
  br i1 %t612, label %bb178, label %bb179
bb178:
  %t614 = load i64, ptr %l42, !tbaa !24
  %t616 = icmp sgt i64 %t614, 0
  br i1 %t616, label %bb180, label %bb181
bb179:
  store i64 0, ptr %l355, !tbaa !24
  br label %bb183
bb180:
  %t618 = load i64, ptr %l41, !tbaa !24
  %t619 = load i64, ptr %l40, !tbaa !24
  %t622 = sub i64 %t618, %t619
  %t623 = load i64, ptr %l42, !tbaa !24
  %t626 = add i64 %t622, %t623
  %t628 = sub i64 %t626, 1
  %t629 = load i64, ptr %l42, !tbaa !24
  %t632 = sdiv i64 %t628, %t629
  store i64 %t632, ptr %l358, !tbaa !24
  br label %bb182
bb181:
  store i64 0, ptr %l358, !tbaa !24
  br label %bb182
bb182:
  %t634 = load i64, ptr %l358, !tbaa !24
  store i64 %t634, ptr %l355, !tbaa !24
  br label %bb183
bb183:
  %t635 = load i64, ptr %l355, !tbaa !24
  store i64 %t635, ptr %l43, !tbaa !24
  store i64 0, ptr %l44, !tbaa !24
  br label %bb184
bb184:
  %t636 = load i64, ptr %l44, !tbaa !24
  %t637 = load i64, ptr %l43, !tbaa !24
  %t640 = icmp slt i64 %t636, %t637
  %t642 = xor i1 %t640, true
  br i1 %t642, label %bb185, label %bb186
bb185:
  br label %bb192
bb186:
  br label %bb187
bb187:
  %t644 = load i64, ptr %l40, !tbaa !24
  %t645 = load i64, ptr %l44, !tbaa !24
  %t646 = load i64, ptr %l42, !tbaa !24
  %t649 = mul i64 %t645, %t646
  %t652 = add i64 %t644, %t649
  store i64 %t652, ptr %l45, !tbaa !24
  %t654 = load ptr, ptr %l0, !tbaa !29
  store ptr %t654, ptr %l376, !tbaa !29
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t657 = getelementptr %"compiler/emit:Emitter", ptr %t655, i32 0, i32 31
  %t658 = load i64, ptr %l45, !tbaa !24
  %t661 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t657, i64 %t658)
  store { i64, [2 x i64] } %t661, ptr %l380
  br label %bb188
bb188:
  %t662 = load ptr, ptr %l0, !tbaa !29
  %t664 = getelementptr %"compiler/emit:Emitter", ptr %t662, i32 0, i32 32
  %t665 = load i64, ptr %l45, !tbaa !24
  %t668 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t664, i64 %t665)
  store i32 %t668, ptr %l384
  br label %bb189
bb189:
  %t669 = load ptr, ptr %l376, !tbaa !29
  %t670 = load { i64, [2 x i64] }, ptr %l380
  %t671 = load i32, ptr %l384, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ethunk(ptr %v0, ptr %t669, { i64, [2 x i64] } %t670, i32 %t671)
  br label %bb190
bb190:
  br label %bb191
bb191:
  %t672 = load i64, ptr %l44, !tbaa !24
  %t674 = add i64 %t672, 1
  store i64 %t674, ptr %l44, !tbaa !24
  br label %bb184
bb192:
  store i64 0, ptr %l46, !tbaa !24
  %t676 = load ptr, ptr %l0, !tbaa !29
  %t678 = getelementptr %"compiler/emit:Emitter", ptr %t676, i32 0, i32 33
  %t680 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t678)
  store i64 %t680, ptr %l389
  br label %bb193
bb193:
  %t681 = load i64, ptr %l389, !tbaa !24
  store i64 %t681, ptr %l47, !tbaa !24
  store i64 1, ptr %l48, !tbaa !24
  %t682 = load i64, ptr %l47, !tbaa !24
  %t683 = load i64, ptr %l46, !tbaa !24
  %t686 = icmp sgt i64 %t682, %t683
  br i1 %t686, label %bb194, label %bb195
bb194:
  %t688 = load i64, ptr %l48, !tbaa !24
  %t690 = icmp sgt i64 %t688, 0
  br i1 %t690, label %bb196, label %bb197
bb195:
  store i64 0, ptr %l393, !tbaa !24
  br label %bb199
bb196:
  %t692 = load i64, ptr %l47, !tbaa !24
  %t693 = load i64, ptr %l46, !tbaa !24
  %t696 = sub i64 %t692, %t693
  %t697 = load i64, ptr %l48, !tbaa !24
  %t700 = add i64 %t696, %t697
  %t702 = sub i64 %t700, 1
  %t703 = load i64, ptr %l48, !tbaa !24
  %t706 = sdiv i64 %t702, %t703
  store i64 %t706, ptr %l396, !tbaa !24
  br label %bb198
bb197:
  store i64 0, ptr %l396, !tbaa !24
  br label %bb198
bb198:
  %t708 = load i64, ptr %l396, !tbaa !24
  store i64 %t708, ptr %l393, !tbaa !24
  br label %bb199
bb199:
  %t709 = load i64, ptr %l393, !tbaa !24
  store i64 %t709, ptr %l49, !tbaa !24
  store i64 0, ptr %l50, !tbaa !24
  br label %bb200
bb200:
  %t710 = load i64, ptr %l50, !tbaa !24
  %t711 = load i64, ptr %l49, !tbaa !24
  %t714 = icmp slt i64 %t710, %t711
  %t716 = xor i1 %t714, true
  br i1 %t716, label %bb201, label %bb202
bb201:
  br label %bb208
bb202:
  br label %bb203
bb203:
  %t718 = load i64, ptr %l46, !tbaa !24
  %t719 = load i64, ptr %l50, !tbaa !24
  %t720 = load i64, ptr %l48, !tbaa !24
  %t723 = mul i64 %t719, %t720
  %t726 = add i64 %t718, %t723
  store i64 %t726, ptr %l51, !tbaa !24
  %t728 = load ptr, ptr %l0, !tbaa !29
  store ptr %t728, ptr %l414, !tbaa !29
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t731 = getelementptr %"compiler/emit:Emitter", ptr %t729, i32 0, i32 33
  %t732 = load i64, ptr %l51, !tbaa !24
  %t735 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t731, i64 %t732)
  store i32 %t735, ptr %l418
  br label %bb204
bb204:
  %t736 = load ptr, ptr %l0, !tbaa !29
  %t738 = getelementptr %"compiler/emit:Emitter", ptr %t736, i32 0, i32 34
  %t739 = load i64, ptr %l51, !tbaa !24
  %t742 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t738, i64 %t739)
  store i32 %t742, ptr %l422
  br label %bb205
bb205:
  %t743 = load ptr, ptr %l414, !tbaa !29
  %t744 = load i32, ptr %l418, !tbaa !23
  %t745 = load i32, ptr %l422, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efvAdapter(ptr %v0, ptr %t743, i32 %t744, i32 %t745)
  br label %bb206
bb206:
  br label %bb207
bb207:
  %t746 = load i64, ptr %l50, !tbaa !24
  %t748 = add i64 %t746, 1
  store i64 %t748, ptr %l50, !tbaa !24
  br label %bb200
bb208:
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t752 = getelementptr %"compiler/emit:Emitter", ptr %t750, i32 0, i32 36
  store ptr %t752, ptr %l52, !tbaa !29
  store i64 0, ptr %l53, !tbaa !24
  br label %bb209
bb209:
  %t754 = load i64, ptr %l53, !tbaa !24
  store i64 %t754, ptr %l427, !tbaa !24
  %t755 = load ptr, ptr %l52, !tbaa !29
  %t757 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t755)
  store i64 %t757, ptr %l429
  br label %bb210
bb210:
  %t758 = load i64, ptr %l427, !tbaa !24
  %t759 = load i64, ptr %l429, !tbaa !24
  %t760 = icmp slt i64 %t758, %t759
  %t762 = xor i1 %t760, true
  br i1 %t762, label %bb211, label %bb212
bb211:
  br label %bb217
bb212:
  br label %bb213
bb213:
  %t764 = load ptr, ptr %l52, !tbaa !29
  %t765 = load i64, ptr %l53, !tbaa !24
  %t768 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t764, i64 %t765)
  store { i64, [2 x i64] } %t768, ptr %l434
  br label %bb214
bb214:
  %t769 = load { i64, [2 x i64] }, ptr %l434
  %t770 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edtorThunk(ptr %v0, ptr %t770, { i64, [2 x i64] } %t769)
  br label %bb215
bb215:
  br label %bb216
bb216:
  %t774 = load i64, ptr %l53, !tbaa !24
  %t776 = add i64 %t774, 1
  store i64 %t776, ptr %l53, !tbaa !24
  br label %bb209
bb217:
  %t778 = load ptr, ptr %l0, !tbaa !29
  %t780 = getelementptr %"compiler/emit:Emitter", ptr %t778, i32 0, i32 41
  %t781 = load i1, ptr %t780, !tbaa !21
  br i1 %t781, label %bb218, label %bb219
bb218:
  br label %bb234
bb219:
  %t783 = load ptr, ptr %l0, !tbaa !29
  %t785 = getelementptr %"compiler/emit:Emitter", ptr %t783, i32 0, i32 4
  %t786 = load i1, ptr %t785, !tbaa !21
  br i1 %t786, label %bb220, label %bb221
bb220:
  store %olang.scope zeroinitializer, ptr %s53
  %t788 = load ptr, ptr %l0, !tbaa !29
  store ptr %t788, ptr %l443, !tbaa !29
  %t789 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t789, ptr %l444
  %t791 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s53, ptr %l444)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t791, ptr %l446
  br label %bb222
bb221:
  %t792 = load ptr, ptr %l0, !tbaa !29
  %t794 = getelementptr %"compiler/emit:Emitter", ptr %t792, i32 0, i32 9
  %t795 = load i1, ptr %t794, !tbaa !21
  br i1 %t795, label %bb224, label %bb225
bb222:
  %t797 = load ptr, ptr %l443, !tbaa !29
  %t798 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l446
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eharness(ptr %v0, ptr %s53, ptr %t797, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t798)
  br label %bb223
bb223:
  call void @__olang_scope_close(ptr %s53)
  br label %bb233
bb224:
  store %olang.scope zeroinitializer, ptr %s55
  %t799 = load ptr, ptr %l0, !tbaa !29
  store ptr %t799, ptr %l449, !tbaa !29
  %t800 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t800, ptr %l450
  %t802 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s55, ptr %l450)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t802, ptr %l452
  br label %bb226
bb225:
  %t803 = load i64, ptr %l6, !tbaa !24
  %t805 = icmp sge i64 %t803, 0
  br i1 %t805, label %bb228, label %bb229
bb226:
  %t807 = load ptr, ptr %l449, !tbaa !29
  %t808 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l452
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2elibInit(ptr %v0, ptr %s55, ptr %t807, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t808)
  br label %bb227
bb227:
  call void @__olang_scope_close(ptr %s55)
  br label %bb232
bb228:
  store %olang.scope zeroinitializer, ptr %s57
  %t809 = load ptr, ptr %l0, !tbaa !29
  %t810 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  %t811 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eentry(ptr %v0, ptr %s57, ptr %t809, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t810, i64 %t811)
  br label %bb230
bb229:
  br label %bb231
bb230:
  call void @__olang_scope_close(ptr %s57)
  br label %bb231
bb231:
  br label %bb232
bb232:
  br label %bb233
bb233:
  br label %bb234
bb234:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb235
bb235:
  store %olang.scope zeroinitializer, ptr %s58
  %t815 = load i64, ptr %l55, !tbaa !24
  store i64 %t815, ptr %l458, !tbaa !24
  %t816 = load ptr, ptr %l0, !tbaa !29
  %t818 = getelementptr %"compiler/emit:Emitter", ptr %t816, i32 0, i32 16
  %t820 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t818)
  store i64 %t820, ptr %l461
  br label %bb236
bb236:
  %t821 = load i64, ptr %l458, !tbaa !24
  %t822 = load i64, ptr %l461, !tbaa !24
  %t823 = icmp slt i64 %t821, %t822
  %t825 = xor i1 %t823, true
  br i1 %t825, label %bb237, label %bb238
bb237:
  call void @__olang_scope_close(ptr %s58)
  br label %bb269
bb238:
  br label %bb239
bb239:
  %t827 = load ptr, ptr %l0, !tbaa !29
  %t829 = getelementptr %"compiler/emit:Emitter", ptr %t827, i32 0, i32 16
  %t830 = load i64, ptr %l55, !tbaa !24
  %t833 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t829, i64 %t830)
  store i32 %t833, ptr %l467
  br label %bb240
bb240:
  %t834 = load i32, ptr %l467, !tbaa !23
  store i32 %t834, ptr %l56, !tbaa !23
  %t835 = load i64, ptr %l55, !tbaa !24
  %t837 = add i64 %t835, 1
  store i64 %t837, ptr %l55, !tbaa !24
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t841 = getelementptr %"compiler/emit:Emitter", ptr %t839, i32 0, i32 3
  %t842 = load ptr, ptr %t841, !tbaa !29
  %t843 = load i32, ptr %l56, !tbaa !23
  %t845 = inttoptr i64 0 to ptr
  %t848 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eStructBody(ptr %v0, ptr %s58, ptr %t845, ptr %t842, i32 %t843)
  store { i64, ptr } %t848, ptr %l474
  br label %bb241
bb241:
  %t849 = load { i64, ptr }, ptr %l474, !tbaa !27
  store { i64, ptr } %t849, ptr %l57, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s59
  %t850 = load ptr, ptr %l0, !tbaa !29
  %t852 = getelementptr %"compiler/emit:Emitter", ptr %t850, i32 0, i32 3
  %t853 = load ptr, ptr %t852, !tbaa !29
  %t854 = load i32, ptr %l56, !tbaa !23
  %t857 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s59, ptr %t853, i32 %t854)
  store { i64, ptr } %t857, ptr %l478
  br label %bb242
bb242:
  %t858 = load { i64, ptr }, ptr %l478, !tbaa !27
  %t859 = extractvalue { i64, ptr } %t858, 0
  %t860 = extractvalue { i64, ptr } %t858, 1
  %t861 = mul i64 %t859, 4
  %t862 = call ptr @__olang_scope_alloc(ptr %s59, i64 %t861)
  call void @llvm.memcpy.p0.p0.i64(ptr %t862, ptr %t860, i64 %t861, i1 false)
  %t863 = insertvalue { i64, ptr } undef, i64 %t859, 0
  %t864 = insertvalue { i64, ptr } %t863, ptr %t862, 1
  store { i64, ptr } %t864, ptr %l58, !tbaa !27
  store i64 0, ptr %l59, !tbaa !24
  %t866 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t868 = extractvalue { i64, ptr } %t866, 0
  store i64 %t868, ptr %l60, !tbaa !24
  br label %bb243
bb243:
  %t870 = load i64, ptr %l59, !tbaa !24
  %t871 = load i64, ptr %l60, !tbaa !24
  %t874 = icmp slt i64 %t870, %t871
  %t876 = xor i1 %t874, true
  br i1 %t876, label %bb244, label %bb245
bb244:
  br label %bb249
bb245:
  br label %bb246
bb246:
  %t878 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t878, ptr %l486, !tbaa !27
  %t879 = load i64, ptr %l59, !tbaa !24
  %t881 = getelementptr { i64, ptr }, ptr %l486, i32 0, i32 1
  %t882 = load ptr, ptr %t881, !tbaa !27
  %t883 = getelementptr i32, ptr %t882, i64 %t879
  %t884 = load i32, ptr %t883, !tbaa !33
  %t886 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %t886, i32 %t884)
  br label %bb247
bb247:
  br label %bb248
bb248:
  %t890 = load i64, ptr %l59, !tbaa !24
  %t892 = add i64 %t890, 1
  store i64 %t892, ptr %l59, !tbaa !24
  br label %bb243
bb249:
  call void @__olang_scope_close(ptr %s59)
  %t894 = load ptr, ptr %l0, !tbaa !29
  %t896 = getelementptr %"compiler/emit:Emitter", ptr %t894, i32 0, i32 3
  %t897 = load ptr, ptr %t896, !tbaa !29
  %t898 = load i32, ptr %l56, !tbaa !23
  %t900 = inttoptr i64 0 to ptr
  %t903 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %v0, ptr %t900, ptr %t897, i32 %t898)
  store { i64, ptr } %t903, ptr %l497
  br label %bb250
bb250:
  %t904 = load { i64, ptr }, ptr %l497, !tbaa !27
  store { i64, ptr } %t904, ptr %l62, !tbaa !27
  %t905 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t905, ptr %l498, !tbaa !27
  %t906 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t908 = extractvalue { i64, ptr } %t906, 0
  %t910 = sub i64 %t908, 1
  store i64 %t910, ptr %l501, !tbaa !24
  %t911 = load { i64, ptr }, ptr %l498, !tbaa !27
  %t912 = extractvalue { i64, ptr } %t911, 0
  store i64 %t912, ptr %l502, !tbaa !24
  %t913 = icmp sge i64 2, 0
  br i1 %t913, label %bb251, label %bb252
bb251:
  %t915 = load i64, ptr %l501, !tbaa !24
  %t916 = icmp sle i64 2, %t915
  br i1 %t916, label %bb253, label %bb254
bb252:
  call void @__olang_check_failed(ptr @olang_loc_24ee18a055135b85_75efa4b71c475aa9)
  unreachable
bb253:
  %t918 = load i64, ptr %l501, !tbaa !24
  %t919 = load i64, ptr %l502, !tbaa !24
  %t920 = icmp sle i64 %t918, %t919
  br i1 %t920, label %bb255, label %bb256
bb254:
  call void @__olang_check_failed(ptr @olang_loc_24ee18a055135b85_75efa4b71c475aa9)
  unreachable
bb255:
  %t922 = getelementptr { i64, ptr }, ptr %l498, i32 0, i32 1
  %t923 = load ptr, ptr %t922, !tbaa !27
  %t924 = load i64, ptr %l501, !tbaa !24
  %t925 = getelementptr i8, ptr %t923, i64 2
  %t926 = sub i64 %t924, 2
  %t927 = insertvalue { i64, ptr } undef, i64 %t926, 0
  %t928 = insertvalue { i64, ptr } %t927, ptr %t925, 1
  store { i64, ptr } %t928, ptr %l63, !tbaa !27
  %t930 = load ptr, ptr %l0, !tbaa !29
  %t932 = getelementptr %"compiler/emit:Emitter", ptr %t930, i32 0, i32 46
  %t933 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t936 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t932, { i64, ptr } %t933)
  store i1 %t936, ptr %l510
  br label %bb257
bb256:
  call void @__olang_check_failed(ptr @olang_loc_24ee18a055135b85_75efa4b71c475aa9)
  unreachable
bb257:
  %t937 = load i1, ptr %l510, !tbaa !21
  br i1 %t937, label %bb258, label %bb259
bb258:
  call void @__olang_scope_close(ptr %s58)
  br label %bb268
bb259:
  br label %bb260
bb260:
  %t938 = load ptr, ptr %l0, !tbaa !29
  %t940 = getelementptr %"compiler/emit:Emitter", ptr %t938, i32 0, i32 46
  store ptr %t940, ptr %l512, !tbaa !29
  %t941 = ptrtoint ptr %v0 to i64
  store i64 %t941, ptr %l513, !tbaa !24
  %t942 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t942, label %bb261, label %bb262
bb261:
  %t944 = call ptr @__olang_region_make(ptr %v0)
  %t945 = ptrtoint ptr %t944 to i64
  store i64 %t945, ptr %l513, !tbaa !24
  br label %bb262
bb262:
  %t946 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t948 = extractvalue { i64, ptr } %t946, 1
  %t949 = extractvalue { i64, ptr } %t946, 0
  %t950 = load i64, ptr %l513
  %t951 = inttoptr i64 %t950 to ptr
  %t952 = call ptr @__olang_scope_alloc(ptr %t951, i64 %t949)
  call void @olang_textcopy(ptr %t952, ptr %t948, i64 %t949)
  %t953 = insertvalue { i64, ptr } undef, i64 %t949, 0
  %t954 = insertvalue { i64, ptr } %t953, ptr %t952, 1
  %t956 = load i64, ptr %l513
  %t957 = inttoptr i64 %t956 to ptr
  %t958 = extractvalue { i64, ptr } %t954, 0
  %t959 = extractvalue { i64, ptr } %t954, 1
  %t960 = mul i64 %t958, 1
  %t961 = call ptr @__olang_scope_alloc(ptr %t957, i64 %t960)
  call void @llvm.memcpy.p0.p0.i64(ptr %t961, ptr %t959, i64 %t960, i1 false)
  %t962 = insertvalue { i64, ptr } undef, i64 %t958, 0
  %t963 = insertvalue { i64, ptr } %t962, ptr %t961, 1
  store { i64, ptr } %t963, ptr %l517, !tbaa !27
  %t964 = load ptr, ptr %l0, !tbaa !29
  %t966 = getelementptr %"compiler/emit:Emitter", ptr %t964, i32 0, i32 45
  %t968 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t966)
  store i64 %t968, ptr %l520
  br label %bb263
bb263:
  %t969 = load ptr, ptr %l512, !tbaa !29
  %t970 = load { i64, ptr }, ptr %l517, !tbaa !27
  %t971 = load i64, ptr %l520, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t969, { i64, ptr } %t970, i64 %t971)
  br label %bb264
bb264:
  %t972 = load ptr, ptr %l0, !tbaa !29
  %t974 = getelementptr %"compiler/emit:Emitter", ptr %t972, i32 0, i32 45
  store ptr %t974, ptr %l522, !tbaa !29
  %t975 = ptrtoint ptr %v0 to i64
  store i64 %t975, ptr %l523, !tbaa !24
  %t976 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t976, label %bb265, label %bb266
bb265:
  %t978 = call ptr @__olang_region_make(ptr %v0)
  %t979 = ptrtoint ptr %t978 to i64
  store i64 %t979, ptr %l523, !tbaa !24
  br label %bb266
bb266:
  %t980 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t981 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t983 = extractvalue { i64, ptr } %t980, 1
  %t984 = extractvalue { i64, ptr } %t980, 0
  %t985 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t986 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t987 = add i64 %t984, %t986
  %t989 = extractvalue { i64, ptr } %t981, 1
  %t990 = extractvalue { i64, ptr } %t981, 0
  %t991 = add i64 %t987, %t990
  %t992 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t993 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t994 = add i64 %t991, %t993
  %t995 = load i64, ptr %l523
  %t996 = inttoptr i64 %t995 to ptr
  %t997 = call ptr @__olang_scope_alloc(ptr %t996, i64 %t994)
  call void @olang_textcopy(ptr %t997, ptr %t983, i64 %t984)
  %t998 = getelementptr i8, ptr %t997, i64 %t984
  call void @olang_textcopy(ptr %t998, ptr %t985, i64 %t986)
  %t999 = getelementptr i8, ptr %t998, i64 %t986
  call void @olang_textcopy(ptr %t999, ptr %t989, i64 %t990)
  %t1000 = getelementptr i8, ptr %t999, i64 %t990
  call void @olang_textcopy(ptr %t1000, ptr %t992, i64 %t993)
  %t1001 = insertvalue { i64, ptr } undef, i64 %t994, 0
  %t1002 = insertvalue { i64, ptr } %t1001, ptr %t997, 1
  %t1004 = load i64, ptr %l523
  %t1005 = inttoptr i64 %t1004 to ptr
  %t1006 = extractvalue { i64, ptr } %t1002, 0
  %t1007 = extractvalue { i64, ptr } %t1002, 1
  %t1008 = mul i64 %t1006, 1
  %t1009 = call ptr @__olang_scope_alloc(ptr %t1005, i64 %t1008)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1009, ptr %t1007, i64 %t1008, i1 false)
  %t1010 = insertvalue { i64, ptr } undef, i64 %t1006, 0
  %t1011 = insertvalue { i64, ptr } %t1010, ptr %t1009, 1
  %t1012 = load ptr, ptr %l522, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t1012, { i64, ptr } %t1011)
  br label %bb267
bb267:
  call void @__olang_scope_close(ptr %s58)
  br label %bb268
bb268:
  br label %bb235
bb269:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportBodies(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
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
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/emit:Emitter", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/lower:Lowerer", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l18
  br label %bb2
bb2:
  %t19 = load i64, ptr %l18, !tbaa !24
  store i64 %t19, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t46 = load i64, ptr %l25, !tbaa !24
  store i64 %t46, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l22, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb10, label %bb11
bb10:
  br label %bb41
bb11:
  br label %bb12
bb12:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l8, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/emit:Emitter", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/lower:Lowerer", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t72, i64 %t74)
  store ptr %t77, ptr %l48
  br label %bb13
bb13:
  %t78 = load ptr, ptr %l48, !tbaa !29
  %t80 = getelementptr %"compiler/typed:Body", ptr %t78, i32 0, i32 1
  %t81 = load { i64, [2 x i64] }, ptr %t80
  store { i64, [2 x i64] } %t81, ptr %l9
  %t83 = load { i64, [2 x i64] }, ptr %l9
  %t85 = extractvalue { i64, [2 x i64] } %t83, 0
  %t86 = icmp eq i64 %t85, 0
  br i1 %t86, label %bb14, label %bb15
bb14:
  %t88 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t89 = getelementptr { i64 }, ptr %t88, i32 0, i32 0
  %t90 = load i64, ptr %t89
  store i64 %t90, ptr %l10, !tbaa !24
  br label %bb16
bb15:
  br label %bb34
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t92 = load ptr, ptr %l2, !tbaa !29
  %t93 = load i64, ptr %l10, !tbaa !24
  %t96 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t92, i64 %t93)
  store i64 %t96, ptr %l56
  br label %bb17
bb17:
  %t97 = load i64, ptr %l56, !tbaa !24
  store i64 %t97, ptr %l11, !tbaa !24
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t99 = load i64, ptr %l11, !tbaa !24
  %t102 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s3, ptr %t98, i64 %t99)
  store ptr %t102, ptr %l59
  br label %bb18
bb18:
  %t103 = load ptr, ptr %l59, !tbaa !29
  %t105 = getelementptr %"compiler/ast:Func", ptr %t103, i32 0, i32 7
  %t106 = load i1, ptr %t105, !tbaa !21
  br i1 %t106, label %bb19, label %bb20
bb19:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/emit:Emitter", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/lower:Lowerer", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t114, i64 %t116)
  store ptr %t119, ptr %l68
  br label %bb21
bb20:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb22
bb21:
  %t120 = load ptr, ptr %l68, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Body", ptr %t120, i32 0, i32 11
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  %t127 = xor i1 %t125, true
  store i1 %t127, ptr %l62, !tbaa !21
  br label %bb22
bb22:
  %t129 = load i1, ptr %l62, !tbaa !21
  br i1 %t129, label %bb23, label %bb24
bb23:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/emit:Emitter", ptr %t130, i32 0, i32 41
  %t133 = load i1, ptr %t132, !tbaa !21
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb25, label %bb26
bb24:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb29
bb25:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb28
bb26:
  %t137 = load ptr, ptr %l2, !tbaa !29
  %t138 = load i64, ptr %l11, !tbaa !24
  %t141 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t137, i64 %t138)
  store i64 %t141, ptr %l80
  br label %bb27
bb27:
  %t142 = load ptr, ptr %l2, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 0
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/load:Loader", ptr %t145, i32 0, i32 12
  %t148 = load i64, ptr %t147, !tbaa !24
  %t149 = load i64, ptr %l80, !tbaa !24
  %t151 = icmp eq i64 %t149, %t148
  store i1 %t151, ptr %l77, !tbaa !21
  br label %bb28
bb28:
  %t153 = load i1, ptr %l77, !tbaa !21
  store i1 %t153, ptr %l73, !tbaa !21
  br label %bb29
bb29:
  %t154 = load i1, ptr %l73, !tbaa !21
  br i1 %t154, label %bb30, label %bb31
bb30:
  %t155 = load ptr, ptr %lp1
  %t156 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t155, i64 %t156)
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
  %t159 = load i64, ptr %l7, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l7, !tbaa !24
  br label %bb9
bb41:
  %t163 = load ptr, ptr %lp1
  %t164 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t163
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportEntry(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l16 = alloca %"compiler/cabi:Way"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"compiler/cabi:Regs"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca %"compiler/cabi:Way"
  %l34 = alloca i32
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i32
  %l47 = alloca { i64, ptr }
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i64
  %l65 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca %"std/prelude/text:StringBuilder"
  %l68 = alloca ptr
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l76 = alloca %"std/prelude/text:StringBuilder"
  %l77 = alloca { i64, ptr }
  %l78 = alloca i32
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i32
  %l86 = alloca { i64, ptr }
  %l87 = alloca i32
  %l88 = alloca %"std/prelude/text:StringBuilder"
  %l89 = alloca ptr
  %l90 = alloca i64
  %l91 = alloca i64
  %l92 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l109 = alloca i64
  %l110 = alloca ptr
  %l113 = alloca ptr
  %l116 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l127 = alloca { i64, [2 x i64] }
  %l128 = alloca i32
  %l129 = alloca %"compiler/source:Span"
  %l130 = alloca %"compiler/mir:Fn"
  %l133 = alloca %"compiler/emit:fnEm"
  %l137 = alloca i32
  %l141 = alloca i1
  %l148 = alloca i1
  %l149 = alloca ptr
  %l152 = alloca i32
  %l153 = alloca { i64, ptr }
  %l157 = alloca i1
  %l160 = alloca i1
  %l161 = alloca i32
  %l162 = alloca i64
  %l164 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l166 = alloca i64
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l170 = alloca i64
  %l172 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l174 = alloca %"compiler/cabi:Way"
  %l176 = alloca i1
  %l179 = alloca i1
  %l187 = alloca %"compiler/cabi:Way"
  %l188 = alloca %"compiler/cabi:Way"
  %l193 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l194 = alloca %"compiler/cabi:Regs"
  %l197 = alloca ptr
  %l198 = alloca i64
  %l202 = alloca { i64, ptr }
  %l205 = alloca i64
  %l210 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l211 = alloca ptr
  %l214 = alloca i32
  %l215 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l224 = alloca i64
  %l227 = alloca i64
  %l245 = alloca { i64, ptr }
  %l250 = alloca i1
  %l253 = alloca i32
  %l258 = alloca i1
  %l259 = alloca ptr
  %l262 = alloca i32
  %l263 = alloca i32
  %l266 = alloca i32
  %l269 = alloca i1
  %l272 = alloca i32
  %l274 = alloca ptr
  %l275 = alloca i64
  %l280 = alloca ptr
  %l281 = alloca i64
  %l292 = alloca { i64, ptr }
  %l293 = alloca ptr
  %l294 = alloca i64
  %l301 = alloca { i64, ptr }
  %l304 = alloca ptr
  %l305 = alloca i64
  %l312 = alloca ptr
  %l313 = alloca i64
  %l324 = alloca %"compiler/cabi:Way"
  %l328 = alloca ptr
  %l329 = alloca i64
  %l333 = alloca { i64, ptr }
  %l335 = alloca i1
  %l337 = alloca { i64, ptr }
  %l344 = alloca ptr
  %l345 = alloca i64
  %l349 = alloca { i64, ptr }
  %l355 = alloca ptr
  %l359 = alloca i64
  %l362 = alloca { i64, ptr }
  %l364 = alloca i64
  %l368 = alloca i64
  %l371 = alloca i64
  %l389 = alloca ptr
  %l390 = alloca i64
  %l394 = alloca { i64, ptr }
  %l401 = alloca i64
  %l403 = alloca { i64, ptr }
  %l405 = alloca ptr
  %l406 = alloca { i64, ptr }
  %l409 = alloca i64
  %l412 = alloca { i64, ptr }
  %l413 = alloca i64
  %l414 = alloca { i64, ptr }
  %l415 = alloca ptr
  %l418 = alloca { i64, ptr }
  %l420 = alloca { i64, ptr }
  %l421 = alloca { i64, ptr }
  %l422 = alloca { i64, ptr }
  %l423 = alloca i64
  %l424 = alloca { i64, ptr }
  %l434 = alloca { i64, ptr }
  %l436 = alloca i64
  %l438 = alloca i64
  %l439 = alloca { i64, ptr }
  %l442 = alloca ptr
  %l443 = alloca i64
  %l447 = alloca { i64, ptr }
  %l450 = alloca i64
  %l451 = alloca i64
  %l455 = alloca ptr
  %l456 = alloca i64
  %l466 = alloca { i64, ptr }
  %l467 = alloca ptr
  %l468 = alloca { i64, ptr }
  %l469 = alloca { i64, ptr }
  %l472 = alloca i64
  %l473 = alloca ptr
  %l474 = alloca i64
  %l479 = alloca ptr
  %l480 = alloca i64
  %l484 = alloca { i64, ptr }
  %l485 = alloca ptr
  %l488 = alloca { i64, ptr }
  %l491 = alloca { i64, ptr }
  %l498 = alloca ptr
  %l499 = alloca ptr
  %l502 = alloca i32
  %l503 = alloca i32
  %l504 = alloca i32
  %l507 = alloca i1
  %l513 = alloca i1
  %l520 = alloca { i64, ptr }
  %l525 = alloca { i64, ptr }
  %l537 = alloca { i64, ptr }
  %l540 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l541 = alloca { i64, ptr }
  %l542 = alloca { i64, ptr }
  %l543 = alloca i64
  %l544 = alloca { i64, ptr }
  %l546 = alloca i1
  %l549 = alloca i1
  %l552 = alloca { i64, ptr }
  %l554 = alloca i64
  %l556 = alloca ptr
  %l557 = alloca i64
  %l567 = alloca i64
  %l571 = alloca i64
  %l574 = alloca i64
  %l592 = alloca ptr
  %l593 = alloca i64
  %l603 = alloca i64
  %l607 = alloca i64
  %l610 = alloca i64
  %l632 = alloca i64
  %l634 = alloca i64
  %l639 = alloca { i64, ptr }
  %l647 = alloca { i64, ptr }
  %l648 = alloca { i64, ptr }
  %l649 = alloca { i64, ptr }
  %l650 = alloca i64
  %l651 = alloca { i64, ptr }
  %l652 = alloca %"std/prelude/text:StringBuilder"
  %l654 = alloca i64
  %l656 = alloca i64
  %l662 = alloca { i64, ptr }
  %l671 = alloca i1
  %l672 = alloca ptr
  %l675 = alloca { i64, ptr }
  %l677 = alloca { i64, ptr }
  %l680 = alloca ptr
  %l681 = alloca { i64, ptr }
  %l684 = alloca { i64, ptr }
  %l686 = alloca { i64, ptr }
  %l689 = alloca { i64, ptr }
  %l691 = alloca i64
  %l693 = alloca { i64, ptr }
  %l694 = alloca { i64, ptr }
  %l695 = alloca i64
  %l696 = alloca { i64, ptr }
  %l697 = alloca { i64, ptr }
  %l698 = alloca { i64, ptr }
  %l699 = alloca i64
  %l700 = alloca { i64, ptr }
  %l703 = alloca i1
  %l705 = alloca i1
  %l708 = alloca { i64, ptr }
  %l715 = alloca { i64, ptr }
  %l717 = alloca i64
  %l719 = alloca i64
  %l720 = alloca { i64, ptr }
  %l722 = alloca i1
  %l724 = alloca i1
  %l730 = alloca { i64, ptr }
  %l732 = alloca i64
  %l735 = alloca i1
  %l737 = alloca i1
  %l738 = alloca { i64, ptr }
  %l740 = alloca i64
  %l742 = alloca i64
  %l743 = alloca { i64, ptr }
  %l745 = alloca i1
  %l747 = alloca i1
  %l749 = alloca ptr
  %l752 = alloca { i64, ptr }
  %l755 = alloca { i64, ptr }
  %l757 = alloca i64
  %l759 = alloca { i64, ptr }
  %l760 = alloca { i64, ptr }
  %l761 = alloca i64
  %l762 = alloca { i64, ptr }
  %l768 = alloca { i64, ptr }
  %l779 = alloca %"std/prelude/text:StringBuilder"
  %l780 = alloca ptr
  %l781 = alloca ptr
  %l782 = alloca { i64, ptr }
  %l785 = alloca i32
  %l786 = alloca { i64, ptr }
  %l788 = alloca i1
  %l792 = alloca ptr
  %l794 = alloca { i64, ptr }
  %l806 = alloca ptr
  %l808 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l810 = alloca { i64, ptr }
  %l811 = alloca i32
  %l812 = alloca ptr
  %l813 = alloca ptr
  %l814 = alloca { i64, ptr }
  %l817 = alloca i32
  %l819 = alloca { i64, ptr }
  %l829 = alloca { i64, ptr }
  %l834 = alloca { i64, ptr }
  %l839 = alloca { i64, ptr }
  %l845 = alloca { i64, ptr }
  %l850 = alloca { i64, ptr }
  %l856 = alloca { i64, ptr }
  %l858 = alloca i64
  %l860 = alloca ptr
  %l861 = alloca { i64, ptr }
  %l864 = alloca i64
  %l867 = alloca { i64, ptr }
  %l877 = alloca { i64, ptr }
  %l878 = alloca { i64, ptr }
  %l880 = alloca i64
  %l882 = alloca i64
  %l883 = alloca { i64, ptr }
  %l885 = alloca { i64, ptr }
  %l887 = alloca i64
  %l891 = alloca ptr
  %l894 = alloca { i64, ptr }
  %l897 = alloca { i64, ptr }
  %l898 = alloca { i64, ptr }
  %l900 = alloca i64
  %l902 = alloca i64
  %l903 = alloca { i64, ptr }
  %l910 = alloca { i64, ptr }
  %l912 = alloca { i64, ptr }
  %l914 = alloca i64
  %l918 = alloca ptr
  %l919 = alloca %"compiler/cabi:Way"
  %l921 = alloca %"compiler/cabi:Way"
  %l924 = alloca { i64, ptr }
  %l926 = alloca i64
  %l928 = alloca ptr
  %l931 = alloca { i64, ptr }
  %l938 = alloca ptr
  %l940 = alloca i1
  %l942 = alloca { i64, ptr }
  %l946 = alloca { i64, ptr }
  %l947 = alloca { i64, ptr }
  %l948 = alloca [4 x i8]
  %l952 = alloca { i64, ptr }
  %l953 = alloca { i64, ptr }
  %l955 = alloca i64
  %l957 = alloca i64
  %l958 = alloca { i64, ptr }
  %l960 = alloca { i64, ptr }
  %l961 = alloca { i64, ptr }
  %l963 = alloca i64
  %l965 = alloca i64
  %l966 = alloca { i64, ptr }
  %l969 = alloca { i64, ptr }
  %l973 = alloca i1
  %l975 = alloca { i64, ptr }
  %l981 = alloca { i64, ptr }
  %l986 = alloca { i64, ptr }
  %l987 = alloca { i64, ptr }
  %l990 = alloca i64
  %l992 = alloca i64
  %l993 = alloca { i64, ptr }
  %l994 = alloca %"std/prelude/text:StringBuilder"
  %l1001 = alloca i64
  %l1003 = alloca i64
  %l1009 = alloca { i64, ptr }
  %l1018 = alloca ptr
  %l1021 = alloca { i64, ptr }
  %l1023 = alloca ptr
  %l1026 = alloca { i64, ptr }
  %l1029 = alloca ptr
  %l1030 = alloca { i64, ptr }
  %l1033 = alloca i64
  %l1034 = alloca i64
  %l1037 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %s64 = alloca %olang.scope
  %s66 = alloca %olang.scope
  %s68 = alloca %olang.scope
  %s72 = alloca %olang.scope
  %s75 = alloca %olang.scope
  %s79 = alloca %olang.scope
  %s82 = alloca %olang.scope
  %s91 = alloca %olang.scope
  %s96 = alloca %olang.scope
  %s99 = alloca %olang.scope
  %s102 = alloca %olang.scope
  %s110 = alloca %olang.scope
  %s118 = alloca %olang.scope
  %t72 = alloca { i64, [2 x i64] }, align 8
  %t87 = alloca %"compiler/mir:Fn", align 8
  %t93 = alloca %"compiler/emit:fnEm", align 8
  %t1519 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:Emitter", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/lower:Lowerer", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l101
  br label %bb1
bb1:
  %t22 = load ptr, ptr %l101, !tbaa !29
  store ptr %t22, ptr %l4, !tbaa !29
  store i64 -1, ptr %l5, !tbaa !24
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Body", ptr %t23, i32 0, i32 1
  %t26 = load { i64, [2 x i64] }, ptr %t25
  store { i64, [2 x i64] } %t26, ptr %l6
  %t28 = load { i64, [2 x i64] }, ptr %l6
  %t30 = extractvalue { i64, [2 x i64] } %t28, 0
  %t31 = icmp eq i64 %t30, 0
  br i1 %t31, label %bb2, label %bb3
bb2:
  %t33 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t34 = getelementptr { i64 }, ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %t34
  store i64 %t35, ptr %l7, !tbaa !24
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t37, i64 %t38)
  store i64 %t41, ptr %l109
  br label %bb5
bb5:
  %t42 = load i64, ptr %l109, !tbaa !24
  store i64 %t42, ptr %l5, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_8dd51a70be22f844_db8bd8df095848b0)
  unreachable
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l110, !tbaa !29
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t44, i64 %t45)
  store ptr %t48, ptr %l113
  br label %bb12
bb12:
  %t49 = load ptr, ptr %l113, !tbaa !29
  %t51 = getelementptr %"compiler/ast:Func", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %t51, !tbaa !23
  %t53 = load ptr, ptr %l110, !tbaa !29
  %t55 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s0, ptr %t53, i32 %t52)
  store { i64, ptr } %t55, ptr %l116
  br label %bb13
bb13:
  %t56 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t58)
  call void @olang_textcopy(ptr %t59, ptr %t57, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l8, !tbaa !27
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Body", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %t65, !tbaa !23
  store i32 %t66, ptr %l9, !tbaa !23
  %t68 = load i64, ptr %l1, !tbaa !24
  %t70 = trunc i64 %t68 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [2 x i64] }, ptr %t72, i32 0, i32 0
  store i64 0, ptr %t73
  %t75 = insertvalue { i32 } undef, i32 %t70, 0
  %t76 = getelementptr { i64, [2 x i64] }, ptr %t72, i32 0, i32 1
  store { i32 } %t75, ptr %t76
  %t77 = load { i64, [2 x i64] }, ptr %t72
  store { i64, [2 x i64] } %t77, ptr %l10
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load { i64, [2 x i64] }, ptr %l10
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t79, { i64, [2 x i64] } %t80)
  br label %bb14
bb14:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l126, !tbaa !29
  %t84 = load { i64, [2 x i64] }, ptr %l10
  store { i64, [2 x i64] } %t84, ptr %l127
  %t85 = load i32, ptr %l9, !tbaa !23
  store i32 %t85, ptr %l128, !tbaa !23
  %t86 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t86, ptr %l129
  br label %bb15
bb15:
  %t88 = load { i64, [2 x i64] }, ptr %l127
  %t89 = load i32, ptr %l128, !tbaa !23
  %t90 = load %"compiler/source:Span", ptr %l129
  call void @compiler_2fmir_3aFn_2ector(ptr %t87, ptr %v0, { i64, [2 x i64] } %t88, i32 %t89, i64 0, %"compiler/source:Span" %t90)
  call void @llvm.memmove.p0.p0.i64(ptr %l130, ptr %t87, i64 800, i1 false)
  br label %bb16
bb16:
  %t91 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t91, ptr %l130, i64 800, i1 false)
  %t92 = load { i64, [2 x i64] }, ptr %l10
  %t94 = load ptr, ptr %l126, !tbaa !29
  call void @compiler_2femit_3afnEm_2ector(ptr %t93, ptr %v0, ptr %v0, ptr %v0, ptr %t94, ptr %t91, { i64, [2 x i64] } %t92)
  call void @llvm.memmove.p0.p0.i64(ptr %l133, ptr %t93, i64 960, i1 false)
  br label %bb17
bb17:
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 960, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t97, ptr %l133, i64 960, i1 false)
  store ptr %t97, ptr %l11, !tbaa !29
  %t99 = load ptr, ptr %l2, !tbaa !29
  %t100 = load i32, ptr %l9, !tbaa !23
  %t103 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t99, i32 %t100)
  store i32 %t103, ptr %l137
  br label %bb18
bb18:
  %t104 = load i32, ptr %l137, !tbaa !23
  store i32 %t104, ptr %l12, !tbaa !23
  %t105 = load i32, ptr %l12, !tbaa !23
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t109 = icmp ne i32 %t105, %t106
  br i1 %t109, label %bb19, label %bb20
bb19:
  %t111 = load i32, ptr %l12, !tbaa !23
  %t112 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t115 = icmp ne i32 %t111, %t112
  store i1 %t115, ptr %l141, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb21
bb21:
  %t117 = load i1, ptr %l141, !tbaa !21
  store i1 %t117, ptr %l13, !tbaa !21
  %t118 = load i1, ptr %l13, !tbaa !21
  br i1 %t118, label %bb22, label %bb23
bb22:
  %t120 = load ptr, ptr %l3, !tbaa !29
  %t121 = load i32, ptr %l12, !tbaa !23
  %t124 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t120, i32 %t121)
  store i1 %t124, ptr %l148
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  %t125 = load ptr, ptr %l2, !tbaa !29
  store ptr %t125, ptr %l149, !tbaa !29
  %t126 = load ptr, ptr %l2, !tbaa !29
  %t127 = load i32, ptr %l9, !tbaa !23
  %t130 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t130, ptr %l152
  br label %bb26
bb26:
  %t131 = load ptr, ptr %l149, !tbaa !29
  %t132 = load i32, ptr %l152, !tbaa !23
  %t133 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t131, i32 %t132)
  store { i64, ptr } %t133, ptr %l153
  br label %bb27
bb27:
  %t134 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  %t137 = icmp sgt i64 %t135, 0
  store i1 %t137, ptr %l14, !tbaa !21
  %t139 = load i1, ptr %l13, !tbaa !21
  br i1 %t139, label %bb28, label %bb29
bb28:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i32, ptr %l12, !tbaa !23
  %t145 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportArrayResult(ptr %v0, ptr %t141, i32 %t142)
  store i1 %t145, ptr %l160
  br label %bb30
bb29:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb31
bb30:
  %t146 = load i1, ptr %l160, !tbaa !21
  store i1 %t146, ptr %l157, !tbaa !21
  br label %bb31
bb31:
  %t147 = load i1, ptr %l157, !tbaa !21
  store i1 %t147, ptr %l15, !tbaa !21
  store i32 0, ptr %l161
  %t148 = ptrtoint ptr %s0 to i64
  store i64 %t148, ptr %l162, !tbaa !24
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t149, label %bb32, label %bb33
bb32:
  %t151 = call ptr @__olang_region_make(ptr %s0)
  %t152 = ptrtoint ptr %t151 to i64
  store i64 %t152, ptr %l162, !tbaa !24
  br label %bb33
bb33:
  %t153 = load i64, ptr %l162
  %t154 = inttoptr i64 %t153 to ptr
  %t155 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t154, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t155, ptr %l164
  br label %bb34
bb34:
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t156, label %bb35, label %bb36
bb35:
  %t158 = load i64, ptr %l162
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l164, i32 0, i32 0
  %t161 = load { i64, ptr }, ptr %t160
  %t162 = extractvalue { i64, ptr } %t161, 1
  %t163 = call ptr @__olang_region_or(ptr %t162, ptr null)
  %t164 = icmp ne ptr %t163, null
  %t165 = select i1 %t164, ptr %t163, ptr null
  %t166 = icmp eq ptr %t165, %t159
  call void @__olang_region_settle(ptr %t159, i1 %t166)
  br label %bb36
bb36:
  %t167 = ptrtoint ptr %s0 to i64
  store i64 %t167, ptr %l166, !tbaa !24
  %t168 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t168, label %bb37, label %bb38
bb37:
  %t170 = call ptr @__olang_region_make(ptr %s0)
  %t171 = ptrtoint ptr %t170 to i64
  store i64 %t171, ptr %l166, !tbaa !24
  br label %bb38
bb38:
  %t172 = load i64, ptr %l166
  %t173 = inttoptr i64 %t172 to ptr
  %t174 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t173, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %l168
  br label %bb39
bb39:
  %t175 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t175, label %bb40, label %bb41
bb40:
  %t177 = load i64, ptr %l166
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168, i32 0, i32 0
  %t180 = load { i64, ptr }, ptr %t179
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = call ptr @__olang_region_or(ptr %t181, ptr null)
  %t183 = icmp ne ptr %t182, null
  %t184 = select i1 %t183, ptr %t182, ptr null
  %t185 = icmp eq ptr %t184, %t178
  call void @__olang_region_settle(ptr %t178, i1 %t185)
  br label %bb41
bb41:
  %t186 = ptrtoint ptr %s0 to i64
  store i64 %t186, ptr %l170, !tbaa !24
  %t187 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t187, label %bb42, label %bb43
bb42:
  %t189 = call ptr @__olang_region_make(ptr %s0)
  %t190 = ptrtoint ptr %t189 to i64
  store i64 %t190, ptr %l170, !tbaa !24
  br label %bb43
bb43:
  %t191 = load i64, ptr %l170
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t192, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t193, ptr %l172
  br label %bb44
bb44:
  %t194 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t194, label %bb45, label %bb46
bb45:
  %t196 = load i64, ptr %l170
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l172, i32 0, i32 0
  %t199 = load { i64, ptr }, ptr %t198
  %t200 = extractvalue { i64, ptr } %t199, 1
  %t201 = call ptr @__olang_region_or(ptr %t200, ptr null)
  %t202 = icmp ne ptr %t201, null
  %t203 = select i1 %t202, ptr %t201, ptr null
  %t204 = icmp eq ptr %t203, %t197
  call void @__olang_region_settle(ptr %t197, i1 %t204)
  br label %bb46
bb46:
  %t205 = load i32, ptr %l161, !range !{i32 0, i32 5}
  %t206 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l164
  %t207 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l172
  %t209 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, i32 %t205, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t206, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t207, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/cabi:Way" %t209, ptr %l174
  br label %bb47
bb47:
  %t210 = load %"compiler/cabi:Way", ptr %l174
  store %"compiler/cabi:Way" %t210, ptr %l16
  %t211 = load i1, ptr %l13, !tbaa !21
  br i1 %t211, label %bb48, label %bb49
bb48:
  %t213 = load i1, ptr %l14, !tbaa !21
  %t215 = xor i1 %t213, true
  store i1 %t215, ptr %l176, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l176, !tbaa !21
  br label %bb50
bb50:
  %t217 = load i1, ptr %l176, !tbaa !21
  br i1 %t217, label %bb51, label %bb52
bb51:
  %t218 = load i1, ptr %l15, !tbaa !21
  %t220 = xor i1 %t218, true
  store i1 %t220, ptr %l179, !tbaa !21
  br label %bb53
bb52:
  store i1 false, ptr %l179, !tbaa !21
  br label %bb53
bb53:
  %t222 = load i1, ptr %l179, !tbaa !21
  br i1 %t222, label %bb54, label %bb55
bb54:
  %t223 = load ptr, ptr %l2, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/emit:Emitter", ptr %t224, i32 0, i32 48
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  %t228 = load i32, ptr %l12, !tbaa !23
  %t230 = inttoptr i64 0 to ptr
  %t234 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v0, ptr %s0, ptr %t230, ptr %t223, { i64, ptr } %t227, i32 %t228)
  store %"compiler/cabi:Way" %t234, ptr %l187
  br label %bb56
bb55:
  br label %bb65
bb56:
  %t235 = load %"compiler/cabi:Way", ptr %l16
  store %"compiler/cabi:Way" %t235, ptr %l188
  %t236 = load %"compiler/cabi:Way", ptr %l187
  store %"compiler/cabi:Way" %t236, ptr %l16
  %t237 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t237, label %bb57, label %bb58
bb57:
  %t239 = getelementptr %"compiler/cabi:Way", ptr %l188, i32 0, i32 1
  %t240 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t239, i32 0, i32 0
  %t241 = load { i64, ptr }, ptr %t240
  %t242 = extractvalue { i64, ptr } %t241, 1
  %t243 = call ptr @__olang_region_or(ptr %t242, ptr null)
  %t244 = icmp ne ptr %t243, null
  %t245 = select i1 %t244, ptr %t243, ptr null
  call void @__olang_region_drop(ptr %t245)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t239
  br label %bb58
bb58:
  %t246 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t246, label %bb59, label %bb60
bb59:
  %t248 = getelementptr %"compiler/cabi:Way", ptr %l188, i32 0, i32 2
  %t249 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t248, i32 0, i32 0
  %t250 = load { i64, ptr }, ptr %t249
  %t251 = extractvalue { i64, ptr } %t250, 1
  %t252 = call ptr @__olang_region_or(ptr %t251, ptr null)
  %t253 = icmp ne ptr %t252, null
  %t254 = select i1 %t253, ptr %t252, ptr null
  call void @__olang_region_drop(ptr %t254)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t248
  br label %bb60
bb60:
  %t255 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t255, label %bb61, label %bb62
bb61:
  %t257 = getelementptr %"compiler/cabi:Way", ptr %l188, i32 0, i32 3
  %t258 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t257, i32 0, i32 0
  %t259 = load { i64, ptr }, ptr %t258
  %t260 = extractvalue { i64, ptr } %t259, 1
  %t261 = call ptr @__olang_region_or(ptr %t260, ptr null)
  %t262 = icmp ne ptr %t261, null
  %t263 = select i1 %t262, ptr %t261, ptr null
  call void @__olang_region_drop(ptr %t263)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t257
  br label %bb62
bb62:
  %t264 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e4
  br i1 %t264, label %bb63, label %bb64
bb63:
  %t266 = getelementptr %"compiler/cabi:Way", ptr %l188, i32 0, i32 4
  %t267 = load { i64, ptr }, ptr %t266
  %t268 = extractvalue { i64, ptr } %t267, 1
  call void @__olang_region_release(ptr %t268)
  store { i64, ptr } zeroinitializer, ptr %t266
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t269 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t269, ptr %l193
  br label %bb66
bb66:
  %t270 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l193
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t270, ptr %l17
  %t271 = call %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %s0, i64 6, i64 8)
  store %"compiler/cabi:Regs" %t271, ptr %l194
  br label %bb67
bb67:
  %t272 = load %"compiler/cabi:Regs", ptr %l194
  store %"compiler/cabi:Regs" %t272, ptr %l18
  %t273 = getelementptr %"compiler/cabi:Way", ptr %l16, i32 0, i32 0
  %t274 = load i32, ptr %t273, !range !{i32 0, i32 5}
  %t276 = trunc i64 4 to i32
  %t277 = icmp eq i32 %t274, %t276
  br i1 %t277, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s6
  store ptr %l17, ptr %l197, !tbaa !29
  %t279 = ptrtoint ptr %s0 to i64
  store i64 %t279, ptr %l198, !tbaa !24
  %t280 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t280, label %bb70, label %bb71
bb69:
  br label %bb75
bb70:
  %t282 = call ptr @__olang_region_make(ptr %s0)
  %t283 = ptrtoint ptr %t282 to i64
  store i64 %t283, ptr %l198, !tbaa !24
  br label %bb71
bb71:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i32, ptr %l12, !tbaa !23
  %t288 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s6, ptr %t284, i32 %t285)
  store { i64, ptr } %t288, ptr %l202
  br label %bb72
bb72:
  %t289 = load ptr, ptr %l2, !tbaa !29
  %t290 = load i32, ptr %l12, !tbaa !23
  %t293 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t289, i32 %t290)
  store i64 %t293, ptr %l205
  br label %bb73
bb73:
  %t294 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t295 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t296 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t296, 1
  %t298 = extractvalue { i64, ptr } %t296, 0
  %t299 = add i64 %t295, %t298
  %t300 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t301 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t302 = add i64 %t299, %t301
  %t303 = load i64, ptr %l205, !tbaa !24
  %t304 = call i64 @__olang_fmt_i64(ptr null, i64 %t303)
  %t305 = add i64 %t302, %t304
  %t306 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t307 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t308 = add i64 %t305, %t307
  %t309 = load i64, ptr %l198
  %t310 = inttoptr i64 %t309 to ptr
  %t311 = call ptr @__olang_scope_alloc(ptr %t310, i64 %t308)
  call void @olang_textcopy(ptr %t311, ptr %t294, i64 %t295)
  %t312 = getelementptr i8, ptr %t311, i64 %t295
  call void @olang_textcopy(ptr %t312, ptr %t297, i64 %t298)
  %t313 = getelementptr i8, ptr %t312, i64 %t298
  call void @olang_textcopy(ptr %t313, ptr %t300, i64 %t301)
  %t314 = getelementptr i8, ptr %t313, i64 %t301
  %t315 = call i64 @__olang_fmt_i64(ptr %t314, i64 %t303)
  %t316 = getelementptr i8, ptr %t314, i64 %t304
  call void @olang_textcopy(ptr %t316, ptr %t306, i64 %t307)
  %t317 = insertvalue { i64, ptr } undef, i64 %t308, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t311, 1
  %t320 = load i64, ptr %l198
  %t321 = inttoptr i64 %t320 to ptr
  %t322 = extractvalue { i64, ptr } %t318, 0
  %t323 = extractvalue { i64, ptr } %t318, 1
  %t324 = mul i64 %t322, 1
  %t325 = call ptr @__olang_scope_alloc(ptr %t321, i64 %t324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t325, ptr %t323, i64 %t324, i1 false)
  %t326 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  %t328 = load ptr, ptr %l197, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t328, { i64, ptr } %t327)
  br label %bb74
bb74:
  %t330 = getelementptr %"compiler/cabi:Regs", ptr %l18, i32 0, i32 0
  %t331 = load i64, ptr %t330, !tbaa !24
  %t333 = sub i64 %t331, 1
  %t335 = getelementptr %"compiler/cabi:Regs", ptr %l18, i32 0, i32 0
  store i64 %t333, ptr %t335, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb75
bb75:
  %t336 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t336, ptr %l210
  br label %bb76
bb76:
  %t337 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l210
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t337, ptr %l19
  %t338 = load ptr, ptr %l2, !tbaa !29
  store ptr %t338, ptr %l211, !tbaa !29
  %t339 = load ptr, ptr %l2, !tbaa !29
  %t340 = load i32, ptr %l9, !tbaa !23
  %t343 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t339, i32 %t340)
  store i32 %t343, ptr %l214
  br label %bb77
bb77:
  %t344 = load ptr, ptr %l211, !tbaa !29
  %t345 = load i32, ptr %l214, !tbaa !23
  %t346 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t344, i32 %t345)
  store { i64, ptr } %t346, ptr %l215
  br label %bb78
bb78:
  %t347 = load { i64, ptr }, ptr %l215, !tbaa !27
  store { i64, ptr } %t347, ptr %l20, !tbaa !27
  %t348 = load ptr, ptr %l2, !tbaa !29
  %t349 = load i32, ptr %l9, !tbaa !23
  %t352 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s0, ptr %t348, i32 %t349)
  store { i64, ptr } %t352, ptr %l218
  br label %bb79
bb79:
  %t353 = load { i64, ptr }, ptr %l218, !tbaa !27
  store { i64, ptr } %t353, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t354 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t356 = extractvalue { i64, ptr } %t354, 0
  store i64 %t356, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t358 = load i64, ptr %l23, !tbaa !24
  %t359 = load i64, ptr %l22, !tbaa !24
  %t362 = icmp sgt i64 %t358, %t359
  br i1 %t362, label %bb80, label %bb81
bb80:
  %t364 = load i64, ptr %l24, !tbaa !24
  %t366 = icmp sgt i64 %t364, 0
  br i1 %t366, label %bb82, label %bb83
bb81:
  store i64 0, ptr %l224, !tbaa !24
  br label %bb85
bb82:
  %t368 = load i64, ptr %l23, !tbaa !24
  %t369 = load i64, ptr %l22, !tbaa !24
  %t372 = sub i64 %t368, %t369
  %t373 = load i64, ptr %l24, !tbaa !24
  %t376 = add i64 %t372, %t373
  %t378 = sub i64 %t376, 1
  %t379 = load i64, ptr %l24, !tbaa !24
  %t382 = sdiv i64 %t378, %t379
  store i64 %t382, ptr %l227, !tbaa !24
  br label %bb84
bb83:
  store i64 0, ptr %l227, !tbaa !24
  br label %bb84
bb84:
  %t384 = load i64, ptr %l227, !tbaa !24
  store i64 %t384, ptr %l224, !tbaa !24
  br label %bb85
bb85:
  %t385 = load i64, ptr %l224, !tbaa !24
  store i64 %t385, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb86
bb86:
  store %olang.scope zeroinitializer, ptr %s9
  %t386 = load i64, ptr %l26, !tbaa !24
  %t387 = load i64, ptr %l25, !tbaa !24
  %t390 = icmp slt i64 %t386, %t387
  %t392 = xor i1 %t390, true
  br i1 %t392, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s9)
  br label %bb209
bb88:
  br label %bb89
bb89:
  %t394 = load i64, ptr %l22, !tbaa !24
  %t395 = load i64, ptr %l26, !tbaa !24
  %t396 = load i64, ptr %l24, !tbaa !24
  %t399 = mul i64 %t395, %t396
  %t402 = add i64 %t394, %t399
  store i64 %t402, ptr %l27, !tbaa !24
  %t404 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t404, ptr %l245, !tbaa !27
  %t405 = load i64, ptr %l27, !tbaa !24
  %t407 = getelementptr { i64, ptr }, ptr %l245, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !27
  %t409 = getelementptr i32, ptr %t408, i64 %t405
  %t410 = load i32, ptr %t409, !tbaa !33
  store i32 %t410, ptr %l28, !tbaa !23
  %t412 = load ptr, ptr %l3, !tbaa !29
  %t413 = load i32, ptr %l28, !tbaa !23
  %t416 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t412, i32 %t413)
  store i1 %t416, ptr %l250
  br label %bb90
bb90:
  %t417 = load ptr, ptr %l2, !tbaa !29
  %t418 = load i32, ptr %l28, !tbaa !23
  %t421 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t417, i32 %t418)
  store i32 %t421, ptr %l253
  br label %bb91
bb91:
  %t422 = load i32, ptr %l253, !tbaa !23
  store i32 %t422, ptr %l29, !tbaa !23
  %t423 = load i64, ptr %l27, !tbaa !24
  %t424 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t425 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t427 = call i64 @__olang_fmt_i64(ptr null, i64 %t423)
  %t428 = add i64 %t425, %t427
  %t429 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t428)
  call void @olang_textcopy(ptr %t429, ptr %t424, i64 %t425)
  %t430 = getelementptr i8, ptr %t429, i64 %t425
  %t431 = call i64 @__olang_fmt_i64(ptr %t430, i64 %t423)
  %t432 = insertvalue { i64, ptr } undef, i64 %t428, 0
  %t433 = insertvalue { i64, ptr } %t432, ptr %t429, 1
  store { i64, ptr } %t433, ptr %l30, !tbaa !27
  %t435 = load ptr, ptr %l2, !tbaa !29
  %t436 = load i32, ptr %l29, !tbaa !23
  %t439 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t435, i32 %t436)
  store i1 %t439, ptr %l258
  br label %bb92
bb92:
  %t440 = load i1, ptr %l258, !tbaa !21
  br i1 %t440, label %bb93, label %bb94
bb93:
  %t441 = load ptr, ptr %l2, !tbaa !29
  store ptr %t441, ptr %l259, !tbaa !29
  %t442 = load ptr, ptr %l2, !tbaa !29
  %t443 = load i32, ptr %l29, !tbaa !23
  %t446 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t442, i32 %t443)
  store i32 %t446, ptr %l262
  br label %bb95
bb94:
  br label %bb122
bb95:
  %t447 = load ptr, ptr %l259, !tbaa !29
  %t448 = load i32, ptr %l262, !tbaa !23
  %t449 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t447, i32 %t448)
  store i32 %t449, ptr %l263
  br label %bb96
bb96:
  %t450 = load i32, ptr %l263, !tbaa !23
  store i32 %t450, ptr %l31, !tbaa !23
  %t451 = load ptr, ptr %l2, !tbaa !29
  %t452 = load i32, ptr %l31, !tbaa !23
  %t455 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t451, i32 %t452)
  store i32 %t455, ptr %l266
  br label %bb97
bb97:
  %t456 = load i32, ptr %l266, !range !{i32 0, i32 33}
  %t458 = trunc i64 19 to i32
  %t459 = icmp eq i32 %t456, %t458
  br i1 %t459, label %bb98, label %bb99
bb98:
  %t461 = load ptr, ptr %l2, !tbaa !29
  %t462 = load i32, ptr %l31, !tbaa !23
  %t465 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t461, i32 %t462)
  store i32 %t465, ptr %l272
  br label %bb100
bb99:
  store i1 false, ptr %l269, !tbaa !21
  br label %bb101
bb100:
  %t466 = load i32, ptr %l272, !tbaa !23
  %t467 = icmp eq i32 %t466, 0
  store i1 %t467, ptr %l269, !tbaa !21
  br label %bb101
bb101:
  %t469 = load i1, ptr %l269, !tbaa !21
  br i1 %t469, label %bb102, label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s12
  store ptr %l17, ptr %l274, !tbaa !29
  %t470 = ptrtoint ptr %s0 to i64
  store i64 %t470, ptr %l275, !tbaa !24
  %t471 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t471, label %bb104, label %bb105
bb103:
  store ptr %l17, ptr %l304, !tbaa !29
  %t473 = ptrtoint ptr %s0 to i64
  store i64 %t473, ptr %l305, !tbaa !24
  %t474 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t474, label %bb115, label %bb116
bb104:
  %t476 = call ptr @__olang_region_make(ptr %s0)
  %t477 = ptrtoint ptr %t476 to i64
  store i64 %t477, ptr %l275, !tbaa !24
  br label %bb105
bb105:
  %t478 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t479 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t480 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t482 = extractvalue { i64, ptr } %t478, 1
  %t483 = extractvalue { i64, ptr } %t478, 0
  %t484 = add i64 %t480, %t483
  %t485 = load i64, ptr %l275
  %t486 = inttoptr i64 %t485 to ptr
  %t487 = call ptr @__olang_scope_alloc(ptr %t486, i64 %t484)
  call void @olang_textcopy(ptr %t487, ptr %t479, i64 %t480)
  %t488 = getelementptr i8, ptr %t487, i64 %t480
  call void @olang_textcopy(ptr %t488, ptr %t482, i64 %t483)
  %t489 = insertvalue { i64, ptr } undef, i64 %t484, 0
  %t490 = insertvalue { i64, ptr } %t489, ptr %t487, 1
  %t492 = load i64, ptr %l275
  %t493 = inttoptr i64 %t492 to ptr
  %t494 = extractvalue { i64, ptr } %t490, 0
  %t495 = extractvalue { i64, ptr } %t490, 1
  %t496 = mul i64 %t494, 1
  %t497 = call ptr @__olang_scope_alloc(ptr %t493, i64 %t496)
  call void @llvm.memcpy.p0.p0.i64(ptr %t497, ptr %t495, i64 %t496, i1 false)
  %t498 = insertvalue { i64, ptr } undef, i64 %t494, 0
  %t499 = insertvalue { i64, ptr } %t498, ptr %t497, 1
  %t500 = load ptr, ptr %l274, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t500, { i64, ptr } %t499)
  br label %bb106
bb106:
  store ptr %l17, ptr %l280, !tbaa !29
  %t502 = ptrtoint ptr %s0 to i64
  store i64 %t502, ptr %l281, !tbaa !24
  %t503 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t503, label %bb107, label %bb108
bb107:
  %t505 = call ptr @__olang_region_make(ptr %s0)
  %t506 = ptrtoint ptr %t505 to i64
  store i64 %t506, ptr %l281, !tbaa !24
  br label %bb108
bb108:
  %t507 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t508 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t509 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t511 = extractvalue { i64, ptr } %t507, 1
  %t512 = extractvalue { i64, ptr } %t507, 0
  %t513 = add i64 %t509, %t512
  %t514 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t515 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t516 = add i64 %t513, %t515
  %t517 = load i64, ptr %l281
  %t518 = inttoptr i64 %t517 to ptr
  %t519 = call ptr @__olang_scope_alloc(ptr %t518, i64 %t516)
  call void @olang_textcopy(ptr %t519, ptr %t508, i64 %t509)
  %t520 = getelementptr i8, ptr %t519, i64 %t509
  call void @olang_textcopy(ptr %t520, ptr %t511, i64 %t512)
  %t521 = getelementptr i8, ptr %t520, i64 %t512
  call void @olang_textcopy(ptr %t521, ptr %t514, i64 %t515)
  %t522 = insertvalue { i64, ptr } undef, i64 %t516, 0
  %t523 = insertvalue { i64, ptr } %t522, ptr %t519, 1
  %t525 = load i64, ptr %l281
  %t526 = inttoptr i64 %t525 to ptr
  %t527 = extractvalue { i64, ptr } %t523, 0
  %t528 = extractvalue { i64, ptr } %t523, 1
  %t529 = mul i64 %t527, 1
  %t530 = call ptr @__olang_scope_alloc(ptr %t526, i64 %t529)
  call void @llvm.memcpy.p0.p0.i64(ptr %t530, ptr %t528, i64 %t529, i1 false)
  %t531 = insertvalue { i64, ptr } undef, i64 %t527, 0
  %t532 = insertvalue { i64, ptr } %t531, ptr %t530, 1
  %t533 = load ptr, ptr %l280, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t533, { i64, ptr } %t532)
  br label %bb109
bb109:
  %t535 = getelementptr %"compiler/cabi:Regs", ptr %l18, i32 0, i32 0
  %t536 = load i64, ptr %t535, !tbaa !24
  %t538 = sub i64 %t536, 2
  %t540 = getelementptr %"compiler/cabi:Regs", ptr %l18, i32 0, i32 0
  store i64 %t538, ptr %t540, !tbaa !24
  %t541 = load ptr, ptr %l11, !tbaa !29
  %t542 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t543 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t544 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t546 = extractvalue { i64, ptr } %t542, 1
  %t547 = extractvalue { i64, ptr } %t542, 0
  %t548 = add i64 %t544, %t547
  %t549 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t550 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t551 = add i64 %t548, %t550
  %t552 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t551)
  call void @olang_textcopy(ptr %t552, ptr %t543, i64 %t544)
  %t553 = getelementptr i8, ptr %t552, i64 %t544
  call void @olang_textcopy(ptr %t553, ptr %t546, i64 %t547)
  %t554 = getelementptr i8, ptr %t553, i64 %t547
  call void @olang_textcopy(ptr %t554, ptr %t549, i64 %t550)
  %t555 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t556 = insertvalue { i64, ptr } %t555, ptr %t552, 1
  %t558 = extractvalue { i64, ptr } %t556, 0
  %t559 = extractvalue { i64, ptr } %t556, 1
  %t560 = mul i64 %t558, 1
  %t561 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t560)
  call void @llvm.memcpy.p0.p0.i64(ptr %t561, ptr %t559, i64 %t560, i1 false)
  %t562 = insertvalue { i64, ptr } undef, i64 %t558, 0
  %t563 = insertvalue { i64, ptr } %t562, ptr %t561, 1
  %t566 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s12, ptr %s12, ptr %t541, { i64, ptr } %t563)
  store { i64, ptr } %t566, ptr %l292
  br label %bb110
bb110:
  %t567 = load { i64, ptr }, ptr %l292, !tbaa !27
  store { i64, ptr } %t567, ptr %l32, !tbaa !27
  store ptr %l19, ptr %l293, !tbaa !29
  %t568 = ptrtoint ptr %s0 to i64
  store i64 %t568, ptr %l294, !tbaa !24
  %t569 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t569, label %bb111, label %bb112
bb111:
  %t571 = call ptr @__olang_region_make(ptr %s0)
  %t572 = ptrtoint ptr %t571 to i64
  store i64 %t572, ptr %l294, !tbaa !24
  br label %bb112
bb112:
  %t573 = load ptr, ptr %l11, !tbaa !29
  %t574 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t575 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t576 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t577 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t579 = extractvalue { i64, ptr } %t574, 1
  %t580 = extractvalue { i64, ptr } %t574, 0
  %t581 = add i64 %t577, %t580
  %t582 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t583 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t584 = add i64 %t581, %t583
  %t586 = extractvalue { i64, ptr } %t575, 1
  %t587 = extractvalue { i64, ptr } %t575, 0
  %t588 = add i64 %t584, %t587
  %t589 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t590 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t591 = add i64 %t588, %t590
  %t592 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t591)
  call void @olang_textcopy(ptr %t592, ptr %t576, i64 %t577)
  %t593 = getelementptr i8, ptr %t592, i64 %t577
  call void @olang_textcopy(ptr %t593, ptr %t579, i64 %t580)
  %t594 = getelementptr i8, ptr %t593, i64 %t580
  call void @olang_textcopy(ptr %t594, ptr %t582, i64 %t583)
  %t595 = getelementptr i8, ptr %t594, i64 %t583
  call void @olang_textcopy(ptr %t595, ptr %t586, i64 %t587)
  %t596 = getelementptr i8, ptr %t595, i64 %t587
  call void @olang_textcopy(ptr %t596, ptr %t589, i64 %t590)
  %t597 = insertvalue { i64, ptr } undef, i64 %t591, 0
  %t598 = insertvalue { i64, ptr } %t597, ptr %t592, 1
  %t600 = extractvalue { i64, ptr } %t598, 0
  %t601 = extractvalue { i64, ptr } %t598, 1
  %t602 = mul i64 %t600, 1
  %t603 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t602)
  call void @llvm.memcpy.p0.p0.i64(ptr %t603, ptr %t601, i64 %t602, i1 false)
  %t604 = insertvalue { i64, ptr } undef, i64 %t600, 0
  %t605 = insertvalue { i64, ptr } %t604, ptr %t603, 1
  %t608 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s12, ptr %s12, ptr %t573, { i64, ptr } %t605)
  store { i64, ptr } %t608, ptr %l301
  br label %bb113
bb113:
  %t609 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t610 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t611 = load { i64, ptr }, ptr %l301, !tbaa !27
  %t612 = extractvalue { i64, ptr } %t611, 1
  %t613 = extractvalue { i64, ptr } %t611, 0
  %t614 = add i64 %t610, %t613
  %t615 = load i64, ptr %l294
  %t616 = inttoptr i64 %t615 to ptr
  %t617 = call ptr @__olang_scope_alloc(ptr %t616, i64 %t614)
  call void @olang_textcopy(ptr %t617, ptr %t609, i64 %t610)
  %t618 = getelementptr i8, ptr %t617, i64 %t610
  call void @olang_textcopy(ptr %t618, ptr %t612, i64 %t613)
  %t619 = insertvalue { i64, ptr } undef, i64 %t614, 0
  %t620 = insertvalue { i64, ptr } %t619, ptr %t617, 1
  %t622 = load i64, ptr %l294
  %t623 = inttoptr i64 %t622 to ptr
  %t624 = extractvalue { i64, ptr } %t620, 0
  %t625 = extractvalue { i64, ptr } %t620, 1
  %t626 = mul i64 %t624, 1
  %t627 = call ptr @__olang_scope_alloc(ptr %t623, i64 %t626)
  call void @llvm.memcpy.p0.p0.i64(ptr %t627, ptr %t625, i64 %t626, i1 false)
  %t628 = insertvalue { i64, ptr } undef, i64 %t624, 0
  %t629 = insertvalue { i64, ptr } %t628, ptr %t627, 1
  %t630 = load ptr, ptr %l293, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t630, { i64, ptr } %t629)
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s12)
  br label %bb121
bb115:
  %t632 = call ptr @__olang_region_make(ptr %s0)
  %t633 = ptrtoint ptr %t632 to i64
  store i64 %t633, ptr %l305, !tbaa !24
  br label %bb116
bb116:
  %t634 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t635 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t636 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t638 = extractvalue { i64, ptr } %t634, 1
  %t639 = extractvalue { i64, ptr } %t634, 0
  %t640 = add i64 %t636, %t639
  %t641 = load i64, ptr %l305
  %t642 = inttoptr i64 %t641 to ptr
  %t643 = call ptr @__olang_scope_alloc(ptr %t642, i64 %t640)
  call void @olang_textcopy(ptr %t643, ptr %t635, i64 %t636)
  %t644 = getelementptr i8, ptr %t643, i64 %t636
  call void @olang_textcopy(ptr %t644, ptr %t638, i64 %t639)
  %t645 = insertvalue { i64, ptr } undef, i64 %t640, 0
  %t646 = insertvalue { i64, ptr } %t645, ptr %t643, 1
  %t648 = load i64, ptr %l305
  %t649 = inttoptr i64 %t648 to ptr
  %t650 = extractvalue { i64, ptr } %t646, 0
  %t651 = extractvalue { i64, ptr } %t646, 1
  %t652 = mul i64 %t650, 1
  %t653 = call ptr @__olang_scope_alloc(ptr %t649, i64 %t652)
  call void @llvm.memcpy.p0.p0.i64(ptr %t653, ptr %t651, i64 %t652, i1 false)
  %t654 = insertvalue { i64, ptr } undef, i64 %t650, 0
  %t655 = insertvalue { i64, ptr } %t654, ptr %t653, 1
  %t656 = load ptr, ptr %l304, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t656, { i64, ptr } %t655)
  br label %bb117
bb117:
  %t658 = getelementptr %"compiler/cabi:Regs", ptr %l18, i32 0, i32 0
  %t659 = load i64, ptr %t658, !tbaa !24
  %t661 = sub i64 %t659, 1
  %t663 = getelementptr %"compiler/cabi:Regs", ptr %l18, i32 0, i32 0
  store i64 %t661, ptr %t663, !tbaa !24
  store ptr %l19, ptr %l312, !tbaa !29
  %t664 = ptrtoint ptr %s0 to i64
  store i64 %t664, ptr %l313, !tbaa !24
  %t665 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t665, label %bb118, label %bb119
bb118:
  %t667 = call ptr @__olang_region_make(ptr %s0)
  %t668 = ptrtoint ptr %t667 to i64
  store i64 %t668, ptr %l313, !tbaa !24
  br label %bb119
bb119:
  %t669 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t670 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t671 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t673 = extractvalue { i64, ptr } %t669, 1
  %t674 = extractvalue { i64, ptr } %t669, 0
  %t675 = add i64 %t671, %t674
  %t676 = load i64, ptr %l313
  %t677 = inttoptr i64 %t676 to ptr
  %t678 = call ptr @__olang_scope_alloc(ptr %t677, i64 %t675)
  call void @olang_textcopy(ptr %t678, ptr %t670, i64 %t671)
  %t679 = getelementptr i8, ptr %t678, i64 %t671
  call void @olang_textcopy(ptr %t679, ptr %t673, i64 %t674)
  %t680 = insertvalue { i64, ptr } undef, i64 %t675, 0
  %t681 = insertvalue { i64, ptr } %t680, ptr %t678, 1
  %t683 = load i64, ptr %l313
  %t684 = inttoptr i64 %t683 to ptr
  %t685 = extractvalue { i64, ptr } %t681, 0
  %t686 = extractvalue { i64, ptr } %t681, 1
  %t687 = mul i64 %t685, 1
  %t688 = call ptr @__olang_scope_alloc(ptr %t684, i64 %t687)
  call void @llvm.memcpy.p0.p0.i64(ptr %t688, ptr %t686, i64 %t687, i1 false)
  %t689 = insertvalue { i64, ptr } undef, i64 %t685, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t688, 1
  %t691 = load ptr, ptr %l312, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t691, { i64, ptr } %t690)
  br label %bb120
bb120:
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s9)
  br label %bb208
bb122:
  %t693 = load ptr, ptr %l2, !tbaa !29
  %t694 = load ptr, ptr %l0, !tbaa !29
  %t696 = getelementptr %"compiler/emit:Emitter", ptr %t694, i32 0, i32 48
  %t697 = load { i64, ptr }, ptr %t696, !tbaa !27
  %t698 = load i32, ptr %l28, !tbaa !23
  %t700 = inttoptr i64 0 to ptr
  %t705 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v0, ptr %s0, ptr %s9, ptr %t700, ptr %t693, { i64, ptr } %t697, i32 %t698, ptr %l18)
  store %"compiler/cabi:Way" %t705, ptr %l324
  br label %bb123
bb123:
  %t706 = load %"compiler/cabi:Way", ptr %l324
  store %"compiler/cabi:Way" %t706, ptr %l33
  %t707 = getelementptr %"compiler/cabi:Way", ptr %l33, i32 0, i32 0
  %t708 = load i32, ptr %t707, !range !{i32 0, i32 5}
  store i32 %t708, ptr %l34
  %t710 = load i32, ptr %l34, !range !{i32 0, i32 5}
  %t712 = trunc i64 0 to i32
  %t713 = icmp eq i32 %t710, %t712
  br i1 %t713, label %bb124, label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb139
bb126:
  store %olang.scope zeroinitializer, ptr %s21
  store ptr %l17, ptr %l328, !tbaa !29
  %t715 = ptrtoint ptr %s0 to i64
  store i64 %t715, ptr %l329, !tbaa !24
  %t716 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t716, label %bb127, label %bb128
bb127:
  %t718 = call ptr @__olang_region_make(ptr %s0)
  %t719 = ptrtoint ptr %t718 to i64
  store i64 %t719, ptr %l329, !tbaa !24
  br label %bb128
bb128:
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t721 = load i32, ptr %l28, !tbaa !23
  %t724 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s21, ptr %t720, i32 %t721)
  store { i64, ptr } %t724, ptr %l333
  br label %bb129
bb129:
  %t725 = getelementptr %"compiler/cabi:Way", ptr %l33, i32 0, i32 4
  %t726 = load { i64, ptr }, ptr %t725, !tbaa !27
  %t728 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s9, ptr %s21, { i64, ptr } %t726, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t728, ptr %l335
  br label %bb130
bb130:
  %t729 = load i1, ptr %l335, !tbaa !21
  %t730 = xor i1 %t729, true
  br i1 %t730, label %bb131, label %bb132
bb131:
  %t732 = getelementptr %"compiler/cabi:Way", ptr %l33, i32 0, i32 4
  %t733 = load { i64, ptr }, ptr %t732, !tbaa !27
  %t734 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t735 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t737 = extractvalue { i64, ptr } %t733, 1
  %t738 = extractvalue { i64, ptr } %t733, 0
  %t739 = add i64 %t735, %t738
  %t740 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t739)
  call void @olang_textcopy(ptr %t740, ptr %t734, i64 %t735)
  %t741 = getelementptr i8, ptr %t740, i64 %t735
  call void @olang_textcopy(ptr %t741, ptr %t737, i64 %t738)
  %t742 = insertvalue { i64, ptr } undef, i64 %t739, 0
  %t743 = insertvalue { i64, ptr } %t742, ptr %t740, 1
  %t745 = extractvalue { i64, ptr } %t743, 0
  %t746 = extractvalue { i64, ptr } %t743, 1
  %t747 = mul i64 %t745, 1
  %t748 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t747)
  call void @llvm.memcpy.p0.p0.i64(ptr %t748, ptr %t746, i64 %t747, i1 false)
  %t749 = insertvalue { i64, ptr } undef, i64 %t745, 0
  %t750 = insertvalue { i64, ptr } %t749, ptr %t748, 1
  store { i64, ptr } %t750, ptr %l337, !tbaa !27
  br label %bb133
bb132:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l337, !tbaa !27
  br label %bb133
bb133:
  %t752 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t753 = load { i64, ptr }, ptr %l333, !tbaa !27
  %t754 = extractvalue { i64, ptr } %t753, 1
  %t755 = extractvalue { i64, ptr } %t753, 0
  %t756 = load { i64, ptr }, ptr %l337, !tbaa !27
  %t757 = extractvalue { i64, ptr } %t756, 1
  %t758 = extractvalue { i64, ptr } %t756, 0
  %t759 = add i64 %t755, %t758
  %t760 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t761 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t762 = add i64 %t759, %t761
  %t764 = extractvalue { i64, ptr } %t752, 1
  %t765 = extractvalue { i64, ptr } %t752, 0
  %t766 = add i64 %t762, %t765
  %t767 = load i64, ptr %l329
  %t768 = inttoptr i64 %t767 to ptr
  %t769 = call ptr @__olang_scope_alloc(ptr %t768, i64 %t766)
  call void @olang_textcopy(ptr %t769, ptr %t754, i64 %t755)
  %t770 = getelementptr i8, ptr %t769, i64 %t755
  call void @olang_textcopy(ptr %t770, ptr %t757, i64 %t758)
  %t771 = getelementptr i8, ptr %t770, i64 %t758
  call void @olang_textcopy(ptr %t771, ptr %t760, i64 %t761)
  %t772 = getelementptr i8, ptr %t771, i64 %t761
  call void @olang_textcopy(ptr %t772, ptr %t764, i64 %t765)
  %t773 = insertvalue { i64, ptr } undef, i64 %t766, 0
  %t774 = insertvalue { i64, ptr } %t773, ptr %t769, 1
  %t776 = load i64, ptr %l329
  %t777 = inttoptr i64 %t776 to ptr
  %t778 = extractvalue { i64, ptr } %t774, 0
  %t779 = extractvalue { i64, ptr } %t774, 1
  %t780 = mul i64 %t778, 1
  %t781 = call ptr @__olang_scope_alloc(ptr %t777, i64 %t780)
  call void @llvm.memcpy.p0.p0.i64(ptr %t781, ptr %t779, i64 %t780, i1 false)
  %t782 = insertvalue { i64, ptr } undef, i64 %t778, 0
  %t783 = insertvalue { i64, ptr } %t782, ptr %t781, 1
  %t784 = load ptr, ptr %l328, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t784, { i64, ptr } %t783)
  br label %bb134
bb134:
  store ptr %l19, ptr %l344, !tbaa !29
  %t786 = ptrtoint ptr %s0 to i64
  store i64 %t786, ptr %l345, !tbaa !24
  %t787 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t787, label %bb135, label %bb136
bb135:
  %t789 = call ptr @__olang_region_make(ptr %s0)
  %t790 = ptrtoint ptr %t789 to i64
  store i64 %t790, ptr %l345, !tbaa !24
  br label %bb136
bb136:
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t792 = load i32, ptr %l28, !tbaa !23
  %t795 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s21, ptr %t791, i32 %t792)
  store { i64, ptr } %t795, ptr %l349
  br label %bb137
bb137:
  %t796 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t797 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t798 = extractvalue { i64, ptr } %t797, 1
  %t799 = extractvalue { i64, ptr } %t797, 0
  %t800 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t801 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t802 = add i64 %t799, %t801
  %t804 = extractvalue { i64, ptr } %t796, 1
  %t805 = extractvalue { i64, ptr } %t796, 0
  %t806 = add i64 %t802, %t805
  %t807 = load i64, ptr %l345
  %t808 = inttoptr i64 %t807 to ptr
  %t809 = call ptr @__olang_scope_alloc(ptr %t808, i64 %t806)
  call void @olang_textcopy(ptr %t809, ptr %t798, i64 %t799)
  %t810 = getelementptr i8, ptr %t809, i64 %t799
  call void @olang_textcopy(ptr %t810, ptr %t800, i64 %t801)
  %t811 = getelementptr i8, ptr %t810, i64 %t801
  call void @olang_textcopy(ptr %t811, ptr %t804, i64 %t805)
  %t812 = insertvalue { i64, ptr } undef, i64 %t806, 0
  %t813 = insertvalue { i64, ptr } %t812, ptr %t809, 1
  %t815 = load i64, ptr %l345
  %t816 = inttoptr i64 %t815 to ptr
  %t817 = extractvalue { i64, ptr } %t813, 0
  %t818 = extractvalue { i64, ptr } %t813, 1
  %t819 = mul i64 %t817, 1
  %t820 = call ptr @__olang_scope_alloc(ptr %t816, i64 %t819)
  call void @llvm.memcpy.p0.p0.i64(ptr %t820, ptr %t818, i64 %t819, i1 false)
  %t821 = insertvalue { i64, ptr } undef, i64 %t817, 0
  %t822 = insertvalue { i64, ptr } %t821, ptr %t820, 1
  %t823 = load ptr, ptr %l344, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t823, { i64, ptr } %t822)
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s9)
  br label %bb208
bb139:
  %t825 = load i32, ptr %l34, !range !{i32 0, i32 5}
  %t827 = trunc i64 1 to i32
  %t828 = icmp eq i32 %t825, %t827
  br i1 %t828, label %bb140, label %bb141
bb140:
  br label %bb142
bb141:
  br label %bb174
bb142:
  store %olang.scope zeroinitializer, ptr %s25
  %t830 = load ptr, ptr %l11, !tbaa !29
  store ptr %t830, ptr %l355, !tbaa !29
  %t831 = load ptr, ptr %l2, !tbaa !29
  %t832 = load i32, ptr %l28, !tbaa !23
  %t836 = call i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %s9, ptr %t831, ptr %l33, i32 %t832)
  store i64 %t836, ptr %l359
  br label %bb143
bb143:
  %t837 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t838 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t839 = load i64, ptr %l359, !tbaa !24
  %t840 = call i64 @__olang_fmt_i64(ptr null, i64 %t839)
  %t841 = add i64 %t838, %t840
  %t842 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t843 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t844 = add i64 %t841, %t843
  %t845 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t844)
  call void @olang_textcopy(ptr %t845, ptr %t837, i64 %t838)
  %t846 = getelementptr i8, ptr %t845, i64 %t838
  %t847 = call i64 @__olang_fmt_i64(ptr %t846, i64 %t839)
  %t848 = getelementptr i8, ptr %t846, i64 %t840
  call void @olang_textcopy(ptr %t848, ptr %t842, i64 %t843)
  %t849 = insertvalue { i64, ptr } undef, i64 %t844, 0
  %t850 = insertvalue { i64, ptr } %t849, ptr %t845, 1
  %t852 = extractvalue { i64, ptr } %t850, 0
  %t853 = extractvalue { i64, ptr } %t850, 1
  %t854 = mul i64 %t852, 1
  %t855 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t854)
  call void @llvm.memcpy.p0.p0.i64(ptr %t855, ptr %t853, i64 %t854, i1 false)
  %t856 = insertvalue { i64, ptr } undef, i64 %t852, 0
  %t857 = insertvalue { i64, ptr } %t856, ptr %t855, 1
  %t858 = load ptr, ptr %l355, !tbaa !29
  %t860 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s25, ptr %s25, ptr %t858, { i64, ptr } %t857, i64 8)
  store { i64, ptr } %t860, ptr %l362
  br label %bb144
bb144:
  %t861 = load { i64, ptr }, ptr %l362, !tbaa !27
  store { i64, ptr } %t861, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t862 = getelementptr %"compiler/cabi:Way", ptr %l33, i32 0, i32 1
  %t864 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s9, ptr %t862)
  store i64 %t864, ptr %l364
  br label %bb145
bb145:
  %t865 = load i64, ptr %l364, !tbaa !24
  store i64 %t865, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t866 = load i64, ptr %l37, !tbaa !24
  %t867 = load i64, ptr %l36, !tbaa !24
  %t870 = icmp sgt i64 %t866, %t867
  br i1 %t870, label %bb146, label %bb147
bb146:
  %t872 = load i64, ptr %l38, !tbaa !24
  %t874 = icmp sgt i64 %t872, 0
  br i1 %t874, label %bb148, label %bb149
bb147:
  store i64 0, ptr %l368, !tbaa !24
  br label %bb151
bb148:
  %t876 = load i64, ptr %l37, !tbaa !24
  %t877 = load i64, ptr %l36, !tbaa !24
  %t880 = sub i64 %t876, %t877
  %t881 = load i64, ptr %l38, !tbaa !24
  %t884 = add i64 %t880, %t881
  %t886 = sub i64 %t884, 1
  %t887 = load i64, ptr %l38, !tbaa !24
  %t890 = sdiv i64 %t886, %t887
  store i64 %t890, ptr %l371, !tbaa !24
  br label %bb150
bb149:
  store i64 0, ptr %l371, !tbaa !24
  br label %bb150
bb150:
  %t892 = load i64, ptr %l371, !tbaa !24
  store i64 %t892, ptr %l368, !tbaa !24
  br label %bb151
bb151:
  %t893 = load i64, ptr %l368, !tbaa !24
  store i64 %t893, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb152
bb152:
  store %olang.scope zeroinitializer, ptr %s28
  %t894 = load i64, ptr %l40, !tbaa !24
  %t895 = load i64, ptr %l39, !tbaa !24
  %t898 = icmp slt i64 %t894, %t895
  %t900 = xor i1 %t898, true
  br i1 %t900, label %bb153, label %bb154
bb153:
  call void @__olang_scope_close(ptr %s28)
  br label %bb170
bb154:
  br label %bb155
bb155:
  %t902 = load i64, ptr %l36, !tbaa !24
  %t903 = load i64, ptr %l40, !tbaa !24
  %t904 = load i64, ptr %l38, !tbaa !24
  %t907 = mul i64 %t903, %t904
  %t910 = add i64 %t902, %t907
  store i64 %t910, ptr %l41, !tbaa !24
  store ptr %l17, ptr %l389, !tbaa !29
  %t912 = ptrtoint ptr %s0 to i64
  store i64 %t912, ptr %l390, !tbaa !24
  %t913 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t913, label %bb156, label %bb157
bb156:
  %t915 = call ptr @__olang_region_make(ptr %s0)
  %t916 = ptrtoint ptr %t915 to i64
  store i64 %t916, ptr %l390, !tbaa !24
  br label %bb157
bb157:
  %t917 = getelementptr %"compiler/cabi:Way", ptr %l33, i32 0, i32 1
  %t918 = load i64, ptr %l41, !tbaa !24
  %t921 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s9, ptr %s28, ptr %t917, i64 %t918)
  store { i64, ptr } %t921, ptr %l394
  br label %bb158
bb158:
  %t922 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t923 = load i64, ptr %l41, !tbaa !24
  %t924 = load { i64, ptr }, ptr %l394, !tbaa !27
  %t925 = extractvalue { i64, ptr } %t924, 1
  %t926 = extractvalue { i64, ptr } %t924, 0
  %t927 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t928 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t929 = add i64 %t926, %t928
  %t931 = extractvalue { i64, ptr } %t922, 1
  %t932 = extractvalue { i64, ptr } %t922, 0
  %t933 = add i64 %t929, %t932
  %t934 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t935 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t936 = add i64 %t933, %t935
  %t938 = call i64 @__olang_fmt_i64(ptr null, i64 %t923)
  %t939 = add i64 %t936, %t938
  %t940 = load i64, ptr %l390
  %t941 = inttoptr i64 %t940 to ptr
  %t942 = call ptr @__olang_scope_alloc(ptr %t941, i64 %t939)
  call void @olang_textcopy(ptr %t942, ptr %t925, i64 %t926)
  %t943 = getelementptr i8, ptr %t942, i64 %t926
  call void @olang_textcopy(ptr %t943, ptr %t927, i64 %t928)
  %t944 = getelementptr i8, ptr %t943, i64 %t928
  call void @olang_textcopy(ptr %t944, ptr %t931, i64 %t932)
  %t945 = getelementptr i8, ptr %t944, i64 %t932
  call void @olang_textcopy(ptr %t945, ptr %t934, i64 %t935)
  %t946 = getelementptr i8, ptr %t945, i64 %t935
  %t947 = call i64 @__olang_fmt_i64(ptr %t946, i64 %t923)
  %t948 = insertvalue { i64, ptr } undef, i64 %t939, 0
  %t949 = insertvalue { i64, ptr } %t948, ptr %t942, 1
  %t951 = load i64, ptr %l390
  %t952 = inttoptr i64 %t951 to ptr
  %t953 = extractvalue { i64, ptr } %t949, 0
  %t954 = extractvalue { i64, ptr } %t949, 1
  %t955 = mul i64 %t953, 1
  %t956 = call ptr @__olang_scope_alloc(ptr %t952, i64 %t955)
  call void @llvm.memcpy.p0.p0.i64(ptr %t956, ptr %t954, i64 %t955, i1 false)
  %t957 = insertvalue { i64, ptr } undef, i64 %t953, 0
  %t958 = insertvalue { i64, ptr } %t957, ptr %t956, 1
  %t959 = load ptr, ptr %l389, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t959, { i64, ptr } %t958)
  br label %bb159
bb159:
  %t961 = getelementptr %"compiler/cabi:Way", ptr %l33, i32 0, i32 2
  %t962 = load i64, ptr %l41, !tbaa !24
  %t965 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s9, ptr %t961, i64 %t962)
  store i64 %t965, ptr %l401
  br label %bb160
bb160:
  %t966 = load i64, ptr %l401, !tbaa !24
  %t967 = icmp eq i64 %t966, 0
  br i1 %t967, label %bb161, label %bb162
bb161:
  %t969 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t969, ptr %l403, !tbaa !27
  br label %bb165
bb162:
  %t971 = load ptr, ptr %l11, !tbaa !29
  store ptr %t971, ptr %l405, !tbaa !29
  %t972 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t972, ptr %l406, !tbaa !27
  %t973 = getelementptr %"compiler/cabi:Way", ptr %l33, i32 0, i32 2
  %t974 = load i64, ptr %l41, !tbaa !24
  %t977 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s9, ptr %t973, i64 %t974)
  store i64 %t977, ptr %l409
  br label %bb163
bb163:
  %t978 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t979 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t980 = load { i64, ptr }, ptr %l406, !tbaa !27
  %t981 = extractvalue { i64, ptr } %t980, 1
  %t982 = extractvalue { i64, ptr } %t980, 0
  %t983 = add i64 %t979, %t982
  %t984 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t985 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t986 = add i64 %t983, %t985
  %t987 = load i64, ptr %l409, !tbaa !24
  %t988 = call i64 @__olang_fmt_i64(ptr null, i64 %t987)
  %t989 = add i64 %t986, %t988
  %t990 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t989)
  call void @olang_textcopy(ptr %t990, ptr %t978, i64 %t979)
  %t991 = getelementptr i8, ptr %t990, i64 %t979
  call void @olang_textcopy(ptr %t991, ptr %t981, i64 %t982)
  %t992 = getelementptr i8, ptr %t991, i64 %t982
  call void @olang_textcopy(ptr %t992, ptr %t984, i64 %t985)
  %t993 = getelementptr i8, ptr %t992, i64 %t985
  %t994 = call i64 @__olang_fmt_i64(ptr %t993, i64 %t987)
  %t995 = insertvalue { i64, ptr } undef, i64 %t989, 0
  %t996 = insertvalue { i64, ptr } %t995, ptr %t990, 1
  %t998 = extractvalue { i64, ptr } %t996, 0
  %t999 = extractvalue { i64, ptr } %t996, 1
  %t1000 = mul i64 %t998, 1
  %t1001 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1000)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1001, ptr %t999, i64 %t1000, i1 false)
  %t1002 = insertvalue { i64, ptr } undef, i64 %t998, 0
  %t1003 = insertvalue { i64, ptr } %t1002, ptr %t1001, 1
  %t1004 = load ptr, ptr %l405, !tbaa !29
  %t1006 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s28, ptr %s28, ptr %t1004, { i64, ptr } %t1003)
  store { i64, ptr } %t1006, ptr %l412
  br label %bb164
bb164:
  %t1007 = load { i64, ptr }, ptr %l412, !tbaa !27
  store { i64, ptr } %t1007, ptr %l403, !tbaa !27
  br label %bb165
bb165:
  %t1008 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t1009 = extractvalue { i64, ptr } %t1008, 0
  store i64 %t1009, ptr %l413, !tbaa !24
  %t1010 = load i64, ptr %l413, !tbaa !24
  %t1011 = mul i64 %t1010, 1
  %t1012 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1011)
  %t1013 = insertvalue { i64, ptr } undef, i64 %t1010, 0
  %t1014 = insertvalue { i64, ptr } %t1013, ptr %t1012, 1
  store { i64, ptr } %t1014, ptr %l414, !tbaa !27
  %t1015 = getelementptr { i64, ptr }, ptr %l414, i32 0, i32 1
  %t1016 = load ptr, ptr %t1015, !tbaa !27
  %t1017 = getelementptr { i64, ptr }, ptr %l403, i32 0, i32 1
  %t1018 = load ptr, ptr %t1017, !tbaa !27
  %t1019 = load i64, ptr %l413, !tbaa !24
  %t1020 = mul i64 %t1019, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1016, ptr %t1018, i64 %t1020, i1 false)
  %t1021 = load { i64, ptr }, ptr %l414, !tbaa !27
  store { i64, ptr } %t1021, ptr %l42, !tbaa !27
  %t1022 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1022, ptr %l415, !tbaa !29
  %t1023 = getelementptr %"compiler/cabi:Way", ptr %l33, i32 0, i32 1
  %t1024 = load i64, ptr %l41, !tbaa !24
  %t1027 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s9, ptr %s28, ptr %t1023, i64 %t1024)
  store { i64, ptr } %t1027, ptr %l418
  br label %bb166
bb166:
  %t1028 = load { i64, ptr }, ptr %l418, !tbaa !27
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l420, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l421, !tbaa !27
  %t1030 = load { i64, ptr }, ptr %l420, !tbaa !27
  %t1031 = load { i64, ptr }, ptr %l421, !tbaa !27
  %t1032 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s28, ptr %s28, ptr %s28, ptr %s28, { i64, ptr } %t1028, { i64, ptr } %t1030, { i64, ptr } %t1031)
  store { i64, ptr } %t1032, ptr %l422
  br label %bb167
bb167:
  %t1033 = load { i64, ptr }, ptr %l422, !tbaa !27
  %t1034 = extractvalue { i64, ptr } %t1033, 0
  store i64 %t1034, ptr %l423, !tbaa !24
  %t1035 = load i64, ptr %l423, !tbaa !24
  %t1036 = mul i64 %t1035, 1
  %t1037 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1036)
  %t1038 = insertvalue { i64, ptr } undef, i64 %t1035, 0
  %t1039 = insertvalue { i64, ptr } %t1038, ptr %t1037, 1
  store { i64, ptr } %t1039, ptr %l424, !tbaa !27
  %t1040 = getelementptr { i64, ptr }, ptr %l424, i32 0, i32 1
  %t1041 = load ptr, ptr %t1040, !tbaa !27
  %t1042 = getelementptr { i64, ptr }, ptr %l422, i32 0, i32 1
  %t1043 = load ptr, ptr %t1042, !tbaa !27
  %t1044 = load i64, ptr %l423, !tbaa !24
  %t1045 = mul i64 %t1044, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1041, ptr %t1043, i64 %t1045, i1 false)
  %t1046 = load { i64, ptr }, ptr %l424, !tbaa !27
  %t1048 = extractvalue { i64, ptr } %t1046, 0
  %t1049 = extractvalue { i64, ptr } %t1046, 1
  %t1050 = mul i64 %t1048, 1
  %t1051 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1050)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1051, ptr %t1049, i64 %t1050, i1 false)
  %t1052 = insertvalue { i64, ptr } undef, i64 %t1048, 0
  %t1053 = insertvalue { i64, ptr } %t1052, ptr %t1051, 1
  %t1054 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t1055 = load i64, ptr %l41, !tbaa !24
  %t1057 = extractvalue { i64, ptr } %t1054, 1
  %t1058 = extractvalue { i64, ptr } %t1054, 0
  %t1059 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t1060 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t1061 = add i64 %t1058, %t1060
  %t1063 = call i64 @__olang_fmt_i64(ptr null, i64 %t1055)
  %t1064 = add i64 %t1061, %t1063
  %t1065 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1064)
  call void @olang_textcopy(ptr %t1065, ptr %t1057, i64 %t1058)
  %t1066 = getelementptr i8, ptr %t1065, i64 %t1058
  call void @olang_textcopy(ptr %t1066, ptr %t1059, i64 %t1060)
  %t1067 = getelementptr i8, ptr %t1066, i64 %t1060
  %t1068 = call i64 @__olang_fmt_i64(ptr %t1067, i64 %t1055)
  %t1069 = insertvalue { i64, ptr } undef, i64 %t1064, 0
  %t1070 = insertvalue { i64, ptr } %t1069, ptr %t1065, 1
  %t1072 = extractvalue { i64, ptr } %t1070, 0
  %t1073 = extractvalue { i64, ptr } %t1070, 1
  %t1074 = mul i64 %t1072, 1
  %t1075 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1074)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1075, ptr %t1073, i64 %t1074, i1 false)
  %t1076 = insertvalue { i64, ptr } undef, i64 %t1072, 0
  %t1077 = insertvalue { i64, ptr } %t1076, ptr %t1075, 1
  %t1078 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t1079 = load ptr, ptr %l415, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s28, ptr %s28, ptr %s28, ptr %s28, ptr %t1079, { i64, ptr } %t1053, { i64, ptr } %t1077, { i64, ptr } %t1078, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s28)
  br label %bb169
bb169:
  %t1083 = load i64, ptr %l40, !tbaa !24
  %t1085 = add i64 %t1083, 1
  store i64 %t1085, ptr %l40, !tbaa !24
  br label %bb152
bb170:
  %t1087 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1087, ptr %l434, !tbaa !27
  %t1088 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t1089 = extractvalue { i64, ptr } %t1088, 0
  %t1090 = load { i64, ptr }, ptr %l434, !tbaa !27
  %t1091 = extractvalue { i64, ptr } %t1090, 0
  store i64 %t1091, ptr %l436, !tbaa !24
  %t1093 = load i64, ptr %l436, !tbaa !24
  %t1094 = icmp eq i64 %t1089, %t1093
  br i1 %t1094, label %bb171, label %bb172
bb171:
  %t1096 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t1097 = load ptr, ptr %t1096, !tbaa !27
  %t1098 = getelementptr { i64, ptr }, ptr %l434, i32 0, i32 1
  %t1099 = load ptr, ptr %t1098, !tbaa !27
  %t1100 = load i64, ptr %l436, !tbaa !24
  %t1101 = mul i64 %t1100, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1097, ptr %t1099, i64 %t1101, i1 false)
  br label %bb173
bb172:
  %t1102 = load { i64, ptr }, ptr %l434, !tbaa !27
  %t1103 = extractvalue { i64, ptr } %t1102, 0
  store i64 %t1103, ptr %l438, !tbaa !24
  %t1104 = load i64, ptr %l438, !tbaa !24
  %t1105 = mul i64 %t1104, 1
  %t1106 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t1105)
  %t1107 = insertvalue { i64, ptr } undef, i64 %t1104, 0
  %t1108 = insertvalue { i64, ptr } %t1107, ptr %t1106, 1
  store { i64, ptr } %t1108, ptr %l439, !tbaa !27
  %t1109 = getelementptr { i64, ptr }, ptr %l439, i32 0, i32 1
  %t1110 = load ptr, ptr %t1109, !tbaa !27
  %t1111 = getelementptr { i64, ptr }, ptr %l434, i32 0, i32 1
  %t1112 = load ptr, ptr %t1111, !tbaa !27
  %t1113 = load i64, ptr %l438, !tbaa !24
  %t1114 = mul i64 %t1113, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1110, ptr %t1112, i64 %t1114, i1 false)
  %t1115 = load { i64, ptr }, ptr %l439, !tbaa !27
  store { i64, ptr } %t1115, ptr %l30, !tbaa !27
  br label %bb173
bb173:
  call void @__olang_scope_close(ptr %s25)
  br label %bb192
bb174:
  %t1116 = load i32, ptr %l34, !range !{i32 0, i32 5}
  %t1118 = trunc i64 2 to i32
  %t1119 = icmp eq i32 %t1116, %t1118
  br i1 %t1119, label %bb175, label %bb176
bb175:
  br label %bb177
bb176:
  br label %bb184
bb177:
  store %olang.scope zeroinitializer, ptr %s33
  store ptr %l17, ptr %l442, !tbaa !29
  %t1121 = ptrtoint ptr %s0 to i64
  store i64 %t1121, ptr %l443, !tbaa !24
  %t1122 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1122, label %bb178, label %bb179
bb178:
  %t1124 = call ptr @__olang_region_make(ptr %s0)
  %t1125 = ptrtoint ptr %t1124 to i64
  store i64 %t1125, ptr %l443, !tbaa !24
  br label %bb179
bb179:
  %t1126 = load ptr, ptr %l0, !tbaa !29
  %t1127 = load i32, ptr %l28, !tbaa !23
  %t1130 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s33, ptr %t1126, i32 %t1127)
  store { i64, ptr } %t1130, ptr %l447
  br label %bb180
bb180:
  %t1131 = load ptr, ptr %l2, !tbaa !29
  %t1132 = load i32, ptr %l28, !tbaa !23
  %t1135 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t1131, i32 %t1132)
  store i64 %t1135, ptr %l450
  br label %bb181
bb181:
  %t1136 = load i64, ptr %l450, !tbaa !24
  %t1137 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t1136, i64 8)
  store i64 %t1137, ptr %l451
  br label %bb182
bb182:
  %t1138 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t1139 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t1140 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t1141 = load { i64, ptr }, ptr %l447, !tbaa !27
  %t1142 = extractvalue { i64, ptr } %t1141, 1
  %t1143 = extractvalue { i64, ptr } %t1141, 0
  %t1144 = add i64 %t1140, %t1143
  %t1145 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t1146 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t1147 = add i64 %t1144, %t1146
  %t1148 = load i64, ptr %l451, !tbaa !24
  %t1149 = call i64 @__olang_fmt_i64(ptr null, i64 %t1148)
  %t1150 = add i64 %t1147, %t1149
  %t1151 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t1152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t1153 = add i64 %t1150, %t1152
  %t1155 = extractvalue { i64, ptr } %t1138, 1
  %t1156 = extractvalue { i64, ptr } %t1138, 0
  %t1157 = add i64 %t1153, %t1156
  %t1158 = load i64, ptr %l443
  %t1159 = inttoptr i64 %t1158 to ptr
  %t1160 = call ptr @__olang_scope_alloc(ptr %t1159, i64 %t1157)
  call void @olang_textcopy(ptr %t1160, ptr %t1139, i64 %t1140)
  %t1161 = getelementptr i8, ptr %t1160, i64 %t1140
  call void @olang_textcopy(ptr %t1161, ptr %t1142, i64 %t1143)
  %t1162 = getelementptr i8, ptr %t1161, i64 %t1143
  call void @olang_textcopy(ptr %t1162, ptr %t1145, i64 %t1146)
  %t1163 = getelementptr i8, ptr %t1162, i64 %t1146
  %t1164 = call i64 @__olang_fmt_i64(ptr %t1163, i64 %t1148)
  %t1165 = getelementptr i8, ptr %t1163, i64 %t1149
  call void @olang_textcopy(ptr %t1165, ptr %t1151, i64 %t1152)
  %t1166 = getelementptr i8, ptr %t1165, i64 %t1152
  call void @olang_textcopy(ptr %t1166, ptr %t1155, i64 %t1156)
  %t1167 = insertvalue { i64, ptr } undef, i64 %t1157, 0
  %t1168 = insertvalue { i64, ptr } %t1167, ptr %t1160, 1
  %t1170 = load i64, ptr %l443
  %t1171 = inttoptr i64 %t1170 to ptr
  %t1172 = extractvalue { i64, ptr } %t1168, 0
  %t1173 = extractvalue { i64, ptr } %t1168, 1
  %t1174 = mul i64 %t1172, 1
  %t1175 = call ptr @__olang_scope_alloc(ptr %t1171, i64 %t1174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1175, ptr %t1173, i64 %t1174, i1 false)
  %t1176 = insertvalue { i64, ptr } undef, i64 %t1172, 0
  %t1177 = insertvalue { i64, ptr } %t1176, ptr %t1175, 1
  %t1178 = load ptr, ptr %l442, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t1178, { i64, ptr } %t1177)
  br label %bb183
bb183:
  call void @__olang_scope_close(ptr %s33)
  br label %bb192
bb184:
  br i1 true, label %bb185, label %bb186
bb185:
  br label %bb187
bb186:
  br label %bb191
bb187:
  store ptr %l17, ptr %l455, !tbaa !29
  %t1180 = ptrtoint ptr %s0 to i64
  store i64 %t1180, ptr %l456, !tbaa !24
  %t1181 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1181, label %bb188, label %bb189
bb188:
  %t1183 = call ptr @__olang_region_make(ptr %s0)
  %t1184 = ptrtoint ptr %t1183 to i64
  store i64 %t1184, ptr %l456, !tbaa !24
  br label %bb189
bb189:
  %t1185 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t1186 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t1187 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t1189 = extractvalue { i64, ptr } %t1185, 1
  %t1190 = extractvalue { i64, ptr } %t1185, 0
  %t1191 = add i64 %t1187, %t1190
  %t1192 = load i64, ptr %l456
  %t1193 = inttoptr i64 %t1192 to ptr
  %t1194 = call ptr @__olang_scope_alloc(ptr %t1193, i64 %t1191)
  call void @olang_textcopy(ptr %t1194, ptr %t1186, i64 %t1187)
  %t1195 = getelementptr i8, ptr %t1194, i64 %t1187
  call void @olang_textcopy(ptr %t1195, ptr %t1189, i64 %t1190)
  %t1196 = insertvalue { i64, ptr } undef, i64 %t1191, 0
  %t1197 = insertvalue { i64, ptr } %t1196, ptr %t1194, 1
  %t1199 = load i64, ptr %l456
  %t1200 = inttoptr i64 %t1199 to ptr
  %t1201 = extractvalue { i64, ptr } %t1197, 0
  %t1202 = extractvalue { i64, ptr } %t1197, 1
  %t1203 = mul i64 %t1201, 1
  %t1204 = call ptr @__olang_scope_alloc(ptr %t1200, i64 %t1203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1204, ptr %t1202, i64 %t1203, i1 false)
  %t1205 = insertvalue { i64, ptr } undef, i64 %t1201, 0
  %t1206 = insertvalue { i64, ptr } %t1205, ptr %t1204, 1
  %t1207 = load ptr, ptr %l455, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t1207, { i64, ptr } %t1206)
  br label %bb190
bb190:
  br label %bb192
bb191:
  call void @__olang_check_failed(ptr @olang_loc_ce3f793afe7e8735_eee0e2f7e7e28841)
  unreachable
bb192:
  %t1209 = load i64, ptr %l27, !tbaa !24
  %t1211 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t1212 = load ptr, ptr %t1211, !tbaa !27
  %t1213 = getelementptr i8, ptr %t1212, i64 %t1209
  %t1214 = load i8, ptr %t1213, !tbaa !32
  %t1216 = icmp eq i8 %t1214, 109
  br i1 %t1216, label %bb193, label %bb194
bb193:
  store %olang.scope zeroinitializer, ptr %s37
  %t1218 = load ptr, ptr %l11, !tbaa !29
  %t1219 = load i32, ptr %l28, !tbaa !23
  %t1222 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %s37, ptr %t1218, i32 %t1219)
  store { i64, ptr } %t1222, ptr %l466
  br label %bb195
bb194:
  store %olang.scope zeroinitializer, ptr %s39
  store ptr %l19, ptr %l479, !tbaa !29
  %t1223 = ptrtoint ptr %s0 to i64
  store i64 %t1223, ptr %l480, !tbaa !24
  %t1224 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1224, label %bb201, label %bb202
bb195:
  %t1226 = load { i64, ptr }, ptr %l466, !tbaa !27
  store { i64, ptr } %t1226, ptr %l43, !tbaa !27
  %t1227 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1227, ptr %l467, !tbaa !29
  %t1228 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t1228, ptr %l468, !tbaa !27
  %t1229 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t1229, ptr %l469, !tbaa !27
  %t1230 = load ptr, ptr %l2, !tbaa !29
  %t1231 = load i32, ptr %l28, !tbaa !23
  %t1234 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t1230, i32 %t1231)
  store i64 %t1234, ptr %l472
  br label %bb196
bb196:
  %t1235 = load ptr, ptr %l467, !tbaa !29
  %t1236 = load { i64, ptr }, ptr %l468, !tbaa !27
  %t1237 = load { i64, ptr }, ptr %l469, !tbaa !27
  %t1238 = load i64, ptr %l472, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %s37, ptr %s9, ptr %t1235, { i64, ptr } %t1236, { i64, ptr } %t1237, i64 %t1238)
  br label %bb197
bb197:
  store ptr %l19, ptr %l473, !tbaa !29
  %t1239 = ptrtoint ptr %s0 to i64
  store i64 %t1239, ptr %l474, !tbaa !24
  %t1240 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1240, label %bb198, label %bb199
bb198:
  %t1242 = call ptr @__olang_region_make(ptr %s0)
  %t1243 = ptrtoint ptr %t1242 to i64
  store i64 %t1243, ptr %l474, !tbaa !24
  br label %bb199
bb199:
  %t1244 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t1245 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t1246 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t1248 = extractvalue { i64, ptr } %t1244, 1
  %t1249 = extractvalue { i64, ptr } %t1244, 0
  %t1250 = add i64 %t1246, %t1249
  %t1251 = load i64, ptr %l474
  %t1252 = inttoptr i64 %t1251 to ptr
  %t1253 = call ptr @__olang_scope_alloc(ptr %t1252, i64 %t1250)
  call void @olang_textcopy(ptr %t1253, ptr %t1245, i64 %t1246)
  %t1254 = getelementptr i8, ptr %t1253, i64 %t1246
  call void @olang_textcopy(ptr %t1254, ptr %t1248, i64 %t1249)
  %t1255 = insertvalue { i64, ptr } undef, i64 %t1250, 0
  %t1256 = insertvalue { i64, ptr } %t1255, ptr %t1253, 1
  %t1258 = load i64, ptr %l474
  %t1259 = inttoptr i64 %t1258 to ptr
  %t1260 = extractvalue { i64, ptr } %t1256, 0
  %t1261 = extractvalue { i64, ptr } %t1256, 1
  %t1262 = mul i64 %t1260, 1
  %t1263 = call ptr @__olang_scope_alloc(ptr %t1259, i64 %t1262)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1263, ptr %t1261, i64 %t1262, i1 false)
  %t1264 = insertvalue { i64, ptr } undef, i64 %t1260, 0
  %t1265 = insertvalue { i64, ptr } %t1264, ptr %t1263, 1
  %t1266 = load ptr, ptr %l473, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t1266, { i64, ptr } %t1265)
  br label %bb200
bb200:
  call void @__olang_scope_close(ptr %s37)
  br label %bb207
bb201:
  %t1268 = call ptr @__olang_region_make(ptr %s0)
  %t1269 = ptrtoint ptr %t1268 to i64
  store i64 %t1269, ptr %l480, !tbaa !24
  br label %bb202
bb202:
  %t1270 = load ptr, ptr %l0, !tbaa !29
  %t1271 = load i32, ptr %l28, !tbaa !23
  %t1274 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s39, ptr %t1270, i32 %t1271)
  store { i64, ptr } %t1274, ptr %l484
  br label %bb203
bb203:
  %t1275 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1275, ptr %l485, !tbaa !29
  %t1276 = load ptr, ptr %l0, !tbaa !29
  %t1277 = load i32, ptr %l28, !tbaa !23
  %t1280 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s39, ptr %t1276, i32 %t1277)
  store { i64, ptr } %t1280, ptr %l488
  br label %bb204
bb204:
  %t1281 = load { i64, ptr }, ptr %l488, !tbaa !27
  %t1282 = extractvalue { i64, ptr } %t1281, 0
  %t1283 = extractvalue { i64, ptr } %t1281, 1
  %t1284 = mul i64 %t1282, 1
  %t1285 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t1284)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1285, ptr %t1283, i64 %t1284, i1 false)
  %t1286 = insertvalue { i64, ptr } undef, i64 %t1282, 0
  %t1287 = insertvalue { i64, ptr } %t1286, ptr %t1285, 1
  %t1288 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t1289 = load ptr, ptr %l485, !tbaa !29
  %t1292 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s39, ptr %s9, ptr %s39, ptr %s39, ptr %t1289, { i64, ptr } %t1287, { i64, ptr } %t1288, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store { i64, ptr } %t1292, ptr %l491
  br label %bb205
bb205:
  %t1293 = load { i64, ptr }, ptr %l484, !tbaa !27
  %t1294 = extractvalue { i64, ptr } %t1293, 1
  %t1295 = extractvalue { i64, ptr } %t1293, 0
  %t1296 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t1297 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t1298 = add i64 %t1295, %t1297
  %t1299 = load { i64, ptr }, ptr %l491, !tbaa !27
  %t1300 = extractvalue { i64, ptr } %t1299, 1
  %t1301 = extractvalue { i64, ptr } %t1299, 0
  %t1302 = add i64 %t1298, %t1301
  %t1303 = load i64, ptr %l480
  %t1304 = inttoptr i64 %t1303 to ptr
  %t1305 = call ptr @__olang_scope_alloc(ptr %t1304, i64 %t1302)
  call void @olang_textcopy(ptr %t1305, ptr %t1294, i64 %t1295)
  %t1306 = getelementptr i8, ptr %t1305, i64 %t1295
  call void @olang_textcopy(ptr %t1306, ptr %t1296, i64 %t1297)
  %t1307 = getelementptr i8, ptr %t1306, i64 %t1297
  call void @olang_textcopy(ptr %t1307, ptr %t1300, i64 %t1301)
  %t1308 = insertvalue { i64, ptr } undef, i64 %t1302, 0
  %t1309 = insertvalue { i64, ptr } %t1308, ptr %t1305, 1
  %t1311 = load i64, ptr %l480
  %t1312 = inttoptr i64 %t1311 to ptr
  %t1313 = extractvalue { i64, ptr } %t1309, 0
  %t1314 = extractvalue { i64, ptr } %t1309, 1
  %t1315 = mul i64 %t1313, 1
  %t1316 = call ptr @__olang_scope_alloc(ptr %t1312, i64 %t1315)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1316, ptr %t1314, i64 %t1315, i1 false)
  %t1317 = insertvalue { i64, ptr } undef, i64 %t1313, 0
  %t1318 = insertvalue { i64, ptr } %t1317, ptr %t1316, 1
  %t1319 = load ptr, ptr %l479, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t1319, { i64, ptr } %t1318)
  br label %bb206
bb206:
  call void @__olang_scope_close(ptr %s39)
  br label %bb207
bb207:
  call void @__olang_scope_close(ptr %s9)
  br label %bb208
bb208:
  %t1321 = load i64, ptr %l26, !tbaa !24
  %t1323 = add i64 %t1321, 1
  store i64 %t1323, ptr %l26, !tbaa !24
  br label %bb86
bb209:
  %t1325 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1325, ptr %l44, !tbaa !23
  %t1327 = load i1, ptr %l15, !tbaa !21
  br i1 %t1327, label %bb210, label %bb211
bb210:
  %t1329 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1329, ptr %l498, !tbaa !29
  %t1330 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1330, ptr %l499, !tbaa !29
  %t1331 = load ptr, ptr %l0, !tbaa !29
  %t1332 = load i32, ptr %l12, !tbaa !23
  %t1335 = call i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2earrayOfE(ptr %v0, ptr %t1331, i32 %t1332)
  store i32 %t1335, ptr %l502
  br label %bb212
bb211:
  %t1336 = load i1, ptr %l14, !tbaa !21
  br i1 %t1336, label %bb222, label %bb223
bb212:
  %t1338 = load ptr, ptr %l499, !tbaa !29
  %t1339 = load i32, ptr %l502, !tbaa !23
  %t1340 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1338, i32 %t1339)
  store i32 %t1340, ptr %l503
  br label %bb213
bb213:
  %t1341 = load ptr, ptr %l498, !tbaa !29
  %t1342 = load i32, ptr %l503, !tbaa !23
  %t1343 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t1341, i32 %t1342)
  store i32 %t1343, ptr %l504
  br label %bb214
bb214:
  %t1344 = load i32, ptr %l504, !tbaa !23
  store i32 %t1344, ptr %l44, !tbaa !23
  %t1345 = load ptr, ptr %l3, !tbaa !29
  %t1346 = load i32, ptr %l44, !tbaa !23
  %t1349 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t1345, i32 %t1346)
  store i1 %t1349, ptr %l507
  br label %bb215
bb215:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb216
bb216:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb217
bb217:
  %t1352 = load i1, ptr %l14, !tbaa !21
  br i1 %t1352, label %bb218, label %bb219
bb218:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb220
bb219:
  br label %bb221
bb220:
  br label %bb221
bb221:
  br label %bb229
bb222:
  %t1355 = load i1, ptr %l13, !tbaa !21
  store i1 %t1355, ptr %l513, !tbaa !21
  br label %bb224
bb223:
  store i1 false, ptr %l513, !tbaa !21
  br label %bb224
bb224:
  %t1357 = load i1, ptr %l513, !tbaa !21
  br i1 %t1357, label %bb225, label %bb226
bb225:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l17, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb227
bb226:
  br label %bb228
bb227:
  br label %bb228
bb228:
  br label %bb229
bb229:
  %t1359 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t1359, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d45, i32 0, i32 1) }, { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb230
bb230:
  %t1361 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t1361, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb231
bb231:
  %t1363 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t1363, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d48, i32 0, i32 1) })
  br label %bb232
bb232:
  %t1365 = load ptr, ptr %l11, !tbaa !29
  %t1367 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1365, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store { i64, ptr } %t1367, ptr %l520
  br label %bb233
bb233:
  %t1368 = load { i64, ptr }, ptr %l520, !tbaa !27
  %t1369 = load ptr, ptr %l11, !tbaa !29
  %t1371 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t1372 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t1374 = extractvalue { i64, ptr } %t1368, 1
  %t1375 = extractvalue { i64, ptr } %t1368, 0
  %t1376 = add i64 %t1372, %t1375
  %t1377 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t1378 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t1379 = add i64 %t1376, %t1378
  %t1380 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1379)
  call void @olang_textcopy(ptr %t1380, ptr %t1371, i64 %t1372)
  %t1381 = getelementptr i8, ptr %t1380, i64 %t1372
  call void @olang_textcopy(ptr %t1381, ptr %t1374, i64 %t1375)
  %t1382 = getelementptr i8, ptr %t1381, i64 %t1375
  call void @olang_textcopy(ptr %t1382, ptr %t1377, i64 %t1378)
  %t1383 = insertvalue { i64, ptr } undef, i64 %t1379, 0
  %t1384 = insertvalue { i64, ptr } %t1383, ptr %t1380, 1
  %t1386 = extractvalue { i64, ptr } %t1384, 0
  %t1387 = extractvalue { i64, ptr } %t1384, 1
  %t1388 = mul i64 %t1386, 1
  %t1389 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1388)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1389, ptr %t1387, i64 %t1388, i1 false)
  %t1390 = insertvalue { i64, ptr } undef, i64 %t1386, 0
  %t1391 = insertvalue { i64, ptr } %t1390, ptr %t1389, 1
  %t1394 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1369, { i64, ptr } %t1391)
  store { i64, ptr } %t1394, ptr %l525
  br label %bb234
bb234:
  %t1395 = load { i64, ptr }, ptr %l525, !tbaa !27
  %t1396 = load ptr, ptr %l11, !tbaa !29
  %t1398 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t1399 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t1401 = extractvalue { i64, ptr } %t1395, 1
  %t1402 = extractvalue { i64, ptr } %t1395, 0
  %t1403 = add i64 %t1399, %t1402
  %t1404 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t1405 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t1406 = add i64 %t1403, %t1405
  %t1407 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1406)
  call void @olang_textcopy(ptr %t1407, ptr %t1398, i64 %t1399)
  %t1408 = getelementptr i8, ptr %t1407, i64 %t1399
  call void @olang_textcopy(ptr %t1408, ptr %t1401, i64 %t1402)
  %t1409 = getelementptr i8, ptr %t1408, i64 %t1402
  call void @olang_textcopy(ptr %t1409, ptr %t1404, i64 %t1405)
  %t1410 = insertvalue { i64, ptr } undef, i64 %t1406, 0
  %t1411 = insertvalue { i64, ptr } %t1410, ptr %t1407, 1
  %t1413 = extractvalue { i64, ptr } %t1411, 0
  %t1414 = extractvalue { i64, ptr } %t1411, 1
  %t1415 = mul i64 %t1413, 1
  %t1416 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1415)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1416, ptr %t1414, i64 %t1415, i1 false)
  %t1417 = insertvalue { i64, ptr } undef, i64 %t1413, 0
  %t1418 = insertvalue { i64, ptr } %t1417, ptr %t1416, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t1396, { i64, ptr } %t1418)
  br label %bb235
bb235:
  %t1421 = load ptr, ptr %l11, !tbaa !29
  %t1423 = getelementptr %"compiler/emit:fnEm", ptr %t1421, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t1423, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d54, i32 0, i32 1) })
  br label %bb236
bb236:
  %t1425 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t1425, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d55, i32 0, i32 1) })
  br label %bb237
bb237:
  %t1427 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t1427, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d56, i32 0, i32 1) })
  br label %bb238
bb238:
  %t1429 = load ptr, ptr %l11, !tbaa !29
  %t1431 = getelementptr %"compiler/emit:fnEm", ptr %t1429, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t1431, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb239
bb239:
  %t1433 = load ptr, ptr %l11, !tbaa !29
  %t1435 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s0, ptr %s0, ptr %t1433, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d58, i32 0, i32 1) }, i64 8)
  store { i64, ptr } %t1435, ptr %l537
  br label %bb240
bb240:
  %t1436 = load { i64, ptr }, ptr %l537, !tbaa !27
  store { i64, ptr } %t1436, ptr %l47, !tbaa !27
  %t1437 = load ptr, ptr %l11, !tbaa !29
  %t1438 = load { i64, ptr }, ptr %l47, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t1437, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d59, i32 0, i32 1) }, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d60, i32 0, i32 1) }, { i64, ptr } %t1438, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb241
bb241:
  %t1441 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1441, ptr %l540
  br label %bb242
bb242:
  %t1442 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l540
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1442, ptr %l48
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l541, !tbaa !27
  %t1443 = load { i64, ptr }, ptr %l541, !tbaa !27
  store { i64, ptr } %t1443, ptr %l542, !tbaa !27
  %t1444 = load { i64, ptr }, ptr %l542, !tbaa !27
  %t1445 = extractvalue { i64, ptr } %t1444, 0
  store i64 %t1445, ptr %l543, !tbaa !24
  %t1446 = load i64, ptr %l543, !tbaa !24
  %t1447 = mul i64 %t1446, 1
  %t1448 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1447)
  %t1449 = insertvalue { i64, ptr } undef, i64 %t1446, 0
  %t1450 = insertvalue { i64, ptr } %t1449, ptr %t1448, 1
  store { i64, ptr } %t1450, ptr %l544, !tbaa !27
  %t1451 = getelementptr { i64, ptr }, ptr %l544, i32 0, i32 1
  %t1452 = load ptr, ptr %t1451, !tbaa !27
  %t1453 = getelementptr { i64, ptr }, ptr %l542, i32 0, i32 1
  %t1454 = load ptr, ptr %t1453, !tbaa !27
  %t1455 = load i64, ptr %l543, !tbaa !24
  %t1456 = mul i64 %t1455, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1452, ptr %t1454, i64 %t1456, i1 false)
  %t1457 = load { i64, ptr }, ptr %l544, !tbaa !27
  store { i64, ptr } %t1457, ptr %l49, !tbaa !27
  %t1458 = load i1, ptr %l13, !tbaa !21
  br i1 %t1458, label %bb243, label %bb244
bb243:
  %t1460 = load ptr, ptr %l2, !tbaa !29
  %t1461 = load i32, ptr %l12, !tbaa !23
  %t1464 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t1460, i32 %t1461)
  store i1 %t1464, ptr %l549
  br label %bb245
bb244:
  store i1 false, ptr %l546, !tbaa !21
  br label %bb246
bb245:
  %t1465 = load i1, ptr %l549, !tbaa !21
  store i1 %t1465, ptr %l546, !tbaa !21
  br label %bb246
bb246:
  %t1466 = load i1, ptr %l546, !tbaa !21
  br i1 %t1466, label %bb247, label %bb248
bb247:
  %t1467 = load ptr, ptr %l11, !tbaa !29
  %t1468 = load i32, ptr %l12, !tbaa !23
  %t1471 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %s0, ptr %t1467, i32 %t1468)
  store { i64, ptr } %t1471, ptr %l552
  br label %bb249
bb248:
  br label %bb256
bb249:
  %t1472 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1473 = extractvalue { i64, ptr } %t1472, 0
  %t1474 = load { i64, ptr }, ptr %l552, !tbaa !27
  %t1475 = extractvalue { i64, ptr } %t1474, 0
  store i64 %t1475, ptr %l554, !tbaa !24
  %t1477 = load i64, ptr %l554, !tbaa !24
  %t1478 = icmp eq i64 %t1473, %t1477
  br i1 %t1478, label %bb250, label %bb251
bb250:
  %t1480 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t1481 = load ptr, ptr %t1480, !tbaa !27
  %t1482 = getelementptr { i64, ptr }, ptr %l552, i32 0, i32 1
  %t1483 = load ptr, ptr %t1482, !tbaa !27
  %t1484 = load i64, ptr %l554, !tbaa !24
  %t1485 = mul i64 %t1484, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1481, ptr %t1483, i64 %t1485, i1 false)
  br label %bb252
bb251:
  %t1486 = load { i64, ptr }, ptr %l552, !tbaa !27
  store { i64, ptr } %t1486, ptr %l49, !tbaa !27
  br label %bb252
bb252:
  store ptr %l48, ptr %l556, !tbaa !29
  %t1487 = ptrtoint ptr %s0 to i64
  store i64 %t1487, ptr %l557, !tbaa !24
  %t1488 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1488, label %bb253, label %bb254
bb253:
  %t1490 = call ptr @__olang_region_make(ptr %s0)
  %t1491 = ptrtoint ptr %t1490 to i64
  store i64 %t1491, ptr %l557, !tbaa !24
  br label %bb254
bb254:
  %t1492 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1493 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t1494 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t1496 = extractvalue { i64, ptr } %t1492, 1
  %t1497 = extractvalue { i64, ptr } %t1492, 0
  %t1498 = add i64 %t1494, %t1497
  %t1499 = load i64, ptr %l557
  %t1500 = inttoptr i64 %t1499 to ptr
  %t1501 = call ptr @__olang_scope_alloc(ptr %t1500, i64 %t1498)
  call void @olang_textcopy(ptr %t1501, ptr %t1493, i64 %t1494)
  %t1502 = getelementptr i8, ptr %t1501, i64 %t1494
  call void @olang_textcopy(ptr %t1502, ptr %t1496, i64 %t1497)
  %t1503 = insertvalue { i64, ptr } undef, i64 %t1498, 0
  %t1504 = insertvalue { i64, ptr } %t1503, ptr %t1501, 1
  %t1506 = load i64, ptr %l557
  %t1507 = inttoptr i64 %t1506 to ptr
  %t1508 = extractvalue { i64, ptr } %t1504, 0
  %t1509 = extractvalue { i64, ptr } %t1504, 1
  %t1510 = mul i64 %t1508, 1
  %t1511 = call ptr @__olang_scope_alloc(ptr %t1507, i64 %t1510)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1511, ptr %t1509, i64 %t1510, i1 false)
  %t1512 = insertvalue { i64, ptr } undef, i64 %t1508, 0
  %t1513 = insertvalue { i64, ptr } %t1512, ptr %t1511, 1
  %t1514 = load ptr, ptr %l556, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t1514, { i64, ptr } %t1513)
  br label %bb255
bb255:
  br label %bb256
bb256:
  store i64 0, ptr %l50, !tbaa !24
  %t1516 = load ptr, ptr %l2, !tbaa !29
  %t1517 = load { i64, [2 x i64] }, ptr %l10
  %t1518 = load i32, ptr %l9, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t1519
  %t1520 = getelementptr { i64, [7 x i64] }, ptr %t1519, i32 0, i32 0
  store i64 0, ptr %t1520
  %t1522 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t1517, 0
  %t1524 = insertvalue { { i64, [2 x i64] }, i32 } %t1522, i32 %t1518, 1
  %t1525 = getelementptr { i64, [7 x i64] }, ptr %t1519, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t1524, ptr %t1525
  %t1526 = load { i64, [7 x i64] }, ptr %t1519
  %t1527 = load i32, ptr %l9, !tbaa !23
  %t1531 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t1516, { i64, [7 x i64] } %t1526, i32 %t1527)
  store i64 %t1531, ptr %l567
  br label %bb257
bb257:
  %t1532 = load i64, ptr %l567, !tbaa !24
  store i64 %t1532, ptr %l51, !tbaa !24
  store i64 1, ptr %l52, !tbaa !24
  %t1533 = load i64, ptr %l51, !tbaa !24
  %t1534 = load i64, ptr %l50, !tbaa !24
  %t1537 = icmp sgt i64 %t1533, %t1534
  br i1 %t1537, label %bb258, label %bb259
bb258:
  %t1539 = load i64, ptr %l52, !tbaa !24
  %t1541 = icmp sgt i64 %t1539, 0
  br i1 %t1541, label %bb260, label %bb261
bb259:
  store i64 0, ptr %l571, !tbaa !24
  br label %bb263
bb260:
  %t1543 = load i64, ptr %l51, !tbaa !24
  %t1544 = load i64, ptr %l50, !tbaa !24
  %t1547 = sub i64 %t1543, %t1544
  %t1548 = load i64, ptr %l52, !tbaa !24
  %t1551 = add i64 %t1547, %t1548
  %t1553 = sub i64 %t1551, 1
  %t1554 = load i64, ptr %l52, !tbaa !24
  %t1557 = sdiv i64 %t1553, %t1554
  store i64 %t1557, ptr %l574, !tbaa !24
  br label %bb262
bb261:
  store i64 0, ptr %l574, !tbaa !24
  br label %bb262
bb262:
  %t1559 = load i64, ptr %l574, !tbaa !24
  store i64 %t1559, ptr %l571, !tbaa !24
  br label %bb263
bb263:
  %t1560 = load i64, ptr %l571, !tbaa !24
  store i64 %t1560, ptr %l53, !tbaa !24
  store i64 0, ptr %l54, !tbaa !24
  br label %bb264
bb264:
  %t1561 = load i64, ptr %l54, !tbaa !24
  %t1562 = load i64, ptr %l53, !tbaa !24
  %t1565 = icmp slt i64 %t1561, %t1562
  %t1567 = xor i1 %t1565, true
  br i1 %t1567, label %bb265, label %bb266
bb265:
  br label %bb272
bb266:
  br label %bb267
bb267:
  %t1569 = load i64, ptr %l50, !tbaa !24
  %t1570 = load i64, ptr %l54, !tbaa !24
  %t1571 = load i64, ptr %l52, !tbaa !24
  %t1574 = mul i64 %t1570, %t1571
  %t1577 = add i64 %t1569, %t1574
  store i64 %t1577, ptr %l55, !tbaa !24
  store ptr %l48, ptr %l592, !tbaa !29
  %t1579 = ptrtoint ptr %s0 to i64
  store i64 %t1579, ptr %l593, !tbaa !24
  %t1580 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t1580, label %bb268, label %bb269
bb268:
  %t1582 = call ptr @__olang_region_make(ptr %s0)
  %t1583 = ptrtoint ptr %t1582 to i64
  store i64 %t1583, ptr %l593, !tbaa !24
  br label %bb269
bb269:
  %t1584 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t1585 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t1586 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t1588 = extractvalue { i64, ptr } %t1584, 1
  %t1589 = extractvalue { i64, ptr } %t1584, 0
  %t1590 = add i64 %t1586, %t1589
  %t1591 = load i64, ptr %l593
  %t1592 = inttoptr i64 %t1591 to ptr
  %t1593 = call ptr @__olang_scope_alloc(ptr %t1592, i64 %t1590)
  call void @olang_textcopy(ptr %t1593, ptr %t1585, i64 %t1586)
  %t1594 = getelementptr i8, ptr %t1593, i64 %t1586
  call void @olang_textcopy(ptr %t1594, ptr %t1588, i64 %t1589)
  %t1595 = insertvalue { i64, ptr } undef, i64 %t1590, 0
  %t1596 = insertvalue { i64, ptr } %t1595, ptr %t1593, 1
  %t1598 = load i64, ptr %l593
  %t1599 = inttoptr i64 %t1598 to ptr
  %t1600 = extractvalue { i64, ptr } %t1596, 0
  %t1601 = extractvalue { i64, ptr } %t1596, 1
  %t1602 = mul i64 %t1600, 1
  %t1603 = call ptr @__olang_scope_alloc(ptr %t1599, i64 %t1602)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1603, ptr %t1601, i64 %t1602, i1 false)
  %t1604 = insertvalue { i64, ptr } undef, i64 %t1600, 0
  %t1605 = insertvalue { i64, ptr } %t1604, ptr %t1603, 1
  %t1606 = load ptr, ptr %l592, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t1606, { i64, ptr } %t1605)
  br label %bb270
bb270:
  br label %bb271
bb271:
  %t1608 = load i64, ptr %l54, !tbaa !24
  %t1610 = add i64 %t1608, 1
  store i64 %t1610, ptr %l54, !tbaa !24
  br label %bb264
bb272:
  store i64 0, ptr %l56, !tbaa !24
  %t1612 = load ptr, ptr %l0, !tbaa !29
  %t1614 = getelementptr %"compiler/emit:Emitter", ptr %t1612, i32 0, i32 1
  %t1615 = load ptr, ptr %t1614, !tbaa !29
  %t1616 = load { i64, [2 x i64] }, ptr %l10
  %t1619 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDerivedN(ptr %v0, ptr %t1615, { i64, [2 x i64] } %t1616)
  store i64 %t1619, ptr %l603
  br label %bb273
bb273:
  %t1620 = load i64, ptr %l603, !tbaa !24
  store i64 %t1620, ptr %l57, !tbaa !24
  store i64 1, ptr %l58, !tbaa !24
  %t1621 = load i64, ptr %l57, !tbaa !24
  %t1622 = load i64, ptr %l56, !tbaa !24
  %t1625 = icmp sgt i64 %t1621, %t1622
  br i1 %t1625, label %bb274, label %bb275
bb274:
  %t1627 = load i64, ptr %l58, !tbaa !24
  %t1629 = icmp sgt i64 %t1627, 0
  br i1 %t1629, label %bb276, label %bb277
bb275:
  store i64 0, ptr %l607, !tbaa !24
  br label %bb279
bb276:
  %t1631 = load i64, ptr %l57, !tbaa !24
  %t1632 = load i64, ptr %l56, !tbaa !24
  %t1635 = sub i64 %t1631, %t1632
  %t1636 = load i64, ptr %l58, !tbaa !24
  %t1639 = add i64 %t1635, %t1636
  %t1641 = sub i64 %t1639, 1
  %t1642 = load i64, ptr %l58, !tbaa !24
  %t1645 = sdiv i64 %t1641, %t1642
  store i64 %t1645, ptr %l610, !tbaa !24
  br label %bb278
bb277:
  store i64 0, ptr %l610, !tbaa !24
  br label %bb278
bb278:
  %t1647 = load i64, ptr %l610, !tbaa !24
  store i64 %t1647, ptr %l607, !tbaa !24
  br label %bb279
bb279:
  %t1648 = load i64, ptr %l607, !tbaa !24
  store i64 %t1648, ptr %l59, !tbaa !24
  store i64 0, ptr %l60, !tbaa !24
  br label %bb280
bb280:
  %t1649 = load i64, ptr %l60, !tbaa !24
  %t1650 = load i64, ptr %l59, !tbaa !24
  %t1653 = icmp slt i64 %t1649, %t1650
  %t1655 = xor i1 %t1653, true
  br i1 %t1655, label %bb281, label %bb282
bb281:
  br label %bb286
bb282:
  br label %bb283
bb283:
  %t1657 = load i64, ptr %l56, !tbaa !24
  %t1658 = load i64, ptr %l60, !tbaa !24
  %t1659 = load i64, ptr %l58, !tbaa !24
  %t1662 = mul i64 %t1658, %t1659
  %t1665 = add i64 %t1657, %t1662
  store i64 %t1665, ptr %l61, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l48, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb284
bb284:
  br label %bb285
bb285:
  %t1668 = load i64, ptr %l60, !tbaa !24
  %t1670 = add i64 %t1668, 1
  store i64 %t1670, ptr %l60, !tbaa !24
  br label %bb280
bb286:
  store ptr %l19, ptr %l62, !tbaa !29
  store i64 0, ptr %l63, !tbaa !24
  br label %bb287
bb287:
  %t1673 = load i64, ptr %l63, !tbaa !24
  store i64 %t1673, ptr %l632, !tbaa !24
  %t1674 = load ptr, ptr %l62, !tbaa !29
  %t1676 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t1674)
  store i64 %t1676, ptr %l634
  br label %bb288
bb288:
  %t1677 = load i64, ptr %l632, !tbaa !24
  %t1678 = load i64, ptr %l634, !tbaa !24
  %t1679 = icmp slt i64 %t1677, %t1678
  %t1681 = xor i1 %t1679, true
  br i1 %t1681, label %bb289, label %bb290
bb289:
  br label %bb295
bb290:
  br label %bb291
bb291:
  %t1683 = load ptr, ptr %l62, !tbaa !29
  %t1684 = load i64, ptr %l63, !tbaa !24
  %t1687 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t1683, i64 %t1684)
  store { i64, ptr } %t1687, ptr %l639
  br label %bb292
bb292:
  %t1688 = load { i64, ptr }, ptr %l639, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l48, { i64, ptr } %t1688)
  br label %bb293
bb293:
  br label %bb294
bb294:
  %t1692 = load i64, ptr %l63, !tbaa !24
  %t1694 = add i64 %t1692, 1
  store i64 %t1694, ptr %l63, !tbaa !24
  br label %bb287
bb295:
  %t1696 = load ptr, ptr %l2, !tbaa !29
  %t1697 = load i32, ptr %l9, !tbaa !23
  %t1699 = inttoptr i64 0 to ptr
  %t1702 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t1699, ptr %t1696, i32 %t1697)
  store { i64, ptr } %t1702, ptr %l647
  br label %bb296
bb296:
  %t1703 = load { i64, ptr }, ptr %l647, !tbaa !27
  store { i64, ptr } %t1703, ptr %l65, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l648, !tbaa !27
  %t1704 = load { i64, ptr }, ptr %l648, !tbaa !27
  store { i64, ptr } %t1704, ptr %l649, !tbaa !27
  %t1705 = load { i64, ptr }, ptr %l649, !tbaa !27
  %t1706 = extractvalue { i64, ptr } %t1705, 0
  store i64 %t1706, ptr %l650, !tbaa !24
  %t1707 = load i64, ptr %l650, !tbaa !24
  %t1708 = mul i64 %t1707, 1
  %t1709 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1708)
  %t1710 = insertvalue { i64, ptr } undef, i64 %t1707, 0
  %t1711 = insertvalue { i64, ptr } %t1710, ptr %t1709, 1
  store { i64, ptr } %t1711, ptr %l651, !tbaa !27
  %t1712 = getelementptr { i64, ptr }, ptr %l651, i32 0, i32 1
  %t1713 = load ptr, ptr %t1712, !tbaa !27
  %t1714 = getelementptr { i64, ptr }, ptr %l649, i32 0, i32 1
  %t1715 = load ptr, ptr %t1714, !tbaa !27
  %t1716 = load i64, ptr %l650, !tbaa !24
  %t1717 = mul i64 %t1716, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1713, ptr %t1715, i64 %t1717, i1 false)
  %t1718 = load { i64, ptr }, ptr %l651, !tbaa !27
  store { i64, ptr } %t1718, ptr %l66, !tbaa !27
  %t1719 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1719, ptr %l652
  br label %bb297
bb297:
  %t1720 = load %"std/prelude/text:StringBuilder", ptr %l652
  store %"std/prelude/text:StringBuilder" %t1720, ptr %l67
  store ptr %l48, ptr %l68, !tbaa !29
  store i64 0, ptr %l69, !tbaa !24
  br label %bb298
bb298:
  %t1722 = load i64, ptr %l69, !tbaa !24
  store i64 %t1722, ptr %l654, !tbaa !24
  %t1723 = load ptr, ptr %l68, !tbaa !29
  %t1725 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t1723)
  store i64 %t1725, ptr %l656
  br label %bb299
bb299:
  %t1726 = load i64, ptr %l654, !tbaa !24
  %t1727 = load i64, ptr %l656, !tbaa !24
  %t1728 = icmp slt i64 %t1726, %t1727
  %t1730 = xor i1 %t1728, true
  br i1 %t1730, label %bb300, label %bb301
bb300:
  br label %bb310
bb301:
  br label %bb302
bb302:
  %t1732 = load i64, ptr %l69, !tbaa !24
  store i64 %t1732, ptr %l70, !tbaa !24
  %t1734 = load ptr, ptr %l68, !tbaa !29
  %t1735 = load i64, ptr %l69, !tbaa !24
  %t1738 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t1734, i64 %t1735)
  store { i64, ptr } %t1738, ptr %l662
  br label %bb303
bb303:
  %t1739 = load { i64, ptr }, ptr %l662, !tbaa !27
  store { i64, ptr } %t1739, ptr %l71, !tbaa !27
  %t1740 = load i64, ptr %l70, !tbaa !24
  %t1742 = icmp sgt i64 %t1740, 0
  br i1 %t1742, label %bb304, label %bb305
bb304:
  store %olang.scope zeroinitializer, ptr %s62
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s62, ptr %l67, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) })
  br label %bb306
bb305:
  br label %bb307
bb306:
  call void @__olang_scope_close(ptr %s62)
  br label %bb307
bb307:
  %t1745 = load { i64, ptr }, ptr %l71, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l67, { i64, ptr } %t1745)
  br label %bb308
bb308:
  br label %bb309
bb309:
  %t1748 = load i64, ptr %l69, !tbaa !24
  %t1750 = add i64 %t1748, 1
  store i64 %t1750, ptr %l69, !tbaa !24
  br label %bb298
bb310:
  %t1752 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t1754 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t1752, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i1 %t1754, ptr %l671
  br label %bb311
bb311:
  %t1755 = load i1, ptr %l671, !tbaa !21
  br i1 %t1755, label %bb312, label %bb313
bb312:
  store %olang.scope zeroinitializer, ptr %s64
  %t1756 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1756, ptr %l672, !tbaa !29
  %t1757 = load ptr, ptr %l0, !tbaa !29
  %t1758 = load { i64, [2 x i64] }, ptr %l10
  %t1761 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s64, ptr %t1757, { i64, [2 x i64] } %t1758)
  store { i64, ptr } %t1761, ptr %l675
  br label %bb314
bb313:
  store %olang.scope zeroinitializer, ptr %s66
  %t1762 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1762, ptr %l680, !tbaa !29
  %t1763 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t1763, ptr %l681, !tbaa !27
  %t1764 = load ptr, ptr %l0, !tbaa !29
  %t1765 = load { i64, [2 x i64] }, ptr %l10
  %t1768 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s66, ptr %t1764, { i64, [2 x i64] } %t1765)
  store { i64, ptr } %t1768, ptr %l684
  br label %bb317
bb314:
  %t1770 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s64, ptr %l67)
  store { i64, ptr } %t1770, ptr %l677
  br label %bb315
bb315:
  %t1771 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t1772 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t1773 = load { i64, ptr }, ptr %l675, !tbaa !27
  %t1774 = extractvalue { i64, ptr } %t1773, 1
  %t1775 = extractvalue { i64, ptr } %t1773, 0
  %t1776 = add i64 %t1772, %t1775
  %t1777 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t1778 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t1779 = add i64 %t1776, %t1778
  %t1780 = load { i64, ptr }, ptr %l677, !tbaa !27
  %t1781 = extractvalue { i64, ptr } %t1780, 1
  %t1782 = extractvalue { i64, ptr } %t1780, 0
  %t1783 = add i64 %t1779, %t1782
  %t1784 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t1785 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t1786 = add i64 %t1783, %t1785
  %t1787 = call ptr @__olang_scope_alloc(ptr %s64, i64 %t1786)
  call void @olang_textcopy(ptr %t1787, ptr %t1771, i64 %t1772)
  %t1788 = getelementptr i8, ptr %t1787, i64 %t1772
  call void @olang_textcopy(ptr %t1788, ptr %t1774, i64 %t1775)
  %t1789 = getelementptr i8, ptr %t1788, i64 %t1775
  call void @olang_textcopy(ptr %t1789, ptr %t1777, i64 %t1778)
  %t1790 = getelementptr i8, ptr %t1789, i64 %t1778
  call void @olang_textcopy(ptr %t1790, ptr %t1781, i64 %t1782)
  %t1791 = getelementptr i8, ptr %t1790, i64 %t1782
  call void @olang_textcopy(ptr %t1791, ptr %t1784, i64 %t1785)
  %t1792 = insertvalue { i64, ptr } undef, i64 %t1786, 0
  %t1793 = insertvalue { i64, ptr } %t1792, ptr %t1787, 1
  %t1795 = extractvalue { i64, ptr } %t1793, 0
  %t1796 = extractvalue { i64, ptr } %t1793, 1
  %t1797 = mul i64 %t1795, 1
  %t1798 = call ptr @__olang_scope_alloc(ptr %s64, i64 %t1797)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1798, ptr %t1796, i64 %t1797, i1 false)
  %t1799 = insertvalue { i64, ptr } undef, i64 %t1795, 0
  %t1800 = insertvalue { i64, ptr } %t1799, ptr %t1798, 1
  %t1801 = load ptr, ptr %l672, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s64, ptr %t1801, { i64, ptr } %t1800)
  br label %bb316
bb316:
  call void @__olang_scope_close(ptr %s64)
  br label %bb323
bb317:
  %t1804 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s66, ptr %l67)
  store { i64, ptr } %t1804, ptr %l686
  br label %bb318
bb318:
  %t1805 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t1806 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t1807 = load { i64, ptr }, ptr %l681, !tbaa !27
  %t1808 = extractvalue { i64, ptr } %t1807, 1
  %t1809 = extractvalue { i64, ptr } %t1807, 0
  %t1810 = add i64 %t1806, %t1809
  %t1811 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t1812 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t1813 = add i64 %t1810, %t1812
  %t1814 = load { i64, ptr }, ptr %l684, !tbaa !27
  %t1815 = extractvalue { i64, ptr } %t1814, 1
  %t1816 = extractvalue { i64, ptr } %t1814, 0
  %t1817 = add i64 %t1813, %t1816
  %t1818 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t1819 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t1820 = add i64 %t1817, %t1819
  %t1821 = load { i64, ptr }, ptr %l686, !tbaa !27
  %t1822 = extractvalue { i64, ptr } %t1821, 1
  %t1823 = extractvalue { i64, ptr } %t1821, 0
  %t1824 = add i64 %t1820, %t1823
  %t1825 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t1826 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t1827 = add i64 %t1824, %t1826
  %t1828 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1827)
  call void @olang_textcopy(ptr %t1828, ptr %t1805, i64 %t1806)
  %t1829 = getelementptr i8, ptr %t1828, i64 %t1806
  call void @olang_textcopy(ptr %t1829, ptr %t1808, i64 %t1809)
  %t1830 = getelementptr i8, ptr %t1829, i64 %t1809
  call void @olang_textcopy(ptr %t1830, ptr %t1811, i64 %t1812)
  %t1831 = getelementptr i8, ptr %t1830, i64 %t1812
  call void @olang_textcopy(ptr %t1831, ptr %t1815, i64 %t1816)
  %t1832 = getelementptr i8, ptr %t1831, i64 %t1816
  call void @olang_textcopy(ptr %t1832, ptr %t1818, i64 %t1819)
  %t1833 = getelementptr i8, ptr %t1832, i64 %t1819
  call void @olang_textcopy(ptr %t1833, ptr %t1822, i64 %t1823)
  %t1834 = getelementptr i8, ptr %t1833, i64 %t1823
  call void @olang_textcopy(ptr %t1834, ptr %t1825, i64 %t1826)
  %t1835 = insertvalue { i64, ptr } undef, i64 %t1827, 0
  %t1836 = insertvalue { i64, ptr } %t1835, ptr %t1828, 1
  %t1838 = extractvalue { i64, ptr } %t1836, 0
  %t1839 = extractvalue { i64, ptr } %t1836, 1
  %t1840 = mul i64 %t1838, 1
  %t1841 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1840)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1841, ptr %t1839, i64 %t1840, i1 false)
  %t1842 = insertvalue { i64, ptr } undef, i64 %t1838, 0
  %t1843 = insertvalue { i64, ptr } %t1842, ptr %t1841, 1
  %t1844 = load ptr, ptr %l680, !tbaa !29
  %t1846 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1844, { i64, ptr } %t1843)
  store { i64, ptr } %t1846, ptr %l689
  br label %bb319
bb319:
  %t1847 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1848 = extractvalue { i64, ptr } %t1847, 0
  %t1849 = load { i64, ptr }, ptr %l689, !tbaa !27
  %t1850 = extractvalue { i64, ptr } %t1849, 0
  store i64 %t1850, ptr %l691, !tbaa !24
  %t1852 = load i64, ptr %l691, !tbaa !24
  %t1853 = icmp eq i64 %t1848, %t1852
  br i1 %t1853, label %bb320, label %bb321
bb320:
  %t1855 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t1856 = load ptr, ptr %t1855, !tbaa !27
  %t1857 = getelementptr { i64, ptr }, ptr %l689, i32 0, i32 1
  %t1858 = load ptr, ptr %t1857, !tbaa !27
  %t1859 = load i64, ptr %l691, !tbaa !24
  %t1860 = mul i64 %t1859, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1856, ptr %t1858, i64 %t1860, i1 false)
  br label %bb322
bb321:
  %t1861 = load { i64, ptr }, ptr %l689, !tbaa !27
  store { i64, ptr } %t1861, ptr %l66, !tbaa !27
  br label %bb322
bb322:
  call void @__olang_scope_close(ptr %s66)
  br label %bb323
bb323:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l693, !tbaa !27
  %t1862 = load { i64, ptr }, ptr %l693, !tbaa !27
  store { i64, ptr } %t1862, ptr %l694, !tbaa !27
  %t1863 = load { i64, ptr }, ptr %l694, !tbaa !27
  %t1864 = extractvalue { i64, ptr } %t1863, 0
  store i64 %t1864, ptr %l695, !tbaa !24
  %t1865 = load i64, ptr %l695, !tbaa !24
  %t1866 = mul i64 %t1865, 1
  %t1867 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1866)
  %t1868 = insertvalue { i64, ptr } undef, i64 %t1865, 0
  %t1869 = insertvalue { i64, ptr } %t1868, ptr %t1867, 1
  store { i64, ptr } %t1869, ptr %l696, !tbaa !27
  %t1870 = getelementptr { i64, ptr }, ptr %l696, i32 0, i32 1
  %t1871 = load ptr, ptr %t1870, !tbaa !27
  %t1872 = getelementptr { i64, ptr }, ptr %l694, i32 0, i32 1
  %t1873 = load ptr, ptr %t1872, !tbaa !27
  %t1874 = load i64, ptr %l695, !tbaa !24
  %t1875 = mul i64 %t1874, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1871, ptr %t1873, i64 %t1875, i1 false)
  %t1876 = load { i64, ptr }, ptr %l696, !tbaa !27
  store { i64, ptr } %t1876, ptr %l72, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l697, !tbaa !27
  %t1877 = load { i64, ptr }, ptr %l697, !tbaa !27
  store { i64, ptr } %t1877, ptr %l698, !tbaa !27
  %t1878 = load { i64, ptr }, ptr %l698, !tbaa !27
  %t1879 = extractvalue { i64, ptr } %t1878, 0
  store i64 %t1879, ptr %l699, !tbaa !24
  %t1880 = load i64, ptr %l699, !tbaa !24
  %t1881 = mul i64 %t1880, 1
  %t1882 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1881)
  %t1883 = insertvalue { i64, ptr } undef, i64 %t1880, 0
  %t1884 = insertvalue { i64, ptr } %t1883, ptr %t1882, 1
  store { i64, ptr } %t1884, ptr %l700, !tbaa !27
  %t1885 = getelementptr { i64, ptr }, ptr %l700, i32 0, i32 1
  %t1886 = load ptr, ptr %t1885, !tbaa !27
  %t1887 = getelementptr { i64, ptr }, ptr %l698, i32 0, i32 1
  %t1888 = load ptr, ptr %t1887, !tbaa !27
  %t1889 = load i64, ptr %l699, !tbaa !24
  %t1890 = mul i64 %t1889, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1886, ptr %t1888, i64 %t1890, i1 false)
  %t1891 = load { i64, ptr }, ptr %l700, !tbaa !27
  store { i64, ptr } %t1891, ptr %l73, !tbaa !27
  %t1892 = load i1, ptr %l14, !tbaa !21
  br i1 %t1892, label %bb324, label %bb325
bb324:
  store %olang.scope zeroinitializer, ptr %s68
  %t1894 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1896 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s68, { i64, ptr } %t1894, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store i1 %t1896, ptr %l703
  br label %bb326
bb325:
  store %olang.scope zeroinitializer, ptr %s72
  %t1897 = load i1, ptr %l13, !tbaa !21
  br i1 %t1897, label %bb348, label %bb349
bb326:
  %t1899 = load i1, ptr %l703, !tbaa !21
  %t1900 = xor i1 %t1899, true
  br i1 %t1900, label %bb327, label %bb328
bb327:
  store i1 true, ptr %l705, !tbaa !21
  br label %bb329
bb328:
  %t1902 = load i1, ptr %l13, !tbaa !21
  %t1904 = xor i1 %t1902, true
  store i1 %t1904, ptr %l705, !tbaa !21
  br label %bb329
bb329:
  %t1906 = load i1, ptr %l705, !tbaa !21
  br i1 %t1906, label %bb330, label %bb331
bb330:
  %t1907 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t1907, ptr %l708, !tbaa !27
  br label %bb333
bb331:
  %t1909 = load ptr, ptr %l11, !tbaa !29
  %t1910 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t1911 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1912 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t1913 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t1915 = extractvalue { i64, ptr } %t1910, 1
  %t1916 = extractvalue { i64, ptr } %t1910, 0
  %t1917 = add i64 %t1913, %t1916
  %t1918 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t1919 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t1920 = add i64 %t1917, %t1919
  %t1922 = extractvalue { i64, ptr } %t1911, 1
  %t1923 = extractvalue { i64, ptr } %t1911, 0
  %t1924 = add i64 %t1920, %t1923
  %t1925 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t1926 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t1927 = add i64 %t1924, %t1926
  %t1928 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1927)
  call void @olang_textcopy(ptr %t1928, ptr %t1912, i64 %t1913)
  %t1929 = getelementptr i8, ptr %t1928, i64 %t1913
  call void @olang_textcopy(ptr %t1929, ptr %t1915, i64 %t1916)
  %t1930 = getelementptr i8, ptr %t1929, i64 %t1916
  call void @olang_textcopy(ptr %t1930, ptr %t1918, i64 %t1919)
  %t1931 = getelementptr i8, ptr %t1930, i64 %t1919
  call void @olang_textcopy(ptr %t1931, ptr %t1922, i64 %t1923)
  %t1932 = getelementptr i8, ptr %t1931, i64 %t1923
  call void @olang_textcopy(ptr %t1932, ptr %t1925, i64 %t1926)
  %t1933 = insertvalue { i64, ptr } undef, i64 %t1927, 0
  %t1934 = insertvalue { i64, ptr } %t1933, ptr %t1928, 1
  %t1936 = extractvalue { i64, ptr } %t1934, 0
  %t1937 = extractvalue { i64, ptr } %t1934, 1
  %t1938 = mul i64 %t1936, 1
  %t1939 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1938)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1939, ptr %t1937, i64 %t1938, i1 false)
  %t1940 = insertvalue { i64, ptr } undef, i64 %t1936, 0
  %t1941 = insertvalue { i64, ptr } %t1940, ptr %t1939, 1
  %t1944 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1909, { i64, ptr } %t1941)
  store { i64, ptr } %t1944, ptr %l715
  br label %bb332
bb332:
  %t1945 = load { i64, ptr }, ptr %l715, !tbaa !27
  store { i64, ptr } %t1945, ptr %l708, !tbaa !27
  br label %bb333
bb333:
  %t1946 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t1947 = extractvalue { i64, ptr } %t1946, 0
  %t1948 = load { i64, ptr }, ptr %l708, !tbaa !27
  %t1949 = extractvalue { i64, ptr } %t1948, 0
  store i64 %t1949, ptr %l717, !tbaa !24
  %t1951 = load i64, ptr %l717, !tbaa !24
  %t1952 = icmp eq i64 %t1947, %t1951
  br i1 %t1952, label %bb334, label %bb335
bb334:
  %t1954 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t1955 = load ptr, ptr %t1954, !tbaa !27
  %t1956 = getelementptr { i64, ptr }, ptr %l708, i32 0, i32 1
  %t1957 = load ptr, ptr %t1956, !tbaa !27
  %t1958 = load i64, ptr %l717, !tbaa !24
  %t1959 = mul i64 %t1958, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1955, ptr %t1957, i64 %t1959, i1 false)
  br label %bb336
bb335:
  %t1960 = load { i64, ptr }, ptr %l708, !tbaa !27
  %t1961 = extractvalue { i64, ptr } %t1960, 0
  store i64 %t1961, ptr %l719, !tbaa !24
  %t1962 = load i64, ptr %l719, !tbaa !24
  %t1963 = mul i64 %t1962, 1
  %t1964 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1963)
  %t1965 = insertvalue { i64, ptr } undef, i64 %t1962, 0
  %t1966 = insertvalue { i64, ptr } %t1965, ptr %t1964, 1
  store { i64, ptr } %t1966, ptr %l720, !tbaa !27
  %t1967 = getelementptr { i64, ptr }, ptr %l720, i32 0, i32 1
  %t1968 = load ptr, ptr %t1967, !tbaa !27
  %t1969 = getelementptr { i64, ptr }, ptr %l708, i32 0, i32 1
  %t1970 = load ptr, ptr %t1969, !tbaa !27
  %t1971 = load i64, ptr %l719, !tbaa !24
  %t1972 = mul i64 %t1971, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1968, ptr %t1970, i64 %t1972, i1 false)
  %t1973 = load { i64, ptr }, ptr %l720, !tbaa !27
  store { i64, ptr } %t1973, ptr %l72, !tbaa !27
  br label %bb336
bb336:
  %t1974 = load i1, ptr %l13, !tbaa !21
  br i1 %t1974, label %bb337, label %bb338
bb337:
  %t1976 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1978 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s68, { i64, ptr } %t1976, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t1978, ptr %l724
  br label %bb339
bb338:
  store i1 false, ptr %l722, !tbaa !21
  br label %bb340
bb339:
  %t1979 = load i1, ptr %l724, !tbaa !21
  store i1 %t1979, ptr %l722, !tbaa !21
  br label %bb340
bb340:
  %t1980 = load i1, ptr %l722, !tbaa !21
  br i1 %t1980, label %bb341, label %bb342
bb341:
  %t1981 = load ptr, ptr %l11, !tbaa !29
  %t1982 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t1983 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1984 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t1985 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t1987 = extractvalue { i64, ptr } %t1982, 1
  %t1988 = extractvalue { i64, ptr } %t1982, 0
  %t1989 = add i64 %t1985, %t1988
  %t1990 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t1991 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t1992 = add i64 %t1989, %t1991
  %t1994 = extractvalue { i64, ptr } %t1983, 1
  %t1995 = extractvalue { i64, ptr } %t1983, 0
  %t1996 = add i64 %t1992, %t1995
  %t1997 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t1998 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t1999 = add i64 %t1996, %t1998
  %t2000 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1999)
  call void @olang_textcopy(ptr %t2000, ptr %t1984, i64 %t1985)
  %t2001 = getelementptr i8, ptr %t2000, i64 %t1985
  call void @olang_textcopy(ptr %t2001, ptr %t1987, i64 %t1988)
  %t2002 = getelementptr i8, ptr %t2001, i64 %t1988
  call void @olang_textcopy(ptr %t2002, ptr %t1990, i64 %t1991)
  %t2003 = getelementptr i8, ptr %t2002, i64 %t1991
  call void @olang_textcopy(ptr %t2003, ptr %t1994, i64 %t1995)
  %t2004 = getelementptr i8, ptr %t2003, i64 %t1995
  call void @olang_textcopy(ptr %t2004, ptr %t1997, i64 %t1998)
  %t2005 = insertvalue { i64, ptr } undef, i64 %t1999, 0
  %t2006 = insertvalue { i64, ptr } %t2005, ptr %t2000, 1
  %t2008 = extractvalue { i64, ptr } %t2006, 0
  %t2009 = extractvalue { i64, ptr } %t2006, 1
  %t2010 = mul i64 %t2008, 1
  %t2011 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2010)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2011, ptr %t2009, i64 %t2010, i1 false)
  %t2012 = insertvalue { i64, ptr } undef, i64 %t2008, 0
  %t2013 = insertvalue { i64, ptr } %t2012, ptr %t2011, 1
  %t2016 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1981, { i64, ptr } %t2013)
  store { i64, ptr } %t2016, ptr %l730
  br label %bb343
bb342:
  br label %bb347
bb343:
  %t2017 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t2018 = extractvalue { i64, ptr } %t2017, 0
  %t2019 = load { i64, ptr }, ptr %l730, !tbaa !27
  %t2020 = extractvalue { i64, ptr } %t2019, 0
  store i64 %t2020, ptr %l732, !tbaa !24
  %t2022 = load i64, ptr %l732, !tbaa !24
  %t2023 = icmp eq i64 %t2018, %t2022
  br i1 %t2023, label %bb344, label %bb345
bb344:
  %t2025 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t2026 = load ptr, ptr %t2025, !tbaa !27
  %t2027 = getelementptr { i64, ptr }, ptr %l730, i32 0, i32 1
  %t2028 = load ptr, ptr %t2027, !tbaa !27
  %t2029 = load i64, ptr %l732, !tbaa !24
  %t2030 = mul i64 %t2029, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2026, ptr %t2028, i64 %t2030, i1 false)
  br label %bb346
bb345:
  %t2031 = load { i64, ptr }, ptr %l730, !tbaa !27
  store { i64, ptr } %t2031, ptr %l73, !tbaa !27
  br label %bb346
bb346:
  br label %bb347
bb347:
  call void @__olang_scope_close(ptr %s68)
  br label %bb358
bb348:
  %t2032 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t2034 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s72, { i64, ptr } %t2032, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t2034, ptr %l737
  br label %bb350
bb349:
  store i1 false, ptr %l735, !tbaa !21
  br label %bb351
bb350:
  %t2035 = load i1, ptr %l737, !tbaa !21
  store i1 %t2035, ptr %l735, !tbaa !21
  br label %bb351
bb351:
  %t2036 = load i1, ptr %l735, !tbaa !21
  br i1 %t2036, label %bb352, label %bb353
bb352:
  %t2037 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t2037, ptr %l738, !tbaa !27
  %t2038 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t2039 = extractvalue { i64, ptr } %t2038, 0
  %t2040 = load { i64, ptr }, ptr %l738, !tbaa !27
  %t2041 = extractvalue { i64, ptr } %t2040, 0
  store i64 %t2041, ptr %l740, !tbaa !24
  %t2043 = load i64, ptr %l740, !tbaa !24
  %t2044 = icmp eq i64 %t2039, %t2043
  br i1 %t2044, label %bb354, label %bb355
bb353:
  br label %bb357
bb354:
  %t2046 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t2047 = load ptr, ptr %t2046, !tbaa !27
  %t2048 = getelementptr { i64, ptr }, ptr %l738, i32 0, i32 1
  %t2049 = load ptr, ptr %t2048, !tbaa !27
  %t2050 = load i64, ptr %l740, !tbaa !24
  %t2051 = mul i64 %t2050, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2047, ptr %t2049, i64 %t2051, i1 false)
  br label %bb356
bb355:
  %t2052 = load { i64, ptr }, ptr %l738, !tbaa !27
  %t2053 = extractvalue { i64, ptr } %t2052, 0
  store i64 %t2053, ptr %l742, !tbaa !24
  %t2054 = load i64, ptr %l742, !tbaa !24
  %t2055 = mul i64 %t2054, 1
  %t2056 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2055)
  %t2057 = insertvalue { i64, ptr } undef, i64 %t2054, 0
  %t2058 = insertvalue { i64, ptr } %t2057, ptr %t2056, 1
  store { i64, ptr } %t2058, ptr %l743, !tbaa !27
  %t2059 = getelementptr { i64, ptr }, ptr %l743, i32 0, i32 1
  %t2060 = load ptr, ptr %t2059, !tbaa !27
  %t2061 = getelementptr { i64, ptr }, ptr %l738, i32 0, i32 1
  %t2062 = load ptr, ptr %t2061, !tbaa !27
  %t2063 = load i64, ptr %l742, !tbaa !24
  %t2064 = mul i64 %t2063, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2060, ptr %t2062, i64 %t2064, i1 false)
  %t2065 = load { i64, ptr }, ptr %l743, !tbaa !27
  store { i64, ptr } %t2065, ptr %l73, !tbaa !27
  br label %bb356
bb356:
  br label %bb357
bb357:
  call void @__olang_scope_close(ptr %s72)
  br label %bb358
bb358:
  %t2066 = load i1, ptr %l13, !tbaa !21
  br i1 %t2066, label %bb359, label %bb360
bb359:
  %t2068 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t2070 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t2068, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t2070, ptr %l747
  br label %bb361
bb360:
  store i1 false, ptr %l745, !tbaa !21
  br label %bb362
bb361:
  %t2071 = load i1, ptr %l747, !tbaa !21
  %t2072 = xor i1 %t2071, true
  store i1 %t2072, ptr %l745, !tbaa !21
  br label %bb362
bb362:
  %t2074 = load i1, ptr %l745, !tbaa !21
  br i1 %t2074, label %bb363, label %bb364
bb363:
  %t2075 = load ptr, ptr %l11, !tbaa !29
  store ptr %t2075, ptr %l749, !tbaa !29
  %t2076 = load ptr, ptr %l0, !tbaa !29
  %t2077 = load i32, ptr %l12, !tbaa !23
  %t2080 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s0, ptr %t2076, i32 %t2077)
  store { i64, ptr } %t2080, ptr %l752
  br label %bb365
bb364:
  br label %bb370
bb365:
  %t2081 = load { i64, ptr }, ptr %l752, !tbaa !27
  %t2082 = extractvalue { i64, ptr } %t2081, 0
  %t2083 = extractvalue { i64, ptr } %t2081, 1
  %t2084 = mul i64 %t2082, 1
  %t2085 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2084)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2085, ptr %t2083, i64 %t2084, i1 false)
  %t2086 = insertvalue { i64, ptr } undef, i64 %t2082, 0
  %t2087 = insertvalue { i64, ptr } %t2086, ptr %t2085, 1
  %t2088 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t2089 = load ptr, ptr %l749, !tbaa !29
  %t2092 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t2089, { i64, ptr } %t2087, { i64, ptr } %t2088, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store { i64, ptr } %t2092, ptr %l755
  br label %bb366
bb366:
  %t2093 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t2094 = extractvalue { i64, ptr } %t2093, 0
  %t2095 = load { i64, ptr }, ptr %l755, !tbaa !27
  %t2096 = extractvalue { i64, ptr } %t2095, 0
  store i64 %t2096, ptr %l757, !tbaa !24
  %t2098 = load i64, ptr %l757, !tbaa !24
  %t2099 = icmp eq i64 %t2094, %t2098
  br i1 %t2099, label %bb367, label %bb368
bb367:
  %t2101 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t2102 = load ptr, ptr %t2101, !tbaa !27
  %t2103 = getelementptr { i64, ptr }, ptr %l755, i32 0, i32 1
  %t2104 = load ptr, ptr %t2103, !tbaa !27
  %t2105 = load i64, ptr %l757, !tbaa !24
  %t2106 = mul i64 %t2105, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2102, ptr %t2104, i64 %t2106, i1 false)
  br label %bb369
bb368:
  %t2107 = load { i64, ptr }, ptr %l755, !tbaa !27
  store { i64, ptr } %t2107, ptr %l73, !tbaa !27
  br label %bb369
bb369:
  br label %bb370
bb370:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l759, !tbaa !27
  %t2108 = load { i64, ptr }, ptr %l759, !tbaa !27
  store { i64, ptr } %t2108, ptr %l760, !tbaa !27
  %t2109 = load { i64, ptr }, ptr %l760, !tbaa !27
  %t2110 = extractvalue { i64, ptr } %t2109, 0
  store i64 %t2110, ptr %l761, !tbaa !24
  %t2111 = load i64, ptr %l761, !tbaa !24
  %t2112 = mul i64 %t2111, 1
  %t2113 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2112)
  %t2114 = insertvalue { i64, ptr } undef, i64 %t2111, 0
  %t2115 = insertvalue { i64, ptr } %t2114, ptr %t2113, 1
  store { i64, ptr } %t2115, ptr %l762, !tbaa !27
  %t2116 = getelementptr { i64, ptr }, ptr %l762, i32 0, i32 1
  %t2117 = load ptr, ptr %t2116, !tbaa !27
  %t2118 = getelementptr { i64, ptr }, ptr %l760, i32 0, i32 1
  %t2119 = load ptr, ptr %t2118, !tbaa !27
  %t2120 = load i64, ptr %l761, !tbaa !24
  %t2121 = mul i64 %t2120, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2117, ptr %t2119, i64 %t2121, i1 false)
  %t2122 = load { i64, ptr }, ptr %l762, !tbaa !27
  store { i64, ptr } %t2122, ptr %l74, !tbaa !27
  %t2123 = load i1, ptr %l14, !tbaa !21
  br i1 %t2123, label %bb371, label %bb372
bb371:
  store %olang.scope zeroinitializer, ptr %s75
  %t2125 = load ptr, ptr %l11, !tbaa !29
  %t2126 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t2127 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t2128 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t2130 = extractvalue { i64, ptr } %t2126, 1
  %t2131 = extractvalue { i64, ptr } %t2126, 0
  %t2132 = add i64 %t2128, %t2131
  %t2133 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t2134 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t2135 = add i64 %t2132, %t2134
  %t2136 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2135)
  call void @olang_textcopy(ptr %t2136, ptr %t2127, i64 %t2128)
  %t2137 = getelementptr i8, ptr %t2136, i64 %t2128
  call void @olang_textcopy(ptr %t2137, ptr %t2130, i64 %t2131)
  %t2138 = getelementptr i8, ptr %t2137, i64 %t2131
  call void @olang_textcopy(ptr %t2138, ptr %t2133, i64 %t2134)
  %t2139 = insertvalue { i64, ptr } undef, i64 %t2135, 0
  %t2140 = insertvalue { i64, ptr } %t2139, ptr %t2136, 1
  %t2142 = extractvalue { i64, ptr } %t2140, 0
  %t2143 = extractvalue { i64, ptr } %t2140, 1
  %t2144 = mul i64 %t2142, 1
  %t2145 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2144)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2145, ptr %t2143, i64 %t2144, i1 false)
  %t2146 = insertvalue { i64, ptr } undef, i64 %t2142, 0
  %t2147 = insertvalue { i64, ptr } %t2146, ptr %t2145, 1
  %t2150 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s75, ptr %s75, ptr %t2125, { i64, ptr } %t2147)
  store { i64, ptr } %t2150, ptr %l768
  br label %bb373
bb372:
  br label %bb399
bb373:
  %t2151 = load { i64, ptr }, ptr %l768, !tbaa !27
  %t2152 = load ptr, ptr %l11, !tbaa !29
  %t2154 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t2155 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t2157 = extractvalue { i64, ptr } %t2151, 1
  %t2158 = extractvalue { i64, ptr } %t2151, 0
  %t2159 = add i64 %t2155, %t2158
  %t2160 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t2161 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t2162 = add i64 %t2159, %t2161
  %t2163 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2162)
  call void @olang_textcopy(ptr %t2163, ptr %t2154, i64 %t2155)
  %t2164 = getelementptr i8, ptr %t2163, i64 %t2155
  call void @olang_textcopy(ptr %t2164, ptr %t2157, i64 %t2158)
  %t2165 = getelementptr i8, ptr %t2164, i64 %t2158
  call void @olang_textcopy(ptr %t2165, ptr %t2160, i64 %t2161)
  %t2166 = insertvalue { i64, ptr } undef, i64 %t2162, 0
  %t2167 = insertvalue { i64, ptr } %t2166, ptr %t2163, 1
  %t2169 = extractvalue { i64, ptr } %t2167, 0
  %t2170 = extractvalue { i64, ptr } %t2167, 1
  %t2171 = mul i64 %t2169, 1
  %t2172 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2172, ptr %t2170, i64 %t2171, i1 false)
  %t2173 = insertvalue { i64, ptr } undef, i64 %t2169, 0
  %t2174 = insertvalue { i64, ptr } %t2173, ptr %t2172, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s75, ptr %t2152, { i64, ptr } %t2174)
  br label %bb374
bb374:
  %t2177 = load ptr, ptr %l11, !tbaa !29
  %t2179 = getelementptr %"compiler/emit:fnEm", ptr %t2177, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s75, ptr %t2179, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d92, i32 0, i32 1) })
  br label %bb375
bb375:
  %t2181 = load ptr, ptr %l11, !tbaa !29
  %t2182 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t2183 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t2184 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t2186 = extractvalue { i64, ptr } %t2182, 1
  %t2187 = extractvalue { i64, ptr } %t2182, 0
  %t2188 = add i64 %t2184, %t2187
  %t2189 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t2190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t2191 = add i64 %t2188, %t2190
  %t2192 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2191)
  call void @olang_textcopy(ptr %t2192, ptr %t2183, i64 %t2184)
  %t2193 = getelementptr i8, ptr %t2192, i64 %t2184
  call void @olang_textcopy(ptr %t2193, ptr %t2186, i64 %t2187)
  %t2194 = getelementptr i8, ptr %t2193, i64 %t2187
  call void @olang_textcopy(ptr %t2194, ptr %t2189, i64 %t2190)
  %t2195 = insertvalue { i64, ptr } undef, i64 %t2191, 0
  %t2196 = insertvalue { i64, ptr } %t2195, ptr %t2192, 1
  %t2198 = extractvalue { i64, ptr } %t2196, 0
  %t2199 = extractvalue { i64, ptr } %t2196, 1
  %t2200 = mul i64 %t2198, 1
  %t2201 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2200)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2201, ptr %t2199, i64 %t2200, i1 false)
  %t2202 = insertvalue { i64, ptr } undef, i64 %t2198, 0
  %t2203 = insertvalue { i64, ptr } %t2202, ptr %t2201, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s75, ptr %t2181, { i64, ptr } %t2203)
  br label %bb376
bb376:
  %t2206 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s75)
  store %"std/prelude/text:StringBuilder" %t2206, ptr %l779
  br label %bb377
bb377:
  %t2207 = load %"std/prelude/text:StringBuilder", ptr %l779
  store %"std/prelude/text:StringBuilder" %t2207, ptr %l76
  %t2208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2208, ptr %l780, !tbaa !29
  store ptr %l76, ptr %l781, !tbaa !29
  %t2209 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t2209, ptr %l782, !tbaa !27
  %t2210 = load ptr, ptr %l2, !tbaa !29
  %t2211 = load i32, ptr %l9, !tbaa !23
  %t2214 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t2210, i32 %t2211)
  store i32 %t2214, ptr %l785
  br label %bb378
bb378:
  %t2215 = load ptr, ptr %l780, !tbaa !29
  %t2216 = load ptr, ptr %l781, !tbaa !29
  %t2217 = load { i64, ptr }, ptr %l782, !tbaa !27
  %t2218 = load i32, ptr %l785, !tbaa !23
  %t2219 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecarriesText(ptr %v0, ptr %s75, ptr %s0, ptr %s75, ptr %s75, ptr %t2215, ptr %t2216, { i64, ptr } %t2217, i32 %t2218, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store { i64, ptr } %t2219, ptr %l786
  br label %bb379
bb379:
  %t2220 = load { i64, ptr }, ptr %l786, !tbaa !27
  store { i64, ptr } %t2220, ptr %l77, !tbaa !27
  %t2221 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t2223 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s75, ptr %s75, { i64, ptr } %t2221, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d96, i32 0, i32 1) })
  store i1 %t2223, ptr %l788
  br label %bb380
bb380:
  %t2224 = load i1, ptr %l788, !tbaa !21
  %t2225 = xor i1 %t2224, true
  br i1 %t2225, label %bb381, label %bb382
bb381:
  store %olang.scope zeroinitializer, ptr %s79
  %t2227 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s79, ptr %t2227, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d97, i32 0, i32 1) })
  br label %bb383
bb382:
  br label %bb391
bb383:
  %t2229 = load ptr, ptr %l11, !tbaa !29
  %t2231 = getelementptr %"compiler/emit:fnEm", ptr %t2229, i32 0, i32 5
  store ptr %t2231, ptr %l792, !tbaa !29
  %t2233 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s75, ptr %s79, ptr %l76)
  store { i64, ptr } %t2233, ptr %l794
  br label %bb384
bb384:
  %t2234 = load { i64, ptr }, ptr %l794, !tbaa !27
  %t2235 = extractvalue { i64, ptr } %t2234, 0
  %t2236 = extractvalue { i64, ptr } %t2234, 1
  %t2237 = mul i64 %t2235, 1
  %t2238 = call ptr @__olang_scope_alloc(ptr %s79, i64 %t2237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2238, ptr %t2236, i64 %t2237, i1 false)
  %t2239 = insertvalue { i64, ptr } undef, i64 %t2235, 0
  %t2240 = insertvalue { i64, ptr } %t2239, ptr %t2238, 1
  %t2241 = load ptr, ptr %l792, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s79, ptr %t2241, { i64, ptr } %t2240)
  br label %bb385
bb385:
  %t2243 = load ptr, ptr %l11, !tbaa !29
  %t2244 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t2245 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t2246 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t2248 = extractvalue { i64, ptr } %t2244, 1
  %t2249 = extractvalue { i64, ptr } %t2244, 0
  %t2250 = add i64 %t2246, %t2249
  %t2251 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t2252 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t2253 = add i64 %t2250, %t2252
  %t2254 = call ptr @__olang_scope_alloc(ptr %s79, i64 %t2253)
  call void @olang_textcopy(ptr %t2254, ptr %t2245, i64 %t2246)
  %t2255 = getelementptr i8, ptr %t2254, i64 %t2246
  call void @olang_textcopy(ptr %t2255, ptr %t2248, i64 %t2249)
  %t2256 = getelementptr i8, ptr %t2255, i64 %t2249
  call void @olang_textcopy(ptr %t2256, ptr %t2251, i64 %t2252)
  %t2257 = insertvalue { i64, ptr } undef, i64 %t2253, 0
  %t2258 = insertvalue { i64, ptr } %t2257, ptr %t2254, 1
  %t2260 = extractvalue { i64, ptr } %t2258, 0
  %t2261 = extractvalue { i64, ptr } %t2258, 1
  %t2262 = mul i64 %t2260, 1
  %t2263 = call ptr @__olang_scope_alloc(ptr %s79, i64 %t2262)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2263, ptr %t2261, i64 %t2262, i1 false)
  %t2264 = insertvalue { i64, ptr } undef, i64 %t2260, 0
  %t2265 = insertvalue { i64, ptr } %t2264, ptr %t2263, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s79, ptr %t2243, { i64, ptr } %t2265)
  br label %bb386
bb386:
  %t2268 = load ptr, ptr %l11, !tbaa !29
  %t2270 = getelementptr %"compiler/emit:fnEm", ptr %t2268, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s79, ptr %t2270, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d100, i32 0, i32 1) })
  br label %bb387
bb387:
  %t2272 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s79, ptr %t2272, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d101, i32 0, i32 1) })
  br label %bb388
bb388:
  %t2274 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s79, ptr %t2274, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb389
bb389:
  %t2276 = load ptr, ptr %l11, !tbaa !29
  %t2278 = getelementptr %"compiler/emit:fnEm", ptr %t2276, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s79, ptr %t2278, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d103, i32 0, i32 1) })
  br label %bb390
bb390:
  call void @__olang_scope_close(ptr %s79)
  br label %bb391
bb391:
  %t2280 = load ptr, ptr %l2, !tbaa !29
  store ptr %t2280, ptr %l806, !tbaa !29
  %t2281 = load ptr, ptr %l0, !tbaa !29
  %t2283 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eExportErrors(ptr %v0, ptr %s75, ptr %t2281)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2283, ptr %l808
  br label %bb392
bb392:
  %t2284 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l808
  %t2285 = call ptr @__olang_scope_alloc_a(ptr %s75, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2284, ptr %t2285
  %t2287 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s75, ptr %s75, ptr %t2285)
  store { i64, ptr } %t2287, ptr %l810
  br label %bb393
bb393:
  %t2288 = load ptr, ptr %l806, !tbaa !29
  %t2289 = load { i64, ptr }, ptr %l810, !tbaa !27
  %t2290 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s75, ptr %t2288, { i64, ptr } %t2289)
  store i32 %t2290, ptr %l811
  br label %bb394
bb394:
  %t2291 = load i32, ptr %l811, !tbaa !23
  store i32 %t2291, ptr %l78, !tbaa !23
  %t2292 = load ptr, ptr %l11, !tbaa !29
  store ptr %t2292, ptr %l812, !tbaa !29
  %t2293 = load ptr, ptr %l11, !tbaa !29
  store ptr %t2293, ptr %l813, !tbaa !29
  %t2294 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t2294, ptr %l814, !tbaa !27
  %t2295 = load ptr, ptr %l2, !tbaa !29
  %t2296 = load i32, ptr %l9, !tbaa !23
  %t2299 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t2295, i32 %t2296)
  store i32 %t2299, ptr %l817
  br label %bb395
bb395:
  %t2300 = load i32, ptr %l78, !tbaa !23
  %t2301 = load ptr, ptr %l813, !tbaa !29
  %t2302 = load { i64, ptr }, ptr %l814, !tbaa !27
  %t2303 = load i32, ptr %l817, !tbaa !23
  %t2305 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2erecode(ptr %v0, ptr %s0, ptr %s75, ptr %t2301, { i64, ptr } %t2302, i32 %t2303, i32 %t2300)
  store { i64, ptr } %t2305, ptr %l819
  br label %bb396
bb396:
  %t2306 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t2307 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t2308 = load { i64, ptr }, ptr %l819, !tbaa !27
  %t2309 = extractvalue { i64, ptr } %t2308, 1
  %t2310 = extractvalue { i64, ptr } %t2308, 0
  %t2311 = add i64 %t2307, %t2310
  %t2312 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2311)
  call void @olang_textcopy(ptr %t2312, ptr %t2306, i64 %t2307)
  %t2313 = getelementptr i8, ptr %t2312, i64 %t2307
  call void @olang_textcopy(ptr %t2313, ptr %t2309, i64 %t2310)
  %t2314 = insertvalue { i64, ptr } undef, i64 %t2311, 0
  %t2315 = insertvalue { i64, ptr } %t2314, ptr %t2312, 1
  %t2317 = extractvalue { i64, ptr } %t2315, 0
  %t2318 = extractvalue { i64, ptr } %t2315, 1
  %t2319 = mul i64 %t2317, 1
  %t2320 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2319)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2320, ptr %t2318, i64 %t2319, i1 false)
  %t2321 = insertvalue { i64, ptr } undef, i64 %t2317, 0
  %t2322 = insertvalue { i64, ptr } %t2321, ptr %t2320, 1
  %t2323 = load ptr, ptr %l812, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s75, ptr %t2323, { i64, ptr } %t2322)
  br label %bb397
bb397:
  %t2325 = load ptr, ptr %l11, !tbaa !29
  %t2327 = getelementptr %"compiler/emit:fnEm", ptr %t2325, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s75, ptr %t2327, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d105, i32 0, i32 1) })
  br label %bb398
bb398:
  call void @__olang_scope_close(ptr %s75)
  br label %bb399
bb399:
  %t2329 = load i1, ptr %l15, !tbaa !21
  br i1 %t2329, label %bb400, label %bb401
bb400:
  store %olang.scope zeroinitializer, ptr %s82
  %t2331 = load ptr, ptr %l11, !tbaa !29
  %t2332 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t2333 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t2334 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t2336 = extractvalue { i64, ptr } %t2332, 1
  %t2337 = extractvalue { i64, ptr } %t2332, 0
  %t2338 = add i64 %t2334, %t2337
  %t2339 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t2340 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t2341 = add i64 %t2338, %t2340
  %t2342 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2341)
  call void @olang_textcopy(ptr %t2342, ptr %t2333, i64 %t2334)
  %t2343 = getelementptr i8, ptr %t2342, i64 %t2334
  call void @olang_textcopy(ptr %t2343, ptr %t2336, i64 %t2337)
  %t2344 = getelementptr i8, ptr %t2343, i64 %t2337
  call void @olang_textcopy(ptr %t2344, ptr %t2339, i64 %t2340)
  %t2345 = insertvalue { i64, ptr } undef, i64 %t2341, 0
  %t2346 = insertvalue { i64, ptr } %t2345, ptr %t2342, 1
  %t2348 = extractvalue { i64, ptr } %t2346, 0
  %t2349 = extractvalue { i64, ptr } %t2346, 1
  %t2350 = mul i64 %t2348, 1
  %t2351 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2350)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2351, ptr %t2349, i64 %t2350, i1 false)
  %t2352 = insertvalue { i64, ptr } undef, i64 %t2348, 0
  %t2353 = insertvalue { i64, ptr } %t2352, ptr %t2351, 1
  %t2356 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s82, ptr %s82, ptr %t2331, { i64, ptr } %t2353)
  store { i64, ptr } %t2356, ptr %l829
  br label %bb402
bb401:
  %t2357 = load i1, ptr %l14, !tbaa !21
  br i1 %t2357, label %bb425, label %bb426
bb402:
  %t2359 = load { i64, ptr }, ptr %l829, !tbaa !27
  store { i64, ptr } %t2359, ptr %l79, !tbaa !27
  %t2360 = load ptr, ptr %l11, !tbaa !29
  %t2361 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t2362 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t2363 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t2365 = extractvalue { i64, ptr } %t2361, 1
  %t2366 = extractvalue { i64, ptr } %t2361, 0
  %t2367 = add i64 %t2363, %t2366
  %t2368 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t2369 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t2370 = add i64 %t2367, %t2369
  %t2371 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2370)
  call void @olang_textcopy(ptr %t2371, ptr %t2362, i64 %t2363)
  %t2372 = getelementptr i8, ptr %t2371, i64 %t2363
  call void @olang_textcopy(ptr %t2372, ptr %t2365, i64 %t2366)
  %t2373 = getelementptr i8, ptr %t2372, i64 %t2366
  call void @olang_textcopy(ptr %t2373, ptr %t2368, i64 %t2369)
  %t2374 = insertvalue { i64, ptr } undef, i64 %t2370, 0
  %t2375 = insertvalue { i64, ptr } %t2374, ptr %t2371, 1
  %t2377 = extractvalue { i64, ptr } %t2375, 0
  %t2378 = extractvalue { i64, ptr } %t2375, 1
  %t2379 = mul i64 %t2377, 1
  %t2380 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2379)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2380, ptr %t2378, i64 %t2379, i1 false)
  %t2381 = insertvalue { i64, ptr } undef, i64 %t2377, 0
  %t2382 = insertvalue { i64, ptr } %t2381, ptr %t2380, 1
  %t2385 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s82, ptr %s82, ptr %t2360, { i64, ptr } %t2382)
  store { i64, ptr } %t2385, ptr %l834
  br label %bb403
bb403:
  %t2386 = load { i64, ptr }, ptr %l834, !tbaa !27
  store { i64, ptr } %t2386, ptr %l80, !tbaa !27
  %t2387 = load ptr, ptr %l11, !tbaa !29
  %t2388 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t2389 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t2390 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t2392 = extractvalue { i64, ptr } %t2388, 1
  %t2393 = extractvalue { i64, ptr } %t2388, 0
  %t2394 = add i64 %t2390, %t2393
  %t2395 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2394)
  call void @olang_textcopy(ptr %t2395, ptr %t2389, i64 %t2390)
  %t2396 = getelementptr i8, ptr %t2395, i64 %t2390
  call void @olang_textcopy(ptr %t2396, ptr %t2392, i64 %t2393)
  %t2397 = insertvalue { i64, ptr } undef, i64 %t2394, 0
  %t2398 = insertvalue { i64, ptr } %t2397, ptr %t2395, 1
  %t2400 = extractvalue { i64, ptr } %t2398, 0
  %t2401 = extractvalue { i64, ptr } %t2398, 1
  %t2402 = mul i64 %t2400, 1
  %t2403 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2403, ptr %t2401, i64 %t2402, i1 false)
  %t2404 = insertvalue { i64, ptr } undef, i64 %t2400, 0
  %t2405 = insertvalue { i64, ptr } %t2404, ptr %t2403, 1
  %t2408 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s82, ptr %s82, ptr %t2387, { i64, ptr } %t2405)
  store { i64, ptr } %t2408, ptr %l839
  br label %bb404
bb404:
  %t2409 = load { i64, ptr }, ptr %l839, !tbaa !27
  %t2410 = load ptr, ptr %l11, !tbaa !29
  %t2412 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t2413 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t2414 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t2416 = extractvalue { i64, ptr } %t2409, 1
  %t2417 = extractvalue { i64, ptr } %t2409, 0
  %t2418 = add i64 %t2414, %t2417
  %t2419 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t2420 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t2421 = add i64 %t2418, %t2420
  %t2423 = extractvalue { i64, ptr } %t2412, 1
  %t2424 = extractvalue { i64, ptr } %t2412, 0
  %t2425 = add i64 %t2421, %t2424
  %t2426 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2425)
  call void @olang_textcopy(ptr %t2426, ptr %t2413, i64 %t2414)
  %t2427 = getelementptr i8, ptr %t2426, i64 %t2414
  call void @olang_textcopy(ptr %t2427, ptr %t2416, i64 %t2417)
  %t2428 = getelementptr i8, ptr %t2427, i64 %t2417
  call void @olang_textcopy(ptr %t2428, ptr %t2419, i64 %t2420)
  %t2429 = getelementptr i8, ptr %t2428, i64 %t2420
  call void @olang_textcopy(ptr %t2429, ptr %t2423, i64 %t2424)
  %t2430 = insertvalue { i64, ptr } undef, i64 %t2425, 0
  %t2431 = insertvalue { i64, ptr } %t2430, ptr %t2426, 1
  %t2433 = extractvalue { i64, ptr } %t2431, 0
  %t2434 = extractvalue { i64, ptr } %t2431, 1
  %t2435 = mul i64 %t2433, 1
  %t2436 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2435)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2436, ptr %t2434, i64 %t2435, i1 false)
  %t2437 = insertvalue { i64, ptr } undef, i64 %t2433, 0
  %t2438 = insertvalue { i64, ptr } %t2437, ptr %t2436, 1
  %t2441 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s82, ptr %s82, ptr %t2410, { i64, ptr } %t2438)
  store { i64, ptr } %t2441, ptr %l845
  br label %bb405
bb405:
  %t2442 = load { i64, ptr }, ptr %l845, !tbaa !27
  store { i64, ptr } %t2442, ptr %l82, !tbaa !27
  %t2443 = load ptr, ptr %l11, !tbaa !29
  %t2444 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t2445 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t2446 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t2448 = extractvalue { i64, ptr } %t2444, 1
  %t2449 = extractvalue { i64, ptr } %t2444, 0
  %t2450 = add i64 %t2446, %t2449
  %t2451 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t2452 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t2453 = add i64 %t2450, %t2452
  %t2454 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2453)
  call void @olang_textcopy(ptr %t2454, ptr %t2445, i64 %t2446)
  %t2455 = getelementptr i8, ptr %t2454, i64 %t2446
  call void @olang_textcopy(ptr %t2455, ptr %t2448, i64 %t2449)
  %t2456 = getelementptr i8, ptr %t2455, i64 %t2449
  call void @olang_textcopy(ptr %t2456, ptr %t2451, i64 %t2452)
  %t2457 = insertvalue { i64, ptr } undef, i64 %t2453, 0
  %t2458 = insertvalue { i64, ptr } %t2457, ptr %t2454, 1
  %t2460 = extractvalue { i64, ptr } %t2458, 0
  %t2461 = extractvalue { i64, ptr } %t2458, 1
  %t2462 = mul i64 %t2460, 1
  %t2463 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2462)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2463, ptr %t2461, i64 %t2462, i1 false)
  %t2464 = insertvalue { i64, ptr } undef, i64 %t2460, 0
  %t2465 = insertvalue { i64, ptr } %t2464, ptr %t2463, 1
  %t2468 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s82, ptr %s82, ptr %t2443, { i64, ptr } %t2465)
  store { i64, ptr } %t2468, ptr %l850
  br label %bb406
bb406:
  %t2469 = load { i64, ptr }, ptr %l850, !tbaa !27
  %t2470 = load ptr, ptr %l11, !tbaa !29
  %t2472 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t2473 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t2474 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t2476 = extractvalue { i64, ptr } %t2469, 1
  %t2477 = extractvalue { i64, ptr } %t2469, 0
  %t2478 = add i64 %t2474, %t2477
  %t2479 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t2480 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t2481 = add i64 %t2478, %t2480
  %t2483 = extractvalue { i64, ptr } %t2472, 1
  %t2484 = extractvalue { i64, ptr } %t2472, 0
  %t2485 = add i64 %t2481, %t2484
  %t2486 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t2487 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t2488 = add i64 %t2485, %t2487
  %t2489 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2488)
  call void @olang_textcopy(ptr %t2489, ptr %t2473, i64 %t2474)
  %t2490 = getelementptr i8, ptr %t2489, i64 %t2474
  call void @olang_textcopy(ptr %t2490, ptr %t2476, i64 %t2477)
  %t2491 = getelementptr i8, ptr %t2490, i64 %t2477
  call void @olang_textcopy(ptr %t2491, ptr %t2479, i64 %t2480)
  %t2492 = getelementptr i8, ptr %t2491, i64 %t2480
  call void @olang_textcopy(ptr %t2492, ptr %t2483, i64 %t2484)
  %t2493 = getelementptr i8, ptr %t2492, i64 %t2484
  call void @olang_textcopy(ptr %t2493, ptr %t2486, i64 %t2487)
  %t2494 = insertvalue { i64, ptr } undef, i64 %t2488, 0
  %t2495 = insertvalue { i64, ptr } %t2494, ptr %t2489, 1
  %t2497 = extractvalue { i64, ptr } %t2495, 0
  %t2498 = extractvalue { i64, ptr } %t2495, 1
  %t2499 = mul i64 %t2497, 1
  %t2500 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2499)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2500, ptr %t2498, i64 %t2499, i1 false)
  %t2501 = insertvalue { i64, ptr } undef, i64 %t2497, 0
  %t2502 = insertvalue { i64, ptr } %t2501, ptr %t2500, 1
  %t2505 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s82, ptr %s82, ptr %t2470, { i64, ptr } %t2502)
  store { i64, ptr } %t2505, ptr %l856
  br label %bb407
bb407:
  %t2506 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t2507 = extractvalue { i64, ptr } %t2506, 0
  %t2508 = load { i64, ptr }, ptr %l856, !tbaa !27
  %t2509 = extractvalue { i64, ptr } %t2508, 0
  store i64 %t2509, ptr %l858, !tbaa !24
  %t2511 = load i64, ptr %l858, !tbaa !24
  %t2512 = icmp eq i64 %t2507, %t2511
  br i1 %t2512, label %bb408, label %bb409
bb408:
  %t2514 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t2515 = load ptr, ptr %t2514, !tbaa !27
  %t2516 = getelementptr { i64, ptr }, ptr %l856, i32 0, i32 1
  %t2517 = load ptr, ptr %t2516, !tbaa !27
  %t2518 = load i64, ptr %l858, !tbaa !24
  %t2519 = mul i64 %t2518, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2515, ptr %t2517, i64 %t2519, i1 false)
  br label %bb410
bb409:
  %t2520 = load { i64, ptr }, ptr %l856, !tbaa !27
  store { i64, ptr } %t2520, ptr %l82, !tbaa !27
  br label %bb410
bb410:
  %t2521 = load ptr, ptr %l11, !tbaa !29
  store ptr %t2521, ptr %l860, !tbaa !29
  %t2522 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t2522, ptr %l861, !tbaa !27
  %t2523 = load ptr, ptr %l2, !tbaa !29
  %t2524 = load i32, ptr %l44, !tbaa !23
  %t2527 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t2523, i32 %t2524)
  store i64 %t2527, ptr %l864
  br label %bb411
bb411:
  %t2528 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t2529 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t2530 = load { i64, ptr }, ptr %l861, !tbaa !27
  %t2531 = extractvalue { i64, ptr } %t2530, 1
  %t2532 = extractvalue { i64, ptr } %t2530, 0
  %t2533 = add i64 %t2529, %t2532
  %t2534 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t2535 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t2536 = add i64 %t2533, %t2535
  %t2537 = load i64, ptr %l864, !tbaa !24
  %t2538 = call i64 @__olang_fmt_i64(ptr null, i64 %t2537)
  %t2539 = add i64 %t2536, %t2538
  %t2540 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2539)
  call void @olang_textcopy(ptr %t2540, ptr %t2528, i64 %t2529)
  %t2541 = getelementptr i8, ptr %t2540, i64 %t2529
  call void @olang_textcopy(ptr %t2541, ptr %t2531, i64 %t2532)
  %t2542 = getelementptr i8, ptr %t2541, i64 %t2532
  call void @olang_textcopy(ptr %t2542, ptr %t2534, i64 %t2535)
  %t2543 = getelementptr i8, ptr %t2542, i64 %t2535
  %t2544 = call i64 @__olang_fmt_i64(ptr %t2543, i64 %t2537)
  %t2545 = insertvalue { i64, ptr } undef, i64 %t2539, 0
  %t2546 = insertvalue { i64, ptr } %t2545, ptr %t2540, 1
  %t2548 = extractvalue { i64, ptr } %t2546, 0
  %t2549 = extractvalue { i64, ptr } %t2546, 1
  %t2550 = mul i64 %t2548, 1
  %t2551 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2550)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2551, ptr %t2549, i64 %t2550, i1 false)
  %t2552 = insertvalue { i64, ptr } undef, i64 %t2548, 0
  %t2553 = insertvalue { i64, ptr } %t2552, ptr %t2551, 1
  %t2554 = load ptr, ptr %l860, !tbaa !29
  %t2556 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s82, ptr %s82, ptr %t2554, { i64, ptr } %t2553)
  store { i64, ptr } %t2556, ptr %l867
  br label %bb412
bb412:
  %t2557 = load { i64, ptr }, ptr %l867, !tbaa !27
  store { i64, ptr } %t2557, ptr %l84, !tbaa !27
  %t2558 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s82, ptr %s82, ptr %t2558, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d120, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d121, i32 0, i32 1) })
  br label %bb413
bb413:
  %t2560 = load ptr, ptr %l11, !tbaa !29
  %t2561 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t2562 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t2563 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t2564 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t2566 = extractvalue { i64, ptr } %t2561, 1
  %t2567 = extractvalue { i64, ptr } %t2561, 0
  %t2568 = add i64 %t2564, %t2567
  %t2569 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t2570 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t2571 = add i64 %t2568, %t2570
  %t2573 = extractvalue { i64, ptr } %t2562, 1
  %t2574 = extractvalue { i64, ptr } %t2562, 0
  %t2575 = add i64 %t2571, %t2574
  %t2576 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t2577 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t2578 = add i64 %t2575, %t2577
  %t2579 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2578)
  call void @olang_textcopy(ptr %t2579, ptr %t2563, i64 %t2564)
  %t2580 = getelementptr i8, ptr %t2579, i64 %t2564
  call void @olang_textcopy(ptr %t2580, ptr %t2566, i64 %t2567)
  %t2581 = getelementptr i8, ptr %t2580, i64 %t2567
  call void @olang_textcopy(ptr %t2581, ptr %t2569, i64 %t2570)
  %t2582 = getelementptr i8, ptr %t2581, i64 %t2570
  call void @olang_textcopy(ptr %t2582, ptr %t2573, i64 %t2574)
  %t2583 = getelementptr i8, ptr %t2582, i64 %t2574
  call void @olang_textcopy(ptr %t2583, ptr %t2576, i64 %t2577)
  %t2584 = insertvalue { i64, ptr } undef, i64 %t2578, 0
  %t2585 = insertvalue { i64, ptr } %t2584, ptr %t2579, 1
  %t2587 = extractvalue { i64, ptr } %t2585, 0
  %t2588 = extractvalue { i64, ptr } %t2585, 1
  %t2589 = mul i64 %t2587, 1
  %t2590 = call ptr @__olang_scope_alloc(ptr %s82, i64 %t2589)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2590, ptr %t2588, i64 %t2589, i1 false)
  %t2591 = insertvalue { i64, ptr } undef, i64 %t2587, 0
  %t2592 = insertvalue { i64, ptr } %t2591, ptr %t2590, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s82, ptr %t2560, { i64, ptr } %t2592)
  br label %bb414
bb414:
  %t2595 = load i1, ptr %l14, !tbaa !21
  br i1 %t2595, label %bb415, label %bb416
bb415:
  store %olang.scope zeroinitializer, ptr %s91
  %t2597 = load ptr, ptr %l11, !tbaa !29
  %t2598 = load { i64, ptr }, ptr %l79, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s91, ptr %s82, ptr %s91, ptr %s91, ptr %t2597, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d125, i32 0, i32 1) }, { i64, ptr } %t2598, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d126, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb417
bb416:
  %t2601 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t2602 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t2603 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t2605 = extractvalue { i64, ptr } %t2601, 1
  %t2606 = extractvalue { i64, ptr } %t2601, 0
  %t2607 = add i64 %t2603, %t2606
  %t2608 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2607)
  call void @olang_textcopy(ptr %t2608, ptr %t2602, i64 %t2603)
  %t2609 = getelementptr i8, ptr %t2608, i64 %t2603
  call void @olang_textcopy(ptr %t2609, ptr %t2605, i64 %t2606)
  %t2610 = insertvalue { i64, ptr } undef, i64 %t2607, 0
  %t2611 = insertvalue { i64, ptr } %t2610, ptr %t2608, 1
  store { i64, ptr } %t2611, ptr %l885, !tbaa !27
  %t2612 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t2613 = extractvalue { i64, ptr } %t2612, 0
  %t2614 = load { i64, ptr }, ptr %l885, !tbaa !27
  %t2615 = extractvalue { i64, ptr } %t2614, 0
  store i64 %t2615, ptr %l887, !tbaa !24
  %t2617 = load i64, ptr %l887, !tbaa !24
  %t2618 = icmp eq i64 %t2613, %t2617
  br i1 %t2618, label %bb421, label %bb422
bb417:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d128, i32 0, i32 1) }, ptr %l877, !tbaa !27
  %t2620 = load { i64, ptr }, ptr %l877, !tbaa !27
  store { i64, ptr } %t2620, ptr %l878, !tbaa !27
  %t2621 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t2622 = extractvalue { i64, ptr } %t2621, 0
  %t2623 = load { i64, ptr }, ptr %l878, !tbaa !27
  %t2624 = extractvalue { i64, ptr } %t2623, 0
  store i64 %t2624, ptr %l880, !tbaa !24
  %t2626 = load i64, ptr %l880, !tbaa !24
  %t2627 = icmp eq i64 %t2622, %t2626
  br i1 %t2627, label %bb418, label %bb419
bb418:
  %t2629 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t2630 = load ptr, ptr %t2629, !tbaa !27
  %t2631 = getelementptr { i64, ptr }, ptr %l878, i32 0, i32 1
  %t2632 = load ptr, ptr %t2631, !tbaa !27
  %t2633 = load i64, ptr %l880, !tbaa !24
  %t2634 = mul i64 %t2633, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2630, ptr %t2632, i64 %t2634, i1 false)
  br label %bb420
bb419:
  %t2635 = load { i64, ptr }, ptr %l878, !tbaa !27
  %t2636 = extractvalue { i64, ptr } %t2635, 0
  store i64 %t2636, ptr %l882, !tbaa !24
  %t2637 = load i64, ptr %l882, !tbaa !24
  %t2638 = mul i64 %t2637, 1
  %t2639 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2638)
  %t2640 = insertvalue { i64, ptr } undef, i64 %t2637, 0
  %t2641 = insertvalue { i64, ptr } %t2640, ptr %t2639, 1
  store { i64, ptr } %t2641, ptr %l883, !tbaa !27
  %t2642 = getelementptr { i64, ptr }, ptr %l883, i32 0, i32 1
  %t2643 = load ptr, ptr %t2642, !tbaa !27
  %t2644 = getelementptr { i64, ptr }, ptr %l878, i32 0, i32 1
  %t2645 = load ptr, ptr %t2644, !tbaa !27
  %t2646 = load i64, ptr %l882, !tbaa !24
  %t2647 = mul i64 %t2646, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2643, ptr %t2645, i64 %t2647, i1 false)
  %t2648 = load { i64, ptr }, ptr %l883, !tbaa !27
  store { i64, ptr } %t2648, ptr %l74, !tbaa !27
  br label %bb420
bb420:
  call void @__olang_scope_close(ptr %s91)
  br label %bb424
bb421:
  %t2649 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t2650 = load ptr, ptr %t2649, !tbaa !27
  %t2651 = getelementptr { i64, ptr }, ptr %l885, i32 0, i32 1
  %t2652 = load ptr, ptr %t2651, !tbaa !27
  %t2653 = load i64, ptr %l887, !tbaa !24
  %t2654 = mul i64 %t2653, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2650, ptr %t2652, i64 %t2654, i1 false)
  br label %bb423
bb422:
  %t2655 = load { i64, ptr }, ptr %l885, !tbaa !27
  store { i64, ptr } %t2655, ptr %l74, !tbaa !27
  br label %bb423
bb423:
  br label %bb424
bb424:
  call void @__olang_scope_close(ptr %s82)
  br label %bb463
bb425:
  %t2656 = load i1, ptr %l13, !tbaa !21
  br i1 %t2656, label %bb427, label %bb428
bb426:
  %t2658 = load i1, ptr %l13, !tbaa !21
  br i1 %t2658, label %bb435, label %bb436
bb427:
  store %olang.scope zeroinitializer, ptr %s96
  %t2660 = load ptr, ptr %l11, !tbaa !29
  store ptr %t2660, ptr %l891, !tbaa !29
  %t2661 = load ptr, ptr %l0, !tbaa !29
  %t2662 = load i32, ptr %l12, !tbaa !23
  %t2665 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s96, ptr %t2661, i32 %t2662)
  store { i64, ptr } %t2665, ptr %l894
  br label %bb429
bb428:
  br label %bb431
bb429:
  %t2666 = load { i64, ptr }, ptr %l894, !tbaa !27
  %t2667 = extractvalue { i64, ptr } %t2666, 0
  %t2668 = extractvalue { i64, ptr } %t2666, 1
  %t2669 = mul i64 %t2667, 1
  %t2670 = call ptr @__olang_scope_alloc(ptr %s96, i64 %t2669)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2670, ptr %t2668, i64 %t2669, i1 false)
  %t2671 = insertvalue { i64, ptr } undef, i64 %t2667, 0
  %t2672 = insertvalue { i64, ptr } %t2671, ptr %t2670, 1
  %t2673 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t2674 = load ptr, ptr %l891, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s96, ptr %s0, ptr %s96, ptr %s96, ptr %t2674, { i64, ptr } %t2672, { i64, ptr } %t2673, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d129, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb430
bb430:
  call void @__olang_scope_close(ptr %s96)
  br label %bb431
bb431:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d130, i32 0, i32 1) }, ptr %l897, !tbaa !27
  %t2677 = load { i64, ptr }, ptr %l897, !tbaa !27
  store { i64, ptr } %t2677, ptr %l898, !tbaa !27
  %t2678 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t2679 = extractvalue { i64, ptr } %t2678, 0
  %t2680 = load { i64, ptr }, ptr %l898, !tbaa !27
  %t2681 = extractvalue { i64, ptr } %t2680, 0
  store i64 %t2681, ptr %l900, !tbaa !24
  %t2683 = load i64, ptr %l900, !tbaa !24
  %t2684 = icmp eq i64 %t2679, %t2683
  br i1 %t2684, label %bb432, label %bb433
bb432:
  %t2686 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t2687 = load ptr, ptr %t2686, !tbaa !27
  %t2688 = getelementptr { i64, ptr }, ptr %l898, i32 0, i32 1
  %t2689 = load ptr, ptr %t2688, !tbaa !27
  %t2690 = load i64, ptr %l900, !tbaa !24
  %t2691 = mul i64 %t2690, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2687, ptr %t2689, i64 %t2691, i1 false)
  br label %bb434
bb433:
  %t2692 = load { i64, ptr }, ptr %l898, !tbaa !27
  %t2693 = extractvalue { i64, ptr } %t2692, 0
  store i64 %t2693, ptr %l902, !tbaa !24
  %t2694 = load i64, ptr %l902, !tbaa !24
  %t2695 = mul i64 %t2694, 1
  %t2696 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2695)
  %t2697 = insertvalue { i64, ptr } undef, i64 %t2694, 0
  %t2698 = insertvalue { i64, ptr } %t2697, ptr %t2696, 1
  store { i64, ptr } %t2698, ptr %l903, !tbaa !27
  %t2699 = getelementptr { i64, ptr }, ptr %l903, i32 0, i32 1
  %t2700 = load ptr, ptr %t2699, !tbaa !27
  %t2701 = getelementptr { i64, ptr }, ptr %l898, i32 0, i32 1
  %t2702 = load ptr, ptr %t2701, !tbaa !27
  %t2703 = load i64, ptr %l902, !tbaa !24
  %t2704 = mul i64 %t2703, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2700, ptr %t2702, i64 %t2704, i1 false)
  %t2705 = load { i64, ptr }, ptr %l903, !tbaa !27
  store { i64, ptr } %t2705, ptr %l74, !tbaa !27
  br label %bb434
bb434:
  br label %bb462
bb435:
  %t2706 = getelementptr %"compiler/cabi:Way", ptr %l16, i32 0, i32 0
  %t2707 = load i32, ptr %t2706, !range !{i32 0, i32 5}
  store i32 %t2707, ptr %l85
  %t2709 = load i32, ptr %l85, !range !{i32 0, i32 5}
  %t2711 = trunc i64 0 to i32
  %t2712 = icmp eq i32 %t2709, %t2711
  br i1 %t2712, label %bb437, label %bb438
bb436:
  br label %bb461
bb437:
  br label %bb439
bb438:
  br label %bb444
bb439:
  store %olang.scope zeroinitializer, ptr %s99
  %t2714 = load ptr, ptr %l0, !tbaa !29
  %t2715 = load i32, ptr %l12, !tbaa !23
  %t2718 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s99, ptr %t2714, i32 %t2715)
  store { i64, ptr } %t2718, ptr %l910
  br label %bb440
bb440:
  %t2719 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t2720 = load { i64, ptr }, ptr %l910, !tbaa !27
  %t2721 = extractvalue { i64, ptr } %t2720, 1
  %t2722 = extractvalue { i64, ptr } %t2720, 0
  %t2723 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t2724 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t2725 = add i64 %t2722, %t2724
  %t2727 = extractvalue { i64, ptr } %t2719, 1
  %t2728 = extractvalue { i64, ptr } %t2719, 0
  %t2729 = add i64 %t2725, %t2728
  %t2730 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2729)
  call void @olang_textcopy(ptr %t2730, ptr %t2721, i64 %t2722)
  %t2731 = getelementptr i8, ptr %t2730, i64 %t2722
  call void @olang_textcopy(ptr %t2731, ptr %t2723, i64 %t2724)
  %t2732 = getelementptr i8, ptr %t2731, i64 %t2724
  call void @olang_textcopy(ptr %t2732, ptr %t2727, i64 %t2728)
  %t2733 = insertvalue { i64, ptr } undef, i64 %t2729, 0
  %t2734 = insertvalue { i64, ptr } %t2733, ptr %t2730, 1
  store { i64, ptr } %t2734, ptr %l912, !tbaa !27
  %t2735 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t2736 = extractvalue { i64, ptr } %t2735, 0
  %t2737 = load { i64, ptr }, ptr %l912, !tbaa !27
  %t2738 = extractvalue { i64, ptr } %t2737, 0
  store i64 %t2738, ptr %l914, !tbaa !24
  %t2740 = load i64, ptr %l914, !tbaa !24
  %t2741 = icmp eq i64 %t2736, %t2740
  br i1 %t2741, label %bb441, label %bb442
bb441:
  %t2743 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t2744 = load ptr, ptr %t2743, !tbaa !27
  %t2745 = getelementptr { i64, ptr }, ptr %l912, i32 0, i32 1
  %t2746 = load ptr, ptr %t2745, !tbaa !27
  %t2747 = load i64, ptr %l914, !tbaa !24
  %t2748 = mul i64 %t2747, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2744, ptr %t2746, i64 %t2748, i1 false)
  br label %bb443
bb442:
  %t2749 = load { i64, ptr }, ptr %l912, !tbaa !27
  store { i64, ptr } %t2749, ptr %l74, !tbaa !27
  br label %bb443
bb443:
  call void @__olang_scope_close(ptr %s99)
  br label %bb460
bb444:
  %t2750 = load i32, ptr %l85, !range !{i32 0, i32 5}
  %t2752 = trunc i64 1 to i32
  %t2753 = icmp eq i32 %t2750, %t2752
  br i1 %t2753, label %bb445, label %bb446
bb445:
  br label %bb447
bb446:
  br label %bb453
bb447:
  %t2755 = load ptr, ptr %l11, !tbaa !29
  store ptr %t2755, ptr %l918, !tbaa !29
  %t2756 = load %"compiler/cabi:Way", ptr %l16
  store %"compiler/cabi:Way" %t2756, ptr %l919
  %t2758 = call %"compiler/cabi:Way" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcabi_3aWay(ptr %s0, ptr %l919)
  store %"compiler/cabi:Way" %t2758, ptr %l921
  br label %bb448
bb448:
  %t2759 = load i32, ptr %l12, !tbaa !23
  %t2760 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t2761 = load ptr, ptr %l918, !tbaa !29
  %t2762 = load %"compiler/cabi:Way", ptr %l921
  %t2765 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epartsResult(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t2761, %"compiler/cabi:Way" %t2762, i32 %t2759, { i64, ptr } %t2760)
  store { i64, ptr } %t2765, ptr %l924
  br label %bb449
bb449:
  %t2766 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t2767 = extractvalue { i64, ptr } %t2766, 0
  %t2768 = load { i64, ptr }, ptr %l924, !tbaa !27
  %t2769 = extractvalue { i64, ptr } %t2768, 0
  store i64 %t2769, ptr %l926, !tbaa !24
  %t2771 = load i64, ptr %l926, !tbaa !24
  %t2772 = icmp eq i64 %t2767, %t2771
  br i1 %t2772, label %bb450, label %bb451
bb450:
  %t2774 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t2775 = load ptr, ptr %t2774, !tbaa !27
  %t2776 = getelementptr { i64, ptr }, ptr %l924, i32 0, i32 1
  %t2777 = load ptr, ptr %t2776, !tbaa !27
  %t2778 = load i64, ptr %l926, !tbaa !24
  %t2779 = mul i64 %t2778, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2775, ptr %t2777, i64 %t2779, i1 false)
  br label %bb452
bb451:
  %t2780 = load { i64, ptr }, ptr %l924, !tbaa !27
  store { i64, ptr } %t2780, ptr %l74, !tbaa !27
  br label %bb452
bb452:
  br label %bb460
bb453:
  br i1 true, label %bb454, label %bb455
bb454:
  br label %bb456
bb455:
  br label %bb459
bb456:
  store %olang.scope zeroinitializer, ptr %s102
  %t2781 = load ptr, ptr %l11, !tbaa !29
  store ptr %t2781, ptr %l928, !tbaa !29
  %t2782 = load ptr, ptr %l0, !tbaa !29
  %t2783 = load i32, ptr %l12, !tbaa !23
  %t2786 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s102, ptr %t2782, i32 %t2783)
  store { i64, ptr } %t2786, ptr %l931
  br label %bb457
bb457:
  %t2787 = load { i64, ptr }, ptr %l931, !tbaa !27
  %t2788 = extractvalue { i64, ptr } %t2787, 0
  %t2789 = extractvalue { i64, ptr } %t2787, 1
  %t2790 = mul i64 %t2788, 1
  %t2791 = call ptr @__olang_scope_alloc(ptr %s102, i64 %t2790)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2791, ptr %t2789, i64 %t2790, i1 false)
  %t2792 = insertvalue { i64, ptr } undef, i64 %t2788, 0
  %t2793 = insertvalue { i64, ptr } %t2792, ptr %t2791, 1
  %t2794 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t2795 = load ptr, ptr %l928, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s102, ptr %s0, ptr %s102, ptr %s102, ptr %t2795, { i64, ptr } %t2793, { i64, ptr } %t2794, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d132, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb458
bb458:
  call void @__olang_scope_close(ptr %s102)
  br label %bb460
bb459:
  call void @__olang_check_failed(ptr @olang_loc_9000b3cdde9de97e_540aa7fc20a2aa2a)
  unreachable
bb460:
  br label %bb461
bb461:
  br label %bb462
bb462:
  br label %bb463
bb463:
  %t2798 = load ptr, ptr %l11, !tbaa !29
  %t2799 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t2800 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t2801 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t2803 = extractvalue { i64, ptr } %t2799, 1
  %t2804 = extractvalue { i64, ptr } %t2799, 0
  %t2805 = add i64 %t2801, %t2804
  %t2806 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t2807 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t2808 = add i64 %t2805, %t2807
  %t2809 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2808)
  call void @olang_textcopy(ptr %t2809, ptr %t2800, i64 %t2801)
  %t2810 = getelementptr i8, ptr %t2809, i64 %t2801
  call void @olang_textcopy(ptr %t2810, ptr %t2803, i64 %t2804)
  %t2811 = getelementptr i8, ptr %t2810, i64 %t2804
  call void @olang_textcopy(ptr %t2811, ptr %t2806, i64 %t2807)
  %t2812 = insertvalue { i64, ptr } undef, i64 %t2808, 0
  %t2813 = insertvalue { i64, ptr } %t2812, ptr %t2809, 1
  %t2815 = extractvalue { i64, ptr } %t2813, 0
  %t2816 = extractvalue { i64, ptr } %t2813, 1
  %t2817 = mul i64 %t2815, 1
  %t2818 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2817)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2818, ptr %t2816, i64 %t2817, i1 false)
  %t2819 = insertvalue { i64, ptr } undef, i64 %t2815, 0
  %t2820 = insertvalue { i64, ptr } %t2819, ptr %t2818, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t2798, { i64, ptr } %t2820)
  br label %bb464
bb464:
  %t2823 = load ptr, ptr %l11, !tbaa !29
  store ptr %t2823, ptr %l938, !tbaa !29
  %t2824 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t2826 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t2824, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d135, i32 0, i32 1) })
  store i1 %t2826, ptr %l940
  br label %bb465
bb465:
  %t2827 = load i1, ptr %l940, !tbaa !21
  %t2828 = xor i1 %t2827, true
  br i1 %t2828, label %bb466, label %bb467
bb466:
  %t2830 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t2830, ptr %l942, !tbaa !27
  br label %bb468
bb467:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d136, i32 0, i32 1) }, ptr %l942, !tbaa !27
  br label %bb468
bb468:
  %t2832 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t2833 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t2834 = load { i64, ptr }, ptr %l942, !tbaa !27
  %t2835 = extractvalue { i64, ptr } %t2834, 1
  %t2836 = extractvalue { i64, ptr } %t2834, 0
  %t2837 = add i64 %t2833, %t2836
  %t2838 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2837)
  call void @olang_textcopy(ptr %t2838, ptr %t2832, i64 %t2833)
  %t2839 = getelementptr i8, ptr %t2838, i64 %t2833
  call void @olang_textcopy(ptr %t2839, ptr %t2835, i64 %t2836)
  %t2840 = insertvalue { i64, ptr } undef, i64 %t2837, 0
  %t2841 = insertvalue { i64, ptr } %t2840, ptr %t2838, 1
  %t2843 = extractvalue { i64, ptr } %t2841, 0
  %t2844 = extractvalue { i64, ptr } %t2841, 1
  %t2845 = mul i64 %t2843, 1
  %t2846 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2845)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2846, ptr %t2844, i64 %t2845, i1 false)
  %t2847 = insertvalue { i64, ptr } undef, i64 %t2843, 0
  %t2848 = insertvalue { i64, ptr } %t2847, ptr %t2846, 1
  %t2849 = load ptr, ptr %l938, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t2849, { i64, ptr } %t2848)
  br label %bb469
bb469:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d138, i32 0, i32 1) }, ptr %l946, !tbaa !27
  %t2851 = load { i64, ptr }, ptr %l946, !tbaa !27
  store { i64, ptr } %t2851, ptr %l947, !tbaa !27
  %t2852 = getelementptr { i64, ptr }, ptr %l947, i32 0, i32 1
  %t2853 = load ptr, ptr %t2852, !tbaa !27
  %t2854 = mul i64 4, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l948, ptr %t2853, i64 %t2854, i1 false)
  %t2856 = insertvalue { i64, ptr } undef, i64 4, 0
  %t2857 = insertvalue { i64, ptr } %t2856, ptr %l948, 1
  store { i64, ptr } %t2857, ptr %l86, !tbaa !27
  %t2859 = load i1, ptr %l14, !tbaa !21
  br i1 %t2859, label %bb470, label %bb471
bb470:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l952, !tbaa !27
  %t2861 = load { i64, ptr }, ptr %l952, !tbaa !27
  store { i64, ptr } %t2861, ptr %l953, !tbaa !27
  %t2862 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t2863 = extractvalue { i64, ptr } %t2862, 0
  %t2864 = load { i64, ptr }, ptr %l953, !tbaa !27
  %t2865 = extractvalue { i64, ptr } %t2864, 0
  store i64 %t2865, ptr %l955, !tbaa !24
  %t2867 = load i64, ptr %l955, !tbaa !24
  %t2868 = icmp eq i64 %t2863, %t2867
  br i1 %t2868, label %bb472, label %bb473
bb471:
  %t2870 = load i1, ptr %l15, !tbaa !21
  br i1 %t2870, label %bb475, label %bb476
bb472:
  %t2872 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t2873 = load ptr, ptr %t2872, !tbaa !27
  %t2874 = getelementptr { i64, ptr }, ptr %l953, i32 0, i32 1
  %t2875 = load ptr, ptr %t2874, !tbaa !27
  %t2876 = load i64, ptr %l955, !tbaa !24
  %t2877 = mul i64 %t2876, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2873, ptr %t2875, i64 %t2877, i1 false)
  br label %bb474
bb473:
  %t2878 = load { i64, ptr }, ptr %l953, !tbaa !27
  %t2879 = extractvalue { i64, ptr } %t2878, 0
  store i64 %t2879, ptr %l957, !tbaa !24
  %t2880 = load i64, ptr %l957, !tbaa !24
  %t2881 = mul i64 %t2880, 1
  %t2882 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2881)
  %t2883 = insertvalue { i64, ptr } undef, i64 %t2880, 0
  %t2884 = insertvalue { i64, ptr } %t2883, ptr %t2882, 1
  store { i64, ptr } %t2884, ptr %l958, !tbaa !27
  %t2885 = getelementptr { i64, ptr }, ptr %l958, i32 0, i32 1
  %t2886 = load ptr, ptr %t2885, !tbaa !27
  %t2887 = getelementptr { i64, ptr }, ptr %l953, i32 0, i32 1
  %t2888 = load ptr, ptr %t2887, !tbaa !27
  %t2889 = load i64, ptr %l957, !tbaa !24
  %t2890 = mul i64 %t2889, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2886, ptr %t2888, i64 %t2890, i1 false)
  %t2891 = load { i64, ptr }, ptr %l958, !tbaa !27
  store { i64, ptr } %t2891, ptr %l86, !tbaa !27
  br label %bb474
bb474:
  br label %bb506
bb475:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d140, i32 0, i32 1) }, ptr %l960, !tbaa !27
  %t2892 = load { i64, ptr }, ptr %l960, !tbaa !27
  store { i64, ptr } %t2892, ptr %l961, !tbaa !27
  %t2893 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t2894 = extractvalue { i64, ptr } %t2893, 0
  %t2895 = load { i64, ptr }, ptr %l961, !tbaa !27
  %t2896 = extractvalue { i64, ptr } %t2895, 0
  store i64 %t2896, ptr %l963, !tbaa !24
  %t2898 = load i64, ptr %l963, !tbaa !24
  %t2899 = icmp eq i64 %t2894, %t2898
  br i1 %t2899, label %bb477, label %bb478
bb476:
  %t2901 = load i1, ptr %l13, !tbaa !21
  br i1 %t2901, label %bb480, label %bb481
bb477:
  %t2903 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t2904 = load ptr, ptr %t2903, !tbaa !27
  %t2905 = getelementptr { i64, ptr }, ptr %l961, i32 0, i32 1
  %t2906 = load ptr, ptr %t2905, !tbaa !27
  %t2907 = load i64, ptr %l963, !tbaa !24
  %t2908 = mul i64 %t2907, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2904, ptr %t2906, i64 %t2908, i1 false)
  br label %bb479
bb478:
  %t2909 = load { i64, ptr }, ptr %l961, !tbaa !27
  %t2910 = extractvalue { i64, ptr } %t2909, 0
  store i64 %t2910, ptr %l965, !tbaa !24
  %t2911 = load i64, ptr %l965, !tbaa !24
  %t2912 = mul i64 %t2911, 1
  %t2913 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2912)
  %t2914 = insertvalue { i64, ptr } undef, i64 %t2911, 0
  %t2915 = insertvalue { i64, ptr } %t2914, ptr %t2913, 1
  store { i64, ptr } %t2915, ptr %l966, !tbaa !27
  %t2916 = getelementptr { i64, ptr }, ptr %l966, i32 0, i32 1
  %t2917 = load ptr, ptr %t2916, !tbaa !27
  %t2918 = getelementptr { i64, ptr }, ptr %l961, i32 0, i32 1
  %t2919 = load ptr, ptr %t2918, !tbaa !27
  %t2920 = load i64, ptr %l965, !tbaa !24
  %t2921 = mul i64 %t2920, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2917, ptr %t2919, i64 %t2921, i1 false)
  %t2922 = load { i64, ptr }, ptr %l966, !tbaa !27
  store { i64, ptr } %t2922, ptr %l86, !tbaa !27
  br label %bb479
bb479:
  br label %bb505
bb480:
  %t2923 = getelementptr %"compiler/cabi:Way", ptr %l16, i32 0, i32 0
  %t2924 = load i32, ptr %t2923, !range !{i32 0, i32 5}
  store i32 %t2924, ptr %l87
  %t2926 = load i32, ptr %l87, !range !{i32 0, i32 5}
  %t2928 = trunc i64 0 to i32
  %t2929 = icmp eq i32 %t2926, %t2928
  br i1 %t2929, label %bb482, label %bb483
bb481:
  br label %bb504
bb482:
  br label %bb484
bb483:
  br label %bb490
bb484:
  store %olang.scope zeroinitializer, ptr %s110
  %t2931 = getelementptr %"compiler/cabi:Way", ptr %l16, i32 0, i32 4
  %t2932 = load { i64, ptr }, ptr %t2931, !tbaa !27
  %t2934 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s110, { i64, ptr } %t2932, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d141, i32 0, i32 1) })
  store i1 %t2934, ptr %l973
  br label %bb485
bb485:
  %t2935 = load i1, ptr %l973, !tbaa !21
  %t2936 = xor i1 %t2935, true
  br i1 %t2936, label %bb486, label %bb487
bb486:
  %t2938 = getelementptr %"compiler/cabi:Way", ptr %l16, i32 0, i32 4
  %t2939 = load { i64, ptr }, ptr %t2938, !tbaa !27
  %t2941 = extractvalue { i64, ptr } %t2939, 1
  %t2942 = extractvalue { i64, ptr } %t2939, 0
  %t2943 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t2944 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t2945 = add i64 %t2942, %t2944
  %t2946 = call ptr @__olang_scope_alloc(ptr %s110, i64 %t2945)
  call void @olang_textcopy(ptr %t2946, ptr %t2941, i64 %t2942)
  %t2947 = getelementptr i8, ptr %t2946, i64 %t2942
  call void @olang_textcopy(ptr %t2947, ptr %t2943, i64 %t2944)
  %t2948 = insertvalue { i64, ptr } undef, i64 %t2945, 0
  %t2949 = insertvalue { i64, ptr } %t2948, ptr %t2946, 1
  %t2951 = extractvalue { i64, ptr } %t2949, 0
  %t2952 = extractvalue { i64, ptr } %t2949, 1
  %t2953 = mul i64 %t2951, 1
  %t2954 = call ptr @__olang_scope_alloc(ptr %s110, i64 %t2953)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2954, ptr %t2952, i64 %t2953, i1 false)
  %t2955 = insertvalue { i64, ptr } undef, i64 %t2951, 0
  %t2956 = insertvalue { i64, ptr } %t2955, ptr %t2954, 1
  store { i64, ptr } %t2956, ptr %l975, !tbaa !27
  br label %bb488
bb487:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d143, i32 0, i32 1) }, ptr %l975, !tbaa !27
  br label %bb488
bb488:
  %t2958 = load ptr, ptr %l0, !tbaa !29
  %t2959 = load i32, ptr %l12, !tbaa !23
  %t2962 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s110, ptr %t2958, i32 %t2959)
  store { i64, ptr } %t2962, ptr %l981
  br label %bb489
bb489:
  %t2963 = load { i64, ptr }, ptr %l975, !tbaa !27
  %t2964 = extractvalue { i64, ptr } %t2963, 1
  %t2965 = extractvalue { i64, ptr } %t2963, 0
  %t2966 = load { i64, ptr }, ptr %l981, !tbaa !27
  %t2967 = extractvalue { i64, ptr } %t2966, 1
  %t2968 = extractvalue { i64, ptr } %t2966, 0
  %t2969 = add i64 %t2965, %t2968
  %t2970 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t2969)
  call void @olang_textcopy(ptr %t2970, ptr %t2964, i64 %t2965)
  %t2971 = getelementptr i8, ptr %t2970, i64 %t2965
  call void @olang_textcopy(ptr %t2971, ptr %t2967, i64 %t2968)
  %t2972 = insertvalue { i64, ptr } undef, i64 %t2969, 0
  %t2973 = insertvalue { i64, ptr } %t2972, ptr %t2970, 1
  store { i64, ptr } %t2973, ptr %l969, !tbaa !27
  call void @__olang_scope_close(ptr %s110)
  br label %bb500
bb490:
  %t2975 = load i32, ptr %l87, !range !{i32 0, i32 5}
  %t2977 = trunc i64 1 to i32
  %t2978 = icmp eq i32 %t2975, %t2977
  br i1 %t2978, label %bb491, label %bb492
bb491:
  br label %bb493
bb492:
  br label %bb495
bb493:
  %t2981 = call { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %s0, ptr %s0, ptr %l16)
  store { i64, ptr } %t2981, ptr %l986
  br label %bb494
bb494:
  %t2982 = load { i64, ptr }, ptr %l986, !tbaa !27
  store { i64, ptr } %t2982, ptr %l969, !tbaa !27
  br label %bb500
bb495:
  br i1 true, label %bb496, label %bb497
bb496:
  br label %bb498
bb497:
  br label %bb499
bb498:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d144, i32 0, i32 1) }, ptr %l987, !tbaa !27
  %t2983 = load { i64, ptr }, ptr %l987, !tbaa !27
  store { i64, ptr } %t2983, ptr %l969, !tbaa !27
  br label %bb500
bb499:
  call void @__olang_check_failed(ptr @olang_loc_882423aaa1f01f7f_b9c3af967e36d8eb)
  unreachable
bb500:
  %t2985 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t2986 = extractvalue { i64, ptr } %t2985, 0
  %t2987 = load { i64, ptr }, ptr %l969, !tbaa !27
  %t2988 = extractvalue { i64, ptr } %t2987, 0
  store i64 %t2988, ptr %l990, !tbaa !24
  %t2990 = load i64, ptr %l990, !tbaa !24
  %t2991 = icmp eq i64 %t2986, %t2990
  br i1 %t2991, label %bb501, label %bb502
bb501:
  %t2993 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t2994 = load ptr, ptr %t2993, !tbaa !27
  %t2995 = getelementptr { i64, ptr }, ptr %l969, i32 0, i32 1
  %t2996 = load ptr, ptr %t2995, !tbaa !27
  %t2997 = load i64, ptr %l990, !tbaa !24
  %t2998 = mul i64 %t2997, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2994, ptr %t2996, i64 %t2998, i1 false)
  br label %bb503
bb502:
  %t2999 = load { i64, ptr }, ptr %l969, !tbaa !27
  %t3000 = extractvalue { i64, ptr } %t2999, 0
  store i64 %t3000, ptr %l992, !tbaa !24
  %t3001 = load i64, ptr %l992, !tbaa !24
  %t3002 = mul i64 %t3001, 1
  %t3003 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t3002)
  %t3004 = insertvalue { i64, ptr } undef, i64 %t3001, 0
  %t3005 = insertvalue { i64, ptr } %t3004, ptr %t3003, 1
  store { i64, ptr } %t3005, ptr %l993, !tbaa !27
  %t3006 = getelementptr { i64, ptr }, ptr %l993, i32 0, i32 1
  %t3007 = load ptr, ptr %t3006, !tbaa !27
  %t3008 = getelementptr { i64, ptr }, ptr %l969, i32 0, i32 1
  %t3009 = load ptr, ptr %t3008, !tbaa !27
  %t3010 = load i64, ptr %l992, !tbaa !24
  %t3011 = mul i64 %t3010, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t3007, ptr %t3009, i64 %t3011, i1 false)
  %t3012 = load { i64, ptr }, ptr %l993, !tbaa !27
  store { i64, ptr } %t3012, ptr %l86, !tbaa !27
  br label %bb503
bb503:
  br label %bb504
bb504:
  br label %bb505
bb505:
  br label %bb506
bb506:
  %t3013 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t3013, ptr %l994
  br label %bb507
bb507:
  %t3014 = load %"std/prelude/text:StringBuilder", ptr %l994
  store %"std/prelude/text:StringBuilder" %t3014, ptr %l88
  %t3015 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t3016 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t3017 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t3018 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t3020 = extractvalue { i64, ptr } %t3015, 1
  %t3021 = extractvalue { i64, ptr } %t3015, 0
  %t3022 = add i64 %t3018, %t3021
  %t3023 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t3024 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t3025 = add i64 %t3022, %t3024
  %t3027 = extractvalue { i64, ptr } %t3016, 1
  %t3028 = extractvalue { i64, ptr } %t3016, 0
  %t3029 = add i64 %t3025, %t3028
  %t3030 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t3031 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t3032 = add i64 %t3029, %t3031
  %t3033 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t3032)
  call void @olang_textcopy(ptr %t3033, ptr %t3017, i64 %t3018)
  %t3034 = getelementptr i8, ptr %t3033, i64 %t3018
  call void @olang_textcopy(ptr %t3034, ptr %t3020, i64 %t3021)
  %t3035 = getelementptr i8, ptr %t3034, i64 %t3021
  call void @olang_textcopy(ptr %t3035, ptr %t3023, i64 %t3024)
  %t3036 = getelementptr i8, ptr %t3035, i64 %t3024
  call void @olang_textcopy(ptr %t3036, ptr %t3027, i64 %t3028)
  %t3037 = getelementptr i8, ptr %t3036, i64 %t3028
  call void @olang_textcopy(ptr %t3037, ptr %t3030, i64 %t3031)
  %t3038 = insertvalue { i64, ptr } undef, i64 %t3032, 0
  %t3039 = insertvalue { i64, ptr } %t3038, ptr %t3033, 1
  %t3041 = extractvalue { i64, ptr } %t3039, 0
  %t3042 = extractvalue { i64, ptr } %t3039, 1
  %t3043 = mul i64 %t3041, 1
  %t3044 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t3043)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3044, ptr %t3042, i64 %t3043, i1 false)
  %t3045 = insertvalue { i64, ptr } undef, i64 %t3041, 0
  %t3046 = insertvalue { i64, ptr } %t3045, ptr %t3044, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l88, { i64, ptr } %t3046)
  br label %bb508
bb508:
  store ptr %l17, ptr %l89, !tbaa !29
  store i64 0, ptr %l90, !tbaa !24
  br label %bb509
bb509:
  %t3050 = load i64, ptr %l90, !tbaa !24
  store i64 %t3050, ptr %l1001, !tbaa !24
  %t3051 = load ptr, ptr %l89, !tbaa !29
  %t3053 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t3051)
  store i64 %t3053, ptr %l1003
  br label %bb510
bb510:
  %t3054 = load i64, ptr %l1001, !tbaa !24
  %t3055 = load i64, ptr %l1003, !tbaa !24
  %t3056 = icmp slt i64 %t3054, %t3055
  %t3058 = xor i1 %t3056, true
  br i1 %t3058, label %bb511, label %bb512
bb511:
  br label %bb521
bb512:
  br label %bb513
bb513:
  %t3060 = load i64, ptr %l90, !tbaa !24
  store i64 %t3060, ptr %l91, !tbaa !24
  %t3062 = load ptr, ptr %l89, !tbaa !29
  %t3063 = load i64, ptr %l90, !tbaa !24
  %t3066 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t3062, i64 %t3063)
  store { i64, ptr } %t3066, ptr %l1009
  br label %bb514
bb514:
  %t3067 = load { i64, ptr }, ptr %l1009, !tbaa !27
  store { i64, ptr } %t3067, ptr %l92, !tbaa !27
  %t3068 = load i64, ptr %l91, !tbaa !24
  %t3070 = icmp sgt i64 %t3068, 0
  br i1 %t3070, label %bb515, label %bb516
bb515:
  store %olang.scope zeroinitializer, ptr %s118
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s118, ptr %l88, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb517
bb516:
  br label %bb518
bb517:
  call void @__olang_scope_close(ptr %s118)
  br label %bb518
bb518:
  %t3073 = load { i64, ptr }, ptr %l92, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l88, { i64, ptr } %t3073)
  br label %bb519
bb519:
  br label %bb520
bb520:
  %t3076 = load i64, ptr %l90, !tbaa !24
  %t3078 = add i64 %t3076, 1
  store i64 %t3078, ptr %l90, !tbaa !24
  br label %bb509
bb521:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l88, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d149, i32 0, i32 1) })
  br label %bb522
bb522:
  store ptr %l88, ptr %l1018, !tbaa !29
  %t3081 = load ptr, ptr %l11, !tbaa !29
  %t3083 = getelementptr %"compiler/emit:fnEm", ptr %t3081, i32 0, i32 3
  %t3085 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t3083)
  store { i64, ptr } %t3085, ptr %l1021
  br label %bb523
bb523:
  %t3086 = load { i64, ptr }, ptr %l1021, !tbaa !27
  %t3087 = extractvalue { i64, ptr } %t3086, 0
  %t3088 = extractvalue { i64, ptr } %t3086, 1
  %t3089 = mul i64 %t3087, 1
  %t3090 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t3089)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3090, ptr %t3088, i64 %t3089, i1 false)
  %t3091 = insertvalue { i64, ptr } undef, i64 %t3087, 0
  %t3092 = insertvalue { i64, ptr } %t3091, ptr %t3090, 1
  %t3093 = load ptr, ptr %l1018, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t3093, { i64, ptr } %t3092)
  br label %bb524
bb524:
  store ptr %l88, ptr %l1023, !tbaa !29
  %t3095 = load ptr, ptr %l11, !tbaa !29
  %t3097 = getelementptr %"compiler/emit:fnEm", ptr %t3095, i32 0, i32 5
  %t3099 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t3097)
  store { i64, ptr } %t3099, ptr %l1026
  br label %bb525
bb525:
  %t3100 = load { i64, ptr }, ptr %l1026, !tbaa !27
  %t3101 = extractvalue { i64, ptr } %t3100, 0
  %t3102 = extractvalue { i64, ptr } %t3100, 1
  %t3103 = mul i64 %t3101, 1
  %t3104 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t3103)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3104, ptr %t3102, i64 %t3103, i1 false)
  %t3105 = insertvalue { i64, ptr } undef, i64 %t3101, 0
  %t3106 = insertvalue { i64, ptr } %t3105, ptr %t3104, 1
  %t3107 = load ptr, ptr %l1023, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t3107, { i64, ptr } %t3106)
  br label %bb526
bb526:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l88, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d150, i32 0, i32 1) })
  br label %bb527
bb527:
  %t3110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3110, ptr %l1029, !tbaa !29
  %t3111 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t3111, ptr %l1030, !tbaa !27
  %t3112 = load ptr, ptr %l3, !tbaa !29
  %t3114 = getelementptr %"compiler/generic:Program", ptr %t3112, i32 0, i32 0
  %t3115 = load ptr, ptr %t3114, !tbaa !29
  %t3117 = getelementptr %"compiler/load:Loader", ptr %t3115, i32 0, i32 12
  %t3118 = load i64, ptr %t3117, !tbaa !24
  store i64 %t3118, ptr %l1033, !tbaa !24
  %t3119 = ptrtoint ptr %s0 to i64
  store i64 %t3119, ptr %l1034, !tbaa !24
  %t3120 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t3120, label %bb528, label %bb529
bb528:
  %t3122 = call ptr @__olang_region_make(ptr %s0)
  %t3123 = ptrtoint ptr %t3122 to i64
  store i64 %t3123, ptr %l1034, !tbaa !24
  br label %bb529
bb529:
  %t3124 = load i64, ptr %l1034
  %t3125 = inttoptr i64 %t3124 to ptr
  %t3127 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t3125, ptr %l88)
  store { i64, ptr } %t3127, ptr %l1037
  br label %bb530
bb530:
  %t3128 = load { i64, ptr }, ptr %l1037, !tbaa !27
  %t3129 = load i64, ptr %l1034
  %t3130 = inttoptr i64 %t3129 to ptr
  %t3131 = extractvalue { i64, ptr } %t3128, 0
  %t3132 = extractvalue { i64, ptr } %t3128, 1
  %t3133 = mul i64 %t3131, 1
  %t3134 = call ptr @__olang_scope_alloc(ptr %t3130, i64 %t3133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3134, ptr %t3132, i64 %t3133, i1 false)
  %t3135 = insertvalue { i64, ptr } undef, i64 %t3131, 0
  %t3136 = insertvalue { i64, ptr } %t3135, ptr %t3134, 1
  %t3137 = load ptr, ptr %l1029, !tbaa !29
  %t3138 = load { i64, ptr }, ptr %l1030, !tbaa !27
  %t3139 = load i64, ptr %l1033, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t3137, { i64, ptr } %t3138, i64 %t3139, { i64, ptr } %t3136, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d151, i32 0, i32 1) })
  br label %bb531
bb531:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehead(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 24
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t5 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t8 = extractvalue { i64, ptr } %t4, 1
  %t9 = extractvalue { i64, ptr } %t4, 0
  %t10 = add i64 %t6, %t9
  %t11 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t14 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t13)
  call void @olang_textcopy(ptr %t14, ptr %t5, i64 %t6)
  %t15 = getelementptr i8, ptr %t14, i64 %t6
  call void @olang_textcopy(ptr %t15, ptr %t8, i64 %t9)
  %t16 = getelementptr i8, ptr %t15, i64 %t9
  call void @olang_textcopy(ptr %t16, ptr %t11, i64 %t12)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t14, 1
  store { i64, ptr } %t18, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2einitOrder(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l54 = alloca ptr
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca i64
  %l83 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3aLowerer_2eInitModules(ptr %v0, ptr %s0, ptr %t4)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l18
  br label %bb1
bb1:
  %t7 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l1
  %t8 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l19
  br label %bb2
bb2:
  %t9 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l20
  br label %bb3
bb3:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l3
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/emit:Emitter", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/load:Loader", ptr %t18, i32 0, i32 10
  store ptr %t20, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l26
  br label %bb4
bb4:
  %t25 = load i64, ptr %l26, !tbaa !24
  store i64 %t25, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load i64, ptr %l7, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb10
bb7:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l33, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb9
bb9:
  %t52 = load i64, ptr %l33, !tbaa !24
  store i64 %t52, ptr %l30, !tbaa !24
  br label %bb10
bb10:
  %t53 = load i64, ptr %l30, !tbaa !24
  store i64 %t53, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l10, !tbaa !24
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t74 = load i64, ptr %l10, !tbaa !24
  %t77 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t72, i64 %t74)
  store ptr %t77, ptr %l54
  br label %bb15
bb15:
  %t78 = load ptr, ptr %l54, !tbaa !29
  %t80 = getelementptr %"compiler/load:Module", ptr %t78, i32 0, i32 3
  %t81 = load i1, ptr %t80, !tbaa !21
  br i1 %t81, label %bb16, label %bb17
bb16:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2evisit(ptr %v0, ptr %s0, ptr %s0, ptr %t83, i64 %t84, ptr %l2, ptr %l3)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t89 = load i64, ptr %l9, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l9, !tbaa !24
  br label %bb11
bb21:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/emit:Emitter", ptr %t94, i32 0, i32 0
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/load:Loader", ptr %t100, i32 0, i32 12
  %t103 = load i64, ptr %t102, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2evisit(ptr %v0, ptr %s0, ptr %s0, ptr %t93, i64 %t103, ptr %l2, ptr %l3)
  br label %bb22
bb22:
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l70
  br label %bb23
bb23:
  %t109 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t109, ptr %lp11
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  %t111 = load ptr, ptr %lp11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %t111
  store ptr %l3, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb24
bb24:
  %t113 = load i64, ptr %l13, !tbaa !24
  store i64 %t113, ptr %l72, !tbaa !24
  %t114 = load ptr, ptr %l12, !tbaa !29
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t114)
  store i64 %t116, ptr %l74
  br label %bb25
bb25:
  %t117 = load i64, ptr %l72, !tbaa !24
  %t118 = load i64, ptr %l74, !tbaa !24
  %t119 = icmp slt i64 %t117, %t118
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb26, label %bb27
bb26:
  br label %bb36
bb27:
  br label %bb28
bb28:
  %t123 = load ptr, ptr %l12, !tbaa !29
  %t124 = load i64, ptr %l13, !tbaa !24
  %t127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t123, i64 %t124)
  store i64 %t127, ptr %l79
  br label %bb29
bb29:
  %t128 = load i64, ptr %l79, !tbaa !24
  store i64 %t128, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l14, !tbaa !24
  %t134 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %l1, i64 %t129)
  store i1 %t134, ptr %l83
  br label %bb30
bb30:
  %t135 = load i1, ptr %l83, !tbaa !21
  br i1 %t135, label %bb31, label %bb32
bb31:
  %t136 = load ptr, ptr %lp11
  %t137 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t136, i64 %t137)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t140 = load i64, ptr %l13, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l13, !tbaa !24
  br label %bb24
bb36:
  %t144 = load ptr, ptr %lp11
  %t145 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t144
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t145, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstGroupOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 77
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %a1)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load i64, ptr %l6, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, i64 %a4, i1 %a5, i1 %a6, ptr %a7, i64 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
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
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
  %l37 = alloca i1
  %l40 = alloca i1
  %l48 = alloca i64
  %l49 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l54 = alloca i64
  %l57 = alloca i64
  %l76 = alloca i64
  %l80 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i64
  %l108 = alloca i64
  %l112 = alloca i1
  %l114 = alloca i1
  %l118 = alloca i1
  %l121 = alloca i1
  %l124 = alloca i64
  %l127 = alloca i1
  %l130 = alloca i1
  %l133 = alloca i64
  %l136 = alloca i64
  %l140 = alloca { i64, ptr }
  %l147 = alloca i64
  %l154 = alloca i64
  %l165 = alloca i1
  %l172 = alloca i64
  %l175 = alloca i64
  %l195 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l207 = alloca ptr
  %l208 = alloca i64
  %l212 = alloca { i64, ptr }
  %l213 = alloca i32
  %l214 = alloca i64
  %l225 = alloca { i64, ptr }
  %l227 = alloca %"compiler/emit:Object"
  %l233 = alloca i64
  %l235 = alloca ptr
  %l236 = alloca i64
  %l238 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l243 = alloca { i64, ptr }
  %l244 = alloca i32
  %l245 = alloca i64
  %l249 = alloca { i64, ptr }
  %l251 = alloca %"compiler/emit:Object"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i1 %a5, ptr %l5
  store i1 %a6, ptr %l6
  store i64 %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i1, ptr %l6, !tbaa !21
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/emit:Emitter", ptr %t3, i32 0, i32 4
  %t6 = load i1, ptr %t5, !tbaa !21
  store i1 %t6, ptr %l37, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb3
bb3:
  %t8 = load i1, ptr %l37, !tbaa !21
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 12
  %t19 = load i64, ptr %t18, !tbaa !24
  %t22 = icmp eq i64 %t9, %t19
  store i1 %t22, ptr %l40, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l40, !tbaa !21
  store i1 %t24, ptr %l9, !tbaa !21
  %t25 = load i1, ptr %l9, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i64 2, ptr %l48, !tbaa !24
  br label %bb9
bb8:
  store i64 1, ptr %l48, !tbaa !24
  br label %bb9
bb9:
  %t27 = load i64, ptr %l48, !tbaa !24
  store i64 %t27, ptr %l10, !tbaa !24
  %t28 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t28, ptr %l49
  br label %bb10
bb10:
  %t29 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l49
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  %t30 = load i64, ptr %l10, !tbaa !24
  store i64 %t30, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t32 = load i64, ptr %l13, !tbaa !24
  %t33 = load i64, ptr %l12, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load i64, ptr %l14, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb16
bb13:
  %t42 = load i64, ptr %l13, !tbaa !24
  %t43 = load i64, ptr %l12, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l14, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l14, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l57, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l57, !tbaa !24
  store i64 %t58, ptr %l54, !tbaa !24
  br label %bb16
bb16:
  %t59 = load i64, ptr %l54, !tbaa !24
  store i64 %t59, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb17
bb17:
  %t60 = load i64, ptr %l16, !tbaa !24
  %t61 = load i64, ptr %l15, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb18, label %bb19
bb18:
  br label %bb103
bb19:
  br label %bb20
bb20:
  %t68 = load i64, ptr %l12, !tbaa !24
  %t69 = load i64, ptr %l16, !tbaa !24
  %t70 = load i64, ptr %l14, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l17, !tbaa !24
  %t78 = load i1, ptr %l9, !tbaa !21
  br i1 %t78, label %bb21, label %bb22
bb21:
  %t80 = load i64, ptr %l17, !tbaa !24
  store i64 %t80, ptr %l76, !tbaa !24
  br label %bb23
bb22:
  store i64 -1, ptr %l76, !tbaa !24
  br label %bb23
bb23:
  %t82 = load i64, ptr %l76, !tbaa !24
  store i64 %t82, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/emit:Emitter", ptr %t83, i32 0, i32 18
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l80
  br label %bb24
bb24:
  %t88 = load i64, ptr %l80, !tbaa !24
  store i64 %t88, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t89 = load i64, ptr %l21, !tbaa !24
  %t90 = load i64, ptr %l20, !tbaa !24
  %t93 = icmp sgt i64 %t89, %t90
  br i1 %t93, label %bb25, label %bb26
bb25:
  %t95 = load i64, ptr %l22, !tbaa !24
  %t97 = icmp sgt i64 %t95, 0
  br i1 %t97, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb30
bb27:
  %t99 = load i64, ptr %l21, !tbaa !24
  %t100 = load i64, ptr %l20, !tbaa !24
  %t103 = sub i64 %t99, %t100
  %t104 = load i64, ptr %l22, !tbaa !24
  %t107 = add i64 %t103, %t104
  %t109 = sub i64 %t107, 1
  %t110 = load i64, ptr %l22, !tbaa !24
  %t113 = sdiv i64 %t109, %t110
  store i64 %t113, ptr %l87, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb29
bb29:
  %t115 = load i64, ptr %l87, !tbaa !24
  store i64 %t115, ptr %l84, !tbaa !24
  br label %bb30
bb30:
  %t116 = load i64, ptr %l84, !tbaa !24
  store i64 %t116, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb31
bb31:
  %t117 = load i64, ptr %l24, !tbaa !24
  %t118 = load i64, ptr %l23, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb32, label %bb33
bb32:
  br label %bb61
bb33:
  br label %bb34
bb34:
  %t125 = load i64, ptr %l20, !tbaa !24
  %t126 = load i64, ptr %l24, !tbaa !24
  %t127 = load i64, ptr %l22, !tbaa !24
  %t130 = mul i64 %t126, %t127
  %t133 = add i64 %t125, %t130
  store i64 %t133, ptr %l25, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/emit:Emitter", ptr %t135, i32 0, i32 20
  %t138 = load i64, ptr %l25, !tbaa !24
  %t141 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t137, i64 %t138)
  store i64 %t141, ptr %l108
  br label %bb35
bb35:
  %t142 = load i64, ptr %l108, !tbaa !24
  store i64 %t142, ptr %l26, !tbaa !24
  %t143 = load i64, ptr %l26, !tbaa !24
  %t144 = load i64, ptr %l4, !tbaa !24
  %t147 = icmp eq i64 %t143, %t144
  br i1 %t147, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l112, !tbaa !21
  br label %bb41
bb37:
  %t149 = load i1, ptr %l5, !tbaa !21
  br i1 %t149, label %bb38, label %bb39
bb38:
  %t151 = load i64, ptr %l26, !tbaa !24
  %t152 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t155 = icmp eq i64 %t151, %t152
  store i1 %t155, ptr %l114, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb40
bb40:
  %t157 = load i1, ptr %l114, !tbaa !21
  store i1 %t157, ptr %l112, !tbaa !21
  br label %bb41
bb41:
  %t158 = load i1, ptr %l112, !tbaa !21
  br i1 %t158, label %bb42, label %bb43
bb42:
  %t159 = load i64, ptr %l18, !tbaa !24
  %t161 = icmp slt i64 %t159, 0
  br i1 %t161, label %bb44, label %bb45
bb43:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb48
bb44:
  store i1 true, ptr %l121, !tbaa !21
  br label %bb47
bb45:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i64, ptr %l25, !tbaa !24
  %t167 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupOf(ptr %v0, ptr %t163, i64 %t164)
  store i64 %t167, ptr %l124
  br label %bb46
bb46:
  %t168 = load i64, ptr %l18, !tbaa !24
  %t169 = load i64, ptr %l124, !tbaa !24
  %t171 = icmp eq i64 %t169, %t168
  store i1 %t171, ptr %l121, !tbaa !21
  br label %bb47
bb47:
  %t173 = load i1, ptr %l121, !tbaa !21
  store i1 %t173, ptr %l118, !tbaa !21
  br label %bb48
bb48:
  %t174 = load i1, ptr %l118, !tbaa !21
  br i1 %t174, label %bb49, label %bb50
bb49:
  %t175 = load i64, ptr %l8, !tbaa !24
  %t177 = icmp slt i64 %t175, 0
  br i1 %t177, label %bb51, label %bb52
bb50:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb55
bb51:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb54
bb52:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i64, ptr %l25, !tbaa !24
  %t183 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstGroupOf(ptr %v0, ptr %t179, i64 %t180)
  store i64 %t183, ptr %l133
  br label %bb53
bb53:
  %t184 = load i64, ptr %l8, !tbaa !24
  %t185 = load i64, ptr %l133, !tbaa !24
  %t187 = icmp eq i64 %t185, %t184
  store i1 %t187, ptr %l130, !tbaa !21
  br label %bb54
bb54:
  %t189 = load i1, ptr %l130, !tbaa !21
  store i1 %t189, ptr %l127, !tbaa !21
  br label %bb55
bb55:
  %t190 = load i1, ptr %l127, !tbaa !21
  br i1 %t190, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s5
  %t191 = load i64, ptr %l19, !tbaa !24
  store i64 %t191, ptr %l136, !tbaa !24
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/emit:Emitter", ptr %t192, i32 0, i32 19
  %t195 = load i64, ptr %l25, !tbaa !24
  %t198 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s5, ptr %t194, i64 %t195)
  store { i64, ptr } %t198, ptr %l140
  br label %bb58
bb57:
  br label %bb59
bb58:
  %t199 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t199, 0
  %t201 = load i64, ptr %l136, !tbaa !24
  %t203 = add i64 %t201, %t200
  store i64 %t203, ptr %l19, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t205 = load i64, ptr %l24, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l24, !tbaa !24
  br label %bb31
bb61:
  %t209 = load i64, ptr %l18, !tbaa !24
  %t211 = icmp eq i64 %t209, 1
  br i1 %t211, label %bb62, label %bb63
bb62:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/emit:Emitter", ptr %t213, i32 0, i32 43
  %t216 = load i64, ptr %t215, !tbaa !24
  %t218 = sdiv i64 %t216, 4
  store i64 %t218, ptr %l147, !tbaa !24
  br label %bb64
bb63:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/emit:Emitter", ptr %t220, i32 0, i32 43
  %t223 = load i64, ptr %t222, !tbaa !24
  store i64 %t223, ptr %l147, !tbaa !24
  br label %bb64
bb64:
  %t225 = load i64, ptr %l147, !tbaa !24
  store i64 %t225, ptr %l27, !tbaa !24
  %t226 = load i1, ptr %l6, !tbaa !21
  br i1 %t226, label %bb65, label %bb66
bb65:
  %t228 = load i64, ptr %l19, !tbaa !24
  %t229 = load i64, ptr %l27, !tbaa !24
  %t232 = add i64 %t228, %t229
  %t234 = sub i64 %t232, 1
  %t235 = load i64, ptr %l27, !tbaa !24
  %t238 = sdiv i64 %t234, %t235
  store i64 %t238, ptr %l154, !tbaa !24
  br label %bb67
bb66:
  store i64 1, ptr %l154, !tbaa !24
  br label %bb67
bb67:
  %t240 = load i64, ptr %l154, !tbaa !24
  store i64 %t240, ptr %l28, !tbaa !24
  %t241 = load i64, ptr %l28, !tbaa !24
  %t243 = icmp slt i64 %t241, 1
  br i1 %t243, label %bb68, label %bb69
bb68:
  store i64 1, ptr %l28, !tbaa !24
  br label %bb70
bb69:
  br label %bb70
bb70:
  %t245 = load i64, ptr %l18, !tbaa !24
  %t247 = icmp eq i64 %t245, 1
  br i1 %t247, label %bb71, label %bb72
bb71:
  %t249 = load i64, ptr %l19, !tbaa !24
  %t251 = icmp eq i64 %t249, 0
  store i1 %t251, ptr %l165, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l165, !tbaa !21
  br label %bb73
bb73:
  %t253 = load i1, ptr %l165, !tbaa !21
  br i1 %t253, label %bb74, label %bb75
bb74:
  br label %bb102
bb75:
  br label %bb76
bb76:
  store i64 0, ptr %l29, !tbaa !24
  %t254 = load i64, ptr %l28, !tbaa !24
  store i64 %t254, ptr %l30, !tbaa !24
  store i64 1, ptr %l31, !tbaa !24
  %t256 = load i64, ptr %l30, !tbaa !24
  %t257 = load i64, ptr %l29, !tbaa !24
  %t260 = icmp sgt i64 %t256, %t257
  br i1 %t260, label %bb77, label %bb78
bb77:
  %t262 = load i64, ptr %l31, !tbaa !24
  %t264 = icmp sgt i64 %t262, 0
  br i1 %t264, label %bb79, label %bb80
bb78:
  store i64 0, ptr %l172, !tbaa !24
  br label %bb82
bb79:
  %t266 = load i64, ptr %l30, !tbaa !24
  %t267 = load i64, ptr %l29, !tbaa !24
  %t270 = sub i64 %t266, %t267
  %t271 = load i64, ptr %l31, !tbaa !24
  %t274 = add i64 %t270, %t271
  %t276 = sub i64 %t274, 1
  %t277 = load i64, ptr %l31, !tbaa !24
  %t280 = sdiv i64 %t276, %t277
  store i64 %t280, ptr %l175, !tbaa !24
  br label %bb81
bb80:
  store i64 0, ptr %l175, !tbaa !24
  br label %bb81
bb81:
  %t282 = load i64, ptr %l175, !tbaa !24
  store i64 %t282, ptr %l172, !tbaa !24
  br label %bb82
bb82:
  %t283 = load i64, ptr %l172, !tbaa !24
  store i64 %t283, ptr %l32, !tbaa !24
  store i64 0, ptr %l33, !tbaa !24
  br label %bb83
bb83:
  store %olang.scope zeroinitializer, ptr %s10
  %t284 = load i64, ptr %l33, !tbaa !24
  %t285 = load i64, ptr %l32, !tbaa !24
  %t288 = icmp slt i64 %t284, %t285
  %t290 = xor i1 %t288, true
  br i1 %t290, label %bb84, label %bb85
bb84:
  call void @__olang_scope_close(ptr %s10)
  br label %bb101
bb85:
  br label %bb86
bb86:
  %t292 = load i64, ptr %l29, !tbaa !24
  %t293 = load i64, ptr %l33, !tbaa !24
  %t294 = load i64, ptr %l31, !tbaa !24
  %t297 = mul i64 %t293, %t294
  %t300 = add i64 %t292, %t297
  store i64 %t300, ptr %l34, !tbaa !24
  %t302 = load i64, ptr %l18, !tbaa !24
  %t304 = icmp ne i64 %t302, 1
  br i1 %t304, label %bb87, label %bb88
bb87:
  %t306 = load i64, ptr %l34, !tbaa !24
  %t308 = icmp eq i64 %t306, 0
  br i1 %t308, label %bb89, label %bb90
bb88:
  %t310 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t311 = load i64, ptr %l34, !tbaa !24
  %t313 = extractvalue { i64, ptr } %t310, 1
  %t314 = extractvalue { i64, ptr } %t310, 0
  %t315 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t316 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t317 = add i64 %t314, %t316
  %t319 = call i64 @__olang_fmt_i64(ptr null, i64 %t311)
  %t320 = add i64 %t317, %t319
  %t321 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t320)
  call void @olang_textcopy(ptr %t321, ptr %t313, i64 %t314)
  %t322 = getelementptr i8, ptr %t321, i64 %t314
  call void @olang_textcopy(ptr %t322, ptr %t315, i64 %t316)
  %t323 = getelementptr i8, ptr %t322, i64 %t316
  %t324 = call i64 @__olang_fmt_i64(ptr %t323, i64 %t311)
  %t325 = insertvalue { i64, ptr } undef, i64 %t320, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t321, 1
  store { i64, ptr } %t326, ptr %l195, !tbaa !27
  br label %bb92
bb89:
  %t328 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t328, 1
  %t331 = extractvalue { i64, ptr } %t328, 0
  %t332 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t331)
  call void @olang_textcopy(ptr %t332, ptr %t330, i64 %t331)
  %t333 = insertvalue { i64, ptr } undef, i64 %t331, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t332, 1
  store { i64, ptr } %t334, ptr %l198, !tbaa !27
  br label %bb91
bb90:
  %t336 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t337 = load i64, ptr %l34, !tbaa !24
  %t339 = extractvalue { i64, ptr } %t336, 1
  %t340 = extractvalue { i64, ptr } %t336, 0
  %t341 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t342 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t343 = add i64 %t340, %t342
  %t345 = call i64 @__olang_fmt_i64(ptr null, i64 %t337)
  %t346 = add i64 %t343, %t345
  %t347 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t346)
  call void @olang_textcopy(ptr %t347, ptr %t339, i64 %t340)
  %t348 = getelementptr i8, ptr %t347, i64 %t340
  call void @olang_textcopy(ptr %t348, ptr %t341, i64 %t342)
  %t349 = getelementptr i8, ptr %t348, i64 %t342
  %t350 = call i64 @__olang_fmt_i64(ptr %t349, i64 %t337)
  %t351 = insertvalue { i64, ptr } undef, i64 %t346, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t347, 1
  store { i64, ptr } %t352, ptr %l198, !tbaa !27
  br label %bb91
bb91:
  %t354 = load { i64, ptr }, ptr %l198, !tbaa !27
  store { i64, ptr } %t354, ptr %l195, !tbaa !27
  br label %bb92
bb92:
  %t355 = load { i64, ptr }, ptr %l195, !tbaa !27
  store { i64, ptr } %t355, ptr %l35, !tbaa !27
  %t356 = load ptr, ptr %l1, !tbaa !29
  store ptr %t356, ptr %l207, !tbaa !29
  %t357 = ptrtoint ptr %v1 to i64
  store i64 %t357, ptr %l208, !tbaa !24
  %t358 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aObject_2e0
  br i1 %t358, label %bb93, label %bb94
bb93:
  %t360 = call ptr @__olang_region_make(ptr %v1)
  %t361 = ptrtoint ptr %t360 to i64
  store i64 %t361, ptr %l208, !tbaa !24
  br label %bb94
bb94:
  %t362 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t362, 1
  %t365 = extractvalue { i64, ptr } %t362, 0
  %t366 = load i64, ptr %l208
  %t367 = inttoptr i64 %t366 to ptr
  %t368 = call ptr @__olang_scope_alloc(ptr %t367, i64 %t365)
  call void @olang_textcopy(ptr %t368, ptr %t364, i64 %t365)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t372 = load i64, ptr %l208
  %t373 = inttoptr i64 %t372 to ptr
  %t374 = extractvalue { i64, ptr } %t370, 0
  %t375 = extractvalue { i64, ptr } %t370, 1
  %t376 = mul i64 %t374, 1
  %t377 = call ptr @__olang_scope_alloc(ptr %t373, i64 %t376)
  call void @llvm.memcpy.p0.p0.i64(ptr %t377, ptr %t375, i64 %t376, i1 false)
  %t378 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t379 = insertvalue { i64, ptr } %t378, ptr %t377, 1
  store { i64, ptr } %t379, ptr %l212, !tbaa !27
  %t380 = load i32, ptr %l3, !range !{i32 0, i32 5}
  store i32 %t380, ptr %l213
  %t381 = ptrtoint ptr %v1 to i64
  store i64 %t381, ptr %l214, !tbaa !24
  %t382 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aObject_2e2
  br i1 %t382, label %bb95, label %bb96
bb95:
  %t384 = call ptr @__olang_region_make(ptr %v1)
  %t385 = ptrtoint ptr %t384 to i64
  store i64 %t385, ptr %l214, !tbaa !24
  br label %bb96
bb96:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load i64, ptr %l4, !tbaa !24
  %t388 = load i1, ptr %l5, !tbaa !21
  %t389 = load i64, ptr %l34, !tbaa !24
  %t390 = load i64, ptr %l28, !tbaa !24
  %t392 = load i64, ptr %l18, !tbaa !24
  %t393 = load i64, ptr %l8, !tbaa !24
  %t394 = load i64, ptr %l214
  %t395 = inttoptr i64 %t394 to ptr
  %t405 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eassemble(ptr %v0, ptr %v3, ptr %s0, ptr %t395, ptr %t386, i64 %t387, i1 %t388, i64 %t389, i64 %t390, ptr %a7, i64 %t392, ptr %l11, i64 %t393)
  store { i64, ptr } %t405, ptr %l225
  br label %bb97
bb97:
  %t406 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t407 = load i64, ptr %l214
  %t408 = inttoptr i64 %t407 to ptr
  %t409 = extractvalue { i64, ptr } %t406, 0
  %t410 = extractvalue { i64, ptr } %t406, 1
  %t411 = mul i64 %t409, 1
  %t412 = call ptr @__olang_scope_alloc(ptr %t408, i64 %t411)
  call void @llvm.memcpy.p0.p0.i64(ptr %t412, ptr %t410, i64 %t411, i1 false)
  %t413 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t414 = insertvalue { i64, ptr } %t413, ptr %t412, 1
  %t415 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t416 = load i32, ptr %l213, !range !{i32 0, i32 5}
  %t418 = call %"compiler/emit:Object" @compiler_2femit_3aObject_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t415, i32 %t416, { i64, ptr } %t414)
  store %"compiler/emit:Object" %t418, ptr %l227
  br label %bb98
bb98:
  %t419 = load ptr, ptr %l207, !tbaa !29
  %t420 = load %"compiler/emit:Object", ptr %l227
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2ePush_3ccompiler_2femit_3aObject_3e(ptr %v1, ptr %v1, ptr %t419, %"compiler/emit:Object" %t420)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s10)
  br label %bb100
bb100:
  %t421 = load i64, ptr %l33, !tbaa !24
  %t423 = add i64 %t421, 1
  store i64 %t423, ptr %l33, !tbaa !24
  br label %bb83
bb101:
  br label %bb102
bb102:
  %t425 = load i64, ptr %l16, !tbaa !24
  %t427 = add i64 %t425, 1
  store i64 %t427, ptr %l16, !tbaa !24
  br label %bb17
bb103:
  %t430 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %s0, ptr %l11)
  store i64 %t430, ptr %l233
  br label %bb104
bb104:
  %t431 = load i64, ptr %l233, !tbaa !24
  %t432 = icmp sgt i64 %t431, 0
  br i1 %t432, label %bb105, label %bb106
bb105:
  %t434 = load ptr, ptr %l1, !tbaa !29
  store ptr %t434, ptr %l235, !tbaa !29
  %t435 = ptrtoint ptr %v1 to i64
  store i64 %t435, ptr %l236, !tbaa !24
  %t436 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aObject_2e0
  br i1 %t436, label %bb107, label %bb108
bb106:
  br label %bb117
bb107:
  %t438 = call ptr @__olang_region_make(ptr %v1)
  %t439 = ptrtoint ptr %t438 to i64
  store i64 %t439, ptr %l236, !tbaa !24
  br label %bb108
bb108:
  %t440 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t440, ptr %l238, !tbaa !27
  %t441 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t443 = trunc i64 3 to i32
  %t444 = icmp eq i32 %t441, %t443
  br i1 %t444, label %bb109, label %bb110
bb109:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d156, i32 0, i32 1) }, ptr %l241, !tbaa !27
  br label %bb111
bb110:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d157, i32 0, i32 1) }, ptr %l241, !tbaa !27
  br label %bb111
bb111:
  %t446 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t446, 1
  %t448 = extractvalue { i64, ptr } %t446, 0
  %t449 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t450 = extractvalue { i64, ptr } %t449, 1
  %t451 = extractvalue { i64, ptr } %t449, 0
  %t452 = add i64 %t448, %t451
  %t453 = load i64, ptr %l236
  %t454 = inttoptr i64 %t453 to ptr
  %t455 = call ptr @__olang_scope_alloc(ptr %t454, i64 %t452)
  call void @olang_textcopy(ptr %t455, ptr %t447, i64 %t448)
  %t456 = getelementptr i8, ptr %t455, i64 %t448
  call void @olang_textcopy(ptr %t456, ptr %t450, i64 %t451)
  %t457 = insertvalue { i64, ptr } undef, i64 %t452, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t455, 1
  %t460 = load i64, ptr %l236
  %t461 = inttoptr i64 %t460 to ptr
  %t462 = extractvalue { i64, ptr } %t458, 0
  %t463 = extractvalue { i64, ptr } %t458, 1
  %t464 = mul i64 %t462, 1
  %t465 = call ptr @__olang_scope_alloc(ptr %t461, i64 %t464)
  call void @llvm.memcpy.p0.p0.i64(ptr %t465, ptr %t463, i64 %t464, i1 false)
  %t466 = insertvalue { i64, ptr } undef, i64 %t462, 0
  %t467 = insertvalue { i64, ptr } %t466, ptr %t465, 1
  store { i64, ptr } %t467, ptr %l243, !tbaa !27
  store i32 4, ptr %l244
  %t468 = ptrtoint ptr %v1 to i64
  store i64 %t468, ptr %l245, !tbaa !24
  %t469 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aObject_2e2
  br i1 %t469, label %bb112, label %bb113
bb112:
  %t471 = call ptr @__olang_region_make(ptr %v1)
  %t472 = ptrtoint ptr %t471 to i64
  store i64 %t472, ptr %l245, !tbaa !24
  br label %bb113
bb113:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i64, ptr %l245
  %t475 = inttoptr i64 %t474 to ptr
  %t478 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2elocations(ptr %v0, ptr %s0, ptr %t475, ptr %t473, ptr %l11)
  store { i64, ptr } %t478, ptr %l249
  br label %bb114
bb114:
  %t479 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t480 = load i64, ptr %l245
  %t481 = inttoptr i64 %t480 to ptr
  %t482 = extractvalue { i64, ptr } %t479, 0
  %t483 = extractvalue { i64, ptr } %t479, 1
  %t484 = mul i64 %t482, 1
  %t485 = call ptr @__olang_scope_alloc(ptr %t481, i64 %t484)
  call void @llvm.memcpy.p0.p0.i64(ptr %t485, ptr %t483, i64 %t484, i1 false)
  %t486 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t485, 1
  %t488 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t489 = load i32, ptr %l244, !range !{i32 0, i32 5}
  %t491 = call %"compiler/emit:Object" @compiler_2femit_3aObject_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t488, i32 %t489, { i64, ptr } %t487)
  store %"compiler/emit:Object" %t491, ptr %l251
  br label %bb115
bb115:
  %t492 = load ptr, ptr %l235, !tbaa !29
  %t493 = load %"compiler/emit:Object", ptr %l251
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2ePush_3ccompiler_2femit_3aObject_3e(ptr %v1, ptr %v1, ptr %t492, %"compiler/emit:Object" %t493)
  br label %bb116
bb116:
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erefs(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 23
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %s0, ptr %t3, i64 %t4)
  store { i64, ptr } %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 23
  store ptr %t15, ptr %l9, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  store i64 %t16, ptr %l10, !tbaa !24
  %t17 = ptrtoint ptr %v0 to i64
  store i64 %t17, ptr %l11, !tbaa !24
  %t18 = load i1, ptr @olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1
  br i1 %t18, label %bb4, label %bb5
bb3:
  br label %bb10
bb4:
  %t20 = call ptr @__olang_region_make(ptr %v0)
  %t21 = ptrtoint ptr %t20 to i64
  store i64 %t21, ptr %l11, !tbaa !24
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:Emitter", ptr %t22, i32 0, i32 19
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  store { i64, ptr } %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load i64, ptr %l11
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = load i64, ptr %l11
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2erefsIn(ptr %t30, ptr %t32, { i64, ptr } %t33)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l17
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t36 = load i64, ptr %l11
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = call ptr @__olang_scope_alloc_a(ptr %t37, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t38
  %t39 = load i64, ptr %l11
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = load i64, ptr %l11
  %t42 = inttoptr i64 %t41 to ptr
  %t44 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %t40, ptr %t42, ptr %t38)
  store { i64, ptr } %t44, ptr %l19
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l9, !tbaa !29
  %t46 = load i64, ptr %l10, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l19, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eSetAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t45, i64 %t46, { i64, ptr } %t47)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/emit:Emitter", ptr %t48, i32 0, i32 23
  %t51 = load i64, ptr %l1, !tbaa !24
  %t54 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %t50, i64 %t51)
  store { i64, ptr } %t54, ptr %l23
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t55 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t55, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estableSym(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l9 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l31 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t7, i64 %t9)
  store ptr %t12, ptr %l9
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l9, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 1
  %t16 = load { i64, [2 x i64] }, ptr %t15
  store { i64, [2 x i64] } %t16, ptr %l2
  %t18 = load { i64, [2 x i64] }, ptr %l2
  %t20 = extractvalue { i64, [2 x i64] } %t18, 0
  %t21 = icmp eq i64 %t20, 4
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t24 = getelementptr { i32 }, ptr %t23, i32 0, i32 0
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l3, !tbaa !23
  br label %bb4
bb3:
  br label %bb7
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l3, !tbaa !23
  %t30 = sext i32 %t28 to i64
  %t33 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estableSym(ptr %v0, ptr %s1, ptr %t27, i64 %t30)
  store { i64, ptr } %t33, ptr %l19
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/emit:Emitter", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/lower:Lowerer", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t40, i64 %t42)
  store ptr %t45, ptr %l25
  br label %bb6
bb6:
  %t46 = load ptr, ptr %l25, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Body", ptr %t46, i32 0, i32 4
  %t49 = getelementptr %"compiler/source:Span", ptr %t48, i32 0, i32 0
  %t50 = load i32, ptr %t49, !tbaa !23
  %t51 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t58 = sext i32 %t50 to i64
  %t59 = call i64 @__olang_fmt_i64(ptr null, i64 %t58)
  %t60 = add i64 %t56, %t59
  %t61 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t60)
  call void @olang_textcopy(ptr %t61, ptr %t52, i64 %t53)
  %t62 = getelementptr i8, ptr %t61, i64 %t53
  call void @olang_textcopy(ptr %t62, ptr %t54, i64 %t55)
  %t63 = getelementptr i8, ptr %t62, i64 %t55
  %t64 = call i64 @__olang_fmt_i64(ptr %t63, i64 %t58)
  %t65 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t61, 1
  store { i64, ptr } %t66, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t72 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %v1, ptr %t68, i64 %t69)
  store { i64, ptr } %t72, ptr %l31
  br label %bb11
bb11:
  %t73 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t73, ptr %l12, !tbaa !27
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_36aaf5158ca695b4_8b28a996a10625c0)
  unreachable
bb13:
  %t74 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etextCopy(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i1
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i64
  %l27 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d159, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t5 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t5, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d160, i32 0, i32 1) }, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d161, i32 0, i32 1) })
  br label %bb5
bb5:
  %t7 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t7, ptr %l5
  br label %bb6
bb6:
  %t8 = load %"std/prelude/text:StringBuilder", ptr %l5
  store %"std/prelude/text:StringBuilder" %t8, ptr %l1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d162, i32 0, i32 1) })
  br label %bb7
bb7:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d163, i32 0, i32 1) })
  br label %bb8
bb8:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d164, i32 0, i32 1) })
  br label %bb9
bb9:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d165, i32 0, i32 1) })
  br label %bb10
bb10:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 103, ptr getelementptr inbounds (<{ i64, [103 x i8] }>, ptr @.d166, i32 0, i32 1) })
  br label %bb11
bb11:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 112, ptr getelementptr inbounds (<{ i64, [112 x i8] }>, ptr @.d167, i32 0, i32 1) })
  br label %bb12
bb12:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d168, i32 0, i32 1) })
  br label %bb13
bb13:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d169, i32 0, i32 1) })
  br label %bb14
bb14:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 103, ptr getelementptr inbounds (<{ i64, [103 x i8] }>, ptr @.d170, i32 0, i32 1) })
  br label %bb15
bb15:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 112, ptr getelementptr inbounds (<{ i64, [112 x i8] }>, ptr @.d171, i32 0, i32 1) })
  br label %bb16
bb16:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d172, i32 0, i32 1) })
  br label %bb17
bb17:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d173, i32 0, i32 1) })
  br label %bb18
bb18:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 113, ptr getelementptr inbounds (<{ i64, [113 x i8] }>, ptr @.d174, i32 0, i32 1) })
  br label %bb19
bb19:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 115, ptr getelementptr inbounds (<{ i64, [115 x i8] }>, ptr @.d175, i32 0, i32 1) })
  br label %bb20
bb20:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d176, i32 0, i32 1) })
  br label %bb21
bb21:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d177, i32 0, i32 1) })
  br label %bb22
bb22:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l22, !tbaa !29
  %t26 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t26, ptr %l23, !tbaa !24
  %t27 = ptrtoint ptr %s0 to i64
  store i64 %t27, ptr %l24, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t28, label %bb23, label %bb24
bb23:
  %t30 = call ptr @__olang_region_make(ptr %s0)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l24, !tbaa !24
  br label %bb24
bb24:
  %t32 = load i64, ptr %l24
  %t33 = inttoptr i64 %t32 to ptr
  %t35 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t33, ptr %l1)
  store { i64, ptr } %t35, ptr %l27
  br label %bb25
bb25:
  %t36 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t37 = load i64, ptr %l24
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = extractvalue { i64, ptr } %t36, 0
  %t40 = extractvalue { i64, ptr } %t36, 1
  %t41 = mul i64 %t39, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t41)
  call void @llvm.memcpy.p0.p0.i64(ptr %t42, ptr %t40, i64 %t41, i1 false)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  %t45 = load ptr, ptr %l22, !tbaa !29
  %t46 = load i64, ptr %l23, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t45, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d178, i32 0, i32 1) }, i64 %t46, { i64, ptr } %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d151, i32 0, i32 1) })
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ebuildInto(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l27 = alloca i32
  %l30 = alloca { i64, ptr }
  %l33 = alloca i32
  %l39 = alloca i32
  %l42 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l67 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l76 = alloca i32
  %l80 = alloca { i64, [4 x i64] }
  %l84 = alloca { i64, ptr }
  %l88 = alloca ptr
  %l91 = alloca i32
  %l92 = alloca { i64, ptr }
  %l98 = alloca i64
  %l101 = alloca i64
  %l119 = alloca ptr
  %l126 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l130 = alloca i32
  %l134 = alloca { i64, [4 x i64] }
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
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
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a2)
  store i32 %t13, ptr %l27
  br label %bb1
bb1:
  %t14 = load i32, ptr %l27, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l5, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t15, i32 %t16)
  store { i64, ptr } %t19, ptr %l30
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t20, ptr %l6, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l5, !tbaa !23
  %t25 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l33
  br label %bb3
bb3:
  %t26 = load i32, ptr %l33, !tbaa !23
  store i32 %t26, ptr %l7, !tbaa !23
  %t27 = load i32, ptr %l7, !tbaa !23
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t31 = icmp ne i32 %t27, %t28
  br i1 %t31, label %bb4, label %bb5
bb4:
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t34 = load i32, ptr %l7, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l39
  br label %bb6
bb5:
  br label %bb24
bb6:
  %t38 = load i32, ptr %l39, !tbaa !23
  store i32 %t38, ptr %l8, !tbaa !23
  store i64 0, ptr %l9, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l7, !tbaa !23
  %t43 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t39, i32 %t40)
  store i64 %t43, ptr %l42
  br label %bb7
bb7:
  %t44 = load i64, ptr %l42, !tbaa !24
  store i64 %t44, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t45 = load i64, ptr %l10, !tbaa !24
  %t46 = load i64, ptr %l9, !tbaa !24
  %t49 = icmp sgt i64 %t45, %t46
  br i1 %t49, label %bb8, label %bb9
bb8:
  %t51 = load i64, ptr %l11, !tbaa !24
  %t53 = icmp sgt i64 %t51, 0
  br i1 %t53, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb13
bb10:
  %t55 = load i64, ptr %l10, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = sub i64 %t55, %t56
  %t60 = load i64, ptr %l11, !tbaa !24
  %t63 = add i64 %t59, %t60
  %t65 = sub i64 %t63, 1
  %t66 = load i64, ptr %l11, !tbaa !24
  %t69 = sdiv i64 %t65, %t66
  store i64 %t69, ptr %l49, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb12
bb12:
  %t71 = load i64, ptr %l49, !tbaa !24
  store i64 %t71, ptr %l46, !tbaa !24
  br label %bb13
bb13:
  %t72 = load i64, ptr %l46, !tbaa !24
  store i64 %t72, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t73 = load i64, ptr %l13, !tbaa !24
  %t74 = load i64, ptr %l12, !tbaa !24
  %t77 = icmp slt i64 %t73, %t74
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t81 = load i64, ptr %l9, !tbaa !24
  %t82 = load i64, ptr %l13, !tbaa !24
  %t83 = load i64, ptr %l11, !tbaa !24
  %t86 = mul i64 %t82, %t83
  %t89 = add i64 %t81, %t86
  store i64 %t89, ptr %l14, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l67, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t95 = load i64, ptr %l14, !tbaa !24
  %t96 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t99 = extractvalue { i64, ptr } %t93, 1
  %t100 = extractvalue { i64, ptr } %t93, 0
  %t101 = add i64 %t97, %t100
  %t102 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t106 = extractvalue { i64, ptr } %t94, 1
  %t107 = extractvalue { i64, ptr } %t94, 0
  %t108 = add i64 %t104, %t107
  %t109 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t111 = add i64 %t108, %t110
  %t113 = call i64 @__olang_fmt_i64(ptr null, i64 %t95)
  %t114 = add i64 %t111, %t113
  %t115 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t114)
  call void @olang_textcopy(ptr %t115, ptr %t96, i64 %t97)
  %t116 = getelementptr i8, ptr %t115, i64 %t97
  call void @olang_textcopy(ptr %t116, ptr %t99, i64 %t100)
  %t117 = getelementptr i8, ptr %t116, i64 %t100
  call void @olang_textcopy(ptr %t117, ptr %t102, i64 %t103)
  %t118 = getelementptr i8, ptr %t117, i64 %t103
  call void @olang_textcopy(ptr %t118, ptr %t106, i64 %t107)
  %t119 = getelementptr i8, ptr %t118, i64 %t107
  call void @olang_textcopy(ptr %t119, ptr %t109, i64 %t110)
  %t120 = getelementptr i8, ptr %t119, i64 %t110
  %t121 = call i64 @__olang_fmt_i64(ptr %t120, i64 %t95)
  %t122 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t115, 1
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t126 = extractvalue { i64, ptr } %t123, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t133 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s3, ptr %s3, ptr %t92, { i64, ptr } %t130)
  store { i64, ptr } %t133, ptr %l74
  br label %bb18
bb18:
  %t134 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 0
  %t136 = extractvalue { i64, ptr } %t134, 1
  %t137 = mul i64 %t135, 1
  %t138 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t137)
  call void @llvm.memcpy.p0.p0.i64(ptr %t138, ptr %t136, i64 %t137, i1 false)
  %t139 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t138, 1
  store { i64, ptr } %t140, ptr %l75, !tbaa !27
  %t141 = load i32, ptr %l8, !tbaa !23
  store i32 %t141, ptr %l76, !tbaa !23
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load %"compiler/mir:Range", ptr %l3
  %t144 = load i64, ptr %l14, !tbaa !24
  %t148 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t142, %"compiler/mir:Range" %t143, i64 %t144)
  store { i64, [4 x i64] } %t148, ptr %l80
  br label %bb19
bb19:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/emit:fnEm", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t153 = load i32, ptr %l8, !tbaa !23
  %t156 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etbaa(ptr %v0, ptr %s3, ptr %t152, i32 %t153, i1 true)
  store { i64, ptr } %t156, ptr %l84
  br label %bb20
bb20:
  %t157 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 0
  %t159 = extractvalue { i64, ptr } %t157, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t164 = load ptr, ptr %l67, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t166 = load i32, ptr %l76, !tbaa !23
  %t167 = load { i64, [4 x i64] }, ptr %l80
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s3, ptr %s3, ptr %t164, { i64, ptr } %t165, i32 %t166, { i64, [4 x i64] } %t167, { i64, ptr } %t163)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t169 = load i64, ptr %l13, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l13, !tbaa !24
  br label %bb14
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  %t173 = load ptr, ptr %l4, !tbaa !29
  store ptr %t173, ptr %l88, !tbaa !29
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load i32, ptr %l5, !tbaa !23
  %t178 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %t174, i32 %t175)
  store i32 %t178, ptr %l91
  br label %bb25
bb25:
  %t179 = load ptr, ptr %l88, !tbaa !29
  %t180 = load i32, ptr %l91, !tbaa !23
  %t181 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t179, i32 %t180)
  store { i64, ptr } %t181, ptr %l92
  br label %bb26
bb26:
  %t182 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t182, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t183 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t183, 0
  store i64 %t185, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t187 = load i64, ptr %l17, !tbaa !24
  %t188 = load i64, ptr %l16, !tbaa !24
  %t191 = icmp sgt i64 %t187, %t188
  br i1 %t191, label %bb27, label %bb28
bb27:
  %t193 = load i64, ptr %l18, !tbaa !24
  %t195 = icmp sgt i64 %t193, 0
  br i1 %t195, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb32
bb29:
  %t197 = load i64, ptr %l17, !tbaa !24
  %t198 = load i64, ptr %l16, !tbaa !24
  %t201 = sub i64 %t197, %t198
  %t202 = load i64, ptr %l18, !tbaa !24
  %t205 = add i64 %t201, %t202
  %t207 = sub i64 %t205, 1
  %t208 = load i64, ptr %l18, !tbaa !24
  %t211 = sdiv i64 %t207, %t208
  store i64 %t211, ptr %l101, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb31
bb31:
  %t213 = load i64, ptr %l101, !tbaa !24
  store i64 %t213, ptr %l98, !tbaa !24
  br label %bb32
bb32:
  %t214 = load i64, ptr %l98, !tbaa !24
  store i64 %t214, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t215 = load i64, ptr %l20, !tbaa !24
  %t216 = load i64, ptr %l19, !tbaa !24
  %t219 = icmp slt i64 %t215, %t216
  %t221 = xor i1 %t219, true
  br i1 %t221, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s7)
  br label %bb42
bb35:
  br label %bb36
bb36:
  %t223 = load i64, ptr %l16, !tbaa !24
  %t224 = load i64, ptr %l20, !tbaa !24
  %t225 = load i64, ptr %l18, !tbaa !24
  %t228 = mul i64 %t224, %t225
  %t231 = add i64 %t223, %t228
  store i64 %t231, ptr %l21, !tbaa !24
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l119, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t236 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t237 = load i64, ptr %l21, !tbaa !24
  %t238 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t239 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t241 = extractvalue { i64, ptr } %t235, 1
  %t242 = extractvalue { i64, ptr } %t235, 0
  %t243 = add i64 %t239, %t242
  %t244 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t246 = add i64 %t243, %t245
  %t248 = extractvalue { i64, ptr } %t236, 1
  %t249 = extractvalue { i64, ptr } %t236, 0
  %t250 = add i64 %t246, %t249
  %t251 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t253 = add i64 %t250, %t252
  %t255 = call i64 @__olang_fmt_i64(ptr null, i64 %t237)
  %t256 = add i64 %t253, %t255
  %t257 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t256)
  call void @olang_textcopy(ptr %t257, ptr %t238, i64 %t239)
  %t258 = getelementptr i8, ptr %t257, i64 %t239
  call void @olang_textcopy(ptr %t258, ptr %t241, i64 %t242)
  %t259 = getelementptr i8, ptr %t258, i64 %t242
  call void @olang_textcopy(ptr %t259, ptr %t244, i64 %t245)
  %t260 = getelementptr i8, ptr %t259, i64 %t245
  call void @olang_textcopy(ptr %t260, ptr %t248, i64 %t249)
  %t261 = getelementptr i8, ptr %t260, i64 %t249
  call void @olang_textcopy(ptr %t261, ptr %t251, i64 %t252)
  %t262 = getelementptr i8, ptr %t261, i64 %t252
  %t263 = call i64 @__olang_fmt_i64(ptr %t262, i64 %t237)
  %t264 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t257, 1
  %t267 = extractvalue { i64, ptr } %t265, 0
  %t268 = extractvalue { i64, ptr } %t265, 1
  %t269 = mul i64 %t267, 1
  %t270 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t269)
  call void @llvm.memcpy.p0.p0.i64(ptr %t270, ptr %t268, i64 %t269, i1 false)
  %t271 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  %t275 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s7, ptr %s7, ptr %t234, { i64, ptr } %t272)
  store { i64, ptr } %t275, ptr %l126
  br label %bb37
bb37:
  %t276 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t276, 0
  %t278 = extractvalue { i64, ptr } %t276, 1
  %t279 = mul i64 %t277, 1
  %t280 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t279)
  call void @llvm.memcpy.p0.p0.i64(ptr %t280, ptr %t278, i64 %t279, i1 false)
  %t281 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t280, 1
  store { i64, ptr } %t282, ptr %l127, !tbaa !27
  %t283 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t283, ptr %l128, !tbaa !27
  %t284 = load i64, ptr %l21, !tbaa !24
  %t286 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr i32, ptr %t287, i64 %t284
  %t289 = load i32, ptr %t288, !tbaa !33
  store i32 %t289, ptr %l130, !tbaa !23
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load %"compiler/mir:Range", ptr %l3
  %t292 = load i64, ptr %l21, !tbaa !24
  %t296 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t290, %"compiler/mir:Range" %t291, i64 %t292)
  store { i64, [4 x i64] } %t296, ptr %l134
  br label %bb38
bb38:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/emit:fnEm", ptr %t297, i32 0, i32 0
  %t300 = load ptr, ptr %t299, !tbaa !29
  %t301 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t301, ptr %l137, !tbaa !27
  %t302 = load i64, ptr %l21, !tbaa !24
  %t304 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = getelementptr i32, ptr %t305, i64 %t302
  %t307 = load i32, ptr %t306, !tbaa !33
  %t310 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etbaa(ptr %v0, ptr %s7, ptr %t300, i32 %t307, i1 false)
  store { i64, ptr } %t310, ptr %l140
  br label %bb39
bb39:
  %t311 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 0
  %t313 = extractvalue { i64, ptr } %t311, 1
  %t314 = mul i64 %t312, 1
  %t315 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t314)
  call void @llvm.memcpy.p0.p0.i64(ptr %t315, ptr %t313, i64 %t314, i1 false)
  %t316 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  %t318 = load ptr, ptr %l119, !tbaa !29
  %t319 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t320 = load i32, ptr %l130, !tbaa !23
  %t321 = load { i64, [4 x i64] }, ptr %l134
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s7, ptr %s7, ptr %t318, { i64, ptr } %t319, i32 %t320, { i64, [4 x i64] } %t321, { i64, ptr } %t317)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s7)
  br label %bb41
bb41:
  %t323 = load i64, ptr %l20, !tbaa !24
  %t325 = add i64 %t323, 1
  store i64 %t325, ptr %l20, !tbaa !24
  br label %bb33
bb42:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecopyArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %v2, ptr %t2, { i64, [1 x i64] } %a1)
  store { i64, ptr } %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = mul i64 %t8, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t10)
  call void @llvm.memcpy.p0.p0.i64(ptr %t11, ptr %t9, i64 %t10, i1 false)
  %t12 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t20 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecopyArrayIn(ptr %v0, ptr %v2, ptr %v1, ptr %v2, ptr %t16, { i64, ptr } %t13, { i64, ptr } %a2, i32 %a3)
  store { i64, ptr } %t20, ptr %l11
  br label %bb2
bb2:
  %t21 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectRef(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i32
  %l3 = alloca i1
  %l11 = alloca i1
  %rv = alloca i1
  store { i64, [1 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t12 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 24
  %t13 = load i32, ptr %l2, !tbaa !23
  %t15 = sext i32 %t13 to i64
  %t18 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t12, i64 %t15)
  store i1 %t18, ptr %l11
  br label %bb4
bb4:
  %t19 = load i1, ptr %l11, !tbaa !21
  store i1 %t19, ptr %l3, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_2b2f6fb90634cfa0_5bc60e788a752af4)
  unreachable
bb10:
  %t20 = load i1, ptr %l3, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectText(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l17 = alloca { { i64, ptr }, { i64, ptr } }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i32
  %l34 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i64
  %l43 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca [1 x i8]
  %l56 = alloca i64
  %l59 = alloca i64
  %l80 = alloca { i64, [4 x i64] }
  %l83 = alloca i32
  %l87 = alloca { i64, ptr }
  %l91 = alloca i32
  %l97 = alloca { { i64, ptr }, { i64, ptr } }
  %l100 = alloca i64
  %l101 = alloca i64
  %l106 = alloca i64
  %l107 = alloca i64
  %l114 = alloca i64
  %l115 = alloca i64
  %l120 = alloca i64
  %l121 = alloca i64
  %l127 = alloca i64
  %l128 = alloca i64
  %l130 = alloca ptr
  %l131 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l143 = alloca i64
  %l144 = alloca i64
  %l150 = alloca { i64, ptr }
  %l156 = alloca i32
  %l161 = alloca ptr
  %l166 = alloca i32
  %l167 = alloca i64
  %l169 = alloca { i64, ptr }
  %l170 = alloca i64
  %l171 = alloca i64
  %l178 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l185 = alloca i64
  %l186 = alloca i64
  %l195 = alloca i64
  %l196 = alloca i64
  %l201 = alloca i64
  %l202 = alloca i64
  %l211 = alloca { i64, ptr }
  %l216 = alloca { i64, ptr }
  %l226 = alloca { i64, ptr }
  %l228 = alloca i64
  %l234 = alloca ptr
  %l237 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l242 = alloca { i64, ptr }
  %l243 = alloca i64
  %l244 = alloca { i64, ptr }
  %l249 = alloca i64
  %l252 = alloca i64
  %l273 = alloca i32
  %l284 = alloca ptr
  %l286 = alloca { i64, ptr }
  %l287 = alloca { i64, ptr }
  %l290 = alloca i1
  %l291 = alloca { i64, ptr }
  %l296 = alloca { i64, ptr }
  %l317 = alloca { i64, ptr }
  %l319 = alloca i64
  %l326 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t17 = alloca i64
  %t38 = alloca i64
  %t59 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 27
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eLen_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l34
  br label %bb1
bb1:
  %t6 = load i64, ptr %l34, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  store i64 %t7, ptr %l35, !tbaa !24
  %t8 = load i64, ptr %l35, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l35, !tbaa !24
  %t12 = icmp sle i64 %t11, 576460752303423487
  br i1 %t12, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_cf8290f43b8cf4bf_3d9bfdc06546f1cb)
  unreachable
bb4:
  %t14 = load i64, ptr %l35, !tbaa !24
  %t15 = mul i64 %t14, 16
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, %t14
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr { i64, ptr }, ptr %t16, i64 %t21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d185, i32 0, i32 1) }, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  store { i64, ptr } %t26, ptr %l3, !tbaa !27
  %t28 = load i64, ptr %l2, !tbaa !24
  store i64 %t28, ptr %l39, !tbaa !24
  %t29 = load i64, ptr %l39, !tbaa !24
  %t30 = icmp sge i64 %t29, 0
  br i1 %t30, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_cf8290f43b8cf4bf_3d9bfdc06546f1cb)
  unreachable
bb6:
  %t32 = load i64, ptr %l39, !tbaa !24
  %t33 = icmp sle i64 %t32, 576460752303423487
  br i1 %t33, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_1966eb58572a69ea_7a4114e6fad4d136)
  unreachable
bb8:
  %t35 = load i64, ptr %l39, !tbaa !24
  %t36 = mul i64 %t35, 16
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  store i64 0, ptr %t38
  br label %fill.39
fill.39:
  %t42 = load i64, ptr %t38
  %t43 = icmp slt i64 %t42, %t35
  br i1 %t43, label %fillb.40, label %filld.41
fillb.40:
  %t44 = getelementptr { i64, ptr }, ptr %t37, i64 %t42
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d186, i32 0, i32 1) }, ptr %t44
  %t45 = add i64 %t42, 1
  store i64 %t45, ptr %t38
  br label %fill.39
filld.41:
  %t46 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t37, 1
  store { i64, ptr } %t47, ptr %l4, !tbaa !27
  %t49 = load i64, ptr %l2, !tbaa !24
  store i64 %t49, ptr %l43, !tbaa !24
  %t50 = load i64, ptr %l43, !tbaa !24
  %t51 = icmp sge i64 %t50, 0
  br i1 %t51, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_1966eb58572a69ea_7a4114e6fad4d136)
  unreachable
bb10:
  %t53 = load i64, ptr %l43, !tbaa !24
  %t54 = icmp sle i64 %t53, 576460752303423487
  br i1 %t54, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_bd6810f345301629_3cfdb4c124b61655)
  unreachable
bb12:
  %t56 = load i64, ptr %l43, !tbaa !24
  %t57 = mul i64 %t56, 16
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  store i64 0, ptr %t59
  br label %fill.60
fill.60:
  %t63 = load i64, ptr %t59
  %t64 = icmp slt i64 %t63, %t56
  br i1 %t64, label %fillb.61, label %filld.62
fillb.61:
  %t65 = getelementptr { i64, ptr }, ptr %t58, i64 %t63
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d187, i32 0, i32 1) }, ptr %t65
  %t66 = add i64 %t63, 1
  store i64 %t66, ptr %t59
  br label %fill.60
filld.62:
  %t67 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t58, 1
  store { i64, ptr } %t68, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d188, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t70, ptr %l48, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = mul i64 1, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l49, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 1, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %l49, 1
  store { i64, ptr } %t76, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t78 = load i64, ptr %l2, !tbaa !24
  store i64 %t78, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = icmp sgt i64 %t80, %t81
  br i1 %t84, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_bd6810f345301629_3cfdb4c124b61655)
  unreachable
bb14:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t88 = icmp sgt i64 %t86, 0
  br i1 %t88, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb19
bb16:
  %t90 = load i64, ptr %l8, !tbaa !24
  %t91 = load i64, ptr %l7, !tbaa !24
  %t94 = sub i64 %t90, %t91
  %t95 = load i64, ptr %l9, !tbaa !24
  %t98 = add i64 %t94, %t95
  %t100 = sub i64 %t98, 1
  %t101 = load i64, ptr %l9, !tbaa !24
  %t104 = sdiv i64 %t100, %t101
  store i64 %t104, ptr %l59, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb18
bb18:
  %t106 = load i64, ptr %l59, !tbaa !24
  store i64 %t106, ptr %l56, !tbaa !24
  br label %bb19
bb19:
  %t107 = load i64, ptr %l56, !tbaa !24
  store i64 %t107, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s2
  %t108 = load i64, ptr %l11, !tbaa !24
  %t109 = load i64, ptr %l10, !tbaa !24
  %t112 = icmp slt i64 %t108, %t109
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb94
bb22:
  br label %bb23
bb23:
  %t116 = load i64, ptr %l7, !tbaa !24
  %t117 = load i64, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l9, !tbaa !24
  %t121 = mul i64 %t117, %t118
  %t124 = add i64 %t116, %t121
  store i64 %t124, ptr %l12, !tbaa !24
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/emit:fnEm", ptr %t126, i32 0, i32 27
  %t129 = load i64, ptr %l12, !tbaa !24
  %t132 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t128, i64 %t129)
  store { i64, [4 x i64] } %t132, ptr %l80
  br label %bb24
bb24:
  %t133 = load { i64, [4 x i64] }, ptr %l80
  store { i64, [4 x i64] } %t133, ptr %l13
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load { i64, [4 x i64] }, ptr %l13
  %t138 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t134, { i64, [4 x i64] } %t135)
  store i32 %t138, ptr %l83
  br label %bb25
bb25:
  %t139 = load i32, ptr %l83, !tbaa !23
  store i32 %t139, ptr %l14, !tbaa !23
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load { i64, [4 x i64] }, ptr %l13
  %t142 = load i32, ptr %l14, !tbaa !23
  %t146 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s2, ptr %t140, { i64, [4 x i64] } %t141, i32 %t142)
  store { i64, ptr } %t146, ptr %l87
  br label %bb26
bb26:
  %t147 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t147, ptr %l15, !tbaa !27
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/emit:fnEm", ptr %t148, i32 0, i32 26
  %t151 = load i64, ptr %l12, !tbaa !24
  %t154 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2eAt_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %t150, i64 %t151)
  store i32 %t154, ptr %l91
  br label %bb27
bb27:
  %t155 = load i32, ptr %l91, !range !{i32 0, i32 8}
  store i32 %t155, ptr %l16
  %t156 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t158 = trunc i64 0 to i32
  %t159 = icmp eq i32 %t156, %t158
  br i1 %t159, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb36
bb30:
  store %olang.scope zeroinitializer, ptr %s3
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t163 = load i32, ptr %l14, !tbaa !23
  %t167 = call { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %s2, ptr %s3, ptr %t161, { i64, ptr } %t162, i32 %t163)
  store { { i64, ptr }, { i64, ptr } } %t167, ptr %l97
  br label %bb31
bb31:
  %t168 = load { { i64, ptr }, { i64, ptr } }, ptr %l97
  store { { i64, ptr }, { i64, ptr } } %t168, ptr %l17
  %t169 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l17, i32 0, i32 0
  %t170 = load { i64, ptr }, ptr %t169, !tbaa !27
  store { i64, ptr } %t170, ptr %l18, !tbaa !27
  %t172 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l17, i32 0, i32 1
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  store { i64, ptr } %t173, ptr %l19, !tbaa !27
  %t175 = load i64, ptr %l12, !tbaa !24
  store i64 %t175, ptr %l100, !tbaa !24
  %t176 = ptrtoint ptr %s0 to i64
  store i64 %t176, ptr %l101, !tbaa !24
  %t177 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t177, label %bb32, label %bb33
bb32:
  %t179 = call ptr @__olang_region_make(ptr %s0)
  %t180 = ptrtoint ptr %t179 to i64
  store i64 %t180, ptr %l101, !tbaa !24
  br label %bb33
bb33:
  %t181 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t181, 1
  %t184 = extractvalue { i64, ptr } %t181, 0
  %t185 = load i64, ptr %l101
  %t186 = inttoptr i64 %t185 to ptr
  %t187 = call ptr @__olang_scope_alloc(ptr %t186, i64 %t184)
  call void @olang_textcopy(ptr %t187, ptr %t183, i64 %t184)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  %t191 = load i64, ptr %l101
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = extractvalue { i64, ptr } %t189, 0
  %t194 = extractvalue { i64, ptr } %t189, 1
  %t195 = mul i64 %t193, 1
  %t196 = call ptr @__olang_scope_alloc(ptr %t192, i64 %t195)
  call void @llvm.memcpy.p0.p0.i64(ptr %t196, ptr %t194, i64 %t195, i1 false)
  %t197 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  %t200 = load i64, ptr %l100, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr { i64, ptr }, ptr %t202, i64 %t200
  store { i64, ptr } %t198, ptr %t203, !tbaa !37
  %t204 = load i64, ptr %l12, !tbaa !24
  store i64 %t204, ptr %l106, !tbaa !24
  %t205 = ptrtoint ptr %s0 to i64
  store i64 %t205, ptr %l107, !tbaa !24
  %t206 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t206, label %bb34, label %bb35
bb34:
  %t208 = call ptr @__olang_region_make(ptr %s0)
  %t209 = ptrtoint ptr %t208 to i64
  store i64 %t209, ptr %l107, !tbaa !24
  br label %bb35
bb35:
  %t210 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t210, 1
  %t213 = extractvalue { i64, ptr } %t210, 0
  %t214 = load i64, ptr %l107
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = call ptr @__olang_scope_alloc(ptr %t215, i64 %t213)
  call void @olang_textcopy(ptr %t216, ptr %t212, i64 %t213)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t220 = load i64, ptr %l107
  %t221 = inttoptr i64 %t220 to ptr
  %t222 = extractvalue { i64, ptr } %t218, 0
  %t223 = extractvalue { i64, ptr } %t218, 1
  %t224 = mul i64 %t222, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %t221, i64 %t224)
  call void @llvm.memcpy.p0.p0.i64(ptr %t225, ptr %t223, i64 %t224, i1 false)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  %t229 = load i64, ptr %l106, !tbaa !24
  %t230 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %t231, i64 %t229
  store { i64, ptr } %t227, ptr %t232, !tbaa !37
  call void @__olang_scope_close(ptr %s3)
  br label %bb85
bb36:
  %t233 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t235 = trunc i64 2 to i32
  %t236 = icmp eq i32 %t233, %t235
  br i1 %t236, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb44
bb39:
  %t238 = load i64, ptr %l12, !tbaa !24
  store i64 %t238, ptr %l114, !tbaa !24
  %t239 = ptrtoint ptr %s0 to i64
  store i64 %t239, ptr %l115, !tbaa !24
  %t240 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t240, label %bb40, label %bb41
bb40:
  %t242 = call ptr @__olang_region_make(ptr %s0)
  %t243 = ptrtoint ptr %t242 to i64
  store i64 %t243, ptr %l115, !tbaa !24
  br label %bb41
bb41:
  %t244 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t244, 1
  %t247 = extractvalue { i64, ptr } %t244, 0
  %t248 = load i64, ptr %l115
  %t249 = inttoptr i64 %t248 to ptr
  %t250 = call ptr @__olang_scope_alloc(ptr %t249, i64 %t247)
  call void @olang_textcopy(ptr %t250, ptr %t246, i64 %t247)
  %t251 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t250, 1
  %t254 = load i64, ptr %l115
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = extractvalue { i64, ptr } %t252, 0
  %t257 = extractvalue { i64, ptr } %t252, 1
  %t258 = mul i64 %t256, 1
  %t259 = call ptr @__olang_scope_alloc(ptr %t255, i64 %t258)
  call void @llvm.memcpy.p0.p0.i64(ptr %t259, ptr %t257, i64 %t258, i1 false)
  %t260 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  %t263 = load i64, ptr %l114, !tbaa !24
  %t264 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr { i64, ptr }, ptr %t265, i64 %t263
  store { i64, ptr } %t261, ptr %t266, !tbaa !37
  %t267 = load i64, ptr %l12, !tbaa !24
  store i64 %t267, ptr %l120, !tbaa !24
  %t268 = ptrtoint ptr %s0 to i64
  store i64 %t268, ptr %l121, !tbaa !24
  %t269 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t269, label %bb42, label %bb43
bb42:
  %t271 = call ptr @__olang_region_make(ptr %s0)
  %t272 = ptrtoint ptr %t271 to i64
  store i64 %t272, ptr %l121, !tbaa !24
  br label %bb43
bb43:
  %t273 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t275 = load i64, ptr %l121
  %t276 = inttoptr i64 %t275 to ptr
  %t277 = call ptr @__olang_scope_alloc(ptr %t276, i64 %t274)
  call void @olang_textcopy(ptr %t277, ptr %t273, i64 %t274)
  %t278 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t277, 1
  %t281 = load i64, ptr %l121
  %t282 = inttoptr i64 %t281 to ptr
  %t283 = extractvalue { i64, ptr } %t279, 0
  %t284 = extractvalue { i64, ptr } %t279, 1
  %t285 = mul i64 %t283, 1
  %t286 = call ptr @__olang_scope_alloc(ptr %t282, i64 %t285)
  call void @llvm.memcpy.p0.p0.i64(ptr %t286, ptr %t284, i64 %t285, i1 false)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  %t290 = load i64, ptr %l120, !tbaa !24
  %t291 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr { i64, ptr }, ptr %t292, i64 %t290
  store { i64, ptr } %t288, ptr %t293, !tbaa !37
  br label %bb85
bb44:
  %t294 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t296 = trunc i64 7 to i32
  %t297 = icmp eq i32 %t294, %t296
  br i1 %t297, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb56
bb47:
  store %olang.scope zeroinitializer, ptr %s9
  %t299 = load i64, ptr %l12, !tbaa !24
  store i64 %t299, ptr %l127, !tbaa !24
  %t300 = ptrtoint ptr %s0 to i64
  store i64 %t300, ptr %l128, !tbaa !24
  %t301 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t301, label %bb48, label %bb49
bb48:
  %t303 = call ptr @__olang_region_make(ptr %s0)
  %t304 = ptrtoint ptr %t303 to i64
  store i64 %t304, ptr %l128, !tbaa !24
  br label %bb49
bb49:
  %t305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t305, ptr %l130, !tbaa !29
  %t306 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t306, ptr %l131, !tbaa !27
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/emit:fnEm", ptr %t307, i32 0, i32 0
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s9, ptr %s9, ptr %t310, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d190, i32 0, i32 1) })
  store { i64, ptr } %t312, ptr %l134
  br label %bb50
bb50:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/emit:fnEm", ptr %t313, i32 0, i32 0
  %t316 = load ptr, ptr %t315, !tbaa !29
  %t318 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s9, ptr %s9, ptr %t316, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d191, i32 0, i32 1) })
  store { i64, ptr } %t318, ptr %l137
  br label %bb51
bb51:
  %t319 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  %t321 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t321, 1
  %t323 = extractvalue { i64, ptr } %t321, 0
  %t324 = add i64 %t320, %t323
  %t325 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t326 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  %t327 = add i64 %t324, %t326
  %t328 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t328, 1
  %t330 = extractvalue { i64, ptr } %t328, 0
  %t331 = add i64 %t327, %t330
  %t332 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  %t334 = add i64 %t331, %t333
  %t335 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = add i64 %t334, %t337
  %t339 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t338)
  call void @olang_textcopy(ptr %t339, ptr %t319, i64 %t320)
  %t340 = getelementptr i8, ptr %t339, i64 %t320
  call void @olang_textcopy(ptr %t340, ptr %t322, i64 %t323)
  %t341 = getelementptr i8, ptr %t340, i64 %t323
  call void @olang_textcopy(ptr %t341, ptr %t325, i64 %t326)
  %t342 = getelementptr i8, ptr %t341, i64 %t326
  call void @olang_textcopy(ptr %t342, ptr %t329, i64 %t330)
  %t343 = getelementptr i8, ptr %t342, i64 %t330
  call void @olang_textcopy(ptr %t343, ptr %t332, i64 %t333)
  %t344 = getelementptr i8, ptr %t343, i64 %t333
  call void @olang_textcopy(ptr %t344, ptr %t336, i64 %t337)
  %t345 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t339, 1
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = extractvalue { i64, ptr } %t346, 1
  %t350 = mul i64 %t348, 1
  %t351 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t350)
  call void @llvm.memcpy.p0.p0.i64(ptr %t351, ptr %t349, i64 %t350, i1 false)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  %t354 = load ptr, ptr %l130, !tbaa !29
  %t356 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s9, ptr %s9, ptr %t354, { i64, ptr } %t353)
  store { i64, ptr } %t356, ptr %l140
  br label %bb52
bb52:
  %t357 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t358 = extractvalue { i64, ptr } %t357, 1
  %t359 = extractvalue { i64, ptr } %t357, 0
  %t360 = load i64, ptr %l128
  %t361 = inttoptr i64 %t360 to ptr
  %t362 = call ptr @__olang_scope_alloc(ptr %t361, i64 %t359)
  call void @olang_textcopy(ptr %t362, ptr %t358, i64 %t359)
  %t363 = insertvalue { i64, ptr } undef, i64 %t359, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  %t366 = load i64, ptr %l128
  %t367 = inttoptr i64 %t366 to ptr
  %t368 = extractvalue { i64, ptr } %t364, 0
  %t369 = extractvalue { i64, ptr } %t364, 1
  %t370 = mul i64 %t368, 1
  %t371 = call ptr @__olang_scope_alloc(ptr %t367, i64 %t370)
  call void @llvm.memcpy.p0.p0.i64(ptr %t371, ptr %t369, i64 %t370, i1 false)
  %t372 = insertvalue { i64, ptr } undef, i64 %t368, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t371, 1
  %t375 = load i64, ptr %l127, !tbaa !24
  %t376 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = getelementptr { i64, ptr }, ptr %t377, i64 %t375
  store { i64, ptr } %t373, ptr %t378, !tbaa !37
  %t379 = load i64, ptr %l12, !tbaa !24
  store i64 %t379, ptr %l143, !tbaa !24
  %t380 = ptrtoint ptr %s0 to i64
  store i64 %t380, ptr %l144, !tbaa !24
  %t381 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t381, label %bb53, label %bb54
bb53:
  %t383 = call ptr @__olang_region_make(ptr %s0)
  %t384 = ptrtoint ptr %t383 to i64
  store i64 %t384, ptr %l144, !tbaa !24
  br label %bb54
bb54:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t387 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t388 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t390 = extractvalue { i64, ptr } %t386, 1
  %t391 = extractvalue { i64, ptr } %t386, 0
  %t392 = add i64 %t388, %t391
  %t393 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t394 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t395 = add i64 %t392, %t394
  %t396 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t395)
  call void @olang_textcopy(ptr %t396, ptr %t387, i64 %t388)
  %t397 = getelementptr i8, ptr %t396, i64 %t388
  call void @olang_textcopy(ptr %t397, ptr %t390, i64 %t391)
  %t398 = getelementptr i8, ptr %t397, i64 %t391
  call void @olang_textcopy(ptr %t398, ptr %t393, i64 %t394)
  %t399 = insertvalue { i64, ptr } undef, i64 %t395, 0
  %t400 = insertvalue { i64, ptr } %t399, ptr %t396, 1
  %t402 = extractvalue { i64, ptr } %t400, 0
  %t403 = extractvalue { i64, ptr } %t400, 1
  %t404 = mul i64 %t402, 1
  %t405 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t404)
  call void @llvm.memcpy.p0.p0.i64(ptr %t405, ptr %t403, i64 %t404, i1 false)
  %t406 = insertvalue { i64, ptr } undef, i64 %t402, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t405, 1
  %t410 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s9, ptr %s9, ptr %t385, { i64, ptr } %t407)
  store { i64, ptr } %t410, ptr %l150
  br label %bb55
bb55:
  %t411 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 1
  %t413 = extractvalue { i64, ptr } %t411, 0
  %t414 = load i64, ptr %l144
  %t415 = inttoptr i64 %t414 to ptr
  %t416 = call ptr @__olang_scope_alloc(ptr %t415, i64 %t413)
  call void @olang_textcopy(ptr %t416, ptr %t412, i64 %t413)
  %t417 = insertvalue { i64, ptr } undef, i64 %t413, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t416, 1
  %t420 = load i64, ptr %l144
  %t421 = inttoptr i64 %t420 to ptr
  %t422 = extractvalue { i64, ptr } %t418, 0
  %t423 = extractvalue { i64, ptr } %t418, 1
  %t424 = mul i64 %t422, 1
  %t425 = call ptr @__olang_scope_alloc(ptr %t421, i64 %t424)
  call void @llvm.memcpy.p0.p0.i64(ptr %t425, ptr %t423, i64 %t424, i1 false)
  %t426 = insertvalue { i64, ptr } undef, i64 %t422, 0
  %t427 = insertvalue { i64, ptr } %t426, ptr %t425, 1
  %t429 = load i64, ptr %l143, !tbaa !24
  %t430 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !27
  %t432 = getelementptr { i64, ptr }, ptr %t431, i64 %t429
  store { i64, ptr } %t427, ptr %t432, !tbaa !37
  call void @__olang_scope_close(ptr %s9)
  br label %bb85
bb56:
  br i1 true, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb84
bb59:
  store %olang.scope zeroinitializer, ptr %s14
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t435 = getelementptr %"compiler/emit:fnEm", ptr %t433, i32 0, i32 26
  %t436 = load i64, ptr %l12, !tbaa !24
  %t439 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2eAt_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %t435, i64 %t436)
  store i32 %t439, ptr %l156
  br label %bb60
bb60:
  %t440 = load i32, ptr %l156, !range !{i32 0, i32 8}
  %t442 = trunc i64 5 to i32
  %t443 = icmp eq i32 %t440, %t442
  store i1 %t443, ptr %l20, !tbaa !21
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/emit:fnEm", ptr %t445, i32 0, i32 0
  %t448 = load ptr, ptr %t447, !tbaa !29
  %t450 = getelementptr %"compiler/emit:Emitter", ptr %t448, i32 0, i32 3
  %t451 = load ptr, ptr %t450, !tbaa !29
  store ptr %t451, ptr %l161, !tbaa !29
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t454 = getelementptr %"compiler/emit:fnEm", ptr %t452, i32 0, i32 0
  %t455 = load ptr, ptr %t454, !tbaa !29
  %t457 = getelementptr %"compiler/emit:Emitter", ptr %t455, i32 0, i32 3
  %t458 = load ptr, ptr %t457, !tbaa !29
  %t459 = load i32, ptr %l14, !tbaa !23
  %t462 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t458, i32 %t459)
  store i32 %t462, ptr %l166
  br label %bb61
bb61:
  %t463 = load ptr, ptr %l161, !tbaa !29
  %t464 = load i32, ptr %l166, !tbaa !23
  %t465 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t463, i32 %t464)
  store i64 %t465, ptr %l167
  br label %bb62
bb62:
  %t466 = load i64, ptr %l167, !tbaa !24
  %t467 = icmp sgt i64 %t466, 64
  br i1 %t467, label %bb63, label %bb64
bb63:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d196, i32 0, i32 1) }, ptr %l169, !tbaa !27
  br label %bb65
bb64:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d197, i32 0, i32 1) }, ptr %l169, !tbaa !27
  br label %bb65
bb65:
  %t469 = load { i64, ptr }, ptr %l169, !tbaa !27
  store { i64, ptr } %t469, ptr %l21, !tbaa !27
  %t470 = load i64, ptr %l12, !tbaa !24
  store i64 %t470, ptr %l170, !tbaa !24
  %t471 = ptrtoint ptr %s0 to i64
  store i64 %t471, ptr %l171, !tbaa !24
  %t472 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t472, label %bb66, label %bb67
bb66:
  %t474 = call ptr @__olang_region_make(ptr %s0)
  %t475 = ptrtoint ptr %t474 to i64
  store i64 %t475, ptr %l171, !tbaa !24
  br label %bb67
bb67:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t477 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t478 = load i32, ptr %l14, !tbaa !23
  %t479 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t480 = load i1, ptr %l20, !tbaa !21
  %t481 = load ptr, ptr @__olang_prog_scope
  %t482 = load i64, ptr %l171
  %t483 = inttoptr i64 %t482 to ptr
  %t489 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eextend(ptr %v0, ptr %s2, ptr %t481, ptr %t483, ptr %t476, { i64, ptr } %t477, i32 %t478, { i64, ptr } %t479, i1 %t480)
  store { i64, ptr } %t489, ptr %l178
  br label %bb68
bb68:
  %t490 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t491 = load i64, ptr %l171
  %t492 = inttoptr i64 %t491 to ptr
  %t493 = extractvalue { i64, ptr } %t490, 0
  %t494 = extractvalue { i64, ptr } %t490, 1
  %t495 = mul i64 %t493, 1
  %t496 = call ptr @__olang_scope_alloc(ptr %t492, i64 %t495)
  call void @llvm.memcpy.p0.p0.i64(ptr %t496, ptr %t494, i64 %t495, i1 false)
  %t497 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  %t500 = load i64, ptr %l170, !tbaa !24
  %t501 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !27
  %t503 = getelementptr { i64, ptr }, ptr %t502, i64 %t500
  store { i64, ptr } %t498, ptr %t503, !tbaa !37
  %t504 = load i1, ptr %l20, !tbaa !21
  br i1 %t504, label %bb69, label %bb70
bb69:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d198, i32 0, i32 1) }, ptr %l181, !tbaa !27
  br label %bb71
bb70:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d199, i32 0, i32 1) }, ptr %l181, !tbaa !27
  br label %bb71
bb71:
  %t506 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t506, ptr %l182, !tbaa !27
  %t507 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t510 = extractvalue { i64, ptr } %t507, 0
  store i64 %t510, ptr %l185, !tbaa !24
  %t511 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 0
  store i64 %t512, ptr %l186, !tbaa !24
  %t513 = icmp sge i64 1, 0
  br i1 %t513, label %bb72, label %bb73
bb72:
  %t515 = load i64, ptr %l185, !tbaa !24
  %t516 = icmp sle i64 1, %t515
  br i1 %t516, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_9e47d22410206b14_1676530151cfc818)
  unreachable
bb74:
  %t518 = load i64, ptr %l185, !tbaa !24
  %t519 = load i64, ptr %l186, !tbaa !24
  %t520 = icmp sle i64 %t518, %t519
  br i1 %t520, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_9e47d22410206b14_1676530151cfc818)
  unreachable
bb76:
  %t522 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t523 = load ptr, ptr %t522, !tbaa !27
  %t524 = load i64, ptr %l185, !tbaa !24
  %t525 = getelementptr i8, ptr %t523, i64 1
  %t526 = sub i64 %t524, 1
  %t527 = insertvalue { i64, ptr } undef, i64 %t526, 0
  %t528 = insertvalue { i64, ptr } %t527, ptr %t525, 1
  %t529 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t530 = extractvalue { i64, ptr } %t529, 1
  %t531 = extractvalue { i64, ptr } %t529, 0
  %t533 = extractvalue { i64, ptr } %t528, 1
  %t534 = extractvalue { i64, ptr } %t528, 0
  %t535 = add i64 %t531, %t534
  %t536 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t535)
  call void @olang_textcopy(ptr %t536, ptr %t530, i64 %t531)
  %t537 = getelementptr i8, ptr %t536, i64 %t531
  call void @olang_textcopy(ptr %t537, ptr %t533, i64 %t534)
  %t538 = insertvalue { i64, ptr } undef, i64 %t535, 0
  %t539 = insertvalue { i64, ptr } %t538, ptr %t536, 1
  store { i64, ptr } %t539, ptr %l22, !tbaa !27
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t543 = getelementptr %"compiler/emit:fnEm", ptr %t541, i32 0, i32 0
  %t544 = load ptr, ptr %t543, !tbaa !29
  %t545 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s14, ptr %t544, { i64, ptr } %t545)
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_9e47d22410206b14_1676530151cfc818)
  unreachable
bb78:
  %t548 = load i64, ptr %l12, !tbaa !24
  store i64 %t548, ptr %l195, !tbaa !24
  %t549 = ptrtoint ptr %s0 to i64
  store i64 %t549, ptr %l196, !tbaa !24
  %t550 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t550, label %bb79, label %bb80
bb79:
  %t552 = call ptr @__olang_region_make(ptr %s0)
  %t553 = ptrtoint ptr %t552 to i64
  store i64 %t553, ptr %l196, !tbaa !24
  br label %bb80
bb80:
  %t554 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t556 = extractvalue { i64, ptr } %t554, 1
  %t557 = extractvalue { i64, ptr } %t554, 0
  %t558 = load i64, ptr %l196
  %t559 = inttoptr i64 %t558 to ptr
  %t560 = call ptr @__olang_scope_alloc(ptr %t559, i64 %t557)
  call void @olang_textcopy(ptr %t560, ptr %t556, i64 %t557)
  %t561 = insertvalue { i64, ptr } undef, i64 %t557, 0
  %t562 = insertvalue { i64, ptr } %t561, ptr %t560, 1
  %t564 = load i64, ptr %l196
  %t565 = inttoptr i64 %t564 to ptr
  %t566 = extractvalue { i64, ptr } %t562, 0
  %t567 = extractvalue { i64, ptr } %t562, 1
  %t568 = mul i64 %t566, 1
  %t569 = call ptr @__olang_scope_alloc(ptr %t565, i64 %t568)
  call void @llvm.memcpy.p0.p0.i64(ptr %t569, ptr %t567, i64 %t568, i1 false)
  %t570 = insertvalue { i64, ptr } undef, i64 %t566, 0
  %t571 = insertvalue { i64, ptr } %t570, ptr %t569, 1
  %t573 = load i64, ptr %l195, !tbaa !24
  %t574 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t575 = load ptr, ptr %t574, !tbaa !27
  %t576 = getelementptr { i64, ptr }, ptr %t575, i64 %t573
  store { i64, ptr } %t571, ptr %t576, !tbaa !37
  %t577 = load i64, ptr %l12, !tbaa !24
  store i64 %t577, ptr %l201, !tbaa !24
  %t578 = ptrtoint ptr %s0 to i64
  store i64 %t578, ptr %l202, !tbaa !24
  %t579 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t579, label %bb81, label %bb82
bb81:
  %t581 = call ptr @__olang_region_make(ptr %s0)
  %t582 = ptrtoint ptr %t581 to i64
  store i64 %t582, ptr %l202, !tbaa !24
  br label %bb82
bb82:
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t584 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t585 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t586 = load i64, ptr %l12, !tbaa !24
  %t588 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t589 = load ptr, ptr %t588, !tbaa !27
  %t590 = getelementptr { i64, ptr }, ptr %t589, i64 %t586
  %t591 = load { i64, ptr }, ptr %t590, !tbaa !37
  %t592 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t593 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t595 = extractvalue { i64, ptr } %t584, 1
  %t596 = extractvalue { i64, ptr } %t584, 0
  %t597 = add i64 %t593, %t596
  %t598 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t599 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t600 = add i64 %t597, %t599
  %t602 = extractvalue { i64, ptr } %t585, 1
  %t603 = extractvalue { i64, ptr } %t585, 0
  %t604 = add i64 %t600, %t603
  %t605 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t606 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t607 = add i64 %t604, %t606
  %t609 = extractvalue { i64, ptr } %t591, 1
  %t610 = extractvalue { i64, ptr } %t591, 0
  %t611 = add i64 %t607, %t610
  %t612 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t613 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t614 = add i64 %t611, %t613
  %t615 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t614)
  call void @olang_textcopy(ptr %t615, ptr %t592, i64 %t593)
  %t616 = getelementptr i8, ptr %t615, i64 %t593
  call void @olang_textcopy(ptr %t616, ptr %t595, i64 %t596)
  %t617 = getelementptr i8, ptr %t616, i64 %t596
  call void @olang_textcopy(ptr %t617, ptr %t598, i64 %t599)
  %t618 = getelementptr i8, ptr %t617, i64 %t599
  call void @olang_textcopy(ptr %t618, ptr %t602, i64 %t603)
  %t619 = getelementptr i8, ptr %t618, i64 %t603
  call void @olang_textcopy(ptr %t619, ptr %t605, i64 %t606)
  %t620 = getelementptr i8, ptr %t619, i64 %t606
  call void @olang_textcopy(ptr %t620, ptr %t609, i64 %t610)
  %t621 = getelementptr i8, ptr %t620, i64 %t610
  call void @olang_textcopy(ptr %t621, ptr %t612, i64 %t613)
  %t622 = insertvalue { i64, ptr } undef, i64 %t614, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t615, 1
  %t625 = extractvalue { i64, ptr } %t623, 0
  %t626 = extractvalue { i64, ptr } %t623, 1
  %t627 = mul i64 %t625, 1
  %t628 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t627)
  call void @llvm.memcpy.p0.p0.i64(ptr %t628, ptr %t626, i64 %t627, i1 false)
  %t629 = insertvalue { i64, ptr } undef, i64 %t625, 0
  %t630 = insertvalue { i64, ptr } %t629, ptr %t628, 1
  %t633 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s14, ptr %s14, ptr %t583, { i64, ptr } %t630)
  store { i64, ptr } %t633, ptr %l211
  br label %bb83
bb83:
  %t634 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t635 = extractvalue { i64, ptr } %t634, 1
  %t636 = extractvalue { i64, ptr } %t634, 0
  %t637 = load i64, ptr %l202
  %t638 = inttoptr i64 %t637 to ptr
  %t639 = call ptr @__olang_scope_alloc(ptr %t638, i64 %t636)
  call void @olang_textcopy(ptr %t639, ptr %t635, i64 %t636)
  %t640 = insertvalue { i64, ptr } undef, i64 %t636, 0
  %t641 = insertvalue { i64, ptr } %t640, ptr %t639, 1
  %t643 = load i64, ptr %l202
  %t644 = inttoptr i64 %t643 to ptr
  %t645 = extractvalue { i64, ptr } %t641, 0
  %t646 = extractvalue { i64, ptr } %t641, 1
  %t647 = mul i64 %t645, 1
  %t648 = call ptr @__olang_scope_alloc(ptr %t644, i64 %t647)
  call void @llvm.memcpy.p0.p0.i64(ptr %t648, ptr %t646, i64 %t647, i1 false)
  %t649 = insertvalue { i64, ptr } undef, i64 %t645, 0
  %t650 = insertvalue { i64, ptr } %t649, ptr %t648, 1
  %t652 = load i64, ptr %l201, !tbaa !24
  %t653 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t654 = load ptr, ptr %t653, !tbaa !27
  %t655 = getelementptr { i64, ptr }, ptr %t654, i64 %t652
  store { i64, ptr } %t650, ptr %t655, !tbaa !37
  call void @__olang_scope_close(ptr %s14)
  br label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_36259d98e89c0794_c7f2b7595dd9f9a0)
  unreachable
bb85:
  %t656 = load i64, ptr %l12, !tbaa !24
  %t658 = icmp eq i64 %t656, 0
  br i1 %t658, label %bb86, label %bb87
bb86:
  %t660 = load i64, ptr %l12, !tbaa !24
  %t662 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t663 = load ptr, ptr %t662, !tbaa !27
  %t664 = getelementptr { i64, ptr }, ptr %t663, i64 %t660
  %t665 = load { i64, ptr }, ptr %t664, !tbaa !37
  %t667 = extractvalue { i64, ptr } %t665, 1
  %t668 = extractvalue { i64, ptr } %t665, 0
  %t669 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t668)
  call void @olang_textcopy(ptr %t669, ptr %t667, i64 %t668)
  %t670 = insertvalue { i64, ptr } undef, i64 %t668, 0
  %t671 = insertvalue { i64, ptr } %t670, ptr %t669, 1
  store { i64, ptr } %t671, ptr %l216, !tbaa !27
  br label %bb89
bb87:
  %t673 = load ptr, ptr %l0, !tbaa !29
  %t674 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t675 = load i64, ptr %l12, !tbaa !24
  %t677 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t678 = load ptr, ptr %t677, !tbaa !27
  %t679 = getelementptr { i64, ptr }, ptr %t678, i64 %t675
  %t680 = load { i64, ptr }, ptr %t679, !tbaa !37
  %t681 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t682 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  %t684 = extractvalue { i64, ptr } %t674, 1
  %t685 = extractvalue { i64, ptr } %t674, 0
  %t686 = add i64 %t682, %t685
  %t687 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t688 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  %t689 = add i64 %t686, %t688
  %t691 = extractvalue { i64, ptr } %t680, 1
  %t692 = extractvalue { i64, ptr } %t680, 0
  %t693 = add i64 %t689, %t692
  %t694 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t693)
  call void @olang_textcopy(ptr %t694, ptr %t681, i64 %t682)
  %t695 = getelementptr i8, ptr %t694, i64 %t682
  call void @olang_textcopy(ptr %t695, ptr %t684, i64 %t685)
  %t696 = getelementptr i8, ptr %t695, i64 %t685
  call void @olang_textcopy(ptr %t696, ptr %t687, i64 %t688)
  %t697 = getelementptr i8, ptr %t696, i64 %t688
  call void @olang_textcopy(ptr %t697, ptr %t691, i64 %t692)
  %t698 = insertvalue { i64, ptr } undef, i64 %t693, 0
  %t699 = insertvalue { i64, ptr } %t698, ptr %t694, 1
  %t701 = extractvalue { i64, ptr } %t699, 0
  %t702 = extractvalue { i64, ptr } %t699, 1
  %t703 = mul i64 %t701, 1
  %t704 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t703)
  call void @llvm.memcpy.p0.p0.i64(ptr %t704, ptr %t702, i64 %t703, i1 false)
  %t705 = insertvalue { i64, ptr } undef, i64 %t701, 0
  %t706 = insertvalue { i64, ptr } %t705, ptr %t704, 1
  %t709 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t673, { i64, ptr } %t706)
  store { i64, ptr } %t709, ptr %l226
  br label %bb88
bb88:
  %t710 = load { i64, ptr }, ptr %l226, !tbaa !27
  store { i64, ptr } %t710, ptr %l216, !tbaa !27
  br label %bb89
bb89:
  %t711 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t712 = extractvalue { i64, ptr } %t711, 0
  %t713 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t714 = extractvalue { i64, ptr } %t713, 0
  store i64 %t714, ptr %l228, !tbaa !24
  %t716 = load i64, ptr %l228, !tbaa !24
  %t717 = icmp eq i64 %t712, %t716
  br i1 %t717, label %bb90, label %bb91
bb90:
  %t719 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t720 = load ptr, ptr %t719, !tbaa !27
  %t721 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t722 = load ptr, ptr %t721, !tbaa !27
  %t723 = load i64, ptr %l228, !tbaa !24
  %t724 = mul i64 %t723, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t720, ptr %t722, i64 %t724, i1 false)
  br label %bb92
bb91:
  %t725 = load { i64, ptr }, ptr %l216, !tbaa !27
  store { i64, ptr } %t725, ptr %l6, !tbaa !27
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s2)
  br label %bb93
bb93:
  %t726 = load i64, ptr %l11, !tbaa !24
  %t728 = add i64 %t726, 1
  store i64 %t728, ptr %l11, !tbaa !24
  br label %bb20
bb94:
  %t730 = load ptr, ptr %l0, !tbaa !29
  %t732 = getelementptr %"compiler/emit:fnEm", ptr %t730, i32 0, i32 0
  %t733 = load ptr, ptr %t732, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t733, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d206, i32 0, i32 1) })
  br label %bb95
bb95:
  %t735 = load ptr, ptr %l0, !tbaa !29
  store ptr %t735, ptr %l234, !tbaa !29
  %t736 = load ptr, ptr %l0, !tbaa !29
  %t740 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s0, ptr %t736, { i64, [1 x i64] } %a1)
  store { i64, ptr } %t740, ptr %l237
  br label %bb96
bb96:
  %t741 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t742 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t743 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t744 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t745 = extractvalue { i64, ptr } %t744, 1
  %t746 = extractvalue { i64, ptr } %t744, 0
  %t747 = add i64 %t743, %t746
  %t748 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t749 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t750 = add i64 %t747, %t749
  %t752 = extractvalue { i64, ptr } %t741, 1
  %t753 = extractvalue { i64, ptr } %t741, 0
  %t754 = add i64 %t750, %t753
  %t755 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t756 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  %t757 = add i64 %t754, %t756
  %t758 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t757)
  call void @olang_textcopy(ptr %t758, ptr %t742, i64 %t743)
  %t759 = getelementptr i8, ptr %t758, i64 %t743
  call void @olang_textcopy(ptr %t759, ptr %t745, i64 %t746)
  %t760 = getelementptr i8, ptr %t759, i64 %t746
  call void @olang_textcopy(ptr %t760, ptr %t748, i64 %t749)
  %t761 = getelementptr i8, ptr %t760, i64 %t749
  call void @olang_textcopy(ptr %t761, ptr %t752, i64 %t753)
  %t762 = getelementptr i8, ptr %t761, i64 %t753
  call void @olang_textcopy(ptr %t762, ptr %t755, i64 %t756)
  %t763 = insertvalue { i64, ptr } undef, i64 %t757, 0
  %t764 = insertvalue { i64, ptr } %t763, ptr %t758, 1
  %t766 = extractvalue { i64, ptr } %t764, 0
  %t767 = extractvalue { i64, ptr } %t764, 1
  %t768 = mul i64 %t766, 1
  %t769 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t768)
  call void @llvm.memcpy.p0.p0.i64(ptr %t769, ptr %t767, i64 %t768, i1 false)
  %t770 = insertvalue { i64, ptr } undef, i64 %t766, 0
  %t771 = insertvalue { i64, ptr } %t770, ptr %t769, 1
  %t772 = load ptr, ptr %l234, !tbaa !29
  %t774 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t772, { i64, ptr } %t771)
  store { i64, ptr } %t774, ptr %l241
  br label %bb97
bb97:
  %t775 = load { i64, ptr }, ptr %l241, !tbaa !27
  store { i64, ptr } %t775, ptr %l23, !tbaa !27
  %t776 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t776, ptr %l242, !tbaa !27
  %t777 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t778 = extractvalue { i64, ptr } %t777, 0
  store i64 %t778, ptr %l243, !tbaa !24
  %t779 = load i64, ptr %l243, !tbaa !24
  %t780 = mul i64 %t779, 1
  %t781 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t780)
  %t782 = insertvalue { i64, ptr } undef, i64 %t779, 0
  %t783 = insertvalue { i64, ptr } %t782, ptr %t781, 1
  store { i64, ptr } %t783, ptr %l244, !tbaa !27
  %t784 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t785 = load ptr, ptr %t784, !tbaa !27
  %t786 = getelementptr { i64, ptr }, ptr %l242, i32 0, i32 1
  %t787 = load ptr, ptr %t786, !tbaa !27
  %t788 = load i64, ptr %l243, !tbaa !24
  %t789 = mul i64 %t788, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t785, ptr %t787, i64 %t789, i1 false)
  %t790 = load { i64, ptr }, ptr %l244, !tbaa !27
  store { i64, ptr } %t790, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t791 = load i64, ptr %l2, !tbaa !24
  store i64 %t791, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t793 = load i64, ptr %l26, !tbaa !24
  %t794 = load i64, ptr %l25, !tbaa !24
  %t797 = icmp sgt i64 %t793, %t794
  br i1 %t797, label %bb98, label %bb99
bb98:
  %t799 = load i64, ptr %l27, !tbaa !24
  %t801 = icmp sgt i64 %t799, 0
  br i1 %t801, label %bb100, label %bb101
bb99:
  store i64 0, ptr %l249, !tbaa !24
  br label %bb103
bb100:
  %t803 = load i64, ptr %l26, !tbaa !24
  %t804 = load i64, ptr %l25, !tbaa !24
  %t807 = sub i64 %t803, %t804
  %t808 = load i64, ptr %l27, !tbaa !24
  %t811 = add i64 %t807, %t808
  %t813 = sub i64 %t811, 1
  %t814 = load i64, ptr %l27, !tbaa !24
  %t817 = sdiv i64 %t813, %t814
  store i64 %t817, ptr %l252, !tbaa !24
  br label %bb102
bb101:
  store i64 0, ptr %l252, !tbaa !24
  br label %bb102
bb102:
  %t819 = load i64, ptr %l252, !tbaa !24
  store i64 %t819, ptr %l249, !tbaa !24
  br label %bb103
bb103:
  %t820 = load i64, ptr %l249, !tbaa !24
  store i64 %t820, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb104
bb104:
  %t821 = load i64, ptr %l29, !tbaa !24
  %t822 = load i64, ptr %l28, !tbaa !24
  %t825 = icmp slt i64 %t821, %t822
  %t827 = xor i1 %t825, true
  br i1 %t827, label %bb105, label %bb106
bb105:
  br label %bb140
bb106:
  br label %bb107
bb107:
  %t829 = load i64, ptr %l25, !tbaa !24
  %t830 = load i64, ptr %l29, !tbaa !24
  %t831 = load i64, ptr %l27, !tbaa !24
  %t834 = mul i64 %t830, %t831
  %t837 = add i64 %t829, %t834
  store i64 %t837, ptr %l30, !tbaa !24
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t841 = getelementptr %"compiler/emit:fnEm", ptr %t839, i32 0, i32 26
  %t842 = load i64, ptr %l30, !tbaa !24
  %t845 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2eAt_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %t841, i64 %t842)
  store i32 %t845, ptr %l273
  br label %bb108
bb108:
  %t846 = load i32, ptr %l273, !range !{i32 0, i32 8}
  store i32 %t846, ptr %l31
  %t847 = load i32, ptr %l31, !range !{i32 0, i32 8}
  %t849 = trunc i64 2 to i32
  %t850 = icmp eq i32 %t847, %t849
  br i1 %t850, label %bb109, label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb113
bb111:
  store %olang.scope zeroinitializer, ptr %s25
  %t852 = load ptr, ptr %l0, !tbaa !29
  %t853 = load i64, ptr %l30, !tbaa !24
  %t855 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t856 = load ptr, ptr %t855, !tbaa !27
  %t857 = getelementptr { i64, ptr }, ptr %t856, i64 %t853
  %t858 = load { i64, ptr }, ptr %t857, !tbaa !37
  %t859 = load { i64, ptr }, ptr %l24, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s25, ptr %s0, ptr %s0, ptr %s25, ptr %t852, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d210, i32 0, i32 1) }, { i64, ptr } %t858, { i64, ptr } %t859, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s25)
  br label %bb131
bb113:
  %t863 = load i32, ptr %l31, !range !{i32 0, i32 8}
  %t865 = trunc i64 5 to i32
  %t866 = icmp eq i32 %t863, %t865
  br i1 %t866, label %bb114, label %bb115
bb114:
  br label %bb118
bb115:
  %t868 = load i32, ptr %l31, !range !{i32 0, i32 8}
  %t870 = trunc i64 4 to i32
  %t871 = icmp eq i32 %t868, %t870
  br i1 %t871, label %bb116, label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb124
bb118:
  store %olang.scope zeroinitializer, ptr %s26
  %t873 = load ptr, ptr %l0, !tbaa !29
  store ptr %t873, ptr %l284, !tbaa !29
  %t874 = load i64, ptr %l30, !tbaa !24
  %t876 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t877 = load ptr, ptr %t876, !tbaa !27
  %t878 = getelementptr { i64, ptr }, ptr %t877, i64 %t874
  %t879 = load { i64, ptr }, ptr %t878, !tbaa !37
  store { i64, ptr } %t879, ptr %l286, !tbaa !27
  %t880 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t880, ptr %l287, !tbaa !27
  %t881 = load i64, ptr %l30, !tbaa !24
  %t883 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t884 = load ptr, ptr %t883, !tbaa !27
  %t885 = getelementptr { i64, ptr }, ptr %t884, i64 %t881
  %t886 = load { i64, ptr }, ptr %t885, !tbaa !37
  %t888 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s26, { i64, ptr } %t886, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d211, i32 0, i32 1) })
  store i1 %t888, ptr %l290
  br label %bb119
bb119:
  %t889 = load i1, ptr %l290, !tbaa !21
  br i1 %t889, label %bb120, label %bb121
bb120:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d212, i32 0, i32 1) }, ptr %l291, !tbaa !27
  br label %bb122
bb121:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d213, i32 0, i32 1) }, ptr %l291, !tbaa !27
  br label %bb122
bb122:
  %t890 = load i64, ptr %l30, !tbaa !24
  %t892 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t893 = load ptr, ptr %t892, !tbaa !27
  %t894 = getelementptr { i64, ptr }, ptr %t893, i64 %t890
  %t895 = load { i64, ptr }, ptr %t894, !tbaa !37
  %t896 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t897 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t898 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t899 = extractvalue { i64, ptr } %t898, 1
  %t900 = extractvalue { i64, ptr } %t898, 0
  %t901 = add i64 %t897, %t900
  %t902 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t903 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t904 = add i64 %t901, %t903
  %t905 = load { i64, ptr }, ptr %l287, !tbaa !27
  %t906 = extractvalue { i64, ptr } %t905, 1
  %t907 = extractvalue { i64, ptr } %t905, 0
  %t908 = add i64 %t904, %t907
  %t909 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t910 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t911 = add i64 %t908, %t910
  %t912 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t913 = extractvalue { i64, ptr } %t912, 1
  %t914 = extractvalue { i64, ptr } %t912, 0
  %t915 = add i64 %t911, %t914
  %t916 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t917 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t918 = add i64 %t915, %t917
  %t920 = extractvalue { i64, ptr } %t895, 1
  %t921 = extractvalue { i64, ptr } %t895, 0
  %t922 = add i64 %t918, %t921
  %t923 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t924 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  %t925 = add i64 %t922, %t924
  %t926 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t925)
  call void @olang_textcopy(ptr %t926, ptr %t896, i64 %t897)
  %t927 = getelementptr i8, ptr %t926, i64 %t897
  call void @olang_textcopy(ptr %t927, ptr %t899, i64 %t900)
  %t928 = getelementptr i8, ptr %t927, i64 %t900
  call void @olang_textcopy(ptr %t928, ptr %t902, i64 %t903)
  %t929 = getelementptr i8, ptr %t928, i64 %t903
  call void @olang_textcopy(ptr %t929, ptr %t906, i64 %t907)
  %t930 = getelementptr i8, ptr %t929, i64 %t907
  call void @olang_textcopy(ptr %t930, ptr %t909, i64 %t910)
  %t931 = getelementptr i8, ptr %t930, i64 %t910
  call void @olang_textcopy(ptr %t931, ptr %t913, i64 %t914)
  %t932 = getelementptr i8, ptr %t931, i64 %t914
  call void @olang_textcopy(ptr %t932, ptr %t916, i64 %t917)
  %t933 = getelementptr i8, ptr %t932, i64 %t917
  call void @olang_textcopy(ptr %t933, ptr %t920, i64 %t921)
  %t934 = getelementptr i8, ptr %t933, i64 %t921
  call void @olang_textcopy(ptr %t934, ptr %t923, i64 %t924)
  %t935 = insertvalue { i64, ptr } undef, i64 %t925, 0
  %t936 = insertvalue { i64, ptr } %t935, ptr %t926, 1
  %t938 = extractvalue { i64, ptr } %t936, 0
  %t939 = extractvalue { i64, ptr } %t936, 1
  %t940 = mul i64 %t938, 1
  %t941 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t940)
  call void @llvm.memcpy.p0.p0.i64(ptr %t941, ptr %t939, i64 %t940, i1 false)
  %t942 = insertvalue { i64, ptr } undef, i64 %t938, 0
  %t943 = insertvalue { i64, ptr } %t942, ptr %t941, 1
  %t944 = load ptr, ptr %l284, !tbaa !29
  %t946 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s26, ptr %s26, ptr %t944, { i64, ptr } %t943)
  store { i64, ptr } %t946, ptr %l296
  br label %bb123
bb123:
  call void @__olang_scope_close(ptr %s26)
  br label %bb131
bb124:
  br i1 true, label %bb125, label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb130
bb127:
  store %olang.scope zeroinitializer, ptr %s28
  %t947 = load ptr, ptr %l0, !tbaa !29
  %t949 = getelementptr %"compiler/emit:fnEm", ptr %t947, i32 0, i32 0
  %t950 = load ptr, ptr %t949, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etextCopy(ptr %v0, ptr %t950)
  br label %bb128
bb128:
  %t952 = load ptr, ptr %l0, !tbaa !29
  %t953 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t954 = load i64, ptr %l30, !tbaa !24
  %t956 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t957 = load ptr, ptr %t956, !tbaa !27
  %t958 = getelementptr { i64, ptr }, ptr %t957, i64 %t954
  %t959 = load { i64, ptr }, ptr %t958, !tbaa !37
  %t960 = load i64, ptr %l30, !tbaa !24
  %t962 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t963 = load ptr, ptr %t962, !tbaa !27
  %t964 = getelementptr { i64, ptr }, ptr %t963, i64 %t960
  %t965 = load { i64, ptr }, ptr %t964, !tbaa !37
  %t966 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t967 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  %t969 = extractvalue { i64, ptr } %t953, 1
  %t970 = extractvalue { i64, ptr } %t953, 0
  %t971 = add i64 %t967, %t970
  %t972 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t973 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t974 = add i64 %t971, %t973
  %t976 = extractvalue { i64, ptr } %t959, 1
  %t977 = extractvalue { i64, ptr } %t959, 0
  %t978 = add i64 %t974, %t977
  %t979 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t980 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  %t981 = add i64 %t978, %t980
  %t983 = extractvalue { i64, ptr } %t965, 1
  %t984 = extractvalue { i64, ptr } %t965, 0
  %t985 = add i64 %t981, %t984
  %t986 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t987 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t988 = add i64 %t985, %t987
  %t989 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t988)
  call void @olang_textcopy(ptr %t989, ptr %t966, i64 %t967)
  %t990 = getelementptr i8, ptr %t989, i64 %t967
  call void @olang_textcopy(ptr %t990, ptr %t969, i64 %t970)
  %t991 = getelementptr i8, ptr %t990, i64 %t970
  call void @olang_textcopy(ptr %t991, ptr %t972, i64 %t973)
  %t992 = getelementptr i8, ptr %t991, i64 %t973
  call void @olang_textcopy(ptr %t992, ptr %t976, i64 %t977)
  %t993 = getelementptr i8, ptr %t992, i64 %t977
  call void @olang_textcopy(ptr %t993, ptr %t979, i64 %t980)
  %t994 = getelementptr i8, ptr %t993, i64 %t980
  call void @olang_textcopy(ptr %t994, ptr %t983, i64 %t984)
  %t995 = getelementptr i8, ptr %t994, i64 %t984
  call void @olang_textcopy(ptr %t995, ptr %t986, i64 %t987)
  %t996 = insertvalue { i64, ptr } undef, i64 %t988, 0
  %t997 = insertvalue { i64, ptr } %t996, ptr %t989, 1
  %t999 = extractvalue { i64, ptr } %t997, 0
  %t1000 = extractvalue { i64, ptr } %t997, 1
  %t1001 = mul i64 %t999, 1
  %t1002 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1001)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1002, ptr %t1000, i64 %t1001, i1 false)
  %t1003 = insertvalue { i64, ptr } undef, i64 %t999, 0
  %t1004 = insertvalue { i64, ptr } %t1003, ptr %t1002, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s28, ptr %t952, { i64, ptr } %t1004)
  br label %bb129
bb129:
  call void @__olang_scope_close(ptr %s28)
  br label %bb131
bb130:
  call void @__olang_check_failed(ptr @olang_loc_6415a1b5bc923845_6940cc9dfc997db1)
  unreachable
bb131:
  %t1007 = load i64, ptr %l30, !tbaa !24
  %t1009 = add i64 %t1007, 1
  %t1010 = load i64, ptr %l2, !tbaa !24
  %t1013 = icmp slt i64 %t1009, %t1010
  br i1 %t1013, label %bb132, label %bb133
bb132:
  %t1015 = load ptr, ptr %l0, !tbaa !29
  %t1016 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t1017 = load i64, ptr %l30, !tbaa !24
  %t1019 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t1020 = load ptr, ptr %t1019, !tbaa !27
  %t1021 = getelementptr { i64, ptr }, ptr %t1020, i64 %t1017
  %t1022 = load { i64, ptr }, ptr %t1021, !tbaa !37
  %t1023 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t1024 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t1026 = extractvalue { i64, ptr } %t1016, 1
  %t1027 = extractvalue { i64, ptr } %t1016, 0
  %t1028 = add i64 %t1024, %t1027
  %t1029 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t1030 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t1031 = add i64 %t1028, %t1030
  %t1033 = extractvalue { i64, ptr } %t1022, 1
  %t1034 = extractvalue { i64, ptr } %t1022, 0
  %t1035 = add i64 %t1031, %t1034
  %t1036 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1035)
  call void @olang_textcopy(ptr %t1036, ptr %t1023, i64 %t1024)
  %t1037 = getelementptr i8, ptr %t1036, i64 %t1024
  call void @olang_textcopy(ptr %t1037, ptr %t1026, i64 %t1027)
  %t1038 = getelementptr i8, ptr %t1037, i64 %t1027
  call void @olang_textcopy(ptr %t1038, ptr %t1029, i64 %t1030)
  %t1039 = getelementptr i8, ptr %t1038, i64 %t1030
  call void @olang_textcopy(ptr %t1039, ptr %t1033, i64 %t1034)
  %t1040 = insertvalue { i64, ptr } undef, i64 %t1035, 0
  %t1041 = insertvalue { i64, ptr } %t1040, ptr %t1036, 1
  %t1043 = extractvalue { i64, ptr } %t1041, 0
  %t1044 = extractvalue { i64, ptr } %t1041, 1
  %t1045 = mul i64 %t1043, 1
  %t1046 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1045)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1046, ptr %t1044, i64 %t1045, i1 false)
  %t1047 = insertvalue { i64, ptr } undef, i64 %t1043, 0
  %t1048 = insertvalue { i64, ptr } %t1047, ptr %t1046, 1
  %t1051 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1015, { i64, ptr } %t1048)
  store { i64, ptr } %t1051, ptr %l317
  br label %bb134
bb133:
  br label %bb138
bb134:
  %t1052 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t1053 = extractvalue { i64, ptr } %t1052, 0
  %t1054 = load { i64, ptr }, ptr %l317, !tbaa !27
  %t1055 = extractvalue { i64, ptr } %t1054, 0
  store i64 %t1055, ptr %l319, !tbaa !24
  %t1057 = load i64, ptr %l319, !tbaa !24
  %t1058 = icmp eq i64 %t1053, %t1057
  br i1 %t1058, label %bb135, label %bb136
bb135:
  %t1060 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t1061 = load ptr, ptr %t1060, !tbaa !27
  %t1062 = getelementptr { i64, ptr }, ptr %l317, i32 0, i32 1
  %t1063 = load ptr, ptr %t1062, !tbaa !27
  %t1064 = load i64, ptr %l319, !tbaa !24
  %t1065 = mul i64 %t1064, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1061, ptr %t1063, i64 %t1065, i1 false)
  br label %bb137
bb136:
  %t1066 = load { i64, ptr }, ptr %l317, !tbaa !27
  store { i64, ptr } %t1066, ptr %l24, !tbaa !27
  br label %bb137
bb137:
  br label %bb138
bb138:
  br label %bb139
bb139:
  %t1067 = load i64, ptr %l29, !tbaa !24
  %t1069 = add i64 %t1067, 1
  store i64 %t1069, ptr %l29, !tbaa !24
  br label %bb104
bb140:
  %t1071 = load ptr, ptr %l0, !tbaa !29
  %t1072 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1073 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t1077 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t1071, { i64, ptr } %t1072, { i64, ptr } %t1073)
  store { i64, ptr } %t1077, ptr %l326
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s0)
  %t1078 = load { i64, ptr }, ptr %l326, !tbaa !27
  store { i64, ptr } %t1078, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexportBody(ptr %v0, ptr %v1, ptr %a0, { i64, [15 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [15 x i64] }
  %l3 = alloca i32
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca %"compiler/mir:Range"
  %l6 = alloca %"compiler/mir:Range"
  %l7 = alloca { i64, [2 x i64] }
  %l9 = alloca { i64, [2 x i64] }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l54 = alloca ptr
  %l59 = alloca i64
  %l60 = alloca ptr
  %l63 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [15 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [15 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [15 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 10
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d225, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t8, ptr %l15, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l16, !tbaa !24
  %t11 = load i64, ptr %l16, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l17, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l16, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t22, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t24 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t25 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t24, i32 0, i32 0
  %t26 = load { i64, [2 x i64] }, ptr %t25
  %t28 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t29 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t28, i32 0, i32 1
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l3, !tbaa !23
  %t32 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t33 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t32, i32 0, i32 2
  %t34 = load { i64, [1 x i64] }, ptr %t33
  store { i64, [1 x i64] } %t34, ptr %l4
  %t36 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t37 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t36, i32 0, i32 3
  %t38 = load %"compiler/mir:Range", ptr %t37
  store %"compiler/mir:Range" %t38, ptr %l5
  %t40 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t41 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t40, i32 0, i32 4
  %t42 = load %"compiler/mir:Range", ptr %t41
  store %"compiler/mir:Range" %t42, ptr %l6
  store { i64, [2 x i64] } %t26, ptr %l7
  %t46 = load { i64, [2 x i64] }, ptr %l7
  %t48 = extractvalue { i64, [2 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 0
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d226, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t53, ptr %l28, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l29, !tbaa !24
  %t56 = load i64, ptr %l29, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l30, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l29, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t67, ptr %l28, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t68 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t69 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t70 = getelementptr { i32 }, ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/emit:fnEm", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/emit:Emitter", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/lower:Lowerer", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t86 = sext i32 %t71 to i64
  %t89 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t82, i64 %t86)
  store ptr %t89, ptr %l39
  br label %bb7
bb7:
  %t90 = load ptr, ptr %l39, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Body", ptr %t90, i32 0, i32 1
  %t93 = load { i64, [2 x i64] }, ptr %t92
  store { i64, [2 x i64] } %t93, ptr %l9
  %t95 = load { i64, [2 x i64] }, ptr %l9
  %t97 = extractvalue { i64, [2 x i64] } %t95, 0
  %t98 = icmp eq i64 %t97, 0
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb8, label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d227, i32 0, i32 1) }, ptr %l45, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t102, ptr %l46, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  store i64 %t104, ptr %l47, !tbaa !24
  %t105 = load i64, ptr %l47, !tbaa !24
  %t106 = mul i64 %t105, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t106)
  %t108 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  store { i64, ptr } %t109, ptr %l48, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = load i64, ptr %l47, !tbaa !24
  %t115 = mul i64 %t114, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t111, ptr %t113, i64 %t115, i1 false)
  %t116 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t116, ptr %l46, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t117 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t117, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t118 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t119 = getelementptr { i64 }, ptr %t118, i32 0, i32 0
  %t120 = load i64, ptr %t119
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/emit:fnEm", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  store ptr %t125, ptr %l51, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/emit:fnEm", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/emit:Emitter", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  store ptr %t132, ptr %l54, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/emit:fnEm", ptr %t133, i32 0, i32 0
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/emit:Emitter", ptr %t136, i32 0, i32 0
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t143 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t139, i64 %t120)
  store i64 %t143, ptr %l59
  br label %bb11
bb11:
  %t144 = load ptr, ptr %l54, !tbaa !29
  %t145 = load i64, ptr %l59, !tbaa !24
  %t146 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t144, i64 %t145)
  store ptr %t146, ptr %l60
  br label %bb12
bb12:
  %t147 = load ptr, ptr %l60, !tbaa !29
  %t149 = getelementptr %"compiler/ast:Func", ptr %t147, i32 0, i32 2
  %t150 = load i32, ptr %t149, !tbaa !23
  %t151 = load ptr, ptr %l51, !tbaa !29
  %t153 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s0, ptr %t151, i32 %t150)
  store { i64, ptr } %t153, ptr %l63
  br label %bb13
bb13:
  %t154 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t156)
  call void @olang_textcopy(ptr %t157, ptr %t155, i64 %t156)
  %t158 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t159, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexternArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca { { i64, ptr }, { i64, ptr } }
  %l13 = alloca i32
  %l16 = alloca i32
  %l23 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l32 = alloca i1
  %l33 = alloca i32
  %l36 = alloca i32
  %l40 = alloca i32
  %l46 = alloca { { i64, ptr }, { i64, ptr } }
  %l52 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
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
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l13
  br label %bb1
bb1:
  %t14 = load i32, ptr %l13, !tbaa !23
  store i32 %t14, ptr %l4, !tbaa !23
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i32, ptr %l4, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l16
  br label %bb2
bb2:
  %t20 = load i32, ptr %l16, !range !{i32 0, i32 33}
  %t22 = trunc i64 21 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t27 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t30 = extractvalue { i64, ptr } %t26, 1
  %t31 = extractvalue { i64, ptr } %t26, 0
  %t32 = add i64 %t28, %t31
  %t33 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  %t35 = add i64 %t32, %t34
  %t36 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t35)
  call void @olang_textcopy(ptr %t36, ptr %t27, i64 %t28)
  %t37 = getelementptr i8, ptr %t36, i64 %t28
  call void @olang_textcopy(ptr %t37, ptr %t30, i64 %t31)
  %t38 = getelementptr i8, ptr %t37, i64 %t31
  call void @olang_textcopy(ptr %t38, ptr %t33, i64 %t34)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t36, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = extractvalue { i64, ptr } %t40, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t50 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s1, ptr %s1, ptr %t25, { i64, ptr } %t47)
  store { i64, ptr } %t50, ptr %l23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t53 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t56 = extractvalue { i64, ptr } %t52, 1
  %t57 = extractvalue { i64, ptr } %t52, 0
  %t58 = add i64 %t54, %t57
  %t59 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t61)
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
  %t71 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t76 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s1, ptr %s1, ptr %t51, { i64, ptr } %t73)
  store { i64, ptr } %t76, ptr %l28
  br label %bb6
bb6:
  %t77 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  %t79 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = add i64 %t78, %t81
  %t83 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = add i64 %t85, %t88
  %t90 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t89)
  call void @olang_textcopy(ptr %t90, ptr %t77, i64 %t78)
  %t91 = getelementptr i8, ptr %t90, i64 %t78
  call void @olang_textcopy(ptr %t91, ptr %t80, i64 %t81)
  %t92 = getelementptr i8, ptr %t91, i64 %t81
  call void @olang_textcopy(ptr %t92, ptr %t83, i64 %t84)
  %t93 = getelementptr i8, ptr %t92, i64 %t84
  call void @olang_textcopy(ptr %t93, ptr %t87, i64 %t88)
  %t94 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t90, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t95, ptr %rv
  br label %ret
bb7:
  %t97 = load ptr, ptr %l3, !tbaa !29
  %t98 = load i32, ptr %l4, !tbaa !23
  %t101 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l32
  br label %bb8
bb8:
  %t102 = load i1, ptr %l32, !tbaa !21
  br i1 %t102, label %bb9, label %bb10
bb9:
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t104 = load i32, ptr %l4, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t107, ptr %l36
  br label %bb11
bb10:
  %t108 = load i32, ptr %l4, !tbaa !23
  store i32 %t108, ptr %l33, !tbaa !23
  br label %bb12
bb11:
  %t110 = load i32, ptr %l36, !tbaa !23
  store i32 %t110, ptr %l33, !tbaa !23
  br label %bb12
bb12:
  %t111 = load i32, ptr %l33, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t116 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t112, i32 %t111)
  store i32 %t116, ptr %l40
  br label %bb13
bb13:
  %t117 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t118 = load i32, ptr %l40, !tbaa !23
  %t120 = icmp ne i32 %t118, %t117
  br i1 %t120, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s5
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t124 = load i32, ptr %l2, !tbaa !23
  %t128 = call { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %v1, ptr %s5, ptr %t122, { i64, ptr } %t123, i32 %t124)
  store { { i64, ptr }, { i64, ptr } } %t128, ptr %l46
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t129 = load { { i64, ptr }, { i64, ptr } }, ptr %l46
  store { { i64, ptr }, { i64, ptr } } %t129, ptr %l6
  %t130 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l6, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  %t134 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  %t137 = extractvalue { i64, ptr } %t131, 1
  %t138 = extractvalue { i64, ptr } %t131, 0
  %t139 = add i64 %t135, %t138
  %t140 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t139)
  call void @olang_textcopy(ptr %t140, ptr %t134, i64 %t135)
  %t141 = getelementptr i8, ptr %t140, i64 %t135
  call void @olang_textcopy(ptr %t141, ptr %t137, i64 %t138)
  %t142 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t140, 1
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t143, ptr %rv
  br label %ret
bb17:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i32, ptr %l4, !tbaa !23
  %t149 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t145, i32 %t146)
  store { i64, ptr } %t149, ptr %l52
  br label %bb18
bb18:
  %t150 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t151 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = extractvalue { i64, ptr } %t151, 0
  %t154 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t158 = extractvalue { i64, ptr } %t150, 1
  %t159 = extractvalue { i64, ptr } %t150, 0
  %t160 = add i64 %t156, %t159
  %t161 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t152, i64 %t153)
  %t162 = getelementptr i8, ptr %t161, i64 %t153
  call void @olang_textcopy(ptr %t162, ptr %t154, i64 %t155)
  %t163 = getelementptr i8, ptr %t162, i64 %t155
  call void @olang_textcopy(ptr %t163, ptr %t158, i64 %t159)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t161, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t165, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2efindDirect(ptr %v0, ptr %a0) #0 {
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
  %l16 = alloca { i64, [21 x i64] }
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca { i64, [21 x i64] }
  %l20 = alloca { i64, [15 x i64] }
  %l21 = alloca { i64, [1 x i64] }
  %l22 = alloca i1
  %l23 = alloca { i64, [21 x i64] }
  %l24 = alloca i32
  %l25 = alloca i1
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l58 = alloca ptr
  %l61 = alloca i64
  %l66 = alloca i64
  %l69 = alloca i64
  %l90 = alloca { i64, [21 x i64] }
  %l91 = alloca { i64, [21 x i64] }
  %l99 = alloca %"compiler/mir:ScopeInfo"
  %l111 = alloca i1
  %l112 = alloca ptr
  %l116 = alloca { i64, [21 x i64] }
  %l119 = alloca i1
  %l130 = alloca { i64, [21 x i64] }
  %l131 = alloca i1
  %l132 = alloca { i64, [21 x i64] }
  %l135 = alloca i1
  %l142 = alloca i1
  %l147 = alloca { i64, [21 x i64] }
  %l148 = alloca i1
  %l149 = alloca { i64, [21 x i64] }
  %l157 = alloca i1
  %s9 = alloca %olang.scope
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
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l29
  br label %bb1
bb1:
  %t9 = load i64, ptr %l29, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb7
bb4:
  %t20 = load i64, ptr %l2, !tbaa !24
  %t21 = load i64, ptr %l1, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l36, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l36, !tbaa !24
  store i64 %t36, ptr %l33, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l33, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb95
bb10:
  br label %bb11
bb11:
  %t46 = load i64, ptr %l1, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l3, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/emit:fnEm", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/mir:Fn", ptr %t59, i32 0, i32 9
  %t65 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t61, i64 %t54)
  store ptr %t65, ptr %l58
  br label %bb12
bb12:
  %t66 = load ptr, ptr %l58, !tbaa !29
  store ptr %t66, ptr %l7, !tbaa !29
  %t67 = load ptr, ptr %l7, !tbaa !29
  %t69 = getelementptr %"compiler/mir:BasicBlock", ptr %t67, i32 0, i32 0
  %t71 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %t69)
  store i64 %t71, ptr %l61
  br label %bb13
bb13:
  %t72 = load i64, ptr %l61, !tbaa !24
  store i64 %t72, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  store i64 %t73, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = icmp sgt i64 %t75, %t76
  br i1 %t79, label %bb14, label %bb15
bb14:
  %t81 = load i64, ptr %l11, !tbaa !24
  %t83 = icmp sgt i64 %t81, 0
  br i1 %t83, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb19
bb16:
  %t85 = load i64, ptr %l10, !tbaa !24
  %t86 = load i64, ptr %l9, !tbaa !24
  %t89 = sub i64 %t85, %t86
  %t90 = load i64, ptr %l11, !tbaa !24
  %t93 = add i64 %t89, %t90
  %t95 = sub i64 %t93, 1
  %t96 = load i64, ptr %l11, !tbaa !24
  %t99 = sdiv i64 %t95, %t96
  store i64 %t99, ptr %l69, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb18
bb18:
  %t101 = load i64, ptr %l69, !tbaa !24
  store i64 %t101, ptr %l66, !tbaa !24
  br label %bb19
bb19:
  %t102 = load i64, ptr %l66, !tbaa !24
  store i64 %t102, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb20
bb20:
  %t103 = load i64, ptr %l13, !tbaa !24
  %t104 = load i64, ptr %l12, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb21, label %bb22
bb21:
  br label %bb93
bb22:
  br label %bb23
bb23:
  %t111 = load i64, ptr %l9, !tbaa !24
  %t112 = load i64, ptr %l13, !tbaa !24
  %t113 = load i64, ptr %l11, !tbaa !24
  %t116 = mul i64 %t112, %t113
  %t119 = add i64 %t111, %t116
  store i64 %t119, ptr %l14, !tbaa !24
  store i64 -1, ptr %l15, !tbaa !24
  %t121 = load ptr, ptr %l7, !tbaa !29
  %t123 = getelementptr %"compiler/mir:BasicBlock", ptr %t121, i32 0, i32 0
  %t124 = load i64, ptr %l14, !tbaa !24
  %t127 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t123, i64 %t124)
  store { i64, [21 x i64] } %t127, ptr %l90
  br label %bb24
bb24:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l90, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l91, ptr %l16, i64 176, i1 false)
  %t128 = load { i64, [21 x i64] }, ptr %l91
  %t129 = extractvalue { i64, [21 x i64] } %t128, 0
  %t130 = icmp eq i64 %t129, 3
  br i1 %t130, label %bb25, label %bb26
bb25:
  %t132 = getelementptr { i64, [21 x i64] }, ptr %l16, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32 }, ptr %t132, i32 0, i32 1
  %t134 = load i32, ptr %t133
  store i32 %t134, ptr %l17, !tbaa !23
  br label %bb27
bb26:
  br label %bb32
bb27:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/emit:fnEm", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/mir:Fn", ptr %t139, i32 0, i32 8
  %t142 = load i32, ptr %l17, !tbaa !23
  %t144 = sext i32 %t142 to i64
  %t147 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t141, i64 %t144)
  store %"compiler/mir:ScopeInfo" %t147, ptr %l99
  br label %bb28
bb28:
  %t148 = getelementptr %"compiler/mir:ScopeInfo", ptr %l99, i32 0, i32 0
  %t149 = load i32, ptr %t148, !range !{i32 0, i32 7}
  %t151 = trunc i64 6 to i32
  %t152 = icmp eq i32 %t149, %t151
  br i1 %t152, label %bb29, label %bb30
bb29:
  %t154 = load i32, ptr %l17, !tbaa !23
  %t156 = sext i32 %t154 to i64
  store i64 %t156, ptr %l15, !tbaa !24
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_8a0f087481b95ab0_a13f080fe7b316d4)
  unreachable
bb37:
  %t158 = load i64, ptr %l15, !tbaa !24
  %t160 = icmp slt i64 %t158, 0
  br i1 %t160, label %bb38, label %bb39
bb38:
  br label %bb92
bb39:
  br label %bb40
bb40:
  %t162 = load i64, ptr %l14, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l18, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s9
  %t166 = load i64, ptr %l18, !tbaa !24
  %t167 = load i64, ptr %l8, !tbaa !24
  %t170 = icmp slt i64 %t166, %t167
  br i1 %t170, label %bb42, label %bb43
bb42:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l112, !tbaa !29
  %t173 = load ptr, ptr %l7, !tbaa !29
  %t175 = getelementptr %"compiler/mir:BasicBlock", ptr %t173, i32 0, i32 0
  %t176 = load i64, ptr %l18, !tbaa !24
  %t179 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t175, i64 %t176)
  store { i64, [21 x i64] } %t179, ptr %l116
  br label %bb44
bb43:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb46
bb44:
  %t180 = load { i64, [21 x i64] }, ptr %l116
  %t181 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 176, i64 8)
  store { i64, [21 x i64] } %t180, ptr %t181
  %t182 = load i64, ptr %l15, !tbaa !24
  %t183 = load ptr, ptr %l112, !tbaa !29
  %t186 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplainWrite(ptr %v0, ptr %s9, ptr %t183, ptr %t181, i64 %t182)
  store i1 %t186, ptr %l119
  br label %bb45
bb45:
  %t187 = load i1, ptr %l119, !tbaa !21
  store i1 %t187, ptr %l111, !tbaa !21
  br label %bb46
bb46:
  %t188 = load i1, ptr %l111, !tbaa !21
  %t189 = xor i1 %t188, true
  br i1 %t189, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s9)
  br label %bb51
bb48:
  br label %bb49
bb49:
  %t191 = load i64, ptr %l18, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l18, !tbaa !24
  call void @__olang_scope_close(ptr %s9)
  br label %bb50
bb50:
  br label %bb41
bb51:
  %t195 = load i64, ptr %l18, !tbaa !24
  %t197 = add i64 %t195, 1
  %t198 = load i64, ptr %l8, !tbaa !24
  %t201 = icmp sge i64 %t197, %t198
  br i1 %t201, label %bb52, label %bb53
bb52:
  br label %bb92
bb53:
  br label %bb54
bb54:
  %t203 = load ptr, ptr %l7, !tbaa !29
  %t205 = getelementptr %"compiler/mir:BasicBlock", ptr %t203, i32 0, i32 0
  %t206 = load i64, ptr %l18, !tbaa !24
  %t209 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t205, i64 %t206)
  store { i64, [21 x i64] } %t209, ptr %l130
  br label %bb55
bb55:
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %l130, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l132, ptr %l19, i64 176, i1 false)
  %t210 = load { i64, [21 x i64] }, ptr %l132
  %t211 = extractvalue { i64, [21 x i64] } %t210, 0
  %t212 = icmp eq i64 %t211, 0
  br i1 %t212, label %bb56, label %bb57
bb56:
  %t214 = getelementptr { i64, [21 x i64] }, ptr %l19, i32 0, i32 1
  %t215 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t214, i32 0, i32 2
  %t216 = load { i64, [15 x i64] }, ptr %t215
  store { i64, [15 x i64] } %t216, ptr %l20
  br label %bb58
bb57:
  br label %bb69
bb58:
  %t218 = load { i64, [15 x i64] }, ptr %l20
  %t220 = extractvalue { i64, [15 x i64] } %t218, 0
  %t221 = icmp eq i64 %t220, 12
  br i1 %t221, label %bb59, label %bb60
bb59:
  %t223 = getelementptr { i64, [15 x i64] }, ptr %l20, i32 0, i32 1
  %t224 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t223, i32 0, i32 0
  %t225 = load { i64, [1 x i64] }, ptr %t224
  store { i64, [1 x i64] } %t225, ptr %l21
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load { i64, [1 x i64] }, ptr %l21
  %t229 = load i64, ptr %l15, !tbaa !24
  %t233 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erefIs(ptr %v0, ptr %t227, { i64, [1 x i64] } %t228, i64 %t229)
  store i1 %t233, ptr %l142
  br label %bb62
bb62:
  %t234 = load i1, ptr %l142, !tbaa !21
  store i1 %t234, ptr %l135, !tbaa !21
  br label %bb68
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_9d64128d60439a41_20f9e6973a71ad85)
  unreachable
bb68:
  %t235 = load i1, ptr %l135, !tbaa !21
  store i1 %t235, ptr %l131, !tbaa !21
  br label %bb74
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_28dd7919903bc2a_4577237eccb57ce)
  unreachable
bb74:
  %t236 = load i1, ptr %l131, !tbaa !21
  store i1 %t236, ptr %l22, !tbaa !21
  %t237 = load ptr, ptr %l7, !tbaa !29
  %t239 = getelementptr %"compiler/mir:BasicBlock", ptr %t237, i32 0, i32 0
  %t240 = load i64, ptr %l18, !tbaa !24
  %t242 = add i64 %t240, 1
  %t245 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t239, i64 %t242)
  store { i64, [21 x i64] } %t245, ptr %l147
  br label %bb75
bb75:
  call void @llvm.memmove.p0.p0.i64(ptr %l23, ptr %l147, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l149, ptr %l23, i64 176, i1 false)
  %t246 = load { i64, [21 x i64] }, ptr %l149
  %t247 = extractvalue { i64, [21 x i64] } %t246, 0
  %t248 = icmp eq i64 %t247, 4
  br i1 %t248, label %bb76, label %bb77
bb76:
  %t250 = getelementptr { i64, [21 x i64] }, ptr %l23, i32 0, i32 1
  %t251 = getelementptr { %"compiler/source:Span", i32 }, ptr %t250, i32 0, i32 1
  %t252 = load i32, ptr %t251
  store i32 %t252, ptr %l24, !tbaa !23
  br label %bb78
bb77:
  br label %bb79
bb78:
  %t254 = load i32, ptr %l24, !tbaa !23
  %t256 = sext i32 %t254 to i64
  %t257 = load i64, ptr %l15, !tbaa !24
  %t260 = icmp eq i64 %t256, %t257
  store i1 %t260, ptr %l148, !tbaa !21
  br label %bb84
bb79:
  br i1 true, label %bb80, label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb83
bb82:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb84
bb83:
  call void @__olang_check_failed(ptr @olang_loc_6846df2bf697eaeb_3c0ad43c6c9a3c0f)
  unreachable
bb84:
  %t262 = load i1, ptr %l148, !tbaa !21
  store i1 %t262, ptr %l25, !tbaa !21
  %t263 = load i1, ptr %l22, !tbaa !21
  br i1 %t263, label %bb85, label %bb86
bb85:
  %t265 = load i1, ptr %l25, !tbaa !21
  store i1 %t265, ptr %l157, !tbaa !21
  br label %bb87
bb86:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb87
bb87:
  %t267 = load i1, ptr %l157, !tbaa !21
  br i1 %t267, label %bb88, label %bb89
bb88:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/emit:fnEm", ptr %t268, i32 0, i32 24
  %t271 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t270, i64 %t271, i1 true)
  br label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t274 = load i64, ptr %l13, !tbaa !24
  %t276 = add i64 %t274, 1
  store i64 %t276, ptr %l13, !tbaa !24
  br label %bb20
bb93:
  br label %bb94
bb94:
  %t278 = load i64, ptr %l5, !tbaa !24
  %t280 = add i64 %t278, 1
  store i64 %t280, ptr %l5, !tbaa !24
  br label %bb8
bb95:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l20 = alloca i32
  %l24 = alloca ptr
  %l27 = alloca i1
  %l31 = alloca i32
  %l36 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l50 = alloca i32
  %l53 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l60 = alloca i32
  %l61 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca { i64, ptr }
  %l84 = alloca i64
  %l87 = alloca i64
  %l108 = alloca ptr
  %l112 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca ptr
  %l117 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l132 = alloca i1
  %l133 = alloca i1
  %l137 = alloca i1
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a2)
  store i32 %t13, ptr %l20
  br label %bb1
bb1:
  %t14 = load i32, ptr %l20, !tbaa !23
  store i32 %t14, ptr %l6, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/emit:fnEm", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/emit:Emitter", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t21)
  store ptr %t23, ptr %l24
  br label %bb2
bb2:
  %t24 = load ptr, ptr %l5, !tbaa !29
  %t25 = load i32, ptr %l6, !tbaa !23
  %t26 = load ptr, ptr %l24, !tbaa !29
  %t29 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v0, ptr %t26, ptr %t24, i32 %t25)
  store i1 %t29, ptr %l27
  br label %bb3
bb3:
  %t30 = load i1, ptr %l27, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l5, !tbaa !29
  %t34 = load i32, ptr %l6, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l31
  br label %bb7
bb7:
  %t38 = load i32, ptr %l31, !range !{i32 0, i32 33}
  store i32 %t38, ptr %l7
  %t39 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t41 = trunc i64 20 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/emit:fnEm", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s2, ptr %t47, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d236, i32 0, i32 1) })
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l36, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t54 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s2, ptr %v1, ptr %s2, ptr %s2, ptr %t50, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d237, i32 0, i32 1) }, { i64, ptr } %t51, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store { i64, ptr } %t54, ptr %l39
  br label %bb11
bb11:
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t56 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d238, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d238, i32 0, i32 1) }, 0
  %t58 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d239, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d239, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t66 = extractvalue { i64, ptr } %t55, 1
  %t67 = extractvalue { i64, ptr } %t55, 0
  %t68 = add i64 %t64, %t67
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d240, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d240, i32 0, i32 1) }, 0
  %t71 = add i64 %t68, %t70
  %t72 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t71)
  call void @olang_textcopy(ptr %t72, ptr %t56, i64 %t57)
  %t73 = getelementptr i8, ptr %t72, i64 %t57
  call void @olang_textcopy(ptr %t73, ptr %t59, i64 %t60)
  %t74 = getelementptr i8, ptr %t73, i64 %t60
  call void @olang_textcopy(ptr %t74, ptr %t62, i64 %t63)
  %t75 = getelementptr i8, ptr %t74, i64 %t63
  call void @olang_textcopy(ptr %t75, ptr %t66, i64 %t67)
  %t76 = getelementptr i8, ptr %t75, i64 %t67
  call void @olang_textcopy(ptr %t76, ptr %t69, i64 %t70)
  %t77 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t72, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = extractvalue { i64, ptr } %t78, 1
  %t82 = mul i64 %t80, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t82)
  call void @llvm.memcpy.p0.p0.i64(ptr %t83, ptr %t81, i64 %t82, i1 false)
  %t84 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  %t86 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s2, ptr %t86, { i64, ptr } %t85)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb13:
  %t88 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t90 = trunc i64 19 to i32
  %t91 = icmp eq i32 %t88, %t90
  br i1 %t91, label %bb14, label %bb15
bb14:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i32, ptr %l6, !tbaa !23
  %t97 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t93, i32 %t94)
  store i1 %t97, ptr %l47
  br label %bb16
bb15:
  br label %bb28
bb16:
  %t98 = load i1, ptr %l47, !tbaa !21
  br i1 %t98, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l48, !tbaa !29
  %t100 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t100, ptr %l49, !tbaa !27
  %t101 = load i32, ptr %l6, !tbaa !23
  store i32 %t101, ptr %l50, !tbaa !23
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l6, !tbaa !23
  %t106 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t102, i32 %t103)
  store i64 %t106, ptr %l53
  br label %bb19
bb18:
  br i1 %a4, label %bb21, label %bb22
bb19:
  %t109 = load i64, ptr %l53, !tbaa !24
  %t110 = call i64 @__olang_fmt_i64(ptr null, i64 %t109)
  %t111 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t110)
  %t112 = call i64 @__olang_fmt_i64(ptr %t111, i64 %t109)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t111, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = extractvalue { i64, ptr } %t114, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t123 = load ptr, ptr %l48, !tbaa !29
  %t124 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t125 = load i32, ptr %l50, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersEach(ptr %v0, ptr %v1, ptr %s5, ptr %v2, ptr %t123, { i64, ptr } %t124, i32 %t125, { i64, ptr } %t121, { i64, ptr } %t122)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb27
bb21:
  store %olang.scope zeroinitializer, ptr %s8
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l58, !tbaa !29
  %t129 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t129, ptr %l59, !tbaa !27
  %t130 = load i32, ptr %l6, !tbaa !23
  store i32 %t130, ptr %l60, !tbaa !23
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l61, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t134 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t137 = extractvalue { i64, ptr } %t133, 1
  %t138 = extractvalue { i64, ptr } %t133, 0
  %t139 = add i64 %t135, %t138
  %t140 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t143 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t134, i64 %t135)
  %t144 = getelementptr i8, ptr %t143, i64 %t135
  call void @olang_textcopy(ptr %t144, ptr %t137, i64 %t138)
  %t145 = getelementptr i8, ptr %t144, i64 %t138
  call void @olang_textcopy(ptr %t145, ptr %t140, i64 %t141)
  %t146 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t143, 1
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t150 = extractvalue { i64, ptr } %t147, 1
  %t151 = mul i64 %t149, 1
  %t152 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t151)
  call void @llvm.memcpy.p0.p0.i64(ptr %t152, ptr %t150, i64 %t151, i1 false)
  %t153 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  %t157 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s8, ptr %s8, ptr %t132, { i64, ptr } %t154)
  store { i64, ptr } %t157, ptr %l66
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t158 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  %t160 = extractvalue { i64, ptr } %t158, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  %t165 = load ptr, ptr %l61, !tbaa !29
  %t167 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s8, ptr %s8, ptr %s8, ptr %s8, ptr %t165, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d243, i32 0, i32 1) }, { i64, ptr } %t164, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store { i64, ptr } %t167, ptr %l68
  br label %bb24
bb24:
  %t168 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t176 = load ptr, ptr %l58, !tbaa !29
  %t177 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t178 = load i32, ptr %l60, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersEach(ptr %v0, ptr %v1, ptr %s8, ptr %v2, ptr %t176, { i64, ptr } %t177, i32 %t178, { i64, ptr } %t174, { i64, ptr } %t175)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s8)
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %ret
bb28:
  %t181 = load ptr, ptr %l5, !tbaa !29
  %t182 = load i32, ptr %l6, !tbaa !23
  %t185 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t181, i32 %t182)
  store i1 %t185, ptr %l73
  br label %bb29
bb29:
  %t186 = load i1, ptr %l73, !tbaa !21
  br i1 %t186, label %bb30, label %bb31
bb30:
  %t187 = load ptr, ptr %l5, !tbaa !29
  store ptr %t187, ptr %l74, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l6, !tbaa !23
  %t192 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l77
  br label %bb32
bb31:
  br label %bb54
bb32:
  %t193 = load ptr, ptr %l74, !tbaa !29
  %t194 = load i32, ptr %l77, !tbaa !23
  %t195 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t193, i32 %t194)
  store { i64, ptr } %t195, ptr %l78
  br label %bb33
bb33:
  %t196 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t196, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t197 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t197, 0
  store i64 %t199, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t201 = load i64, ptr %l10, !tbaa !24
  %t202 = load i64, ptr %l9, !tbaa !24
  %t205 = icmp sgt i64 %t201, %t202
  br i1 %t205, label %bb34, label %bb35
bb34:
  %t207 = load i64, ptr %l11, !tbaa !24
  %t209 = icmp sgt i64 %t207, 0
  br i1 %t209, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb39
bb36:
  %t211 = load i64, ptr %l10, !tbaa !24
  %t212 = load i64, ptr %l9, !tbaa !24
  %t215 = sub i64 %t211, %t212
  %t216 = load i64, ptr %l11, !tbaa !24
  %t219 = add i64 %t215, %t216
  %t221 = sub i64 %t219, 1
  %t222 = load i64, ptr %l11, !tbaa !24
  %t225 = sdiv i64 %t221, %t222
  store i64 %t225, ptr %l87, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb38
bb38:
  %t227 = load i64, ptr %l87, !tbaa !24
  store i64 %t227, ptr %l84, !tbaa !24
  br label %bb39
bb39:
  %t228 = load i64, ptr %l84, !tbaa !24
  store i64 %t228, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s12
  %t229 = load i64, ptr %l13, !tbaa !24
  %t230 = load i64, ptr %l12, !tbaa !24
  %t233 = icmp slt i64 %t229, %t230
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s12)
  br label %bb53
bb42:
  br label %bb43
bb43:
  %t237 = load i64, ptr %l9, !tbaa !24
  %t238 = load i64, ptr %l13, !tbaa !24
  %t239 = load i64, ptr %l11, !tbaa !24
  %t242 = mul i64 %t238, %t239
  %t245 = add i64 %t237, %t242
  store i64 %t245, ptr %l14, !tbaa !24
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/emit:fnEm", ptr %t247, i32 0, i32 0
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t252 = getelementptr %"compiler/emit:Emitter", ptr %t250, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t255 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t253)
  store ptr %t255, ptr %l108
  br label %bb44
bb44:
  %t256 = load ptr, ptr %l5, !tbaa !29
  %t257 = load i32, ptr %l6, !tbaa !23
  %t258 = load i64, ptr %l14, !tbaa !24
  %t259 = load ptr, ptr %l108, !tbaa !29
  %t263 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v0, ptr %t259, ptr %t256, i32 %t257, i64 %t258)
  store i1 %t263, ptr %l112
  br label %bb45
bb45:
  %t264 = load i1, ptr %l112, !tbaa !21
  br i1 %t264, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s12)
  br label %bb52
bb47:
  br label %bb48
bb48:
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l113, !tbaa !29
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l114, !tbaa !29
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l6, !tbaa !23
  %t271 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s12, ptr %t267, i32 %t268)
  store { i64, ptr } %t271, ptr %l117
  br label %bb49
bb49:
  %t272 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t273 = load i64, ptr %l14, !tbaa !24
  %t274 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
  %t276 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t276, 1
  %t278 = extractvalue { i64, ptr } %t276, 0
  %t279 = add i64 %t275, %t278
  %t280 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
  %t282 = add i64 %t279, %t281
  %t284 = extractvalue { i64, ptr } %t272, 1
  %t285 = extractvalue { i64, ptr } %t272, 0
  %t286 = add i64 %t282, %t285
  %t287 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t288 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t289 = add i64 %t286, %t288
  %t291 = call i64 @__olang_fmt_i64(ptr null, i64 %t273)
  %t292 = add i64 %t289, %t291
  %t293 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t292)
  call void @olang_textcopy(ptr %t293, ptr %t274, i64 %t275)
  %t294 = getelementptr i8, ptr %t293, i64 %t275
  call void @olang_textcopy(ptr %t294, ptr %t277, i64 %t278)
  %t295 = getelementptr i8, ptr %t294, i64 %t278
  call void @olang_textcopy(ptr %t295, ptr %t280, i64 %t281)
  %t296 = getelementptr i8, ptr %t295, i64 %t281
  call void @olang_textcopy(ptr %t296, ptr %t284, i64 %t285)
  %t297 = getelementptr i8, ptr %t296, i64 %t285
  call void @olang_textcopy(ptr %t297, ptr %t287, i64 %t288)
  %t298 = getelementptr i8, ptr %t297, i64 %t288
  %t299 = call i64 @__olang_fmt_i64(ptr %t298, i64 %t273)
  %t300 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t301 = insertvalue { i64, ptr } %t300, ptr %t293, 1
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t304 = extractvalue { i64, ptr } %t301, 1
  %t305 = mul i64 %t303, 1
  %t306 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t305)
  call void @llvm.memcpy.p0.p0.i64(ptr %t306, ptr %t304, i64 %t305, i1 false)
  %t307 = insertvalue { i64, ptr } undef, i64 %t303, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t306, 1
  %t309 = load ptr, ptr %l114, !tbaa !29
  %t311 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s12, ptr %s12, ptr %t309, { i64, ptr } %t308)
  store { i64, ptr } %t311, ptr %l122
  br label %bb50
bb50:
  %t312 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 0
  %t314 = extractvalue { i64, ptr } %t312, 1
  %t315 = mul i64 %t313, 1
  %t316 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t315)
  call void @llvm.memcpy.p0.p0.i64(ptr %t316, ptr %t314, i64 %t315, i1 false)
  %t317 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  %t319 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t319, ptr %l124, !tbaa !27
  %t320 = load i64, ptr %l14, !tbaa !24
  %t322 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr i32, ptr %t323, i64 %t320
  %t325 = load i32, ptr %t324, !tbaa !33
  %t326 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t327 = load ptr, ptr %l113, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersAt(ptr %v0, ptr %s12, ptr %v2, ptr %t327, { i64, ptr } %t318, i32 %t325, { i64, ptr } %t326, i1 false)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s12)
  br label %bb52
bb52:
  %t331 = load i64, ptr %l13, !tbaa !24
  %t333 = add i64 %t331, 1
  store i64 %t333, ptr %l13, !tbaa !24
  br label %bb40
bb53:
  br label %ret
bb54:
  %t335 = load ptr, ptr %l5, !tbaa !29
  %t336 = load i32, ptr %l6, !tbaa !23
  %t339 = call i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %t335, i32 %t336)
  store i1 %t339, ptr %l132
  br label %bb55
bb55:
  %t340 = load i1, ptr %l132, !tbaa !21
  br i1 %t340, label %bb56, label %bb57
bb56:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/emit:fnEm", ptr %t341, i32 0, i32 0
  %t344 = load ptr, ptr %t343, !tbaa !29
  %t345 = load i32, ptr %l6, !tbaa !23
  %t348 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %t344, i32 %t345)
  store i1 %t348, ptr %l137
  br label %bb58
bb57:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb59
bb58:
  %t349 = load i1, ptr %l137, !tbaa !21
  store i1 %t349, ptr %l133, !tbaa !21
  br label %bb59
bb59:
  %t350 = load i1, ptr %l133, !tbaa !21
  br i1 %t350, label %bb60, label %bb61
bb60:
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t353 = load i32, ptr %l6, !tbaa !23
  %t354 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersCases(ptr %v0, ptr %v1, ptr %v2, ptr %t351, { i64, ptr } %t352, i32 %t353, { i64, ptr } %t354)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersEach(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { { i64, ptr }, i32 }
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l65 = alloca { { i64, ptr }, i32 }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d247, i32 0, i32 1) })
  store { i64, ptr } %t3, ptr %l16
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d248, i32 0, i32 1) })
  store { i64, ptr } %t7, ptr %l18
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t8, ptr %l6, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d249, i32 0, i32 1) })
  store { i64, ptr } %t11, ptr %l20
  br label %bb3
bb3:
  %t12 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t12, ptr %l7, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t13, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d250, i32 0, i32 1) })
  store { i64, ptr } %t15, ptr %l22
  br label %bb4
bb4:
  %t16 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t16, ptr %l8, !tbaa !27
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t17, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d251, i32 0, i32 1) })
  store { i64, ptr } %t19, ptr %l24
  br label %bb5
bb5:
  %t20 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t20, ptr %l9, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
  %t26 = extractvalue { i64, ptr } %t22, 1
  %t27 = extractvalue { i64, ptr } %t22, 0
  %t28 = add i64 %t24, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t23, i64 %t24)
  %t30 = getelementptr i8, ptr %t29, i64 %t24
  call void @olang_textcopy(ptr %t30, ptr %t26, i64 %t27)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = extractvalue { i64, ptr } %t32, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t21, { i64, ptr } %t39)
  br label %bb6
bb6:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t42, { i64, ptr } %t43)
  br label %bb7
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t48 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t51 = extractvalue { i64, ptr } %t47, 1
  %t52 = extractvalue { i64, ptr } %t47, 0
  %t53 = add i64 %t49, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t48, i64 %t49)
  %t55 = getelementptr i8, ptr %t54, i64 %t49
  call void @olang_textcopy(ptr %t55, ptr %t51, i64 %t52)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = extractvalue { i64, ptr } %t57, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t46, { i64, ptr } %t64)
  br label %bb8
bb8:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t67, { i64, ptr } %t68)
  br label %bb9
bb9:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %s0, ptr %t71)
  store { i64, ptr } %t73, ptr %l38
  br label %bb10
bb10:
  %t74 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t74, ptr %l10, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %s0, ptr %t75)
  store { i64, ptr } %t77, ptr %l40
  br label %bb11
bb11:
  %t78 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t78, ptr %l11, !tbaa !27
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t80, 1
  %t86 = extractvalue { i64, ptr } %t80, 0
  %t87 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t91 = extractvalue { i64, ptr } %t81, 1
  %t92 = extractvalue { i64, ptr } %t81, 0
  %t93 = add i64 %t89, %t92
  %t94 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d255, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d255, i32 0, i32 1) }, 0
  %t96 = add i64 %t93, %t95
  %t98 = extractvalue { i64, ptr } %t82, 1
  %t99 = extractvalue { i64, ptr } %t82, 0
  %t100 = add i64 %t96, %t99
  %t101 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t103 = add i64 %t100, %t102
  %t105 = extractvalue { i64, ptr } %t83, 1
  %t106 = extractvalue { i64, ptr } %t83, 0
  %t107 = add i64 %t103, %t106
  %t108 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t109 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t110 = add i64 %t107, %t109
  %t111 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t110)
  call void @olang_textcopy(ptr %t111, ptr %t85, i64 %t86)
  %t112 = getelementptr i8, ptr %t111, i64 %t86
  call void @olang_textcopy(ptr %t112, ptr %t87, i64 %t88)
  %t113 = getelementptr i8, ptr %t112, i64 %t88
  call void @olang_textcopy(ptr %t113, ptr %t91, i64 %t92)
  %t114 = getelementptr i8, ptr %t113, i64 %t92
  call void @olang_textcopy(ptr %t114, ptr %t94, i64 %t95)
  %t115 = getelementptr i8, ptr %t114, i64 %t95
  call void @olang_textcopy(ptr %t115, ptr %t98, i64 %t99)
  %t116 = getelementptr i8, ptr %t115, i64 %t99
  call void @olang_textcopy(ptr %t116, ptr %t101, i64 %t102)
  %t117 = getelementptr i8, ptr %t116, i64 %t102
  call void @olang_textcopy(ptr %t117, ptr %t105, i64 %t106)
  %t118 = getelementptr i8, ptr %t117, i64 %t106
  call void @olang_textcopy(ptr %t118, ptr %t108, i64 %t109)
  %t119 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t111, 1
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = extractvalue { i64, ptr } %t120, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t79, { i64, ptr } %t127)
  br label %bb12
bb12:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l48, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t134 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d258, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d258, i32 0, i32 1) }, 0
  %t137 = extractvalue { i64, ptr } %t132, 1
  %t138 = extractvalue { i64, ptr } %t132, 0
  %t139 = add i64 %t135, %t138
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d259, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d259, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t144 = extractvalue { i64, ptr } %a3, 1
  %t145 = extractvalue { i64, ptr } %a3, 0
  %t146 = add i64 %t142, %t145
  %t147 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t146)
  call void @olang_textcopy(ptr %t147, ptr %t134, i64 %t135)
  %t148 = getelementptr i8, ptr %t147, i64 %t135
  call void @olang_textcopy(ptr %t148, ptr %t137, i64 %t138)
  %t149 = getelementptr i8, ptr %t148, i64 %t138
  call void @olang_textcopy(ptr %t149, ptr %t140, i64 %t141)
  %t150 = getelementptr i8, ptr %t149, i64 %t141
  call void @olang_textcopy(ptr %t150, ptr %t144, i64 %t145)
  %t151 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t147, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = extractvalue { i64, ptr } %t152, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t162 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t131, { i64, ptr } %t159)
  store { i64, ptr } %t162, ptr %l54
  br label %bb13
bb13:
  %t163 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t164 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t165 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
  %t167 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = add i64 %t166, %t169
  %t171 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t175 = extractvalue { i64, ptr } %t163, 1
  %t176 = extractvalue { i64, ptr } %t163, 0
  %t177 = add i64 %t173, %t176
  %t178 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t180 = add i64 %t177, %t179
  %t182 = extractvalue { i64, ptr } %t164, 1
  %t183 = extractvalue { i64, ptr } %t164, 0
  %t184 = add i64 %t180, %t183
  %t185 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t184)
  call void @olang_textcopy(ptr %t185, ptr %t165, i64 %t166)
  %t186 = getelementptr i8, ptr %t185, i64 %t166
  call void @olang_textcopy(ptr %t186, ptr %t168, i64 %t169)
  %t187 = getelementptr i8, ptr %t186, i64 %t169
  call void @olang_textcopy(ptr %t187, ptr %t171, i64 %t172)
  %t188 = getelementptr i8, ptr %t187, i64 %t172
  call void @olang_textcopy(ptr %t188, ptr %t175, i64 %t176)
  %t189 = getelementptr i8, ptr %t188, i64 %t176
  call void @olang_textcopy(ptr %t189, ptr %t178, i64 %t179)
  %t190 = getelementptr i8, ptr %t189, i64 %t179
  call void @olang_textcopy(ptr %t190, ptr %t182, i64 %t183)
  %t191 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t185, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = extractvalue { i64, ptr } %t192, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load ptr, ptr %l48, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t200, { i64, ptr } %t199)
  br label %bb14
bb14:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t202, { i64, ptr } %t203)
  br label %bb15
bb15:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t209 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t214 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eelemAt(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %t206, { i64, ptr } %a1, i32 %a2, { i64, ptr } %t209, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d262, i32 0, i32 1) })
  store { { i64, ptr }, i32 } %t214, ptr %l65
  br label %bb16
bb16:
  %t215 = load { { i64, ptr }, i32 }, ptr %l65
  store { { i64, ptr }, i32 } %t215, ptr %l12
  %t216 = getelementptr { { i64, ptr }, i32 }, ptr %l12, i32 0, i32 0
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !27
  %t219 = getelementptr { { i64, ptr }, i32 }, ptr %l12, i32 0, i32 1
  %t220 = load i32, ptr %t219, !tbaa !23
  %t222 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersAt(ptr %v0, ptr %s0, ptr %v3, ptr %t222, { i64, ptr } %t217, i32 %t220, { i64, ptr } %a4, i1 false)
  br label %bb17
bb17:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t232 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t235 = extractvalue { i64, ptr } %t231, 1
  %t236 = extractvalue { i64, ptr } %t231, 0
  %t237 = add i64 %t233, %t236
  %t238 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t237)
  call void @olang_textcopy(ptr %t238, ptr %t232, i64 %t233)
  %t239 = getelementptr i8, ptr %t238, i64 %t233
  call void @olang_textcopy(ptr %t239, ptr %t235, i64 %t236)
  %t240 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t238, 1
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t244 = extractvalue { i64, ptr } %t241, 1
  %t245 = mul i64 %t243, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t245)
  call void @llvm.memcpy.p0.p0.i64(ptr %t246, ptr %t244, i64 %t245, i1 false)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t230, { i64, ptr } %t248)
  br label %bb18
bb18:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t251, { i64, ptr } %t252)
  br label %bb19
bb19:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t257 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t256, 1
  %t260 = extractvalue { i64, ptr } %t256, 0
  %t261 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d264, i32 0, i32 1) }, 1
  %t262 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d264, i32 0, i32 1) }, 0
  %t263 = add i64 %t260, %t262
  %t265 = extractvalue { i64, ptr } %t257, 1
  %t266 = extractvalue { i64, ptr } %t257, 0
  %t267 = add i64 %t263, %t266
  %t268 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t269 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t270 = add i64 %t267, %t269
  %t271 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t270)
  call void @olang_textcopy(ptr %t271, ptr %t259, i64 %t260)
  %t272 = getelementptr i8, ptr %t271, i64 %t260
  call void @olang_textcopy(ptr %t272, ptr %t261, i64 %t262)
  %t273 = getelementptr i8, ptr %t272, i64 %t262
  call void @olang_textcopy(ptr %t273, ptr %t265, i64 %t266)
  %t274 = getelementptr i8, ptr %t273, i64 %t266
  call void @olang_textcopy(ptr %t274, ptr %t268, i64 %t269)
  %t275 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t271, 1
  %t278 = extractvalue { i64, ptr } %t276, 0
  %t279 = extractvalue { i64, ptr } %t276, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t255, { i64, ptr } %t283)
  br label %bb20
bb20:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t288 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t289 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
  %t291 = extractvalue { i64, ptr } %t287, 1
  %t292 = extractvalue { i64, ptr } %t287, 0
  %t293 = add i64 %t289, %t292
  %t294 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t293)
  call void @olang_textcopy(ptr %t294, ptr %t288, i64 %t289)
  %t295 = getelementptr i8, ptr %t294, i64 %t289
  call void @olang_textcopy(ptr %t295, ptr %t291, i64 %t292)
  %t296 = insertvalue { i64, ptr } undef, i64 %t293, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t294, 1
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t300 = extractvalue { i64, ptr } %t297, 1
  %t301 = mul i64 %t299, 1
  %t302 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t301)
  call void @llvm.memcpy.p0.p0.i64(ptr %t302, ptr %t300, i64 %t301, i1 false)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t286, { i64, ptr } %t304)
  br label %bb21
bb21:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t307, { i64, ptr } %t308)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocated(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i32
  %l33 = alloca i1
  %l40 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i32
  %l55 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i32
  %l61 = alloca { i64, ptr }
  %l66 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca i64
  %l73 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
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
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/emit:fnEm", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 2
  %t13 = load i64, ptr %t12, !tbaa !24
  %t18 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewhere(ptr %v0, ptr %s0, ptr %t6, i64 %t13, %"compiler/source:Span" %a1)
  store { i64, ptr } %t18, ptr %l17
  br label %bb1
bb1:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t24 = extractvalue { i64, ptr } %t19, 1
  %t25 = extractvalue { i64, ptr } %t19, 0
  %t26 = add i64 %t22, %t25
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t21, i64 %t22)
  %t28 = getelementptr i8, ptr %t27, i64 %t22
  call void @olang_textcopy(ptr %t28, ptr %t24, i64 %t25)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  store { i64, ptr } %t30, ptr %l4, !tbaa !27
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = getelementptr %"compiler/emit:Emitter", ptr %t32, i32 0, i32 76
  %t35 = load i1, ptr %t34, !tbaa !21
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb2, label %bb3
bb2:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t43 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s0, ptr %v2, ptr %t39, { i64, ptr } %t40)
  store { i64, ptr } %t43, ptr %l25
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
bb5:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/emit:fnEm", ptr %t45, i32 0, i32 17
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t51 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %s0, ptr %v0, ptr %t47, { i64, ptr } %t48)
  %t52 = extractvalue { i32, { i64, ptr } } %t51, 1
  %t53 = extractvalue { i32, { i64, ptr } } %t51, 0
  store i32 %t53, ptr %l31
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb7, label %ok.55, !prof !99
ok.55:
  store { i64, ptr } %t52, ptr %l30
  br label %bb6
bb6:
  %t56 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t56, ptr %l26, !tbaa !27
  br label %bb9
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d267, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb9
bb9:
  %t57 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t57, ptr %l5, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t60 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t58, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d268, i32 0, i32 1) })
  store i1 %t60, ptr %l33
  br label %bb10
bb10:
  %t61 = load i1, ptr %l33, !tbaa !21
  %t62 = xor i1 %t61, true
  br i1 %t62, label %bb11, label %bb12
bb11:
  %t64 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 1
  %t67 = extractvalue { i64, ptr } %t64, 0
  %t68 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t66, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t70, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t72 = load ptr, ptr %l3, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/emit:fnEm", ptr %t73, i32 0, i32 2
  %t76 = load { i64, [2 x i64] }, ptr %t75
  %t79 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2elocBase(ptr %v0, ptr %s0, ptr %t72, { i64, [2 x i64] } %t76)
  store { i64, ptr } %t79, ptr %l40
  br label %bb14
bb14:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/emit:fnEm", ptr %t80, i32 0, i32 16
  %t83 = load i64, ptr %t82, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d269, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d269, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t92 = call i64 @__olang_fmt_i64(ptr null, i64 %t83)
  %t93 = add i64 %t90, %t92
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d269, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d269, i32 0, i32 1) }, 0
  %t96 = add i64 %t93, %t95
  %t98 = extractvalue { i64, ptr } %t84, 1
  %t99 = extractvalue { i64, ptr } %t84, 0
  %t100 = add i64 %t96, %t99
  %t101 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t100)
  call void @olang_textcopy(ptr %t101, ptr %t86, i64 %t87)
  %t102 = getelementptr i8, ptr %t101, i64 %t87
  call void @olang_textcopy(ptr %t102, ptr %t88, i64 %t89)
  %t103 = getelementptr i8, ptr %t102, i64 %t89
  %t104 = call i64 @__olang_fmt_i64(ptr %t103, i64 %t83)
  %t105 = getelementptr i8, ptr %t103, i64 %t92
  call void @olang_textcopy(ptr %t105, ptr %t94, i64 %t95)
  %t106 = getelementptr i8, ptr %t105, i64 %t95
  call void @olang_textcopy(ptr %t106, ptr %t98, i64 %t99)
  %t107 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t101, 1
  store { i64, ptr } %t108, ptr %l6, !tbaa !27
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l45, !tbaa !29
  %t111 = load ptr, ptr %l45, !tbaa !29
  %t112 = getelementptr %"compiler/emit:fnEm", ptr %t111, i32 0, i32 16
  %t113 = load i64, ptr %t112, !tbaa !24
  %t115 = add i64 %t113, 1
  %t117 = load ptr, ptr %l45, !tbaa !29
  %t118 = getelementptr %"compiler/emit:fnEm", ptr %t117, i32 0, i32 16
  store i64 %t115, ptr %t118, !tbaa !24
  %t119 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t123 = extractvalue { i64, ptr } %t119, 1
  %t124 = extractvalue { i64, ptr } %t119, 0
  %t125 = add i64 %t121, %t124
  %t126 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t125)
  call void @olang_textcopy(ptr %t126, ptr %t120, i64 %t121)
  %t127 = getelementptr i8, ptr %t126, i64 %t121
  call void @olang_textcopy(ptr %t127, ptr %t123, i64 %t124)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t126, 1
  store { i64, ptr } %t129, ptr %l7, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t133 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %s0, { i64, ptr } %t131)
  store i64 %t133, ptr %l51
  br label %bb15
bb15:
  %t134 = load i64, ptr %l51, !tbaa !24
  store i64 %t134, ptr %l52, !tbaa !65
  %t135 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 16)
  %t136 = extractvalue { i32, i64 } %t135, 1
  %t137 = extractvalue { i32, i64 } %t135, 0
  store i32 %t137, ptr %l54
  %t138 = icmp ne i32 %t137, 0
  br i1 %t138, label %bb17, label %ok.139, !prof !99
ok.139:
  store i64 %t136, ptr %l53
  br label %bb16
bb16:
  %t140 = load i64, ptr %l52, !tbaa !65
  %t141 = load i64, ptr %l53, !tbaa !24
  %t142 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s0, i64 %t140, i64 %t141)
  store { i64, ptr } %t142, ptr %l55
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_6a1c0f36bb2af484_15693b919ea68168)
  unreachable
bb18:
  %t143 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t145 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %s0, { i64, ptr } %t143)
  store i64 %t145, ptr %l57
  br label %bb19
bb19:
  %t146 = load i64, ptr %l57, !tbaa !24
  store i64 %t146, ptr %l58, !tbaa !65
  %t147 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 16)
  %t148 = extractvalue { i32, i64 } %t147, 1
  %t149 = extractvalue { i32, i64 } %t147, 0
  store i32 %t149, ptr %l60
  %t150 = icmp ne i32 %t149, 0
  br i1 %t150, label %bb21, label %ok.151, !prof !99
ok.151:
  store i64 %t148, ptr %l59
  br label %bb20
bb20:
  %t152 = load i64, ptr %l58, !tbaa !65
  %t153 = load i64, ptr %l59, !tbaa !24
  %t154 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s0, i64 %t152, i64 %t153)
  store { i64, ptr } %t154, ptr %l61
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_6a1c0f36bb2af484_15693b919ea68168)
  unreachable
bb22:
  %t155 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t157 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = add i64 %t156, %t159
  %t161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 0
  %t163 = add i64 %t160, %t162
  %t164 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t167 = add i64 %t163, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t155, i64 %t156)
  %t169 = getelementptr i8, ptr %t168, i64 %t156
  call void @olang_textcopy(ptr %t169, ptr %t158, i64 %t159)
  %t170 = getelementptr i8, ptr %t169, i64 %t159
  call void @olang_textcopy(ptr %t170, ptr %t161, i64 %t162)
  %t171 = getelementptr i8, ptr %t170, i64 %t162
  call void @olang_textcopy(ptr %t171, ptr %t165, i64 %t166)
  %t172 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t168, 1
  store { i64, ptr } %t173, ptr %l8, !tbaa !27
  %t175 = load ptr, ptr %l3, !tbaa !29
  %t177 = getelementptr %"compiler/emit:Emitter", ptr %t175, i32 0, i32 22
  %t178 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t181 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %s0, ptr %t177, { i64, ptr } %t178)
  store i1 %t181, ptr %l66
  br label %bb23
bb23:
  %t182 = load i1, ptr %l66, !tbaa !21
  %t183 = xor i1 %t182, true
  br i1 %t183, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s8
  %t185 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t185, ptr %l68, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l71, !tbaa !24
  %t191 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t193 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s0, ptr %s8, { i64, ptr } %t191)
  store { i64, ptr } %t193, ptr %l73
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d273, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d273, i32 0, i32 1) }, 0
  %t196 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 1
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t199 = add i64 %t195, %t198
  %t200 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t201 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
  %t202 = add i64 %t199, %t201
  %t203 = load i64, ptr %l71, !tbaa !24
  %t204 = call i64 @__olang_fmt_i64(ptr null, i64 %t203)
  %t205 = add i64 %t202, %t204
  %t206 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d275, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d275, i32 0, i32 1) }, 0
  %t208 = add i64 %t205, %t207
  %t209 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 1
  %t211 = extractvalue { i64, ptr } %t209, 0
  %t212 = add i64 %t208, %t211
  %t213 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d276, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d276, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t216 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t215)
  call void @olang_textcopy(ptr %t216, ptr %t194, i64 %t195)
  %t217 = getelementptr i8, ptr %t216, i64 %t195
  call void @olang_textcopy(ptr %t217, ptr %t197, i64 %t198)
  %t218 = getelementptr i8, ptr %t217, i64 %t198
  call void @olang_textcopy(ptr %t218, ptr %t200, i64 %t201)
  %t219 = getelementptr i8, ptr %t218, i64 %t201
  %t220 = call i64 @__olang_fmt_i64(ptr %t219, i64 %t203)
  %t221 = getelementptr i8, ptr %t219, i64 %t204
  call void @olang_textcopy(ptr %t221, ptr %t206, i64 %t207)
  %t222 = getelementptr i8, ptr %t221, i64 %t207
  call void @olang_textcopy(ptr %t222, ptr %t210, i64 %t211)
  %t223 = getelementptr i8, ptr %t222, i64 %t211
  call void @olang_textcopy(ptr %t223, ptr %t213, i64 %t214)
  %t224 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t216, 1
  %t227 = load ptr, ptr %l3, !tbaa !29
  %t228 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t229 = load i64, ptr @G_2ecompiler_2femit_2eHomeLoc, !tbaa !24
  %t231 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t232 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d277, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d277, i32 0, i32 1) }, 0
  %t235 = extractvalue { i64, ptr } %t231, 1
  %t236 = extractvalue { i64, ptr } %t231, 0
  %t237 = add i64 %t233, %t236
  %t238 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t239 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
  %t240 = add i64 %t237, %t239
  %t241 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t240)
  call void @olang_textcopy(ptr %t241, ptr %t232, i64 %t233)
  %t242 = getelementptr i8, ptr %t241, i64 %t233
  call void @olang_textcopy(ptr %t242, ptr %t235, i64 %t236)
  %t243 = getelementptr i8, ptr %t242, i64 %t236
  call void @olang_textcopy(ptr %t243, ptr %t238, i64 %t239)
  %t244 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t245 = insertvalue { i64, ptr } %t244, ptr %t241, 1
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t248 = extractvalue { i64, ptr } %t245, 1
  %t249 = mul i64 %t247, 1
  %t250 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t249)
  call void @llvm.memcpy.p0.p0.i64(ptr %t250, ptr %t248, i64 %t249, i1 false)
  %t251 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t250, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s8, ptr %s8, ptr %t227, { i64, ptr } %t228, i64 %t229, { i64, ptr } %t225, { i64, ptr } %t252)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s8)
  br label %bb28
bb28:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/emit:fnEm", ptr %t258, i32 0, i32 17
  store ptr %t260, ptr %l83, !tbaa !29
  %t261 = ptrtoint ptr %v0 to i64
  store i64 %t261, ptr %l84, !tbaa !24
  %t262 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t262, label %bb29, label %bb30
bb29:
  %t264 = call ptr @__olang_region_make(ptr %v0)
  %t265 = ptrtoint ptr %t264 to i64
  store i64 %t265, ptr %l84, !tbaa !24
  br label %bb30
bb30:
  %t266 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t266, 1
  %t269 = extractvalue { i64, ptr } %t266, 0
  %t270 = load i64, ptr %l84
  %t271 = inttoptr i64 %t270 to ptr
  %t272 = call ptr @__olang_scope_alloc(ptr %t271, i64 %t269)
  call void @olang_textcopy(ptr %t272, ptr %t268, i64 %t269)
  %t273 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t272, 1
  %t276 = load i64, ptr %l84
  %t277 = inttoptr i64 %t276 to ptr
  %t278 = extractvalue { i64, ptr } %t274, 0
  %t279 = extractvalue { i64, ptr } %t274, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %t277, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  store { i64, ptr } %t283, ptr %l88, !tbaa !27
  %t284 = ptrtoint ptr %v0 to i64
  store i64 %t284, ptr %l89, !tbaa !24
  %t285 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t285, label %bb31, label %bb32
bb31:
  %t287 = call ptr @__olang_region_make(ptr %v0)
  %t288 = ptrtoint ptr %t287 to i64
  store i64 %t288, ptr %l89, !tbaa !24
  br label %bb32
bb32:
  %t289 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t290 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d279, i32 0, i32 1) }, 1
  %t291 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d279, i32 0, i32 1) }, 0
  %t293 = extractvalue { i64, ptr } %t289, 1
  %t294 = extractvalue { i64, ptr } %t289, 0
  %t295 = add i64 %t291, %t294
  %t296 = load i64, ptr %l89
  %t297 = inttoptr i64 %t296 to ptr
  %t298 = call ptr @__olang_scope_alloc(ptr %t297, i64 %t295)
  call void @olang_textcopy(ptr %t298, ptr %t290, i64 %t291)
  %t299 = getelementptr i8, ptr %t298, i64 %t291
  call void @olang_textcopy(ptr %t299, ptr %t293, i64 %t294)
  %t300 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t301 = insertvalue { i64, ptr } %t300, ptr %t298, 1
  %t303 = load i64, ptr %l89
  %t304 = inttoptr i64 %t303 to ptr
  %t305 = extractvalue { i64, ptr } %t301, 0
  %t306 = extractvalue { i64, ptr } %t301, 1
  %t307 = mul i64 %t305, 1
  %t308 = call ptr @__olang_scope_alloc(ptr %t304, i64 %t307)
  call void @llvm.memcpy.p0.p0.i64(ptr %t308, ptr %t306, i64 %t307, i1 false)
  %t309 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t308, 1
  %t311 = load ptr, ptr %l83, !tbaa !29
  %t312 = load { i64, ptr }, ptr %l88, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t311, { i64, ptr } %t312, { i64, ptr } %t310)
  br label %bb33
bb33:
  %t314 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t315 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t316 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t318 = extractvalue { i64, ptr } %t314, 1
  %t319 = extractvalue { i64, ptr } %t314, 0
  %t320 = add i64 %t316, %t319
  %t321 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t320)
  call void @olang_textcopy(ptr %t321, ptr %t315, i64 %t316)
  %t322 = getelementptr i8, ptr %t321, i64 %t316
  call void @olang_textcopy(ptr %t322, ptr %t318, i64 %t319)
  %t323 = insertvalue { i64, ptr } undef, i64 %t320, 0
  %t324 = insertvalue { i64, ptr } %t323, ptr %t321, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t324, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eminMax(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t6 = extractvalue { i64, ptr } %a1, 1
  %t7 = extractvalue { i64, ptr } %a1, 0
  %t8 = add i64 %t4, %t7
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d282, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d282, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t13 = extractvalue { i64, ptr } %t2, 1
  %t14 = extractvalue { i64, ptr } %t2, 0
  %t15 = add i64 %t11, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t3, i64 %t4)
  %t17 = getelementptr i8, ptr %t16, i64 %t4
  call void @olang_textcopy(ptr %t17, ptr %t6, i64 %t7)
  %t18 = getelementptr i8, ptr %t17, i64 %t7
  call void @olang_textcopy(ptr %t18, ptr %t9, i64 %t10)
  %t19 = getelementptr i8, ptr %t18, i64 %t10
  call void @olang_textcopy(ptr %t19, ptr %t13, i64 %t14)
  %t20 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t16, 1
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/emit:fnEm", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t28, 1
  %t34 = extractvalue { i64, ptr } %t28, 0
  %t35 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t39 = extractvalue { i64, ptr } %t29, 1
  %t40 = extractvalue { i64, ptr } %t29, 0
  %t41 = add i64 %t37, %t40
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t46 = extractvalue { i64, ptr } %t30, 1
  %t47 = extractvalue { i64, ptr } %t30, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d285, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d285, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t53 = extractvalue { i64, ptr } %t31, 1
  %t54 = extractvalue { i64, ptr } %t31, 0
  %t55 = add i64 %t51, %t54
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d286, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d286, i32 0, i32 1) }, 0
  %t58 = add i64 %t55, %t57
  %t59 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t58)
  call void @olang_textcopy(ptr %t59, ptr %t33, i64 %t34)
  %t60 = getelementptr i8, ptr %t59, i64 %t34
  call void @olang_textcopy(ptr %t60, ptr %t35, i64 %t36)
  %t61 = getelementptr i8, ptr %t60, i64 %t36
  call void @olang_textcopy(ptr %t61, ptr %t39, i64 %t40)
  %t62 = getelementptr i8, ptr %t61, i64 %t40
  call void @olang_textcopy(ptr %t62, ptr %t42, i64 %t43)
  %t63 = getelementptr i8, ptr %t62, i64 %t43
  call void @olang_textcopy(ptr %t63, ptr %t46, i64 %t47)
  %t64 = getelementptr i8, ptr %t63, i64 %t47
  call void @olang_textcopy(ptr %t64, ptr %t49, i64 %t50)
  %t65 = getelementptr i8, ptr %t64, i64 %t50
  call void @olang_textcopy(ptr %t65, ptr %t53, i64 %t54)
  %t66 = getelementptr i8, ptr %t65, i64 %t54
  call void @olang_textcopy(ptr %t66, ptr %t56, i64 %t57)
  %t67 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t59, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = extractvalue { i64, ptr } %t68, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t26, { i64, ptr } %t27, { i64, ptr } %t75)
  br label %bb1
bb1:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t86 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d287, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d287, i32 0, i32 1) }, 0
  %t89 = extractvalue { i64, ptr } %t80, 1
  %t90 = extractvalue { i64, ptr } %t80, 0
  %t91 = add i64 %t87, %t90
  %t92 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t96 = extractvalue { i64, ptr } %t81, 1
  %t97 = extractvalue { i64, ptr } %t81, 0
  %t98 = add i64 %t94, %t97
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d289, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d289, i32 0, i32 1) }, 0
  %t101 = add i64 %t98, %t100
  %t103 = extractvalue { i64, ptr } %t82, 1
  %t104 = extractvalue { i64, ptr } %t82, 0
  %t105 = add i64 %t101, %t104
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d290, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d290, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t110 = extractvalue { i64, ptr } %a3, 1
  %t111 = extractvalue { i64, ptr } %a3, 0
  %t112 = add i64 %t108, %t111
  %t113 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t115 = add i64 %t112, %t114
  %t117 = extractvalue { i64, ptr } %t84, 1
  %t118 = extractvalue { i64, ptr } %t84, 0
  %t119 = add i64 %t115, %t118
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d290, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d290, i32 0, i32 1) }, 0
  %t122 = add i64 %t119, %t121
  %t124 = call i64 @__olang_fmt_i64(ptr null, i64 %a4)
  %t125 = add i64 %t122, %t124
  %t126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t128 = add i64 %t125, %t127
  %t129 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t128)
  call void @olang_textcopy(ptr %t129, ptr %t86, i64 %t87)
  %t130 = getelementptr i8, ptr %t129, i64 %t87
  call void @olang_textcopy(ptr %t130, ptr %t89, i64 %t90)
  %t131 = getelementptr i8, ptr %t130, i64 %t90
  call void @olang_textcopy(ptr %t131, ptr %t92, i64 %t93)
  %t132 = getelementptr i8, ptr %t131, i64 %t93
  call void @olang_textcopy(ptr %t132, ptr %t96, i64 %t97)
  %t133 = getelementptr i8, ptr %t132, i64 %t97
  call void @olang_textcopy(ptr %t133, ptr %t99, i64 %t100)
  %t134 = getelementptr i8, ptr %t133, i64 %t100
  call void @olang_textcopy(ptr %t134, ptr %t103, i64 %t104)
  %t135 = getelementptr i8, ptr %t134, i64 %t104
  call void @olang_textcopy(ptr %t135, ptr %t106, i64 %t107)
  %t136 = getelementptr i8, ptr %t135, i64 %t107
  call void @olang_textcopy(ptr %t136, ptr %t110, i64 %t111)
  %t137 = getelementptr i8, ptr %t136, i64 %t111
  call void @olang_textcopy(ptr %t137, ptr %t113, i64 %t114)
  %t138 = getelementptr i8, ptr %t137, i64 %t114
  call void @olang_textcopy(ptr %t138, ptr %t117, i64 %t118)
  %t139 = getelementptr i8, ptr %t138, i64 %t118
  call void @olang_textcopy(ptr %t139, ptr %t120, i64 %t121)
  %t140 = getelementptr i8, ptr %t139, i64 %t121
  %t141 = call i64 @__olang_fmt_i64(ptr %t140, i64 %a4)
  %t142 = getelementptr i8, ptr %t140, i64 %t124
  call void @olang_textcopy(ptr %t142, ptr %t126, i64 %t127)
  %t143 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t129, 1
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t147 = extractvalue { i64, ptr } %t144, 1
  %t148 = mul i64 %t146, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  %t154 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v4, ptr %v4, ptr %t79, { i64, ptr } %t151)
  store { i64, ptr } %t154, ptr %l27
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t155 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t155, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2esaturating(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l30 = alloca { i64, [4 x i64] }
  %l32 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l62 = alloca { i64, [4 x i64] }
  %l63 = alloca ptr
  %l66 = alloca { i64, [4 x i64] }
  %l67 = alloca i32
  %l68 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l72 = alloca i32
  %l73 = alloca i64
  %l76 = alloca i1
  %l85 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
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
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t9, i32 %t10)
  store { i64, ptr } %t13, ptr %l19
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t14, ptr %l6, !tbaa !27
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l22
  br label %bb2
bb2:
  %t20 = load i1, ptr %l22, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d294, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t21, ptr %l7, !tbaa !27
  %t22 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t24 = trunc i64 51 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l26, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l27, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load %"compiler/mir:Range", ptr %l4
  %t33 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t29, %"compiler/mir:Range" %t30, i64 1)
  store { i64, [4 x i64] } %t33, ptr %l30
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t34 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t35 = load ptr, ptr %l27, !tbaa !29
  %t36 = load { i64, [4 x i64] }, ptr %l30
  %t38 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s1, ptr %t35, { i64, [4 x i64] } %t36, i32 %t34)
  store { i64, ptr } %t38, ptr %l32
  br label %bb9
bb9:
  %t39 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  %t41 = extractvalue { i64, ptr } %t39, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  %t46 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t47 = load i32, ptr %l2, !tbaa !23
  %t48 = load ptr, ptr %l26, !tbaa !29
  %t52 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidth(ptr %v0, ptr %s1, ptr %s1, ptr %t48, { i64, ptr } %t45, i32 %t46, i32 %t47)
  store { i64, ptr } %t52, ptr %l36
  br label %bb10
bb10:
  %t53 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t53, ptr %l8, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t56 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
  %t59 = extractvalue { i64, ptr } %t54, 1
  %t60 = extractvalue { i64, ptr } %t54, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t66 = extractvalue { i64, ptr } %t55, 1
  %t67 = extractvalue { i64, ptr } %t55, 0
  %t68 = add i64 %t64, %t67
  %t69 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t56, i64 %t57)
  %t70 = getelementptr i8, ptr %t69, i64 %t57
  call void @olang_textcopy(ptr %t70, ptr %t59, i64 %t60)
  %t71 = getelementptr i8, ptr %t70, i64 %t60
  call void @olang_textcopy(ptr %t71, ptr %t62, i64 %t63)
  %t72 = getelementptr i8, ptr %t71, i64 %t63
  call void @olang_textcopy(ptr %t72, ptr %t66, i64 %t67)
  %t73 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t69, 1
  store { i64, ptr } %t74, ptr %l9, !tbaa !27
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/emit:fnEm", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t81, 1
  %t87 = extractvalue { i64, ptr } %t81, 0
  %t88 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t92 = extractvalue { i64, ptr } %t82, 1
  %t93 = extractvalue { i64, ptr } %t82, 0
  %t94 = add i64 %t90, %t93
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d298, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d298, i32 0, i32 1) }, 0
  %t97 = add i64 %t94, %t96
  %t99 = extractvalue { i64, ptr } %t83, 1
  %t100 = extractvalue { i64, ptr } %t83, 0
  %t101 = add i64 %t97, %t100
  %t102 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t106 = extractvalue { i64, ptr } %t84, 1
  %t107 = extractvalue { i64, ptr } %t84, 0
  %t108 = add i64 %t104, %t107
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d300, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d300, i32 0, i32 1) }, 0
  %t111 = add i64 %t108, %t110
  %t112 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t111)
  call void @olang_textcopy(ptr %t112, ptr %t86, i64 %t87)
  %t113 = getelementptr i8, ptr %t112, i64 %t87
  call void @olang_textcopy(ptr %t113, ptr %t88, i64 %t89)
  %t114 = getelementptr i8, ptr %t113, i64 %t89
  call void @olang_textcopy(ptr %t114, ptr %t92, i64 %t93)
  %t115 = getelementptr i8, ptr %t114, i64 %t93
  call void @olang_textcopy(ptr %t115, ptr %t95, i64 %t96)
  %t116 = getelementptr i8, ptr %t115, i64 %t96
  call void @olang_textcopy(ptr %t116, ptr %t99, i64 %t100)
  %t117 = getelementptr i8, ptr %t116, i64 %t100
  call void @olang_textcopy(ptr %t117, ptr %t102, i64 %t103)
  %t118 = getelementptr i8, ptr %t117, i64 %t103
  call void @olang_textcopy(ptr %t118, ptr %t106, i64 %t107)
  %t119 = getelementptr i8, ptr %t118, i64 %t107
  call void @olang_textcopy(ptr %t119, ptr %t109, i64 %t110)
  %t120 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t112, 1
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t124 = extractvalue { i64, ptr } %t121, 1
  %t125 = mul i64 %t123, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t125)
  call void @llvm.memcpy.p0.p0.i64(ptr %t126, ptr %t124, i64 %t125, i1 false)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s1, ptr %s1, ptr %t79, { i64, ptr } %t80, { i64, ptr } %t128)
  br label %bb11
bb11:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t139 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d301, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d301, i32 0, i32 1) }, 0
  %t142 = extractvalue { i64, ptr } %t133, 1
  %t143 = extractvalue { i64, ptr } %t133, 0
  %t144 = add i64 %t140, %t143
  %t145 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d302, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d302, i32 0, i32 1) }, 0
  %t147 = add i64 %t144, %t146
  %t149 = extractvalue { i64, ptr } %t134, 1
  %t150 = extractvalue { i64, ptr } %t134, 0
  %t151 = add i64 %t147, %t150
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
  %t154 = add i64 %t151, %t153
  %t156 = extractvalue { i64, ptr } %t135, 1
  %t157 = extractvalue { i64, ptr } %t135, 0
  %t158 = add i64 %t154, %t157
  %t159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t163 = extractvalue { i64, ptr } %t136, 1
  %t164 = extractvalue { i64, ptr } %t136, 0
  %t165 = add i64 %t161, %t164
  %t166 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d305, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d305, i32 0, i32 1) }, 0
  %t168 = add i64 %t165, %t167
  %t170 = extractvalue { i64, ptr } %t137, 1
  %t171 = extractvalue { i64, ptr } %t137, 0
  %t172 = add i64 %t168, %t171
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t177 = extractvalue { i64, ptr } %t138, 1
  %t178 = extractvalue { i64, ptr } %t138, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d306, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d306, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t139, i64 %t140)
  %t184 = getelementptr i8, ptr %t183, i64 %t140
  call void @olang_textcopy(ptr %t184, ptr %t142, i64 %t143)
  %t185 = getelementptr i8, ptr %t184, i64 %t143
  call void @olang_textcopy(ptr %t185, ptr %t145, i64 %t146)
  %t186 = getelementptr i8, ptr %t185, i64 %t146
  call void @olang_textcopy(ptr %t186, ptr %t149, i64 %t150)
  %t187 = getelementptr i8, ptr %t186, i64 %t150
  call void @olang_textcopy(ptr %t187, ptr %t152, i64 %t153)
  %t188 = getelementptr i8, ptr %t187, i64 %t153
  call void @olang_textcopy(ptr %t188, ptr %t156, i64 %t157)
  %t189 = getelementptr i8, ptr %t188, i64 %t157
  call void @olang_textcopy(ptr %t189, ptr %t159, i64 %t160)
  %t190 = getelementptr i8, ptr %t189, i64 %t160
  call void @olang_textcopy(ptr %t190, ptr %t163, i64 %t164)
  %t191 = getelementptr i8, ptr %t190, i64 %t164
  call void @olang_textcopy(ptr %t191, ptr %t166, i64 %t167)
  %t192 = getelementptr i8, ptr %t191, i64 %t167
  call void @olang_textcopy(ptr %t192, ptr %t170, i64 %t171)
  %t193 = getelementptr i8, ptr %t192, i64 %t171
  call void @olang_textcopy(ptr %t193, ptr %t173, i64 %t174)
  %t194 = getelementptr i8, ptr %t193, i64 %t174
  call void @olang_textcopy(ptr %t194, ptr %t177, i64 %t178)
  %t195 = getelementptr i8, ptr %t194, i64 %t178
  call void @olang_textcopy(ptr %t195, ptr %t180, i64 %t181)
  %t196 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t183, 1
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t200 = extractvalue { i64, ptr } %t197, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  %t207 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t132, { i64, ptr } %t204)
  store { i64, ptr } %t207, ptr %l58
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t208 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t208, ptr %rv
  br label %ret
bb13:
  %t209 = load ptr, ptr %l0, !tbaa !29
  store ptr %t209, ptr %l59, !tbaa !29
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load %"compiler/mir:Range", ptr %l4
  %t214 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t210, %"compiler/mir:Range" %t211, i64 1)
  store { i64, [4 x i64] } %t214, ptr %l62
  br label %bb14
bb14:
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l63, !tbaa !29
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load %"compiler/mir:Range", ptr %l4
  %t220 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t216, %"compiler/mir:Range" %t217, i64 1)
  store { i64, [4 x i64] } %t220, ptr %l66
  br label %bb15
bb15:
  %t221 = load ptr, ptr %l63, !tbaa !29
  %t222 = load { i64, [4 x i64] }, ptr %l66
  %t223 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t221, { i64, [4 x i64] } %t222)
  store i32 %t223, ptr %l67
  br label %bb16
bb16:
  %t224 = load ptr, ptr %l59, !tbaa !29
  %t225 = load { i64, [4 x i64] }, ptr %l62
  %t226 = load i32, ptr %l67, !tbaa !23
  %t227 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t224, { i64, [4 x i64] } %t225, i32 %t226)
  store { i64, ptr } %t227, ptr %l68
  br label %bb17
bb17:
  %t228 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t228, ptr %l10, !tbaa !27
  %t229 = load ptr, ptr %l5, !tbaa !29
  store ptr %t229, ptr %l69, !tbaa !29
  %t230 = load ptr, ptr %l5, !tbaa !29
  %t231 = load i32, ptr %l2, !tbaa !23
  %t234 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t230, i32 %t231)
  store i32 %t234, ptr %l72
  br label %bb18
bb18:
  %t235 = load ptr, ptr %l69, !tbaa !29
  %t236 = load i32, ptr %l72, !tbaa !23
  %t237 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t235, i32 %t236)
  store i64 %t237, ptr %l73
  br label %bb19
bb19:
  %t238 = load i64, ptr %l73, !tbaa !24
  store i64 %t238, ptr %l11, !tbaa !24
  %t239 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t241 = trunc i64 50 to i32
  %t242 = icmp eq i32 %t239, %t241
  br i1 %t242, label %bb20, label %bb21
bb20:
  %t244 = load i64, ptr %l11, !tbaa !24
  %t246 = icmp sle i64 %t244, 32
  store i1 %t246, ptr %l76, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb22
bb22:
  %t248 = load i1, ptr %l76, !tbaa !21
  br i1 %t248, label %bb23, label %bb24
bb23:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t251 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t252 = load i64, ptr %l11, !tbaa !24
  %t253 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t254 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t255 = load ptr, ptr @__olang_prog_scope
  %t262 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2esatMulWide(ptr %v0, ptr %t255, ptr %s0, ptr %v1, ptr %s0, ptr %v2, ptr %t249, { i64, ptr } %t250, { i64, ptr } %t251, i64 %t252, { i64, ptr } %t253, { i64, ptr } %t254)
  store { i64, ptr } %t262, ptr %l85
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t263 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t263, ptr %rv
  br label %ret
bb26:
  %t264 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t266 = trunc i64 50 to i32
  %t267 = icmp eq i32 %t264, %t266
  br i1 %t267, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t269 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t270 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t271 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t272 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t274 = extractvalue { i64, ptr } %t269, 1
  %t275 = extractvalue { i64, ptr } %t269, 0
  %t276 = add i64 %t272, %t275
  %t277 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d308, i32 0, i32 1) }, 1
  %t278 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d308, i32 0, i32 1) }, 0
  %t279 = add i64 %t276, %t278
  %t281 = extractvalue { i64, ptr } %t270, 1
  %t282 = extractvalue { i64, ptr } %t270, 0
  %t283 = add i64 %t279, %t282
  %t284 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t283)
  call void @olang_textcopy(ptr %t284, ptr %t271, i64 %t272)
  %t285 = getelementptr i8, ptr %t284, i64 %t272
  call void @olang_textcopy(ptr %t285, ptr %t274, i64 %t275)
  %t286 = getelementptr i8, ptr %t285, i64 %t275
  call void @olang_textcopy(ptr %t286, ptr %t277, i64 %t278)
  %t287 = getelementptr i8, ptr %t286, i64 %t278
  call void @olang_textcopy(ptr %t287, ptr %t281, i64 %t282)
  %t288 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t284, 1
  store { i64, ptr } %t289, ptr %l12, !tbaa !27
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/emit:fnEm", ptr %t291, i32 0, i32 0
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t295 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t296 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t297 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t298 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t299 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t296, 1
  %t302 = extractvalue { i64, ptr } %t296, 0
  %t303 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t304 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t305 = add i64 %t302, %t304
  %t307 = extractvalue { i64, ptr } %t297, 1
  %t308 = extractvalue { i64, ptr } %t297, 0
  %t309 = add i64 %t305, %t308
  %t310 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t311 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t312 = add i64 %t309, %t311
  %t314 = extractvalue { i64, ptr } %t298, 1
  %t315 = extractvalue { i64, ptr } %t298, 0
  %t316 = add i64 %t312, %t315
  %t317 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t318 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
  %t319 = add i64 %t316, %t318
  %t321 = extractvalue { i64, ptr } %t299, 1
  %t322 = extractvalue { i64, ptr } %t299, 0
  %t323 = add i64 %t319, %t322
  %t324 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d312, i32 0, i32 1) }, 1
  %t325 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d312, i32 0, i32 1) }, 0
  %t326 = add i64 %t323, %t325
  %t327 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t326)
  call void @olang_textcopy(ptr %t327, ptr %t301, i64 %t302)
  %t328 = getelementptr i8, ptr %t327, i64 %t302
  call void @olang_textcopy(ptr %t328, ptr %t303, i64 %t304)
  %t329 = getelementptr i8, ptr %t328, i64 %t304
  call void @olang_textcopy(ptr %t329, ptr %t307, i64 %t308)
  %t330 = getelementptr i8, ptr %t329, i64 %t308
  call void @olang_textcopy(ptr %t330, ptr %t310, i64 %t311)
  %t331 = getelementptr i8, ptr %t330, i64 %t311
  call void @olang_textcopy(ptr %t331, ptr %t314, i64 %t315)
  %t332 = getelementptr i8, ptr %t331, i64 %t315
  call void @olang_textcopy(ptr %t332, ptr %t317, i64 %t318)
  %t333 = getelementptr i8, ptr %t332, i64 %t318
  call void @olang_textcopy(ptr %t333, ptr %t321, i64 %t322)
  %t334 = getelementptr i8, ptr %t333, i64 %t322
  call void @olang_textcopy(ptr %t334, ptr %t324, i64 %t325)
  %t335 = insertvalue { i64, ptr } undef, i64 %t326, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t327, 1
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t339 = extractvalue { i64, ptr } %t336, 1
  %t340 = mul i64 %t338, 1
  %t341 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t340)
  call void @llvm.memcpy.p0.p0.i64(ptr %t341, ptr %t339, i64 %t340, i1 false)
  %t342 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t341, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s6, ptr %s6, ptr %t294, { i64, ptr } %t295, { i64, ptr } %t343)
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t349 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t350 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t351 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t352 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t353 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t354 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d313, i32 0, i32 1) }, 1
  %t355 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d313, i32 0, i32 1) }, 0
  %t357 = extractvalue { i64, ptr } %t348, 1
  %t358 = extractvalue { i64, ptr } %t348, 0
  %t359 = add i64 %t355, %t358
  %t360 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d314, i32 0, i32 1) }, 1
  %t361 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d314, i32 0, i32 1) }, 0
  %t362 = add i64 %t359, %t361
  %t364 = extractvalue { i64, ptr } %t349, 1
  %t365 = extractvalue { i64, ptr } %t349, 0
  %t366 = add i64 %t362, %t365
  %t367 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t368 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
  %t369 = add i64 %t366, %t368
  %t371 = extractvalue { i64, ptr } %t350, 1
  %t372 = extractvalue { i64, ptr } %t350, 0
  %t373 = add i64 %t369, %t372
  %t374 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t375 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t376 = add i64 %t373, %t375
  %t378 = extractvalue { i64, ptr } %t351, 1
  %t379 = extractvalue { i64, ptr } %t351, 0
  %t380 = add i64 %t376, %t379
  %t381 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t382 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t383 = add i64 %t380, %t382
  %t385 = extractvalue { i64, ptr } %t352, 1
  %t386 = extractvalue { i64, ptr } %t352, 0
  %t387 = add i64 %t383, %t386
  %t388 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t389 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t390 = add i64 %t387, %t389
  %t392 = extractvalue { i64, ptr } %t353, 1
  %t393 = extractvalue { i64, ptr } %t353, 0
  %t394 = add i64 %t390, %t393
  %t395 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t396 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
  %t397 = add i64 %t394, %t396
  %t398 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t397)
  call void @olang_textcopy(ptr %t398, ptr %t354, i64 %t355)
  %t399 = getelementptr i8, ptr %t398, i64 %t355
  call void @olang_textcopy(ptr %t399, ptr %t357, i64 %t358)
  %t400 = getelementptr i8, ptr %t399, i64 %t358
  call void @olang_textcopy(ptr %t400, ptr %t360, i64 %t361)
  %t401 = getelementptr i8, ptr %t400, i64 %t361
  call void @olang_textcopy(ptr %t401, ptr %t364, i64 %t365)
  %t402 = getelementptr i8, ptr %t401, i64 %t365
  call void @olang_textcopy(ptr %t402, ptr %t367, i64 %t368)
  %t403 = getelementptr i8, ptr %t402, i64 %t368
  call void @olang_textcopy(ptr %t403, ptr %t371, i64 %t372)
  %t404 = getelementptr i8, ptr %t403, i64 %t372
  call void @olang_textcopy(ptr %t404, ptr %t374, i64 %t375)
  %t405 = getelementptr i8, ptr %t404, i64 %t375
  call void @olang_textcopy(ptr %t405, ptr %t378, i64 %t379)
  %t406 = getelementptr i8, ptr %t405, i64 %t379
  call void @olang_textcopy(ptr %t406, ptr %t381, i64 %t382)
  %t407 = getelementptr i8, ptr %t406, i64 %t382
  call void @olang_textcopy(ptr %t407, ptr %t385, i64 %t386)
  %t408 = getelementptr i8, ptr %t407, i64 %t386
  call void @olang_textcopy(ptr %t408, ptr %t388, i64 %t389)
  %t409 = getelementptr i8, ptr %t408, i64 %t389
  call void @olang_textcopy(ptr %t409, ptr %t392, i64 %t393)
  %t410 = getelementptr i8, ptr %t409, i64 %t393
  call void @olang_textcopy(ptr %t410, ptr %t395, i64 %t396)
  %t411 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t412 = insertvalue { i64, ptr } %t411, ptr %t398, 1
  %t414 = extractvalue { i64, ptr } %t412, 0
  %t415 = extractvalue { i64, ptr } %t412, 1
  %t416 = mul i64 %t414, 1
  %t417 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t416)
  call void @llvm.memcpy.p0.p0.i64(ptr %t417, ptr %t415, i64 %t416, i1 false)
  %t418 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t417, 1
  %t422 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t347, { i64, ptr } %t419)
  store { i64, ptr } %t422, ptr %l109
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t423 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t423, ptr %rv
  br label %ret
bb31:
  %t424 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t424, ptr %l110, !tbaa !27
  %t425 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t427 = trunc i64 48 to i32
  %t428 = icmp eq i32 %t425, %t427
  br i1 %t428, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d319, i32 0, i32 1) }, ptr %l113, !tbaa !27
  br label %bb34
bb33:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d320, i32 0, i32 1) }, ptr %l113, !tbaa !27
  br label %bb34
bb34:
  %t430 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t431 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t432 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t433 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t433, 1
  %t435 = extractvalue { i64, ptr } %t433, 0
  %t436 = add i64 %t432, %t435
  %t437 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t437, 1
  %t439 = extractvalue { i64, ptr } %t437, 0
  %t440 = add i64 %t436, %t439
  %t441 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d322, i32 0, i32 1) }, 1
  %t442 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d322, i32 0, i32 1) }, 0
  %t443 = add i64 %t440, %t442
  %t445 = extractvalue { i64, ptr } %t430, 1
  %t446 = extractvalue { i64, ptr } %t430, 0
  %t447 = add i64 %t443, %t446
  %t448 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t447)
  call void @olang_textcopy(ptr %t448, ptr %t431, i64 %t432)
  %t449 = getelementptr i8, ptr %t448, i64 %t432
  call void @olang_textcopy(ptr %t449, ptr %t434, i64 %t435)
  %t450 = getelementptr i8, ptr %t449, i64 %t435
  call void @olang_textcopy(ptr %t450, ptr %t438, i64 %t439)
  %t451 = getelementptr i8, ptr %t450, i64 %t439
  call void @olang_textcopy(ptr %t451, ptr %t441, i64 %t442)
  %t452 = getelementptr i8, ptr %t451, i64 %t442
  call void @olang_textcopy(ptr %t452, ptr %t445, i64 %t446)
  %t453 = insertvalue { i64, ptr } undef, i64 %t447, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t448, 1
  store { i64, ptr } %t454, ptr %l13, !tbaa !27
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/emit:fnEm", ptr %t456, i32 0, i32 0
  %t459 = load ptr, ptr %t458, !tbaa !29
  %t460 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t461 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t462 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t463 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t464 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t466 = extractvalue { i64, ptr } %t461, 1
  %t467 = extractvalue { i64, ptr } %t461, 0
  %t468 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d323, i32 0, i32 1) }, 1
  %t469 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d323, i32 0, i32 1) }, 0
  %t470 = add i64 %t467, %t469
  %t472 = extractvalue { i64, ptr } %t462, 1
  %t473 = extractvalue { i64, ptr } %t462, 0
  %t474 = add i64 %t470, %t473
  %t475 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t476 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t477 = add i64 %t474, %t476
  %t479 = extractvalue { i64, ptr } %t463, 1
  %t480 = extractvalue { i64, ptr } %t463, 0
  %t481 = add i64 %t477, %t480
  %t482 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t483 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t484 = add i64 %t481, %t483
  %t486 = extractvalue { i64, ptr } %t464, 1
  %t487 = extractvalue { i64, ptr } %t464, 0
  %t488 = add i64 %t484, %t487
  %t489 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d326, i32 0, i32 1) }, 1
  %t490 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d326, i32 0, i32 1) }, 0
  %t491 = add i64 %t488, %t490
  %t492 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t491)
  call void @olang_textcopy(ptr %t492, ptr %t466, i64 %t467)
  %t493 = getelementptr i8, ptr %t492, i64 %t467
  call void @olang_textcopy(ptr %t493, ptr %t468, i64 %t469)
  %t494 = getelementptr i8, ptr %t493, i64 %t469
  call void @olang_textcopy(ptr %t494, ptr %t472, i64 %t473)
  %t495 = getelementptr i8, ptr %t494, i64 %t473
  call void @olang_textcopy(ptr %t495, ptr %t475, i64 %t476)
  %t496 = getelementptr i8, ptr %t495, i64 %t476
  call void @olang_textcopy(ptr %t496, ptr %t479, i64 %t480)
  %t497 = getelementptr i8, ptr %t496, i64 %t480
  call void @olang_textcopy(ptr %t497, ptr %t482, i64 %t483)
  %t498 = getelementptr i8, ptr %t497, i64 %t483
  call void @olang_textcopy(ptr %t498, ptr %t486, i64 %t487)
  %t499 = getelementptr i8, ptr %t498, i64 %t487
  call void @olang_textcopy(ptr %t499, ptr %t489, i64 %t490)
  %t500 = insertvalue { i64, ptr } undef, i64 %t491, 0
  %t501 = insertvalue { i64, ptr } %t500, ptr %t492, 1
  %t503 = extractvalue { i64, ptr } %t501, 0
  %t504 = extractvalue { i64, ptr } %t501, 1
  %t505 = mul i64 %t503, 1
  %t506 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t505)
  call void @llvm.memcpy.p0.p0.i64(ptr %t506, ptr %t504, i64 %t505, i1 false)
  %t507 = insertvalue { i64, ptr } undef, i64 %t503, 0
  %t508 = insertvalue { i64, ptr } %t507, ptr %t506, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t459, { i64, ptr } %t460, { i64, ptr } %t508)
  br label %bb35
bb35:
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t513 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t514 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t515 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t516 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t517 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t518 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t519 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d327, i32 0, i32 1) }, 1
  %t520 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d327, i32 0, i32 1) }, 0
  %t522 = extractvalue { i64, ptr } %t513, 1
  %t523 = extractvalue { i64, ptr } %t513, 0
  %t524 = add i64 %t520, %t523
  %t525 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t526 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t527 = add i64 %t524, %t526
  %t529 = extractvalue { i64, ptr } %t514, 1
  %t530 = extractvalue { i64, ptr } %t514, 0
  %t531 = add i64 %t527, %t530
  %t532 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t533 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
  %t534 = add i64 %t531, %t533
  %t536 = extractvalue { i64, ptr } %t515, 1
  %t537 = extractvalue { i64, ptr } %t515, 0
  %t538 = add i64 %t534, %t537
  %t539 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t540 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t541 = add i64 %t538, %t540
  %t543 = extractvalue { i64, ptr } %t516, 1
  %t544 = extractvalue { i64, ptr } %t516, 0
  %t545 = add i64 %t541, %t544
  %t546 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t547 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t548 = add i64 %t545, %t547
  %t550 = extractvalue { i64, ptr } %t517, 1
  %t551 = extractvalue { i64, ptr } %t517, 0
  %t552 = add i64 %t548, %t551
  %t553 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t554 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t555 = add i64 %t552, %t554
  %t557 = extractvalue { i64, ptr } %t518, 1
  %t558 = extractvalue { i64, ptr } %t518, 0
  %t559 = add i64 %t555, %t558
  %t560 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t561 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t562 = add i64 %t559, %t561
  %t563 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t562)
  call void @olang_textcopy(ptr %t563, ptr %t519, i64 %t520)
  %t564 = getelementptr i8, ptr %t563, i64 %t520
  call void @olang_textcopy(ptr %t564, ptr %t522, i64 %t523)
  %t565 = getelementptr i8, ptr %t564, i64 %t523
  call void @olang_textcopy(ptr %t565, ptr %t525, i64 %t526)
  %t566 = getelementptr i8, ptr %t565, i64 %t526
  call void @olang_textcopy(ptr %t566, ptr %t529, i64 %t530)
  %t567 = getelementptr i8, ptr %t566, i64 %t530
  call void @olang_textcopy(ptr %t567, ptr %t532, i64 %t533)
  %t568 = getelementptr i8, ptr %t567, i64 %t533
  call void @olang_textcopy(ptr %t568, ptr %t536, i64 %t537)
  %t569 = getelementptr i8, ptr %t568, i64 %t537
  call void @olang_textcopy(ptr %t569, ptr %t539, i64 %t540)
  %t570 = getelementptr i8, ptr %t569, i64 %t540
  call void @olang_textcopy(ptr %t570, ptr %t543, i64 %t544)
  %t571 = getelementptr i8, ptr %t570, i64 %t544
  call void @olang_textcopy(ptr %t571, ptr %t546, i64 %t547)
  %t572 = getelementptr i8, ptr %t571, i64 %t547
  call void @olang_textcopy(ptr %t572, ptr %t550, i64 %t551)
  %t573 = getelementptr i8, ptr %t572, i64 %t551
  call void @olang_textcopy(ptr %t573, ptr %t553, i64 %t554)
  %t574 = getelementptr i8, ptr %t573, i64 %t554
  call void @olang_textcopy(ptr %t574, ptr %t557, i64 %t558)
  %t575 = getelementptr i8, ptr %t574, i64 %t558
  call void @olang_textcopy(ptr %t575, ptr %t560, i64 %t561)
  %t576 = insertvalue { i64, ptr } undef, i64 %t562, 0
  %t577 = insertvalue { i64, ptr } %t576, ptr %t563, 1
  %t579 = extractvalue { i64, ptr } %t577, 0
  %t580 = extractvalue { i64, ptr } %t577, 1
  %t581 = mul i64 %t579, 1
  %t582 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t581)
  call void @llvm.memcpy.p0.p0.i64(ptr %t582, ptr %t580, i64 %t581, i1 false)
  %t583 = insertvalue { i64, ptr } undef, i64 %t579, 0
  %t584 = insertvalue { i64, ptr } %t583, ptr %t582, 1
  %t587 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t512, { i64, ptr } %t584)
  store { i64, ptr } %t587, ptr %l134
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t588 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t588, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2etailCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1) #0 {
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
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l51 = alloca i64
  %l56 = alloca i1
  %l63 = alloca %"std/prelude/text:StringBuilder"
  %l68 = alloca i32
  %l71 = alloca i32
  %l92 = alloca ptr
  %l93 = alloca ptr
  %l102 = alloca { i64, [1 x i64] }
  %l103 = alloca { i64, ptr }
  %l108 = alloca ptr
  %l111 = alloca i32
  %l112 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l121 = alloca i64
  %l124 = alloca i64
  %l149 = alloca ptr
  %l153 = alloca { i64, [4 x i64] }
  %l154 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l162 = alloca ptr
  %l167 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l177 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l193 = alloca { i64, ptr }
  %l195 = alloca i1
  %l196 = alloca ptr
  %l197 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l203 = alloca ptr
  %l204 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l207 = alloca { i64, ptr }
  %l210 = alloca { i64, ptr }
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d333, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t11, ptr %l33, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l34, !tbaa !24
  %t14 = load i64, ptr %l34, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l35, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l34, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t25, ptr %l4, !tbaa !27
  %t26 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 0
  %t27 = load { i64, [7 x i64] }, ptr %t26
  store { i64, [7 x i64] } %t27, ptr %l5
  %t29 = load { i64, [7 x i64] }, ptr %l5
  %t31 = extractvalue { i64, [7 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 0
  br i1 %t32, label %bb1, label %bb2
bb1:
  %t34 = getelementptr { i64, [7 x i64] }, ptr %l5, i32 0, i32 1
  %t35 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t34, i32 0, i32 0
  %t36 = load { i64, [2 x i64] }, ptr %t35
  store { i64, [2 x i64] } %t36, ptr %l6
  %t38 = getelementptr { i64, [7 x i64] }, ptr %l5, i32 0, i32 1
  %t39 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t38, i32 0, i32 1
  %t40 = load i32, ptr %t39
  store i32 %t40, ptr %l7, !tbaa !23
  br label %bb3
bb2:
  br label %bb14
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/emit:fnEm", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load { i64, [2 x i64] }, ptr %l6
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t45, { i64, [2 x i64] } %t46)
  br label %bb4
bb4:
  %t49 = load i32, ptr %l7, !tbaa !23
  store i32 %t49, ptr %l3, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/emit:fnEm", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = load { i64, [2 x i64] }, ptr %l6
  %t58 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s1, ptr %t54, { i64, [2 x i64] } %t55)
  store { i64, ptr } %t58, ptr %l48
  br label %bb5
bb5:
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d334, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d334, i32 0, i32 1) }, 0
  %t61 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = add i64 %t60, %t63
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  call void @olang_textcopy(ptr %t65, ptr %t59, i64 %t60)
  %t66 = getelementptr i8, ptr %t65, i64 %t60
  call void @olang_textcopy(ptr %t66, ptr %t62, i64 %t63)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t65, 1
  store { i64, ptr } %t68, ptr %l49, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  %t71 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l51, !tbaa !24
  %t74 = load i64, ptr %l51, !tbaa !24
  %t75 = icmp eq i64 %t70, %t74
  br i1 %t75, label %bb6, label %bb7
bb6:
  %t77 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l51, !tbaa !24
  %t82 = mul i64 %t81, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %t80, i64 %t82, i1 false)
  br label %bb8
bb7:
  %t83 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t83, ptr %l4, !tbaa !27
  br label %bb8
bb8:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/emit:fnEm", ptr %t84, i32 0, i32 0
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t88 = load { i64, [2 x i64] }, ptr %l6
  %t91 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %t87, { i64, [2 x i64] } %t88)
  store i1 %t91, ptr %l56
  br label %bb9
bb9:
  %t92 = load i1, ptr %l56, !tbaa !21
  br i1 %t92, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t93 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s3, ptr %t93, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d335, i32 0, i32 1) })
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb20
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t95 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s4, ptr %t95, { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d336, i32 0, i32 1) })
  br label %bb18
bb18:
  %t97 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s4, ptr %t97, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d337, i32 0, i32 1) })
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_5928719bf5ddeb28_6f82e9f6c6163cdc)
  unreachable
bb21:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/emit:fnEm", ptr %t99, i32 0, i32 0
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %t102, i32 %t103)
  br label %bb22
bb22:
  %t106 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t106, ptr %l63
  br label %bb23
bb23:
  %t107 = load %"std/prelude/text:StringBuilder", ptr %l63
  store %"std/prelude/text:StringBuilder" %t107, ptr %l8
  store i1 true, ptr %l9, !tbaa !21
  store i32 0, ptr %l10, !tbaa !23
  %t108 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 2
  %t109 = getelementptr %"compiler/mir:Range", ptr %t108, i32 0, i32 1
  %t110 = load i32, ptr %t109, !tbaa !23
  store i32 %t110, ptr %l11, !tbaa !23
  store i32 1, ptr %l12, !tbaa !23
  %t112 = load i32, ptr %l11, !tbaa !23
  %t113 = load i32, ptr %l10, !tbaa !23
  %t116 = icmp sgt i32 %t112, %t113
  br i1 %t116, label %bb24, label %bb25
bb24:
  %t118 = load i32, ptr %l12, !tbaa !23
  %t120 = icmp sgt i32 %t118, 0
  br i1 %t120, label %bb26, label %bb27
bb25:
  store i32 0, ptr %l68, !tbaa !23
  br label %bb29
bb26:
  %t122 = load i32, ptr %l11, !tbaa !23
  %t123 = load i32, ptr %l10, !tbaa !23
  %t126 = sub i32 %t122, %t123
  %t127 = load i32, ptr %l12, !tbaa !23
  %t130 = add i32 %t126, %t127
  %t132 = sub i32 %t130, 1
  %t133 = load i32, ptr %l12, !tbaa !23
  %t136 = sdiv i32 %t132, %t133
  store i32 %t136, ptr %l71, !tbaa !23
  br label %bb28
bb27:
  store i32 0, ptr %l71, !tbaa !23
  br label %bb28
bb28:
  %t138 = load i32, ptr %l71, !tbaa !23
  store i32 %t138, ptr %l68, !tbaa !23
  br label %bb29
bb29:
  %t139 = load i32, ptr %l68, !tbaa !23
  store i32 %t139, ptr %l13, !tbaa !23
  store i32 0, ptr %l14, !tbaa !23
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t140 = load i32, ptr %l14, !tbaa !23
  %t141 = load i32, ptr %l13, !tbaa !23
  %t144 = icmp slt i32 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s6)
  br label %bb42
bb32:
  br label %bb33
bb33:
  %t148 = load i32, ptr %l10, !tbaa !23
  %t149 = load i32, ptr %l14, !tbaa !23
  %t150 = load i32, ptr %l12, !tbaa !23
  %t153 = mul i32 %t149, %t150
  %t156 = add i32 %t148, %t153
  store i32 %t156, ptr %l15, !tbaa !23
  %t158 = load i1, ptr %l9, !tbaa !21
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d338, i32 0, i32 1) })
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb37
bb37:
  store i1 false, ptr %l9, !tbaa !21
  store ptr %l8, ptr %l92, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  store ptr %t163, ptr %l93, !tbaa !29
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/emit:fnEm", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = getelementptr %"compiler/mir:Fn", ptr %t167, i32 0, i32 12
  %t170 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 2
  %t171 = getelementptr %"compiler/mir:Range", ptr %t170, i32 0, i32 0
  %t172 = load i32, ptr %t171, !tbaa !23
  %t174 = sext i32 %t172 to i64
  %t175 = load i32, ptr %l15, !tbaa !23
  %t177 = sext i32 %t175 to i64
  %t180 = add i64 %t174, %t177
  %t183 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t169, i64 %t180)
  store { i64, [1 x i64] } %t183, ptr %l102
  br label %bb38
bb38:
  %t184 = load ptr, ptr %l93, !tbaa !29
  %t185 = load { i64, [1 x i64] }, ptr %l102
  %t186 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s6, ptr %t184, { i64, [1 x i64] } %t185)
  store { i64, ptr } %t186, ptr %l103
  br label %bb39
bb39:
  %t187 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
  %t189 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 1
  %t191 = extractvalue { i64, ptr } %t189, 0
  %t192 = add i64 %t188, %t191
  %t193 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t187, i64 %t188)
  %t194 = getelementptr i8, ptr %t193, i64 %t188
  call void @olang_textcopy(ptr %t194, ptr %t190, i64 %t191)
  %t195 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t193, 1
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t199 = extractvalue { i64, ptr } %t196, 1
  %t200 = mul i64 %t198, 1
  %t201 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t200)
  call void @llvm.memcpy.p0.p0.i64(ptr %t201, ptr %t199, i64 %t200, i1 false)
  %t202 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  %t204 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t204, { i64, ptr } %t203)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s6)
  br label %bb41
bb41:
  %t206 = load i32, ptr %l14, !tbaa !23
  %t208 = add i32 %t206, 1
  store i32 %t208, ptr %l14, !tbaa !23
  br label %bb30
bb42:
  %t210 = load ptr, ptr %l2, !tbaa !29
  store ptr %t210, ptr %l108, !tbaa !29
  %t211 = load ptr, ptr %l2, !tbaa !29
  %t212 = load i32, ptr %l3, !tbaa !23
  %t215 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t211, i32 %t212)
  store i32 %t215, ptr %l111
  br label %bb43
bb43:
  %t216 = load ptr, ptr %l108, !tbaa !29
  %t217 = load i32, ptr %l111, !tbaa !23
  %t218 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t216, i32 %t217)
  store { i64, ptr } %t218, ptr %l112
  br label %bb44
bb44:
  %t219 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t219, ptr %l16, !tbaa !27
  %t220 = load ptr, ptr %l2, !tbaa !29
  %t221 = load i32, ptr %l3, !tbaa !23
  %t224 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s0, ptr %t220, i32 %t221)
  store { i64, ptr } %t224, ptr %l115
  br label %bb45
bb45:
  %t225 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t225, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t226, 0
  store i64 %t228, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t230 = load i64, ptr %l19, !tbaa !24
  %t231 = load i64, ptr %l18, !tbaa !24
  %t234 = icmp sgt i64 %t230, %t231
  br i1 %t234, label %bb46, label %bb47
bb46:
  %t236 = load i64, ptr %l20, !tbaa !24
  %t238 = icmp sgt i64 %t236, 0
  br i1 %t238, label %bb48, label %bb49
bb47:
  store i64 0, ptr %l121, !tbaa !24
  br label %bb51
bb48:
  %t240 = load i64, ptr %l19, !tbaa !24
  %t241 = load i64, ptr %l18, !tbaa !24
  %t244 = sub i64 %t240, %t241
  %t245 = load i64, ptr %l20, !tbaa !24
  %t248 = add i64 %t244, %t245
  %t250 = sub i64 %t248, 1
  %t251 = load i64, ptr %l20, !tbaa !24
  %t254 = sdiv i64 %t250, %t251
  store i64 %t254, ptr %l124, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb50
bb50:
  %t256 = load i64, ptr %l124, !tbaa !24
  store i64 %t256, ptr %l121, !tbaa !24
  br label %bb51
bb51:
  %t257 = load i64, ptr %l121, !tbaa !24
  store i64 %t257, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb52
bb52:
  store %olang.scope zeroinitializer, ptr %s11
  %t258 = load i64, ptr %l22, !tbaa !24
  %t259 = load i64, ptr %l21, !tbaa !24
  %t262 = icmp slt i64 %t258, %t259
  %t264 = xor i1 %t262, true
  br i1 %t264, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s11)
  br label %bb81
bb54:
  br label %bb55
bb55:
  %t266 = load i64, ptr %l18, !tbaa !24
  %t267 = load i64, ptr %l22, !tbaa !24
  %t268 = load i64, ptr %l20, !tbaa !24
  %t271 = mul i64 %t267, %t268
  %t274 = add i64 %t266, %t271
  store i64 %t274, ptr %l23, !tbaa !24
  %t276 = load i1, ptr %l9, !tbaa !21
  %t278 = xor i1 %t276, true
  br i1 %t278, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s12
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d340, i32 0, i32 1) })
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s12)
  br label %bb59
bb59:
  store i1 false, ptr %l9, !tbaa !21
  %t281 = load i64, ptr %l23, !tbaa !24
  %t283 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr i8, ptr %t284, i64 %t281
  %t286 = load i8, ptr %t285, !tbaa !32
  %t288 = icmp eq i8 %t286, 109
  br i1 %t288, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s13
  %t290 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s13, ptr %t290, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d341, i32 0, i32 1) })
  br label %bb62
bb61:
  br label %bb63
bb62:
  call void @__olang_scope_close(ptr %s13)
  br label %bb63
bb63:
  %t292 = load ptr, ptr %l0, !tbaa !29
  store ptr %t292, ptr %l149, !tbaa !29
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 1
  %t295 = load %"compiler/mir:Range", ptr %t294
  %t296 = load i64, ptr %l23, !tbaa !24
  %t300 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t293, %"compiler/mir:Range" %t295, i64 %t296)
  store { i64, [4 x i64] } %t300, ptr %l153
  br label %bb64
bb64:
  %t301 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t301, ptr %l154, !tbaa !27
  %t302 = load i64, ptr %l23, !tbaa !24
  %t304 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = getelementptr i32, ptr %t305, i64 %t302
  %t307 = load i32, ptr %t306, !tbaa !33
  %t308 = load ptr, ptr %l149, !tbaa !29
  %t309 = load { i64, [4 x i64] }, ptr %l153
  %t311 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s11, ptr %t308, { i64, [4 x i64] } %t309, i32 %t307)
  store { i64, ptr } %t311, ptr %l157
  br label %bb65
bb65:
  %t312 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t312, ptr %l24, !tbaa !27
  %t313 = load i64, ptr %l23, !tbaa !24
  %t315 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !27
  %t317 = getelementptr i8, ptr %t316, i64 %t313
  %t318 = load i8, ptr %t317, !tbaa !32
  %t322 = icmp eq i8 %t318, 115
  br i1 %t322, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb72
bb68:
  store %olang.scope zeroinitializer, ptr %s14
  store ptr %l8, ptr %l162, !tbaa !29
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t326 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t327 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
  %t329 = extractvalue { i64, ptr } %t325, 1
  %t330 = extractvalue { i64, ptr } %t325, 0
  %t331 = add i64 %t327, %t330
  %t332 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
  %t334 = add i64 %t331, %t333
  %t335 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t334)
  call void @olang_textcopy(ptr %t335, ptr %t326, i64 %t327)
  %t336 = getelementptr i8, ptr %t335, i64 %t327
  call void @olang_textcopy(ptr %t336, ptr %t329, i64 %t330)
  %t337 = getelementptr i8, ptr %t336, i64 %t330
  call void @olang_textcopy(ptr %t337, ptr %t332, i64 %t333)
  %t338 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t335, 1
  %t341 = extractvalue { i64, ptr } %t339, 0
  %t342 = extractvalue { i64, ptr } %t339, 1
  %t343 = mul i64 %t341, 1
  %t344 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t343)
  call void @llvm.memcpy.p0.p0.i64(ptr %t344, ptr %t342, i64 %t343, i1 false)
  %t345 = insertvalue { i64, ptr } undef, i64 %t341, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t344, 1
  %t349 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s14, ptr %s14, ptr %t324, { i64, ptr } %t346)
  store { i64, ptr } %t349, ptr %l167
  br label %bb69
bb69:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t352 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t353 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
  %t355 = extractvalue { i64, ptr } %t351, 1
  %t356 = extractvalue { i64, ptr } %t351, 0
  %t357 = add i64 %t353, %t356
  %t358 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d345, i32 0, i32 1) }, 1
  %t359 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d345, i32 0, i32 1) }, 0
  %t360 = add i64 %t357, %t359
  %t361 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t360)
  call void @olang_textcopy(ptr %t361, ptr %t352, i64 %t353)
  %t362 = getelementptr i8, ptr %t361, i64 %t353
  call void @olang_textcopy(ptr %t362, ptr %t355, i64 %t356)
  %t363 = getelementptr i8, ptr %t362, i64 %t356
  call void @olang_textcopy(ptr %t363, ptr %t358, i64 %t359)
  %t364 = insertvalue { i64, ptr } undef, i64 %t360, 0
  %t365 = insertvalue { i64, ptr } %t364, ptr %t361, 1
  %t367 = extractvalue { i64, ptr } %t365, 0
  %t368 = extractvalue { i64, ptr } %t365, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t369)
  call void @llvm.memcpy.p0.p0.i64(ptr %t370, ptr %t368, i64 %t369, i1 false)
  %t371 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t370, 1
  %t375 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s14, ptr %s14, ptr %t350, { i64, ptr } %t372)
  store { i64, ptr } %t375, ptr %l172
  br label %bb70
bb70:
  %t376 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t377 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t378 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t379 = extractvalue { i64, ptr } %t378, 1
  %t380 = extractvalue { i64, ptr } %t378, 0
  %t381 = add i64 %t377, %t380
  %t382 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t383 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t384 = add i64 %t381, %t383
  %t385 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t385, 1
  %t387 = extractvalue { i64, ptr } %t385, 0
  %t388 = add i64 %t384, %t387
  %t389 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t388)
  call void @olang_textcopy(ptr %t389, ptr %t376, i64 %t377)
  %t390 = getelementptr i8, ptr %t389, i64 %t377
  call void @olang_textcopy(ptr %t390, ptr %t379, i64 %t380)
  %t391 = getelementptr i8, ptr %t390, i64 %t380
  call void @olang_textcopy(ptr %t391, ptr %t382, i64 %t383)
  %t392 = getelementptr i8, ptr %t391, i64 %t383
  call void @olang_textcopy(ptr %t392, ptr %t386, i64 %t387)
  %t393 = insertvalue { i64, ptr } undef, i64 %t388, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t389, 1
  %t396 = extractvalue { i64, ptr } %t394, 0
  %t397 = extractvalue { i64, ptr } %t394, 1
  %t398 = mul i64 %t396, 1
  %t399 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t398)
  call void @llvm.memcpy.p0.p0.i64(ptr %t399, ptr %t397, i64 %t398, i1 false)
  %t400 = insertvalue { i64, ptr } undef, i64 %t396, 0
  %t401 = insertvalue { i64, ptr } %t400, ptr %t399, 1
  %t402 = load ptr, ptr %l162, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %t402, { i64, ptr } %t401)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s14)
  br label %bb79
bb72:
  br i1 true, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb78
bb75:
  store %olang.scope zeroinitializer, ptr %s18
  store ptr %l8, ptr %l175, !tbaa !29
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t405, ptr %l177, !tbaa !27
  %t406 = load i64, ptr %l23, !tbaa !24
  %t408 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !27
  %t410 = getelementptr i32, ptr %t409, i64 %t406
  %t411 = load i32, ptr %t410, !tbaa !33
  %t414 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s18, ptr %t404, i32 %t411)
  store { i64, ptr } %t414, ptr %l180
  br label %bb76
bb76:
  %t415 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t416 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t417 = extractvalue { i64, ptr } %t416, 1
  %t418 = extractvalue { i64, ptr } %t416, 0
  %t419 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t420 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
  %t421 = add i64 %t418, %t420
  %t423 = extractvalue { i64, ptr } %t415, 1
  %t424 = extractvalue { i64, ptr } %t415, 0
  %t425 = add i64 %t421, %t424
  %t426 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t425)
  call void @olang_textcopy(ptr %t426, ptr %t417, i64 %t418)
  %t427 = getelementptr i8, ptr %t426, i64 %t418
  call void @olang_textcopy(ptr %t427, ptr %t419, i64 %t420)
  %t428 = getelementptr i8, ptr %t427, i64 %t420
  call void @olang_textcopy(ptr %t428, ptr %t423, i64 %t424)
  %t429 = insertvalue { i64, ptr } undef, i64 %t425, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr %t426, 1
  %t432 = extractvalue { i64, ptr } %t430, 0
  %t433 = extractvalue { i64, ptr } %t430, 1
  %t434 = mul i64 %t432, 1
  %t435 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t434)
  call void @llvm.memcpy.p0.p0.i64(ptr %t435, ptr %t433, i64 %t434, i1 false)
  %t436 = insertvalue { i64, ptr } undef, i64 %t432, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t435, 1
  %t438 = load ptr, ptr %l175, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %t438, { i64, ptr } %t437)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s18)
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_51f36d50f4dfa9f9_6a3d5d7fb2ed60d)
  unreachable
bb79:
  call void @__olang_scope_close(ptr %s11)
  br label %bb80
bb80:
  %t440 = load i64, ptr %l22, !tbaa !24
  %t442 = add i64 %t440, 1
  store i64 %t442, ptr %l22, !tbaa !24
  br label %bb52
bb81:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/emit:fnEm", ptr %t444, i32 0, i32 14
  store i1 true, ptr %t446, !tbaa !21
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/emit:fnEm", ptr %t447, i32 0, i32 5
  %t450 = load { i64, ptr }, ptr @G_2ecompiler_2femit_2eBigCloseMark, !tbaa !27
  %t451 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %t451, ptr %t449, { i64, ptr } %t450)
  br label %bb82
bb82:
  %t454 = load ptr, ptr %l2, !tbaa !29
  %t455 = load i32, ptr %l3, !tbaa !23
  %t457 = inttoptr i64 0 to ptr
  %t460 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t457, ptr %t454, i32 %t455)
  store { i64, ptr } %t460, ptr %l193
  br label %bb83
bb83:
  %t461 = load { i64, ptr }, ptr %l193, !tbaa !27
  store { i64, ptr } %t461, ptr %l26, !tbaa !27
  %t462 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t464 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t462, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d349, i32 0, i32 1) })
  store i1 %t464, ptr %l195
  br label %bb84
bb84:
  %t465 = load i1, ptr %l195, !tbaa !21
  br i1 %t465, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s21
  %t466 = load ptr, ptr %l0, !tbaa !29
  store ptr %t466, ptr %l196, !tbaa !29
  %t467 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t467, ptr %l197, !tbaa !27
  %t469 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s21, ptr %l8)
  store { i64, ptr } %t469, ptr %l199
  br label %bb87
bb86:
  store %olang.scope zeroinitializer, ptr %s23
  %t470 = load ptr, ptr %l0, !tbaa !29
  store ptr %t470, ptr %l203, !tbaa !29
  %t471 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t471, ptr %l204, !tbaa !27
  %t472 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t472, ptr %l205, !tbaa !27
  %t474 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s23, ptr %l8)
  store { i64, ptr } %t474, ptr %l207
  br label %bb90
bb87:
  %t475 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t476 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t477 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t478 = extractvalue { i64, ptr } %t477, 1
  %t479 = extractvalue { i64, ptr } %t477, 0
  %t480 = add i64 %t476, %t479
  %t481 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t482 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t483 = add i64 %t480, %t482
  %t484 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t485 = extractvalue { i64, ptr } %t484, 1
  %t486 = extractvalue { i64, ptr } %t484, 0
  %t487 = add i64 %t483, %t486
  %t488 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t489 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
  %t490 = add i64 %t487, %t489
  %t491 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t490)
  call void @olang_textcopy(ptr %t491, ptr %t475, i64 %t476)
  %t492 = getelementptr i8, ptr %t491, i64 %t476
  call void @olang_textcopy(ptr %t492, ptr %t478, i64 %t479)
  %t493 = getelementptr i8, ptr %t492, i64 %t479
  call void @olang_textcopy(ptr %t493, ptr %t481, i64 %t482)
  %t494 = getelementptr i8, ptr %t493, i64 %t482
  call void @olang_textcopy(ptr %t494, ptr %t485, i64 %t486)
  %t495 = getelementptr i8, ptr %t494, i64 %t486
  call void @olang_textcopy(ptr %t495, ptr %t488, i64 %t489)
  %t496 = insertvalue { i64, ptr } undef, i64 %t490, 0
  %t497 = insertvalue { i64, ptr } %t496, ptr %t491, 1
  %t499 = extractvalue { i64, ptr } %t497, 0
  %t500 = extractvalue { i64, ptr } %t497, 1
  %t501 = mul i64 %t499, 1
  %t502 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t501)
  call void @llvm.memcpy.p0.p0.i64(ptr %t502, ptr %t500, i64 %t501, i1 false)
  %t503 = insertvalue { i64, ptr } undef, i64 %t499, 0
  %t504 = insertvalue { i64, ptr } %t503, ptr %t502, 1
  %t505 = load ptr, ptr %l196, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s21, ptr %t505, { i64, ptr } %t504)
  br label %bb88
bb88:
  %t507 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s21, ptr %t507, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d353, i32 0, i32 1) })
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s21)
  br label %bb93
bb90:
  %t509 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t510 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
  %t511 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 1
  %t513 = extractvalue { i64, ptr } %t511, 0
  %t514 = add i64 %t510, %t513
  %t515 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d355, i32 0, i32 1) }, 1
  %t516 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d355, i32 0, i32 1) }, 0
  %t517 = add i64 %t514, %t516
  %t518 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t519 = extractvalue { i64, ptr } %t518, 1
  %t520 = extractvalue { i64, ptr } %t518, 0
  %t521 = add i64 %t517, %t520
  %t522 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d356, i32 0, i32 1) }, 1
  %t523 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d356, i32 0, i32 1) }, 0
  %t524 = add i64 %t521, %t523
  %t525 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t526 = extractvalue { i64, ptr } %t525, 1
  %t527 = extractvalue { i64, ptr } %t525, 0
  %t528 = add i64 %t524, %t527
  %t529 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d357, i32 0, i32 1) }, 1
  %t530 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d357, i32 0, i32 1) }, 0
  %t531 = add i64 %t528, %t530
  %t532 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t531)
  call void @olang_textcopy(ptr %t532, ptr %t509, i64 %t510)
  %t533 = getelementptr i8, ptr %t532, i64 %t510
  call void @olang_textcopy(ptr %t533, ptr %t512, i64 %t513)
  %t534 = getelementptr i8, ptr %t533, i64 %t513
  call void @olang_textcopy(ptr %t534, ptr %t515, i64 %t516)
  %t535 = getelementptr i8, ptr %t534, i64 %t516
  call void @olang_textcopy(ptr %t535, ptr %t519, i64 %t520)
  %t536 = getelementptr i8, ptr %t535, i64 %t520
  call void @olang_textcopy(ptr %t536, ptr %t522, i64 %t523)
  %t537 = getelementptr i8, ptr %t536, i64 %t523
  call void @olang_textcopy(ptr %t537, ptr %t526, i64 %t527)
  %t538 = getelementptr i8, ptr %t537, i64 %t527
  call void @olang_textcopy(ptr %t538, ptr %t529, i64 %t530)
  %t539 = insertvalue { i64, ptr } undef, i64 %t531, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t532, 1
  %t542 = extractvalue { i64, ptr } %t540, 0
  %t543 = extractvalue { i64, ptr } %t540, 1
  %t544 = mul i64 %t542, 1
  %t545 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t544)
  call void @llvm.memcpy.p0.p0.i64(ptr %t545, ptr %t543, i64 %t544, i1 false)
  %t546 = insertvalue { i64, ptr } undef, i64 %t542, 0
  %t547 = insertvalue { i64, ptr } %t546, ptr %t545, 1
  %t548 = load ptr, ptr %l203, !tbaa !29
  %t550 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s23, ptr %s23, ptr %t548, { i64, ptr } %t547)
  store { i64, ptr } %t550, ptr %l210
  br label %bb91
bb91:
  %t551 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t553 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t555 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d358, i32 0, i32 1) }, 1
  %t556 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d358, i32 0, i32 1) }, 0
  %t558 = extractvalue { i64, ptr } %t553, 1
  %t559 = extractvalue { i64, ptr } %t553, 0
  %t560 = add i64 %t556, %t559
  %t561 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d359, i32 0, i32 1) }, 1
  %t562 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d359, i32 0, i32 1) }, 0
  %t563 = add i64 %t560, %t562
  %t565 = extractvalue { i64, ptr } %t551, 1
  %t566 = extractvalue { i64, ptr } %t551, 0
  %t567 = add i64 %t563, %t566
  %t568 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t567)
  call void @olang_textcopy(ptr %t568, ptr %t555, i64 %t556)
  %t569 = getelementptr i8, ptr %t568, i64 %t556
  call void @olang_textcopy(ptr %t569, ptr %t558, i64 %t559)
  %t570 = getelementptr i8, ptr %t569, i64 %t559
  call void @olang_textcopy(ptr %t570, ptr %t561, i64 %t562)
  %t571 = getelementptr i8, ptr %t570, i64 %t562
  call void @olang_textcopy(ptr %t571, ptr %t565, i64 %t566)
  %t572 = insertvalue { i64, ptr } undef, i64 %t567, 0
  %t573 = insertvalue { i64, ptr } %t572, ptr %t568, 1
  %t575 = extractvalue { i64, ptr } %t573, 0
  %t576 = extractvalue { i64, ptr } %t573, 1
  %t577 = mul i64 %t575, 1
  %t578 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t577)
  call void @llvm.memcpy.p0.p0.i64(ptr %t578, ptr %t576, i64 %t577, i1 false)
  %t579 = insertvalue { i64, ptr } undef, i64 %t575, 0
  %t580 = insertvalue { i64, ptr } %t579, ptr %t578, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s23, ptr %t552, { i64, ptr } %t580)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s23)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskOld(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/mir:Task" %a2, i64 %a3) #0 {
entry:
  %l2 = alloca %"compiler/mir:Task"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l39 = alloca i1
  %s2 = alloca %olang.scope
  store %"compiler/mir:Task" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l4, !tbaa !23
  %t1 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 3
  %t2 = getelementptr %"compiler/mir:Range", ptr %t1, i32 0, i32 1
  %t3 = load i32, ptr %t2, !tbaa !23
  store i32 %t3, ptr %l5, !tbaa !23
  store i32 1, ptr %l6, !tbaa !23
  %t5 = load i32, ptr %l5, !tbaa !23
  %t6 = load i32, ptr %l4, !tbaa !23
  %t9 = icmp sgt i32 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i32, ptr %l6, !tbaa !23
  %t13 = icmp sgt i32 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l14, !tbaa !23
  br label %bb6
bb3:
  %t15 = load i32, ptr %l5, !tbaa !23
  %t16 = load i32, ptr %l4, !tbaa !23
  %t19 = sub i32 %t15, %t16
  %t20 = load i32, ptr %l6, !tbaa !23
  %t23 = add i32 %t19, %t20
  %t25 = sub i32 %t23, 1
  %t26 = load i32, ptr %l6, !tbaa !23
  %t29 = sdiv i32 %t25, %t26
  store i32 %t29, ptr %l17, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l17, !tbaa !23
  br label %bb5
bb5:
  %t31 = load i32, ptr %l17, !tbaa !23
  store i32 %t31, ptr %l14, !tbaa !23
  br label %bb6
bb6:
  %t32 = load i32, ptr %l14, !tbaa !23
  store i32 %t32, ptr %l7, !tbaa !23
  store i32 0, ptr %l8, !tbaa !23
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i32, ptr %l8, !tbaa !23
  %t34 = load i32, ptr %l7, !tbaa !23
  %t37 = icmp slt i32 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t41 = load i32, ptr %l4, !tbaa !23
  %t42 = load i32, ptr %l8, !tbaa !23
  %t43 = load i32, ptr %l6, !tbaa !23
  %t46 = mul i32 %t42, %t43
  %t49 = add i32 %t41, %t46
  store i32 %t49, ptr %l9, !tbaa !23
  %t52 = load %"compiler/mir:Task", ptr %l2
  %t53 = load i32, ptr %l9, !tbaa !23
  %t55 = sext i32 %t53 to i64
  %t59 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2evalueTarget(ptr %v0, ptr %a0, %"compiler/mir:Task" %t52, i64 %t55)
  store i1 %t59, ptr %l39
  br label %bb11
bb11:
  %t60 = load i1, ptr %l39, !tbaa !21
  %t61 = xor i1 %t60, true
  br i1 %t61, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t64 = load i32, ptr %l9, !tbaa !23
  %t66 = load i32, ptr %l9, !tbaa !23
  %t68 = sext i32 %t66 to i64
  %t71 = add i64 %a3, %t68
  %t72 = load i32, ptr %l9, !tbaa !23
  %t73 = load i32, ptr %l9, !tbaa !23
  %t74 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d360, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d360, i32 0, i32 1) }, 0
  %t77 = sext i32 %t64 to i64
  %t78 = call i64 @__olang_fmt_i64(ptr null, i64 %t77)
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t84 = call i64 @__olang_fmt_i64(ptr null, i64 %t71)
  %t85 = add i64 %t82, %t84
  %t86 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d362, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d362, i32 0, i32 1) }, 0
  %t88 = add i64 %t85, %t87
  %t90 = sext i32 %t72 to i64
  %t91 = call i64 @__olang_fmt_i64(ptr null, i64 %t90)
  %t92 = add i64 %t88, %t91
  %t93 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d363, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d363, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t97 = sext i32 %t73 to i64
  %t98 = call i64 @__olang_fmt_i64(ptr null, i64 %t97)
  %t99 = add i64 %t95, %t98
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d364, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d364, i32 0, i32 1) }, 0
  %t102 = add i64 %t99, %t101
  %t103 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t102)
  call void @olang_textcopy(ptr %t103, ptr %t74, i64 %t75)
  %t104 = getelementptr i8, ptr %t103, i64 %t75
  %t105 = call i64 @__olang_fmt_i64(ptr %t104, i64 %t77)
  %t106 = getelementptr i8, ptr %t104, i64 %t78
  call void @olang_textcopy(ptr %t106, ptr %t80, i64 %t81)
  %t107 = getelementptr i8, ptr %t106, i64 %t81
  %t108 = call i64 @__olang_fmt_i64(ptr %t107, i64 %t71)
  %t109 = getelementptr i8, ptr %t107, i64 %t84
  call void @olang_textcopy(ptr %t109, ptr %t86, i64 %t87)
  %t110 = getelementptr i8, ptr %t109, i64 %t87
  %t111 = call i64 @__olang_fmt_i64(ptr %t110, i64 %t90)
  %t112 = getelementptr i8, ptr %t110, i64 %t91
  call void @olang_textcopy(ptr %t112, ptr %t93, i64 %t94)
  %t113 = getelementptr i8, ptr %t112, i64 %t94
  %t114 = call i64 @__olang_fmt_i64(ptr %t113, i64 %t97)
  %t115 = getelementptr i8, ptr %t113, i64 %t98
  call void @olang_textcopy(ptr %t115, ptr %t100, i64 %t101)
  %t116 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t103, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = extractvalue { i64, ptr } %t117, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %a1, { i64, ptr } %t124)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t127 = load i32, ptr %l8, !tbaa !23
  %t129 = add i32 %t127, 1
  store i32 %t129, ptr %l8, !tbaa !23
  br label %bb7
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i32
  %l7 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:scopeUse", ptr %t10, i32 0, i32 0
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l7, !tbaa !27
  %t14 = load i32, ptr %l2, !tbaa !23
  %t16 = sext i32 %t14 to i64
  %t18 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i1, ptr %t19, i64 %t16
  store i1 true, ptr %t20, !tbaa !31
  br label %bb13
bb4:
  %t21 = load { i64, [1 x i64] }, ptr %l1
  %t23 = extractvalue { i64, [1 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 3
  br i1 %t24, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/emit:scopeUse", ptr %t26, i32 0, i32 1
  store i1 true, ptr %t28, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_768bb04516f7a838_2f20b6e41bd1e874)
  unreachable
bb13:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2femit_2estmtSpan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i1
  %l103 = alloca ptr
  %l104 = alloca i1
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 16}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [21 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  br label %bb17
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t17 = load ptr, ptr %l14, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 16}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [21 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32 }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l1
  br label %bb17
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 16}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [21 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32 }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l1
  br label %bb17
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 16}
  %t53 = icmp eq i64 %t51, 3
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l27, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [21 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32 }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l1
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t61, ptr %l7
  br label %bb77
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l33, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 16}
  %t70 = icmp eq i64 %t68, 4
  store i1 %t70, ptr %l34, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l34, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [21 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32 }, ptr %t74, i32 0, i32 0
  %t76 = load %"compiler/source:Span", ptr %t75
  store %"compiler/source:Span" %t76, ptr %l2
  br label %bb31
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t79 = load ptr, ptr %l39, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l39, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 16}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l40, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l40, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [21 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l2
  br label %bb31
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t94 = load ptr, ptr %l45, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t97 = load ptr, ptr %l45, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 16}
  %t100 = icmp eq i64 %t98, 6
  store i1 %t100, ptr %l46, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l46, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [21 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t104, i32 0, i32 0
  %t106 = load %"compiler/source:Span", ptr %t105
  store %"compiler/source:Span" %t106, ptr %l2
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t108 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t108, ptr %l7
  br label %bb77
bb32:
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t111 = load ptr, ptr %l52, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb33, label %bb34
bb33:
  %t114 = load ptr, ptr %l52, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 16}
  %t117 = icmp eq i64 %t115, 7
  store i1 %t117, ptr %l53, !tbaa !21
  br label %bb34
bb34:
  %t118 = load i1, ptr %l53, !tbaa !21
  br i1 %t118, label %bb35, label %bb36
bb35:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr { i64, [21 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t121, i32 0, i32 0
  %t123 = load %"compiler/source:Span", ptr %t122
  store %"compiler/source:Span" %t123, ptr %l3
  br label %bb41
bb36:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t126 = load ptr, ptr %l58, !tbaa !29
  %t127 = icmp ne ptr %t126, null
  br i1 %t127, label %bb37, label %bb38
bb37:
  %t129 = load ptr, ptr %l58, !tbaa !29
  %t130 = load i64, ptr %t129, !range !{i64 0, i64 16}
  %t132 = icmp eq i64 %t130, 8
  store i1 %t132, ptr %l59, !tbaa !21
  br label %bb38
bb38:
  %t133 = load i1, ptr %l59, !tbaa !21
  br i1 %t133, label %bb39, label %bb40
bb39:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr { i64, [21 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t136, i32 0, i32 0
  %t138 = load %"compiler/source:Span", ptr %t137
  store %"compiler/source:Span" %t138, ptr %l3
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t140 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t140, ptr %l7
  br label %bb77
bb42:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t143 = load ptr, ptr %l65, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb43, label %bb44
bb43:
  %t146 = load ptr, ptr %l65, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 16}
  %t149 = icmp eq i64 %t147, 9
  store i1 %t149, ptr %l66, !tbaa !21
  br label %bb44
bb44:
  %t150 = load i1, ptr %l66, !tbaa !21
  br i1 %t150, label %bb45, label %bb46
bb45:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr { i64, [21 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t153, i32 0, i32 0
  %t155 = load %"compiler/source:Span", ptr %t154
  store %"compiler/source:Span" %t155, ptr %l4
  br label %bb55
bb46:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t158 = load ptr, ptr %l71, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb47, label %bb48
bb47:
  %t161 = load ptr, ptr %l71, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 16}
  %t164 = icmp eq i64 %t162, 10
  store i1 %t164, ptr %l72, !tbaa !21
  br label %bb48
bb48:
  %t165 = load i1, ptr %l72, !tbaa !21
  br i1 %t165, label %bb49, label %bb50
bb49:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr { i64, [21 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t168, i32 0, i32 0
  %t170 = load %"compiler/source:Span", ptr %t169
  store %"compiler/source:Span" %t170, ptr %l4
  br label %bb55
bb50:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t173 = load ptr, ptr %l77, !tbaa !29
  %t174 = icmp ne ptr %t173, null
  br i1 %t174, label %bb51, label %bb52
bb51:
  %t176 = load ptr, ptr %l77, !tbaa !29
  %t177 = load i64, ptr %t176, !range !{i64 0, i64 16}
  %t179 = icmp eq i64 %t177, 11
  store i1 %t179, ptr %l78, !tbaa !21
  br label %bb52
bb52:
  %t180 = load i1, ptr %l78, !tbaa !21
  br i1 %t180, label %bb53, label %bb54
bb53:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr { i64, [21 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span" }, ptr %t183, i32 0, i32 0
  %t185 = load %"compiler/source:Span", ptr %t184
  store %"compiler/source:Span" %t185, ptr %l4
  br label %bb55
bb54:
  br label %bb56
bb55:
  %t187 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t187, ptr %l7
  br label %bb77
bb56:
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t190 = load ptr, ptr %l84, !tbaa !29
  %t191 = icmp ne ptr %t190, null
  br i1 %t191, label %bb57, label %bb58
bb57:
  %t193 = load ptr, ptr %l84, !tbaa !29
  %t194 = load i64, ptr %t193, !range !{i64 0, i64 16}
  %t196 = icmp eq i64 %t194, 15
  store i1 %t196, ptr %l85, !tbaa !21
  br label %bb58
bb58:
  %t197 = load i1, ptr %l85, !tbaa !21
  br i1 %t197, label %bb59, label %bb60
bb59:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr { i64, [21 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t200, i32 0, i32 0
  %t202 = load %"compiler/source:Span", ptr %t201
  store %"compiler/source:Span" %t202, ptr %l5
  br label %bb69
bb60:
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t205 = load ptr, ptr %l90, !tbaa !29
  %t206 = icmp ne ptr %t205, null
  br i1 %t206, label %bb61, label %bb62
bb61:
  %t208 = load ptr, ptr %l90, !tbaa !29
  %t209 = load i64, ptr %t208, !range !{i64 0, i64 16}
  %t211 = icmp eq i64 %t209, 12
  store i1 %t211, ptr %l91, !tbaa !21
  br label %bb62
bb62:
  %t212 = load i1, ptr %l91, !tbaa !21
  br i1 %t212, label %bb63, label %bb64
bb63:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr { i64, [21 x i64] }, ptr %t213, i32 0, i32 1
  %t216 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t215, i32 0, i32 0
  %t217 = load %"compiler/source:Span", ptr %t216
  store %"compiler/source:Span" %t217, ptr %l5
  br label %bb69
bb64:
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l96, !tbaa !29
  store i1 false, ptr %l97, !tbaa !21
  %t220 = load ptr, ptr %l96, !tbaa !29
  %t221 = icmp ne ptr %t220, null
  br i1 %t221, label %bb65, label %bb66
bb65:
  %t223 = load ptr, ptr %l96, !tbaa !29
  %t224 = load i64, ptr %t223, !range !{i64 0, i64 16}
  %t226 = icmp eq i64 %t224, 13
  store i1 %t226, ptr %l97, !tbaa !21
  br label %bb66
bb66:
  %t227 = load i1, ptr %l97, !tbaa !21
  br i1 %t227, label %bb67, label %bb68
bb67:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr { i64, [21 x i64] }, ptr %t228, i32 0, i32 1
  %t231 = getelementptr { %"compiler/source:Span" }, ptr %t230, i32 0, i32 0
  %t232 = load %"compiler/source:Span", ptr %t231
  store %"compiler/source:Span" %t232, ptr %l5
  br label %bb69
bb68:
  br label %bb70
bb69:
  %t234 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t234, ptr %l7
  br label %bb77
bb70:
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l103, !tbaa !29
  store i1 false, ptr %l104, !tbaa !21
  %t237 = load ptr, ptr %l103, !tbaa !29
  %t238 = icmp ne ptr %t237, null
  br i1 %t238, label %bb71, label %bb72
bb71:
  %t240 = load ptr, ptr %l103, !tbaa !29
  %t241 = load i64, ptr %t240, !range !{i64 0, i64 16}
  %t243 = icmp eq i64 %t241, 14
  store i1 %t243, ptr %l104, !tbaa !21
  br label %bb72
bb72:
  %t244 = load i1, ptr %l104, !tbaa !21
  br i1 %t244, label %bb73, label %bb74
bb73:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr { i64, [21 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t247, i32 0, i32 0
  %t249 = load %"compiler/source:Span", ptr %t248
  store %"compiler/source:Span" %t249, ptr %l6
  br label %bb75
bb74:
  br label %bb76
bb75:
  %t251 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t251, ptr %l7
  br label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_f86c3108d396390c_a897abfaa875b378)
  unreachable
bb77:
  %t253 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t253, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2femit_2etermSpan({ i64, [8 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [8 x i64] }
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l24 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store { i64, [8 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [8 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [8 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [8 x i64] }, ptr %l0, i32 0, i32 1
  %t7 = getelementptr { %"compiler/source:Span", i32 }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/source:Span", ptr %t7
  store %"compiler/source:Span" %t8, ptr %l1
  br label %bb7
bb2:
  %t10 = load { i64, [8 x i64] }, ptr %l0
  %t12 = extractvalue { i64, [8 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 5
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, [8 x i64] }, ptr %l0, i32 0, i32 1
  %t16 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t15, i32 0, i32 0
  %t17 = load %"compiler/source:Span", ptr %t16
  store %"compiler/source:Span" %t17, ptr %l1
  br label %bb7
bb4:
  %t19 = load { i64, [8 x i64] }, ptr %l0
  %t21 = extractvalue { i64, [8 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 7
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = getelementptr { i64, [8 x i64] }, ptr %l0, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t24, i32 0, i32 0
  %t26 = load %"compiler/source:Span", ptr %t25
  store %"compiler/source:Span" %t26, ptr %l1
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t28 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t28, ptr %l3
  br label %bb22
bb8:
  %t30 = load { i64, [8 x i64] }, ptr %l0
  %t32 = extractvalue { i64, [8 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 8
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = getelementptr { i64, [8 x i64] }, ptr %l0, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t35, i32 0, i32 0
  %t37 = load %"compiler/source:Span", ptr %t36
  store %"compiler/source:Span" %t37, ptr %l2
  br label %bb15
bb10:
  %t39 = load { i64, [8 x i64] }, ptr %l0
  %t41 = extractvalue { i64, [8 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 9
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = getelementptr { i64, [8 x i64] }, ptr %l0, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t44, i32 0, i32 0
  %t46 = load %"compiler/source:Span", ptr %t45
  store %"compiler/source:Span" %t46, ptr %l2
  br label %bb15
bb12:
  %t48 = load { i64, [8 x i64] }, ptr %l0
  %t50 = extractvalue { i64, [8 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 6
  br i1 %t51, label %bb13, label %bb14
bb13:
  %t53 = getelementptr { i64, [8 x i64] }, ptr %l0, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32 }, ptr %t53, i32 0, i32 0
  %t55 = load %"compiler/source:Span", ptr %t54
  store %"compiler/source:Span" %t55, ptr %l2
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t57 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t57, ptr %l3
  br label %bb22
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t59 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t59, ptr %l24
  br label %bb20
bb20:
  %t60 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t60, ptr %l3
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_a69d5bfe0a165b0_62b4fff2e0b246dc)
  unreachable
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t61 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t61, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"bb" }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d1 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" = type " }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2fcabi_3aWay_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fcabi_3aWay_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcabi_3aWay_2e3 = weak hidden constant i1 false
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2fcabi_3aWay_2e4 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d4 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ptr sret(" }>, align 8
@.d5 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c") align " }>, align 8
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" %sret" }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%p" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i64 " }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"n" }>, align 8
@.d11 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"insertvalue { i64, ptr } undef, i64 " }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"n, 0" }>, align 8
@.d13 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"insertvalue { i64, ptr } " }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d16 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"{ i64, ptr } " }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d25 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d28 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d29 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d30 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" alignstack(8)" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ptr byval(" }>, align 8
@.d35 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c") align " }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d37 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d38 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d41 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr %buf" }>, align 8
@.d42 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"i64 %cap" }>, align 8
@.d43 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr %len" }>, align 8
@.d44 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr %res" }>, align 8
@.d45 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"__olang_self" }>, align 8
@.d46 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"@__olang_self = external thread_local(initialexec) global ptr" }>, align 8
@.d47 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_thread_enter" }>, align 8
@.d48 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_close" }>, align 8
@.d49 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"load ptr, ptr @__olang_self" }>, align 8
@.d50 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq ptr " }>, align 8
@.d51 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", null" }>, align 8
@.d52 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d53 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", label %enter, label %go" }>, align 8
@.d54 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"enter:\0A" }>, align 8
@.d55 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"call void @__olang_thread_enter()" }>, align 8
@.d56 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"br label %go" }>, align 8
@.d57 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"go:\0A" }>, align 8
@.d58 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"%olang.scope" }>, align 8
@.d59 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"%olang.scope" }>, align 8
@.d60 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d61 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d62 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d63 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d64 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr null" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d67 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d68 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"call void @" }>, align 8
@.d69 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d71 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d76 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d78 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d80 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d81 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d82 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d84 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d85 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d86 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d87 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d88 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp ne i32 " }>, align 8
@.d89 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d90 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d91 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c", label %failed, label %done" }>, align 8
@.d92 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"failed:\0A" }>, align 8
@.d93 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"call void @__olang_scope_close(ptr " }>, align 8
@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d95 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"xp" }>, align 8
@.d96 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d97 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_errpay_pop" }>, align 8
@.d98 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d99 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c", label %xpyes, label %xpno" }>, align 8
@.d100 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"xpyes:\0A" }>, align 8
@.d101 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call void @__olang_errpay_pop()" }>, align 8
@.d102 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"br label %xpno" }>, align 8
@.d103 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"xpno:\0A" }>, align 8
@.d104 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret i32 " }>, align 8
@.d105 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"done:\0A" }>, align 8
@.d106 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d107 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d108 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d109 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d110 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"icmp slt i64 %cap, " }>, align 8
@.d111 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d112 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", i64 %cap, i64 " }>, align 8
@.d113 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"icmp sgt i64 " }>, align 8
@.d114 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d115 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d116 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d117 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", i64 0" }>, align 8
@.d118 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"mul i64 " }>, align 8
@.d119 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d120 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"llvm.memmove.p0.p0.i64" }>, align 8
@.d121 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d122 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"call void @llvm.memmove.p0.p0.i64(ptr %buf, ptr " }>, align 8
@.d123 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d124 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i1 false)" }>, align 8
@.d125 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d126 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"%len" }>, align 8
@.d127 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i64 " }>, align 8
@.d128 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"i32 0" }>, align 8
@.d129 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"%res" }>, align 8
@.d130 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"i32 0" }>, align 8
@.d131 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define linkonce_odr %"compiler/cabi:Way" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcabi_3aWay(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/cabi:Way"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/cabi:Way"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/cabi:Way", ptr %a0
  store %"compiler/cabi:Way" %t2, ptr %l1
  %t3 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/cabi:Way", ptr %l1
  store %"compiler/cabi:Way" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cabi:Way", ptr %rv
  ret %"compiler/cabi:Way" %rr
}

@.d132 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"%sret" }>, align 8
@.d133 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"call void @__olang_scope_close(ptr " }>, align 8
@.d134 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d135 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d136 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d137 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d138 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d139 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d140 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d141 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d142 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d143 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d144 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d145 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d146 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d147 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d148 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d149 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c") #0 {\0Aentry:\0A" }>, align 8
@.d150 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"}\0A\0A" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d151 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d152 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"; olang - emitted by the self-hosted compiler (compiler/emit.olang)\0Atarget triple = \22" }>, align 8
@.d153 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\22\0A\0A" }>, align 8
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

@.d154 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-t" }>, align 8
@.d155 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@olang_2esole_2ecompiler_2femit_3aObject_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aObject_2e2 = weak hidden constant i1 false
@.d156 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-i" }>, align 8
@.d157 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@.d158 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".lambda." }>, align 8
@.d159 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang_textcopy" }>, align 8
@.d160 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"llvm.memcpy.p0.p0.i64" }>, align 8
@.d161 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d162 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"define linkonce_odr hidden void @olang_textcopy(ptr %d, ptr %s, i64 %n) alwaysinline {\0Aentry:\0A" }>, align 8
@.d163 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"  %big = icmp ugt i64 %n, 16\0A  br i1 %big, label %call, label %s8\0A" }>, align 8
@.d164 = private constant <{ i64, [86 x i8] }> <{ i64 0, [86 x i8] c"call:\0A  call void @llvm.memcpy.p0.p0.i64(ptr %d, ptr %s, i64 %n, i1 false)\0A  ret void\0A" }>, align 8
@.d165 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"s8:\0A  %ge8 = icmp uge i64 %n, 8\0A  br i1 %ge8, label %w8, label %s4\0A" }>, align 8
@.d166 = private constant <{ i64, [103 x i8] }> <{ i64 0, [103 x i8] c"w8:\0A  %e8 = sub i64 %n, 8\0A  %a8 = load i64, ptr %s, align 1\0A  %sb8 = getelementptr i8, ptr %s, i64 %e8\0A" }>, align 8
@.d167 = private constant <{ i64, [112 x i8] }> <{ i64 0, [112 x i8] c"  %b8 = load i64, ptr %sb8, align 1\0A  store i64 %a8, ptr %d, align 1\0A  %db8 = getelementptr i8, ptr %d, i64 %e8\0A" }>, align 8
@.d168 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"  store i64 %b8, ptr %db8, align 1\0A  ret void\0A" }>, align 8
@.d169 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"s4:\0A  %ge4 = icmp uge i64 %n, 4\0A  br i1 %ge4, label %w4, label %s1\0A" }>, align 8
@.d170 = private constant <{ i64, [103 x i8] }> <{ i64 0, [103 x i8] c"w4:\0A  %e4 = sub i64 %n, 4\0A  %a4 = load i32, ptr %s, align 1\0A  %sb4 = getelementptr i8, ptr %s, i64 %e4\0A" }>, align 8
@.d171 = private constant <{ i64, [112 x i8] }> <{ i64 0, [112 x i8] c"  %b4 = load i32, ptr %sb4, align 1\0A  store i32 %a4, ptr %d, align 1\0A  %db4 = getelementptr i8, ptr %d, i64 %e4\0A" }>, align 8
@.d172 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"  store i32 %b4, ptr %db4, align 1\0A  ret void\0A" }>, align 8
@.d173 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"s1:\0A  %none = icmp eq i64 %n, 0\0A  br i1 %none, label %done, label %w1\0A" }>, align 8
@.d174 = private constant <{ i64, [113 x i8] }> <{ i64 0, [113 x i8] c"w1:\0A  %h = lshr i64 %n, 1\0A  %e1 = sub i64 %n, 1\0A  %a1 = load i8, ptr %s\0A  %sh = getelementptr i8, ptr %s, i64 %h\0A" }>, align 8
@.d175 = private constant <{ i64, [115 x i8] }> <{ i64 0, [115 x i8] c"  %m1 = load i8, ptr %sh\0A  %se = getelementptr i8, ptr %s, i64 %e1\0A  %z1 = load i8, ptr %se\0A  store i8 %a1, ptr %d\0A" }>, align 8
@.d176 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"  %dh = getelementptr i8, ptr %d, i64 %h\0A  store i8 %m1, ptr %dh\0A  %de = getelementptr i8, ptr %d, i64 %e1\0A" }>, align 8
@.d177 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"  store i8 %z1, ptr %de\0A  br label %done\0Adone:\0A  ret void\0A}\0A" }>, align 8
@.d178 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang_textcopy" }>, align 8
@.d179 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d180 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d181 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i64 0, i64 " }>, align 8
@.d182 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d183 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d184 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
@.d185 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d186 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d187 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d188 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d189 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d190 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d191 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d192 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d193 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d194 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d195 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i64 4, i64 5" }>, align 8
@.d196 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i128" }>, align 8
@.d197 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d198 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"__olang_fmt_u" }>, align 8
@.d199 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"__olang_fmt_i" }>, align 8
@.d200 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call i64 @" }>, align 8
@.d201 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"(ptr null, " }>, align 8
@.d202 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d203 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d204 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"add i64 " }>, align 8
@.d205 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d206 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_alloc" }>, align 8
@.d207 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call ptr @__olang_scope_alloc(ptr " }>, align 8
@.d208 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d209 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d210 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i8" }>, align 8
@.d211 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"128" }>, align 8
@.d212 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i128" }>, align 8
@.d213 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d214 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call i64 @" }>, align 8
@.d215 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr " }>, align 8
@.d216 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d217 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d218 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d219 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call void @olang_textcopy(ptr " }>, align 8
@.d220 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d221 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d222 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d223 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d224 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d225 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d226 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d227 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d228 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { ptr, ptr } " }>, align 8
@.d229 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d230 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { ptr, ptr } " }>, align 8
@.d231 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d232 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d233 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d234 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d235 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d236 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_gen_count" }>, align 8
@.d237 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d238 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"call void @__olang_gen_count(ptr " }>, align 8
@.d239 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d240 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d241 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"getelementptr { i64, ptr }, ptr " }>, align 8
@.d242 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 0" }>, align 8
@.d243 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d244 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d245 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d246 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
@.d247 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"gc" }>, align 8
@.d248 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"gc" }>, align 8
@.d249 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"gc" }>, align 8
@.d250 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"gc" }>, align 8
@.d251 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"gc" }>, align 8
@.d252 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d253 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d254 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" = phi i64 [ 0, %" }>, align 8
@.d255 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" ], [ " }>, align 8
@.d256 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", %" }>, align 8
@.d257 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ]" }>, align 8
@.d258 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"icmp slt i64 " }>, align 8
@.d259 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d260 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d261 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", label %" }>, align 8
@.d262 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d263 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d264 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" = add i64 " }>, align 8
@.d265 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d266 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d267 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d268 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d269 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d270 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"~" }>, align 8
@.d271 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"olang_loc_" }>, align 8
@.d272 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d273 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d274 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" = weak_odr constant [" }>, align 8
@.d275 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" x i8] c\22" }>, align 8
@.d276 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\5C00\22\0A" }>, align 8
@.d277 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d278 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" = external constant [0 x i8]\0A" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
@.d279 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d280 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d281 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"llvm." }>, align 8
@.d282 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d283 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d284 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d285 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d286 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d287 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d288 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d289 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d290 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d291 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d292 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d293 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d294 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d295 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"llvm." }>, align 8
@.d296 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"shl.sat." }>, align 8
@.d297 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d298 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d299 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d300 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d301 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d302 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d303 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d304 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d305 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d306 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d307 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"llvm." }>, align 8
@.d308 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"mul.fix.sat." }>, align 8
@.d309 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d310 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d311 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d312 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i32)" }>, align 8
@.d313 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d314 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d315 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d316 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d317 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d318 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i32 0)" }>, align 8
@.d319 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"add" }>, align 8
@.d320 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"sub" }>, align 8
@.d321 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"llvm." }>, align 8
@.d322 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".sat." }>, align 8
@.d323 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d324 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d325 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d326 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d327 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d328 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d329 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d330 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d331 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d332 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d333 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d334 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d335 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"a become's call of a function with an environment" }>, align 8
@.d336 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"a become's call of anything but a function" }>, align 8
@.d337 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unreachable" }>, align 8
@.d338 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d339 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d340 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d341 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a become's argument passed through memory" }>, align 8
@.d342 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { ptr, ptr } " }>, align 8
@.d343 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d344 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { ptr, ptr } " }>, align 8
@.d345 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d346 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d347 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d348 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d349 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d350 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"musttail call void " }>, align 8
@.d351 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d352 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d353 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret void" }>, align 8
@.d354 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"musttail call " }>, align 8
@.d355 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d356 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d357 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d358 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d359 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d360 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %od" }>, align 8
@.d361 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = load ptr, ptr %f" }>, align 8
@.d362 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"\0A  %old" }>, align 8
@.d363 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" = load { i64, ptr }, ptr %od" }>, align 8
@.d364 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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

declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntimeItems(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eindex(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereusing(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereusedReachRoot(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ca7da4b07cdf4cec_48bb1648ef269dd0 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebakedStorage(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclared(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_3d03f0fa145d919d_fe5358f320913361 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalOrder(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efunction(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ethunk(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efvAdapter(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edtorThunk(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eharness(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2elibInit(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eentry(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eStructBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_24ee18a055135b85_75efa4b71c475aa9 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_70000d3e005ea498_c6a0fd2b538569fc = external constant [0 x i8]
@olang_loc_8dd51a70be22f844_db8bd8df095848b0 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2femit_3afnEm_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportArrayResult(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i32 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3, { i64, ptr } %a4)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, ptr %a3)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_ce3f793afe7e8735_eee0e2f7e7e28841 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2earrayOfE(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDerivedN(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecarriesText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eExportErrors(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2erecode(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i32 %a3)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epartsResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/cabi:Way" %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_9000b3cdde9de97e_540aa7fc20a2aa2a = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_882423aaa1f01f7f_b9c3af967e36d8eb = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2femit_2eHomeInst = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeHome(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2femit_2eHomeLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_884b1f134ce8f58_4f25fcbaf6ee0184 = external constant [0 x i8]
@G_2ecompiler_2femit_2eHomeShared = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_77c745ca54276229_8072b8e8f7d66d75 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3aLowerer_2eInitModules(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2evisit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupOf(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eassemble(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, i1 %a2, i64 %a3, i64 %a4, ptr %a5, i64 %a6, ptr %a7, i64 %a8)
declare %"compiler/emit:Object" @compiler_2femit_3aObject_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2ePush_3ccompiler_2femit_3aObject_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/emit:Object" %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2elocations(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2erefsIn(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eSetAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_36aaf5158ca695b4_8b28a996a10625c0 = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etbaa(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, ptr } %a4)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecopyArrayIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_2b2f6fb90634cfa0_5bc60e788a752af4 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eLen_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0)
@olang_loc_cf8290f43b8cf4bf_3d9bfdc06546f1cb = external constant [0 x i8]
@olang_loc_1966eb58572a69ea_7a4114e6fad4d136 = external constant [0 x i8]
@olang_loc_bd6810f345301629_3cfdb4c124b61655 = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2eAt_3ccompiler_2fmir_3aWriteKind_3e(ptr %v0, ptr %a0, i64 %a1)
declare { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eextend(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, i1 %a4)
@olang_loc_9e47d22410206b14_1676530151cfc818 = external constant [0 x i8]
@olang_loc_36259d98e89c0794_c7f2b7595dd9f9a0 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_6415a1b5bc923845_6940cc9dfc997db1 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_8a0f087481b95ab0_a13f080fe7b316d4 = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplainWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erefIs(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, i64 %a2)
@olang_loc_9d64128d60439a41_20f9e6973a71ad85 = external constant [0 x i8]
@olang_loc_28dd7919903bc2a_4577237eccb57ce = external constant [0 x i8]
@olang_loc_6846df2bf697eaeb_3c0ad43c6c9a3c0f = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersCases(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %v1, ptr %a0)
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eelemAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewhere(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2elocBase(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %v0, i64 %a0, i64 %a1)
@olang_loc_6a1c0f36bb2af484_15693b919ea68168 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2eescape(ptr %v0, ptr %v1, { i64, ptr } %a0)
@G_2ecompiler_2femit_2eHomeLoc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FC\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidth(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i32 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2esatMulWide(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_5928719bf5ddeb28_6f82e9f6c6163cdc = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_51f36d50f4dfa9f9_6a3d5d7fb2ed60d = external constant [0 x i8]
@G_2ecompiler_2femit_2eBigCloseMark = external constant <{ [8 x i8], ptr }>
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2evalueTarget(ptr %v0, ptr %a0, %"compiler/mir:Task" %a1, i64 %a2)
@olang_loc_768bb04516f7a838_2f20b6e41bd1e874 = external constant [0 x i8]
@olang_loc_f86c3108d396390c_a897abfaa875b378 = external constant [0 x i8]
@olang_loc_a69d5bfe0a165b0_62b4fff2e0b246dc = external constant [0 x i8]
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
