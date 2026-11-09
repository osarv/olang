source_filename = "compiler_emit.quick.ll"
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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
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
define dso_local { i64, ptr } @compiler_2femit_2ecWordName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i8
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca i64
  %l19 = alloca i64
  %l37 = alloca { i64, ptr }
  %l44 = alloca i1
  %l47 = alloca i1
  %l49 = alloca i1
  %l50 = alloca i1
  %l51 = alloca { i64, ptr }
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l61 = alloca i1
  %l64 = alloca ptr
  %l66 = alloca i8
  %l70 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l10
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store i1 false, ptr %l2, !tbaa !21
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
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
  store i64 0, ptr %l16, !tbaa !24
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
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb37
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t53, ptr %l37, !tbaa !27
  %t54 = load i64, ptr %l8, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i8, ptr %t57, i64 %t54
  %t59 = load i8, ptr %t58, !tbaa !32
  store i8 %t59, ptr %l9, !tbaa !22
  %t61 = load i8, ptr %l9, !tbaa !22
  %t63 = icmp eq i8 %t61, 46
  br i1 %t63, label %bb12, label %bb13
bb12:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 95)
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb36
bb15:
  %t66 = load i1, ptr %l2, !tbaa !21
  br i1 %t66, label %bb16, label %bb17
bb16:
  %t68 = load i64, ptr %l8, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  store i1 %t70, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t72 = load i1, ptr %l44, !tbaa !21
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t73 = load i8, ptr %l9, !tbaa !22
  %t75 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t73)
  store i1 %t75, ptr %l49
  br label %bb21
bb20:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb22
bb21:
  %t76 = load i1, ptr %l49, !tbaa !21
  store i1 %t76, ptr %l47, !tbaa !21
  br label %bb22
bb22:
  %t77 = load i1, ptr %l47, !tbaa !21
  br i1 %t77, label %bb23, label %bb24
bb23:
  %t78 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t78, ptr %l51, !tbaa !27
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = sub i64 %t79, 1
  %t83 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i8, ptr %t84, i64 %t81
  %t86 = load i8, ptr %t85, !tbaa !32
  %t88 = icmp ne i8 %t86, 46
  store i1 %t88, ptr %l50, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb25
bb25:
  %t90 = load i1, ptr %l50, !tbaa !21
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t91 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t91, ptr %l57, !tbaa !27
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = sub i64 %t92, 1
  %t96 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i8, ptr %t97, i64 %t94
  %t99 = load i8, ptr %t98, !tbaa !32
  %t101 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t99)
  store i1 %t101, ptr %l61
  br label %bb28
bb27:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb29
bb28:
  %t102 = load i1, ptr %l61, !tbaa !21
  %t103 = xor i1 %t102, true
  store i1 %t103, ptr %l56, !tbaa !21
  br label %bb29
bb29:
  %t105 = load i1, ptr %l56, !tbaa !21
  br i1 %t105, label %bb30, label %bb31
bb30:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 95)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  store ptr %l1, ptr %l64, !tbaa !29
  %t107 = load i8, ptr %l9, !tbaa !22
  %t109 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %t107)
  store i8 %t109, ptr %l66
  br label %bb34
bb34:
  %t110 = load ptr, ptr %l64, !tbaa !29
  %t111 = load i8, ptr %l66, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t110, i8 %t111)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t112 = load i64, ptr %l7, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l7, !tbaa !24
  br label %bb8
bb37:
  %t117 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t117, ptr %l70
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t118 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eanyTable(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca i64
  %l17 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l23 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca %"std/prelude/text:StringBuilder"
  %l31 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l64 = alloca i64
  %l66 = alloca i64
  %l71 = alloca i64
  %l77 = alloca { i64, [2 x i64] }
  %l80 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l90 = alloca i64
  %l93 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l95 = alloca i64
  %l96 = alloca i64
  %l98 = alloca { i64, ptr }
  %l99 = alloca i64
  %l101 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t103 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etableName(ptr %v0, ptr %s0, ptr %t1, i64 %t2)
  store { i64, ptr } %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t8 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 1
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t11 = add i64 %t7, %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t6, i64 %t7)
  %t13 = getelementptr i8, ptr %t12, i64 %t7
  call void @olang_textcopy(ptr %t13, ptr %t9, i64 %t10)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t12, 1
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t18 = extractvalue { i64, ptr } %t15, 1
  %t19 = mul i64 %t17, 1
  %t20 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t19)
  call void @llvm.memcpy.p0.p0.i64(ptr %t20, ptr %t18, i64 %t19, i1 false)
  %t21 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  %t24 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t22)
  store { i64, ptr } %t24, ptr %l20
  br label %bb2
bb2:
  %t25 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t25, ptr %lp2
  %t26 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t27 = load ptr, ptr %lp2
  store { i64, ptr } %t26, ptr %t27, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %lp2
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t33 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %v1, ptr %t28, { i64, ptr } %t30)
  store i1 %t33, ptr %l23
  br label %bb3
bb3:
  %t34 = load i1, ptr %l23, !tbaa !21
  br i1 %t34, label %bb4, label %bb5
bb4:
  %t35 = load ptr, ptr %lp2
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t36, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/emit:Emitter", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 61
  %t44 = load i64, ptr %l1, !tbaa !24
  %t47 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v0, ptr %t43, i64 %t44)
  store ptr %t47, ptr %l29
  br label %bb7
bb7:
  %t48 = load ptr, ptr %l29, !tbaa !29
  store ptr %t48, ptr %l3, !tbaa !29
  %t49 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t49, ptr %l30
  br label %bb8
bb8:
  %t50 = load %"std/prelude/text:StringBuilder", ptr %l30
  store %"std/prelude/text:StringBuilder" %t50, ptr %l4
  store ptr %l4, ptr %l31, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/generic:AnyTable", ptr %t52, i32 0, i32 0
  %t55 = load i32, ptr %t54, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeid(ptr %v0, ptr %s0, ptr %t51, i32 %t55)
  store { i64, ptr } %t58, ptr %l35
  br label %bb9
bb9:
  %t59 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t61 = load { i64, ptr }, ptr %l35, !tbaa !27
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
  %t76 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t76, { i64, ptr } %t75)
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s4
  %t78 = insertvalue [2 x i1] undef, i1 false, 0
  %t79 = insertvalue [2 x i1] %t78, i1 true, 1
  %t81 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 2, i64 8)
  store [2 x i1] %t79, ptr %t81
  store ptr %t81, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l5
  store i64 2, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s5
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s5)
  br label %bb19
bb13:
  br label %bb14
bb14:
  %t94 = load ptr, ptr %l5
  %t95 = load i64, ptr %l6, !tbaa !24
  %t98 = getelementptr [2 x i1], ptr %t94, i64 0, i64 %t95
  %t99 = load i1, ptr %t98, !tbaa !31
  %t101 = load i64, ptr %l1, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [2 x i64] }, ptr %t103, i32 0, i32 0
  store i64 5, ptr %t104
  %t106 = insertvalue { i64, i1 } undef, i64 %t101, 0
  %t108 = insertvalue { i64, i1 } %t106, i1 %t99, 1
  %t109 = getelementptr { i64, [2 x i64] }, ptr %t103, i32 0, i32 1
  store { i64, i1 } %t108, ptr %t109
  %t110 = load { i64, [2 x i64] }, ptr %t103
  store { i64, [2 x i64] } %t110, ptr %l9
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, [2 x i64] }, ptr %l9
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t112, { i64, [2 x i64] } %t113)
  br label %bb15
bb15:
  store ptr %l4, ptr %l54, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load { i64, [2 x i64] }, ptr %l9
  %t120 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s5, ptr %t116, { i64, [2 x i64] } %t117)
  store { i64, ptr } %t120, ptr %l57
  br label %bb16
bb16:
  %t121 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t122 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t123 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 1
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t126 = add i64 %t122, %t125
  %t127 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t126)
  call void @olang_textcopy(ptr %t127, ptr %t121, i64 %t122)
  %t128 = getelementptr i8, ptr %t127, i64 %t122
  call void @olang_textcopy(ptr %t128, ptr %t124, i64 %t125)
  %t129 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t127, 1
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t133 = extractvalue { i64, ptr } %t130, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t138 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t138, { i64, ptr } %t137)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s5)
  br label %bb18
bb18:
  %t140 = load i64, ptr %l6, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l6, !tbaa !24
  br label %bb11
bb19:
  call void @__olang_scope_close(ptr %s4)
  %t144 = load ptr, ptr %l3, !tbaa !29
  %t146 = getelementptr %"compiler/generic:AnyTable", ptr %t144, i32 0, i32 5
  store ptr %t146, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s9
  %t148 = load i64, ptr %l11, !tbaa !24
  store i64 %t148, ptr %l64, !tbaa !24
  %t149 = load ptr, ptr %l10, !tbaa !29
  %t151 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t149)
  store i64 %t151, ptr %l66
  br label %bb21
bb21:
  %t152 = load i64, ptr %l64, !tbaa !24
  %t153 = load i64, ptr %l66, !tbaa !24
  %t154 = icmp slt i64 %t152, %t153
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s9)
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t158 = load ptr, ptr %l10, !tbaa !29
  %t159 = load i64, ptr %l11, !tbaa !24
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t158, i64 %t159)
  store i64 %t162, ptr %l71
  br label %bb25
bb25:
  %t163 = load i64, ptr %l71, !tbaa !24
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/emit:Emitter", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t170 = trunc i64 %t163 to i32
  %t174 = call { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCodeOf(ptr %v0, ptr %t167, i32 %t170)
  store { i64, [2 x i64] } %t174, ptr %l77
  br label %bb26
bb26:
  %t175 = load { i64, [2 x i64] }, ptr %l77
  store { i64, [2 x i64] } %t175, ptr %l13
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load { i64, [2 x i64] }, ptr %l13
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t176, { i64, [2 x i64] } %t177)
  br label %bb27
bb27:
  store ptr %l4, ptr %l80, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load { i64, [2 x i64] }, ptr %l13
  %t184 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s9, ptr %t180, { i64, [2 x i64] } %t181)
  store { i64, ptr } %t184, ptr %l83
  br label %bb28
bb28:
  %t185 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t187 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = add i64 %t186, %t189
  %t191 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t190)
  call void @olang_textcopy(ptr %t191, ptr %t185, i64 %t186)
  %t192 = getelementptr i8, ptr %t191, i64 %t186
  call void @olang_textcopy(ptr %t192, ptr %t188, i64 %t189)
  %t193 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t191, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = extractvalue { i64, ptr } %t194, 1
  %t198 = mul i64 %t196, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t198)
  call void @llvm.memcpy.p0.p0.i64(ptr %t199, ptr %t197, i64 %t198, i1 false)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  %t202 = load ptr, ptr %l80, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t202, { i64, ptr } %t201)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s9)
  br label %bb30
bb30:
  %t204 = load i64, ptr %l11, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l11, !tbaa !24
  br label %bb20
bb31:
  %t208 = load ptr, ptr %l3, !tbaa !29
  %t210 = getelementptr %"compiler/generic:AnyTable", ptr %t208, i32 0, i32 5
  %t212 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t210)
  store i64 %t212, ptr %l90
  br label %bb32
bb32:
  %t213 = load i64, ptr @G_2ecompiler_2ftypes_2eAnySlotBase, !tbaa !24
  %t214 = load i64, ptr %l90, !tbaa !24
  %t216 = add i64 %t214, %t213
  store i64 %t216, ptr %l14, !tbaa !24
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l93, !tbaa !29
  %t219 = load ptr, ptr %lp2
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  store { i64, ptr } %t220, ptr %l94, !tbaa !27
  %t221 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t221, ptr %l95, !tbaa !24
  %t222 = ptrtoint ptr %s0 to i64
  store i64 %t222, ptr %l96, !tbaa !24
  %t223 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t223, label %bb33, label %bb34
bb33:
  %t225 = call ptr @__olang_region_make(ptr %s0)
  %t226 = ptrtoint ptr %t225 to i64
  store i64 %t226, ptr %l96, !tbaa !24
  br label %bb34
bb34:
  %t227 = load ptr, ptr %lp2
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  store { i64, ptr } %t228, ptr %l98, !tbaa !27
  %t229 = load i64, ptr %l14, !tbaa !24
  store i64 %t229, ptr %l99, !tbaa !24
  %t231 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t231, ptr %l101
  br label %bb35
bb35:
  %t232 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t234 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t234, 1
  %t236 = extractvalue { i64, ptr } %t234, 0
  %t237 = add i64 %t233, %t236
  %t238 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t239 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t240 = add i64 %t237, %t239
  %t241 = load i64, ptr %l99, !tbaa !24
  %t242 = call i64 @__olang_fmt_i64(ptr null, i64 %t241)
  %t243 = add i64 %t240, %t242
  %t244 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t246 = add i64 %t243, %t245
  %t247 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 1
  %t249 = extractvalue { i64, ptr } %t247, 0
  %t250 = add i64 %t246, %t249
  %t251 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t253 = add i64 %t250, %t252
  %t254 = load i64, ptr %l96
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = call ptr @__olang_scope_alloc(ptr %t255, i64 %t253)
  call void @olang_textcopy(ptr %t256, ptr %t232, i64 %t233)
  %t257 = getelementptr i8, ptr %t256, i64 %t233
  call void @olang_textcopy(ptr %t257, ptr %t235, i64 %t236)
  %t258 = getelementptr i8, ptr %t257, i64 %t236
  call void @olang_textcopy(ptr %t258, ptr %t238, i64 %t239)
  %t259 = getelementptr i8, ptr %t258, i64 %t239
  %t260 = call i64 @__olang_fmt_i64(ptr %t259, i64 %t241)
  %t261 = getelementptr i8, ptr %t259, i64 %t242
  call void @olang_textcopy(ptr %t261, ptr %t244, i64 %t245)
  %t262 = getelementptr i8, ptr %t261, i64 %t245
  call void @olang_textcopy(ptr %t262, ptr %t248, i64 %t249)
  %t263 = getelementptr i8, ptr %t262, i64 %t249
  call void @olang_textcopy(ptr %t263, ptr %t251, i64 %t252)
  %t264 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t256, 1
  %t267 = load i64, ptr %l96
  %t268 = inttoptr i64 %t267 to ptr
  %t269 = extractvalue { i64, ptr } %t265, 0
  %t270 = extractvalue { i64, ptr } %t265, 1
  %t271 = mul i64 %t269, 1
  %t272 = call ptr @__olang_scope_alloc(ptr %t268, i64 %t271)
  call void @llvm.memcpy.p0.p0.i64(ptr %t272, ptr %t270, i64 %t271, i1 false)
  %t273 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t272, 1
  %t275 = load ptr, ptr %l93, !tbaa !29
  %t276 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t277 = load i64, ptr %l95, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t275, { i64, ptr } %t276, i64 %t277, { i64, ptr } %t274, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb36
bb36:
  %t279 = load ptr, ptr %lp2
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t280, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecoroDecls(ptr %v0, ptr %a0) #0 {
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
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t1, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d10, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t3, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d11, i32 0, i32 1) }, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d12, i32 0, i32 1) })
  br label %bb2
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t5, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d13, i32 0, i32 1) }, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t7, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d15, i32 0, i32 1) }, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t9, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d18, i32 0, i32 1) })
  br label %bb5
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t11, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d19, i32 0, i32 1) }, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t13, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d21, i32 0, i32 1) }, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb7
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t15, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d23, i32 0, i32 1) }, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d24, i32 0, i32 1) })
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t17, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d25, i32 0, i32 1) }, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb9
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t19, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d27, i32 0, i32 1) }, { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb10
bb10:
  %t21 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t21, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d29, i32 0, i32 1) }, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d30, i32 0, i32 1) })
  br label %bb11
bb11:
  %t23 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t23, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d31, i32 0, i32 1) }, { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d32, i32 0, i32 1) })
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgBytes(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/emit:Emitter", ptr %t2, i32 0, i32 3
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i32 %t7, ptr %l4
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t9 = load i32, ptr %l4, !tbaa !23
  %t10 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t8, i32 %t9)
  store i64 %t10, ptr %l5
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t11 = load i64, ptr %l5, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t7 = extractvalue { i64, ptr } %a2, 1
  %t8 = extractvalue { i64, ptr } %a2, 0
  %t9 = add i64 %t5, %t8
  %t10 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t9)
  call void @olang_textcopy(ptr %t10, ptr %t4, i64 %t5)
  %t11 = getelementptr i8, ptr %t10, i64 %t5
  call void @olang_textcopy(ptr %t11, ptr %t7, i64 %t8)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t10, 1
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t16 = extractvalue { i64, ptr } %t13, 1
  %t17 = mul i64 %t15, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  call void @llvm.memcpy.p0.p0.i64(ptr %t18, ptr %t16, i64 %t17, i1 false)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %s0, ptr %a0, { i64, ptr } %a1, { i64, ptr } %t20)
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclared(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l6 = alloca { i64, ptr }
  %l10 = alloca i1
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l21 = alloca i64
  %l24 = alloca i1
  %l27 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca { i64, [2 x i64] }
  %l30 = alloca i32
  %l33 = alloca { i64, ptr }
  %l37 = alloca i64
  %l40 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t1, { i64, [2 x i64] } %t2)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/emit:Emitter", ptr %t7, i32 0, i32 22
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } %t10)
  store i1 %t13, ptr %l10
  br label %bb2
bb2:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, [2 x i64] }, ptr %l1
  %t19 = call i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %t15, { i64, [2 x i64] } %t16)
  store i32 %t19, ptr %l13
  br label %bb6
bb6:
  %t20 = load i32, ptr %l13, !tbaa !23
  store i32 %t20, ptr %l3, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  %t22 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t22, ptr %l15
  %t23 = load i32, ptr %l3, !tbaa !23
  store i32 %t23, ptr %l16, !tbaa !23
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t24, ptr %l17, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load { i64, [2 x i64] }, ptr %l1
  %t27 = load i32, ptr %l3, !tbaa !23
  %t31 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t25, { i64, [2 x i64] } %t26, i32 %t27)
  store i64 %t31, ptr %l21
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load { i64, [2 x i64] }, ptr %l1
  %t36 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %t32, { i64, [2 x i64] } %t33)
  store i1 %t36, ptr %l24
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l14, !tbaa !29
  %t38 = load { i64, [2 x i64] }, ptr %l15
  %t39 = load i32, ptr %l16, !tbaa !23
  %t40 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t41 = load i64, ptr %l21, !tbaa !24
  %t42 = load i1, ptr %l24, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %s0, ptr %s0, ptr %t37, { i64, [2 x i64] } %t38, i32 %t39, { i64, ptr } %t40, i64 %t41, i1 %t42, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) })
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load { i64, [2 x i64] }, ptr %l1
  %t47 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %t43, { i64, [2 x i64] } %t44)
  store i1 %t47, ptr %l27
  br label %bb10
bb10:
  %t48 = load i1, ptr %l27, !tbaa !21
  br i1 %t48, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l28, !tbaa !29
  %t50 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t50, ptr %l29
  %t51 = load i32, ptr %l3, !tbaa !23
  store i32 %t51, ptr %l30, !tbaa !23
  %t52 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 1
  %t55 = extractvalue { i64, ptr } %t52, 0
  %t56 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t58 = add i64 %t55, %t57
  %t59 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t58)
  call void @olang_textcopy(ptr %t59, ptr %t54, i64 %t55)
  %t60 = getelementptr i8, ptr %t59, i64 %t55
  call void @olang_textcopy(ptr %t60, ptr %t56, i64 %t57)
  %t61 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t59, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = extractvalue { i64, ptr } %t62, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l33, !tbaa !27
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, [2 x i64] }, ptr %l1
  %t72 = load i32, ptr %l3, !tbaa !23
  %t76 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t70, { i64, [2 x i64] } %t71, i32 %t72)
  store i64 %t76, ptr %l37
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load { i64, [2 x i64] }, ptr %l1
  %t81 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %t77, { i64, [2 x i64] } %t78)
  store i1 %t81, ptr %l40
  br label %bb14
bb14:
  %t82 = load ptr, ptr %l28, !tbaa !29
  %t83 = load { i64, [2 x i64] }, ptr %l29
  %t84 = load i32, ptr %l30, !tbaa !23
  %t85 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t86 = load i64, ptr %l37, !tbaa !24
  %t87 = load i1, ptr %l40, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %s2, ptr %s2, ptr %t82, { i64, [2 x i64] } %t83, i32 %t84, { i64, ptr } %t85, i64 %t86, i1 %t87, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) })
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l7 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:Emitter", ptr %t9, i32 0, i32 3
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l7, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 3
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l11
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l7, !tbaa !29
  %t22 = load i32, ptr %l11, !tbaa !23
  %t23 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePayloadSize(ptr %v0, ptr %t21, i32 %t22)
  store i64 %t23, ptr %l12
  br label %bb3
bb3:
  %t24 = load i64, ptr %l12, !tbaa !24
  %t25 = icmp sge i64 %t24, 0
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportArrayResult(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i1
  %l11 = alloca i1
  %l14 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t13 = load i32, ptr %l8, !tbaa !23
  %t14 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load i1, ptr %l9, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2earrayOfE(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb6
bb5:
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t24 = load i32, ptr %l14, !tbaa !23
  %t26 = icmp ne i32 %t24, %t23
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l11, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 18
  %t7 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store { i64, ptr } %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i1, ptr %l8, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb6
bb4:
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t15, ptr %l11
  br label %bb5
bb5:
  %t16 = load i1, ptr %l11, !tbaa !21
  store i1 %t16, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l9, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i64 1, ptr %l12, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load i64, ptr %l12, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca i32
  %l20 = alloca i32
  %l24 = alloca i1
  %l31 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l49 = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l10, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l13
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = load i32, ptr %l13, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l14
  br label %bb2
bb2:
  %t15 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t17 = trunc i64 21 to i32
  %t18 = icmp eq i32 %t15, %t17
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l20
  br label %bb6
bb6:
  %t27 = load i32, ptr %l20, !tbaa !23
  store i32 %t27, ptr %l3, !tbaa !23
  %t28 = load i32, ptr %l3, !tbaa !23
  %t29 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t32 = icmp ne i32 %t28, %t29
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load i32, ptr %l3, !tbaa !23
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t38 = icmp ne i32 %t34, %t35
  store i1 %t38, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l24, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/emit:Emitter", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load i32, ptr %l3, !tbaa !23
  %t48 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t44, i32 %t45)
  store i1 %t48, ptr %l31
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t49 = load ptr, ptr %l2, !tbaa !29
  store ptr %t49, ptr %l32, !tbaa !29
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t51 = load i32, ptr %l1, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l35
  br label %bb14
bb14:
  %t55 = load ptr, ptr %l32, !tbaa !29
  %t56 = load i32, ptr %l35, !tbaa !23
  %t57 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t55, i32 %t56)
  store { i64, ptr } %t57, ptr %l36
  br label %bb15
bb15:
  %t58 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t58, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  store i64 %t61, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = icmp slt i64 %t63, %t64
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t71, ptr %l43, !tbaa !27
  %t72 = load i64, ptr %l5, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i32, ptr %t75, i64 %t72
  %t77 = load i32, ptr %t76, !tbaa !33
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/emit:Emitter", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t86 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t82, i32 %t77)
  store i1 %t86, ptr %l49
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t87 = load i64, ptr %l5, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l5, !tbaa !24
  br label %bb16
bb22:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esoleName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, i64 }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, i64 }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i32, i64 }
  %l11 = alloca i64
  %l21 = alloca { i64, i64 }
  %l28 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, i64 }
  %l45 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l61 = alloca { i32, i64 }
  %l68 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 5
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_be71ff40133d1c55_cc24820c9716c1a9)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:Emitter", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/lower:Lowerer", ptr %t14, i32 0, i32 5
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l2, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call { i64, i64 } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eLocalPlace(ptr %v0, ptr %t19, i64 %t20)
  store { i64, i64 } %t23, ptr %l21
  br label %bb4
bb4:
  %t24 = load { i64, i64 }, ptr %l21
  store { i64, i64 } %t24, ptr %l3
  %t25 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  store i64 %t26, ptr %l4, !tbaa !24
  %t28 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  store i64 %t29, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sge i64 %t31, 0
  br i1 %t33, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estableSym(ptr %v0, ptr %s1, ptr %t35, i64 %t36)
  store { i64, ptr } %t39, ptr %l28
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t43 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 1
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t46 = add i64 %t42, %t45
  %t47 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t51 = call i64 @__olang_fmt_i64(ptr null, i64 %t40)
  %t52 = add i64 %t49, %t51
  %t53 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t52)
  call void @olang_textcopy(ptr %t53, ptr %t41, i64 %t42)
  %t54 = getelementptr i8, ptr %t53, i64 %t42
  call void @olang_textcopy(ptr %t54, ptr %t44, i64 %t45)
  %t55 = getelementptr i8, ptr %t54, i64 %t45
  call void @olang_textcopy(ptr %t55, ptr %t47, i64 %t48)
  %t56 = getelementptr i8, ptr %t55, i64 %t48
  %t57 = call i64 @__olang_fmt_i64(ptr %t56, i64 %t40)
  %t58 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t53, 1
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t62 = extractvalue { i64, ptr } %t59, 1
  %t63 = mul i64 %t61, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t63)
  call void @llvm.memcpy.p0.p0.i64(ptr %t64, ptr %t62, i64 %t63, i1 false)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  %t68 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t66)
  store { i64, ptr } %t68, ptr %l32
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t69 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb9:
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t71 = load i64, ptr %l1, !tbaa !24
  %t74 = call { i64, i64 } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGlobalPlace(ptr %v0, ptr %t70, i64 %t71)
  store { i64, i64 } %t74, ptr %l35
  br label %bb10
bb10:
  %t75 = load { i64, i64 }, ptr %l35
  store { i64, i64 } %t75, ptr %l6
  %t76 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 0
  %t77 = load i64, ptr %t76, !tbaa !24
  store i64 %t77, ptr %l7, !tbaa !24
  %t79 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 1
  %t80 = load i64, ptr %t79, !tbaa !24
  store i64 %t80, ptr %l8, !tbaa !24
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = icmp sge i64 %t82, 0
  br i1 %t84, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/emit:Emitter", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/load:Loader", ptr %t92, i32 0, i32 10
  %t95 = load i64, ptr %l7, !tbaa !24
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t94, i64 %t95)
  store ptr %t98, ptr %l45
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t99 = load ptr, ptr %l45, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  store { i64, ptr } %t102, ptr %l47, !tbaa !27
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/emit:Emitter", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 0
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/load:Loader", ptr %t109, i32 0, i32 3
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t113 = load i64, ptr %l8, !tbaa !24
  %t115 = trunc i64 %t113 to i32
  %t119 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s3, ptr %t112, i32 %t115)
  store { i64, ptr } %t119, ptr %l55
  br label %bb14
bb14:
  %t120 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t122 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t125 = add i64 %t121, %t124
  %t126 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t128 = add i64 %t125, %t127
  %t129 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = add i64 %t128, %t131
  %t133 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t132)
  call void @olang_textcopy(ptr %t133, ptr %t120, i64 %t121)
  %t134 = getelementptr i8, ptr %t133, i64 %t121
  call void @olang_textcopy(ptr %t134, ptr %t123, i64 %t124)
  %t135 = getelementptr i8, ptr %t134, i64 %t124
  call void @olang_textcopy(ptr %t135, ptr %t126, i64 %t127)
  %t136 = getelementptr i8, ptr %t135, i64 %t127
  call void @olang_textcopy(ptr %t136, ptr %t130, i64 %t131)
  %t137 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t133, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = extractvalue { i64, ptr } %t138, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t147 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t145)
  store { i64, ptr } %t147, ptr %l58
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t148 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t148, ptr %rv
  br label %ret
bb16:
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t150 = load i64, ptr %l1, !tbaa !24
  %t153 = call { i32, i64 } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePlaceKey(ptr %v0, ptr %t149, i64 %t150)
  store { i32, i64 } %t153, ptr %l61
  br label %bb17
bb17:
  %t154 = load { i32, i64 }, ptr %l61
  store { i32, i64 } %t154, ptr %l9
  %t155 = getelementptr { i32, i64 }, ptr %l9, i32 0, i32 0
  %t156 = load i32, ptr %t155, !tbaa !23
  %t158 = getelementptr { i32, i64 }, ptr %l9, i32 0, i32 1
  %t159 = load i64, ptr %t158, !tbaa !24
  store i64 %t159, ptr %l11, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/emit:Emitter", ptr %t161, i32 0, i32 3
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t167 = inttoptr i64 0 to ptr
  %t170 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t167, ptr %t164, i32 %t156)
  store { i64, ptr } %t170, ptr %l68
  br label %bb18
bb18:
  %t171 = load i64, ptr %l11, !tbaa !24
  %t172 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t174 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t177 = add i64 %t173, %t176
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t180 = add i64 %t177, %t179
  %t182 = call i64 @__olang_fmt_i64(ptr null, i64 %t171)
  %t183 = add i64 %t180, %t182
  %t184 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t183)
  call void @olang_textcopy(ptr %t184, ptr %t172, i64 %t173)
  %t185 = getelementptr i8, ptr %t184, i64 %t173
  call void @olang_textcopy(ptr %t185, ptr %t175, i64 %t176)
  %t186 = getelementptr i8, ptr %t185, i64 %t176
  call void @olang_textcopy(ptr %t186, ptr %t178, i64 %t179)
  %t187 = getelementptr i8, ptr %t186, i64 %t179
  %t188 = call i64 @__olang_fmt_i64(ptr %t187, i64 %t171)
  %t189 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t184, 1
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t193 = extractvalue { i64, ptr } %t190, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t199 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t197)
  store { i64, ptr } %t199, ptr %l72
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t200 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t200, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t11 = getelementptr %"compiler/emit:Emitter", ptr %t9, i32 0, i32 45
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
  %t79 = getelementptr %"compiler/emit:Emitter", ptr %t77, i32 0, i32 46
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

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eapart(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, %"compiler/mir:Range" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca %"compiler/mir:Range"
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca %"compiler/mir:Lvalue"
  %l24 = alloca i1
  %l30 = alloca i32
  %l33 = alloca i32
  %l55 = alloca { i64, [4 x i64] }
  %l61 = alloca i1
  %l62 = alloca i1
  %l65 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  store %"compiler/mir:Range" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t1, ptr %l3, !tbaa !23
  %t3 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t4 = load { i64, [2 x i64] }, ptr %t3
  store { i64, [2 x i64] } %t4, ptr %l4
  %t6 = load { i64, [2 x i64] }, ptr %l4
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t15 = load i32, ptr %l5, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
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
  call void @__olang_check_failed(ptr @olang_loc_ed162375e135a06c_e406bb0ac0d59940)
  unreachable
bb9:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load %"compiler/mir:Lvalue", ptr %l1
  %t22 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2ederefs(ptr %v0, ptr %t18, %"compiler/mir:Lvalue" %t19)
  store i1 %t22, ptr %l24
  br label %bb10
bb10:
  %t23 = load i1, ptr %l24, !tbaa !21
  br i1 %t23, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  store i32 0, ptr %l6, !tbaa !23
  %t25 = getelementptr %"compiler/mir:Range", ptr %l2, i32 0, i32 1
  %t26 = load i32, ptr %t25, !tbaa !23
  store i32 %t26, ptr %l7, !tbaa !23
  store i32 1, ptr %l8, !tbaa !23
  %t28 = load i32, ptr %l7, !tbaa !23
  %t29 = load i32, ptr %l6, !tbaa !23
  %t32 = icmp sgt i32 %t28, %t29
  br i1 %t32, label %bb14, label %bb15
bb14:
  %t34 = load i32, ptr %l8, !tbaa !23
  %t36 = icmp sgt i32 %t34, 0
  br i1 %t36, label %bb16, label %bb17
bb15:
  store i32 0, ptr %l30, !tbaa !23
  br label %bb19
bb16:
  %t38 = load i32, ptr %l7, !tbaa !23
  %t39 = load i32, ptr %l6, !tbaa !23
  %t42 = sub i32 %t38, %t39
  %t43 = load i32, ptr %l8, !tbaa !23
  %t46 = add i32 %t42, %t43
  %t48 = sub i32 %t46, 1
  %t49 = load i32, ptr %l8, !tbaa !23
  %t52 = sdiv i32 %t48, %t49
  store i32 %t52, ptr %l33, !tbaa !23
  br label %bb18
bb17:
  store i32 0, ptr %l33, !tbaa !23
  br label %bb18
bb18:
  %t54 = load i32, ptr %l33, !tbaa !23
  store i32 %t54, ptr %l30, !tbaa !23
  br label %bb19
bb19:
  %t55 = load i32, ptr %l30, !tbaa !23
  store i32 %t55, ptr %l9, !tbaa !23
  store i32 0, ptr %l10, !tbaa !23
  br label %bb20
bb20:
  %t56 = load i32, ptr %l10, !tbaa !23
  %t57 = load i32, ptr %l9, !tbaa !23
  %t60 = icmp slt i32 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb21, label %bb22
bb21:
  br label %bb52
bb22:
  br label %bb23
bb23:
  %t64 = load i32, ptr %l6, !tbaa !23
  %t65 = load i32, ptr %l10, !tbaa !23
  %t66 = load i32, ptr %l8, !tbaa !23
  %t69 = mul i32 %t65, %t66
  %t72 = add i32 %t64, %t69
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/mir:Range", ptr %l2
  %t78 = sext i32 %t72 to i64
  %t82 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t74, %"compiler/mir:Range" %t75, i64 %t78)
  store { i64, [4 x i64] } %t82, ptr %l55
  br label %bb24
bb24:
  %t83 = load { i64, [4 x i64] }, ptr %l55
  store { i64, [4 x i64] } %t83, ptr %l12
  %t84 = load { i64, [4 x i64] }, ptr %l12
  %t86 = extractvalue { i64, [4 x i64] } %t84, 0
  %t87 = icmp eq i64 %t86, 1
  br i1 %t87, label %bb25, label %bb26
bb25:
  %t89 = getelementptr { i64, [4 x i64] }, ptr %l12, i32 0, i32 1
  %t90 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/mir:Lvalue", ptr %t90
  store %"compiler/mir:Lvalue" %t91, ptr %l13
  br label %bb27
bb26:
  br label %bb45
bb27:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load %"compiler/mir:Lvalue", ptr %l13
  %t97 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2ederefs(ptr %v0, ptr %t93, %"compiler/mir:Lvalue" %t94)
  store i1 %t97, ptr %l61
  br label %bb28
bb28:
  %t98 = load i1, ptr %l61, !tbaa !21
  br i1 %t98, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb32
bb30:
  %t99 = load %"compiler/mir:Lvalue", ptr %l13
  %t100 = load i32, ptr %l3, !tbaa !23
  %t103 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aLvalue_2eBaseIs(%"compiler/mir:Lvalue" %t99, i32 %t100)
  store i1 %t103, ptr %l65
  br label %bb31
bb31:
  %t104 = load i1, ptr %l65, !tbaa !21
  store i1 %t104, ptr %l62, !tbaa !21
  br label %bb32
bb32:
  %t105 = load i1, ptr %l62, !tbaa !21
  br i1 %t105, label %bb33, label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t107 = getelementptr %"compiler/mir:Lvalue", ptr %l13, i32 0, i32 0
  %t108 = load { i64, [2 x i64] }, ptr %t107
  %t112 = extractvalue { i64, [2 x i64] } %t108, 0
  %t113 = icmp eq i64 %t112, 1
  br i1 %t113, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  store i1 false, ptr %rv
  br label %ret
bb43:
  call void @__olang_check_failed(ptr @olang_loc_5f9c6fbf78b3e51d_e9dc61b8da3e01d1)
  unreachable
bb44:
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
  call void @__olang_check_failed(ptr @olang_loc_afa6164151ba006_66d817e1c679673a)
  unreachable
bb50:
  br label %bb51
bb51:
  %t116 = load i32, ptr %l10, !tbaa !23
  %t118 = add i32 %t116, 1
  store i32 %t118, ptr %l10, !tbaa !23
  br label %bb20
bb52:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca i64
  %l14 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %t1, i32 %a3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sgt i64 %t7, 8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i1, ptr %l4, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb3:
  br label %bb9
bb4:
  store { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l14, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l14, !tbaa !27
  br label %bb6
bb6:
  %t13 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/emit:fnEm", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t19 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %t19, ptr %t17, { i64, ptr } %t18)
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t30 = extractvalue { i64, ptr } %t23, 1
  %t31 = extractvalue { i64, ptr } %t23, 0
  %t32 = add i64 %t28, %t31
  %t33 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t35 = add i64 %t32, %t34
  %t37 = extractvalue { i64, ptr } %t24, 1
  %t38 = extractvalue { i64, ptr } %t24, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t44 = extractvalue { i64, ptr } %t25, 1
  %t45 = extractvalue { i64, ptr } %t25, 0
  %t46 = add i64 %t42, %t45
  %t47 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t51 = call i64 @__olang_fmt_i64(ptr null, i64 %t26)
  %t52 = add i64 %t49, %t51
  %t53 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t27, i64 %t28)
  %t57 = getelementptr i8, ptr %t56, i64 %t28
  call void @olang_textcopy(ptr %t57, ptr %t30, i64 %t31)
  %t58 = getelementptr i8, ptr %t57, i64 %t31
  call void @olang_textcopy(ptr %t58, ptr %t33, i64 %t34)
  %t59 = getelementptr i8, ptr %t58, i64 %t34
  call void @olang_textcopy(ptr %t59, ptr %t37, i64 %t38)
  %t60 = getelementptr i8, ptr %t59, i64 %t38
  call void @olang_textcopy(ptr %t60, ptr %t40, i64 %t41)
  %t61 = getelementptr i8, ptr %t60, i64 %t41
  call void @olang_textcopy(ptr %t61, ptr %t44, i64 %t45)
  %t62 = getelementptr i8, ptr %t61, i64 %t45
  call void @olang_textcopy(ptr %t62, ptr %t47, i64 %t48)
  %t63 = getelementptr i8, ptr %t62, i64 %t48
  %t64 = call i64 @__olang_fmt_i64(ptr %t63, i64 %t26)
  %t65 = getelementptr i8, ptr %t63, i64 %t51
  call void @olang_textcopy(ptr %t65, ptr %t53, i64 %t54)
  %t66 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t56, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } %t67, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t77 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t22, { i64, ptr } %t74)
  store { i64, ptr } %t77, ptr %l25
  br label %bb8
bb8:
  %t78 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t78, ptr %rv
  br label %ret
bb9:
  %t79 = load i1, ptr %l4, !tbaa !21
  br i1 %t79, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb12
bb11:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb12
bb12:
  %t81 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t81, ptr %l7, !tbaa !27
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/emit:fnEm", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t86 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t87 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %t87, ptr %t85, { i64, ptr } %t86)
  br label %bb13
bb13:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t94 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t97 = extractvalue { i64, ptr } %t91, 1
  %t98 = extractvalue { i64, ptr } %t91, 0
  %t99 = add i64 %t95, %t98
  %t100 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t102 = add i64 %t99, %t101
  %t104 = extractvalue { i64, ptr } %t92, 1
  %t105 = extractvalue { i64, ptr } %t92, 0
  %t106 = add i64 %t102, %t105
  %t107 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t109 = add i64 %t106, %t108
  %t111 = extractvalue { i64, ptr } %t93, 1
  %t112 = extractvalue { i64, ptr } %t93, 0
  %t113 = add i64 %t109, %t112
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t115 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t116 = add i64 %t113, %t115
  %t117 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t116)
  call void @olang_textcopy(ptr %t117, ptr %t94, i64 %t95)
  %t118 = getelementptr i8, ptr %t117, i64 %t95
  call void @olang_textcopy(ptr %t118, ptr %t97, i64 %t98)
  %t119 = getelementptr i8, ptr %t118, i64 %t98
  call void @olang_textcopy(ptr %t119, ptr %t100, i64 %t101)
  %t120 = getelementptr i8, ptr %t119, i64 %t101
  call void @olang_textcopy(ptr %t120, ptr %t104, i64 %t105)
  %t121 = getelementptr i8, ptr %t120, i64 %t105
  call void @olang_textcopy(ptr %t121, ptr %t107, i64 %t108)
  %t122 = getelementptr i8, ptr %t121, i64 %t108
  call void @olang_textcopy(ptr %t122, ptr %t111, i64 %t112)
  %t123 = getelementptr i8, ptr %t122, i64 %t112
  call void @olang_textcopy(ptr %t123, ptr %t114, i64 %t115)
  %t124 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t117, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = extractvalue { i64, ptr } %t125, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t135 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t90, { i64, ptr } %t132)
  store { i64, ptr } %t135, ptr %l37
  br label %bb14
bb14:
  %t136 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t136, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eelemAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l14 = alloca i32
  %l25 = alloca i32
  %l28 = alloca i1
  %l29 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i32 }
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
  store ptr %t7, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t9, i32 %a2)
  store i32 %t13, ptr %l14
  br label %bb1
bb1:
  %t14 = load i32, ptr %l14, !tbaa !23
  store i32 %t14, ptr %l6, !tbaa !23
  %t15 = load i32, ptr %l6, !tbaa !23
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t19 = icmp eq i32 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t21 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s1, ptr %t21, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d58, i32 0, i32 1) })
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = extractvalue { i64, ptr } %t23, 0
  %t27 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t25, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = insertvalue { { i64, ptr }, i32 } undef, { i64, ptr } %t29, 0
  %t34 = insertvalue { { i64, ptr }, i32 } %t32, i32 %t30, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i32 } %t34, ptr %rv
  br label %ret
bb5:
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t37 = load i32, ptr %l6, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l25
  br label %bb6
bb6:
  %t41 = load i32, ptr %l25, !tbaa !23
  store i32 %t41, ptr %l7, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l6, !tbaa !23
  %t46 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l28
  br label %bb7
bb7:
  %t47 = load i1, ptr %l28, !tbaa !21
  br i1 %t47, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l29, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l6, !tbaa !23
  %t53 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s3, ptr %t49, i32 %t50)
  store { i64, ptr } %t53, ptr %l32
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t56 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t58 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t66 = extractvalue { i64, ptr } %t54, 1
  %t67 = extractvalue { i64, ptr } %t54, 0
  %t68 = add i64 %t64, %t67
  %t69 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t71 = add i64 %t68, %t70
  %t73 = extractvalue { i64, ptr } %t55, 1
  %t74 = extractvalue { i64, ptr } %t55, 0
  %t75 = add i64 %t71, %t74
  %t76 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t75)
  call void @olang_textcopy(ptr %t76, ptr %t56, i64 %t57)
  %t77 = getelementptr i8, ptr %t76, i64 %t57
  call void @olang_textcopy(ptr %t77, ptr %t59, i64 %t60)
  %t78 = getelementptr i8, ptr %t77, i64 %t60
  call void @olang_textcopy(ptr %t78, ptr %t62, i64 %t63)
  %t79 = getelementptr i8, ptr %t78, i64 %t63
  call void @olang_textcopy(ptr %t79, ptr %t66, i64 %t67)
  %t80 = getelementptr i8, ptr %t79, i64 %t67
  call void @olang_textcopy(ptr %t80, ptr %t69, i64 %t70)
  %t81 = getelementptr i8, ptr %t80, i64 %t70
  call void @olang_textcopy(ptr %t81, ptr %t73, i64 %t74)
  %t82 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t76, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = extractvalue { i64, ptr } %t83, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = load ptr, ptr %l29, !tbaa !29
  %t93 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v4, ptr %v4, ptr %t91, { i64, ptr } %t90)
  store { i64, ptr } %t93, ptr %l37
  br label %bb11
bb11:
  %t94 = load i32, ptr %l7, !tbaa !23
  %t95 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t96 = insertvalue { { i64, ptr }, i32 } undef, { i64, ptr } %t95, 0
  %t98 = insertvalue { { i64, ptr }, i32 } %t96, i32 %t94, 1
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i32 } %t98, ptr %rv
  br label %ret
bb12:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l40, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t103 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t106 = extractvalue { i64, ptr } %t102, 1
  %t107 = extractvalue { i64, ptr } %t102, 0
  %t108 = add i64 %t104, %t107
  %t109 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t111 = add i64 %t108, %t110
  %t112 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t111)
  call void @olang_textcopy(ptr %t112, ptr %t103, i64 %t104)
  %t113 = getelementptr i8, ptr %t112, i64 %t104
  call void @olang_textcopy(ptr %t113, ptr %t106, i64 %t107)
  %t114 = getelementptr i8, ptr %t113, i64 %t107
  call void @olang_textcopy(ptr %t114, ptr %t109, i64 %t110)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t112, 1
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t119 = extractvalue { i64, ptr } %t116, 1
  %t120 = mul i64 %t118, 1
  %t121 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t120)
  call void @llvm.memcpy.p0.p0.i64(ptr %t121, ptr %t119, i64 %t120, i1 false)
  %t122 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  %t126 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t101, { i64, ptr } %t123)
  store { i64, ptr } %t126, ptr %l45
  br label %bb13
bb13:
  %t127 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  %t129 = extractvalue { i64, ptr } %t127, 1
  %t130 = mul i64 %t128, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t131, ptr %t129, i64 %t130, i1 false)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  %t135 = load ptr, ptr %l40, !tbaa !29
  %t138 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %s0, ptr %t135, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d64, i32 0, i32 1) }, { i64, ptr } %t133, { i64, ptr } %a4)
  store { i64, ptr } %t138, ptr %l48
  br label %bb14
bb14:
  %t139 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t139, ptr %l8, !tbaa !27
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l49, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i32, ptr %l7, !tbaa !23
  %t145 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t141, i32 %t142)
  store { i64, ptr } %t145, ptr %l52
  br label %bb15
bb15:
  %t146 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t148 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t150 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t153 = add i64 %t149, %t152
  %t154 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t158 = extractvalue { i64, ptr } %t146, 1
  %t159 = extractvalue { i64, ptr } %t146, 0
  %t160 = add i64 %t156, %t159
  %t161 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t163 = add i64 %t160, %t162
  %t165 = extractvalue { i64, ptr } %t147, 1
  %t166 = extractvalue { i64, ptr } %t147, 0
  %t167 = add i64 %t163, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t148, i64 %t149)
  %t169 = getelementptr i8, ptr %t168, i64 %t149
  call void @olang_textcopy(ptr %t169, ptr %t151, i64 %t152)
  %t170 = getelementptr i8, ptr %t169, i64 %t152
  call void @olang_textcopy(ptr %t170, ptr %t154, i64 %t155)
  %t171 = getelementptr i8, ptr %t170, i64 %t155
  call void @olang_textcopy(ptr %t171, ptr %t158, i64 %t159)
  %t172 = getelementptr i8, ptr %t171, i64 %t159
  call void @olang_textcopy(ptr %t172, ptr %t161, i64 %t162)
  %t173 = getelementptr i8, ptr %t172, i64 %t162
  call void @olang_textcopy(ptr %t173, ptr %t165, i64 %t166)
  %t174 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t168, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = extractvalue { i64, ptr } %t175, 1
  %t179 = mul i64 %t177, 1
  %t180 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t180, ptr %t178, i64 %t179, i1 false)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  %t183 = load ptr, ptr %l49, !tbaa !29
  %t185 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v4, ptr %v4, ptr %t183, { i64, ptr } %t182)
  store { i64, ptr } %t185, ptr %l57
  br label %bb16
bb16:
  %t186 = load i32, ptr %l7, !tbaa !23
  %t187 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t188 = insertvalue { { i64, ptr }, i32 } undef, { i64, ptr } %t187, 0
  %t190 = insertvalue { { i64, ptr }, i32 } %t188, i32 %t186, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i32 } %t190, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i32 }, ptr %rv
  ret { { i64, ptr }, i32 } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t7, i32 %a1)
  store i32 %t11, ptr %l6
  br label %bb1
bb1:
  %t12 = load i32, ptr %l6, !tbaa !23
  %t13 = icmp ne i32 %t12, 0
  store i1 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2efreshDrops(ptr %v0, ptr %a0) #0 {
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
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, [2 x i64] }
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l45 = alloca ptr
  %l48 = alloca i64
  %l52 = alloca i32
  %l57 = alloca %"compiler/mir:Local"
  %l61 = alloca i1
  %l62 = alloca i1
  %l65 = alloca i1
  %l67 = alloca { i64, [2 x i64] }
  %l68 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i32
  %l77 = alloca { i64, [2 x i64] }
  %l78 = alloca i32
  %l79 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l93 = alloca i1
  %l103 = alloca ptr
  %l107 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
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
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr %"compiler/mir:Fn", ptr %t14, i32 0, i32 5
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l19
  br label %bb1
bb1:
  %t19 = load i64, ptr %l19, !tbaa !24
  store i64 %t19, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb2, label %bb3
bb2:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb4:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l26, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t46 = load i64, ptr %l26, !tbaa !24
  store i64 %t46, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l23, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb10:
  br label %bb11
bb11:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l8, !tbaa !24
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/mir:Fn", ptr %t66, i32 0, i32 5
  store ptr %t68, ptr %l45, !tbaa !29
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t71 = getelementptr %"compiler/mir:Fn", ptr %t69, i32 0, i32 5
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l48
  br label %bb12
bb12:
  %t74 = load i64, ptr %l48, !tbaa !24
  %t75 = sub i64 %t74, 1
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load ptr, ptr %l45, !tbaa !29
  %t82 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t80, i64 %t79)
  store i32 %t82, ptr %l52
  br label %bb13
bb13:
  %t83 = load i32, ptr %l52, !tbaa !23
  store i32 %t83, ptr %l9, !tbaa !23
  %t84 = load ptr, ptr %l2, !tbaa !29
  %t86 = getelementptr %"compiler/mir:Fn", ptr %t84, i32 0, i32 7
  %t87 = load i32, ptr %l9, !tbaa !23
  %t89 = sext i32 %t87 to i64
  %t92 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t86, i64 %t89)
  store %"compiler/mir:Local" %t92, ptr %l57
  br label %bb14
bb14:
  %t93 = getelementptr %"compiler/mir:Local", ptr %l57, i32 0, i32 2
  %t94 = load i32, ptr %t93, !tbaa !23
  store i32 %t94, ptr %l10, !tbaa !23
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t97 = load i32, ptr %l10, !tbaa !23
  %t100 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t96, i32 %t97)
  store i1 %t100, ptr %l61
  br label %bb15
bb15:
  %t101 = load i1, ptr %l61, !tbaa !21
  br i1 %t101, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb19
bb17:
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t103 = load i32, ptr %l10, !tbaa !23
  %t106 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t106, ptr %l65
  br label %bb18
bb18:
  %t107 = load i1, ptr %l65, !tbaa !21
  %t108 = xor i1 %t107, true
  store i1 %t108, ptr %l62, !tbaa !21
  br label %bb19
bb19:
  %t110 = load i1, ptr %l62, !tbaa !21
  br i1 %t110, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb21:
  br label %bb22
bb22:
  %t111 = load ptr, ptr %l1, !tbaa !29
  store ptr %t111, ptr %l68, !tbaa !29
  %t112 = load i32, ptr %l10, !tbaa !23
  store i32 %t112, ptr %l69, !tbaa !23
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/emit:fnEm", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/emit:Emitter", ptr %t116, i32 0, i32 39
  %t119 = load i32, ptr %l10, !tbaa !23
  %t122 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t118, i32 %t119)
  %t123 = extractvalue { i32, i64 } %t122, 1
  %t124 = extractvalue { i32, i64 } %t122, 0
  store i32 %t124, ptr %l76
  %t125 = icmp ne i32 %t124, 0
  br i1 %t125, label %bb24, label %ok.126, !prof !99
ok.126:
  store i64 %t123, ptr %l75
  br label %bb23
bb23:
  %t127 = load i64, ptr %l75, !tbaa !24
  store i64 %t127, ptr %l70, !tbaa !24
  br label %bb26
bb24:
  br label %bb25
bb25:
  store i64 -1, ptr %l70, !tbaa !24
  br label %bb26
bb26:
  %t128 = load ptr, ptr %l68, !tbaa !29
  %t129 = load i32, ptr %l69, !tbaa !23
  %t130 = load i64, ptr %l70, !tbaa !24
  %t131 = call { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %t128, i32 %t129, i64 %t130)
  %t132 = extractvalue { i32, { i64, [2 x i64] } } %t131, 1
  %t133 = extractvalue { i32, { i64, [2 x i64] } } %t131, 0
  store i32 %t133, ptr %l78
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb28, label %ok.135, !prof !99
ok.135:
  store { i64, [2 x i64] } %t132, ptr %l77
  br label %bb27
bb27:
  %t136 = load { i64, [2 x i64] }, ptr %l77
  store { i64, [2 x i64] } %t136, ptr %l67
  br label %bb32
bb28:
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l79, !tbaa !29
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t139 = load i32, ptr %l10, !tbaa !23
  %t141 = inttoptr i64 0 to ptr
  %t144 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s4, ptr %t141, ptr %t138, i32 %t139)
  store { i64, ptr } %t144, ptr %l83
  br label %bb30
bb30:
  %t145 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t147 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 1
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t150 = add i64 %t146, %t149
  %t151 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t150)
  call void @olang_textcopy(ptr %t151, ptr %t145, i64 %t146)
  %t152 = getelementptr i8, ptr %t151, i64 %t146
  call void @olang_textcopy(ptr %t152, ptr %t148, i64 %t149)
  %t153 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t151, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = extractvalue { i64, ptr } %t154, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t162 = load ptr, ptr %l79, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s4, ptr %t162, { i64, ptr } %t161)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb32:
  %t164 = load { i64, [2 x i64] }, ptr %l67
  store { i64, [2 x i64] } %t164, ptr %l11
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/emit:fnEm", ptr %t165, i32 0, i32 0
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t169 = load { i64, [2 x i64] }, ptr %l11
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t168, { i64, [2 x i64] } %t169)
  br label %bb33
bb33:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/emit:fnEm", ptr %t172, i32 0, i32 0
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = getelementptr %"compiler/emit:Emitter", ptr %t175, i32 0, i32 37
  %t178 = load { i64, [2 x i64] }, ptr %l11
  %t181 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %t177, { i64, [2 x i64] } %t178)
  store i1 %t181, ptr %l93
  br label %bb34
bb34:
  %t182 = load i1, ptr %l93, !tbaa !21
  %t183 = xor i1 %t182, true
  br i1 %t183, label %bb35, label %bb36
bb35:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/emit:fnEm", ptr %t185, i32 0, i32 0
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/emit:Emitter", ptr %t188, i32 0, i32 37
  %t191 = load { i64, [2 x i64] }, ptr %l11
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %t190, { i64, [2 x i64] } %t191, i1 true)
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/emit:fnEm", ptr %t194, i32 0, i32 0
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t199 = getelementptr %"compiler/emit:Emitter", ptr %t197, i32 0, i32 36
  %t200 = load { i64, [2 x i64] }, ptr %l11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t199, { i64, [2 x i64] } %t200)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l103, !tbaa !29
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/emit:fnEm", ptr %t204, i32 0, i32 0
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t208 = load { i64, [2 x i64] }, ptr %l11
  %t211 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s2, ptr %t207, { i64, [2 x i64] } %t208)
  store { i64, ptr } %t211, ptr %l107
  br label %bb40
bb40:
  %t212 = load i32, ptr %l9, !tbaa !23
  %t213 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t215 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = extractvalue { i64, ptr } %t215, 0
  %t218 = add i64 %t214, %t217
  %t219 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t221 = add i64 %t218, %t220
  %t223 = sext i32 %t212 to i64
  %t224 = call i64 @__olang_fmt_i64(ptr null, i64 %t223)
  %t225 = add i64 %t221, %t224
  %t226 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t228 = add i64 %t225, %t227
  %t229 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t228)
  call void @olang_textcopy(ptr %t229, ptr %t213, i64 %t214)
  %t230 = getelementptr i8, ptr %t229, i64 %t214
  call void @olang_textcopy(ptr %t230, ptr %t216, i64 %t217)
  %t231 = getelementptr i8, ptr %t230, i64 %t217
  call void @olang_textcopy(ptr %t231, ptr %t219, i64 %t220)
  %t232 = getelementptr i8, ptr %t231, i64 %t220
  %t233 = call i64 @__olang_fmt_i64(ptr %t232, i64 %t223)
  %t234 = getelementptr i8, ptr %t232, i64 %t224
  call void @olang_textcopy(ptr %t234, ptr %t226, i64 %t227)
  %t235 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t229, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = extractvalue { i64, ptr } %t236, 1
  %t240 = mul i64 %t238, 1
  %t241 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t240)
  call void @llvm.memcpy.p0.p0.i64(ptr %t241, ptr %t239, i64 %t240, i1 false)
  %t242 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t241, 1
  %t244 = load ptr, ptr %l103, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s2, ptr %t244, { i64, ptr } %t243)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb42:
  %t246 = load i64, ptr %l7, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l7, !tbaa !24
  br label %bb8
bb43:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l8 = alloca %"compiler/mir:Local"
  %l10 = alloca i1
  %l17 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/emit:fnEm", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = getelementptr %"compiler/mir:Fn", ptr %t5, i32 0, i32 7
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t13 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t7, i64 %t10)
  store %"compiler/mir:Local" %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = getelementptr %"compiler/mir:Local", ptr %l8, i32 0, i32 4
  %t15 = load { i64, [1 x i64] }, ptr %t14
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t16, { i64, [1 x i64] } %t15)
  store i1 %t18, ptr %l10
  br label %bb2
bb2:
  %t19 = load i1, ptr %l10, !tbaa !21
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t20 = load i32, ptr %l1, !tbaa !23
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t24 = sext i32 %t20 to i64
  %t25 = call i64 @__olang_fmt_i64(ptr null, i64 %t24)
  %t26 = add i64 %t22, %t25
  %t27 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t21, i64 %t22)
  %t28 = getelementptr i8, ptr %t27, i64 %t22
  %t29 = call i64 @__olang_fmt_i64(ptr %t28, i64 %t24)
  %t30 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t27, 1
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l1, !tbaa !23
  %t35 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t38 = sext i32 %t34 to i64
  %t39 = call i64 @__olang_fmt_i64(ptr null, i64 %t38)
  %t40 = add i64 %t36, %t39
  %t41 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t40)
  call void @olang_textcopy(ptr %t41, ptr %t35, i64 %t36)
  %t42 = getelementptr i8, ptr %t41, i64 %t36
  %t43 = call i64 @__olang_fmt_i64(ptr %t42, i64 %t38)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t41, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = extractvalue { i64, ptr } %t45, 1
  %t49 = mul i64 %t47, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  %t55 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t33, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d74, i32 0, i32 1) }, { i64, ptr } %t52, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) })
  store { i64, ptr } %t55, ptr %l17
  br label %bb6
bb6:
  %t56 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2elocate(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca i1
  %l12 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i64
  %l21 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = icmp eq i32 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = icmp eq i32 %t7, 0
  store i1 %t9, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l4, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t12 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/emit:fnEm", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/mir:Fn", ptr %t17, i32 0, i32 3
  %t20 = getelementptr %"compiler/source:Span", ptr %t19, i32 0, i32 0
  %t21 = load i32, ptr %t20, !tbaa !23
  %t24 = icmp eq i32 %t13, %t21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t27 = load i32, ptr %t26, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:fnEm", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/mir:Fn", ptr %t31, i32 0, i32 3
  %t34 = getelementptr %"compiler/source:Span", ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34, !tbaa !23
  %t38 = icmp eq i32 %t27, %t35
  store i1 %t38, ptr %l12, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l12, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  br label %ret
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l18, !tbaa !29
  %t42 = ptrtoint ptr %v0 to i64
  store i64 %t42, ptr %l19, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e19
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = call ptr @__olang_region_make(ptr %v0)
  %t46 = ptrtoint ptr %t45 to i64
  store i64 %t46, ptr %l19, !tbaa !24
  br label %bb14
bb14:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l21, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/emit:fnEm", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/emit:Emitter", ptr %t51, i32 0, i32 2
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/emit:fnEm", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/mir:Fn", ptr %t58, i32 0, i32 2
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t63 = load i32, ptr %t62, !tbaa !23
  %t65 = sext i32 %t63 to i64
  %t69 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t54, i64 %t61, i64 %t65)
  store i64 %t69, ptr %l30
  br label %bb15
bb15:
  %t70 = load i64, ptr %l19
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = load ptr, ptr %l21, !tbaa !29
  %t73 = load i64, ptr %l30, !tbaa !24
  %t74 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgLine(ptr %v0, ptr %t71, ptr %t72, i64 %t73)
  store { i64, ptr } %t74, ptr %l31
  br label %bb16
bb16:
  %t75 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t76 = load i64, ptr %l19
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = extractvalue { i64, ptr } %t75, 0
  %t79 = extractvalue { i64, ptr } %t75, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %t77, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load ptr, ptr %l18, !tbaa !29
  %t85 = getelementptr %"compiler/emit:fnEm", ptr %t84, i32 0, i32 19
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l33, !tbaa !27
  %t88 = load ptr, ptr %l18, !tbaa !29
  %t89 = getelementptr %"compiler/emit:fnEm", ptr %t88, i32 0, i32 19
  store { i64, ptr } %t83, ptr %t89, !tbaa !27
  %t90 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e19
  br i1 %t90, label %bb17, label %bb18
bb17:
  %t92 = load { i64, ptr }, ptr %l33
  %t93 = extractvalue { i64, ptr } %t92, 1
  call void @__olang_region_release(ptr %t93)
  store { i64, ptr } zeroinitializer, ptr %l33
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/mir:Range" %a3) #0 {
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
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l25 = alloca i64
  %l28 = alloca i64
  %l46 = alloca ptr
  %l50 = alloca { i64, [4 x i64] }
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca i64
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
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t7, ptr %l17, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l18, !tbaa !24
  %t10 = load i64, ptr %l18, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l19, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l18, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t21, ptr %lp5
  %t22 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t23 = load ptr, ptr %lp5
  store { i64, ptr } %t22, ptr %t23, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t28 = load i64, ptr %l7, !tbaa !24
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb2, label %bb3
bb2:
  %t34 = load i64, ptr %l8, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb4:
  %t38 = load i64, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l8, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l28, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t54 = load i64, ptr %l28, !tbaa !24
  store i64 %t54, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t55 = load i64, ptr %l25, !tbaa !24
  store i64 %t55, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t56 = load i64, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t64 = load i64, ptr %l6, !tbaa !24
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l11, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l46, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i64, ptr %l11, !tbaa !24
  %t81 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t75, %"compiler/mir:Range" %a3, i64 %t77)
  store { i64, [4 x i64] } %t81, ptr %l50
  br label %bb12
bb12:
  %t82 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t82, ptr %l51, !tbaa !27
  %t83 = load i64, ptr %l11, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t83
  %t88 = load i32, ptr %t87, !tbaa !33
  %t89 = load ptr, ptr %l46, !tbaa !29
  %t90 = load { i64, [4 x i64] }, ptr %l50
  %t92 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s2, ptr %t89, { i64, [4 x i64] } %t90, i32 %t88)
  store { i64, ptr } %t92, ptr %l54
  br label %bb13
bb13:
  %t93 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t93, ptr %l12, !tbaa !27
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l55, !tbaa !29
  %t95 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t95, ptr %l56, !tbaa !27
  %t96 = load ptr, ptr %lp5
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %l57, !tbaa !27
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t99, ptr %l59, !tbaa !27
  %t100 = load i64, ptr %l11, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 %t100
  %t105 = load i32, ptr %t104, !tbaa !33
  %t108 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s2, ptr %t98, i32 %t105)
  store { i64, ptr } %t108, ptr %l62
  br label %bb14
bb14:
  %t109 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t110 = load i64, ptr %l11, !tbaa !24
  %t111 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t113 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 1
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = add i64 %t112, %t115
  %t117 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t119 = add i64 %t116, %t118
  %t120 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = add i64 %t119, %t122
  %t124 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t126 = add i64 %t123, %t125
  %t127 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 1
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t130 = add i64 %t126, %t129
  %t131 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t133 = add i64 %t130, %t132
  %t135 = extractvalue { i64, ptr } %t109, 1
  %t136 = extractvalue { i64, ptr } %t109, 0
  %t137 = add i64 %t133, %t136
  %t138 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t140 = add i64 %t137, %t139
  %t142 = call i64 @__olang_fmt_i64(ptr null, i64 %t110)
  %t143 = add i64 %t140, %t142
  %t144 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t143)
  call void @olang_textcopy(ptr %t144, ptr %t111, i64 %t112)
  %t145 = getelementptr i8, ptr %t144, i64 %t112
  call void @olang_textcopy(ptr %t145, ptr %t114, i64 %t115)
  %t146 = getelementptr i8, ptr %t145, i64 %t115
  call void @olang_textcopy(ptr %t146, ptr %t117, i64 %t118)
  %t147 = getelementptr i8, ptr %t146, i64 %t118
  call void @olang_textcopy(ptr %t147, ptr %t121, i64 %t122)
  %t148 = getelementptr i8, ptr %t147, i64 %t122
  call void @olang_textcopy(ptr %t148, ptr %t124, i64 %t125)
  %t149 = getelementptr i8, ptr %t148, i64 %t125
  call void @olang_textcopy(ptr %t149, ptr %t128, i64 %t129)
  %t150 = getelementptr i8, ptr %t149, i64 %t129
  call void @olang_textcopy(ptr %t150, ptr %t131, i64 %t132)
  %t151 = getelementptr i8, ptr %t150, i64 %t132
  call void @olang_textcopy(ptr %t151, ptr %t135, i64 %t136)
  %t152 = getelementptr i8, ptr %t151, i64 %t136
  call void @olang_textcopy(ptr %t152, ptr %t138, i64 %t139)
  %t153 = getelementptr i8, ptr %t152, i64 %t139
  %t154 = call i64 @__olang_fmt_i64(ptr %t153, i64 %t110)
  %t155 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t144, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = extractvalue { i64, ptr } %t156, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t164 = load ptr, ptr %l55, !tbaa !29
  %t166 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t164, { i64, ptr } %t163)
  store { i64, ptr } %t166, ptr %l67
  br label %bb15
bb15:
  %t167 = load ptr, ptr %lp5
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  %t170 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 0
  store i64 %t171, ptr %l69, !tbaa !24
  %t173 = load i64, ptr %l69, !tbaa !24
  %t174 = icmp eq i64 %t169, %t173
  br i1 %t174, label %bb16, label %bb17
bb16:
  %t176 = load ptr, ptr %lp5
  %t177 = getelementptr { i64, ptr }, ptr %t176, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = load i64, ptr %l69, !tbaa !24
  %t182 = mul i64 %t181, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t178, ptr %t180, i64 %t182, i1 false)
  br label %bb18
bb17:
  %t183 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t184 = load ptr, ptr %lp5
  store { i64, ptr } %t183, ptr %t184, !tbaa !27
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t185 = load i64, ptr %l10, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l10, !tbaa !24
  br label %bb8
bb20:
  %t189 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t189, 0
  %t193 = icmp eq i64 %t191, 0
  br i1 %t193, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %l76, !tbaa !27
  %t195 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t195, ptr %l77, !tbaa !27
  %t196 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 0
  store i64 %t197, ptr %l78, !tbaa !24
  %t198 = load i64, ptr %l78, !tbaa !24
  %t199 = mul i64 %t198, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t199)
  %t201 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l79, !tbaa !27
  %t203 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = load i64, ptr %l78, !tbaa !24
  %t208 = mul i64 %t207, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t204, ptr %t206, i64 %t208, i1 false)
  %t209 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t209, ptr %l77, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t210 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t210, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t211 = load ptr, ptr %lp5
  %t212 = load { i64, ptr }, ptr %t211, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t212, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslice(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, [4 x i64] } %a2, { i64, [4 x i64] } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca { i64, [4 x i64] }
  %l5 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %lp12 = alloca ptr
  %l19 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i32
  %l28 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca i32
  %l38 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca i32
  %l48 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i32
  %l65 = alloca i1
  %l68 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
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
  store ptr %t7, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/mir:Lvalue", ptr %l1
  %t13 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %t9, %"compiler/mir:Lvalue" %t10)
  store i32 %t13, ptr %l19
  br label %bb1
bb1:
  %t14 = load i32, ptr %l19, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t19 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t15, i32 %t14)
  store i32 %t19, ptr %l22
  br label %bb2
bb2:
  %t20 = load i32, ptr %l22, !tbaa !23
  %t21 = load ptr, ptr %l5, !tbaa !29
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t21, i32 %t20)
  store i32 %t25, ptr %l25
  br label %bb3
bb3:
  %t26 = load i32, ptr %l25, !tbaa !23
  store i32 %t26, ptr %l8, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/mir:Lvalue", ptr %l1
  %t31 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edataPtr(ptr %v0, ptr %s0, ptr %t27, %"compiler/mir:Lvalue" %t28)
  store { i64, ptr } %t31, ptr %l28
  br label %bb4
bb4:
  %t32 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t32, ptr %l9, !tbaa !27
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l29, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load { i64, [4 x i64] }, ptr %l2
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t34, { i64, [4 x i64] } %t35, i32 %t36)
  store { i64, ptr } %t40, ptr %l33
  br label %bb5
bb5:
  %t41 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  %t43 = extractvalue { i64, ptr } %t41, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l34, !tbaa !27
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load { i64, [4 x i64] }, ptr %l2
  %t52 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t48, { i64, [4 x i64] } %t49)
  store i32 %t52, ptr %l37
  br label %bb6
bb6:
  %t53 = load ptr, ptr %l29, !tbaa !29
  %t54 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t55 = load i32, ptr %l37, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %s0, ptr %s0, ptr %t53, { i64, ptr } %t54, i32 %t55)
  store { i64, ptr } %t56, ptr %l38
  br label %bb7
bb7:
  %t57 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t57, ptr %l10, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l39, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load { i64, [4 x i64] }, ptr %l3
  %t61 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t59, { i64, [4 x i64] } %t60, i32 %t61)
  store { i64, ptr } %t65, ptr %l43
  br label %bb8
bb8:
  %t66 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  %t68 = extractvalue { i64, ptr } %t66, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l44, !tbaa !27
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load { i64, [4 x i64] }, ptr %l3
  %t77 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t73, { i64, [4 x i64] } %t74)
  store i32 %t77, ptr %l47
  br label %bb9
bb9:
  %t78 = load ptr, ptr %l39, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t80 = load i32, ptr %l47, !tbaa !23
  %t81 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %s0, ptr %s0, ptr %t78, { i64, ptr } %t79, i32 %t80)
  store { i64, ptr } %t81, ptr %l48
  br label %bb10
bb10:
  %t82 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t82, ptr %l11, !tbaa !27
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l49, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l8, !tbaa !23
  %t88 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t84, i32 %t85)
  store { i64, ptr } %t88, ptr %l52
  br label %bb11
bb11:
  %t89 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t91 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t93 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = add i64 %t92, %t95
  %t97 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t99 = add i64 %t96, %t98
  %t101 = extractvalue { i64, ptr } %t89, 1
  %t102 = extractvalue { i64, ptr } %t89, 0
  %t103 = add i64 %t99, %t102
  %t104 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t106 = add i64 %t103, %t105
  %t108 = extractvalue { i64, ptr } %t90, 1
  %t109 = extractvalue { i64, ptr } %t90, 0
  %t110 = add i64 %t106, %t109
  %t111 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t110)
  call void @olang_textcopy(ptr %t111, ptr %t91, i64 %t92)
  %t112 = getelementptr i8, ptr %t111, i64 %t92
  call void @olang_textcopy(ptr %t112, ptr %t94, i64 %t95)
  %t113 = getelementptr i8, ptr %t112, i64 %t95
  call void @olang_textcopy(ptr %t113, ptr %t97, i64 %t98)
  %t114 = getelementptr i8, ptr %t113, i64 %t98
  call void @olang_textcopy(ptr %t114, ptr %t101, i64 %t102)
  %t115 = getelementptr i8, ptr %t114, i64 %t102
  call void @olang_textcopy(ptr %t115, ptr %t104, i64 %t105)
  %t116 = getelementptr i8, ptr %t115, i64 %t105
  call void @olang_textcopy(ptr %t116, ptr %t108, i64 %t109)
  %t117 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t111, 1
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t121 = extractvalue { i64, ptr } %t118, 1
  %t122 = mul i64 %t120, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t122)
  call void @llvm.memcpy.p0.p0.i64(ptr %t123, ptr %t121, i64 %t122, i1 false)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t126 = load ptr, ptr %l49, !tbaa !29
  %t128 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t126, { i64, ptr } %t125)
  store { i64, ptr } %t128, ptr %l57
  br label %bb12
bb12:
  %t129 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t129, ptr %lp12
  %t130 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t131 = load ptr, ptr %lp12
  store { i64, ptr } %t130, ptr %t131, !tbaa !27
  %t132 = load ptr, ptr %l5, !tbaa !29
  store ptr %t132, ptr %l58, !tbaa !29
  %t133 = load ptr, ptr %l5, !tbaa !29
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t133, i32 %a4)
  store i32 %t137, ptr %l61
  br label %bb13
bb13:
  %t138 = load ptr, ptr %l58, !tbaa !29
  %t139 = load i32, ptr %l61, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t140, ptr %l62
  br label %bb14
bb14:
  %t141 = load i32, ptr %l62, !tbaa !23
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t146 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %t142, i32 %t141)
  store i1 %t146, ptr %l65
  br label %bb15
bb15:
  %t147 = load i1, ptr %l65, !tbaa !21
  %t148 = xor i1 %t147, true
  br i1 %t148, label %bb16, label %bb17
bb16:
  %t150 = load ptr, ptr %lp12
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t151, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l68, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t157 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t158 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t160 = extractvalue { i64, ptr } %t155, 1
  %t161 = extractvalue { i64, ptr } %t155, 0
  %t162 = add i64 %t158, %t161
  %t163 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t167 = extractvalue { i64, ptr } %t156, 1
  %t168 = extractvalue { i64, ptr } %t156, 0
  %t169 = add i64 %t165, %t168
  %t170 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t169)
  call void @olang_textcopy(ptr %t170, ptr %t157, i64 %t158)
  %t171 = getelementptr i8, ptr %t170, i64 %t158
  call void @olang_textcopy(ptr %t171, ptr %t160, i64 %t161)
  %t172 = getelementptr i8, ptr %t171, i64 %t161
  call void @olang_textcopy(ptr %t172, ptr %t163, i64 %t164)
  %t173 = getelementptr i8, ptr %t172, i64 %t164
  call void @olang_textcopy(ptr %t173, ptr %t167, i64 %t168)
  %t174 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t170, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = extractvalue { i64, ptr } %t175, 1
  %t179 = mul i64 %t177, 1
  %t180 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t180, ptr %t178, i64 %t179, i1 false)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  %t185 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t154, { i64, ptr } %t182)
  store { i64, ptr } %t185, ptr %l74
  br label %bb19
bb19:
  %t186 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 0
  %t188 = extractvalue { i64, ptr } %t186, 1
  %t189 = mul i64 %t187, 1
  %t190 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t189)
  call void @llvm.memcpy.p0.p0.i64(ptr %t190, ptr %t188, i64 %t189, i1 false)
  %t191 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  %t193 = load ptr, ptr %lp12
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  %t195 = load ptr, ptr %l68, !tbaa !29
  %t198 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t195, { i64, ptr } %t192, { i64, ptr } %t194)
  store { i64, ptr } %t198, ptr %l77
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t199 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t199, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2eterm(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [8 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca %"compiler/mir:Range"
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l20 = alloca %"compiler/mir:Case"
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca { i64, [4 x i64] }
  %l24 = alloca { i64, ptr }
  %l26 = alloca { i64, [4 x i64] }
  %l27 = alloca i32
  %l28 = alloca %"compiler/mir:Range"
  %l29 = alloca i32
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, [4 x i64] }
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i32
  %l35 = alloca i32
  %l36 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca i32
  %l44 = alloca { i64, [4 x i64] }
  %l51 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l60 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l88 = alloca i32
  %l91 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca %"std/prelude/text:StringBuilder"
  %l97 = alloca ptr
  %l98 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l108 = alloca i32
  %l111 = alloca i32
  %l137 = alloca %"compiler/mir:Case"
  %l138 = alloca ptr
  %l139 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l152 = alloca ptr
  %l154 = alloca { i64, ptr }
  %l162 = alloca ptr
  %l168 = alloca %"compiler/mir:Call"
  %l175 = alloca ptr
  %l181 = alloca %"compiler/mir:Call"
  %l190 = alloca { i64, ptr }
  %l207 = alloca ptr
  %l208 = alloca { i64, ptr }
  %l212 = alloca { i64, ptr }
  %l217 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l225 = alloca i1
  %l227 = alloca ptr
  %l228 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l261 = alloca { i64, ptr }
  %l265 = alloca { i64, ptr }
  %l267 = alloca i1
  %l270 = alloca ptr
  %l271 = alloca { i64, ptr }
  %l277 = alloca { i64, ptr }
  %l289 = alloca i1
  %l295 = alloca ptr
  %l296 = alloca i32
  %l298 = alloca { i64, ptr }
  %l301 = alloca { i64, ptr }
  %l305 = alloca ptr
  %l307 = alloca { i64, ptr }
  %l314 = alloca { i64, ptr }
  %l318 = alloca ptr
  %l319 = alloca { i64, ptr }
  %l322 = alloca { i64, ptr }
  %l328 = alloca { i64, ptr }
  %l329 = alloca ptr
  %l330 = alloca { i64, ptr }
  %l332 = alloca { i64, ptr }
  %l334 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s41 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [8 x i64] } %a1, ptr %l1
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
  store ptr %t16, ptr %l51, !tbaa !29
  %t17 = load { i64, [8 x i64] }, ptr %l1
  %t19 = call %"compiler/source:Span" @compiler_2femit_2etermSpan({ i64, [8 x i64] } %t17)
  store %"compiler/source:Span" %t19, ptr %l53
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t20 = load ptr, ptr %l51, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l53
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elocate(ptr %v0, ptr %t20, %"compiler/source:Span" %t21)
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t22 = load { i64, [8 x i64] }, ptr %l1
  %t24 = extractvalue { i64, [8 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 0
  br i1 %t25, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb10
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s2, ptr %t27, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d86, i32 0, i32 1) })
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb159
bb10:
  %t29 = load { i64, [8 x i64] }, ptr %l1
  %t31 = extractvalue { i64, [8 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 1
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t34 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t35 = getelementptr { i32 }, ptr %t34, i32 0, i32 0
  %t36 = load i32, ptr %t35
  store i32 %t36, ptr %l3, !tbaa !23
  br label %bb13
bb12:
  br label %bb16
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l60, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t41 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s3, i32 %t39)
  store { i64, ptr } %t41, ptr %l62
  br label %bb14
bb14:
  %t42 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t44 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = add i64 %t43, %t46
  %t48 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t42, i64 %t43)
  %t49 = getelementptr i8, ptr %t48, i64 %t43
  call void @olang_textcopy(ptr %t49, ptr %t45, i64 %t46)
  %t50 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = extractvalue { i64, ptr } %t51, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load ptr, ptr %l60, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s3, ptr %t59, { i64, ptr } %t58)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb159
bb16:
  %t61 = load { i64, [8 x i64] }, ptr %l1
  %t63 = extractvalue { i64, [8 x i64] } %t61, 0
  %t64 = icmp eq i64 %t63, 2
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t66 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t67 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t66, i32 0, i32 0
  %t68 = load { i64, [4 x i64] }, ptr %t67
  store { i64, [4 x i64] } %t68, ptr %l4
  %t70 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t71 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l5, !tbaa !23
  %t74 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t75 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t74, i32 0, i32 2
  %t76 = load i32, ptr %t75
  store i32 %t76, ptr %l6, !tbaa !23
  br label %bb19
bb18:
  br label %bb24
bb19:
  store %olang.scope zeroinitializer, ptr %s5
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l70, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load { i64, [4 x i64] }, ptr %l4
  %t81 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s5, ptr %t79, { i64, [4 x i64] } %t80, i32 %t81)
  store { i64, ptr } %t85, ptr %l74
  br label %bb20
bb20:
  %t86 = load i32, ptr %l5, !tbaa !23
  %t88 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s5, i32 %t86)
  store { i64, ptr } %t88, ptr %l76
  br label %bb21
bb21:
  %t89 = load i32, ptr %l6, !tbaa !23
  %t91 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s5, i32 %t89)
  store { i64, ptr } %t91, ptr %l78
  br label %bb22
bb22:
  %t92 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t94 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t97 = add i64 %t93, %t96
  %t98 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t99 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t100 = add i64 %t97, %t99
  %t101 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = add i64 %t100, %t103
  %t105 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t107 = add i64 %t104, %t106
  %t108 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t111 = add i64 %t107, %t110
  %t112 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t111)
  call void @olang_textcopy(ptr %t112, ptr %t92, i64 %t93)
  %t113 = getelementptr i8, ptr %t112, i64 %t93
  call void @olang_textcopy(ptr %t113, ptr %t95, i64 %t96)
  %t114 = getelementptr i8, ptr %t113, i64 %t96
  call void @olang_textcopy(ptr %t114, ptr %t98, i64 %t99)
  %t115 = getelementptr i8, ptr %t114, i64 %t99
  call void @olang_textcopy(ptr %t115, ptr %t102, i64 %t103)
  %t116 = getelementptr i8, ptr %t115, i64 %t103
  call void @olang_textcopy(ptr %t116, ptr %t105, i64 %t106)
  %t117 = getelementptr i8, ptr %t116, i64 %t106
  call void @olang_textcopy(ptr %t117, ptr %t109, i64 %t110)
  %t118 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t112, 1
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t122 = extractvalue { i64, ptr } %t119, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t127 = load ptr, ptr %l70, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s5, ptr %t127, { i64, ptr } %t126)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb159
bb24:
  %t129 = load { i64, [8 x i64] }, ptr %l1
  %t131 = extractvalue { i64, [8 x i64] } %t129, 0
  %t132 = icmp eq i64 %t131, 3
  br i1 %t132, label %bb25, label %bb26
bb25:
  %t134 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t135 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t134, i32 0, i32 0
  %t136 = load { i64, [4 x i64] }, ptr %t135
  store { i64, [4 x i64] } %t136, ptr %l7
  %t138 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t139 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t138, i32 0, i32 1
  %t140 = load %"compiler/mir:Range", ptr %t139
  store %"compiler/mir:Range" %t140, ptr %l8
  %t142 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t143 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t142, i32 0, i32 2
  %t144 = load i32, ptr %t143
  store i32 %t144, ptr %l9, !tbaa !23
  br label %bb27
bb26:
  br label %bb53
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load { i64, [4 x i64] }, ptr %l7
  %t150 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t146, { i64, [4 x i64] } %t147)
  store i32 %t150, ptr %l88
  br label %bb28
bb28:
  %t151 = load i32, ptr %l88, !tbaa !23
  store i32 %t151, ptr %l10, !tbaa !23
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l10, !tbaa !23
  %t156 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s7, ptr %t152, i32 %t153)
  store { i64, ptr } %t156, ptr %l91
  br label %bb29
bb29:
  %t157 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t157, ptr %l11, !tbaa !27
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load { i64, [4 x i64] }, ptr %l7
  %t160 = load i32, ptr %l10, !tbaa !23
  %t164 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s7, ptr %t158, { i64, [4 x i64] } %t159, i32 %t160)
  store { i64, ptr } %t164, ptr %l95
  br label %bb30
bb30:
  %t165 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t165, ptr %l12, !tbaa !27
  %t166 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s7)
  store %"std/prelude/text:StringBuilder" %t166, ptr %l96
  br label %bb31
bb31:
  %t167 = load %"std/prelude/text:StringBuilder", ptr %l96
  store %"std/prelude/text:StringBuilder" %t167, ptr %l13
  store ptr %l13, ptr %l97, !tbaa !29
  %t168 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t168, ptr %l98, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t169, ptr %l99, !tbaa !27
  %t170 = load i32, ptr %l9, !tbaa !23
  %t172 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s7, i32 %t170)
  store { i64, ptr } %t172, ptr %l101
  br label %bb32
bb32:
  %t173 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t175 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = add i64 %t174, %t177
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t182 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t185 = add i64 %t181, %t184
  %t186 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t188 = add i64 %t185, %t187
  %t189 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 1
  %t191 = extractvalue { i64, ptr } %t189, 0
  %t192 = add i64 %t188, %t191
  %t193 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t195 = add i64 %t192, %t194
  %t196 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t195)
  call void @olang_textcopy(ptr %t196, ptr %t173, i64 %t174)
  %t197 = getelementptr i8, ptr %t196, i64 %t174
  call void @olang_textcopy(ptr %t197, ptr %t176, i64 %t177)
  %t198 = getelementptr i8, ptr %t197, i64 %t177
  call void @olang_textcopy(ptr %t198, ptr %t179, i64 %t180)
  %t199 = getelementptr i8, ptr %t198, i64 %t180
  call void @olang_textcopy(ptr %t199, ptr %t183, i64 %t184)
  %t200 = getelementptr i8, ptr %t199, i64 %t184
  call void @olang_textcopy(ptr %t200, ptr %t186, i64 %t187)
  %t201 = getelementptr i8, ptr %t200, i64 %t187
  call void @olang_textcopy(ptr %t201, ptr %t190, i64 %t191)
  %t202 = getelementptr i8, ptr %t201, i64 %t191
  call void @olang_textcopy(ptr %t202, ptr %t193, i64 %t194)
  %t203 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t196, 1
  %t206 = extractvalue { i64, ptr } %t204, 0
  %t207 = extractvalue { i64, ptr } %t204, 1
  %t208 = mul i64 %t206, 1
  %t209 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t208)
  call void @llvm.memcpy.p0.p0.i64(ptr %t209, ptr %t207, i64 %t208, i1 false)
  %t210 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t209, 1
  %t212 = load ptr, ptr %l97, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s7, ptr %t212, { i64, ptr } %t211)
  br label %bb33
bb33:
  store i32 0, ptr %l14, !tbaa !23
  %t214 = getelementptr %"compiler/mir:Range", ptr %l8, i32 0, i32 1
  %t215 = load i32, ptr %t214, !tbaa !23
  store i32 %t215, ptr %l15, !tbaa !23
  store i32 1, ptr %l16, !tbaa !23
  %t217 = load i32, ptr %l15, !tbaa !23
  %t218 = load i32, ptr %l14, !tbaa !23
  %t221 = icmp sgt i32 %t217, %t218
  br i1 %t221, label %bb34, label %bb35
bb34:
  %t223 = load i32, ptr %l16, !tbaa !23
  %t225 = icmp sgt i32 %t223, 0
  br i1 %t225, label %bb36, label %bb37
bb35:
  store i32 0, ptr %l108, !tbaa !23
  br label %bb39
bb36:
  %t227 = load i32, ptr %l15, !tbaa !23
  %t228 = load i32, ptr %l14, !tbaa !23
  %t231 = sub i32 %t227, %t228
  %t232 = load i32, ptr %l16, !tbaa !23
  %t235 = add i32 %t231, %t232
  %t237 = sub i32 %t235, 1
  %t238 = load i32, ptr %l16, !tbaa !23
  %t241 = sdiv i32 %t237, %t238
  store i32 %t241, ptr %l111, !tbaa !23
  br label %bb38
bb37:
  store i32 0, ptr %l111, !tbaa !23
  br label %bb38
bb38:
  %t243 = load i32, ptr %l111, !tbaa !23
  store i32 %t243, ptr %l108, !tbaa !23
  br label %bb39
bb39:
  %t244 = load i32, ptr %l108, !tbaa !23
  store i32 %t244, ptr %l17, !tbaa !23
  store i32 0, ptr %l18, !tbaa !23
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s10
  %t245 = load i32, ptr %l18, !tbaa !23
  %t246 = load i32, ptr %l17, !tbaa !23
  %t249 = icmp slt i32 %t245, %t246
  %t251 = xor i1 %t249, true
  br i1 %t251, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s10)
  br label %bb49
bb42:
  br label %bb43
bb43:
  %t253 = load i32, ptr %l14, !tbaa !23
  %t254 = load i32, ptr %l18, !tbaa !23
  %t255 = load i32, ptr %l16, !tbaa !23
  %t258 = mul i32 %t254, %t255
  %t261 = add i32 %t253, %t258
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/emit:fnEm", ptr %t263, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t268 = getelementptr %"compiler/mir:Fn", ptr %t266, i32 0, i32 15
  %t269 = getelementptr %"compiler/mir:Range", ptr %l8, i32 0, i32 0
  %t270 = load i32, ptr %t269, !tbaa !23
  %t272 = sext i32 %t270 to i64
  %t275 = sext i32 %t261 to i64
  %t278 = add i64 %t272, %t275
  %t281 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %t268, i64 %t278)
  store %"compiler/mir:Case" %t281, ptr %l137
  br label %bb44
bb44:
  %t282 = load %"compiler/mir:Case", ptr %l137
  store %"compiler/mir:Case" %t282, ptr %l20
  store ptr %l13, ptr %l138, !tbaa !29
  %t283 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t283, ptr %l139, !tbaa !27
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/emit:fnEm", ptr %t284, i32 0, i32 0
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t288 = load i32, ptr %l10, !tbaa !23
  %t289 = getelementptr %"compiler/mir:Case", ptr %l20, i32 0, i32 0
  %t290 = load i64, ptr %t289, !tbaa !24
  %t294 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %s10, ptr %t287, i32 %t288, i64 %t290)
  store { i64, ptr } %t294, ptr %l144
  br label %bb45
bb45:
  %t295 = getelementptr %"compiler/mir:Case", ptr %l20, i32 0, i32 1
  %t296 = load i32, ptr %t295, !tbaa !23
  %t298 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s10, i32 %t296)
  store { i64, ptr } %t298, ptr %l146
  br label %bb46
bb46:
  %t299 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t300 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t301 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t304 = add i64 %t300, %t303
  %t305 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t306 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t307 = add i64 %t304, %t306
  %t308 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t309 = extractvalue { i64, ptr } %t308, 1
  %t310 = extractvalue { i64, ptr } %t308, 0
  %t311 = add i64 %t307, %t310
  %t312 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t313 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t314 = add i64 %t311, %t313
  %t315 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 1
  %t317 = extractvalue { i64, ptr } %t315, 0
  %t318 = add i64 %t314, %t317
  %t319 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t318)
  call void @olang_textcopy(ptr %t319, ptr %t299, i64 %t300)
  %t320 = getelementptr i8, ptr %t319, i64 %t300
  call void @olang_textcopy(ptr %t320, ptr %t302, i64 %t303)
  %t321 = getelementptr i8, ptr %t320, i64 %t303
  call void @olang_textcopy(ptr %t321, ptr %t305, i64 %t306)
  %t322 = getelementptr i8, ptr %t321, i64 %t306
  call void @olang_textcopy(ptr %t322, ptr %t309, i64 %t310)
  %t323 = getelementptr i8, ptr %t322, i64 %t310
  call void @olang_textcopy(ptr %t323, ptr %t312, i64 %t313)
  %t324 = getelementptr i8, ptr %t323, i64 %t313
  call void @olang_textcopy(ptr %t324, ptr %t316, i64 %t317)
  %t325 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t319, 1
  %t328 = extractvalue { i64, ptr } %t326, 0
  %t329 = extractvalue { i64, ptr } %t326, 1
  %t330 = mul i64 %t328, 1
  %t331 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t330)
  call void @llvm.memcpy.p0.p0.i64(ptr %t331, ptr %t329, i64 %t330, i1 false)
  %t332 = insertvalue { i64, ptr } undef, i64 %t328, 0
  %t333 = insertvalue { i64, ptr } %t332, ptr %t331, 1
  %t334 = load ptr, ptr %l138, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s10, ptr %t334, { i64, ptr } %t333)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s10)
  br label %bb48
bb48:
  %t336 = load i32, ptr %l18, !tbaa !23
  %t338 = add i32 %t336, 1
  store i32 %t338, ptr %l18, !tbaa !23
  br label %bb40
bb49:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s7, ptr %l13, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d96, i32 0, i32 1) })
  br label %bb50
bb50:
  %t341 = load ptr, ptr %l0, !tbaa !29
  store ptr %t341, ptr %l152, !tbaa !29
  %t343 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s7, ptr %s7, ptr %l13)
  store { i64, ptr } %t343, ptr %l154
  br label %bb51
bb51:
  %t344 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  %t346 = extractvalue { i64, ptr } %t344, 1
  %t347 = mul i64 %t345, 1
  %t348 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t347)
  call void @llvm.memcpy.p0.p0.i64(ptr %t348, ptr %t346, i64 %t347, i1 false)
  %t349 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t348, 1
  %t351 = load ptr, ptr %l152, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s7, ptr %t351, { i64, ptr } %t350)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s7)
  br label %bb159
bb53:
  %t353 = load { i64, [8 x i64] }, ptr %l1
  %t355 = extractvalue { i64, [8 x i64] } %t353, 0
  %t356 = icmp eq i64 %t355, 4
  br i1 %t356, label %bb54, label %bb55
bb54:
  %t358 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t359 = getelementptr { %"compiler/source:Span", i32 }, ptr %t358, i32 0, i32 1
  %t360 = load i32, ptr %t359
  store i32 %t360, ptr %l21, !tbaa !23
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load i32, ptr %l21, !tbaa !23
  %t365 = sext i32 %t363 to i64
  %t368 = getelementptr %"compiler/emit:fnEm", ptr %t362, i32 0, i32 36
  store i64 %t365, ptr %t368, !tbaa !24
  %t369 = load ptr, ptr %l0, !tbaa !29
  store ptr %t369, ptr %l162, !tbaa !29
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/emit:fnEm", ptr %t370, i32 0, i32 1
  %t373 = load ptr, ptr %t372, !tbaa !29
  %t375 = getelementptr %"compiler/mir:Fn", ptr %t373, i32 0, i32 14
  %t376 = load i32, ptr %l21, !tbaa !23
  %t378 = sext i32 %t376 to i64
  %t381 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t375, i64 %t378)
  store %"compiler/mir:Call" %t381, ptr %l168
  br label %bb57
bb57:
  %t382 = load ptr, ptr %l162, !tbaa !29
  %t383 = load %"compiler/mir:Call", ptr %l168
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ecall(ptr %v0, ptr %t382, %"compiler/mir:Call" %t383)
  br label %bb58
bb58:
  br label %bb159
bb59:
  %t384 = load { i64, [8 x i64] }, ptr %l1
  %t386 = extractvalue { i64, [8 x i64] } %t384, 0
  %t387 = icmp eq i64 %t386, 6
  br i1 %t387, label %bb60, label %bb61
bb60:
  %t389 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t390 = getelementptr { %"compiler/source:Span", i32 }, ptr %t389, i32 0, i32 1
  %t391 = load i32, ptr %t390
  store i32 %t391, ptr %l22, !tbaa !23
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t394 = load i32, ptr %l22, !tbaa !23
  %t396 = sext i32 %t394 to i64
  %t399 = getelementptr %"compiler/emit:fnEm", ptr %t393, i32 0, i32 36
  store i64 %t396, ptr %t399, !tbaa !24
  %t400 = load ptr, ptr %l0, !tbaa !29
  store ptr %t400, ptr %l175, !tbaa !29
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr %"compiler/emit:fnEm", ptr %t401, i32 0, i32 1
  %t404 = load ptr, ptr %t403, !tbaa !29
  %t406 = getelementptr %"compiler/mir:Fn", ptr %t404, i32 0, i32 14
  %t407 = load i32, ptr %l22, !tbaa !23
  %t409 = sext i32 %t407 to i64
  %t412 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t406, i64 %t409)
  store %"compiler/mir:Call" %t412, ptr %l181
  br label %bb63
bb63:
  %t413 = load ptr, ptr %l175, !tbaa !29
  %t414 = load %"compiler/mir:Call", ptr %l181
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2etailCall(ptr %v0, ptr %t413, %"compiler/mir:Call" %t414)
  br label %bb64
bb64:
  br label %bb159
bb65:
  %t415 = load { i64, [8 x i64] }, ptr %l1
  %t417 = extractvalue { i64, [8 x i64] } %t415, 0
  %t418 = icmp eq i64 %t417, 5
  br i1 %t418, label %bb66, label %bb67
bb66:
  %t420 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t421 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t420, i32 0, i32 1
  %t422 = load { i64, [4 x i64] }, ptr %t421
  store { i64, [4 x i64] } %t422, ptr %l23
  br label %bb68
bb67:
  br label %bb96
bb68:
  store %olang.scope zeroinitializer, ptr %s15
  %t424 = load ptr, ptr %l2, !tbaa !29
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/emit:fnEm", ptr %t425, i32 0, i32 1
  %t428 = load ptr, ptr %t427, !tbaa !29
  %t430 = getelementptr %"compiler/mir:Fn", ptr %t428, i32 0, i32 1
  %t431 = load i32, ptr %t430, !tbaa !23
  %t433 = inttoptr i64 0 to ptr
  %t436 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s15, ptr %t433, ptr %t424, i32 %t431)
  store { i64, ptr } %t436, ptr %l190
  br label %bb69
bb69:
  %t437 = load { i64, ptr }, ptr %l190, !tbaa !27
  store { i64, ptr } %t437, ptr %l24, !tbaa !27
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/emit:fnEm", ptr %t438, i32 0, i32 11
  %t441 = load i1, ptr %t440, !tbaa !21
  br i1 %t441, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s16
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/emit:fnEm", ptr %t444, i32 0, i32 9
  %t447 = load i32, ptr %t446, !tbaa !23
  %t448 = load { i64, [4 x i64] }, ptr %l23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s16, ptr %s16, ptr %t443, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d97, i32 0, i32 1) }, i32 %t447, { i64, [4 x i64] } %t448, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) })
  br label %bb72
bb71:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t454 = getelementptr %"compiler/emit:fnEm", ptr %t452, i32 0, i32 10
  %t455 = load i1, ptr %t454, !tbaa !21
  br i1 %t455, label %bb77, label %bb78
bb72:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr %"compiler/emit:fnEm", ptr %t457, i32 0, i32 10
  %t460 = load i1, ptr %t459, !tbaa !21
  br i1 %t460, label %bb73, label %bb74
bb73:
  store %olang.scope zeroinitializer, ptr %s17
  %t462 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s17, ptr %s17, ptr %s17, ptr %s17, ptr %t462, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d101, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_scope_close(ptr %s17)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s16)
  br label %bb94
bb77:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/emit:fnEm", ptr %t464, i32 0, i32 9
  %t467 = load i32, ptr %t466, !tbaa !23
  %t468 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t471 = icmp eq i32 %t467, %t468
  br i1 %t471, label %bb79, label %bb80
bb78:
  store %olang.scope zeroinitializer, ptr %s23
  %t473 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t475 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s15, ptr %s23, { i64, ptr } %t473, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d103, i32 0, i32 1) })
  store i1 %t475, ptr %l225
  br label %bb87
bb79:
  store %olang.scope zeroinitializer, ptr %s20
  %t476 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s20, ptr %s20, ptr %s20, ptr %s20, ptr %t476, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d104, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d106, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb81
bb80:
  store %olang.scope zeroinitializer, ptr %s21
  %t478 = load ptr, ptr %l0, !tbaa !29
  store ptr %t478, ptr %l207, !tbaa !29
  %t479 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t479, ptr %l208, !tbaa !27
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = getelementptr %"compiler/emit:fnEm", ptr %t481, i32 0, i32 9
  %t484 = load i32, ptr %t483, !tbaa !23
  %t487 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s21, ptr %t480, i32 %t484)
  store { i64, ptr } %t487, ptr %l212
  br label %bb82
bb81:
  call void @__olang_scope_close(ptr %s20)
  br label %bb86
bb82:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load { i64, [4 x i64] }, ptr %l23
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = getelementptr %"compiler/emit:fnEm", ptr %t490, i32 0, i32 9
  %t493 = load i32, ptr %t492, !tbaa !23
  %t497 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s21, ptr %t488, { i64, [4 x i64] } %t489, i32 %t493)
  store { i64, ptr } %t497, ptr %l217
  br label %bb83
bb83:
  %t498 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t499 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t500 = load { i64, ptr }, ptr %l208, !tbaa !27
  %t501 = extractvalue { i64, ptr } %t500, 1
  %t502 = extractvalue { i64, ptr } %t500, 0
  %t503 = add i64 %t499, %t502
  %t504 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t505 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t506 = add i64 %t503, %t505
  %t507 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t508 = extractvalue { i64, ptr } %t507, 1
  %t509 = extractvalue { i64, ptr } %t507, 0
  %t510 = add i64 %t506, %t509
  %t511 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t512 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t513 = add i64 %t510, %t512
  %t514 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t515 = extractvalue { i64, ptr } %t514, 1
  %t516 = extractvalue { i64, ptr } %t514, 0
  %t517 = add i64 %t513, %t516
  %t518 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t519 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t520 = add i64 %t517, %t519
  %t521 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t520)
  call void @olang_textcopy(ptr %t521, ptr %t498, i64 %t499)
  %t522 = getelementptr i8, ptr %t521, i64 %t499
  call void @olang_textcopy(ptr %t522, ptr %t501, i64 %t502)
  %t523 = getelementptr i8, ptr %t522, i64 %t502
  call void @olang_textcopy(ptr %t523, ptr %t504, i64 %t505)
  %t524 = getelementptr i8, ptr %t523, i64 %t505
  call void @olang_textcopy(ptr %t524, ptr %t508, i64 %t509)
  %t525 = getelementptr i8, ptr %t524, i64 %t509
  call void @olang_textcopy(ptr %t525, ptr %t511, i64 %t512)
  %t526 = getelementptr i8, ptr %t525, i64 %t512
  call void @olang_textcopy(ptr %t526, ptr %t515, i64 %t516)
  %t527 = getelementptr i8, ptr %t526, i64 %t516
  call void @olang_textcopy(ptr %t527, ptr %t518, i64 %t519)
  %t528 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t529 = insertvalue { i64, ptr } %t528, ptr %t521, 1
  %t531 = extractvalue { i64, ptr } %t529, 0
  %t532 = extractvalue { i64, ptr } %t529, 1
  %t533 = mul i64 %t531, 1
  %t534 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t533)
  call void @llvm.memcpy.p0.p0.i64(ptr %t534, ptr %t532, i64 %t533, i1 false)
  %t535 = insertvalue { i64, ptr } undef, i64 %t531, 0
  %t536 = insertvalue { i64, ptr } %t535, ptr %t534, 1
  %t537 = load ptr, ptr %l207, !tbaa !29
  %t539 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s21, ptr %s21, ptr %t537, { i64, ptr } %t536)
  store { i64, ptr } %t539, ptr %l220
  br label %bb84
bb84:
  %t540 = load { i64, ptr }, ptr %l220, !tbaa !27
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load { i64, ptr }, ptr %l24, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s15, ptr %s21, ptr %s21, ptr %s21, ptr %t541, { i64, ptr } %t542, { i64, ptr } %t540, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d111, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s21)
  br label %bb86
bb86:
  br label %bb93
bb87:
  %t547 = load i1, ptr %l225, !tbaa !21
  %t548 = xor i1 %t547, true
  br i1 %t548, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s24
  %t550 = load ptr, ptr %l0, !tbaa !29
  store ptr %t550, ptr %l227, !tbaa !29
  %t551 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t551, ptr %l228, !tbaa !27
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t553 = load { i64, [4 x i64] }, ptr %l23
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t556 = getelementptr %"compiler/emit:fnEm", ptr %t554, i32 0, i32 9
  %t557 = load i32, ptr %t556, !tbaa !23
  %t561 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s24, ptr %t552, { i64, [4 x i64] } %t553, i32 %t557)
  store { i64, ptr } %t561, ptr %l233
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t562 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t562, 0
  %t564 = extractvalue { i64, ptr } %t562, 1
  %t565 = mul i64 %t563, 1
  %t566 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t565)
  call void @llvm.memcpy.p0.p0.i64(ptr %t566, ptr %t564, i64 %t565, i1 false)
  %t567 = insertvalue { i64, ptr } undef, i64 %t563, 0
  %t568 = insertvalue { i64, ptr } %t567, ptr %t566, 1
  %t569 = load ptr, ptr %l227, !tbaa !29
  %t570 = load { i64, ptr }, ptr %l228, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s15, ptr %s24, ptr %s24, ptr %s24, ptr %t569, { i64, ptr } %t570, { i64, ptr } %t568, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d112, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s24)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s23)
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t572 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s15, ptr %t572, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d113, i32 0, i32 1) })
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s15)
  br label %bb159
bb96:
  %t574 = load { i64, [8 x i64] }, ptr %l1
  %t576 = extractvalue { i64, [8 x i64] } %t574, 0
  %t577 = icmp eq i64 %t576, 11
  br i1 %t577, label %bb97, label %bb98
bb97:
  %t579 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t580 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t579, i32 0, i32 1
  %t581 = load { i64, [4 x i64] }, ptr %t580
  store { i64, [4 x i64] } %t581, ptr %l26
  %t583 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t584 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t583, i32 0, i32 2
  %t585 = load i32, ptr %t584
  store i32 %t585, ptr %l27, !tbaa !23
  %t587 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t588 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t587, i32 0, i32 3
  %t589 = load %"compiler/mir:Range", ptr %t588
  store %"compiler/mir:Range" %t589, ptr %l28
  %t591 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t592 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t591, i32 0, i32 4
  %t593 = load i32, ptr %t592
  store i32 %t593, ptr %l29, !tbaa !23
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t596 = load { i64, [4 x i64] }, ptr %l26
  %t597 = load i32, ptr %l27, !tbaa !23
  %t598 = load %"compiler/mir:Range", ptr %l28
  %t599 = load i32, ptr %l29, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2esuspend(ptr %v0, ptr %t595, { i64, [4 x i64] } %t596, i32 %t597, %"compiler/mir:Range" %t598, i32 %t599)
  br label %bb100
bb100:
  br label %bb159
bb101:
  %t605 = load { i64, [8 x i64] }, ptr %l1
  %t607 = extractvalue { i64, [8 x i64] } %t605, 0
  %t608 = icmp eq i64 %t607, 12
  br i1 %t608, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb106
bb104:
  store %olang.scope zeroinitializer, ptr %s26
  %t610 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s26, ptr %t610, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d114, i32 0, i32 1) })
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s26)
  br label %bb159
bb106:
  %t612 = load { i64, [8 x i64] }, ptr %l1
  %t614 = extractvalue { i64, [8 x i64] } %t612, 0
  %t615 = icmp eq i64 %t614, 7
  br i1 %t615, label %bb107, label %bb108
bb107:
  %t617 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t618 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t617, i32 0, i32 0
  %t619 = load %"compiler/source:Span", ptr %t618
  store %"compiler/source:Span" %t619, ptr %l30
  %t621 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t622 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t621, i32 0, i32 1
  %t623 = load { i64, [4 x i64] }, ptr %t622
  store { i64, [4 x i64] } %t623, ptr %l31
  br label %bb109
bb108:
  br label %bb121
bb109:
  store %olang.scope zeroinitializer, ptr %s27
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t626 = load %"compiler/source:Span", ptr %l30
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2etrace(ptr %v0, ptr %t625, %"compiler/source:Span" %t626)
  br label %bb110
bb110:
  %t629 = load ptr, ptr %l2, !tbaa !29
  %t630 = load ptr, ptr %l0, !tbaa !29
  %t632 = getelementptr %"compiler/emit:fnEm", ptr %t630, i32 0, i32 1
  %t633 = load ptr, ptr %t632, !tbaa !29
  %t635 = getelementptr %"compiler/mir:Fn", ptr %t633, i32 0, i32 1
  %t636 = load i32, ptr %t635, !tbaa !23
  %t638 = inttoptr i64 0 to ptr
  %t641 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s27, ptr %t638, ptr %t629, i32 %t636)
  store { i64, ptr } %t641, ptr %l261
  br label %bb111
bb111:
  %t642 = load { i64, ptr }, ptr %l261, !tbaa !27
  store { i64, ptr } %t642, ptr %l32, !tbaa !27
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t644 = load { i64, [4 x i64] }, ptr %l31
  %t645 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t649 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s27, ptr %t643, { i64, [4 x i64] } %t644, i32 %t645)
  store { i64, ptr } %t649, ptr %l265
  br label %bb112
bb112:
  %t650 = load { i64, ptr }, ptr %l265, !tbaa !27
  store { i64, ptr } %t650, ptr %l33, !tbaa !27
  %t651 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t653 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s27, ptr %s27, { i64, ptr } %t651, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store i1 %t653, ptr %l267
  br label %bb113
bb113:
  %t654 = load i1, ptr %l267, !tbaa !21
  br i1 %t654, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s28
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t656 = load { i64, ptr }, ptr %l33, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s28, ptr %s27, ptr %s28, ptr %s28, ptr %t655, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d116, i32 0, i32 1) }, { i64, ptr } %t656, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d117, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb116
bb115:
  store %olang.scope zeroinitializer, ptr %s29
  %t659 = load ptr, ptr %l0, !tbaa !29
  store ptr %t659, ptr %l270, !tbaa !29
  %t660 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t660, ptr %l271, !tbaa !27
  %t661 = load ptr, ptr %l0, !tbaa !29
  %t662 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t663 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t664 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t665 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t667 = extractvalue { i64, ptr } %t662, 1
  %t668 = extractvalue { i64, ptr } %t662, 0
  %t669 = add i64 %t665, %t668
  %t670 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t671 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t672 = add i64 %t669, %t671
  %t674 = extractvalue { i64, ptr } %t663, 1
  %t675 = extractvalue { i64, ptr } %t663, 0
  %t676 = add i64 %t672, %t675
  %t677 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t678 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t679 = add i64 %t676, %t678
  %t680 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t679)
  call void @olang_textcopy(ptr %t680, ptr %t664, i64 %t665)
  %t681 = getelementptr i8, ptr %t680, i64 %t665
  call void @olang_textcopy(ptr %t681, ptr %t667, i64 %t668)
  %t682 = getelementptr i8, ptr %t681, i64 %t668
  call void @olang_textcopy(ptr %t682, ptr %t670, i64 %t671)
  %t683 = getelementptr i8, ptr %t682, i64 %t671
  call void @olang_textcopy(ptr %t683, ptr %t674, i64 %t675)
  %t684 = getelementptr i8, ptr %t683, i64 %t675
  call void @olang_textcopy(ptr %t684, ptr %t677, i64 %t678)
  %t685 = insertvalue { i64, ptr } undef, i64 %t679, 0
  %t686 = insertvalue { i64, ptr } %t685, ptr %t680, 1
  %t688 = extractvalue { i64, ptr } %t686, 0
  %t689 = extractvalue { i64, ptr } %t686, 1
  %t690 = mul i64 %t688, 1
  %t691 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t690)
  call void @llvm.memcpy.p0.p0.i64(ptr %t691, ptr %t689, i64 %t690, i1 false)
  %t692 = insertvalue { i64, ptr } undef, i64 %t688, 0
  %t693 = insertvalue { i64, ptr } %t692, ptr %t691, 1
  %t696 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s29, ptr %s29, ptr %t661, { i64, ptr } %t693)
  store { i64, ptr } %t696, ptr %l277
  br label %bb117
bb116:
  call void @__olang_scope_close(ptr %s28)
  br label %bb119
bb117:
  %t697 = load { i64, ptr }, ptr %l277, !tbaa !27
  %t698 = extractvalue { i64, ptr } %t697, 0
  %t699 = extractvalue { i64, ptr } %t697, 1
  %t700 = mul i64 %t698, 1
  %t701 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t700)
  call void @llvm.memcpy.p0.p0.i64(ptr %t701, ptr %t699, i64 %t700, i1 false)
  %t702 = insertvalue { i64, ptr } undef, i64 %t698, 0
  %t703 = insertvalue { i64, ptr } %t702, ptr %t701, 1
  %t704 = load ptr, ptr %l270, !tbaa !29
  %t705 = load { i64, ptr }, ptr %l271, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s27, ptr %s29, ptr %s29, ptr %s29, ptr %t704, { i64, ptr } %t705, { i64, ptr } %t703, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d121, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s29)
  br label %bb119
bb119:
  %t707 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s27, ptr %t707, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d122, i32 0, i32 1) })
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s27)
  br label %bb159
bb121:
  %t709 = load { i64, [8 x i64] }, ptr %l1
  %t711 = extractvalue { i64, [8 x i64] } %t709, 0
  %t712 = icmp eq i64 %t711, 8
  br i1 %t712, label %bb122, label %bb123
bb122:
  %t714 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t715 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t714, i32 0, i32 1
  %t716 = load i32, ptr %t715
  store i32 %t716, ptr %l34, !tbaa !23
  %t718 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t719 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t718, i32 0, i32 2
  %t720 = load i32, ptr %t719
  store i32 %t720, ptr %l35, !tbaa !23
  %t722 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t723 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t722, i32 0, i32 3
  %t724 = load i32, ptr %t723
  store i32 %t724, ptr %l36, !tbaa !23
  %t726 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t727 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t726, i32 0, i32 4
  %t728 = load i32, ptr %t727
  store i32 %t728, ptr %l37, !tbaa !23
  br label %bb124
bb123:
  br label %bb148
bb124:
  store %olang.scope zeroinitializer, ptr %s31
  %t730 = load i32, ptr %l37, !tbaa !23
  %t731 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t734 = icmp ne i32 %t730, %t731
  br i1 %t734, label %bb125, label %bb126
bb125:
  %t736 = load i32, ptr %l37, !tbaa !23
  %t737 = load i32, ptr %l35, !tbaa !23
  %t740 = icmp ne i32 %t736, %t737
  store i1 %t740, ptr %l289, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l289, !tbaa !21
  br label %bb127
bb127:
  %t742 = load i1, ptr %l289, !tbaa !21
  store i1 %t742, ptr %l38, !tbaa !21
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t745 = getelementptr %"compiler/emit:fnEm", ptr %t743, i32 0, i32 0
  %t746 = load ptr, ptr %t745, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s31, ptr %s31, ptr %t746, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d123, i32 0, i32 1) }, { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d124, i32 0, i32 1) })
  br label %bb128
bb128:
  %t748 = load ptr, ptr %l0, !tbaa !29
  store ptr %t748, ptr %l295, !tbaa !29
  %t749 = load i32, ptr %l34, !tbaa !23
  store i32 %t749, ptr %l296, !tbaa !23
  %t750 = load i1, ptr %l38, !tbaa !21
  br i1 %t750, label %bb129, label %bb130
bb129:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l298, !tbaa !27
  br label %bb131
bb130:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d126, i32 0, i32 1) }, ptr %l298, !tbaa !27
  br label %bb131
bb131:
  %t752 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t753 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t754 = load i32, ptr %l296, !tbaa !23
  %t755 = sext i32 %t754 to i64
  %t756 = call i64 @__olang_fmt_i64(ptr null, i64 %t755)
  %t757 = add i64 %t753, %t756
  %t758 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t759 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t760 = add i64 %t757, %t759
  %t761 = load { i64, ptr }, ptr %l298, !tbaa !27
  %t762 = extractvalue { i64, ptr } %t761, 1
  %t763 = extractvalue { i64, ptr } %t761, 0
  %t764 = add i64 %t760, %t763
  %t765 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t766 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t767 = add i64 %t764, %t766
  %t768 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t767)
  call void @olang_textcopy(ptr %t768, ptr %t752, i64 %t753)
  %t769 = getelementptr i8, ptr %t768, i64 %t753
  %t770 = call i64 @__olang_fmt_i64(ptr %t769, i64 %t755)
  %t771 = getelementptr i8, ptr %t769, i64 %t756
  call void @olang_textcopy(ptr %t771, ptr %t758, i64 %t759)
  %t772 = getelementptr i8, ptr %t771, i64 %t759
  call void @olang_textcopy(ptr %t772, ptr %t762, i64 %t763)
  %t773 = getelementptr i8, ptr %t772, i64 %t763
  call void @olang_textcopy(ptr %t773, ptr %t765, i64 %t766)
  %t774 = insertvalue { i64, ptr } undef, i64 %t767, 0
  %t775 = insertvalue { i64, ptr } %t774, ptr %t768, 1
  %t777 = extractvalue { i64, ptr } %t775, 0
  %t778 = extractvalue { i64, ptr } %t775, 1
  %t779 = mul i64 %t777, 1
  %t780 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t779)
  call void @llvm.memcpy.p0.p0.i64(ptr %t780, ptr %t778, i64 %t779, i1 false)
  %t781 = insertvalue { i64, ptr } undef, i64 %t777, 0
  %t782 = insertvalue { i64, ptr } %t781, ptr %t780, 1
  %t783 = load ptr, ptr %l295, !tbaa !29
  %t785 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s31, ptr %s31, ptr %t783, { i64, ptr } %t782)
  store { i64, ptr } %t785, ptr %l301
  br label %bb132
bb132:
  %t786 = load { i64, ptr }, ptr %l301, !tbaa !27
  store { i64, ptr } %t786, ptr %l39, !tbaa !27
  %t787 = load i32, ptr %l37, !tbaa !23
  %t788 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t791 = icmp eq i32 %t787, %t788
  br i1 %t791, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s33
  %t793 = load ptr, ptr %l0, !tbaa !29
  store ptr %t793, ptr %l305, !tbaa !29
  %t794 = load i32, ptr %l35, !tbaa !23
  %t796 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s33, i32 %t794)
  store { i64, ptr } %t796, ptr %l307
  br label %bb135
bb134:
  store %olang.scope zeroinitializer, ptr %s35
  %t797 = load ptr, ptr %l0, !tbaa !29
  %t798 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t799 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t800 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t802 = extractvalue { i64, ptr } %t798, 1
  %t803 = extractvalue { i64, ptr } %t798, 0
  %t804 = add i64 %t800, %t803
  %t805 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t806 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t807 = add i64 %t804, %t806
  %t808 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t807)
  call void @olang_textcopy(ptr %t808, ptr %t799, i64 %t800)
  %t809 = getelementptr i8, ptr %t808, i64 %t800
  call void @olang_textcopy(ptr %t809, ptr %t802, i64 %t803)
  %t810 = getelementptr i8, ptr %t809, i64 %t803
  call void @olang_textcopy(ptr %t810, ptr %t805, i64 %t806)
  %t811 = insertvalue { i64, ptr } undef, i64 %t807, 0
  %t812 = insertvalue { i64, ptr } %t811, ptr %t808, 1
  %t814 = extractvalue { i64, ptr } %t812, 0
  %t815 = extractvalue { i64, ptr } %t812, 1
  %t816 = mul i64 %t814, 1
  %t817 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t816)
  call void @llvm.memcpy.p0.p0.i64(ptr %t817, ptr %t815, i64 %t816, i1 false)
  %t818 = insertvalue { i64, ptr } undef, i64 %t814, 0
  %t819 = insertvalue { i64, ptr } %t818, ptr %t817, 1
  %t822 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s35, ptr %s35, ptr %t797, { i64, ptr } %t819)
  store { i64, ptr } %t822, ptr %l314
  br label %bb137
bb135:
  %t823 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t824 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t825 = load { i64, ptr }, ptr %l307, !tbaa !27
  %t826 = extractvalue { i64, ptr } %t825, 1
  %t827 = extractvalue { i64, ptr } %t825, 0
  %t828 = add i64 %t824, %t827
  %t829 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t828)
  call void @olang_textcopy(ptr %t829, ptr %t823, i64 %t824)
  %t830 = getelementptr i8, ptr %t829, i64 %t824
  call void @olang_textcopy(ptr %t830, ptr %t826, i64 %t827)
  %t831 = insertvalue { i64, ptr } undef, i64 %t828, 0
  %t832 = insertvalue { i64, ptr } %t831, ptr %t829, 1
  %t834 = extractvalue { i64, ptr } %t832, 0
  %t835 = extractvalue { i64, ptr } %t832, 1
  %t836 = mul i64 %t834, 1
  %t837 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t836)
  call void @llvm.memcpy.p0.p0.i64(ptr %t837, ptr %t835, i64 %t836, i1 false)
  %t838 = insertvalue { i64, ptr } undef, i64 %t834, 0
  %t839 = insertvalue { i64, ptr } %t838, ptr %t837, 1
  %t840 = load ptr, ptr %l305, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s33, ptr %t840, { i64, ptr } %t839)
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s33)
  br label %bb147
bb137:
  %t842 = load { i64, ptr }, ptr %l314, !tbaa !27
  store { i64, ptr } %t842, ptr %l40, !tbaa !27
  %t843 = load i32, ptr %l36, !tbaa !23
  %t844 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t847 = icmp ne i32 %t843, %t844
  br i1 %t847, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s37
  %t849 = load ptr, ptr %l0, !tbaa !29
  store ptr %t849, ptr %l318, !tbaa !29
  %t850 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t850, ptr %l319, !tbaa !27
  %t851 = load ptr, ptr %l0, !tbaa !29
  %t852 = load i32, ptr %l36, !tbaa !23
  %t855 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalAt(ptr %v0, ptr %s37, ptr %t851, i32 %t852)
  store { i64, ptr } %t855, ptr %l322
  br label %bb140
bb139:
  br label %bb142
bb140:
  %t856 = load { i64, ptr }, ptr %l322, !tbaa !27
  %t857 = extractvalue { i64, ptr } %t856, 0
  %t858 = extractvalue { i64, ptr } %t856, 1
  %t859 = mul i64 %t857, 1
  %t860 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t859)
  call void @llvm.memcpy.p0.p0.i64(ptr %t860, ptr %t858, i64 %t859, i1 false)
  %t861 = insertvalue { i64, ptr } undef, i64 %t857, 0
  %t862 = insertvalue { i64, ptr } %t861, ptr %t860, 1
  %t863 = load ptr, ptr %l318, !tbaa !29
  %t864 = load { i64, ptr }, ptr %l319, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s37, ptr %s35, ptr %s37, ptr %s37, ptr %t863, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d133, i32 0, i32 1) }, { i64, ptr } %t864, { i64, ptr } %t862, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s37)
  br label %bb142
bb142:
  %t866 = load ptr, ptr %l0, !tbaa !29
  %t867 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t868 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t869 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t871 = extractvalue { i64, ptr } %t867, 1
  %t872 = extractvalue { i64, ptr } %t867, 0
  %t873 = add i64 %t869, %t872
  %t874 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t875 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t876 = add i64 %t873, %t875
  %t877 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t876)
  call void @olang_textcopy(ptr %t877, ptr %t868, i64 %t869)
  %t878 = getelementptr i8, ptr %t877, i64 %t869
  call void @olang_textcopy(ptr %t878, ptr %t871, i64 %t872)
  %t879 = getelementptr i8, ptr %t878, i64 %t872
  call void @olang_textcopy(ptr %t879, ptr %t874, i64 %t875)
  %t880 = insertvalue { i64, ptr } undef, i64 %t876, 0
  %t881 = insertvalue { i64, ptr } %t880, ptr %t877, 1
  %t883 = extractvalue { i64, ptr } %t881, 0
  %t884 = extractvalue { i64, ptr } %t881, 1
  %t885 = mul i64 %t883, 1
  %t886 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t885)
  call void @llvm.memcpy.p0.p0.i64(ptr %t886, ptr %t884, i64 %t885, i1 false)
  %t887 = insertvalue { i64, ptr } undef, i64 %t883, 0
  %t888 = insertvalue { i64, ptr } %t887, ptr %t886, 1
  %t891 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s35, ptr %s35, ptr %t866, { i64, ptr } %t888)
  store { i64, ptr } %t891, ptr %l328
  br label %bb143
bb143:
  %t892 = load { i64, ptr }, ptr %l328, !tbaa !27
  %t893 = load ptr, ptr %l0, !tbaa !29
  store ptr %t893, ptr %l329, !tbaa !29
  store { i64, ptr } %t892, ptr %l330, !tbaa !27
  %t895 = load i32, ptr %l37, !tbaa !23
  %t897 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s35, i32 %t895)
  store { i64, ptr } %t897, ptr %l332
  br label %bb144
bb144:
  %t898 = load i32, ptr %l35, !tbaa !23
  %t900 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s35, i32 %t898)
  store { i64, ptr } %t900, ptr %l334
  br label %bb145
bb145:
  %t901 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t902 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t903 = load { i64, ptr }, ptr %l330, !tbaa !27
  %t904 = extractvalue { i64, ptr } %t903, 1
  %t905 = extractvalue { i64, ptr } %t903, 0
  %t906 = add i64 %t902, %t905
  %t907 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t908 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t909 = add i64 %t906, %t908
  %t910 = load { i64, ptr }, ptr %l332, !tbaa !27
  %t911 = extractvalue { i64, ptr } %t910, 1
  %t912 = extractvalue { i64, ptr } %t910, 0
  %t913 = add i64 %t909, %t912
  %t914 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t915 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t916 = add i64 %t913, %t915
  %t917 = load { i64, ptr }, ptr %l334, !tbaa !27
  %t918 = extractvalue { i64, ptr } %t917, 1
  %t919 = extractvalue { i64, ptr } %t917, 0
  %t920 = add i64 %t916, %t919
  %t921 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t920)
  call void @olang_textcopy(ptr %t921, ptr %t901, i64 %t902)
  %t922 = getelementptr i8, ptr %t921, i64 %t902
  call void @olang_textcopy(ptr %t922, ptr %t904, i64 %t905)
  %t923 = getelementptr i8, ptr %t922, i64 %t905
  call void @olang_textcopy(ptr %t923, ptr %t907, i64 %t908)
  %t924 = getelementptr i8, ptr %t923, i64 %t908
  call void @olang_textcopy(ptr %t924, ptr %t911, i64 %t912)
  %t925 = getelementptr i8, ptr %t924, i64 %t912
  call void @olang_textcopy(ptr %t925, ptr %t914, i64 %t915)
  %t926 = getelementptr i8, ptr %t925, i64 %t915
  call void @olang_textcopy(ptr %t926, ptr %t918, i64 %t919)
  %t927 = insertvalue { i64, ptr } undef, i64 %t920, 0
  %t928 = insertvalue { i64, ptr } %t927, ptr %t921, 1
  %t930 = extractvalue { i64, ptr } %t928, 0
  %t931 = extractvalue { i64, ptr } %t928, 1
  %t932 = mul i64 %t930, 1
  %t933 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t932)
  call void @llvm.memcpy.p0.p0.i64(ptr %t933, ptr %t931, i64 %t932, i1 false)
  %t934 = insertvalue { i64, ptr } undef, i64 %t930, 0
  %t935 = insertvalue { i64, ptr } %t934, ptr %t933, 1
  %t936 = load ptr, ptr %l329, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s35, ptr %t936, { i64, ptr } %t935)
  br label %bb146
bb146:
  call void @__olang_scope_close(ptr %s35)
  br label %bb147
bb147:
  call void @__olang_scope_close(ptr %s31)
  br label %bb159
bb148:
  %t938 = load { i64, [8 x i64] }, ptr %l1
  %t940 = extractvalue { i64, [8 x i64] } %t938, 0
  %t941 = icmp eq i64 %t940, 9
  br i1 %t941, label %bb149, label %bb150
bb149:
  %t943 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t944 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t943, i32 0, i32 0
  %t945 = load %"compiler/source:Span", ptr %t944
  store %"compiler/source:Span" %t945, ptr %l42
  %t947 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t948 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t947, i32 0, i32 1
  %t949 = load i32, ptr %t948, !range !{i32 0, i32 16}
  store i32 %t949, ptr %l43
  %t951 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t952 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t951, i32 0, i32 2
  %t953 = load { i64, [4 x i64] }, ptr %t952
  store { i64, [4 x i64] } %t953, ptr %l44
  br label %bb151
bb150:
  br label %bb153
bb151:
  %t955 = load ptr, ptr %l0, !tbaa !29
  %t956 = load %"compiler/source:Span", ptr %l42
  %t957 = load i32, ptr %l43, !range !{i32 0, i32 16}
  %t958 = load { i64, [4 x i64] }, ptr %l44
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eexit(ptr %v0, ptr %t955, %"compiler/source:Span" %t956, i32 %t957, { i64, [4 x i64] } %t958)
  br label %bb152
bb152:
  br label %bb159
bb153:
  %t963 = load { i64, [8 x i64] }, ptr %l1
  %t965 = extractvalue { i64, [8 x i64] } %t963, 0
  %t966 = icmp eq i64 %t965, 10
  br i1 %t966, label %bb154, label %bb155
bb154:
  br label %bb156
bb155:
  br label %bb158
bb156:
  store %olang.scope zeroinitializer, ptr %s41
  %t968 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s41, ptr %t968, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d138, i32 0, i32 1) })
  br label %bb157
bb157:
  call void @__olang_scope_close(ptr %s41)
  br label %bb159
bb158:
  call void @__olang_check_failed(ptr @olang_loc_7633dd9d24c54174_280dfd74a77e9550)
  unreachable
bb159:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2edeclaredSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l21 = alloca i1
  %l25 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d139, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d140, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t9, ptr %l8, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l10, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t23, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t24 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb4:
  %t25 = load i64, ptr %l3, !tbaa !24
  store i64 %t25, ptr %l1, !tbaa !24
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t36 = icmp slt i64 %t30, %t33
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t38, ptr %l18, !tbaa !27
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i8, ptr %t42, i64 %t39
  %t44 = load i8, ptr %t43, !tbaa !32
  %t46 = call i1 @compiler_2femit_2esymbolChar(i8 %t44)
  store i1 %t46, ptr %l21
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  %t47 = load i1, ptr %l21, !tbaa !21
  store i1 %t47, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t48 = load i1, ptr %l17, !tbaa !21
  %t49 = xor i1 %t48, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l2, !tbaa !24
  br label %bb13
bb13:
  br label %bb5
bb14:
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t55, ptr %l25, !tbaa !27
  %t56 = load i64, ptr %l1, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l27, !tbaa !24
  %t59 = load i64, ptr %l2, !tbaa !24
  store i64 %t59, ptr %l28, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  store i64 %t61, ptr %l29, !tbaa !24
  %t62 = load i64, ptr %l27, !tbaa !24
  %t63 = icmp sge i64 %t62, 0
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = load i64, ptr %l28, !tbaa !24
  %t67 = icmp sle i64 %t65, %t66
  br i1 %t67, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_f695fddd526749db_a8fb91cf3e060dd7)
  unreachable
bb17:
  %t69 = load i64, ptr %l28, !tbaa !24
  %t70 = load i64, ptr %l29, !tbaa !24
  %t71 = icmp sle i64 %t69, %t70
  br i1 %t71, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_f695fddd526749db_a8fb91cf3e060dd7)
  unreachable
bb19:
  %t73 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = load i64, ptr %l27, !tbaa !24
  %t76 = load i64, ptr %l28, !tbaa !24
  %t77 = getelementptr i8, ptr %t74, i64 %t75
  %t78 = sub i64 %t76, %t75
  %t79 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t77, 1
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = extractvalue { i64, ptr } %t80, 0
  %t84 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t82, i64 %t83)
  %t85 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_f695fddd526749db_a8fb91cf3e060dd7)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2efuzzSlug(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i8
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i64
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l7
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store i1 false, ptr %l2, !tbaa !21
  store { i64, ptr } %a0, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb24
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  store i8 %t23, ptr %l6, !tbaa !22
  %t25 = load i8, ptr %l6, !tbaa !22
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t25)
  store i1 %t27, ptr %l19
  br label %bb6
bb6:
  %t28 = load i1, ptr %l19, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb10
bb8:
  %t29 = load i8, ptr %l6, !tbaa !22
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t29)
  store i1 %t31, ptr %l22
  br label %bb9
bb9:
  %t32 = load i1, ptr %l22, !tbaa !21
  store i1 %t32, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l20, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t34 = load i1, ptr %l2, !tbaa !21
  br i1 %t34, label %bb13, label %bb14
bb12:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb22
bb13:
  %t37 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l1)
  store i64 %t37, ptr %l26
  br label %bb15
bb14:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb16
bb15:
  %t38 = load i64, ptr %l26, !tbaa !24
  %t39 = icmp sgt i64 %t38, 0
  store i1 %t39, ptr %l24, !tbaa !21
  br label %bb16
bb16:
  %t41 = load i1, ptr %l24, !tbaa !21
  br i1 %t41, label %bb17, label %bb18
bb17:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 95)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t43 = load i8, ptr %l6, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t43)
  br label %bb21
bb21:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l4, !tbaa !24
  br label %bb2
bb24:
  %t51 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l1)
  store i64 %t51, ptr %l34
  br label %bb25
bb25:
  %t52 = load i64, ptr %l34, !tbaa !24
  %t53 = icmp eq i64 %t52, 0
  br i1 %t53, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d141, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t55, ptr %l37, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 0
  store i64 %t57, ptr %l38, !tbaa !24
  %t58 = load i64, ptr %l38, !tbaa !24
  %t59 = mul i64 %t58, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  store { i64, ptr } %t62, ptr %l39, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = load i64, ptr %l38, !tbaa !24
  %t68 = mul i64 %t67, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t64, ptr %t66, i64 %t68, i1 false)
  %t69 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t69, ptr %l37, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t70 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t70, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t72 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t72, ptr %l41
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t73 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
@.d0 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"olang.table." }>, align 8
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
@.d1 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ptr @" }>, align 8
@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d5 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c" = linkonce_odr constant [" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d6 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" x ptr] [" }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]\0A" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"llvm.coro.id" }>, align 8
@.d10 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"token @llvm.coro.id(i32, ptr, ptr, ptr)" }>, align 8
@.d11 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"llvm.coro.alloc" }>, align 8
@.d12 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"i1 @llvm.coro.alloc(token)" }>, align 8
@.d13 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"llvm.coro.size.i64" }>, align 8
@.d14 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"i64 @llvm.coro.size.i64()" }>, align 8
@.d15 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"llvm.coro.align.i64" }>, align 8
@.d16 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"i64 @llvm.coro.align.i64()" }>, align 8
@.d17 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"llvm.coro.begin" }>, align 8
@.d18 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"ptr @llvm.coro.begin(token, ptr)" }>, align 8
@.d19 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"llvm.coro.suspend" }>, align 8
@.d20 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"i8 @llvm.coro.suspend(token, i1)" }>, align 8
@.d21 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"llvm.coro.end" }>, align 8
@.d22 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"i1 @llvm.coro.end(ptr, i1, token)" }>, align 8
@.d23 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"llvm.coro.free" }>, align 8
@.d24 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"ptr @llvm.coro.free(token, ptr)" }>, align 8
@.d25 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"llvm.coro.resume" }>, align 8
@.d26 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"void @llvm.coro.resume(ptr)" }>, align 8
@.d27 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"llvm.coro.destroy" }>, align 8
@.d28 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"void @llvm.coro.destroy(ptr)" }>, align 8
@.d29 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"llvm.coro.done" }>, align 8
@.d30 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"i1 @llvm.coro.done(ptr)" }>, align 8
@.d31 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"llvm.coro.promise" }>, align 8
@.d32 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"ptr @llvm.coro.promise(ptr, i32, i1)" }>, align 8
@.d33 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d34 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"declare " }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".walk" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang_test_" }>, align 8
@.d39 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d40 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang.sole." }>, align 8
@.d41 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".local." }>, align 8
@.d42 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang.sole." }>, align 8
@.d43 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".global." }>, align 8
@.d44 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"olang.sole." }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d46 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"__olang_scope_alloc_zeroed_min" }>, align 8
@.d47 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"__olang_scope_alloc_min" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d48 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call ptr @" }>, align 8
@.d49 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr " }>, align 8
@.d50 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d52 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"__olang_scope_alloc_zeroed" }>, align 8
@.d53 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_alloc" }>, align 8
@.d54 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call ptr @" }>, align 8
@.d55 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr " }>, align 8
@.d56 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d58 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"an index into no array" }>, align 8
@.d59 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d60 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d61 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i64 0, i64 " }>, align 8
@.d62 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"getelementptr { i64, ptr }, ptr " }>, align 8
@.d63 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d64 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d65 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d66 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d67 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d68 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a destructor not found: " }>, align 8
@.d69 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"call void @" }>, align 8
@.d70 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"_rt(ptr %l" }>, align 8
@.d71 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", ptr %home)" }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%l" }>, align 8
@.d73 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%lp" }>, align 8
@.d74 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2femit_3afnEm_2e19 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d76 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d77 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d79 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d80 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d81 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d82 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d83 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d84 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"sub i64 " }>, align 8
@.d85 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d86 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unreachable" }>, align 8
@.d87 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d88 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d89 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", label %" }>, align 8
@.d90 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"switch " }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d92 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", label %" }>, align 8
@.d93 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" [" }>, align 8
@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d95 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", label %" }>, align 8
@.d96 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ]" }>, align 8
@.d97 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"%out" }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d100 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d101 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%rv" }>, align 8
@.d102 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d103 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d104 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d105 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d106 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%rv" }>, align 8
@.d107 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d108 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" zeroinitializer, " }>, align 8
@.d109 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d110 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d111 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%rv" }>, align 8
@.d112 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%rv" }>, align 8
@.d113 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"br label %ret" }>, align 8
@.d114 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"br label %gen.free" }>, align 8
@.d115 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d116 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d117 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%rv" }>, align 8
@.d118 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d119 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" zeroinitializer, i32 " }>, align 8
@.d120 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d121 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%rv" }>, align 8
@.d122 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"br label %ret" }>, align 8
@.d123 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"__olang_join_tasks_keep" }>, align 8
@.d124 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"i64 @__olang_join_tasks_keep(ptr, i1)" }>, align 8
@.d125 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d126 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d127 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"call i64 @__olang_join_tasks_keep(ptr %jh" }>, align 8
@.d128 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", i1 " }>, align 8
@.d129 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d130 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"trunc i64 " }>, align 8
@.d131 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i32" }>, align 8
@.d132 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d133 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d134 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp ne i32 " }>, align 8
@.d135 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d136 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d137 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", label %" }>, align 8
@.d138 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"a cleanup (interpret's)" }>, align 8
@.d139 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d140 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d141 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
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
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etableName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeid(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCodeOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eAnySlotBase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePayloadSize(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2earrayOfE(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_be71ff40133d1c55_cc24820c9716c1a9 = external constant [0 x i8]
declare { i64, i64 } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eLocalPlace(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estableSym(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, i64 } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGlobalPlace(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, i64 } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePlaceKey(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2erefsIn(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_6f064da57090b2af_17093dce158f11fb = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@olang_loc_ed162375e135a06c_e406bb0ac0d59940 = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2ederefs(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aLvalue_2eBaseIs(%"compiler/mir:Lvalue" %a0, i32 %a1)
@olang_loc_5f9c6fbf78b3e51d_e9dc61b8da3e01d1 = external constant [0 x i8]
@olang_loc_afa6164151ba006_66d817e1c679673a = external constant [0 x i8]
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edataPtr(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/source:Span" @compiler_2femit_2etermSpan({ i64, [8 x i64] } %a0)
declare { i64, ptr } @compiler_2femit_2eblockName(ptr %v0, i32 %a0)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ecall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2etailCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, ptr } %a4)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2esuspend(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/mir:Range" %a3, i32 %a4)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2etrace(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eexit(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, [4 x i64] } %a3)
@olang_loc_7633dd9d24c54174_280dfd74a77e9550 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2femit_2esymbolChar(i8 %a0)
@olang_loc_f695fddd526749db_a8fb91cf3e060dd7 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)

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
