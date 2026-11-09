source_filename = "compiler_emit-1.quick.ll"
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
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:Reused" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" = type { i64, i1 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/emit:cDecls" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eadaptKey(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
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
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t7 = inttoptr i64 0 to ptr
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t7, ptr %t4, i32 %a1)
  store { i64, ptr } %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:Emitter", ptr %t11, i32 0, i32 3
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = inttoptr i64 0 to ptr
  %t20 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t17, ptr %t14, i32 %a2)
  store { i64, ptr } %t20, ptr %l12
  br label %bb2
bb2:
  %t21 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t27 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = add i64 %t26, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  call void @olang_textcopy(ptr %t32, ptr %t24, i64 %t25)
  %t33 = getelementptr i8, ptr %t32, i64 %t25
  call void @olang_textcopy(ptr %t33, ptr %t28, i64 %t29)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = extractvalue { i64, ptr } %t35, 1
  %t39 = mul i64 %t37, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  %t44 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t42)
  store { i64, ptr } %t44, ptr %l15
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l110 = alloca i32
  %l111 = alloca i64
  %l113 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.builder
  %s18room = alloca [64 x i8], align 8
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/lower:Lowerer", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t13 = load i64, ptr %l1, !tbaa !24
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t12, i64 %t13)
  store ptr %t16, ptr %l24
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l24, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t17, i32 0, i32 1
  %t21 = load { i64, [2 x i64] }, ptr %t20
  store { i64, [2 x i64] } %t21, ptr %l4
  %t23 = load { i64, [2 x i64] }, ptr %l4
  %t25 = extractvalue { i64, [2 x i64] } %t23, 0
  %t26 = icmp eq i64 %t25, 0
  br i1 %t26, label %bb2, label %bb3
bb2:
  %t28 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t29 = getelementptr { i64 }, ptr %t28, i32 0, i32 0
  %t30 = load i64, ptr %t29
  store i64 %t30, ptr %l5, !tbaa !24
  br label %bb4
bb3:
  br label %bb6
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/emit:Emitter", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %s1, ptr %t35, i64 %t36)
  store { i64, ptr } %t39, ptr %l34
  br label %bb5
bb5:
  %t40 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t41, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb66
bb6:
  %t47 = load { i64, [2 x i64] }, ptr %l4
  %t49 = extractvalue { i64, [2 x i64] } %t47, 0
  %t50 = icmp eq i64 %t49, 1
  br i1 %t50, label %bb7, label %bb8
bb7:
  %t52 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t53 = getelementptr { i32, i32 }, ptr %t52, i32 0, i32 0
  %t54 = load i32, ptr %t53
  store i32 %t54, ptr %l6, !tbaa !23
  %t56 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t57 = getelementptr { i32, i32 }, ptr %t56, i32 0, i32 1
  %t58 = load i32, ptr %t57
  store i32 %t58, ptr %l7, !tbaa !23
  br label %bb9
bb8:
  br label %bb16
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t61 = load i32, ptr %l6, !tbaa !23
  %t63 = inttoptr i64 0 to ptr
  %t66 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s3, ptr %t63, ptr %t60, i32 %t61)
  store { i64, ptr } %t66, ptr %l43
  br label %bb10
bb10:
  %t67 = load i32, ptr %l7, !tbaa !23
  %t69 = icmp eq i32 %t67, 0
  br i1 %t69, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l46, !tbaa !27
  br label %bb14
bb12:
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t72 = load i32, ptr %l7, !tbaa !23
  %t74 = inttoptr i64 0 to ptr
  %t77 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonList(ptr %v0, ptr %s3, ptr %t74, ptr %t71, i32 %t72)
  store { i64, ptr } %t77, ptr %l50
  br label %bb13
bb13:
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t80 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t83 = add i64 %t79, %t82
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t87 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t86)
  call void @olang_textcopy(ptr %t87, ptr %t78, i64 %t79)
  %t88 = getelementptr i8, ptr %t87, i64 %t79
  call void @olang_textcopy(ptr %t88, ptr %t81, i64 %t82)
  %t89 = getelementptr i8, ptr %t88, i64 %t82
  call void @olang_textcopy(ptr %t89, ptr %t84, i64 %t85)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t87, 1
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t94 = extractvalue { i64, ptr } %t91, 1
  %t95 = mul i64 %t93, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t95)
  call void @llvm.memcpy.p0.p0.i64(ptr %t96, ptr %t94, i64 %t95, i1 false)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l46, !tbaa !27
  br label %bb14
bb14:
  %t100 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t105 = add i64 %t102, %t104
  %t106 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = add i64 %t105, %t108
  %t110 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t109)
  call void @olang_textcopy(ptr %t110, ptr %t101, i64 %t102)
  %t111 = getelementptr i8, ptr %t110, i64 %t102
  call void @olang_textcopy(ptr %t111, ptr %t103, i64 %t104)
  %t112 = getelementptr i8, ptr %t111, i64 %t104
  call void @olang_textcopy(ptr %t112, ptr %t107, i64 %t108)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t110, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = extractvalue { i64, ptr } %t114, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t123 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t121)
  store { i64, ptr } %t123, ptr %l55
  br label %bb15
bb15:
  %t124 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t124, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  br label %bb66
bb16:
  %t125 = load { i64, [2 x i64] }, ptr %l4
  %t127 = extractvalue { i64, [2 x i64] } %t125, 0
  %t128 = icmp eq i64 %t127, 3
  br i1 %t128, label %bb17, label %bb18
bb17:
  %t130 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t131 = getelementptr { i32 }, ptr %t130, i32 0, i32 0
  %t132 = load i32, ptr %t131
  store i32 %t132, ptr %l8, !tbaa !23
  br label %bb19
bb18:
  br label %bb22
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t134 = load ptr, ptr %l2, !tbaa !29
  %t135 = load i32, ptr %l8, !tbaa !23
  %t137 = inttoptr i64 0 to ptr
  %t140 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s6, ptr %t137, ptr %t134, i32 %t135)
  store { i64, ptr } %t140, ptr %l62
  br label %bb20
bb20:
  %t141 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 1
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t144 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t146 = add i64 %t143, %t145
  %t147 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t146)
  call void @olang_textcopy(ptr %t147, ptr %t142, i64 %t143)
  %t148 = getelementptr i8, ptr %t147, i64 %t143
  call void @olang_textcopy(ptr %t148, ptr %t144, i64 %t145)
  %t149 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t147, 1
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t153 = extractvalue { i64, ptr } %t150, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t159 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t157)
  store { i64, ptr } %t159, ptr %l65
  br label %bb21
bb21:
  %t160 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t160, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb66
bb22:
  %t161 = load { i64, [2 x i64] }, ptr %l4
  %t163 = extractvalue { i64, [2 x i64] } %t161, 0
  %t164 = icmp eq i64 %t163, 4
  br i1 %t164, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t166 = load i64, ptr %l1, !tbaa !24
  %t167 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t170 = call i64 @__olang_fmt_i64(ptr null, i64 %t166)
  %t171 = add i64 %t168, %t170
  %t172 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t171)
  call void @olang_textcopy(ptr %t172, ptr %t167, i64 %t168)
  %t173 = getelementptr i8, ptr %t172, i64 %t168
  %t174 = call i64 @__olang_fmt_i64(ptr %t173, i64 %t166)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t172, 1
  store { i64, ptr } %t176, ptr %l27, !tbaa !27
  br label %bb66
bb26:
  %t178 = load { i64, [2 x i64] }, ptr %l4
  %t180 = extractvalue { i64, [2 x i64] } %t178, 0
  %t181 = icmp eq i64 %t180, 5
  br i1 %t181, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i64, ptr %l1, !tbaa !24
  %t187 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestSym(ptr %v0, ptr %v1, ptr %t183, i64 %t184)
  store { i64, ptr } %t187, ptr %l74
  br label %bb30
bb30:
  %t188 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t188, ptr %l27, !tbaa !27
  br label %bb66
bb31:
  %t189 = load { i64, [2 x i64] }, ptr %l4
  %t191 = extractvalue { i64, [2 x i64] } %t189, 0
  %t192 = icmp eq i64 %t191, 6
  br i1 %t192, label %bb32, label %bb33
bb32:
  %t194 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t195 = getelementptr { i64, i32 }, ptr %t194, i32 0, i32 0
  %t196 = load i64, ptr %t195
  store i64 %t196, ptr %l9, !tbaa !24
  %t198 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t199 = getelementptr { i64, i32 }, ptr %t198, i32 0, i32 1
  %t200 = load i32, ptr %t199
  store i32 %t200, ptr %l10, !tbaa !23
  br label %bb34
bb33:
  br label %bb38
bb34:
  store %olang.scope zeroinitializer, ptr %s11
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/emit:Emitter", ptr %t202, i32 0, i32 0
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 0
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t210 = getelementptr %"compiler/load:Loader", ptr %t208, i32 0, i32 10
  %t211 = load i64, ptr %l9, !tbaa !24
  %t214 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t210, i64 %t211)
  store ptr %t214, ptr %l84
  br label %bb35
bb35:
  %t215 = load ptr, ptr %l84, !tbaa !29
  %t217 = getelementptr %"compiler/load:Module", ptr %t215, i32 0, i32 2
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  store { i64, ptr } %t218, ptr %l86, !tbaa !27
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l10, !tbaa !23
  %t223 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s11, ptr %t219, i32 %t220)
  store { i64, ptr } %t223, ptr %l89
  br label %bb36
bb36:
  %t224 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t224, 1
  %t226 = extractvalue { i64, ptr } %t224, 0
  %t227 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t228 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t229 = add i64 %t226, %t228
  %t230 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 1
  %t232 = extractvalue { i64, ptr } %t230, 0
  %t233 = add i64 %t229, %t232
  %t234 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t235 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t236 = add i64 %t233, %t235
  %t237 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t236)
  call void @olang_textcopy(ptr %t237, ptr %t225, i64 %t226)
  %t238 = getelementptr i8, ptr %t237, i64 %t226
  call void @olang_textcopy(ptr %t238, ptr %t227, i64 %t228)
  %t239 = getelementptr i8, ptr %t238, i64 %t228
  call void @olang_textcopy(ptr %t239, ptr %t231, i64 %t232)
  %t240 = getelementptr i8, ptr %t239, i64 %t232
  call void @olang_textcopy(ptr %t240, ptr %t234, i64 %t235)
  %t241 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t237, 1
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = extractvalue { i64, ptr } %t242, 1
  %t246 = mul i64 %t244, 1
  %t247 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  %t251 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t249)
  store { i64, ptr } %t251, ptr %l92
  br label %bb37
bb37:
  %t252 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t252, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  br label %bb66
bb38:
  %t253 = load { i64, [2 x i64] }, ptr %l4
  %t255 = extractvalue { i64, [2 x i64] } %t253, 0
  %t256 = icmp eq i64 %t255, 2
  br i1 %t256, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t258 = load i64, ptr %l1, !tbaa !24
  %t259 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t260 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t262 = call i64 @__olang_fmt_i64(ptr null, i64 %t258)
  %t263 = add i64 %t260, %t262
  %t264 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t263)
  call void @olang_textcopy(ptr %t264, ptr %t259, i64 %t260)
  %t265 = getelementptr i8, ptr %t264, i64 %t260
  %t266 = call i64 @__olang_fmt_i64(ptr %t265, i64 %t258)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t264, 1
  store { i64, ptr } %t268, ptr %l27, !tbaa !27
  br label %bb66
bb42:
  %t270 = load { i64, [2 x i64] }, ptr %l4
  %t272 = extractvalue { i64, [2 x i64] } %t270, 0
  %t273 = icmp eq i64 %t272, 7
  br i1 %t273, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  %t275 = load i64, ptr %l1, !tbaa !24
  %t276 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t277 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t279 = call i64 @__olang_fmt_i64(ptr null, i64 %t275)
  %t280 = add i64 %t277, %t279
  %t281 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t280)
  call void @olang_textcopy(ptr %t281, ptr %t276, i64 %t277)
  %t282 = getelementptr i8, ptr %t281, i64 %t277
  %t283 = call i64 @__olang_fmt_i64(ptr %t282, i64 %t275)
  %t284 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t281, 1
  store { i64, ptr } %t285, ptr %l27, !tbaa !27
  br label %bb66
bb46:
  %t287 = load { i64, [2 x i64] }, ptr %l4
  %t289 = extractvalue { i64, [2 x i64] } %t287, 0
  %t290 = icmp eq i64 %t289, 8
  br i1 %t290, label %bb47, label %bb48
bb47:
  %t292 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t293 = getelementptr { i32, i32, i64 }, ptr %t292, i32 0, i32 0
  %t294 = load i32, ptr %t293
  store i32 %t294, ptr %l11, !tbaa !23
  %t296 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t297 = getelementptr { i32, i32, i64 }, ptr %t296, i32 0, i32 1
  %t298 = load i32, ptr %t297, !range !{i32 0, i32 1}
  store i32 %t298, ptr %l12
  %t300 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t301 = getelementptr { i32, i32, i64 }, ptr %t300, i32 0, i32 2
  %t302 = load i64, ptr %t301
  store i64 %t302, ptr %l13, !tbaa !24
  br label %bb49
bb48:
  br label %bb53
bb49:
  store %olang.scope zeroinitializer, ptr %s17
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i32, ptr %l11, !tbaa !23
  %t307 = sext i32 %t305 to i64
  %t310 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %s17, ptr %t304, i64 %t307)
  store { i64, ptr } %t310, ptr %l109
  br label %bb50
bb50:
  %t311 = load i32, ptr %l12, !range !{i32 0, i32 1}
  store i32 %t311, ptr %l110
  %t312 = load i64, ptr %l13, !tbaa !24
  store i64 %t312, ptr %l111, !tbaa !24
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s18
  store ptr %s18room, ptr %s18
  %t313 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t313, 1
  %t315 = extractvalue { i64, ptr } %t313, 0
  call void @__olang_sb_put(ptr %s18, ptr %t314, i64 %t315)
  %t316 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t316, i64 %t317)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aContractKind(ptr %s18, ptr %l110, i64 0)
  br label %bb51
bb51:
  %t319 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t319, i64 %t320)
  %t321 = load i64, ptr %l111, !tbaa !24
  %t322 = call ptr @__olang_sb_room(ptr %s18, i64 24)
  %t323 = call i64 @__olang_fmt_i64(ptr %t322, i64 %t321)
  call void @__olang_sb_add(ptr %s18, i64 %t323)
  %t324 = load ptr, ptr %s18
  %t325 = getelementptr %olang.builder, ptr %s18, i32 0, i32 1
  %t326 = load i64, ptr %t325
  %t327 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t326)
  call void @olang_textcopy(ptr %t327, ptr %t324, i64 %t326)
  %t328 = insertvalue { i64, ptr } undef, i64 %t326, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t327, 1
  store { i64, ptr } %t329, ptr %l113, !tbaa !27
  %t330 = getelementptr %olang.builder, ptr %s18, i32 0, i32 3
  %t331 = load ptr, ptr %t330
  %t332 = icmp ne ptr %t331, null
  br i1 %t332, label %sbgrew.333, label %sbdone.334
sbgrew.333:
  call void @__olang_sb_done(ptr %s18)
  br label %sbdone.334
sbdone.334:
  %t335 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 0
  %t337 = extractvalue { i64, ptr } %t335, 1
  %t338 = mul i64 %t336, 1
  %t339 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t338)
  call void @llvm.memcpy.p0.p0.i64(ptr %t339, ptr %t337, i64 %t338, i1 false)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t339, 1
  %t343 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t341)
  store { i64, ptr } %t343, ptr %l115
  br label %bb52
bb52:
  %t344 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t344, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s17)
  br label %bb66
bb53:
  %t345 = load { i64, [2 x i64] }, ptr %l4
  %t347 = extractvalue { i64, [2 x i64] } %t345, 0
  %t348 = icmp eq i64 %t347, 9
  br i1 %t348, label %bb54, label %bb55
bb54:
  %t350 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t351 = getelementptr { i64, i64 }, ptr %t350, i32 0, i32 0
  %t352 = load i64, ptr %t351
  store i64 %t352, ptr %l14, !tbaa !24
  %t354 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t355 = getelementptr { i64, i64 }, ptr %t354, i32 0, i32 1
  %t356 = load i64, ptr %t355
  store i64 %t356, ptr %l15, !tbaa !24
  br label %bb56
bb55:
  br label %bb59
bb56:
  store %olang.scope zeroinitializer, ptr %s19
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load i64, ptr %l14, !tbaa !24
  %t362 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etableName(ptr %v0, ptr %s19, ptr %t358, i64 %t359)
  store { i64, ptr } %t362, ptr %l122
  br label %bb57
bb57:
  %t363 = load i64, ptr %l15, !tbaa !24
  %t364 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t365 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t366 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t367 = extractvalue { i64, ptr } %t366, 1
  %t368 = extractvalue { i64, ptr } %t366, 0
  %t369 = add i64 %t365, %t368
  %t370 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t371 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t372 = add i64 %t369, %t371
  %t374 = call i64 @__olang_fmt_i64(ptr null, i64 %t363)
  %t375 = add i64 %t372, %t374
  %t376 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t375)
  call void @olang_textcopy(ptr %t376, ptr %t364, i64 %t365)
  %t377 = getelementptr i8, ptr %t376, i64 %t365
  call void @olang_textcopy(ptr %t377, ptr %t367, i64 %t368)
  %t378 = getelementptr i8, ptr %t377, i64 %t368
  call void @olang_textcopy(ptr %t378, ptr %t370, i64 %t371)
  %t379 = getelementptr i8, ptr %t378, i64 %t371
  %t380 = call i64 @__olang_fmt_i64(ptr %t379, i64 %t363)
  %t381 = insertvalue { i64, ptr } undef, i64 %t375, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t376, 1
  %t384 = extractvalue { i64, ptr } %t382, 0
  %t385 = extractvalue { i64, ptr } %t382, 1
  %t386 = mul i64 %t384, 1
  %t387 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t386)
  call void @llvm.memcpy.p0.p0.i64(ptr %t387, ptr %t385, i64 %t386, i1 false)
  %t388 = insertvalue { i64, ptr } undef, i64 %t384, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t387, 1
  %t391 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t389)
  store { i64, ptr } %t391, ptr %l126
  br label %bb58
bb58:
  %t392 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t392, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s19)
  br label %bb66
bb59:
  %t393 = load { i64, [2 x i64] }, ptr %l4
  %t395 = extractvalue { i64, [2 x i64] } %t393, 0
  %t396 = icmp eq i64 %t395, 10
  br i1 %t396, label %bb60, label %bb61
bb60:
  %t398 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t399 = getelementptr { i32, i64 }, ptr %t398, i32 0, i32 0
  %t400 = load i32, ptr %t399
  store i32 %t400, ptr %l16, !tbaa !23
  %t402 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t403 = getelementptr { i32, i64 }, ptr %t402, i32 0, i32 1
  %t404 = load i64, ptr %t403
  store i64 %t404, ptr %l17, !tbaa !24
  br label %bb62
bb61:
  br label %bb65
bb62:
  store %olang.scope zeroinitializer, ptr %s21
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load i32, ptr %l16, !tbaa !23
  %t410 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecanonOf(ptr %v0, ptr %s21, ptr %t406, i32 %t407)
  store { i64, ptr } %t410, ptr %l133
  br label %bb63
bb63:
  %t411 = load i64, ptr %l17, !tbaa !24
  %t412 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t413 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t414 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = extractvalue { i64, ptr } %t414, 0
  %t417 = add i64 %t413, %t416
  %t418 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t420 = add i64 %t417, %t419
  %t422 = call i64 @__olang_fmt_i64(ptr null, i64 %t411)
  %t423 = add i64 %t420, %t422
  %t424 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t423)
  call void @olang_textcopy(ptr %t424, ptr %t412, i64 %t413)
  %t425 = getelementptr i8, ptr %t424, i64 %t413
  call void @olang_textcopy(ptr %t425, ptr %t415, i64 %t416)
  %t426 = getelementptr i8, ptr %t425, i64 %t416
  call void @olang_textcopy(ptr %t426, ptr %t418, i64 %t419)
  %t427 = getelementptr i8, ptr %t426, i64 %t419
  %t428 = call i64 @__olang_fmt_i64(ptr %t427, i64 %t411)
  %t429 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr %t424, 1
  %t432 = extractvalue { i64, ptr } %t430, 0
  %t433 = extractvalue { i64, ptr } %t430, 1
  %t434 = mul i64 %t432, 1
  %t435 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t434)
  call void @llvm.memcpy.p0.p0.i64(ptr %t435, ptr %t433, i64 %t434, i1 false)
  %t436 = insertvalue { i64, ptr } undef, i64 %t432, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t435, 1
  %t439 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t437)
  store { i64, ptr } %t439, ptr %l137
  br label %bb64
bb64:
  %t440 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t440, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s21)
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_de1fe604fb5e87cf_ff4728625cff78d3)
  unreachable
bb66:
  %t441 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t441, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca %"std/prelude/text:StringBuilder"
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca %"std/prelude/text:StringBuilder"
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i1
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l57 = alloca i32
  %l61 = alloca i1
  %l64 = alloca i1
  %l67 = alloca i32
  %l74 = alloca i1
  %l75 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i32
  %l83 = alloca i64
  %l92 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca { i64, ptr }
  %l99 = alloca i1
  %l100 = alloca { i64, ptr }
  %l103 = alloca i64
  %l105 = alloca i1
  %l108 = alloca i1
  %l112 = alloca i64
  %l115 = alloca i64
  %l119 = alloca ptr
  %l120 = alloca i64
  %l124 = alloca { i64, ptr }
  %l134 = alloca i1
  %l135 = alloca i64
  %l140 = alloca i64
  %l141 = alloca i32
  %l144 = alloca i32
  %l149 = alloca i32
  %l152 = alloca { i64, ptr }
  %l154 = alloca i1
  %l156 = alloca ptr
  %l157 = alloca i32
  %l159 = alloca i32
  %l160 = alloca ptr
  %l163 = alloca i32
  %l164 = alloca i32
  %l165 = alloca i64
  %l167 = alloca i64
  %l175 = alloca i64
  %l176 = alloca ptr
  %l177 = alloca i64
  %l180 = alloca { i64, ptr }
  %l193 = alloca i64
  %l197 = alloca i1
  %l200 = alloca i64
  %l206 = alloca i32
  %l208 = alloca ptr
  %l209 = alloca i32
  %l211 = alloca i32
  %l214 = alloca i32
  %l215 = alloca i64
  %l217 = alloca i64
  %l223 = alloca ptr
  %l226 = alloca i32
  %l227 = alloca i64
  %l231 = alloca i64
  %l233 = alloca i64
  %l234 = alloca ptr
  %l235 = alloca i64
  %l236 = alloca ptr
  %l239 = alloca i32
  %l240 = alloca i64
  %l253 = alloca i1
  %l256 = alloca i1
  %l259 = alloca i1
  %l260 = alloca ptr
  %l263 = alloca i32
  %l264 = alloca i32
  %l269 = alloca i64
  %l275 = alloca ptr
  %l279 = alloca i32
  %l282 = alloca i32
  %l285 = alloca i32
  %l286 = alloca { i64, ptr }
  %l291 = alloca { i64, ptr }
  %l294 = alloca { i64, ptr }
  %l295 = alloca %"std/prelude/text:StringBuilder"
  %l301 = alloca i64
  %l304 = alloca i64
  %l324 = alloca { i64, ptr }
  %l327 = alloca i1
  %l329 = alloca { i64, ptr }
  %l332 = alloca i64
  %l336 = alloca i64
  %l338 = alloca i64
  %l339 = alloca ptr
  %l340 = alloca i64
  %l343 = alloca { i64, ptr }
  %l344 = alloca i64
  %l346 = alloca { i64, ptr }
  %l349 = alloca i64
  %l366 = alloca i64
  %l367 = alloca ptr
  %l368 = alloca i64
  %l370 = alloca { i64, ptr }
  %l373 = alloca ptr
  %l374 = alloca i64
  %l377 = alloca { i64, ptr }
  %l379 = alloca { i64, ptr }
  %l387 = alloca i1
  %l390 = alloca i1
  %l391 = alloca ptr
  %l394 = alloca i32
  %l395 = alloca i32
  %l400 = alloca i64
  %l408 = alloca { i64, ptr }
  %l411 = alloca { i64, ptr }
  %l415 = alloca ptr
  %l418 = alloca i32
  %l421 = alloca i32
  %l424 = alloca i32
  %l425 = alloca { i64, ptr }
  %l426 = alloca %"std/prelude/text:StringBuilder"
  %l432 = alloca i64
  %l435 = alloca i64
  %l454 = alloca i64
  %l458 = alloca i1
  %l463 = alloca { i64, ptr }
  %l465 = alloca { i64, ptr }
  %l468 = alloca { i64, ptr }
  %l472 = alloca ptr
  %l473 = alloca i64
  %l475 = alloca { i64, ptr }
  %l489 = alloca i64
  %l490 = alloca ptr
  %l491 = alloca i64
  %l493 = alloca { i64, ptr }
  %l498 = alloca i1
  %l501 = alloca i64
  %l504 = alloca i64
  %l505 = alloca ptr
  %l507 = alloca i32
  %l509 = alloca i32
  %l511 = alloca i32
  %l512 = alloca i64
  %l513 = alloca ptr
  %l514 = alloca i64
  %l517 = alloca { i64, ptr }
  %l519 = alloca { i64, ptr }
  %l521 = alloca i64
  %l531 = alloca i64
  %l534 = alloca i64
  %l536 = alloca i64
  %l542 = alloca ptr
  %l543 = alloca i64
  %l544 = alloca ptr
  %l546 = alloca i32
  %l547 = alloca i64
  %l554 = alloca i64
  %l556 = alloca i64
  %l558 = alloca i64
  %l577 = alloca ptr
  %l578 = alloca i64
  %l581 = alloca { i64, ptr }
  %l583 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %rv = alloca i64
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
  store i32 %t10, ptr %l57
  br label %bb1
bb1:
  %t11 = load i32, ptr %l57, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load i32, ptr %l3, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t16 = icmp sge i32 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i32, ptr %l3, !tbaa !23
  %t20 = icmp sle i32 %t18, 14
  store i1 %t20, ptr %l61, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l61, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb8
bb6:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l67
  br label %bb7
bb7:
  %t28 = load i32, ptr %l67, !range !{i32 0, i32 33}
  %t30 = trunc i64 31 to i32
  %t31 = icmp eq i32 %t28, %t30
  store i1 %t31, ptr %l64, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l64, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/emit:Emitter", ptr %t34, i32 0, i32 65
  %t37 = load i32, ptr %l3, !tbaa !23
  %t39 = sext i32 %t37 to i64
  %t42 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t36, i64 %t39)
  store i1 %t42, ptr %l74
  br label %bb11
bb10:
  br label %bb46
bb11:
  %t43 = load i1, ptr %l74, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/emit:Emitter", ptr %t44, i32 0, i32 65
  %t47 = load i32, ptr %l3, !tbaa !23
  %t49 = sext i32 %t47 to i64
  %t52 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t46, i64 %t49)
  %t53 = extractvalue { i32, i64 } %t52, 1
  %t54 = extractvalue { i32, i64 } %t52, 0
  store i32 %t54, ptr %l81
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb15, label %ok.56, !prof !99
ok.56:
  store i64 %t53, ptr %l80
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t57 = load i64, ptr %l80, !tbaa !24
  store i64 %t57, ptr %l75, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  store i64 -1, ptr %l75, !tbaa !24
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  %t58 = load i64, ptr %l75, !tbaa !24
  store i64 %t58, ptr %rv
  br label %ret
bb18:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l83
  br label %bb19
bb19:
  %t62 = load i64, ptr %l83, !tbaa !24
  store i64 %t62, ptr %l4, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/emit:Emitter", ptr %t63, i32 0, i32 65
  %t66 = load i32, ptr %l3, !tbaa !23
  %t68 = sext i32 %t66 to i64
  %t69 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t65, i64 %t68, i64 %t69)
  br label %bb20
bb20:
  %t73 = load i32, ptr %l3, !tbaa !23
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t77 = icmp eq i32 %t73, %t74
  br i1 %t77, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l92, !tbaa !27
  br label %bb31
bb22:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t80 = load i32, ptr %l3, !tbaa !23
  %t83 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l95
  br label %bb23
bb23:
  %t84 = load i1, ptr %l95, !tbaa !21
  br i1 %t84, label %bb24, label %bb25
bb24:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l96, !tbaa !27
  br label %bb30
bb25:
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t86 = load i32, ptr %l3, !tbaa !23
  %t89 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t85, i32 %t86)
  store i1 %t89, ptr %l99
  br label %bb26
bb26:
  %t90 = load i1, ptr %l99, !tbaa !21
  br i1 %t90, label %bb27, label %bb28
bb27:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l100, !tbaa !27
  br label %bb29
bb28:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l100, !tbaa !27
  br label %bb29
bb29:
  %t91 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t91, ptr %l96, !tbaa !27
  br label %bb30
bb30:
  %t92 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t92, ptr %l92, !tbaa !27
  br label %bb31
bb31:
  %t93 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t93, ptr %l5, !tbaa !27
  %t94 = load ptr, ptr %l2, !tbaa !29
  %t95 = load i32, ptr %l3, !tbaa !23
  %t98 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t94, i32 %t95)
  store i64 %t98, ptr %l103
  br label %bb32
bb32:
  %t99 = load i64, ptr %l103, !tbaa !24
  %t100 = icmp eq i64 %t99, 8
  br i1 %t100, label %bb33, label %bb34
bb33:
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t106, ptr %l108
  br label %bb35
bb34:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb36
bb35:
  %t107 = load i1, ptr %l108, !tbaa !21
  store i1 %t107, ptr %l105, !tbaa !21
  br label %bb36
bb36:
  %t108 = load i1, ptr %l105, !tbaa !21
  br i1 %t108, label %bb37, label %bb38
bb37:
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb39
bb38:
  br label %bb39
bb39:
  %t109 = load i32, ptr %l3, !tbaa !23
  %t110 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t113 = icmp eq i32 %t109, %t110
  br i1 %t113, label %bb40, label %bb41
bb40:
  store i64 8, ptr %l112, !tbaa !24
  br label %bb43
bb41:
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t116 = load i32, ptr %l3, !tbaa !23
  %t119 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t115, i32 %t116)
  store i64 %t119, ptr %l115
  br label %bb42
bb42:
  %t120 = load i64, ptr %l115, !tbaa !24
  %t121 = add i64 %t120, 7
  %t123 = sdiv i64 %t121, 8
  %t125 = mul i64 %t123, 8
  store i64 %t125, ptr %l112, !tbaa !24
  br label %bb43
bb43:
  %t127 = load i64, ptr %l112, !tbaa !24
  store i64 %t127, ptr %l6, !tbaa !24
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l119, !tbaa !29
  %t129 = load i64, ptr %l4, !tbaa !24
  store i64 %t129, ptr %l120, !tbaa !24
  %t130 = load ptr, ptr %l2, !tbaa !29
  %t131 = load i32, ptr %l3, !tbaa !23
  %t133 = inttoptr i64 0 to ptr
  %t136 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s1, ptr %t133, ptr %t130, i32 %t131)
  store { i64, ptr } %t136, ptr %l124
  br label %bb44
bb44:
  %t137 = load i64, ptr %l6, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t139 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t141 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 1
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t144 = add i64 %t140, %t143
  %t145 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t147 = add i64 %t144, %t146
  %t149 = call i64 @__olang_fmt_i64(ptr null, i64 %t137)
  %t150 = add i64 %t147, %t149
  %t151 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t153 = add i64 %t150, %t152
  %t155 = extractvalue { i64, ptr } %t138, 1
  %t156 = extractvalue { i64, ptr } %t138, 0
  %t157 = add i64 %t153, %t156
  %t158 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t160 = add i64 %t157, %t159
  %t161 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t139, i64 %t140)
  %t162 = getelementptr i8, ptr %t161, i64 %t140
  call void @olang_textcopy(ptr %t162, ptr %t142, i64 %t143)
  %t163 = getelementptr i8, ptr %t162, i64 %t143
  call void @olang_textcopy(ptr %t163, ptr %t145, i64 %t146)
  %t164 = getelementptr i8, ptr %t163, i64 %t146
  %t165 = call i64 @__olang_fmt_i64(ptr %t164, i64 %t137)
  %t166 = getelementptr i8, ptr %t164, i64 %t149
  call void @olang_textcopy(ptr %t166, ptr %t151, i64 %t152)
  %t167 = getelementptr i8, ptr %t166, i64 %t152
  call void @olang_textcopy(ptr %t167, ptr %t155, i64 %t156)
  %t168 = getelementptr i8, ptr %t167, i64 %t156
  call void @olang_textcopy(ptr %t168, ptr %t158, i64 %t159)
  %t169 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t161, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = extractvalue { i64, ptr } %t170, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  %t178 = load ptr, ptr %l119, !tbaa !29
  %t179 = load i64, ptr %l120, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s1, ptr %t178, i64 %t179, { i64, ptr } %t177)
  br label %bb45
bb45:
  %t181 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t181, ptr %rv
  br label %ret
bb46:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/emit:Emitter", ptr %t183, i32 0, i32 66
  %t186 = load i32, ptr %l3, !tbaa !23
  %t188 = sext i32 %t186 to i64
  %t191 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t185, i64 %t188)
  store i1 %t191, ptr %l134
  br label %bb47
bb47:
  %t192 = load i1, ptr %l134, !tbaa !21
  br i1 %t192, label %bb48, label %bb49
bb48:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/emit:Emitter", ptr %t193, i32 0, i32 66
  %t196 = load i32, ptr %l3, !tbaa !23
  %t198 = sext i32 %t196 to i64
  %t201 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t195, i64 %t198)
  %t202 = extractvalue { i32, i64 } %t201, 1
  %t203 = extractvalue { i32, i64 } %t201, 0
  store i32 %t203, ptr %l141
  %t204 = icmp ne i32 %t203, 0
  br i1 %t204, label %bb51, label %ok.205, !prof !99
ok.205:
  store i64 %t202, ptr %l140
  br label %bb50
bb49:
  br label %bb54
bb50:
  %t206 = load i64, ptr %l140, !tbaa !24
  store i64 %t206, ptr %l135, !tbaa !24
  br label %bb53
bb51:
  br label %bb52
bb52:
  store i64 -1, ptr %l135, !tbaa !24
  br label %bb53
bb53:
  %t207 = load i64, ptr %l135, !tbaa !24
  store i64 %t207, ptr %rv
  br label %ret
bb54:
  %t208 = load ptr, ptr %l2, !tbaa !29
  %t209 = load i32, ptr %l3, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l144
  br label %bb55
bb55:
  %t213 = load i32, ptr %l144, !range !{i32 0, i32 33}
  store i32 %t213, ptr %l7
  %t214 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t216 = trunc i64 20 to i32
  %t217 = icmp eq i32 %t214, %t216
  br i1 %t217, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s6
  %t219 = load ptr, ptr %l2, !tbaa !29
  %t220 = load i32, ptr %l3, !tbaa !23
  %t223 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t219, i32 %t220)
  store i32 %t223, ptr %l149
  br label %bb58
bb57:
  br label %bb75
bb58:
  %t224 = load i32, ptr %l149, !tbaa !23
  store i32 %t224, ptr %l8, !tbaa !23
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i32, ptr %l3, !tbaa !23
  %t229 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s6, ptr %t225, i32 %t226)
  store { i64, ptr } %t229, ptr %l152
  br label %bb59
bb59:
  %t230 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 0
  %t232 = extractvalue { i64, ptr } %t230, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t238 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t236, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t238, ptr %l154
  br label %bb60
bb60:
  %t239 = load i1, ptr %l154, !tbaa !21
  %t240 = xor i1 %t239, true
  br i1 %t240, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s7
  %t242 = load ptr, ptr %l0, !tbaa !29
  store ptr %t242, ptr %l156, !tbaa !29
  %t243 = load i32, ptr %l3, !tbaa !23
  store i32 %t243, ptr %l157, !tbaa !23
  %t244 = load ptr, ptr %l2, !tbaa !29
  %t246 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s7, ptr %t244, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i32 %t246, ptr %l159
  br label %bb63
bb62:
  br label %bb67
bb63:
  %t247 = load ptr, ptr %l2, !tbaa !29
  store ptr %t247, ptr %l160, !tbaa !29
  %t248 = load ptr, ptr %l2, !tbaa !29
  %t249 = load i32, ptr %l8, !tbaa !23
  %t252 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t248, i32 %t249)
  store i32 %t252, ptr %l163
  br label %bb64
bb64:
  %t253 = load ptr, ptr %l160, !tbaa !29
  %t254 = load i32, ptr %l163, !tbaa !23
  %t255 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t253, i32 %t254)
  store i32 %t255, ptr %l164
  br label %bb65
bb65:
  %t256 = load ptr, ptr %l156, !tbaa !29
  %t257 = load i32, ptr %l157, !tbaa !23
  %t258 = load i32, ptr %l159, !tbaa !23
  %t259 = load i32, ptr %l164, !tbaa !23
  %t260 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgPair(ptr %v0, ptr %s7, ptr %s7, ptr %t256, i32 %t257, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, i32 %t258, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d29, i32 0, i32 1) }, i32 %t259)
  store i64 %t260, ptr %l165
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  %t261 = load i64, ptr %l165, !tbaa !24
  store i64 %t261, ptr %rv
  br label %ret
bb67:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t262)
  store i64 %t264, ptr %l167
  br label %bb68
bb68:
  %t265 = load i64, ptr %l167, !tbaa !24
  store i64 %t265, ptr %l9, !tbaa !24
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/emit:Emitter", ptr %t266, i32 0, i32 66
  %t269 = load i32, ptr %l3, !tbaa !23
  %t271 = sext i32 %t269 to i64
  %t272 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t268, i64 %t271, i64 %t272)
  br label %bb69
bb69:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load i32, ptr %l8, !tbaa !23
  %t280 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t276, i32 %t277)
  store i64 %t280, ptr %l175
  br label %bb70
bb70:
  %t281 = load i64, ptr %l175, !tbaa !24
  store i64 %t281, ptr %l10, !tbaa !24
  %t282 = load ptr, ptr %l0, !tbaa !29
  store ptr %t282, ptr %l176, !tbaa !29
  %t283 = load i64, ptr %l9, !tbaa !24
  store i64 %t283, ptr %l177, !tbaa !24
  %t284 = load i64, ptr %l10, !tbaa !24
  %t286 = icmp sge i64 %t284, 0
  br i1 %t286, label %bb71, label %bb72
bb71:
  %t288 = load i64, ptr %l10, !tbaa !24
  %t289 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t290 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t292 = call i64 @__olang_fmt_i64(ptr null, i64 %t288)
  %t293 = add i64 %t290, %t292
  %t294 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t293)
  call void @olang_textcopy(ptr %t294, ptr %t289, i64 %t290)
  %t295 = getelementptr i8, ptr %t294, i64 %t290
  %t296 = call i64 @__olang_fmt_i64(ptr %t295, i64 %t288)
  %t297 = insertvalue { i64, ptr } undef, i64 %t293, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t294, 1
  %t300 = extractvalue { i64, ptr } %t298, 0
  %t301 = extractvalue { i64, ptr } %t298, 1
  %t302 = mul i64 %t300, 1
  %t303 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t302)
  call void @llvm.memcpy.p0.p0.i64(ptr %t303, ptr %t301, i64 %t302, i1 false)
  %t304 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t305 = insertvalue { i64, ptr } %t304, ptr %t303, 1
  store { i64, ptr } %t305, ptr %l180, !tbaa !27
  br label %bb73
bb72:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l180, !tbaa !27
  br label %bb73
bb73:
  %t307 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t308 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t309 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 1
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t312 = add i64 %t308, %t311
  %t313 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t314 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t315 = add i64 %t312, %t314
  %t316 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t315)
  call void @olang_textcopy(ptr %t316, ptr %t307, i64 %t308)
  %t317 = getelementptr i8, ptr %t316, i64 %t308
  call void @olang_textcopy(ptr %t317, ptr %t310, i64 %t311)
  %t318 = getelementptr i8, ptr %t317, i64 %t311
  call void @olang_textcopy(ptr %t318, ptr %t313, i64 %t314)
  %t319 = insertvalue { i64, ptr } undef, i64 %t315, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t316, 1
  %t322 = extractvalue { i64, ptr } %t320, 0
  %t323 = extractvalue { i64, ptr } %t320, 1
  %t324 = mul i64 %t322, 1
  %t325 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t325, ptr %t323, i64 %t324, i1 false)
  %t326 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  %t328 = load ptr, ptr %l176, !tbaa !29
  %t329 = load i64, ptr %l177, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s6, ptr %t328, i64 %t329, { i64, ptr } %t327)
  br label %bb74
bb74:
  %t331 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  store i64 %t331, ptr %rv
  br label %ret
bb75:
  %t333 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t335 = trunc i64 21 to i32
  %t336 = icmp eq i32 %t333, %t335
  br i1 %t336, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s10
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i32, ptr %l3, !tbaa !23
  %t340 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t341 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t346 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgPair(ptr %v0, ptr %s10, ptr %s10, ptr %t338, i32 %t339, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) }, i32 %t340, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) }, i32 %t341)
  store i64 %t346, ptr %l193
  br label %bb78
bb77:
  br label %bb79
bb78:
  call void @__olang_scope_close(ptr %s10)
  %t347 = load i64, ptr %l193, !tbaa !24
  store i64 %t347, ptr %rv
  br label %ret
bb79:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/emit:Emitter", ptr %t348, i32 0, i32 0
  %t351 = load ptr, ptr %t350, !tbaa !29
  %t352 = load i32, ptr %l3, !tbaa !23
  %t355 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t351, i32 %t352)
  store i1 %t355, ptr %l197
  br label %bb80
bb80:
  %t356 = load ptr, ptr %l2, !tbaa !29
  %t357 = load i32, ptr %l3, !tbaa !23
  %t360 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t356, i32 %t357)
  store i64 %t360, ptr %l200
  br label %bb81
bb81:
  %t361 = load i64, ptr %l200, !tbaa !24
  %t362 = mul i64 %t361, 8
  store i64 %t362, ptr %l11, !tbaa !24
  %t364 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t366 = trunc i64 19 to i32
  %t367 = icmp eq i32 %t364, %t366
  br i1 %t367, label %bb82, label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s11
  %t369 = load ptr, ptr %l2, !tbaa !29
  %t370 = load i32, ptr %l3, !tbaa !23
  %t373 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t369, i32 %t370)
  store i32 %t373, ptr %l206
  br label %bb84
bb83:
  br label %bb104
bb84:
  %t374 = load i32, ptr %l206, !tbaa !23
  %t375 = icmp eq i32 %t374, 0
  br i1 %t375, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s12
  %t377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t377, ptr %l208, !tbaa !29
  %t378 = load i32, ptr %l3, !tbaa !23
  store i32 %t378, ptr %l209, !tbaa !23
  %t379 = load ptr, ptr %l2, !tbaa !29
  %t381 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s12, ptr %t379, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i32 %t381, ptr %l211
  br label %bb87
bb86:
  br label %bb90
bb87:
  %t382 = load ptr, ptr %l2, !tbaa !29
  %t383 = load i32, ptr %l3, !tbaa !23
  %t386 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t382, i32 %t383)
  store i32 %t386, ptr %l214
  br label %bb88
bb88:
  %t387 = load ptr, ptr %l208, !tbaa !29
  %t388 = load i32, ptr %l209, !tbaa !23
  %t389 = load i32, ptr %l211, !tbaa !23
  %t390 = load i32, ptr %l214, !tbaa !23
  %t391 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgPair(ptr %v0, ptr %s12, ptr %s12, ptr %t387, i32 %t388, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) }, i32 %t389, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) }, i32 %t390)
  store i64 %t391, ptr %l215
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s11)
  %t392 = load i64, ptr %l215, !tbaa !24
  store i64 %t392, ptr %rv
  br label %ret
bb90:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t393)
  store i64 %t395, ptr %l217
  br label %bb91
bb91:
  %t396 = load i64, ptr %l217, !tbaa !24
  store i64 %t396, ptr %l12, !tbaa !24
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/emit:Emitter", ptr %t397, i32 0, i32 66
  %t400 = load i32, ptr %l3, !tbaa !23
  %t402 = sext i32 %t400 to i64
  %t403 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t399, i64 %t402, i64 %t403)
  br label %bb92
bb92:
  %t407 = load ptr, ptr %l0, !tbaa !29
  store ptr %t407, ptr %l223, !tbaa !29
  %t408 = load ptr, ptr %l2, !tbaa !29
  %t409 = load i32, ptr %l3, !tbaa !23
  %t412 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t408, i32 %t409)
  store i32 %t412, ptr %l226
  br label %bb93
bb93:
  %t413 = load ptr, ptr %l223, !tbaa !29
  %t414 = load i32, ptr %l226, !tbaa !23
  %t415 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t413, i32 %t414)
  store i64 %t415, ptr %l227
  br label %bb94
bb94:
  %t416 = load i64, ptr %l227, !tbaa !24
  store i64 %t416, ptr %l13, !tbaa !24
  %t417 = load i64, ptr %l13, !tbaa !24
  %t419 = icmp slt i64 %t417, 0
  br i1 %t419, label %bb95, label %bb96
bb95:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgBytes(ptr %v0, ptr %t421)
  store i64 %t423, ptr %l231
  br label %bb97
bb96:
  br label %bb98
bb97:
  %t424 = load i64, ptr %l231, !tbaa !24
  store i64 %t424, ptr %l13, !tbaa !24
  br label %bb98
bb98:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t425)
  store i64 %t427, ptr %l233
  br label %bb99
bb99:
  %t428 = load i64, ptr %l233, !tbaa !24
  store i64 %t428, ptr %l14, !tbaa !24
  %t429 = load ptr, ptr %l0, !tbaa !29
  store ptr %t429, ptr %l234, !tbaa !29
  %t430 = load i64, ptr %l14, !tbaa !24
  store i64 %t430, ptr %l235, !tbaa !24
  %t431 = load ptr, ptr %l2, !tbaa !29
  store ptr %t431, ptr %l236, !tbaa !29
  %t432 = load ptr, ptr %l2, !tbaa !29
  %t433 = load i32, ptr %l3, !tbaa !23
  %t436 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t432, i32 %t433)
  store i32 %t436, ptr %l239
  br label %bb100
bb100:
  %t437 = load ptr, ptr %l236, !tbaa !29
  %t438 = load i32, ptr %l239, !tbaa !23
  %t439 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t437, i32 %t438)
  store i64 %t439, ptr %l240
  br label %bb101
bb101:
  %t440 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t441 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t442 = load i64, ptr %l240, !tbaa !24
  %t443 = call i64 @__olang_fmt_i64(ptr null, i64 %t442)
  %t444 = add i64 %t441, %t443
  %t445 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t446 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t447 = add i64 %t444, %t446
  %t448 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t447)
  call void @olang_textcopy(ptr %t448, ptr %t440, i64 %t441)
  %t449 = getelementptr i8, ptr %t448, i64 %t441
  %t450 = call i64 @__olang_fmt_i64(ptr %t449, i64 %t442)
  %t451 = getelementptr i8, ptr %t449, i64 %t443
  call void @olang_textcopy(ptr %t451, ptr %t445, i64 %t446)
  %t452 = insertvalue { i64, ptr } undef, i64 %t447, 0
  %t453 = insertvalue { i64, ptr } %t452, ptr %t448, 1
  %t455 = extractvalue { i64, ptr } %t453, 0
  %t456 = extractvalue { i64, ptr } %t453, 1
  %t457 = mul i64 %t455, 1
  %t458 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t457)
  call void @llvm.memcpy.p0.p0.i64(ptr %t458, ptr %t456, i64 %t457, i1 false)
  %t459 = insertvalue { i64, ptr } undef, i64 %t455, 0
  %t460 = insertvalue { i64, ptr } %t459, ptr %t458, 1
  %t461 = load ptr, ptr %l234, !tbaa !29
  %t462 = load i64, ptr %l235, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s11, ptr %t461, i64 %t462, { i64, ptr } %t460)
  br label %bb102
bb102:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t465 = load i64, ptr %l12, !tbaa !24
  %t466 = load i64, ptr %l13, !tbaa !24
  %t467 = load i64, ptr %l11, !tbaa !24
  %t468 = load i64, ptr %l14, !tbaa !24
  %t469 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t470 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t472 = call i64 @__olang_fmt_i64(ptr null, i64 %t466)
  %t473 = add i64 %t470, %t472
  %t474 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t475 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t476 = add i64 %t473, %t475
  %t478 = call i64 @__olang_fmt_i64(ptr null, i64 %t467)
  %t479 = add i64 %t476, %t478
  %t480 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t481 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t482 = add i64 %t479, %t481
  %t484 = call i64 @__olang_fmt_i64(ptr null, i64 %t468)
  %t485 = add i64 %t482, %t484
  %t486 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t487 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t488 = add i64 %t485, %t487
  %t489 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t488)
  call void @olang_textcopy(ptr %t489, ptr %t469, i64 %t470)
  %t490 = getelementptr i8, ptr %t489, i64 %t470
  %t491 = call i64 @__olang_fmt_i64(ptr %t490, i64 %t466)
  %t492 = getelementptr i8, ptr %t490, i64 %t472
  call void @olang_textcopy(ptr %t492, ptr %t474, i64 %t475)
  %t493 = getelementptr i8, ptr %t492, i64 %t475
  %t494 = call i64 @__olang_fmt_i64(ptr %t493, i64 %t467)
  %t495 = getelementptr i8, ptr %t493, i64 %t478
  call void @olang_textcopy(ptr %t495, ptr %t480, i64 %t481)
  %t496 = getelementptr i8, ptr %t495, i64 %t481
  %t497 = call i64 @__olang_fmt_i64(ptr %t496, i64 %t468)
  %t498 = getelementptr i8, ptr %t496, i64 %t484
  call void @olang_textcopy(ptr %t498, ptr %t486, i64 %t487)
  %t499 = insertvalue { i64, ptr } undef, i64 %t488, 0
  %t500 = insertvalue { i64, ptr } %t499, ptr %t489, 1
  %t502 = extractvalue { i64, ptr } %t500, 0
  %t503 = extractvalue { i64, ptr } %t500, 1
  %t504 = mul i64 %t502, 1
  %t505 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t504)
  call void @llvm.memcpy.p0.p0.i64(ptr %t505, ptr %t503, i64 %t504, i1 false)
  %t506 = insertvalue { i64, ptr } undef, i64 %t502, 0
  %t507 = insertvalue { i64, ptr } %t506, ptr %t505, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s11, ptr %t464, i64 %t465, { i64, ptr } %t507)
  br label %bb103
bb103:
  %t511 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s11)
  store i64 %t511, ptr %rv
  br label %ret
bb104:
  %t513 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t515 = trunc i64 22 to i32
  %t516 = icmp eq i32 %t513, %t515
  br i1 %t516, label %bb105, label %bb106
bb105:
  store i1 true, ptr %l253, !tbaa !21
  br label %bb107
bb106:
  %t518 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t520 = trunc i64 23 to i32
  %t521 = icmp eq i32 %t518, %t520
  store i1 %t521, ptr %l253, !tbaa !21
  br label %bb107
bb107:
  %t523 = load i1, ptr %l253, !tbaa !21
  br i1 %t523, label %bb108, label %bb109
bb108:
  store i1 true, ptr %l256, !tbaa !21
  br label %bb115
bb109:
  %t524 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t526 = trunc i64 18 to i32
  %t527 = icmp eq i32 %t524, %t526
  br i1 %t527, label %bb110, label %bb111
bb110:
  %t529 = load ptr, ptr %l2, !tbaa !29
  store ptr %t529, ptr %l260, !tbaa !29
  %t530 = load ptr, ptr %l2, !tbaa !29
  %t531 = load i32, ptr %l3, !tbaa !23
  %t534 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t530, i32 %t531)
  store i32 %t534, ptr %l263
  br label %bb112
bb111:
  store i1 false, ptr %l259, !tbaa !21
  br label %bb114
bb112:
  %t535 = load ptr, ptr %l260, !tbaa !29
  %t536 = load i32, ptr %l263, !tbaa !23
  %t537 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t535, i32 %t536)
  store i32 %t537, ptr %l264
  br label %bb113
bb113:
  %t538 = load i32, ptr %l264, !range !{i32 0, i32 6}
  %t540 = trunc i64 0 to i32
  %t541 = icmp eq i32 %t538, %t540
  store i1 %t541, ptr %l259, !tbaa !21
  br label %bb114
bb114:
  %t543 = load i1, ptr %l259, !tbaa !21
  store i1 %t543, ptr %l256, !tbaa !21
  br label %bb115
bb115:
  %t544 = load i1, ptr %l256, !tbaa !21
  br i1 %t544, label %bb116, label %bb117
bb116:
  store %olang.scope zeroinitializer, ptr %s16
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t547)
  store i64 %t549, ptr %l269
  br label %bb118
bb117:
  br label %bb162
bb118:
  %t550 = load i64, ptr %l269, !tbaa !24
  store i64 %t550, ptr %l16, !tbaa !24
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t553 = getelementptr %"compiler/emit:Emitter", ptr %t551, i32 0, i32 66
  %t554 = load i32, ptr %l3, !tbaa !23
  %t556 = sext i32 %t554 to i64
  %t557 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t553, i64 %t556, i64 %t557)
  br label %bb119
bb119:
  %t561 = load ptr, ptr %l2, !tbaa !29
  store ptr %t561, ptr %l275, !tbaa !29
  %t562 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t564 = trunc i64 18 to i32
  %t565 = icmp eq i32 %t562, %t564
  %t567 = xor i1 %t565, true
  br i1 %t567, label %bb120, label %bb121
bb120:
  %t569 = load ptr, ptr %l2, !tbaa !29
  %t570 = load i32, ptr %l3, !tbaa !23
  %t573 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t569, i32 %t570)
  store i32 %t573, ptr %l282
  br label %bb122
bb121:
  %t574 = load ptr, ptr %l2, !tbaa !29
  %t575 = load i32, ptr %l3, !tbaa !23
  %t578 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t574, i32 %t575)
  store i32 %t578, ptr %l285
  br label %bb123
bb122:
  %t579 = load i32, ptr %l282, !tbaa !23
  store i32 %t579, ptr %l279, !tbaa !23
  br label %bb124
bb123:
  %t580 = load i32, ptr %l285, !tbaa !23
  store i32 %t580, ptr %l279, !tbaa !23
  br label %bb124
bb124:
  %t581 = load ptr, ptr %l275, !tbaa !29
  %t582 = load i32, ptr %l279, !tbaa !23
  %t583 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t581, i32 %t582)
  store { i64, ptr } %t583, ptr %l286
  br label %bb125
bb125:
  %t584 = load { i64, ptr }, ptr %l286, !tbaa !27
  store { i64, ptr } %t584, ptr %l17, !tbaa !27
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t586 = load i32, ptr %l3, !tbaa !23
  %t587 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t589 = extractvalue { i64, ptr } %t587, 0
  %t593 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2efieldNames(ptr %v0, ptr %s16, ptr %t585, i32 %t586, i64 %t589)
  store { i64, ptr } %t593, ptr %l291
  br label %bb126
bb126:
  %t594 = load { i64, ptr }, ptr %l291, !tbaa !27
  store { i64, ptr } %t594, ptr %l18, !tbaa !27
  %t595 = load ptr, ptr %l2, !tbaa !29
  %t596 = load i32, ptr %l3, !tbaa !23
  %t599 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %s16, ptr %t595, i32 %t596)
  store { i64, ptr } %t599, ptr %l294
  br label %bb127
bb127:
  %t600 = load { i64, ptr }, ptr %l294, !tbaa !27
  store { i64, ptr } %t600, ptr %l19, !tbaa !27
  %t601 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %s16)
  store %"std/prelude/text:StringBuilder" %t601, ptr %l295
  br label %bb128
bb128:
  %t602 = load %"std/prelude/text:StringBuilder", ptr %l295
  store %"std/prelude/text:StringBuilder" %t602, ptr %l20
  store i64 0, ptr %l21, !tbaa !24
  %t603 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t605 = extractvalue { i64, ptr } %t603, 0
  store i64 %t605, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t607 = load i64, ptr %l22, !tbaa !24
  %t608 = load i64, ptr %l21, !tbaa !24
  %t611 = icmp sgt i64 %t607, %t608
  br i1 %t611, label %bb129, label %bb130
bb129:
  %t613 = load i64, ptr %l23, !tbaa !24
  %t615 = icmp sgt i64 %t613, 0
  br i1 %t615, label %bb131, label %bb132
bb130:
  store i64 0, ptr %l301, !tbaa !24
  br label %bb134
bb131:
  %t617 = load i64, ptr %l22, !tbaa !24
  %t618 = load i64, ptr %l21, !tbaa !24
  %t621 = sub i64 %t617, %t618
  %t622 = load i64, ptr %l23, !tbaa !24
  %t625 = add i64 %t621, %t622
  %t627 = sub i64 %t625, 1
  %t628 = load i64, ptr %l23, !tbaa !24
  %t631 = sdiv i64 %t627, %t628
  store i64 %t631, ptr %l304, !tbaa !24
  br label %bb133
bb132:
  store i64 0, ptr %l304, !tbaa !24
  br label %bb133
bb133:
  %t633 = load i64, ptr %l304, !tbaa !24
  store i64 %t633, ptr %l301, !tbaa !24
  br label %bb134
bb134:
  %t634 = load i64, ptr %l301, !tbaa !24
  store i64 %t634, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb135
bb135:
  store %olang.scope zeroinitializer, ptr %s18
  %t635 = load i64, ptr %l25, !tbaa !24
  %t636 = load i64, ptr %l24, !tbaa !24
  %t639 = icmp slt i64 %t635, %t636
  %t641 = xor i1 %t639, true
  br i1 %t641, label %bb136, label %bb137
bb136:
  call void @__olang_scope_close(ptr %s18)
  br label %bb155
bb137:
  br label %bb138
bb138:
  %t643 = load i64, ptr %l21, !tbaa !24
  %t644 = load i64, ptr %l25, !tbaa !24
  %t645 = load i64, ptr %l23, !tbaa !24
  %t648 = mul i64 %t644, %t645
  %t651 = add i64 %t643, %t648
  store i64 %t651, ptr %l26, !tbaa !24
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t655 = getelementptr %"compiler/emit:Emitter", ptr %t653, i32 0, i32 0
  %t656 = load ptr, ptr %t655, !tbaa !29
  %t657 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t657, ptr %l324, !tbaa !27
  %t658 = load i64, ptr %l26, !tbaa !24
  %t660 = getelementptr { i64, ptr }, ptr %l324, i32 0, i32 1
  %t661 = load ptr, ptr %t660, !tbaa !27
  %t662 = getelementptr i32, ptr %t661, i64 %t658
  %t663 = load i32, ptr %t662, !tbaa !33
  %t666 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t656, i32 %t663)
  store i1 %t666, ptr %l327
  br label %bb139
bb139:
  %t667 = load ptr, ptr %l0, !tbaa !29
  %t668 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t668, ptr %l329, !tbaa !27
  %t669 = load i64, ptr %l26, !tbaa !24
  %t671 = getelementptr { i64, ptr }, ptr %l329, i32 0, i32 1
  %t672 = load ptr, ptr %t671, !tbaa !27
  %t673 = getelementptr i32, ptr %t672, i64 %t669
  %t674 = load i32, ptr %t673, !tbaa !33
  %t677 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t667, i32 %t674)
  store i64 %t677, ptr %l332
  br label %bb140
bb140:
  %t678 = load i64, ptr %l332, !tbaa !24
  store i64 %t678, ptr %l27, !tbaa !24
  %t679 = load i64, ptr %l27, !tbaa !24
  %t681 = icmp slt i64 %t679, 0
  br i1 %t681, label %bb141, label %bb142
bb141:
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t685 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgBytes(ptr %v0, ptr %t683)
  store i64 %t685, ptr %l336
  br label %bb143
bb142:
  br label %bb144
bb143:
  %t686 = load i64, ptr %l336, !tbaa !24
  store i64 %t686, ptr %l27, !tbaa !24
  br label %bb144
bb144:
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t689 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t687)
  store i64 %t689, ptr %l338
  br label %bb145
bb145:
  %t690 = load i64, ptr %l338, !tbaa !24
  store i64 %t690, ptr %l28, !tbaa !24
  %t691 = load ptr, ptr %l0, !tbaa !29
  store ptr %t691, ptr %l339, !tbaa !29
  %t692 = load i64, ptr %l28, !tbaa !24
  store i64 %t692, ptr %l340, !tbaa !24
  %t693 = load i64, ptr %l26, !tbaa !24
  %t695 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t696 = load ptr, ptr %t695, !tbaa !27
  %t697 = getelementptr { i64, ptr }, ptr %t696, i64 %t693
  %t698 = load { i64, ptr }, ptr %t697, !tbaa !37
  %t700 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s16, ptr %s18, { i64, ptr } %t698)
  store { i64, ptr } %t700, ptr %l343
  br label %bb146
bb146:
  %t701 = load i64, ptr %l27, !tbaa !24
  store i64 %t701, ptr %l344, !tbaa !24
  %t702 = load ptr, ptr %l2, !tbaa !29
  %t703 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t703, ptr %l346, !tbaa !27
  %t704 = load i64, ptr %l26, !tbaa !24
  %t706 = getelementptr { i64, ptr }, ptr %l346, i32 0, i32 1
  %t707 = load ptr, ptr %t706, !tbaa !27
  %t708 = getelementptr i32, ptr %t707, i64 %t704
  %t709 = load i32, ptr %t708, !tbaa !33
  %t712 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t702, i32 %t709)
  store i64 %t712, ptr %l349
  br label %bb147
bb147:
  %t713 = load i64, ptr %l349, !tbaa !24
  %t714 = mul i64 %t713, 8
  %t715 = load i64, ptr %l26, !tbaa !24
  %t717 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t718 = load ptr, ptr %t717, !tbaa !27
  %t719 = getelementptr i64, ptr %t718, i64 %t715
  %t720 = load i64, ptr %t719, !tbaa !34
  %t722 = mul i64 %t720, 8
  %t723 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t724 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t725 = load { i64, ptr }, ptr %l343, !tbaa !27
  %t726 = extractvalue { i64, ptr } %t725, 1
  %t727 = extractvalue { i64, ptr } %t725, 0
  %t728 = add i64 %t724, %t727
  %t729 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t730 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t731 = add i64 %t728, %t730
  %t732 = load i64, ptr %l344, !tbaa !24
  %t733 = call i64 @__olang_fmt_i64(ptr null, i64 %t732)
  %t734 = add i64 %t731, %t733
  %t735 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t736 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t737 = add i64 %t734, %t736
  %t739 = call i64 @__olang_fmt_i64(ptr null, i64 %t714)
  %t740 = add i64 %t737, %t739
  %t741 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t742 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t743 = add i64 %t740, %t742
  %t745 = call i64 @__olang_fmt_i64(ptr null, i64 %t722)
  %t746 = add i64 %t743, %t745
  %t747 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t748 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t749 = add i64 %t746, %t748
  %t750 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t749)
  call void @olang_textcopy(ptr %t750, ptr %t723, i64 %t724)
  %t751 = getelementptr i8, ptr %t750, i64 %t724
  call void @olang_textcopy(ptr %t751, ptr %t726, i64 %t727)
  %t752 = getelementptr i8, ptr %t751, i64 %t727
  call void @olang_textcopy(ptr %t752, ptr %t729, i64 %t730)
  %t753 = getelementptr i8, ptr %t752, i64 %t730
  %t754 = call i64 @__olang_fmt_i64(ptr %t753, i64 %t732)
  %t755 = getelementptr i8, ptr %t753, i64 %t733
  call void @olang_textcopy(ptr %t755, ptr %t735, i64 %t736)
  %t756 = getelementptr i8, ptr %t755, i64 %t736
  %t757 = call i64 @__olang_fmt_i64(ptr %t756, i64 %t714)
  %t758 = getelementptr i8, ptr %t756, i64 %t739
  call void @olang_textcopy(ptr %t758, ptr %t741, i64 %t742)
  %t759 = getelementptr i8, ptr %t758, i64 %t742
  %t760 = call i64 @__olang_fmt_i64(ptr %t759, i64 %t722)
  %t761 = getelementptr i8, ptr %t759, i64 %t745
  call void @olang_textcopy(ptr %t761, ptr %t747, i64 %t748)
  %t762 = insertvalue { i64, ptr } undef, i64 %t749, 0
  %t763 = insertvalue { i64, ptr } %t762, ptr %t750, 1
  %t765 = extractvalue { i64, ptr } %t763, 0
  %t766 = extractvalue { i64, ptr } %t763, 1
  %t767 = mul i64 %t765, 1
  %t768 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t767)
  call void @llvm.memcpy.p0.p0.i64(ptr %t768, ptr %t766, i64 %t767, i1 false)
  %t769 = insertvalue { i64, ptr } undef, i64 %t765, 0
  %t770 = insertvalue { i64, ptr } %t769, ptr %t768, 1
  %t771 = load ptr, ptr %l339, !tbaa !29
  %t772 = load i64, ptr %l340, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s18, ptr %t771, i64 %t772, { i64, ptr } %t770)
  br label %bb148
bb148:
  %t774 = load i64, ptr %l26, !tbaa !24
  %t776 = icmp sgt i64 %t774, 0
  br i1 %t776, label %bb149, label %bb150
bb149:
  store %olang.scope zeroinitializer, ptr %s21
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s16, ptr %s21, ptr %l20, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) })
  br label %bb151
bb150:
  br label %bb152
bb151:
  call void @__olang_scope_close(ptr %s21)
  br label %bb152
bb152:
  %t779 = load i64, ptr %l28, !tbaa !24
  %t780 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t781 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t783 = call i64 @__olang_fmt_i64(ptr null, i64 %t779)
  %t784 = add i64 %t781, %t783
  %t785 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t784)
  call void @olang_textcopy(ptr %t785, ptr %t780, i64 %t781)
  %t786 = getelementptr i8, ptr %t785, i64 %t781
  %t787 = call i64 @__olang_fmt_i64(ptr %t786, i64 %t779)
  %t788 = insertvalue { i64, ptr } undef, i64 %t784, 0
  %t789 = insertvalue { i64, ptr } %t788, ptr %t785, 1
  %t791 = extractvalue { i64, ptr } %t789, 0
  %t792 = extractvalue { i64, ptr } %t789, 1
  %t793 = mul i64 %t791, 1
  %t794 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t793)
  call void @llvm.memcpy.p0.p0.i64(ptr %t794, ptr %t792, i64 %t793, i1 false)
  %t795 = insertvalue { i64, ptr } undef, i64 %t791, 0
  %t796 = insertvalue { i64, ptr } %t795, ptr %t794, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s16, ptr %s18, ptr %l20, { i64, ptr } %t796)
  br label %bb153
bb153:
  call void @__olang_scope_close(ptr %s18)
  br label %bb154
bb154:
  %t799 = load i64, ptr %l25, !tbaa !24
  %t801 = add i64 %t799, 1
  store i64 %t801, ptr %l25, !tbaa !24
  br label %bb135
bb155:
  %t803 = load ptr, ptr %l0, !tbaa !29
  %t805 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t803)
  store i64 %t805, ptr %l366
  br label %bb156
bb156:
  %t806 = load i64, ptr %l366, !tbaa !24
  store i64 %t806, ptr %l29, !tbaa !24
  %t807 = load ptr, ptr %l0, !tbaa !29
  store ptr %t807, ptr %l367, !tbaa !29
  %t808 = load i64, ptr %l29, !tbaa !24
  store i64 %t808, ptr %l368, !tbaa !24
  %t810 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s16, ptr %s16, ptr %l20)
  store { i64, ptr } %t810, ptr %l370
  br label %bb157
bb157:
  %t811 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t812 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t813 = load { i64, ptr }, ptr %l370, !tbaa !27
  %t814 = extractvalue { i64, ptr } %t813, 1
  %t815 = extractvalue { i64, ptr } %t813, 0
  %t816 = add i64 %t812, %t815
  %t817 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t818 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t819 = add i64 %t816, %t818
  %t820 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t819)
  call void @olang_textcopy(ptr %t820, ptr %t811, i64 %t812)
  %t821 = getelementptr i8, ptr %t820, i64 %t812
  call void @olang_textcopy(ptr %t821, ptr %t814, i64 %t815)
  %t822 = getelementptr i8, ptr %t821, i64 %t815
  call void @olang_textcopy(ptr %t822, ptr %t817, i64 %t818)
  %t823 = insertvalue { i64, ptr } undef, i64 %t819, 0
  %t824 = insertvalue { i64, ptr } %t823, ptr %t820, 1
  %t826 = extractvalue { i64, ptr } %t824, 0
  %t827 = extractvalue { i64, ptr } %t824, 1
  %t828 = mul i64 %t826, 1
  %t829 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t828)
  call void @llvm.memcpy.p0.p0.i64(ptr %t829, ptr %t827, i64 %t828, i1 false)
  %t830 = insertvalue { i64, ptr } undef, i64 %t826, 0
  %t831 = insertvalue { i64, ptr } %t830, ptr %t829, 1
  %t832 = load ptr, ptr %l367, !tbaa !29
  %t833 = load i64, ptr %l368, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s16, ptr %t832, i64 %t833, { i64, ptr } %t831)
  br label %bb158
bb158:
  %t835 = load ptr, ptr %l0, !tbaa !29
  store ptr %t835, ptr %l373, !tbaa !29
  %t836 = load i64, ptr %l16, !tbaa !24
  store i64 %t836, ptr %l374, !tbaa !24
  %t837 = load ptr, ptr %l0, !tbaa !29
  %t838 = load i32, ptr %l3, !tbaa !23
  %t841 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %s16, ptr %t837, i32 %t838)
  store { i64, ptr } %t841, ptr %l377
  br label %bb159
bb159:
  %t842 = load { i64, ptr }, ptr %l377, !tbaa !27
  %t843 = extractvalue { i64, ptr } %t842, 0
  %t844 = extractvalue { i64, ptr } %t842, 1
  %t845 = mul i64 %t843, 1
  %t846 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t845)
  call void @llvm.memcpy.p0.p0.i64(ptr %t846, ptr %t844, i64 %t845, i1 false)
  %t847 = insertvalue { i64, ptr } undef, i64 %t843, 0
  %t848 = insertvalue { i64, ptr } %t847, ptr %t846, 1
  %t850 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s16, ptr %s16, { i64, ptr } %t848)
  store { i64, ptr } %t850, ptr %l379
  br label %bb160
bb160:
  %t851 = load i64, ptr %l11, !tbaa !24
  %t852 = load i64, ptr %l29, !tbaa !24
  %t853 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t854 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t855 = load { i64, ptr }, ptr %l379, !tbaa !27
  %t856 = extractvalue { i64, ptr } %t855, 1
  %t857 = extractvalue { i64, ptr } %t855, 0
  %t858 = add i64 %t854, %t857
  %t859 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t860 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t861 = add i64 %t858, %t860
  %t863 = call i64 @__olang_fmt_i64(ptr null, i64 %t851)
  %t864 = add i64 %t861, %t863
  %t865 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t866 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t867 = add i64 %t864, %t866
  %t869 = call i64 @__olang_fmt_i64(ptr null, i64 %t852)
  %t870 = add i64 %t867, %t869
  %t871 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t872 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t873 = add i64 %t870, %t872
  %t874 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t873)
  call void @olang_textcopy(ptr %t874, ptr %t853, i64 %t854)
  %t875 = getelementptr i8, ptr %t874, i64 %t854
  call void @olang_textcopy(ptr %t875, ptr %t856, i64 %t857)
  %t876 = getelementptr i8, ptr %t875, i64 %t857
  call void @olang_textcopy(ptr %t876, ptr %t859, i64 %t860)
  %t877 = getelementptr i8, ptr %t876, i64 %t860
  %t878 = call i64 @__olang_fmt_i64(ptr %t877, i64 %t851)
  %t879 = getelementptr i8, ptr %t877, i64 %t863
  call void @olang_textcopy(ptr %t879, ptr %t865, i64 %t866)
  %t880 = getelementptr i8, ptr %t879, i64 %t866
  %t881 = call i64 @__olang_fmt_i64(ptr %t880, i64 %t852)
  %t882 = getelementptr i8, ptr %t880, i64 %t869
  call void @olang_textcopy(ptr %t882, ptr %t871, i64 %t872)
  %t883 = insertvalue { i64, ptr } undef, i64 %t873, 0
  %t884 = insertvalue { i64, ptr } %t883, ptr %t874, 1
  %t886 = extractvalue { i64, ptr } %t884, 0
  %t887 = extractvalue { i64, ptr } %t884, 1
  %t888 = mul i64 %t886, 1
  %t889 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t888)
  call void @llvm.memcpy.p0.p0.i64(ptr %t889, ptr %t887, i64 %t888, i1 false)
  %t890 = insertvalue { i64, ptr } undef, i64 %t886, 0
  %t891 = insertvalue { i64, ptr } %t890, ptr %t889, 1
  %t892 = load ptr, ptr %l373, !tbaa !29
  %t893 = load i64, ptr %l374, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s16, ptr %t892, i64 %t893, { i64, ptr } %t891)
  br label %bb161
bb161:
  %t895 = load i64, ptr %l16, !tbaa !24
  call void @__olang_scope_close(ptr %s16)
  store i64 %t895, ptr %rv
  br label %ret
bb162:
  %t897 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t899 = trunc i64 24 to i32
  %t900 = icmp eq i32 %t897, %t899
  br i1 %t900, label %bb163, label %bb164
bb163:
  store i1 true, ptr %l387, !tbaa !21
  br label %bb170
bb164:
  %t902 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t904 = trunc i64 18 to i32
  %t905 = icmp eq i32 %t902, %t904
  br i1 %t905, label %bb165, label %bb166
bb165:
  %t907 = load ptr, ptr %l2, !tbaa !29
  store ptr %t907, ptr %l391, !tbaa !29
  %t908 = load ptr, ptr %l2, !tbaa !29
  %t909 = load i32, ptr %l3, !tbaa !23
  %t912 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t908, i32 %t909)
  store i32 %t912, ptr %l394
  br label %bb167
bb166:
  store i1 false, ptr %l390, !tbaa !21
  br label %bb169
bb167:
  %t913 = load ptr, ptr %l391, !tbaa !29
  %t914 = load i32, ptr %l394, !tbaa !23
  %t915 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t913, i32 %t914)
  store i32 %t915, ptr %l395
  br label %bb168
bb168:
  %t916 = load i32, ptr %l395, !range !{i32 0, i32 6}
  %t918 = trunc i64 1 to i32
  %t919 = icmp eq i32 %t916, %t918
  store i1 %t919, ptr %l390, !tbaa !21
  br label %bb169
bb169:
  %t921 = load i1, ptr %l390, !tbaa !21
  store i1 %t921, ptr %l387, !tbaa !21
  br label %bb170
bb170:
  %t922 = load i1, ptr %l387, !tbaa !21
  br i1 %t922, label %bb171, label %bb172
bb171:
  store %olang.scope zeroinitializer, ptr %s26
  %t925 = load ptr, ptr %l0, !tbaa !29
  %t927 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t925)
  store i64 %t927, ptr %l400
  br label %bb173
bb172:
  br label %bb256
bb173:
  %t928 = load i64, ptr %l400, !tbaa !24
  store i64 %t928, ptr %l31, !tbaa !24
  %t929 = load ptr, ptr %l0, !tbaa !29
  %t931 = getelementptr %"compiler/emit:Emitter", ptr %t929, i32 0, i32 66
  %t932 = load i32, ptr %l3, !tbaa !23
  %t934 = sext i32 %t932 to i64
  %t935 = load i64, ptr %l31, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t931, i64 %t934, i64 %t935)
  br label %bb174
bb174:
  %t939 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t941 = trunc i64 18 to i32
  %t942 = icmp eq i32 %t939, %t941
  br i1 %t942, label %bb175, label %bb176
bb175:
  %t944 = load ptr, ptr %l2, !tbaa !29
  %t945 = load i32, ptr %l3, !tbaa !23
  %t948 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s26, ptr %t944, i32 %t945)
  store { i64, ptr } %t948, ptr %l411
  br label %bb177
bb176:
  %t949 = icmp sge i64 0, 0
  br i1 %t949, label %bb178, label %bb179
bb177:
  %t951 = load { i64, ptr }, ptr %l411, !tbaa !27
  store { i64, ptr } %t951, ptr %l408, !tbaa !27
  br label %bb182
bb178:
  %t952 = icmp sle i64 0, 2305843009213693951
  br i1 %t952, label %bb180, label %bb181
bb179:
  call void @__olang_check_failed(ptr @olang_loc_649f734ddce51468_b7eb8be07e4dd31c)
  unreachable
bb180:
  %t954 = mul i64 0, 4
  %t955 = insertvalue { i64, ptr } undef, i64 0, 0
  %t956 = insertvalue { i64, ptr } %t955, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t956, ptr %l408, !tbaa !27
  br label %bb182
bb181:
  call void @__olang_check_failed(ptr @olang_loc_649f734ddce51468_b7eb8be07e4dd31c)
  unreachable
bb182:
  %t958 = load { i64, ptr }, ptr %l408, !tbaa !27
  store { i64, ptr } %t958, ptr %l32, !tbaa !27
  %t959 = load ptr, ptr %l2, !tbaa !29
  store ptr %t959, ptr %l415, !tbaa !29
  %t960 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t962 = trunc i64 24 to i32
  %t963 = icmp eq i32 %t960, %t962
  br i1 %t963, label %bb183, label %bb184
bb183:
  %t965 = load ptr, ptr %l2, !tbaa !29
  %t966 = load i32, ptr %l3, !tbaa !23
  %t969 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t965, i32 %t966)
  store i32 %t969, ptr %l421
  br label %bb185
bb184:
  %t970 = load ptr, ptr %l2, !tbaa !29
  %t971 = load i32, ptr %l3, !tbaa !23
  %t974 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t970, i32 %t971)
  store i32 %t974, ptr %l424
  br label %bb186
bb185:
  %t975 = load i32, ptr %l421, !tbaa !23
  store i32 %t975, ptr %l418, !tbaa !23
  br label %bb187
bb186:
  %t976 = load i32, ptr %l424, !tbaa !23
  store i32 %t976, ptr %l418, !tbaa !23
  br label %bb187
bb187:
  %t977 = load ptr, ptr %l415, !tbaa !29
  %t978 = load i32, ptr %l418, !tbaa !23
  %t979 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t977, i32 %t978)
  store { i64, ptr } %t979, ptr %l425
  br label %bb188
bb188:
  %t980 = load { i64, ptr }, ptr %l425, !tbaa !27
  store { i64, ptr } %t980, ptr %l33, !tbaa !27
  %t981 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %s26)
  store %"std/prelude/text:StringBuilder" %t981, ptr %l426
  br label %bb189
bb189:
  %t982 = load %"std/prelude/text:StringBuilder", ptr %l426
  store %"std/prelude/text:StringBuilder" %t982, ptr %l34
  store i64 0, ptr %l35, !tbaa !24
  %t983 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t985 = extractvalue { i64, ptr } %t983, 0
  store i64 %t985, ptr %l36, !tbaa !24
  store i64 1, ptr %l37, !tbaa !24
  %t987 = load i64, ptr %l36, !tbaa !24
  %t988 = load i64, ptr %l35, !tbaa !24
  %t991 = icmp sgt i64 %t987, %t988
  br i1 %t991, label %bb190, label %bb191
bb190:
  %t993 = load i64, ptr %l37, !tbaa !24
  %t995 = icmp sgt i64 %t993, 0
  br i1 %t995, label %bb192, label %bb193
bb191:
  store i64 0, ptr %l432, !tbaa !24
  br label %bb195
bb192:
  %t997 = load i64, ptr %l36, !tbaa !24
  %t998 = load i64, ptr %l35, !tbaa !24
  %t1001 = sub i64 %t997, %t998
  %t1002 = load i64, ptr %l37, !tbaa !24
  %t1005 = add i64 %t1001, %t1002
  %t1007 = sub i64 %t1005, 1
  %t1008 = load i64, ptr %l37, !tbaa !24
  %t1011 = sdiv i64 %t1007, %t1008
  store i64 %t1011, ptr %l435, !tbaa !24
  br label %bb194
bb193:
  store i64 0, ptr %l435, !tbaa !24
  br label %bb194
bb194:
  %t1013 = load i64, ptr %l435, !tbaa !24
  store i64 %t1013, ptr %l432, !tbaa !24
  br label %bb195
bb195:
  %t1014 = load i64, ptr %l432, !tbaa !24
  store i64 %t1014, ptr %l38, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  br label %bb196
bb196:
  store %olang.scope zeroinitializer, ptr %s28
  %t1015 = load i64, ptr %l39, !tbaa !24
  %t1016 = load i64, ptr %l38, !tbaa !24
  %t1019 = icmp slt i64 %t1015, %t1016
  %t1021 = xor i1 %t1019, true
  br i1 %t1021, label %bb197, label %bb198
bb197:
  call void @__olang_scope_close(ptr %s28)
  br label %bb216
bb198:
  br label %bb199
bb199:
  %t1023 = load i64, ptr %l35, !tbaa !24
  %t1024 = load i64, ptr %l39, !tbaa !24
  %t1025 = load i64, ptr %l37, !tbaa !24
  %t1028 = mul i64 %t1024, %t1025
  %t1031 = add i64 %t1023, %t1028
  store i64 %t1031, ptr %l40, !tbaa !24
  %t1033 = load ptr, ptr %l0, !tbaa !29
  %t1035 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1033)
  store i64 %t1035, ptr %l454
  br label %bb200
bb200:
  %t1036 = load i64, ptr %l454, !tbaa !24
  store i64 %t1036, ptr %l41, !tbaa !24
  %t1037 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t1039 = extractvalue { i64, ptr } %t1037, 0
  %t1041 = icmp sgt i64 %t1039, 0
  br i1 %t1041, label %bb201, label %bb202
bb201:
  %t1043 = load i64, ptr %l40, !tbaa !24
  %t1044 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t1046 = extractvalue { i64, ptr } %t1044, 0
  %t1049 = icmp slt i64 %t1043, %t1046
  store i1 %t1049, ptr %l458, !tbaa !21
  br label %bb203
bb202:
  store i1 false, ptr %l458, !tbaa !21
  br label %bb203
bb203:
  %t1051 = load i1, ptr %l458, !tbaa !21
  br i1 %t1051, label %bb204, label %bb205
bb204:
  %t1052 = load ptr, ptr %l0, !tbaa !29
  %t1053 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1053, ptr %l465, !tbaa !27
  %t1054 = load i64, ptr %l40, !tbaa !24
  %t1056 = getelementptr { i64, ptr }, ptr %l465, i32 0, i32 1
  %t1057 = load ptr, ptr %t1056, !tbaa !27
  %t1058 = getelementptr i32, ptr %t1057, i64 %t1054
  %t1059 = load i32, ptr %t1058, !tbaa !33
  %t1062 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s28, ptr %t1052, i32 %t1059)
  store { i64, ptr } %t1062, ptr %l468
  br label %bb206
bb205:
  %t1063 = load i64, ptr %l40, !tbaa !24
  %t1065 = call i64 @__olang_fmt_i64(ptr null, i64 %t1063)
  %t1066 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1065)
  %t1067 = call i64 @__olang_fmt_i64(ptr %t1066, i64 %t1063)
  %t1068 = insertvalue { i64, ptr } undef, i64 %t1065, 0
  %t1069 = insertvalue { i64, ptr } %t1068, ptr %t1066, 1
  %t1071 = extractvalue { i64, ptr } %t1069, 0
  %t1072 = extractvalue { i64, ptr } %t1069, 1
  %t1073 = mul i64 %t1071, 1
  %t1074 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1073)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1074, ptr %t1072, i64 %t1073, i1 false)
  %t1075 = insertvalue { i64, ptr } undef, i64 %t1071, 0
  %t1076 = insertvalue { i64, ptr } %t1075, ptr %t1074, 1
  store { i64, ptr } %t1076, ptr %l463, !tbaa !27
  br label %bb207
bb206:
  %t1078 = load { i64, ptr }, ptr %l468, !tbaa !27
  store { i64, ptr } %t1078, ptr %l463, !tbaa !27
  br label %bb207
bb207:
  %t1079 = load { i64, ptr }, ptr %l463, !tbaa !27
  %t1080 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1080, ptr %l472, !tbaa !29
  %t1081 = load i64, ptr %l41, !tbaa !24
  store i64 %t1081, ptr %l473, !tbaa !24
  %t1084 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s28, ptr %s28, { i64, ptr } %t1079)
  store { i64, ptr } %t1084, ptr %l475
  br label %bb208
bb208:
  %t1085 = load i64, ptr %l40, !tbaa !24
  %t1086 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t1087 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t1088 = load { i64, ptr }, ptr %l475, !tbaa !27
  %t1089 = extractvalue { i64, ptr } %t1088, 1
  %t1090 = extractvalue { i64, ptr } %t1088, 0
  %t1091 = add i64 %t1087, %t1090
  %t1092 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t1093 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t1094 = add i64 %t1091, %t1093
  %t1096 = call i64 @__olang_fmt_i64(ptr null, i64 %t1085)
  %t1097 = add i64 %t1094, %t1096
  %t1098 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t1099 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t1100 = add i64 %t1097, %t1099
  %t1101 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1100)
  call void @olang_textcopy(ptr %t1101, ptr %t1086, i64 %t1087)
  %t1102 = getelementptr i8, ptr %t1101, i64 %t1087
  call void @olang_textcopy(ptr %t1102, ptr %t1089, i64 %t1090)
  %t1103 = getelementptr i8, ptr %t1102, i64 %t1090
  call void @olang_textcopy(ptr %t1103, ptr %t1092, i64 %t1093)
  %t1104 = getelementptr i8, ptr %t1103, i64 %t1093
  %t1105 = call i64 @__olang_fmt_i64(ptr %t1104, i64 %t1085)
  %t1106 = getelementptr i8, ptr %t1104, i64 %t1096
  call void @olang_textcopy(ptr %t1106, ptr %t1098, i64 %t1099)
  %t1107 = insertvalue { i64, ptr } undef, i64 %t1100, 0
  %t1108 = insertvalue { i64, ptr } %t1107, ptr %t1101, 1
  %t1110 = extractvalue { i64, ptr } %t1108, 0
  %t1111 = extractvalue { i64, ptr } %t1108, 1
  %t1112 = mul i64 %t1110, 1
  %t1113 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1112)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1113, ptr %t1111, i64 %t1112, i1 false)
  %t1114 = insertvalue { i64, ptr } undef, i64 %t1110, 0
  %t1115 = insertvalue { i64, ptr } %t1114, ptr %t1113, 1
  %t1116 = load ptr, ptr %l472, !tbaa !29
  %t1117 = load i64, ptr %l473, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s28, ptr %t1116, i64 %t1117, { i64, ptr } %t1115)
  br label %bb209
bb209:
  %t1119 = load i64, ptr %l40, !tbaa !24
  %t1121 = icmp sgt i64 %t1119, 0
  br i1 %t1121, label %bb210, label %bb211
bb210:
  store %olang.scope zeroinitializer, ptr %s31
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s26, ptr %s31, ptr %l34, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb212
bb211:
  br label %bb213
bb212:
  call void @__olang_scope_close(ptr %s31)
  br label %bb213
bb213:
  %t1124 = load i64, ptr %l41, !tbaa !24
  %t1125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t1126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t1128 = call i64 @__olang_fmt_i64(ptr null, i64 %t1124)
  %t1129 = add i64 %t1126, %t1128
  %t1130 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1129)
  call void @olang_textcopy(ptr %t1130, ptr %t1125, i64 %t1126)
  %t1131 = getelementptr i8, ptr %t1130, i64 %t1126
  %t1132 = call i64 @__olang_fmt_i64(ptr %t1131, i64 %t1124)
  %t1133 = insertvalue { i64, ptr } undef, i64 %t1129, 0
  %t1134 = insertvalue { i64, ptr } %t1133, ptr %t1130, 1
  %t1136 = extractvalue { i64, ptr } %t1134, 0
  %t1137 = extractvalue { i64, ptr } %t1134, 1
  %t1138 = mul i64 %t1136, 1
  %t1139 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1138)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1139, ptr %t1137, i64 %t1138, i1 false)
  %t1140 = insertvalue { i64, ptr } undef, i64 %t1136, 0
  %t1141 = insertvalue { i64, ptr } %t1140, ptr %t1139, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s26, ptr %s28, ptr %l34, { i64, ptr } %t1141)
  br label %bb214
bb214:
  call void @__olang_scope_close(ptr %s28)
  br label %bb215
bb215:
  %t1144 = load i64, ptr %l39, !tbaa !24
  %t1146 = add i64 %t1144, 1
  store i64 %t1146, ptr %l39, !tbaa !24
  br label %bb196
bb216:
  %t1148 = load ptr, ptr %l0, !tbaa !29
  %t1150 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1148)
  store i64 %t1150, ptr %l489
  br label %bb217
bb217:
  %t1151 = load i64, ptr %l489, !tbaa !24
  store i64 %t1151, ptr %l43, !tbaa !24
  %t1152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1152, ptr %l490, !tbaa !29
  %t1153 = load i64, ptr %l43, !tbaa !24
  store i64 %t1153, ptr %l491, !tbaa !24
  %t1155 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s26, ptr %s26, ptr %l34)
  store { i64, ptr } %t1155, ptr %l493
  br label %bb218
bb218:
  %t1156 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t1157 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t1158 = load { i64, ptr }, ptr %l493, !tbaa !27
  %t1159 = extractvalue { i64, ptr } %t1158, 1
  %t1160 = extractvalue { i64, ptr } %t1158, 0
  %t1161 = add i64 %t1157, %t1160
  %t1162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t1163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t1164 = add i64 %t1161, %t1163
  %t1165 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1164)
  call void @olang_textcopy(ptr %t1165, ptr %t1156, i64 %t1157)
  %t1166 = getelementptr i8, ptr %t1165, i64 %t1157
  call void @olang_textcopy(ptr %t1166, ptr %t1159, i64 %t1160)
  %t1167 = getelementptr i8, ptr %t1166, i64 %t1160
  call void @olang_textcopy(ptr %t1167, ptr %t1162, i64 %t1163)
  %t1168 = insertvalue { i64, ptr } undef, i64 %t1164, 0
  %t1169 = insertvalue { i64, ptr } %t1168, ptr %t1165, 1
  %t1171 = extractvalue { i64, ptr } %t1169, 0
  %t1172 = extractvalue { i64, ptr } %t1169, 1
  %t1173 = mul i64 %t1171, 1
  %t1174 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1174, ptr %t1172, i64 %t1173, i1 false)
  %t1175 = insertvalue { i64, ptr } undef, i64 %t1171, 0
  %t1176 = insertvalue { i64, ptr } %t1175, ptr %t1174, 1
  %t1177 = load ptr, ptr %l490, !tbaa !29
  %t1178 = load i64, ptr %l491, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s26, ptr %t1177, i64 %t1178, { i64, ptr } %t1176)
  br label %bb219
bb219:
  %t1180 = load ptr, ptr %l0, !tbaa !29
  %t1181 = load i32, ptr %l3, !tbaa !23
  %t1184 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %t1180, i32 %t1181)
  store i1 %t1184, ptr %l498
  br label %bb220
bb220:
  %t1185 = load i1, ptr %l498, !tbaa !21
  store i1 %t1185, ptr %l44, !tbaa !21
  %t1186 = load i1, ptr %l44, !tbaa !21
  %t1188 = xor i1 %t1186, true
  br i1 %t1188, label %bb221, label %bb222
bb221:
  %t1190 = load i64, ptr %l31, !tbaa !24
  store i64 %t1190, ptr %l501, !tbaa !24
  br label %bb224
bb222:
  %t1192 = load ptr, ptr %l0, !tbaa !29
  %t1194 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1192)
  store i64 %t1194, ptr %l504
  br label %bb223
bb223:
  %t1195 = load i64, ptr %l504, !tbaa !24
  store i64 %t1195, ptr %l501, !tbaa !24
  br label %bb224
bb224:
  %t1196 = load i64, ptr %l501, !tbaa !24
  store i64 %t1196, ptr %l45, !tbaa !24
  %t1197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1197, ptr %l505, !tbaa !29
  %t1198 = load i1, ptr %l44, !tbaa !21
  br i1 %t1198, label %bb225, label %bb226
bb225:
  %t1200 = load ptr, ptr %l2, !tbaa !29
  %t1202 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s26, ptr %t1200, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i32 %t1202, ptr %l509
  br label %bb227
bb226:
  %t1203 = load ptr, ptr %l2, !tbaa !29
  %t1205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s26, ptr %t1203, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store i32 %t1205, ptr %l511
  br label %bb228
bb227:
  %t1206 = load i32, ptr %l509, !tbaa !23
  store i32 %t1206, ptr %l507, !tbaa !23
  br label %bb229
bb228:
  %t1207 = load i32, ptr %l511, !tbaa !23
  store i32 %t1207, ptr %l507, !tbaa !23
  br label %bb229
bb229:
  %t1208 = load ptr, ptr %l505, !tbaa !29
  %t1209 = load i32, ptr %l507, !tbaa !23
  %t1210 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t1208, i32 %t1209)
  store i64 %t1210, ptr %l512
  br label %bb230
bb230:
  %t1211 = load i64, ptr %l512, !tbaa !24
  store i64 %t1211, ptr %l46, !tbaa !24
  %t1212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1212, ptr %l513, !tbaa !29
  %t1213 = load i64, ptr %l45, !tbaa !24
  store i64 %t1213, ptr %l514, !tbaa !24
  %t1214 = load ptr, ptr %l0, !tbaa !29
  %t1215 = load i32, ptr %l3, !tbaa !23
  %t1218 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %s26, ptr %t1214, i32 %t1215)
  store { i64, ptr } %t1218, ptr %l517
  br label %bb231
bb231:
  %t1219 = load { i64, ptr }, ptr %l517, !tbaa !27
  %t1220 = extractvalue { i64, ptr } %t1219, 0
  %t1221 = extractvalue { i64, ptr } %t1219, 1
  %t1222 = mul i64 %t1220, 1
  %t1223 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1223, ptr %t1221, i64 %t1222, i1 false)
  %t1224 = insertvalue { i64, ptr } undef, i64 %t1220, 0
  %t1225 = insertvalue { i64, ptr } %t1224, ptr %t1223, 1
  %t1227 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s26, ptr %s26, { i64, ptr } %t1225)
  store { i64, ptr } %t1227, ptr %l519
  br label %bb232
bb232:
  %t1228 = load i1, ptr %l44, !tbaa !21
  br i1 %t1228, label %bb233, label %bb234
bb233:
  store i64 64, ptr %l521, !tbaa !24
  br label %bb235
bb234:
  store i64 32, ptr %l521, !tbaa !24
  br label %bb235
bb235:
  %t1230 = load i64, ptr %l46, !tbaa !24
  %t1231 = load i64, ptr %l43, !tbaa !24
  %t1232 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t1233 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t1234 = load { i64, ptr }, ptr %l519, !tbaa !27
  %t1235 = extractvalue { i64, ptr } %t1234, 1
  %t1236 = extractvalue { i64, ptr } %t1234, 0
  %t1237 = add i64 %t1233, %t1236
  %t1238 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t1239 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t1240 = add i64 %t1237, %t1239
  %t1241 = load i64, ptr %l521, !tbaa !24
  %t1242 = call i64 @__olang_fmt_i64(ptr null, i64 %t1241)
  %t1243 = add i64 %t1240, %t1242
  %t1244 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t1245 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t1246 = add i64 %t1243, %t1245
  %t1248 = call i64 @__olang_fmt_i64(ptr null, i64 %t1230)
  %t1249 = add i64 %t1246, %t1248
  %t1250 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t1251 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t1252 = add i64 %t1249, %t1251
  %t1254 = call i64 @__olang_fmt_i64(ptr null, i64 %t1231)
  %t1255 = add i64 %t1252, %t1254
  %t1256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t1257 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t1258 = add i64 %t1255, %t1257
  %t1259 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1258)
  call void @olang_textcopy(ptr %t1259, ptr %t1232, i64 %t1233)
  %t1260 = getelementptr i8, ptr %t1259, i64 %t1233
  call void @olang_textcopy(ptr %t1260, ptr %t1235, i64 %t1236)
  %t1261 = getelementptr i8, ptr %t1260, i64 %t1236
  call void @olang_textcopy(ptr %t1261, ptr %t1238, i64 %t1239)
  %t1262 = getelementptr i8, ptr %t1261, i64 %t1239
  %t1263 = call i64 @__olang_fmt_i64(ptr %t1262, i64 %t1241)
  %t1264 = getelementptr i8, ptr %t1262, i64 %t1242
  call void @olang_textcopy(ptr %t1264, ptr %t1244, i64 %t1245)
  %t1265 = getelementptr i8, ptr %t1264, i64 %t1245
  %t1266 = call i64 @__olang_fmt_i64(ptr %t1265, i64 %t1230)
  %t1267 = getelementptr i8, ptr %t1265, i64 %t1248
  call void @olang_textcopy(ptr %t1267, ptr %t1250, i64 %t1251)
  %t1268 = getelementptr i8, ptr %t1267, i64 %t1251
  %t1269 = call i64 @__olang_fmt_i64(ptr %t1268, i64 %t1231)
  %t1270 = getelementptr i8, ptr %t1268, i64 %t1254
  call void @olang_textcopy(ptr %t1270, ptr %t1256, i64 %t1257)
  %t1271 = insertvalue { i64, ptr } undef, i64 %t1258, 0
  %t1272 = insertvalue { i64, ptr } %t1271, ptr %t1259, 1
  %t1274 = extractvalue { i64, ptr } %t1272, 0
  %t1275 = extractvalue { i64, ptr } %t1272, 1
  %t1276 = mul i64 %t1274, 1
  %t1277 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1276)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1277, ptr %t1275, i64 %t1276, i1 false)
  %t1278 = insertvalue { i64, ptr } undef, i64 %t1274, 0
  %t1279 = insertvalue { i64, ptr } %t1278, ptr %t1277, 1
  %t1280 = load ptr, ptr %l513, !tbaa !29
  %t1281 = load i64, ptr %l514, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s26, ptr %t1280, i64 %t1281, { i64, ptr } %t1279)
  br label %bb236
bb236:
  %t1283 = load i1, ptr %l44, !tbaa !21
  %t1285 = xor i1 %t1283, true
  br i1 %t1285, label %bb237, label %bb238
bb237:
  %t1287 = load i64, ptr %l31, !tbaa !24
  call void @__olang_scope_close(ptr %s26)
  store i64 %t1287, ptr %rv
  br label %ret
bb238:
  br label %bb239
bb239:
  %t1289 = load ptr, ptr %l2, !tbaa !29
  %t1290 = load i32, ptr %l3, !tbaa !23
  %t1293 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePayloadSize(ptr %v0, ptr %t1289, i32 %t1290)
  store i64 %t1293, ptr %l531
  br label %bb240
bb240:
  %t1294 = load i64, ptr %l531, !tbaa !24
  %t1295 = sdiv i64 %t1294, 8
  store i64 %t1295, ptr %l47, !tbaa !24
  %t1297 = load ptr, ptr %l0, !tbaa !29
  %t1299 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1297)
  store i64 %t1299, ptr %l534
  br label %bb241
bb241:
  %t1300 = load i64, ptr %l534, !tbaa !24
  store i64 %t1300, ptr %l48, !tbaa !24
  %t1301 = load ptr, ptr %l0, !tbaa !29
  %t1303 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1301)
  store i64 %t1303, ptr %l536
  br label %bb242
bb242:
  %t1304 = load i64, ptr %l536, !tbaa !24
  store i64 %t1304, ptr %l49, !tbaa !24
  %t1305 = load ptr, ptr %l0, !tbaa !29
  %t1306 = load i64, ptr %l49, !tbaa !24
  %t1307 = load i64, ptr %l47, !tbaa !24
  %t1308 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t1309 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t1311 = call i64 @__olang_fmt_i64(ptr null, i64 %t1307)
  %t1312 = add i64 %t1309, %t1311
  %t1313 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t1314 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t1315 = add i64 %t1312, %t1314
  %t1316 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1315)
  call void @olang_textcopy(ptr %t1316, ptr %t1308, i64 %t1309)
  %t1317 = getelementptr i8, ptr %t1316, i64 %t1309
  %t1318 = call i64 @__olang_fmt_i64(ptr %t1317, i64 %t1307)
  %t1319 = getelementptr i8, ptr %t1317, i64 %t1311
  call void @olang_textcopy(ptr %t1319, ptr %t1313, i64 %t1314)
  %t1320 = insertvalue { i64, ptr } undef, i64 %t1315, 0
  %t1321 = insertvalue { i64, ptr } %t1320, ptr %t1316, 1
  %t1323 = extractvalue { i64, ptr } %t1321, 0
  %t1324 = extractvalue { i64, ptr } %t1321, 1
  %t1325 = mul i64 %t1323, 1
  %t1326 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1325)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1326, ptr %t1324, i64 %t1325, i1 false)
  %t1327 = insertvalue { i64, ptr } undef, i64 %t1323, 0
  %t1328 = insertvalue { i64, ptr } %t1327, ptr %t1326, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s26, ptr %t1305, i64 %t1306, { i64, ptr } %t1328)
  br label %bb243
bb243:
  %t1332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1332, ptr %l542, !tbaa !29
  %t1333 = load i64, ptr %l48, !tbaa !24
  store i64 %t1333, ptr %l543, !tbaa !24
  %t1334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1334, ptr %l544, !tbaa !29
  %t1335 = load ptr, ptr %l2, !tbaa !29
  %t1337 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s26, ptr %t1335, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d74, i32 0, i32 1) })
  store i32 %t1337, ptr %l546
  br label %bb244
bb244:
  %t1338 = load ptr, ptr %l544, !tbaa !29
  %t1339 = load i32, ptr %l546, !tbaa !23
  %t1340 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t1338, i32 %t1339)
  store i64 %t1340, ptr %l547
  br label %bb245
bb245:
  %t1341 = load i64, ptr %l47, !tbaa !24
  %t1343 = mul i64 %t1341, 64
  %t1344 = load i64, ptr %l49, !tbaa !24
  %t1345 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t1346 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t1347 = load i64, ptr %l547, !tbaa !24
  %t1348 = call i64 @__olang_fmt_i64(ptr null, i64 %t1347)
  %t1349 = add i64 %t1346, %t1348
  %t1350 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t1351 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t1352 = add i64 %t1349, %t1351
  %t1354 = call i64 @__olang_fmt_i64(ptr null, i64 %t1343)
  %t1355 = add i64 %t1352, %t1354
  %t1356 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t1357 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t1358 = add i64 %t1355, %t1357
  %t1360 = call i64 @__olang_fmt_i64(ptr null, i64 %t1344)
  %t1361 = add i64 %t1358, %t1360
  %t1362 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t1363 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t1364 = add i64 %t1361, %t1363
  %t1365 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1364)
  call void @olang_textcopy(ptr %t1365, ptr %t1345, i64 %t1346)
  %t1366 = getelementptr i8, ptr %t1365, i64 %t1346
  %t1367 = call i64 @__olang_fmt_i64(ptr %t1366, i64 %t1347)
  %t1368 = getelementptr i8, ptr %t1366, i64 %t1348
  call void @olang_textcopy(ptr %t1368, ptr %t1350, i64 %t1351)
  %t1369 = getelementptr i8, ptr %t1368, i64 %t1351
  %t1370 = call i64 @__olang_fmt_i64(ptr %t1369, i64 %t1343)
  %t1371 = getelementptr i8, ptr %t1369, i64 %t1354
  call void @olang_textcopy(ptr %t1371, ptr %t1356, i64 %t1357)
  %t1372 = getelementptr i8, ptr %t1371, i64 %t1357
  %t1373 = call i64 @__olang_fmt_i64(ptr %t1372, i64 %t1344)
  %t1374 = getelementptr i8, ptr %t1372, i64 %t1360
  call void @olang_textcopy(ptr %t1374, ptr %t1362, i64 %t1363)
  %t1375 = insertvalue { i64, ptr } undef, i64 %t1364, 0
  %t1376 = insertvalue { i64, ptr } %t1375, ptr %t1365, 1
  %t1378 = extractvalue { i64, ptr } %t1376, 0
  %t1379 = extractvalue { i64, ptr } %t1376, 1
  %t1380 = mul i64 %t1378, 1
  %t1381 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1380)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1381, ptr %t1379, i64 %t1380, i1 false)
  %t1382 = insertvalue { i64, ptr } undef, i64 %t1378, 0
  %t1383 = insertvalue { i64, ptr } %t1382, ptr %t1381, 1
  %t1384 = load ptr, ptr %l542, !tbaa !29
  %t1385 = load i64, ptr %l543, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s26, ptr %t1384, i64 %t1385, { i64, ptr } %t1383)
  br label %bb246
bb246:
  %t1387 = load ptr, ptr %l0, !tbaa !29
  %t1389 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1387)
  store i64 %t1389, ptr %l554
  br label %bb247
bb247:
  %t1390 = load i64, ptr %l554, !tbaa !24
  store i64 %t1390, ptr %l50, !tbaa !24
  %t1391 = load ptr, ptr %l0, !tbaa !29
  %t1393 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1391)
  store i64 %t1393, ptr %l556
  br label %bb248
bb248:
  %t1394 = load i64, ptr %l556, !tbaa !24
  store i64 %t1394, ptr %l51, !tbaa !24
  %t1395 = load ptr, ptr %l0, !tbaa !29
  %t1397 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1395)
  store i64 %t1397, ptr %l558
  br label %bb249
bb249:
  %t1398 = load i64, ptr %l558, !tbaa !24
  store i64 %t1398, ptr %l52, !tbaa !24
  %t1399 = load ptr, ptr %l0, !tbaa !29
  %t1400 = load i64, ptr %l50, !tbaa !24
  %t1401 = load i64, ptr %l45, !tbaa !24
  %t1402 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t1403 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t1405 = call i64 @__olang_fmt_i64(ptr null, i64 %t1401)
  %t1406 = add i64 %t1403, %t1405
  %t1407 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t1408 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t1409 = add i64 %t1406, %t1408
  %t1410 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1409)
  call void @olang_textcopy(ptr %t1410, ptr %t1402, i64 %t1403)
  %t1411 = getelementptr i8, ptr %t1410, i64 %t1403
  %t1412 = call i64 @__olang_fmt_i64(ptr %t1411, i64 %t1401)
  %t1413 = getelementptr i8, ptr %t1411, i64 %t1405
  call void @olang_textcopy(ptr %t1413, ptr %t1407, i64 %t1408)
  %t1414 = insertvalue { i64, ptr } undef, i64 %t1409, 0
  %t1415 = insertvalue { i64, ptr } %t1414, ptr %t1410, 1
  %t1417 = extractvalue { i64, ptr } %t1415, 0
  %t1418 = extractvalue { i64, ptr } %t1415, 1
  %t1419 = mul i64 %t1417, 1
  %t1420 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1419)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1420, ptr %t1418, i64 %t1419, i1 false)
  %t1421 = insertvalue { i64, ptr } undef, i64 %t1417, 0
  %t1422 = insertvalue { i64, ptr } %t1421, ptr %t1420, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s26, ptr %t1399, i64 %t1400, { i64, ptr } %t1422)
  br label %bb250
bb250:
  %t1426 = load ptr, ptr %l0, !tbaa !29
  %t1427 = load i64, ptr %l51, !tbaa !24
  %t1428 = load i64, ptr %l48, !tbaa !24
  %t1429 = load i64, ptr %l47, !tbaa !24
  %t1431 = mul i64 %t1429, 64
  %t1432 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t1433 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t1435 = call i64 @__olang_fmt_i64(ptr null, i64 %t1428)
  %t1436 = add i64 %t1433, %t1435
  %t1437 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t1438 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t1439 = add i64 %t1436, %t1438
  %t1441 = call i64 @__olang_fmt_i64(ptr null, i64 %t1431)
  %t1442 = add i64 %t1439, %t1441
  %t1443 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t1444 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t1445 = add i64 %t1442, %t1444
  %t1446 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1445)
  call void @olang_textcopy(ptr %t1446, ptr %t1432, i64 %t1433)
  %t1447 = getelementptr i8, ptr %t1446, i64 %t1433
  %t1448 = call i64 @__olang_fmt_i64(ptr %t1447, i64 %t1428)
  %t1449 = getelementptr i8, ptr %t1447, i64 %t1435
  call void @olang_textcopy(ptr %t1449, ptr %t1437, i64 %t1438)
  %t1450 = getelementptr i8, ptr %t1449, i64 %t1438
  %t1451 = call i64 @__olang_fmt_i64(ptr %t1450, i64 %t1431)
  %t1452 = getelementptr i8, ptr %t1450, i64 %t1441
  call void @olang_textcopy(ptr %t1452, ptr %t1443, i64 %t1444)
  %t1453 = insertvalue { i64, ptr } undef, i64 %t1445, 0
  %t1454 = insertvalue { i64, ptr } %t1453, ptr %t1446, 1
  %t1456 = extractvalue { i64, ptr } %t1454, 0
  %t1457 = extractvalue { i64, ptr } %t1454, 1
  %t1458 = mul i64 %t1456, 1
  %t1459 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1458)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1459, ptr %t1457, i64 %t1458, i1 false)
  %t1460 = insertvalue { i64, ptr } undef, i64 %t1456, 0
  %t1461 = insertvalue { i64, ptr } %t1460, ptr %t1459, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s26, ptr %t1426, i64 %t1427, { i64, ptr } %t1461)
  br label %bb251
bb251:
  %t1465 = load ptr, ptr %l0, !tbaa !29
  %t1466 = load i64, ptr %l52, !tbaa !24
  %t1467 = load i64, ptr %l50, !tbaa !24
  %t1468 = load i64, ptr %l51, !tbaa !24
  %t1469 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t1470 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t1472 = call i64 @__olang_fmt_i64(ptr null, i64 %t1467)
  %t1473 = add i64 %t1470, %t1472
  %t1474 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t1475 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t1476 = add i64 %t1473, %t1475
  %t1478 = call i64 @__olang_fmt_i64(ptr null, i64 %t1468)
  %t1479 = add i64 %t1476, %t1478
  %t1480 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t1481 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t1482 = add i64 %t1479, %t1481
  %t1483 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1482)
  call void @olang_textcopy(ptr %t1483, ptr %t1469, i64 %t1470)
  %t1484 = getelementptr i8, ptr %t1483, i64 %t1470
  %t1485 = call i64 @__olang_fmt_i64(ptr %t1484, i64 %t1467)
  %t1486 = getelementptr i8, ptr %t1484, i64 %t1472
  call void @olang_textcopy(ptr %t1486, ptr %t1474, i64 %t1475)
  %t1487 = getelementptr i8, ptr %t1486, i64 %t1475
  %t1488 = call i64 @__olang_fmt_i64(ptr %t1487, i64 %t1468)
  %t1489 = getelementptr i8, ptr %t1487, i64 %t1478
  call void @olang_textcopy(ptr %t1489, ptr %t1480, i64 %t1481)
  %t1490 = insertvalue { i64, ptr } undef, i64 %t1482, 0
  %t1491 = insertvalue { i64, ptr } %t1490, ptr %t1483, 1
  %t1493 = extractvalue { i64, ptr } %t1491, 0
  %t1494 = extractvalue { i64, ptr } %t1491, 1
  %t1495 = mul i64 %t1493, 1
  %t1496 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1495)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1496, ptr %t1494, i64 %t1495, i1 false)
  %t1497 = insertvalue { i64, ptr } undef, i64 %t1493, 0
  %t1498 = insertvalue { i64, ptr } %t1497, ptr %t1496, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s26, ptr %t1465, i64 %t1466, { i64, ptr } %t1498)
  br label %bb252
bb252:
  %t1502 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1502, ptr %l577, !tbaa !29
  %t1503 = load i64, ptr %l31, !tbaa !24
  store i64 %t1503, ptr %l578, !tbaa !24
  %t1504 = load ptr, ptr %l0, !tbaa !29
  %t1505 = load i32, ptr %l3, !tbaa !23
  %t1508 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %s26, ptr %t1504, i32 %t1505)
  store { i64, ptr } %t1508, ptr %l581
  br label %bb253
bb253:
  %t1509 = load { i64, ptr }, ptr %l581, !tbaa !27
  %t1510 = extractvalue { i64, ptr } %t1509, 0
  %t1511 = extractvalue { i64, ptr } %t1509, 1
  %t1512 = mul i64 %t1510, 1
  %t1513 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1512)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1513, ptr %t1511, i64 %t1512, i1 false)
  %t1514 = insertvalue { i64, ptr } undef, i64 %t1510, 0
  %t1515 = insertvalue { i64, ptr } %t1514, ptr %t1513, 1
  %t1517 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s26, ptr %s26, { i64, ptr } %t1515)
  store { i64, ptr } %t1517, ptr %l583
  br label %bb254
bb254:
  %t1518 = load i64, ptr %l11, !tbaa !24
  %t1519 = load i64, ptr %l52, !tbaa !24
  %t1520 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t1521 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t1522 = load { i64, ptr }, ptr %l583, !tbaa !27
  %t1523 = extractvalue { i64, ptr } %t1522, 1
  %t1524 = extractvalue { i64, ptr } %t1522, 0
  %t1525 = add i64 %t1521, %t1524
  %t1526 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t1527 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t1528 = add i64 %t1525, %t1527
  %t1530 = call i64 @__olang_fmt_i64(ptr null, i64 %t1518)
  %t1531 = add i64 %t1528, %t1530
  %t1532 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t1533 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t1534 = add i64 %t1531, %t1533
  %t1536 = call i64 @__olang_fmt_i64(ptr null, i64 %t1519)
  %t1537 = add i64 %t1534, %t1536
  %t1538 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t1539 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t1540 = add i64 %t1537, %t1539
  %t1541 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1540)
  call void @olang_textcopy(ptr %t1541, ptr %t1520, i64 %t1521)
  %t1542 = getelementptr i8, ptr %t1541, i64 %t1521
  call void @olang_textcopy(ptr %t1542, ptr %t1523, i64 %t1524)
  %t1543 = getelementptr i8, ptr %t1542, i64 %t1524
  call void @olang_textcopy(ptr %t1543, ptr %t1526, i64 %t1527)
  %t1544 = getelementptr i8, ptr %t1543, i64 %t1527
  %t1545 = call i64 @__olang_fmt_i64(ptr %t1544, i64 %t1518)
  %t1546 = getelementptr i8, ptr %t1544, i64 %t1530
  call void @olang_textcopy(ptr %t1546, ptr %t1532, i64 %t1533)
  %t1547 = getelementptr i8, ptr %t1546, i64 %t1533
  %t1548 = call i64 @__olang_fmt_i64(ptr %t1547, i64 %t1519)
  %t1549 = getelementptr i8, ptr %t1547, i64 %t1536
  call void @olang_textcopy(ptr %t1549, ptr %t1538, i64 %t1539)
  %t1550 = insertvalue { i64, ptr } undef, i64 %t1540, 0
  %t1551 = insertvalue { i64, ptr } %t1550, ptr %t1541, 1
  %t1553 = extractvalue { i64, ptr } %t1551, 0
  %t1554 = extractvalue { i64, ptr } %t1551, 1
  %t1555 = mul i64 %t1553, 1
  %t1556 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1555)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1556, ptr %t1554, i64 %t1555, i1 false)
  %t1557 = insertvalue { i64, ptr } undef, i64 %t1553, 0
  %t1558 = insertvalue { i64, ptr } %t1557, ptr %t1556, 1
  %t1559 = load ptr, ptr %l577, !tbaa !29
  %t1560 = load i64, ptr %l578, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s26, ptr %t1559, i64 %t1560, { i64, ptr } %t1558)
  br label %bb255
bb255:
  %t1562 = load i64, ptr %l31, !tbaa !24
  call void @__olang_scope_close(ptr %s26)
  store i64 %t1562, ptr %rv
  br label %ret
bb256:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l3, !tbaa !29
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  %t3 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t3, ptr %l5, !tbaa !24
  %t4 = ptrtoint ptr %s0 to i64
  store i64 %t4, ptr %l6, !tbaa !24
  %t5 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = call ptr @__olang_region_make(ptr %s0)
  %t8 = ptrtoint ptr %t7 to i64
  store i64 %t8, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t11 = extractvalue { i64, ptr } %a2, 1
  %t12 = extractvalue { i64, ptr } %a2, 0
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = load i64, ptr %l6
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t15)
  call void @olang_textcopy(ptr %t18, ptr %t11, i64 %t12)
  %t19 = getelementptr i8, ptr %t18, i64 %t12
  call void @olang_textcopy(ptr %t19, ptr %t13, i64 %t14)
  %t20 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t18, 1
  %t23 = load i64, ptr %l6
  %t24 = inttoptr i64 %t23 to ptr
  %t25 = extractvalue { i64, ptr } %t21, 0
  %t26 = extractvalue { i64, ptr } %t21, 1
  %t27 = mul i64 %t25, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %t24, i64 %t27)
  call void @llvm.memcpy.p0.p0.i64(ptr %t28, ptr %t26, i64 %t27, i1 false)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t33 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t31, { i64, ptr } %t32, i64 %t33, { i64, ptr } %t30, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d92, i32 0, i32 1) })
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l20 = alloca i1
  %l26 = alloca i64
  %l29 = alloca i1
  %l33 = alloca i1
  %l34 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca %"compiler/eval:Image"
  %l45 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l57 = alloca i1
  %l59 = alloca { i64, ptr }
  %l74 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i32
  %l78 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i32
  %l84 = alloca i1
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l91 = alloca i64
  %l93 = alloca i64
  %l94 = alloca i64
  %l104 = alloca i64
  %l106 = alloca i1
  %l109 = alloca %"compiler/eval:Blob"
  %l111 = alloca i64
  %l113 = alloca i1
  %l116 = alloca { i64, ptr }
  %l118 = alloca i64
  %l121 = alloca i64
  %l122 = alloca i64
  %l127 = alloca { i64, ptr }
  %l129 = alloca i64
  %l140 = alloca { i64, ptr }
  %l141 = alloca ptr
  %l142 = alloca { i64, ptr }
  %l143 = alloca i64
  %l144 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t292 = alloca %"compiler/eval:Blob", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load i32, ptr %l2, !tbaa !23
  %t7 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalSym(ptr %v0, ptr %s0, ptr %t1, i64 %t2, i32 %t3)
  store { i64, ptr } %t7, ptr %l17
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t13 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } %t10)
  store i1 %t13, ptr %l20
  br label %bb2
bb2:
  %t14 = load i1, ptr %l20, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t19 = extractvalue { i64, ptr } %t15, 1
  %t20 = extractvalue { i64, ptr } %t15, 0
  %t21 = add i64 %t17, %t20
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t16, i64 %t17)
  %t23 = getelementptr i8, ptr %t22, i64 %t17
  call void @olang_textcopy(ptr %t23, ptr %t19, i64 %t20)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t22, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l1, !tbaa !24
  %t29 = load i32, ptr %l2, !tbaa !23
  %t33 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalBody(ptr %v0, ptr %t27, i64 %t28, i32 %t29)
  store i64 %t33, ptr %l26
  br label %bb6
bb6:
  %t34 = load i64, ptr %l26, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb7, label %bb8
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/emit:Emitter", ptr %t39, i32 0, i32 47
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %t41, i64 %t42)
  store i1 %t45, ptr %l33
  br label %bb9
bb8:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb10
bb9:
  %t46 = load i1, ptr %l33, !tbaa !21
  store i1 %t46, ptr %l29, !tbaa !21
  br label %bb10
bb10:
  %t47 = load i1, ptr %l29, !tbaa !21
  br i1 %t47, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/emit:Emitter", ptr %t48, i32 0, i32 47
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H95f86c29c688efeac83a664cabcff622(ptr %v0, ptr %v0, ptr %t50, i64 %t51)
  %t55 = extractvalue { i32, ptr } %t54, 1
  %t56 = extractvalue { i32, ptr } %t54, 0
  store i32 %t56, ptr %l39
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb14, label %ok.58, !prof !99
ok.58:
  store ptr %t55, ptr %l38
  br label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s14
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l3, !tbaa !23
  %t63 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s14, ptr %t59, i32 %t60)
  store { i64, ptr } %t63, ptr %l140
  br label %bb73
bb13:
  %t64 = load ptr, ptr %l38, !tbaa !29
  store ptr %t64, ptr %l34, !tbaa !29
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t65 = call %"compiler/eval:Image" @compiler_2feval_3aImage_2ector(ptr %v0)
  store %"compiler/eval:Image" %t65, ptr %l40
  br label %bb16
bb16:
  %t66 = load %"compiler/eval:Image", ptr %l40
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store %"compiler/eval:Image" %t66, ptr %t67
  store ptr %t67, ptr %l34, !tbaa !29
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l34, !tbaa !29
  store ptr %t69, ptr %l6, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t72 = load ptr, ptr %l6, !tbaa !29
  %t76 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebakedText(ptr %v0, ptr %s0, ptr %v0, ptr %s3, ptr %t70, { i64, ptr } %t71, ptr %t72)
  store { i64, ptr } %t76, ptr %l45
  br label %bb18
bb18:
  %t77 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t77, ptr %l7, !tbaa !27
  %t78 = load ptr, ptr %l6, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Image", ptr %t78, i32 0, i32 2
  %t81 = load i1, ptr %t80, !tbaa !21
  br i1 %t81, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t83 = load i32, ptr %l3, !tbaa !23
  %t84 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t87 = icmp ne i32 %t83, %t84
  br i1 %t87, label %bb21, label %bb22
bb20:
  br label %bb30
bb21:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l3, !tbaa !23
  %t93 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s4, ptr %t89, i32 %t90)
  store { i64, ptr } %t93, ptr %l54
  br label %bb23
bb22:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d94, i32 0, i32 1) }, ptr %l51, !tbaa !27
  br label %bb24
bb23:
  %t94 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  %t96 = extractvalue { i64, ptr } %t94, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l51, !tbaa !27
  br label %bb24
bb24:
  %t102 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t102, ptr %l8, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t105 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t103, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store i1 %t105, ptr %l57
  br label %bb25
bb25:
  %t106 = load i1, ptr %l57, !tbaa !21
  %t107 = xor i1 %t106, true
  br i1 %t107, label %bb26, label %bb27
bb26:
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t114 = extractvalue { i64, ptr } %t109, 1
  %t115 = extractvalue { i64, ptr } %t109, 0
  %t116 = add i64 %t112, %t115
  %t117 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t118 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t119 = add i64 %t116, %t118
  %t121 = extractvalue { i64, ptr } %t110, 1
  %t122 = extractvalue { i64, ptr } %t110, 0
  %t123 = add i64 %t119, %t122
  %t124 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t123)
  call void @olang_textcopy(ptr %t124, ptr %t111, i64 %t112)
  %t125 = getelementptr i8, ptr %t124, i64 %t112
  call void @olang_textcopy(ptr %t125, ptr %t114, i64 %t115)
  %t126 = getelementptr i8, ptr %t125, i64 %t115
  call void @olang_textcopy(ptr %t126, ptr %t117, i64 %t118)
  %t127 = getelementptr i8, ptr %t126, i64 %t118
  call void @olang_textcopy(ptr %t127, ptr %t121, i64 %t122)
  %t128 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t124, 1
  store { i64, ptr } %t129, ptr %l59, !tbaa !27
  br label %bb28
bb27:
  %t131 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t135 = extractvalue { i64, ptr } %t131, 1
  %t136 = extractvalue { i64, ptr } %t131, 0
  %t137 = add i64 %t133, %t136
  %t138 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t140 = add i64 %t137, %t139
  %t141 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t140)
  call void @olang_textcopy(ptr %t141, ptr %t132, i64 %t133)
  %t142 = getelementptr i8, ptr %t141, i64 %t133
  call void @olang_textcopy(ptr %t142, ptr %t135, i64 %t136)
  %t143 = getelementptr i8, ptr %t142, i64 %t136
  call void @olang_textcopy(ptr %t143, ptr %t138, i64 %t139)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t141, 1
  store { i64, ptr } %t145, ptr %l59, !tbaa !27
  br label %bb28
bb28:
  %t147 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t150 = load i64, ptr %l1, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t147, 1
  %t155 = extractvalue { i64, ptr } %t147, 0
  %t156 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t158 = add i64 %t155, %t157
  %t159 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t158)
  call void @olang_textcopy(ptr %t159, ptr %t154, i64 %t155)
  %t160 = getelementptr i8, ptr %t159, i64 %t155
  call void @olang_textcopy(ptr %t160, ptr %t156, i64 %t157)
  %t161 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t159, 1
  %t164 = extractvalue { i64, ptr } %t162, 0
  %t165 = extractvalue { i64, ptr } %t162, 1
  %t166 = mul i64 %t164, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t166)
  call void @llvm.memcpy.p0.p0.i64(ptr %t167, ptr %t165, i64 %t166, i1 false)
  %t168 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s3, ptr %s4, ptr %t148, { i64, ptr } %t149, i64 %t150, { i64, ptr } %t151, { i64, ptr } %t169)
  br label %bb29
bb29:
  %t175 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t176 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t179 = extractvalue { i64, ptr } %t175, 1
  %t180 = extractvalue { i64, ptr } %t175, 0
  %t181 = add i64 %t177, %t180
  %t182 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t181)
  call void @olang_textcopy(ptr %t182, ptr %t176, i64 %t177)
  %t183 = getelementptr i8, ptr %t182, i64 %t177
  call void @olang_textcopy(ptr %t183, ptr %t179, i64 %t180)
  %t184 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t182, 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t185, ptr %rv
  br label %ret
bb30:
  %t187 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t189 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s3, ptr %s3, { i64, ptr } %t187, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d102, i32 0, i32 1) })
  %t190 = extractvalue { i32, i64 } %t189, 1
  %t191 = extractvalue { i32, i64 } %t189, 0
  store i32 %t191, ptr %l77
  %t192 = icmp ne i32 %t191, 0
  br i1 %t192, label %bb32, label %ok.193, !prof !99
ok.193:
  store i64 %t190, ptr %l76
  br label %bb31
bb31:
  %t194 = load i64, ptr %l76, !tbaa !24
  store i64 %t194, ptr %l74, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  store i64 -1, ptr %l74, !tbaa !24
  br label %bb34
bb34:
  %t195 = load i64, ptr %l74, !tbaa !24
  store i64 %t195, ptr %l10, !tbaa !24
  %t196 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t198 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s3, ptr %s3, { i64, ptr } %t196, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) })
  %t199 = extractvalue { i32, i64 } %t198, 1
  %t200 = extractvalue { i32, i64 } %t198, 0
  store i32 %t200, ptr %l81
  %t201 = icmp ne i32 %t200, 0
  br i1 %t201, label %bb36, label %ok.202, !prof !99
ok.202:
  store i64 %t199, ptr %l80
  br label %bb35
bb35:
  %t203 = load i64, ptr %l80, !tbaa !24
  store i64 %t203, ptr %l78, !tbaa !24
  br label %bb38
bb36:
  br label %bb37
bb37:
  store i64 -1, ptr %l78, !tbaa !24
  br label %bb38
bb38:
  %t204 = load i64, ptr %l78, !tbaa !24
  store i64 %t204, ptr %l11, !tbaa !24
  %t205 = load i64, ptr %l10, !tbaa !24
  %t207 = icmp sge i64 %t205, 0
  br i1 %t207, label %bb39, label %bb40
bb39:
  %t209 = load i64, ptr %l11, !tbaa !24
  %t210 = load i64, ptr %l10, !tbaa !24
  %t213 = icmp sgt i64 %t209, %t210
  store i1 %t213, ptr %l84, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb41
bb41:
  %t215 = load i1, ptr %l84, !tbaa !21
  br i1 %t215, label %bb42, label %bb43
bb42:
  %t216 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t216, ptr %l89, !tbaa !27
  %t217 = load i64, ptr %l10, !tbaa !24
  %t219 = add i64 %t217, 12
  store i64 %t219, ptr %l91, !tbaa !24
  %t220 = load i64, ptr %l11, !tbaa !24
  %t222 = add i64 %t220, 2
  store i64 %t222, ptr %l93, !tbaa !24
  %t223 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  store i64 %t224, ptr %l94, !tbaa !24
  %t225 = load i64, ptr %l91, !tbaa !24
  %t226 = icmp sge i64 %t225, 0
  br i1 %t226, label %bb44, label %bb45
bb43:
  %t228 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t229 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t232 = extractvalue { i64, ptr } %t228, 1
  %t233 = extractvalue { i64, ptr } %t228, 0
  %t234 = add i64 %t230, %t233
  %t235 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t237 = add i64 %t234, %t236
  %t238 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t237)
  call void @olang_textcopy(ptr %t238, ptr %t229, i64 %t230)
  %t239 = getelementptr i8, ptr %t238, i64 %t230
  call void @olang_textcopy(ptr %t239, ptr %t232, i64 %t233)
  %t240 = getelementptr i8, ptr %t239, i64 %t233
  call void @olang_textcopy(ptr %t240, ptr %t235, i64 %t236)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t238, 1
  store { i64, ptr } %t242, ptr %l88, !tbaa !27
  br label %bb50
bb44:
  %t244 = load i64, ptr %l91, !tbaa !24
  %t245 = load i64, ptr %l93, !tbaa !24
  %t246 = icmp sle i64 %t244, %t245
  br i1 %t246, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_67352ecb15e68ba0_c3979b973b302ad4)
  unreachable
bb46:
  %t248 = load i64, ptr %l93, !tbaa !24
  %t249 = load i64, ptr %l94, !tbaa !24
  %t250 = icmp sle i64 %t248, %t249
  br i1 %t250, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_67352ecb15e68ba0_c3979b973b302ad4)
  unreachable
bb48:
  %t252 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = load i64, ptr %l91, !tbaa !24
  %t255 = load i64, ptr %l93, !tbaa !24
  %t256 = getelementptr i8, ptr %t253, i64 %t254
  %t257 = sub i64 %t255, %t254
  %t258 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t256, 1
  %t260 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t262 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = add i64 %t261, %t264
  %t266 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t267 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t268 = add i64 %t265, %t267
  %t270 = extractvalue { i64, ptr } %t259, 1
  %t271 = extractvalue { i64, ptr } %t259, 0
  %t272 = add i64 %t268, %t271
  %t273 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t272)
  call void @olang_textcopy(ptr %t273, ptr %t260, i64 %t261)
  %t274 = getelementptr i8, ptr %t273, i64 %t261
  call void @olang_textcopy(ptr %t274, ptr %t263, i64 %t264)
  %t275 = getelementptr i8, ptr %t274, i64 %t264
  call void @olang_textcopy(ptr %t275, ptr %t266, i64 %t267)
  %t276 = getelementptr i8, ptr %t275, i64 %t267
  call void @olang_textcopy(ptr %t276, ptr %t270, i64 %t271)
  %t277 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t273, 1
  store { i64, ptr } %t278, ptr %l88, !tbaa !27
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_67352ecb15e68ba0_c3979b973b302ad4)
  unreachable
bb50:
  %t280 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t280, ptr %l12, !tbaa !27
  %t281 = load ptr, ptr %l6, !tbaa !29
  %t283 = getelementptr %"compiler/eval:Image", ptr %t281, i32 0, i32 0
  %t285 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %t283)
  store i64 %t285, ptr %l104
  br label %bb51
bb51:
  %t286 = load i64, ptr %l104, !tbaa !24
  %t287 = icmp eq i64 %t286, 1
  br i1 %t287, label %bb52, label %bb53
bb52:
  %t289 = load ptr, ptr %l6, !tbaa !29
  %t291 = getelementptr %"compiler/eval:Image", ptr %t289, i32 0, i32 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %t292, ptr %v0, ptr %v0, ptr %t291, i64 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l109, ptr %t292, i64 272, i1 false)
  br label %bb54
bb53:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb56
bb54:
  %t294 = getelementptr %"compiler/eval:Blob", ptr %l109, i32 0, i32 3
  %t296 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t294)
  store i64 %t296, ptr %l111
  br label %bb55
bb55:
  %t297 = load i64, ptr %l111, !tbaa !24
  %t298 = icmp eq i64 %t297, 0
  store i1 %t298, ptr %l106, !tbaa !21
  br label %bb56
bb56:
  %t300 = load i1, ptr %l106, !tbaa !21
  br i1 %t300, label %bb57, label %bb58
bb57:
  %t301 = load i64, ptr %l10, !tbaa !24
  %t303 = icmp sge i64 %t301, 0
  store i1 %t303, ptr %l113, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb59
bb59:
  %t305 = load i1, ptr %l113, !tbaa !21
  br i1 %t305, label %bb60, label %bb61
bb60:
  %t306 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t306, ptr %l116, !tbaa !27
  %t307 = load i64, ptr %l10, !tbaa !24
  %t309 = add i64 %t307, 12
  store i64 %t309, ptr %l118, !tbaa !24
  %t310 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t310, 0
  %t314 = sub i64 %t312, 1
  store i64 %t314, ptr %l121, !tbaa !24
  %t315 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 0
  store i64 %t316, ptr %l122, !tbaa !24
  %t317 = load i64, ptr %l118, !tbaa !24
  %t318 = icmp sge i64 %t317, 0
  br i1 %t318, label %bb62, label %bb63
bb61:
  br label %bb71
bb62:
  %t320 = load i64, ptr %l118, !tbaa !24
  %t321 = load i64, ptr %l121, !tbaa !24
  %t322 = icmp sle i64 %t320, %t321
  br i1 %t322, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_6c4f253a42e065fd_ca2f6afe461eeb41)
  unreachable
bb64:
  %t324 = load i64, ptr %l121, !tbaa !24
  %t325 = load i64, ptr %l122, !tbaa !24
  %t326 = icmp sle i64 %t324, %t325
  br i1 %t326, label %bb66, label %bb67
bb65:
  call void @__olang_check_failed(ptr @olang_loc_6c4f253a42e065fd_ca2f6afe461eeb41)
  unreachable
bb66:
  %t328 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = load i64, ptr %l118, !tbaa !24
  %t331 = load i64, ptr %l121, !tbaa !24
  %t332 = getelementptr i8, ptr %t329, i64 %t330
  %t333 = sub i64 %t331, %t330
  %t334 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t332, 1
  %t336 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t337 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t338 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t339 = extractvalue { i64, ptr } %t338, 1
  %t340 = extractvalue { i64, ptr } %t338, 0
  %t341 = add i64 %t337, %t340
  %t342 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t343 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t344 = add i64 %t341, %t343
  %t346 = extractvalue { i64, ptr } %t335, 1
  %t347 = extractvalue { i64, ptr } %t335, 0
  %t348 = add i64 %t344, %t347
  %t349 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t348)
  call void @olang_textcopy(ptr %t349, ptr %t336, i64 %t337)
  %t350 = getelementptr i8, ptr %t349, i64 %t337
  call void @olang_textcopy(ptr %t350, ptr %t339, i64 %t340)
  %t351 = getelementptr i8, ptr %t350, i64 %t340
  call void @olang_textcopy(ptr %t351, ptr %t342, i64 %t343)
  %t352 = getelementptr i8, ptr %t351, i64 %t343
  call void @olang_textcopy(ptr %t352, ptr %t346, i64 %t347)
  %t353 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t354 = insertvalue { i64, ptr } %t353, ptr %t349, 1
  store { i64, ptr } %t354, ptr %l127, !tbaa !27
  %t355 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t356 = extractvalue { i64, ptr } %t355, 0
  %t357 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t358 = extractvalue { i64, ptr } %t357, 0
  store i64 %t358, ptr %l129, !tbaa !24
  %t360 = load i64, ptr %l129, !tbaa !24
  %t361 = icmp eq i64 %t356, %t360
  br i1 %t361, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_6c4f253a42e065fd_ca2f6afe461eeb41)
  unreachable
bb68:
  %t363 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !27
  %t365 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = load i64, ptr %l129, !tbaa !24
  %t368 = mul i64 %t367, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t364, ptr %t366, i64 %t368, i1 false)
  br label %bb70
bb69:
  %t369 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t369, ptr %l12, !tbaa !27
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t372 = load i64, ptr %l1, !tbaa !24
  %t373 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t374 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t374, 1
  %t377 = extractvalue { i64, ptr } %t374, 0
  %t378 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t379 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t380 = add i64 %t377, %t379
  %t381 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t380)
  call void @olang_textcopy(ptr %t381, ptr %t376, i64 %t377)
  %t382 = getelementptr i8, ptr %t381, i64 %t377
  call void @olang_textcopy(ptr %t382, ptr %t378, i64 %t379)
  %t383 = insertvalue { i64, ptr } undef, i64 %t380, 0
  %t384 = insertvalue { i64, ptr } %t383, ptr %t381, 1
  %t386 = extractvalue { i64, ptr } %t384, 0
  %t387 = extractvalue { i64, ptr } %t384, 1
  %t388 = mul i64 %t386, 1
  %t389 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t388)
  call void @llvm.memcpy.p0.p0.i64(ptr %t389, ptr %t387, i64 %t388, i1 false)
  %t390 = insertvalue { i64, ptr } undef, i64 %t386, 0
  %t391 = insertvalue { i64, ptr } %t390, ptr %t389, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s3, ptr %s3, ptr %t370, { i64, ptr } %t371, i64 %t372, { i64, ptr } %t373, { i64, ptr } %t391)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s3)
  br label %bb77
bb73:
  %t397 = load { i64, ptr }, ptr %l140, !tbaa !27
  store { i64, ptr } %t397, ptr %l13, !tbaa !27
  %t398 = load ptr, ptr %l0, !tbaa !29
  store ptr %t398, ptr %l141, !tbaa !29
  %t399 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t399, ptr %l142, !tbaa !27
  %t400 = load i64, ptr %l1, !tbaa !24
  store i64 %t400, ptr %l143, !tbaa !24
  %t401 = ptrtoint ptr %s14 to i64
  store i64 %t401, ptr %l144, !tbaa !24
  %t402 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t402, label %bb74, label %bb75
bb74:
  %t404 = call ptr @__olang_region_make(ptr %s14)
  %t405 = ptrtoint ptr %t404 to i64
  store i64 %t405, ptr %l144, !tbaa !24
  br label %bb75
bb75:
  %t406 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t407 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t408 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t409 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t411 = extractvalue { i64, ptr } %t406, 1
  %t412 = extractvalue { i64, ptr } %t406, 0
  %t413 = add i64 %t409, %t412
  %t414 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t415 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t416 = add i64 %t413, %t415
  %t418 = extractvalue { i64, ptr } %t407, 1
  %t419 = extractvalue { i64, ptr } %t407, 0
  %t420 = add i64 %t416, %t419
  %t421 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t422 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t423 = add i64 %t420, %t422
  %t424 = load i64, ptr %l144
  %t425 = inttoptr i64 %t424 to ptr
  %t426 = call ptr @__olang_scope_alloc(ptr %t425, i64 %t423)
  call void @olang_textcopy(ptr %t426, ptr %t408, i64 %t409)
  %t427 = getelementptr i8, ptr %t426, i64 %t409
  call void @olang_textcopy(ptr %t427, ptr %t411, i64 %t412)
  %t428 = getelementptr i8, ptr %t427, i64 %t412
  call void @olang_textcopy(ptr %t428, ptr %t414, i64 %t415)
  %t429 = getelementptr i8, ptr %t428, i64 %t415
  call void @olang_textcopy(ptr %t429, ptr %t418, i64 %t419)
  %t430 = getelementptr i8, ptr %t429, i64 %t419
  call void @olang_textcopy(ptr %t430, ptr %t421, i64 %t422)
  %t431 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t432 = insertvalue { i64, ptr } %t431, ptr %t426, 1
  %t434 = load i64, ptr %l144
  %t435 = inttoptr i64 %t434 to ptr
  %t436 = extractvalue { i64, ptr } %t432, 0
  %t437 = extractvalue { i64, ptr } %t432, 1
  %t438 = mul i64 %t436, 1
  %t439 = call ptr @__olang_scope_alloc(ptr %t435, i64 %t438)
  call void @llvm.memcpy.p0.p0.i64(ptr %t439, ptr %t437, i64 %t438, i1 false)
  %t440 = insertvalue { i64, ptr } undef, i64 %t436, 0
  %t441 = insertvalue { i64, ptr } %t440, ptr %t439, 1
  %t442 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t443 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t444 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t445 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t447 = extractvalue { i64, ptr } %t442, 1
  %t448 = extractvalue { i64, ptr } %t442, 0
  %t449 = add i64 %t445, %t448
  %t450 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t452 = add i64 %t449, %t451
  %t454 = extractvalue { i64, ptr } %t443, 1
  %t455 = extractvalue { i64, ptr } %t443, 0
  %t456 = add i64 %t452, %t455
  %t457 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t458 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t459 = add i64 %t456, %t458
  %t460 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t459)
  call void @olang_textcopy(ptr %t460, ptr %t444, i64 %t445)
  %t461 = getelementptr i8, ptr %t460, i64 %t445
  call void @olang_textcopy(ptr %t461, ptr %t447, i64 %t448)
  %t462 = getelementptr i8, ptr %t461, i64 %t448
  call void @olang_textcopy(ptr %t462, ptr %t450, i64 %t451)
  %t463 = getelementptr i8, ptr %t462, i64 %t451
  call void @olang_textcopy(ptr %t463, ptr %t454, i64 %t455)
  %t464 = getelementptr i8, ptr %t463, i64 %t455
  call void @olang_textcopy(ptr %t464, ptr %t457, i64 %t458)
  %t465 = insertvalue { i64, ptr } undef, i64 %t459, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr %t460, 1
  %t468 = extractvalue { i64, ptr } %t466, 0
  %t469 = extractvalue { i64, ptr } %t466, 1
  %t470 = mul i64 %t468, 1
  %t471 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t470)
  call void @llvm.memcpy.p0.p0.i64(ptr %t471, ptr %t469, i64 %t470, i1 false)
  %t472 = insertvalue { i64, ptr } undef, i64 %t468, 0
  %t473 = insertvalue { i64, ptr } %t472, ptr %t471, 1
  %t474 = load ptr, ptr %l141, !tbaa !29
  %t475 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t476 = load i64, ptr %l143, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s14, ptr %s14, ptr %t474, { i64, ptr } %t475, i64 %t476, { i64, ptr } %t441, { i64, ptr } %t473)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s14)
  br label %bb77
bb77:
  %t479 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t480 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t481 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t483 = extractvalue { i64, ptr } %t479, 1
  %t484 = extractvalue { i64, ptr } %t479, 0
  %t485 = add i64 %t481, %t484
  %t486 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t485)
  call void @olang_textcopy(ptr %t486, ptr %t480, i64 %t481)
  %t487 = getelementptr i8, ptr %t486, i64 %t481
  call void @olang_textcopy(ptr %t487, ptr %t483, i64 %t484)
  %t488 = insertvalue { i64, ptr } undef, i64 %t485, 0
  %t489 = insertvalue { i64, ptr } %t488, ptr %t486, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t489, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eposition(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
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
  %l21 = alloca { i64, ptr }
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l53 = alloca i32
  %l56 = alloca i32
  %l57 = alloca i1
  %l67 = alloca i64
  %l70 = alloca i64
  %l88 = alloca { i64, ptr }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %a1)
  store { i64, ptr } %t10, ptr %l21
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb7
bb4:
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l30, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l30, !tbaa !24
  store i64 %t42, ptr %l27, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l27, !tbaa !24
  store i64 %t43, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l10, !tbaa !24
  %t62 = load ptr, ptr %l3, !tbaa !29
  store ptr %t62, ptr %l48, !tbaa !29
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t64 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t64, ptr %l50, !tbaa !27
  %t65 = load i64, ptr %l10, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i32, ptr %t68, i64 %t65
  %t70 = load i32, ptr %t69, !tbaa !33
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t63, i32 %t70)
  store i32 %t73, ptr %l53
  br label %bb12
bb12:
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t74, i32 %a2)
  store i32 %t78, ptr %l56
  br label %bb13
bb13:
  %t79 = load ptr, ptr %l48, !tbaa !29
  %t80 = load i32, ptr %l53, !tbaa !23
  %t81 = load i32, ptr %l56, !tbaa !23
  %t82 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t79, i32 %t80, i32 %t81)
  store i1 %t82, ptr %l57
  br label %bb14
bb14:
  %t83 = load i1, ptr %l57, !tbaa !21
  br i1 %t83, label %bb15, label %bb16
bb15:
  %t84 = load i64, ptr %l10, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t88 = load i64, ptr %l9, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l9, !tbaa !24
  br label %bb8
bb19:
  store i64 0, ptr %l11, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t96 = load i64, ptr %l12, !tbaa !24
  %t97 = load i64, ptr %l11, !tbaa !24
  %t100 = icmp sgt i64 %t96, %t97
  br i1 %t100, label %bb20, label %bb21
bb20:
  %t102 = load i64, ptr %l13, !tbaa !24
  %t104 = icmp sgt i64 %t102, 0
  br i1 %t104, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb25
bb22:
  %t106 = load i64, ptr %l12, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t110 = sub i64 %t106, %t107
  %t111 = load i64, ptr %l13, !tbaa !24
  %t114 = add i64 %t110, %t111
  %t116 = sub i64 %t114, 1
  %t117 = load i64, ptr %l13, !tbaa !24
  %t120 = sdiv i64 %t116, %t117
  store i64 %t120, ptr %l70, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb24
bb24:
  %t122 = load i64, ptr %l70, !tbaa !24
  store i64 %t122, ptr %l67, !tbaa !24
  br label %bb25
bb25:
  %t123 = load i64, ptr %l67, !tbaa !24
  store i64 %t123, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb26
bb26:
  %t124 = load i64, ptr %l15, !tbaa !24
  %t125 = load i64, ptr %l14, !tbaa !24
  %t128 = icmp slt i64 %t124, %t125
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb27, label %bb28
bb27:
  br label %bb34
bb28:
  br label %bb29
bb29:
  %t132 = load i64, ptr %l11, !tbaa !24
  %t133 = load i64, ptr %l15, !tbaa !24
  %t134 = load i64, ptr %l13, !tbaa !24
  %t137 = mul i64 %t133, %t134
  %t140 = add i64 %t132, %t137
  store i64 %t140, ptr %l16, !tbaa !24
  %t142 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t142, ptr %l88, !tbaa !27
  %t143 = load i64, ptr %l16, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr i32, ptr %t146, i64 %t143
  %t148 = load i32, ptr %t147, !tbaa !33
  %t149 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t152 = icmp eq i32 %t148, %t149
  br i1 %t152, label %bb30, label %bb31
bb30:
  %t154 = load i64, ptr %l16, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t158 = load i64, ptr %l15, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l15, !tbaa !24
  br label %bb26
bb34:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereusing(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"compiler/emit:Reused"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l29 = alloca i1
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l65 = alloca i1
  %l73 = alloca i64
  %l78 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l80 = alloca i64
  %l89 = alloca ptr
  %l90 = alloca i64
  %l100 = alloca i64
  %l102 = alloca i64
  %l108 = alloca %"compiler/emit:Reused"
  %l110 = alloca %"compiler/emit:Reused"
  %l117 = alloca i1
  %l121 = alloca i1
  %l122 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l124 = alloca i64
  %l126 = alloca i64
  %l131 = alloca { i64, ptr }
  %l132 = alloca { i64, [2 x i64] }
  %l135 = alloca { i64, [2 x i64] }
  %l136 = alloca i32
  %l148 = alloca i64
  %l150 = alloca i64
  %l155 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t95 = alloca { i64, [2 x i64] }, align 8
  %t149 = alloca { i64, [2 x i64] }, align 8
  %t207 = alloca %"compiler/emit:Reused", align 8
  %t210 = alloca %"compiler/emit:Reused", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l24
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/emit:Emitter", ptr %t5, i32 0, i32 70
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2eLen_3ccompiler_2femit_3aReused_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l27
  br label %bb2
bb2:
  %t10 = load i64, ptr %l27, !tbaa !24
  %t11 = icmp eq i64 %t10, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb5
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 41
  %t16 = load i1, ptr %t15, !tbaa !21
  store i1 %t16, ptr %l29, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l29, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %lp1
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_Hec89156ab9169707fa796c197263aa36(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t22, ptr %l33
  br label %bb9
bb9:
  %t23 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t23, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/emit:Emitter", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/lower:Lowerer", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l37
  br label %bb10
bb10:
  %t33 = load i64, ptr %l37, !tbaa !24
  store i64 %t33, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t35 = load i64, ptr %l3, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb16
bb13:
  %t44 = load i64, ptr %l4, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l44, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb15
bb15:
  %t60 = load i64, ptr %l44, !tbaa !24
  store i64 %t60, ptr %l41, !tbaa !24
  br label %bb16
bb16:
  %t61 = load i64, ptr %l41, !tbaa !24
  store i64 %t61, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb37
bb19:
  br label %bb20
bb20:
  %t70 = load i64, ptr %l3, !tbaa !24
  %t71 = load i64, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l5, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l8, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/emit:Emitter", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t84 = load i64, ptr %l8, !tbaa !24
  %t87 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eHasCode(ptr %v0, ptr %t83, i64 %t84)
  store i1 %t87, ptr %l65
  br label %bb21
bb21:
  %t88 = load i1, ptr %l65, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb23:
  br label %bb24
bb24:
  %t91 = load i64, ptr %l8, !tbaa !24
  %t93 = trunc i64 %t91 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t95
  %t96 = getelementptr { i64, [2 x i64] }, ptr %t95, i32 0, i32 0
  store i64 0, ptr %t96
  %t98 = insertvalue { i32 } undef, i32 %t93, 0
  %t99 = getelementptr { i64, [2 x i64] }, ptr %t95, i32 0, i32 1
  store { i32 } %t98, ptr %t99
  %t100 = load { i64, [2 x i64] }, ptr %t95
  store { i64, [2 x i64] } %t100, ptr %l9
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, [2 x i64] }, ptr %l9
  %t106 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t102, { i64, [2 x i64] } %t103)
  store i64 %t106, ptr %l73
  br label %bb25
bb25:
  %t107 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t108 = load i64, ptr %l73, !tbaa !24
  %t110 = icmp ne i64 %t108, %t107
  br i1 %t110, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb27:
  br label %bb28
bb28:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, [2 x i64] }, ptr %l9
  %t116 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s3, ptr %t112, { i64, [2 x i64] } %t113)
  store { i64, ptr } %t116, ptr %l78
  br label %bb29
bb29:
  %t117 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t117, ptr %l10, !tbaa !27
  store ptr %l2, ptr %l79, !tbaa !29
  %t118 = ptrtoint ptr %s0 to i64
  store i64 %t118, ptr %l80, !tbaa !24
  %t119 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fmir_3aFnKey_3e_2e0
  br i1 %t119, label %bb30, label %bb31
bb30:
  %t121 = call ptr @__olang_region_make(ptr %s0)
  %t122 = ptrtoint ptr %t121 to i64
  store i64 %t122, ptr %l80, !tbaa !24
  br label %bb31
bb31:
  %t123 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t123, 1
  %t126 = extractvalue { i64, ptr } %t123, 0
  %t127 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t129 = add i64 %t126, %t128
  %t130 = load i64, ptr %l80
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = call ptr @__olang_scope_alloc(ptr %t131, i64 %t129)
  call void @olang_textcopy(ptr %t132, ptr %t125, i64 %t126)
  %t133 = getelementptr i8, ptr %t132, i64 %t126
  call void @olang_textcopy(ptr %t133, ptr %t127, i64 %t128)
  %t134 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t132, 1
  %t137 = load i64, ptr %l80
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = extractvalue { i64, ptr } %t135, 0
  %t140 = extractvalue { i64, ptr } %t135, 1
  %t141 = mul i64 %t139, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %t138, i64 %t141)
  call void @llvm.memcpy.p0.p0.i64(ptr %t142, ptr %t140, i64 %t141, i1 false)
  %t143 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  %t145 = load i64, ptr %l8, !tbaa !24
  %t147 = trunc i64 %t145 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [2 x i64] }, ptr %t149, i32 0, i32 0
  store i64 1, ptr %t150
  %t152 = insertvalue { i32 } undef, i32 %t147, 0
  %t153 = getelementptr { i64, [2 x i64] }, ptr %t149, i32 0, i32 1
  store { i32 } %t152, ptr %t153
  %t154 = load { i64, [2 x i64] }, ptr %t149
  %t155 = load ptr, ptr %l79, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H113622d1f8bf95ca2a74cd371898add0(ptr %s0, ptr %s0, ptr %t155, { i64, ptr } %t144, { i64, [2 x i64] } %t154)
  br label %bb32
bb32:
  store ptr %l2, ptr %l89, !tbaa !29
  %t158 = ptrtoint ptr %s0 to i64
  store i64 %t158, ptr %l90, !tbaa !24
  %t159 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fmir_3aFnKey_3e_2e0
  br i1 %t159, label %bb33, label %bb34
bb33:
  %t161 = call ptr @__olang_region_make(ptr %s0)
  %t162 = ptrtoint ptr %t161 to i64
  store i64 %t162, ptr %l90, !tbaa !24
  br label %bb34
bb34:
  %t163 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 1
  %t166 = extractvalue { i64, ptr } %t163, 0
  %t167 = load i64, ptr %l90
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = call ptr @__olang_scope_alloc(ptr %t168, i64 %t166)
  call void @olang_textcopy(ptr %t169, ptr %t165, i64 %t166)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t173 = load i64, ptr %l90
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = extractvalue { i64, ptr } %t171, 0
  %t176 = extractvalue { i64, ptr } %t171, 1
  %t177 = mul i64 %t175, 1
  %t178 = call ptr @__olang_scope_alloc(ptr %t174, i64 %t177)
  call void @llvm.memcpy.p0.p0.i64(ptr %t178, ptr %t176, i64 %t177, i1 false)
  %t179 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t178, 1
  %t181 = load { i64, [2 x i64] }, ptr %l9
  %t182 = load ptr, ptr %l89, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H113622d1f8bf95ca2a74cd371898add0(ptr %s0, ptr %s0, ptr %t182, { i64, ptr } %t180, { i64, [2 x i64] } %t181)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb36:
  %t185 = load i64, ptr %l7, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l7, !tbaa !24
  br label %bb17
bb37:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/emit:Emitter", ptr %t189, i32 0, i32 70
  store ptr %t191, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s10
  %t193 = load i64, ptr %l12, !tbaa !24
  store i64 %t193, ptr %l100, !tbaa !24
  %t194 = load ptr, ptr %l11, !tbaa !29
  %t196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2eLen_3ccompiler_2femit_3aReused_3e(ptr %v0, ptr %t194)
  store i64 %t196, ptr %l102
  br label %bb39
bb39:
  %t197 = load i64, ptr %l100, !tbaa !24
  %t198 = load i64, ptr %l102, !tbaa !24
  %t199 = icmp slt i64 %t197, %t198
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s10)
  br label %bb80
bb41:
  br label %bb42
bb42:
  %t203 = load i64, ptr %l12, !tbaa !24
  store i64 %t203, ptr %l13, !tbaa !24
  %t205 = load ptr, ptr %l11, !tbaa !29
  %t206 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2eAt_3ccompiler_2femit_3aReused_3e(ptr %t207, ptr %v0, ptr %v0, ptr %t205, i64 %t206)
  call void @llvm.memmove.p0.p0.i64(ptr %l108, ptr %t207, i64 160, i1 false)
  br label %bb43
bb43:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2femit_3aReused(ptr %t210, ptr %v0, ptr %l108)
  call void @llvm.memmove.p0.p0.i64(ptr %l110, ptr %t210, i64 160, i1 false)
  br label %bb44
bb44:
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %l110, i64 160, i1 false)
  %t212 = getelementptr %"compiler/emit:Reused", ptr %l14, i32 0, i32 0
  %t213 = load i64, ptr %t212, !tbaa !24
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/emit:Emitter", ptr %t214, i32 0, i32 0
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 0
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = getelementptr %"compiler/load:Loader", ptr %t220, i32 0, i32 12
  %t223 = load i64, ptr %t222, !tbaa !24
  %t226 = icmp eq i64 %t213, %t223
  br i1 %t226, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb48
bb46:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/emit:Emitter", ptr %t228, i32 0, i32 71
  %t231 = getelementptr %"compiler/emit:Reused", ptr %l14, i32 0, i32 0
  %t232 = load i64, ptr %t231, !tbaa !24
  %t235 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t230, i64 %t232)
  store i1 %t235, ptr %l121
  br label %bb47
bb47:
  %t236 = load i1, ptr %l121, !tbaa !21
  store i1 %t236, ptr %l117, !tbaa !21
  br label %bb48
bb48:
  %t237 = load i1, ptr %l117, !tbaa !21
  br i1 %t237, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s10)
  br label %bb79
bb50:
  br label %bb51
bb51:
  %t238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %s10, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l122
  br label %bb52
bb52:
  %t239 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %l15
  store i1 true, ptr %l16, !tbaa !21
  %t240 = getelementptr %"compiler/emit:Reused", ptr %l14, i32 0, i32 6
  store ptr %t240, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb53
bb53:
  %t242 = load i64, ptr %l18, !tbaa !24
  store i64 %t242, ptr %l124, !tbaa !24
  %t243 = load ptr, ptr %l17, !tbaa !29
  %t245 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t243)
  store i64 %t245, ptr %l126
  br label %bb54
bb54:
  %t246 = load i64, ptr %l124, !tbaa !24
  %t247 = load i64, ptr %l126, !tbaa !24
  %t248 = icmp slt i64 %t246, %t247
  %t250 = xor i1 %t248, true
  br i1 %t250, label %bb55, label %bb56
bb55:
  br label %bb65
bb56:
  br label %bb57
bb57:
  %t252 = load ptr, ptr %l17, !tbaa !29
  %t253 = load i64, ptr %l18, !tbaa !24
  %t256 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t252, i64 %t253)
  store { i64, ptr } %t256, ptr %l131
  br label %bb58
bb58:
  %t257 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t261 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hc46d619d13eb72fb3404dc4d54e1aab7(ptr %s0, ptr %v0, ptr %l2, { i64, ptr } %t257)
  %t262 = extractvalue { i32, { i64, [2 x i64] } } %t261, 1
  %t263 = extractvalue { i32, { i64, [2 x i64] } } %t261, 0
  store i32 %t263, ptr %l136
  %t264 = icmp ne i32 %t263, 0
  br i1 %t264, label %bb60, label %ok.265, !prof !99
ok.265:
  store { i64, [2 x i64] } %t262, ptr %l135
  br label %bb59
bb59:
  %t266 = load { i64, [2 x i64] }, ptr %l135
  store { i64, [2 x i64] } %t266, ptr %l132
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb65
bb62:
  %t267 = load { i64, [2 x i64] }, ptr %l132
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %s10, ptr %l15, { i64, [2 x i64] } %t267)
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t271 = load i64, ptr %l18, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l18, !tbaa !24
  br label %bb53
bb65:
  %t275 = load i1, ptr %l16, !tbaa !21
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s10)
  br label %bb79
bb67:
  br label %bb68
bb68:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/emit:Emitter", ptr %t279, i32 0, i32 71
  %t282 = getelementptr %"compiler/emit:Reused", ptr %l14, i32 0, i32 0
  %t283 = load i64, ptr %t282, !tbaa !24
  %t284 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t281, i64 %t283, i64 %t284)
  br label %bb69
bb69:
  store ptr %l15, ptr %l21, !tbaa !29
  store i64 0, ptr %l22, !tbaa !24
  br label %bb70
bb70:
  %t289 = load i64, ptr %l22, !tbaa !24
  store i64 %t289, ptr %l148, !tbaa !24
  %t290 = load ptr, ptr %l21, !tbaa !29
  %t292 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %s10, ptr %t290)
  store i64 %t292, ptr %l150
  br label %bb71
bb71:
  %t293 = load i64, ptr %l148, !tbaa !24
  %t294 = load i64, ptr %l150, !tbaa !24
  %t295 = icmp slt i64 %t293, %t294
  %t297 = xor i1 %t295, true
  br i1 %t297, label %bb72, label %bb73
bb72:
  br label %bb78
bb73:
  br label %bb74
bb74:
  %t299 = load ptr, ptr %l21, !tbaa !29
  %t300 = load i64, ptr %l22, !tbaa !24
  %t303 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %s10, ptr %t299, i64 %t300)
  store { i64, [2 x i64] } %t303, ptr %l155
  br label %bb75
bb75:
  %t304 = load { i64, [2 x i64] }, ptr %l155
  %t305 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v1, ptr %t305, { i64, [2 x i64] } %t304)
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t309 = load i64, ptr %l22, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l22, !tbaa !24
  br label %bb70
bb78:
  call void @__olang_scope_close(ptr %s10)
  br label %bb79
bb79:
  %t313 = load i64, ptr %l12, !tbaa !24
  %t315 = add i64 %t313, 1
  store i64 %t315, ptr %l12, !tbaa !24
  br label %bb38
bb80:
  %t317 = load ptr, ptr %lp1
  %t318 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t317
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t318, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
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
  %t63 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t63, i64 %t64)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aHelperKind(ptr %s3, ptr %l27, i64 0)
  br label %bb15
bb15:
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t66, i64 %t67)
  %t68 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  call void @__olang_sb_put(ptr %s3, ptr %t69, i64 %t70)
  %t71 = load ptr, ptr %s3
  %t72 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t73 = load i64, ptr %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t73)
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
  %t86 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t90 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t88)
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
  %t111 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
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
  %t138 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
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
  %t170 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
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
  %t209 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t212 = extractvalue { i64, ptr } %t208, 1
  %t213 = extractvalue { i64, ptr } %t208, 0
  %t214 = add i64 %t210, %t213
  %t215 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t214)
  call void @olang_textcopy(ptr %t215, ptr %t209, i64 %t210)
  %t216 = getelementptr i8, ptr %t215, i64 %t210
  call void @olang_textcopy(ptr %t216, ptr %t212, i64 %t213)
  %t217 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t215, 1
  %t220 = extractvalue { i64, ptr } %t218, 0
  %t221 = extractvalue { i64, ptr } %t218, 1
  %t222 = mul i64 %t220, 1
  %t223 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t223, ptr %t221, i64 %t222, i1 false)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  %t227 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t225)
  store { i64, ptr } %t227, ptr %l85
  br label %bb37
bb37:
  %t228 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t228, ptr %l15, !tbaa !27
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l91, !tbaa !27
  br label %bb44
bb43:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l91, !tbaa !27
  br label %bb44
bb44:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i64, ptr %l11, !tbaa !24
  %t248 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etableName(ptr %v0, ptr %s12, ptr %t244, i64 %t245)
  store { i64, ptr } %t248, ptr %l94
  br label %bb45
bb45:
  %t249 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t251 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 1
  %t253 = extractvalue { i64, ptr } %t251, 0
  %t254 = add i64 %t250, %t253
  %t255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t257 = add i64 %t254, %t256
  %t258 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t261 = add i64 %t257, %t260
  %t262 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t261)
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
  %t272 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t271)
  call void @llvm.memcpy.p0.p0.i64(ptr %t272, ptr %t270, i64 %t271, i1 false)
  %t273 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t272, 1
  %t276 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t274)
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
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
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

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestSym(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l20 = alloca i1
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l58 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i32
  %l78 = alloca ptr
  %l79 = alloca i64
  %l80 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i32
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l102 = alloca i32
  %l106 = alloca { i64, ptr }
  %l107 = alloca i64
  %l108 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 75
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l18
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l17
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t12, ptr %l13, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) }, ptr %l13, !tbaa !27
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t13, ptr %l2, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) })
  store i1 %t16, ptr %l20
  br label %bb5
bb5:
  %t17 = load i1, ptr %l20, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = extractvalue { i64, ptr } %t20, 0
  %t24 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t22, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t28, ptr %l24
  br label %bb9
bb9:
  %t29 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/emit:Emitter", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/lower:Lowerer", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l28
  br label %bb10
bb10:
  %t39 = load i64, ptr %l28, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb16
bb13:
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l35, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb15
bb15:
  %t66 = load i64, ptr %l35, !tbaa !24
  store i64 %t66, ptr %l32, !tbaa !24
  br label %bb16
bb16:
  %t67 = load i64, ptr %l32, !tbaa !24
  store i64 %t67, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb17
bb17:
  %t68 = load i64, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb18, label %bb19
bb18:
  br label %bb48
bb19:
  br label %bb20
bb20:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  store i64 %t84, ptr %l9, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/emit:Emitter", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/lower:Lowerer", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t92, i64 %t94)
  store ptr %t97, ptr %l58
  br label %bb21
bb21:
  %t98 = load ptr, ptr %l58, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Body", ptr %t98, i32 0, i32 1
  %t101 = load { i64, [2 x i64] }, ptr %t100
  %t105 = extractvalue { i64, [2 x i64] } %t101, 0
  %t106 = icmp eq i64 %t105, 5
  br i1 %t106, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb41
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l9, !tbaa !24
  %t112 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestName(ptr %v0, ptr %s5, ptr %t108, i64 %t109)
  store { i64, ptr } %t112, ptr %l65
  br label %bb25
bb25:
  %t113 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t121 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %s5, { i64, ptr } %t119)
  store i64 %t121, ptr %l67
  br label %bb26
bb26:
  %t122 = load i64, ptr %l67, !tbaa !24
  store i64 %t122, ptr %l11, !tbaa !24
  %t123 = load i64, ptr %l11, !tbaa !24
  %t126 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %l3, i64 %t123)
  %t127 = extractvalue { i32, i64 } %t126, 1
  %t128 = extractvalue { i32, i64 } %t126, 0
  store i32 %t128, ptr %l72
  %t129 = icmp ne i32 %t128, 0
  br i1 %t129, label %bb28, label %ok.130, !prof !99
ok.130:
  store i64 %t127, ptr %l71
  br label %bb27
bb27:
  %t131 = load i64, ptr %l71, !tbaa !24
  store i64 %t131, ptr %l68, !tbaa !24
  br label %bb30
bb28:
  br label %bb29
bb29:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb30
bb30:
  %t132 = load i64, ptr %l68, !tbaa !24
  store i64 %t132, ptr %l12, !tbaa !24
  %t133 = load i64, ptr %l11, !tbaa !24
  %t134 = load i64, ptr %l12, !tbaa !24
  %t136 = add i64 %t134, 1
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %s0, ptr %l3, i64 %t133, i64 %t136)
  br label %bb31
bb31:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/emit:Emitter", ptr %t140, i32 0, i32 75
  store ptr %t142, ptr %l78, !tbaa !29
  %t143 = load i64, ptr %l9, !tbaa !24
  store i64 %t143, ptr %l79, !tbaa !24
  %t144 = ptrtoint ptr %v0 to i64
  store i64 %t144, ptr %l80, !tbaa !24
  %t145 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1
  br i1 %t145, label %bb32, label %bb33
bb32:
  %t147 = call ptr @__olang_region_make(ptr %v0)
  %t148 = ptrtoint ptr %t147 to i64
  store i64 %t148, ptr %l80, !tbaa !24
  br label %bb33
bb33:
  %t149 = load i64, ptr %l11, !tbaa !24
  store i64 %t149, ptr %l83, !tbaa !65
  %t151 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s5, i64 16)
  %t152 = extractvalue { i32, i64 } %t151, 1
  %t153 = extractvalue { i32, i64 } %t151, 0
  store i32 %t153, ptr %l85
  %t154 = icmp ne i32 %t153, 0
  br i1 %t154, label %bb35, label %ok.155, !prof !99
ok.155:
  store i64 %t152, ptr %l84
  br label %bb34
bb34:
  %t156 = load i64, ptr %l83, !tbaa !65
  %t157 = load i64, ptr %l84, !tbaa !24
  %t158 = call { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %s5, i64 %t156, i64 %t157)
  store { i64, ptr } %t158, ptr %l86
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_d645e5ac48fafc6b_b6d88d5997c962c7)
  unreachable
bb36:
  %t159 = load i64, ptr %l12, !tbaa !24
  %t161 = icmp eq i64 %t159, 0
  br i1 %t161, label %bb37, label %bb38
bb37:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) }, ptr %l89, !tbaa !27
  br label %bb39
bb38:
  %t163 = load i64, ptr %l12, !tbaa !24
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t165 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t167 = call i64 @__olang_fmt_i64(ptr null, i64 %t163)
  %t168 = add i64 %t165, %t167
  %t169 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t168)
  call void @olang_textcopy(ptr %t169, ptr %t164, i64 %t165)
  %t170 = getelementptr i8, ptr %t169, i64 %t165
  %t171 = call i64 @__olang_fmt_i64(ptr %t170, i64 %t163)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t169, 1
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t176 = extractvalue { i64, ptr } %t173, 1
  %t177 = mul i64 %t175, 1
  %t178 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t177)
  call void @llvm.memcpy.p0.p0.i64(ptr %t178, ptr %t176, i64 %t177, i1 false)
  %t179 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t178, 1
  store { i64, ptr } %t180, ptr %l89, !tbaa !27
  br label %bb39
bb39:
  %t182 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t183 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t184 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t187 = add i64 %t183, %t186
  %t188 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t191 = add i64 %t187, %t190
  %t192 = load i64, ptr %l80
  %t193 = inttoptr i64 %t192 to ptr
  %t194 = call ptr @__olang_scope_alloc(ptr %t193, i64 %t191)
  call void @olang_textcopy(ptr %t194, ptr %t182, i64 %t183)
  %t195 = getelementptr i8, ptr %t194, i64 %t183
  call void @olang_textcopy(ptr %t195, ptr %t185, i64 %t186)
  %t196 = getelementptr i8, ptr %t195, i64 %t186
  call void @olang_textcopy(ptr %t196, ptr %t189, i64 %t190)
  %t197 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t194, 1
  %t200 = load i64, ptr %l80
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = extractvalue { i64, ptr } %t198, 0
  %t203 = extractvalue { i64, ptr } %t198, 1
  %t204 = mul i64 %t202, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %t201, i64 %t204)
  call void @llvm.memcpy.p0.p0.i64(ptr %t205, ptr %t203, i64 %t204, i1 false)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t208 = load ptr, ptr %l78, !tbaa !29
  %t209 = load i64, ptr %l79, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v0, ptr %t208, i64 %t209, { i64, ptr } %t207)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s5)
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_708cde11eb66cdaa_cb4b3307e5e96e66)
  unreachable
bb46:
  br label %bb47
bb47:
  %t211 = load i64, ptr %l8, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l8, !tbaa !24
  br label %bb17
bb48:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/emit:Emitter", ptr %t215, i32 0, i32 75
  %t218 = load i64, ptr %l1, !tbaa !24
  %t221 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %s0, ptr %t217, i64 %t218)
  %t222 = extractvalue { i32, { i64, ptr } } %t221, 1
  %t223 = extractvalue { i32, { i64, ptr } } %t221, 0
  store i32 %t223, ptr %l102
  %t224 = icmp ne i32 %t223, 0
  br i1 %t224, label %bb50, label %ok.225, !prof !99
ok.225:
  store { i64, ptr } %t222, ptr %l101
  br label %bb49
bb49:
  %t226 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t226, ptr %l97, !tbaa !27
  br label %bb52
bb50:
  br label %bb51
bb51:
  %t227 = load i64, ptr %l1, !tbaa !24
  %t228 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t229 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t231 = call i64 @__olang_fmt_i64(ptr null, i64 %t227)
  %t232 = add i64 %t229, %t231
  %t233 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t232)
  call void @olang_textcopy(ptr %t233, ptr %t228, i64 %t229)
  %t234 = getelementptr i8, ptr %t233, i64 %t229
  %t235 = call i64 @__olang_fmt_i64(ptr %t234, i64 %t227)
  %t236 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t233, 1
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t240 = extractvalue { i64, ptr } %t237, 1
  %t241 = mul i64 %t239, 1
  %t242 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t241)
  call void @llvm.memcpy.p0.p0.i64(ptr %t242, ptr %t240, i64 %t241, i1 false)
  %t243 = insertvalue { i64, ptr } undef, i64 %t239, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t242, 1
  store { i64, ptr } %t244, ptr %l97, !tbaa !27
  br label %bb52
bb52:
  %t246 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t246, ptr %l106, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  store i64 %t248, ptr %l107, !tbaa !24
  %t249 = load i64, ptr %l107, !tbaa !24
  %t250 = mul i64 %t249, 1
  %t251 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t250)
  %t252 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t251, 1
  store { i64, ptr } %t253, ptr %l108, !tbaa !27
  %t254 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = load i64, ptr %l107, !tbaa !24
  %t259 = mul i64 %t258, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t255, ptr %t257, i64 %t259, i1 false)
  %t260 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t260, ptr %l106, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t261 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t261, ptr %rv
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

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewhere(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t13 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s0, ptr %t4, i64 %a1, i64 %t9)
  store { i64, ptr } %t13, ptr %l10
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t17 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %s0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d136, i32 0, i32 1) })
  %t18 = extractvalue { i32, i64 } %t17, 1
  %t19 = extractvalue { i32, i64 } %t17, 0
  store i32 %t19, ptr %l14
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb3, label %ok.21, !prof !99
ok.21:
  store i64 %t18, ptr %l13
  br label %bb2
bb2:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %l11, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb5
bb5:
  %t23 = load i64, ptr %l11, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l4, !tbaa !24
  store i64 %t28, ptr %l18, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  store i64 %t30, ptr %l19, !tbaa !24
  %t31 = icmp sge i64 0, 0
  br i1 %t31, label %bb8, label %bb9
bb7:
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = extractvalue { i64, ptr } %t33, 0
  %t37 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t35, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l17, !tbaa !27
  br label %bb14
bb8:
  %t41 = load i64, ptr %l18, !tbaa !24
  %t42 = icmp sle i64 0, %t41
  br i1 %t42, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_4e101a65701de364_bb0ca6f6f49ef738)
  unreachable
bb10:
  %t44 = load i64, ptr %l18, !tbaa !24
  %t45 = load i64, ptr %l19, !tbaa !24
  %t46 = icmp sle i64 %t44, %t45
  br i1 %t46, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_4e101a65701de364_bb0ca6f6f49ef738)
  unreachable
bb12:
  %t48 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l18, !tbaa !24
  %t51 = getelementptr i8, ptr %t49, i64 0
  %t52 = sub i64 %t50, 0
  %t53 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = extractvalue { i64, ptr } %t54, 0
  %t58 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t57)
  call void @olang_textcopy(ptr %t58, ptr %t56, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l17, !tbaa !27
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_4e101a65701de364_bb0ca6f6f49ef738)
  unreachable
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t62 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t62, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %l19 = alloca %"compiler/emit:fnEm"
  %l32 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca { i64, [2 x i64] }
  %l41 = alloca i32
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca i1
  %l45 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l63 = alloca %"std/prelude/text:StringBuilder"
  %l67 = alloca { i64, ptr }
  %l69 = alloca i64
  %l74 = alloca ptr
  %l77 = alloca i64
  %l78 = alloca i64
  %l91 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l104 = alloca i1
  %l110 = alloca ptr
  %l113 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l119 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l145 = alloca ptr
  %l146 = alloca { i64, [2 x i64] }
  %l148 = alloca i32
  %l149 = alloca { i64, ptr }
  %l150 = alloca i64
  %l151 = alloca i1
  %l152 = alloca i64
  %l154 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l156 = alloca i64
  %l159 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l163 = alloca i64
  %l164 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l171 = alloca ptr
  %l172 = alloca { i64, [2 x i64] }
  %l174 = alloca i32
  %l175 = alloca { i64, ptr }
  %l176 = alloca i64
  %l177 = alloca i1
  %l178 = alloca i64
  %l181 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l185 = alloca i64
  %l186 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca i1
  %t12 = alloca %"compiler/emit:fnEm", align 8
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
  %t3 = extractvalue { i64, ptr } %a6, 1
  %t4 = extractvalue { i64, ptr } %a6, 0
  %t5 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t4)
  call void @olang_textcopy(ptr %t5, ptr %t3, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t4, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l8, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t11 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2femit_3afnEm_2ector(ptr %t12, ptr %v0, ptr %v1, ptr %v0, ptr %t9, ptr %t10, { i64, [2 x i64] } %t11)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t12, i64 960, i1 false)
  br label %bb1
bb1:
  %t16 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 960, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %l19, i64 960, i1 false)
  store ptr %t16, ptr %l9, !tbaa !29
  %t18 = load ptr, ptr %l9, !tbaa !29
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr %"compiler/emit:fnEm", ptr %t18, i32 0, i32 7
  store i64 %t19, ptr %t22, !tbaa !24
  %t23 = load ptr, ptr %l9, !tbaa !29
  %t24 = load i1, ptr %l5, !tbaa !21
  %t27 = getelementptr %"compiler/emit:fnEm", ptr %t23, i32 0, i32 12
  store i1 %t24, ptr %t27, !tbaa !21
  %t28 = load ptr, ptr %l9, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 25
  %t32 = load i1, ptr %t31, !tbaa !21
  %t35 = getelementptr %"compiler/emit:fnEm", ptr %t28, i32 0, i32 28
  store i1 %t32, ptr %t35, !tbaa !21
  %t36 = load ptr, ptr %l9, !tbaa !29
  %t37 = load i1, ptr %l7, !tbaa !21
  %t40 = getelementptr %"compiler/emit:fnEm", ptr %t36, i32 0, i32 30
  store i1 %t37, ptr %t40, !tbaa !21
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/emit:Emitter", ptr %t41, i32 0, i32 26
  store i1 false, ptr %t43, !tbaa !21
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbg(ptr %v0, ptr %t44)
  store i1 %t46, ptr %l32
  br label %bb2
bb2:
  %t47 = load i1, ptr %l32, !tbaa !21
  br i1 %t47, label %bb3, label %bb4
bb3:
  %t48 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2esubprogram(ptr %v0, ptr %t48)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t50 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2erun(ptr %v0, ptr %t50)
  br label %bb7
bb7:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/emit:Emitter", ptr %t52, i32 0, i32 26
  %t55 = load i1, ptr %t54, !tbaa !21
  br i1 %t55, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t57 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s3, ptr %t57, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d137, i32 0, i32 1) })
  br label %bb10
bb9:
  br label %bb19
bb10:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l38, !tbaa !29
  %t60 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t60, ptr %l39
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/mir:Fn", ptr %t61, i32 0, i32 1
  %t64 = load i32, ptr %t63, !tbaa !23
  store i32 %t64, ptr %l41, !tbaa !23
  %t65 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t65, ptr %l42, !tbaa !27
  %t66 = load i64, ptr %l4, !tbaa !24
  store i64 %t66, ptr %l43, !tbaa !24
  %t67 = load i1, ptr %l5, !tbaa !21
  store i1 %t67, ptr %l44, !tbaa !21
  %t68 = ptrtoint ptr %s3 to i64
  store i64 %t68, ptr %l45, !tbaa !24
  %t69 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t69, label %bb11, label %bb12
bb11:
  %t71 = call ptr @__olang_region_make(ptr %s3)
  %t72 = ptrtoint ptr %t71 to i64
  store i64 %t72, ptr %l45, !tbaa !24
  br label %bb12
bb12:
  %t73 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t73, ptr %l47, !tbaa !27
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t78 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %s3, ptr %v2, ptr %s3, ptr %t74, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d138, i32 0, i32 1) }, { i64, ptr } %t75)
  store { i64, ptr } %t78, ptr %l50
  br label %bb13
bb13:
  %t79 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = add i64 %t81, %t84
  %t86 = load i64, ptr %l45
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call ptr @__olang_scope_alloc(ptr %t87, i64 %t85)
  call void @olang_textcopy(ptr %t88, ptr %t80, i64 %t81)
  %t89 = getelementptr i8, ptr %t88, i64 %t81
  call void @olang_textcopy(ptr %t89, ptr %t83, i64 %t84)
  %t90 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t88, 1
  %t93 = load i64, ptr %l45
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = extractvalue { i64, ptr } %t91, 0
  %t96 = extractvalue { i64, ptr } %t91, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %t94, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t101 = load ptr, ptr %l38, !tbaa !29
  %t102 = load { i64, [2 x i64] }, ptr %l39
  %t103 = load i32, ptr %l41, !tbaa !23
  %t104 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t105 = load i64, ptr %l43, !tbaa !24
  %t106 = load i1, ptr %l44, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v2, ptr %s3, ptr %t101, { i64, [2 x i64] } %t102, i32 %t103, { i64, ptr } %t104, i64 %t105, i1 %t106, { i64, ptr } %t100)
  br label %bb14
bb14:
  %t108 = load i1, ptr %l7, !tbaa !21
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, [2 x i64] }, ptr %l1
  %t114 = load ptr, ptr %l2, !tbaa !29
  %t116 = getelementptr %"compiler/mir:Fn", ptr %t114, i32 0, i32 1
  %t117 = load i32, ptr %t116, !tbaa !23
  %t118 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t119 = load i64, ptr %l4, !tbaa !24
  %t120 = load i1, ptr %l5, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewalkStub(ptr %v0, ptr %v2, ptr %s5, ptr %t112, { i64, [2 x i64] } %t113, i32 %t117, { i64, ptr } %t118, i64 %t119, i1 %t120, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d139, i32 0, i32 1) })
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s5)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb19:
  %t128 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t128, ptr %l63
  br label %bb20
bb20:
  %t129 = load %"std/prelude/text:StringBuilder", ptr %l63
  store %"std/prelude/text:StringBuilder" %t129, ptr %l10
  %t130 = load ptr, ptr %l9, !tbaa !29
  %t132 = getelementptr %"compiler/emit:fnEm", ptr %t130, i32 0, i32 28
  %t133 = load i1, ptr %t132, !tbaa !21
  br i1 %t133, label %bb21, label %bb22
bb21:
  %t135 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t136 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t139 = extractvalue { i64, ptr } %t135, 1
  %t140 = extractvalue { i64, ptr } %t135, 0
  %t141 = add i64 %t137, %t140
  %t142 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t144)
  call void @olang_textcopy(ptr %t145, ptr %t136, i64 %t137)
  %t146 = getelementptr i8, ptr %t145, i64 %t137
  call void @olang_textcopy(ptr %t146, ptr %t139, i64 %t140)
  %t147 = getelementptr i8, ptr %t146, i64 %t140
  call void @olang_textcopy(ptr %t147, ptr %t142, i64 %t143)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t145, 1
  store { i64, ptr } %t149, ptr %l67, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 0
  %t152 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  store i64 %t153, ptr %l69, !tbaa !24
  %t155 = load i64, ptr %l69, !tbaa !24
  %t156 = icmp eq i64 %t151, %t155
  br i1 %t156, label %bb23, label %bb24
bb22:
  br label %bb26
bb23:
  %t158 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = load i64, ptr %l69, !tbaa !24
  %t163 = mul i64 %t162, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t159, ptr %t161, i64 %t163, i1 false)
  br label %bb25
bb24:
  %t164 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t164, ptr %l8, !tbaa !27
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t165 = load ptr, ptr %l9, !tbaa !29
  %t167 = getelementptr %"compiler/emit:fnEm", ptr %t165, i32 0, i32 18
  %t168 = load i64, ptr %t167, !tbaa !24
  %t170 = icmp sge i64 %t168, 0
  br i1 %t170, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %l10, ptr %l74, !tbaa !29
  %t172 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t172, 0
  %t176 = sub i64 %t174, 2
  store i64 %t176, ptr %l77, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 0
  store i64 %t178, ptr %l78, !tbaa !24
  %t179 = icmp sge i64 0, 0
  br i1 %t179, label %bb29, label %bb30
bb28:
  %t181 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t181)
  br label %bb37
bb29:
  %t184 = load i64, ptr %l77, !tbaa !24
  %t185 = icmp sle i64 0, %t184
  br i1 %t185, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_8de51998cc7658b0_11d2469cc10d3f54)
  unreachable
bb31:
  %t187 = load i64, ptr %l77, !tbaa !24
  %t188 = load i64, ptr %l78, !tbaa !24
  %t189 = icmp sle i64 %t187, %t188
  br i1 %t189, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_8de51998cc7658b0_11d2469cc10d3f54)
  unreachable
bb33:
  %t191 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = load i64, ptr %l77, !tbaa !24
  %t194 = getelementptr i8, ptr %t192, i64 0
  %t195 = sub i64 %t193, 0
  %t196 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t194, 1
  %t198 = load ptr, ptr %l74, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t198, { i64, ptr } %t197)
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_8de51998cc7658b0_11d2469cc10d3f54)
  unreachable
bb35:
  %t200 = load ptr, ptr %l9, !tbaa !29
  %t202 = getelementptr %"compiler/emit:fnEm", ptr %t200, i32 0, i32 18
  %t203 = load i64, ptr %t202, !tbaa !24
  %t204 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t205 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t207 = call i64 @__olang_fmt_i64(ptr null, i64 %t203)
  %t208 = add i64 %t205, %t207
  %t209 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t211 = add i64 %t208, %t210
  %t212 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t211)
  call void @olang_textcopy(ptr %t212, ptr %t204, i64 %t205)
  %t213 = getelementptr i8, ptr %t212, i64 %t205
  %t214 = call i64 @__olang_fmt_i64(ptr %t213, i64 %t203)
  %t215 = getelementptr i8, ptr %t213, i64 %t207
  call void @olang_textcopy(ptr %t215, ptr %t209, i64 %t210)
  %t216 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t212, 1
  %t219 = extractvalue { i64, ptr } %t217, 0
  %t220 = extractvalue { i64, ptr } %t217, 1
  %t221 = mul i64 %t219, 1
  %t222 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t221)
  call void @llvm.memcpy.p0.p0.i64(ptr %t222, ptr %t220, i64 %t221, i1 false)
  %t223 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l10, { i64, ptr } %t224)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s8)
  br label %bb38
bb37:
  br label %bb38
bb38:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d144, i32 0, i32 1) })
  br label %bb39
bb39:
  store ptr %l10, ptr %l91, !tbaa !29
  %t228 = load ptr, ptr %l9, !tbaa !29
  %t230 = getelementptr %"compiler/emit:fnEm", ptr %t228, i32 0, i32 3
  %t232 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t230)
  store { i64, ptr } %t232, ptr %l94
  br label %bb40
bb40:
  %t233 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  %t235 = extractvalue { i64, ptr } %t233, 1
  %t236 = mul i64 %t234, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t236)
  call void @llvm.memcpy.p0.p0.i64(ptr %t237, ptr %t235, i64 %t236, i1 false)
  %t238 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  %t240 = load ptr, ptr %l91, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t240, { i64, ptr } %t239)
  br label %bb41
bb41:
  store ptr %l10, ptr %l96, !tbaa !29
  %t242 = load ptr, ptr %l9, !tbaa !29
  %t244 = getelementptr %"compiler/emit:fnEm", ptr %t242, i32 0, i32 4
  %t246 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t244)
  store { i64, ptr } %t246, ptr %l99
  br label %bb42
bb42:
  %t247 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  %t249 = extractvalue { i64, ptr } %t247, 1
  %t250 = mul i64 %t248, 1
  %t251 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t250)
  call void @llvm.memcpy.p0.p0.i64(ptr %t251, ptr %t249, i64 %t250, i1 false)
  %t252 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t251, 1
  %t254 = load ptr, ptr %l96, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t254, { i64, ptr } %t253)
  br label %bb43
bb43:
  %t256 = load ptr, ptr %l9, !tbaa !29
  %t258 = getelementptr %"compiler/emit:fnEm", ptr %t256, i32 0, i32 18
  %t259 = load i64, ptr %t258, !tbaa !24
  %t261 = icmp sge i64 %t259, 0
  br i1 %t261, label %bb44, label %bb45
bb44:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/emit:Emitter", ptr %t263, i32 0, i32 5
  %t266 = load i1, ptr %t265, !tbaa !21
  store i1 %t266, ptr %l104, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb46
bb46:
  %t268 = load i1, ptr %l104, !tbaa !21
  br i1 %t268, label %bb47, label %bb48
bb47:
  %t269 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2edeclareVars(ptr %v0, ptr %s0, ptr %t269, ptr %l10)
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb50
bb50:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d145, i32 0, i32 1) })
  br label %bb51
bb51:
  store ptr %l10, ptr %l110, !tbaa !29
  %t273 = load ptr, ptr %l9, !tbaa !29
  %t275 = getelementptr %"compiler/emit:fnEm", ptr %t273, i32 0, i32 5
  %t277 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t275)
  store { i64, ptr } %t277, ptr %l113
  br label %bb52
bb52:
  %t278 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 0
  %t280 = extractvalue { i64, ptr } %t278, 1
  %t281 = mul i64 %t279, 1
  %t282 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t281)
  call void @llvm.memcpy.p0.p0.i64(ptr %t282, ptr %t280, i64 %t281, i1 false)
  %t283 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t282, 1
  %t285 = load ptr, ptr %l110, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t285, { i64, ptr } %t284)
  br label %bb53
bb53:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) })
  br label %bb54
bb54:
  store ptr %l10, ptr %l116, !tbaa !29
  %t288 = load ptr, ptr %l9, !tbaa !29
  %t290 = getelementptr %"compiler/emit:fnEm", ptr %t288, i32 0, i32 21
  %t292 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t290)
  store { i64, ptr } %t292, ptr %l119
  br label %bb55
bb55:
  %t293 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 0
  %t295 = extractvalue { i64, ptr } %t293, 1
  %t296 = mul i64 %t294, 1
  %t297 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t296)
  call void @llvm.memcpy.p0.p0.i64(ptr %t297, ptr %t295, i64 %t296, i1 false)
  %t298 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t297, 1
  %t300 = load ptr, ptr %l116, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t300, { i64, ptr } %t299)
  br label %bb56
bb56:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l10, i8 10)
  br label %bb57
bb57:
  %t303 = load ptr, ptr %l9, !tbaa !29
  %t305 = getelementptr %"compiler/emit:fnEm", ptr %t303, i32 0, i32 28
  %t306 = load i1, ptr %t305, !tbaa !21
  br i1 %t306, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s12
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load { i64, [2 x i64] }, ptr %l1
  %t310 = load ptr, ptr %l2, !tbaa !29
  %t311 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t312 = load i64, ptr %l4, !tbaa !24
  %t313 = load ptr, ptr %l9, !tbaa !29
  %t315 = getelementptr %"compiler/emit:fnEm", ptr %t313, i32 0, i32 29
  %t316 = load { i64, ptr }, ptr %t315, !tbaa !27
  %t323 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenNext(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %s12, ptr %t308, { i64, [2 x i64] } %t309, ptr %t310, { i64, ptr } %t311, i64 %t312, { i64, ptr } %t316, i1 false)
  store { i64, ptr } %t323, ptr %l131
  br label %bb60
bb59:
  br label %bb72
bb60:
  %t324 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t324, ptr %l11, !tbaa !27
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load { i64, [2 x i64] }, ptr %l1
  %t327 = load ptr, ptr %l2, !tbaa !29
  %t328 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t329 = load i64, ptr %l4, !tbaa !24
  %t330 = load ptr, ptr %l9, !tbaa !29
  %t332 = getelementptr %"compiler/emit:fnEm", ptr %t330, i32 0, i32 29
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  %t340 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenNext(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %s12, ptr %t325, { i64, [2 x i64] } %t326, ptr %t327, { i64, ptr } %t328, i64 %t329, { i64, ptr } %t333, i1 true)
  store { i64, ptr } %t340, ptr %l139
  br label %bb61
bb61:
  %t341 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t341, ptr %l12, !tbaa !27
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t344 = load ptr, ptr %l9, !tbaa !29
  %t346 = getelementptr %"compiler/emit:fnEm", ptr %t344, i32 0, i32 29
  %t347 = load { i64, ptr }, ptr %t346, !tbaa !27
  %t351 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenDrop(ptr %v0, ptr %v2, ptr %v0, ptr %s12, ptr %t342, { i64, ptr } %t343, { i64, ptr } %t347)
  store { i64, ptr } %t351, ptr %l144
  br label %bb62
bb62:
  %t352 = load { i64, ptr }, ptr %l144, !tbaa !27
  store { i64, ptr } %t352, ptr %l13, !tbaa !27
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l145, !tbaa !29
  %t354 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t354, ptr %l146
  %t355 = load ptr, ptr %l2, !tbaa !29
  %t357 = getelementptr %"compiler/mir:Fn", ptr %t355, i32 0, i32 1
  %t358 = load i32, ptr %t357, !tbaa !23
  store i32 %t358, ptr %l148, !tbaa !23
  %t359 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t359, ptr %l149, !tbaa !27
  %t360 = load i64, ptr %l4, !tbaa !24
  store i64 %t360, ptr %l150, !tbaa !24
  %t361 = load i1, ptr %l5, !tbaa !21
  store i1 %t361, ptr %l151, !tbaa !21
  %t362 = ptrtoint ptr %s12 to i64
  store i64 %t362, ptr %l152, !tbaa !24
  %t363 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t363, label %bb63, label %bb64
bb63:
  %t365 = call ptr @__olang_region_make(ptr %s12)
  %t366 = ptrtoint ptr %t365 to i64
  store i64 %t366, ptr %l152, !tbaa !24
  br label %bb64
bb64:
  %t367 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t367, ptr %l154, !tbaa !27
  %t368 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t368, ptr %l155, !tbaa !27
  %t369 = ptrtoint ptr %s12 to i64
  store i64 %t369, ptr %l156, !tbaa !24
  %t370 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t370, label %bb65, label %bb66
bb65:
  %t372 = call ptr @__olang_region_make(ptr %s12)
  %t373 = ptrtoint ptr %t372 to i64
  store i64 %t373, ptr %l156, !tbaa !24
  br label %bb66
bb66:
  %t374 = load i64, ptr %l156
  %t375 = inttoptr i64 %t374 to ptr
  %t377 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t375, ptr %l10)
  store { i64, ptr } %t377, ptr %l159
  br label %bb67
bb67:
  %t378 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t379 = load i64, ptr %l156
  %t380 = inttoptr i64 %t379 to ptr
  %t381 = extractvalue { i64, ptr } %t378, 0
  %t382 = extractvalue { i64, ptr } %t378, 1
  %t383 = mul i64 %t381, 1
  %t384 = call ptr @__olang_scope_alloc(ptr %t380, i64 %t383)
  call void @llvm.memcpy.p0.p0.i64(ptr %t384, ptr %t382, i64 %t383, i1 false)
  %t385 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t384, 1
  store { i64, ptr } %t386, ptr %l160, !tbaa !27
  %t387 = load ptr, ptr %l2, !tbaa !29
  %t389 = getelementptr %"compiler/mir:Fn", ptr %t387, i32 0, i32 7
  %t391 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t389)
  store i64 %t391, ptr %l163
  br label %bb68
bb68:
  %t392 = load i64, ptr %l156
  %t393 = inttoptr i64 %t392 to ptr
  %t394 = load i64, ptr %l156
  %t395 = inttoptr i64 %t394 to ptr
  %t396 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t397 = load i64, ptr %l163, !tbaa !24
  %t398 = call { i64, ptr } @compiler_2femit_2efoldSlots(ptr %t393, ptr %t395, { i64, ptr } %t396, i64 %t397)
  store { i64, ptr } %t398, ptr %l164
  br label %bb69
bb69:
  %t399 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t400 = load i64, ptr %l156
  %t401 = inttoptr i64 %t400 to ptr
  %t402 = extractvalue { i64, ptr } %t399, 0
  %t403 = extractvalue { i64, ptr } %t399, 1
  %t404 = mul i64 %t402, 1
  %t405 = call ptr @__olang_scope_alloc(ptr %t401, i64 %t404)
  call void @llvm.memcpy.p0.p0.i64(ptr %t405, ptr %t403, i64 %t404, i1 false)
  %t406 = insertvalue { i64, ptr } undef, i64 %t402, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t405, 1
  %t409 = call { i64, ptr } @compiler_2femit_2eframeKept(ptr %s12, ptr %s12, { i64, ptr } %t407)
  store { i64, ptr } %t409, ptr %l166
  br label %bb70
bb70:
  %t410 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t411 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 1
  %t413 = extractvalue { i64, ptr } %t411, 0
  %t414 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = extractvalue { i64, ptr } %t414, 0
  %t417 = add i64 %t413, %t416
  %t418 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t418, 1
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t421 = add i64 %t417, %t420
  %t423 = extractvalue { i64, ptr } %t410, 1
  %t424 = extractvalue { i64, ptr } %t410, 0
  %t425 = add i64 %t421, %t424
  %t426 = load i64, ptr %l152
  %t427 = inttoptr i64 %t426 to ptr
  %t428 = call ptr @__olang_scope_alloc(ptr %t427, i64 %t425)
  call void @olang_textcopy(ptr %t428, ptr %t412, i64 %t413)
  %t429 = getelementptr i8, ptr %t428, i64 %t413
  call void @olang_textcopy(ptr %t429, ptr %t415, i64 %t416)
  %t430 = getelementptr i8, ptr %t429, i64 %t416
  call void @olang_textcopy(ptr %t430, ptr %t419, i64 %t420)
  %t431 = getelementptr i8, ptr %t430, i64 %t420
  call void @olang_textcopy(ptr %t431, ptr %t423, i64 %t424)
  %t432 = insertvalue { i64, ptr } undef, i64 %t425, 0
  %t433 = insertvalue { i64, ptr } %t432, ptr %t428, 1
  %t435 = load i64, ptr %l152
  %t436 = inttoptr i64 %t435 to ptr
  %t437 = extractvalue { i64, ptr } %t433, 0
  %t438 = extractvalue { i64, ptr } %t433, 1
  %t439 = mul i64 %t437, 1
  %t440 = call ptr @__olang_scope_alloc(ptr %t436, i64 %t439)
  call void @llvm.memcpy.p0.p0.i64(ptr %t440, ptr %t438, i64 %t439, i1 false)
  %t441 = insertvalue { i64, ptr } undef, i64 %t437, 0
  %t442 = insertvalue { i64, ptr } %t441, ptr %t440, 1
  %t443 = load ptr, ptr %l145, !tbaa !29
  %t444 = load { i64, [2 x i64] }, ptr %l146
  %t445 = load i32, ptr %l148, !tbaa !23
  %t446 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t447 = load i64, ptr %l150, !tbaa !24
  %t448 = load i1, ptr %l151, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v2, ptr %s12, ptr %t443, { i64, [2 x i64] } %t444, i32 %t445, { i64, ptr } %t446, i64 %t447, i1 %t448, { i64, ptr } %t442)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb72:
  %t451 = load ptr, ptr %l0, !tbaa !29
  store ptr %t451, ptr %l171, !tbaa !29
  %t452 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t452, ptr %l172
  %t453 = load ptr, ptr %l2, !tbaa !29
  %t455 = getelementptr %"compiler/mir:Fn", ptr %t453, i32 0, i32 1
  %t456 = load i32, ptr %t455, !tbaa !23
  store i32 %t456, ptr %l174, !tbaa !23
  %t457 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t457, ptr %l175, !tbaa !27
  %t458 = load i64, ptr %l4, !tbaa !24
  store i64 %t458, ptr %l176, !tbaa !24
  %t459 = load i1, ptr %l5, !tbaa !21
  store i1 %t459, ptr %l177, !tbaa !21
  %t460 = ptrtoint ptr %s0 to i64
  store i64 %t460, ptr %l178, !tbaa !24
  %t461 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t461, label %bb73, label %bb74
bb73:
  %t463 = call ptr @__olang_region_make(ptr %s0)
  %t464 = ptrtoint ptr %t463 to i64
  store i64 %t464, ptr %l178, !tbaa !24
  br label %bb74
bb74:
  %t465 = load i64, ptr %l178
  %t466 = inttoptr i64 %t465 to ptr
  %t468 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t466, ptr %l10)
  store { i64, ptr } %t468, ptr %l181
  br label %bb75
bb75:
  %t469 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t470 = load i64, ptr %l178
  %t471 = inttoptr i64 %t470 to ptr
  %t472 = extractvalue { i64, ptr } %t469, 0
  %t473 = extractvalue { i64, ptr } %t469, 1
  %t474 = mul i64 %t472, 1
  %t475 = call ptr @__olang_scope_alloc(ptr %t471, i64 %t474)
  call void @llvm.memcpy.p0.p0.i64(ptr %t475, ptr %t473, i64 %t474, i1 false)
  %t476 = insertvalue { i64, ptr } undef, i64 %t472, 0
  %t477 = insertvalue { i64, ptr } %t476, ptr %t475, 1
  store { i64, ptr } %t477, ptr %l182, !tbaa !27
  %t478 = load ptr, ptr %l2, !tbaa !29
  %t480 = getelementptr %"compiler/mir:Fn", ptr %t478, i32 0, i32 7
  %t482 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t480)
  store i64 %t482, ptr %l185
  br label %bb76
bb76:
  %t483 = load i64, ptr %l178
  %t484 = inttoptr i64 %t483 to ptr
  %t485 = load i64, ptr %l178
  %t486 = inttoptr i64 %t485 to ptr
  %t487 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t488 = load i64, ptr %l185, !tbaa !24
  %t489 = call { i64, ptr } @compiler_2femit_2efoldSlots(ptr %t484, ptr %t486, { i64, ptr } %t487, i64 %t488)
  store { i64, ptr } %t489, ptr %l186
  br label %bb77
bb77:
  %t490 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t491 = load i64, ptr %l178
  %t492 = inttoptr i64 %t491 to ptr
  %t493 = extractvalue { i64, ptr } %t490, 0
  %t494 = extractvalue { i64, ptr } %t490, 1
  %t495 = mul i64 %t493, 1
  %t496 = call ptr @__olang_scope_alloc(ptr %t492, i64 %t495)
  call void @llvm.memcpy.p0.p0.i64(ptr %t496, ptr %t494, i64 %t495, i1 false)
  %t497 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  %t499 = load ptr, ptr %l171, !tbaa !29
  %t500 = load { i64, [2 x i64] }, ptr %l172
  %t501 = load i32, ptr %l174, !tbaa !23
  %t502 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t503 = load i64, ptr %l176, !tbaa !24
  %t504 = load i1, ptr %l177, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v2, ptr %s0, ptr %t499, { i64, [2 x i64] } %t500, i32 %t501, { i64, ptr } %t502, i64 %t503, i1 %t504, { i64, ptr } %t498)
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaggregate(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l26 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i32
  %l41 = alloca i1
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l103 = alloca i32
  %l109 = alloca i64
  %l110 = alloca i64
  %l113 = alloca i32
  %l121 = alloca { i64, ptr }
  %l124 = alloca i1
  %l125 = alloca ptr
  %l129 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca i32
  %l135 = alloca ptr
  %l138 = alloca i32
  %l139 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t289 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a1)
  store i32 %t13, ptr %l20
  br label %bb1
bb1:
  %t14 = load i32, ptr %l20, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i32, ptr %l5, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l23
  br label %bb2
bb2:
  %t20 = load i32, ptr %l23, !range !{i32 0, i32 33}
  store i32 %t20, ptr %l6
  %t21 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t23 = trunc i64 24 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb10
bb4:
  %t26 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t28 = trunc i64 18 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load ptr, ptr %l4, !tbaa !29
  store ptr %t31, ptr %l30, !tbaa !29
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t33 = load i32, ptr %l5, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l33
  br label %bb7
bb6:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb9
bb7:
  %t37 = load ptr, ptr %l30, !tbaa !29
  %t38 = load i32, ptr %l33, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t39, ptr %l34
  br label %bb8
bb8:
  %t40 = load i32, ptr %l34, !range !{i32 0, i32 6}
  %t42 = trunc i64 1 to i32
  %t43 = icmp eq i32 %t40, %t42
  store i1 %t43, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t45 = load i1, ptr %l29, !tbaa !21
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb10
bb10:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/emit:fnEm", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i32, ptr %l5, !tbaa !23
  %t56 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %t52, i32 %t53)
  store i1 %t56, ptr %l41
  br label %bb13
bb12:
  br label %bb34
bb13:
  %t57 = load i1, ptr %l41, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb14, label %bb15
bb14:
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = call i64 @__olang_fmt_i64(ptr null, i64 %t60)
  %t63 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t62)
  %t64 = call i64 @__olang_fmt_i64(ptr %t63, i64 %t60)
  %t65 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t63, 1
  call void @__olang_scope_close(ptr %s1)
  store { i64, ptr } %t66, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l5, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s1, ptr %t68, i32 %t69)
  store { i64, ptr } %t72, ptr %l47
  br label %bb17
bb17:
  %t73 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t73, ptr %l8, !tbaa !27
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t78 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s1, ptr %s1, ptr %t74, { i64, ptr } %t75, i64 8)
  store { i64, ptr } %t78, ptr %l50
  br label %bb18
bb18:
  %t79 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t79, ptr %l9, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s1, ptr %s1, ptr %s1, ptr %s1, ptr %t80, { i64, ptr } %t81, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d147, i32 0, i32 1) }, { i64, ptr } %t82, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb19
bb19:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l54, !tbaa !29
  %t87 = load i64, ptr %l2, !tbaa !24
  %t89 = call i64 @__olang_fmt_i64(ptr null, i64 %t87)
  %t90 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t89)
  %t91 = call i64 @__olang_fmt_i64(ptr %t90, i64 %t87)
  %t92 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t90, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = extractvalue { i64, ptr } %t93, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l57, !tbaa !27
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t104 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t107 = extractvalue { i64, ptr } %t102, 1
  %t108 = extractvalue { i64, ptr } %t102, 0
  %t109 = add i64 %t105, %t108
  %t110 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t114 = extractvalue { i64, ptr } %t103, 1
  %t115 = extractvalue { i64, ptr } %t103, 0
  %t116 = add i64 %t112, %t115
  %t117 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t118 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t119 = add i64 %t116, %t118
  %t120 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t119)
  call void @olang_textcopy(ptr %t120, ptr %t104, i64 %t105)
  %t121 = getelementptr i8, ptr %t120, i64 %t105
  call void @olang_textcopy(ptr %t121, ptr %t107, i64 %t108)
  %t122 = getelementptr i8, ptr %t121, i64 %t108
  call void @olang_textcopy(ptr %t122, ptr %t110, i64 %t111)
  %t123 = getelementptr i8, ptr %t122, i64 %t111
  call void @olang_textcopy(ptr %t123, ptr %t114, i64 %t115)
  %t124 = getelementptr i8, ptr %t123, i64 %t115
  call void @olang_textcopy(ptr %t124, ptr %t117, i64 %t118)
  %t125 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t120, 1
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t129 = extractvalue { i64, ptr } %t126, 1
  %t130 = mul i64 %t128, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t131, ptr %t129, i64 %t130, i1 false)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  %t136 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s1, ptr %s1, ptr %t101, { i64, ptr } %t133)
  store { i64, ptr } %t136, ptr %l63
  br label %bb20
bb20:
  %t137 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  %t139 = extractvalue { i64, ptr } %t137, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  %t144 = load ptr, ptr %l54, !tbaa !29
  %t145 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s1, ptr %s1, ptr %s1, ptr %s1, ptr %t144, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d152, i32 0, i32 1) }, { i64, ptr } %t145, { i64, ptr } %t143, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb21
bb21:
  %t147 = load ptr, ptr %l4, !tbaa !29
  store ptr %t147, ptr %l65, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i32, ptr %l5, !tbaa !23
  %t152 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l68
  br label %bb22
bb22:
  %t153 = load ptr, ptr %l65, !tbaa !29
  %t154 = load i32, ptr %l68, !tbaa !23
  %t155 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s1, ptr %t153, i32 %t154)
  store { i64, ptr } %t155, ptr %l69
  br label %bb23
bb23:
  %t156 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t156, ptr %l70, !tbaa !27
  %t157 = load i64, ptr %l2, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i32, ptr %t160, i64 %t157
  %t162 = load i32, ptr %t161, !tbaa !33
  store i32 %t162, ptr %l10, !tbaa !23
  %t164 = load i32, ptr %l10, !tbaa !23
  %t166 = icmp ne i32 %t164, 0
  br i1 %t166, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s6
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l75, !tbaa !29
  %t169 = load i32, ptr %l10, !tbaa !23
  store i32 %t169, ptr %l76, !tbaa !23
  %t170 = load ptr, ptr %l4, !tbaa !29
  store ptr %t170, ptr %l77, !tbaa !29
  %t171 = load ptr, ptr %l4, !tbaa !29
  %t172 = load i32, ptr %l10, !tbaa !23
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t171, i32 %t172)
  store i32 %t175, ptr %l80
  br label %bb26
bb25:
  br label %bb32
bb26:
  %t176 = load ptr, ptr %l77, !tbaa !29
  %t177 = load i32, ptr %l80, !tbaa !23
  %t178 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t176, i32 %t177)
  store { i64, ptr } %t178, ptr %l81
  br label %bb27
bb27:
  %t179 = load %"compiler/mir:Range", ptr %l3
  %t180 = load ptr, ptr %l75, !tbaa !29
  %t181 = load i32, ptr %l76, !tbaa !23
  %t182 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t184 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eparts(ptr %v0, ptr %v0, ptr %s6, ptr %t180, i32 %t181, { i64, ptr } %t182, %"compiler/mir:Range" %t179)
  store { i64, ptr } %t184, ptr %l83
  br label %bb28
bb28:
  %t185 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t185, ptr %l11, !tbaa !27
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l84, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i32, ptr %l10, !tbaa !23
  %t191 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s6, ptr %t187, i32 %t188)
  store { i64, ptr } %t191, ptr %l87
  br label %bb29
bb29:
  %t192 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  %t194 = extractvalue { i64, ptr } %t192, 1
  %t195 = mul i64 %t193, 1
  %t196 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t195)
  call void @llvm.memcpy.p0.p0.i64(ptr %t196, ptr %t194, i64 %t195, i1 false)
  %t197 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  store { i64, ptr } %t198, ptr %l88, !tbaa !27
  %t199 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t199, ptr %l89, !tbaa !27
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t203 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t204 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t206 = extractvalue { i64, ptr } %t201, 1
  %t207 = extractvalue { i64, ptr } %t201, 0
  %t208 = add i64 %t204, %t207
  %t209 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t211 = add i64 %t208, %t210
  %t213 = extractvalue { i64, ptr } %t202, 1
  %t214 = extractvalue { i64, ptr } %t202, 0
  %t215 = add i64 %t211, %t214
  %t216 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t217 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t218 = add i64 %t215, %t217
  %t219 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t218)
  call void @olang_textcopy(ptr %t219, ptr %t203, i64 %t204)
  %t220 = getelementptr i8, ptr %t219, i64 %t204
  call void @olang_textcopy(ptr %t220, ptr %t206, i64 %t207)
  %t221 = getelementptr i8, ptr %t220, i64 %t207
  call void @olang_textcopy(ptr %t221, ptr %t209, i64 %t210)
  %t222 = getelementptr i8, ptr %t221, i64 %t210
  call void @olang_textcopy(ptr %t222, ptr %t213, i64 %t214)
  %t223 = getelementptr i8, ptr %t222, i64 %t214
  call void @olang_textcopy(ptr %t223, ptr %t216, i64 %t217)
  %t224 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t219, 1
  %t227 = extractvalue { i64, ptr } %t225, 0
  %t228 = extractvalue { i64, ptr } %t225, 1
  %t229 = mul i64 %t227, 1
  %t230 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t229)
  call void @llvm.memcpy.p0.p0.i64(ptr %t230, ptr %t228, i64 %t229, i1 false)
  %t231 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t230, 1
  %t235 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s6, ptr %s6, ptr %t200, { i64, ptr } %t232)
  store { i64, ptr } %t235, ptr %l95
  br label %bb30
bb30:
  %t236 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  %t238 = extractvalue { i64, ptr } %t236, 1
  %t239 = mul i64 %t237, 1
  %t240 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  %t243 = load ptr, ptr %l84, !tbaa !29
  %t244 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t245 = load { i64, ptr }, ptr %l89, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s6, ptr %s6, ptr %s6, ptr %s6, ptr %t243, { i64, ptr } %t244, { i64, ptr } %t245, { i64, ptr } %t242, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s6)
  br label %bb32
bb32:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t249 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t253 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s1, ptr %s1, ptr %v1, ptr %v1, ptr %t247, { i64, ptr } %t248, { i64, ptr } %t249, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d156, i32 0, i32 1) })
  store { i64, ptr } %t253, ptr %l100
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s1)
  %t254 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t254, ptr %rv
  br label %ret
bb34:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i32, ptr %l5, !tbaa !23
  %t259 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t255, i32 %t256)
  store i32 %t259, ptr %l103
  br label %bb35
bb35:
  %t260 = load i32, ptr %l103, !tbaa !23
  store i32 %t260, ptr %l12, !tbaa !23
  %t261 = load i32, ptr %l12, !tbaa !23
  %t262 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t265 = icmp ne i32 %t261, %t262
  br i1 %t265, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s8
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l12, !tbaa !23
  %t271 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t267, i32 %t268)
  store i64 %t271, ptr %l109
  br label %bb38
bb37:
  br label %bb45
bb38:
  %t272 = load i64, ptr %l109, !tbaa !24
  store i64 %t272, ptr %l110, !tbaa !24
  %t274 = load ptr, ptr %l4, !tbaa !29
  %t275 = load i32, ptr %l12, !tbaa !23
  %t278 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t274, i32 %t275)
  store i32 %t278, ptr %l113
  br label %bb39
bb39:
  %t279 = load i64, ptr %l110, !tbaa !24
  %t280 = icmp sge i64 %t279, 0
  br i1 %t280, label %bb40, label %bb41
bb40:
  %t282 = load i64, ptr %l110, !tbaa !24
  %t283 = icmp sle i64 %t282, 2305843009213693951
  br i1 %t283, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_7181fb99348382a8_4bd06d378e143a0c)
  unreachable
bb42:
  %t285 = load i64, ptr %l110, !tbaa !24
  %t286 = mul i64 %t285, 4
  %t287 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t286)
  %t288 = load i32, ptr %l113, !tbaa !23
  store i64 0, ptr %t289
  br label %fill.290
fill.290:
  %t293 = load i64, ptr %t289
  %t294 = icmp slt i64 %t293, %t285
  br i1 %t294, label %fillb.291, label %filld.292
fillb.291:
  %t295 = getelementptr i32, ptr %t287, i64 %t293
  store i32 %t288, ptr %t295
  %t296 = add i64 %t293, 1
  store i64 %t296, ptr %t289
  br label %fill.290
filld.292:
  %t297 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t287, 1
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load i32, ptr %l12, !tbaa !23
  %t303 = load %"compiler/mir:Range", ptr %l3
  %t308 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eparts(ptr %v0, ptr %s8, ptr %v1, ptr %t300, i32 %t301, { i64, ptr } %t298, %"compiler/mir:Range" %t303)
  store { i64, ptr } %t308, ptr %l121
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_7181fb99348382a8_4bd06d378e143a0c)
  unreachable
bb44:
  call void @__olang_scope_close(ptr %s8)
  %t309 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t309, ptr %rv
  br label %ret
bb45:
  %t310 = load ptr, ptr %l4, !tbaa !29
  %t311 = load i32, ptr %l5, !tbaa !23
  %t314 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t310, i32 %t311)
  store i1 %t314, ptr %l124
  br label %bb46
bb46:
  %t315 = load i1, ptr %l124, !tbaa !21
  br i1 %t315, label %bb47, label %bb48
bb47:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l125, !tbaa !29
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load i32, ptr %l5, !tbaa !23
  %t319 = load %"compiler/mir:Range", ptr %l3
  %t323 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedMake(ptr %v0, ptr %v1, ptr %t317, i32 %t318, %"compiler/mir:Range" %t319)
  store { i64, ptr } %t323, ptr %l129
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t324 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t324, 0
  %t326 = extractvalue { i64, ptr } %t324, 1
  %t327 = mul i64 %t325, 1
  %t328 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t327)
  call void @llvm.memcpy.p0.p0.i64(ptr %t328, ptr %t326, i64 %t327, i1 false)
  %t329 = insertvalue { i64, ptr } undef, i64 %t325, 0
  %t330 = insertvalue { i64, ptr } %t329, ptr %t328, 1
  %t331 = load i32, ptr %l5, !tbaa !23
  %t332 = load ptr, ptr %l125, !tbaa !29
  %t335 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easPacked(ptr %v0, ptr %v1, ptr %v1, ptr %t332, { i64, ptr } %t330, i32 %t331)
  store { i64, ptr } %t335, ptr %l132
  br label %bb50
bb50:
  %t336 = load { i64, ptr }, ptr %l132, !tbaa !27
  store { i64, ptr } %t336, ptr %rv
  br label %ret
bb51:
  %t337 = load ptr, ptr %l0, !tbaa !29
  store ptr %t337, ptr %l133, !tbaa !29
  %t338 = load i32, ptr %l5, !tbaa !23
  store i32 %t338, ptr %l134, !tbaa !23
  %t339 = load ptr, ptr %l4, !tbaa !29
  store ptr %t339, ptr %l135, !tbaa !29
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load i32, ptr %l5, !tbaa !23
  %t344 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %t340, i32 %t341)
  store i32 %t344, ptr %l138
  br label %bb52
bb52:
  %t345 = load ptr, ptr %l135, !tbaa !29
  %t346 = load i32, ptr %l138, !tbaa !23
  %t347 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t345, i32 %t346)
  store { i64, ptr } %t347, ptr %l139
  br label %bb53
bb53:
  %t348 = load %"compiler/mir:Range", ptr %l3
  %t349 = load ptr, ptr %l133, !tbaa !29
  %t350 = load i32, ptr %l134, !tbaa !23
  %t351 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t353 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eparts(ptr %v0, ptr %v0, ptr %v1, ptr %t349, i32 %t350, { i64, ptr } %t351, %"compiler/mir:Range" %t348)
  store { i64, ptr } %t353, ptr %l141
  br label %bb54
bb54:
  %t354 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t354, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexportNamed(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca { i64, [21 x i64] }
  %l16 = alloca %"compiler/source:Span"
  %l18 = alloca { i64, [15 x i64] }
  %l19 = alloca %"compiler/source:Span"
  %l21 = alloca { i64, [15 x i64] }
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/mir:Lvalue"
  %l25 = alloca { i64, [15 x i64] }
  %l27 = alloca i32
  %l28 = alloca %"compiler/mir:Range"
  %l29 = alloca i32
  %l30 = alloca i32
  %l32 = alloca i32
  %l33 = alloca i32
  %lp35 = alloca ptr
  %l39 = alloca %"compiler/mir:Lvalue"
  %l41 = alloca i32
  %l50 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i64
  %l79 = alloca ptr
  %l82 = alloca i64
  %l84 = alloca i64
  %l89 = alloca { i64, [21 x i64] }
  %l90 = alloca { i64, [21 x i64] }
  %l93 = alloca i1
  %l97 = alloca %"compiler/mir:Lvalue"
  %l100 = alloca i1
  %l106 = alloca i1
  %l114 = alloca i1
  %l120 = alloca i1
  %l124 = alloca %"compiler/mir:Range"
  %l130 = alloca ptr
  %l134 = alloca %"compiler/mir:Range"
  %l137 = alloca { i64, [4 x i64] }
  %l138 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l143 = alloca i1
  %l151 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l153 = alloca i64
  %l154 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 -1, ptr %l2, !tbaa !23
  %t1 = load { i64, [4 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/mir:Lvalue", ptr %t7
  store %"compiler/mir:Lvalue" %t8, ptr %l39
  %t11 = getelementptr %"compiler/mir:Lvalue", ptr %l39, i32 0, i32 0
  %t12 = load { i64, [2 x i64] }, ptr %t11
  store { i64, [2 x i64] } %t12, ptr %l4
  %t14 = load { i64, [2 x i64] }, ptr %l4
  %t16 = extractvalue { i64, [2 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 1
  br i1 %t17, label %bb3, label %bb4
bb2:
  br label %bb12
bb3:
  %t19 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t20 = getelementptr { i32 }, ptr %t19, i32 0, i32 0
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t23 = load i32, ptr %l5, !tbaa !23
  store i32 %t23, ptr %l41, !tbaa !23
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t25 = load i32, ptr %l2, !tbaa !23
  store i32 %t25, ptr %l41, !tbaa !23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ad86a063ee4785b3_cfd7ee8512ee9757)
  unreachable
bb11:
  %t27 = load i32, ptr %l41, !tbaa !23
  store i32 %t27, ptr %l2, !tbaa !23
  br label %bb12
bb12:
  store i64 0, ptr %l6, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:fnEm", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/mir:Fn", ptr %t31, i32 0, i32 9
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l50
  br label %bb13
bb13:
  %t36 = load i64, ptr %l50, !tbaa !24
  store i64 %t36, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t37 = load i64, ptr %l7, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb19
bb16:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l57, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb18
bb18:
  %t63 = load i64, ptr %l57, !tbaa !24
  store i64 %t63, ptr %l54, !tbaa !24
  br label %bb19
bb19:
  %t64 = load i64, ptr %l54, !tbaa !24
  store i64 %t64, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb20
bb20:
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb21, label %bb22
bb21:
  br label %bb60
bb22:
  br label %bb23
bb23:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/emit:fnEm", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/mir:Fn", ptr %t86, i32 0, i32 9
  %t92 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t88, i64 %t81)
  store ptr %t92, ptr %l79
  br label %bb24
bb24:
  %t93 = load ptr, ptr %l79, !tbaa !29
  %t96 = getelementptr %"compiler/mir:BasicBlock", ptr %t93, i32 0, i32 0
  store ptr %t96, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s7
  %t98 = load i64, ptr %l14, !tbaa !24
  store i64 %t98, ptr %l82, !tbaa !24
  %t99 = load ptr, ptr %l13, !tbaa !29
  %t101 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %t99)
  store i64 %t101, ptr %l84
  br label %bb26
bb26:
  %t102 = load i64, ptr %l82, !tbaa !24
  %t103 = load i64, ptr %l84, !tbaa !24
  %t104 = icmp slt i64 %t102, %t103
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s7)
  br label %bb58
bb28:
  br label %bb29
bb29:
  %t108 = load ptr, ptr %l13, !tbaa !29
  %t109 = load i64, ptr %l14, !tbaa !24
  %t112 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t108, i64 %t109)
  store { i64, [21 x i64] } %t112, ptr %l89
  br label %bb30
bb30:
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %l89, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l90, ptr %l15, i64 176, i1 false)
  %t113 = load { i64, [21 x i64] }, ptr %l90
  %t114 = extractvalue { i64, [21 x i64] } %t113, 0
  %t115 = icmp eq i64 %t114, 0
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb33
bb32:
  %t119 = getelementptr { i64, [21 x i64] }, ptr %l15, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t119, i32 0, i32 0
  %t121 = load %"compiler/source:Span", ptr %t120
  store %"compiler/source:Span" %t121, ptr %l16
  %t123 = getelementptr { i64, [21 x i64] }, ptr %l15, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t123, i32 0, i32 1
  %t125 = load %"compiler/mir:Lvalue", ptr %t124
  %t127 = getelementptr { i64, [21 x i64] }, ptr %l15, i32 0, i32 1
  %t128 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t127, i32 0, i32 2
  %t129 = load { i64, [15 x i64] }, ptr %t128
  store { i64, [15 x i64] } %t129, ptr %l18
  store %"compiler/mir:Lvalue" %t125, ptr %l97
  %t132 = getelementptr %"compiler/mir:Lvalue", ptr %l97, i32 0, i32 1
  %t133 = getelementptr %"compiler/mir:Range", ptr %t132, i32 0, i32 1
  %t134 = load i32, ptr %t133, !tbaa !23
  %t136 = icmp ne i32 %t134, 0
  store i1 %t136, ptr %l93, !tbaa !21
  br label %bb33
bb33:
  %t138 = load i1, ptr %l93, !tbaa !21
  br i1 %t138, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb37
bb35:
  %t139 = getelementptr { i64, [21 x i64] }, ptr %l15, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t139, i32 0, i32 0
  %t141 = load %"compiler/source:Span", ptr %t140
  store %"compiler/source:Span" %t141, ptr %l19
  %t143 = getelementptr { i64, [21 x i64] }, ptr %l15, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t143, i32 0, i32 1
  %t145 = load %"compiler/mir:Lvalue", ptr %t144
  %t147 = getelementptr { i64, [21 x i64] }, ptr %l15, i32 0, i32 1
  %t148 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t147, i32 0, i32 2
  %t149 = load { i64, [15 x i64] }, ptr %t148
  store { i64, [15 x i64] } %t149, ptr %l21
  %t152 = load i32, ptr %l2, !tbaa !23
  %t155 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aLvalue_2eBaseIs(%"compiler/mir:Lvalue" %t145, i32 %t152)
  store i1 %t155, ptr %l106
  br label %bb36
bb36:
  %t156 = load i1, ptr %l106, !tbaa !21
  %t157 = xor i1 %t156, true
  store i1 %t157, ptr %l100, !tbaa !21
  br label %bb37
bb37:
  %t159 = load i1, ptr %l100, !tbaa !21
  br i1 %t159, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb57
bb39:
  br label %bb40
bb40:
  %t160 = getelementptr { i64, [21 x i64] }, ptr %l15, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t160, i32 0, i32 0
  %t162 = load %"compiler/source:Span", ptr %t161
  store %"compiler/source:Span" %t162, ptr %l22
  %t164 = getelementptr { i64, [21 x i64] }, ptr %l15, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t164, i32 0, i32 1
  %t166 = load %"compiler/mir:Lvalue", ptr %t165
  store %"compiler/mir:Lvalue" %t166, ptr %l23
  %t168 = getelementptr { i64, [21 x i64] }, ptr %l15, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t168, i32 0, i32 2
  %t170 = load { i64, [15 x i64] }, ptr %t169
  store { i64, [15 x i64] } %t170, ptr %l25
  %t174 = load { i64, [15 x i64] }, ptr %l25
  %t176 = extractvalue { i64, [15 x i64] } %t174, 0
  %t177 = icmp eq i64 %t176, 3
  br i1 %t177, label %bb41, label %bb42
bb41:
  %t179 = getelementptr { i64, [15 x i64] }, ptr %l25, i32 0, i32 1
  %t180 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t179, i32 0, i32 0
  %t181 = load i32, ptr %t180, !range !{i32 0, i32 52}
  %t183 = getelementptr { i64, [15 x i64] }, ptr %l25, i32 0, i32 1
  %t184 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t183, i32 0, i32 1
  %t185 = load i32, ptr %t184
  store i32 %t185, ptr %l27, !tbaa !23
  %t187 = getelementptr { i64, [15 x i64] }, ptr %l25, i32 0, i32 1
  %t188 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t187, i32 0, i32 2
  %t189 = load %"compiler/mir:Range", ptr %t188
  store %"compiler/mir:Range" %t189, ptr %l28
  %t193 = trunc i64 20 to i32
  %t194 = icmp eq i32 %t181, %t193
  store i1 %t194, ptr %l114, !tbaa !21
  br label %bb43
bb42:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb43
bb43:
  %t196 = load i1, ptr %l114, !tbaa !21
  br i1 %t196, label %bb44, label %bb45
bb44:
  %t197 = getelementptr { i64, [15 x i64] }, ptr %l25, i32 0, i32 1
  %t198 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t197, i32 0, i32 0
  %t199 = load i32, ptr %t198, !range !{i32 0, i32 52}
  store i32 %t199, ptr %l29
  %t201 = getelementptr { i64, [15 x i64] }, ptr %l25, i32 0, i32 1
  %t202 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t201, i32 0, i32 1
  %t203 = load i32, ptr %t202
  store i32 %t203, ptr %l30, !tbaa !23
  %t205 = getelementptr { i64, [15 x i64] }, ptr %l25, i32 0, i32 1
  %t206 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t205, i32 0, i32 2
  %t207 = load %"compiler/mir:Range", ptr %t206
  store %"compiler/mir:Range" %t207, ptr %l124
  %t210 = getelementptr %"compiler/mir:Range", ptr %l124, i32 0, i32 1
  %t211 = load i32, ptr %t210, !tbaa !23
  %t213 = icmp eq i32 %t211, 1
  store i1 %t213, ptr %l120, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb46
bb46:
  %t215 = load i1, ptr %l120, !tbaa !21
  br i1 %t215, label %bb47, label %bb48
bb47:
  %t216 = getelementptr { i64, [15 x i64] }, ptr %l25, i32 0, i32 1
  %t217 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t216, i32 0, i32 0
  %t218 = load i32, ptr %t217, !range !{i32 0, i32 52}
  store i32 %t218, ptr %l32
  %t220 = getelementptr { i64, [15 x i64] }, ptr %l25, i32 0, i32 1
  %t221 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t220, i32 0, i32 1
  %t222 = load i32, ptr %t221
  store i32 %t222, ptr %l33, !tbaa !23
  %t224 = getelementptr { i64, [15 x i64] }, ptr %l25, i32 0, i32 1
  %t225 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t224, i32 0, i32 2
  %t226 = load %"compiler/mir:Range", ptr %t225
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l130, !tbaa !29
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/emit:fnEm", ptr %t229, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !29
  %t234 = getelementptr %"compiler/mir:Fn", ptr %t232, i32 0, i32 11
  store %"compiler/mir:Range" %t226, ptr %l134
  %t236 = getelementptr %"compiler/mir:Range", ptr %l134, i32 0, i32 0
  %t237 = load i32, ptr %t236, !tbaa !23
  %t239 = sext i32 %t237 to i64
  %t242 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t234, i64 %t239)
  store { i64, [4 x i64] } %t242, ptr %l137
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t243 = load ptr, ptr %l130, !tbaa !29
  %t244 = load { i64, [4 x i64] }, ptr %l137
  %t245 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexportNamed(ptr %v0, ptr %v1, ptr %t243, { i64, [4 x i64] } %t244)
  store { i64, ptr } %t245, ptr %l138
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t246 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t246, ptr %rv
  br label %ret
bb51:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load { i64, [15 x i64] }, ptr %l25
  %t251 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexportBody(ptr %v0, ptr %v1, ptr %t247, { i64, [15 x i64] } %t248)
  store { i64, ptr } %t251, ptr %l141
  br label %bb52
bb52:
  %t252 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t252, ptr %lp35
  %t253 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t254 = load ptr, ptr %lp35
  store { i64, ptr } %t253, ptr %t254, !tbaa !27
  %t255 = load ptr, ptr %lp35
  %t256 = load { i64, ptr }, ptr %t255, !tbaa !27
  %t258 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s7, { i64, ptr } %t256, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d157, i32 0, i32 1) })
  store i1 %t258, ptr %l143
  br label %bb53
bb53:
  %t259 = load i1, ptr %l143, !tbaa !21
  %t260 = xor i1 %t259, true
  br i1 %t260, label %bb54, label %bb55
bb54:
  %t262 = load ptr, ptr %lp35
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t263, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s7)
  br label %bb57
bb57:
  %t265 = load i64, ptr %l14, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l14, !tbaa !24
  br label %bb25
bb58:
  br label %bb59
bb59:
  %t269 = load i64, ptr %l10, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l10, !tbaa !24
  br label %bb20
bb60:
  %t273 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s0, ptr %t273, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d158, i32 0, i32 1) })
  br label %bb61
bb61:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d159, i32 0, i32 1) }, ptr %l151, !tbaa !27
  %t275 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t275, ptr %l152, !tbaa !27
  %t276 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t276, 0
  store i64 %t277, ptr %l153, !tbaa !24
  %t278 = load i64, ptr %l153, !tbaa !24
  %t279 = mul i64 %t278, 1
  %t280 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t279)
  %t281 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t280, 1
  store { i64, ptr } %t282, ptr %l154, !tbaa !27
  %t283 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = load i64, ptr %l153, !tbaa !24
  %t288 = mul i64 %t287, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t284, ptr %t286, i64 %t288, i1 false)
  %t289 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t289, ptr %l152, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t290 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t290, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2efillLoop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca { { i64, ptr }, i32 }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l18 = alloca { { i64, ptr }, i32 }
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s0, ptr %t1, %"compiler/mir:Lvalue" %a1)
  store { { i64, ptr }, i32 } %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load { { i64, ptr }, i32 }, ptr %l18
  store { { i64, ptr }, i32 } %t6, ptr %l6
  %t7 = getelementptr { { i64, ptr }, i32 }, ptr %l6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l7, !tbaa !27
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t10, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d160, i32 0, i32 1) })
  store { i64, ptr } %t12, ptr %l21
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t13, ptr %l8, !tbaa !27
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t14, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d161, i32 0, i32 1) })
  store { i64, ptr } %t16, ptr %l23
  br label %bb3
bb3:
  %t17 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t17, ptr %l9, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d162, i32 0, i32 1) })
  store { i64, ptr } %t20, ptr %l25
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t21, ptr %l10, !tbaa !27
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t22, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d163, i32 0, i32 1) })
  store { i64, ptr } %t24, ptr %l27
  br label %bb5
bb5:
  %t25 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t25, ptr %l11, !tbaa !27
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t28 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t31 = extractvalue { i64, ptr } %t27, 1
  %t32 = extractvalue { i64, ptr } %t27, 0
  %t33 = add i64 %t29, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t28, i64 %t29)
  %t35 = getelementptr i8, ptr %t34, i64 %t29
  call void @olang_textcopy(ptr %t35, ptr %t31, i64 %t32)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = extractvalue { i64, ptr } %t37, 1
  %t41 = mul i64 %t39, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @llvm.memcpy.p0.p0.i64(ptr %t42, ptr %t40, i64 %t41, i1 false)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t26, { i64, ptr } %t44)
  br label %bb6
bb6:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t47, { i64, ptr } %t48)
  br label %bb7
bb7:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t53 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t56 = extractvalue { i64, ptr } %t52, 1
  %t57 = extractvalue { i64, ptr } %t52, 0
  %t58 = add i64 %t54, %t57
  %t59 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t58)
  call void @olang_textcopy(ptr %t59, ptr %t53, i64 %t54)
  %t60 = getelementptr i8, ptr %t59, i64 %t54
  call void @olang_textcopy(ptr %t60, ptr %t56, i64 %t57)
  %t61 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t59, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = extractvalue { i64, ptr } %t62, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t51, { i64, ptr } %t69)
  br label %bb8
bb8:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t72, { i64, ptr } %t73)
  br label %bb9
bb9:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %s0, ptr %t76)
  store { i64, ptr } %t78, ptr %l41
  br label %bb10
bb10:
  %t79 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t79, ptr %l12, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %s0, ptr %t80)
  store { i64, ptr } %t82, ptr %l43
  br label %bb11
bb11:
  %t83 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t83, ptr %l13, !tbaa !27
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t85, 1
  %t91 = extractvalue { i64, ptr } %t85, 0
  %t92 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t96 = extractvalue { i64, ptr } %t86, 1
  %t97 = extractvalue { i64, ptr } %t86, 0
  %t98 = add i64 %t94, %t97
  %t99 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t101 = add i64 %t98, %t100
  %t103 = extractvalue { i64, ptr } %t87, 1
  %t104 = extractvalue { i64, ptr } %t87, 0
  %t105 = add i64 %t101, %t104
  %t106 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t110 = extractvalue { i64, ptr } %t88, 1
  %t111 = extractvalue { i64, ptr } %t88, 0
  %t112 = add i64 %t108, %t111
  %t113 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t115 = add i64 %t112, %t114
  %t116 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t115)
  call void @olang_textcopy(ptr %t116, ptr %t90, i64 %t91)
  %t117 = getelementptr i8, ptr %t116, i64 %t91
  call void @olang_textcopy(ptr %t117, ptr %t92, i64 %t93)
  %t118 = getelementptr i8, ptr %t117, i64 %t93
  call void @olang_textcopy(ptr %t118, ptr %t96, i64 %t97)
  %t119 = getelementptr i8, ptr %t118, i64 %t97
  call void @olang_textcopy(ptr %t119, ptr %t99, i64 %t100)
  %t120 = getelementptr i8, ptr %t119, i64 %t100
  call void @olang_textcopy(ptr %t120, ptr %t103, i64 %t104)
  %t121 = getelementptr i8, ptr %t120, i64 %t104
  call void @olang_textcopy(ptr %t121, ptr %t106, i64 %t107)
  %t122 = getelementptr i8, ptr %t121, i64 %t107
  call void @olang_textcopy(ptr %t122, ptr %t110, i64 %t111)
  %t123 = getelementptr i8, ptr %t122, i64 %t111
  call void @olang_textcopy(ptr %t123, ptr %t113, i64 %t114)
  %t124 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t116, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = extractvalue { i64, ptr } %t125, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t84, { i64, ptr } %t132)
  br label %bb12
bb12:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t138 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t141 = extractvalue { i64, ptr } %t136, 1
  %t142 = extractvalue { i64, ptr } %t136, 0
  %t143 = add i64 %t139, %t142
  %t144 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t146 = add i64 %t143, %t145
  %t148 = call i64 @__olang_fmt_i64(ptr null, i64 %a5)
  %t149 = add i64 %t146, %t148
  %t150 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t149)
  call void @olang_textcopy(ptr %t150, ptr %t138, i64 %t139)
  %t151 = getelementptr i8, ptr %t150, i64 %t139
  call void @olang_textcopy(ptr %t151, ptr %t141, i64 %t142)
  %t152 = getelementptr i8, ptr %t151, i64 %t142
  call void @olang_textcopy(ptr %t152, ptr %t144, i64 %t145)
  %t153 = getelementptr i8, ptr %t152, i64 %t145
  %t154 = call i64 @__olang_fmt_i64(ptr %t153, i64 %a5)
  %t155 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t150, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = extractvalue { i64, ptr } %t156, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t166 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t135, { i64, ptr } %t163)
  store { i64, ptr } %t166, ptr %l56
  br label %bb13
bb13:
  %t167 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t171 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t172 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  %t175 = extractvalue { i64, ptr } %t167, 1
  %t176 = extractvalue { i64, ptr } %t167, 0
  %t177 = add i64 %t173, %t176
  %t178 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  %t180 = add i64 %t177, %t179
  %t182 = extractvalue { i64, ptr } %t170, 1
  %t183 = extractvalue { i64, ptr } %t170, 0
  %t184 = add i64 %t180, %t183
  %t185 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  %t187 = add i64 %t184, %t186
  %t189 = extractvalue { i64, ptr } %t171, 1
  %t190 = extractvalue { i64, ptr } %t171, 0
  %t191 = add i64 %t187, %t190
  %t192 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t191)
  call void @olang_textcopy(ptr %t192, ptr %t172, i64 %t173)
  %t193 = getelementptr i8, ptr %t192, i64 %t173
  call void @olang_textcopy(ptr %t193, ptr %t175, i64 %t176)
  %t194 = getelementptr i8, ptr %t193, i64 %t176
  call void @olang_textcopy(ptr %t194, ptr %t178, i64 %t179)
  %t195 = getelementptr i8, ptr %t194, i64 %t179
  call void @olang_textcopy(ptr %t195, ptr %t182, i64 %t183)
  %t196 = getelementptr i8, ptr %t195, i64 %t183
  call void @olang_textcopy(ptr %t196, ptr %t185, i64 %t186)
  %t197 = getelementptr i8, ptr %t196, i64 %t186
  call void @olang_textcopy(ptr %t197, ptr %t189, i64 %t190)
  %t198 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t192, 1
  %t201 = extractvalue { i64, ptr } %t199, 0
  %t202 = extractvalue { i64, ptr } %t199, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t168, { i64, ptr } %t206)
  br label %bb14
bb14:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t209, { i64, ptr } %t210)
  br label %bb15
bb15:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t216 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t217 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t218 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t220 = extractvalue { i64, ptr } %a2, 1
  %t221 = extractvalue { i64, ptr } %a2, 0
  %t222 = add i64 %t218, %t221
  %t223 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t227 = extractvalue { i64, ptr } %t215, 1
  %t228 = extractvalue { i64, ptr } %t215, 0
  %t229 = add i64 %t225, %t228
  %t230 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
  %t232 = add i64 %t229, %t231
  %t234 = extractvalue { i64, ptr } %t216, 1
  %t235 = extractvalue { i64, ptr } %t216, 0
  %t236 = add i64 %t232, %t235
  %t237 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t236)
  call void @olang_textcopy(ptr %t237, ptr %t217, i64 %t218)
  %t238 = getelementptr i8, ptr %t237, i64 %t218
  call void @olang_textcopy(ptr %t238, ptr %t220, i64 %t221)
  %t239 = getelementptr i8, ptr %t238, i64 %t221
  call void @olang_textcopy(ptr %t239, ptr %t223, i64 %t224)
  %t240 = getelementptr i8, ptr %t239, i64 %t224
  call void @olang_textcopy(ptr %t240, ptr %t227, i64 %t228)
  %t241 = getelementptr i8, ptr %t240, i64 %t228
  call void @olang_textcopy(ptr %t241, ptr %t230, i64 %t231)
  %t242 = getelementptr i8, ptr %t241, i64 %t231
  call void @olang_textcopy(ptr %t242, ptr %t234, i64 %t235)
  %t243 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t237, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = extractvalue { i64, ptr } %t244, 1
  %t248 = mul i64 %t246, 1
  %t249 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t248)
  call void @llvm.memcpy.p0.p0.i64(ptr %t249, ptr %t247, i64 %t248, i1 false)
  %t250 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  %t254 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t213, { i64, ptr } %t251)
  store { i64, ptr } %t254, ptr %l71
  br label %bb16
bb16:
  %t255 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t256 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v2, ptr %v3, ptr %s0, ptr %s0, ptr %t256, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %t255, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb17
bb17:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t266 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t265, 1
  %t269 = extractvalue { i64, ptr } %t265, 0
  %t270 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  %t272 = add i64 %t269, %t271
  %t274 = extractvalue { i64, ptr } %t266, 1
  %t275 = extractvalue { i64, ptr } %t266, 0
  %t276 = add i64 %t272, %t275
  %t277 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t278 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t279 = add i64 %t276, %t278
  %t280 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t279)
  call void @olang_textcopy(ptr %t280, ptr %t268, i64 %t269)
  %t281 = getelementptr i8, ptr %t280, i64 %t269
  call void @olang_textcopy(ptr %t281, ptr %t270, i64 %t271)
  %t282 = getelementptr i8, ptr %t281, i64 %t271
  call void @olang_textcopy(ptr %t282, ptr %t274, i64 %t275)
  %t283 = getelementptr i8, ptr %t282, i64 %t275
  call void @olang_textcopy(ptr %t283, ptr %t277, i64 %t278)
  %t284 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t280, 1
  %t287 = extractvalue { i64, ptr } %t285, 0
  %t288 = extractvalue { i64, ptr } %t285, 1
  %t289 = mul i64 %t287, 1
  %t290 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t289)
  call void @llvm.memcpy.p0.p0.i64(ptr %t290, ptr %t288, i64 %t289, i1 false)
  %t291 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t290, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t264, { i64, ptr } %t292)
  br label %bb18
bb18:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t297 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t298 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t300 = extractvalue { i64, ptr } %t296, 1
  %t301 = extractvalue { i64, ptr } %t296, 0
  %t302 = add i64 %t298, %t301
  %t303 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t302)
  call void @olang_textcopy(ptr %t303, ptr %t297, i64 %t298)
  %t304 = getelementptr i8, ptr %t303, i64 %t298
  call void @olang_textcopy(ptr %t304, ptr %t300, i64 %t301)
  %t305 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t303, 1
  %t308 = extractvalue { i64, ptr } %t306, 0
  %t309 = extractvalue { i64, ptr } %t306, 1
  %t310 = mul i64 %t308, 1
  %t311 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t310)
  call void @llvm.memcpy.p0.p0.i64(ptr %t311, ptr %t309, i64 %t310, i1 false)
  %t312 = insertvalue { i64, ptr } undef, i64 %t308, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr %t311, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t295, { i64, ptr } %t313)
  br label %bb19
bb19:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t316, { i64, ptr } %t317)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2efindWalks(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [7 x i64] }
  %l12 = alloca { i64, [2 x i64] }
  %l14 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l15 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l18 = alloca %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f"
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l27 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i64
  %l55 = alloca i32
  %l60 = alloca i32
  %l65 = alloca %"compiler/mir:Call"
  %l67 = alloca i1
  %l74 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i64
  %l81 = alloca i1
  %l82 = alloca i64
  %l87 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l88 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l90 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l91 = alloca i32
  %l93 = alloca i1
  %l96 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l100 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l101 = alloca i32
  %l103 = alloca i1
  %l109 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l110 = alloca %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f"
  %l112 = alloca %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f"
  %l113 = alloca i32
  %l115 = alloca i1
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 4
  %t7 = load i1, ptr %t6, !tbaa !21
  br i1 %t7, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l1, !tbaa !29
  %t14 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t14, ptr %l24
  br label %bb4
bb4:
  %t15 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t15, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/mir:Fn", ptr %t16, i32 0, i32 27
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l27
  br label %bb5
bb5:
  %t21 = load i64, ptr %l27, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb11
bb8:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l34, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l34, !tbaa !24
  store i64 %t48, ptr %l31, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l31, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb13, label %bb14
bb13:
  br label %bb38
bb14:
  br label %bb15
bb15:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l8, !tbaa !24
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/mir:Fn", ptr %t68, i32 0, i32 27
  %t71 = load i64, ptr %l8, !tbaa !24
  %t74 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t70, i64 %t71)
  store i32 %t74, ptr %l55
  br label %bb16
bb16:
  %t75 = load i32, ptr %l55, !tbaa !23
  %t76 = sext i32 %t75 to i64
  store i64 %t76, ptr %l9, !tbaa !24
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"compiler/mir:Fn", ptr %t78, i32 0, i32 28
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t80, i64 %t81)
  store i32 %t84, ptr %l60
  br label %bb17
bb17:
  %t85 = load i32, ptr %l60, !tbaa !23
  %t86 = sext i32 %t85 to i64
  store i64 %t86, ptr %l10, !tbaa !24
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr %"compiler/mir:Fn", ptr %t88, i32 0, i32 14
  %t91 = load i64, ptr %l9, !tbaa !24
  %t94 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t90, i64 %t91)
  store %"compiler/mir:Call" %t94, ptr %l65
  br label %bb18
bb18:
  %t95 = getelementptr %"compiler/mir:Call", ptr %l65, i32 0, i32 0
  %t96 = load { i64, [7 x i64] }, ptr %t95
  store { i64, [7 x i64] } %t96, ptr %l11
  %t98 = load { i64, [7 x i64] }, ptr %l11
  %t100 = extractvalue { i64, [7 x i64] } %t98, 0
  %t101 = icmp eq i64 %t100, 0
  br i1 %t101, label %bb19, label %bb20
bb19:
  %t103 = getelementptr { i64, [7 x i64] }, ptr %l11, i32 0, i32 1
  %t104 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t103, i32 0, i32 0
  %t105 = load { i64, [2 x i64] }, ptr %t104
  store { i64, [2 x i64] } %t105, ptr %l12
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/emit:fnEm", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t111 = load { i64, [2 x i64] }, ptr %l12
  %t114 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %t110, { i64, [2 x i64] } %t111)
  store i1 %t114, ptr %l74
  br label %bb22
bb22:
  %t115 = load i1, ptr %l74, !tbaa !21
  store i1 %t115, ptr %l67, !tbaa !21
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_81868432e93876af_31517217ac874813)
  unreachable
bb28:
  %t116 = load i1, ptr %l67, !tbaa !21
  %t119 = xor i1 %t116, true
  br i1 %t119, label %bb29, label %bb30
bb29:
  br label %bb37
bb30:
  br label %bb31
bb31:
  store ptr %l2, ptr %l77, !tbaa !29
  %t121 = load i64, ptr %l10, !tbaa !24
  store i64 %t121, ptr %l78, !tbaa !24
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %s0, ptr %l2, i64 %t122)
  store i1 %t125, ptr %l81
  br label %bb32
bb32:
  %t126 = load i1, ptr %l81, !tbaa !21
  br i1 %t126, label %bb33, label %bb34
bb33:
  store i64 -1, ptr %l82, !tbaa !24
  br label %bb35
bb34:
  %t127 = load i64, ptr %l9, !tbaa !24
  store i64 %t127, ptr %l82, !tbaa !24
  br label %bb35
bb35:
  %t129 = load ptr, ptr %l77, !tbaa !29
  %t130 = load i64, ptr %l78, !tbaa !24
  %t131 = load i64, ptr %l82, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %s0, ptr %t129, i64 %t130, i64 %t131)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t132 = load i64, ptr %l7, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l7, !tbaa !24
  br label %bb12
bb38:
  %t137 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %s0, ptr %s0, ptr %l2)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t137, ptr %l87
  br label %bb39
bb39:
  %t138 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l87
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t138, ptr %l14
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s9
  %t140 = call { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %s0, ptr %l14)
  %t141 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t140, 1
  %t142 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t140, 0
  store i32 %t142, ptr %l91
  %t143 = icmp ne i32 %t142, 0
  br i1 %t143, label %bb42, label %ok.144, !prof !99
ok.144:
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t141, ptr %l90
  br label %bb41
bb41:
  %t145 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l90
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t145, ptr %l88
  br label %bb44
bb42:
  %t146 = load i32, ptr %l91, !tbaa !23
  %t147 = ashr i32 %t146, 16
  %t149 = icmp eq i32 %t147, 1
  store i1 %t149, ptr %l93, !tbaa !21
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s9)
  br label %bb63
bb44:
  %t150 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l88
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t150, ptr %l15
  %t151 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l15, i32 0, i32 1
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = icmp slt i64 %t152, 0
  br i1 %t154, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s9)
  br label %bb62
bb46:
  br label %bb47
bb47:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l15, i32 0, i32 0
  %t158 = load i64, ptr %t157, !tbaa !24
  %t159 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l15, i32 0, i32 1
  %t160 = load i64, ptr %t159, !tbaa !24
  %t164 = call { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkFlow(ptr %v0, ptr %s9, ptr %t156, i64 %t158, i64 %t160)
  %t165 = extractvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t164, 1
  %t166 = extractvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t164, 0
  store i32 %t166, ptr %l101
  %t167 = icmp ne i32 %t166, 0
  br i1 %t167, label %bb49, label %ok.168, !prof !99
ok.168:
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t165, ptr %l100
  br label %bb48
bb48:
  %t169 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t169, ptr %l96
  br label %bb51
bb49:
  %t170 = load i32, ptr %l101, !tbaa !23
  %t171 = ashr i32 %t170, 16
  %t173 = icmp eq i32 %t171, 1
  store i1 %t173, ptr %l103, !tbaa !21
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s9)
  br label %bb62
bb51:
  %t174 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l96
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t174, ptr %l16
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/emit:fnEm", ptr %t175, i32 0, i32 31
  %t178 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l15, i32 0, i32 0
  %t179 = load i64, ptr %t178, !tbaa !24
  %t180 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l15, i32 0, i32 1
  %t181 = load i64, ptr %t180, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t177, i64 %t179, i64 %t181)
  br label %bb52
bb52:
  %t186 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eIter_3cI64_2c_20Bool_3e(ptr %s9, ptr %s9, ptr %l16)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t186, ptr %l109
  br label %bb53
bb53:
  %t187 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l109
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t187, ptr %l17
  br label %bb54
bb54:
  %t189 = call { i32, %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %s9, ptr %l17)
  %t190 = extractvalue { i32, %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" } %t189, 1
  %t191 = extractvalue { i32, %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" } %t189, 0
  store i32 %t191, ptr %l113
  %t192 = icmp ne i32 %t191, 0
  br i1 %t192, label %bb56, label %ok.193, !prof !99
ok.193:
  store %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" %t190, ptr %l112
  br label %bb55
bb55:
  %t194 = load %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %l112
  store %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" %t194, ptr %l110
  br label %bb58
bb56:
  %t195 = load i32, ptr %l113, !tbaa !23
  %t196 = ashr i32 %t195, 16
  %t198 = icmp eq i32 %t196, 1
  store i1 %t198, ptr %l115, !tbaa !21
  br label %bb57
bb57:
  br label %bb61
bb58:
  %t199 = load %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %l110
  store %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" %t199, ptr %l18
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/emit:fnEm", ptr %t200, i32 0, i32 32
  %t203 = getelementptr %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %l18, i32 0, i32 0
  %t204 = load i64, ptr %t203, !tbaa !24
  %t205 = getelementptr %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %l18, i32 0, i32 1
  %t206 = load i1, ptr %t205, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t202, i64 %t204, i1 %t206)
  br label %bb59
bb59:
  br label %bb60
bb60:
  br label %bb54
bb61:
  call void @__olang_scope_close(ptr %s9)
  br label %bb62
bb62:
  br label %bb40
bb63:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2egenAlloc(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %lp7 = alloca ptr
  %l11 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l30 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca i64
  %l47 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
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
  %t5 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sle i64 %t7, 8
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i64 8, ptr %l14, !tbaa !24
  br label %bb4
bb3:
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l14, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l14, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l2, !tbaa !23
  %t18 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t14, i32 %t15)
  store i64 %t18, ptr %l18
  br label %bb5
bb5:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l18, !tbaa !24
  %t22 = add i64 %t20, %t19
  store i64 %t22, ptr %l5, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load { i64, [1 x i64] }, ptr %l1
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = call i64 @__olang_fmt_i64(ptr null, i64 %t26)
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t26)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = extractvalue { i64, ptr } %t32, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t40 = load i64, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t45 = call i64 @__olang_fmt_i64(ptr null, i64 %t41)
  %t46 = add i64 %t43, %t45
  %t47 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t50 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t49)
  call void @olang_textcopy(ptr %t50, ptr %t42, i64 %t43)
  %t51 = getelementptr i8, ptr %t50, i64 %t43
  %t52 = call i64 @__olang_fmt_i64(ptr %t51, i64 %t41)
  %t53 = getelementptr i8, ptr %t51, i64 %t45
  call void @olang_textcopy(ptr %t53, ptr %t47, i64 %t48)
  %t54 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t50, 1
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t58 = extractvalue { i64, ptr } %t55, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t68 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t24, { i64, [1 x i64] } %t25, { i64, ptr } %t39, i64 %t40, { i64, ptr } %t62)
  store { i64, ptr } %t68, ptr %l30
  br label %bb6
bb6:
  %t69 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l4, !tbaa !24
  %t73 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t76 = extractvalue { i64, ptr } %t69, 1
  %t77 = extractvalue { i64, ptr } %t69, 0
  %t78 = add i64 %t74, %t77
  %t79 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t81 = add i64 %t78, %t80
  %t83 = call i64 @__olang_fmt_i64(ptr null, i64 %t72)
  %t84 = add i64 %t81, %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t73, i64 %t74)
  %t86 = getelementptr i8, ptr %t85, i64 %t74
  call void @olang_textcopy(ptr %t86, ptr %t76, i64 %t77)
  %t87 = getelementptr i8, ptr %t86, i64 %t77
  call void @olang_textcopy(ptr %t87, ptr %t79, i64 %t80)
  %t88 = getelementptr i8, ptr %t87, i64 %t80
  %t89 = call i64 @__olang_fmt_i64(ptr %t88, i64 %t72)
  %t90 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t85, 1
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t94 = extractvalue { i64, ptr } %t91, 1
  %t95 = mul i64 %t93, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t95)
  call void @llvm.memcpy.p0.p0.i64(ptr %t96, ptr %t94, i64 %t95, i1 false)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  %t101 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t70, { i64, ptr } %t98)
  store { i64, ptr } %t101, ptr %l36
  br label %bb7
bb7:
  %t102 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t102, ptr %lp7
  %t103 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t104 = load ptr, ptr %lp7
  store { i64, ptr } %t103, ptr %t104, !tbaa !27
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load { i64, [1 x i64] }, ptr %l1
  %t109 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t105, { i64, [1 x i64] } %t106)
  store i1 %t109, ptr %l39
  br label %bb8
bb8:
  %t110 = load i1, ptr %l39, !tbaa !21
  br i1 %t110, label %bb9, label %bb10
bb9:
  store i64 196609, ptr %l40, !tbaa !24
  br label %bb11
bb10:
  store i64 1, ptr %l40, !tbaa !24
  br label %bb11
bb11:
  %t111 = load i64, ptr %l40, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l41, !tbaa !29
  store i64 %t111, ptr %l42, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %lp7
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t117 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t118 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t120 = extractvalue { i64, ptr } %t116, 1
  %t121 = extractvalue { i64, ptr } %t116, 0
  %t122 = add i64 %t118, %t121
  %t123 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t125 = add i64 %t122, %t124
  %t126 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t125)
  call void @olang_textcopy(ptr %t126, ptr %t117, i64 %t118)
  %t127 = getelementptr i8, ptr %t126, i64 %t118
  call void @olang_textcopy(ptr %t127, ptr %t120, i64 %t121)
  %t128 = getelementptr i8, ptr %t127, i64 %t121
  call void @olang_textcopy(ptr %t128, ptr %t123, i64 %t124)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t126, 1
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t133 = extractvalue { i64, ptr } %t130, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t140 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t114, { i64, ptr } %t137)
  store { i64, ptr } %t140, ptr %l47
  br label %bb12
bb12:
  %t141 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t143 = load i64, ptr %l42, !tbaa !24
  %t144 = call i64 @__olang_fmt_i64(ptr null, i64 %t143)
  %t145 = add i64 %t142, %t144
  %t146 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t149 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t152 = add i64 %t148, %t151
  %t153 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t155 = add i64 %t152, %t154
  %t156 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t155)
  call void @olang_textcopy(ptr %t156, ptr %t141, i64 %t142)
  %t157 = getelementptr i8, ptr %t156, i64 %t142
  %t158 = call i64 @__olang_fmt_i64(ptr %t157, i64 %t143)
  %t159 = getelementptr i8, ptr %t157, i64 %t144
  call void @olang_textcopy(ptr %t159, ptr %t146, i64 %t147)
  %t160 = getelementptr i8, ptr %t159, i64 %t147
  call void @olang_textcopy(ptr %t160, ptr %t150, i64 %t151)
  %t161 = getelementptr i8, ptr %t160, i64 %t151
  call void @olang_textcopy(ptr %t161, ptr %t153, i64 %t154)
  %t162 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t156, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = extractvalue { i64, ptr } %t163, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  %t171 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t171, { i64, ptr } %t170)
  br label %bb13
bb13:
  %t173 = load ptr, ptr %lp7
  %t174 = load { i64, ptr }, ptr %t173, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t174, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholders(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca %"compiler/mir:Lvalue"
  %l5 = alloca { { i64, ptr }, i32 }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l11 = alloca i32
  %l17 = alloca { { i64, ptr }, i32 }
  %l31 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [4 x i64] }, ptr %l1
  %t5 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t1, { i64, [4 x i64] } %t2)
  store i32 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i32, ptr %l11, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load { i64, [4 x i64] }, ptr %l1
  %t9 = extractvalue { i64, [4 x i64] } %t7, 0
  %t10 = icmp eq i64 %t9, 1
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t13 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/mir:Lvalue", ptr %t13
  store %"compiler/mir:Lvalue" %t14, ptr %l4
  br label %bb4
bb3:
  br label %bb7
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load %"compiler/mir:Lvalue", ptr %l4
  %t20 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s1, ptr %t16, %"compiler/mir:Lvalue" %t17)
  store { { i64, ptr }, i32 } %t20, ptr %l17
  br label %bb5
bb5:
  %t21 = load { { i64, ptr }, i32 }, ptr %l17
  store { { i64, ptr }, i32 } %t21, ptr %l5
  %t22 = getelementptr { { i64, ptr }, i32 }, ptr %l5, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l3, !tbaa !23
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersAt(ptr %v0, ptr %s1, ptr %v1, ptr %t25, { i64, ptr } %t23, i32 %t27, { i64, ptr } %t28, i1 true)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb23
bb7:
  %t33 = load { i64, [4 x i64] }, ptr %l1
  %t35 = extractvalue { i64, [4 x i64] } %t33, 0
  %t36 = icmp eq i64 %t35, 2
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t39 = getelementptr { i32, i64 }, ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l7, !tbaa !24
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t44 = icmp ne i64 %t42, 0
  br i1 %t44, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t46 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s3, ptr %t46, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d189, i32 0, i32 1) })
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb14
bb14:
  br label %bb23
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb22
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %s4, ptr %t48, i32 %t49)
  store { i64, ptr } %t52, ptr %l31
  br label %bb19
bb19:
  %t53 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t53, ptr %l8, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t56 = load i32, ptr %l3, !tbaa !23
  %t57 = load { i64, [4 x i64] }, ptr %l1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s4, ptr %s4, ptr %t54, { i64, ptr } %t55, i32 %t56, { i64, [4 x i64] } %t57, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d190, i32 0, i32 1) })
  br label %bb20
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t64 = load i32, ptr %l3, !tbaa !23
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersAt(ptr %v0, ptr %s4, ptr %v1, ptr %t62, { i64, ptr } %t63, i32 %t64, { i64, ptr } %t65, i1 true)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_7fed6075202c6f47_53bfc91b56218413)
  unreachable
bb23:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l7 = alloca %"compiler/mir:Local"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 7
  %t9 = sext i32 %a1 to i64
  %t12 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t6, i64 %t9)
  store %"compiler/mir:Local" %t12, ptr %l7
  br label %bb1
bb1:
  %t13 = getelementptr %"compiler/mir:Local", ptr %l7, i32 0, i32 2
  %t14 = load i32, ptr %t13, !tbaa !23
  store i32 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %l12 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
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
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d191, i32 0, i32 1) })
  store i1 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i1, ptr %l8, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t11, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t14 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d192, i32 0, i32 1) })
  store i1 %t16, ptr %l12
  br label %bb6
bb6:
  %t17 = load i1, ptr %l12, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t20 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  %t23 = extractvalue { i64, ptr } %t19, 1
  %t24 = extractvalue { i64, ptr } %t19, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t20, i64 %t21)
  %t30 = getelementptr i8, ptr %t29, i64 %t21
  call void @olang_textcopy(ptr %t30, ptr %t23, i64 %t24)
  %t31 = getelementptr i8, ptr %t30, i64 %t24
  call void @olang_textcopy(ptr %t31, ptr %t26, i64 %t27)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t29, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = extractvalue { i64, ptr } %t33, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t43 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t18, { i64, ptr } %t40)
  store { i64, ptr } %t43, ptr %l17
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l18, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/emit:fnEm", ptr %t46, i32 0, i32 0
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/emit:Emitter", ptr %t49, i32 0, i32 3
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i32, ptr %l2, !tbaa !23
  %t55 = inttoptr i64 0 to ptr
  %t58 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t55, ptr %t52, i32 %t53)
  store { i64, ptr } %t58, ptr %l24
  br label %bb11
bb11:
  %t59 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t61 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = add i64 %t60, %t63
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  call void @olang_textcopy(ptr %t65, ptr %t59, i64 %t60)
  %t66 = getelementptr i8, ptr %t65, i64 %t60
  call void @olang_textcopy(ptr %t66, ptr %t62, i64 %t63)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t65, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = extractvalue { i64, ptr } %t68, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t76 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s0, ptr %t76, { i64, ptr } %t75)
  br label %bb12
bb12:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d196, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t78, ptr %l28, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 0
  store i64 %t80, ptr %l29, !tbaa !24
  %t81 = load i64, ptr %l29, !tbaa !24
  %t82 = mul i64 %t81, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t82)
  %t84 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  store { i64, ptr } %t85, ptr %l30, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = load i64, ptr %l29, !tbaa !24
  %t91 = mul i64 %t90, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t87, ptr %t89, i64 %t91, i1 false)
  %t92 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t92, ptr %l28, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t93 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t93, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5) #0 {
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
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
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
  %t35 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  %t38 = call i64 @__olang_fmt_i64(ptr null, i64 %t32)
  %t39 = add i64 %t36, %t38
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t44 = extractvalue { i64, ptr } %t33, 1
  %t45 = extractvalue { i64, ptr } %t33, 0
  %t46 = add i64 %t42, %t45
  %t47 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
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
  %t72 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t31, { i64, ptr } %t69)
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
  %t91 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t94 = extractvalue { i64, ptr } %t88, 1
  %t95 = extractvalue { i64, ptr } %t88, 0
  %t96 = add i64 %t92, %t95
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t99 = add i64 %t96, %t98
  %t101 = extractvalue { i64, ptr } %t89, 1
  %t102 = extractvalue { i64, ptr } %t89, 0
  %t103 = add i64 %t99, %t102
  %t104 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
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
  %t128 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t87, { i64, ptr } %t125)
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
  %t159 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  %t162 = extractvalue { i64, ptr } %t153, 1
  %t163 = extractvalue { i64, ptr } %t153, 0
  %t164 = add i64 %t160, %t163
  %t165 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
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
  %t187 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t152, { i64, ptr } %t184)
  store { i64, ptr } %t187, ptr %l55
  br label %bb14
bb13:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d206, i32 0, i32 1) }, ptr %l47, !tbaa !27
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
  %t205 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t206 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t208 = extractvalue { i64, ptr } %t202, 1
  %t209 = extractvalue { i64, ptr } %t202, 0
  %t210 = add i64 %t206, %t209
  %t211 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t212 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t213 = add i64 %t210, %t212
  %t215 = extractvalue { i64, ptr } %t203, 1
  %t216 = extractvalue { i64, ptr } %t203, 0
  %t217 = add i64 %t213, %t216
  %t218 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
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
  %t242 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t201, { i64, ptr } %t239)
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
  %t260 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
  %t263 = extractvalue { i64, ptr } %t258, 1
  %t264 = extractvalue { i64, ptr } %t258, 0
  %t265 = add i64 %t261, %t264
  %t266 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t267 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t268 = add i64 %t265, %t267
  %t270 = extractvalue { i64, ptr } %t253, 1
  %t271 = extractvalue { i64, ptr } %t253, 0
  %t272 = add i64 %t268, %t271
  %t273 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
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
  %t292 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t257, { i64, ptr } %t289)
  store { i64, ptr } %t292, ptr %l77
  br label %bb20
bb20:
  %t293 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t294 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  %t295 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t295, 1
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t298 = add i64 %t294, %t297
  %t299 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t300 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t301 = add i64 %t298, %t300
  %t302 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t302, 1
  %t304 = extractvalue { i64, ptr } %t302, 0
  %t305 = add i64 %t301, %t304
  %t306 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t307 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
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
  %t330 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t328, { i64, ptr } %t327)
  store { i64, ptr } %t330, ptr %l80
  br label %bb21
bb21:
  %t331 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t335 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t336 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t337 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t339 = extractvalue { i64, ptr } %t333, 1
  %t340 = extractvalue { i64, ptr } %t333, 0
  %t341 = add i64 %t337, %t340
  %t342 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t343 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t344 = add i64 %t341, %t343
  %t346 = extractvalue { i64, ptr } %t331, 1
  %t347 = extractvalue { i64, ptr } %t331, 0
  %t348 = add i64 %t344, %t347
  %t349 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  %t351 = add i64 %t348, %t350
  %t353 = extractvalue { i64, ptr } %t335, 1
  %t354 = extractvalue { i64, ptr } %t335, 0
  %t355 = add i64 %t351, %t354
  %t356 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t355)
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
  %t368 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t373 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t332, { i64, ptr } %t370)
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

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskEnds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, %"compiler/mir:Task" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca %"compiler/mir:Task"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca i32
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l33 = alloca i64
  %l36 = alloca i64
  %l61 = alloca { i64, [4 x i64] }
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca i64
  %l69 = alloca { i64, ptr }
  %l78 = alloca { i64, [4 x i64] }
  %l84 = alloca { i64, ptr }
  %l86 = alloca i64
  %l98 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l111 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/mir:Task" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etraced(ptr %v0, ptr %t6)
  store i1 %t8, ptr %l21
  br label %bb1
bb1:
  %t9 = load i1, ptr %l21, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d219, i32 0, i32 1) }, ptr %l22, !tbaa !27
  br label %bb4
bb3:
  store { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d220, i32 0, i32 1) }, ptr %l22, !tbaa !27
  br label %bb4
bb4:
  %t10 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t10, ptr %l5, !tbaa !27
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t14 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  %t17 = extractvalue { i64, ptr } %t13, 1
  %t18 = extractvalue { i64, ptr } %t13, 0
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t23 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t14, i64 %t15)
  %t24 = getelementptr i8, ptr %t23, i64 %t15
  call void @olang_textcopy(ptr %t24, ptr %t17, i64 %t18)
  %t25 = getelementptr i8, ptr %t24, i64 %t18
  call void @olang_textcopy(ptr %t25, ptr %t20, i64 %t21)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t23, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = extractvalue { i64, ptr } %t27, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  %t35 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %t35, ptr %s0, ptr %t11, { i64, ptr } %t12, { i64, ptr } %t34)
  br label %bb5
bb5:
  store i64 0, ptr %l6, !tbaa !24
  %t39 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 5
  %t40 = getelementptr %"compiler/mir:Range", ptr %t39, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  %t43 = sext i32 %t41 to i64
  store i64 %t43, ptr %l7, !tbaa !24
  store i64 2, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp sgt i64 %t45, %t46
  br i1 %t49, label %bb6, label %bb7
bb6:
  %t51 = load i64, ptr %l8, !tbaa !24
  %t53 = icmp sgt i64 %t51, 0
  br i1 %t53, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb11
bb8:
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = sub i64 %t55, %t56
  %t60 = load i64, ptr %l8, !tbaa !24
  %t63 = add i64 %t59, %t60
  %t65 = sub i64 %t63, 1
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = sdiv i64 %t65, %t66
  store i64 %t69, ptr %l36, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb10
bb10:
  %t71 = load i64, ptr %l36, !tbaa !24
  store i64 %t71, ptr %l33, !tbaa !24
  br label %bb11
bb11:
  %t72 = load i64, ptr %l33, !tbaa !24
  store i64 %t72, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t73 = load i64, ptr %l10, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t77 = icmp slt i64 %t73, %t74
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb14:
  br label %bb15
bb15:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t83 = load i64, ptr %l8, !tbaa !24
  %t86 = mul i64 %t82, %t83
  %t89 = add i64 %t81, %t86
  store i64 %t89, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/emit:fnEm", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/mir:Fn", ptr %t94, i32 0, i32 11
  %t97 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 5
  %t98 = getelementptr %"compiler/mir:Range", ptr %t97, i32 0, i32 0
  %t99 = load i32, ptr %t98, !tbaa !23
  %t101 = sext i32 %t99 to i64
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t108 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t96, i64 %t105)
  store { i64, [4 x i64] } %t108, ptr %l61
  br label %bb16
bb16:
  %t109 = load { i64, [4 x i64] }, ptr %l61
  store { i64, [4 x i64] } %t109, ptr %l13
  %t110 = load { i64, [4 x i64] }, ptr %l13
  %t112 = extractvalue { i64, [4 x i64] } %t110, 0
  %t113 = icmp eq i64 %t112, 2
  br i1 %t113, label %bb17, label %bb18
bb17:
  %t115 = getelementptr { i64, [4 x i64] }, ptr %l13, i32 0, i32 1
  %t116 = getelementptr { i32, i64 }, ptr %t115, i32 0, i32 1
  %t117 = load i64, ptr %t116
  store i64 %t117, ptr %l14, !tbaa !24
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t119 = load i64, ptr %l14, !tbaa !24
  store i64 %t119, ptr %l12, !tbaa !24
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
  call void @__olang_check_failed(ptr @olang_loc_a013fd5d1a1a0ecb_8946a3e4bb7adef)
  unreachable
bb25:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d223, i32 0, i32 1) }, ptr %l66, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t121, ptr %l67, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l68, !tbaa !24
  %t124 = load i64, ptr %l68, !tbaa !24
  %t125 = mul i64 %t124, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l69, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = load i64, ptr %l68, !tbaa !24
  %t134 = mul i64 %t133, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t130, ptr %t132, i64 %t134, i1 false)
  %t135 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t135, ptr %l15, !tbaa !27
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/emit:fnEm", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/mir:Fn", ptr %t139, i32 0, i32 11
  %t142 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 5
  %t143 = getelementptr %"compiler/mir:Range", ptr %t142, i32 0, i32 0
  %t144 = load i32, ptr %t143, !tbaa !23
  %t146 = sext i32 %t144 to i64
  %t147 = load i64, ptr %l11, !tbaa !24
  %t150 = add i64 %t146, %t147
  %t152 = add i64 %t150, 1
  %t155 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t141, i64 %t152)
  store { i64, [4 x i64] } %t155, ptr %l78
  br label %bb26
bb26:
  %t156 = load { i64, [4 x i64] }, ptr %l78
  store { i64, [4 x i64] } %t156, ptr %l16
  %t157 = load { i64, [4 x i64] }, ptr %l16
  %t159 = extractvalue { i64, [4 x i64] } %t157, 0
  %t160 = icmp eq i64 %t159, 3
  br i1 %t160, label %bb27, label %bb28
bb27:
  %t162 = getelementptr { i64, [4 x i64] }, ptr %l16, i32 0, i32 1
  %t163 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t162, i32 0, i32 1
  %t164 = load i32, ptr %t163
  store i32 %t164, ptr %l17, !tbaa !23
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i32, ptr %l17, !tbaa !23
  %t170 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstText(ptr %v0, ptr %s3, ptr %t166, i32 %t167)
  store { i64, ptr } %t170, ptr %l84
  br label %bb30
bb30:
  %t171 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 0
  %t173 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t173, 0
  store i64 %t174, ptr %l86, !tbaa !24
  %t176 = load i64, ptr %l86, !tbaa !24
  %t177 = icmp eq i64 %t172, %t176
  br i1 %t177, label %bb31, label %bb32
bb31:
  %t179 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = load i64, ptr %l86, !tbaa !24
  %t184 = mul i64 %t183, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t180, ptr %t182, i64 %t184, i1 false)
  br label %bb33
bb32:
  %t185 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t185, ptr %l15, !tbaa !27
  br label %bb33
bb33:
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
  call void @__olang_check_failed(ptr @olang_loc_625291c18633ca8a_b2d4e63a7cb7312e)
  unreachable
bb39:
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t187 = load i64, ptr %l11, !tbaa !24
  %t189 = load i64, ptr %l12, !tbaa !24
  %t190 = load i64, ptr %l11, !tbaa !24
  %t191 = load i64, ptr %l11, !tbaa !24
  %t192 = load i64, ptr %l11, !tbaa !24
  %t193 = load i64, ptr %l11, !tbaa !24
  %t194 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t197 = call i64 @__olang_fmt_i64(ptr null, i64 %t187)
  %t198 = add i64 %t195, %t197
  %t199 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t203 = extractvalue { i64, ptr } %a2, 1
  %t204 = extractvalue { i64, ptr } %a2, 0
  %t205 = add i64 %t201, %t204
  %t206 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  %t208 = add i64 %t205, %t207
  %t210 = call i64 @__olang_fmt_i64(ptr null, i64 %t189)
  %t211 = add i64 %t208, %t210
  %t212 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d227, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d227, i32 0, i32 1) }, 0
  %t214 = add i64 %t211, %t213
  %t216 = call i64 @__olang_fmt_i64(ptr null, i64 %t190)
  %t217 = add i64 %t214, %t216
  %t218 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t222 = call i64 @__olang_fmt_i64(ptr null, i64 %t191)
  %t223 = add i64 %t220, %t222
  %t224 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  %t226 = add i64 %t223, %t225
  %t228 = call i64 @__olang_fmt_i64(ptr null, i64 %t192)
  %t229 = add i64 %t226, %t228
  %t230 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t232 = add i64 %t229, %t231
  %t234 = call i64 @__olang_fmt_i64(ptr null, i64 %t193)
  %t235 = add i64 %t232, %t234
  %t236 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t237 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  %t238 = add i64 %t235, %t237
  %t239 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t238)
  call void @olang_textcopy(ptr %t239, ptr %t194, i64 %t195)
  %t240 = getelementptr i8, ptr %t239, i64 %t195
  %t241 = call i64 @__olang_fmt_i64(ptr %t240, i64 %t187)
  %t242 = getelementptr i8, ptr %t240, i64 %t197
  call void @olang_textcopy(ptr %t242, ptr %t199, i64 %t200)
  %t243 = getelementptr i8, ptr %t242, i64 %t200
  call void @olang_textcopy(ptr %t243, ptr %t203, i64 %t204)
  %t244 = getelementptr i8, ptr %t243, i64 %t204
  call void @olang_textcopy(ptr %t244, ptr %t206, i64 %t207)
  %t245 = getelementptr i8, ptr %t244, i64 %t207
  %t246 = call i64 @__olang_fmt_i64(ptr %t245, i64 %t189)
  %t247 = getelementptr i8, ptr %t245, i64 %t210
  call void @olang_textcopy(ptr %t247, ptr %t212, i64 %t213)
  %t248 = getelementptr i8, ptr %t247, i64 %t213
  %t249 = call i64 @__olang_fmt_i64(ptr %t248, i64 %t190)
  %t250 = getelementptr i8, ptr %t248, i64 %t216
  call void @olang_textcopy(ptr %t250, ptr %t218, i64 %t219)
  %t251 = getelementptr i8, ptr %t250, i64 %t219
  %t252 = call i64 @__olang_fmt_i64(ptr %t251, i64 %t191)
  %t253 = getelementptr i8, ptr %t251, i64 %t222
  call void @olang_textcopy(ptr %t253, ptr %t224, i64 %t225)
  %t254 = getelementptr i8, ptr %t253, i64 %t225
  %t255 = call i64 @__olang_fmt_i64(ptr %t254, i64 %t192)
  %t256 = getelementptr i8, ptr %t254, i64 %t228
  call void @olang_textcopy(ptr %t256, ptr %t230, i64 %t231)
  %t257 = getelementptr i8, ptr %t256, i64 %t231
  %t258 = call i64 @__olang_fmt_i64(ptr %t257, i64 %t193)
  %t259 = getelementptr i8, ptr %t257, i64 %t234
  call void @olang_textcopy(ptr %t259, ptr %t236, i64 %t237)
  %t260 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t239, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = extractvalue { i64, ptr } %t261, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t186, { i64, ptr } %t268)
  br label %bb40
bb40:
  %t271 = load ptr, ptr %l1, !tbaa !29
  store ptr %t271, ptr %l98, !tbaa !29
  %t272 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t272, ptr %l99, !tbaa !27
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 6
  %t275 = load %"compiler/source:Span", ptr %t274
  %t276 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t277 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t278 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  %t280 = extractvalue { i64, ptr } %t276, 1
  %t281 = extractvalue { i64, ptr } %t276, 0
  %t282 = add i64 %t278, %t281
  %t283 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  %t285 = add i64 %t282, %t284
  %t286 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t285)
  call void @olang_textcopy(ptr %t286, ptr %t277, i64 %t278)
  %t287 = getelementptr i8, ptr %t286, i64 %t278
  call void @olang_textcopy(ptr %t287, ptr %t280, i64 %t281)
  %t288 = getelementptr i8, ptr %t287, i64 %t281
  call void @olang_textcopy(ptr %t288, ptr %t283, i64 %t284)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t286, 1
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t293 = extractvalue { i64, ptr } %t290, 1
  %t294 = mul i64 %t292, 1
  %t295 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t295, ptr %t293, i64 %t294, i1 false)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  %t301 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocated(ptr %v0, ptr %s3, ptr %s3, ptr %t273, %"compiler/source:Span" %t275, { i64, ptr } %t297)
  store { i64, ptr } %t301, ptr %l105
  br label %bb41
bb41:
  %t302 = load i64, ptr %l11, !tbaa !24
  %t303 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t304 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  %t305 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 1
  %t307 = extractvalue { i64, ptr } %t305, 0
  %t308 = add i64 %t304, %t307
  %t309 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t311 = add i64 %t308, %t310
  %t312 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 1
  %t314 = extractvalue { i64, ptr } %t312, 0
  %t315 = add i64 %t311, %t314
  %t316 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t318 = add i64 %t315, %t317
  %t320 = call i64 @__olang_fmt_i64(ptr null, i64 %t302)
  %t321 = add i64 %t318, %t320
  %t322 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t323 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  %t324 = add i64 %t321, %t323
  %t325 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t324)
  call void @olang_textcopy(ptr %t325, ptr %t303, i64 %t304)
  %t326 = getelementptr i8, ptr %t325, i64 %t304
  call void @olang_textcopy(ptr %t326, ptr %t306, i64 %t307)
  %t327 = getelementptr i8, ptr %t326, i64 %t307
  call void @olang_textcopy(ptr %t327, ptr %t309, i64 %t310)
  %t328 = getelementptr i8, ptr %t327, i64 %t310
  call void @olang_textcopy(ptr %t328, ptr %t313, i64 %t314)
  %t329 = getelementptr i8, ptr %t328, i64 %t314
  call void @olang_textcopy(ptr %t329, ptr %t316, i64 %t317)
  %t330 = getelementptr i8, ptr %t329, i64 %t317
  %t331 = call i64 @__olang_fmt_i64(ptr %t330, i64 %t302)
  %t332 = getelementptr i8, ptr %t330, i64 %t320
  call void @olang_textcopy(ptr %t332, ptr %t322, i64 %t323)
  %t333 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t325, 1
  %t336 = extractvalue { i64, ptr } %t334, 0
  %t337 = extractvalue { i64, ptr } %t334, 1
  %t338 = mul i64 %t336, 1
  %t339 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t338)
  call void @llvm.memcpy.p0.p0.i64(ptr %t339, ptr %t337, i64 %t338, i1 false)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t339, 1
  %t342 = load ptr, ptr %l98, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t342, { i64, ptr } %t341)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  %t344 = load i64, ptr %l10, !tbaa !24
  %t346 = add i64 %t344, 1
  store i64 %t346, ptr %l10, !tbaa !24
  br label %bb12
bb44:
  %t348 = load ptr, ptr %l1, !tbaa !29
  store ptr %t348, ptr %l111, !tbaa !29
  %t349 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t349, ptr %l112, !tbaa !27
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/mir:Task", ptr %l3, i32 0, i32 6
  %t352 = load %"compiler/source:Span", ptr %t351
  %t355 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocated(ptr %v0, ptr %s0, ptr %s0, ptr %t350, %"compiler/source:Span" %t352, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d238, i32 0, i32 1) })
  store { i64, ptr } %t355, ptr %l115
  br label %bb45
bb45:
  %t356 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d239, i32 0, i32 1) }, 1
  %t357 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d239, i32 0, i32 1) }, 0
  %t358 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t358, 1
  %t360 = extractvalue { i64, ptr } %t358, 0
  %t361 = add i64 %t357, %t360
  %t362 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d240, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d240, i32 0, i32 1) }, 0
  %t364 = add i64 %t361, %t363
  %t365 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t365, 1
  %t367 = extractvalue { i64, ptr } %t365, 0
  %t368 = add i64 %t364, %t367
  %t369 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t370 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t371 = add i64 %t368, %t370
  %t372 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t371)
  call void @olang_textcopy(ptr %t372, ptr %t356, i64 %t357)
  %t373 = getelementptr i8, ptr %t372, i64 %t357
  call void @olang_textcopy(ptr %t373, ptr %t359, i64 %t360)
  %t374 = getelementptr i8, ptr %t373, i64 %t360
  call void @olang_textcopy(ptr %t374, ptr %t362, i64 %t363)
  %t375 = getelementptr i8, ptr %t374, i64 %t363
  call void @olang_textcopy(ptr %t375, ptr %t366, i64 %t367)
  %t376 = getelementptr i8, ptr %t375, i64 %t367
  call void @olang_textcopy(ptr %t376, ptr %t369, i64 %t370)
  %t377 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t372, 1
  %t380 = extractvalue { i64, ptr } %t378, 0
  %t381 = extractvalue { i64, ptr } %t378, 1
  %t382 = mul i64 %t380, 1
  %t383 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t382)
  call void @llvm.memcpy.p0.p0.i64(ptr %t383, ptr %t381, i64 %t382, i1 false)
  %t384 = insertvalue { i64, ptr } undef, i64 %t380, 0
  %t385 = insertvalue { i64, ptr } %t384, ptr %t383, 1
  %t386 = load ptr, ptr %l111, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t386, { i64, ptr } %t385)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etextPair(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca i32
  %l4 = alloca { { i64, ptr }, { i64, ptr } }
  %l9 = alloca i32
  %l13 = alloca { i64, ptr }
  %l17 = alloca { { i64, ptr }, { i64, ptr } }
  %l23 = alloca { i64, ptr }
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
  %t2 = load { i64, [4 x i64] }, ptr %l1
  %t5 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t1, { i64, [4 x i64] } %t2)
  store i32 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i32, ptr %l9, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load { i64, [4 x i64] }, ptr %l1
  %t9 = load i32, ptr %l2, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t7, { i64, [4 x i64] } %t8, i32 %t9)
  store { i64, ptr } %t13, ptr %l13
  br label %bb2
bb2:
  %t14 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t21 = call { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %s0, ptr %s0, ptr %t15, { i64, ptr } %t14, i32 %t17)
  store { { i64, ptr }, { i64, ptr } } %t21, ptr %l17
  br label %bb3
bb3:
  %t22 = load { { i64, ptr }, { i64, ptr } }, ptr %l17
  store { { i64, ptr }, { i64, ptr } } %t22, ptr %l4
  %t23 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l4, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l4, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t35 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t29, { i64, ptr } %t27, { i64, ptr } %t24)
  store { i64, ptr } %t35, ptr %l23
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etrampoline(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, i1 %a3, { i64, ptr } %a4, i32 %a5, i64 %a6, %"compiler/mir:Task" %a7, i32 %a8, { i64, ptr } %a9) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i1
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca %"compiler/mir:Task"
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %lp13 = alloca ptr
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"std/prelude/text:StringBuilder"
  %l25 = alloca i1
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i32
  %l29 = alloca i1
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
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
  %l50 = alloca { i64, ptr }
  %l51 = alloca i8
  %l52 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i64
  %l82 = alloca ptr
  %l85 = alloca %"std/prelude/text:StringBuilder"
  %l91 = alloca i64
  %l95 = alloca i64
  %l98 = alloca i64
  %l125 = alloca i64
  %l126 = alloca ptr
  %l129 = alloca i32
  %l130 = alloca { i64, ptr }
  %l140 = alloca %"std/prelude/text:StringBuilder"
  %l146 = alloca ptr
  %l149 = alloca i32
  %l150 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l156 = alloca i32
  %l160 = alloca i1
  %l164 = alloca i1
  %l167 = alloca i1
  %l169 = alloca ptr
  %l172 = alloca { i64, ptr }
  %l183 = alloca i64
  %l186 = alloca i64
  %l238 = alloca i64
  %l239 = alloca ptr
  %l242 = alloca { i64, [2 x i64] }
  %l244 = alloca i64
  %l248 = alloca i64
  %l251 = alloca i64
  %l280 = alloca i64
  %l283 = alloca i64
  %l305 = alloca { i64, ptr }
  %l308 = alloca { i64, ptr }
  %l355 = alloca { i64, ptr }
  %l356 = alloca ptr
  %l359 = alloca i32
  %l360 = alloca { i64, ptr }
  %l364 = alloca i1
  %l365 = alloca ptr
  %l366 = alloca { i64, ptr }
  %l368 = alloca { i64, ptr }
  %l371 = alloca ptr
  %l372 = alloca { i64, ptr }
  %l373 = alloca { i64, ptr }
  %l375 = alloca { i64, ptr }
  %l378 = alloca { i64, ptr }
  %l379 = alloca { i64, ptr }
  %l380 = alloca i64
  %l381 = alloca { i64, ptr }
  %l383 = alloca { i64, ptr }
  %l384 = alloca { i64, ptr }
  %l386 = alloca i64
  %l388 = alloca i64
  %l389 = alloca { i64, ptr }
  %l393 = alloca i1
  %l402 = alloca { i64, ptr }
  %l403 = alloca { i64, ptr }
  %l405 = alloca i64
  %l407 = alloca i64
  %l408 = alloca { i64, ptr }
  %l409 = alloca { i64, ptr }
  %l410 = alloca { i64, ptr }
  %l412 = alloca i64
  %l414 = alloca i64
  %l415 = alloca { i64, ptr }
  %l418 = alloca i1
  %l422 = alloca { i64, ptr }
  %l424 = alloca i1
  %l460 = alloca ptr
  %l461 = alloca ptr
  %l462 = alloca { i64, ptr }
  %l465 = alloca i32
  %l467 = alloca { i64, ptr }
  %l468 = alloca ptr
  %l469 = alloca ptr
  %l470 = alloca { i64, ptr }
  %l473 = alloca i32
  %l474 = alloca { i64, ptr }
  %l476 = alloca i1
  %l489 = alloca i1
  %l491 = alloca i1
  %l504 = alloca i1
  %l507 = alloca ptr
  %l508 = alloca i64
  %l511 = alloca i64
  %l514 = alloca ptr
  %l515 = alloca ptr
  %l518 = alloca i32
  %l519 = alloca i32
  %l520 = alloca { i64, ptr }
  %l525 = alloca i64
  %l528 = alloca i64
  %l548 = alloca { i64, ptr }
  %l551 = alloca i1
  %l559 = alloca ptr
  %l560 = alloca i64
  %l563 = alloca { i64, ptr }
  %l567 = alloca ptr
  %l568 = alloca i64
  %l569 = alloca i64
  %l571 = alloca { i64, ptr }
  %l574 = alloca i64
  %l581 = alloca ptr
  %l582 = alloca i64
  %l585 = alloca { i64, ptr }
  %l589 = alloca ptr
  %l590 = alloca ptr
  %l593 = alloca i32
  %l594 = alloca i32
  %l595 = alloca { i64, ptr }
  %l600 = alloca i64
  %l603 = alloca i64
  %l628 = alloca ptr
  %l629 = alloca i64
  %l632 = alloca { i64, ptr }
  %l637 = alloca ptr
  %l639 = alloca { i64, ptr }
  %l642 = alloca { i64, ptr }
  %l660 = alloca ptr
  %l661 = alloca { i64, ptr }
  %l662 = alloca i64
  %l663 = alloca i64
  %l666 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s49 = alloca %olang.scope
  %s50 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s54 = alloca %olang.scope
  %s55 = alloca %olang.scope
  %s56 = alloca %olang.scope
  %s60 = alloca %olang.scope
  %s66 = alloca %olang.scope
  %s70 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, ptr %l2
  store i1 %a3, ptr %l3
  store i32 %a5, ptr %l5
  store i64 %a6, ptr %l6
  store %"compiler/mir:Task" %a7, ptr %l7
  store { i64, ptr } %a9, ptr %l9
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l10, !tbaa !29
  %t6 = load ptr, ptr %l10, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 3
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l11, !tbaa !29
  %t11 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 3
  %t12 = getelementptr %"compiler/mir:Range", ptr %t11, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  %t15 = sext i32 %t13 to i64
  store i64 %t15, ptr %l12, !tbaa !24
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t19 = getelementptr %"compiler/emit:Emitter", ptr %t17, i32 0, i32 27
  %t20 = load i64, ptr %t19, !tbaa !24
  %t21 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t24 = call i64 @__olang_fmt_i64(ptr null, i64 %t20)
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t21, i64 %t22)
  %t27 = getelementptr i8, ptr %t26, i64 %t22
  %t28 = call i64 @__olang_fmt_i64(ptr %t27, i64 %t20)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t26, 1
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 16, i64 8)
  store ptr %t31, ptr %lp13
  %t33 = load ptr, ptr %lp13
  store { i64, ptr } %t30, ptr %t33, !tbaa !27
  %t34 = load ptr, ptr %l10, !tbaa !29
  store ptr %t34, ptr %l82, !tbaa !29
  %t35 = load ptr, ptr %l82, !tbaa !29
  %t36 = getelementptr %"compiler/emit:Emitter", ptr %t35, i32 0, i32 27
  %t37 = load i64, ptr %t36, !tbaa !24
  %t39 = add i64 %t37, 1
  %t41 = load ptr, ptr %l82, !tbaa !29
  %t42 = getelementptr %"compiler/emit:Emitter", ptr %t41, i32 0, i32 27
  store i64 %t39, ptr %t42, !tbaa !24
  %t43 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t43, ptr %l85
  br label %bb1
bb1:
  %t44 = load %"std/prelude/text:StringBuilder", ptr %l85
  store %"std/prelude/text:StringBuilder" %t44, ptr %l14
  %t45 = load ptr, ptr %lp13
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t47 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t50 = extractvalue { i64, ptr } %t46, 1
  %t51 = extractvalue { i64, ptr } %t46, 0
  %t52 = add i64 %t48, %t51
  %t53 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t47, i64 %t48)
  %t57 = getelementptr i8, ptr %t56, i64 %t48
  call void @olang_textcopy(ptr %t57, ptr %t50, i64 %t51)
  %t58 = getelementptr i8, ptr %t57, i64 %t51
  call void @olang_textcopy(ptr %t58, ptr %t53, i64 %t54)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t56, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = extractvalue { i64, ptr } %t60, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l14, { i64, ptr } %t67)
  br label %bb2
bb2:
  store i64 0, ptr %l15, !tbaa !24
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %l2)
  store i64 %t71, ptr %l91
  br label %bb3
bb3:
  %t72 = load i64, ptr %l91, !tbaa !24
  store i64 %t72, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t73 = load i64, ptr %l16, !tbaa !24
  %t74 = load i64, ptr %l15, !tbaa !24
  %t77 = icmp sgt i64 %t73, %t74
  br i1 %t77, label %bb4, label %bb5
bb4:
  %t79 = load i64, ptr %l17, !tbaa !24
  %t81 = icmp sgt i64 %t79, 0
  br i1 %t81, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb9
bb6:
  %t83 = load i64, ptr %l16, !tbaa !24
  %t84 = load i64, ptr %l15, !tbaa !24
  %t87 = sub i64 %t83, %t84
  %t88 = load i64, ptr %l17, !tbaa !24
  %t91 = add i64 %t87, %t88
  %t93 = sub i64 %t91, 1
  %t94 = load i64, ptr %l17, !tbaa !24
  %t97 = sdiv i64 %t93, %t94
  store i64 %t97, ptr %l98, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb8
bb8:
  %t99 = load i64, ptr %l98, !tbaa !24
  store i64 %t99, ptr %l95, !tbaa !24
  br label %bb9
bb9:
  %t100 = load i64, ptr %l95, !tbaa !24
  store i64 %t100, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s4
  %t101 = load i64, ptr %l19, !tbaa !24
  %t102 = load i64, ptr %l18, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s4)
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t109 = load i64, ptr %l15, !tbaa !24
  %t110 = load i64, ptr %l19, !tbaa !24
  %t111 = load i64, ptr %l17, !tbaa !24
  %t114 = mul i64 %t110, %t111
  %t117 = add i64 %t109, %t114
  store i64 %t117, ptr %l20, !tbaa !24
  %t119 = load i64, ptr %l20, !tbaa !24
  %t121 = load i64, ptr %l20, !tbaa !24
  %t122 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
  %t125 = call i64 @__olang_fmt_i64(ptr null, i64 %t119)
  %t126 = add i64 %t123, %t125
  %t127 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t129 = add i64 %t126, %t128
  %t131 = extractvalue { i64, ptr } %a1, 1
  %t132 = extractvalue { i64, ptr } %a1, 0
  %t133 = add i64 %t129, %t132
  %t134 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d247, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d247, i32 0, i32 1) }, 0
  %t136 = add i64 %t133, %t135
  %t138 = call i64 @__olang_fmt_i64(ptr null, i64 %t121)
  %t139 = add i64 %t136, %t138
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d248, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d248, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t143 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t122, i64 %t123)
  %t144 = getelementptr i8, ptr %t143, i64 %t123
  %t145 = call i64 @__olang_fmt_i64(ptr %t144, i64 %t119)
  %t146 = getelementptr i8, ptr %t144, i64 %t125
  call void @olang_textcopy(ptr %t146, ptr %t127, i64 %t128)
  %t147 = getelementptr i8, ptr %t146, i64 %t128
  call void @olang_textcopy(ptr %t147, ptr %t131, i64 %t132)
  %t148 = getelementptr i8, ptr %t147, i64 %t132
  call void @olang_textcopy(ptr %t148, ptr %t134, i64 %t135)
  %t149 = getelementptr i8, ptr %t148, i64 %t135
  %t150 = call i64 @__olang_fmt_i64(ptr %t149, i64 %t121)
  %t151 = getelementptr i8, ptr %t149, i64 %t138
  call void @olang_textcopy(ptr %t151, ptr %t140, i64 %t141)
  %t152 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t143, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l14, { i64, ptr } %t160)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s4)
  br label %bb15
bb15:
  %t163 = load i64, ptr %l19, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l19, !tbaa !24
  br label %bb10
bb16:
  %t167 = load i1, ptr %l3, !tbaa !21
  br i1 %t167, label %bb17, label %bb18
bb17:
  store i64 1, ptr %l125, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l125, !tbaa !24
  br label %bb19
bb19:
  %t169 = load ptr, ptr %l11, !tbaa !29
  store ptr %t169, ptr %l126, !tbaa !29
  %t170 = load ptr, ptr %l11, !tbaa !29
  %t171 = load i32, ptr %l5, !tbaa !23
  %t174 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t170, i32 %t171)
  store i32 %t174, ptr %l129
  br label %bb20
bb20:
  %t175 = load ptr, ptr %l126, !tbaa !29
  %t176 = load i32, ptr %l129, !tbaa !23
  %t177 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t175, i32 %t176)
  store { i64, ptr } %t177, ptr %l130
  br label %bb21
bb21:
  %t178 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  %t180 = load i64, ptr %l125, !tbaa !24
  %t182 = add i64 %t180, %t179
  %t183 = load i64, ptr %l6, !tbaa !24
  %t186 = add i64 %t182, %t183
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load %"compiler/mir:Task", ptr %l7
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskOld(ptr %v0, ptr %s0, ptr %t188, ptr %l14, %"compiler/mir:Task" %t189, i64 %t186)
  br label %bb22
bb22:
  store i64 0, ptr %l22, !tbaa !24
  store { i64, ptr } %a4, ptr %l23, !tbaa !27
  %t197 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t197, ptr %l140
  br label %bb23
bb23:
  %t198 = load %"std/prelude/text:StringBuilder", ptr %l140
  store %"std/prelude/text:StringBuilder" %t198, ptr %l24
  store i1 true, ptr %l25, !tbaa !21
  %t199 = load i1, ptr %l3, !tbaa !21
  br i1 %t199, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l14, { i64, ptr } { i64 121, ptr getelementptr inbounds (<{ i64, [121 x i8] }>, ptr @.d249, i32 0, i32 1) })
  br label %bb26
bb25:
  br label %bb28
bb26:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d250, i32 0, i32 1) }, ptr %l23, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l24, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d251, i32 0, i32 1) })
  br label %bb27
bb27:
  store i1 false, ptr %l25, !tbaa !21
  store i64 1, ptr %l22, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb28
bb28:
  %t203 = load ptr, ptr %l10, !tbaa !29
  %t204 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %t203, i32 %t204)
  br label %bb29
bb29:
  %t207 = load ptr, ptr %l11, !tbaa !29
  store ptr %t207, ptr %l146, !tbaa !29
  %t208 = load ptr, ptr %l11, !tbaa !29
  %t209 = load i32, ptr %l5, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l149
  br label %bb30
bb30:
  %t213 = load ptr, ptr %l146, !tbaa !29
  %t214 = load i32, ptr %l149, !tbaa !23
  %t215 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t213, i32 %t214)
  store { i64, ptr } %t215, ptr %l150
  br label %bb31
bb31:
  %t216 = load { i64, ptr }, ptr %l150, !tbaa !27
  store { i64, ptr } %t216, ptr %l26, !tbaa !27
  %t217 = load ptr, ptr %l11, !tbaa !29
  %t218 = load i32, ptr %l5, !tbaa !23
  %t221 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s0, ptr %t217, i32 %t218)
  store { i64, ptr } %t221, ptr %l153
  br label %bb32
bb32:
  %t222 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t222, ptr %l27, !tbaa !27
  %t223 = load ptr, ptr %l11, !tbaa !29
  %t224 = load i32, ptr %l5, !tbaa !23
  %t227 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t223, i32 %t224)
  store i32 %t227, ptr %l156
  br label %bb33
bb33:
  %t228 = load i32, ptr %l156, !tbaa !23
  store i32 %t228, ptr %l28, !tbaa !23
  %t229 = load i32, ptr %l28, !tbaa !23
  %t230 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t233 = icmp ne i32 %t229, %t230
  br i1 %t233, label %bb34, label %bb35
bb34:
  %t235 = load i32, ptr %l28, !tbaa !23
  %t236 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t239 = icmp ne i32 %t235, %t236
  store i1 %t239, ptr %l160, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb36
bb36:
  %t241 = load i1, ptr %l160, !tbaa !21
  br i1 %t241, label %bb37, label %bb38
bb37:
  %t242 = load ptr, ptr %l11, !tbaa !29
  %t243 = load i32, ptr %l28, !tbaa !23
  %t246 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t242, i32 %t243)
  store i1 %t246, ptr %l167
  br label %bb39
bb38:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb40
bb39:
  %t247 = load i1, ptr %l167, !tbaa !21
  store i1 %t247, ptr %l164, !tbaa !21
  br label %bb40
bb40:
  %t248 = load i1, ptr %l164, !tbaa !21
  store i1 %t248, ptr %l29, !tbaa !21
  %t249 = load i1, ptr %l29, !tbaa !21
  br i1 %t249, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %l14, ptr %l169, !tbaa !29
  %t251 = load ptr, ptr %l10, !tbaa !29
  %t252 = load i32, ptr %l28, !tbaa !23
  %t255 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s8, ptr %t251, i32 %t252)
  store { i64, ptr } %t255, ptr %l172
  br label %bb43
bb42:
  br label %bb50
bb43:
  %t256 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
  %t258 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t261 = add i64 %t257, %t260
  %t262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t264 = add i64 %t261, %t263
  %t265 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t264)
  call void @olang_textcopy(ptr %t265, ptr %t256, i64 %t257)
  %t266 = getelementptr i8, ptr %t265, i64 %t257
  call void @olang_textcopy(ptr %t266, ptr %t259, i64 %t260)
  %t267 = getelementptr i8, ptr %t266, i64 %t260
  call void @olang_textcopy(ptr %t267, ptr %t262, i64 %t263)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t265, 1
  %t271 = extractvalue { i64, ptr } %t269, 0
  %t272 = extractvalue { i64, ptr } %t269, 1
  %t273 = mul i64 %t271, 1
  %t274 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t273)
  call void @llvm.memcpy.p0.p0.i64(ptr %t274, ptr %t272, i64 %t273, i1 false)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t274, 1
  %t277 = load ptr, ptr %l169, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t277, { i64, ptr } %t276)
  br label %bb44
bb44:
  %t279 = load i1, ptr %l25, !tbaa !21
  %t281 = xor i1 %t279, true
  br i1 %t281, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s10
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %l24, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d254, i32 0, i32 1) })
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_scope_close(ptr %s10)
  br label %bb48
bb48:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l24, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d255, i32 0, i32 1) })
  br label %bb49
bb49:
  store i1 false, ptr %l25, !tbaa !21
  call void @__olang_scope_close(ptr %s8)
  br label %bb50
bb50:
  store i64 0, ptr %l30, !tbaa !24
  %t285 = load i64, ptr %l6, !tbaa !24
  store i64 %t285, ptr %l31, !tbaa !24
  store i64 1, ptr %l32, !tbaa !24
  %t287 = load i64, ptr %l31, !tbaa !24
  %t288 = load i64, ptr %l30, !tbaa !24
  %t291 = icmp sgt i64 %t287, %t288
  br i1 %t291, label %bb51, label %bb52
bb51:
  %t293 = load i64, ptr %l32, !tbaa !24
  %t295 = icmp sgt i64 %t293, 0
  br i1 %t295, label %bb53, label %bb54
bb52:
  store i64 0, ptr %l183, !tbaa !24
  br label %bb56
bb53:
  %t297 = load i64, ptr %l31, !tbaa !24
  %t298 = load i64, ptr %l30, !tbaa !24
  %t301 = sub i64 %t297, %t298
  %t302 = load i64, ptr %l32, !tbaa !24
  %t305 = add i64 %t301, %t302
  %t307 = sub i64 %t305, 1
  %t308 = load i64, ptr %l32, !tbaa !24
  %t311 = sdiv i64 %t307, %t308
  store i64 %t311, ptr %l186, !tbaa !24
  br label %bb55
bb54:
  store i64 0, ptr %l186, !tbaa !24
  br label %bb55
bb55:
  %t313 = load i64, ptr %l186, !tbaa !24
  store i64 %t313, ptr %l183, !tbaa !24
  br label %bb56
bb56:
  %t314 = load i64, ptr %l183, !tbaa !24
  store i64 %t314, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  br label %bb57
bb57:
  store %olang.scope zeroinitializer, ptr %s12
  %t315 = load i64, ptr %l34, !tbaa !24
  %t316 = load i64, ptr %l33, !tbaa !24
  %t319 = icmp slt i64 %t315, %t316
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s12)
  br label %bb70
bb59:
  br label %bb60
bb60:
  %t323 = load i64, ptr %l30, !tbaa !24
  %t324 = load i64, ptr %l34, !tbaa !24
  %t325 = load i64, ptr %l32, !tbaa !24
  %t328 = mul i64 %t324, %t325
  %t331 = add i64 %t323, %t328
  store i64 %t331, ptr %l35, !tbaa !24
  %t333 = load i64, ptr %l22, !tbaa !24
  %t334 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t334, 0
  %t339 = add i64 %t333, %t336
  %t340 = load i64, ptr %l35, !tbaa !24
  %t343 = add i64 %t339, %t340
  %t345 = load i64, ptr %l35, !tbaa !24
  %t347 = load i64, ptr %l35, !tbaa !24
  %t348 = load i64, ptr %l35, !tbaa !24
  %t349 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t352 = call i64 @__olang_fmt_i64(ptr null, i64 %t345)
  %t353 = add i64 %t350, %t352
  %t354 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t355 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t356 = add i64 %t353, %t355
  %t358 = call i64 @__olang_fmt_i64(ptr null, i64 %t343)
  %t359 = add i64 %t356, %t358
  %t360 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d258, i32 0, i32 1) }, 1
  %t361 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d258, i32 0, i32 1) }, 0
  %t362 = add i64 %t359, %t361
  %t364 = call i64 @__olang_fmt_i64(ptr null, i64 %t347)
  %t365 = add i64 %t362, %t364
  %t366 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d259, i32 0, i32 1) }, 1
  %t367 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d259, i32 0, i32 1) }, 0
  %t368 = add i64 %t365, %t367
  %t370 = call i64 @__olang_fmt_i64(ptr null, i64 %t348)
  %t371 = add i64 %t368, %t370
  %t372 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t373 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
  %t374 = add i64 %t371, %t373
  %t375 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t374)
  call void @olang_textcopy(ptr %t375, ptr %t349, i64 %t350)
  %t376 = getelementptr i8, ptr %t375, i64 %t350
  %t377 = call i64 @__olang_fmt_i64(ptr %t376, i64 %t345)
  %t378 = getelementptr i8, ptr %t376, i64 %t352
  call void @olang_textcopy(ptr %t378, ptr %t354, i64 %t355)
  %t379 = getelementptr i8, ptr %t378, i64 %t355
  %t380 = call i64 @__olang_fmt_i64(ptr %t379, i64 %t343)
  %t381 = getelementptr i8, ptr %t379, i64 %t358
  call void @olang_textcopy(ptr %t381, ptr %t360, i64 %t361)
  %t382 = getelementptr i8, ptr %t381, i64 %t361
  %t383 = call i64 @__olang_fmt_i64(ptr %t382, i64 %t347)
  %t384 = getelementptr i8, ptr %t382, i64 %t364
  call void @olang_textcopy(ptr %t384, ptr %t366, i64 %t367)
  %t385 = getelementptr i8, ptr %t384, i64 %t367
  %t386 = call i64 @__olang_fmt_i64(ptr %t385, i64 %t348)
  %t387 = getelementptr i8, ptr %t385, i64 %t370
  call void @olang_textcopy(ptr %t387, ptr %t372, i64 %t373)
  %t388 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t375, 1
  %t391 = extractvalue { i64, ptr } %t389, 0
  %t392 = extractvalue { i64, ptr } %t389, 1
  %t393 = mul i64 %t391, 1
  %t394 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t393)
  call void @llvm.memcpy.p0.p0.i64(ptr %t394, ptr %t392, i64 %t393, i1 false)
  %t395 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t394, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l14, { i64, ptr } %t396)
  br label %bb61
bb61:
  %t399 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s12, ptr %s12, ptr %t399, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d261, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d262, i32 0, i32 1) })
  br label %bb62
bb62:
  %t401 = load i64, ptr %l35, !tbaa !24
  %t402 = load i64, ptr %l35, !tbaa !24
  %t403 = load i64, ptr %l35, !tbaa !24
  %t404 = load i64, ptr %l35, !tbaa !24
  %t405 = load i64, ptr %l35, !tbaa !24
  %t406 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t407 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t409 = call i64 @__olang_fmt_i64(ptr null, i64 %t401)
  %t410 = add i64 %t407, %t409
  %t411 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d264, i32 0, i32 1) }, 1
  %t412 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d264, i32 0, i32 1) }, 0
  %t413 = add i64 %t410, %t412
  %t415 = call i64 @__olang_fmt_i64(ptr null, i64 %t402)
  %t416 = add i64 %t413, %t415
  %t417 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t418 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t419 = add i64 %t416, %t418
  %t421 = call i64 @__olang_fmt_i64(ptr null, i64 %t403)
  %t422 = add i64 %t419, %t421
  %t423 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t424 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
  %t425 = add i64 %t422, %t424
  %t427 = call i64 @__olang_fmt_i64(ptr null, i64 %t404)
  %t428 = add i64 %t425, %t427
  %t429 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d267, i32 0, i32 1) }, 1
  %t430 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d267, i32 0, i32 1) }, 0
  %t431 = add i64 %t428, %t430
  %t433 = call i64 @__olang_fmt_i64(ptr null, i64 %t405)
  %t434 = add i64 %t431, %t433
  %t435 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d268, i32 0, i32 1) }, 1
  %t436 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d268, i32 0, i32 1) }, 0
  %t437 = add i64 %t434, %t436
  %t438 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t437)
  call void @olang_textcopy(ptr %t438, ptr %t406, i64 %t407)
  %t439 = getelementptr i8, ptr %t438, i64 %t407
  %t440 = call i64 @__olang_fmt_i64(ptr %t439, i64 %t401)
  %t441 = getelementptr i8, ptr %t439, i64 %t409
  call void @olang_textcopy(ptr %t441, ptr %t411, i64 %t412)
  %t442 = getelementptr i8, ptr %t441, i64 %t412
  %t443 = call i64 @__olang_fmt_i64(ptr %t442, i64 %t402)
  %t444 = getelementptr i8, ptr %t442, i64 %t415
  call void @olang_textcopy(ptr %t444, ptr %t417, i64 %t418)
  %t445 = getelementptr i8, ptr %t444, i64 %t418
  %t446 = call i64 @__olang_fmt_i64(ptr %t445, i64 %t403)
  %t447 = getelementptr i8, ptr %t445, i64 %t421
  call void @olang_textcopy(ptr %t447, ptr %t423, i64 %t424)
  %t448 = getelementptr i8, ptr %t447, i64 %t424
  %t449 = call i64 @__olang_fmt_i64(ptr %t448, i64 %t404)
  %t450 = getelementptr i8, ptr %t448, i64 %t427
  call void @olang_textcopy(ptr %t450, ptr %t429, i64 %t430)
  %t451 = getelementptr i8, ptr %t450, i64 %t430
  %t452 = call i64 @__olang_fmt_i64(ptr %t451, i64 %t405)
  %t453 = getelementptr i8, ptr %t451, i64 %t433
  call void @olang_textcopy(ptr %t453, ptr %t435, i64 %t436)
  %t454 = insertvalue { i64, ptr } undef, i64 %t437, 0
  %t455 = insertvalue { i64, ptr } %t454, ptr %t438, 1
  %t457 = extractvalue { i64, ptr } %t455, 0
  %t458 = extractvalue { i64, ptr } %t455, 1
  %t459 = mul i64 %t457, 1
  %t460 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t459)
  call void @llvm.memcpy.p0.p0.i64(ptr %t460, ptr %t458, i64 %t459, i1 false)
  %t461 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t462 = insertvalue { i64, ptr } %t461, ptr %t460, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l14, { i64, ptr } %t462)
  br label %bb63
bb63:
  %t465 = load i1, ptr %l25, !tbaa !21
  %t467 = xor i1 %t465, true
  br i1 %t467, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s15
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %l24, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d269, i32 0, i32 1) })
  br label %bb66
bb65:
  br label %bb67
bb66:
  call void @__olang_scope_close(ptr %s15)
  br label %bb67
bb67:
  %t470 = load i64, ptr %l35, !tbaa !24
  %t471 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t472 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t474 = call i64 @__olang_fmt_i64(ptr null, i64 %t470)
  %t475 = add i64 %t472, %t474
  %t476 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t475)
  call void @olang_textcopy(ptr %t476, ptr %t471, i64 %t472)
  %t477 = getelementptr i8, ptr %t476, i64 %t472
  %t478 = call i64 @__olang_fmt_i64(ptr %t477, i64 %t470)
  %t479 = insertvalue { i64, ptr } undef, i64 %t475, 0
  %t480 = insertvalue { i64, ptr } %t479, ptr %t476, 1
  %t482 = extractvalue { i64, ptr } %t480, 0
  %t483 = extractvalue { i64, ptr } %t480, 1
  %t484 = mul i64 %t482, 1
  %t485 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t484)
  call void @llvm.memcpy.p0.p0.i64(ptr %t485, ptr %t483, i64 %t484, i1 false)
  %t486 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t485, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l24, { i64, ptr } %t487)
  br label %bb68
bb68:
  store i1 false, ptr %l25, !tbaa !21
  call void @__olang_scope_close(ptr %s12)
  br label %bb69
bb69:
  %t490 = load i64, ptr %l34, !tbaa !24
  %t492 = add i64 %t490, 1
  store i64 %t492, ptr %l34, !tbaa !24
  br label %bb57
bb70:
  %t494 = load i64, ptr %l6, !tbaa !24
  store i64 %t494, ptr %l37, !tbaa !24
  %t496 = load i1, ptr %l3, !tbaa !21
  %t498 = xor i1 %t496, true
  br i1 %t498, label %bb71, label %bb72
bb71:
  %t500 = load ptr, ptr %l10, !tbaa !29
  store ptr %t500, ptr %l239, !tbaa !29
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t502 = load %"compiler/mir:Task", ptr %l7
  %t505 = call { i64, [2 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskKey(ptr %v0, ptr %t501, %"compiler/mir:Task" %t502)
  store { i64, [2 x i64] } %t505, ptr %l242
  br label %bb73
bb72:
  store i64 0, ptr %l238, !tbaa !24
  br label %bb75
bb73:
  %t506 = load i32, ptr %l5, !tbaa !23
  %t507 = load ptr, ptr %l239, !tbaa !29
  %t508 = load { i64, [2 x i64] }, ptr %l242
  %t510 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t507, { i64, [2 x i64] } %t508, i32 %t506)
  store i64 %t510, ptr %l244
  br label %bb74
bb74:
  %t511 = load i64, ptr %l244, !tbaa !24
  store i64 %t511, ptr %l238, !tbaa !24
  br label %bb75
bb75:
  %t512 = load i64, ptr %l238, !tbaa !24
  store i64 %t512, ptr %l38, !tbaa !24
  store i64 1, ptr %l39, !tbaa !24
  %t513 = load i64, ptr %l38, !tbaa !24
  %t514 = load i64, ptr %l37, !tbaa !24
  %t517 = icmp sgt i64 %t513, %t514
  br i1 %t517, label %bb76, label %bb77
bb76:
  %t519 = load i64, ptr %l39, !tbaa !24
  %t521 = icmp sgt i64 %t519, 0
  br i1 %t521, label %bb78, label %bb79
bb77:
  store i64 0, ptr %l248, !tbaa !24
  br label %bb81
bb78:
  %t523 = load i64, ptr %l38, !tbaa !24
  %t524 = load i64, ptr %l37, !tbaa !24
  %t527 = sub i64 %t523, %t524
  %t528 = load i64, ptr %l39, !tbaa !24
  %t531 = add i64 %t527, %t528
  %t533 = sub i64 %t531, 1
  %t534 = load i64, ptr %l39, !tbaa !24
  %t537 = sdiv i64 %t533, %t534
  store i64 %t537, ptr %l251, !tbaa !24
  br label %bb80
bb79:
  store i64 0, ptr %l251, !tbaa !24
  br label %bb80
bb80:
  %t539 = load i64, ptr %l251, !tbaa !24
  store i64 %t539, ptr %l248, !tbaa !24
  br label %bb81
bb81:
  %t540 = load i64, ptr %l248, !tbaa !24
  store i64 %t540, ptr %l40, !tbaa !24
  store i64 0, ptr %l41, !tbaa !24
  br label %bb82
bb82:
  store %olang.scope zeroinitializer, ptr %s19
  %t541 = load i64, ptr %l41, !tbaa !24
  %t542 = load i64, ptr %l40, !tbaa !24
  %t545 = icmp slt i64 %t541, %t542
  %t547 = xor i1 %t545, true
  br i1 %t547, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s19)
  br label %bb92
bb84:
  br label %bb85
bb85:
  %t549 = load i64, ptr %l37, !tbaa !24
  %t550 = load i64, ptr %l41, !tbaa !24
  %t551 = load i64, ptr %l39, !tbaa !24
  %t554 = mul i64 %t550, %t551
  %t557 = add i64 %t549, %t554
  store i64 %t557, ptr %l42, !tbaa !24
  %t559 = load i1, ptr %l25, !tbaa !21
  %t561 = xor i1 %t559, true
  br i1 %t561, label %bb86, label %bb87
bb86:
  store %olang.scope zeroinitializer, ptr %s20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s20, ptr %l24, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) })
  br label %bb88
bb87:
  br label %bb89
bb88:
  call void @__olang_scope_close(ptr %s20)
  br label %bb89
bb89:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s19, ptr %l24, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d272, i32 0, i32 1) })
  br label %bb90
bb90:
  store i1 false, ptr %l25, !tbaa !21
  call void @__olang_scope_close(ptr %s19)
  br label %bb91
bb91:
  %t565 = load i64, ptr %l41, !tbaa !24
  %t567 = add i64 %t565, 1
  store i64 %t567, ptr %l41, !tbaa !24
  br label %bb82
bb92:
  store i64 0, ptr %l43, !tbaa !24
  %t569 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t571 = extractvalue { i64, ptr } %t569, 0
  store i64 %t571, ptr %l44, !tbaa !24
  store i64 1, ptr %l45, !tbaa !24
  %t573 = load i64, ptr %l44, !tbaa !24
  %t574 = load i64, ptr %l43, !tbaa !24
  %t577 = icmp sgt i64 %t573, %t574
  br i1 %t577, label %bb93, label %bb94
bb93:
  %t579 = load i64, ptr %l45, !tbaa !24
  %t581 = icmp sgt i64 %t579, 0
  br i1 %t581, label %bb95, label %bb96
bb94:
  store i64 0, ptr %l280, !tbaa !24
  br label %bb98
bb95:
  %t583 = load i64, ptr %l44, !tbaa !24
  %t584 = load i64, ptr %l43, !tbaa !24
  %t587 = sub i64 %t583, %t584
  %t588 = load i64, ptr %l45, !tbaa !24
  %t591 = add i64 %t587, %t588
  %t593 = sub i64 %t591, 1
  %t594 = load i64, ptr %l45, !tbaa !24
  %t597 = sdiv i64 %t593, %t594
  store i64 %t597, ptr %l283, !tbaa !24
  br label %bb97
bb96:
  store i64 0, ptr %l283, !tbaa !24
  br label %bb97
bb97:
  %t599 = load i64, ptr %l283, !tbaa !24
  store i64 %t599, ptr %l280, !tbaa !24
  br label %bb98
bb98:
  %t600 = load i64, ptr %l280, !tbaa !24
  store i64 %t600, ptr %l46, !tbaa !24
  store i64 0, ptr %l47, !tbaa !24
  br label %bb99
bb99:
  store %olang.scope zeroinitializer, ptr %s23
  %t601 = load i64, ptr %l47, !tbaa !24
  %t602 = load i64, ptr %l46, !tbaa !24
  %t605 = icmp slt i64 %t601, %t602
  %t607 = xor i1 %t605, true
  br i1 %t607, label %bb100, label %bb101
bb100:
  call void @__olang_scope_close(ptr %s23)
  br label %bb128
bb101:
  br label %bb102
bb102:
  %t609 = load i64, ptr %l43, !tbaa !24
  %t610 = load i64, ptr %l47, !tbaa !24
  %t611 = load i64, ptr %l45, !tbaa !24
  %t614 = mul i64 %t610, %t611
  %t617 = add i64 %t609, %t614
  store i64 %t617, ptr %l48, !tbaa !24
  %t619 = load i64, ptr %l22, !tbaa !24
  %t620 = load i64, ptr %l48, !tbaa !24
  %t623 = add i64 %t619, %t620
  store i64 %t623, ptr %l49, !tbaa !24
  %t625 = load ptr, ptr %l10, !tbaa !29
  %t626 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t626, ptr %l305, !tbaa !27
  %t627 = load i64, ptr %l48, !tbaa !24
  %t629 = getelementptr { i64, ptr }, ptr %l305, i32 0, i32 1
  %t630 = load ptr, ptr %t629, !tbaa !27
  %t631 = getelementptr i32, ptr %t630, i64 %t627
  %t632 = load i32, ptr %t631, !tbaa !33
  %t635 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s23, ptr %t625, i32 %t632)
  store { i64, ptr } %t635, ptr %l308
  br label %bb103
bb103:
  %t636 = load { i64, ptr }, ptr %l308, !tbaa !27
  store { i64, ptr } %t636, ptr %l50, !tbaa !27
  %t637 = load i1, ptr %l25, !tbaa !21
  %t639 = xor i1 %t637, true
  br i1 %t639, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s24, ptr %l24, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d273, i32 0, i32 1) })
  br label %bb106
bb105:
  br label %bb107
bb106:
  call void @__olang_scope_close(ptr %s24)
  br label %bb107
bb107:
  store i1 false, ptr %l25, !tbaa !21
  %t642 = load i64, ptr %l48, !tbaa !24
  %t644 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t645 = load ptr, ptr %t644, !tbaa !27
  %t646 = getelementptr i8, ptr %t645, i64 %t642
  %t647 = load i8, ptr %t646, !tbaa !32
  store i8 %t647, ptr %l51, !tbaa !22
  %t649 = load i8, ptr %l51, !tbaa !22
  %t651 = icmp eq i8 %t649, 109
  br i1 %t651, label %bb108, label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb112
bb110:
  store %olang.scope zeroinitializer, ptr %s25
  %t653 = load i64, ptr %l49, !tbaa !24
  %t654 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t655 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
  %t657 = call i64 @__olang_fmt_i64(ptr null, i64 %t653)
  %t658 = add i64 %t655, %t657
  %t659 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t658)
  call void @olang_textcopy(ptr %t659, ptr %t654, i64 %t655)
  %t660 = getelementptr i8, ptr %t659, i64 %t655
  %t661 = call i64 @__olang_fmt_i64(ptr %t660, i64 %t653)
  %t662 = insertvalue { i64, ptr } undef, i64 %t658, 0
  %t663 = insertvalue { i64, ptr } %t662, ptr %t659, 1
  %t665 = extractvalue { i64, ptr } %t663, 0
  %t666 = extractvalue { i64, ptr } %t663, 1
  %t667 = mul i64 %t665, 1
  %t668 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t667)
  call void @llvm.memcpy.p0.p0.i64(ptr %t668, ptr %t666, i64 %t667, i1 false)
  %t669 = insertvalue { i64, ptr } undef, i64 %t665, 0
  %t670 = insertvalue { i64, ptr } %t669, ptr %t668, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l24, { i64, ptr } %t670)
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s25)
  br label %bb126
bb112:
  %t673 = load i8, ptr %l51, !tbaa !22
  %t675 = icmp eq i8 %t673, 115
  br i1 %t675, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb119
bb115:
  store %olang.scope zeroinitializer, ptr %s27
  %t677 = load i64, ptr %l48, !tbaa !24
  %t678 = load i64, ptr %l49, !tbaa !24
  %t679 = load i64, ptr %l48, !tbaa !24
  %t680 = load i64, ptr %l48, !tbaa !24
  %t681 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d275, i32 0, i32 1) }, 1
  %t682 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d275, i32 0, i32 1) }, 0
  %t684 = call i64 @__olang_fmt_i64(ptr null, i64 %t677)
  %t685 = add i64 %t682, %t684
  %t686 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d276, i32 0, i32 1) }, 1
  %t687 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d276, i32 0, i32 1) }, 0
  %t688 = add i64 %t685, %t687
  %t690 = call i64 @__olang_fmt_i64(ptr null, i64 %t678)
  %t691 = add i64 %t688, %t690
  %t692 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d277, i32 0, i32 1) }, 1
  %t693 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d277, i32 0, i32 1) }, 0
  %t694 = add i64 %t691, %t693
  %t696 = call i64 @__olang_fmt_i64(ptr null, i64 %t679)
  %t697 = add i64 %t694, %t696
  %t698 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t699 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
  %t700 = add i64 %t697, %t699
  %t702 = call i64 @__olang_fmt_i64(ptr null, i64 %t680)
  %t703 = add i64 %t700, %t702
  %t704 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d279, i32 0, i32 1) }, 1
  %t705 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d279, i32 0, i32 1) }, 0
  %t706 = add i64 %t703, %t705
  %t707 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t706)
  call void @olang_textcopy(ptr %t707, ptr %t681, i64 %t682)
  %t708 = getelementptr i8, ptr %t707, i64 %t682
  %t709 = call i64 @__olang_fmt_i64(ptr %t708, i64 %t677)
  %t710 = getelementptr i8, ptr %t708, i64 %t684
  call void @olang_textcopy(ptr %t710, ptr %t686, i64 %t687)
  %t711 = getelementptr i8, ptr %t710, i64 %t687
  %t712 = call i64 @__olang_fmt_i64(ptr %t711, i64 %t678)
  %t713 = getelementptr i8, ptr %t711, i64 %t690
  call void @olang_textcopy(ptr %t713, ptr %t692, i64 %t693)
  %t714 = getelementptr i8, ptr %t713, i64 %t693
  %t715 = call i64 @__olang_fmt_i64(ptr %t714, i64 %t679)
  %t716 = getelementptr i8, ptr %t714, i64 %t696
  call void @olang_textcopy(ptr %t716, ptr %t698, i64 %t699)
  %t717 = getelementptr i8, ptr %t716, i64 %t699
  %t718 = call i64 @__olang_fmt_i64(ptr %t717, i64 %t680)
  %t719 = getelementptr i8, ptr %t717, i64 %t702
  call void @olang_textcopy(ptr %t719, ptr %t704, i64 %t705)
  %t720 = insertvalue { i64, ptr } undef, i64 %t706, 0
  %t721 = insertvalue { i64, ptr } %t720, ptr %t707, 1
  %t723 = extractvalue { i64, ptr } %t721, 0
  %t724 = extractvalue { i64, ptr } %t721, 1
  %t725 = mul i64 %t723, 1
  %t726 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t725)
  call void @llvm.memcpy.p0.p0.i64(ptr %t726, ptr %t724, i64 %t725, i1 false)
  %t727 = insertvalue { i64, ptr } undef, i64 %t723, 0
  %t728 = insertvalue { i64, ptr } %t727, ptr %t726, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %l14, { i64, ptr } %t728)
  br label %bb116
bb116:
  %t731 = load i64, ptr %l48, !tbaa !24
  %t732 = load i64, ptr %l48, !tbaa !24
  %t733 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t734 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t736 = call i64 @__olang_fmt_i64(ptr null, i64 %t731)
  %t737 = add i64 %t734, %t736
  %t738 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t739 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t740 = add i64 %t737, %t739
  %t742 = call i64 @__olang_fmt_i64(ptr null, i64 %t732)
  %t743 = add i64 %t740, %t742
  %t744 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d282, i32 0, i32 1) }, 1
  %t745 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d282, i32 0, i32 1) }, 0
  %t746 = add i64 %t743, %t745
  %t747 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t746)
  call void @olang_textcopy(ptr %t747, ptr %t733, i64 %t734)
  %t748 = getelementptr i8, ptr %t747, i64 %t734
  %t749 = call i64 @__olang_fmt_i64(ptr %t748, i64 %t731)
  %t750 = getelementptr i8, ptr %t748, i64 %t736
  call void @olang_textcopy(ptr %t750, ptr %t738, i64 %t739)
  %t751 = getelementptr i8, ptr %t750, i64 %t739
  %t752 = call i64 @__olang_fmt_i64(ptr %t751, i64 %t732)
  %t753 = getelementptr i8, ptr %t751, i64 %t742
  call void @olang_textcopy(ptr %t753, ptr %t744, i64 %t745)
  %t754 = insertvalue { i64, ptr } undef, i64 %t746, 0
  %t755 = insertvalue { i64, ptr } %t754, ptr %t747, 1
  %t757 = extractvalue { i64, ptr } %t755, 0
  %t758 = extractvalue { i64, ptr } %t755, 1
  %t759 = mul i64 %t757, 1
  %t760 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t759)
  call void @llvm.memcpy.p0.p0.i64(ptr %t760, ptr %t758, i64 %t759, i1 false)
  %t761 = insertvalue { i64, ptr } undef, i64 %t757, 0
  %t762 = insertvalue { i64, ptr } %t761, ptr %t760, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %l14, { i64, ptr } %t762)
  br label %bb117
bb117:
  %t765 = load i64, ptr %l48, !tbaa !24
  %t766 = load i64, ptr %l48, !tbaa !24
  %t767 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t768 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t770 = call i64 @__olang_fmt_i64(ptr null, i64 %t765)
  %t771 = add i64 %t768, %t770
  %t772 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t773 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
  %t774 = add i64 %t771, %t773
  %t776 = call i64 @__olang_fmt_i64(ptr null, i64 %t766)
  %t777 = add i64 %t774, %t776
  %t778 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t777)
  call void @olang_textcopy(ptr %t778, ptr %t767, i64 %t768)
  %t779 = getelementptr i8, ptr %t778, i64 %t768
  %t780 = call i64 @__olang_fmt_i64(ptr %t779, i64 %t765)
  %t781 = getelementptr i8, ptr %t779, i64 %t770
  call void @olang_textcopy(ptr %t781, ptr %t772, i64 %t773)
  %t782 = getelementptr i8, ptr %t781, i64 %t773
  %t783 = call i64 @__olang_fmt_i64(ptr %t782, i64 %t766)
  %t784 = insertvalue { i64, ptr } undef, i64 %t777, 0
  %t785 = insertvalue { i64, ptr } %t784, ptr %t778, 1
  %t787 = extractvalue { i64, ptr } %t785, 0
  %t788 = extractvalue { i64, ptr } %t785, 1
  %t789 = mul i64 %t787, 1
  %t790 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t789)
  call void @llvm.memcpy.p0.p0.i64(ptr %t790, ptr %t788, i64 %t789, i1 false)
  %t791 = insertvalue { i64, ptr } undef, i64 %t787, 0
  %t792 = insertvalue { i64, ptr } %t791, ptr %t790, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %l24, { i64, ptr } %t792)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s27)
  br label %bb126
bb119:
  br i1 true, label %bb120, label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb125
bb122:
  store %olang.scope zeroinitializer, ptr %s31
  %t795 = load i64, ptr %l48, !tbaa !24
  %t796 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t797 = load i64, ptr %l49, !tbaa !24
  %t798 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d285, i32 0, i32 1) }, 1
  %t799 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d285, i32 0, i32 1) }, 0
  %t801 = call i64 @__olang_fmt_i64(ptr null, i64 %t795)
  %t802 = add i64 %t799, %t801
  %t803 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d286, i32 0, i32 1) }, 1
  %t804 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d286, i32 0, i32 1) }, 0
  %t805 = add i64 %t802, %t804
  %t807 = extractvalue { i64, ptr } %t796, 1
  %t808 = extractvalue { i64, ptr } %t796, 0
  %t809 = add i64 %t805, %t808
  %t810 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d287, i32 0, i32 1) }, 1
  %t811 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d287, i32 0, i32 1) }, 0
  %t812 = add i64 %t809, %t811
  %t814 = call i64 @__olang_fmt_i64(ptr null, i64 %t797)
  %t815 = add i64 %t812, %t814
  %t816 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t817 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
  %t818 = add i64 %t815, %t817
  %t819 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t818)
  call void @olang_textcopy(ptr %t819, ptr %t798, i64 %t799)
  %t820 = getelementptr i8, ptr %t819, i64 %t799
  %t821 = call i64 @__olang_fmt_i64(ptr %t820, i64 %t795)
  %t822 = getelementptr i8, ptr %t820, i64 %t801
  call void @olang_textcopy(ptr %t822, ptr %t803, i64 %t804)
  %t823 = getelementptr i8, ptr %t822, i64 %t804
  call void @olang_textcopy(ptr %t823, ptr %t807, i64 %t808)
  %t824 = getelementptr i8, ptr %t823, i64 %t808
  call void @olang_textcopy(ptr %t824, ptr %t810, i64 %t811)
  %t825 = getelementptr i8, ptr %t824, i64 %t811
  %t826 = call i64 @__olang_fmt_i64(ptr %t825, i64 %t797)
  %t827 = getelementptr i8, ptr %t825, i64 %t814
  call void @olang_textcopy(ptr %t827, ptr %t816, i64 %t817)
  %t828 = insertvalue { i64, ptr } undef, i64 %t818, 0
  %t829 = insertvalue { i64, ptr } %t828, ptr %t819, 1
  %t831 = extractvalue { i64, ptr } %t829, 0
  %t832 = extractvalue { i64, ptr } %t829, 1
  %t833 = mul i64 %t831, 1
  %t834 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t833)
  call void @llvm.memcpy.p0.p0.i64(ptr %t834, ptr %t832, i64 %t833, i1 false)
  %t835 = insertvalue { i64, ptr } undef, i64 %t831, 0
  %t836 = insertvalue { i64, ptr } %t835, ptr %t834, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s31, ptr %l14, { i64, ptr } %t836)
  br label %bb123
bb123:
  %t839 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t840 = load i64, ptr %l48, !tbaa !24
  %t842 = extractvalue { i64, ptr } %t839, 1
  %t843 = extractvalue { i64, ptr } %t839, 0
  %t844 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d289, i32 0, i32 1) }, 1
  %t845 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d289, i32 0, i32 1) }, 0
  %t846 = add i64 %t843, %t845
  %t848 = call i64 @__olang_fmt_i64(ptr null, i64 %t840)
  %t849 = add i64 %t846, %t848
  %t850 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t849)
  call void @olang_textcopy(ptr %t850, ptr %t842, i64 %t843)
  %t851 = getelementptr i8, ptr %t850, i64 %t843
  call void @olang_textcopy(ptr %t851, ptr %t844, i64 %t845)
  %t852 = getelementptr i8, ptr %t851, i64 %t845
  %t853 = call i64 @__olang_fmt_i64(ptr %t852, i64 %t840)
  %t854 = insertvalue { i64, ptr } undef, i64 %t849, 0
  %t855 = insertvalue { i64, ptr } %t854, ptr %t850, 1
  %t857 = extractvalue { i64, ptr } %t855, 0
  %t858 = extractvalue { i64, ptr } %t855, 1
  %t859 = mul i64 %t857, 1
  %t860 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t859)
  call void @llvm.memcpy.p0.p0.i64(ptr %t860, ptr %t858, i64 %t859, i1 false)
  %t861 = insertvalue { i64, ptr } undef, i64 %t857, 0
  %t862 = insertvalue { i64, ptr } %t861, ptr %t860, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s31, ptr %l24, { i64, ptr } %t862)
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s31)
  br label %bb126
bb125:
  call void @__olang_check_failed(ptr @olang_loc_7b5945deb51ea5cf_9b8856c6d1bef1b3)
  unreachable
bb126:
  call void @__olang_scope_close(ptr %s23)
  br label %bb127
bb127:
  %t865 = load i64, ptr %l47, !tbaa !24
  %t867 = add i64 %t865, 1
  store i64 %t867, ptr %l47, !tbaa !24
  br label %bb99
bb128:
  %t869 = load ptr, ptr %l11, !tbaa !29
  %t870 = load i32, ptr %l5, !tbaa !23
  %t872 = inttoptr i64 0 to ptr
  %t875 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t872, ptr %t869, i32 %t870)
  store { i64, ptr } %t875, ptr %l355
  br label %bb129
bb129:
  %t876 = load { i64, ptr }, ptr %l355, !tbaa !27
  store { i64, ptr } %t876, ptr %l52, !tbaa !27
  %t877 = load ptr, ptr %l11, !tbaa !29
  store ptr %t877, ptr %l356, !tbaa !29
  %t878 = load ptr, ptr %l11, !tbaa !29
  %t879 = load i32, ptr %l5, !tbaa !23
  %t882 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t878, i32 %t879)
  store i32 %t882, ptr %l359
  br label %bb130
bb130:
  %t883 = load ptr, ptr %l356, !tbaa !29
  %t884 = load i32, ptr %l359, !tbaa !23
  %t885 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t883, i32 %t884)
  store { i64, ptr } %t885, ptr %l360
  br label %bb131
bb131:
  %t886 = load { i64, ptr }, ptr %l360, !tbaa !27
  %t887 = extractvalue { i64, ptr } %t886, 0
  %t889 = icmp sgt i64 %t887, 0
  store i1 %t889, ptr %l53, !tbaa !21
  %t891 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t893 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t891, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d290, i32 0, i32 1) })
  store i1 %t893, ptr %l364
  br label %bb132
bb132:
  %t894 = load i1, ptr %l364, !tbaa !21
  br i1 %t894, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s35
  store ptr %l14, ptr %l365, !tbaa !29
  %t895 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t895, ptr %l366, !tbaa !27
  %t897 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s35, ptr %l24)
  store { i64, ptr } %t897, ptr %l368
  br label %bb135
bb134:
  store %olang.scope zeroinitializer, ptr %s37
  store ptr %l14, ptr %l371, !tbaa !29
  %t898 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t898, ptr %l372, !tbaa !27
  %t899 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t899, ptr %l373, !tbaa !27
  %t901 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s37, ptr %l24)
  store { i64, ptr } %t901, ptr %l375
  br label %bb137
bb135:
  %t902 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t903 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t904 = load { i64, ptr }, ptr %l366, !tbaa !27
  %t905 = extractvalue { i64, ptr } %t904, 1
  %t906 = extractvalue { i64, ptr } %t904, 0
  %t907 = add i64 %t903, %t906
  %t908 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t909 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t910 = add i64 %t907, %t909
  %t911 = load { i64, ptr }, ptr %l368, !tbaa !27
  %t912 = extractvalue { i64, ptr } %t911, 1
  %t913 = extractvalue { i64, ptr } %t911, 0
  %t914 = add i64 %t910, %t913
  %t915 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d293, i32 0, i32 1) }, 1
  %t916 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d293, i32 0, i32 1) }, 0
  %t917 = add i64 %t914, %t916
  %t918 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t917)
  call void @olang_textcopy(ptr %t918, ptr %t902, i64 %t903)
  %t919 = getelementptr i8, ptr %t918, i64 %t903
  call void @olang_textcopy(ptr %t919, ptr %t905, i64 %t906)
  %t920 = getelementptr i8, ptr %t919, i64 %t906
  call void @olang_textcopy(ptr %t920, ptr %t908, i64 %t909)
  %t921 = getelementptr i8, ptr %t920, i64 %t909
  call void @olang_textcopy(ptr %t921, ptr %t912, i64 %t913)
  %t922 = getelementptr i8, ptr %t921, i64 %t913
  call void @olang_textcopy(ptr %t922, ptr %t915, i64 %t916)
  %t923 = insertvalue { i64, ptr } undef, i64 %t917, 0
  %t924 = insertvalue { i64, ptr } %t923, ptr %t918, 1
  %t926 = extractvalue { i64, ptr } %t924, 0
  %t927 = extractvalue { i64, ptr } %t924, 1
  %t928 = mul i64 %t926, 1
  %t929 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t928)
  call void @llvm.memcpy.p0.p0.i64(ptr %t929, ptr %t927, i64 %t928, i1 false)
  %t930 = insertvalue { i64, ptr } undef, i64 %t926, 0
  %t931 = insertvalue { i64, ptr } %t930, ptr %t929, 1
  %t932 = load ptr, ptr %l365, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s35, ptr %t932, { i64, ptr } %t931)
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s35)
  br label %bb139
bb137:
  %t934 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d294, i32 0, i32 1) }, 1
  %t935 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d294, i32 0, i32 1) }, 0
  %t936 = load { i64, ptr }, ptr %l372, !tbaa !27
  %t937 = extractvalue { i64, ptr } %t936, 1
  %t938 = extractvalue { i64, ptr } %t936, 0
  %t939 = add i64 %t935, %t938
  %t940 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t941 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
  %t942 = add i64 %t939, %t941
  %t943 = load { i64, ptr }, ptr %l373, !tbaa !27
  %t944 = extractvalue { i64, ptr } %t943, 1
  %t945 = extractvalue { i64, ptr } %t943, 0
  %t946 = add i64 %t942, %t945
  %t947 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t948 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t949 = add i64 %t946, %t948
  %t950 = load { i64, ptr }, ptr %l375, !tbaa !27
  %t951 = extractvalue { i64, ptr } %t950, 1
  %t952 = extractvalue { i64, ptr } %t950, 0
  %t953 = add i64 %t949, %t952
  %t954 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t955 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t956 = add i64 %t953, %t955
  %t957 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t956)
  call void @olang_textcopy(ptr %t957, ptr %t934, i64 %t935)
  %t958 = getelementptr i8, ptr %t957, i64 %t935
  call void @olang_textcopy(ptr %t958, ptr %t937, i64 %t938)
  %t959 = getelementptr i8, ptr %t958, i64 %t938
  call void @olang_textcopy(ptr %t959, ptr %t940, i64 %t941)
  %t960 = getelementptr i8, ptr %t959, i64 %t941
  call void @olang_textcopy(ptr %t960, ptr %t944, i64 %t945)
  %t961 = getelementptr i8, ptr %t960, i64 %t945
  call void @olang_textcopy(ptr %t961, ptr %t947, i64 %t948)
  %t962 = getelementptr i8, ptr %t961, i64 %t948
  call void @olang_textcopy(ptr %t962, ptr %t951, i64 %t952)
  %t963 = getelementptr i8, ptr %t962, i64 %t952
  call void @olang_textcopy(ptr %t963, ptr %t954, i64 %t955)
  %t964 = insertvalue { i64, ptr } undef, i64 %t956, 0
  %t965 = insertvalue { i64, ptr } %t964, ptr %t957, 1
  %t967 = extractvalue { i64, ptr } %t965, 0
  %t968 = extractvalue { i64, ptr } %t965, 1
  %t969 = mul i64 %t967, 1
  %t970 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t969)
  call void @llvm.memcpy.p0.p0.i64(ptr %t970, ptr %t968, i64 %t969, i1 false)
  %t971 = insertvalue { i64, ptr } undef, i64 %t967, 0
  %t972 = insertvalue { i64, ptr } %t971, ptr %t970, 1
  %t973 = load ptr, ptr %l371, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s37, ptr %t973, { i64, ptr } %t972)
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s37)
  br label %bb139
bb139:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d298, i32 0, i32 1) }, ptr %l378, !tbaa !27
  %t975 = load { i64, ptr }, ptr %l378, !tbaa !27
  store { i64, ptr } %t975, ptr %l379, !tbaa !27
  %t976 = load { i64, ptr }, ptr %l379, !tbaa !27
  %t977 = extractvalue { i64, ptr } %t976, 0
  store i64 %t977, ptr %l380, !tbaa !24
  %t978 = load i64, ptr %l380, !tbaa !24
  %t979 = mul i64 %t978, 1
  %t980 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t979)
  %t981 = insertvalue { i64, ptr } undef, i64 %t978, 0
  %t982 = insertvalue { i64, ptr } %t981, ptr %t980, 1
  store { i64, ptr } %t982, ptr %l381, !tbaa !27
  %t983 = getelementptr { i64, ptr }, ptr %l381, i32 0, i32 1
  %t984 = load ptr, ptr %t983, !tbaa !27
  %t985 = getelementptr { i64, ptr }, ptr %l379, i32 0, i32 1
  %t986 = load ptr, ptr %t985, !tbaa !27
  %t987 = load i64, ptr %l380, !tbaa !24
  %t988 = mul i64 %t987, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t984, ptr %t986, i64 %t988, i1 false)
  %t989 = load { i64, ptr }, ptr %l381, !tbaa !27
  store { i64, ptr } %t989, ptr %l54, !tbaa !27
  %t990 = load i1, ptr %l29, !tbaa !21
  br i1 %t990, label %bb140, label %bb141
bb140:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d299, i32 0, i32 1) }, ptr %l383, !tbaa !27
  %t992 = load { i64, ptr }, ptr %l383, !tbaa !27
  store { i64, ptr } %t992, ptr %l384, !tbaa !27
  %t993 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t994 = extractvalue { i64, ptr } %t993, 0
  %t995 = load { i64, ptr }, ptr %l384, !tbaa !27
  %t996 = extractvalue { i64, ptr } %t995, 0
  store i64 %t996, ptr %l386, !tbaa !24
  %t998 = load i64, ptr %l386, !tbaa !24
  %t999 = icmp eq i64 %t994, %t998
  br i1 %t999, label %bb142, label %bb143
bb141:
  %t1001 = load i32, ptr %l28, !tbaa !23
  %t1002 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1005 = icmp ne i32 %t1001, %t1002
  br i1 %t1005, label %bb145, label %bb146
bb142:
  %t1007 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t1008 = load ptr, ptr %t1007, !tbaa !27
  %t1009 = getelementptr { i64, ptr }, ptr %l384, i32 0, i32 1
  %t1010 = load ptr, ptr %t1009, !tbaa !27
  %t1011 = load i64, ptr %l386, !tbaa !24
  %t1012 = mul i64 %t1011, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1008, ptr %t1010, i64 %t1012, i1 false)
  br label %bb144
bb143:
  %t1013 = load { i64, ptr }, ptr %l384, !tbaa !27
  %t1014 = extractvalue { i64, ptr } %t1013, 0
  store i64 %t1014, ptr %l388, !tbaa !24
  %t1015 = load i64, ptr %l388, !tbaa !24
  %t1016 = mul i64 %t1015, 1
  %t1017 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1016)
  %t1018 = insertvalue { i64, ptr } undef, i64 %t1015, 0
  %t1019 = insertvalue { i64, ptr } %t1018, ptr %t1017, 1
  store { i64, ptr } %t1019, ptr %l389, !tbaa !27
  %t1020 = getelementptr { i64, ptr }, ptr %l389, i32 0, i32 1
  %t1021 = load ptr, ptr %t1020, !tbaa !27
  %t1022 = getelementptr { i64, ptr }, ptr %l384, i32 0, i32 1
  %t1023 = load ptr, ptr %t1022, !tbaa !27
  %t1024 = load i64, ptr %l388, !tbaa !24
  %t1025 = mul i64 %t1024, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1021, ptr %t1023, i64 %t1025, i1 false)
  %t1026 = load { i64, ptr }, ptr %l389, !tbaa !27
  store { i64, ptr } %t1026, ptr %l54, !tbaa !27
  br label %bb144
bb144:
  br label %bb161
bb145:
  %t1027 = load i32, ptr %l28, !tbaa !23
  %t1028 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t1031 = icmp ne i32 %t1027, %t1028
  store i1 %t1031, ptr %l393, !tbaa !21
  br label %bb147
bb146:
  store i1 false, ptr %l393, !tbaa !21
  br label %bb147
bb147:
  %t1033 = load i1, ptr %l393, !tbaa !21
  br i1 %t1033, label %bb148, label %bb149
bb148:
  %t1034 = load i1, ptr %l53, !tbaa !21
  br i1 %t1034, label %bb150, label %bb151
bb149:
  br label %bb160
bb150:
  store %olang.scope zeroinitializer, ptr %s42
  %t1036 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t1037 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d300, i32 0, i32 1) }, 1
  %t1038 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d300, i32 0, i32 1) }, 0
  %t1040 = extractvalue { i64, ptr } %t1036, 1
  %t1041 = extractvalue { i64, ptr } %t1036, 0
  %t1042 = add i64 %t1038, %t1041
  %t1043 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d301, i32 0, i32 1) }, 1
  %t1044 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d301, i32 0, i32 1) }, 0
  %t1045 = add i64 %t1042, %t1044
  %t1046 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1045)
  call void @olang_textcopy(ptr %t1046, ptr %t1037, i64 %t1038)
  %t1047 = getelementptr i8, ptr %t1046, i64 %t1038
  call void @olang_textcopy(ptr %t1047, ptr %t1040, i64 %t1041)
  %t1048 = getelementptr i8, ptr %t1047, i64 %t1041
  call void @olang_textcopy(ptr %t1048, ptr %t1043, i64 %t1044)
  %t1049 = insertvalue { i64, ptr } undef, i64 %t1045, 0
  %t1050 = insertvalue { i64, ptr } %t1049, ptr %t1046, 1
  %t1052 = extractvalue { i64, ptr } %t1050, 0
  %t1053 = extractvalue { i64, ptr } %t1050, 1
  %t1054 = mul i64 %t1052, 1
  %t1055 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1054)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1055, ptr %t1053, i64 %t1054, i1 false)
  %t1056 = insertvalue { i64, ptr } undef, i64 %t1052, 0
  %t1057 = insertvalue { i64, ptr } %t1056, ptr %t1055, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s42, ptr %l14, { i64, ptr } %t1057)
  br label %bb152
bb151:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d302, i32 0, i32 1) }, ptr %l409, !tbaa !27
  %t1060 = load { i64, ptr }, ptr %l409, !tbaa !27
  store { i64, ptr } %t1060, ptr %l410, !tbaa !27
  %t1061 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t1062 = extractvalue { i64, ptr } %t1061, 0
  %t1063 = load { i64, ptr }, ptr %l410, !tbaa !27
  %t1064 = extractvalue { i64, ptr } %t1063, 0
  store i64 %t1064, ptr %l412, !tbaa !24
  %t1066 = load i64, ptr %l412, !tbaa !24
  %t1067 = icmp eq i64 %t1062, %t1066
  br i1 %t1067, label %bb156, label %bb157
bb152:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d303, i32 0, i32 1) }, ptr %l402, !tbaa !27
  %t1069 = load { i64, ptr }, ptr %l402, !tbaa !27
  store { i64, ptr } %t1069, ptr %l403, !tbaa !27
  %t1070 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t1071 = extractvalue { i64, ptr } %t1070, 0
  %t1072 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t1073 = extractvalue { i64, ptr } %t1072, 0
  store i64 %t1073, ptr %l405, !tbaa !24
  %t1075 = load i64, ptr %l405, !tbaa !24
  %t1076 = icmp eq i64 %t1071, %t1075
  br i1 %t1076, label %bb153, label %bb154
bb153:
  %t1078 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t1079 = load ptr, ptr %t1078, !tbaa !27
  %t1080 = getelementptr { i64, ptr }, ptr %l403, i32 0, i32 1
  %t1081 = load ptr, ptr %t1080, !tbaa !27
  %t1082 = load i64, ptr %l405, !tbaa !24
  %t1083 = mul i64 %t1082, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1079, ptr %t1081, i64 %t1083, i1 false)
  br label %bb155
bb154:
  %t1084 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t1085 = extractvalue { i64, ptr } %t1084, 0
  store i64 %t1085, ptr %l407, !tbaa !24
  %t1086 = load i64, ptr %l407, !tbaa !24
  %t1087 = mul i64 %t1086, 1
  %t1088 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1087)
  %t1089 = insertvalue { i64, ptr } undef, i64 %t1086, 0
  %t1090 = insertvalue { i64, ptr } %t1089, ptr %t1088, 1
  store { i64, ptr } %t1090, ptr %l408, !tbaa !27
  %t1091 = getelementptr { i64, ptr }, ptr %l408, i32 0, i32 1
  %t1092 = load ptr, ptr %t1091, !tbaa !27
  %t1093 = getelementptr { i64, ptr }, ptr %l403, i32 0, i32 1
  %t1094 = load ptr, ptr %t1093, !tbaa !27
  %t1095 = load i64, ptr %l407, !tbaa !24
  %t1096 = mul i64 %t1095, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1092, ptr %t1094, i64 %t1096, i1 false)
  %t1097 = load { i64, ptr }, ptr %l408, !tbaa !27
  store { i64, ptr } %t1097, ptr %l54, !tbaa !27
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s42)
  br label %bb159
bb156:
  %t1098 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t1099 = load ptr, ptr %t1098, !tbaa !27
  %t1100 = getelementptr { i64, ptr }, ptr %l410, i32 0, i32 1
  %t1101 = load ptr, ptr %t1100, !tbaa !27
  %t1102 = load i64, ptr %l412, !tbaa !24
  %t1103 = mul i64 %t1102, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1099, ptr %t1101, i64 %t1103, i1 false)
  br label %bb158
bb157:
  %t1104 = load { i64, ptr }, ptr %l410, !tbaa !27
  %t1105 = extractvalue { i64, ptr } %t1104, 0
  store i64 %t1105, ptr %l414, !tbaa !24
  %t1106 = load i64, ptr %l414, !tbaa !24
  %t1107 = mul i64 %t1106, 1
  %t1108 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1107)
  %t1109 = insertvalue { i64, ptr } undef, i64 %t1106, 0
  %t1110 = insertvalue { i64, ptr } %t1109, ptr %t1108, 1
  store { i64, ptr } %t1110, ptr %l415, !tbaa !27
  %t1111 = getelementptr { i64, ptr }, ptr %l415, i32 0, i32 1
  %t1112 = load ptr, ptr %t1111, !tbaa !27
  %t1113 = getelementptr { i64, ptr }, ptr %l410, i32 0, i32 1
  %t1114 = load ptr, ptr %t1113, !tbaa !27
  %t1115 = load i64, ptr %l414, !tbaa !24
  %t1116 = mul i64 %t1115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1112, ptr %t1114, i64 %t1116, i1 false)
  %t1117 = load { i64, ptr }, ptr %l415, !tbaa !27
  store { i64, ptr } %t1117, ptr %l54, !tbaa !27
  br label %bb158
bb158:
  br label %bb159
bb159:
  br label %bb160
bb160:
  br label %bb161
bb161:
  %t1118 = load i1, ptr %l53, !tbaa !21
  br i1 %t1118, label %bb162, label %bb163
bb162:
  store %olang.scope zeroinitializer, ptr %s45
  %t1120 = load i1, ptr %l29, !tbaa !21
  br i1 %t1120, label %bb164, label %bb165
bb163:
  br label %bb193
bb164:
  store i1 true, ptr %l418, !tbaa !21
  br label %bb166
bb165:
  %t1122 = load i32, ptr %l28, !tbaa !23
  %t1123 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1126 = icmp eq i32 %t1122, %t1123
  store i1 %t1126, ptr %l418, !tbaa !21
  br label %bb166
bb166:
  %t1128 = load i1, ptr %l418, !tbaa !21
  br i1 %t1128, label %bb167, label %bb168
bb167:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d304, i32 0, i32 1) }, ptr %l422, !tbaa !27
  br label %bb169
bb168:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d305, i32 0, i32 1) }, ptr %l422, !tbaa !27
  br label %bb169
bb169:
  %t1129 = load { i64, ptr }, ptr %l422, !tbaa !27
  store { i64, ptr } %t1129, ptr %l55, !tbaa !27
  %t1130 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t1131 = load ptr, ptr @__olang_prog_scope
  %t1133 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t1131, ptr %s45, { i64, ptr } %t1130, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d306, i32 0, i32 1) })
  store i1 %t1133, ptr %l424
  br label %bb170
bb170:
  %t1134 = load i1, ptr %l424, !tbaa !21
  br i1 %t1134, label %bb171, label %bb172
bb171:
  store %olang.scope zeroinitializer, ptr %s46
  %t1135 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t1136 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t1137 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t1139 = extractvalue { i64, ptr } %t1135, 1
  %t1140 = extractvalue { i64, ptr } %t1135, 0
  %t1141 = add i64 %t1137, %t1140
  %t1142 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d308, i32 0, i32 1) }, 1
  %t1143 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d308, i32 0, i32 1) }, 0
  %t1144 = add i64 %t1141, %t1143
  %t1145 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1144)
  call void @olang_textcopy(ptr %t1145, ptr %t1136, i64 %t1137)
  %t1146 = getelementptr i8, ptr %t1145, i64 %t1137
  call void @olang_textcopy(ptr %t1146, ptr %t1139, i64 %t1140)
  %t1147 = getelementptr i8, ptr %t1146, i64 %t1140
  call void @olang_textcopy(ptr %t1147, ptr %t1142, i64 %t1143)
  %t1148 = insertvalue { i64, ptr } undef, i64 %t1144, 0
  %t1149 = insertvalue { i64, ptr } %t1148, ptr %t1145, 1
  %t1151 = extractvalue { i64, ptr } %t1149, 0
  %t1152 = extractvalue { i64, ptr } %t1149, 1
  %t1153 = mul i64 %t1151, 1
  %t1154 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1153)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1154, ptr %t1152, i64 %t1153, i1 false)
  %t1155 = insertvalue { i64, ptr } undef, i64 %t1151, 0
  %t1156 = insertvalue { i64, ptr } %t1155, ptr %t1154, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s46, ptr %l14, { i64, ptr } %t1156)
  br label %bb173
bb172:
  br label %bb174
bb173:
  call void @__olang_scope_close(ptr %s46)
  br label %bb174
bb174:
  %t1159 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t1160 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t1161 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t1163 = extractvalue { i64, ptr } %t1159, 1
  %t1164 = extractvalue { i64, ptr } %t1159, 0
  %t1165 = add i64 %t1161, %t1164
  %t1166 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t1167 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t1168 = add i64 %t1165, %t1167
  %t1169 = call ptr @__olang_scope_alloc(ptr %s45, i64 %t1168)
  call void @olang_textcopy(ptr %t1169, ptr %t1160, i64 %t1161)
  %t1170 = getelementptr i8, ptr %t1169, i64 %t1161
  call void @olang_textcopy(ptr %t1170, ptr %t1163, i64 %t1164)
  %t1171 = getelementptr i8, ptr %t1170, i64 %t1164
  call void @olang_textcopy(ptr %t1171, ptr %t1166, i64 %t1167)
  %t1172 = insertvalue { i64, ptr } undef, i64 %t1168, 0
  %t1173 = insertvalue { i64, ptr } %t1172, ptr %t1169, 1
  %t1175 = extractvalue { i64, ptr } %t1173, 0
  %t1176 = extractvalue { i64, ptr } %t1173, 1
  %t1177 = mul i64 %t1175, 1
  %t1178 = call ptr @__olang_scope_alloc(ptr %s45, i64 %t1177)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1178, ptr %t1176, i64 %t1177, i1 false)
  %t1179 = insertvalue { i64, ptr } undef, i64 %t1175, 0
  %t1180 = insertvalue { i64, ptr } %t1179, ptr %t1178, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s45, ptr %l14, { i64, ptr } %t1180)
  br label %bb175
bb175:
  %t1183 = load ptr, ptr %l0, !tbaa !29
  %t1184 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t1185 = load %"compiler/mir:Task", ptr %l7
  %t1186 = load i32, ptr %l5, !tbaa !23
  %t1187 = load i64, ptr %l22, !tbaa !24
  %t1188 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t1190 = extractvalue { i64, ptr } %t1188, 0
  %t1193 = add i64 %t1187, %t1190
  %t1194 = load i64, ptr %l6, !tbaa !24
  %t1197 = add i64 %t1193, %t1194
  %t1198 = load i64, ptr %l12, !tbaa !24
  %t1201 = add i64 %t1197, %t1198
  %t1202 = load i64, ptr %l22, !tbaa !24
  %t1203 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t1205 = extractvalue { i64, ptr } %t1203, 0
  %t1208 = add i64 %t1202, %t1205
  %t1209 = load i64, ptr %l6, !tbaa !24
  %t1212 = add i64 %t1208, %t1209
  %t1213 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t1214 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eclauses(ptr %v0, ptr %s0, ptr %t1214, ptr %v4, ptr %t1183, ptr %l14, { i64, ptr } %t1184, %"compiler/mir:Task" %t1185, i32 %t1186, i64 %t1201, i64 %t1212, { i64, ptr } %t1213)
  br label %bb176
bb176:
  %t1223 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 5
  %t1224 = getelementptr %"compiler/mir:Range", ptr %t1223, i32 0, i32 1
  %t1225 = load i32, ptr %t1224, !tbaa !23
  %t1227 = icmp sgt i32 %t1225, 0
  br i1 %t1227, label %bb177, label %bb178
bb177:
  store %olang.scope zeroinitializer, ptr %s49
  %t1229 = load ptr, ptr %l0, !tbaa !29
  %t1230 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t1231 = load %"compiler/mir:Task", ptr %l7
  %t1232 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskEnds(ptr %v0, ptr %s0, ptr %t1232, ptr %t1229, ptr %l14, { i64, ptr } %t1230, %"compiler/mir:Task" %t1231)
  br label %bb179
bb178:
  store %olang.scope zeroinitializer, ptr %s50
  %t1237 = load ptr, ptr %l10, !tbaa !29
  store ptr %t1237, ptr %l460, !tbaa !29
  store ptr %l14, ptr %l461, !tbaa !29
  %t1238 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t1238, ptr %l462, !tbaa !27
  %t1239 = load ptr, ptr %l11, !tbaa !29
  %t1240 = load i32, ptr %l5, !tbaa !23
  %t1243 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t1239, i32 %t1240)
  store i32 %t1243, ptr %l465
  br label %bb181
bb179:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s49, ptr %l14, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d311, i32 0, i32 1) })
  br label %bb180
bb180:
  call void @__olang_scope_close(ptr %s49)
  br label %bb192
bb181:
  %t1246 = load ptr, ptr @__olang_prog_scope
  %t1247 = load ptr, ptr %l460, !tbaa !29
  %t1248 = load ptr, ptr %l461, !tbaa !29
  %t1249 = load { i64, ptr }, ptr %l462, !tbaa !27
  %t1250 = load i32, ptr %l465, !tbaa !23
  %t1252 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erecodeText(ptr %v0, ptr %s0, ptr %t1246, ptr %s50, ptr %t1247, ptr %t1248, { i64, ptr } %t1249, i32 %t1250, i32 %a8)
  store { i64, ptr } %t1252, ptr %l467
  br label %bb182
bb182:
  %t1253 = load { i64, ptr }, ptr %l467, !tbaa !27
  store { i64, ptr } %t1253, ptr %l56, !tbaa !27
  %t1254 = load ptr, ptr %l10, !tbaa !29
  store ptr %t1254, ptr %l468, !tbaa !29
  store ptr %l14, ptr %l469, !tbaa !29
  %t1255 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t1255, ptr %l470, !tbaa !27
  %t1256 = load ptr, ptr %l11, !tbaa !29
  %t1257 = load i32, ptr %l5, !tbaa !23
  %t1260 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t1256, i32 %t1257)
  store i32 %t1260, ptr %l473
  br label %bb183
bb183:
  %t1261 = load ptr, ptr @__olang_prog_scope
  %t1262 = load ptr, ptr %l468, !tbaa !29
  %t1263 = load ptr, ptr %l469, !tbaa !29
  %t1264 = load { i64, ptr }, ptr %l470, !tbaa !27
  %t1265 = load i32, ptr %l473, !tbaa !23
  %t1266 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecarriesText(ptr %v0, ptr %s0, ptr %t1261, ptr %s50, ptr %s50, ptr %t1262, ptr %t1263, { i64, ptr } %t1264, i32 %t1265, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d312, i32 0, i32 1) })
  store { i64, ptr } %t1266, ptr %l474
  br label %bb184
bb184:
  %t1267 = load { i64, ptr }, ptr %l474, !tbaa !27
  store { i64, ptr } %t1267, ptr %l57, !tbaa !27
  %t1268 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t1270 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s50, ptr %s50, { i64, ptr } %t1268, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d313, i32 0, i32 1) })
  store i1 %t1270, ptr %l476
  br label %bb185
bb185:
  %t1271 = load i1, ptr %l476, !tbaa !21
  %t1272 = xor i1 %t1271, true
  br i1 %t1272, label %bb186, label %bb187
bb186:
  store %olang.scope zeroinitializer, ptr %s51
  %t1274 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s51, ptr %t1274, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d314, i32 0, i32 1) })
  br label %bb188
bb187:
  br label %bb190
bb188:
  %t1276 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t1277 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t1278 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
  %t1280 = extractvalue { i64, ptr } %t1276, 1
  %t1281 = extractvalue { i64, ptr } %t1276, 0
  %t1282 = add i64 %t1278, %t1281
  %t1283 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t1284 = extractvalue { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t1285 = add i64 %t1282, %t1284
  %t1286 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1285)
  call void @olang_textcopy(ptr %t1286, ptr %t1277, i64 %t1278)
  %t1287 = getelementptr i8, ptr %t1286, i64 %t1278
  call void @olang_textcopy(ptr %t1287, ptr %t1280, i64 %t1281)
  %t1288 = getelementptr i8, ptr %t1287, i64 %t1281
  call void @olang_textcopy(ptr %t1288, ptr %t1283, i64 %t1284)
  %t1289 = insertvalue { i64, ptr } undef, i64 %t1285, 0
  %t1290 = insertvalue { i64, ptr } %t1289, ptr %t1286, 1
  %t1292 = extractvalue { i64, ptr } %t1290, 0
  %t1293 = extractvalue { i64, ptr } %t1290, 1
  %t1294 = mul i64 %t1292, 1
  %t1295 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t1294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1295, ptr %t1293, i64 %t1294, i1 false)
  %t1296 = insertvalue { i64, ptr } undef, i64 %t1292, 0
  %t1297 = insertvalue { i64, ptr } %t1296, ptr %t1295, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s51, ptr %l14, { i64, ptr } %t1297)
  br label %bb189
bb189:
  call void @__olang_scope_close(ptr %s51)
  br label %bb190
bb190:
  %t1300 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t1301 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t1302 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t1304 = extractvalue { i64, ptr } %t1300, 1
  %t1305 = extractvalue { i64, ptr } %t1300, 0
  %t1306 = add i64 %t1302, %t1305
  %t1307 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t1308 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
  %t1309 = add i64 %t1306, %t1308
  %t1310 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1309)
  call void @olang_textcopy(ptr %t1310, ptr %t1301, i64 %t1302)
  %t1311 = getelementptr i8, ptr %t1310, i64 %t1302
  call void @olang_textcopy(ptr %t1311, ptr %t1304, i64 %t1305)
  %t1312 = getelementptr i8, ptr %t1311, i64 %t1305
  call void @olang_textcopy(ptr %t1312, ptr %t1307, i64 %t1308)
  %t1313 = insertvalue { i64, ptr } undef, i64 %t1309, 0
  %t1314 = insertvalue { i64, ptr } %t1313, ptr %t1310, 1
  %t1316 = extractvalue { i64, ptr } %t1314, 0
  %t1317 = extractvalue { i64, ptr } %t1314, 1
  %t1318 = mul i64 %t1316, 1
  %t1319 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1318)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1319, ptr %t1317, i64 %t1318, i1 false)
  %t1320 = insertvalue { i64, ptr } undef, i64 %t1316, 0
  %t1321 = insertvalue { i64, ptr } %t1320, ptr %t1319, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s50, ptr %l14, { i64, ptr } %t1321)
  br label %bb191
bb191:
  call void @__olang_scope_close(ptr %s50)
  br label %bb192
bb192:
  call void @__olang_scope_close(ptr %s45)
  br label %bb193
bb193:
  %t1324 = load i64, ptr %l12, !tbaa !24
  %t1326 = icmp sgt i64 %t1324, 0
  br i1 %t1326, label %bb194, label %bb195
bb194:
  %t1328 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t1330 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t1328, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d319, i32 0, i32 1) })
  store i1 %t1330, ptr %l491
  br label %bb196
bb195:
  store i1 false, ptr %l489, !tbaa !21
  br label %bb197
bb196:
  %t1331 = load i1, ptr %l491, !tbaa !21
  %t1332 = xor i1 %t1331, true
  store i1 %t1332, ptr %l489, !tbaa !21
  br label %bb197
bb197:
  %t1334 = load i1, ptr %l489, !tbaa !21
  br i1 %t1334, label %bb198, label %bb199
bb198:
  store %olang.scope zeroinitializer, ptr %s54
  %t1335 = load i64, ptr %l22, !tbaa !24
  %t1336 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t1338 = extractvalue { i64, ptr } %t1336, 0
  %t1341 = add i64 %t1335, %t1338
  %t1342 = load i64, ptr %l6, !tbaa !24
  %t1345 = add i64 %t1341, %t1342
  store i64 %t1345, ptr %l58, !tbaa !24
  %t1347 = load i1, ptr %l29, !tbaa !21
  br i1 %t1347, label %bb200, label %bb201
bb199:
  br label %bb257
bb200:
  store %olang.scope zeroinitializer, ptr %s55
  %t1349 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s55, ptr %s55, ptr %t1349, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d320, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d321, i32 0, i32 1) })
  br label %bb202
bb201:
  %t1351 = load i64, ptr %l12, !tbaa !24
  %t1353 = icmp eq i64 %t1351, 1
  br i1 %t1353, label %bb230, label %bb231
bb202:
  %t1355 = load ptr, ptr %l10, !tbaa !29
  %t1357 = getelementptr %"compiler/emit:Emitter", ptr %t1355, i32 0, i32 0
  %t1358 = load ptr, ptr %t1357, !tbaa !29
  %t1359 = load i32, ptr %l28, !tbaa !23
  %t1362 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t1358, i32 %t1359)
  store i1 %t1362, ptr %l504
  br label %bb203
bb203:
  %t1363 = load i64, ptr %l12, !tbaa !24
  %t1365 = icmp eq i64 %t1363, 1
  br i1 %t1365, label %bb204, label %bb205
bb204:
  store %olang.scope zeroinitializer, ptr %s56
  store ptr %l14, ptr %l507, !tbaa !29
  %t1367 = load i64, ptr %l58, !tbaa !24
  store i64 %t1367, ptr %l508, !tbaa !24
  %t1368 = load ptr, ptr %l11, !tbaa !29
  %t1369 = load i32, ptr %l28, !tbaa !23
  %t1372 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t1368, i32 %t1369)
  store i64 %t1372, ptr %l511
  br label %bb206
bb205:
  %t1373 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1373, ptr %l514, !tbaa !29
  %t1374 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1374, ptr %l515, !tbaa !29
  %t1375 = load ptr, ptr %l11, !tbaa !29
  %t1376 = load i32, ptr %l28, !tbaa !23
  %t1379 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1375, i32 %t1376)
  store i32 %t1379, ptr %l518
  br label %bb208
bb206:
  %t1380 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d322, i32 0, i32 1) }, 1
  %t1381 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d322, i32 0, i32 1) }, 0
  %t1382 = load i64, ptr %l508, !tbaa !24
  %t1383 = call i64 @__olang_fmt_i64(ptr null, i64 %t1382)
  %t1384 = add i64 %t1381, %t1383
  %t1385 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d323, i32 0, i32 1) }, 1
  %t1386 = extractvalue { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d323, i32 0, i32 1) }, 0
  %t1387 = add i64 %t1384, %t1386
  %t1388 = load i64, ptr %l511, !tbaa !24
  %t1389 = call i64 @__olang_fmt_i64(ptr null, i64 %t1388)
  %t1390 = add i64 %t1387, %t1389
  %t1391 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t1392 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t1393 = add i64 %t1390, %t1392
  %t1394 = call ptr @__olang_scope_alloc(ptr %s56, i64 %t1393)
  call void @olang_textcopy(ptr %t1394, ptr %t1380, i64 %t1381)
  %t1395 = getelementptr i8, ptr %t1394, i64 %t1381
  %t1396 = call i64 @__olang_fmt_i64(ptr %t1395, i64 %t1382)
  %t1397 = getelementptr i8, ptr %t1395, i64 %t1383
  call void @olang_textcopy(ptr %t1397, ptr %t1385, i64 %t1386)
  %t1398 = getelementptr i8, ptr %t1397, i64 %t1386
  %t1399 = call i64 @__olang_fmt_i64(ptr %t1398, i64 %t1388)
  %t1400 = getelementptr i8, ptr %t1398, i64 %t1389
  call void @olang_textcopy(ptr %t1400, ptr %t1391, i64 %t1392)
  %t1401 = insertvalue { i64, ptr } undef, i64 %t1393, 0
  %t1402 = insertvalue { i64, ptr } %t1401, ptr %t1394, 1
  %t1404 = extractvalue { i64, ptr } %t1402, 0
  %t1405 = extractvalue { i64, ptr } %t1402, 1
  %t1406 = mul i64 %t1404, 1
  %t1407 = call ptr @__olang_scope_alloc(ptr %s56, i64 %t1406)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1407, ptr %t1405, i64 %t1406, i1 false)
  %t1408 = insertvalue { i64, ptr } undef, i64 %t1404, 0
  %t1409 = insertvalue { i64, ptr } %t1408, ptr %t1407, 1
  %t1410 = load ptr, ptr %l507, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s56, ptr %t1410, { i64, ptr } %t1409)
  br label %bb207
bb207:
  call void @__olang_scope_close(ptr %s56)
  br label %bb229
bb208:
  %t1412 = load ptr, ptr %l515, !tbaa !29
  %t1413 = load i32, ptr %l518, !tbaa !23
  %t1414 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t1412, i32 %t1413)
  store i32 %t1414, ptr %l519
  br label %bb209
bb209:
  %t1415 = load ptr, ptr %l514, !tbaa !29
  %t1416 = load i32, ptr %l519, !tbaa !23
  %t1417 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1415, i32 %t1416)
  store { i64, ptr } %t1417, ptr %l520
  br label %bb210
bb210:
  %t1418 = load { i64, ptr }, ptr %l520, !tbaa !27
  store { i64, ptr } %t1418, ptr %l59, !tbaa !27
  store i64 0, ptr %l60, !tbaa !24
  %t1419 = load i64, ptr %l12, !tbaa !24
  store i64 %t1419, ptr %l61, !tbaa !24
  store i64 1, ptr %l62, !tbaa !24
  %t1421 = load i64, ptr %l61, !tbaa !24
  %t1422 = load i64, ptr %l60, !tbaa !24
  %t1425 = icmp sgt i64 %t1421, %t1422
  br i1 %t1425, label %bb211, label %bb212
bb211:
  %t1427 = load i64, ptr %l62, !tbaa !24
  %t1429 = icmp sgt i64 %t1427, 0
  br i1 %t1429, label %bb213, label %bb214
bb212:
  store i64 0, ptr %l525, !tbaa !24
  br label %bb216
bb213:
  %t1431 = load i64, ptr %l61, !tbaa !24
  %t1432 = load i64, ptr %l60, !tbaa !24
  %t1435 = sub i64 %t1431, %t1432
  %t1436 = load i64, ptr %l62, !tbaa !24
  %t1439 = add i64 %t1435, %t1436
  %t1441 = sub i64 %t1439, 1
  %t1442 = load i64, ptr %l62, !tbaa !24
  %t1445 = sdiv i64 %t1441, %t1442
  store i64 %t1445, ptr %l528, !tbaa !24
  br label %bb215
bb214:
  store i64 0, ptr %l528, !tbaa !24
  br label %bb215
bb215:
  %t1447 = load i64, ptr %l528, !tbaa !24
  store i64 %t1447, ptr %l525, !tbaa !24
  br label %bb216
bb216:
  %t1448 = load i64, ptr %l525, !tbaa !24
  store i64 %t1448, ptr %l63, !tbaa !24
  store i64 0, ptr %l64, !tbaa !24
  br label %bb217
bb217:
  store %olang.scope zeroinitializer, ptr %s60
  %t1449 = load i64, ptr %l64, !tbaa !24
  %t1450 = load i64, ptr %l63, !tbaa !24
  %t1453 = icmp slt i64 %t1449, %t1450
  %t1455 = xor i1 %t1453, true
  br i1 %t1455, label %bb218, label %bb219
bb218:
  call void @__olang_scope_close(ptr %s60)
  br label %bb228
bb219:
  br label %bb220
bb220:
  %t1457 = load i64, ptr %l60, !tbaa !24
  %t1458 = load i64, ptr %l64, !tbaa !24
  %t1459 = load i64, ptr %l62, !tbaa !24
  %t1462 = mul i64 %t1458, %t1459
  %t1465 = add i64 %t1457, %t1462
  store i64 %t1465, ptr %l65, !tbaa !24
  %t1467 = load ptr, ptr %l10, !tbaa !29
  %t1469 = getelementptr %"compiler/emit:Emitter", ptr %t1467, i32 0, i32 0
  %t1470 = load ptr, ptr %t1469, !tbaa !29
  %t1471 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t1471, ptr %l548, !tbaa !27
  %t1472 = load i64, ptr %l65, !tbaa !24
  %t1474 = getelementptr { i64, ptr }, ptr %l548, i32 0, i32 1
  %t1475 = load ptr, ptr %t1474, !tbaa !27
  %t1476 = getelementptr i32, ptr %t1475, i64 %t1472
  %t1477 = load i32, ptr %t1476, !tbaa !33
  %t1480 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t1470, i32 %t1477)
  store i1 %t1480, ptr %l551
  br label %bb221
bb221:
  %t1481 = load i64, ptr %l65, !tbaa !24
  %t1482 = load i64, ptr %l58, !tbaa !24
  %t1483 = load i64, ptr %l65, !tbaa !24
  %t1486 = add i64 %t1482, %t1483
  %t1487 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t1488 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t1490 = call i64 @__olang_fmt_i64(ptr null, i64 %t1481)
  %t1491 = add i64 %t1488, %t1490
  %t1492 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d326, i32 0, i32 1) }, 1
  %t1493 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d326, i32 0, i32 1) }, 0
  %t1494 = add i64 %t1491, %t1493
  %t1496 = call i64 @__olang_fmt_i64(ptr null, i64 %t1486)
  %t1497 = add i64 %t1494, %t1496
  %t1498 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d327, i32 0, i32 1) }, 1
  %t1499 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d327, i32 0, i32 1) }, 0
  %t1500 = add i64 %t1497, %t1499
  %t1501 = call ptr @__olang_scope_alloc(ptr %s60, i64 %t1500)
  call void @olang_textcopy(ptr %t1501, ptr %t1487, i64 %t1488)
  %t1502 = getelementptr i8, ptr %t1501, i64 %t1488
  %t1503 = call i64 @__olang_fmt_i64(ptr %t1502, i64 %t1481)
  %t1504 = getelementptr i8, ptr %t1502, i64 %t1490
  call void @olang_textcopy(ptr %t1504, ptr %t1492, i64 %t1493)
  %t1505 = getelementptr i8, ptr %t1504, i64 %t1493
  %t1506 = call i64 @__olang_fmt_i64(ptr %t1505, i64 %t1486)
  %t1507 = getelementptr i8, ptr %t1505, i64 %t1496
  call void @olang_textcopy(ptr %t1507, ptr %t1498, i64 %t1499)
  %t1508 = insertvalue { i64, ptr } undef, i64 %t1500, 0
  %t1509 = insertvalue { i64, ptr } %t1508, ptr %t1501, 1
  %t1511 = extractvalue { i64, ptr } %t1509, 0
  %t1512 = extractvalue { i64, ptr } %t1509, 1
  %t1513 = mul i64 %t1511, 1
  %t1514 = call ptr @__olang_scope_alloc(ptr %s60, i64 %t1513)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1514, ptr %t1512, i64 %t1513, i1 false)
  %t1515 = insertvalue { i64, ptr } undef, i64 %t1511, 0
  %t1516 = insertvalue { i64, ptr } %t1515, ptr %t1514, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s60, ptr %l14, { i64, ptr } %t1516)
  br label %bb222
bb222:
  store ptr %l14, ptr %l559, !tbaa !29
  %t1519 = load i64, ptr %l65, !tbaa !24
  store i64 %t1519, ptr %l560, !tbaa !24
  %t1520 = load ptr, ptr %l10, !tbaa !29
  %t1521 = load i32, ptr %l28, !tbaa !23
  %t1524 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s60, ptr %t1520, i32 %t1521)
  store { i64, ptr } %t1524, ptr %l563
  br label %bb223
bb223:
  %t1525 = load i64, ptr %l65, !tbaa !24
  %t1526 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t1527 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t1528 = load i64, ptr %l560, !tbaa !24
  %t1529 = call i64 @__olang_fmt_i64(ptr null, i64 %t1528)
  %t1530 = add i64 %t1527, %t1529
  %t1531 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t1532 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
  %t1533 = add i64 %t1530, %t1532
  %t1534 = load { i64, ptr }, ptr %l563, !tbaa !27
  %t1535 = extractvalue { i64, ptr } %t1534, 1
  %t1536 = extractvalue { i64, ptr } %t1534, 0
  %t1537 = add i64 %t1533, %t1536
  %t1538 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t1539 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t1540 = add i64 %t1537, %t1539
  %t1542 = call i64 @__olang_fmt_i64(ptr null, i64 %t1525)
  %t1543 = add i64 %t1540, %t1542
  %t1544 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t1545 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t1546 = add i64 %t1543, %t1545
  %t1547 = call ptr @__olang_scope_alloc(ptr %s60, i64 %t1546)
  call void @olang_textcopy(ptr %t1547, ptr %t1526, i64 %t1527)
  %t1548 = getelementptr i8, ptr %t1547, i64 %t1527
  %t1549 = call i64 @__olang_fmt_i64(ptr %t1548, i64 %t1528)
  %t1550 = getelementptr i8, ptr %t1548, i64 %t1529
  call void @olang_textcopy(ptr %t1550, ptr %t1531, i64 %t1532)
  %t1551 = getelementptr i8, ptr %t1550, i64 %t1532
  call void @olang_textcopy(ptr %t1551, ptr %t1535, i64 %t1536)
  %t1552 = getelementptr i8, ptr %t1551, i64 %t1536
  call void @olang_textcopy(ptr %t1552, ptr %t1538, i64 %t1539)
  %t1553 = getelementptr i8, ptr %t1552, i64 %t1539
  %t1554 = call i64 @__olang_fmt_i64(ptr %t1553, i64 %t1525)
  %t1555 = getelementptr i8, ptr %t1553, i64 %t1542
  call void @olang_textcopy(ptr %t1555, ptr %t1544, i64 %t1545)
  %t1556 = insertvalue { i64, ptr } undef, i64 %t1546, 0
  %t1557 = insertvalue { i64, ptr } %t1556, ptr %t1547, 1
  %t1559 = extractvalue { i64, ptr } %t1557, 0
  %t1560 = extractvalue { i64, ptr } %t1557, 1
  %t1561 = mul i64 %t1559, 1
  %t1562 = call ptr @__olang_scope_alloc(ptr %s60, i64 %t1561)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1562, ptr %t1560, i64 %t1561, i1 false)
  %t1563 = insertvalue { i64, ptr } undef, i64 %t1559, 0
  %t1564 = insertvalue { i64, ptr } %t1563, ptr %t1562, 1
  %t1565 = load ptr, ptr %l559, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s60, ptr %t1565, { i64, ptr } %t1564)
  br label %bb224
bb224:
  store ptr %l14, ptr %l567, !tbaa !29
  %t1567 = load i64, ptr %l65, !tbaa !24
  store i64 %t1567, ptr %l568, !tbaa !24
  %t1568 = load i64, ptr %l65, !tbaa !24
  store i64 %t1568, ptr %l569, !tbaa !24
  %t1569 = load ptr, ptr %l11, !tbaa !29
  %t1570 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t1570, ptr %l571, !tbaa !27
  %t1571 = load i64, ptr %l65, !tbaa !24
  %t1573 = getelementptr { i64, ptr }, ptr %l571, i32 0, i32 1
  %t1574 = load ptr, ptr %t1573, !tbaa !27
  %t1575 = getelementptr i32, ptr %t1574, i64 %t1571
  %t1576 = load i32, ptr %t1575, !tbaa !33
  %t1579 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t1569, i32 %t1576)
  store i64 %t1579, ptr %l574
  br label %bb225
bb225:
  %t1580 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t1581 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t1582 = load i64, ptr %l568, !tbaa !24
  %t1583 = call i64 @__olang_fmt_i64(ptr null, i64 %t1582)
  %t1584 = add i64 %t1581, %t1583
  %t1585 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t1586 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t1587 = add i64 %t1584, %t1586
  %t1588 = load i64, ptr %l569, !tbaa !24
  %t1589 = call i64 @__olang_fmt_i64(ptr null, i64 %t1588)
  %t1590 = add i64 %t1587, %t1589
  %t1591 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d334, i32 0, i32 1) }, 1
  %t1592 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d334, i32 0, i32 1) }, 0
  %t1593 = add i64 %t1590, %t1592
  %t1594 = load i64, ptr %l574, !tbaa !24
  %t1595 = call i64 @__olang_fmt_i64(ptr null, i64 %t1594)
  %t1596 = add i64 %t1593, %t1595
  %t1597 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d335, i32 0, i32 1) }, 1
  %t1598 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d335, i32 0, i32 1) }, 0
  %t1599 = add i64 %t1596, %t1598
  %t1600 = call ptr @__olang_scope_alloc(ptr %s60, i64 %t1599)
  call void @olang_textcopy(ptr %t1600, ptr %t1580, i64 %t1581)
  %t1601 = getelementptr i8, ptr %t1600, i64 %t1581
  %t1602 = call i64 @__olang_fmt_i64(ptr %t1601, i64 %t1582)
  %t1603 = getelementptr i8, ptr %t1601, i64 %t1583
  call void @olang_textcopy(ptr %t1603, ptr %t1585, i64 %t1586)
  %t1604 = getelementptr i8, ptr %t1603, i64 %t1586
  %t1605 = call i64 @__olang_fmt_i64(ptr %t1604, i64 %t1588)
  %t1606 = getelementptr i8, ptr %t1604, i64 %t1589
  call void @olang_textcopy(ptr %t1606, ptr %t1591, i64 %t1592)
  %t1607 = getelementptr i8, ptr %t1606, i64 %t1592
  %t1608 = call i64 @__olang_fmt_i64(ptr %t1607, i64 %t1594)
  %t1609 = getelementptr i8, ptr %t1607, i64 %t1595
  call void @olang_textcopy(ptr %t1609, ptr %t1597, i64 %t1598)
  %t1610 = insertvalue { i64, ptr } undef, i64 %t1599, 0
  %t1611 = insertvalue { i64, ptr } %t1610, ptr %t1600, 1
  %t1613 = extractvalue { i64, ptr } %t1611, 0
  %t1614 = extractvalue { i64, ptr } %t1611, 1
  %t1615 = mul i64 %t1613, 1
  %t1616 = call ptr @__olang_scope_alloc(ptr %s60, i64 %t1615)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1616, ptr %t1614, i64 %t1615, i1 false)
  %t1617 = insertvalue { i64, ptr } undef, i64 %t1613, 0
  %t1618 = insertvalue { i64, ptr } %t1617, ptr %t1616, 1
  %t1619 = load ptr, ptr %l567, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s60, ptr %t1619, { i64, ptr } %t1618)
  br label %bb226
bb226:
  call void @__olang_scope_close(ptr %s60)
  br label %bb227
bb227:
  %t1621 = load i64, ptr %l64, !tbaa !24
  %t1623 = add i64 %t1621, 1
  store i64 %t1623, ptr %l64, !tbaa !24
  br label %bb217
bb228:
  br label %bb229
bb229:
  call void @__olang_scope_close(ptr %s55)
  br label %bb255
bb230:
  store %olang.scope zeroinitializer, ptr %s66
  store ptr %l14, ptr %l581, !tbaa !29
  %t1625 = load i64, ptr %l58, !tbaa !24
  store i64 %t1625, ptr %l582, !tbaa !24
  %t1626 = load ptr, ptr %l10, !tbaa !29
  %t1627 = load i32, ptr %l28, !tbaa !23
  %t1630 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s66, ptr %t1626, i32 %t1627)
  store { i64, ptr } %t1630, ptr %l585
  br label %bb232
bb231:
  %t1631 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1631, ptr %l589, !tbaa !29
  %t1632 = load ptr, ptr %l11, !tbaa !29
  store ptr %t1632, ptr %l590, !tbaa !29
  %t1633 = load ptr, ptr %l11, !tbaa !29
  %t1634 = load i32, ptr %l28, !tbaa !23
  %t1637 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1633, i32 %t1634)
  store i32 %t1637, ptr %l593
  br label %bb234
bb232:
  %t1638 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t1639 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t1640 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
  %t1641 = load i64, ptr %l582, !tbaa !24
  %t1642 = call i64 @__olang_fmt_i64(ptr null, i64 %t1641)
  %t1643 = add i64 %t1640, %t1642
  %t1644 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d337, i32 0, i32 1) }, 1
  %t1645 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d337, i32 0, i32 1) }, 0
  %t1646 = add i64 %t1643, %t1645
  %t1647 = load { i64, ptr }, ptr %l585, !tbaa !27
  %t1648 = extractvalue { i64, ptr } %t1647, 1
  %t1649 = extractvalue { i64, ptr } %t1647, 0
  %t1650 = add i64 %t1646, %t1649
  %t1651 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d338, i32 0, i32 1) }, 1
  %t1652 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d338, i32 0, i32 1) }, 0
  %t1653 = add i64 %t1650, %t1652
  %t1655 = extractvalue { i64, ptr } %t1638, 1
  %t1656 = extractvalue { i64, ptr } %t1638, 0
  %t1657 = add i64 %t1653, %t1656
  %t1658 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t1659 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
  %t1660 = add i64 %t1657, %t1659
  %t1661 = call ptr @__olang_scope_alloc(ptr %s66, i64 %t1660)
  call void @olang_textcopy(ptr %t1661, ptr %t1639, i64 %t1640)
  %t1662 = getelementptr i8, ptr %t1661, i64 %t1640
  %t1663 = call i64 @__olang_fmt_i64(ptr %t1662, i64 %t1641)
  %t1664 = getelementptr i8, ptr %t1662, i64 %t1642
  call void @olang_textcopy(ptr %t1664, ptr %t1644, i64 %t1645)
  %t1665 = getelementptr i8, ptr %t1664, i64 %t1645
  call void @olang_textcopy(ptr %t1665, ptr %t1648, i64 %t1649)
  %t1666 = getelementptr i8, ptr %t1665, i64 %t1649
  call void @olang_textcopy(ptr %t1666, ptr %t1651, i64 %t1652)
  %t1667 = getelementptr i8, ptr %t1666, i64 %t1652
  call void @olang_textcopy(ptr %t1667, ptr %t1655, i64 %t1656)
  %t1668 = getelementptr i8, ptr %t1667, i64 %t1656
  call void @olang_textcopy(ptr %t1668, ptr %t1658, i64 %t1659)
  %t1669 = insertvalue { i64, ptr } undef, i64 %t1660, 0
  %t1670 = insertvalue { i64, ptr } %t1669, ptr %t1661, 1
  %t1672 = extractvalue { i64, ptr } %t1670, 0
  %t1673 = extractvalue { i64, ptr } %t1670, 1
  %t1674 = mul i64 %t1672, 1
  %t1675 = call ptr @__olang_scope_alloc(ptr %s66, i64 %t1674)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1675, ptr %t1673, i64 %t1674, i1 false)
  %t1676 = insertvalue { i64, ptr } undef, i64 %t1672, 0
  %t1677 = insertvalue { i64, ptr } %t1676, ptr %t1675, 1
  %t1678 = load ptr, ptr %l581, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s66, ptr %t1678, { i64, ptr } %t1677)
  br label %bb233
bb233:
  call void @__olang_scope_close(ptr %s66)
  br label %bb254
bb234:
  %t1680 = load ptr, ptr %l590, !tbaa !29
  %t1681 = load i32, ptr %l593, !tbaa !23
  %t1682 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t1680, i32 %t1681)
  store i32 %t1682, ptr %l594
  br label %bb235
bb235:
  %t1683 = load ptr, ptr %l589, !tbaa !29
  %t1684 = load i32, ptr %l594, !tbaa !23
  %t1685 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1683, i32 %t1684)
  store { i64, ptr } %t1685, ptr %l595
  br label %bb236
bb236:
  %t1686 = load { i64, ptr }, ptr %l595, !tbaa !27
  store { i64, ptr } %t1686, ptr %l66, !tbaa !27
  store i64 0, ptr %l67, !tbaa !24
  %t1687 = load i64, ptr %l12, !tbaa !24
  store i64 %t1687, ptr %l68, !tbaa !24
  store i64 1, ptr %l69, !tbaa !24
  %t1689 = load i64, ptr %l68, !tbaa !24
  %t1690 = load i64, ptr %l67, !tbaa !24
  %t1693 = icmp sgt i64 %t1689, %t1690
  br i1 %t1693, label %bb237, label %bb238
bb237:
  %t1695 = load i64, ptr %l69, !tbaa !24
  %t1697 = icmp sgt i64 %t1695, 0
  br i1 %t1697, label %bb239, label %bb240
bb238:
  store i64 0, ptr %l600, !tbaa !24
  br label %bb242
bb239:
  %t1699 = load i64, ptr %l68, !tbaa !24
  %t1700 = load i64, ptr %l67, !tbaa !24
  %t1703 = sub i64 %t1699, %t1700
  %t1704 = load i64, ptr %l69, !tbaa !24
  %t1707 = add i64 %t1703, %t1704
  %t1709 = sub i64 %t1707, 1
  %t1710 = load i64, ptr %l69, !tbaa !24
  %t1713 = sdiv i64 %t1709, %t1710
  store i64 %t1713, ptr %l603, !tbaa !24
  br label %bb241
bb240:
  store i64 0, ptr %l603, !tbaa !24
  br label %bb241
bb241:
  %t1715 = load i64, ptr %l603, !tbaa !24
  store i64 %t1715, ptr %l600, !tbaa !24
  br label %bb242
bb242:
  %t1716 = load i64, ptr %l600, !tbaa !24
  store i64 %t1716, ptr %l70, !tbaa !24
  store i64 0, ptr %l71, !tbaa !24
  br label %bb243
bb243:
  store %olang.scope zeroinitializer, ptr %s70
  %t1717 = load i64, ptr %l71, !tbaa !24
  %t1718 = load i64, ptr %l70, !tbaa !24
  %t1721 = icmp slt i64 %t1717, %t1718
  %t1723 = xor i1 %t1721, true
  br i1 %t1723, label %bb244, label %bb245
bb244:
  call void @__olang_scope_close(ptr %s70)
  br label %bb253
bb245:
  br label %bb246
bb246:
  %t1725 = load i64, ptr %l67, !tbaa !24
  %t1726 = load i64, ptr %l71, !tbaa !24
  %t1727 = load i64, ptr %l69, !tbaa !24
  %t1730 = mul i64 %t1726, %t1727
  %t1733 = add i64 %t1725, %t1730
  store i64 %t1733, ptr %l72, !tbaa !24
  %t1735 = load i64, ptr %l72, !tbaa !24
  %t1736 = load i64, ptr %l58, !tbaa !24
  %t1737 = load i64, ptr %l72, !tbaa !24
  %t1740 = add i64 %t1736, %t1737
  %t1741 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d340, i32 0, i32 1) }, 1
  %t1742 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d340, i32 0, i32 1) }, 0
  %t1744 = call i64 @__olang_fmt_i64(ptr null, i64 %t1735)
  %t1745 = add i64 %t1742, %t1744
  %t1746 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d341, i32 0, i32 1) }, 1
  %t1747 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d341, i32 0, i32 1) }, 0
  %t1748 = add i64 %t1745, %t1747
  %t1750 = call i64 @__olang_fmt_i64(ptr null, i64 %t1740)
  %t1751 = add i64 %t1748, %t1750
  %t1752 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t1753 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
  %t1754 = add i64 %t1751, %t1753
  %t1755 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1754)
  call void @olang_textcopy(ptr %t1755, ptr %t1741, i64 %t1742)
  %t1756 = getelementptr i8, ptr %t1755, i64 %t1742
  %t1757 = call i64 @__olang_fmt_i64(ptr %t1756, i64 %t1735)
  %t1758 = getelementptr i8, ptr %t1756, i64 %t1744
  call void @olang_textcopy(ptr %t1758, ptr %t1746, i64 %t1747)
  %t1759 = getelementptr i8, ptr %t1758, i64 %t1747
  %t1760 = call i64 @__olang_fmt_i64(ptr %t1759, i64 %t1740)
  %t1761 = getelementptr i8, ptr %t1759, i64 %t1750
  call void @olang_textcopy(ptr %t1761, ptr %t1752, i64 %t1753)
  %t1762 = insertvalue { i64, ptr } undef, i64 %t1754, 0
  %t1763 = insertvalue { i64, ptr } %t1762, ptr %t1755, 1
  %t1765 = extractvalue { i64, ptr } %t1763, 0
  %t1766 = extractvalue { i64, ptr } %t1763, 1
  %t1767 = mul i64 %t1765, 1
  %t1768 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1767)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1768, ptr %t1766, i64 %t1767, i1 false)
  %t1769 = insertvalue { i64, ptr } undef, i64 %t1765, 0
  %t1770 = insertvalue { i64, ptr } %t1769, ptr %t1768, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s70, ptr %l14, { i64, ptr } %t1770)
  br label %bb247
bb247:
  store ptr %l14, ptr %l628, !tbaa !29
  %t1773 = load i64, ptr %l72, !tbaa !24
  store i64 %t1773, ptr %l629, !tbaa !24
  %t1774 = load ptr, ptr %l10, !tbaa !29
  %t1775 = load i32, ptr %l28, !tbaa !23
  %t1778 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s70, ptr %t1774, i32 %t1775)
  store { i64, ptr } %t1778, ptr %l632
  br label %bb248
bb248:
  %t1779 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t1780 = load i64, ptr %l72, !tbaa !24
  %t1781 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t1782 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
  %t1783 = load i64, ptr %l629, !tbaa !24
  %t1784 = call i64 @__olang_fmt_i64(ptr null, i64 %t1783)
  %t1785 = add i64 %t1782, %t1784
  %t1786 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t1787 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
  %t1788 = add i64 %t1785, %t1787
  %t1789 = load { i64, ptr }, ptr %l632, !tbaa !27
  %t1790 = extractvalue { i64, ptr } %t1789, 1
  %t1791 = extractvalue { i64, ptr } %t1789, 0
  %t1792 = add i64 %t1788, %t1791
  %t1793 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d345, i32 0, i32 1) }, 1
  %t1794 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d345, i32 0, i32 1) }, 0
  %t1795 = add i64 %t1792, %t1794
  %t1797 = extractvalue { i64, ptr } %t1779, 1
  %t1798 = extractvalue { i64, ptr } %t1779, 0
  %t1799 = add i64 %t1795, %t1798
  %t1800 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t1801 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t1802 = add i64 %t1799, %t1801
  %t1804 = call i64 @__olang_fmt_i64(ptr null, i64 %t1780)
  %t1805 = add i64 %t1802, %t1804
  %t1806 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t1807 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t1808 = add i64 %t1805, %t1807
  %t1809 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1808)
  call void @olang_textcopy(ptr %t1809, ptr %t1781, i64 %t1782)
  %t1810 = getelementptr i8, ptr %t1809, i64 %t1782
  %t1811 = call i64 @__olang_fmt_i64(ptr %t1810, i64 %t1783)
  %t1812 = getelementptr i8, ptr %t1810, i64 %t1784
  call void @olang_textcopy(ptr %t1812, ptr %t1786, i64 %t1787)
  %t1813 = getelementptr i8, ptr %t1812, i64 %t1787
  call void @olang_textcopy(ptr %t1813, ptr %t1790, i64 %t1791)
  %t1814 = getelementptr i8, ptr %t1813, i64 %t1791
  call void @olang_textcopy(ptr %t1814, ptr %t1793, i64 %t1794)
  %t1815 = getelementptr i8, ptr %t1814, i64 %t1794
  call void @olang_textcopy(ptr %t1815, ptr %t1797, i64 %t1798)
  %t1816 = getelementptr i8, ptr %t1815, i64 %t1798
  call void @olang_textcopy(ptr %t1816, ptr %t1800, i64 %t1801)
  %t1817 = getelementptr i8, ptr %t1816, i64 %t1801
  %t1818 = call i64 @__olang_fmt_i64(ptr %t1817, i64 %t1780)
  %t1819 = getelementptr i8, ptr %t1817, i64 %t1804
  call void @olang_textcopy(ptr %t1819, ptr %t1806, i64 %t1807)
  %t1820 = insertvalue { i64, ptr } undef, i64 %t1808, 0
  %t1821 = insertvalue { i64, ptr } %t1820, ptr %t1809, 1
  %t1823 = extractvalue { i64, ptr } %t1821, 0
  %t1824 = extractvalue { i64, ptr } %t1821, 1
  %t1825 = mul i64 %t1823, 1
  %t1826 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1825)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1826, ptr %t1824, i64 %t1825, i1 false)
  %t1827 = insertvalue { i64, ptr } undef, i64 %t1823, 0
  %t1828 = insertvalue { i64, ptr } %t1827, ptr %t1826, 1
  %t1829 = load ptr, ptr %l628, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s70, ptr %t1829, { i64, ptr } %t1828)
  br label %bb249
bb249:
  store ptr %l14, ptr %l637, !tbaa !29
  %t1831 = load ptr, ptr %l10, !tbaa !29
  %t1832 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t1832, ptr %l639, !tbaa !27
  %t1833 = load i64, ptr %l72, !tbaa !24
  %t1835 = getelementptr { i64, ptr }, ptr %l639, i32 0, i32 1
  %t1836 = load ptr, ptr %t1835, !tbaa !27
  %t1837 = getelementptr i32, ptr %t1836, i64 %t1833
  %t1838 = load i32, ptr %t1837, !tbaa !33
  %t1841 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s70, ptr %t1831, i32 %t1838)
  store { i64, ptr } %t1841, ptr %l642
  br label %bb250
bb250:
  %t1842 = load i64, ptr %l72, !tbaa !24
  %t1843 = load i64, ptr %l72, !tbaa !24
  %t1844 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t1845 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
  %t1846 = load { i64, ptr }, ptr %l642, !tbaa !27
  %t1847 = extractvalue { i64, ptr } %t1846, 1
  %t1848 = extractvalue { i64, ptr } %t1846, 0
  %t1849 = add i64 %t1845, %t1848
  %t1850 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d349, i32 0, i32 1) }, 1
  %t1851 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d349, i32 0, i32 1) }, 0
  %t1852 = add i64 %t1849, %t1851
  %t1854 = call i64 @__olang_fmt_i64(ptr null, i64 %t1842)
  %t1855 = add i64 %t1852, %t1854
  %t1856 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t1857 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t1858 = add i64 %t1855, %t1857
  %t1860 = call i64 @__olang_fmt_i64(ptr null, i64 %t1843)
  %t1861 = add i64 %t1858, %t1860
  %t1862 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t1863 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t1864 = add i64 %t1861, %t1863
  %t1865 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1864)
  call void @olang_textcopy(ptr %t1865, ptr %t1844, i64 %t1845)
  %t1866 = getelementptr i8, ptr %t1865, i64 %t1845
  call void @olang_textcopy(ptr %t1866, ptr %t1847, i64 %t1848)
  %t1867 = getelementptr i8, ptr %t1866, i64 %t1848
  call void @olang_textcopy(ptr %t1867, ptr %t1850, i64 %t1851)
  %t1868 = getelementptr i8, ptr %t1867, i64 %t1851
  %t1869 = call i64 @__olang_fmt_i64(ptr %t1868, i64 %t1842)
  %t1870 = getelementptr i8, ptr %t1868, i64 %t1854
  call void @olang_textcopy(ptr %t1870, ptr %t1856, i64 %t1857)
  %t1871 = getelementptr i8, ptr %t1870, i64 %t1857
  %t1872 = call i64 @__olang_fmt_i64(ptr %t1871, i64 %t1843)
  %t1873 = getelementptr i8, ptr %t1871, i64 %t1860
  call void @olang_textcopy(ptr %t1873, ptr %t1862, i64 %t1863)
  %t1874 = insertvalue { i64, ptr } undef, i64 %t1864, 0
  %t1875 = insertvalue { i64, ptr } %t1874, ptr %t1865, 1
  %t1877 = extractvalue { i64, ptr } %t1875, 0
  %t1878 = extractvalue { i64, ptr } %t1875, 1
  %t1879 = mul i64 %t1877, 1
  %t1880 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1879)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1880, ptr %t1878, i64 %t1879, i1 false)
  %t1881 = insertvalue { i64, ptr } undef, i64 %t1877, 0
  %t1882 = insertvalue { i64, ptr } %t1881, ptr %t1880, 1
  %t1883 = load ptr, ptr %l637, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s70, ptr %t1883, { i64, ptr } %t1882)
  br label %bb251
bb251:
  call void @__olang_scope_close(ptr %s70)
  br label %bb252
bb252:
  %t1885 = load i64, ptr %l71, !tbaa !24
  %t1887 = add i64 %t1885, 1
  store i64 %t1887, ptr %l71, !tbaa !24
  br label %bb243
bb253:
  br label %bb254
bb254:
  br label %bb255
bb255:
  %t1889 = load ptr, ptr %l0, !tbaa !29
  %t1890 = load %"compiler/mir:Task", ptr %l7
  %t1891 = load i64, ptr %l22, !tbaa !24
  %t1892 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t1894 = extractvalue { i64, ptr } %t1892, 0
  %t1897 = add i64 %t1891, %t1894
  %t1898 = load i64, ptr %l6, !tbaa !24
  %t1901 = add i64 %t1897, %t1898
  %t1902 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskFix(ptr %v0, ptr %s0, ptr %v4, ptr %s54, ptr %t1889, ptr %l14, %"compiler/mir:Task" %t1890, i64 %t1901, { i64, ptr } %t1902, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d352, i32 0, i32 1) })
  br label %bb256
bb256:
  call void @__olang_scope_close(ptr %s54)
  br label %bb257
bb257:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l14, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d353, i32 0, i32 1) })
  br label %bb258
bb258:
  %t1909 = load ptr, ptr %l10, !tbaa !29
  store ptr %t1909, ptr %l660, !tbaa !29
  %t1910 = load ptr, ptr %lp13
  %t1911 = load { i64, ptr }, ptr %t1910, !tbaa !27
  store { i64, ptr } %t1911, ptr %l661, !tbaa !27
  %t1912 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  store i64 %t1912, ptr %l662, !tbaa !24
  %t1913 = ptrtoint ptr %s0 to i64
  store i64 %t1913, ptr %l663, !tbaa !24
  %t1914 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t1914, label %bb259, label %bb260
bb259:
  %t1916 = call ptr @__olang_region_make(ptr %s0)
  %t1917 = ptrtoint ptr %t1916 to i64
  store i64 %t1917, ptr %l663, !tbaa !24
  br label %bb260
bb260:
  %t1918 = load i64, ptr %l663
  %t1919 = inttoptr i64 %t1918 to ptr
  %t1921 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t1919, ptr %l14)
  store { i64, ptr } %t1921, ptr %l666
  br label %bb261
bb261:
  %t1922 = load { i64, ptr }, ptr %l666, !tbaa !27
  %t1923 = load i64, ptr %l663
  %t1924 = inttoptr i64 %t1923 to ptr
  %t1925 = extractvalue { i64, ptr } %t1922, 0
  %t1926 = extractvalue { i64, ptr } %t1922, 1
  %t1927 = mul i64 %t1925, 1
  %t1928 = call ptr @__olang_scope_alloc(ptr %t1924, i64 %t1927)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1928, ptr %t1926, i64 %t1927, i1 false)
  %t1929 = insertvalue { i64, ptr } undef, i64 %t1925, 0
  %t1930 = insertvalue { i64, ptr } %t1929, ptr %t1928, 1
  %t1931 = load ptr, ptr %l660, !tbaa !29
  %t1932 = load { i64, ptr }, ptr %l661, !tbaa !27
  %t1933 = load i64, ptr %l662, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v5, ptr %s0, ptr %s0, ptr %t1931, { i64, ptr } %t1932, i64 %t1933, { i64, ptr } %t1930, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d92, i32 0, i32 1) })
  br label %bb262
bb262:
  %t1935 = load ptr, ptr %lp13
  %t1936 = load { i64, ptr }, ptr %t1935, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t1936, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { { i64, ptr }, { i64, ptr } }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { { i64, ptr }, { i64, ptr } }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l21 = alloca i32
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l35 = alloca i32
  %l39 = alloca { i64, ptr }
  %l45 = alloca { { i64, ptr }, { i64, ptr } }
  %l61 = alloca { { i64, ptr }, { i64, ptr } }
  %l78 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l109 = alloca i32
  %l110 = alloca i64
  %l112 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l124 = alloca i64
  %l125 = alloca i64
  %l134 = alloca ptr
  %l135 = alloca { i64, ptr }
  %l137 = alloca i1
  %l138 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l165 = alloca i32
  %l176 = alloca ptr
  %l179 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l185 = alloca i64
  %l191 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l210 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l225 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s23 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [4 x i64] } %a3, ptr %l3
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
  %t10 = load { i64, [4 x i64] }, ptr %l3
  %t13 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t9, { i64, [4 x i64] } %t10)
  store i32 %t13, ptr %l35
  br label %bb1
bb1:
  %t14 = load i32, ptr %l35, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, [4 x i64] }, ptr %l3
  %t17 = load i32, ptr %l5, !tbaa !23
  %t21 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t15, { i64, [4 x i64] } %t16, i32 %t17)
  store { i64, ptr } %t21, ptr %l39
  br label %bb2
bb2:
  %t22 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t22, ptr %l6, !tbaa !27
  %t23 = load i32, ptr %l2, !range !{i32 0, i32 8}
  %t25 = trunc i64 0 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb9
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t30 = load i32, ptr %l5, !tbaa !23
  %t34 = call { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %s0, ptr %s1, ptr %t28, { i64, ptr } %t29, i32 %t30)
  store { { i64, ptr }, { i64, ptr } } %t34, ptr %l45
  br label %bb6
bb6:
  %t35 = load { { i64, ptr }, { i64, ptr } }, ptr %l45
  store { { i64, ptr }, { i64, ptr } } %t35, ptr %l7
  %t36 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l7, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l8, !tbaa !27
  %t39 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l7, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l9, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/emit:fnEm", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s1, ptr %t45, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d354, i32 0, i32 1) })
  br label %bb7
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t51 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d355, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d355, i32 0, i32 1) }, 0
  %t54 = extractvalue { i64, ptr } %t48, 1
  %t55 = extractvalue { i64, ptr } %t48, 0
  %t56 = add i64 %t52, %t55
  %t57 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d356, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d356, i32 0, i32 1) }, 0
  %t59 = add i64 %t56, %t58
  %t61 = extractvalue { i64, ptr } %t49, 1
  %t62 = extractvalue { i64, ptr } %t49, 0
  %t63 = add i64 %t59, %t62
  %t64 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d357, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d357, i32 0, i32 1) }, 0
  %t66 = add i64 %t63, %t65
  %t68 = extractvalue { i64, ptr } %t50, 1
  %t69 = extractvalue { i64, ptr } %t50, 0
  %t70 = add i64 %t66, %t69
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d358, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d358, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t51, i64 %t52)
  %t75 = getelementptr i8, ptr %t74, i64 %t52
  call void @olang_textcopy(ptr %t75, ptr %t54, i64 %t55)
  %t76 = getelementptr i8, ptr %t75, i64 %t55
  call void @olang_textcopy(ptr %t76, ptr %t57, i64 %t58)
  %t77 = getelementptr i8, ptr %t76, i64 %t58
  call void @olang_textcopy(ptr %t77, ptr %t61, i64 %t62)
  %t78 = getelementptr i8, ptr %t77, i64 %t62
  call void @olang_textcopy(ptr %t78, ptr %t64, i64 %t65)
  %t79 = getelementptr i8, ptr %t78, i64 %t65
  call void @olang_textcopy(ptr %t79, ptr %t68, i64 %t69)
  %t80 = getelementptr i8, ptr %t79, i64 %t69
  call void @olang_textcopy(ptr %t80, ptr %t71, i64 %t72)
  %t81 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t74, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = extractvalue { i64, ptr } %t82, 1
  %t86 = mul i64 %t84, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t86)
  call void @llvm.memcpy.p0.p0.i64(ptr %t87, ptr %t85, i64 %t86, i1 false)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s1, ptr %t47, { i64, ptr } %t89)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb101
bb9:
  %t92 = load i32, ptr %l2, !range !{i32 0, i32 8}
  %t94 = trunc i64 1 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb15
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t99 = load i32, ptr %l5, !tbaa !23
  %t103 = call { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %s0, ptr %s3, ptr %t97, { i64, ptr } %t98, i32 %t99)
  store { { i64, ptr }, { i64, ptr } } %t103, ptr %l61
  br label %bb13
bb13:
  %t104 = load { { i64, ptr }, { i64, ptr } }, ptr %l61
  store { { i64, ptr }, { i64, ptr } } %t104, ptr %l10
  %t105 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l10, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  %t108 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l10, i32 0, i32 1
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2equoted(ptr %v0, ptr %v1, ptr %s3, ptr %s3, ptr %t111, { i64, ptr } %t112, { i64, ptr } %t106, { i64, ptr } %t109, i64 34)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb101
bb15:
  %t119 = load i32, ptr %l2, !range !{i32 0, i32 8}
  %t121 = trunc i64 2 to i32
  %t122 = icmp eq i32 %t119, %t121
  br i1 %t122, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb24
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/emit:fnEm", ptr %t124, i32 0, i32 0
  %t127 = load ptr, ptr %t126, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s4, ptr %t127, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d359, i32 0, i32 1) })
  br label %bb19
bb19:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/emit:fnEm", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s4, ptr %t132, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d360, i32 0, i32 1) })
  br label %bb20
bb20:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t136 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
  %t139 = extractvalue { i64, ptr } %t135, 1
  %t140 = extractvalue { i64, ptr } %t135, 0
  %t141 = add i64 %t137, %t140
  %t142 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d362, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d362, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t144)
  call void @olang_textcopy(ptr %t145, ptr %t136, i64 %t137)
  %t146 = getelementptr i8, ptr %t145, i64 %t137
  call void @olang_textcopy(ptr %t146, ptr %t139, i64 %t140)
  %t147 = getelementptr i8, ptr %t146, i64 %t140
  call void @olang_textcopy(ptr %t147, ptr %t142, i64 %t143)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t145, 1
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t152 = extractvalue { i64, ptr } %t149, 1
  %t153 = mul i64 %t151, 1
  %t154 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t153)
  call void @llvm.memcpy.p0.p0.i64(ptr %t154, ptr %t152, i64 %t153, i1 false)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  %t159 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %s4, ptr %t134, { i64, ptr } %t156)
  store { i64, ptr } %t159, ptr %l78
  br label %bb21
bb21:
  %t160 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s4, ptr %s0, ptr %s4, ptr %s4, ptr %t161, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d363, i32 0, i32 1) }, { i64, ptr } %t162, { i64, ptr } %t160, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb22
bb22:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t169 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d364, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d364, i32 0, i32 1) }, 0
  %t172 = extractvalue { i64, ptr } %t168, 1
  %t173 = extractvalue { i64, ptr } %t168, 0
  %t174 = add i64 %t170, %t173
  %t175 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d365, i32 0, i32 1) }, 1
  %t176 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d365, i32 0, i32 1) }, 0
  %t177 = add i64 %t174, %t176
  %t178 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t177)
  call void @olang_textcopy(ptr %t178, ptr %t169, i64 %t170)
  %t179 = getelementptr i8, ptr %t178, i64 %t170
  call void @olang_textcopy(ptr %t179, ptr %t172, i64 %t173)
  %t180 = getelementptr i8, ptr %t179, i64 %t173
  call void @olang_textcopy(ptr %t180, ptr %t175, i64 %t176)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t178, 1
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t185 = extractvalue { i64, ptr } %t182, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s4, ptr %t167, { i64, ptr } %t189)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb101
bb24:
  %t192 = load i32, ptr %l2, !range !{i32 0, i32 8}
  %t194 = trunc i64 3 to i32
  %t195 = icmp eq i32 %t192, %t194
  br i1 %t195, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb31
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s7, ptr %s7, ptr %t197, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d366, i32 0, i32 1) }, i64 0)
  store { i64, ptr } %t199, ptr %l89
  br label %bb28
bb28:
  %t200 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t200, ptr %l14, !tbaa !27
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s7, ptr %s0, ptr %s7, ptr %s7, ptr %t201, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d367, i32 0, i32 1) }, { i64, ptr } %t202, { i64, ptr } %t203, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb29
bb29:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t209 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2equoted(ptr %v0, ptr %v1, ptr %s7, ptr %s7, ptr %t207, { i64, ptr } %t208, { i64, ptr } %t209, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d368, i32 0, i32 1) }, i64 39)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s7)
  br label %bb101
bb31:
  %t213 = load i32, ptr %l2, !range !{i32 0, i32 8}
  %t215 = trunc i64 4 to i32
  %t216 = icmp eq i32 %t213, %t215
  br i1 %t216, label %bb32, label %bb33
bb32:
  br label %bb36
bb33:
  %t218 = load i32, ptr %l2, !range !{i32 0, i32 8}
  %t220 = trunc i64 5 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb62
bb36:
  store %olang.scope zeroinitializer, ptr %s8
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/emit:fnEm", ptr %t223, i32 0, i32 0
  %t226 = load ptr, ptr %t225, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s8, ptr %t226, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d369, i32 0, i32 1) })
  br label %bb37
bb37:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/emit:fnEm", ptr %t228, i32 0, i32 0
  %t231 = load ptr, ptr %t230, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s8, ptr %t231, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d370, i32 0, i32 1) })
  br label %bb38
bb38:
  %t233 = load i32, ptr %l2, !range !{i32 0, i32 8}
  %t235 = trunc i64 5 to i32
  %t236 = icmp eq i32 %t233, %t235
  store i1 %t236, ptr %l15, !tbaa !21
  %t238 = load ptr, ptr %l4, !tbaa !29
  store ptr %t238, ptr %l106, !tbaa !29
  %t239 = load ptr, ptr %l4, !tbaa !29
  %t240 = load i32, ptr %l5, !tbaa !23
  %t243 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t239, i32 %t240)
  store i32 %t243, ptr %l109
  br label %bb39
bb39:
  %t244 = load ptr, ptr %l106, !tbaa !29
  %t245 = load i32, ptr %l109, !tbaa !23
  %t246 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t244, i32 %t245)
  store i64 %t246, ptr %l110
  br label %bb40
bb40:
  %t247 = load i64, ptr %l110, !tbaa !24
  %t248 = icmp sgt i64 %t247, 64
  br i1 %t248, label %bb41, label %bb42
bb41:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d371, i32 0, i32 1) }, ptr %l112, !tbaa !27
  br label %bb43
bb42:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d372, i32 0, i32 1) }, ptr %l112, !tbaa !27
  br label %bb43
bb43:
  %t250 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t250, ptr %l16, !tbaa !27
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t253 = load i32, ptr %l5, !tbaa !23
  %t254 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t255 = load i1, ptr %l15, !tbaa !21
  %t256 = load ptr, ptr @__olang_prog_scope
  %t262 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eextend(ptr %v0, ptr %s0, ptr %t256, ptr %s8, ptr %t251, { i64, ptr } %t252, i32 %t253, { i64, ptr } %t254, i1 %t255)
  store { i64, ptr } %t262, ptr %l118
  br label %bb44
bb44:
  %t263 = load { i64, ptr }, ptr %l118, !tbaa !27
  store { i64, ptr } %t263, ptr %l17, !tbaa !27
  %t264 = load i1, ptr %l15, !tbaa !21
  br i1 %t264, label %bb45, label %bb46
bb45:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d373, i32 0, i32 1) }, ptr %l120, !tbaa !27
  br label %bb47
bb46:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d374, i32 0, i32 1) }, ptr %l120, !tbaa !27
  br label %bb47
bb47:
  %t266 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t266, ptr %l121, !tbaa !27
  %t267 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t267, 0
  store i64 %t270, ptr %l124, !tbaa !24
  %t271 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 0
  store i64 %t272, ptr %l125, !tbaa !24
  %t273 = icmp sge i64 1, 0
  br i1 %t273, label %bb48, label %bb49
bb48:
  %t275 = load i64, ptr %l124, !tbaa !24
  %t276 = icmp sle i64 1, %t275
  br i1 %t276, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_843b4d3d5fe86d0c_7c8978725a4736a0)
  unreachable
bb50:
  %t278 = load i64, ptr %l124, !tbaa !24
  %t279 = load i64, ptr %l125, !tbaa !24
  %t280 = icmp sle i64 %t278, %t279
  br i1 %t280, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_843b4d3d5fe86d0c_7c8978725a4736a0)
  unreachable
bb52:
  %t282 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = load i64, ptr %l124, !tbaa !24
  %t285 = getelementptr i8, ptr %t283, i64 1
  %t286 = sub i64 %t284, 1
  %t287 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t285, 1
  %t289 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 1
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t293 = extractvalue { i64, ptr } %t288, 1
  %t294 = extractvalue { i64, ptr } %t288, 0
  %t295 = add i64 %t291, %t294
  %t296 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t295)
  call void @olang_textcopy(ptr %t296, ptr %t290, i64 %t291)
  %t297 = getelementptr i8, ptr %t296, i64 %t291
  call void @olang_textcopy(ptr %t297, ptr %t293, i64 %t294)
  %t298 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t296, 1
  store { i64, ptr } %t299, ptr %l18, !tbaa !27
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/emit:fnEm", ptr %t301, i32 0, i32 0
  %t304 = load ptr, ptr %t303, !tbaa !29
  %t305 = load { i64, ptr }, ptr %l18, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s8, ptr %t304, { i64, ptr } %t305)
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_843b4d3d5fe86d0c_7c8978725a4736a0)
  unreachable
bb54:
  %t308 = load ptr, ptr %l0, !tbaa !29
  store ptr %t308, ptr %l134, !tbaa !29
  %t309 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t309, ptr %l135, !tbaa !27
  %t310 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t311 = load ptr, ptr @__olang_prog_scope
  %t313 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t311, ptr %s8, { i64, ptr } %t310, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d375, i32 0, i32 1) })
  store i1 %t313, ptr %l137
  br label %bb55
bb55:
  %t314 = load i1, ptr %l137, !tbaa !21
  br i1 %t314, label %bb56, label %bb57
bb56:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d376, i32 0, i32 1) }, ptr %l138, !tbaa !27
  br label %bb58
bb57:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d377, i32 0, i32 1) }, ptr %l138, !tbaa !27
  br label %bb58
bb58:
  %t315 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d378, i32 0, i32 1) }, 1
  %t316 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d378, i32 0, i32 1) }, 0
  %t317 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t317, 1
  %t319 = extractvalue { i64, ptr } %t317, 0
  %t320 = add i64 %t316, %t319
  %t321 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t322 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
  %t323 = add i64 %t320, %t322
  %t324 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t324, 1
  %t326 = extractvalue { i64, ptr } %t324, 0
  %t327 = add i64 %t323, %t326
  %t328 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d380, i32 0, i32 1) }, 1
  %t329 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d380, i32 0, i32 1) }, 0
  %t330 = add i64 %t327, %t329
  %t331 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t330)
  call void @olang_textcopy(ptr %t331, ptr %t315, i64 %t316)
  %t332 = getelementptr i8, ptr %t331, i64 %t316
  call void @olang_textcopy(ptr %t332, ptr %t318, i64 %t319)
  %t333 = getelementptr i8, ptr %t332, i64 %t319
  call void @olang_textcopy(ptr %t333, ptr %t321, i64 %t322)
  %t334 = getelementptr i8, ptr %t333, i64 %t322
  call void @olang_textcopy(ptr %t334, ptr %t325, i64 %t326)
  %t335 = getelementptr i8, ptr %t334, i64 %t326
  call void @olang_textcopy(ptr %t335, ptr %t328, i64 %t329)
  %t336 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t337 = insertvalue { i64, ptr } %t336, ptr %t331, 1
  %t339 = extractvalue { i64, ptr } %t337, 0
  %t340 = extractvalue { i64, ptr } %t337, 1
  %t341 = mul i64 %t339, 1
  %t342 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t341)
  call void @llvm.memcpy.p0.p0.i64(ptr %t342, ptr %t340, i64 %t341, i1 false)
  %t343 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t344 = insertvalue { i64, ptr } %t343, ptr %t342, 1
  %t345 = load ptr, ptr %l134, !tbaa !29
  %t347 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s8, ptr %s8, ptr %t345, { i64, ptr } %t344)
  store { i64, ptr } %t347, ptr %l141
  br label %bb59
bb59:
  %t348 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t352 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t353 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t354 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d381, i32 0, i32 1) }, 1
  %t355 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d381, i32 0, i32 1) }, 0
  %t357 = extractvalue { i64, ptr } %t350, 1
  %t358 = extractvalue { i64, ptr } %t350, 0
  %t359 = add i64 %t355, %t358
  %t360 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d382, i32 0, i32 1) }, 1
  %t361 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d382, i32 0, i32 1) }, 0
  %t362 = add i64 %t359, %t361
  %t364 = extractvalue { i64, ptr } %t348, 1
  %t365 = extractvalue { i64, ptr } %t348, 0
  %t366 = add i64 %t362, %t365
  %t367 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t368 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
  %t369 = add i64 %t366, %t368
  %t371 = extractvalue { i64, ptr } %t352, 1
  %t372 = extractvalue { i64, ptr } %t352, 0
  %t373 = add i64 %t369, %t372
  %t374 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d384, i32 0, i32 1) }, 1
  %t375 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d384, i32 0, i32 1) }, 0
  %t376 = add i64 %t373, %t375
  %t378 = extractvalue { i64, ptr } %t353, 1
  %t379 = extractvalue { i64, ptr } %t353, 0
  %t380 = add i64 %t376, %t379
  %t381 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d385, i32 0, i32 1) }, 1
  %t382 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d385, i32 0, i32 1) }, 0
  %t383 = add i64 %t380, %t382
  %t384 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t383)
  call void @olang_textcopy(ptr %t384, ptr %t354, i64 %t355)
  %t385 = getelementptr i8, ptr %t384, i64 %t355
  call void @olang_textcopy(ptr %t385, ptr %t357, i64 %t358)
  %t386 = getelementptr i8, ptr %t385, i64 %t358
  call void @olang_textcopy(ptr %t386, ptr %t360, i64 %t361)
  %t387 = getelementptr i8, ptr %t386, i64 %t361
  call void @olang_textcopy(ptr %t387, ptr %t364, i64 %t365)
  %t388 = getelementptr i8, ptr %t387, i64 %t365
  call void @olang_textcopy(ptr %t388, ptr %t367, i64 %t368)
  %t389 = getelementptr i8, ptr %t388, i64 %t368
  call void @olang_textcopy(ptr %t389, ptr %t371, i64 %t372)
  %t390 = getelementptr i8, ptr %t389, i64 %t372
  call void @olang_textcopy(ptr %t390, ptr %t374, i64 %t375)
  %t391 = getelementptr i8, ptr %t390, i64 %t375
  call void @olang_textcopy(ptr %t391, ptr %t378, i64 %t379)
  %t392 = getelementptr i8, ptr %t391, i64 %t379
  call void @olang_textcopy(ptr %t392, ptr %t381, i64 %t382)
  %t393 = insertvalue { i64, ptr } undef, i64 %t383, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t384, 1
  %t396 = extractvalue { i64, ptr } %t394, 0
  %t397 = extractvalue { i64, ptr } %t394, 1
  %t398 = mul i64 %t396, 1
  %t399 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t398)
  call void @llvm.memcpy.p0.p0.i64(ptr %t399, ptr %t397, i64 %t398, i1 false)
  %t400 = insertvalue { i64, ptr } undef, i64 %t396, 0
  %t401 = insertvalue { i64, ptr } %t400, ptr %t399, 1
  %t404 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s8, ptr %s8, ptr %t349, { i64, ptr } %t401)
  store { i64, ptr } %t404, ptr %l149
  br label %bb60
bb60:
  %t405 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t409 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d386, i32 0, i32 1) }, 1
  %t410 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d386, i32 0, i32 1) }, 0
  %t412 = extractvalue { i64, ptr } %t407, 1
  %t413 = extractvalue { i64, ptr } %t407, 0
  %t414 = add i64 %t410, %t413
  %t415 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d387, i32 0, i32 1) }, 1
  %t416 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d387, i32 0, i32 1) }, 0
  %t417 = add i64 %t414, %t416
  %t419 = extractvalue { i64, ptr } %t405, 1
  %t420 = extractvalue { i64, ptr } %t405, 0
  %t421 = add i64 %t417, %t420
  %t422 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d388, i32 0, i32 1) }, 1
  %t423 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d388, i32 0, i32 1) }, 0
  %t424 = add i64 %t421, %t423
  %t425 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t424)
  call void @olang_textcopy(ptr %t425, ptr %t409, i64 %t410)
  %t426 = getelementptr i8, ptr %t425, i64 %t410
  call void @olang_textcopy(ptr %t426, ptr %t412, i64 %t413)
  %t427 = getelementptr i8, ptr %t426, i64 %t413
  call void @olang_textcopy(ptr %t427, ptr %t415, i64 %t416)
  %t428 = getelementptr i8, ptr %t427, i64 %t416
  call void @olang_textcopy(ptr %t428, ptr %t419, i64 %t420)
  %t429 = getelementptr i8, ptr %t428, i64 %t420
  call void @olang_textcopy(ptr %t429, ptr %t422, i64 %t423)
  %t430 = insertvalue { i64, ptr } undef, i64 %t424, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr %t425, 1
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t434 = extractvalue { i64, ptr } %t431, 1
  %t435 = mul i64 %t433, 1
  %t436 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t435)
  call void @llvm.memcpy.p0.p0.i64(ptr %t436, ptr %t434, i64 %t435, i1 false)
  %t437 = insertvalue { i64, ptr } undef, i64 %t433, 0
  %t438 = insertvalue { i64, ptr } %t437, ptr %t436, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s8, ptr %t406, { i64, ptr } %t438)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s8)
  br label %bb101
bb62:
  %t441 = load i32, ptr %l2, !range !{i32 0, i32 8}
  %t443 = trunc i64 6 to i32
  %t444 = icmp eq i32 %t441, %t443
  br i1 %t444, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb90
bb65:
  store %olang.scope zeroinitializer, ptr %s13
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = getelementptr %"compiler/emit:fnEm", ptr %t446, i32 0, i32 0
  %t449 = load ptr, ptr %t448, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s13, ptr %t449, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d389, i32 0, i32 1) })
  br label %bb66
bb66:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr %"compiler/emit:fnEm", ptr %t451, i32 0, i32 0
  %t454 = load ptr, ptr %t453, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s13, ptr %t454, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d390, i32 0, i32 1) })
  br label %bb67
bb67:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/emit:fnEm", ptr %t456, i32 0, i32 0
  %t459 = load ptr, ptr %t458, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s13, ptr %t459, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d391, i32 0, i32 1) })
  br label %bb68
bb68:
  %t461 = load ptr, ptr %l4, !tbaa !29
  %t462 = load i32, ptr %l5, !tbaa !23
  %t465 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t461, i32 %t462)
  store i32 %t465, ptr %l165
  br label %bb69
bb69:
  %t466 = load i32, ptr %l165, !tbaa !23
  store i32 %t466, ptr %l21, !tbaa !23
  store i64 0, ptr %l22, !tbaa !24
  %t467 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t469 = extractvalue { i64, ptr } %t467, 1
  %t470 = extractvalue { i64, ptr } %t467, 0
  %t471 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t470)
  call void @olang_textcopy(ptr %t471, ptr %t469, i64 %t470)
  %t472 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t473 = insertvalue { i64, ptr } %t472, ptr %t471, 1
  store { i64, ptr } %t473, ptr %l23, !tbaa !27
  %t475 = load i32, ptr %l21, !tbaa !23
  %t477 = icmp eq i32 %t475, 13
  br i1 %t477, label %bb70, label %bb71
bb70:
  store i64 1, ptr %l22, !tbaa !24
  br label %bb72
bb71:
  br label %bb72
bb72:
  %t479 = load i32, ptr %l21, !tbaa !23
  %t481 = icmp eq i32 %t479, 11
  br i1 %t481, label %bb73, label %bb74
bb73:
  store i64 2, ptr %l22, !tbaa !24
  br label %bb75
bb74:
  br label %bb75
bb75:
  %t483 = load i32, ptr %l21, !tbaa !23
  %t485 = icmp eq i32 %t483, 12
  br i1 %t485, label %bb76, label %bb77
bb76:
  store i64 3, ptr %l22, !tbaa !24
  br label %bb78
bb77:
  br label %bb78
bb78:
  %t487 = load i64, ptr %l22, !tbaa !24
  %t489 = icmp ne i64 %t487, 0
  br i1 %t489, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s18
  %t491 = load ptr, ptr %l0, !tbaa !29
  store ptr %t491, ptr %l176, !tbaa !29
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t493 = load i32, ptr %l21, !tbaa !23
  %t496 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s18, ptr %t492, i32 %t493)
  store { i64, ptr } %t496, ptr %l179
  br label %bb81
bb80:
  br label %bb86
bb81:
  %t497 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t498 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d392, i32 0, i32 1) }, 1
  %t499 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d392, i32 0, i32 1) }, 0
  %t500 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t501 = extractvalue { i64, ptr } %t500, 1
  %t502 = extractvalue { i64, ptr } %t500, 0
  %t503 = add i64 %t499, %t502
  %t504 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d393, i32 0, i32 1) }, 1
  %t505 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d393, i32 0, i32 1) }, 0
  %t506 = add i64 %t503, %t505
  %t508 = extractvalue { i64, ptr } %t497, 1
  %t509 = extractvalue { i64, ptr } %t497, 0
  %t510 = add i64 %t506, %t509
  %t511 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d394, i32 0, i32 1) }, 1
  %t512 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d394, i32 0, i32 1) }, 0
  %t513 = add i64 %t510, %t512
  %t514 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t513)
  call void @olang_textcopy(ptr %t514, ptr %t498, i64 %t499)
  %t515 = getelementptr i8, ptr %t514, i64 %t499
  call void @olang_textcopy(ptr %t515, ptr %t501, i64 %t502)
  %t516 = getelementptr i8, ptr %t515, i64 %t502
  call void @olang_textcopy(ptr %t516, ptr %t504, i64 %t505)
  %t517 = getelementptr i8, ptr %t516, i64 %t505
  call void @olang_textcopy(ptr %t517, ptr %t508, i64 %t509)
  %t518 = getelementptr i8, ptr %t517, i64 %t509
  call void @olang_textcopy(ptr %t518, ptr %t511, i64 %t512)
  %t519 = insertvalue { i64, ptr } undef, i64 %t513, 0
  %t520 = insertvalue { i64, ptr } %t519, ptr %t514, 1
  %t522 = extractvalue { i64, ptr } %t520, 0
  %t523 = extractvalue { i64, ptr } %t520, 1
  %t524 = mul i64 %t522, 1
  %t525 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t524)
  call void @llvm.memcpy.p0.p0.i64(ptr %t525, ptr %t523, i64 %t524, i1 false)
  %t526 = insertvalue { i64, ptr } undef, i64 %t522, 0
  %t527 = insertvalue { i64, ptr } %t526, ptr %t525, 1
  %t528 = load ptr, ptr %l176, !tbaa !29
  %t530 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s13, ptr %s13, ptr %t528, { i64, ptr } %t527)
  store { i64, ptr } %t530, ptr %l183
  br label %bb82
bb82:
  %t531 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t532 = extractvalue { i64, ptr } %t531, 0
  %t533 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t534 = extractvalue { i64, ptr } %t533, 0
  store i64 %t534, ptr %l185, !tbaa !24
  %t536 = load i64, ptr %l185, !tbaa !24
  %t537 = icmp eq i64 %t532, %t536
  br i1 %t537, label %bb83, label %bb84
bb83:
  %t539 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t540 = load ptr, ptr %t539, !tbaa !27
  %t541 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !27
  %t543 = load i64, ptr %l185, !tbaa !24
  %t544 = mul i64 %t543, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t540, ptr %t542, i64 %t544, i1 false)
  br label %bb85
bb84:
  %t545 = load { i64, ptr }, ptr %l183, !tbaa !27
  store { i64, ptr } %t545, ptr %l23, !tbaa !27
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s18)
  br label %bb86
bb86:
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t548 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d395, i32 0, i32 1) }, 1
  %t549 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d395, i32 0, i32 1) }, 0
  %t551 = extractvalue { i64, ptr } %t547, 1
  %t552 = extractvalue { i64, ptr } %t547, 0
  %t553 = add i64 %t549, %t552
  %t554 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d396, i32 0, i32 1) }, 1
  %t555 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d396, i32 0, i32 1) }, 0
  %t556 = add i64 %t553, %t555
  %t557 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t556)
  call void @olang_textcopy(ptr %t557, ptr %t548, i64 %t549)
  %t558 = getelementptr i8, ptr %t557, i64 %t549
  call void @olang_textcopy(ptr %t558, ptr %t551, i64 %t552)
  %t559 = getelementptr i8, ptr %t558, i64 %t552
  call void @olang_textcopy(ptr %t559, ptr %t554, i64 %t555)
  %t560 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t561 = insertvalue { i64, ptr } %t560, ptr %t557, 1
  %t563 = extractvalue { i64, ptr } %t561, 0
  %t564 = extractvalue { i64, ptr } %t561, 1
  %t565 = mul i64 %t563, 1
  %t566 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t565)
  call void @llvm.memcpy.p0.p0.i64(ptr %t566, ptr %t564, i64 %t565, i1 false)
  %t567 = insertvalue { i64, ptr } undef, i64 %t563, 0
  %t568 = insertvalue { i64, ptr } %t567, ptr %t566, 1
  %t571 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s13, ptr %s13, ptr %t546, { i64, ptr } %t568)
  store { i64, ptr } %t571, ptr %l191
  br label %bb87
bb87:
  %t572 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t576 = load i64, ptr %l22, !tbaa !24
  %t577 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d397, i32 0, i32 1) }, 1
  %t578 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d397, i32 0, i32 1) }, 0
  %t580 = extractvalue { i64, ptr } %t572, 1
  %t581 = extractvalue { i64, ptr } %t572, 0
  %t582 = add i64 %t578, %t581
  %t583 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t584 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
  %t585 = add i64 %t582, %t584
  %t587 = extractvalue { i64, ptr } %t575, 1
  %t588 = extractvalue { i64, ptr } %t575, 0
  %t589 = add i64 %t585, %t588
  %t590 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d399, i32 0, i32 1) }, 1
  %t591 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d399, i32 0, i32 1) }, 0
  %t592 = add i64 %t589, %t591
  %t594 = call i64 @__olang_fmt_i64(ptr null, i64 %t576)
  %t595 = add i64 %t592, %t594
  %t596 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d400, i32 0, i32 1) }, 1
  %t597 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d400, i32 0, i32 1) }, 0
  %t598 = add i64 %t595, %t597
  %t599 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t598)
  call void @olang_textcopy(ptr %t599, ptr %t577, i64 %t578)
  %t600 = getelementptr i8, ptr %t599, i64 %t578
  call void @olang_textcopy(ptr %t600, ptr %t580, i64 %t581)
  %t601 = getelementptr i8, ptr %t600, i64 %t581
  call void @olang_textcopy(ptr %t601, ptr %t583, i64 %t584)
  %t602 = getelementptr i8, ptr %t601, i64 %t584
  call void @olang_textcopy(ptr %t602, ptr %t587, i64 %t588)
  %t603 = getelementptr i8, ptr %t602, i64 %t588
  call void @olang_textcopy(ptr %t603, ptr %t590, i64 %t591)
  %t604 = getelementptr i8, ptr %t603, i64 %t591
  %t605 = call i64 @__olang_fmt_i64(ptr %t604, i64 %t576)
  %t606 = getelementptr i8, ptr %t604, i64 %t594
  call void @olang_textcopy(ptr %t606, ptr %t596, i64 %t597)
  %t607 = insertvalue { i64, ptr } undef, i64 %t598, 0
  %t608 = insertvalue { i64, ptr } %t607, ptr %t599, 1
  %t610 = extractvalue { i64, ptr } %t608, 0
  %t611 = extractvalue { i64, ptr } %t608, 1
  %t612 = mul i64 %t610, 1
  %t613 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t612)
  call void @llvm.memcpy.p0.p0.i64(ptr %t613, ptr %t611, i64 %t612, i1 false)
  %t614 = insertvalue { i64, ptr } undef, i64 %t610, 0
  %t615 = insertvalue { i64, ptr } %t614, ptr %t613, 1
  %t618 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s13, ptr %s13, ptr %t573, { i64, ptr } %t615)
  store { i64, ptr } %t618, ptr %l198
  br label %bb88
bb88:
  %t619 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t621 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t623 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d401, i32 0, i32 1) }, 1
  %t624 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d401, i32 0, i32 1) }, 0
  %t626 = extractvalue { i64, ptr } %t621, 1
  %t627 = extractvalue { i64, ptr } %t621, 0
  %t628 = add i64 %t624, %t627
  %t629 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d402, i32 0, i32 1) }, 1
  %t630 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d402, i32 0, i32 1) }, 0
  %t631 = add i64 %t628, %t630
  %t633 = extractvalue { i64, ptr } %t619, 1
  %t634 = extractvalue { i64, ptr } %t619, 0
  %t635 = add i64 %t631, %t634
  %t636 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d403, i32 0, i32 1) }, 1
  %t637 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d403, i32 0, i32 1) }, 0
  %t638 = add i64 %t635, %t637
  %t639 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t638)
  call void @olang_textcopy(ptr %t639, ptr %t623, i64 %t624)
  %t640 = getelementptr i8, ptr %t639, i64 %t624
  call void @olang_textcopy(ptr %t640, ptr %t626, i64 %t627)
  %t641 = getelementptr i8, ptr %t640, i64 %t627
  call void @olang_textcopy(ptr %t641, ptr %t629, i64 %t630)
  %t642 = getelementptr i8, ptr %t641, i64 %t630
  call void @olang_textcopy(ptr %t642, ptr %t633, i64 %t634)
  %t643 = getelementptr i8, ptr %t642, i64 %t634
  call void @olang_textcopy(ptr %t643, ptr %t636, i64 %t637)
  %t644 = insertvalue { i64, ptr } undef, i64 %t638, 0
  %t645 = insertvalue { i64, ptr } %t644, ptr %t639, 1
  %t647 = extractvalue { i64, ptr } %t645, 0
  %t648 = extractvalue { i64, ptr } %t645, 1
  %t649 = mul i64 %t647, 1
  %t650 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t649)
  call void @llvm.memcpy.p0.p0.i64(ptr %t650, ptr %t648, i64 %t649, i1 false)
  %t651 = insertvalue { i64, ptr } undef, i64 %t647, 0
  %t652 = insertvalue { i64, ptr } %t651, ptr %t650, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s13, ptr %t620, { i64, ptr } %t652)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s13)
  br label %bb101
bb90:
  %t655 = load i32, ptr %l2, !range !{i32 0, i32 8}
  %t657 = trunc i64 7 to i32
  %t658 = icmp eq i32 %t655, %t657
  br i1 %t658, label %bb91, label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb100
bb93:
  store %olang.scope zeroinitializer, ptr %s23
  %t660 = load ptr, ptr %l0, !tbaa !29
  %t662 = getelementptr %"compiler/emit:fnEm", ptr %t660, i32 0, i32 0
  %t663 = load ptr, ptr %t662, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s23, ptr %t663, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d404, i32 0, i32 1) })
  br label %bb94
bb94:
  %t665 = load ptr, ptr %l0, !tbaa !29
  %t667 = getelementptr %"compiler/emit:fnEm", ptr %t665, i32 0, i32 0
  %t668 = load ptr, ptr %t667, !tbaa !29
  %t670 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s23, ptr %s23, ptr %t668, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d405, i32 0, i32 1) })
  store { i64, ptr } %t670, ptr %l210
  br label %bb95
bb95:
  %t671 = load { i64, ptr }, ptr %l210, !tbaa !27
  store { i64, ptr } %t671, ptr %l26, !tbaa !27
  %t672 = load ptr, ptr %l0, !tbaa !29
  %t674 = getelementptr %"compiler/emit:fnEm", ptr %t672, i32 0, i32 0
  %t675 = load ptr, ptr %t674, !tbaa !29
  %t677 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s23, ptr %s23, ptr %t675, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d406, i32 0, i32 1) })
  store { i64, ptr } %t677, ptr %l213
  br label %bb96
bb96:
  %t678 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t680 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t681 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t683 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d407, i32 0, i32 1) }, 1
  %t684 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d407, i32 0, i32 1) }, 0
  %t686 = extractvalue { i64, ptr } %t680, 1
  %t687 = extractvalue { i64, ptr } %t680, 0
  %t688 = add i64 %t684, %t687
  %t689 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d408, i32 0, i32 1) }, 1
  %t690 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d408, i32 0, i32 1) }, 0
  %t691 = add i64 %t688, %t690
  %t693 = extractvalue { i64, ptr } %t681, 1
  %t694 = extractvalue { i64, ptr } %t681, 0
  %t695 = add i64 %t691, %t694
  %t696 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d408, i32 0, i32 1) }, 1
  %t697 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d408, i32 0, i32 1) }, 0
  %t698 = add i64 %t695, %t697
  %t700 = extractvalue { i64, ptr } %t678, 1
  %t701 = extractvalue { i64, ptr } %t678, 0
  %t702 = add i64 %t698, %t701
  %t703 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t702)
  call void @olang_textcopy(ptr %t703, ptr %t683, i64 %t684)
  %t704 = getelementptr i8, ptr %t703, i64 %t684
  call void @olang_textcopy(ptr %t704, ptr %t686, i64 %t687)
  %t705 = getelementptr i8, ptr %t704, i64 %t687
  call void @olang_textcopy(ptr %t705, ptr %t689, i64 %t690)
  %t706 = getelementptr i8, ptr %t705, i64 %t690
  call void @olang_textcopy(ptr %t706, ptr %t693, i64 %t694)
  %t707 = getelementptr i8, ptr %t706, i64 %t694
  call void @olang_textcopy(ptr %t707, ptr %t696, i64 %t697)
  %t708 = getelementptr i8, ptr %t707, i64 %t697
  call void @olang_textcopy(ptr %t708, ptr %t700, i64 %t701)
  %t709 = insertvalue { i64, ptr } undef, i64 %t702, 0
  %t710 = insertvalue { i64, ptr } %t709, ptr %t703, 1
  %t712 = extractvalue { i64, ptr } %t710, 0
  %t713 = extractvalue { i64, ptr } %t710, 1
  %t714 = mul i64 %t712, 1
  %t715 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t714)
  call void @llvm.memcpy.p0.p0.i64(ptr %t715, ptr %t713, i64 %t714, i1 false)
  %t716 = insertvalue { i64, ptr } undef, i64 %t712, 0
  %t717 = insertvalue { i64, ptr } %t716, ptr %t715, 1
  %t720 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s23, ptr %s23, ptr %t679, { i64, ptr } %t717)
  store { i64, ptr } %t720, ptr %l220
  br label %bb97
bb97:
  %t721 = load { i64, ptr }, ptr %l220, !tbaa !27
  store { i64, ptr } %t721, ptr %l28, !tbaa !27
  %t722 = load ptr, ptr %l0, !tbaa !29
  %t723 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t724 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d409, i32 0, i32 1) }, 1
  %t725 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d409, i32 0, i32 1) }, 0
  %t727 = extractvalue { i64, ptr } %t723, 1
  %t728 = extractvalue { i64, ptr } %t723, 0
  %t729 = add i64 %t725, %t728
  %t730 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d410, i32 0, i32 1) }, 1
  %t731 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d410, i32 0, i32 1) }, 0
  %t732 = add i64 %t729, %t731
  %t733 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t732)
  call void @olang_textcopy(ptr %t733, ptr %t724, i64 %t725)
  %t734 = getelementptr i8, ptr %t733, i64 %t725
  call void @olang_textcopy(ptr %t734, ptr %t727, i64 %t728)
  %t735 = getelementptr i8, ptr %t734, i64 %t728
  call void @olang_textcopy(ptr %t735, ptr %t730, i64 %t731)
  %t736 = insertvalue { i64, ptr } undef, i64 %t732, 0
  %t737 = insertvalue { i64, ptr } %t736, ptr %t733, 1
  %t739 = extractvalue { i64, ptr } %t737, 0
  %t740 = extractvalue { i64, ptr } %t737, 1
  %t741 = mul i64 %t739, 1
  %t742 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t741)
  call void @llvm.memcpy.p0.p0.i64(ptr %t742, ptr %t740, i64 %t741, i1 false)
  %t743 = insertvalue { i64, ptr } undef, i64 %t739, 0
  %t744 = insertvalue { i64, ptr } %t743, ptr %t742, 1
  %t747 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s23, ptr %s23, ptr %t722, { i64, ptr } %t744)
  store { i64, ptr } %t747, ptr %l225
  br label %bb98
bb98:
  %t748 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t750 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t751 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t753 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d411, i32 0, i32 1) }, 1
  %t754 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d411, i32 0, i32 1) }, 0
  %t756 = extractvalue { i64, ptr } %t750, 1
  %t757 = extractvalue { i64, ptr } %t750, 0
  %t758 = add i64 %t754, %t757
  %t759 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d412, i32 0, i32 1) }, 1
  %t760 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d412, i32 0, i32 1) }, 0
  %t761 = add i64 %t758, %t760
  %t763 = extractvalue { i64, ptr } %t751, 1
  %t764 = extractvalue { i64, ptr } %t751, 0
  %t765 = add i64 %t761, %t764
  %t766 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d413, i32 0, i32 1) }, 1
  %t767 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d413, i32 0, i32 1) }, 0
  %t768 = add i64 %t765, %t767
  %t770 = extractvalue { i64, ptr } %t748, 1
  %t771 = extractvalue { i64, ptr } %t748, 0
  %t772 = add i64 %t768, %t771
  %t773 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d414, i32 0, i32 1) }, 1
  %t774 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d414, i32 0, i32 1) }, 0
  %t775 = add i64 %t772, %t774
  %t776 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t775)
  call void @olang_textcopy(ptr %t776, ptr %t753, i64 %t754)
  %t777 = getelementptr i8, ptr %t776, i64 %t754
  call void @olang_textcopy(ptr %t777, ptr %t756, i64 %t757)
  %t778 = getelementptr i8, ptr %t777, i64 %t757
  call void @olang_textcopy(ptr %t778, ptr %t759, i64 %t760)
  %t779 = getelementptr i8, ptr %t778, i64 %t760
  call void @olang_textcopy(ptr %t779, ptr %t763, i64 %t764)
  %t780 = getelementptr i8, ptr %t779, i64 %t764
  call void @olang_textcopy(ptr %t780, ptr %t766, i64 %t767)
  %t781 = getelementptr i8, ptr %t780, i64 %t767
  call void @olang_textcopy(ptr %t781, ptr %t770, i64 %t771)
  %t782 = getelementptr i8, ptr %t781, i64 %t771
  call void @olang_textcopy(ptr %t782, ptr %t773, i64 %t774)
  %t783 = insertvalue { i64, ptr } undef, i64 %t775, 0
  %t784 = insertvalue { i64, ptr } %t783, ptr %t776, 1
  %t786 = extractvalue { i64, ptr } %t784, 0
  %t787 = extractvalue { i64, ptr } %t784, 1
  %t788 = mul i64 %t786, 1
  %t789 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t788)
  call void @llvm.memcpy.p0.p0.i64(ptr %t789, ptr %t787, i64 %t788, i1 false)
  %t790 = insertvalue { i64, ptr } undef, i64 %t786, 0
  %t791 = insertvalue { i64, ptr } %t790, ptr %t789, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s23, ptr %t749, { i64, ptr } %t791)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s23)
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_e171e8330ea33f7a_82d9a571b3024c8e)
  unreachable
bb101:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2eescape(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %l19 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l31 = alloca ptr
  %l33 = alloca i8
  %l34 = alloca i64
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb27
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l14, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  store i8 %t23, ptr %l5, !tbaa !22
  %t25 = load i8, ptr %l5, !tbaa !22
  %t27 = icmp eq i8 %t25, 34
  br i1 %t27, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb8
bb7:
  %t29 = load i8, ptr %l5, !tbaa !22
  %t31 = icmp eq i8 %t29, 92
  store i1 %t31, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb11
bb10:
  %t34 = load i8, ptr %l5, !tbaa !22
  %t37 = icmp ult i8 %t34, 32
  store i1 %t37, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l22, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb14
bb13:
  %t40 = load i8, ptr %l5, !tbaa !22
  %t43 = icmp ugt i8 %t40, 126
  store i1 %t43, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t45 = load i1, ptr %l26, !tbaa !21
  br i1 %t45, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 92)
  br label %bb17
bb16:
  %t47 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t47)
  br label %bb24
bb17:
  store ptr %l1, ptr %l31, !tbaa !29
  %t50 = load i8, ptr %l5, !tbaa !22
  store i8 %t50, ptr %l33, !tbaa !22
  %t52 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s3, i64 16)
  %t53 = extractvalue { i32, i64 } %t52, 1
  %t54 = extractvalue { i32, i64 } %t52, 0
  store i32 %t54, ptr %l35
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb19, label %ok.56, !prof !99
ok.56:
  store i64 %t53, ptr %l34
  br label %bb18
bb18:
  %t57 = load i8, ptr %l33, !tbaa !22
  %t58 = load i64, ptr %l34, !tbaa !24
  %t59 = call { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %s3, i8 %t57, i64 %t58)
  store { i64, ptr } %t59, ptr %l36
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_b05c5d37656b7ecf_b2cabd35ece02ebb)
  unreachable
bb20:
  %t60 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  %t62 = extractvalue { i64, ptr } %t60, 1
  %t63 = mul i64 %t61, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t63)
  call void @llvm.memcpy.p0.p0.i64(ptr %t64, ptr %t62, i64 %t63, i1 false)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  %t68 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s3, ptr %s3, { i64, ptr } %t66, i64 2, i8 48)
  store { i64, ptr } %t68, ptr %l38
  br label %bb21
bb21:
  %t69 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  %t71 = extractvalue { i64, ptr } %t69, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t77 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %s3, ptr %s3, { i64, ptr } %t75)
  store { i64, ptr } %t77, ptr %l40
  br label %bb22
bb22:
  %t78 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t85, { i64, ptr } %t84)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t87 = load i64, ptr %l3, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l3, !tbaa !24
  br label %bb2
bb27:
  %t92 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t92, ptr %l47
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t93 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t93, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2femit_2emathExactTable(ptr %v0) #0 {
entry:
  %lp0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %s1 = alloca %olang.scope
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t2, ptr %lp0
  %t3 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  %t4 = load ptr, ptr %lp0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %t4
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = insertvalue [7 x { i64, ptr }] undef, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d415, i32 0, i32 1) }, 0
  %t6 = insertvalue [7 x { i64, ptr }] %t5, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d416, i32 0, i32 1) }, 1
  %t7 = insertvalue [7 x { i64, ptr }] %t6, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d417, i32 0, i32 1) }, 2
  %t8 = insertvalue [7 x { i64, ptr }] %t7, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d418, i32 0, i32 1) }, 3
  %t9 = insertvalue [7 x { i64, ptr }] %t8, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d419, i32 0, i32 1) }, 4
  %t10 = insertvalue [7 x { i64, ptr }] %t9, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d420, i32 0, i32 1) }, 5
  %t11 = insertvalue [7 x { i64, ptr }] %t10, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d421, i32 0, i32 1) }, 6
  %t13 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 112, i64 8)
  store [7 x { i64, ptr }] %t11, ptr %t13
  store ptr %t13, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t15 = load ptr, ptr %l1
  store i64 7, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l1
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = getelementptr [7 x { i64, ptr }], ptr %t26, i64 0, i64 %t27
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !37
  %t33 = load ptr, ptr %lp0
  %t35 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %t35, ptr %t33, { i64, ptr } %t31, i64 1)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t38 = load i64, ptr %l2, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l2, !tbaa !24
  br label %bb2
bb8:
  call void @__olang_scope_close(ptr %s1)
  %t42 = load ptr, ptr %lp0
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t42, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d422, i32 0, i32 1) }, i64 2)
  br label %bb9
bb9:
  %t44 = load ptr, ptr %lp0
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t44, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d423, i32 0, i32 1) }, i64 3)
  br label %bb10
bb10:
  %t46 = load ptr, ptr %lp0
  %t47 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t46
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t47, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define dso_local i64 @compiler_2femit_2etempNumber(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l20 = alloca i1
  %l28 = alloca i1
  %l29 = alloca { i64, ptr }
  %l32 = alloca i1
  %l36 = alloca { i64, ptr }
  %l48 = alloca i1
  %l49 = alloca { i64, ptr }
  %l52 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 2
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sge i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l10, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = add i64 %t10, 1
  %t14 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp ne i8 %t17, 116
  store i1 %t19, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t21 = load i1, ptr %l9, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb5:
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l1, !tbaa !24
  %t25 = add i64 %t23, 2
  %t27 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i8, ptr %t28, i64 %t25
  %t30 = load i8, ptr %t29, !tbaa !32
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t30)
  store i1 %t32, ptr %l20
  br label %bb6
bb6:
  %t33 = load i1, ptr %l20, !tbaa !21
  %t34 = xor i1 %t33, true
  store i1 %t34, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t36 = load i1, ptr %l15, !tbaa !21
  br i1 %t36, label %bb8, label %bb9
bb8:
  store i64 -1, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t38 = load i64, ptr %l1, !tbaa !24
  %t40 = add i64 %t38, 2
  store i64 %t40, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  br label %bb11
bb11:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t48, ptr %l29, !tbaa !27
  %t49 = load i64, ptr %l3, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i8, ptr %t52, i64 %t49
  %t54 = load i8, ptr %t53, !tbaa !32
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t54)
  store i1 %t56, ptr %l32
  br label %bb14
bb13:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb15
bb14:
  %t57 = load i1, ptr %l32, !tbaa !21
  store i1 %t57, ptr %l28, !tbaa !21
  br label %bb15
bb15:
  %t58 = load i1, ptr %l28, !tbaa !21
  %t59 = xor i1 %t58, true
  br i1 %t59, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t61 = load i64, ptr %l4, !tbaa !24
  %t63 = mul i64 %t61, 10
  %t64 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t64, ptr %l36, !tbaa !27
  %t65 = load i64, ptr %l3, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i8, ptr %t68, i64 %t65
  %t70 = load i8, ptr %t69, !tbaa !32
  %t72 = zext i8 %t70 to i64
  %t75 = add i64 %t63, %t72
  %t76 = zext i8 48 to i64
  %t79 = sub i64 %t75, %t76
  store i64 %t79, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l3, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l3, !tbaa !24
  br label %bb19
bb19:
  br label %bb11
bb20:
  %t85 = load i64, ptr %l3, !tbaa !24
  %t86 = load i64, ptr %l2, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  br i1 %t89, label %bb21, label %bb22
bb21:
  %t91 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t91, ptr %l49, !tbaa !27
  %t92 = load i64, ptr %l3, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i8, ptr %t95, i64 %t92
  %t97 = load i8, ptr %t96, !tbaa !32
  %t99 = call i1 @compiler_2femit_2esymbolChar(i8 %t97)
  store i1 %t99, ptr %l52
  br label %bb23
bb22:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb24
bb23:
  %t100 = load i1, ptr %l52, !tbaa !21
  store i1 %t100, ptr %l48, !tbaa !21
  br label %bb24
bb24:
  %t101 = load i1, ptr %l48, !tbaa !21
  br i1 %t101, label %bb25, label %bb26
bb25:
  store i64 -1, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t103 = load i64, ptr %l4, !tbaa !24
  store i64 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_3acDecls_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"compiler/emit:cDecls"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2femit_3acDecls_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l3
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2femit_3acDecls_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l3
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l7, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2femit_3acDecls_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l7
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l9
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2femit_3acDecls_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l7
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t39)
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l1
  %t41 = ptrtoint ptr %v0 to i64
  store i64 %t41, ptr %l11, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2femit_3acDecls_2e2
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = call ptr @__olang_region_make(ptr %v0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l11
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t47)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t48, ptr %l13
  br label %bb13
bb13:
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2femit_3acDecls_2e2
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t51 = load i64, ptr %l11
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 2
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr null
  %t59 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 1
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = icmp ne ptr %t62, null
  %t64 = select i1 %t63, ptr %t62, ptr %t58
  %t65 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr %t64
  %t71 = icmp eq ptr %t70, %t52
  call void @__olang_region_settle(ptr %t52, i1 %t71)
  br label %bb15
bb15:
  %t72 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  %t73 = getelementptr %"compiler/emit:cDecls", ptr %l15, i32 0, i32 0
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %t73
  %t75 = getelementptr %"compiler/emit:cDecls", ptr %l15, i32 0, i32 1
  %t76 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %t75
  %t77 = getelementptr %"compiler/emit:cDecls", ptr %l15, i32 0, i32 2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t72, ptr %t77
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l15, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_3afnEm_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca %"std/prelude/text:StringBuilder"
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l26 = alloca i1
  %l27 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l28 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l43 = alloca i64
  %l45 = alloca %"std/prelude/text:StringBuilder"
  %l47 = alloca i64
  %l49 = alloca %"std/prelude/text:StringBuilder"
  %l51 = alloca i64
  %l53 = alloca %"std/prelude/text:StringBuilder"
  %l56 = alloca i64
  %l58 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l60 = alloca i64
  %l62 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l64 = alloca i64
  %l66 = alloca %"std/prelude/text:StringBuilder"
  %l68 = alloca i64
  %l70 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l72 = alloca i64
  %l74 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l76 = alloca i64
  %l78 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l82 = alloca i64
  %l84 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l86 = alloca i64
  %l88 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l90 = alloca i64
  %l92 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l94 = alloca %"compiler/emit:fnEm"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  store ptr %a1, ptr %l4, !tbaa !29
  store { i64, [2 x i64] } %a2, ptr %l5
  %t7 = ptrtoint ptr %v2 to i64
  store i64 %t7, ptr %l43, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e3
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v2)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l43, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l43
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t13)
  store %"std/prelude/text:StringBuilder" %t14, ptr %l45
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e3
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l43
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/text:StringBuilder", ptr %l45, i32 0, i32 0
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = call ptr @__olang_region_or(ptr %t22, ptr null)
  %t24 = icmp ne ptr %t23, null
  %t25 = select i1 %t24, ptr %t23, ptr null
  %t26 = icmp eq ptr %t25, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t26)
  br label %bb5
bb5:
  %t27 = load %"std/prelude/text:StringBuilder", ptr %l45
  store %"std/prelude/text:StringBuilder" %t27, ptr %l6
  %t28 = ptrtoint ptr %v2 to i64
  store i64 %t28, ptr %l47, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e4
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = call ptr @__olang_region_make(ptr %v2)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l47, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l47
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t34)
  store %"std/prelude/text:StringBuilder" %t35, ptr %l49
  br label %bb8
bb8:
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e4
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load i64, ptr %l47
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = getelementptr %"std/prelude/text:StringBuilder", ptr %l49, i32 0, i32 0
  %t41 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = icmp ne ptr %t44, null
  %t46 = select i1 %t45, ptr %t44, ptr null
  %t47 = icmp eq ptr %t46, %t39
  call void @__olang_region_settle(ptr %t39, i1 %t47)
  br label %bb10
bb10:
  %t48 = load %"std/prelude/text:StringBuilder", ptr %l49
  store %"std/prelude/text:StringBuilder" %t48, ptr %l7
  %t49 = ptrtoint ptr %v2 to i64
  store i64 %t49, ptr %l51, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e5
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = call ptr @__olang_region_make(ptr %v2)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l51, !tbaa !24
  br label %bb12
bb12:
  %t54 = load i64, ptr %l51
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t55)
  store %"std/prelude/text:StringBuilder" %t56, ptr %l53
  br label %bb13
bb13:
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e5
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t59 = load i64, ptr %l51
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = getelementptr %"std/prelude/text:StringBuilder", ptr %l53, i32 0, i32 0
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t61, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = call ptr @__olang_region_or(ptr %t64, ptr null)
  %t66 = icmp ne ptr %t65, null
  %t67 = select i1 %t66, ptr %t65, ptr null
  %t68 = icmp eq ptr %t67, %t60
  call void @__olang_region_settle(ptr %t60, i1 %t68)
  br label %bb15
bb15:
  %t69 = load %"std/prelude/text:StringBuilder", ptr %l53
  store %"std/prelude/text:StringBuilder" %t69, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  store i64 -1, ptr %l11, !tbaa !24
  %t70 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t70, ptr %l12, !tbaa !23
  store i1 false, ptr %l13, !tbaa !21
  store i1 false, ptr %l14, !tbaa !21
  store i1 false, ptr %l15, !tbaa !21
  store i1 false, ptr %l16, !tbaa !21
  store i1 false, ptr %l17, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d424, i32 0, i32 1) }, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t72 = ptrtoint ptr %v2 to i64
  store i64 %t72, ptr %l56, !tbaa !24
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e17
  br i1 %t73, label %bb16, label %bb17
bb16:
  %t75 = call ptr @__olang_region_make(ptr %v2)
  %t76 = ptrtoint ptr %t75 to i64
  store i64 %t76, ptr %l56, !tbaa !24
  br label %bb17
bb17:
  %t77 = load i64, ptr %l56
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t78)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t79, ptr %l58
  br label %bb18
bb18:
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e17
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t82 = load i64, ptr %l56
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 2
  %t85 = load { i64, ptr }, ptr %t84
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = call ptr @__olang_region_or(ptr %t86, ptr null)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr null
  %t90 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 1
  %t91 = load { i64, ptr }, ptr %t90
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = call ptr @__olang_region_or(ptr %t92, ptr null)
  %t94 = icmp ne ptr %t93, null
  %t95 = select i1 %t94, ptr %t93, ptr %t89
  %t96 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 0
  %t97 = load { i64, ptr }, ptr %t96
  %t98 = extractvalue { i64, ptr } %t97, 1
  %t99 = call ptr @__olang_region_or(ptr %t98, ptr null)
  %t100 = icmp ne ptr %t99, null
  %t101 = select i1 %t100, ptr %t99, ptr %t95
  %t102 = icmp eq ptr %t101, %t83
  call void @__olang_region_settle(ptr %t83, i1 %t102)
  br label %bb20
bb20:
  %t103 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t103, ptr %l20
  store i64 -1, ptr %l21, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d425, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t104 = ptrtoint ptr %v2 to i64
  store i64 %t104, ptr %l60, !tbaa !24
  %t105 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e20
  br i1 %t105, label %bb21, label %bb22
bb21:
  %t107 = call ptr @__olang_region_make(ptr %v2)
  %t108 = ptrtoint ptr %t107 to i64
  store i64 %t108, ptr %l60, !tbaa !24
  br label %bb22
bb22:
  %t109 = load i64, ptr %l60
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t110)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t111, ptr %l62
  br label %bb23
bb23:
  %t112 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e20
  br i1 %t112, label %bb24, label %bb25
bb24:
  %t114 = load i64, ptr %l60
  %t115 = inttoptr i64 %t114 to ptr
  %t116 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %t116
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = call ptr @__olang_region_or(ptr %t118, ptr null)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr null
  %t122 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 1
  %t123 = load { i64, ptr }, ptr %t122
  %t124 = extractvalue { i64, ptr } %t123, 1
  %t125 = call ptr @__olang_region_or(ptr %t124, ptr null)
  %t126 = icmp ne ptr %t125, null
  %t127 = select i1 %t126, ptr %t125, ptr %t121
  %t128 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 0
  %t129 = load { i64, ptr }, ptr %t128
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = call ptr @__olang_region_or(ptr %t130, ptr null)
  %t132 = icmp ne ptr %t131, null
  %t133 = select i1 %t132, ptr %t131, ptr %t127
  %t134 = icmp eq ptr %t133, %t115
  call void @__olang_region_settle(ptr %t115, i1 %t134)
  br label %bb25
bb25:
  %t135 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t135, ptr %l23
  %t136 = ptrtoint ptr %v2 to i64
  store i64 %t136, ptr %l64, !tbaa !24
  %t137 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e21
  br i1 %t137, label %bb26, label %bb27
bb26:
  %t139 = call ptr @__olang_region_make(ptr %v2)
  %t140 = ptrtoint ptr %t139 to i64
  store i64 %t140, ptr %l64, !tbaa !24
  br label %bb27
bb27:
  %t141 = load i64, ptr %l64
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t142)
  store %"std/prelude/text:StringBuilder" %t143, ptr %l66
  br label %bb28
bb28:
  %t144 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e21
  br i1 %t144, label %bb29, label %bb30
bb29:
  %t146 = load i64, ptr %l64
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = getelementptr %"std/prelude/text:StringBuilder", ptr %l66, i32 0, i32 0
  %t149 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t148, i32 0, i32 0
  %t150 = load { i64, ptr }, ptr %t149
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = call ptr @__olang_region_or(ptr %t151, ptr null)
  %t153 = icmp ne ptr %t152, null
  %t154 = select i1 %t153, ptr %t152, ptr null
  %t155 = icmp eq ptr %t154, %t147
  call void @__olang_region_settle(ptr %t147, i1 %t155)
  br label %bb30
bb30:
  %t156 = load %"std/prelude/text:StringBuilder", ptr %l66
  store %"std/prelude/text:StringBuilder" %t156, ptr %l24
  %t157 = ptrtoint ptr %v2 to i64
  store i64 %t157, ptr %l68, !tbaa !24
  %t158 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e22
  br i1 %t158, label %bb31, label %bb32
bb31:
  %t160 = call ptr @__olang_region_make(ptr %v2)
  %t161 = ptrtoint ptr %t160 to i64
  store i64 %t161, ptr %l68, !tbaa !24
  br label %bb32
bb32:
  %t162 = load i64, ptr %l68
  %t163 = inttoptr i64 %t162 to ptr
  %t164 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e(ptr %t163)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t164, ptr %l70
  br label %bb33
bb33:
  %t165 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e22
  br i1 %t165, label %bb34, label %bb35
bb34:
  %t167 = load i64, ptr %l68
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l70, i32 0, i32 2
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_region_or(ptr %t171, ptr null)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr null
  %t175 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l70, i32 0, i32 1
  %t176 = load { i64, ptr }, ptr %t175
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = call ptr @__olang_region_or(ptr %t177, ptr null)
  %t179 = icmp ne ptr %t178, null
  %t180 = select i1 %t179, ptr %t178, ptr %t174
  %t181 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l70, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = icmp ne ptr %t184, null
  %t186 = select i1 %t185, ptr %t184, ptr %t180
  %t187 = icmp eq ptr %t186, %t168
  call void @__olang_region_settle(ptr %t168, i1 %t187)
  br label %bb35
bb35:
  %t188 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l70
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t188, ptr %l25
  store i1 false, ptr %l26, !tbaa !21
  %t189 = ptrtoint ptr %v2 to i64
  store i64 %t189, ptr %l72, !tbaa !24
  %t190 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e24
  br i1 %t190, label %bb36, label %bb37
bb36:
  %t192 = call ptr @__olang_region_make(ptr %v2)
  %t193 = ptrtoint ptr %t192 to i64
  store i64 %t193, ptr %l72, !tbaa !24
  br label %bb37
bb37:
  %t194 = load i64, ptr %l72
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t195)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t196, ptr %l74
  br label %bb38
bb38:
  %t197 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e24
  br i1 %t197, label %bb39, label %bb40
bb39:
  %t199 = load i64, ptr %l72
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74, i32 0, i32 2
  %t202 = load { i64, ptr }, ptr %t201
  %t203 = extractvalue { i64, ptr } %t202, 1
  %t204 = call ptr @__olang_region_or(ptr %t203, ptr null)
  %t205 = icmp ne ptr %t204, null
  %t206 = select i1 %t205, ptr %t204, ptr null
  %t207 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74, i32 0, i32 1
  %t208 = load { i64, ptr }, ptr %t207
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = call ptr @__olang_region_or(ptr %t209, ptr null)
  %t211 = icmp ne ptr %t210, null
  %t212 = select i1 %t211, ptr %t210, ptr %t206
  %t213 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74, i32 0, i32 0
  %t214 = load { i64, ptr }, ptr %t213
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = call ptr @__olang_region_or(ptr %t215, ptr null)
  %t217 = icmp ne ptr %t216, null
  %t218 = select i1 %t217, ptr %t216, ptr %t212
  %t219 = icmp eq ptr %t218, %t200
  call void @__olang_region_settle(ptr %t200, i1 %t219)
  br label %bb40
bb40:
  %t220 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t220, ptr %l27
  %t221 = ptrtoint ptr %v2 to i64
  store i64 %t221, ptr %l76, !tbaa !24
  %t222 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e25
  br i1 %t222, label %bb41, label %bb42
bb41:
  %t224 = call ptr @__olang_region_make(ptr %v2)
  %t225 = ptrtoint ptr %t224 to i64
  store i64 %t225, ptr %l76, !tbaa !24
  br label %bb42
bb42:
  %t226 = load i64, ptr %l76
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t227)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t228, ptr %l78
  br label %bb43
bb43:
  %t229 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e25
  br i1 %t229, label %bb44, label %bb45
bb44:
  %t231 = load i64, ptr %l76
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l78, i32 0, i32 2
  %t234 = load { i64, ptr }, ptr %t233
  %t235 = extractvalue { i64, ptr } %t234, 1
  %t236 = call ptr @__olang_region_or(ptr %t235, ptr null)
  %t237 = icmp ne ptr %t236, null
  %t238 = select i1 %t237, ptr %t236, ptr null
  %t239 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l78, i32 0, i32 1
  %t240 = load { i64, ptr }, ptr %t239
  %t241 = extractvalue { i64, ptr } %t240, 1
  %t242 = call ptr @__olang_region_or(ptr %t241, ptr null)
  %t243 = icmp ne ptr %t242, null
  %t244 = select i1 %t243, ptr %t242, ptr %t238
  %t245 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l78, i32 0, i32 0
  %t246 = load { i64, ptr }, ptr %t245
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = call ptr @__olang_region_or(ptr %t247, ptr null)
  %t249 = icmp ne ptr %t248, null
  %t250 = select i1 %t249, ptr %t248, ptr %t244
  %t251 = icmp eq ptr %t250, %t232
  call void @__olang_region_settle(ptr %t232, i1 %t251)
  br label %bb45
bb45:
  %t252 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l78
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t252, ptr %l28
  %t253 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t253, ptr %l80
  br label %bb46
bb46:
  %t254 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t254, ptr %l29
  %t255 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t255, ptr %l81
  br label %bb47
bb47:
  %t256 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t256, ptr %l30
  store i1 false, ptr %l31, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d426, i32 0, i32 1) }, ptr %l32, !tbaa !27
  store i1 false, ptr %l33, !tbaa !21
  %t257 = ptrtoint ptr %v2 to i64
  store i64 %t257, ptr %l82, !tbaa !24
  %t258 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e31
  br i1 %t258, label %bb48, label %bb49
bb48:
  %t260 = call ptr @__olang_region_make(ptr %v2)
  %t261 = ptrtoint ptr %t260 to i64
  store i64 %t261, ptr %l82, !tbaa !24
  br label %bb49
bb49:
  %t262 = load i64, ptr %l82
  %t263 = inttoptr i64 %t262 to ptr
  %t264 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t263)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t264, ptr %l84
  br label %bb50
bb50:
  %t265 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e31
  br i1 %t265, label %bb51, label %bb52
bb51:
  %t267 = load i64, ptr %l82
  %t268 = inttoptr i64 %t267 to ptr
  %t269 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l84, i32 0, i32 2
  %t270 = load { i64, ptr }, ptr %t269
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = call ptr @__olang_region_or(ptr %t271, ptr null)
  %t273 = icmp ne ptr %t272, null
  %t274 = select i1 %t273, ptr %t272, ptr null
  %t275 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l84, i32 0, i32 1
  %t276 = load { i64, ptr }, ptr %t275
  %t277 = extractvalue { i64, ptr } %t276, 1
  %t278 = call ptr @__olang_region_or(ptr %t277, ptr null)
  %t279 = icmp ne ptr %t278, null
  %t280 = select i1 %t279, ptr %t278, ptr %t274
  %t281 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l84, i32 0, i32 0
  %t282 = load { i64, ptr }, ptr %t281
  %t283 = extractvalue { i64, ptr } %t282, 1
  %t284 = call ptr @__olang_region_or(ptr %t283, ptr null)
  %t285 = icmp ne ptr %t284, null
  %t286 = select i1 %t285, ptr %t284, ptr %t280
  %t287 = icmp eq ptr %t286, %t268
  call void @__olang_region_settle(ptr %t268, i1 %t287)
  br label %bb52
bb52:
  %t288 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l84
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t288, ptr %l34
  %t289 = ptrtoint ptr %v2 to i64
  store i64 %t289, ptr %l86, !tbaa !24
  %t290 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e32
  br i1 %t290, label %bb53, label %bb54
bb53:
  %t292 = call ptr @__olang_region_make(ptr %v2)
  %t293 = ptrtoint ptr %t292 to i64
  store i64 %t293, ptr %l86, !tbaa !24
  br label %bb54
bb54:
  %t294 = load i64, ptr %l86
  %t295 = inttoptr i64 %t294 to ptr
  %t296 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t295)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t296, ptr %l88
  br label %bb55
bb55:
  %t297 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e32
  br i1 %t297, label %bb56, label %bb57
bb56:
  %t299 = load i64, ptr %l86
  %t300 = inttoptr i64 %t299 to ptr
  %t301 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88, i32 0, i32 2
  %t302 = load { i64, ptr }, ptr %t301
  %t303 = extractvalue { i64, ptr } %t302, 1
  %t304 = call ptr @__olang_region_or(ptr %t303, ptr null)
  %t305 = icmp ne ptr %t304, null
  %t306 = select i1 %t305, ptr %t304, ptr null
  %t307 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88, i32 0, i32 1
  %t308 = load { i64, ptr }, ptr %t307
  %t309 = extractvalue { i64, ptr } %t308, 1
  %t310 = call ptr @__olang_region_or(ptr %t309, ptr null)
  %t311 = icmp ne ptr %t310, null
  %t312 = select i1 %t311, ptr %t310, ptr %t306
  %t313 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88, i32 0, i32 0
  %t314 = load { i64, ptr }, ptr %t313
  %t315 = extractvalue { i64, ptr } %t314, 1
  %t316 = call ptr @__olang_region_or(ptr %t315, ptr null)
  %t317 = icmp ne ptr %t316, null
  %t318 = select i1 %t317, ptr %t316, ptr %t312
  %t319 = icmp eq ptr %t318, %t300
  call void @__olang_region_settle(ptr %t300, i1 %t319)
  br label %bb57
bb57:
  %t320 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l88
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t320, ptr %l35
  %t321 = ptrtoint ptr %v2 to i64
  store i64 %t321, ptr %l90, !tbaa !24
  %t322 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e33
  br i1 %t322, label %bb58, label %bb59
bb58:
  %t324 = call ptr @__olang_region_make(ptr %v2)
  %t325 = ptrtoint ptr %t324 to i64
  store i64 %t325, ptr %l90, !tbaa !24
  br label %bb59
bb59:
  %t326 = load i64, ptr %l90
  %t327 = inttoptr i64 %t326 to ptr
  %t328 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t327)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t328, ptr %l92
  br label %bb60
bb60:
  %t329 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e33
  br i1 %t329, label %bb61, label %bb62
bb61:
  %t331 = load i64, ptr %l90
  %t332 = inttoptr i64 %t331 to ptr
  %t333 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92, i32 0, i32 2
  %t334 = load { i64, ptr }, ptr %t333
  %t335 = extractvalue { i64, ptr } %t334, 1
  %t336 = call ptr @__olang_region_or(ptr %t335, ptr null)
  %t337 = icmp ne ptr %t336, null
  %t338 = select i1 %t337, ptr %t336, ptr null
  %t339 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92, i32 0, i32 1
  %t340 = load { i64, ptr }, ptr %t339
  %t341 = extractvalue { i64, ptr } %t340, 1
  %t342 = call ptr @__olang_region_or(ptr %t341, ptr null)
  %t343 = icmp ne ptr %t342, null
  %t344 = select i1 %t343, ptr %t342, ptr %t338
  %t345 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = call ptr @__olang_region_or(ptr %t347, ptr null)
  %t349 = icmp ne ptr %t348, null
  %t350 = select i1 %t349, ptr %t348, ptr %t344
  %t351 = icmp eq ptr %t350, %t332
  call void @__olang_region_settle(ptr %t332, i1 %t351)
  br label %bb62
bb62:
  %t352 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l92
  %t353 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 0
  %t354 = load ptr, ptr %l3, !tbaa !29
  store ptr %t354, ptr %t353, !tbaa !29
  %t355 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 1
  %t356 = load ptr, ptr %l4, !tbaa !29
  store ptr %t356, ptr %t355, !tbaa !29
  %t357 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 2
  %t358 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t358, ptr %t357
  %t359 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 3
  %t360 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t360, ptr %t359
  %t361 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 4
  %t362 = load %"std/prelude/text:StringBuilder", ptr %l7
  store %"std/prelude/text:StringBuilder" %t362, ptr %t361
  %t363 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 5
  %t364 = load %"std/prelude/text:StringBuilder", ptr %l8
  store %"std/prelude/text:StringBuilder" %t364, ptr %t363
  %t365 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 6
  %t366 = load i64, ptr %l9, !tbaa !24
  store i64 %t366, ptr %t365, !tbaa !24
  %t367 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 7
  %t368 = load i64, ptr %l10, !tbaa !24
  store i64 %t368, ptr %t367, !tbaa !24
  %t369 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 8
  %t370 = load i64, ptr %l11, !tbaa !24
  store i64 %t370, ptr %t369, !tbaa !24
  %t371 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 9
  %t372 = load i32, ptr %l12, !tbaa !23
  store i32 %t372, ptr %t371, !tbaa !23
  %t373 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 10
  %t374 = load i1, ptr %l13, !tbaa !21
  store i1 %t374, ptr %t373, !tbaa !21
  %t375 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 11
  %t376 = load i1, ptr %l14, !tbaa !21
  store i1 %t376, ptr %t375, !tbaa !21
  %t377 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 12
  %t378 = load i1, ptr %l15, !tbaa !21
  store i1 %t378, ptr %t377, !tbaa !21
  %t379 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 13
  %t380 = load i1, ptr %l16, !tbaa !21
  store i1 %t380, ptr %t379, !tbaa !21
  %t381 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 14
  %t382 = load i1, ptr %l17, !tbaa !21
  store i1 %t382, ptr %t381, !tbaa !21
  %t383 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 15
  %t384 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t384, ptr %t383, !tbaa !27
  %t385 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 16
  %t386 = load i64, ptr %l19, !tbaa !24
  store i64 %t386, ptr %t385, !tbaa !24
  %t387 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 17
  %t388 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t388, ptr %t387
  %t389 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 18
  %t390 = load i64, ptr %l21, !tbaa !24
  store i64 %t390, ptr %t389, !tbaa !24
  %t391 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 19
  %t392 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t392, ptr %t391, !tbaa !27
  %t393 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 20
  %t394 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t394, ptr %t393
  %t395 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 21
  %t396 = load %"std/prelude/text:StringBuilder", ptr %l24
  store %"std/prelude/text:StringBuilder" %t396, ptr %t395
  %t397 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 22
  %t398 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t398, ptr %t397
  %t399 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 23
  %t400 = load i1, ptr %l26, !tbaa !21
  store i1 %t400, ptr %t399, !tbaa !21
  %t401 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 24
  %t402 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l27
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t402, ptr %t401
  %t403 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 25
  %t404 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t404, ptr %t403
  %t405 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 26
  %t406 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t406, ptr %t405
  %t407 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 27
  %t408 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %t407
  %t409 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 28
  %t410 = load i1, ptr %l31, !tbaa !21
  store i1 %t410, ptr %t409, !tbaa !21
  %t411 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 29
  %t412 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t412, ptr %t411, !tbaa !27
  %t413 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 30
  %t414 = load i1, ptr %l33, !tbaa !21
  store i1 %t414, ptr %t413, !tbaa !21
  %t415 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 31
  %t416 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t416, ptr %t415
  %t417 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 32
  %t418 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t418, ptr %t417
  %t419 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t352, ptr %t419
  %t421 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 34
  store i64 0, ptr %t421, !tbaa !24
  %t423 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 35
  store i64 0, ptr %t423, !tbaa !24
  %t425 = getelementptr %"compiler/emit:fnEm", ptr %l94, i32 0, i32 36
  store i64 -1, ptr %t425, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l94, i64 960, i1 false)
  br label %ret
ret:
  ret void
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
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
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d4 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".ctor" }>, align 8
@.d5 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".dtor" }>, align 8
@.d6 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang_lambda_" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d8 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".init" }>, align 8
@.d9 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang_case_" }>, align 8
@.d10 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang_cond_" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d11 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c".contract." }>, align 8
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
  %t5 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d427, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d427, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
ret:
  ret void
}

@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
declare void @__olang_sb_done(ptr)
@.d13 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang.slot." }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d15 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"olang.traitslot." }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d17 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"DW_ATE_boolean" }>, align 8
@.d18 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"DW_ATE_float" }>, align 8
@.d19 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"DW_ATE_unsigned" }>, align 8
@.d20 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"DW_ATE_signed" }>, align 8
@.d21 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"DW_ATE_unsigned_char" }>, align 8
@.d22 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"!DIBasicType(name: \22" }>, align 8
@.d23 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\22, size: " }>, align 8
@.d24 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", encoding: " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"len" }>, align 8
@.d29 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d32 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"!DIDerivedType(tag: DW_TAG_pointer_type, baseType: " }>, align 8
@.d33 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", size: 64)" }>, align 8
@.d34 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"code" }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"env" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"len" }>, align 8
@.d38 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d39 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"!{!DISubrange(count: " }>, align 8
@.d40 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")}" }>, align 8
@.d41 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"!DICompositeType(tag: DW_TAG_array_type, baseType: !" }>, align 8
@.d42 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", size: " }>, align 8
@.d43 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", elements: !" }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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

@.d45 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"!DIDerivedType(tag: DW_TAG_member, name: \22" }>, align 8
@.d46 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22, baseType: !" }>, align 8
@.d47 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", size: " }>, align 8
@.d48 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", offset: " }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d50 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d52 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!{" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d54 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"!DICompositeType(tag: DW_TAG_structure_type, name: \22" }>, align 8
@.d55 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\22, size: " }>, align 8
@.d56 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", elements: !" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d58 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"!DIEnumerator(name: \22" }>, align 8
@.d59 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\22, value: " }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d61 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d63 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!{" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d65 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d66 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d67 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"!DICompositeType(tag: DW_TAG_enumeration_type, name: \22" }>, align 8
@.d68 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\22, size: " }>, align 8
@.d69 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", baseType: !" }>, align 8
@.d70 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", elements: !" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d72 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"!{!DISubrange(count: " }>, align 8
@.d73 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")}" }>, align 8
@.d74 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d75 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"!DICompositeType(tag: DW_TAG_array_type, baseType: !" }>, align 8
@.d76 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", size: " }>, align 8
@.d77 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", elements: !" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d79 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"!DIDerivedType(tag: DW_TAG_member, name: \22case\22, baseType: !" }>, align 8
@.d80 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c", size: 64, offset: 0)" }>, align 8
@.d81 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c"!DIDerivedType(tag: DW_TAG_member, name: \22payload\22, baseType: !" }>, align 8
@.d82 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", size: " }>, align 8
@.d83 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", offset: 64)" }>, align 8
@.d84 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"!{!" }>, align 8
@.d85 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", !" }>, align 8
@.d86 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d87 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"!DICompositeType(tag: DW_TAG_structure_type, name: \22" }>, align 8
@.d88 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\22, size: " }>, align 8
@.d89 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", elements: !" }>, align 8
@.d90 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d92 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d93 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
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
@.d94 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d95 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d96 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d97 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = external global " }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d99 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" = external global i8" }>, align 8
@.d100 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d101 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d102 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" = constant " }>, align 8
@.d103 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}>" }>, align 8
@.d104 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d105 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" = external global i8" }>, align 8
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d107 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" = external constant " }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d108 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d109 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" = available_externally constant " }>, align 8
@.d110 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d111 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d112 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" = global " }>, align 8
@.d113 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" zeroinitializer\0A" }>, align 8
@.d114 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d115 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = external global " }>, align 8
@.d116 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_Hec89156ab9169707fa796c197263aa36(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fmir_3aFnKey_3e_2ector(ptr %v0)
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

@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fmir_3aFnKey_3e_2e0 = weak hidden constant i1 false
@.d118 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"_adapter" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2femit_3aReused(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/emit:Reused"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 160, i1 false)
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
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

@.d119 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"olang." }>, align 8
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
  %t5 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d428, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d428, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d429, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d429, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d430, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d430, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d431, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d431, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d432, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d432, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d433, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d433, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d434, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d434, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d435, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d435, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
ret:
  ret void
}

@.d120 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d121 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"_adapter" }>, align 8
@.d122 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"_copied" }>, align 8
@.d123 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_twin" }>, align 8
@.d124 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang.init." }>, align 8
@.d125 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".top" }>, align 8
@.d126 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d127 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang.anyrender" }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d129 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d130 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d131 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1 = weak hidden constant i1 false
@.d132 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d134 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang_test_" }>, align 8
@.d135 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang_test_" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d136 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d137 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_check_failed" }>, align 8
@.d138 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"not emitted" }>, align 8
@.d139 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"not emitted" }>, align 8
@.d140 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"define internal ptr @" }>, align 8
@.d141 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c".coro(ptr %env, ptr %home) presplitcoroutine alwaysinline #0 {\0A" }>, align 8
@.d142 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" !dbg !" }>, align 8
@.d143 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" {\0A" }>, align 8
@.d144 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"entry:\0A" }>, align 8
@.d145 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"  br label %start\0A" }>, align 8
@.d146 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}\0A" }>, align 8
@.d147 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d148 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d149 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d150 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d151 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 0" }>, align 8
@.d152 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d153 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d154 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d155 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d156 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d157 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d158 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"a C callback that is no export fn named at the call" }>, align 8
@.d159 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d160 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fill" }>, align 8
@.d161 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fill" }>, align 8
@.d162 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fill" }>, align 8
@.d163 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fill" }>, align 8
@.d164 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d165 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d166 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" = phi i64 [ 0, %" }>, align 8
@.d167 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" ], [ " }>, align 8
@.d168 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", %" }>, align 8
@.d169 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ]" }>, align 8
@.d170 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"icmp slt i64 " }>, align 8
@.d171 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d172 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d173 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", label %" }>, align 8
@.d174 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d175 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d176 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i64 0, i64 " }>, align 8
@.d177 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" = add i64 " }>, align 8
@.d178 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d179 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d180 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d181 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d182 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d183 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d184 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d185 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i64 -8" }>, align 8
@.d186 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"store i64 " }>, align 8
@.d187 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d188 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", align 8" }>, align 8
@.d189 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"a count of a constant" }>, align 8
@.d190 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d191 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d192 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d193 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d194 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d195 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"the object of a " }>, align 8
@.d196 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d197 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d198 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"zext i" }>, align 8
@.d199 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d200 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d201 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"shl " }>, align 8
@.d202 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d203 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d204 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"lshr " }>, align 8
@.d205 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" -1, " }>, align 8
@.d206 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-1" }>, align 8
@.d207 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"shl " }>, align 8
@.d208 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d209 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d210 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"xor " }>, align 8
@.d211 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d212 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", -1" }>, align 8
@.d213 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"and " }>, align 8
@.d214 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d215 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d216 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"or " }>, align 8
@.d217 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d218 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d219 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_bang_failed" }>, align 8
@.d220 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"__olang_bang_failed_plain" }>, align 8
@.d221 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"void @" }>, align 8
@.d222 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr)" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d223 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d224 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %bq" }>, align 8
@.d225 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" = icmp eq i32 " }>, align 8
@.d226 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d227 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"\0A  br i1 %bq" }>, align 8
@.d228 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", label %bang" }>, align 8
@.d229 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", label %bnext" }>, align 8
@.d230 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\0Abang" }>, align 8
@.d231 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d232 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d233 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d234 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"  call void @" }>, align 8
@.d235 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr " }>, align 8
@.d236 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c")\0A  unreachable\0Abnext" }>, align 8
@.d237 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c":\0A" }>, align 8
@.d238 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c": unhandled error\0A" }>, align 8
@.d239 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"  call void @" }>, align 8
@.d240 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr " }>, align 8
@.d241 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c")\0A  unreachable\0A" }>, align 8
@.d242 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"olang_task" }>, align 8
@.d243 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"define internal ptr @" }>, align 8
@.d244 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"(ptr %env) #0 {\0Aentry:\0A" }>, align 8
@.d245 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %f" }>, align 8
@.d246 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" = getelementptr " }>, align 8
@.d247 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", ptr %env, i32 0, i32 " }>, align 8
@.d248 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d249 = private constant <{ i64, [121 x i8] }> <{ i64 0, [121 x i8] c"  %fv = load { ptr, ptr }, ptr %f0\0A  %code = extractvalue { ptr, ptr } %fv, 0\0A  %fenv = extractvalue { ptr, ptr } %fv, 1\0A" }>, align 8
@.d250 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"%code" }>, align 8
@.d251 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ptr %fenv" }>, align 8
@.d252 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"  %out = alloca " }>, align 8
@.d253 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d254 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d255 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr %out" }>, align 8
@.d256 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %sc" }>, align 8
@.d257 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = load ptr, ptr %f" }>, align 8
@.d258 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"\0A  %sn" }>, align 8
@.d259 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" = icmp eq ptr %sc" }>, align 8
@.d260 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", null\0A" }>, align 8
@.d261 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_prog_scope" }>, align 8
@.d262 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"@__olang_prog_scope = external thread_local(initialexec) global ptr" }>, align 8
@.d263 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %sg" }>, align 8
@.d264 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" = load ptr, ptr @__olang_prog_scope\0A  %ss" }>, align 8
@.d265 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" = select i1 %sn" }>, align 8
@.d266 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %sg" }>, align 8
@.d267 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %sc" }>, align 8
@.d268 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d269 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d270 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"ptr %ss" }>, align 8
@.d271 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d272 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr null" }>, align 8
@.d273 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d274 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"ptr %f" }>, align 8
@.d275 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %a" }>, align 8
@.d276 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" = load { ptr, ptr }, ptr %f" }>, align 8
@.d277 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"\0A  %ac" }>, align 8
@.d278 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" = extractvalue { ptr, ptr } %a" }>, align 8
@.d279 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 0\0A" }>, align 8
@.d280 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %ae" }>, align 8
@.d281 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" = extractvalue { ptr, ptr } %a" }>, align 8
@.d282 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 1\0A" }>, align 8
@.d283 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"ptr %ac" }>, align 8
@.d284 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %ae" }>, align 8
@.d285 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %a" }>, align 8
@.d286 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" = load " }>, align 8
@.d287 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %f" }>, align 8
@.d288 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d289 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" %a" }>, align 8
@.d290 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d291 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"  call void " }>, align 8
@.d292 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d293 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d294 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"  %r = call " }>, align 8
@.d295 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d296 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d297 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d298 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d299 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"%out" }>, align 8
@.d300 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"  %v = extractvalue " }>, align 8
@.d301 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" %r, 1\0A" }>, align 8
@.d302 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%r" }>, align 8
@.d303 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%v" }>, align 8
@.d304 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%r" }>, align 8
@.d305 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%c" }>, align 8
@.d306 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%c" }>, align 8
@.d307 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"  %c = extractvalue " }>, align 8
@.d308 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" %r, 0\0A" }>, align 8
@.d309 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"  %bad = icmp ne i32 " }>, align 8
@.d310 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c", 0\0A  br i1 %bad, label %fail, label %ok\0Afail:\0A" }>, align 8
@.d311 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ok:\0A" }>, align 8
@.d312 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"pd" }>, align 8
@.d313 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d314 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_errpay_detach" }>, align 8
@.d315 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  br i1 " }>, align 8
@.d316 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c", label %pdyes, label %pdno\0Apdyes:\0A  call void @__olang_errpay_detach()\0A  br label %pdno\0Apdno:\0A" }>, align 8
@.d317 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"  %rc64 = zext i32 " }>, align 8
@.d318 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c" to i64\0A  %rp = inttoptr i64 %rc64 to ptr\0A  ret ptr %rp\0Aok:\0A" }>, align 8
@.d319 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d320 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"llvm.memmove.p0.p0.i64" }>, align 8
@.d321 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d322 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"  %d0 = load ptr, ptr %f" }>, align 8
@.d323 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"\0A  call void @llvm.memmove.p0.p0.i64(ptr %d0, ptr %out, i64 " }>, align 8
@.d324 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", i1 false)\0A" }>, align 8
@.d325 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %d" }>, align 8
@.d326 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = load ptr, ptr %f" }>, align 8
@.d327 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d328 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %o" }>, align 8
@.d329 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" = getelementptr " }>, align 8
@.d330 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", ptr %out, i32 0, i32 " }>, align 8
@.d331 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d332 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"  call void @llvm.memmove.p0.p0.i64(ptr %d" }>, align 8
@.d333 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %o" }>, align 8
@.d334 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d335 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", i1 false)\0A" }>, align 8
@.d336 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"  %d0 = load ptr, ptr %f" }>, align 8
@.d337 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\0A  store " }>, align 8
@.d338 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d339 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr %d0\0A" }>, align 8
@.d340 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %d" }>, align 8
@.d341 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = load ptr, ptr %f" }>, align 8
@.d342 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d343 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %x" }>, align 8
@.d344 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" = extractvalue " }>, align 8
@.d345 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d346 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d347 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d348 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  store " }>, align 8
@.d349 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" %x" }>, align 8
@.d350 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %d" }>, align 8
@.d351 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d352 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d353 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"  ret ptr null\0A}\0A\0A" }>, align 8
@.d354 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"__olang_sb_put" }>, align 8
@.d355 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call void @__olang_sb_put(ptr " }>, align 8
@.d356 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d357 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d358 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d359 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_sb_room" }>, align 8
@.d360 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"__olang_sb_add" }>, align 8
@.d361 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_sb_room(ptr " }>, align 8
@.d362 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i64 1)" }>, align 8
@.d363 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i8" }>, align 8
@.d364 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call void @__olang_sb_add(ptr " }>, align 8
@.d365 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i64 1)" }>, align 8
@.d366 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i8" }>, align 8
@.d367 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i8" }>, align 8
@.d368 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d369 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_sb_room" }>, align 8
@.d370 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"__olang_sb_add" }>, align 8
@.d371 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i128" }>, align 8
@.d372 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d373 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"__olang_fmt_u" }>, align 8
@.d374 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"__olang_fmt_i" }>, align 8
@.d375 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i128" }>, align 8
@.d376 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"48" }>, align 8
@.d377 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"24" }>, align 8
@.d378 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_sb_room(ptr " }>, align 8
@.d379 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d380 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d381 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call i64 @" }>, align 8
@.d382 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr " }>, align 8
@.d383 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d384 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d385 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d386 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call void @__olang_sb_add(ptr " }>, align 8
@.d387 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d388 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d389 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_sb_room" }>, align 8
@.d390 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"__olang_sb_add" }>, align 8
@.d391 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_fmt_float" }>, align 8
@.d392 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"fpext " }>, align 8
@.d393 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d394 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" to double" }>, align 8
@.d395 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_sb_room(ptr " }>, align 8
@.d396 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", i64 48)" }>, align 8
@.d397 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"call i64 @__olang_fmt_float(ptr " }>, align 8
@.d398 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c", i64 48, double " }>, align 8
@.d399 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i32 " }>, align 8
@.d400 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d401 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call void @__olang_sb_add(ptr " }>, align 8
@.d402 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d403 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d404 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"__olang_sb_put" }>, align 8
@.d405 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d406 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d407 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d408 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d409 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d410 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i64 4, i64 5" }>, align 8
@.d411 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call void @__olang_sb_put(ptr " }>, align 8
@.d412 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d413 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d414 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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

@.d415 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sqrt" }>, align 8
@.d416 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"floor" }>, align 8
@.d417 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ceil" }>, align 8
@.d418 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"trunc" }>, align 8
@.d419 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"round" }>, align 8
@.d420 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"roundeven" }>, align 8
@.d421 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fabs" }>, align 8
@.d422 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"copysign" }>, align 8
@.d423 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fma" }>, align 8
@olang_2esole_2ecompiler_2femit_3acDecls_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2femit_3acDecls_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3acDecls_2e2 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2femit_3afnEm_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3afnEm_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3afnEm_2e5 = weak hidden constant i1 false
@.d424 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2femit_3afnEm_2e17 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

@.d425 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2femit_3afnEm_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3afnEm_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3afnEm_2e22 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2femit_3afnEm_2e24 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2femit_3afnEm_2e25 = weak hidden constant i1 false
@.d426 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2femit_3afnEm_2e31 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3afnEm_2e32 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3afnEm_2e33 = weak hidden constant i1 false
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
@.d427 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.ContractKind.Req" }>, align 8
declare ptr @__olang_sb_grow(ptr, i64) noinline
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

@.d428 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"mir.HelperKind.Render" }>, align 8
@.d429 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Equal" }>, align 8
@.d430 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Hash" }>, align 8
@.d431 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Zero" }>, align 8
@.d432 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Copy" }>, align 8
@.d433 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Parts" }>, align 8
@.d434 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Drop" }>, align 8
@.d435 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Guard" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecanonOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_de1fe604fb5e87cf_ff4728625cff78d3 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgPair(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4, i32 %a5)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgBytes(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2efieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_649f734ddce51468_b7eb8be07e4dd31c = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePayloadSize(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2femit_2eHomeShared = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalSym(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H95f86c29c688efeac83a664cabcff622(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/eval:Image" @compiler_2feval_3aImage_2ector(ptr %v0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebakedText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_67352ecb15e68ba0_c3979b973b302ad4 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_6c4f253a42e065fd_ca2f6afe461eeb41 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2eLen_3ccompiler_2femit_3aReused_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eHasCode(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2femit_2eHomeInst = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H113622d1f8bf95ca2a74cd371898add0(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2eAt_3ccompiler_2femit_3aReused_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hc46d619d13eb72fb3404dc4d54e1aab7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanonNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_325a0aca37049b03_8faf0435ed6a0227 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eU64_2eFormat(ptr %v0, i64 %a0, i64 %a1)
@olang_loc_d645e5ac48fafc6b_b6d88d5997c962c7 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_708cde11eb66cdaa_cb4b3307e5e96e66 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_4e101a65701de364_bb0ca6f6f49ef738 = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbg(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2esubprogram(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2erun(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewalkStub(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
@olang_loc_8de51998cc7658b0_11d2469cc10d3f54 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2edeclareVars(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenNext(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, { i64, ptr } %a5, i1 %a6)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenDrop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2femit_2efoldSlots(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2eframeKept(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/mir:Range" %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7181fb99348382a8_4bd06d378e143a0c = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedMake(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/mir:Range" %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easPacked(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ad86a063ee4785b3_cfd7ee8512ee9757 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aLvalue_2eBaseIs(%"compiler/mir:Lvalue" %a0, i32 %a1)
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexportBody(ptr %v0, ptr %v1, ptr %a0, { i64, [15 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_81868432e93876af_31517217ac874813 = external constant [0 x i8]
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkFlow(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eIter_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eholdersAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, i1 %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, ptr } %a4)
@olang_loc_7fed6075202c6f47_53bfc91b56218413 = external constant [0 x i8]
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etraced(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_a013fd5d1a1a0ecb_8946a3e4bb7adef = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_625291c18633ca8a_b2d4e63a7cb7312e = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocated(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskOld(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/mir:Task" %a2, i64 %a3)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskKey(ptr %v0, ptr %a0, %"compiler/mir:Task" %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
@olang_loc_7b5945deb51ea5cf_9b8856c6d1bef1b3 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, %"compiler/mir:Task" %a3, i32 %a4, i64 %a5, i64 %a6, { i64, ptr } %a7)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erecodeText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, i32 %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecarriesText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskFix(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/mir:Task" %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5)
@G_2ecompiler_2femit_2eHomeLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2equoted(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eextend(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, i1 %a4)
@olang_loc_843b4d3d5fe86d0c_7c8978725a4736a0 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_e171e8330ea33f7a_82d9a571b3024c8e = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %v0, i8 %a0, i64 %a1)
@olang_loc_b05c5d37656b7ecf_b2cabd35ece02ebb = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i1 @compiler_2femit_2esymbolChar(i8 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aWriteKind_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fmir_3aFnKey_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2ector(ptr %v0)
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
