source_filename = "compiler_free-2.quick.ll"
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
%"compiler/free:letGo" = type { i64, i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, %"compiler/source:Span", i64, i1 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/free:store" = type { i64, i64, i64, %"compiler/source:Span", i64, i64, i64, ptr, ptr }
%"compiler/free:reason" = type { i64, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/free:Free" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/free:orStore" = type { i64, i64, ptr, ptr }
%"compiler/free:orCall" = type { i64, i64, i64, i64, i64, ptr, ptr }
%"compiler/free:feedCall" = type { i64, i64, i64, i64, i64, i1 }
%"compiler/free:feed" = type { i64, i64, i64, i64, { i64, [2 x i64] }, { i64, [2 x i64] }, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/free:leaf" = type { { i64, ptr }, i64 }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/free:mustW" = type { ptr, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/free:walker" = type { ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eDump(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/free:letGo"
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca %"compiler/free:store"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"compiler/free:store"
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca %"compiler/free:letGo"
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca %"std/prelude/text:StringBuilder"
  %l32 = alloca ptr
  %l35 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l62 = alloca i64
  %l64 = alloca i64
  %l69 = alloca %"compiler/free:letGo"
  %l79 = alloca i64
  %l81 = alloca i64
  %l86 = alloca %"compiler/free:store"
  %l99 = alloca { i64, ptr }
  %l106 = alloca { ptr, ptr }
  %l110 = alloca i32
  %l111 = alloca { i64, ptr }
  %l112 = alloca ptr
  %l116 = alloca i32
  %l118 = alloca { i64, ptr }
  %l120 = alloca ptr
  %l121 = alloca i64
  %l122 = alloca { i64, ptr }
  %l126 = alloca i64
  %l130 = alloca i1
  %l131 = alloca { i64, ptr }
  %l134 = alloca i1
  %l135 = alloca i64
  %l136 = alloca i64
  %l140 = alloca i64
  %l144 = alloca %"compiler/free:reason"
  %l152 = alloca i64
  %l154 = alloca i64
  %l159 = alloca %"compiler/free:store"
  %l160 = alloca ptr
  %l161 = alloca i64
  %l162 = alloca i64
  %l163 = alloca i64
  %l164 = alloca i64
  %l172 = alloca { i64, ptr }
  %l179 = alloca i64
  %l181 = alloca i64
  %l186 = alloca %"compiler/free:letGo"
  %l187 = alloca ptr
  %l188 = alloca i64
  %l189 = alloca i64
  %l190 = alloca i64
  %l198 = alloca { i64, ptr }
  %l201 = alloca { i64, ptr }
  %l208 = alloca i64
  %l212 = alloca i64
  %l215 = alloca i64
  %l236 = alloca ptr
  %l237 = alloca i64
  %l239 = alloca i1
  %l243 = alloca ptr
  %l244 = alloca i64
  %l246 = alloca i1
  %l250 = alloca ptr
  %l251 = alloca i64
  %l253 = alloca i1
  %l257 = alloca ptr
  %l258 = alloca i64
  %l260 = alloca ptr
  %l261 = alloca i64
  %l264 = alloca { i64, ptr }
  %l268 = alloca ptr
  %l272 = alloca ptr
  %l276 = alloca ptr
  %l280 = alloca ptr
  %l284 = alloca ptr
  %l290 = alloca { i64, ptr }
  %l302 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s25 = alloca %olang.builder
  %s25room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l30
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l30
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t3)
  store ptr %t5, ptr %l32
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l32, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/free:Free", ptr %t7, i32 0, i32 9
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l35
  br label %bb3
bb3:
  %t12 = load i64, ptr %l35, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb9
bb6:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l42, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l42, !tbaa !24
  store i64 %t39, ptr %l39, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l39, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb56
bb12:
  br label %bb13
bb13:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/free:Free", ptr %t59, i32 0, i32 47
  store ptr %t61, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  %t63 = load i64, ptr %l11, !tbaa !24
  store i64 %t63, ptr %l62, !tbaa !24
  %t64 = load ptr, ptr %l10, !tbaa !29
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l64
  br label %bb15
bb15:
  %t67 = load i64, ptr %l62, !tbaa !24
  %t68 = load i64, ptr %l64, !tbaa !24
  %t69 = icmp slt i64 %t67, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t73 = load ptr, ptr %l10, !tbaa !29
  %t74 = load i64, ptr %l11, !tbaa !24
  %t77 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t73, i64 %t74)
  store %"compiler/free:letGo" %t77, ptr %l69
  br label %bb19
bb19:
  %t78 = load %"compiler/free:letGo", ptr %l69
  store %"compiler/free:letGo" %t78, ptr %l12
  %t79 = getelementptr %"compiler/free:letGo", ptr %l12, i32 0, i32 0
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = icmp eq i64 %t80, %t81
  br i1 %t84, label %bb20, label %bb21
bb20:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l9, !tbaa !24
  br label %bb22
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t90 = load i64, ptr %l11, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l11, !tbaa !24
  br label %bb14
bb24:
  store i64 0, ptr %l13, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/free:Free", ptr %t94, i32 0, i32 46
  store ptr %t96, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  %t98 = load i64, ptr %l15, !tbaa !24
  store i64 %t98, ptr %l79, !tbaa !24
  %t99 = load ptr, ptr %l14, !tbaa !29
  %t101 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t99)
  store i64 %t101, ptr %l81
  br label %bb26
bb26:
  %t102 = load i64, ptr %l79, !tbaa !24
  %t103 = load i64, ptr %l81, !tbaa !24
  %t104 = icmp slt i64 %t102, %t103
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb27, label %bb28
bb27:
  br label %bb35
bb28:
  br label %bb29
bb29:
  %t108 = load ptr, ptr %l14, !tbaa !29
  %t109 = load i64, ptr %l15, !tbaa !24
  %t112 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t108, i64 %t109)
  store %"compiler/free:store" %t112, ptr %l86
  br label %bb30
bb30:
  %t113 = load %"compiler/free:store", ptr %l86
  store %"compiler/free:store" %t113, ptr %l16
  %t114 = getelementptr %"compiler/free:store", ptr %l16, i32 0, i32 0
  %t115 = load i64, ptr %t114, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = icmp eq i64 %t115, %t116
  br i1 %t119, label %bb31, label %bb32
bb31:
  %t121 = load i64, ptr %l13, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l13, !tbaa !24
  br label %bb33
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t125 = load i64, ptr %l15, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l15, !tbaa !24
  br label %bb25
bb35:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/free:Free", ptr %t129, i32 0, i32 2
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 5
  %t135 = load { ptr, ptr }, ptr %t134
  %t137 = extractvalue { ptr, ptr } %t135, 0
  %t138 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t139 = icmp eq ptr %t137, %t138
  %t140 = extractvalue { ptr, ptr } %t135, 1
  %t141 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t142 = icmp eq ptr %t140, %t141
  %t143 = and i1 %t139, %t142
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb36, label %bb37
bb36:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/free:Free", ptr %t147, i32 0, i32 2
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/scope:Scoper", ptr %t150, i32 0, i32 5
  %t153 = load { ptr, ptr }, ptr %t152
  %t155 = extractvalue { ptr, ptr } %t153, 0
  %t156 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t157 = icmp eq ptr %t155, %t156
  %t158 = extractvalue { ptr, ptr } %t153, 1
  %t159 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t160 = icmp eq ptr %t158, %t159
  %t161 = and i1 %t157, %t160
  br i1 %t161, label %bb38, label %bb39
bb37:
  %t163 = load ptr, ptr %l2, !tbaa !29
  store ptr %t163, ptr %l112, !tbaa !29
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/free:Free", ptr %t164, i32 0, i32 9
  %t167 = load i64, ptr %l8, !tbaa !24
  %t170 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t166, i64 %t167)
  store i32 %t170, ptr %l116
  br label %bb43
bb38:
  call void @__olang_check_failed(ptr @olang_loc_8f29d0df7ac0b0b1_5a3f673e10b5ae55)
  unreachable
bb39:
  br label %bb40
bb40:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/free:Free", ptr %t171, i32 0, i32 2
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/scope:Scoper", ptr %t174, i32 0, i32 5
  %t177 = load { ptr, ptr }, ptr %t176
  store { ptr, ptr } %t177, ptr %l106
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/free:Free", ptr %t178, i32 0, i32 9
  %t181 = load i64, ptr %l8, !tbaa !24
  %t184 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t180, i64 %t181)
  store i32 %t184, ptr %l110
  br label %bb41
bb41:
  %t185 = load { ptr, ptr }, ptr %l106
  %t186 = extractvalue { ptr, ptr } %t185, 0
  %t187 = extractvalue { ptr, ptr } %t185, 1
  %t188 = load i32, ptr %l110, !tbaa !23
  %t189 = call { i64, ptr } %t186(ptr %t187, ptr %s2, i32 %t188)
  store { i64, ptr } %t189, ptr %l111
  br label %bb42
bb42:
  %t190 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t190, ptr %l99, !tbaa !27
  br label %bb45
bb43:
  %t192 = inttoptr i64 0 to ptr
  %t193 = load ptr, ptr %l112, !tbaa !29
  %t194 = load i32, ptr %l116, !tbaa !23
  %t195 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s2, ptr %t192, ptr %t193, i32 %t194)
  store { i64, ptr } %t195, ptr %l118
  br label %bb44
bb44:
  %t196 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 1
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t199 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t198)
  call void @olang_textcopy(ptr %t199, ptr %t197, i64 %t198)
  %t200 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  store { i64, ptr } %t201, ptr %l99, !tbaa !27
  br label %bb45
bb45:
  %t203 = load { i64, ptr }, ptr %l99, !tbaa !27
  store ptr %l1, ptr %l120, !tbaa !29
  %t204 = load i64, ptr %l8, !tbaa !24
  store i64 %t204, ptr %l121, !tbaa !24
  store { i64, ptr } %t203, ptr %l122, !tbaa !27
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/free:Free", ptr %t206, i32 0, i32 10
  %t209 = load i64, ptr %l8, !tbaa !24
  %t212 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t208, i64 %t209)
  store i64 %t212, ptr %l126
  br label %bb46
bb46:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/free:Free", ptr %t213, i32 0, i32 11
  %t216 = load i64, ptr %l8, !tbaa !24
  %t219 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t215, i64 %t216)
  store i1 %t219, ptr %l130
  br label %bb47
bb47:
  %t220 = load i1, ptr %l130, !tbaa !21
  br i1 %t220, label %bb48, label %bb49
bb48:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l131, !tbaa !27
  br label %bb50
bb49:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l131, !tbaa !27
  br label %bb50
bb50:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load i64, ptr %l8, !tbaa !24
  %t225 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsSole(ptr %v0, ptr %t221, i64 %t222)
  store i1 %t225, ptr %l134
  br label %bb51
bb51:
  %t226 = load i64, ptr %l9, !tbaa !24
  store i64 %t226, ptr %l135, !tbaa !24
  %t227 = load i64, ptr %l13, !tbaa !24
  store i64 %t227, ptr %l136, !tbaa !24
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/free:Free", ptr %t228, i32 0, i32 48
  %t231 = load i64, ptr %l8, !tbaa !24
  %t234 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t230, i64 %t231)
  store i64 %t234, ptr %l140
  br label %bb52
bb52:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/free:Free", ptr %t235, i32 0, i32 50
  %t238 = load i64, ptr %l8, !tbaa !24
  %t241 = call %"compiler/free:reason" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eAt_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v0, ptr %t237, i64 %t238)
  store %"compiler/free:reason" %t241, ptr %l144
  br label %bb53
bb53:
  %t242 = getelementptr %"compiler/free:reason", ptr %l144, i32 0, i32 3
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !27
  %t244 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t246 = load i64, ptr %l121, !tbaa !24
  %t247 = call i64 @__olang_fmt_i64(ptr null, i64 %t246)
  %t248 = add i64 %t245, %t247
  %t249 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t251 = add i64 %t248, %t250
  %t252 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 1
  %t254 = extractvalue { i64, ptr } %t252, 0
  %t255 = add i64 %t251, %t254
  %t256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t258 = add i64 %t255, %t257
  %t259 = load i64, ptr %l126, !tbaa !24
  %t260 = call i64 @__olang_fmt_i64(ptr null, i64 %t259)
  %t261 = add i64 %t258, %t260
  %t262 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = add i64 %t261, %t264
  %t266 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t267 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t268 = add i64 %t265, %t267
  %t269 = load i1, ptr %l134, !tbaa !21
  %t270 = select i1 %t269, ptr @.c6, ptr @.c7
  %t271 = select i1 %t269, i64 4, i64 5
  %t272 = add i64 %t268, %t271
  %t273 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t275 = add i64 %t272, %t274
  %t276 = load i64, ptr %l135, !tbaa !24
  %t277 = call i64 @__olang_fmt_i64(ptr null, i64 %t276)
  %t278 = add i64 %t275, %t277
  %t279 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t280 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t281 = add i64 %t278, %t280
  %t282 = load i64, ptr %l136, !tbaa !24
  %t283 = call i64 @__olang_fmt_i64(ptr null, i64 %t282)
  %t284 = add i64 %t281, %t283
  %t285 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t286 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t287 = add i64 %t284, %t286
  %t288 = load i64, ptr %l140, !tbaa !24
  %t289 = call i64 @__olang_fmt_i64(ptr null, i64 %t288)
  %t290 = add i64 %t287, %t289
  %t291 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t293 = add i64 %t290, %t292
  %t295 = extractvalue { i64, ptr } %t243, 1
  %t296 = extractvalue { i64, ptr } %t243, 0
  %t297 = add i64 %t293, %t296
  %t298 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t299 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t300 = add i64 %t297, %t299
  %t301 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t300)
  call void @olang_textcopy(ptr %t301, ptr %t244, i64 %t245)
  %t302 = getelementptr i8, ptr %t301, i64 %t245
  %t303 = call i64 @__olang_fmt_i64(ptr %t302, i64 %t246)
  %t304 = getelementptr i8, ptr %t302, i64 %t247
  call void @olang_textcopy(ptr %t304, ptr %t249, i64 %t250)
  %t305 = getelementptr i8, ptr %t304, i64 %t250
  call void @olang_textcopy(ptr %t305, ptr %t253, i64 %t254)
  %t306 = getelementptr i8, ptr %t305, i64 %t254
  call void @olang_textcopy(ptr %t306, ptr %t256, i64 %t257)
  %t307 = getelementptr i8, ptr %t306, i64 %t257
  %t308 = call i64 @__olang_fmt_i64(ptr %t307, i64 %t259)
  %t309 = getelementptr i8, ptr %t307, i64 %t260
  call void @olang_textcopy(ptr %t309, ptr %t263, i64 %t264)
  %t310 = getelementptr i8, ptr %t309, i64 %t264
  call void @olang_textcopy(ptr %t310, ptr %t266, i64 %t267)
  %t311 = getelementptr i8, ptr %t310, i64 %t267
  call void @olang_textcopy(ptr %t311, ptr %t270, i64 %t271)
  %t312 = getelementptr i8, ptr %t311, i64 %t271
  call void @olang_textcopy(ptr %t312, ptr %t273, i64 %t274)
  %t313 = getelementptr i8, ptr %t312, i64 %t274
  %t314 = call i64 @__olang_fmt_i64(ptr %t313, i64 %t276)
  %t315 = getelementptr i8, ptr %t313, i64 %t277
  call void @olang_textcopy(ptr %t315, ptr %t279, i64 %t280)
  %t316 = getelementptr i8, ptr %t315, i64 %t280
  %t317 = call i64 @__olang_fmt_i64(ptr %t316, i64 %t282)
  %t318 = getelementptr i8, ptr %t316, i64 %t283
  call void @olang_textcopy(ptr %t318, ptr %t285, i64 %t286)
  %t319 = getelementptr i8, ptr %t318, i64 %t286
  %t320 = call i64 @__olang_fmt_i64(ptr %t319, i64 %t288)
  %t321 = getelementptr i8, ptr %t319, i64 %t289
  call void @olang_textcopy(ptr %t321, ptr %t291, i64 %t292)
  %t322 = getelementptr i8, ptr %t321, i64 %t292
  call void @olang_textcopy(ptr %t322, ptr %t295, i64 %t296)
  %t323 = getelementptr i8, ptr %t322, i64 %t296
  call void @olang_textcopy(ptr %t323, ptr %t298, i64 %t299)
  %t324 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t301, 1
  %t327 = extractvalue { i64, ptr } %t325, 0
  %t328 = extractvalue { i64, ptr } %t325, 1
  %t329 = mul i64 %t327, 1
  %t330 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t329)
  call void @llvm.memcpy.p0.p0.i64(ptr %t330, ptr %t328, i64 %t329, i1 false)
  %t331 = insertvalue { i64, ptr } undef, i64 %t327, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t330, 1
  %t333 = load ptr, ptr %l120, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t333, { i64, ptr } %t332)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb55:
  %t335 = load i64, ptr %l7, !tbaa !24
  %t337 = add i64 %t335, 1
  store i64 %t337, ptr %l7, !tbaa !24
  br label %bb10
bb56:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/free:Free", ptr %t339, i32 0, i32 46
  store ptr %t341, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb57
bb57:
  store %olang.scope zeroinitializer, ptr %s15
  %t343 = load i64, ptr %l19, !tbaa !24
  store i64 %t343, ptr %l152, !tbaa !24
  %t344 = load ptr, ptr %l18, !tbaa !29
  %t346 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t344)
  store i64 %t346, ptr %l154
  br label %bb58
bb58:
  %t347 = load i64, ptr %l152, !tbaa !24
  %t348 = load i64, ptr %l154, !tbaa !24
  %t349 = icmp slt i64 %t347, %t348
  %t351 = xor i1 %t349, true
  br i1 %t351, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s15)
  br label %bb66
bb60:
  br label %bb61
bb61:
  %t353 = load ptr, ptr %l18, !tbaa !29
  %t354 = load i64, ptr %l19, !tbaa !24
  %t357 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t353, i64 %t354)
  store %"compiler/free:store" %t357, ptr %l159
  br label %bb62
bb62:
  %t358 = load %"compiler/free:store", ptr %l159
  store %"compiler/free:store" %t358, ptr %l20
  store ptr %l1, ptr %l160, !tbaa !29
  %t359 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 0
  %t360 = load i64, ptr %t359, !tbaa !24
  store i64 %t360, ptr %l161, !tbaa !24
  %t361 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 1
  %t362 = load i64, ptr %t361, !tbaa !24
  store i64 %t362, ptr %l162, !tbaa !24
  %t363 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 4
  %t364 = load i64, ptr %t363, !tbaa !24
  store i64 %t364, ptr %l163, !tbaa !24
  %t365 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 6
  %t366 = load i64, ptr %t365, !tbaa !24
  store i64 %t366, ptr %l164, !tbaa !24
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr %"compiler/free:Free", ptr %t367, i32 0, i32 0
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t372 = getelementptr %"compiler/generic:Program", ptr %t370, i32 0, i32 0
  %t373 = load ptr, ptr %t372, !tbaa !29
  %t375 = getelementptr %"compiler/load:Loader", ptr %t373, i32 0, i32 4
  %t376 = load ptr, ptr %t375, !tbaa !29
  %t377 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 2
  %t378 = load i64, ptr %t377, !tbaa !24
  %t379 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 3
  %t380 = getelementptr %"compiler/source:Span", ptr %t379, i32 0, i32 0
  %t381 = load i32, ptr %t380, !tbaa !23
  %t383 = sext i32 %t381 to i64
  %t387 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s15, ptr %t376, i64 %t378, i64 %t383)
  store { i64, ptr } %t387, ptr %l172
  br label %bb63
bb63:
  %t388 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t389 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t390 = load i64, ptr %l161, !tbaa !24
  %t391 = call i64 @__olang_fmt_i64(ptr null, i64 %t390)
  %t392 = add i64 %t389, %t391
  %t393 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t394 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t395 = add i64 %t392, %t394
  %t396 = load i64, ptr %l162, !tbaa !24
  %t397 = call i64 @__olang_fmt_i64(ptr null, i64 %t396)
  %t398 = add i64 %t395, %t397
  %t399 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t400 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t401 = add i64 %t398, %t400
  %t402 = load i64, ptr %l163, !tbaa !24
  %t403 = call i64 @__olang_fmt_i64(ptr null, i64 %t402)
  %t404 = add i64 %t401, %t403
  %t405 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t406 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t407 = add i64 %t404, %t406
  %t408 = load i64, ptr %l164, !tbaa !24
  %t409 = call i64 @__olang_fmt_i64(ptr null, i64 %t408)
  %t410 = add i64 %t407, %t409
  %t411 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t412 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t413 = add i64 %t410, %t412
  %t414 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = extractvalue { i64, ptr } %t414, 0
  %t417 = add i64 %t413, %t416
  %t418 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t420 = add i64 %t417, %t419
  %t421 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t420)
  call void @olang_textcopy(ptr %t421, ptr %t388, i64 %t389)
  %t422 = getelementptr i8, ptr %t421, i64 %t389
  %t423 = call i64 @__olang_fmt_i64(ptr %t422, i64 %t390)
  %t424 = getelementptr i8, ptr %t422, i64 %t391
  call void @olang_textcopy(ptr %t424, ptr %t393, i64 %t394)
  %t425 = getelementptr i8, ptr %t424, i64 %t394
  %t426 = call i64 @__olang_fmt_i64(ptr %t425, i64 %t396)
  %t427 = getelementptr i8, ptr %t425, i64 %t397
  call void @olang_textcopy(ptr %t427, ptr %t399, i64 %t400)
  %t428 = getelementptr i8, ptr %t427, i64 %t400
  %t429 = call i64 @__olang_fmt_i64(ptr %t428, i64 %t402)
  %t430 = getelementptr i8, ptr %t428, i64 %t403
  call void @olang_textcopy(ptr %t430, ptr %t405, i64 %t406)
  %t431 = getelementptr i8, ptr %t430, i64 %t406
  %t432 = call i64 @__olang_fmt_i64(ptr %t431, i64 %t408)
  %t433 = getelementptr i8, ptr %t431, i64 %t409
  call void @olang_textcopy(ptr %t433, ptr %t411, i64 %t412)
  %t434 = getelementptr i8, ptr %t433, i64 %t412
  call void @olang_textcopy(ptr %t434, ptr %t415, i64 %t416)
  %t435 = getelementptr i8, ptr %t434, i64 %t416
  call void @olang_textcopy(ptr %t435, ptr %t418, i64 %t419)
  %t436 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t421, 1
  %t439 = extractvalue { i64, ptr } %t437, 0
  %t440 = extractvalue { i64, ptr } %t437, 1
  %t441 = mul i64 %t439, 1
  %t442 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t441)
  call void @llvm.memcpy.p0.p0.i64(ptr %t442, ptr %t440, i64 %t441, i1 false)
  %t443 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t444 = insertvalue { i64, ptr } %t443, ptr %t442, 1
  %t445 = load ptr, ptr %l160, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %t445, { i64, ptr } %t444)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s15)
  br label %bb65
bb65:
  %t447 = load i64, ptr %l19, !tbaa !24
  %t449 = add i64 %t447, 1
  store i64 %t449, ptr %l19, !tbaa !24
  br label %bb57
bb66:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr %"compiler/free:Free", ptr %t451, i32 0, i32 47
  store ptr %t453, ptr %l21, !tbaa !29
  store i64 0, ptr %l22, !tbaa !24
  br label %bb67
bb67:
  store %olang.scope zeroinitializer, ptr %s19
  %t455 = load i64, ptr %l22, !tbaa !24
  store i64 %t455, ptr %l179, !tbaa !24
  %t456 = load ptr, ptr %l21, !tbaa !29
  %t458 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t456)
  store i64 %t458, ptr %l181
  br label %bb68
bb68:
  %t459 = load i64, ptr %l179, !tbaa !24
  %t460 = load i64, ptr %l181, !tbaa !24
  %t461 = icmp slt i64 %t459, %t460
  %t463 = xor i1 %t461, true
  br i1 %t463, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s19)
  br label %bb77
bb70:
  br label %bb71
bb71:
  %t465 = load ptr, ptr %l21, !tbaa !29
  %t466 = load i64, ptr %l22, !tbaa !24
  %t469 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t465, i64 %t466)
  store %"compiler/free:letGo" %t469, ptr %l186
  br label %bb72
bb72:
  %t470 = load %"compiler/free:letGo", ptr %l186
  store %"compiler/free:letGo" %t470, ptr %l23
  store ptr %l1, ptr %l187, !tbaa !29
  %t471 = getelementptr %"compiler/free:letGo", ptr %l23, i32 0, i32 0
  %t472 = load i64, ptr %t471, !tbaa !24
  store i64 %t472, ptr %l188, !tbaa !24
  %t473 = getelementptr %"compiler/free:letGo", ptr %l23, i32 0, i32 1
  %t474 = load i64, ptr %t473, !tbaa !24
  store i64 %t474, ptr %l189, !tbaa !24
  %t475 = getelementptr %"compiler/free:letGo", ptr %l23, i32 0, i32 5
  %t476 = load i64, ptr %t475, !tbaa !24
  store i64 %t476, ptr %l190, !tbaa !24
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/free:Free", ptr %t477, i32 0, i32 0
  %t480 = load ptr, ptr %t479, !tbaa !29
  %t482 = getelementptr %"compiler/generic:Program", ptr %t480, i32 0, i32 0
  %t483 = load ptr, ptr %t482, !tbaa !29
  %t485 = getelementptr %"compiler/load:Loader", ptr %t483, i32 0, i32 4
  %t486 = load ptr, ptr %t485, !tbaa !29
  %t487 = getelementptr %"compiler/free:letGo", ptr %l23, i32 0, i32 2
  %t488 = load i64, ptr %t487, !tbaa !24
  %t489 = getelementptr %"compiler/free:letGo", ptr %l23, i32 0, i32 4
  %t490 = getelementptr %"compiler/source:Span", ptr %t489, i32 0, i32 0
  %t491 = load i32, ptr %t490, !tbaa !23
  %t493 = sext i32 %t491 to i64
  %t497 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s19, ptr %t486, i64 %t488, i64 %t493)
  store { i64, ptr } %t497, ptr %l198
  br label %bb73
bb73:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t499 = load %"compiler/free:letGo", ptr %l23
  %t502 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceName(ptr %v0, ptr %s19, ptr %t498, %"compiler/free:letGo" %t499)
  store { i64, ptr } %t502, ptr %l201
  br label %bb74
bb74:
  %t503 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t504 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t505 = load i64, ptr %l188, !tbaa !24
  %t506 = call i64 @__olang_fmt_i64(ptr null, i64 %t505)
  %t507 = add i64 %t504, %t506
  %t508 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t509 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t510 = add i64 %t507, %t509
  %t511 = load i64, ptr %l189, !tbaa !24
  %t512 = call i64 @__olang_fmt_i64(ptr null, i64 %t511)
  %t513 = add i64 %t510, %t512
  %t514 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t515 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t516 = add i64 %t513, %t515
  %t517 = load i64, ptr %l190, !tbaa !24
  %t518 = call i64 @__olang_fmt_i64(ptr null, i64 %t517)
  %t519 = add i64 %t516, %t518
  %t520 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t521 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t522 = add i64 %t519, %t521
  %t523 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t524 = extractvalue { i64, ptr } %t523, 1
  %t525 = extractvalue { i64, ptr } %t523, 0
  %t526 = add i64 %t522, %t525
  %t527 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t528 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t529 = add i64 %t526, %t528
  %t530 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t531 = extractvalue { i64, ptr } %t530, 1
  %t532 = extractvalue { i64, ptr } %t530, 0
  %t533 = add i64 %t529, %t532
  %t534 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t535 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t536 = add i64 %t533, %t535
  %t537 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t536)
  call void @olang_textcopy(ptr %t537, ptr %t503, i64 %t504)
  %t538 = getelementptr i8, ptr %t537, i64 %t504
  %t539 = call i64 @__olang_fmt_i64(ptr %t538, i64 %t505)
  %t540 = getelementptr i8, ptr %t538, i64 %t506
  call void @olang_textcopy(ptr %t540, ptr %t508, i64 %t509)
  %t541 = getelementptr i8, ptr %t540, i64 %t509
  %t542 = call i64 @__olang_fmt_i64(ptr %t541, i64 %t511)
  %t543 = getelementptr i8, ptr %t541, i64 %t512
  call void @olang_textcopy(ptr %t543, ptr %t514, i64 %t515)
  %t544 = getelementptr i8, ptr %t543, i64 %t515
  %t545 = call i64 @__olang_fmt_i64(ptr %t544, i64 %t517)
  %t546 = getelementptr i8, ptr %t544, i64 %t518
  call void @olang_textcopy(ptr %t546, ptr %t520, i64 %t521)
  %t547 = getelementptr i8, ptr %t546, i64 %t521
  call void @olang_textcopy(ptr %t547, ptr %t524, i64 %t525)
  %t548 = getelementptr i8, ptr %t547, i64 %t525
  call void @olang_textcopy(ptr %t548, ptr %t527, i64 %t528)
  %t549 = getelementptr i8, ptr %t548, i64 %t528
  call void @olang_textcopy(ptr %t549, ptr %t531, i64 %t532)
  %t550 = getelementptr i8, ptr %t549, i64 %t532
  call void @olang_textcopy(ptr %t550, ptr %t534, i64 %t535)
  %t551 = insertvalue { i64, ptr } undef, i64 %t536, 0
  %t552 = insertvalue { i64, ptr } %t551, ptr %t537, 1
  %t554 = extractvalue { i64, ptr } %t552, 0
  %t555 = extractvalue { i64, ptr } %t552, 1
  %t556 = mul i64 %t554, 1
  %t557 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t556)
  call void @llvm.memcpy.p0.p0.i64(ptr %t557, ptr %t555, i64 %t556, i1 false)
  %t558 = insertvalue { i64, ptr } undef, i64 %t554, 0
  %t559 = insertvalue { i64, ptr } %t558, ptr %t557, 1
  %t560 = load ptr, ptr %l187, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s19, ptr %t560, { i64, ptr } %t559)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s19)
  br label %bb76
bb76:
  %t562 = load i64, ptr %l22, !tbaa !24
  %t564 = add i64 %t562, 1
  store i64 %t564, ptr %l22, !tbaa !24
  br label %bb67
bb77:
  store i64 0, ptr %l24, !tbaa !24
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t568 = getelementptr %"compiler/free:Free", ptr %t566, i32 0, i32 1
  %t570 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t568)
  store i64 %t570, ptr %l208
  br label %bb78
bb78:
  %t571 = load i64, ptr %l208, !tbaa !24
  store i64 %t571, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t572 = load i64, ptr %l25, !tbaa !24
  %t573 = load i64, ptr %l24, !tbaa !24
  %t576 = icmp sgt i64 %t572, %t573
  br i1 %t576, label %bb79, label %bb80
bb79:
  %t578 = load i64, ptr %l26, !tbaa !24
  %t580 = icmp sgt i64 %t578, 0
  br i1 %t580, label %bb81, label %bb82
bb80:
  store i64 0, ptr %l212, !tbaa !24
  br label %bb84
bb81:
  %t582 = load i64, ptr %l25, !tbaa !24
  %t583 = load i64, ptr %l24, !tbaa !24
  %t586 = sub i64 %t582, %t583
  %t587 = load i64, ptr %l26, !tbaa !24
  %t590 = add i64 %t586, %t587
  %t592 = sub i64 %t590, 1
  %t593 = load i64, ptr %l26, !tbaa !24
  %t596 = sdiv i64 %t592, %t593
  store i64 %t596, ptr %l215, !tbaa !24
  br label %bb83
bb82:
  store i64 0, ptr %l215, !tbaa !24
  br label %bb83
bb83:
  %t598 = load i64, ptr %l215, !tbaa !24
  store i64 %t598, ptr %l212, !tbaa !24
  br label %bb84
bb84:
  %t599 = load i64, ptr %l212, !tbaa !24
  store i64 %t599, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb85
bb85:
  store %olang.scope zeroinitializer, ptr %s23
  %t600 = load i64, ptr %l28, !tbaa !24
  %t601 = load i64, ptr %l27, !tbaa !24
  %t604 = icmp slt i64 %t600, %t601
  %t606 = xor i1 %t604, true
  br i1 %t606, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s23)
  br label %bb122
bb87:
  br label %bb88
bb88:
  %t608 = load i64, ptr %l24, !tbaa !24
  %t609 = load i64, ptr %l28, !tbaa !24
  %t610 = load i64, ptr %l26, !tbaa !24
  %t613 = mul i64 %t609, %t610
  %t616 = add i64 %t608, %t613
  store i64 %t616, ptr %l29, !tbaa !24
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t620 = getelementptr %"compiler/free:Free", ptr %t618, i32 0, i32 29
  %t621 = load i64, ptr %l29, !tbaa !24
  %t624 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t620, i64 %t621)
  store ptr %t624, ptr %l236
  br label %bb89
bb89:
  %t625 = load ptr, ptr %l236, !tbaa !29
  %t626 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t625)
  store i64 %t626, ptr %l237
  br label %bb90
bb90:
  %t627 = load i64, ptr %l237, !tbaa !24
  %t628 = icmp eq i64 %t627, 0
  br i1 %t628, label %bb91, label %bb92
bb91:
  %t630 = load ptr, ptr %l0, !tbaa !29
  %t632 = getelementptr %"compiler/free:Free", ptr %t630, i32 0, i32 30
  %t633 = load i64, ptr %l29, !tbaa !24
  %t636 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t632, i64 %t633)
  store ptr %t636, ptr %l243
  br label %bb93
bb92:
  store i1 false, ptr %l239, !tbaa !21
  br label %bb95
bb93:
  %t637 = load ptr, ptr %l243, !tbaa !29
  %t638 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t637)
  store i64 %t638, ptr %l244
  br label %bb94
bb94:
  %t639 = load i64, ptr %l244, !tbaa !24
  %t640 = icmp eq i64 %t639, 0
  store i1 %t640, ptr %l239, !tbaa !21
  br label %bb95
bb95:
  %t642 = load i1, ptr %l239, !tbaa !21
  br i1 %t642, label %bb96, label %bb97
bb96:
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t645 = getelementptr %"compiler/free:Free", ptr %t643, i32 0, i32 32
  %t646 = load i64, ptr %l29, !tbaa !24
  %t649 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t645, i64 %t646)
  store ptr %t649, ptr %l250
  br label %bb98
bb97:
  store i1 false, ptr %l246, !tbaa !21
  br label %bb100
bb98:
  %t650 = load ptr, ptr %l250, !tbaa !29
  %t651 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t650)
  store i64 %t651, ptr %l251
  br label %bb99
bb99:
  %t652 = load i64, ptr %l251, !tbaa !24
  %t653 = icmp eq i64 %t652, 0
  store i1 %t653, ptr %l246, !tbaa !21
  br label %bb100
bb100:
  %t655 = load i1, ptr %l246, !tbaa !21
  br i1 %t655, label %bb101, label %bb102
bb101:
  %t656 = load ptr, ptr %l0, !tbaa !29
  %t658 = getelementptr %"compiler/free:Free", ptr %t656, i32 0, i32 33
  %t659 = load i64, ptr %l29, !tbaa !24
  %t662 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t658, i64 %t659)
  store ptr %t662, ptr %l257
  br label %bb103
bb102:
  store i1 false, ptr %l253, !tbaa !21
  br label %bb105
bb103:
  %t663 = load ptr, ptr %l257, !tbaa !29
  %t664 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t663)
  store i64 %t664, ptr %l258
  br label %bb104
bb104:
  %t665 = load i64, ptr %l258, !tbaa !24
  %t666 = icmp eq i64 %t665, 0
  store i1 %t666, ptr %l253, !tbaa !21
  br label %bb105
bb105:
  %t668 = load i1, ptr %l253, !tbaa !21
  br i1 %t668, label %bb106, label %bb107
bb106:
  call void @__olang_scope_close(ptr %s23)
  br label %bb121
bb107:
  br label %bb108
bb108:
  store ptr %l1, ptr %l260, !tbaa !29
  %t669 = load i64, ptr %l29, !tbaa !24
  store i64 %t669, ptr %l261, !tbaa !24
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load i64, ptr %l29, !tbaa !24
  %t674 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %s23, ptr %t670, i64 %t671)
  store { i64, ptr } %t674, ptr %l264
  br label %bb109
bb109:
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t677 = getelementptr %"compiler/free:Free", ptr %t675, i32 0, i32 29
  %t678 = load i64, ptr %l29, !tbaa !24
  %t681 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t677, i64 %t678)
  store ptr %t681, ptr %l268
  br label %bb110
bb110:
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t684 = getelementptr %"compiler/free:Free", ptr %t682, i32 0, i32 30
  %t685 = load i64, ptr %l29, !tbaa !24
  %t688 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t684, i64 %t685)
  store ptr %t688, ptr %l272
  br label %bb111
bb111:
  %t689 = load ptr, ptr %l0, !tbaa !29
  %t691 = getelementptr %"compiler/free:Free", ptr %t689, i32 0, i32 32
  %t692 = load i64, ptr %l29, !tbaa !24
  %t695 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t691, i64 %t692)
  store ptr %t695, ptr %l276
  br label %bb112
bb112:
  %t696 = load ptr, ptr %l0, !tbaa !29
  %t698 = getelementptr %"compiler/free:Free", ptr %t696, i32 0, i32 33
  %t699 = load i64, ptr %l29, !tbaa !24
  %t702 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t698, i64 %t699)
  store ptr %t702, ptr %l280
  br label %bb113
bb113:
  %t703 = load ptr, ptr %l0, !tbaa !29
  %t705 = getelementptr %"compiler/free:Free", ptr %t703, i32 0, i32 28
  %t706 = load i64, ptr %l29, !tbaa !24
  %t709 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t705, i64 %t706)
  store ptr %t709, ptr %l284
  br label %bb114
bb114:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s25
  store ptr %s25room, ptr %s25
  %t710 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t711 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s25, ptr %t710, i64 %t711)
  %t712 = load i64, ptr %l261, !tbaa !24
  %t713 = call ptr @__olang_sb_room(ptr %s25, i64 24)
  %t714 = call i64 @__olang_fmt_i64(ptr %t713, i64 %t712)
  call void @__olang_sb_add(ptr %s25, i64 %t714)
  %t715 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t716 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s25, ptr %t715, i64 %t716)
  %t717 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t718 = extractvalue { i64, ptr } %t717, 1
  %t719 = extractvalue { i64, ptr } %t717, 0
  call void @__olang_sb_put(ptr %s25, ptr %t718, i64 %t719)
  %t720 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t721 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s25, ptr %t720, i64 %t721)
  call void @olang_2emir_2eHelperKind_2eRender_2emut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26(ptr %s25, ptr %l268, i64 0)
  br label %bb115
bb115:
  %t723 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t724 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s25, ptr %t723, i64 %t724)
  call void @olang_2emir_2eHelperKind_2eRender_2emut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26(ptr %s25, ptr %l272, i64 0)
  br label %bb116
bb116:
  %t726 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t727 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s25, ptr %t726, i64 %t727)
  call void @olang_2emir_2eHelperKind_2eRender_2emut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26(ptr %s25, ptr %l276, i64 0)
  br label %bb117
bb117:
  %t729 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t730 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s25, ptr %t729, i64 %t730)
  call void @olang_2emir_2eHelperKind_2eRender_2emut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26(ptr %s25, ptr %l280, i64 0)
  br label %bb118
bb118:
  %t732 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t733 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s25, ptr %t732, i64 %t733)
  call void @olang_2emir_2eHelperKind_2eRender_2emut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26(ptr %s25, ptr %l284, i64 0)
  br label %bb119
bb119:
  %t735 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t736 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s25, ptr %t735, i64 %t736)
  %t737 = load ptr, ptr %s25
  %t738 = getelementptr %olang.builder, ptr %s25, i32 0, i32 1
  %t739 = load i64, ptr %t738
  %t740 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t739)
  call void @olang_textcopy(ptr %t740, ptr %t737, i64 %t739)
  %t741 = insertvalue { i64, ptr } undef, i64 %t739, 0
  %t742 = insertvalue { i64, ptr } %t741, ptr %t740, 1
  store { i64, ptr } %t742, ptr %l290, !tbaa !27
  %t743 = getelementptr %olang.builder, ptr %s25, i32 0, i32 3
  %t744 = load ptr, ptr %t743
  %t745 = icmp ne ptr %t744, null
  br i1 %t745, label %sbgrew.746, label %sbdone.747
sbgrew.746:
  call void @__olang_sb_done(ptr %s25)
  br label %sbdone.747
sbdone.747:
  %t748 = load { i64, ptr }, ptr %l290, !tbaa !27
  %t749 = extractvalue { i64, ptr } %t748, 0
  %t750 = extractvalue { i64, ptr } %t748, 1
  %t751 = mul i64 %t749, 1
  %t752 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t751)
  call void @llvm.memcpy.p0.p0.i64(ptr %t752, ptr %t750, i64 %t751, i1 false)
  %t753 = insertvalue { i64, ptr } undef, i64 %t749, 0
  %t754 = insertvalue { i64, ptr } %t753, ptr %t752, 1
  %t755 = load ptr, ptr %l260, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s23, ptr %t755, { i64, ptr } %t754)
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s23)
  br label %bb121
bb121:
  %t757 = load i64, ptr %l28, !tbaa !24
  %t759 = add i64 %t757, 1
  store i64 %t759, ptr %l28, !tbaa !24
  br label %bb85
bb122:
  %t761 = load ptr, ptr %l0, !tbaa !29
  %t763 = getelementptr %"compiler/free:Free", ptr %t761, i32 0, i32 41
  %t764 = load i1, ptr %t763, !tbaa !21
  %t765 = load ptr, ptr %l0, !tbaa !29
  %t767 = getelementptr %"compiler/free:Free", ptr %t765, i32 0, i32 44
  %t768 = load i1, ptr %t767, !tbaa !21
  %t769 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t770 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t772 = select i1 %t764, ptr @.c6, ptr @.c7
  %t773 = select i1 %t764, i64 4, i64 5
  %t774 = add i64 %t770, %t773
  %t775 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t776 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t777 = add i64 %t774, %t776
  %t779 = select i1 %t768, ptr @.c6, ptr @.c7
  %t780 = select i1 %t768, i64 4, i64 5
  %t781 = add i64 %t777, %t780
  %t782 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t783 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t784 = add i64 %t781, %t783
  %t785 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t784)
  call void @olang_textcopy(ptr %t785, ptr %t769, i64 %t770)
  %t786 = getelementptr i8, ptr %t785, i64 %t770
  call void @olang_textcopy(ptr %t786, ptr %t772, i64 %t773)
  %t787 = getelementptr i8, ptr %t786, i64 %t773
  call void @olang_textcopy(ptr %t787, ptr %t775, i64 %t776)
  %t788 = getelementptr i8, ptr %t787, i64 %t776
  call void @olang_textcopy(ptr %t788, ptr %t779, i64 %t780)
  %t789 = getelementptr i8, ptr %t788, i64 %t780
  call void @olang_textcopy(ptr %t789, ptr %t782, i64 %t783)
  %t790 = insertvalue { i64, ptr } undef, i64 %t784, 0
  %t791 = insertvalue { i64, ptr } %t790, ptr %t785, 1
  %t793 = extractvalue { i64, ptr } %t791, 0
  %t794 = extractvalue { i64, ptr } %t791, 1
  %t795 = mul i64 %t793, 1
  %t796 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t795)
  call void @llvm.memcpy.p0.p0.i64(ptr %t796, ptr %t794, i64 %t795, i1 false)
  %t797 = insertvalue { i64, ptr } undef, i64 %t793, 0
  %t798 = insertvalue { i64, ptr } %t797, ptr %t796, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t798)
  br label %bb123
bb123:
  %t802 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t802, ptr %l302
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s0)
  %t803 = load { i64, ptr }, ptr %l302, !tbaa !27
  store { i64, ptr } %t803, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, i64 } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eLocalPlace(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l10 = alloca i64
  %l14 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisOwnLocal(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t10 = insertvalue { i64, i64 } %t9, i64 -1, 1
  store { i64, i64 } %t10, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/free:Free", ptr %t12, i32 0, i32 65
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t14, i64 %t15)
  store i64 %t18, ptr %l10
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/free:Free", ptr %t19, i32 0, i32 66
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l14
  br label %bb6
bb6:
  %t26 = load i64, ptr %l10, !tbaa !24
  %t27 = insertvalue { i64, i64 } undef, i64 %t26, 0
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = insertvalue { i64, i64 } %t27, i64 %t28, 1
  store { i64, i64 } %t29, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i32, ptr %l8, !tbaa !23
  store i32 %t10, ptr %l3, !tbaa !23
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l11
  br label %bb3
bb3:
  %t16 = load i1, ptr %l11, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l15
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i32, ptr %l15, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l16
  br label %bb7
bb7:
  %t26 = load i32, ptr %l16, !tbaa !23
  store i32 %t26, ptr %l3, !tbaa !23
  br label %bb8
bb8:
  %t27 = load i32, ptr %l3, !tbaa !23
  store i32 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecollection(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/free:letGo" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/free:letGo"
  %lp7 = alloca ptr
  %lp8 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca %"compiler/free:letGo"
  %l22 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
  %l41 = alloca { i64, ptr }
  %l43 = alloca i1
  %l50 = alloca { i64, ptr }
  %l52 = alloca i1
  %l54 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 47
  store ptr %t3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l5, !tbaa !24
  store i64 %t5, ptr %l11, !tbaa !24
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l13
  br label %bb2
bb2:
  %t9 = load i64, ptr %l11, !tbaa !24
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb29
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/free:letGo" %t19, ptr %l18
  br label %bb6
bb6:
  %t20 = load %"compiler/free:letGo", ptr %l18
  store %"compiler/free:letGo" %t20, ptr %l6
  %t21 = getelementptr %"compiler/free:letGo", ptr %l6, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = icmp eq i64 %t22, %a1
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = getelementptr %"compiler/free:letGo", ptr %l6, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t33 = icmp eq i64 %t29, %a2
  store i1 %t33, ptr %l22, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l22, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t36 = getelementptr %"compiler/free:letGo", ptr %l6, i32 0, i32 5
  %t37 = load i64, ptr %t36, !tbaa !24
  %t38 = load i64, ptr @G_2ecompiler_2ffree_2eLAssign, !tbaa !24
  %t41 = icmp ne i64 %t37, %t38
  store i1 %t41, ptr %l26, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l26, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t44 = getelementptr %"compiler/free:letGo", ptr %l6, i32 0, i32 7
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  store i1 %t47, ptr %l30, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l30, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/free:Free", ptr %t50, i32 0, i32 23
  %t53 = getelementptr %"compiler/free:letGo", ptr %l6, i32 0, i32 7
  %t54 = load i64, ptr %t53, !tbaa !24
  %t57 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t52, i64 %t54)
  store i1 %t57, ptr %l37
  br label %bb18
bb17:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb19
bb18:
  %t58 = load i1, ptr %l37, !tbaa !21
  %t59 = xor i1 %t58, true
  store i1 %t59, ptr %l33, !tbaa !21
  br label %bb19
bb19:
  %t61 = load i1, ptr %l33, !tbaa !21
  br i1 %t61, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load %"compiler/free:letGo", ptr %l6
  %t66 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2erecvOf(ptr %v0, ptr %v1, ptr %t62, %"compiler/free:letGo" %t63)
  store { i64, ptr } %t66, ptr %l41
  br label %bb22
bb21:
  br label %bb27
bb22:
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t67, ptr %lp7
  %t68 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t69 = load ptr, ptr %lp7
  store { i64, ptr } %t68, ptr %t69, !tbaa !27
  %t70 = load ptr, ptr %lp7
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t71, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t73, ptr %l43
  br label %bb23
bb23:
  %t74 = load i1, ptr %l43, !tbaa !21
  %t75 = xor i1 %t74, true
  br i1 %t75, label %bb24, label %bb25
bb24:
  %t77 = load ptr, ptr %lp7
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t78, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t80 = load i64, ptr %l5, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l5, !tbaa !24
  br label %bb1
bb29:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t88 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2erecvOf(ptr %v0, ptr %v1, ptr %t84, %"compiler/free:letGo" %a3)
  store { i64, ptr } %t88, ptr %l50
  br label %bb30
bb30:
  %t89 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t89, ptr %lp8
  %t90 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t91 = load ptr, ptr %lp8
  store { i64, ptr } %t90, ptr %t91, !tbaa !27
  %t92 = load ptr, ptr %lp8
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t95 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t93, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t95, ptr %l52
  br label %bb31
bb31:
  %t96 = load i1, ptr %l52, !tbaa !21
  %t97 = xor i1 %t96, true
  br i1 %t97, label %bb32, label %bb33
bb32:
  %t99 = load ptr, ptr %lp8
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  store { i64, ptr } %t100, ptr %l54, !tbaa !27
  br label %bb34
bb33:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t102, ptr %l54, !tbaa !27
  br label %bb34
bb34:
  %t104 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l58, !tbaa !24
  %t106 = load i64, ptr %l58, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l59, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l58, !tbaa !24
  %t116 = mul i64 %t115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %t114, i64 %t116, i1 false)
  %t117 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t117, ptr %l54, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t118 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2edecide(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/free:letGo"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"compiler/free:store"
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca %"compiler/free:orStore"
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca %"compiler/free:orCall"
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca %"compiler/free:feedCall"
  %l30 = alloca %"compiler/free:feed"
  %l31 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca %"compiler/free:store"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca %"compiler/free:store"
  %l39 = alloca i64
  %l40 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
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
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i64
  %l66 = alloca %"compiler/free:store"
  %l69 = alloca i64
  %l74 = alloca i64
  %l77 = alloca i64
  %l99 = alloca i64
  %l104 = alloca i64
  %l106 = alloca i64
  %l111 = alloca %"compiler/free:letGo"
  %l115 = alloca i1
  %l118 = alloca i1
  %l122 = alloca i1
  %l126 = alloca i1
  %l135 = alloca i64
  %l138 = alloca i64
  %l158 = alloca ptr
  %l159 = alloca i64
  %l160 = alloca i64
  %l161 = alloca %"compiler/source:Span"
  %l164 = alloca i64
  %l166 = alloca ptr
  %l167 = alloca i64
  %l168 = alloca i64
  %l169 = alloca %"compiler/source:Span"
  %l172 = alloca i1
  %l176 = alloca i1
  %l177 = alloca ptr
  %l178 = alloca i64
  %l179 = alloca i64
  %l180 = alloca %"compiler/source:Span"
  %l185 = alloca i64
  %l187 = alloca i64
  %l192 = alloca %"compiler/free:store"
  %l196 = alloca i1
  %l200 = alloca i1
  %l202 = alloca i1
  %l203 = alloca ptr
  %l207 = alloca i1
  %l217 = alloca i64
  %l219 = alloca i64
  %l224 = alloca %"compiler/free:orStore"
  %l228 = alloca i1
  %l230 = alloca i1
  %l233 = alloca i1
  %l234 = alloca ptr
  %l235 = alloca i64
  %l236 = alloca i64
  %l237 = alloca %"compiler/source:Span"
  %l242 = alloca i64
  %l244 = alloca i64
  %l249 = alloca %"compiler/free:orCall"
  %l253 = alloca i1
  %l255 = alloca i1
  %l259 = alloca ptr
  %l263 = alloca i1
  %l267 = alloca i1
  %l268 = alloca ptr
  %l269 = alloca i64
  %l270 = alloca i64
  %l271 = alloca %"compiler/source:Span"
  %l276 = alloca i64
  %l278 = alloca i64
  %l283 = alloca %"compiler/free:feedCall"
  %l286 = alloca i1
  %l291 = alloca %"compiler/free:feed"
  %l292 = alloca ptr
  %l293 = alloca i64
  %l294 = alloca i64
  %l298 = alloca ptr
  %l300 = alloca i64
  %l304 = alloca ptr
  %l308 = alloca %"compiler/typed:Local"
  %l309 = alloca %"compiler/source:Span"
  %l310 = alloca i64
  %l315 = alloca ptr
  %l319 = alloca ptr
  %l323 = alloca %"compiler/typed:Local"
  %l325 = alloca { i64, ptr }
  %l332 = alloca i64
  %l334 = alloca i64
  %l339 = alloca %"compiler/free:store"
  %l343 = alloca i1
  %l346 = alloca i1
  %l348 = alloca i1
  %l349 = alloca ptr
  %l353 = alloca i64
  %l362 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l364 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l366 = alloca i64
  %l368 = alloca i64
  %l373 = alloca i64
  %l377 = alloca %"compiler/free:store"
  %l381 = alloca i1
  %l385 = alloca i1
  %l386 = alloca i1
  %l389 = alloca i1
  %l391 = alloca ptr
  %l395 = alloca i64
  %l398 = alloca i1
  %l399 = alloca ptr
  %l400 = alloca i64
  %l404 = alloca { i64, [2 x i64] }
  %l407 = alloca i1
  %l408 = alloca ptr
  %l409 = alloca i64
  %l413 = alloca { i64, [2 x i64] }
  %l418 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l419 = alloca i64
  %l422 = alloca i64
  %l423 = alloca i32
  %l443 = alloca i64
  %l446 = alloca i64
  %l467 = alloca i1
  %l468 = alloca ptr
  %l469 = alloca i64
  %l470 = alloca i64
  %l471 = alloca %"compiler/source:Span"
  %l478 = alloca i64
  %l481 = alloca i64
  %l500 = alloca ptr
  %l501 = alloca i64
  %l504 = alloca i1
  %l508 = alloca i64
  %l517 = alloca i64
  %l520 = alloca i64
  %l541 = alloca i1
  %l543 = alloca i1
  %l547 = alloca i1
  %l549 = alloca ptr
  %l553 = alloca i32
  %l554 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l556 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l558 = alloca i64
  %l560 = alloca i64
  %l565 = alloca i64
  %l569 = alloca i1
  %l570 = alloca i1
  %l574 = alloca i1
  %l578 = alloca ptr
  %l579 = alloca i64
  %l580 = alloca i64
  %l581 = alloca %"compiler/source:Span"
  %l588 = alloca i64
  %l590 = alloca i64
  %l595 = alloca %"compiler/free:store"
  %l599 = alloca i1
  %l603 = alloca i1
  %l604 = alloca i1
  %l608 = alloca i1
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %s55 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 9
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l69
  br label %bb1
bb1:
  %t6 = load i64, ptr %l69, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb7
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l77, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l77, !tbaa !24
  store i64 %t35, ptr %l74, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l74, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/free:Free", ptr %t55, i32 0, i32 53
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t57, i1 false)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t59 = load i64, ptr %l6, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l6, !tbaa !24
  br label %bb8
bb14:
  %t63 = load i64, ptr %l1, !tbaa !24
  store i64 %t63, ptr %l99, !tbaa !24
  %t64 = load i64, ptr %l99, !tbaa !24
  %t65 = icmp sge i64 %t64, 0
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t67 = load i64, ptr %l99, !tbaa !24
  %t68 = mul i64 %t67, 1
  %t69 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t68)
  %t70 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  store { i64, ptr } %t71, ptr %l8, !tbaa !27
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/free:Free", ptr %t73, i32 0, i32 47
  store ptr %t75, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_77e2c420ac7907a9_804235f2ad53d)
  unreachable
bb17:
  %t77 = load i64, ptr %l10, !tbaa !24
  store i64 %t77, ptr %l104, !tbaa !24
  %t78 = load ptr, ptr %l9, !tbaa !29
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t78)
  store i64 %t80, ptr %l106
  br label %bb18
bb18:
  %t81 = load i64, ptr %l104, !tbaa !24
  %t82 = load i64, ptr %l106, !tbaa !24
  %t83 = icmp slt i64 %t81, %t82
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb19, label %bb20
bb19:
  br label %bb37
bb20:
  br label %bb21
bb21:
  %t87 = load ptr, ptr %l9, !tbaa !29
  %t88 = load i64, ptr %l10, !tbaa !24
  %t91 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t87, i64 %t88)
  store %"compiler/free:letGo" %t91, ptr %l111
  br label %bb22
bb22:
  %t92 = load %"compiler/free:letGo", ptr %l111
  store %"compiler/free:letGo" %t92, ptr %l11
  %t93 = getelementptr %"compiler/free:letGo", ptr %l11, i32 0, i32 5
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  %t98 = icmp ne i64 %t94, %t95
  br i1 %t98, label %bb23, label %bb24
bb23:
  %t100 = getelementptr %"compiler/free:letGo", ptr %l11, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  %t103 = icmp sge i64 %t101, 0
  store i1 %t103, ptr %l115, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb25
bb25:
  %t105 = load i1, ptr %l115, !tbaa !21
  br i1 %t105, label %bb26, label %bb27
bb26:
  %t106 = getelementptr %"compiler/free:letGo", ptr %l11, i32 0, i32 5
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = load i64, ptr @G_2ecompiler_2ffree_2eLLeaf, !tbaa !24
  %t111 = icmp eq i64 %t107, %t108
  br i1 %t111, label %bb28, label %bb29
bb27:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb32
bb28:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/free:Free", ptr %t113, i32 0, i32 27
  %t116 = getelementptr %"compiler/free:letGo", ptr %l11, i32 0, i32 1
  %t117 = load i64, ptr %t116, !tbaa !24
  %t120 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t115, i64 %t117)
  store i1 %t120, ptr %l126
  br label %bb30
bb29:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb31
bb30:
  %t121 = load i1, ptr %l126, !tbaa !21
  store i1 %t121, ptr %l122, !tbaa !21
  br label %bb31
bb31:
  %t122 = load i1, ptr %l122, !tbaa !21
  %t123 = xor i1 %t122, true
  store i1 %t123, ptr %l118, !tbaa !21
  br label %bb32
bb32:
  %t125 = load i1, ptr %l118, !tbaa !21
  br i1 %t125, label %bb33, label %bb34
bb33:
  %t126 = getelementptr %"compiler/free:letGo", ptr %l11, i32 0, i32 0
  %t127 = load i64, ptr %t126, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr i1, ptr %t130, i64 %t127
  store i1 true, ptr %t131, !tbaa !31
  br label %bb35
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t132 = load i64, ptr %l10, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l10, !tbaa !24
  br label %bb17
bb37:
  store i64 0, ptr %l12, !tbaa !24
  %t136 = load i64, ptr %l1, !tbaa !24
  store i64 %t136, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t138 = load i64, ptr %l13, !tbaa !24
  %t139 = load i64, ptr %l12, !tbaa !24
  %t142 = icmp sgt i64 %t138, %t139
  br i1 %t142, label %bb38, label %bb39
bb38:
  %t144 = load i64, ptr %l14, !tbaa !24
  %t146 = icmp sgt i64 %t144, 0
  br i1 %t146, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb43
bb40:
  %t148 = load i64, ptr %l13, !tbaa !24
  %t149 = load i64, ptr %l12, !tbaa !24
  %t152 = sub i64 %t148, %t149
  %t153 = load i64, ptr %l14, !tbaa !24
  %t156 = add i64 %t152, %t153
  %t158 = sub i64 %t156, 1
  %t159 = load i64, ptr %l14, !tbaa !24
  %t162 = sdiv i64 %t158, %t159
  store i64 %t162, ptr %l138, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l138, !tbaa !24
  br label %bb42
bb42:
  %t164 = load i64, ptr %l138, !tbaa !24
  store i64 %t164, ptr %l135, !tbaa !24
  br label %bb43
bb43:
  %t165 = load i64, ptr %l135, !tbaa !24
  store i64 %t165, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb44
bb44:
  %t166 = load i64, ptr %l16, !tbaa !24
  %t167 = load i64, ptr %l15, !tbaa !24
  %t170 = icmp slt i64 %t166, %t167
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb45, label %bb46
bb45:
  br label %bb69
bb46:
  br label %bb47
bb47:
  %t174 = load i64, ptr %l12, !tbaa !24
  %t175 = load i64, ptr %l16, !tbaa !24
  %t176 = load i64, ptr %l14, !tbaa !24
  %t179 = mul i64 %t175, %t176
  %t182 = add i64 %t174, %t179
  store i64 %t182, ptr %l17, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/free:Free", ptr %t184, i32 0, i32 41
  %t187 = load i1, ptr %t186, !tbaa !21
  br i1 %t187, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s10
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l158, !tbaa !29
  %t190 = load i64, ptr %l17, !tbaa !24
  store i64 %t190, ptr %l159, !tbaa !24
  %t191 = load i64, ptr @G_2ecompiler_2ffree_2eRTask, !tbaa !24
  store i64 %t191, ptr %l160, !tbaa !24
  %t192 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s10, i32 0, i32 0)
  store %"compiler/source:Span" %t192, ptr %l161
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t193 = load ptr, ptr %l158, !tbaa !29
  %t194 = load i64, ptr %l159, !tbaa !24
  %t195 = load i64, ptr %l160, !tbaa !24
  %t196 = load %"compiler/source:Span", ptr %l161
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t193, i64 %t194, i64 %t195, i64 -1, %"compiler/source:Span" %t196, { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s10)
  br label %bb52
bb52:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/free:Free", ptr %t197, i32 0, i32 39
  %t201 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t199)
  store i64 %t201, ptr %l164
  br label %bb53
bb53:
  %t202 = load i64, ptr %l164, !tbaa !24
  %t203 = icmp sgt i64 %t202, 0
  br i1 %t203, label %bb54, label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s11
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l166, !tbaa !29
  %t206 = load i64, ptr %l17, !tbaa !24
  store i64 %t206, ptr %l167, !tbaa !24
  %t207 = load i64, ptr @G_2ecompiler_2ffree_2eRTask, !tbaa !24
  store i64 %t207, ptr %l168, !tbaa !24
  %t208 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s11, i32 0, i32 0)
  store %"compiler/source:Span" %t208, ptr %l169
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t209 = load ptr, ptr %l166, !tbaa !29
  %t210 = load i64, ptr %l167, !tbaa !24
  %t211 = load i64, ptr %l168, !tbaa !24
  %t212 = load %"compiler/source:Span", ptr %l169
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t209, i64 %t210, i64 %t211, i64 -1, %"compiler/source:Span" %t212, { i64, ptr } { i64 130, ptr getelementptr inbounds (<{ i64, [130 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s11)
  br label %bb58
bb58:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/free:Free", ptr %t213, i32 0, i32 44
  %t216 = load i1, ptr %t215, !tbaa !21
  br i1 %t216, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l172, !tbaa !21
  br label %bb62
bb60:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/free:Free", ptr %t218, i32 0, i32 45
  %t221 = load i64, ptr %l17, !tbaa !24
  %t224 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t220, i64 %t221)
  store i1 %t224, ptr %l176
  br label %bb61
bb61:
  %t225 = load i1, ptr %l176, !tbaa !21
  store i1 %t225, ptr %l172, !tbaa !21
  br label %bb62
bb62:
  %t226 = load i1, ptr %l172, !tbaa !21
  br i1 %t226, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s12
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l177, !tbaa !29
  %t228 = load i64, ptr %l17, !tbaa !24
  store i64 %t228, ptr %l178, !tbaa !24
  %t229 = load i64, ptr @G_2ecompiler_2ffree_2eRDtor, !tbaa !24
  store i64 %t229, ptr %l179, !tbaa !24
  %t230 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s12, i32 0, i32 0)
  store %"compiler/source:Span" %t230, ptr %l180
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t231 = load ptr, ptr %l177, !tbaa !29
  %t232 = load i64, ptr %l178, !tbaa !24
  %t233 = load i64, ptr %l179, !tbaa !24
  %t234 = load %"compiler/source:Span", ptr %l180
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t231, i64 %t232, i64 %t233, i64 -1, %"compiler/source:Span" %t234, { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d40, i32 0, i32 1) })
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s12)
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t235 = load i64, ptr %l16, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l16, !tbaa !24
  br label %bb44
bb69:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/free:Free", ptr %t239, i32 0, i32 46
  store ptr %t241, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb70
bb70:
  %t243 = load i64, ptr %l19, !tbaa !24
  store i64 %t243, ptr %l185, !tbaa !24
  %t244 = load ptr, ptr %l18, !tbaa !29
  %t246 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t244)
  store i64 %t246, ptr %l187
  br label %bb71
bb71:
  %t247 = load i64, ptr %l185, !tbaa !24
  %t248 = load i64, ptr %l187, !tbaa !24
  %t249 = icmp slt i64 %t247, %t248
  %t251 = xor i1 %t249, true
  br i1 %t251, label %bb72, label %bb73
bb72:
  br label %bb92
bb73:
  br label %bb74
bb74:
  %t253 = load ptr, ptr %l18, !tbaa !29
  %t254 = load i64, ptr %l19, !tbaa !24
  %t257 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t253, i64 %t254)
  store %"compiler/free:store" %t257, ptr %l192
  br label %bb75
bb75:
  %t258 = load %"compiler/free:store", ptr %l192
  store %"compiler/free:store" %t258, ptr %l20
  %t259 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 4
  %t260 = load i64, ptr %t259, !tbaa !24
  %t261 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  %t264 = icmp eq i64 %t260, %t261
  br i1 %t264, label %bb76, label %bb77
bb76:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/free:Free", ptr %t266, i32 0, i32 76
  %t269 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 0
  %t270 = load i64, ptr %t269, !tbaa !24
  %t273 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t268, i64 %t270)
  store i1 %t273, ptr %l200
  br label %bb78
bb77:
  store i1 false, ptr %l196, !tbaa !21
  br label %bb79
bb78:
  %t274 = load i1, ptr %l200, !tbaa !21
  %t275 = xor i1 %t274, true
  store i1 %t275, ptr %l196, !tbaa !21
  br label %bb79
bb79:
  %t277 = load i1, ptr %l196, !tbaa !21
  br i1 %t277, label %bb80, label %bb81
bb80:
  %t278 = load ptr, ptr %l0, !tbaa !29
  store ptr %t278, ptr %l203, !tbaa !29
  %t279 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 7
  %t280 = load ptr, ptr %t279, !tbaa !29
  %t282 = icmp eq ptr %t280, null
  br i1 %t282, label %bb82, label %bb83
bb81:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb86
bb82:
  call void @__olang_check_failed(ptr @olang_loc_834ee64634399a9c_46784e5d37862958)
  unreachable
bb83:
  br label %bb84
bb84:
  %t284 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 7
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t286 = load ptr, ptr %l203, !tbaa !29
  %t288 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v0, ptr %t286, ptr %t285)
  store i1 %t288, ptr %l207
  br label %bb85
bb85:
  %t289 = load i1, ptr %l207, !tbaa !21
  store i1 %t289, ptr %l202, !tbaa !21
  br label %bb86
bb86:
  %t290 = load i1, ptr %l202, !tbaa !21
  br i1 %t290, label %bb87, label %bb88
bb87:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 0
  %t293 = load i64, ptr %t292, !tbaa !24
  %t294 = load i64, ptr @G_2ecompiler_2ffree_2eRDtor, !tbaa !24
  %t295 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 2
  %t296 = load i64, ptr %t295, !tbaa !24
  %t297 = getelementptr %"compiler/free:store", ptr %l20, i32 0, i32 3
  %t298 = load %"compiler/source:Span", ptr %t297
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t291, i64 %t293, i64 %t294, i64 %t296, %"compiler/source:Span" %t298, { i64, ptr } { i64 144, ptr getelementptr inbounds (<{ i64, [144 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t304 = load i64, ptr %l19, !tbaa !24
  %t306 = add i64 %t304, 1
  store i64 %t306, ptr %l19, !tbaa !24
  br label %bb70
bb92:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/free:Free", ptr %t308, i32 0, i32 52
  store ptr %t310, ptr %l21, !tbaa !29
  store i64 0, ptr %l22, !tbaa !24
  br label %bb93
bb93:
  %t312 = load i64, ptr %l22, !tbaa !24
  store i64 %t312, ptr %l217, !tbaa !24
  %t313 = load ptr, ptr %l21, !tbaa !29
  %t315 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eLen_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %t313)
  store i64 %t315, ptr %l219
  br label %bb94
bb94:
  %t316 = load i64, ptr %l217, !tbaa !24
  %t317 = load i64, ptr %l219, !tbaa !24
  %t318 = icmp slt i64 %t316, %t317
  %t320 = xor i1 %t318, true
  br i1 %t320, label %bb95, label %bb96
bb95:
  br label %bb110
bb96:
  br label %bb97
bb97:
  %t322 = load ptr, ptr %l21, !tbaa !29
  %t323 = load i64, ptr %l22, !tbaa !24
  %t326 = call %"compiler/free:orStore" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eAt_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %v0, ptr %t322, i64 %t323)
  store %"compiler/free:orStore" %t326, ptr %l224
  br label %bb98
bb98:
  %t327 = load %"compiler/free:orStore", ptr %l224
  store %"compiler/free:orStore" %t327, ptr %l23
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/free:Free", ptr %t328, i32 0, i32 76
  %t331 = getelementptr %"compiler/free:orStore", ptr %l23, i32 0, i32 1
  %t332 = load i64, ptr %t331, !tbaa !24
  %t335 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t330, i64 %t332)
  store i1 %t335, ptr %l228
  br label %bb99
bb99:
  %t336 = load i1, ptr %l228, !tbaa !21
  %t337 = xor i1 %t336, true
  br i1 %t337, label %bb100, label %bb101
bb100:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/free:orStore", ptr %l23, i32 0, i32 2
  %t341 = load ptr, ptr %t340, !tbaa !29
  %t344 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v0, ptr %t339, ptr %t341)
  store i1 %t344, ptr %l233
  br label %bb102
bb101:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb103
bb102:
  %t345 = load i1, ptr %l233, !tbaa !21
  store i1 %t345, ptr %l230, !tbaa !21
  br label %bb103
bb103:
  %t346 = load i1, ptr %l230, !tbaa !21
  br i1 %t346, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s20
  %t347 = load ptr, ptr %l0, !tbaa !29
  store ptr %t347, ptr %l234, !tbaa !29
  %t348 = getelementptr %"compiler/free:orStore", ptr %l23, i32 0, i32 1
  %t349 = load i64, ptr %t348, !tbaa !24
  store i64 %t349, ptr %l235, !tbaa !24
  %t350 = load i64, ptr @G_2ecompiler_2ffree_2eRDtor, !tbaa !24
  store i64 %t350, ptr %l236, !tbaa !24
  %t351 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s20, i32 0, i32 0)
  store %"compiler/source:Span" %t351, ptr %l237
  br label %bb106
bb105:
  br label %bb108
bb106:
  %t352 = load ptr, ptr %l234, !tbaa !29
  %t353 = load i64, ptr %l235, !tbaa !24
  %t354 = load i64, ptr %l236, !tbaa !24
  %t355 = load %"compiler/source:Span", ptr %l237
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t352, i64 %t353, i64 %t354, i64 -1, %"compiler/source:Span" %t355, { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s20)
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t356 = load i64, ptr %l22, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l22, !tbaa !24
  br label %bb93
bb110:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/free:Free", ptr %t360, i32 0, i32 51
  store ptr %t362, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb111
bb111:
  %t364 = load i64, ptr %l25, !tbaa !24
  store i64 %t364, ptr %l242, !tbaa !24
  %t365 = load ptr, ptr %l24, !tbaa !29
  %t367 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eLen_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %t365)
  store i64 %t367, ptr %l244
  br label %bb112
bb112:
  %t368 = load i64, ptr %l242, !tbaa !24
  %t369 = load i64, ptr %l244, !tbaa !24
  %t370 = icmp slt i64 %t368, %t369
  %t372 = xor i1 %t370, true
  br i1 %t372, label %bb113, label %bb114
bb113:
  br label %bb132
bb114:
  br label %bb115
bb115:
  %t374 = load ptr, ptr %l24, !tbaa !29
  %t375 = load i64, ptr %l25, !tbaa !24
  %t378 = call %"compiler/free:orCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eAt_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %v0, ptr %t374, i64 %t375)
  store %"compiler/free:orCall" %t378, ptr %l249
  br label %bb116
bb116:
  %t379 = load %"compiler/free:orCall", ptr %l249
  store %"compiler/free:orCall" %t379, ptr %l26
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/free:Free", ptr %t380, i32 0, i32 76
  %t383 = getelementptr %"compiler/free:orCall", ptr %l26, i32 0, i32 4
  %t384 = load i64, ptr %t383, !tbaa !24
  %t387 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t382, i64 %t384)
  store i1 %t387, ptr %l253
  br label %bb117
bb117:
  %t388 = load i1, ptr %l253, !tbaa !21
  %t389 = xor i1 %t388, true
  br i1 %t389, label %bb118, label %bb119
bb118:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr %"compiler/free:Free", ptr %t391, i32 0, i32 1
  %t394 = getelementptr %"compiler/free:orCall", ptr %l26, i32 0, i32 2
  %t395 = load i64, ptr %t394, !tbaa !24
  %t398 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t393, i64 %t395)
  store ptr %t398, ptr %l259
  br label %bb120
bb119:
  store i1 false, ptr %l255, !tbaa !21
  br label %bb125
bb120:
  %t399 = load ptr, ptr %l259, !tbaa !29
  %t401 = getelementptr %"compiler/typed:Body", ptr %t399, i32 0, i32 11
  %t402 = load ptr, ptr %t401, !tbaa !29
  %t404 = icmp eq ptr %t402, null
  br i1 %t404, label %bb121, label %bb122
bb121:
  store i1 true, ptr %l263, !tbaa !21
  br label %bb124
bb122:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t408 = getelementptr %"compiler/free:Free", ptr %t406, i32 0, i32 38
  %t409 = getelementptr %"compiler/free:orCall", ptr %l26, i32 0, i32 2
  %t410 = load i64, ptr %t409, !tbaa !24
  %t413 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t408, i64 %t410)
  store i1 %t413, ptr %l267
  br label %bb123
bb123:
  %t414 = load i1, ptr %l267, !tbaa !21
  store i1 %t414, ptr %l263, !tbaa !21
  br label %bb124
bb124:
  %t415 = load i1, ptr %l263, !tbaa !21
  store i1 %t415, ptr %l255, !tbaa !21
  br label %bb125
bb125:
  %t416 = load i1, ptr %l255, !tbaa !21
  br i1 %t416, label %bb126, label %bb127
bb126:
  store %olang.scope zeroinitializer, ptr %s24
  %t417 = load ptr, ptr %l0, !tbaa !29
  store ptr %t417, ptr %l268, !tbaa !29
  %t418 = getelementptr %"compiler/free:orCall", ptr %l26, i32 0, i32 4
  %t419 = load i64, ptr %t418, !tbaa !24
  store i64 %t419, ptr %l269, !tbaa !24
  %t420 = load i64, ptr @G_2ecompiler_2ffree_2eRDtor, !tbaa !24
  store i64 %t420, ptr %l270, !tbaa !24
  %t421 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s24, i32 0, i32 0)
  store %"compiler/source:Span" %t421, ptr %l271
  br label %bb128
bb127:
  br label %bb130
bb128:
  %t422 = load ptr, ptr %l268, !tbaa !29
  %t423 = load i64, ptr %l269, !tbaa !24
  %t424 = load i64, ptr %l270, !tbaa !24
  %t425 = load %"compiler/source:Span", ptr %l271
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t422, i64 %t423, i64 %t424, i64 -1, %"compiler/source:Span" %t425, { i64, ptr } { i64 98, ptr getelementptr inbounds (<{ i64, [98 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb129
bb129:
  call void @__olang_scope_close(ptr %s24)
  br label %bb130
bb130:
  br label %bb131
bb131:
  %t426 = load i64, ptr %l25, !tbaa !24
  %t428 = add i64 %t426, 1
  store i64 %t428, ptr %l25, !tbaa !24
  br label %bb111
bb132:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"compiler/free:Free", ptr %t430, i32 0, i32 75
  store ptr %t432, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb133
bb133:
  %t434 = load i64, ptr %l28, !tbaa !24
  store i64 %t434, ptr %l276, !tbaa !24
  %t435 = load ptr, ptr %l27, !tbaa !29
  %t437 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eLen_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %t435)
  store i64 %t437, ptr %l278
  br label %bb134
bb134:
  %t438 = load i64, ptr %l276, !tbaa !24
  %t439 = load i64, ptr %l278, !tbaa !24
  %t440 = icmp slt i64 %t438, %t439
  %t442 = xor i1 %t440, true
  br i1 %t442, label %bb135, label %bb136
bb135:
  br label %bb154
bb136:
  br label %bb137
bb137:
  %t444 = load ptr, ptr %l27, !tbaa !29
  %t445 = load i64, ptr %l28, !tbaa !24
  %t448 = call %"compiler/free:feedCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eAt_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %t444, i64 %t445)
  store %"compiler/free:feedCall" %t448, ptr %l283
  br label %bb138
bb138:
  %t449 = load %"compiler/free:feedCall", ptr %l283
  store %"compiler/free:feedCall" %t449, ptr %l29
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load %"compiler/free:feedCall", ptr %l29
  %t454 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedFits(ptr %v0, ptr %t450, %"compiler/free:feedCall" %t451)
  store i1 %t454, ptr %l286
  br label %bb139
bb139:
  %t455 = load i1, ptr %l286, !tbaa !21
  %t456 = xor i1 %t455, true
  br i1 %t456, label %bb140, label %bb141
bb140:
  store %olang.scope zeroinitializer, ptr %s28
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/free:Free", ptr %t458, i32 0, i32 73
  %t461 = getelementptr %"compiler/free:feedCall", ptr %l29, i32 0, i32 4
  %t462 = load i64, ptr %t461, !tbaa !24
  %t465 = call %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t460, i64 %t462)
  store %"compiler/free:feed" %t465, ptr %l291
  br label %bb142
bb141:
  br label %bb152
bb142:
  %t466 = load %"compiler/free:feed", ptr %l291
  store %"compiler/free:feed" %t466, ptr %l30
  %t467 = load ptr, ptr %l0, !tbaa !29
  store ptr %t467, ptr %l292, !tbaa !29
  %t468 = getelementptr %"compiler/free:feed", ptr %l30, i32 0, i32 2
  %t469 = load i64, ptr %t468, !tbaa !24
  store i64 %t469, ptr %l293, !tbaa !24
  %t470 = load i64, ptr @G_2ecompiler_2ffree_2eRInPlace, !tbaa !24
  store i64 %t470, ptr %l294, !tbaa !24
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t473 = getelementptr %"compiler/free:Free", ptr %t471, i32 0, i32 1
  %t474 = getelementptr %"compiler/free:feedCall", ptr %l29, i32 0, i32 0
  %t475 = load i64, ptr %t474, !tbaa !24
  %t478 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t473, i64 %t475)
  store ptr %t478, ptr %l298
  br label %bb143
bb143:
  %t479 = load ptr, ptr %l298, !tbaa !29
  %t481 = getelementptr %"compiler/typed:Body", ptr %t479, i32 0, i32 3
  %t482 = load i64, ptr %t481, !tbaa !24
  store i64 %t482, ptr %l300, !tbaa !24
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t485 = getelementptr %"compiler/free:Free", ptr %t483, i32 0, i32 1
  %t486 = getelementptr %"compiler/free:feedCall", ptr %l29, i32 0, i32 0
  %t487 = load i64, ptr %t486, !tbaa !24
  %t490 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t485, i64 %t487)
  store ptr %t490, ptr %l304
  br label %bb144
bb144:
  %t491 = load ptr, ptr %l304, !tbaa !29
  %t493 = getelementptr %"compiler/typed:Body", ptr %t491, i32 0, i32 7
  %t494 = getelementptr %"compiler/free:feed", ptr %l30, i32 0, i32 1
  %t495 = load i64, ptr %t494, !tbaa !24
  %t498 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t493, i64 %t495)
  store %"compiler/typed:Local" %t498, ptr %l308
  br label %bb145
bb145:
  %t499 = getelementptr %"compiler/typed:Local", ptr %l308, i32 0, i32 1
  %t500 = load %"compiler/source:Span", ptr %t499
  store %"compiler/source:Span" %t500, ptr %l309
  %t501 = ptrtoint ptr %v0 to i64
  store i64 %t501, ptr %l310, !tbaa !24
  %t502 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t502, label %bb146, label %bb147
bb146:
  %t504 = call ptr @__olang_region_make(ptr %v0)
  %t505 = ptrtoint ptr %t504 to i64
  store i64 %t505, ptr %l310, !tbaa !24
  br label %bb147
bb147:
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t508 = getelementptr %"compiler/free:Free", ptr %t506, i32 0, i32 0
  %t509 = load ptr, ptr %t508, !tbaa !29
  %t511 = getelementptr %"compiler/generic:Program", ptr %t509, i32 0, i32 0
  %t512 = load ptr, ptr %t511, !tbaa !29
  %t514 = getelementptr %"compiler/load:Loader", ptr %t512, i32 0, i32 3
  %t515 = load ptr, ptr %t514, !tbaa !29
  store ptr %t515, ptr %l315, !tbaa !29
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t518 = getelementptr %"compiler/free:Free", ptr %t516, i32 0, i32 1
  %t519 = getelementptr %"compiler/free:feedCall", ptr %l29, i32 0, i32 0
  %t520 = load i64, ptr %t519, !tbaa !24
  %t523 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t518, i64 %t520)
  store ptr %t523, ptr %l319
  br label %bb148
bb148:
  %t524 = load ptr, ptr %l319, !tbaa !29
  %t526 = getelementptr %"compiler/typed:Body", ptr %t524, i32 0, i32 7
  %t527 = getelementptr %"compiler/free:feed", ptr %l30, i32 0, i32 1
  %t528 = load i64, ptr %t527, !tbaa !24
  %t531 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t526, i64 %t528)
  store %"compiler/typed:Local" %t531, ptr %l323
  br label %bb149
bb149:
  %t532 = getelementptr %"compiler/typed:Local", ptr %l323, i32 0, i32 0
  %t533 = load i32, ptr %t532, !tbaa !23
  %t534 = load ptr, ptr %l315, !tbaa !29
  %t536 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s28, ptr %t534, i32 %t533)
  store { i64, ptr } %t536, ptr %l325
  br label %bb150
bb150:
  %t537 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t538 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t539 = load { i64, ptr }, ptr %l325, !tbaa !27
  %t540 = extractvalue { i64, ptr } %t539, 1
  %t541 = extractvalue { i64, ptr } %t539, 0
  %t542 = add i64 %t538, %t541
  %t543 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t544 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t545 = add i64 %t542, %t544
  %t546 = load i64, ptr %l310
  %t547 = inttoptr i64 %t546 to ptr
  %t548 = call ptr @__olang_scope_alloc(ptr %t547, i64 %t545)
  call void @olang_textcopy(ptr %t548, ptr %t537, i64 %t538)
  %t549 = getelementptr i8, ptr %t548, i64 %t538
  call void @olang_textcopy(ptr %t549, ptr %t540, i64 %t541)
  %t550 = getelementptr i8, ptr %t549, i64 %t541
  call void @olang_textcopy(ptr %t550, ptr %t543, i64 %t544)
  %t551 = insertvalue { i64, ptr } undef, i64 %t545, 0
  %t552 = insertvalue { i64, ptr } %t551, ptr %t548, 1
  %t554 = load i64, ptr %l310
  %t555 = inttoptr i64 %t554 to ptr
  %t556 = extractvalue { i64, ptr } %t552, 0
  %t557 = extractvalue { i64, ptr } %t552, 1
  %t558 = mul i64 %t556, 1
  %t559 = call ptr @__olang_scope_alloc(ptr %t555, i64 %t558)
  call void @llvm.memcpy.p0.p0.i64(ptr %t559, ptr %t557, i64 %t558, i1 false)
  %t560 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t561 = insertvalue { i64, ptr } %t560, ptr %t559, 1
  %t562 = load ptr, ptr %l292, !tbaa !29
  %t563 = load i64, ptr %l293, !tbaa !24
  %t564 = load i64, ptr %l294, !tbaa !24
  %t565 = load i64, ptr %l300, !tbaa !24
  %t566 = load %"compiler/source:Span", ptr %l309
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t562, i64 %t563, i64 %t564, i64 %t565, %"compiler/source:Span" %t566, { i64, ptr } %t561)
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s28)
  br label %bb152
bb152:
  br label %bb153
bb153:
  %t568 = load i64, ptr %l28, !tbaa !24
  %t570 = add i64 %t568, 1
  store i64 %t570, ptr %l28, !tbaa !24
  br label %bb133
bb154:
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t574 = getelementptr %"compiler/free:Free", ptr %t572, i32 0, i32 46
  store ptr %t574, ptr %l31, !tbaa !29
  store i64 0, ptr %l32, !tbaa !24
  br label %bb155
bb155:
  %t576 = load i64, ptr %l32, !tbaa !24
  store i64 %t576, ptr %l332, !tbaa !24
  %t577 = load ptr, ptr %l31, !tbaa !29
  %t579 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t577)
  store i64 %t579, ptr %l334
  br label %bb156
bb156:
  %t580 = load i64, ptr %l332, !tbaa !24
  %t581 = load i64, ptr %l334, !tbaa !24
  %t582 = icmp slt i64 %t580, %t581
  %t584 = xor i1 %t582, true
  br i1 %t584, label %bb157, label %bb158
bb157:
  br label %bb177
bb158:
  br label %bb159
bb159:
  %t586 = load ptr, ptr %l31, !tbaa !29
  %t587 = load i64, ptr %l32, !tbaa !24
  %t590 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t586, i64 %t587)
  store %"compiler/free:store" %t590, ptr %l339
  br label %bb160
bb160:
  %t591 = load %"compiler/free:store", ptr %l339
  store %"compiler/free:store" %t591, ptr %l33
  %t592 = getelementptr %"compiler/free:store", ptr %l33, i32 0, i32 4
  %t593 = load i64, ptr %t592, !tbaa !24
  %t594 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  %t597 = icmp eq i64 %t593, %t594
  br i1 %t597, label %bb161, label %bb162
bb161:
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t600 = load %"compiler/free:store", ptr %l33
  %t603 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceable(ptr %v0, ptr %v0, ptr %t599, %"compiler/free:store" %t600)
  store i1 %t603, ptr %l346
  br label %bb163
bb162:
  store i1 false, ptr %l343, !tbaa !21
  br label %bb171
bb163:
  %t604 = load i1, ptr %l346, !tbaa !21
  %t605 = xor i1 %t604, true
  br i1 %t605, label %bb164, label %bb165
bb164:
  store i1 true, ptr %l348, !tbaa !21
  br label %bb170
bb165:
  %t607 = load ptr, ptr %l0, !tbaa !29
  store ptr %t607, ptr %l349, !tbaa !29
  %t608 = getelementptr %"compiler/free:store", ptr %l33, i32 0, i32 7
  %t609 = load ptr, ptr %t608, !tbaa !29
  %t611 = icmp eq ptr %t609, null
  br i1 %t611, label %bb166, label %bb167
bb166:
  call void @__olang_check_failed(ptr @olang_loc_dcc3c6712d01991_ec14a6947a12b86d)
  unreachable
bb167:
  br label %bb168
bb168:
  %t613 = getelementptr %"compiler/free:store", ptr %l33, i32 0, i32 7
  %t614 = load ptr, ptr %t613, !tbaa !29
  %t615 = load ptr, ptr %l349, !tbaa !29
  %t617 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v0, ptr %t615, ptr %t614)
  store i64 %t617, ptr %l353
  br label %bb169
bb169:
  %t618 = load i64, ptr %l353, !tbaa !24
  %t619 = icmp slt i64 %t618, 0
  store i1 %t619, ptr %l348, !tbaa !21
  br label %bb170
bb170:
  %t621 = load i1, ptr %l348, !tbaa !21
  store i1 %t621, ptr %l343, !tbaa !21
  br label %bb171
bb171:
  %t622 = load i1, ptr %l343, !tbaa !21
  br i1 %t622, label %bb172, label %bb173
bb172:
  %t623 = load ptr, ptr %l0, !tbaa !29
  %t624 = getelementptr %"compiler/free:store", ptr %l33, i32 0, i32 0
  %t625 = load i64, ptr %t624, !tbaa !24
  %t626 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  %t627 = getelementptr %"compiler/free:store", ptr %l33, i32 0, i32 2
  %t628 = load i64, ptr %t627, !tbaa !24
  %t629 = getelementptr %"compiler/free:store", ptr %l33, i32 0, i32 3
  %t630 = load %"compiler/source:Span", ptr %t629
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t623, i64 %t625, i64 %t626, i64 %t628, %"compiler/source:Span" %t630, { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb174
bb173:
  br label %bb175
bb174:
  br label %bb175
bb175:
  br label %bb176
bb176:
  %t636 = load i64, ptr %l32, !tbaa !24
  %t638 = add i64 %t636, 1
  store i64 %t638, ptr %l32, !tbaa !24
  br label %bb155
bb177:
  %t640 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t640, ptr %l362
  br label %bb178
bb178:
  %t641 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l362
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t641, ptr %l34
  store %olang.scope zeroinitializer, ptr %s35
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t644 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eouterFirst(ptr %v0, ptr %s35, ptr %t642)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t644, ptr %l364
  br label %bb179
bb179:
  %t645 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l364
  %t646 = call ptr @__olang_scope_alloc_a(ptr %s35, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t645, ptr %t646
  store ptr %t646, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb180
bb180:
  store %olang.scope zeroinitializer, ptr %s36
  %t648 = load i64, ptr %l36, !tbaa !24
  store i64 %t648, ptr %l366, !tbaa !24
  %t649 = load ptr, ptr %l35, !tbaa !29
  %t651 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s35, ptr %t649)
  store i64 %t651, ptr %l368
  br label %bb181
bb181:
  %t652 = load i64, ptr %l366, !tbaa !24
  %t653 = load i64, ptr %l368, !tbaa !24
  %t654 = icmp slt i64 %t652, %t653
  %t656 = xor i1 %t654, true
  br i1 %t656, label %bb182, label %bb183
bb182:
  call void @__olang_scope_close(ptr %s36)
  br label %bb233
bb183:
  br label %bb184
bb184:
  %t658 = load ptr, ptr %l35, !tbaa !29
  %t659 = load i64, ptr %l36, !tbaa !24
  %t662 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s35, ptr %t658, i64 %t659)
  store i64 %t662, ptr %l373
  br label %bb185
bb185:
  %t663 = load i64, ptr %l373, !tbaa !24
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t666 = getelementptr %"compiler/free:Free", ptr %t664, i32 0, i32 46
  %t670 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t666, i64 %t663)
  store %"compiler/free:store" %t670, ptr %l377
  br label %bb186
bb186:
  %t671 = load %"compiler/free:store", ptr %l377
  store %"compiler/free:store" %t671, ptr %l38
  %t672 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 4
  %t673 = load i64, ptr %t672, !tbaa !24
  %t674 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  %t677 = icmp ne i64 %t673, %t674
  br i1 %t677, label %bb187, label %bb188
bb187:
  store i1 true, ptr %l381, !tbaa !21
  br label %bb190
bb188:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t681 = getelementptr %"compiler/free:Free", ptr %t679, i32 0, i32 22
  %t682 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 1
  %t683 = load i64, ptr %t682, !tbaa !24
  %t686 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t681, i64 %t683)
  store i1 %t686, ptr %l385
  br label %bb189
bb189:
  %t687 = load i1, ptr %l385, !tbaa !21
  store i1 %t687, ptr %l381, !tbaa !21
  br label %bb190
bb190:
  %t688 = load i1, ptr %l381, !tbaa !21
  br i1 %t688, label %bb191, label %bb192
bb191:
  store i1 true, ptr %l386, !tbaa !21
  br label %bb194
bb192:
  %t689 = load ptr, ptr %l0, !tbaa !29
  %t690 = load %"compiler/free:store", ptr %l38
  %t693 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceable(ptr %v0, ptr %v0, ptr %t689, %"compiler/free:store" %t690)
  store i1 %t693, ptr %l389
  br label %bb193
bb193:
  %t694 = load i1, ptr %l389, !tbaa !21
  %t695 = xor i1 %t694, true
  store i1 %t695, ptr %l386, !tbaa !21
  br label %bb194
bb194:
  %t697 = load i1, ptr %l386, !tbaa !21
  br i1 %t697, label %bb195, label %bb196
bb195:
  call void @__olang_scope_close(ptr %s36)
  br label %bb232
bb196:
  br label %bb197
bb197:
  %t698 = load ptr, ptr %l0, !tbaa !29
  store ptr %t698, ptr %l391, !tbaa !29
  %t699 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 7
  %t700 = load ptr, ptr %t699, !tbaa !29
  %t702 = icmp eq ptr %t700, null
  br i1 %t702, label %bb198, label %bb199
bb198:
  call void @__olang_check_failed(ptr @olang_loc_1c3c578240008a_e9f41163a0859586)
  unreachable
bb199:
  br label %bb200
bb200:
  %t704 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 7
  %t705 = load ptr, ptr %t704, !tbaa !29
  %t706 = load ptr, ptr %l391, !tbaa !29
  %t708 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v0, ptr %t706, ptr %t705)
  store i64 %t708, ptr %l395
  br label %bb201
bb201:
  %t709 = load i64, ptr %l395, !tbaa !24
  store i64 %t709, ptr %l39, !tbaa !24
  %t710 = load i64, ptr %l39, !tbaa !24
  %t712 = icmp slt i64 %t710, 0
  br i1 %t712, label %bb202, label %bb203
bb202:
  store i1 true, ptr %l398, !tbaa !21
  br label %bb208
bb203:
  %t714 = load ptr, ptr %l0, !tbaa !29
  store ptr %t714, ptr %l399, !tbaa !29
  %t715 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 1
  %t716 = load i64, ptr %t715, !tbaa !24
  store i64 %t716, ptr %l400, !tbaa !24
  %t717 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 7
  %t718 = load ptr, ptr %t717, !tbaa !29
  %t720 = icmp eq ptr %t718, null
  br i1 %t720, label %bb204, label %bb205
bb204:
  call void @__olang_check_failed(ptr @olang_loc_66d907e33dd98677_4991ee91581ac48b)
  unreachable
bb205:
  br label %bb206
bb206:
  %t722 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 7
  %t723 = load ptr, ptr %t722, !tbaa !29
  %t724 = load ptr, ptr %l399, !tbaa !29
  %t725 = load i64, ptr %l400, !tbaa !24
  %t727 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v0, ptr %t724, i64 %t725, ptr %t723)
  store { i64, [2 x i64] } %t727, ptr %l404
  br label %bb207
bb207:
  %t728 = load { i64, [2 x i64] }, ptr %l404
  %t730 = extractvalue { i64, [2 x i64] } %t728, 0
  %t731 = icmp eq i64 %t730, 7
  store i1 %t731, ptr %l398, !tbaa !21
  br label %bb208
bb208:
  %t733 = load i1, ptr %l398, !tbaa !21
  br i1 %t733, label %bb209, label %bb210
bb209:
  store i1 true, ptr %l407, !tbaa !21
  br label %bb215
bb210:
  %t734 = load ptr, ptr %l0, !tbaa !29
  store ptr %t734, ptr %l408, !tbaa !29
  %t735 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 1
  %t736 = load i64, ptr %t735, !tbaa !24
  store i64 %t736, ptr %l409, !tbaa !24
  %t737 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 7
  %t738 = load ptr, ptr %t737, !tbaa !29
  %t740 = icmp eq ptr %t738, null
  br i1 %t740, label %bb211, label %bb212
bb211:
  call void @__olang_check_failed(ptr @olang_loc_66d907e33dd98677_4991ee91581ac48b)
  unreachable
bb212:
  br label %bb213
bb213:
  %t742 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 7
  %t743 = load ptr, ptr %t742, !tbaa !29
  %t744 = load ptr, ptr %l408, !tbaa !29
  %t745 = load i64, ptr %l409, !tbaa !24
  %t747 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v0, ptr %t744, i64 %t745, ptr %t743)
  store { i64, [2 x i64] } %t747, ptr %l413
  br label %bb214
bb214:
  %t748 = load { i64, [2 x i64] }, ptr %l413
  %t750 = extractvalue { i64, [2 x i64] } %t748, 0
  %t751 = icmp eq i64 %t750, 8
  store i1 %t751, ptr %l407, !tbaa !21
  br label %bb215
bb215:
  %t753 = load i1, ptr %l407, !tbaa !21
  br i1 %t753, label %bb216, label %bb217
bb216:
  call void @__olang_scope_close(ptr %s36)
  br label %bb232
bb217:
  br label %bb218
bb218:
  %t754 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 1
  %t755 = load i64, ptr %t754, !tbaa !24
  %t756 = load i64, ptr %l39, !tbaa !24
  %t759 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s36, i64 %t755, i64 %t756)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t759, ptr %l418
  br label %bb219
bb219:
  %t760 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l418
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t760, ptr %l40
  %t761 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l40
  %t764 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %s0, ptr %l34, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t761)
  %t765 = extractvalue { i32, i64 } %t764, 1
  %t766 = extractvalue { i32, i64 } %t764, 0
  store i32 %t766, ptr %l423
  %t767 = icmp ne i32 %t766, 0
  br i1 %t767, label %bb221, label %ok.768, !prof !99
ok.768:
  store i64 %t765, ptr %l422
  br label %bb220
bb220:
  %t769 = load i64, ptr %l422, !tbaa !24
  store i64 %t769, ptr %l419, !tbaa !24
  br label %bb223
bb221:
  br label %bb222
bb222:
  store i64 -1, ptr %l419, !tbaa !24
  br label %bb223
bb223:
  %t770 = load i64, ptr %l419, !tbaa !24
  store i64 %t770, ptr %l41, !tbaa !24
  %t771 = load i64, ptr %l41, !tbaa !24
  %t773 = icmp slt i64 %t771, 0
  br i1 %t773, label %bb224, label %bb225
bb224:
  %t775 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l40
  %t776 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 0
  %t777 = load i64, ptr %t776, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %s0, ptr %l34, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t775, i64 %t777)
  br label %bb226
bb225:
  %t781 = load i64, ptr %l41, !tbaa !24
  %t782 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 0
  %t783 = load i64, ptr %t782, !tbaa !24
  %t786 = icmp ne i64 %t781, %t783
  br i1 %t786, label %bb227, label %bb228
bb226:
  br label %bb231
bb227:
  %t788 = load ptr, ptr %l0, !tbaa !29
  %t789 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 0
  %t790 = load i64, ptr %t789, !tbaa !24
  %t791 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  %t792 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 2
  %t793 = load i64, ptr %t792, !tbaa !24
  %t794 = getelementptr %"compiler/free:store", ptr %l38, i32 0, i32 3
  %t795 = load %"compiler/source:Span", ptr %t794
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t788, i64 %t790, i64 %t791, i64 %t793, %"compiler/source:Span" %t795, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb229
bb228:
  br label %bb230
bb229:
  br label %bb230
bb230:
  br label %bb231
bb231:
  call void @__olang_scope_close(ptr %s36)
  br label %bb232
bb232:
  %t801 = load i64, ptr %l36, !tbaa !24
  %t803 = add i64 %t801, 1
  store i64 %t803, ptr %l36, !tbaa !24
  br label %bb180
bb233:
  call void @__olang_scope_close(ptr %s35)
  store i64 0, ptr %l42, !tbaa !24
  %t805 = load i64, ptr %l1, !tbaa !24
  store i64 %t805, ptr %l43, !tbaa !24
  store i64 1, ptr %l44, !tbaa !24
  %t807 = load i64, ptr %l43, !tbaa !24
  %t808 = load i64, ptr %l42, !tbaa !24
  %t811 = icmp sgt i64 %t807, %t808
  br i1 %t811, label %bb234, label %bb235
bb234:
  %t813 = load i64, ptr %l44, !tbaa !24
  %t815 = icmp sgt i64 %t813, 0
  br i1 %t815, label %bb236, label %bb237
bb235:
  store i64 0, ptr %l443, !tbaa !24
  br label %bb239
bb236:
  %t817 = load i64, ptr %l43, !tbaa !24
  %t818 = load i64, ptr %l42, !tbaa !24
  %t821 = sub i64 %t817, %t818
  %t822 = load i64, ptr %l44, !tbaa !24
  %t825 = add i64 %t821, %t822
  %t827 = sub i64 %t825, 1
  %t828 = load i64, ptr %l44, !tbaa !24
  %t831 = sdiv i64 %t827, %t828
  store i64 %t831, ptr %l446, !tbaa !24
  br label %bb238
bb237:
  store i64 0, ptr %l446, !tbaa !24
  br label %bb238
bb238:
  %t833 = load i64, ptr %l446, !tbaa !24
  store i64 %t833, ptr %l443, !tbaa !24
  br label %bb239
bb239:
  %t834 = load i64, ptr %l443, !tbaa !24
  store i64 %t834, ptr %l45, !tbaa !24
  store i64 0, ptr %l46, !tbaa !24
  br label %bb240
bb240:
  %t835 = load i64, ptr %l46, !tbaa !24
  %t836 = load i64, ptr %l45, !tbaa !24
  %t839 = icmp slt i64 %t835, %t836
  %t841 = xor i1 %t839, true
  br i1 %t841, label %bb241, label %bb242
bb241:
  br label %bb251
bb242:
  br label %bb243
bb243:
  %t843 = load i64, ptr %l42, !tbaa !24
  %t844 = load i64, ptr %l46, !tbaa !24
  %t845 = load i64, ptr %l44, !tbaa !24
  %t848 = mul i64 %t844, %t845
  %t851 = add i64 %t843, %t848
  store i64 %t851, ptr %l47, !tbaa !24
  %t853 = load ptr, ptr %l0, !tbaa !29
  %t855 = getelementptr %"compiler/free:Free", ptr %t853, i32 0, i32 76
  %t856 = load i64, ptr %l47, !tbaa !24
  %t859 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t855, i64 %t856)
  store i1 %t859, ptr %l467
  br label %bb244
bb244:
  %t860 = load i1, ptr %l467, !tbaa !21
  br i1 %t860, label %bb245, label %bb246
bb245:
  store %olang.scope zeroinitializer, ptr %s45
  %t861 = load ptr, ptr %l0, !tbaa !29
  store ptr %t861, ptr %l468, !tbaa !29
  %t862 = load i64, ptr %l47, !tbaa !24
  store i64 %t862, ptr %l469, !tbaa !24
  %t863 = load i64, ptr @G_2ecompiler_2ffree_2eRDtor, !tbaa !24
  store i64 %t863, ptr %l470, !tbaa !24
  %t864 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s45, i32 0, i32 0)
  store %"compiler/source:Span" %t864, ptr %l471
  br label %bb247
bb246:
  br label %bb249
bb247:
  %t865 = load ptr, ptr %l468, !tbaa !29
  %t866 = load i64, ptr %l469, !tbaa !24
  %t867 = load i64, ptr %l470, !tbaa !24
  %t868 = load %"compiler/source:Span", ptr %l471
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t865, i64 %t866, i64 %t867, i64 -1, %"compiler/source:Span" %t868, { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d48, i32 0, i32 1) })
  br label %bb248
bb248:
  call void @__olang_scope_close(ptr %s45)
  br label %bb249
bb249:
  br label %bb250
bb250:
  %t869 = load i64, ptr %l46, !tbaa !24
  %t871 = add i64 %t869, 1
  store i64 %t871, ptr %l46, !tbaa !24
  br label %bb240
bb251:
  store i64 0, ptr %l48, !tbaa !24
  %t873 = load i64, ptr %l1, !tbaa !24
  store i64 %t873, ptr %l49, !tbaa !24
  store i64 1, ptr %l50, !tbaa !24
  %t875 = load i64, ptr %l49, !tbaa !24
  %t876 = load i64, ptr %l48, !tbaa !24
  %t879 = icmp sgt i64 %t875, %t876
  br i1 %t879, label %bb252, label %bb253
bb252:
  %t881 = load i64, ptr %l50, !tbaa !24
  %t883 = icmp sgt i64 %t881, 0
  br i1 %t883, label %bb254, label %bb255
bb253:
  store i64 0, ptr %l478, !tbaa !24
  br label %bb257
bb254:
  %t885 = load i64, ptr %l49, !tbaa !24
  %t886 = load i64, ptr %l48, !tbaa !24
  %t889 = sub i64 %t885, %t886
  %t890 = load i64, ptr %l50, !tbaa !24
  %t893 = add i64 %t889, %t890
  %t895 = sub i64 %t893, 1
  %t896 = load i64, ptr %l50, !tbaa !24
  %t899 = sdiv i64 %t895, %t896
  store i64 %t899, ptr %l481, !tbaa !24
  br label %bb256
bb255:
  store i64 0, ptr %l481, !tbaa !24
  br label %bb256
bb256:
  %t901 = load i64, ptr %l481, !tbaa !24
  store i64 %t901, ptr %l478, !tbaa !24
  br label %bb257
bb257:
  %t902 = load i64, ptr %l478, !tbaa !24
  store i64 %t902, ptr %l51, !tbaa !24
  store i64 0, ptr %l52, !tbaa !24
  br label %bb258
bb258:
  %t903 = load i64, ptr %l52, !tbaa !24
  %t904 = load i64, ptr %l51, !tbaa !24
  %t907 = icmp slt i64 %t903, %t904
  %t909 = xor i1 %t907, true
  br i1 %t909, label %bb259, label %bb260
bb259:
  br label %bb268
bb260:
  br label %bb261
bb261:
  %t911 = load i64, ptr %l48, !tbaa !24
  %t912 = load i64, ptr %l52, !tbaa !24
  %t913 = load i64, ptr %l50, !tbaa !24
  %t916 = mul i64 %t912, %t913
  %t919 = add i64 %t911, %t916
  store i64 %t919, ptr %l53, !tbaa !24
  %t921 = load ptr, ptr %l0, !tbaa !29
  %t923 = getelementptr %"compiler/free:Free", ptr %t921, i32 0, i32 53
  store ptr %t923, ptr %l500, !tbaa !29
  %t924 = load i64, ptr %l53, !tbaa !24
  store i64 %t924, ptr %l501, !tbaa !24
  %t925 = load i64, ptr %l53, !tbaa !24
  %t927 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t928 = load ptr, ptr %t927, !tbaa !27
  %t929 = getelementptr i1, ptr %t928, i64 %t925
  %t930 = load i1, ptr %t929, !tbaa !31
  br i1 %t930, label %bb262, label %bb263
bb262:
  %t932 = load ptr, ptr %l0, !tbaa !29
  %t934 = getelementptr %"compiler/free:Free", ptr %t932, i32 0, i32 48
  %t935 = load i64, ptr %l53, !tbaa !24
  %t938 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t934, i64 %t935)
  store i64 %t938, ptr %l508
  br label %bb264
bb263:
  store i1 false, ptr %l504, !tbaa !21
  br label %bb265
bb264:
  %t939 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  %t940 = load i64, ptr %l508, !tbaa !24
  %t942 = icmp eq i64 %t940, %t939
  store i1 %t942, ptr %l504, !tbaa !21
  br label %bb265
bb265:
  %t944 = load ptr, ptr %l500, !tbaa !29
  %t945 = load i64, ptr %l501, !tbaa !24
  %t946 = load i1, ptr %l504, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t944, i64 %t945, i1 %t946)
  br label %bb266
bb266:
  br label %bb267
bb267:
  %t947 = load i64, ptr %l52, !tbaa !24
  %t949 = add i64 %t947, 1
  store i64 %t949, ptr %l52, !tbaa !24
  br label %bb258
bb268:
  store i64 0, ptr %l54, !tbaa !24
  %t951 = load i64, ptr %l1, !tbaa !24
  store i64 %t951, ptr %l55, !tbaa !24
  store i64 1, ptr %l56, !tbaa !24
  %t953 = load i64, ptr %l55, !tbaa !24
  %t954 = load i64, ptr %l54, !tbaa !24
  %t957 = icmp sgt i64 %t953, %t954
  br i1 %t957, label %bb269, label %bb270
bb269:
  %t959 = load i64, ptr %l56, !tbaa !24
  %t961 = icmp sgt i64 %t959, 0
  br i1 %t961, label %bb271, label %bb272
bb270:
  store i64 0, ptr %l517, !tbaa !24
  br label %bb274
bb271:
  %t963 = load i64, ptr %l55, !tbaa !24
  %t964 = load i64, ptr %l54, !tbaa !24
  %t967 = sub i64 %t963, %t964
  %t968 = load i64, ptr %l56, !tbaa !24
  %t971 = add i64 %t967, %t968
  %t973 = sub i64 %t971, 1
  %t974 = load i64, ptr %l56, !tbaa !24
  %t977 = sdiv i64 %t973, %t974
  store i64 %t977, ptr %l520, !tbaa !24
  br label %bb273
bb272:
  store i64 0, ptr %l520, !tbaa !24
  br label %bb273
bb273:
  %t979 = load i64, ptr %l520, !tbaa !24
  store i64 %t979, ptr %l517, !tbaa !24
  br label %bb274
bb274:
  %t980 = load i64, ptr %l517, !tbaa !24
  store i64 %t980, ptr %l57, !tbaa !24
  store i64 0, ptr %l58, !tbaa !24
  br label %bb275
bb275:
  %t981 = load i64, ptr %l58, !tbaa !24
  %t982 = load i64, ptr %l57, !tbaa !24
  %t985 = icmp slt i64 %t981, %t982
  %t987 = xor i1 %t985, true
  br i1 %t987, label %bb276, label %bb277
bb276:
  br label %bb310
bb277:
  br label %bb278
bb278:
  %t989 = load i64, ptr %l54, !tbaa !24
  %t990 = load i64, ptr %l58, !tbaa !24
  %t991 = load i64, ptr %l56, !tbaa !24
  %t994 = mul i64 %t990, %t991
  %t997 = add i64 %t989, %t994
  store i64 %t997, ptr %l59, !tbaa !24
  %t999 = load ptr, ptr %l0, !tbaa !29
  %t1001 = getelementptr %"compiler/free:Free", ptr %t999, i32 0, i32 53
  %t1002 = load i64, ptr %l59, !tbaa !24
  %t1005 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1001, i64 %t1002)
  store i1 %t1005, ptr %l541
  br label %bb279
bb279:
  %t1006 = load i1, ptr %l541, !tbaa !21
  %t1007 = xor i1 %t1006, true
  br i1 %t1007, label %bb280, label %bb281
bb280:
  store i1 true, ptr %l543, !tbaa !21
  br label %bb283
bb281:
  %t1009 = load ptr, ptr %l0, !tbaa !29
  %t1011 = getelementptr %"compiler/free:Free", ptr %t1009, i32 0, i32 12
  %t1012 = load i64, ptr %l59, !tbaa !24
  %t1015 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1011, i64 %t1012)
  store i1 %t1015, ptr %l547
  br label %bb282
bb282:
  %t1016 = load i1, ptr %l547, !tbaa !21
  %t1017 = xor i1 %t1016, true
  store i1 %t1017, ptr %l543, !tbaa !21
  br label %bb283
bb283:
  %t1019 = load i1, ptr %l543, !tbaa !21
  br i1 %t1019, label %bb284, label %bb285
bb284:
  br label %bb309
bb285:
  br label %bb286
bb286:
  store %olang.scope zeroinitializer, ptr %s53
  %t1020 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1020, ptr %l549, !tbaa !29
  %t1021 = load ptr, ptr %l0, !tbaa !29
  %t1023 = getelementptr %"compiler/free:Free", ptr %t1021, i32 0, i32 15
  %t1024 = load i64, ptr %l59, !tbaa !24
  %t1027 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t1023, i64 %t1024)
  store i32 %t1027, ptr %l553
  br label %bb287
bb287:
  %t1028 = load ptr, ptr %l549, !tbaa !29
  %t1029 = load i32, ptr %l553, !tbaa !23
  %t1030 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eheldPlaces(ptr %v0, ptr %s53, ptr %t1028, i32 %t1029)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1030, ptr %l554
  br label %bb288
bb288:
  %t1032 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s53, ptr %l554)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1032, ptr %l556
  br label %bb289
bb289:
  %t1033 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l556
  %t1034 = call ptr @__olang_scope_alloc_a(ptr %s53, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1033, ptr %t1034
  store ptr %t1034, ptr %l60, !tbaa !29
  store i64 0, ptr %l61, !tbaa !24
  br label %bb290
bb290:
  %t1036 = load i64, ptr %l61, !tbaa !24
  store i64 %t1036, ptr %l558, !tbaa !24
  %t1037 = load ptr, ptr %l60, !tbaa !29
  %t1039 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s53, ptr %t1037)
  store i64 %t1039, ptr %l560
  br label %bb291
bb291:
  %t1040 = load i64, ptr %l558, !tbaa !24
  %t1041 = load i64, ptr %l560, !tbaa !24
  %t1042 = icmp slt i64 %t1040, %t1041
  %t1044 = xor i1 %t1042, true
  br i1 %t1044, label %bb292, label %bb293
bb292:
  br label %bb308
bb293:
  br label %bb294
bb294:
  %t1046 = load ptr, ptr %l60, !tbaa !29
  %t1047 = load i64, ptr %l61, !tbaa !24
  %t1050 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s53, ptr %t1046, i64 %t1047)
  store i64 %t1050, ptr %l565
  br label %bb295
bb295:
  %t1051 = load i64, ptr %l565, !tbaa !24
  store i64 %t1051, ptr %l62, !tbaa !24
  %t1052 = load ptr, ptr %l0, !tbaa !29
  %t1054 = getelementptr %"compiler/free:Free", ptr %t1052, i32 0, i32 13
  %t1055 = load i64, ptr %l62, !tbaa !24
  %t1058 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1054, i64 %t1055)
  store i1 %t1058, ptr %l569
  br label %bb296
bb296:
  %t1059 = load i1, ptr %l569, !tbaa !21
  br i1 %t1059, label %bb297, label %bb298
bb297:
  %t1060 = load ptr, ptr %l0, !tbaa !29
  %t1062 = getelementptr %"compiler/free:Free", ptr %t1060, i32 0, i32 53
  %t1063 = load i64, ptr %l62, !tbaa !24
  %t1066 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1062, i64 %t1063)
  store i1 %t1066, ptr %l574
  br label %bb299
bb298:
  store i1 false, ptr %l570, !tbaa !21
  br label %bb300
bb299:
  %t1067 = load i1, ptr %l574, !tbaa !21
  store i1 %t1067, ptr %l570, !tbaa !21
  br label %bb300
bb300:
  %t1068 = load i1, ptr %l570, !tbaa !21
  br i1 %t1068, label %bb301, label %bb302
bb301:
  store %olang.scope zeroinitializer, ptr %s55
  %t1069 = load ptr, ptr %l0, !tbaa !29
  %t1071 = getelementptr %"compiler/free:Free", ptr %t1069, i32 0, i32 53
  %t1072 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t1071, i64 %t1072, i1 false)
  br label %bb303
bb302:
  br label %bb306
bb303:
  %t1075 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1075, ptr %l578, !tbaa !29
  %t1076 = load i64, ptr %l62, !tbaa !24
  store i64 %t1076, ptr %l579, !tbaa !24
  %t1077 = load i64, ptr @G_2ecompiler_2ffree_2eRCopied, !tbaa !24
  store i64 %t1077, ptr %l580, !tbaa !24
  %t1078 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s55, i32 0, i32 0)
  store %"compiler/source:Span" %t1078, ptr %l581
  br label %bb304
bb304:
  %t1079 = load ptr, ptr %l578, !tbaa !29
  %t1080 = load i64, ptr %l579, !tbaa !24
  %t1081 = load i64, ptr %l580, !tbaa !24
  %t1082 = load %"compiler/source:Span", ptr %l581
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t1079, i64 %t1080, i64 %t1081, i64 -1, %"compiler/source:Span" %t1082, { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb305
bb305:
  call void @__olang_scope_close(ptr %s55)
  br label %bb306
bb306:
  br label %bb307
bb307:
  %t1083 = load i64, ptr %l61, !tbaa !24
  %t1085 = add i64 %t1083, 1
  store i64 %t1085, ptr %l61, !tbaa !24
  br label %bb290
bb308:
  call void @__olang_scope_close(ptr %s53)
  br label %bb309
bb309:
  %t1087 = load i64, ptr %l58, !tbaa !24
  %t1089 = add i64 %t1087, 1
  store i64 %t1089, ptr %l58, !tbaa !24
  br label %bb275
bb310:
  br label %bb311
bb311:
  store i1 false, ptr %l63, !tbaa !21
  %t1091 = load ptr, ptr %l0, !tbaa !29
  %t1093 = getelementptr %"compiler/free:Free", ptr %t1091, i32 0, i32 46
  store ptr %t1093, ptr %l64, !tbaa !29
  store i64 0, ptr %l65, !tbaa !24
  br label %bb312
bb312:
  %t1095 = load i64, ptr %l65, !tbaa !24
  store i64 %t1095, ptr %l588, !tbaa !24
  %t1096 = load ptr, ptr %l64, !tbaa !29
  %t1098 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t1096)
  store i64 %t1098, ptr %l590
  br label %bb313
bb313:
  %t1099 = load i64, ptr %l588, !tbaa !24
  %t1100 = load i64, ptr %l590, !tbaa !24
  %t1101 = icmp slt i64 %t1099, %t1100
  %t1103 = xor i1 %t1101, true
  br i1 %t1103, label %bb314, label %bb315
bb314:
  br label %bb332
bb315:
  br label %bb316
bb316:
  %t1105 = load ptr, ptr %l64, !tbaa !29
  %t1106 = load i64, ptr %l65, !tbaa !24
  %t1109 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t1105, i64 %t1106)
  store %"compiler/free:store" %t1109, ptr %l595
  br label %bb317
bb317:
  %t1110 = load %"compiler/free:store", ptr %l595
  store %"compiler/free:store" %t1110, ptr %l66
  %t1111 = getelementptr %"compiler/free:store", ptr %l66, i32 0, i32 4
  %t1112 = load i64, ptr %t1111, !tbaa !24
  %t1113 = load i64, ptr @G_2ecompiler_2ffree_2eSMove, !tbaa !24
  %t1116 = icmp eq i64 %t1112, %t1113
  br i1 %t1116, label %bb318, label %bb319
bb318:
  %t1118 = load ptr, ptr %l0, !tbaa !29
  %t1120 = getelementptr %"compiler/free:Free", ptr %t1118, i32 0, i32 53
  %t1121 = getelementptr %"compiler/free:store", ptr %l66, i32 0, i32 0
  %t1122 = load i64, ptr %t1121, !tbaa !24
  %t1125 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1120, i64 %t1122)
  store i1 %t1125, ptr %l603
  br label %bb320
bb319:
  store i1 false, ptr %l599, !tbaa !21
  br label %bb321
bb320:
  %t1126 = load i1, ptr %l603, !tbaa !21
  store i1 %t1126, ptr %l599, !tbaa !21
  br label %bb321
bb321:
  %t1127 = load i1, ptr %l599, !tbaa !21
  br i1 %t1127, label %bb322, label %bb323
bb322:
  %t1128 = load ptr, ptr %l0, !tbaa !29
  %t1130 = getelementptr %"compiler/free:Free", ptr %t1128, i32 0, i32 53
  %t1131 = getelementptr %"compiler/free:store", ptr %l66, i32 0, i32 5
  %t1132 = load i64, ptr %t1131, !tbaa !24
  %t1135 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1130, i64 %t1132)
  store i1 %t1135, ptr %l608
  br label %bb324
bb323:
  store i1 false, ptr %l604, !tbaa !21
  br label %bb325
bb324:
  %t1136 = load i1, ptr %l608, !tbaa !21
  %t1137 = xor i1 %t1136, true
  store i1 %t1137, ptr %l604, !tbaa !21
  br label %bb325
bb325:
  %t1139 = load i1, ptr %l604, !tbaa !21
  br i1 %t1139, label %bb326, label %bb327
bb326:
  %t1140 = load ptr, ptr %l0, !tbaa !29
  %t1142 = getelementptr %"compiler/free:Free", ptr %t1140, i32 0, i32 53
  %t1143 = getelementptr %"compiler/free:store", ptr %l66, i32 0, i32 0
  %t1144 = load i64, ptr %t1143, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t1142, i64 %t1144, i1 false)
  br label %bb328
bb327:
  br label %bb330
bb328:
  %t1147 = load ptr, ptr %l0, !tbaa !29
  %t1148 = getelementptr %"compiler/free:store", ptr %l66, i32 0, i32 0
  %t1149 = load i64, ptr %t1148, !tbaa !24
  %t1150 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  %t1151 = getelementptr %"compiler/free:store", ptr %l66, i32 0, i32 2
  %t1152 = load i64, ptr %t1151, !tbaa !24
  %t1153 = getelementptr %"compiler/free:store", ptr %l66, i32 0, i32 3
  %t1154 = load %"compiler/source:Span", ptr %t1153
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t1147, i64 %t1149, i64 %t1150, i64 %t1152, %"compiler/source:Span" %t1154, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d50, i32 0, i32 1) })
  br label %bb329
bb329:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb330
bb330:
  br label %bb331
bb331:
  %t1160 = load i64, ptr %l65, !tbaa !24
  %t1162 = add i64 %t1160, 1
  store i64 %t1162, ptr %l65, !tbaa !24
  br label %bb312
bb332:
  %t1164 = load i1, ptr %l63, !tbaa !21
  %t1166 = xor i1 %t1164, true
  br i1 %t1166, label %bb333, label %bb334
bb333:
  br label %bb337
bb334:
  br label %bb335
bb335:
  br label %bb336
bb336:
  br label %bb311
bb337:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edeclaredHere(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l12 = alloca i1
  %l13 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i1
  %l26 = alloca ptr
  %l29 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t4)
  store ptr %t6, ptr %l6
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t8, i32 %a1)
  store i32 %t10, ptr %l8
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t12 = load i32, ptr %l8, !tbaa !23
  %t13 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t13, ptr %l9
  br label %bb4
bb4:
  %t14 = load i64, ptr %l9, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sge i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load i64, ptr %l2, !tbaa !24
  store i64 %t19, ptr %l13, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/free:Free", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/load:Loader", ptr %t26, i32 0, i32 10
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l18
  br label %bb7
bb6:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  %t31 = load i64, ptr %l13, !tbaa !24
  %t32 = load i64, ptr %l18, !tbaa !24
  %t33 = icmp slt i64 %t31, %t32
  store i1 %t33, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l12, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/free:Free", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/load:Loader", ptr %t42, i32 0, i32 10
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t44, i64 %t45)
  store ptr %t48, ptr %l26
  br label %bb11
bb10:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb13
bb11:
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t51 = getelementptr %"compiler/load:Module", ptr %t49, i32 0, i32 2
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t54, ptr %l29
  br label %bb12
bb12:
  %t55 = load i1, ptr %l29, !tbaa !21
  %t56 = xor i1 %t55, true
  store i1 %t56, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t58 = load i1, ptr %l20, !tbaa !21
  store i1 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedDest(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/free:feed"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca %"compiler/free:feed"
  %l20 = alloca i1
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 73
  store ptr %t3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l5, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eLen_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = call %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/free:feed" %t19, ptr %l16
  br label %bb6
bb6:
  %t20 = load %"compiler/free:feed", ptr %l16
  store %"compiler/free:feed" %t20, ptr %l6
  %t21 = getelementptr %"compiler/free:feed", ptr %l6, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = icmp eq i64 %t22, %a1
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = getelementptr %"compiler/free:feed", ptr %l6, i32 0, i32 6
  %t29 = load i64, ptr %t28, !tbaa !24
  %t33 = icmp eq i64 %t29, %a2
  store i1 %t33, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t36 = getelementptr %"compiler/free:feed", ptr %l6, i32 0, i32 5
  %t37 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t37, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l5, !tbaa !24
  br label %bb1
bb14:
  store { i64, [2 x i64] } %a3, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca i1
  %l40 = alloca i64
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca ptr
  %l46 = alloca i1
  %l59 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l67 = alloca i1
  %l76 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l97 = alloca ptr
  %l105 = alloca ptr
  %l106 = alloca i1
  %l119 = alloca { i64, ptr }
  %l130 = alloca ptr
  %l136 = alloca ptr
  %l137 = alloca i1
  %l150 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l172 = alloca ptr
  %l182 = alloca ptr
  %l203 = alloca ptr
  %l214 = alloca ptr
  %l215 = alloca i1
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t2 = load ptr, ptr %l30, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l30, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l31, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l31, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t26 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t22, ptr %t23)
  store i64 %t26, ptr %l40
  br label %bb6
bb6:
  %t27 = load i64, ptr %l40, !tbaa !24
  %t28 = icmp slt i64 %t27, 0
  br i1 %t28, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l2, !tbaa !23
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %s2, ptr %t30, i32 %t31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l44
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  br label %bb131
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t36 = load ptr, ptr %l45, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l45, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 6
  store i1 %t42, ptr %l46, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l46, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb24
bb16:
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Call", ptr %t50, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  store i64 %t57, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb18, label %bb19
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  %t67 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t67, ptr %l59, !tbaa !27
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr ptr, ptr %t71, i64 %t68
  %t73 = load ptr, ptr %t72, !tbaa !39
  %t75 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %t75, ptr %t73)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l6, !tbaa !24
  br label %bb17
bb23:
  br label %bb131
bb24:
  %t83 = load ptr, ptr %l1, !tbaa !29
  store ptr %t83, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t84 = load ptr, ptr %l66, !tbaa !29
  %t85 = icmp ne ptr %t84, null
  br i1 %t85, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l66, !tbaa !29
  %t88 = load i64, ptr %t87, !range !{i64 0, i64 18}
  %t90 = icmp eq i64 %t88, 14
  store i1 %t90, ptr %l67, !tbaa !21
  br label %bb26
bb26:
  %t91 = load i1, ptr %l67, !tbaa !21
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr { i64, [5 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t94, i32 0, i32 2
  %t96 = load ptr, ptr %t95
  store ptr %t96, ptr %l9, !tbaa !29
  br label %bb29
bb28:
  br label %bb50
bb29:
  %t98 = load ptr, ptr %l9, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Try", ptr %t98, i32 0, i32 0
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb30, label %bb31
bb30:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l76, !tbaa !29
  %t108 = load ptr, ptr %l9, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Try", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  br i1 %t113, label %bb32, label %bb33
bb31:
  br label %bb36
bb32:
  call void @__olang_check_failed(ptr @olang_loc_7bd178b281ab108b_bca5961225cfb287)
  unreachable
bb33:
  br label %bb34
bb34:
  %t115 = load ptr, ptr %l9, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Try", ptr %t115, i32 0, i32 0
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load ptr, ptr %l76, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %t119, ptr %t118)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t121 = load ptr, ptr %l9, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Try", ptr %t121, i32 0, i32 1
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  store i64 %t128, ptr %l12, !tbaa !24
  br label %bb37
bb37:
  %t130 = load i64, ptr %l11, !tbaa !24
  %t131 = load i64, ptr %l12, !tbaa !24
  %t134 = icmp slt i64 %t130, %t131
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb38, label %bb39
bb38:
  br label %bb49
bb39:
  br label %bb40
bb40:
  %t138 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t138, ptr %l90, !tbaa !27
  %t139 = load i64, ptr %l11, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr ptr, ptr %t142, i64 %t139
  %t144 = load ptr, ptr %t143, !tbaa !39
  store ptr %t144, ptr %l13, !tbaa !29
  %t146 = load ptr, ptr %l13, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Clause", ptr %t146, i32 0, i32 3
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = icmp eq ptr %t149, null
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb41, label %bb42
bb41:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l97, !tbaa !29
  %t156 = load ptr, ptr %l13, !tbaa !29
  %t158 = getelementptr %"compiler/typed:Clause", ptr %t156, i32 0, i32 3
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = icmp eq ptr %t159, null
  br i1 %t161, label %bb43, label %bb44
bb42:
  br label %bb47
bb43:
  call void @__olang_check_failed(ptr @olang_loc_54a8cb88ede7d99c_f1d49282556d5568)
  unreachable
bb44:
  br label %bb45
bb45:
  %t163 = load ptr, ptr %l13, !tbaa !29
  %t165 = getelementptr %"compiler/typed:Clause", ptr %t163, i32 0, i32 3
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = load ptr, ptr %l97, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t167, ptr %t166)
  br label %bb46
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t169 = load i64, ptr %l11, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l11, !tbaa !24
  br label %bb37
bb49:
  br label %bb131
bb50:
  %t173 = load ptr, ptr %l1, !tbaa !29
  store ptr %t173, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t174 = load ptr, ptr %l105, !tbaa !29
  %t175 = icmp ne ptr %t174, null
  br i1 %t175, label %bb51, label %bb52
bb51:
  %t177 = load ptr, ptr %l105, !tbaa !29
  %t178 = load i64, ptr %t177, !range !{i64 0, i64 18}
  %t180 = icmp eq i64 %t178, 12
  store i1 %t180, ptr %l106, !tbaa !21
  br label %bb52
bb52:
  %t181 = load i1, ptr %l106, !tbaa !21
  br i1 %t181, label %bb53, label %bb54
bb53:
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t184 = getelementptr { i64, [5 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t184, i32 0, i32 2
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l14, !tbaa !29
  br label %bb55
bb54:
  br label %bb70
bb55:
  %t188 = load ptr, ptr %l14, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Seq", ptr %t188, i32 0, i32 0
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t193 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t193, 0
  store i64 %t195, ptr %l17, !tbaa !24
  br label %bb56
bb56:
  %t197 = load i64, ptr %l16, !tbaa !24
  %t198 = load i64, ptr %l17, !tbaa !24
  %t201 = icmp slt i64 %t197, %t198
  %t203 = xor i1 %t201, true
  br i1 %t203, label %bb57, label %bb58
bb57:
  br label %bb62
bb58:
  br label %bb59
bb59:
  %t205 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t205, ptr %l119, !tbaa !27
  %t206 = load i64, ptr %l16, !tbaa !24
  %t208 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr ptr, ptr %t209, i64 %t206
  %t211 = load ptr, ptr %t210, !tbaa !39
  %t213 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindStmt(ptr %v0, ptr %v1, ptr %t213, ptr %t211)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t217 = load i64, ptr %l16, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l16, !tbaa !24
  br label %bb56
bb62:
  %t221 = load ptr, ptr %l14, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Seq", ptr %t221, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = icmp eq ptr %t224, null
  %t228 = xor i1 %t226, true
  br i1 %t228, label %bb63, label %bb64
bb63:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l130, !tbaa !29
  %t231 = load ptr, ptr %l14, !tbaa !29
  %t233 = getelementptr %"compiler/typed:Seq", ptr %t231, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t236 = icmp eq ptr %t234, null
  br i1 %t236, label %bb65, label %bb66
bb64:
  br label %bb69
bb65:
  call void @__olang_check_failed(ptr @olang_loc_df2621a9cc7e5891_c8dc80a57ad57a3d)
  unreachable
bb66:
  br label %bb67
bb67:
  %t238 = load ptr, ptr %l14, !tbaa !29
  %t240 = getelementptr %"compiler/typed:Seq", ptr %t238, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t242 = load ptr, ptr %l130, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %t242, ptr %t241)
  br label %bb68
bb68:
  br label %bb69
bb69:
  br label %bb131
bb70:
  %t244 = load ptr, ptr %l1, !tbaa !29
  store ptr %t244, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t245 = load ptr, ptr %l136, !tbaa !29
  %t246 = icmp ne ptr %t245, null
  br i1 %t246, label %bb71, label %bb72
bb71:
  %t248 = load ptr, ptr %l136, !tbaa !29
  %t249 = load i64, ptr %t248, !range !{i64 0, i64 18}
  %t251 = icmp eq i64 %t249, 13
  store i1 %t251, ptr %l137, !tbaa !21
  br label %bb72
bb72:
  %t252 = load i1, ptr %l137, !tbaa !21
  br i1 %t252, label %bb73, label %bb74
bb73:
  %t253 = load ptr, ptr %l1, !tbaa !29
  %t255 = getelementptr { i64, [5 x i64] }, ptr %t253, i32 0, i32 1
  %t256 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t255, i32 0, i32 2
  %t257 = load ptr, ptr %t256
  store ptr %t257, ptr %l19, !tbaa !29
  br label %bb75
bb74:
  br label %bb119
bb75:
  %t259 = load ptr, ptr %l19, !tbaa !29
  %t261 = getelementptr %"compiler/typed:Match", ptr %t259, i32 0, i32 0
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !27
  store { i64, ptr } %t262, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t264 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t264, 0
  store i64 %t266, ptr %l22, !tbaa !24
  br label %bb76
bb76:
  %t268 = load i64, ptr %l21, !tbaa !24
  %t269 = load i64, ptr %l22, !tbaa !24
  %t272 = icmp slt i64 %t268, %t269
  %t274 = xor i1 %t272, true
  br i1 %t274, label %bb77, label %bb78
bb77:
  br label %bb82
bb78:
  br label %bb79
bb79:
  %t276 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t276, ptr %l150, !tbaa !27
  %t277 = load i64, ptr %l21, !tbaa !24
  %t279 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !27
  %t281 = getelementptr ptr, ptr %t280, i64 %t277
  %t282 = load ptr, ptr %t281, !tbaa !39
  %t284 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindStmt(ptr %v0, ptr %v1, ptr %t284, ptr %t282)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t288 = load i64, ptr %l21, !tbaa !24
  %t290 = add i64 %t288, 1
  store i64 %t290, ptr %l21, !tbaa !24
  br label %bb76
bb82:
  %t292 = load ptr, ptr %l19, !tbaa !29
  %t294 = getelementptr %"compiler/typed:Match", ptr %t292, i32 0, i32 1
  %t295 = load { i64, ptr }, ptr %t294, !tbaa !27
  store { i64, ptr } %t295, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t297 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t297, 0
  store i64 %t299, ptr %l26, !tbaa !24
  br label %bb83
bb83:
  %t301 = load i64, ptr %l25, !tbaa !24
  %t302 = load i64, ptr %l26, !tbaa !24
  %t305 = icmp slt i64 %t301, %t302
  %t307 = xor i1 %t305, true
  br i1 %t307, label %bb84, label %bb85
bb84:
  br label %bb102
bb85:
  br label %bb86
bb86:
  %t309 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t309, ptr %l165, !tbaa !27
  %t310 = load i64, ptr %l25, !tbaa !24
  %t312 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr ptr, ptr %t313, i64 %t310
  %t315 = load ptr, ptr %t314, !tbaa !39
  store ptr %t315, ptr %l27, !tbaa !29
  %t317 = load ptr, ptr %l27, !tbaa !29
  %t319 = getelementptr %"compiler/typed:Arm", ptr %t317, i32 0, i32 3
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t322 = icmp eq ptr %t320, null
  %t324 = xor i1 %t322, true
  br i1 %t324, label %bb87, label %bb88
bb87:
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l172, !tbaa !29
  %t327 = load ptr, ptr %l27, !tbaa !29
  %t329 = getelementptr %"compiler/typed:Arm", ptr %t327, i32 0, i32 3
  %t330 = load ptr, ptr %t329, !tbaa !29
  %t332 = icmp eq ptr %t330, null
  br i1 %t332, label %bb89, label %bb90
bb88:
  br label %bb93
bb89:
  call void @__olang_check_failed(ptr @olang_loc_d176219a3bee3f8a_90c874c8f8700e56)
  unreachable
bb90:
  br label %bb91
bb91:
  %t334 = load ptr, ptr %l27, !tbaa !29
  %t336 = getelementptr %"compiler/typed:Arm", ptr %t334, i32 0, i32 3
  %t337 = load ptr, ptr %t336, !tbaa !29
  %t338 = load ptr, ptr %l172, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t338, ptr %t337)
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t340 = load ptr, ptr %l27, !tbaa !29
  %t342 = getelementptr %"compiler/typed:Arm", ptr %t340, i32 0, i32 4
  %t343 = load ptr, ptr %t342, !tbaa !29
  %t345 = icmp eq ptr %t343, null
  %t347 = xor i1 %t345, true
  br i1 %t347, label %bb94, label %bb95
bb94:
  %t349 = load ptr, ptr %l0, !tbaa !29
  store ptr %t349, ptr %l182, !tbaa !29
  %t350 = load ptr, ptr %l27, !tbaa !29
  %t352 = getelementptr %"compiler/typed:Arm", ptr %t350, i32 0, i32 4
  %t353 = load ptr, ptr %t352, !tbaa !29
  %t355 = icmp eq ptr %t353, null
  br i1 %t355, label %bb96, label %bb97
bb95:
  br label %bb100
bb96:
  call void @__olang_check_failed(ptr @olang_loc_3832ed25f787c577_46d12f44adcfa45b)
  unreachable
bb97:
  br label %bb98
bb98:
  %t357 = load ptr, ptr %l27, !tbaa !29
  %t359 = getelementptr %"compiler/typed:Arm", ptr %t357, i32 0, i32 4
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t361 = load ptr, ptr %l182, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %t361, ptr %t360)
  br label %bb99
bb99:
  br label %bb100
bb100:
  br label %bb101
bb101:
  %t363 = load i64, ptr %l25, !tbaa !24
  %t365 = add i64 %t363, 1
  store i64 %t365, ptr %l25, !tbaa !24
  br label %bb83
bb102:
  %t367 = load ptr, ptr %l19, !tbaa !29
  %t369 = getelementptr %"compiler/typed:Match", ptr %t367, i32 0, i32 2
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t372 = icmp eq ptr %t370, null
  %t374 = xor i1 %t372, true
  br i1 %t374, label %bb103, label %bb104
bb103:
  %t376 = load ptr, ptr %l19, !tbaa !29
  %t378 = getelementptr %"compiler/typed:Match", ptr %t376, i32 0, i32 2
  %t379 = load ptr, ptr %t378, !tbaa !29
  %t381 = icmp eq ptr %t379, null
  br i1 %t381, label %bb105, label %bb106
bb104:
  br label %bb118
bb105:
  call void @__olang_check_failed(ptr @olang_loc_78b7d87e61167558_7d12aa6674d4d96c)
  unreachable
bb106:
  br label %bb107
bb107:
  %t383 = load ptr, ptr %l19, !tbaa !29
  %t385 = getelementptr %"compiler/typed:Match", ptr %t383, i32 0, i32 2
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t389 = getelementptr %"compiler/typed:Arm", ptr %t386, i32 0, i32 3
  %t390 = load ptr, ptr %t389, !tbaa !29
  %t392 = icmp eq ptr %t390, null
  %t394 = xor i1 %t392, true
  br i1 %t394, label %bb108, label %bb109
bb108:
  %t396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t396, ptr %l203, !tbaa !29
  %t397 = load ptr, ptr %l19, !tbaa !29
  %t399 = getelementptr %"compiler/typed:Match", ptr %t397, i32 0, i32 2
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t402 = icmp eq ptr %t400, null
  br i1 %t402, label %bb110, label %bb111
bb109:
  br label %bb117
bb110:
  call void @__olang_check_failed(ptr @olang_loc_78b7d87e61167558_7d12aa6674d4d96c)
  unreachable
bb111:
  br label %bb112
bb112:
  %t404 = load ptr, ptr %l19, !tbaa !29
  %t406 = getelementptr %"compiler/typed:Match", ptr %t404, i32 0, i32 2
  %t407 = load ptr, ptr %t406, !tbaa !29
  %t410 = getelementptr %"compiler/typed:Arm", ptr %t407, i32 0, i32 3
  %t411 = load ptr, ptr %t410, !tbaa !29
  store ptr %t411, ptr %l28, !tbaa !29
  %t413 = load ptr, ptr %l28, !tbaa !29
  %t415 = icmp eq ptr %t413, null
  br i1 %t415, label %bb113, label %bb114
bb113:
  call void @__olang_check_failed(ptr @olang_loc_78b7d87e61167558_7d12aa6674d4d96c)
  unreachable
bb114:
  br label %bb115
bb115:
  %t417 = load ptr, ptr %l28, !tbaa !29
  %t418 = load ptr, ptr %l203, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t418, ptr %t417)
  br label %bb116
bb116:
  br label %bb117
bb117:
  br label %bb118
bb118:
  br label %bb131
bb119:
  %t420 = load ptr, ptr %l1, !tbaa !29
  store ptr %t420, ptr %l214, !tbaa !29
  store i1 false, ptr %l215, !tbaa !21
  %t421 = load ptr, ptr %l214, !tbaa !29
  %t422 = icmp ne ptr %t421, null
  br i1 %t422, label %bb120, label %bb121
bb120:
  %t424 = load ptr, ptr %l214, !tbaa !29
  %t425 = load i64, ptr %t424, !range !{i64 0, i64 18}
  %t427 = icmp eq i64 %t425, 8
  store i1 %t427, ptr %l215, !tbaa !21
  br label %bb121
bb121:
  %t428 = load i1, ptr %l215, !tbaa !21
  br i1 %t428, label %bb122, label %bb123
bb122:
  %t429 = load ptr, ptr %l1, !tbaa !29
  %t431 = getelementptr { i64, [5 x i64] }, ptr %t429, i32 0, i32 1
  %t432 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t431, i32 0, i32 2
  %t433 = load ptr, ptr %t432
  store ptr %t433, ptr %l29, !tbaa !29
  br label %bb124
bb123:
  br label %bb126
bb124:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t436 = load ptr, ptr %l29, !tbaa !29
  %t438 = getelementptr %"compiler/typed:Collect", ptr %t436, i32 0, i32 1
  %t439 = load ptr, ptr %t438, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t435, ptr %t439)
  br label %bb125
bb125:
  br label %bb131
bb126:
  br i1 true, label %bb127, label %bb128
bb127:
  br label %bb129
bb128:
  br label %bb130
bb129:
  br label %bb131
bb130:
  call void @__olang_check_failed(ptr @olang_loc_5c0fdc79e2d66a14_68e7480db742a728)
  unreachable
bb131:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2egenKeeps(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l41 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca %"compiler/source:Span"
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 5
  %t8 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Ha270003b2266a12c55eea6eacf9a4be1(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = icmp eq i64 %t9, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l1, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/free:Free", ptr %t12, i32 0, i32 9
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l14
  br label %bb5
bb5:
  %t17 = load i64, ptr %l14, !tbaa !24
  store i64 %t17, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb11
bb8:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t29 = load i64, ptr %l1, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l21, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t44 = load i64, ptr %l21, !tbaa !24
  store i64 %t44, ptr %l18, !tbaa !24
  br label %bb11
bb11:
  %t45 = load i64, ptr %l18, !tbaa !24
  store i64 %t45, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l5, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb13, label %bb14
bb13:
  br label %bb23
bb14:
  br label %bb15
bb15:
  %t54 = load i64, ptr %l1, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l3, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l6, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2egenPlace(ptr %v0, ptr %t64, i64 %t65)
  store i1 %t68, ptr %l41
  br label %bb16
bb16:
  %t69 = load i1, ptr %l41, !tbaa !21
  br i1 %t69, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l42, !tbaa !29
  %t71 = load i64, ptr %l6, !tbaa !24
  store i64 %t71, ptr %l43, !tbaa !24
  %t72 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  store i64 %t72, ptr %l44, !tbaa !24
  %t73 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 0, i32 0)
  store %"compiler/source:Span" %t73, ptr %l45
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t74 = load ptr, ptr %l42, !tbaa !29
  %t75 = load i64, ptr %l43, !tbaa !24
  %t76 = load i64, ptr %l44, !tbaa !24
  %t77 = load %"compiler/source:Span", ptr %l45
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t74, i64 %t75, i64 %t76, i64 -1, %"compiler/source:Span" %t77, { i64, ptr } { i64 123, ptr getelementptr inbounds (<{ i64, [123 x i8] }>, ptr @.d52, i32 0, i32 1) })
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l5, !tbaa !24
  br label %bb12
bb23:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ehandleCand(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l9 = alloca i32
  %l12 = alloca i32
  %l16 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i32
  %l33 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca { i64, ptr }
  %l43 = alloca i1
  %l45 = alloca { i64, ptr }
  %l47 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l9
  br label %bb2
bb2:
  %t10 = load i32, ptr %l9, !tbaa !23
  store i32 %t10, ptr %l3, !tbaa !23
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l12
  br label %bb3
bb3:
  %t16 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t18 = trunc i64 18 to i32
  %t19 = icmp eq i32 %t16, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb7
bb5:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l19
  br label %bb6
bb6:
  %t28 = load i1, ptr %l19, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb12
bb9:
  %t32 = load ptr, ptr %l2, !tbaa !29
  store ptr %t32, ptr %l22, !tbaa !29
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l25
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t39 = load i32, ptr %l25, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t40, ptr %l26
  br label %bb11
bb11:
  %t41 = load i32, ptr %l26, !range !{i32 0, i32 6}
  %t43 = trunc i64 0 to i32
  %t44 = icmp eq i32 %t41, %t43
  %t46 = xor i1 %t44, true
  store i1 %t46, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t48 = load i1, ptr %l21, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t51 = load i32, ptr %l3, !tbaa !23
  %t54 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l33
  br label %bb16
bb16:
  %t55 = load i1, ptr %l33, !tbaa !21
  br i1 %t55, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t57 = load ptr, ptr %l2, !tbaa !29
  store ptr %t57, ptr %l35, !tbaa !29
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t59 = load i32, ptr %l3, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l38
  br label %bb20
bb20:
  %t63 = load ptr, ptr %l35, !tbaa !29
  %t64 = load i32, ptr %l38, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t63, i32 %t64)
  store { i64, ptr } %t65, ptr %l39
  br label %bb21
bb21:
  %t66 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t66, ptr %l4, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t71 = icmp eq i64 %t69, 1
  br i1 %t71, label %bb22, label %bb23
bb22:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t74, ptr %l45, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i32, ptr %t76, i64 0
  %t78 = load i32, ptr %t77, !tbaa !33
  %t81 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erefCand(ptr %v0, ptr %t73, i32 %t78)
  store i1 %t81, ptr %l47
  br label %bb24
bb23:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb25
bb24:
  %t82 = load i1, ptr %l47, !tbaa !21
  store i1 %t82, ptr %l43, !tbaa !21
  br label %bb25
bb25:
  %t83 = load i1, ptr %l43, !tbaa !21
  store i1 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eonlyLeaf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/free:leaf"
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/free:leaf"
  %l17 = alloca %"compiler/free:leaf"
  %l24 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t3 = load i64, ptr %l5, !tbaa !24
  store i64 %t3, ptr %l8, !tbaa !24
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l10
  br label %bb2
bb2:
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l10, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %v1, ptr %t13, i64 %t14)
  store %"compiler/free:leaf" %t17, ptr %l15
  br label %bb6
bb6:
  %t19 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s2, ptr %l15)
  store %"compiler/free:leaf" %t19, ptr %l17
  br label %bb7
bb7:
  %t20 = load %"compiler/free:leaf", ptr %l17
  store %"compiler/free:leaf" %t20, ptr %l6
  %t21 = getelementptr %"compiler/free:leaf", ptr %l6, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = icmp eq i64 %t22, %a3
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t30 = getelementptr %"compiler/free:leaf", ptr %l6, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t35 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eonlyPath(ptr %v0, ptr %s2, ptr %a0, i32 %a1, { i64, ptr } %t31, i64 0)
  store i1 %t35, ptr %l24
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  %t36 = load i1, ptr %l24, !tbaa !21
  store i1 %t36, ptr %rv
  br label %ret
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l5, !tbaa !24
  br label %bb1
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceName(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:letGo" %a1) #0 {
entry:
  %l1 = alloca %"compiler/free:letGo"
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store %"compiler/free:letGo" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 2
  %t3 = load i64, ptr %t2, !tbaa !24
  %t4 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 4
  %t5 = load %"compiler/source:Span", ptr %t4
  %t9 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %v1, ptr %a0, i64 %t3, %"compiler/source:Span" %t5)
  store { i64, ptr } %t9, ptr %l5
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l24 = alloca i1
  %l29 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %rv = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t5, ptr %l9, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load i64, ptr %l10, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l11, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t19, ptr %l9, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t23 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/load:Loader", ptr %t27, i32 0, i32 4
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v0, ptr %t30, i64 %t31)
  store { i64, ptr } %t34, ptr %l17
  br label %bb4
bb4:
  %t35 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t35, ptr %l3, !tbaa !27
  %t36 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t39 = sext i32 %t37 to i64
  store i64 %t39, ptr %l4, !tbaa !24
  %t41 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t42 = load i32, ptr %t41, !tbaa !23
  %t44 = sext i32 %t42 to i64
  store i64 %t44, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp slt i64 %t46, 0
  br i1 %t48, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb7
bb6:
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t56 = icmp sgt i64 %t50, %t53
  store i1 %t56, ptr %l24, !tbaa !21
  br label %bb7
bb7:
  %t58 = load i1, ptr %l24, !tbaa !21
  br i1 %t58, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb10
bb9:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = icmp sge i64 %t59, %t60
  store i1 %t63, ptr %l29, !tbaa !21
  br label %bb10
bb10:
  %t65 = load i1, ptr %l29, !tbaa !21
  br i1 %t65, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t66, ptr %l34, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l35, !tbaa !24
  %t69 = load i64, ptr %l35, !tbaa !24
  %t70 = mul i64 %t69, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t70)
  %t72 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l36, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = load i64, ptr %l35, !tbaa !24
  %t79 = mul i64 %t78, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t75, ptr %t77, i64 %t79, i1 false)
  %t80 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t80, ptr %l34, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t81, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t82 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t82, ptr %l37, !tbaa !27
  %t83 = load i64, ptr %l4, !tbaa !24
  store i64 %t83, ptr %l38, !tbaa !24
  %t84 = load i64, ptr %l5, !tbaa !24
  store i64 %t84, ptr %l39, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  store i64 %t86, ptr %l40, !tbaa !24
  %t87 = load i64, ptr %l38, !tbaa !24
  %t88 = icmp sge i64 %t87, 0
  br i1 %t88, label %bb14, label %bb15
bb14:
  %t90 = load i64, ptr %l38, !tbaa !24
  %t91 = load i64, ptr %l39, !tbaa !24
  %t92 = icmp sle i64 %t90, %t91
  br i1 %t92, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_bdafa441ac13699b_f5af7a3548cb73f)
  unreachable
bb16:
  %t94 = load i64, ptr %l39, !tbaa !24
  %t95 = load i64, ptr %l40, !tbaa !24
  %t96 = icmp sle i64 %t94, %t95
  br i1 %t96, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_bdafa441ac13699b_f5af7a3548cb73f)
  unreachable
bb18:
  %t98 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l38, !tbaa !24
  %t101 = load i64, ptr %l39, !tbaa !24
  %t102 = getelementptr i8, ptr %t99, i64 %t100
  %t103 = sub i64 %t101, %t100
  %t104 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t102, 1
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = extractvalue { i64, ptr } %t105, 0
  %t109 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t108)
  call void @olang_textcopy(ptr %t109, ptr %t107, i64 %t108)
  %t110 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_bdafa441ac13699b_f5af7a3548cb73f)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eunowned(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i1
  %l26 = alloca i1
  %l27 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca i1
  %l31 = alloca i1
  %l33 = alloca ptr
  %l35 = alloca i64
  %l36 = alloca i1
  %l37 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l47 = alloca i64
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l4, !tbaa !24
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb32
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t17, i64 %t18)
  store i64 %t21, ptr %l16
  br label %bb7
bb7:
  %t22 = load i64, ptr %l16, !tbaa !24
  store i64 %t22, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t25 = call i64 @compiler_2ffree_2eokind(i64 %t23)
  store i64 %t25, ptr %l18
  br label %bb8
bb8:
  %t26 = load i64, ptr %l18, !tbaa !24
  store i64 %t26, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t31 = icmp eq i64 %t27, %t28
  br i1 %t31, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb11
bb10:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2ffree_2eOMov, !tbaa !24
  %t37 = icmp eq i64 %t33, %t34
  store i1 %t37, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l22, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l27, !tbaa !29
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = call i64 @compiler_2ffree_2eoval(i64 %t41)
  store i64 %t43, ptr %l29
  br label %bb14
bb13:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb21
bb14:
  %t44 = load ptr, ptr %l27, !tbaa !29
  %t45 = load i64, ptr %l29, !tbaa !24
  %t46 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsOwner(ptr %v0, ptr %t44, i64 %t45)
  store i1 %t46, ptr %l30
  br label %bb15
bb15:
  %t47 = load i1, ptr %l30, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb20
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/free:Free", ptr %t48, i32 0, i32 13
  store ptr %t50, ptr %l33, !tbaa !29
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = call i64 @compiler_2ffree_2eoval(i64 %t51)
  store i64 %t53, ptr %l35
  br label %bb18
bb18:
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t55 = load i64, ptr %l35, !tbaa !24
  %t56 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t54, i64 %t55)
  store i1 %t56, ptr %l36
  br label %bb19
bb19:
  %t57 = load i1, ptr %l36, !tbaa !21
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t58 = load i1, ptr %l31, !tbaa !21
  store i1 %t58, ptr %l26, !tbaa !21
  br label %bb21
bb21:
  %t59 = load i1, ptr %l26, !tbaa !21
  br i1 %t59, label %bb22, label %bb23
bb22:
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t60 = load ptr, ptr %lp2
  store ptr %t60, ptr %l37, !tbaa !29
  %t61 = load i64, ptr %l6, !tbaa !24
  %t62 = load i64, ptr @G_2ecompiler_2ffree_2eOPar, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb25, label %bb26
bb25:
  %t67 = load i64, ptr @G_2ecompiler_2ffree_2eOParC, !tbaa !24
  store i64 %t67, ptr %l42, !tbaa !24
  %t68 = load i64, ptr %l5, !tbaa !24
  %t70 = call i64 @compiler_2ffree_2eoval(i64 %t68)
  store i64 %t70, ptr %l44
  br label %bb27
bb26:
  %t71 = load i64, ptr %l5, !tbaa !24
  store i64 %t71, ptr %l41, !tbaa !24
  br label %bb29
bb27:
  %t73 = load i64, ptr %l42, !tbaa !24
  %t74 = load i64, ptr %l44, !tbaa !24
  %t75 = call i64 @compiler_2ffree_2eorig(i64 %t73, i64 %t74)
  store i64 %t75, ptr %l45
  br label %bb28
bb28:
  %t76 = load i64, ptr %l45, !tbaa !24
  store i64 %t76, ptr %l41, !tbaa !24
  br label %bb29
bb29:
  %t77 = load ptr, ptr %l37, !tbaa !29
  %t78 = load i64, ptr %l41, !tbaa !24
  %t79 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t77, i64 %t78)
  store i64 %t79, ptr %l47
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l4, !tbaa !24
  br label %bb2
bb32:
  %t84 = load ptr, ptr %lp2
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewhat(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca ptr
  %l16 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l31 = alloca i32
  %l35 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca i32
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca i32
  %l91 = alloca i32
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l13, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l16
  br label %bb2
bb2:
  %t10 = load i1, ptr %l16, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t13, ptr %l19, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  store i64 %t15, ptr %l20, !tbaa !24
  %t16 = load i64, ptr %l20, !tbaa !24
  %t17 = mul i64 %t16, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t17)
  %t19 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l21, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = load i64, ptr %l20, !tbaa !24
  %t26 = mul i64 %t25, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %t24, i64 %t26, i1 false)
  %t27 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t27, ptr %l19, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t28, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l2, !tbaa !29
  store ptr %t29, ptr %l22, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  store ptr %t30, ptr %l23, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l26
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l23, !tbaa !29
  %t37 = load i32, ptr %l26, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t38, ptr %l27
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load i32, ptr %l27, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t41, ptr %l28
  br label %bb8
bb8:
  %t42 = load i32, ptr %l28, !tbaa !23
  store i32 %t42, ptr %l3, !tbaa !23
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t44 = load i32, ptr %l3, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l31
  br label %bb9
bb9:
  %t48 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t50 = trunc i64 18 to i32
  %t51 = icmp eq i32 %t48, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb13
bb11:
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t56 = load i32, ptr %l3, !tbaa !23
  %t59 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t55, i32 %t56)
  store i1 %t59, ptr %l38
  br label %bb12
bb12:
  %t60 = load i1, ptr %l38, !tbaa !21
  %t61 = xor i1 %t60, true
  store i1 %t61, ptr %l35, !tbaa !21
  br label %bb13
bb13:
  %t63 = load i1, ptr %l35, !tbaa !21
  br i1 %t63, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb18
bb15:
  %t64 = load ptr, ptr %l2, !tbaa !29
  store ptr %t64, ptr %l41, !tbaa !29
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t66 = load i32, ptr %l3, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l44
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l41, !tbaa !29
  %t71 = load i32, ptr %l44, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t72, ptr %l45
  br label %bb17
bb17:
  %t73 = load i32, ptr %l45, !range !{i32 0, i32 6}
  %t75 = trunc i64 1 to i32
  %t76 = icmp eq i32 %t73, %t75
  %t78 = xor i1 %t76, true
  store i1 %t78, ptr %l40, !tbaa !21
  br label %bb18
bb18:
  %t80 = load i1, ptr %l40, !tbaa !21
  br i1 %t80, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l49, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t81, ptr %l50, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l51, !tbaa !24
  %t84 = load i64, ptr %l51, !tbaa !24
  %t85 = mul i64 %t84, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l52, !tbaa !27
  %t89 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l51, !tbaa !24
  %t94 = mul i64 %t93, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %t92, i64 %t94, i1 false)
  %t95 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t95, ptr %l50, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t96, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t97 = load ptr, ptr %l2, !tbaa !29
  store ptr %t97, ptr %l53, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t102, ptr %l56
  br label %bb22
bb22:
  %t103 = load ptr, ptr %l53, !tbaa !29
  %t104 = load i32, ptr %l56, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t103, i32 %t104)
  store { i64, ptr } %t105, ptr %l57
  br label %bb23
bb23:
  %t106 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t106, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  store i64 %t109, ptr %l6, !tbaa !24
  br label %bb24
bb24:
  %t111 = load i64, ptr %l5, !tbaa !24
  %t112 = load i64, ptr %l6, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb25, label %bb26
bb25:
  br label %bb47
bb26:
  br label %bb27
bb27:
  %t119 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t119, ptr %l64, !tbaa !27
  %t120 = load i64, ptr %l5, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i32, ptr %t123, i64 %t120
  %t125 = load i32, ptr %t124, !tbaa !33
  %t127 = load ptr, ptr %l2, !tbaa !29
  store ptr %t127, ptr %l67, !tbaa !29
  %t128 = load ptr, ptr %l2, !tbaa !29
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t128, i32 %t125)
  store i32 %t132, ptr %l70
  br label %bb28
bb28:
  %t133 = load ptr, ptr %l67, !tbaa !29
  %t134 = load i32, ptr %l70, !tbaa !23
  %t135 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t133, i32 %t134)
  store { i64, ptr } %t135, ptr %l71
  br label %bb29
bb29:
  %t136 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t136, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  store i64 %t139, ptr %l10, !tbaa !24
  br label %bb30
bb30:
  %t141 = load i64, ptr %l9, !tbaa !24
  %t142 = load i64, ptr %l10, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb31, label %bb32
bb31:
  br label %bb45
bb32:
  br label %bb33
bb33:
  %t149 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t149, ptr %l78, !tbaa !27
  %t150 = load i64, ptr %l9, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr i32, ptr %t153, i64 %t150
  %t155 = load i32, ptr %t154, !tbaa !33
  store i32 %t155, ptr %l11, !tbaa !23
  %t157 = load ptr, ptr %l2, !tbaa !29
  %t158 = load i32, ptr %l11, !tbaa !23
  %t161 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t157, i32 %t158)
  store i1 %t161, ptr %l83
  br label %bb34
bb34:
  %t162 = load i1, ptr %l83, !tbaa !21
  br i1 %t162, label %bb35, label %bb36
bb35:
  %t163 = load ptr, ptr %l2, !tbaa !29
  store ptr %t163, ptr %l85, !tbaa !29
  %t164 = load ptr, ptr %l2, !tbaa !29
  store ptr %t164, ptr %l86, !tbaa !29
  %t165 = load ptr, ptr %l2, !tbaa !29
  %t166 = load i32, ptr %l11, !tbaa !23
  %t169 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t165, i32 %t166)
  store i32 %t169, ptr %l89
  br label %bb37
bb36:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb40
bb37:
  %t170 = load ptr, ptr %l86, !tbaa !29
  %t171 = load i32, ptr %l89, !tbaa !23
  %t172 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t170, i32 %t171)
  store i32 %t172, ptr %l90
  br label %bb38
bb38:
  %t173 = load ptr, ptr %l85, !tbaa !29
  %t174 = load i32, ptr %l90, !tbaa !23
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t173, i32 %t174)
  store i32 %t175, ptr %l91
  br label %bb39
bb39:
  %t176 = load i32, ptr %l3, !tbaa !23
  %t177 = load i32, ptr %l91, !tbaa !23
  %t179 = icmp eq i32 %t177, %t176
  store i1 %t179, ptr %l84, !tbaa !21
  br label %bb40
bb40:
  %t181 = load i1, ptr %l84, !tbaa !21
  br i1 %t181, label %bb41, label %bb42
bb41:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t182, ptr %l95, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 0
  store i64 %t184, ptr %l96, !tbaa !24
  %t185 = load i64, ptr %l96, !tbaa !24
  %t186 = mul i64 %t185, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t186)
  %t188 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  store { i64, ptr } %t189, ptr %l97, !tbaa !27
  %t190 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = load i64, ptr %l96, !tbaa !24
  %t195 = mul i64 %t194, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t191, ptr %t193, i64 %t195, i1 false)
  %t196 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t196, ptr %l95, !tbaa !27
  %t197 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t197, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t198 = load i64, ptr %l9, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l9, !tbaa !24
  br label %bb30
bb45:
  br label %bb46
bb46:
  %t202 = load i64, ptr %l5, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l5, !tbaa !24
  br label %bb24
bb47:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l102, !tbaa !27
  %t206 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t206, ptr %l103, !tbaa !27
  %t207 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t207, 0
  store i64 %t208, ptr %l104, !tbaa !24
  %t209 = load i64, ptr %l104, !tbaa !24
  %t210 = mul i64 %t209, 1
  %t211 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t210)
  %t212 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  store { i64, ptr } %t213, ptr %l105, !tbaa !27
  %t214 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = load i64, ptr %l104, !tbaa !24
  %t219 = mul i64 %t218, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t215, ptr %t217, i64 %t219, i1 false)
  %t220 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t220, ptr %l103, !tbaa !27
  %t221 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t221, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3amustW_2ebinds(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l14 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Alt", ptr %a1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb8
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l14, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l5, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/free:mustW", ptr %t26, i32 0, i32 4
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Bind", ptr %t29, i32 0, i32 0
  %t32 = load i32, ptr %t31, !tbaa !23
  %t34 = sext i32 %t32 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t28, i64 %t34)
  br label %bb5
bb5:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/free:mustW", ptr %t37, i32 0, i32 5
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Bind", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t39, ptr %t43)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l3, !tbaa !24
  br label %bb1
bb8:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexprMust(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i1
  %l61 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i1
  %l70 = alloca i64
  %l71 = alloca ptr
  %l72 = alloca i1
  %l81 = alloca i1
  %l82 = alloca i64
  %l84 = alloca { i64, ptr }
  %l86 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:mustW", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t7 = load ptr, ptr %l13, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l13, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l14, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t15 = load i64, ptr @G_2ecompiler_2ffree_2eMustTop, !tbaa !24
  store i64 %t15, ptr %l12, !tbaa !24
  br label %bb61
bb6:
  %t17 = load ptr, ptr %l1, !tbaa !29
  store ptr %t17, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t18 = load ptr, ptr %l18, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb7, label %bb8
bb7:
  %t21 = load ptr, ptr %l18, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 18}
  %t24 = icmp eq i64 %t22, 2
  store i1 %t24, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t25 = load i1, ptr %l19, !tbaa !21
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t28, i32 0, i32 2
  %t30 = load ptr, ptr %t29
  store ptr %t30, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t36 = call i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eplaceMust(ptr %v0, ptr %v1, ptr %t32, ptr %t33)
  store i64 %t36, ptr %l26
  br label %bb12
bb12:
  %t37 = load i64, ptr %l26, !tbaa !24
  store i64 %t37, ptr %l12, !tbaa !24
  br label %bb61
bb13:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t39 = load ptr, ptr %l27, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l27, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 4
  store i1 %t45, ptr %l28, !tbaa !21
  br label %bb15
bb15:
  %t46 = load i1, ptr %l28, !tbaa !21
  br i1 %t46, label %bb16, label %bb17
bb16:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t54 = load ptr, ptr %l4, !tbaa !29
  %t57 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t53, ptr %t54)
  store i64 %t57, ptr %l35
  br label %bb19
bb19:
  %t58 = load i64, ptr %l35, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  br i1 %t59, label %bb20, label %bb21
bb20:
  %t61 = load i64, ptr @G_2ecompiler_2ffree_2eMovBase, !tbaa !24
  store i64 %t61, ptr %l38, !tbaa !24
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t66 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  store i64 %t66, ptr %l41
  br label %bb22
bb21:
  %t67 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t67, ptr %l37, !tbaa !24
  br label %bb23
bb22:
  %t69 = load i64, ptr %l38, !tbaa !24
  %t70 = load i64, ptr %l41, !tbaa !24
  %t71 = add i64 %t69, %t70
  store i64 %t71, ptr %l37, !tbaa !24
  br label %bb23
bb23:
  %t73 = load i64, ptr %l37, !tbaa !24
  store i64 %t73, ptr %l12, !tbaa !24
  br label %bb61
bb24:
  %t74 = load ptr, ptr %l1, !tbaa !29
  store ptr %t74, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t75 = load ptr, ptr %l44, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb25, label %bb26
bb25:
  %t78 = load ptr, ptr %l44, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 18}
  %t81 = icmp eq i64 %t79, 6
  store i1 %t81, ptr %l45, !tbaa !21
  br label %bb26
bb26:
  %t82 = load i1, ptr %l45, !tbaa !21
  br i1 %t82, label %bb27, label %bb28
bb27:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr { i64, [5 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t85, i32 0, i32 2
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l5, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l5, !tbaa !29
  %t93 = call i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2ecallMust(ptr %v0, ptr %v1, ptr %t89, ptr %t90)
  store i64 %t93, ptr %l52
  br label %bb30
bb30:
  %t94 = load i64, ptr %l52, !tbaa !24
  store i64 %t94, ptr %l12, !tbaa !24
  br label %bb61
bb31:
  %t95 = load ptr, ptr %l1, !tbaa !29
  store ptr %t95, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t96 = load ptr, ptr %l53, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb32, label %bb33
bb32:
  %t99 = load ptr, ptr %l53, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 18}
  %t102 = icmp eq i64 %t100, 14
  store i1 %t102, ptr %l54, !tbaa !21
  br label %bb33
bb33:
  %t103 = load i1, ptr %l54, !tbaa !21
  br i1 %t103, label %bb34, label %bb35
bb34:
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr { i64, [5 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t106, i32 0, i32 2
  %t108 = load ptr, ptr %t107
  store ptr %t108, ptr %l6, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l6, !tbaa !29
  %t114 = call i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2etryMust(ptr %v0, ptr %v1, ptr %t110, ptr %t111)
  store i64 %t114, ptr %l61
  br label %bb37
bb37:
  %t115 = load i64, ptr %l61, !tbaa !24
  store i64 %t115, ptr %l12, !tbaa !24
  br label %bb61
bb38:
  %t116 = load ptr, ptr %l1, !tbaa !29
  store ptr %t116, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t117 = load ptr, ptr %l62, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb39, label %bb40
bb39:
  %t120 = load ptr, ptr %l62, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 18}
  %t123 = icmp eq i64 %t121, 17
  store i1 %t123, ptr %l63, !tbaa !21
  br label %bb40
bb40:
  %t124 = load i1, ptr %l63, !tbaa !21
  br i1 %t124, label %bb41, label %bb42
bb41:
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t127 = getelementptr { i64, [5 x i64] }, ptr %t125, i32 0, i32 1
  %t128 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t127, i32 0, i32 2
  %t129 = load ptr, ptr %t128
  store ptr %t129, ptr %l7, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l7, !tbaa !29
  %t135 = call i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexprMust(ptr %v0, ptr %v1, ptr %t131, ptr %t132)
  store i64 %t135, ptr %l70
  br label %bb44
bb44:
  %t136 = load i64, ptr %l70, !tbaa !24
  store i64 %t136, ptr %l12, !tbaa !24
  br label %bb61
bb45:
  %t137 = load ptr, ptr %l1, !tbaa !29
  store ptr %t137, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t138 = load ptr, ptr %l71, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb46, label %bb47
bb46:
  %t141 = load ptr, ptr %l71, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 18}
  %t144 = icmp eq i64 %t142, 9
  store i1 %t144, ptr %l72, !tbaa !21
  br label %bb47
bb47:
  %t145 = load i1, ptr %l72, !tbaa !21
  br i1 %t145, label %bb48, label %bb49
bb48:
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t148, i32 0, i32 2
  %t150 = load i32, ptr %t149, !range !{i32 0, i32 52}
  store i32 %t150, ptr %l8
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr { i64, [5 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t154, i32 0, i32 4
  %t156 = load { i64, ptr }, ptr %t155
  store { i64, ptr } %t156, ptr %l9, !tbaa !27
  br label %bb50
bb49:
  br label %bb56
bb50:
  %t158 = load i32, ptr %l8, !range !{i32 0, i32 52}
  %t159 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t162 = call i1 @compiler_2ffree_2eisConversion(ptr %v1, i32 %t158, { i64, ptr } %t159)
  store i1 %t162, ptr %l81
  br label %bb51
bb51:
  %t163 = load i1, ptr %l81, !tbaa !21
  br i1 %t163, label %bb52, label %bb53
bb52:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t165, ptr %l84, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr ptr, ptr %t167, i64 0
  %t169 = load ptr, ptr %t168, !tbaa !39
  %t172 = call i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexprMust(ptr %v0, ptr %v1, ptr %t164, ptr %t169)
  store i64 %t172, ptr %l86
  br label %bb54
bb53:
  %t173 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t173, ptr %l82, !tbaa !24
  br label %bb55
bb54:
  %t175 = load i64, ptr %l86, !tbaa !24
  store i64 %t175, ptr %l82, !tbaa !24
  br label %bb55
bb55:
  %t176 = load i64, ptr %l82, !tbaa !24
  store i64 %t176, ptr %l12, !tbaa !24
  br label %bb61
bb56:
  br i1 true, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  %t177 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t177, ptr %l12, !tbaa !24
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_2f86b0bb9e05ec4_6260055ddf2cdd10)
  unreachable
bb61:
  %t179 = load i64, ptr %l12, !tbaa !24
  store i64 %t179, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/free:walker", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/free:Free", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  store ptr %t9, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2earm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca { i64, ptr }
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l44 = alloca i64
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca ptr
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca ptr
  %l79 = alloca i64
  %l81 = alloca ptr
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l11, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2earm_2elocal_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l11, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l11
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l13
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2earm_2elocal_2e2
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l11
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t20, ptr %lp2
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t22 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %t22
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Arm", ptr %t23, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb8:
  br label %bb9
bb9:
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t40, ptr %l23, !tbaa !27
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr ptr, ptr %t44, i64 %t41
  %t46 = load ptr, ptr %t45, !tbaa !39
  store ptr %t46, ptr %l6, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l6, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Alt", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s2, ptr %t48, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l29
  br label %bb10
bb10:
  %t56 = load ptr, ptr %l6, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Alt", ptr %t56, i32 0, i32 1
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t65 = load i64, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s4)
  br label %bb18
bb13:
  br label %bb14
bb14:
  %t73 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t73, ptr %l38, !tbaa !27
  %t74 = load i64, ptr %l8, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr ptr, ptr %t77, i64 %t74
  %t79 = load ptr, ptr %t78, !tbaa !39
  store ptr %t79, ptr %l10, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l41, !tbaa !29
  %t82 = load ptr, ptr %l10, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Bind", ptr %t82, i32 0, i32 0
  %t85 = load i32, ptr %t84, !tbaa !23
  %t87 = sext i32 %t85 to i64
  store i64 %t87, ptr %l44, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l10, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Bind", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s4, ptr %t88, ptr %t92)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l48
  br label %bb15
bb15:
  %t96 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  %t97 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %t97
  %t98 = load ptr, ptr %l41, !tbaa !29
  %t99 = load i64, ptr %l44, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egive(ptr %v0, ptr %s4, ptr %t98, i64 %t99, ptr %t97)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s4)
  br label %bb17
bb17:
  %t101 = load i64, ptr %l8, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l8, !tbaa !24
  br label %bb11
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l4, !tbaa !24
  br label %bb6
bb20:
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Arm", ptr %t109, i32 0, i32 2
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = icmp eq ptr %t112, null
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s7
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l58, !tbaa !29
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Arm", ptr %t119, i32 0, i32 2
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  br i1 %t124, label %bb23, label %bb24
bb22:
  br label %bb27
bb23:
  call void @__olang_check_failed(ptr @olang_loc_304dd9f782c5c299_7aedab6f7faf5da5)
  unreachable
bb24:
  br label %bb25
bb25:
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Arm", ptr %t126, i32 0, i32 2
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load ptr, ptr %l58, !tbaa !29
  %t132 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s7, ptr %t130, ptr %t129)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l64
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s7)
  br label %bb27
bb27:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Arm", ptr %t133, i32 0, i32 3
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = icmp eq ptr %t136, null
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb28, label %bb29
bb28:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l69, !tbaa !29
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr %"compiler/typed:Arm", ptr %t143, i32 0, i32 3
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = icmp eq ptr %t146, null
  br i1 %t148, label %bb30, label %bb31
bb29:
  br label %bb34
bb30:
  call void @__olang_check_failed(ptr @olang_loc_ceff65db82d42b72_bd0ee798a65f80fe)
  unreachable
bb31:
  br label %bb32
bb32:
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr %"compiler/typed:Arm", ptr %t150, i32 0, i32 3
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t154 = load ptr, ptr %l69, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t154, ptr %t153)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t156 = load ptr, ptr %l1, !tbaa !29
  %t158 = getelementptr %"compiler/typed:Arm", ptr %t156, i32 0, i32 4
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = icmp eq ptr %t159, null
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb35, label %bb36
bb35:
  %t165 = ptrtoint ptr %v2 to i64
  store i64 %t165, ptr %l79, !tbaa !24
  %t166 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2earm_2elocal_2e2
  br i1 %t166, label %bb37, label %bb38
bb36:
  br label %bb47
bb37:
  %t168 = call ptr @__olang_region_make(ptr %v2)
  %t169 = ptrtoint ptr %t168 to i64
  store i64 %t169, ptr %l79, !tbaa !24
  br label %bb38
bb38:
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l81, !tbaa !29
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t173 = getelementptr %"compiler/typed:Arm", ptr %t171, i32 0, i32 4
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = icmp eq ptr %t174, null
  br i1 %t176, label %bb39, label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_1c2ece56a8f93bb3_9a04e0623a4a84af)
  unreachable
bb40:
  br label %bb41
bb41:
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = getelementptr %"compiler/typed:Arm", ptr %t178, i32 0, i32 4
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t182 = load i64, ptr %l79
  %t183 = inttoptr i64 %t182 to ptr
  %t184 = load ptr, ptr %l81, !tbaa !29
  %t186 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t183, ptr %t184, ptr %t181)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %l87
  br label %bb42
bb42:
  %t187 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2earm_2elocal_2e2
  br i1 %t187, label %bb43, label %bb44
bb43:
  %t189 = load i64, ptr %l79
  %t190 = inttoptr i64 %t189 to ptr
  %t191 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87, i32 0, i32 0
  %t192 = load { i64, ptr }, ptr %t191
  %t193 = extractvalue { i64, ptr } %t192, 1
  %t194 = call ptr @__olang_region_or(ptr %t193, ptr null)
  %t195 = icmp ne ptr %t194, null
  %t196 = select i1 %t195, ptr %t194, ptr null
  %t197 = icmp eq ptr %t196, %t190
  call void @__olang_region_settle(ptr %t190, i1 %t197)
  br label %bb44
bb44:
  %t198 = load ptr, ptr %lp2
  %t199 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t198
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t199, ptr %l89
  %t200 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  %t201 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %t201
  %t202 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2earm_2elocal_2e2
  br i1 %t202, label %bb45, label %bb46
bb45:
  %t204 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89, i32 0, i32 0
  %t205 = load { i64, ptr }, ptr %t204
  %t206 = extractvalue { i64, ptr } %t205, 1
  %t207 = call ptr @__olang_region_or(ptr %t206, ptr null)
  %t208 = icmp ne ptr %t207, null
  %t209 = select i1 %t208, ptr %t207, ptr null
  call void @__olang_region_drop(ptr %t209)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l89
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t210 = load ptr, ptr %lp2
  %t211 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t210
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t211, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eborrowOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp4 = alloca ptr
  %l9 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t10 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t4, ptr %t7)
  store i64 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t14 = icmp sge i64 %t11, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  store ptr %t17, ptr %l13, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t18)
  store i32 %t20, ptr %l15
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t21 = load ptr, ptr %l12, !tbaa !29
  %t22 = load ptr, ptr %l13, !tbaa !29
  %t23 = load i32, ptr %l15, !tbaa !23
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereadOf(ptr %v0, ptr %v1, ptr %v2, ptr %t21, ptr %t22, i32 %t23)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l16
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %rv
  br label %ret
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %t26, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l19
  br label %bb7
bb7:
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t31, ptr %lp4
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t33 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %t33
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %lp4
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewRead(ptr %v0, ptr %v2, ptr %t34, ptr %t35)
  br label %bb8
bb8:
  %t38 = load ptr, ptr %lp4
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecaptured(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t6, ptr %lp3
  %t7 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t8 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %t8
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %lp3
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %v2, ptr %s0, ptr %t9, ptr %t10, %"compiler/source:Span" %a1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d59, i32 0, i32 1) }, i1 false, i64 -1, i64 -1)
  br label %bb2
bb2:
  %t15 = load ptr, ptr %lp3
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t15
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyStored(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca i64
  %l18 = alloca i1
  %l20 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l29 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i1
  %l41 = alloca i1
  %l44 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca i32
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 4
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store ptr null, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4638628f5b2e3f80_2351d26d56dc1634)
  unreachable
bb15:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/free:walker", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t23, ptr %t24)
  store i64 %t27, ptr %l16
  br label %bb16
bb16:
  %t28 = load i64, ptr %l16, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb22
bb18:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/free:walker", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l20, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t35)
  store i32 %t37, ptr %l22
  br label %bb19
bb19:
  %t38 = load ptr, ptr %l20, !tbaa !29
  %t39 = load i32, ptr %l22, !tbaa !23
  %t40 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v0, ptr %t38, i32 %t39)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l23
  br label %bb20
bb20:
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %l23)
  store i64 %t42, ptr %l25
  br label %bb21
bb21:
  %t43 = load i64, ptr %l25, !tbaa !24
  %t44 = icmp eq i64 %t43, 0
  store i1 %t44, ptr %l18, !tbaa !21
  br label %bb22
bb22:
  %t46 = load i1, ptr %l18, !tbaa !21
  br i1 %t46, label %bb23, label %bb24
bb23:
  store ptr null, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = call i64 @compiler_2ffree_2eownCopySite(ptr %v2, ptr %t48)
  store i64 %t50, ptr %l29
  br label %bb26
bb26:
  %t51 = load i64, ptr %l29, !tbaa !24
  %t52 = icmp sge i64 %t51, 0
  br i1 %t52, label %bb27, label %bb28
bb27:
  %t54 = load ptr, ptr %l2, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t59 = call i64 @compiler_2ffree_2ereadLocalOf(ptr %v2, ptr %t57)
  store i64 %t59, ptr %l34
  br label %bb30
bb30:
  %t60 = load i64, ptr %l34, !tbaa !24
  store i64 %t60, ptr %l3, !tbaa !24
  %t61 = load i64, ptr %l3, !tbaa !24
  %t63 = icmp slt i64 %t61, 0
  br i1 %t63, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb34
bb32:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/free:walker", ptr %t65, i32 0, i32 33
  %t68 = load i64, ptr %l3, !tbaa !24
  %t71 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %t67, i64 %t68)
  store i1 %t71, ptr %l41
  br label %bb33
bb33:
  %t72 = load i1, ptr %l41, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l37, !tbaa !21
  br label %bb34
bb34:
  %t75 = load i1, ptr %l37, !tbaa !21
  br i1 %t75, label %bb35, label %bb36
bb35:
  store ptr null, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/free:walker", ptr %t77, i32 0, i32 33
  %t80 = load i64, ptr %l3, !tbaa !24
  %t83 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v3, ptr %t79, i64 %t80)
  %t84 = extractvalue { i32, ptr } %t83, 1
  %t85 = extractvalue { i32, ptr } %t83, 0
  store i32 %t85, ptr %l49
  %t86 = icmp ne i32 %t85, 0
  br i1 %t86, label %bb39, label %ok.87, !prof !99
ok.87:
  store ptr %t84, ptr %l48
  br label %bb38
bb38:
  %t88 = load ptr, ptr %l48, !tbaa !29
  store ptr %t88, ptr %l44, !tbaa !29
  br label %bb42
bb39:
  %t89 = load i32, ptr %l49, !tbaa !23
  %t90 = icmp eq i32 %t89, 65536
  br i1 %t90, label %bb40, label %bb41
bb40:
  call void @__olang_bang_failed_plain(ptr @olang_loc_95c175a58ff05fe9_ec975816cf48fd1d)
  unreachable
bb41:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c3a39e1a8321cbe9_14cb6b0bd5f3e345)
  unreachable
bb42:
  %t92 = load ptr, ptr %l44, !tbaa !29
  store ptr %t92, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2edtorCalls(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l13 = alloca i1
  %l14 = alloca i32
  %l17 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t7 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %a2)
  store i32 %t7, ptr %l8
  br label %bb2
bb2:
  %t8 = load i32, ptr %l8, !tbaa !23
  store i32 %t8, ptr %l4, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l9, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l10
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t12 = load i32, ptr %l4, !tbaa !23
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l13
  br label %bb3
bb3:
  %t16 = load i1, ptr %l13, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i32, ptr %l4, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l17
  br label %bb6
bb5:
  %t22 = load i32, ptr %l4, !tbaa !23
  store i32 %t22, ptr %l14, !tbaa !23
  br label %bb7
bb6:
  %t24 = load i32, ptr %l17, !tbaa !23
  store i32 %t24, ptr %l14, !tbaa !23
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l9, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l10
  %t27 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2edtorCallsOf(ptr %v0, ptr %t25, %"compiler/source:Span" %t26, i32 %t27)
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eeval(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/free:leaf"
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca ptr
  %l18 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l32 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca i64
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca %"compiler/source:Span"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i64
  %l48 = alloca i64
  %l53 = alloca %"compiler/free:leaf"
  %l55 = alloca %"compiler/free:leaf"
  %l56 = alloca ptr
  %l57 = alloca i64
  %l58 = alloca i64
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca %"compiler/source:Span"
  %l66 = alloca ptr
  %l71 = alloca i64
  %l73 = alloca i64
  %l78 = alloca i64
  %l80 = alloca i64
  %l83 = alloca ptr
  %l85 = alloca i64
  %l86 = alloca i64
  %l88 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/source:Span"
  %l92 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l3
  %t7 = load ptr, ptr %l2, !tbaa !29
  store ptr %t7, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t8 = load ptr, ptr %l17, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l17, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 18}
  %t14 = icmp eq i64 %t12, 9
  store i1 %t14, ptr %l18, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l18, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t17 = load ptr, ptr %l21, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb8, label %bb9
bb8:
  %t20 = load ptr, ptr %l21, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 4
  store i1 %t23, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l22, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 1
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l4, !tbaa !23
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb33
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/free:walker", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t44 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t40, ptr %t41)
  store i64 %t44, ptr %l32
  br label %bb13
bb13:
  %t45 = load i64, ptr %l32, !tbaa !24
  store i64 %t45, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp sge i64 %t46, 0
  br i1 %t48, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l35, !tbaa !29
  %t51 = load i64, ptr %l6, !tbaa !24
  store i64 %t51, ptr %l36, !tbaa !24
  %t52 = load i64, ptr @G_2ecompiler_2ffree_2eLVacate, !tbaa !24
  store i64 %t52, ptr %l37, !tbaa !24
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t55 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t53)
  store %"compiler/source:Span" %t55, ptr %l39
  br label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/free:walker", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t60 = load i32, ptr %l4, !tbaa !23
  %t63 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %s5, ptr %t59, i32 %t60)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l44
  br label %bb19
bb16:
  %t64 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 0, i32 0)
  store %"compiler/source:Span" %t64, ptr %l40
  br label %bb17
bb17:
  %t65 = load ptr, ptr %l35, !tbaa !29
  %t66 = load i64, ptr %l36, !tbaa !24
  %t67 = load i64, ptr %l37, !tbaa !24
  %t68 = load %"compiler/source:Span", ptr %l39
  %t69 = load %"compiler/source:Span", ptr %l40
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t65, i64 %t66, i64 %t67, %"compiler/source:Span" %t68, %"compiler/source:Span" %t69, i64 -1)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb19:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  %t71 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %t71
  store ptr %t71, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s6
  %t73 = load i64, ptr %l8, !tbaa !24
  store i64 %t73, ptr %l46, !tbaa !24
  %t74 = load ptr, ptr %l7, !tbaa !29
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s5, ptr %t74)
  store i64 %t76, ptr %l48
  br label %bb21
bb21:
  %t77 = load i64, ptr %l46, !tbaa !24
  %t78 = load i64, ptr %l48, !tbaa !24
  %t79 = icmp slt i64 %t77, %t78
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s6)
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t83 = load ptr, ptr %l7, !tbaa !29
  %t84 = load i64, ptr %l8, !tbaa !24
  %t87 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %s5, ptr %s5, ptr %t83, i64 %t84)
  store %"compiler/free:leaf" %t87, ptr %l53
  br label %bb25
bb25:
  %t89 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s6, ptr %l53)
  store %"compiler/free:leaf" %t89, ptr %l55
  br label %bb26
bb26:
  %t90 = load %"compiler/free:leaf", ptr %l55
  store %"compiler/free:leaf" %t90, ptr %l9
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l56, !tbaa !29
  %t92 = getelementptr %"compiler/free:leaf", ptr %l9, i32 0, i32 1
  %t93 = load i64, ptr %t92, !tbaa !24
  store i64 %t93, ptr %l57, !tbaa !24
  %t94 = load i64, ptr @G_2ecompiler_2ffree_2eLVacate, !tbaa !24
  store i64 %t94, ptr %l58, !tbaa !24
  %t95 = load ptr, ptr %l5, !tbaa !29
  %t97 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t95)
  store %"compiler/source:Span" %t97, ptr %l60
  br label %bb27
bb27:
  %t98 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 0, i32 0)
  store %"compiler/source:Span" %t98, ptr %l61
  br label %bb28
bb28:
  %t99 = load ptr, ptr %l56, !tbaa !29
  %t100 = load i64, ptr %l57, !tbaa !24
  %t101 = load i64, ptr %l58, !tbaa !24
  %t102 = load %"compiler/source:Span", ptr %l60
  %t103 = load %"compiler/source:Span", ptr %l61
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t99, i64 %t100, i64 %t101, %"compiler/source:Span" %t102, %"compiler/source:Span" %t103, i64 -1)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s6)
  br label %bb30
bb30:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l8, !tbaa !24
  br label %bb20
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_5c8710160ed2ee88_42fe4478e6ab17dc)
  unreachable
bb38:
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t111 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t108)
  store ptr %t111, ptr %l66
  br label %bb39
bb39:
  %t112 = load ptr, ptr %l66, !tbaa !29
  store ptr %t112, ptr %l10, !tbaa !29
  %t113 = load ptr, ptr %l10, !tbaa !29
  %t115 = icmp eq ptr %t113, null
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb40, label %bb41
bb40:
  store ptr %l3, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb42
bb41:
  br label %bb59
bb42:
  %t120 = load i64, ptr %l12, !tbaa !24
  store i64 %t120, ptr %l71, !tbaa !24
  %t121 = load ptr, ptr %l11, !tbaa !29
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t121)
  store i64 %t123, ptr %l73
  br label %bb43
bb43:
  %t124 = load i64, ptr %l71, !tbaa !24
  %t125 = load i64, ptr %l73, !tbaa !24
  %t126 = icmp slt i64 %t124, %t125
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb44, label %bb45
bb44:
  br label %bb58
bb45:
  br label %bb46
bb46:
  %t130 = load ptr, ptr %l11, !tbaa !29
  %t131 = load i64, ptr %l12, !tbaa !24
  %t134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t130, i64 %t131)
  store i64 %t134, ptr %l78
  br label %bb47
bb47:
  %t135 = load i64, ptr %l78, !tbaa !24
  store i64 %t135, ptr %l13, !tbaa !24
  %t136 = load i64, ptr %l13, !tbaa !24
  %t138 = call i64 @compiler_2ffree_2eokind(i64 %t136)
  store i64 %t138, ptr %l80
  br label %bb48
bb48:
  %t139 = load i64, ptr @G_2ecompiler_2ffree_2eOMov, !tbaa !24
  %t140 = load i64, ptr %l80, !tbaa !24
  %t142 = icmp eq i64 %t140, %t139
  br i1 %t142, label %bb49, label %bb50
bb49:
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l83, !tbaa !29
  %t145 = load i64, ptr %l13, !tbaa !24
  %t147 = call i64 @compiler_2ffree_2eoval(i64 %t145)
  store i64 %t147, ptr %l85
  br label %bb51
bb50:
  br label %bb56
bb51:
  %t148 = load i64, ptr @G_2ecompiler_2ffree_2eLDrop, !tbaa !24
  store i64 %t148, ptr %l86, !tbaa !24
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t151 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t149)
  store %"compiler/source:Span" %t151, ptr %l88
  br label %bb52
bb52:
  %t152 = load ptr, ptr %l10, !tbaa !29
  %t154 = call %"compiler/source:Span" @compiler_2ffree_2ereceiverSpan(ptr %v1, ptr %t152)
  store %"compiler/source:Span" %t154, ptr %l90
  br label %bb53
bb53:
  %t155 = load ptr, ptr %l10, !tbaa !29
  %t157 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t155)
  store i64 %t157, ptr %l92
  br label %bb54
bb54:
  %t158 = load ptr, ptr %l83, !tbaa !29
  %t159 = load i64, ptr %l85, !tbaa !24
  %t160 = load i64, ptr %l86, !tbaa !24
  %t161 = load %"compiler/source:Span", ptr %l88
  %t162 = load %"compiler/source:Span", ptr %l90
  %t163 = load i64, ptr %l92, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t158, i64 %t159, i64 %t160, %"compiler/source:Span" %t161, %"compiler/source:Span" %t162, i64 %t163)
  br label %bb55
bb55:
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t164 = load i64, ptr %l12, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l12, !tbaa !24
  br label %bb42
bb58:
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexclusive(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
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
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i1
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i1
  %l51 = alloca i64
  %l55 = alloca i64
  %l60 = alloca i64
  %l63 = alloca i1
  %l64 = alloca i64
  %l68 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i1
  %l77 = alloca i64
  %l81 = alloca i64
  %l86 = alloca i64
  %l89 = alloca i1
  %l90 = alloca i64
  %l94 = alloca i64
  %l97 = alloca i1
  %l99 = alloca i1
  %l101 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/free:walker", ptr %t8, i32 0, i32 16
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l19
  br label %bb4
bb4:
  %t13 = load i64, ptr %l19, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb10
bb7:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l26, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l26, !tbaa !24
  store i64 %t40, ptr %l23, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l23, !tbaa !24
  store i64 %t41, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb12, label %bb13
bb12:
  br label %bb48
bb13:
  br label %bb14
bb14:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l8, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/free:walker", ptr %t60, i32 0, i32 16
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t62, i64 %t63)
  store i64 %t66, ptr %l47
  br label %bb15
bb15:
  %t67 = load i64, ptr %l1, !tbaa !24
  %t68 = load i64, ptr %l47, !tbaa !24
  %t70 = icmp sle i64 %t68, %t67
  br i1 %t70, label %bb16, label %bb17
bb16:
  %t72 = load i64, ptr %l1, !tbaa !24
  store i64 %t72, ptr %l51, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/free:walker", ptr %t73, i32 0, i32 17
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t75, i64 %t76)
  store i64 %t79, ptr %l55
  br label %bb18
bb17:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb19
bb18:
  %t80 = load i64, ptr %l51, !tbaa !24
  %t81 = load i64, ptr %l55, !tbaa !24
  %t82 = icmp sle i64 %t80, %t81
  store i1 %t82, ptr %l50, !tbaa !21
  br label %bb19
bb19:
  %t84 = load i1, ptr %l50, !tbaa !21
  store i1 %t84, ptr %l9, !tbaa !21
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/free:walker", ptr %t85, i32 0, i32 18
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t87, i64 %t88)
  store i64 %t91, ptr %l60
  br label %bb20
bb20:
  %t92 = load i64, ptr %l1, !tbaa !24
  %t93 = load i64, ptr %l60, !tbaa !24
  %t95 = icmp sle i64 %t93, %t92
  br i1 %t95, label %bb21, label %bb22
bb21:
  %t97 = load i64, ptr %l1, !tbaa !24
  store i64 %t97, ptr %l64, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/free:walker", ptr %t98, i32 0, i32 19
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t100, i64 %t101)
  store i64 %t104, ptr %l68
  br label %bb23
bb22:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb24
bb23:
  %t105 = load i64, ptr %l64, !tbaa !24
  %t106 = load i64, ptr %l68, !tbaa !24
  %t107 = icmp sle i64 %t105, %t106
  store i1 %t107, ptr %l63, !tbaa !21
  br label %bb24
bb24:
  %t109 = load i1, ptr %l63, !tbaa !21
  store i1 %t109, ptr %l10, !tbaa !21
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/free:walker", ptr %t110, i32 0, i32 16
  %t113 = load i64, ptr %l8, !tbaa !24
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t112, i64 %t113)
  store i64 %t116, ptr %l73
  br label %bb25
bb25:
  %t117 = load i64, ptr %l2, !tbaa !24
  %t118 = load i64, ptr %l73, !tbaa !24
  %t120 = icmp sle i64 %t118, %t117
  br i1 %t120, label %bb26, label %bb27
bb26:
  %t122 = load i64, ptr %l2, !tbaa !24
  store i64 %t122, ptr %l77, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/free:walker", ptr %t123, i32 0, i32 17
  %t126 = load i64, ptr %l8, !tbaa !24
  %t129 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t125, i64 %t126)
  store i64 %t129, ptr %l81
  br label %bb28
bb27:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb29
bb28:
  %t130 = load i64, ptr %l77, !tbaa !24
  %t131 = load i64, ptr %l81, !tbaa !24
  %t132 = icmp sle i64 %t130, %t131
  store i1 %t132, ptr %l76, !tbaa !21
  br label %bb29
bb29:
  %t134 = load i1, ptr %l76, !tbaa !21
  store i1 %t134, ptr %l11, !tbaa !21
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/free:walker", ptr %t135, i32 0, i32 18
  %t138 = load i64, ptr %l8, !tbaa !24
  %t141 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t137, i64 %t138)
  store i64 %t141, ptr %l86
  br label %bb30
bb30:
  %t142 = load i64, ptr %l2, !tbaa !24
  %t143 = load i64, ptr %l86, !tbaa !24
  %t145 = icmp sle i64 %t143, %t142
  br i1 %t145, label %bb31, label %bb32
bb31:
  %t147 = load i64, ptr %l2, !tbaa !24
  store i64 %t147, ptr %l90, !tbaa !24
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/free:walker", ptr %t148, i32 0, i32 19
  %t151 = load i64, ptr %l8, !tbaa !24
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t150, i64 %t151)
  store i64 %t154, ptr %l94
  br label %bb33
bb32:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb34
bb33:
  %t155 = load i64, ptr %l90, !tbaa !24
  %t156 = load i64, ptr %l94, !tbaa !24
  %t157 = icmp sle i64 %t155, %t156
  store i1 %t157, ptr %l89, !tbaa !21
  br label %bb34
bb34:
  %t159 = load i1, ptr %l89, !tbaa !21
  store i1 %t159, ptr %l12, !tbaa !21
  %t160 = load i1, ptr %l9, !tbaa !21
  br i1 %t160, label %bb35, label %bb36
bb35:
  %t162 = load i1, ptr %l12, !tbaa !21
  store i1 %t162, ptr %l97, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb37
bb37:
  %t164 = load i1, ptr %l97, !tbaa !21
  br i1 %t164, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb43
bb39:
  %t165 = load i1, ptr %l10, !tbaa !21
  br i1 %t165, label %bb40, label %bb41
bb40:
  %t167 = load i1, ptr %l11, !tbaa !21
  store i1 %t167, ptr %l101, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb42
bb42:
  %t169 = load i1, ptr %l101, !tbaa !21
  store i1 %t169, ptr %l99, !tbaa !21
  br label %bb43
bb43:
  %t170 = load i1, ptr %l99, !tbaa !21
  br i1 %t170, label %bb44, label %bb45
bb44:
  store i1 true, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t172 = load i64, ptr %l7, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l7, !tbaa !24
  br label %bb11
bb48:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efreshRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca i1
  %l45 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca i1
  %l50 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l56 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l78 = alloca i1
  %l79 = alloca i1
  %l83 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i64
  %l92 = alloca ptr
  %l93 = alloca i64
  %l96 = alloca i64
  %l98 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i64
  %l104 = alloca i1
  %l105 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l3, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l2, !tbaa !24
  br label %bb54
bb6:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t21 = load ptr, ptr %l17, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l4, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t39 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efreshRoot(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  store i64 %t39, ptr %l25
  br label %bb12
bb12:
  %t40 = load i64, ptr %l25, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
bb13:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t42 = load ptr, ptr %l26, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l26, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 8}
  %t48 = icmp eq i64 %t46, 4
  store i1 %t48, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l27, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t52, i32 0, i32 2
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l5, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l5, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Elem", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t63 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efreshRoot(ptr %v0, ptr %v1, ptr %t56, ptr %t60)
  store i64 %t63, ptr %l35
  br label %bb19
bb19:
  %t64 = load i64, ptr %l35, !tbaa !24
  store i64 %t64, ptr %rv
  br label %ret
bb20:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t66 = load ptr, ptr %l36, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t69 = load ptr, ptr %l36, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 8}
  %t72 = icmp eq i64 %t70, 5
  store i1 %t72, ptr %l37, !tbaa !21
  br label %bb22
bb22:
  %t73 = load i1, ptr %l37, !tbaa !21
  br i1 %t73, label %bb23, label %bb24
bb23:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l6, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l6, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Payload", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t87 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efreshRoot(ptr %v0, ptr %v1, ptr %t80, ptr %t84)
  store i64 %t87, ptr %l45
  br label %bb26
bb26:
  %t88 = load i64, ptr %l45, !tbaa !24
  store i64 %t88, ptr %rv
  br label %ret
bb27:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb28, label %bb29
bb28:
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 8}
  %t96 = icmp eq i64 %t94, 2
  store i1 %t96, ptr %l47, !tbaa !21
  br label %bb29
bb29:
  %t97 = load i1, ptr %l47, !tbaa !21
  br i1 %t97, label %bb30, label %bb31
bb30:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t100, i32 0, i32 2
  %t102 = load ptr, ptr %t101
  store ptr %t102, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t103 = load ptr, ptr %l52, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb32, label %bb33
bb31:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb39
bb32:
  %t106 = load ptr, ptr %l52, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 18}
  %t109 = icmp eq i64 %t107, 2
  store i1 %t109, ptr %l53, !tbaa !21
  br label %bb33
bb33:
  %t110 = load i1, ptr %l53, !tbaa !21
  br i1 %t110, label %bb34, label %bb35
bb34:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %t114
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t120 = load ptr, ptr %l59, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb36, label %bb37
bb35:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb38
bb36:
  %t123 = load ptr, ptr %l59, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 8}
  %t126 = icmp eq i64 %t124, 0
  store i1 %t126, ptr %l60, !tbaa !21
  br label %bb37
bb37:
  %t127 = load i1, ptr %l60, !tbaa !21
  store i1 %t127, ptr %l56, !tbaa !21
  br label %bb38
bb38:
  %t128 = load i1, ptr %l56, !tbaa !21
  store i1 %t128, ptr %l50, !tbaa !21
  br label %bb39
bb39:
  %t129 = load i1, ptr %l50, !tbaa !21
  br i1 %t129, label %bb40, label %bb41
bb40:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t132, i32 0, i32 2
  %t134 = load ptr, ptr %t133
  %t136 = getelementptr { i64, [5 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t136, i32 0, i32 2
  %t138 = load ptr, ptr %t137
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t140, i32 0, i32 2
  %t142 = load i32, ptr %t141
  store i32 %t142, ptr %l7, !tbaa !23
  br label %bb42
bb41:
  br label %bb43
bb42:
  %t144 = load i32, ptr %l7, !tbaa !23
  %t146 = sext i32 %t144 to i64
  store i64 %t146, ptr %l2, !tbaa !24
  br label %bb54
bb43:
  %t148 = load ptr, ptr %l1, !tbaa !29
  store ptr %t148, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t149 = load ptr, ptr %l69, !tbaa !29
  %t150 = icmp ne ptr %t149, null
  br i1 %t150, label %bb44, label %bb45
bb44:
  %t152 = load ptr, ptr %l69, !tbaa !29
  %t153 = load i64, ptr %t152, !range !{i64 0, i64 8}
  %t155 = icmp eq i64 %t153, 2
  store i1 %t155, ptr %l70, !tbaa !21
  br label %bb45
bb45:
  %t156 = load i1, ptr %l70, !tbaa !21
  br i1 %t156, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i64 -1, ptr %rv
  br label %ret
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i64 -1, ptr %rv
  br label %ret
bb53:
  call void @__olang_check_failed(ptr @olang_loc_e32699ce7a94654a_1a46213a714ace46)
  unreachable
bb54:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/free:walker", ptr %t159, i32 0, i32 6
  %t162 = load i64, ptr %l2, !tbaa !24
  %t165 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t161, i64 %t162)
  store i1 %t165, ptr %l78
  br label %bb55
bb55:
  %t166 = load i1, ptr %l78, !tbaa !21
  br i1 %t166, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb59
bb57:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/free:walker", ptr %t167, i32 0, i32 7
  %t170 = load i64, ptr %l2, !tbaa !24
  %t173 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t169, i64 %t170)
  store i1 %t173, ptr %l83
  br label %bb58
bb58:
  %t174 = load i1, ptr %l83, !tbaa !21
  store i1 %t174, ptr %l79, !tbaa !21
  br label %bb59
bb59:
  %t175 = load i1, ptr %l79, !tbaa !21
  br i1 %t175, label %bb60, label %bb61
bb60:
  store i64 -1, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/free:walker", ptr %t177, i32 0, i32 0
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/free:Free", ptr %t180, i32 0, i32 59
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/free:walker", ptr %t183, i32 0, i32 1
  %t186 = load i64, ptr %t185, !tbaa !24
  %t189 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_Ha64a825bb0b4fc6c7596ac96329c2853(ptr %v0, ptr %v0, ptr %t182, i64 %t186)
  store ptr %t189, ptr %l90
  br label %bb63
bb63:
  %t190 = load ptr, ptr %l90, !tbaa !29
  store ptr %t190, ptr %l8, !tbaa !29
  %t191 = load i64, ptr %l2, !tbaa !24
  store i64 %t191, ptr %l91, !tbaa !24
  %t192 = load ptr, ptr %l8, !tbaa !29
  store ptr %t192, ptr %l92, !tbaa !29
  %t193 = ptrtoint ptr %v0 to i64
  store i64 %t193, ptr %l93, !tbaa !24
  %t194 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2e_2d1
  br i1 %t194, label %bb64, label %bb65
bb64:
  %t196 = load ptr, ptr %l92, !tbaa !29
  %t197 = call ptr @__olang_region_or(ptr %t196, ptr %v0)
  %t198 = ptrtoint ptr %t197 to i64
  store i64 %t198, ptr %l93, !tbaa !24
  br label %bb65
bb65:
  %t199 = load ptr, ptr %l8, !tbaa !29
  %t200 = load i64, ptr %l93
  %t201 = inttoptr i64 %t200 to ptr
  %t203 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %t201, ptr %t199)
  store i64 %t203, ptr %l96
  br label %bb66
bb66:
  %t204 = load i64, ptr %l91, !tbaa !24
  %t205 = load i64, ptr %l96, !tbaa !24
  %t206 = icmp slt i64 %t204, %t205
  br i1 %t206, label %bb67, label %bb68
bb67:
  %t208 = load ptr, ptr %l8, !tbaa !29
  store ptr %t208, ptr %l99, !tbaa !29
  %t209 = ptrtoint ptr %v0 to i64
  store i64 %t209, ptr %l100, !tbaa !24
  %t210 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2e_2d1
  br i1 %t210, label %bb69, label %bb70
bb68:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb72
bb69:
  %t212 = load ptr, ptr %l99, !tbaa !29
  %t213 = call ptr @__olang_region_or(ptr %t212, ptr %v0)
  %t214 = ptrtoint ptr %t213 to i64
  store i64 %t214, ptr %l100, !tbaa !24
  br label %bb70
bb70:
  %t215 = load ptr, ptr %l8, !tbaa !29
  %t216 = load i64, ptr %l2, !tbaa !24
  %t217 = load i64, ptr %l100
  %t218 = inttoptr i64 %t217 to ptr
  %t221 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %t218, ptr %t215, i64 %t216)
  store i1 %t221, ptr %l104
  br label %bb71
bb71:
  %t222 = load i1, ptr %l104, !tbaa !21
  store i1 %t222, ptr %l98, !tbaa !21
  br label %bb72
bb72:
  %t223 = load i1, ptr %l98, !tbaa !21
  br i1 %t223, label %bb73, label %bb74
bb73:
  %t224 = load i64, ptr %l2, !tbaa !24
  store i64 %t224, ptr %l105, !tbaa !24
  br label %bb75
bb74:
  store i64 -1, ptr %l105, !tbaa !24
  br label %bb75
bb75:
  %t226 = load i64, ptr %l105, !tbaa !24
  store i64 %t226, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/source:Span" %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca i64
  %l42 = alloca ptr
  %l46 = alloca i1
  %l49 = alloca i64
  %l51 = alloca i64
  %l53 = alloca ptr
  %l56 = alloca i64
  %l58 = alloca i64
  %l74 = alloca i1
  %l78 = alloca i1
  %l83 = alloca i1
  %l88 = alloca ptr
  %l91 = alloca i64
  %l93 = alloca ptr
  %l94 = alloca i64
  %l96 = alloca i64
  %l98 = alloca ptr
  %l100 = alloca i64
  %l102 = alloca %"compiler/source:Span"
  %l103 = alloca %"compiler/source:Span"
  %l104 = alloca i64
  %l105 = alloca %"compiler/source:Span"
  %l106 = alloca i64
  %l110 = alloca i1
  %l112 = alloca i1
  %l113 = alloca %"compiler/free:letGo"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/free:walker", ptr %t6, i32 0, i32 2
  %t9 = load i1, ptr %t8, !tbaa !21
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  br label %bb15
bb3:
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t19 = getelementptr %"compiler/free:Free", ptr %t17, i32 0, i32 35
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/free:walker", ptr %t20, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t26 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t19, i64 %t23)
  store i1 %t26, ptr %l19
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb6
bb5:
  %t27 = load i1, ptr %l19, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t31 = load ptr, ptr %l6, !tbaa !29
  %t33 = getelementptr %"compiler/free:Free", ptr %t31, i32 0, i32 34
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/free:walker", ptr %t34, i32 0, i32 1
  %t37 = load i64, ptr %t36, !tbaa !24
  %t40 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t33, i64 %t37)
  store ptr %t40, ptr %l26
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb9:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load ptr, ptr %l26, !tbaa !29
  %t44 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t42, i64 %t41)
  store i64 %t44, ptr %l28
  br label %bb10
bb10:
  %t45 = load i64, ptr %l28, !tbaa !24
  %t46 = icmp sgt i64 %t45, 0
  store i1 %t46, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t48 = load i1, ptr %l21, !tbaa !21
  br i1 %t48, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l6, !tbaa !29
  %t51 = getelementptr %"compiler/free:Free", ptr %t49, i32 0, i32 40
  store i1 true, ptr %t51, !tbaa !21
  br label %bb14
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/free:walker", ptr %t52, i32 0, i32 29
  %t55 = load i64, ptr %t54, !tbaa !24
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  br label %bb18
bb18:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/free:walker", ptr %t59, i32 0, i32 44
  %t62 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t61, i64 %t62)
  br label %bb19
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/free:walker", ptr %t65, i32 0, i32 45
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/free:walker", ptr %t68, i32 0, i32 12
  %t71 = load i64, ptr %t70, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t67, i64 %t71)
  br label %bb20
bb20:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/free:walker", ptr %t74, i32 0, i32 36
  store ptr %t76, ptr %l42, !tbaa !29
  %t77 = load i64, ptr %l2, !tbaa !24
  %t78 = load i64, ptr @G_2ecompiler_2ffree_2eLHeld, !tbaa !24
  %t81 = icmp eq i64 %t77, %t78
  br i1 %t81, label %bb21, label %bb22
bb21:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/free:walker", ptr %t83, i32 0, i32 54
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l49
  br label %bb23
bb22:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb24
bb23:
  %t88 = load i64, ptr %l49, !tbaa !24
  %t89 = icmp sgt i64 %t88, 0
  store i1 %t89, ptr %l46, !tbaa !21
  br label %bb24
bb24:
  %t91 = load i1, ptr %l46, !tbaa !21
  br i1 %t91, label %bb25, label %bb26
bb25:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/free:walker", ptr %t92, i32 0, i32 54
  store ptr %t94, ptr %l53, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/free:walker", ptr %t95, i32 0, i32 54
  %t99 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t97)
  store i64 %t99, ptr %l56
  br label %bb27
bb26:
  store i64 -1, ptr %l51, !tbaa !24
  br label %bb29
bb27:
  %t100 = load i64, ptr %l56, !tbaa !24
  %t101 = sub i64 %t100, 1
  %t102 = load ptr, ptr %l53, !tbaa !29
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t102, i64 %t101)
  store i64 %t104, ptr %l58
  br label %bb28
bb28:
  %t105 = load i64, ptr %l58, !tbaa !24
  store i64 %t105, ptr %l51, !tbaa !24
  br label %bb29
bb29:
  %t106 = load ptr, ptr %l42, !tbaa !29
  %t107 = load i64, ptr %l51, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t106, i64 %t107)
  br label %bb30
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/free:walker", ptr %t108, i32 0, i32 46
  %t111 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t110, i64 %t111)
  br label %bb31
bb31:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/free:walker", ptr %t114, i32 0, i32 47
  %t117 = load %"compiler/source:Span", ptr %l3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t116, %"compiler/source:Span" %t117)
  br label %bb32
bb32:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/free:walker", ptr %t120, i32 0, i32 48
  %t123 = load %"compiler/source:Span", ptr %l4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t122, %"compiler/source:Span" %t123)
  br label %bb33
bb33:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/free:walker", ptr %t126, i32 0, i32 49
  %t129 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t128, i64 %t129)
  br label %bb34
bb34:
  %t132 = load i64, ptr %l2, !tbaa !24
  %t133 = load i64, ptr @G_2ecompiler_2ffree_2eLYield, !tbaa !24
  %t136 = icmp eq i64 %t132, %t133
  br i1 %t136, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb41
bb36:
  %t138 = load i64, ptr %l2, !tbaa !24
  %t139 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  %t142 = icmp eq i64 %t138, %t139
  br i1 %t142, label %bb37, label %bb38
bb37:
  %t144 = load ptr, ptr %l6, !tbaa !29
  %t146 = getelementptr %"compiler/free:Free", ptr %t144, i32 0, i32 23
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/free:walker", ptr %t147, i32 0, i32 1
  %t150 = load i64, ptr %t149, !tbaa !24
  %t153 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t146, i64 %t150)
  store i1 %t153, ptr %l83
  br label %bb39
bb38:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb40
bb39:
  %t154 = load i1, ptr %l83, !tbaa !21
  %t155 = xor i1 %t154, true
  store i1 %t155, ptr %l78, !tbaa !21
  br label %bb40
bb40:
  %t157 = load i1, ptr %l78, !tbaa !21
  store i1 %t157, ptr %l74, !tbaa !21
  br label %bb41
bb41:
  %t158 = load i1, ptr %l74, !tbaa !21
  br i1 %t158, label %bb42, label %bb43
bb42:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/free:walker", ptr %t159, i32 0, i32 50
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t161, i64 -1)
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb45:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/free:walker", ptr %t163, i32 0, i32 50
  store ptr %t165, ptr %l88, !tbaa !29
  %t166 = load ptr, ptr %l6, !tbaa !29
  %t168 = getelementptr %"compiler/free:Free", ptr %t166, i32 0, i32 47
  %t170 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t168)
  store i64 %t170, ptr %l91
  br label %bb46
bb46:
  %t171 = load ptr, ptr %l88, !tbaa !29
  %t172 = load i64, ptr %l91, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t171, i64 %t172)
  br label %bb47
bb47:
  %t173 = load ptr, ptr %l6, !tbaa !29
  %t175 = getelementptr %"compiler/free:Free", ptr %t173, i32 0, i32 47
  store ptr %t175, ptr %l93, !tbaa !29
  %t176 = load i64, ptr %l1, !tbaa !24
  store i64 %t176, ptr %l94, !tbaa !24
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/free:walker", ptr %t177, i32 0, i32 1
  %t180 = load i64, ptr %t179, !tbaa !24
  store i64 %t180, ptr %l96, !tbaa !24
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t181)
  store ptr %t183, ptr %l98
  br label %bb48
bb48:
  %t184 = load ptr, ptr %l98, !tbaa !29
  %t186 = getelementptr %"compiler/typed:Body", ptr %t184, i32 0, i32 3
  %t187 = load i64, ptr %t186, !tbaa !24
  store i64 %t187, ptr %l100, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/free:walker", ptr %t188, i32 0, i32 41
  %t191 = load %"compiler/source:Span", ptr %t190
  store %"compiler/source:Span" %t191, ptr %l102
  %t192 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t192, ptr %l103
  %t193 = load i64, ptr %l2, !tbaa !24
  store i64 %t193, ptr %l104, !tbaa !24
  %t194 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t194, ptr %l105
  %t195 = load i64, ptr %l5, !tbaa !24
  store i64 %t195, ptr %l106, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/free:walker", ptr %t196, i32 0, i32 23
  %t199 = load i64, ptr %t198, !tbaa !24
  %t201 = icmp sgt i64 %t199, 0
  br i1 %t201, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l110, !tbaa !21
  br label %bb52
bb50:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2erunsAgain(ptr %v0, ptr %t203)
  store i1 %t205, ptr %l112
  br label %bb51
bb51:
  %t206 = load i1, ptr %l112, !tbaa !21
  store i1 %t206, ptr %l110, !tbaa !21
  br label %bb52
bb52:
  %t207 = load i64, ptr %l94, !tbaa !24
  %t208 = load i64, ptr %l96, !tbaa !24
  %t209 = load i64, ptr %l100, !tbaa !24
  %t210 = load %"compiler/source:Span", ptr %l102
  %t211 = load %"compiler/source:Span", ptr %l103
  %t212 = load i64, ptr %l104, !tbaa !24
  %t213 = load %"compiler/source:Span", ptr %l105
  %t214 = load i64, ptr %l106, !tbaa !24
  %t215 = load i1, ptr %l110, !tbaa !21
  %t216 = call %"compiler/free:letGo" @compiler_2ffree_3aletGo_2ector(ptr %s0, i64 %t207, i64 %t208, i64 %t209, %"compiler/source:Span" %t210, %"compiler/source:Span" %t211, i64 %t212, %"compiler/source:Span" %t213, i64 %t214, i1 %t215)
  store %"compiler/free:letGo" %t216, ptr %l113
  br label %bb53
bb53:
  %t217 = load ptr, ptr %l93, !tbaa !29
  %t218 = load %"compiler/free:letGo", ptr %l113
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2ePush_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t217, %"compiler/free:letGo" %t218)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eholds(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l11 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca i64
  %l25 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca ptr
  %l33 = alloca i1
  %l34 = alloca i64
  %l38 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t8 = sext i32 %t6 to i64
  store i64 %t8, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t14)
  store ptr %t16, ptr %l11
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t17 = load i32, ptr %l1, !tbaa !23
  %t18 = load ptr, ptr %l11, !tbaa !29
  %t20 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t18, i32 %t17)
  store i1 %t20, ptr %l13
  br label %bb4
bb4:
  %t21 = load i1, ptr %l13, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/free:Free", ptr %t22, i32 0, i32 5
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l16
  br label %bb7
bb7:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l16, !tbaa !24
  %t30 = icmp sle i64 %t28, %t27
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb8, label %bb9
bb8:
  br label %bb13
bb9:
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"compiler/free:Free", ptr %t34, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t36, i64 0)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb6
bb13:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/free:Free", ptr %t38, i32 0, i32 5
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t40, i64 %t41)
  store i64 %t44, ptr %l25
  br label %bb14
bb14:
  %t45 = load i64, ptr %l25, !tbaa !24
  %t46 = icmp eq i64 %t45, 0
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/free:Free", ptr %t48, i32 0, i32 5
  store ptr %t50, ptr %l28, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  store i64 %t51, ptr %l29, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t52)
  store ptr %t54, ptr %l31
  br label %bb17
bb16:
  br label %bb23
bb17:
  %t55 = load i32, ptr %l1, !tbaa !23
  %t56 = load ptr, ptr %l31, !tbaa !29
  %t58 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t56, i32 %t55)
  store i1 %t58, ptr %l33
  br label %bb18
bb18:
  %t59 = load i1, ptr %l33, !tbaa !21
  br i1 %t59, label %bb19, label %bb20
bb19:
  store i64 2, ptr %l34, !tbaa !24
  br label %bb21
bb20:
  store i64 1, ptr %l34, !tbaa !24
  br label %bb21
bb21:
  %t60 = load ptr, ptr %l28, !tbaa !29
  %t61 = load i64, ptr %l29, !tbaa !24
  %t62 = load i64, ptr %l34, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t60, i64 %t61, i64 %t62)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/free:Free", ptr %t63, i32 0, i32 5
  %t66 = load i64, ptr %l3, !tbaa !24
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t65, i64 %t66)
  store i64 %t69, ptr %l38
  br label %bb24
bb24:
  %t70 = load i64, ptr %l38, !tbaa !24
  %t71 = icmp eq i64 %t70, 2
  store i1 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l19 = alloca i1
  %l29 = alloca i64
  %l31 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i32
  %l38 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i1
  %l44 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l71 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i32
  %l78 = alloca ptr
  %l79 = alloca i1
  %l86 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb35
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Seq", ptr %t16, i32 0, i32 2
  %t19 = load i1, ptr %t18, !tbaa !21
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb8
bb7:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Seq", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  store i1 %t28, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  store i64 -1, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Seq", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_a02d4e2a18cd3a61_9c6a7f96807aa8b5)
  unreachable
bb13:
  br label %bb14
bb14:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Seq", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l3, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/free:walker", ptr %t44, i32 0, i32 6
  store ptr %t46, ptr %l31, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = call i64 @compiler_2ffree_2ereadLocalOf(ptr %v1, ptr %t47)
  store i64 %t49, ptr %l33
  br label %bb15
bb15:
  %t50 = load ptr, ptr %l31, !tbaa !29
  %t51 = load i64, ptr %l33, !tbaa !24
  %t52 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t50, i64 %t51)
  %t53 = extractvalue { i32, i64 } %t52, 1
  %t54 = extractvalue { i32, i64 } %t52, 0
  store i32 %t54, ptr %l35
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb17, label %ok.56, !prof !99
ok.56:
  store i64 %t53, ptr %l34
  br label %bb16
bb16:
  %t57 = load i64, ptr %l34, !tbaa !24
  store i64 %t57, ptr %l29, !tbaa !24
  br label %bb19
bb17:
  br label %bb18
bb18:
  store i64 -1, ptr %l29, !tbaa !24
  br label %bb19
bb19:
  %t58 = load i64, ptr %l29, !tbaa !24
  store i64 %t58, ptr %l4, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp slt i64 %t59, 0
  br i1 %t61, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb25
bb21:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t63)
  store ptr %t65, ptr %l40
  br label %bb22
bb22:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t68 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t66)
  store i32 %t68, ptr %l42
  br label %bb23
bb23:
  %t69 = load ptr, ptr %l40, !tbaa !29
  %t70 = load i32, ptr %l42, !tbaa !23
  %t71 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t71, ptr %l43
  br label %bb24
bb24:
  %t72 = load i1, ptr %l43, !tbaa !21
  store i1 %t72, ptr %l38, !tbaa !21
  br label %bb25
bb25:
  %t73 = load i1, ptr %l38, !tbaa !21
  br i1 %t73, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb31
bb27:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t74)
  store ptr %t76, ptr %l46
  br label %bb28
bb28:
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t79 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t77)
  store i32 %t79, ptr %l48
  br label %bb29
bb29:
  %t80 = load ptr, ptr %l46, !tbaa !29
  %t81 = load i32, ptr %l48, !tbaa !23
  %t82 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %t80, i32 %t81)
  store i1 %t82, ptr %l49
  br label %bb30
bb30:
  %t83 = load i1, ptr %l49, !tbaa !21
  %t84 = xor i1 %t83, true
  store i1 %t84, ptr %l44, !tbaa !21
  br label %bb31
bb31:
  %t86 = load i1, ptr %l44, !tbaa !21
  br i1 %t86, label %bb32, label %bb33
bb32:
  store i64 -1, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t88 = load i64, ptr %l4, !tbaa !24
  store i64 %t88, ptr %rv
  br label %ret
bb35:
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t91 = load ptr, ptr %l53, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb36, label %bb37
bb36:
  %t94 = load ptr, ptr %l53, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 18}
  %t97 = icmp eq i64 %t95, 2
  store i1 %t97, ptr %l54, !tbaa !21
  br label %bb37
bb37:
  %t98 = load i1, ptr %l54, !tbaa !21
  br i1 %t98, label %bb38, label %bb39
bb38:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l5, !tbaa !29
  br label %bb40
bb39:
  br label %bb50
bb40:
  %t105 = load ptr, ptr %l5, !tbaa !29
  store ptr %t105, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t106 = load ptr, ptr %l59, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb41, label %bb42
bb41:
  %t109 = load ptr, ptr %l59, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 8}
  %t112 = icmp eq i64 %t110, 0
  store i1 %t112, ptr %l60, !tbaa !21
  br label %bb42
bb42:
  %t113 = load i1, ptr %l60, !tbaa !21
  %t114 = xor i1 %t113, true
  br i1 %t114, label %bb43, label %bb44
bb43:
  store i64 -1, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t117 = load ptr, ptr %l5, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t119, i32 0, i32 0
  %t121 = load %"compiler/source:Span", ptr %t120
  store %"compiler/source:Span" %t121, ptr %l6
  %t123 = load ptr, ptr %l5, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t125, i32 0, i32 1
  %t127 = load i32, ptr %t126
  store i32 %t127, ptr %l7, !tbaa !23
  %t129 = load ptr, ptr %l5, !tbaa !29
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t131, i32 0, i32 2
  %t133 = load i32, ptr %t132
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/free:walker", ptr %t135, i32 0, i32 39
  %t140 = sext i32 %t133 to i64
  %t143 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t137, i64 %t140)
  %t144 = extractvalue { i32, i64 } %t143, 1
  %t145 = extractvalue { i32, i64 } %t143, 0
  store i32 %t145, ptr %l77
  %t146 = icmp ne i32 %t145, 0
  br i1 %t146, label %bb47, label %ok.147, !prof !99
ok.147:
  store i64 %t144, ptr %l76
  br label %bb46
bb46:
  %t148 = load i64, ptr %l76, !tbaa !24
  store i64 %t148, ptr %l71, !tbaa !24
  br label %bb49
bb47:
  br label %bb48
bb48:
  store i64 -1, ptr %l71, !tbaa !24
  br label %bb49
bb49:
  %t149 = load i64, ptr %l71, !tbaa !24
  store i64 %t149, ptr %rv
  br label %ret
bb50:
  %t150 = load ptr, ptr %l1, !tbaa !29
  store ptr %t150, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t151 = load ptr, ptr %l78, !tbaa !29
  %t152 = icmp ne ptr %t151, null
  br i1 %t152, label %bb51, label %bb52
bb51:
  %t154 = load ptr, ptr %l78, !tbaa !29
  %t155 = load i64, ptr %t154, !range !{i64 0, i64 18}
  %t157 = icmp eq i64 %t155, 17
  store i1 %t157, ptr %l79, !tbaa !21
  br label %bb52
bb52:
  %t158 = load i1, ptr %l79, !tbaa !21
  br i1 %t158, label %bb53, label %bb54
bb53:
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr { i64, [5 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t161, i32 0, i32 2
  %t163 = load ptr, ptr %t162
  store ptr %t163, ptr %l9, !tbaa !29
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l9, !tbaa !29
  %t169 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %t165, ptr %t166)
  store i64 %t169, ptr %l86
  br label %bb56
bb56:
  %t170 = load i64, ptr %l86, !tbaa !24
  store i64 %t170, ptr %rv
  br label %ret
bb57:
  br i1 true, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  store i64 -1, ptr %rv
  br label %ret
bb61:
  call void @__olang_check_failed(ptr @olang_loc_720a25314e6ed839_22eb7101f62f811d)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereachTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %lp4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
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
  %t20 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %rv
  br label %ret
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb15
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Elem", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %t37, ptr %t41)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l23
  br label %bb13
bb13:
  %t45 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t45, ptr %lp4
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t47 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %t47
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Elem", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s2, ptr %t48, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l27
  br label %bb14
bb14:
  %t56 = load ptr, ptr %lp4
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t56
  call void @__olang_scope_close(ptr %s2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %rv
  br label %ret
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t63 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %t59, ptr %t60)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l31
  br label %bb19
bb19:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_71c754545de4040c_468b95bb5168a5f8)
  unreachable
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2erunsAgain(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca i1
  %l17 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 1
  %t7 = load { i64, [2 x i64] }, ptr %t6
  store { i64, [2 x i64] } %t7, ptr %l1
  %t9 = load { i64, [2 x i64] }, ptr %l1
  %t11 = extractvalue { i64, [2 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 6
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  %t14 = load { i64, [2 x i64] }, ptr %l1
  %t16 = extractvalue { i64, [2 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 5
  br i1 %t17, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb18
bb7:
  %t19 = load { i64, [2 x i64] }, ptr %l1
  %t21 = extractvalue { i64, [2 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 0
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t25 = getelementptr { i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i64, ptr %t25
  store i64 %t26, ptr %l2, !tbaa !24
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/free:walker", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/free:Free", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l17, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/free:walker", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/free:Free", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t41, i64 %t42)
  store i64 %t45, ptr %l22
  br label %bb11
bb11:
  %t46 = load ptr, ptr %l17, !tbaa !29
  %t47 = load i64, ptr %l22, !tbaa !24
  %t48 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %t46, i64 %t47)
  store i1 %t48, ptr %l23
  br label %bb12
bb12:
  %t49 = load i1, ptr %l23, !tbaa !21
  %t50 = xor i1 %t49, true
  store i1 %t50, ptr %l7, !tbaa !21
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_350c73b6578d6328_239abab62451b64c)
  unreachable
bb18:
  %t52 = load i1, ptr %l7, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviews(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
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
  %l62 = alloca i64
  %l63 = alloca i64
  %l65 = alloca i64
  %l66 = alloca ptr
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l82 = alloca i64
  %l83 = alloca i64
  %l87 = alloca ptr
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i64
  %l117 = alloca ptr
  %l118 = alloca i64
  %l120 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l122 = alloca ptr
  %l123 = alloca i64
  %l125 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l130 = alloca ptr
  %l131 = alloca i64
  %l132 = alloca ptr
  %l133 = alloca i64
  %l136 = alloca i64
  %l139 = alloca ptr
  %l140 = alloca i64
  %l144 = alloca i64
  %l146 = alloca i64
  %l149 = alloca i1
  %l151 = alloca i64
  %l156 = alloca ptr
  %l158 = alloca i64
  %l165 = alloca i64
  %l169 = alloca i64
  %l172 = alloca i64
  %l190 = alloca ptr
  %l194 = alloca i64
  %l195 = alloca ptr
  %l199 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l202 = alloca i64
  %l206 = alloca i64
  %l209 = alloca i64
  %l229 = alloca ptr
  %l230 = alloca i64
  %l232 = alloca i1
  %l236 = alloca i1
  %l244 = alloca i64
  %l250 = alloca i64
  %l254 = alloca i64
  %l257 = alloca i64
  %l278 = alloca i64
  %l279 = alloca i64
  %l289 = alloca i64
  %l292 = alloca i64
  %l310 = alloca i64
  %l320 = alloca i64
  %l326 = alloca i64
  %l332 = alloca i64
  %l336 = alloca i64
  %l339 = alloca i64
  %l360 = alloca i64
  %l365 = alloca i64
  %l369 = alloca i64
  %l370 = alloca i64
  %l377 = alloca i64
  %l381 = alloca i64
  %l384 = alloca i64
  %l405 = alloca i64
  %l409 = alloca i64
  %l413 = alloca i64
  %l417 = alloca i64
  %l419 = alloca i64
  %l421 = alloca ptr
  %l425 = alloca i64
  %l426 = alloca i64
  %l427 = alloca i32
  %l431 = alloca i1
  %l432 = alloca i64
  %l435 = alloca i64
  %l437 = alloca i1
  %l441 = alloca i64
  %l447 = alloca i64
  %l451 = alloca i1
  %l455 = alloca i1
  %l459 = alloca i1
  %l463 = alloca i1
  %l464 = alloca ptr
  %l468 = alloca i64
  %l469 = alloca i1
  %l479 = alloca i64
  %l482 = alloca i64
  %l504 = alloca i1
  %l508 = alloca i1
  %l512 = alloca i64
  %l515 = alloca ptr
  %l516 = alloca i64
  %l518 = alloca i64
  %l522 = alloca %"compiler/source:Span"
  %l523 = alloca i64
  %l525 = alloca ptr
  %l527 = alloca i64
  %l531 = alloca %"compiler/source:Span"
  %l532 = alloca { i64, ptr }
  %l539 = alloca i64
  %l541 = alloca i64
  %l546 = alloca i64
  %l549 = alloca ptr
  %l550 = alloca i64
  %l551 = alloca ptr
  %l552 = alloca i64
  %l555 = alloca i64
  %l558 = alloca ptr
  %l559 = alloca i64
  %l563 = alloca i64
  %l566 = alloca i1
  %l570 = alloca i1
  %l574 = alloca i64
  %l581 = alloca ptr
  %l582 = alloca i64
  %l583 = alloca i64
  %l586 = alloca ptr
  %l587 = alloca i64
  %l593 = alloca ptr
  %l597 = alloca %"compiler/typed:Local"
  %l599 = alloca { i64, ptr }
  %l603 = alloca ptr
  %l605 = alloca i64
  %l609 = alloca %"compiler/typed:Local"
  %l612 = alloca i64
  %l616 = alloca ptr
  %l618 = alloca i64
  %l622 = alloca %"compiler/source:Span"
  %l625 = alloca i64
  %l632 = alloca i1
  %l633 = alloca ptr
  %l635 = alloca i64
  %l639 = alloca %"compiler/source:Span"
  %l640 = alloca { i64, ptr }
  %l641 = alloca i64
  %l643 = alloca i1
  %l645 = alloca i1
  %l647 = alloca { i64, ptr }
  %l648 = alloca i1
  %l650 = alloca { i64, ptr }
  %l654 = alloca { i64, ptr }
  %l656 = alloca i64
  %l658 = alloca { i64, ptr }
  %l659 = alloca { i64, ptr }
  %l661 = alloca i64
  %l663 = alloca i64
  %l664 = alloca { i64, ptr }
  %l665 = alloca { i64, ptr }
  %l666 = alloca { i64, ptr }
  %l667 = alloca i64
  %l668 = alloca { i64, ptr }
  %l672 = alloca ptr
  %l674 = alloca i64
  %l678 = alloca %"compiler/source:Span"
  %l679 = alloca { i64, ptr }
  %l682 = alloca { i64, ptr }
  %l684 = alloca i64
  %l689 = alloca ptr
  %l691 = alloca i64
  %l695 = alloca %"compiler/source:Span"
  %l696 = alloca { i64, ptr }
  %l697 = alloca i64
  %l700 = alloca { i64, ptr }
  %l702 = alloca { i64, ptr }
  %l704 = alloca i64
  %l708 = alloca { i64, ptr }
  %l710 = alloca i64
  %l714 = alloca ptr
  %l715 = alloca i64
  %l716 = alloca ptr
  %l717 = alloca i64
  %l720 = alloca i64
  %l723 = alloca ptr
  %l724 = alloca i64
  %l728 = alloca i64
  %l731 = alloca i1
  %l735 = alloca i1
  %l739 = alloca i64
  %l742 = alloca ptr
  %l743 = alloca i64
  %l745 = alloca i64
  %l749 = alloca %"compiler/source:Span"
  %l750 = alloca i64
  %s0 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s47 = alloca %olang.scope
  %s50 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l87
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l87, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l88
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l3
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l89
  br label %bb3
bb3:
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/free:walker", ptr %t14, i32 0, i32 3
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l92
  br label %bb4
bb4:
  %t19 = load i64, ptr %l92, !tbaa !24
  store i64 %t19, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb10
bb7:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l99, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l99, !tbaa !24
  store i64 %t46, ptr %l96, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l96, !tbaa !24
  store i64 %t47, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  br label %bb48
bb13:
  br label %bb14
bb14:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l10, !tbaa !24
  store ptr %l3, ptr %l117, !tbaa !29
  %t66 = ptrtoint ptr %s0 to i64
  store i64 %t66, ptr %l118, !tbaa !24
  %t67 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t67, label %bb15, label %bb16
bb15:
  %t69 = call ptr @__olang_region_make(ptr %s0)
  %t70 = ptrtoint ptr %t69 to i64
  store i64 %t70, ptr %l118, !tbaa !24
  br label %bb16
bb16:
  %t71 = load i64, ptr %l118
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t72, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l120
  br label %bb17
bb17:
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l120
  %t75 = load i64, ptr %l118
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = call ptr @__olang_scope_alloc_a(ptr %t76, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %t77
  %t78 = load ptr, ptr %l117, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %s0, ptr %s0, ptr %t78, ptr %t77)
  br label %bb18
bb18:
  store ptr %l4, ptr %l122, !tbaa !29
  %t80 = ptrtoint ptr %s0 to i64
  store i64 %t80, ptr %l123, !tbaa !24
  %t81 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t81, label %bb19, label %bb20
bb19:
  %t83 = call ptr @__olang_region_make(ptr %s0)
  %t84 = ptrtoint ptr %t83 to i64
  store i64 %t84, ptr %l123, !tbaa !24
  br label %bb20
bb20:
  %t85 = load i64, ptr %l123
  %t86 = inttoptr i64 %t85 to ptr
  %t87 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t86, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %l125
  br label %bb21
bb21:
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l125
  %t89 = load i64, ptr %l123
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = call ptr @__olang_scope_alloc_a(ptr %t90, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %t91
  %t92 = load ptr, ptr %l122, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %s0, ptr %s0, ptr %t92, ptr %t91)
  br label %bb22
bb22:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/free:walker", ptr %t94, i32 0, i32 3
  %t97 = load i64, ptr %l10, !tbaa !24
  %t100 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t96, i64 %t97)
  store ptr %t100, ptr %l130
  br label %bb23
bb23:
  %t101 = load ptr, ptr %l130, !tbaa !29
  store ptr %t101, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb24
bb24:
  %t102 = load i64, ptr %l12, !tbaa !24
  store i64 %t102, ptr %l131, !tbaa !24
  %t103 = load ptr, ptr %l11, !tbaa !29
  store ptr %t103, ptr %l132, !tbaa !29
  %t104 = ptrtoint ptr %v0 to i64
  store i64 %t104, ptr %l133, !tbaa !24
  %t105 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t105, label %bb25, label %bb26
bb25:
  %t107 = load ptr, ptr %l132, !tbaa !29
  %t108 = call ptr @__olang_region_or(ptr %t107, ptr %v0)
  %t109 = ptrtoint ptr %t108 to i64
  store i64 %t109, ptr %l133, !tbaa !24
  br label %bb26
bb26:
  %t110 = load ptr, ptr %l11, !tbaa !29
  %t111 = load i64, ptr %l133
  %t112 = inttoptr i64 %t111 to ptr
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t112, ptr %t110)
  store i64 %t114, ptr %l136
  br label %bb27
bb27:
  %t115 = load i64, ptr %l131, !tbaa !24
  %t116 = load i64, ptr %l136, !tbaa !24
  %t117 = icmp slt i64 %t115, %t116
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb28, label %bb29
bb28:
  br label %bb46
bb29:
  br label %bb30
bb30:
  %t121 = load ptr, ptr %l11, !tbaa !29
  store ptr %t121, ptr %l139, !tbaa !29
  %t122 = ptrtoint ptr %v0 to i64
  store i64 %t122, ptr %l140, !tbaa !24
  %t123 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t123, label %bb31, label %bb32
bb31:
  %t125 = load ptr, ptr %l139, !tbaa !29
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr %v0)
  %t127 = ptrtoint ptr %t126 to i64
  store i64 %t127, ptr %l140, !tbaa !24
  br label %bb32
bb32:
  %t128 = load ptr, ptr %l11, !tbaa !29
  %t129 = load i64, ptr %l12, !tbaa !24
  %t130 = load i64, ptr %l140
  %t131 = inttoptr i64 %t130 to ptr
  %t134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t131, ptr %t128, i64 %t129)
  store i64 %t134, ptr %l144
  br label %bb33
bb33:
  %t135 = load i64, ptr %l144, !tbaa !24
  store i64 %t135, ptr %l13, !tbaa !24
  %t136 = load i64, ptr %l13, !tbaa !24
  %t138 = call i64 @compiler_2ffree_2eokind(i64 %t136)
  store i64 %t138, ptr %l146
  br label %bb34
bb34:
  %t139 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t140 = load i64, ptr %l146, !tbaa !24
  %t142 = icmp eq i64 %t140, %t139
  br i1 %t142, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l149, !tbaa !21
  br label %bb38
bb36:
  %t144 = load i64, ptr %l13, !tbaa !24
  %t146 = call i64 @compiler_2ffree_2eokind(i64 %t144)
  store i64 %t146, ptr %l151
  br label %bb37
bb37:
  %t147 = load i64, ptr @G_2ecompiler_2ffree_2eOMov, !tbaa !24
  %t148 = load i64, ptr %l151, !tbaa !24
  %t150 = icmp eq i64 %t148, %t147
  store i1 %t150, ptr %l149, !tbaa !21
  br label %bb38
bb38:
  %t152 = load i1, ptr %l149, !tbaa !21
  br i1 %t152, label %bb39, label %bb40
bb39:
  %t153 = load i64, ptr %l10, !tbaa !24
  %t156 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %s0, ptr %s0, ptr %l3, i64 %t153)
  store ptr %t156, ptr %l156
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t157 = load i64, ptr %l13, !tbaa !24
  %t159 = call i64 @compiler_2ffree_2eoval(i64 %t157)
  store i64 %t159, ptr %l158
  br label %bb42
bb42:
  %t160 = load ptr, ptr %l156, !tbaa !29
  %t161 = load i64, ptr %l158, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t160, i64 %t161)
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t162 = load i64, ptr %l12, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l12, !tbaa !24
  br label %bb24
bb46:
  br label %bb47
bb47:
  %t166 = load i64, ptr %l9, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l9, !tbaa !24
  br label %bb11
bb48:
  store i64 0, ptr %l14, !tbaa !24
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/free:walker", ptr %t170, i32 0, i32 24
  %t174 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t172)
  store i64 %t174, ptr %l165
  br label %bb49
bb49:
  %t175 = load i64, ptr %l165, !tbaa !24
  store i64 %t175, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t176 = load i64, ptr %l15, !tbaa !24
  %t177 = load i64, ptr %l14, !tbaa !24
  %t180 = icmp sgt i64 %t176, %t177
  br i1 %t180, label %bb50, label %bb51
bb50:
  %t182 = load i64, ptr %l16, !tbaa !24
  %t184 = icmp sgt i64 %t182, 0
  br i1 %t184, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l169, !tbaa !24
  br label %bb55
bb52:
  %t186 = load i64, ptr %l15, !tbaa !24
  %t187 = load i64, ptr %l14, !tbaa !24
  %t190 = sub i64 %t186, %t187
  %t191 = load i64, ptr %l16, !tbaa !24
  %t194 = add i64 %t190, %t191
  %t196 = sub i64 %t194, 1
  %t197 = load i64, ptr %l16, !tbaa !24
  %t200 = sdiv i64 %t196, %t197
  store i64 %t200, ptr %l172, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l172, !tbaa !24
  br label %bb54
bb54:
  %t202 = load i64, ptr %l172, !tbaa !24
  store i64 %t202, ptr %l169, !tbaa !24
  br label %bb55
bb55:
  %t203 = load i64, ptr %l169, !tbaa !24
  store i64 %t203, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb56
bb56:
  %t204 = load i64, ptr %l18, !tbaa !24
  %t205 = load i64, ptr %l17, !tbaa !24
  %t208 = icmp slt i64 %t204, %t205
  %t210 = xor i1 %t208, true
  br i1 %t210, label %bb57, label %bb58
bb57:
  br label %bb64
bb58:
  br label %bb59
bb59:
  %t212 = load i64, ptr %l14, !tbaa !24
  %t213 = load i64, ptr %l18, !tbaa !24
  %t214 = load i64, ptr %l16, !tbaa !24
  %t217 = mul i64 %t213, %t214
  %t220 = add i64 %t212, %t217
  store i64 %t220, ptr %l19, !tbaa !24
  store ptr %l4, ptr %l190, !tbaa !29
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/free:walker", ptr %t222, i32 0, i32 24
  %t225 = load i64, ptr %l19, !tbaa !24
  %t228 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t224, i64 %t225)
  store i64 %t228, ptr %l194
  br label %bb60
bb60:
  %t229 = load ptr, ptr %l190, !tbaa !29
  %t230 = load i64, ptr %l194, !tbaa !24
  %t231 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %s0, ptr %s0, ptr %t229, i64 %t230)
  store ptr %t231, ptr %l195
  br label %bb61
bb61:
  %t232 = load i64, ptr %l19, !tbaa !24
  %t233 = load ptr, ptr %l195, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t233, i64 %t232)
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t235 = load i64, ptr %l18, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l18, !tbaa !24
  br label %bb56
bb64:
  %t239 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %l199
  br label %bb65
bb65:
  %t240 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l199
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %l20
  store i64 0, ptr %l21, !tbaa !24
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/free:walker", ptr %t241, i32 0, i32 3
  %t245 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %t243)
  store i64 %t245, ptr %l202
  br label %bb66
bb66:
  %t246 = load i64, ptr %l202, !tbaa !24
  store i64 %t246, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t247 = load i64, ptr %l22, !tbaa !24
  %t248 = load i64, ptr %l21, !tbaa !24
  %t251 = icmp sgt i64 %t247, %t248
  br i1 %t251, label %bb67, label %bb68
bb67:
  %t253 = load i64, ptr %l23, !tbaa !24
  %t255 = icmp sgt i64 %t253, 0
  br i1 %t255, label %bb69, label %bb70
bb68:
  store i64 0, ptr %l206, !tbaa !24
  br label %bb72
bb69:
  %t257 = load i64, ptr %l22, !tbaa !24
  %t258 = load i64, ptr %l21, !tbaa !24
  %t261 = sub i64 %t257, %t258
  %t262 = load i64, ptr %l23, !tbaa !24
  %t265 = add i64 %t261, %t262
  %t267 = sub i64 %t265, 1
  %t268 = load i64, ptr %l23, !tbaa !24
  %t271 = sdiv i64 %t267, %t268
  store i64 %t271, ptr %l209, !tbaa !24
  br label %bb71
bb70:
  store i64 0, ptr %l209, !tbaa !24
  br label %bb71
bb71:
  %t273 = load i64, ptr %l209, !tbaa !24
  store i64 %t273, ptr %l206, !tbaa !24
  br label %bb72
bb72:
  %t274 = load i64, ptr %l206, !tbaa !24
  store i64 %t274, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb73
bb73:
  %t275 = load i64, ptr %l25, !tbaa !24
  %t276 = load i64, ptr %l24, !tbaa !24
  %t279 = icmp slt i64 %t275, %t276
  %t281 = xor i1 %t279, true
  br i1 %t281, label %bb74, label %bb75
bb74:
  br label %bb88
bb75:
  br label %bb76
bb76:
  %t283 = load i64, ptr %l21, !tbaa !24
  %t284 = load i64, ptr %l25, !tbaa !24
  %t285 = load i64, ptr %l23, !tbaa !24
  %t288 = mul i64 %t284, %t285
  %t291 = add i64 %t283, %t288
  store i64 %t291, ptr %l26, !tbaa !24
  %t293 = load i64, ptr %l26, !tbaa !24
  %t296 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %s0, ptr %s0, ptr %l3, i64 %t293)
  store ptr %t296, ptr %l229
  br label %bb77
bb77:
  %t297 = load ptr, ptr %l229, !tbaa !29
  %t298 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t297)
  store i64 %t298, ptr %l230
  br label %bb78
bb78:
  %t299 = load i64, ptr %l230, !tbaa !24
  %t300 = icmp sgt i64 %t299, 0
  br i1 %t300, label %bb79, label %bb80
bb79:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/free:walker", ptr %t302, i32 0, i32 6
  %t305 = load i64, ptr %l26, !tbaa !24
  %t308 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t304, i64 %t305)
  store i1 %t308, ptr %l236
  br label %bb81
bb80:
  store i1 false, ptr %l232, !tbaa !21
  br label %bb82
bb81:
  %t309 = load i1, ptr %l236, !tbaa !21
  %t310 = xor i1 %t309, true
  store i1 %t310, ptr %l232, !tbaa !21
  br label %bb82
bb82:
  %t312 = load i1, ptr %l232, !tbaa !21
  br i1 %t312, label %bb83, label %bb84
bb83:
  %t313 = load i64, ptr %l26, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l20, i64 %t313)
  br label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t316 = load i64, ptr %l25, !tbaa !24
  %t318 = add i64 %t316, 1
  store i64 %t318, ptr %l25, !tbaa !24
  br label %bb73
bb88:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/free:walker", ptr %t320, i32 0, i32 11
  %t323 = load i64, ptr %t322, !tbaa !24
  %t325 = add i64 %t323, 2
  store i64 %t325, ptr %l244, !tbaa !24
  %t326 = load i64, ptr %l244, !tbaa !24
  %t327 = icmp sge i64 %t326, 0
  br i1 %t327, label %bb89, label %bb90
bb89:
  %t329 = load i64, ptr %l244, !tbaa !24
  %t330 = icmp sle i64 %t329, 1152921504606846975
  br i1 %t330, label %bb91, label %bb92
bb90:
  call void @__olang_check_failed(ptr @olang_loc_2a6707270ca06c1b_81c43f034781ce2f)
  unreachable
bb91:
  %t332 = load i64, ptr %l244, !tbaa !24
  %t333 = mul i64 %t332, 8
  %t334 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t333)
  %t335 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t334, 1
  store { i64, ptr } %t336, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/free:walker", ptr %t338, i32 0, i32 42
  %t342 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t340)
  store i64 %t342, ptr %l250
  br label %bb93
bb92:
  call void @__olang_check_failed(ptr @olang_loc_2a6707270ca06c1b_81c43f034781ce2f)
  unreachable
bb93:
  %t343 = load i64, ptr %l250, !tbaa !24
  store i64 %t343, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t344 = load i64, ptr %l29, !tbaa !24
  %t345 = load i64, ptr %l28, !tbaa !24
  %t348 = icmp sgt i64 %t344, %t345
  br i1 %t348, label %bb94, label %bb95
bb94:
  %t350 = load i64, ptr %l30, !tbaa !24
  %t352 = icmp sgt i64 %t350, 0
  br i1 %t352, label %bb96, label %bb97
bb95:
  store i64 0, ptr %l254, !tbaa !24
  br label %bb99
bb96:
  %t354 = load i64, ptr %l29, !tbaa !24
  %t355 = load i64, ptr %l28, !tbaa !24
  %t358 = sub i64 %t354, %t355
  %t359 = load i64, ptr %l30, !tbaa !24
  %t362 = add i64 %t358, %t359
  %t364 = sub i64 %t362, 1
  %t365 = load i64, ptr %l30, !tbaa !24
  %t368 = sdiv i64 %t364, %t365
  store i64 %t368, ptr %l257, !tbaa !24
  br label %bb98
bb97:
  store i64 0, ptr %l257, !tbaa !24
  br label %bb98
bb98:
  %t370 = load i64, ptr %l257, !tbaa !24
  store i64 %t370, ptr %l254, !tbaa !24
  br label %bb99
bb99:
  %t371 = load i64, ptr %l254, !tbaa !24
  store i64 %t371, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb100
bb100:
  %t372 = load i64, ptr %l32, !tbaa !24
  %t373 = load i64, ptr %l31, !tbaa !24
  %t376 = icmp slt i64 %t372, %t373
  %t378 = xor i1 %t376, true
  br i1 %t378, label %bb101, label %bb102
bb101:
  br label %bb106
bb102:
  br label %bb103
bb103:
  %t380 = load i64, ptr %l28, !tbaa !24
  %t381 = load i64, ptr %l32, !tbaa !24
  %t382 = load i64, ptr %l30, !tbaa !24
  %t385 = mul i64 %t381, %t382
  %t388 = add i64 %t380, %t385
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t392 = getelementptr %"compiler/free:walker", ptr %t390, i32 0, i32 43
  %t396 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t392, i64 %t388)
  store i64 %t396, ptr %l278
  br label %bb104
bb104:
  %t397 = load i64, ptr %l278, !tbaa !24
  %t398 = add i64 %t397, 1
  store i64 %t398, ptr %l279, !tbaa !24
  %t399 = load i64, ptr %l279, !tbaa !24
  %t400 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr i64, ptr %t401, i64 %t399
  %t403 = load i64, ptr %t402, !tbaa !34
  %t405 = add i64 %t403, 1
  %t407 = load i64, ptr %l279, !tbaa !24
  %t408 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !27
  %t410 = getelementptr i64, ptr %t409, i64 %t407
  store i64 %t405, ptr %t410, !tbaa !34
  br label %bb105
bb105:
  %t411 = load i64, ptr %l32, !tbaa !24
  %t413 = add i64 %t411, 1
  store i64 %t413, ptr %l32, !tbaa !24
  br label %bb100
bb106:
  store i64 1, ptr %l34, !tbaa !24
  %t415 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t417 = extractvalue { i64, ptr } %t415, 0
  store i64 %t417, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t419 = load i64, ptr %l35, !tbaa !24
  %t420 = load i64, ptr %l34, !tbaa !24
  %t423 = icmp sgt i64 %t419, %t420
  br i1 %t423, label %bb107, label %bb108
bb107:
  %t425 = load i64, ptr %l36, !tbaa !24
  %t427 = icmp sgt i64 %t425, 0
  br i1 %t427, label %bb109, label %bb110
bb108:
  store i64 0, ptr %l289, !tbaa !24
  br label %bb112
bb109:
  %t429 = load i64, ptr %l35, !tbaa !24
  %t430 = load i64, ptr %l34, !tbaa !24
  %t433 = sub i64 %t429, %t430
  %t434 = load i64, ptr %l36, !tbaa !24
  %t437 = add i64 %t433, %t434
  %t439 = sub i64 %t437, 1
  %t440 = load i64, ptr %l36, !tbaa !24
  %t443 = sdiv i64 %t439, %t440
  store i64 %t443, ptr %l292, !tbaa !24
  br label %bb111
bb110:
  store i64 0, ptr %l292, !tbaa !24
  br label %bb111
bb111:
  %t445 = load i64, ptr %l292, !tbaa !24
  store i64 %t445, ptr %l289, !tbaa !24
  br label %bb112
bb112:
  %t446 = load i64, ptr %l289, !tbaa !24
  store i64 %t446, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb113
bb113:
  %t447 = load i64, ptr %l38, !tbaa !24
  %t448 = load i64, ptr %l37, !tbaa !24
  %t451 = icmp slt i64 %t447, %t448
  %t453 = xor i1 %t451, true
  br i1 %t453, label %bb114, label %bb115
bb114:
  br label %bb118
bb115:
  br label %bb116
bb116:
  %t455 = load i64, ptr %l34, !tbaa !24
  %t456 = load i64, ptr %l38, !tbaa !24
  %t457 = load i64, ptr %l36, !tbaa !24
  %t460 = mul i64 %t456, %t457
  %t463 = add i64 %t455, %t460
  store i64 %t463, ptr %l39, !tbaa !24
  %t465 = load i64, ptr %l39, !tbaa !24
  store i64 %t465, ptr %l310, !tbaa !24
  %t466 = load i64, ptr %l310, !tbaa !24
  %t467 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t468 = load ptr, ptr %t467, !tbaa !27
  %t469 = getelementptr i64, ptr %t468, i64 %t466
  %t470 = load i64, ptr %t469, !tbaa !34
  %t471 = load i64, ptr %l39, !tbaa !24
  %t473 = sub i64 %t471, 1
  %t475 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t476 = load ptr, ptr %t475, !tbaa !27
  %t477 = getelementptr i64, ptr %t476, i64 %t473
  %t478 = load i64, ptr %t477, !tbaa !34
  %t481 = add i64 %t470, %t478
  %t483 = load i64, ptr %l310, !tbaa !24
  %t484 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t485 = load ptr, ptr %t484, !tbaa !27
  %t486 = getelementptr i64, ptr %t485, i64 %t483
  store i64 %t481, ptr %t486, !tbaa !34
  br label %bb117
bb117:
  %t487 = load i64, ptr %l38, !tbaa !24
  %t489 = add i64 %t487, 1
  store i64 %t489, ptr %l38, !tbaa !24
  br label %bb113
bb118:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t493 = getelementptr %"compiler/free:walker", ptr %t491, i32 0, i32 42
  %t495 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t493)
  store i64 %t495, ptr %l320
  br label %bb119
bb119:
  %t496 = load i64, ptr %l320, !tbaa !24
  %t497 = icmp sge i64 %t496, 0
  br i1 %t497, label %bb120, label %bb121
bb120:
  %t499 = load i64, ptr %l320, !tbaa !24
  %t500 = icmp sle i64 %t499, 1152921504606846975
  br i1 %t500, label %bb122, label %bb123
bb121:
  call void @__olang_check_failed(ptr @olang_loc_de370d56f621a286_665adcb3259bb65a)
  unreachable
bb122:
  %t502 = load i64, ptr %l320, !tbaa !24
  %t503 = mul i64 %t502, 8
  %t504 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t503)
  %t505 = insertvalue { i64, ptr } undef, i64 %t502, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr %t504, 1
  store { i64, ptr } %t506, ptr %l40, !tbaa !27
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/free:walker", ptr %t508, i32 0, i32 11
  %t511 = load i64, ptr %t510, !tbaa !24
  %t513 = add i64 %t511, 1
  store i64 %t513, ptr %l326, !tbaa !24
  %t514 = load i64, ptr %l326, !tbaa !24
  %t515 = icmp sge i64 %t514, 0
  br i1 %t515, label %bb124, label %bb125
bb123:
  call void @__olang_check_failed(ptr @olang_loc_de370d56f621a286_665adcb3259bb65a)
  unreachable
bb124:
  %t517 = load i64, ptr %l326, !tbaa !24
  %t518 = icmp sle i64 %t517, 1152921504606846975
  br i1 %t518, label %bb126, label %bb127
bb125:
  call void @__olang_check_failed(ptr @olang_loc_61a66e32b2a4c4a5_788650647dbfbbd9)
  unreachable
bb126:
  %t520 = load i64, ptr %l326, !tbaa !24
  %t521 = mul i64 %t520, 8
  %t522 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t521)
  %t523 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t522, 1
  store { i64, ptr } %t524, ptr %l41, !tbaa !27
  store i64 0, ptr %l42, !tbaa !24
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t528 = getelementptr %"compiler/free:walker", ptr %t526, i32 0, i32 42
  %t530 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t528)
  store i64 %t530, ptr %l332
  br label %bb128
bb127:
  call void @__olang_check_failed(ptr @olang_loc_61a66e32b2a4c4a5_788650647dbfbbd9)
  unreachable
bb128:
  %t531 = load i64, ptr %l332, !tbaa !24
  store i64 %t531, ptr %l43, !tbaa !24
  store i64 1, ptr %l44, !tbaa !24
  %t532 = load i64, ptr %l43, !tbaa !24
  %t533 = load i64, ptr %l42, !tbaa !24
  %t536 = icmp sgt i64 %t532, %t533
  br i1 %t536, label %bb129, label %bb130
bb129:
  %t538 = load i64, ptr %l44, !tbaa !24
  %t540 = icmp sgt i64 %t538, 0
  br i1 %t540, label %bb131, label %bb132
bb130:
  store i64 0, ptr %l336, !tbaa !24
  br label %bb134
bb131:
  %t542 = load i64, ptr %l43, !tbaa !24
  %t543 = load i64, ptr %l42, !tbaa !24
  %t546 = sub i64 %t542, %t543
  %t547 = load i64, ptr %l44, !tbaa !24
  %t550 = add i64 %t546, %t547
  %t552 = sub i64 %t550, 1
  %t553 = load i64, ptr %l44, !tbaa !24
  %t556 = sdiv i64 %t552, %t553
  store i64 %t556, ptr %l339, !tbaa !24
  br label %bb133
bb132:
  store i64 0, ptr %l339, !tbaa !24
  br label %bb133
bb133:
  %t558 = load i64, ptr %l339, !tbaa !24
  store i64 %t558, ptr %l336, !tbaa !24
  br label %bb134
bb134:
  %t559 = load i64, ptr %l336, !tbaa !24
  store i64 %t559, ptr %l45, !tbaa !24
  store i64 0, ptr %l46, !tbaa !24
  br label %bb135
bb135:
  %t560 = load i64, ptr %l46, !tbaa !24
  %t561 = load i64, ptr %l45, !tbaa !24
  %t564 = icmp slt i64 %t560, %t561
  %t566 = xor i1 %t564, true
  br i1 %t566, label %bb136, label %bb137
bb136:
  br label %bb142
bb137:
  br label %bb138
bb138:
  %t568 = load i64, ptr %l42, !tbaa !24
  %t569 = load i64, ptr %l46, !tbaa !24
  %t570 = load i64, ptr %l44, !tbaa !24
  %t573 = mul i64 %t569, %t570
  %t576 = add i64 %t568, %t573
  store i64 %t576, ptr %l47, !tbaa !24
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/free:walker", ptr %t578, i32 0, i32 43
  %t581 = load i64, ptr %l47, !tbaa !24
  %t584 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t580, i64 %t581)
  store i64 %t584, ptr %l360
  br label %bb139
bb139:
  %t585 = load i64, ptr %l360, !tbaa !24
  store i64 %t585, ptr %l48, !tbaa !24
  %t586 = load i64, ptr %l48, !tbaa !24
  %t588 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t589 = load ptr, ptr %t588, !tbaa !27
  %t590 = getelementptr i64, ptr %t589, i64 %t586
  %t591 = load i64, ptr %t590, !tbaa !34
  %t592 = load i64, ptr %l48, !tbaa !24
  %t594 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t595 = load ptr, ptr %t594, !tbaa !27
  %t596 = getelementptr i64, ptr %t595, i64 %t592
  %t597 = load i64, ptr %t596, !tbaa !34
  %t600 = add i64 %t591, %t597
  store i64 %t600, ptr %l365, !tbaa !24
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t603 = getelementptr %"compiler/free:walker", ptr %t601, i32 0, i32 42
  %t604 = load i64, ptr %l47, !tbaa !24
  %t607 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t603, i64 %t604)
  store i64 %t607, ptr %l369
  br label %bb140
bb140:
  %t608 = load i64, ptr %l369, !tbaa !24
  %t609 = load i64, ptr %l365, !tbaa !24
  %t610 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t611 = load ptr, ptr %t610, !tbaa !27
  %t612 = getelementptr i64, ptr %t611, i64 %t609
  store i64 %t608, ptr %t612, !tbaa !34
  %t613 = load i64, ptr %l48, !tbaa !24
  store i64 %t613, ptr %l370, !tbaa !24
  %t614 = load i64, ptr %l370, !tbaa !24
  %t615 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t616 = load ptr, ptr %t615, !tbaa !27
  %t617 = getelementptr i64, ptr %t616, i64 %t614
  %t618 = load i64, ptr %t617, !tbaa !34
  %t620 = add i64 %t618, 1
  %t622 = load i64, ptr %l370, !tbaa !24
  %t623 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !27
  %t625 = getelementptr i64, ptr %t624, i64 %t622
  store i64 %t620, ptr %t625, !tbaa !34
  br label %bb141
bb141:
  %t626 = load i64, ptr %l46, !tbaa !24
  %t628 = add i64 %t626, 1
  store i64 %t628, ptr %l46, !tbaa !24
  br label %bb135
bb142:
  store i64 0, ptr %l49, !tbaa !24
  %t630 = load ptr, ptr %l0, !tbaa !29
  %t632 = getelementptr %"compiler/free:walker", ptr %t630, i32 0, i32 44
  %t634 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t632)
  store i64 %t634, ptr %l377
  br label %bb143
bb143:
  %t635 = load i64, ptr %l377, !tbaa !24
  store i64 %t635, ptr %l50, !tbaa !24
  store i64 1, ptr %l51, !tbaa !24
  %t636 = load i64, ptr %l50, !tbaa !24
  %t637 = load i64, ptr %l49, !tbaa !24
  %t640 = icmp sgt i64 %t636, %t637
  br i1 %t640, label %bb144, label %bb145
bb144:
  %t642 = load i64, ptr %l51, !tbaa !24
  %t644 = icmp sgt i64 %t642, 0
  br i1 %t644, label %bb146, label %bb147
bb145:
  store i64 0, ptr %l381, !tbaa !24
  br label %bb149
bb146:
  %t646 = load i64, ptr %l50, !tbaa !24
  %t647 = load i64, ptr %l49, !tbaa !24
  %t650 = sub i64 %t646, %t647
  %t651 = load i64, ptr %l51, !tbaa !24
  %t654 = add i64 %t650, %t651
  %t656 = sub i64 %t654, 1
  %t657 = load i64, ptr %l51, !tbaa !24
  %t660 = sdiv i64 %t656, %t657
  store i64 %t660, ptr %l384, !tbaa !24
  br label %bb148
bb147:
  store i64 0, ptr %l384, !tbaa !24
  br label %bb148
bb148:
  %t662 = load i64, ptr %l384, !tbaa !24
  store i64 %t662, ptr %l381, !tbaa !24
  br label %bb149
bb149:
  %t663 = load i64, ptr %l381, !tbaa !24
  store i64 %t663, ptr %l52, !tbaa !24
  store i64 0, ptr %l53, !tbaa !24
  br label %bb150
bb150:
  %t664 = load i64, ptr %l53, !tbaa !24
  %t665 = load i64, ptr %l52, !tbaa !24
  %t668 = icmp slt i64 %t664, %t665
  %t670 = xor i1 %t668, true
  br i1 %t670, label %bb151, label %bb152
bb151:
  br label %bb339
bb152:
  br label %bb153
bb153:
  %t672 = load i64, ptr %l49, !tbaa !24
  %t673 = load i64, ptr %l53, !tbaa !24
  %t674 = load i64, ptr %l51, !tbaa !24
  %t677 = mul i64 %t673, %t674
  %t680 = add i64 %t672, %t677
  store i64 %t680, ptr %l54, !tbaa !24
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t684 = getelementptr %"compiler/free:walker", ptr %t682, i32 0, i32 44
  %t685 = load i64, ptr %l54, !tbaa !24
  %t688 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t684, i64 %t685)
  store i64 %t688, ptr %l405
  br label %bb154
bb154:
  %t689 = load i64, ptr %l405, !tbaa !24
  store i64 %t689, ptr %l55, !tbaa !24
  %t690 = load ptr, ptr %l0, !tbaa !29
  %t692 = getelementptr %"compiler/free:walker", ptr %t690, i32 0, i32 45
  %t693 = load i64, ptr %l54, !tbaa !24
  %t696 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t692, i64 %t693)
  store i64 %t696, ptr %l409
  br label %bb155
bb155:
  %t697 = load i64, ptr %l409, !tbaa !24
  store i64 %t697, ptr %l56, !tbaa !24
  %t698 = load ptr, ptr %l0, !tbaa !29
  %t700 = getelementptr %"compiler/free:walker", ptr %t698, i32 0, i32 46
  %t701 = load i64, ptr %l54, !tbaa !24
  %t704 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t700, i64 %t701)
  store i64 %t704, ptr %l413
  br label %bb156
bb156:
  %t705 = load i64, ptr %l413, !tbaa !24
  store i64 %t705, ptr %l57, !tbaa !24
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t708 = getelementptr %"compiler/free:walker", ptr %t706, i32 0, i32 36
  %t709 = load i64, ptr %l54, !tbaa !24
  %t712 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t708, i64 %t709)
  store i64 %t712, ptr %l417
  br label %bb157
bb157:
  %t713 = load i64, ptr %l417, !tbaa !24
  %t714 = icmp sge i64 %t713, 0
  br i1 %t714, label %bb158, label %bb159
bb158:
  %t716 = load ptr, ptr %l0, !tbaa !29
  %t718 = getelementptr %"compiler/free:walker", ptr %t716, i32 0, i32 55
  store ptr %t718, ptr %l421, !tbaa !29
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t721 = getelementptr %"compiler/free:walker", ptr %t719, i32 0, i32 36
  %t722 = load i64, ptr %l54, !tbaa !24
  %t725 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t721, i64 %t722)
  store i64 %t725, ptr %l425
  br label %bb160
bb159:
  br label %bb165
bb160:
  %t726 = load ptr, ptr %l421, !tbaa !29
  %t727 = load i64, ptr %l425, !tbaa !24
  %t728 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t726, i64 %t727)
  %t729 = extractvalue { i32, i64 } %t728, 1
  %t730 = extractvalue { i32, i64 } %t728, 0
  store i32 %t730, ptr %l427
  %t731 = icmp ne i32 %t730, 0
  br i1 %t731, label %bb162, label %ok.732, !prof !99
ok.732:
  store i64 %t729, ptr %l426
  br label %bb161
bb161:
  %t733 = load i64, ptr %l426, !tbaa !24
  store i64 %t733, ptr %l419, !tbaa !24
  br label %bb164
bb162:
  br label %bb163
bb163:
  %t734 = load i64, ptr %l56, !tbaa !24
  store i64 %t734, ptr %l419, !tbaa !24
  br label %bb164
bb164:
  %t736 = load i64, ptr %l419, !tbaa !24
  store i64 %t736, ptr %l56, !tbaa !24
  br label %bb165
bb165:
  %t737 = load i64, ptr %l55, !tbaa !24
  %t739 = icmp sge i64 %t737, 0
  br i1 %t739, label %bb166, label %bb167
bb166:
  %t741 = load i64, ptr %l55, !tbaa !24
  store i64 %t741, ptr %l432, !tbaa !24
  %t742 = load ptr, ptr %l1, !tbaa !29
  %t744 = getelementptr %"compiler/free:Free", ptr %t742, i32 0, i32 48
  %t746 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t744)
  store i64 %t746, ptr %l435
  br label %bb168
bb167:
  store i1 false, ptr %l431, !tbaa !21
  br label %bb173
bb168:
  %t747 = load i64, ptr %l432, !tbaa !24
  %t748 = load i64, ptr %l435, !tbaa !24
  %t749 = icmp sge i64 %t747, %t748
  br i1 %t749, label %bb169, label %bb170
bb169:
  store i1 true, ptr %l437, !tbaa !21
  br label %bb172
bb170:
  %t751 = load ptr, ptr %l1, !tbaa !29
  %t753 = getelementptr %"compiler/free:Free", ptr %t751, i32 0, i32 48
  %t754 = load i64, ptr %l55, !tbaa !24
  %t757 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t753, i64 %t754)
  store i64 %t757, ptr %l441
  br label %bb171
bb171:
  %t758 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  %t759 = load i64, ptr %l441, !tbaa !24
  %t761 = icmp ne i64 %t759, %t758
  store i1 %t761, ptr %l437, !tbaa !21
  br label %bb172
bb172:
  %t763 = load i1, ptr %l437, !tbaa !21
  store i1 %t763, ptr %l431, !tbaa !21
  br label %bb173
bb173:
  %t764 = load i1, ptr %l431, !tbaa !21
  br i1 %t764, label %bb174, label %bb175
bb174:
  br label %bb338
bb175:
  br label %bb176
bb176:
  %t765 = load ptr, ptr %l0, !tbaa !29
  %t767 = getelementptr %"compiler/free:walker", ptr %t765, i32 0, i32 50
  %t768 = load i64, ptr %l54, !tbaa !24
  %t771 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t767, i64 %t768)
  store i64 %t771, ptr %l447
  br label %bb177
bb177:
  %t772 = load i64, ptr %l447, !tbaa !24
  store i64 %t772, ptr %l58, !tbaa !24
  %t773 = load i64, ptr %l57, !tbaa !24
  %t774 = load i64, ptr @G_2ecompiler_2ffree_2eLAssign, !tbaa !24
  %t777 = icmp ne i64 %t773, %t774
  br i1 %t777, label %bb178, label %bb179
bb178:
  %t779 = load i64, ptr %l57, !tbaa !24
  %t780 = load i64, ptr @G_2ecompiler_2ffree_2eLLeaf, !tbaa !24
  %t783 = icmp ne i64 %t779, %t780
  store i1 %t783, ptr %l451, !tbaa !21
  br label %bb180
bb179:
  store i1 false, ptr %l451, !tbaa !21
  br label %bb180
bb180:
  %t785 = load i1, ptr %l451, !tbaa !21
  br i1 %t785, label %bb181, label %bb182
bb181:
  %t786 = load i64, ptr %l57, !tbaa !24
  %t787 = load i64, ptr @G_2ecompiler_2ffree_2eLYield, !tbaa !24
  %t790 = icmp ne i64 %t786, %t787
  store i1 %t790, ptr %l455, !tbaa !21
  br label %bb183
bb182:
  store i1 false, ptr %l455, !tbaa !21
  br label %bb183
bb183:
  %t792 = load i1, ptr %l455, !tbaa !21
  br i1 %t792, label %bb184, label %bb185
bb184:
  %t793 = load i64, ptr %l57, !tbaa !24
  %t794 = load i64, ptr @G_2ecompiler_2ffree_2eLHeld, !tbaa !24
  %t797 = icmp ne i64 %t793, %t794
  store i1 %t797, ptr %l459, !tbaa !21
  br label %bb186
bb185:
  store i1 false, ptr %l459, !tbaa !21
  br label %bb186
bb186:
  %t799 = load i1, ptr %l459, !tbaa !21
  br i1 %t799, label %bb187, label %bb188
bb187:
  %t800 = load ptr, ptr %l1, !tbaa !29
  store ptr %t800, ptr %l464, !tbaa !29
  %t801 = load ptr, ptr %l0, !tbaa !29
  %t803 = getelementptr %"compiler/free:walker", ptr %t801, i32 0, i32 49
  %t804 = load i64, ptr %l54, !tbaa !24
  %t807 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t803, i64 %t804)
  store i64 %t807, ptr %l468
  br label %bb189
bb188:
  store i1 false, ptr %l463, !tbaa !21
  br label %bb191
bb189:
  %t808 = load ptr, ptr %l464, !tbaa !29
  %t809 = load i64, ptr %l468, !tbaa !24
  %t810 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisDtor(ptr %v0, ptr %t808, i64 %t809)
  store i1 %t810, ptr %l469
  br label %bb190
bb190:
  %t811 = load i1, ptr %l469, !tbaa !21
  %t812 = xor i1 %t811, true
  store i1 %t812, ptr %l463, !tbaa !21
  br label %bb191
bb191:
  %t814 = load i1, ptr %l463, !tbaa !21
  br i1 %t814, label %bb192, label %bb193
bb192:
  %t815 = load i64, ptr %l56, !tbaa !24
  %t817 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t818 = load ptr, ptr %t817, !tbaa !27
  %t819 = getelementptr i64, ptr %t818, i64 %t815
  %t820 = load i64, ptr %t819, !tbaa !34
  store i64 %t820, ptr %l59, !tbaa !24
  %t822 = load i64, ptr %l56, !tbaa !24
  %t824 = add i64 %t822, 1
  %t826 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t827 = load ptr, ptr %t826, !tbaa !27
  %t828 = getelementptr i64, ptr %t827, i64 %t824
  %t829 = load i64, ptr %t828, !tbaa !34
  store i64 %t829, ptr %l60, !tbaa !24
  store i64 1, ptr %l61, !tbaa !24
  %t831 = load i64, ptr %l60, !tbaa !24
  %t832 = load i64, ptr %l59, !tbaa !24
  %t835 = icmp sgt i64 %t831, %t832
  br i1 %t835, label %bb194, label %bb195
bb193:
  br label %bb222
bb194:
  %t837 = load i64, ptr %l61, !tbaa !24
  %t839 = icmp sgt i64 %t837, 0
  br i1 %t839, label %bb196, label %bb197
bb195:
  store i64 0, ptr %l479, !tbaa !24
  br label %bb199
bb196:
  %t841 = load i64, ptr %l60, !tbaa !24
  %t842 = load i64, ptr %l59, !tbaa !24
  %t845 = sub i64 %t841, %t842
  %t846 = load i64, ptr %l61, !tbaa !24
  %t849 = add i64 %t845, %t846
  %t851 = sub i64 %t849, 1
  %t852 = load i64, ptr %l61, !tbaa !24
  %t855 = sdiv i64 %t851, %t852
  store i64 %t855, ptr %l482, !tbaa !24
  br label %bb198
bb197:
  store i64 0, ptr %l482, !tbaa !24
  br label %bb198
bb198:
  %t857 = load i64, ptr %l482, !tbaa !24
  store i64 %t857, ptr %l479, !tbaa !24
  br label %bb199
bb199:
  %t858 = load i64, ptr %l479, !tbaa !24
  store i64 %t858, ptr %l62, !tbaa !24
  store i64 0, ptr %l63, !tbaa !24
  br label %bb200
bb200:
  store %olang.scope zeroinitializer, ptr %s30
  %t859 = load i64, ptr %l63, !tbaa !24
  %t860 = load i64, ptr %l62, !tbaa !24
  %t863 = icmp slt i64 %t859, %t860
  %t865 = xor i1 %t863, true
  br i1 %t865, label %bb201, label %bb202
bb201:
  call void @__olang_scope_close(ptr %s30)
  br label %bb221
bb202:
  br label %bb203
bb203:
  %t867 = load i64, ptr %l59, !tbaa !24
  %t868 = load i64, ptr %l63, !tbaa !24
  %t869 = load i64, ptr %l61, !tbaa !24
  %t872 = mul i64 %t868, %t869
  %t875 = add i64 %t867, %t872
  %t879 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t880 = load ptr, ptr %t879, !tbaa !27
  %t881 = getelementptr i64, ptr %t880, i64 %t875
  %t882 = load i64, ptr %t881, !tbaa !34
  store i64 %t882, ptr %l65, !tbaa !24
  %t884 = load i64, ptr %l55, !tbaa !24
  %t886 = icmp sge i64 %t884, 0
  br i1 %t886, label %bb204, label %bb205
bb204:
  %t888 = load i64, ptr %l65, !tbaa !24
  %t889 = load i64, ptr %l55, !tbaa !24
  %t892 = icmp ne i64 %t888, %t889
  store i1 %t892, ptr %l504, !tbaa !21
  br label %bb206
bb205:
  store i1 false, ptr %l504, !tbaa !21
  br label %bb206
bb206:
  %t894 = load i1, ptr %l504, !tbaa !21
  br i1 %t894, label %bb207, label %bb208
bb207:
  store i1 true, ptr %l508, !tbaa !21
  br label %bb210
bb208:
  %t895 = load ptr, ptr %l1, !tbaa !29
  %t897 = getelementptr %"compiler/free:Free", ptr %t895, i32 0, i32 48
  %t898 = load i64, ptr %l65, !tbaa !24
  %t901 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t897, i64 %t898)
  store i64 %t901, ptr %l512
  br label %bb209
bb209:
  %t902 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  %t903 = load i64, ptr %l512, !tbaa !24
  %t905 = icmp ne i64 %t903, %t902
  store i1 %t905, ptr %l508, !tbaa !21
  br label %bb210
bb210:
  %t907 = load i1, ptr %l508, !tbaa !21
  br i1 %t907, label %bb211, label %bb212
bb211:
  call void @__olang_scope_close(ptr %s30)
  br label %bb220
bb212:
  br label %bb213
bb213:
  %t908 = load ptr, ptr %l1, !tbaa !29
  store ptr %t908, ptr %l515, !tbaa !29
  %t909 = load i64, ptr %l65, !tbaa !24
  store i64 %t909, ptr %l516, !tbaa !24
  %t910 = load ptr, ptr %l2, !tbaa !29
  %t912 = getelementptr %"compiler/typed:Body", ptr %t910, i32 0, i32 3
  %t913 = load i64, ptr %t912, !tbaa !24
  store i64 %t913, ptr %l518, !tbaa !24
  %t914 = load ptr, ptr %l0, !tbaa !29
  %t916 = getelementptr %"compiler/free:walker", ptr %t914, i32 0, i32 47
  %t917 = load i64, ptr %l54, !tbaa !24
  %t920 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t916, i64 %t917)
  store %"compiler/source:Span" %t920, ptr %l522
  br label %bb214
bb214:
  %t921 = ptrtoint ptr %v0 to i64
  store i64 %t921, ptr %l523, !tbaa !24
  %t922 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t922, label %bb215, label %bb216
bb215:
  %t924 = call ptr @__olang_region_make(ptr %v0)
  %t925 = ptrtoint ptr %t924 to i64
  store i64 %t925, ptr %l523, !tbaa !24
  br label %bb216
bb216:
  %t926 = load ptr, ptr %l1, !tbaa !29
  store ptr %t926, ptr %l525, !tbaa !29
  %t927 = load ptr, ptr %l2, !tbaa !29
  %t929 = getelementptr %"compiler/typed:Body", ptr %t927, i32 0, i32 3
  %t930 = load i64, ptr %t929, !tbaa !24
  store i64 %t930, ptr %l527, !tbaa !24
  %t931 = load ptr, ptr %l0, !tbaa !29
  %t933 = getelementptr %"compiler/free:walker", ptr %t931, i32 0, i32 47
  %t934 = load i64, ptr %l54, !tbaa !24
  %t937 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t933, i64 %t934)
  store %"compiler/source:Span" %t937, ptr %l531
  br label %bb217
bb217:
  %t938 = load ptr, ptr %l525, !tbaa !29
  %t939 = load i64, ptr %l527, !tbaa !24
  %t940 = load %"compiler/source:Span", ptr %l531
  %t941 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %s30, ptr %t938, i64 %t939, %"compiler/source:Span" %t940)
  store { i64, ptr } %t941, ptr %l532
  br label %bb218
bb218:
  %t942 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t943 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t944 = load { i64, ptr }, ptr %l532, !tbaa !27
  %t945 = extractvalue { i64, ptr } %t944, 1
  %t946 = extractvalue { i64, ptr } %t944, 0
  %t947 = add i64 %t943, %t946
  %t948 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t949 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t950 = add i64 %t947, %t949
  %t951 = load i64, ptr %l523
  %t952 = inttoptr i64 %t951 to ptr
  %t953 = call ptr @__olang_scope_alloc(ptr %t952, i64 %t950)
  call void @olang_textcopy(ptr %t953, ptr %t942, i64 %t943)
  %t954 = getelementptr i8, ptr %t953, i64 %t943
  call void @olang_textcopy(ptr %t954, ptr %t945, i64 %t946)
  %t955 = getelementptr i8, ptr %t954, i64 %t946
  call void @olang_textcopy(ptr %t955, ptr %t948, i64 %t949)
  %t956 = insertvalue { i64, ptr } undef, i64 %t950, 0
  %t957 = insertvalue { i64, ptr } %t956, ptr %t953, 1
  %t959 = load i64, ptr %l523
  %t960 = inttoptr i64 %t959 to ptr
  %t961 = extractvalue { i64, ptr } %t957, 0
  %t962 = extractvalue { i64, ptr } %t957, 1
  %t963 = mul i64 %t961, 1
  %t964 = call ptr @__olang_scope_alloc(ptr %t960, i64 %t963)
  call void @llvm.memcpy.p0.p0.i64(ptr %t964, ptr %t962, i64 %t963, i1 false)
  %t965 = insertvalue { i64, ptr } undef, i64 %t961, 0
  %t966 = insertvalue { i64, ptr } %t965, ptr %t964, 1
  %t967 = load i64, ptr %l58, !tbaa !24
  %t968 = load ptr, ptr %l515, !tbaa !29
  %t969 = load i64, ptr %l516, !tbaa !24
  %t970 = load i64, ptr %l518, !tbaa !24
  %t971 = load %"compiler/source:Span", ptr %l522
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeepView(ptr %v0, ptr %v0, ptr %t968, i64 %t969, i64 %t970, %"compiler/source:Span" %t971, { i64, ptr } %t966, i64 %t967)
  br label %bb219
bb219:
  call void @__olang_scope_close(ptr %s30)
  br label %bb220
bb220:
  %t974 = load i64, ptr %l63, !tbaa !24
  %t976 = add i64 %t974, 1
  store i64 %t976, ptr %l63, !tbaa !24
  br label %bb200
bb221:
  br label %bb222
bb222:
  store ptr %l20, ptr %l66, !tbaa !29
  store i64 0, ptr %l67, !tbaa !24
  br label %bb223
bb223:
  store %olang.scope zeroinitializer, ptr %s35
  %t979 = load i64, ptr %l67, !tbaa !24
  store i64 %t979, ptr %l539, !tbaa !24
  %t980 = load ptr, ptr %l66, !tbaa !29
  %t982 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t980)
  store i64 %t982, ptr %l541
  br label %bb224
bb224:
  %t983 = load i64, ptr %l539, !tbaa !24
  %t984 = load i64, ptr %l541, !tbaa !24
  %t985 = icmp slt i64 %t983, %t984
  %t987 = xor i1 %t985, true
  br i1 %t987, label %bb225, label %bb226
bb225:
  call void @__olang_scope_close(ptr %s35)
  br label %bb337
bb226:
  br label %bb227
bb227:
  %t989 = load ptr, ptr %l66, !tbaa !29
  %t990 = load i64, ptr %l67, !tbaa !24
  %t993 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t989, i64 %t990)
  store i64 %t993, ptr %l546
  br label %bb228
bb228:
  %t994 = load i64, ptr %l546, !tbaa !24
  store i64 %t994, ptr %l68, !tbaa !24
  store i1 false, ptr %l69, !tbaa !21
  %t995 = load i64, ptr %l68, !tbaa !24
  %t998 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %s0, ptr %s0, ptr %l3, i64 %t995)
  store ptr %t998, ptr %l549
  br label %bb229
bb229:
  %t999 = load ptr, ptr %l549, !tbaa !29
  store ptr %t999, ptr %l70, !tbaa !29
  store i64 0, ptr %l71, !tbaa !24
  br label %bb230
bb230:
  %t1000 = load i64, ptr %l71, !tbaa !24
  store i64 %t1000, ptr %l550, !tbaa !24
  %t1001 = load ptr, ptr %l70, !tbaa !29
  store ptr %t1001, ptr %l551, !tbaa !29
  %t1002 = ptrtoint ptr %s0 to i64
  store i64 %t1002, ptr %l552, !tbaa !24
  %t1003 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t1003, label %bb231, label %bb232
bb231:
  %t1005 = load ptr, ptr %l551, !tbaa !29
  %t1006 = call ptr @__olang_region_or(ptr %t1005, ptr %s0)
  %t1007 = ptrtoint ptr %t1006 to i64
  store i64 %t1007, ptr %l552, !tbaa !24
  br label %bb232
bb232:
  %t1008 = load ptr, ptr %l70, !tbaa !29
  %t1009 = load i64, ptr %l552
  %t1010 = inttoptr i64 %t1009 to ptr
  %t1012 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t1010, ptr %t1008)
  store i64 %t1012, ptr %l555
  br label %bb233
bb233:
  %t1013 = load i64, ptr %l550, !tbaa !24
  %t1014 = load i64, ptr %l555, !tbaa !24
  %t1015 = icmp slt i64 %t1013, %t1014
  %t1017 = xor i1 %t1015, true
  br i1 %t1017, label %bb234, label %bb235
bb234:
  br label %bb251
bb235:
  br label %bb236
bb236:
  %t1019 = load ptr, ptr %l70, !tbaa !29
  store ptr %t1019, ptr %l558, !tbaa !29
  %t1020 = ptrtoint ptr %s0 to i64
  store i64 %t1020, ptr %l559, !tbaa !24
  %t1021 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t1021, label %bb237, label %bb238
bb237:
  %t1023 = load ptr, ptr %l558, !tbaa !29
  %t1024 = call ptr @__olang_region_or(ptr %t1023, ptr %s0)
  %t1025 = ptrtoint ptr %t1024 to i64
  store i64 %t1025, ptr %l559, !tbaa !24
  br label %bb238
bb238:
  %t1026 = load ptr, ptr %l70, !tbaa !29
  %t1027 = load i64, ptr %l71, !tbaa !24
  %t1028 = load i64, ptr %l559
  %t1029 = inttoptr i64 %t1028 to ptr
  %t1032 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t1029, ptr %t1026, i64 %t1027)
  store i64 %t1032, ptr %l563
  br label %bb239
bb239:
  %t1033 = load i64, ptr %l563, !tbaa !24
  store i64 %t1033, ptr %l72, !tbaa !24
  %t1034 = load i64, ptr %l55, !tbaa !24
  %t1036 = icmp slt i64 %t1034, 0
  br i1 %t1036, label %bb240, label %bb241
bb240:
  store i1 true, ptr %l566, !tbaa !21
  br label %bb242
bb241:
  %t1038 = load i64, ptr %l72, !tbaa !24
  %t1039 = load i64, ptr %l55, !tbaa !24
  %t1042 = icmp eq i64 %t1038, %t1039
  store i1 %t1042, ptr %l566, !tbaa !21
  br label %bb242
bb242:
  %t1044 = load i1, ptr %l566, !tbaa !21
  br i1 %t1044, label %bb243, label %bb244
bb243:
  %t1045 = load ptr, ptr %l1, !tbaa !29
  %t1047 = getelementptr %"compiler/free:Free", ptr %t1045, i32 0, i32 48
  %t1048 = load i64, ptr %l72, !tbaa !24
  %t1051 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t1047, i64 %t1048)
  store i64 %t1051, ptr %l574
  br label %bb245
bb244:
  store i1 false, ptr %l570, !tbaa !21
  br label %bb246
bb245:
  %t1052 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  %t1053 = load i64, ptr %l574, !tbaa !24
  %t1055 = icmp eq i64 %t1053, %t1052
  store i1 %t1055, ptr %l570, !tbaa !21
  br label %bb246
bb246:
  %t1057 = load i1, ptr %l570, !tbaa !21
  br i1 %t1057, label %bb247, label %bb248
bb247:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb249
bb248:
  br label %bb249
bb249:
  br label %bb250
bb250:
  %t1058 = load i64, ptr %l71, !tbaa !24
  %t1060 = add i64 %t1058, 1
  store i64 %t1060, ptr %l71, !tbaa !24
  br label %bb230
bb251:
  %t1062 = load i1, ptr %l69, !tbaa !21
  %t1064 = xor i1 %t1062, true
  br i1 %t1064, label %bb252, label %bb253
bb252:
  call void @__olang_scope_close(ptr %s35)
  br label %bb336
bb253:
  br label %bb254
bb254:
  %t1066 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1066, ptr %l581, !tbaa !29
  %t1067 = load i64, ptr %l68, !tbaa !24
  store i64 %t1067, ptr %l582, !tbaa !24
  %t1068 = load i64, ptr %l56, !tbaa !24
  store i64 %t1068, ptr %l583, !tbaa !24
  %t1069 = load i64, ptr %l68, !tbaa !24
  %t1072 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %s0, ptr %s0, ptr %l4, i64 %t1069)
  store ptr %t1072, ptr %l586
  br label %bb255
bb255:
  %t1073 = load ptr, ptr %l581, !tbaa !29
  %t1074 = load i64, ptr %l582, !tbaa !24
  %t1075 = load i64, ptr %l583, !tbaa !24
  %t1076 = load ptr, ptr %l586, !tbaa !29
  %t1077 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eusedAfter(ptr %v0, ptr %s0, ptr %t1073, i64 %t1074, i64 %t1075, ptr %t1076)
  store i64 %t1077, ptr %l587
  br label %bb256
bb256:
  %t1078 = load i64, ptr %l587, !tbaa !24
  store i64 %t1078, ptr %l73, !tbaa !24
  %t1079 = load i64, ptr %l73, !tbaa !24
  %t1081 = icmp slt i64 %t1079, 0
  br i1 %t1081, label %bb257, label %bb258
bb257:
  call void @__olang_scope_close(ptr %s35)
  br label %bb336
bb258:
  br label %bb259
bb259:
  %t1083 = load ptr, ptr %l1, !tbaa !29
  %t1085 = getelementptr %"compiler/free:Free", ptr %t1083, i32 0, i32 0
  %t1086 = load ptr, ptr %t1085, !tbaa !29
  %t1088 = getelementptr %"compiler/generic:Program", ptr %t1086, i32 0, i32 0
  %t1089 = load ptr, ptr %t1088, !tbaa !29
  %t1091 = getelementptr %"compiler/load:Loader", ptr %t1089, i32 0, i32 3
  %t1092 = load ptr, ptr %t1091, !tbaa !29
  store ptr %t1092, ptr %l593, !tbaa !29
  %t1093 = load ptr, ptr %l2, !tbaa !29
  %t1095 = getelementptr %"compiler/typed:Body", ptr %t1093, i32 0, i32 7
  %t1096 = load i64, ptr %l68, !tbaa !24
  %t1099 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t1095, i64 %t1096)
  store %"compiler/typed:Local" %t1099, ptr %l597
  br label %bb260
bb260:
  %t1100 = getelementptr %"compiler/typed:Local", ptr %l597, i32 0, i32 0
  %t1101 = load i32, ptr %t1100, !tbaa !23
  %t1102 = load ptr, ptr %l593, !tbaa !29
  %t1104 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t1102, i32 %t1101)
  store { i64, ptr } %t1104, ptr %l599
  br label %bb261
bb261:
  %t1105 = load { i64, ptr }, ptr %l599, !tbaa !27
  store { i64, ptr } %t1105, ptr %l74, !tbaa !27
  %t1106 = load ptr, ptr %l1, !tbaa !29
  %t1108 = getelementptr %"compiler/free:Free", ptr %t1106, i32 0, i32 0
  %t1109 = load ptr, ptr %t1108, !tbaa !29
  %t1111 = getelementptr %"compiler/generic:Program", ptr %t1109, i32 0, i32 0
  %t1112 = load ptr, ptr %t1111, !tbaa !29
  %t1114 = getelementptr %"compiler/load:Loader", ptr %t1112, i32 0, i32 4
  %t1115 = load ptr, ptr %t1114, !tbaa !29
  store ptr %t1115, ptr %l603, !tbaa !29
  %t1116 = load ptr, ptr %l2, !tbaa !29
  %t1118 = getelementptr %"compiler/typed:Body", ptr %t1116, i32 0, i32 3
  %t1119 = load i64, ptr %t1118, !tbaa !24
  store i64 %t1119, ptr %l605, !tbaa !24
  %t1120 = load ptr, ptr %l2, !tbaa !29
  %t1122 = getelementptr %"compiler/typed:Body", ptr %t1120, i32 0, i32 7
  %t1123 = load i64, ptr %l68, !tbaa !24
  %t1126 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t1122, i64 %t1123)
  store %"compiler/typed:Local" %t1126, ptr %l609
  br label %bb262
bb262:
  %t1127 = getelementptr %"compiler/typed:Local", ptr %l609, i32 0, i32 1
  %t1128 = getelementptr %"compiler/source:Span", ptr %t1127, i32 0, i32 0
  %t1129 = load i32, ptr %t1128, !tbaa !23
  %t1131 = sext i32 %t1129 to i64
  %t1132 = load ptr, ptr %l603, !tbaa !29
  %t1133 = load i64, ptr %l605, !tbaa !24
  %t1135 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t1132, i64 %t1133, i64 %t1131)
  store i64 %t1135, ptr %l612
  br label %bb263
bb263:
  %t1136 = load i64, ptr %l612, !tbaa !24
  store i64 %t1136, ptr %l75, !tbaa !24
  %t1137 = load ptr, ptr %l1, !tbaa !29
  %t1139 = getelementptr %"compiler/free:Free", ptr %t1137, i32 0, i32 0
  %t1140 = load ptr, ptr %t1139, !tbaa !29
  %t1142 = getelementptr %"compiler/generic:Program", ptr %t1140, i32 0, i32 0
  %t1143 = load ptr, ptr %t1142, !tbaa !29
  %t1145 = getelementptr %"compiler/load:Loader", ptr %t1143, i32 0, i32 4
  %t1146 = load ptr, ptr %t1145, !tbaa !29
  store ptr %t1146, ptr %l616, !tbaa !29
  %t1147 = load ptr, ptr %l2, !tbaa !29
  %t1149 = getelementptr %"compiler/typed:Body", ptr %t1147, i32 0, i32 3
  %t1150 = load i64, ptr %t1149, !tbaa !24
  store i64 %t1150, ptr %l618, !tbaa !24
  %t1151 = load ptr, ptr %l0, !tbaa !29
  %t1153 = getelementptr %"compiler/free:walker", ptr %t1151, i32 0, i32 47
  %t1154 = load i64, ptr %l54, !tbaa !24
  %t1157 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t1153, i64 %t1154)
  store %"compiler/source:Span" %t1157, ptr %l622
  br label %bb264
bb264:
  %t1158 = getelementptr %"compiler/source:Span", ptr %l622, i32 0, i32 0
  %t1159 = load i32, ptr %t1158, !tbaa !23
  %t1161 = sext i32 %t1159 to i64
  %t1162 = load ptr, ptr %l616, !tbaa !29
  %t1163 = load i64, ptr %l618, !tbaa !24
  %t1165 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t1162, i64 %t1163, i64 %t1161)
  store i64 %t1165, ptr %l625
  br label %bb265
bb265:
  %t1166 = load i64, ptr %l625, !tbaa !24
  store i64 %t1166, ptr %l76, !tbaa !24
  %t1167 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t1168 = load i64, ptr %l75, !tbaa !24
  %t1169 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t1170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t1172 = extractvalue { i64, ptr } %t1167, 1
  %t1173 = extractvalue { i64, ptr } %t1167, 0
  %t1174 = add i64 %t1170, %t1173
  %t1175 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t1176 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t1177 = add i64 %t1174, %t1176
  %t1179 = call i64 @__olang_fmt_i64(ptr null, i64 %t1168)
  %t1180 = add i64 %t1177, %t1179
  %t1181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t1182 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t1183 = add i64 %t1180, %t1182
  %t1184 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1183)
  call void @olang_textcopy(ptr %t1184, ptr %t1169, i64 %t1170)
  %t1185 = getelementptr i8, ptr %t1184, i64 %t1170
  call void @olang_textcopy(ptr %t1185, ptr %t1172, i64 %t1173)
  %t1186 = getelementptr i8, ptr %t1185, i64 %t1173
  call void @olang_textcopy(ptr %t1186, ptr %t1175, i64 %t1176)
  %t1187 = getelementptr i8, ptr %t1186, i64 %t1176
  %t1188 = call i64 @__olang_fmt_i64(ptr %t1187, i64 %t1168)
  %t1189 = getelementptr i8, ptr %t1187, i64 %t1179
  call void @olang_textcopy(ptr %t1189, ptr %t1181, i64 %t1182)
  %t1190 = insertvalue { i64, ptr } undef, i64 %t1183, 0
  %t1191 = insertvalue { i64, ptr } %t1190, ptr %t1184, 1
  store { i64, ptr } %t1191, ptr %l77, !tbaa !27
  %t1193 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t1194 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t1195 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t1197 = extractvalue { i64, ptr } %t1193, 1
  %t1198 = extractvalue { i64, ptr } %t1193, 0
  %t1199 = add i64 %t1195, %t1198
  %t1200 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t1201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t1202 = add i64 %t1199, %t1201
  %t1203 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1202)
  call void @olang_textcopy(ptr %t1203, ptr %t1194, i64 %t1195)
  %t1204 = getelementptr i8, ptr %t1203, i64 %t1195
  call void @olang_textcopy(ptr %t1204, ptr %t1197, i64 %t1198)
  %t1205 = getelementptr i8, ptr %t1204, i64 %t1198
  call void @olang_textcopy(ptr %t1205, ptr %t1200, i64 %t1201)
  %t1206 = insertvalue { i64, ptr } undef, i64 %t1202, 0
  %t1207 = insertvalue { i64, ptr } %t1206, ptr %t1203, 1
  store { i64, ptr } %t1207, ptr %l78, !tbaa !27
  %t1209 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t1211 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s35, { i64, ptr } %t1209, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i1 %t1211, ptr %l632
  br label %bb266
bb266:
  %t1212 = load i1, ptr %l632, !tbaa !21
  br i1 %t1212, label %bb267, label %bb268
bb267:
  store %olang.scope zeroinitializer, ptr %s44
  %t1213 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1213, ptr %l633, !tbaa !29
  %t1214 = load ptr, ptr %l2, !tbaa !29
  %t1216 = getelementptr %"compiler/typed:Body", ptr %t1214, i32 0, i32 3
  %t1217 = load i64, ptr %t1216, !tbaa !24
  store i64 %t1217, ptr %l635, !tbaa !24
  %t1218 = load ptr, ptr %l0, !tbaa !29
  %t1220 = getelementptr %"compiler/free:walker", ptr %t1218, i32 0, i32 21
  %t1221 = load i64, ptr %l68, !tbaa !24
  %t1224 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t1220, i64 %t1221)
  store %"compiler/source:Span" %t1224, ptr %l639
  br label %bb269
bb268:
  br label %bb285
bb269:
  %t1225 = load ptr, ptr %l633, !tbaa !29
  %t1226 = load i64, ptr %l635, !tbaa !24
  %t1227 = load %"compiler/source:Span", ptr %l639
  %t1228 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %s44, ptr %t1225, i64 %t1226, %"compiler/source:Span" %t1227)
  store { i64, ptr } %t1228, ptr %l640
  br label %bb270
bb270:
  %t1229 = load { i64, ptr }, ptr %l640, !tbaa !27
  store { i64, ptr } %t1229, ptr %l79, !tbaa !27
  %t1230 = load i64, ptr %l75, !tbaa !24
  store i64 %t1230, ptr %l641, !tbaa !24
  %t1231 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t1233 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s44, ptr %s44, { i64, ptr } %t1231, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store i1 %t1233, ptr %l643
  br label %bb271
bb271:
  %t1234 = load i1, ptr %l643, !tbaa !21
  %t1235 = xor i1 %t1234, true
  br i1 %t1235, label %bb272, label %bb273
bb272:
  %t1237 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l647, !tbaa !27
  %t1239 = load { i64, ptr }, ptr %l647, !tbaa !27
  %t1240 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s44, ptr %s44, { i64, ptr } %t1237, { i64, ptr } %t1239)
  store i1 %t1240, ptr %l648
  br label %bb274
bb273:
  store i1 false, ptr %l645, !tbaa !21
  br label %bb275
bb274:
  %t1241 = load i1, ptr %l648, !tbaa !21
  %t1242 = xor i1 %t1241, true
  store i1 %t1242, ptr %l645, !tbaa !21
  br label %bb275
bb275:
  %t1244 = load i1, ptr %l645, !tbaa !21
  br i1 %t1244, label %bb276, label %bb277
bb276:
  %t1245 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t1246 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t1247 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t1249 = extractvalue { i64, ptr } %t1245, 1
  %t1250 = extractvalue { i64, ptr } %t1245, 0
  %t1251 = add i64 %t1247, %t1250
  %t1252 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t1253 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t1254 = add i64 %t1251, %t1253
  %t1255 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1254)
  call void @olang_textcopy(ptr %t1255, ptr %t1246, i64 %t1247)
  %t1256 = getelementptr i8, ptr %t1255, i64 %t1247
  call void @olang_textcopy(ptr %t1256, ptr %t1249, i64 %t1250)
  %t1257 = getelementptr i8, ptr %t1256, i64 %t1250
  call void @olang_textcopy(ptr %t1257, ptr %t1252, i64 %t1253)
  %t1258 = insertvalue { i64, ptr } undef, i64 %t1254, 0
  %t1259 = insertvalue { i64, ptr } %t1258, ptr %t1255, 1
  %t1261 = extractvalue { i64, ptr } %t1259, 0
  %t1262 = extractvalue { i64, ptr } %t1259, 1
  %t1263 = mul i64 %t1261, 1
  %t1264 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1263)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1264, ptr %t1262, i64 %t1263, i1 false)
  %t1265 = insertvalue { i64, ptr } undef, i64 %t1261, 0
  %t1266 = insertvalue { i64, ptr } %t1265, ptr %t1264, 1
  store { i64, ptr } %t1266, ptr %l650, !tbaa !27
  br label %bb278
bb277:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l650, !tbaa !27
  br label %bb278
bb278:
  %t1268 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t1269 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t1270 = load i64, ptr %l641, !tbaa !24
  %t1271 = call i64 @__olang_fmt_i64(ptr null, i64 %t1270)
  %t1272 = add i64 %t1269, %t1271
  %t1273 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t1274 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t1275 = add i64 %t1272, %t1274
  %t1276 = load { i64, ptr }, ptr %l650, !tbaa !27
  %t1277 = extractvalue { i64, ptr } %t1276, 1
  %t1278 = extractvalue { i64, ptr } %t1276, 0
  %t1279 = add i64 %t1275, %t1278
  %t1280 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1279)
  call void @olang_textcopy(ptr %t1280, ptr %t1268, i64 %t1269)
  %t1281 = getelementptr i8, ptr %t1280, i64 %t1269
  %t1282 = call i64 @__olang_fmt_i64(ptr %t1281, i64 %t1270)
  %t1283 = getelementptr i8, ptr %t1281, i64 %t1271
  call void @olang_textcopy(ptr %t1283, ptr %t1273, i64 %t1274)
  %t1284 = getelementptr i8, ptr %t1283, i64 %t1274
  call void @olang_textcopy(ptr %t1284, ptr %t1277, i64 %t1278)
  %t1285 = insertvalue { i64, ptr } undef, i64 %t1279, 0
  %t1286 = insertvalue { i64, ptr } %t1285, ptr %t1280, 1
  store { i64, ptr } %t1286, ptr %l654, !tbaa !27
  %t1287 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1288 = extractvalue { i64, ptr } %t1287, 0
  %t1289 = load { i64, ptr }, ptr %l654, !tbaa !27
  %t1290 = extractvalue { i64, ptr } %t1289, 0
  store i64 %t1290, ptr %l656, !tbaa !24
  %t1292 = load i64, ptr %l656, !tbaa !24
  %t1293 = icmp eq i64 %t1288, %t1292
  br i1 %t1293, label %bb279, label %bb280
bb279:
  %t1295 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t1296 = load ptr, ptr %t1295, !tbaa !27
  %t1297 = getelementptr { i64, ptr }, ptr %l654, i32 0, i32 1
  %t1298 = load ptr, ptr %t1297, !tbaa !27
  %t1299 = load i64, ptr %l656, !tbaa !24
  %t1300 = mul i64 %t1299, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1296, ptr %t1298, i64 %t1300, i1 false)
  br label %bb281
bb280:
  %t1301 = load { i64, ptr }, ptr %l654, !tbaa !27
  store { i64, ptr } %t1301, ptr %l77, !tbaa !27
  br label %bb281
bb281:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l658, !tbaa !27
  %t1302 = load { i64, ptr }, ptr %l658, !tbaa !27
  store { i64, ptr } %t1302, ptr %l659, !tbaa !27
  %t1303 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t1304 = extractvalue { i64, ptr } %t1303, 0
  %t1305 = load { i64, ptr }, ptr %l659, !tbaa !27
  %t1306 = extractvalue { i64, ptr } %t1305, 0
  store i64 %t1306, ptr %l661, !tbaa !24
  %t1308 = load i64, ptr %l661, !tbaa !24
  %t1309 = icmp eq i64 %t1304, %t1308
  br i1 %t1309, label %bb282, label %bb283
bb282:
  %t1311 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t1312 = load ptr, ptr %t1311, !tbaa !27
  %t1313 = getelementptr { i64, ptr }, ptr %l659, i32 0, i32 1
  %t1314 = load ptr, ptr %t1313, !tbaa !27
  %t1315 = load i64, ptr %l661, !tbaa !24
  %t1316 = mul i64 %t1315, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1312, ptr %t1314, i64 %t1316, i1 false)
  br label %bb284
bb283:
  %t1317 = load { i64, ptr }, ptr %l659, !tbaa !27
  %t1318 = extractvalue { i64, ptr } %t1317, 0
  store i64 %t1318, ptr %l663, !tbaa !24
  %t1319 = load i64, ptr %l663, !tbaa !24
  %t1320 = mul i64 %t1319, 1
  %t1321 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1320)
  %t1322 = insertvalue { i64, ptr } undef, i64 %t1319, 0
  %t1323 = insertvalue { i64, ptr } %t1322, ptr %t1321, 1
  store { i64, ptr } %t1323, ptr %l664, !tbaa !27
  %t1324 = getelementptr { i64, ptr }, ptr %l664, i32 0, i32 1
  %t1325 = load ptr, ptr %t1324, !tbaa !27
  %t1326 = getelementptr { i64, ptr }, ptr %l659, i32 0, i32 1
  %t1327 = load ptr, ptr %t1326, !tbaa !27
  %t1328 = load i64, ptr %l663, !tbaa !24
  %t1329 = mul i64 %t1328, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1325, ptr %t1327, i64 %t1329, i1 false)
  %t1330 = load { i64, ptr }, ptr %l664, !tbaa !27
  store { i64, ptr } %t1330, ptr %l78, !tbaa !27
  br label %bb284
bb284:
  call void @__olang_scope_close(ptr %s44)
  br label %bb285
bb285:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l665, !tbaa !27
  %t1331 = load { i64, ptr }, ptr %l665, !tbaa !27
  store { i64, ptr } %t1331, ptr %l666, !tbaa !27
  %t1332 = load { i64, ptr }, ptr %l666, !tbaa !27
  %t1333 = extractvalue { i64, ptr } %t1332, 0
  store i64 %t1333, ptr %l667, !tbaa !24
  %t1334 = load i64, ptr %l667, !tbaa !24
  %t1335 = mul i64 %t1334, 1
  %t1336 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1335)
  %t1337 = insertvalue { i64, ptr } undef, i64 %t1334, 0
  %t1338 = insertvalue { i64, ptr } %t1337, ptr %t1336, 1
  store { i64, ptr } %t1338, ptr %l668, !tbaa !27
  %t1339 = getelementptr { i64, ptr }, ptr %l668, i32 0, i32 1
  %t1340 = load ptr, ptr %t1339, !tbaa !27
  %t1341 = getelementptr { i64, ptr }, ptr %l666, i32 0, i32 1
  %t1342 = load ptr, ptr %t1341, !tbaa !27
  %t1343 = load i64, ptr %l667, !tbaa !24
  %t1344 = mul i64 %t1343, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1340, ptr %t1342, i64 %t1344, i1 false)
  %t1345 = load { i64, ptr }, ptr %l668, !tbaa !27
  store { i64, ptr } %t1345, ptr %l80, !tbaa !27
  %t1346 = load i64, ptr %l57, !tbaa !24
  %t1347 = load i64, ptr @G_2ecompiler_2ffree_2eLYield, !tbaa !24
  %t1350 = icmp eq i64 %t1346, %t1347
  br i1 %t1350, label %bb286, label %bb287
bb286:
  store %olang.scope zeroinitializer, ptr %s47
  %t1352 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1352, ptr %l672, !tbaa !29
  %t1353 = load ptr, ptr %l2, !tbaa !29
  %t1355 = getelementptr %"compiler/typed:Body", ptr %t1353, i32 0, i32 3
  %t1356 = load i64, ptr %t1355, !tbaa !24
  store i64 %t1356, ptr %l674, !tbaa !24
  %t1357 = load ptr, ptr %l0, !tbaa !29
  %t1359 = getelementptr %"compiler/free:walker", ptr %t1357, i32 0, i32 47
  %t1360 = load i64, ptr %l54, !tbaa !24
  %t1363 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t1359, i64 %t1360)
  store %"compiler/source:Span" %t1363, ptr %l678
  br label %bb288
bb287:
  %t1364 = load i64, ptr %l57, !tbaa !24
  %t1365 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  %t1368 = icmp eq i64 %t1364, %t1365
  br i1 %t1368, label %bb293, label %bb294
bb288:
  %t1370 = load ptr, ptr %l672, !tbaa !29
  %t1371 = load i64, ptr %l674, !tbaa !24
  %t1372 = load %"compiler/source:Span", ptr %l678
  %t1373 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %s47, ptr %t1370, i64 %t1371, %"compiler/source:Span" %t1372)
  store { i64, ptr } %t1373, ptr %l679
  br label %bb289
bb289:
  %t1374 = load i64, ptr %l76, !tbaa !24
  %t1375 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t1376 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t1377 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t1378 = load { i64, ptr }, ptr %l679, !tbaa !27
  %t1379 = extractvalue { i64, ptr } %t1378, 1
  %t1380 = extractvalue { i64, ptr } %t1378, 0
  %t1381 = add i64 %t1377, %t1380
  %t1382 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t1383 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t1384 = add i64 %t1381, %t1383
  %t1386 = call i64 @__olang_fmt_i64(ptr null, i64 %t1374)
  %t1387 = add i64 %t1384, %t1386
  %t1388 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t1389 = extractvalue { i64, ptr } { i64 68, ptr getelementptr inbounds (<{ i64, [68 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t1390 = add i64 %t1387, %t1389
  %t1392 = extractvalue { i64, ptr } %t1375, 1
  %t1393 = extractvalue { i64, ptr } %t1375, 0
  %t1394 = add i64 %t1390, %t1393
  %t1395 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t1396 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t1397 = add i64 %t1394, %t1396
  %t1398 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1397)
  call void @olang_textcopy(ptr %t1398, ptr %t1376, i64 %t1377)
  %t1399 = getelementptr i8, ptr %t1398, i64 %t1377
  call void @olang_textcopy(ptr %t1399, ptr %t1379, i64 %t1380)
  %t1400 = getelementptr i8, ptr %t1399, i64 %t1380
  call void @olang_textcopy(ptr %t1400, ptr %t1382, i64 %t1383)
  %t1401 = getelementptr i8, ptr %t1400, i64 %t1383
  %t1402 = call i64 @__olang_fmt_i64(ptr %t1401, i64 %t1374)
  %t1403 = getelementptr i8, ptr %t1401, i64 %t1386
  call void @olang_textcopy(ptr %t1403, ptr %t1388, i64 %t1389)
  %t1404 = getelementptr i8, ptr %t1403, i64 %t1389
  call void @olang_textcopy(ptr %t1404, ptr %t1392, i64 %t1393)
  %t1405 = getelementptr i8, ptr %t1404, i64 %t1393
  call void @olang_textcopy(ptr %t1405, ptr %t1395, i64 %t1396)
  %t1406 = insertvalue { i64, ptr } undef, i64 %t1397, 0
  %t1407 = insertvalue { i64, ptr } %t1406, ptr %t1398, 1
  store { i64, ptr } %t1407, ptr %l682, !tbaa !27
  %t1408 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t1409 = extractvalue { i64, ptr } %t1408, 0
  %t1410 = load { i64, ptr }, ptr %l682, !tbaa !27
  %t1411 = extractvalue { i64, ptr } %t1410, 0
  store i64 %t1411, ptr %l684, !tbaa !24
  %t1413 = load i64, ptr %l684, !tbaa !24
  %t1414 = icmp eq i64 %t1409, %t1413
  br i1 %t1414, label %bb290, label %bb291
bb290:
  %t1416 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t1417 = load ptr, ptr %t1416, !tbaa !27
  %t1418 = getelementptr { i64, ptr }, ptr %l682, i32 0, i32 1
  %t1419 = load ptr, ptr %t1418, !tbaa !27
  %t1420 = load i64, ptr %l684, !tbaa !24
  %t1421 = mul i64 %t1420, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1417, ptr %t1419, i64 %t1421, i1 false)
  br label %bb292
bb291:
  %t1422 = load { i64, ptr }, ptr %l682, !tbaa !27
  store { i64, ptr } %t1422, ptr %l80, !tbaa !27
  br label %bb292
bb292:
  call void @__olang_scope_close(ptr %s47)
  br label %bb305
bb293:
  store %olang.scope zeroinitializer, ptr %s50
  %t1423 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1423, ptr %l689, !tbaa !29
  %t1424 = load ptr, ptr %l2, !tbaa !29
  %t1426 = getelementptr %"compiler/typed:Body", ptr %t1424, i32 0, i32 3
  %t1427 = load i64, ptr %t1426, !tbaa !24
  store i64 %t1427, ptr %l691, !tbaa !24
  %t1428 = load ptr, ptr %l0, !tbaa !29
  %t1430 = getelementptr %"compiler/free:walker", ptr %t1428, i32 0, i32 47
  %t1431 = load i64, ptr %l54, !tbaa !24
  %t1434 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t1430, i64 %t1431)
  store %"compiler/source:Span" %t1434, ptr %l695
  br label %bb295
bb294:
  %t1435 = load i64, ptr %l76, !tbaa !24
  %t1436 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t1437 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t1438 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t1440 = call i64 @__olang_fmt_i64(ptr null, i64 %t1435)
  %t1441 = add i64 %t1438, %t1440
  %t1442 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t1443 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t1444 = add i64 %t1441, %t1443
  %t1446 = extractvalue { i64, ptr } %t1436, 1
  %t1447 = extractvalue { i64, ptr } %t1436, 0
  %t1448 = add i64 %t1444, %t1447
  %t1449 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t1450 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t1451 = add i64 %t1448, %t1450
  %t1452 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1451)
  call void @olang_textcopy(ptr %t1452, ptr %t1437, i64 %t1438)
  %t1453 = getelementptr i8, ptr %t1452, i64 %t1438
  %t1454 = call i64 @__olang_fmt_i64(ptr %t1453, i64 %t1435)
  %t1455 = getelementptr i8, ptr %t1453, i64 %t1440
  call void @olang_textcopy(ptr %t1455, ptr %t1442, i64 %t1443)
  %t1456 = getelementptr i8, ptr %t1455, i64 %t1443
  call void @olang_textcopy(ptr %t1456, ptr %t1446, i64 %t1447)
  %t1457 = getelementptr i8, ptr %t1456, i64 %t1447
  call void @olang_textcopy(ptr %t1457, ptr %t1449, i64 %t1450)
  %t1458 = insertvalue { i64, ptr } undef, i64 %t1451, 0
  %t1459 = insertvalue { i64, ptr } %t1458, ptr %t1452, 1
  store { i64, ptr } %t1459, ptr %l708, !tbaa !27
  %t1460 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t1461 = extractvalue { i64, ptr } %t1460, 0
  %t1462 = load { i64, ptr }, ptr %l708, !tbaa !27
  %t1463 = extractvalue { i64, ptr } %t1462, 0
  store i64 %t1463, ptr %l710, !tbaa !24
  %t1465 = load i64, ptr %l710, !tbaa !24
  %t1466 = icmp eq i64 %t1461, %t1465
  br i1 %t1466, label %bb301, label %bb302
bb295:
  %t1468 = load ptr, ptr %l689, !tbaa !29
  %t1469 = load i64, ptr %l691, !tbaa !24
  %t1470 = load %"compiler/source:Span", ptr %l695
  %t1471 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %s50, ptr %t1468, i64 %t1469, %"compiler/source:Span" %t1470)
  store { i64, ptr } %t1471, ptr %l696
  br label %bb296
bb296:
  %t1472 = load i64, ptr %l76, !tbaa !24
  store i64 %t1472, ptr %l697, !tbaa !24
  %t1473 = load ptr, ptr %l0, !tbaa !29
  %t1474 = load i64, ptr %l55, !tbaa !24
  %t1477 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2eremoves(ptr %v0, ptr %s50, ptr %t1473, i64 %t1474)
  store { i64, ptr } %t1477, ptr %l700
  br label %bb297
bb297:
  %t1478 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t1479 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t1480 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t1481 = load { i64, ptr }, ptr %l696, !tbaa !27
  %t1482 = extractvalue { i64, ptr } %t1481, 1
  %t1483 = extractvalue { i64, ptr } %t1481, 0
  %t1484 = add i64 %t1480, %t1483
  %t1485 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t1486 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t1487 = add i64 %t1484, %t1486
  %t1488 = load i64, ptr %l697, !tbaa !24
  %t1489 = call i64 @__olang_fmt_i64(ptr null, i64 %t1488)
  %t1490 = add i64 %t1487, %t1489
  %t1491 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t1492 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t1493 = add i64 %t1490, %t1492
  %t1494 = load { i64, ptr }, ptr %l700, !tbaa !27
  %t1495 = extractvalue { i64, ptr } %t1494, 1
  %t1496 = extractvalue { i64, ptr } %t1494, 0
  %t1497 = add i64 %t1493, %t1496
  %t1498 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t1499 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t1500 = add i64 %t1497, %t1499
  %t1502 = extractvalue { i64, ptr } %t1478, 1
  %t1503 = extractvalue { i64, ptr } %t1478, 0
  %t1504 = add i64 %t1500, %t1503
  %t1505 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t1506 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t1507 = add i64 %t1504, %t1506
  %t1508 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1507)
  call void @olang_textcopy(ptr %t1508, ptr %t1479, i64 %t1480)
  %t1509 = getelementptr i8, ptr %t1508, i64 %t1480
  call void @olang_textcopy(ptr %t1509, ptr %t1482, i64 %t1483)
  %t1510 = getelementptr i8, ptr %t1509, i64 %t1483
  call void @olang_textcopy(ptr %t1510, ptr %t1485, i64 %t1486)
  %t1511 = getelementptr i8, ptr %t1510, i64 %t1486
  %t1512 = call i64 @__olang_fmt_i64(ptr %t1511, i64 %t1488)
  %t1513 = getelementptr i8, ptr %t1511, i64 %t1489
  call void @olang_textcopy(ptr %t1513, ptr %t1491, i64 %t1492)
  %t1514 = getelementptr i8, ptr %t1513, i64 %t1492
  call void @olang_textcopy(ptr %t1514, ptr %t1495, i64 %t1496)
  %t1515 = getelementptr i8, ptr %t1514, i64 %t1496
  call void @olang_textcopy(ptr %t1515, ptr %t1498, i64 %t1499)
  %t1516 = getelementptr i8, ptr %t1515, i64 %t1499
  call void @olang_textcopy(ptr %t1516, ptr %t1502, i64 %t1503)
  %t1517 = getelementptr i8, ptr %t1516, i64 %t1503
  call void @olang_textcopy(ptr %t1517, ptr %t1505, i64 %t1506)
  %t1518 = insertvalue { i64, ptr } undef, i64 %t1507, 0
  %t1519 = insertvalue { i64, ptr } %t1518, ptr %t1508, 1
  store { i64, ptr } %t1519, ptr %l702, !tbaa !27
  %t1520 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t1521 = extractvalue { i64, ptr } %t1520, 0
  %t1522 = load { i64, ptr }, ptr %l702, !tbaa !27
  %t1523 = extractvalue { i64, ptr } %t1522, 0
  store i64 %t1523, ptr %l704, !tbaa !24
  %t1525 = load i64, ptr %l704, !tbaa !24
  %t1526 = icmp eq i64 %t1521, %t1525
  br i1 %t1526, label %bb298, label %bb299
bb298:
  %t1528 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t1529 = load ptr, ptr %t1528, !tbaa !27
  %t1530 = getelementptr { i64, ptr }, ptr %l702, i32 0, i32 1
  %t1531 = load ptr, ptr %t1530, !tbaa !27
  %t1532 = load i64, ptr %l704, !tbaa !24
  %t1533 = mul i64 %t1532, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1529, ptr %t1531, i64 %t1533, i1 false)
  br label %bb300
bb299:
  %t1534 = load { i64, ptr }, ptr %l702, !tbaa !27
  store { i64, ptr } %t1534, ptr %l80, !tbaa !27
  br label %bb300
bb300:
  call void @__olang_scope_close(ptr %s50)
  br label %bb304
bb301:
  %t1535 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t1536 = load ptr, ptr %t1535, !tbaa !27
  %t1537 = getelementptr { i64, ptr }, ptr %l708, i32 0, i32 1
  %t1538 = load ptr, ptr %t1537, !tbaa !27
  %t1539 = load i64, ptr %l710, !tbaa !24
  %t1540 = mul i64 %t1539, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1536, ptr %t1538, i64 %t1540, i1 false)
  br label %bb303
bb302:
  %t1541 = load { i64, ptr }, ptr %l708, !tbaa !27
  store { i64, ptr } %t1541, ptr %l80, !tbaa !27
  br label %bb303
bb303:
  br label %bb304
bb304:
  br label %bb305
bb305:
  %t1542 = load i64, ptr %l68, !tbaa !24
  %t1545 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %s0, ptr %s0, ptr %l3, i64 %t1542)
  store ptr %t1545, ptr %l714
  br label %bb306
bb306:
  %t1546 = load ptr, ptr %l714, !tbaa !29
  store ptr %t1546, ptr %l81, !tbaa !29
  store i64 0, ptr %l82, !tbaa !24
  br label %bb307
bb307:
  %t1547 = load i64, ptr %l82, !tbaa !24
  store i64 %t1547, ptr %l715, !tbaa !24
  %t1548 = load ptr, ptr %l81, !tbaa !29
  store ptr %t1548, ptr %l716, !tbaa !29
  %t1549 = ptrtoint ptr %s0 to i64
  store i64 %t1549, ptr %l717, !tbaa !24
  %t1550 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t1550, label %bb308, label %bb309
bb308:
  %t1552 = load ptr, ptr %l716, !tbaa !29
  %t1553 = call ptr @__olang_region_or(ptr %t1552, ptr %s0)
  %t1554 = ptrtoint ptr %t1553 to i64
  store i64 %t1554, ptr %l717, !tbaa !24
  br label %bb309
bb309:
  %t1555 = load ptr, ptr %l81, !tbaa !29
  %t1556 = load i64, ptr %l717
  %t1557 = inttoptr i64 %t1556 to ptr
  %t1559 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t1557, ptr %t1555)
  store i64 %t1559, ptr %l720
  br label %bb310
bb310:
  %t1560 = load i64, ptr %l715, !tbaa !24
  %t1561 = load i64, ptr %l720, !tbaa !24
  %t1562 = icmp slt i64 %t1560, %t1561
  %t1564 = xor i1 %t1562, true
  br i1 %t1564, label %bb311, label %bb312
bb311:
  br label %bb332
bb312:
  br label %bb313
bb313:
  %t1566 = load ptr, ptr %l81, !tbaa !29
  store ptr %t1566, ptr %l723, !tbaa !29
  %t1567 = ptrtoint ptr %s0 to i64
  store i64 %t1567, ptr %l724, !tbaa !24
  %t1568 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t1568, label %bb314, label %bb315
bb314:
  %t1570 = load ptr, ptr %l723, !tbaa !29
  %t1571 = call ptr @__olang_region_or(ptr %t1570, ptr %s0)
  %t1572 = ptrtoint ptr %t1571 to i64
  store i64 %t1572, ptr %l724, !tbaa !24
  br label %bb315
bb315:
  %t1573 = load ptr, ptr %l81, !tbaa !29
  %t1574 = load i64, ptr %l82, !tbaa !24
  %t1575 = load i64, ptr %l724
  %t1576 = inttoptr i64 %t1575 to ptr
  %t1579 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t1576, ptr %t1573, i64 %t1574)
  store i64 %t1579, ptr %l728
  br label %bb316
bb316:
  %t1580 = load i64, ptr %l728, !tbaa !24
  store i64 %t1580, ptr %l83, !tbaa !24
  %t1581 = load i64, ptr %l55, !tbaa !24
  %t1583 = icmp slt i64 %t1581, 0
  br i1 %t1583, label %bb317, label %bb318
bb317:
  store i1 true, ptr %l731, !tbaa !21
  br label %bb319
bb318:
  %t1585 = load i64, ptr %l83, !tbaa !24
  %t1586 = load i64, ptr %l55, !tbaa !24
  %t1589 = icmp eq i64 %t1585, %t1586
  store i1 %t1589, ptr %l731, !tbaa !21
  br label %bb319
bb319:
  %t1591 = load i1, ptr %l731, !tbaa !21
  br i1 %t1591, label %bb320, label %bb321
bb320:
  %t1592 = load ptr, ptr %l1, !tbaa !29
  %t1594 = getelementptr %"compiler/free:Free", ptr %t1592, i32 0, i32 48
  %t1595 = load i64, ptr %l83, !tbaa !24
  %t1598 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t1594, i64 %t1595)
  store i64 %t1598, ptr %l739
  br label %bb322
bb321:
  store i1 false, ptr %l735, !tbaa !21
  br label %bb323
bb322:
  %t1599 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  %t1600 = load i64, ptr %l739, !tbaa !24
  %t1602 = icmp eq i64 %t1600, %t1599
  store i1 %t1602, ptr %l735, !tbaa !21
  br label %bb323
bb323:
  %t1604 = load i1, ptr %l735, !tbaa !21
  br i1 %t1604, label %bb324, label %bb325
bb324:
  %t1605 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1605, ptr %l742, !tbaa !29
  %t1606 = load i64, ptr %l83, !tbaa !24
  store i64 %t1606, ptr %l743, !tbaa !24
  %t1607 = load ptr, ptr %l2, !tbaa !29
  %t1609 = getelementptr %"compiler/typed:Body", ptr %t1607, i32 0, i32 3
  %t1610 = load i64, ptr %t1609, !tbaa !24
  store i64 %t1610, ptr %l745, !tbaa !24
  %t1611 = load ptr, ptr %l0, !tbaa !29
  %t1613 = getelementptr %"compiler/free:walker", ptr %t1611, i32 0, i32 26
  %t1614 = load i64, ptr %l73, !tbaa !24
  %t1617 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t1613, i64 %t1614)
  store %"compiler/source:Span" %t1617, ptr %l749
  br label %bb326
bb325:
  br label %bb330
bb326:
  %t1618 = ptrtoint ptr %v0 to i64
  store i64 %t1618, ptr %l750, !tbaa !24
  %t1619 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t1619, label %bb327, label %bb328
bb327:
  %t1621 = call ptr @__olang_region_make(ptr %v0)
  %t1622 = ptrtoint ptr %t1621 to i64
  store i64 %t1622, ptr %l750, !tbaa !24
  br label %bb328
bb328:
  %t1623 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1624 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t1626 = extractvalue { i64, ptr } %t1623, 1
  %t1627 = extractvalue { i64, ptr } %t1623, 0
  %t1628 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t1629 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t1630 = add i64 %t1627, %t1629
  %t1632 = extractvalue { i64, ptr } %t1624, 1
  %t1633 = extractvalue { i64, ptr } %t1624, 0
  %t1634 = add i64 %t1630, %t1633
  %t1635 = load i64, ptr %l750
  %t1636 = inttoptr i64 %t1635 to ptr
  %t1637 = call ptr @__olang_scope_alloc(ptr %t1636, i64 %t1634)
  call void @olang_textcopy(ptr %t1637, ptr %t1626, i64 %t1627)
  %t1638 = getelementptr i8, ptr %t1637, i64 %t1627
  call void @olang_textcopy(ptr %t1638, ptr %t1628, i64 %t1629)
  %t1639 = getelementptr i8, ptr %t1638, i64 %t1629
  call void @olang_textcopy(ptr %t1639, ptr %t1632, i64 %t1633)
  %t1640 = insertvalue { i64, ptr } undef, i64 %t1634, 0
  %t1641 = insertvalue { i64, ptr } %t1640, ptr %t1637, 1
  %t1643 = load i64, ptr %l750
  %t1644 = inttoptr i64 %t1643 to ptr
  %t1645 = extractvalue { i64, ptr } %t1641, 0
  %t1646 = extractvalue { i64, ptr } %t1641, 1
  %t1647 = mul i64 %t1645, 1
  %t1648 = call ptr @__olang_scope_alloc(ptr %t1644, i64 %t1647)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1648, ptr %t1646, i64 %t1647, i1 false)
  %t1649 = insertvalue { i64, ptr } undef, i64 %t1645, 0
  %t1650 = insertvalue { i64, ptr } %t1649, ptr %t1648, 1
  %t1651 = load i64, ptr %l58, !tbaa !24
  %t1652 = load ptr, ptr %l742, !tbaa !29
  %t1653 = load i64, ptr %l743, !tbaa !24
  %t1654 = load i64, ptr %l745, !tbaa !24
  %t1655 = load %"compiler/source:Span", ptr %l749
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeepView(ptr %v0, ptr %v0, ptr %t1652, i64 %t1653, i64 %t1654, %"compiler/source:Span" %t1655, { i64, ptr } %t1650, i64 %t1651)
  br label %bb329
bb329:
  br label %bb330
bb330:
  br label %bb331
bb331:
  %t1658 = load i64, ptr %l82, !tbaa !24
  %t1660 = add i64 %t1658, 1
  store i64 %t1660, ptr %l82, !tbaa !24
  br label %bb307
bb332:
  %t1662 = load i64, ptr %l55, !tbaa !24
  %t1664 = icmp sge i64 %t1662, 0
  br i1 %t1664, label %bb333, label %bb334
bb333:
  call void @__olang_scope_close(ptr %s35)
  br label %bb337
bb334:
  br label %bb335
bb335:
  call void @__olang_scope_close(ptr %s35)
  br label %bb336
bb336:
  %t1666 = load i64, ptr %l67, !tbaa !24
  %t1668 = add i64 %t1666, 1
  store i64 %t1668, ptr %l67, !tbaa !24
  br label %bb223
bb337:
  br label %bb338
bb338:
  %t1670 = load i64, ptr %l53, !tbaa !24
  %t1672 = add i64 %t1670, 1
  store i64 %t1672, ptr %l53, !tbaa !24
  br label %bb150
bb339:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecopiedStore(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l22 = alloca i1
  %l28 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l40 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 10
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb39
bb10:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 11
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l13, !tbaa !21
  br i1 %t27, label %bb13, label %bb14
bb13:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l1, !tbaa !29
  br label %bb15
bb14:
  br label %bb27
bb15:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Cond", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb16, label %bb17
bb16:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Cond", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb18, label %bb19
bb17:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb22
bb18:
  call void @__olang_check_failed(ptr @olang_loc_228ad70617d44d77_1dee412aac6cbab)
  unreachable
bb19:
  br label %bb20
bb20:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Cond", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = call i1 @compiler_2ffree_2ecopiedStore(ptr %v0, ptr %t53)
  store i1 %t55, ptr %l28
  br label %bb21
bb21:
  %t56 = load i1, ptr %l28, !tbaa !21
  store i1 %t56, ptr %l22, !tbaa !21
  br label %bb22
bb22:
  %t57 = load i1, ptr %l22, !tbaa !21
  br i1 %t57, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb26
bb24:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Cond", ptr %t58, i32 0, i32 2
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = call i1 @compiler_2ffree_2ecopiedStore(ptr %v0, ptr %t61)
  store i1 %t63, ptr %l32
  br label %bb25
bb25:
  %t64 = load i1, ptr %l32, !tbaa !21
  store i1 %t64, ptr %l29, !tbaa !21
  br label %bb26
bb26:
  %t65 = load i1, ptr %l29, !tbaa !21
  store i1 %t65, ptr %l3, !tbaa !21
  br label %bb39
bb27:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t67 = load ptr, ptr %l33, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb28, label %bb29
bb28:
  %t70 = load ptr, ptr %l33, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 18}
  %t73 = icmp eq i64 %t71, 17
  store i1 %t73, ptr %l34, !tbaa !21
  br label %bb29
bb29:
  %t74 = load i1, ptr %l34, !tbaa !21
  br i1 %t74, label %bb30, label %bb31
bb30:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t77, i32 0, i32 2
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l2, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = call i1 @compiler_2ffree_2ecopiedStore(ptr %v0, ptr %t81)
  store i1 %t83, ptr %l40
  br label %bb33
bb33:
  %t84 = load i1, ptr %l40, !tbaa !21
  store i1 %t84, ptr %l3, !tbaa !21
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_5e2122fa9519644f_a9d9059c63542dd3)
  unreachable
bb39:
  %t85 = load i1, ptr %l3, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2efieldRootLocal(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l19 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
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
  store i64 %t18, ptr %l3, !tbaa !24
  br label %bb18
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t21 = load ptr, ptr %l12, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l13, !tbaa !21
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
  %t37 = call i64 @compiler_2ffree_2efieldRootLocal(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l19
  br label %bb12
bb12:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l3, !tbaa !24
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_c3fd4e13fe372032_611898922dc4483e)
  unreachable
bb18:
  %t39 = load i64, ptr %l3, !tbaa !24
  store i64 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i1
  %l56 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca i1
  %l79 = alloca ptr
  %l81 = alloca ptr
  %l82 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca ptr
  %l92 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca ptr
  %l101 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca i1
  %l123 = alloca { i64, ptr }
  %l128 = alloca ptr
  %l137 = alloca ptr
  %l138 = alloca i1
  %l150 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca i1
  %l180 = alloca ptr
  %l182 = alloca ptr
  %l183 = alloca i1
  %l196 = alloca { i64, ptr }
  %l201 = alloca ptr
  %l219 = alloca ptr
  %l221 = alloca ptr
  %l222 = alloca i1
  %l230 = alloca ptr
  %l246 = alloca ptr
  %l255 = alloca ptr
  %l256 = alloca ptr
  %l257 = alloca i1
  %l264 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t2 = load ptr, ptr %l35, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l35, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l36, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l36, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb31
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Call", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %t18, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = icmp eq i64 %t21, %t22
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Call", ptr %t30, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l5, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t47, ptr %l56, !tbaa !27
  %t48 = load i64, ptr %l4, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 %t48
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t56 = load i64, ptr %l1, !tbaa !24
  %t59 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t53, i64 %t56)
  store ptr %t59, ptr %l61
  br label %bb13
bb13:
  %t60 = load ptr, ptr %l61, !tbaa !29
  store ptr %t60, ptr %l7, !tbaa !29
  %t61 = load ptr, ptr %l7, !tbaa !29
  %t63 = icmp eq ptr %t61, null
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load ptr, ptr %l7, !tbaa !29
  store ptr %t67, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l4, !tbaa !24
  br label %bb9
bb18:
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Call", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  store ptr %t77, ptr %l8, !tbaa !29
  %t79 = load ptr, ptr %l8, !tbaa !29
  store ptr %t79, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t80 = load ptr, ptr %l71, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb19, label %bb20
bb19:
  %t83 = load ptr, ptr %l71, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 5}
  %t86 = icmp eq i64 %t84, 2
  store i1 %t86, ptr %l72, !tbaa !21
  br label %bb20
bb20:
  %t87 = load i1, ptr %l72, !tbaa !21
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t88 = load ptr, ptr %l8, !tbaa !29
  %t90 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { ptr }, ptr %t90, i32 0, i32 0
  %t92 = load ptr, ptr %t91
  store ptr %t92, ptr %l9, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t94 = load ptr, ptr %l9, !tbaa !29
  %t95 = load i64, ptr %l1, !tbaa !24
  %t98 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t94, i64 %t95)
  store ptr %t98, ptr %l79
  br label %bb24
bb24:
  %t99 = load ptr, ptr %l79, !tbaa !29
  store ptr %t99, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_16263ed1acd4aa7e_23dcb8f717a142b2)
  unreachable
bb30:
  store ptr null, ptr %rv
  br label %ret
bb31:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t102 = load ptr, ptr %l81, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb32, label %bb33
bb32:
  %t105 = load ptr, ptr %l81, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 18}
  %t108 = icmp eq i64 %t106, 5
  store i1 %t108, ptr %l82, !tbaa !21
  br label %bb33
bb33:
  %t109 = load i1, ptr %l82, !tbaa !21
  br i1 %t109, label %bb34, label %bb35
bb34:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr { i64, [5 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t112, i32 0, i32 2
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l10, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t116 = load ptr, ptr %l10, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Promote", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t120 = load i64, ptr %l1, !tbaa !24
  %t123 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t119, i64 %t120)
  store ptr %t123, ptr %l90
  br label %bb37
bb37:
  %t124 = load ptr, ptr %l90, !tbaa !29
  store ptr %t124, ptr %rv
  br label %ret
bb38:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t126 = load ptr, ptr %l91, !tbaa !29
  %t127 = icmp ne ptr %t126, null
  br i1 %t127, label %bb39, label %bb40
bb39:
  %t129 = load ptr, ptr %l91, !tbaa !29
  %t130 = load i64, ptr %t129, !range !{i64 0, i64 18}
  %t132 = icmp eq i64 %t130, 2
  store i1 %t132, ptr %l92, !tbaa !21
  br label %bb40
bb40:
  %t133 = load i1, ptr %l92, !tbaa !21
  br i1 %t133, label %bb41, label %bb42
bb41:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr { i64, [5 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t136, i32 0, i32 2
  %t138 = load ptr, ptr %t137
  store ptr %t138, ptr %l11, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t140 = load ptr, ptr %l11, !tbaa !29
  %t141 = load i64, ptr %l1, !tbaa !24
  %t144 = call ptr @compiler_2ffree_2efindCallPlace(ptr %v0, ptr %v1, ptr %t140, i64 %t141)
  store ptr %t144, ptr %l99
  br label %bb44
bb44:
  %t145 = load ptr, ptr %l99, !tbaa !29
  store ptr %t145, ptr %rv
  br label %ret
bb45:
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t147 = load ptr, ptr %l100, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb46, label %bb47
bb46:
  %t150 = load ptr, ptr %l100, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 18}
  %t153 = icmp eq i64 %t151, 3
  store i1 %t153, ptr %l101, !tbaa !21
  br label %bb47
bb47:
  %t154 = load i1, ptr %l101, !tbaa !21
  br i1 %t154, label %bb48, label %bb49
bb48:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr { i64, [5 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t157, i32 0, i32 2
  %t159 = load ptr, ptr %t158
  store ptr %t159, ptr %l12, !tbaa !29
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t161 = load ptr, ptr %l12, !tbaa !29
  %t162 = load i64, ptr %l1, !tbaa !24
  %t165 = call ptr @compiler_2ffree_2efindCallPlace(ptr %v0, ptr %v1, ptr %t161, i64 %t162)
  store ptr %t165, ptr %l108
  br label %bb51
bb51:
  %t166 = load ptr, ptr %l108, !tbaa !29
  store ptr %t166, ptr %rv
  br label %ret
bb52:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t168 = load ptr, ptr %l109, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb53, label %bb54
bb53:
  %t171 = load ptr, ptr %l109, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 18}
  %t174 = icmp eq i64 %t172, 7
  store i1 %t174, ptr %l110, !tbaa !21
  br label %bb54
bb54:
  %t175 = load i1, ptr %l110, !tbaa !21
  br i1 %t175, label %bb55, label %bb56
bb55:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr { i64, [5 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t178, i32 0, i32 2
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l13, !tbaa !29
  br label %bb57
bb56:
  br label %bb68
bb57:
  %t182 = load ptr, ptr %l13, !tbaa !29
  %t184 = getelementptr %"compiler/typed:Make", ptr %t182, i32 0, i32 2
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  store { i64, ptr } %t185, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  store i64 %t189, ptr %l16, !tbaa !24
  br label %bb58
bb58:
  %t191 = load i64, ptr %l15, !tbaa !24
  %t192 = load i64, ptr %l16, !tbaa !24
  %t195 = icmp slt i64 %t191, %t192
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb59, label %bb60
bb59:
  br label %bb67
bb60:
  br label %bb61
bb61:
  %t199 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t199, ptr %l123, !tbaa !27
  %t200 = load i64, ptr %l15, !tbaa !24
  %t202 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr ptr, ptr %t203, i64 %t200
  %t205 = load ptr, ptr %t204, !tbaa !39
  %t208 = load i64, ptr %l1, !tbaa !24
  %t211 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t205, i64 %t208)
  store ptr %t211, ptr %l128
  br label %bb62
bb62:
  %t212 = load ptr, ptr %l128, !tbaa !29
  store ptr %t212, ptr %l18, !tbaa !29
  %t213 = load ptr, ptr %l18, !tbaa !29
  %t215 = icmp eq ptr %t213, null
  %t217 = xor i1 %t215, true
  br i1 %t217, label %bb63, label %bb64
bb63:
  %t219 = load ptr, ptr %l18, !tbaa !29
  store ptr %t219, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t222 = load i64, ptr %l15, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l15, !tbaa !24
  br label %bb58
bb67:
  store ptr null, ptr %rv
  br label %ret
bb68:
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t228 = load ptr, ptr %l137, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb69, label %bb70
bb69:
  %t231 = load ptr, ptr %l137, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 18}
  %t234 = icmp eq i64 %t232, 9
  store i1 %t234, ptr %l138, !tbaa !21
  br label %bb70
bb70:
  %t235 = load i1, ptr %l138, !tbaa !21
  br i1 %t235, label %bb71, label %bb72
bb71:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr { i64, [5 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t238, i32 0, i32 4
  %t240 = load { i64, ptr }, ptr %t239
  store { i64, ptr } %t240, ptr %l19, !tbaa !27
  br label %bb73
bb72:
  br label %bb84
bb73:
  %t242 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t242, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t244, 0
  store i64 %t246, ptr %l22, !tbaa !24
  br label %bb74
bb74:
  %t248 = load i64, ptr %l21, !tbaa !24
  %t249 = load i64, ptr %l22, !tbaa !24
  %t252 = icmp slt i64 %t248, %t249
  %t254 = xor i1 %t252, true
  br i1 %t254, label %bb75, label %bb76
bb75:
  br label %bb83
bb76:
  br label %bb77
bb77:
  %t256 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t256, ptr %l150, !tbaa !27
  %t257 = load i64, ptr %l21, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr ptr, ptr %t260, i64 %t257
  %t262 = load ptr, ptr %t261, !tbaa !39
  %t265 = load i64, ptr %l1, !tbaa !24
  %t268 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t262, i64 %t265)
  store ptr %t268, ptr %l155
  br label %bb78
bb78:
  %t269 = load ptr, ptr %l155, !tbaa !29
  store ptr %t269, ptr %l24, !tbaa !29
  %t270 = load ptr, ptr %l24, !tbaa !29
  %t272 = icmp eq ptr %t270, null
  %t274 = xor i1 %t272, true
  br i1 %t274, label %bb79, label %bb80
bb79:
  %t276 = load ptr, ptr %l24, !tbaa !29
  store ptr %t276, ptr %rv
  br label %ret
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t279 = load i64, ptr %l21, !tbaa !24
  %t281 = add i64 %t279, 1
  store i64 %t281, ptr %l21, !tbaa !24
  br label %bb74
bb83:
  store ptr null, ptr %rv
  br label %ret
bb84:
  %t284 = load ptr, ptr %l0, !tbaa !29
  store ptr %t284, ptr %l164, !tbaa !29
  store i1 false, ptr %l165, !tbaa !21
  %t285 = load ptr, ptr %l164, !tbaa !29
  %t286 = icmp ne ptr %t285, null
  br i1 %t286, label %bb85, label %bb86
bb85:
  %t288 = load ptr, ptr %l164, !tbaa !29
  %t289 = load i64, ptr %t288, !range !{i64 0, i64 18}
  %t291 = icmp eq i64 %t289, 14
  store i1 %t291, ptr %l165, !tbaa !21
  br label %bb86
bb86:
  %t292 = load i1, ptr %l165, !tbaa !21
  br i1 %t292, label %bb87, label %bb88
bb87:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr { i64, [5 x i64] }, ptr %t293, i32 0, i32 1
  %t296 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t295, i32 0, i32 2
  %t297 = load ptr, ptr %t296
  store ptr %t297, ptr %l25, !tbaa !29
  br label %bb89
bb88:
  br label %bb97
bb89:
  %t299 = load ptr, ptr %l25, !tbaa !29
  %t301 = getelementptr %"compiler/typed:Try", ptr %t299, i32 0, i32 0
  %t302 = load ptr, ptr %t301, !tbaa !29
  %t304 = icmp eq ptr %t302, null
  %t306 = xor i1 %t304, true
  br i1 %t306, label %bb90, label %bb91
bb90:
  %t308 = load ptr, ptr %l25, !tbaa !29
  %t310 = getelementptr %"compiler/typed:Try", ptr %t308, i32 0, i32 0
  %t311 = load ptr, ptr %t310, !tbaa !29
  %t313 = icmp eq ptr %t311, null
  br i1 %t313, label %bb92, label %bb93
bb91:
  br label %bb96
bb92:
  call void @__olang_check_failed(ptr @olang_loc_ea2e0f0d6ffcb248_fe73fa1c8e55849c)
  unreachable
bb93:
  br label %bb94
bb94:
  %t315 = load ptr, ptr %l25, !tbaa !29
  %t317 = getelementptr %"compiler/typed:Try", ptr %t315, i32 0, i32 0
  %t318 = load ptr, ptr %t317, !tbaa !29
  %t319 = load i64, ptr %l1, !tbaa !24
  %t322 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t318, i64 %t319)
  store ptr %t322, ptr %l180
  br label %bb95
bb95:
  %t323 = load ptr, ptr %l180, !tbaa !29
  store ptr %t323, ptr %rv
  br label %ret
bb96:
  store ptr null, ptr %rv
  br label %ret
bb97:
  %t325 = load ptr, ptr %l0, !tbaa !29
  store ptr %t325, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t326 = load ptr, ptr %l182, !tbaa !29
  %t327 = icmp ne ptr %t326, null
  br i1 %t327, label %bb98, label %bb99
bb98:
  %t329 = load ptr, ptr %l182, !tbaa !29
  %t330 = load i64, ptr %t329, !range !{i64 0, i64 18}
  %t332 = icmp eq i64 %t330, 12
  store i1 %t332, ptr %l183, !tbaa !21
  br label %bb99
bb99:
  %t333 = load i1, ptr %l183, !tbaa !21
  br i1 %t333, label %bb100, label %bb101
bb100:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t336 = getelementptr { i64, [5 x i64] }, ptr %t334, i32 0, i32 1
  %t337 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t336, i32 0, i32 2
  %t338 = load ptr, ptr %t337
  store ptr %t338, ptr %l26, !tbaa !29
  br label %bb102
bb101:
  br label %bb120
bb102:
  %t340 = load ptr, ptr %l26, !tbaa !29
  %t342 = getelementptr %"compiler/typed:Seq", ptr %t340, i32 0, i32 0
  %t343 = load { i64, ptr }, ptr %t342, !tbaa !27
  store { i64, ptr } %t343, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t345 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t345, 0
  store i64 %t347, ptr %l29, !tbaa !24
  br label %bb103
bb103:
  %t349 = load i64, ptr %l28, !tbaa !24
  %t350 = load i64, ptr %l29, !tbaa !24
  %t353 = icmp slt i64 %t349, %t350
  %t355 = xor i1 %t353, true
  br i1 %t355, label %bb104, label %bb105
bb104:
  br label %bb112
bb105:
  br label %bb106
bb106:
  %t357 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t357, ptr %l196, !tbaa !27
  %t358 = load i64, ptr %l28, !tbaa !24
  %t360 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t361 = load ptr, ptr %t360, !tbaa !27
  %t362 = getelementptr ptr, ptr %t361, i64 %t358
  %t363 = load ptr, ptr %t362, !tbaa !39
  %t366 = load i64, ptr %l1, !tbaa !24
  %t369 = call ptr @compiler_2ffree_2efindCallStmt(ptr %v0, ptr %v1, ptr %t363, i64 %t366)
  store ptr %t369, ptr %l201
  br label %bb107
bb107:
  %t370 = load ptr, ptr %l201, !tbaa !29
  store ptr %t370, ptr %l31, !tbaa !29
  %t371 = load ptr, ptr %l31, !tbaa !29
  %t373 = icmp eq ptr %t371, null
  %t375 = xor i1 %t373, true
  br i1 %t375, label %bb108, label %bb109
bb108:
  %t377 = load ptr, ptr %l31, !tbaa !29
  store ptr %t377, ptr %rv
  br label %ret
bb109:
  br label %bb110
bb110:
  br label %bb111
bb111:
  %t380 = load i64, ptr %l28, !tbaa !24
  %t382 = add i64 %t380, 1
  store i64 %t382, ptr %l28, !tbaa !24
  br label %bb103
bb112:
  %t384 = load ptr, ptr %l26, !tbaa !29
  %t386 = getelementptr %"compiler/typed:Seq", ptr %t384, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !29
  %t389 = icmp eq ptr %t387, null
  %t391 = xor i1 %t389, true
  br i1 %t391, label %bb113, label %bb114
bb113:
  %t393 = load ptr, ptr %l26, !tbaa !29
  %t395 = getelementptr %"compiler/typed:Seq", ptr %t393, i32 0, i32 1
  %t396 = load ptr, ptr %t395, !tbaa !29
  %t398 = icmp eq ptr %t396, null
  br i1 %t398, label %bb115, label %bb116
bb114:
  br label %bb119
bb115:
  call void @__olang_check_failed(ptr @olang_loc_6e2453cb19a4d71d_88f1503d6cec0391)
  unreachable
bb116:
  br label %bb117
bb117:
  %t400 = load ptr, ptr %l26, !tbaa !29
  %t402 = getelementptr %"compiler/typed:Seq", ptr %t400, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t404 = load i64, ptr %l1, !tbaa !24
  %t407 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t403, i64 %t404)
  store ptr %t407, ptr %l219
  br label %bb118
bb118:
  %t408 = load ptr, ptr %l219, !tbaa !29
  store ptr %t408, ptr %rv
  br label %ret
bb119:
  store ptr null, ptr %rv
  br label %ret
bb120:
  %t410 = load ptr, ptr %l0, !tbaa !29
  store ptr %t410, ptr %l221, !tbaa !29
  store i1 false, ptr %l222, !tbaa !21
  %t411 = load ptr, ptr %l221, !tbaa !29
  %t412 = icmp ne ptr %t411, null
  br i1 %t412, label %bb121, label %bb122
bb121:
  %t414 = load ptr, ptr %l221, !tbaa !29
  %t415 = load i64, ptr %t414, !range !{i64 0, i64 18}
  %t417 = icmp eq i64 %t415, 11
  store i1 %t417, ptr %l222, !tbaa !21
  br label %bb122
bb122:
  %t418 = load i1, ptr %l222, !tbaa !21
  br i1 %t418, label %bb123, label %bb124
bb123:
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t421 = getelementptr { i64, [5 x i64] }, ptr %t419, i32 0, i32 1
  %t422 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t421, i32 0, i32 2
  %t423 = load ptr, ptr %t422
  store ptr %t423, ptr %l32, !tbaa !29
  br label %bb125
bb124:
  br label %bb141
bb125:
  %t425 = load ptr, ptr %l32, !tbaa !29
  %t427 = getelementptr %"compiler/typed:Cond", ptr %t425, i32 0, i32 0
  %t428 = load ptr, ptr %t427, !tbaa !29
  %t429 = load i64, ptr %l1, !tbaa !24
  %t432 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t428, i64 %t429)
  store ptr %t432, ptr %l230
  br label %bb126
bb126:
  %t433 = load ptr, ptr %l230, !tbaa !29
  store ptr %t433, ptr %l33, !tbaa !29
  %t434 = load ptr, ptr %l33, !tbaa !29
  %t436 = icmp eq ptr %t434, null
  %t438 = xor i1 %t436, true
  br i1 %t438, label %bb127, label %bb128
bb127:
  %t440 = load ptr, ptr %l33, !tbaa !29
  store ptr %t440, ptr %rv
  br label %ret
bb128:
  br label %bb129
bb129:
  %t443 = load ptr, ptr %l32, !tbaa !29
  %t445 = getelementptr %"compiler/typed:Cond", ptr %t443, i32 0, i32 1
  %t446 = load ptr, ptr %t445, !tbaa !29
  %t448 = icmp eq ptr %t446, null
  %t450 = xor i1 %t448, true
  br i1 %t450, label %bb130, label %bb131
bb130:
  %t452 = load ptr, ptr %l32, !tbaa !29
  %t454 = getelementptr %"compiler/typed:Cond", ptr %t452, i32 0, i32 1
  %t455 = load ptr, ptr %t454, !tbaa !29
  %t457 = icmp eq ptr %t455, null
  br i1 %t457, label %bb132, label %bb133
bb131:
  br label %bb139
bb132:
  call void @__olang_check_failed(ptr @olang_loc_a8e684701cb727b6_7b41502ddc5bea8a)
  unreachable
bb133:
  br label %bb134
bb134:
  %t459 = load ptr, ptr %l32, !tbaa !29
  %t461 = getelementptr %"compiler/typed:Cond", ptr %t459, i32 0, i32 1
  %t462 = load ptr, ptr %t461, !tbaa !29
  %t463 = load i64, ptr %l1, !tbaa !24
  %t466 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t462, i64 %t463)
  store ptr %t466, ptr %l246
  br label %bb135
bb135:
  %t467 = load ptr, ptr %l246, !tbaa !29
  store ptr %t467, ptr %l33, !tbaa !29
  %t468 = load ptr, ptr %l33, !tbaa !29
  %t470 = icmp eq ptr %t468, null
  %t472 = xor i1 %t470, true
  br i1 %t472, label %bb136, label %bb137
bb136:
  %t474 = load ptr, ptr %l33, !tbaa !29
  store ptr %t474, ptr %rv
  br label %ret
bb137:
  br label %bb138
bb138:
  br label %bb139
bb139:
  %t477 = load ptr, ptr %l32, !tbaa !29
  %t479 = getelementptr %"compiler/typed:Cond", ptr %t477, i32 0, i32 2
  %t480 = load ptr, ptr %t479, !tbaa !29
  %t481 = load i64, ptr %l1, !tbaa !24
  %t484 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t480, i64 %t481)
  store ptr %t484, ptr %l255
  br label %bb140
bb140:
  %t485 = load ptr, ptr %l255, !tbaa !29
  store ptr %t485, ptr %rv
  br label %ret
bb141:
  %t486 = load ptr, ptr %l0, !tbaa !29
  store ptr %t486, ptr %l256, !tbaa !29
  store i1 false, ptr %l257, !tbaa !21
  %t487 = load ptr, ptr %l256, !tbaa !29
  %t488 = icmp ne ptr %t487, null
  br i1 %t488, label %bb142, label %bb143
bb142:
  %t490 = load ptr, ptr %l256, !tbaa !29
  %t491 = load i64, ptr %t490, !range !{i64 0, i64 18}
  %t493 = icmp eq i64 %t491, 17
  store i1 %t493, ptr %l257, !tbaa !21
  br label %bb143
bb143:
  %t494 = load i1, ptr %l257, !tbaa !21
  br i1 %t494, label %bb144, label %bb145
bb144:
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr { i64, [5 x i64] }, ptr %t495, i32 0, i32 1
  %t498 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t497, i32 0, i32 2
  %t499 = load ptr, ptr %t498
  store ptr %t499, ptr %l34, !tbaa !29
  br label %bb146
bb145:
  br label %bb148
bb146:
  %t501 = load ptr, ptr %l34, !tbaa !29
  %t502 = load i64, ptr %l1, !tbaa !24
  %t505 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t501, i64 %t502)
  store ptr %t505, ptr %l264
  br label %bb147
bb147:
  %t506 = load ptr, ptr %l264, !tbaa !29
  store ptr %t506, ptr %rv
  br label %ret
bb148:
  br i1 true, label %bb149, label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb152
bb151:
  store ptr null, ptr %rv
  br label %ret
bb152:
  call void @__olang_check_failed(ptr @olang_loc_3e8b13b2a7075e62_22250d1a20f2250e)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2ffree_2eokind(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = ashr i64 %a0, 40
  store i64 %t3, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2epureBase(ptr %v0, ptr %a0) #0 {
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
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l31 = alloca i1
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
  %t8 = icmp eq i64 %t6, 0
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
  br label %bb36
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
  %t27 = call i1 @compiler_2ffree_2epureBase(ptr %v0, ptr %t25)
  store i1 %t27, ptr %l16
  br label %bb12
bb12:
  %t28 = load i1, ptr %l16, !tbaa !21
  store i1 %t28, ptr %l4, !tbaa !21
  br label %bb36
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
  %t36 = icmp eq i64 %t34, 2
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
  br label %bb31
bb18:
  %t44 = load ptr, ptr %l2, !tbaa !29
  store ptr %t44, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t45 = load ptr, ptr %l24, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb19, label %bb20
bb19:
  %t48 = load ptr, ptr %l24, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 2
  store i1 %t51, ptr %l25, !tbaa !21
  br label %bb20
bb20:
  %t52 = load i1, ptr %l25, !tbaa !21
  br i1 %t52, label %bb21, label %bb22
bb21:
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = call i1 @compiler_2ffree_2epureBase(ptr %v0, ptr %t59)
  store i1 %t61, ptr %l31
  br label %bb24
bb24:
  %t62 = load i1, ptr %l31, !tbaa !21
  store i1 %t62, ptr %l23, !tbaa !21
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_73267d5e0cab398e_8c6ff0bab5f15012)
  unreachable
bb30:
  %t63 = load i1, ptr %l23, !tbaa !21
  store i1 %t63, ptr %l4, !tbaa !21
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_a4448d4b24e169cf_c9af2cff75b97a13)
  unreachable
bb36:
  %t64 = load i1, ptr %l4, !tbaa !21
  store i1 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2eyieldsMoved(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l13 = alloca { i64, ptr }
  %l17 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Block", ptr %a0, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t18, ptr %l13, !tbaa !27
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t28 = call i1 @compiler_2ffree_2estmtMoves(ptr %v0, ptr %t24)
  store i1 %t28, ptr %l17
  br label %bb5
bb5:
  %t29 = load i1, ptr %l17, !tbaa !21
  %t30 = xor i1 %t29, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l2, !tbaa !24
  br label %bb1
bb10:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/free:feedCall" @compiler_2ffree_3afeedCall_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i1 %a5) #0 {
entry:
  %rv = alloca %"compiler/free:feedCall"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/free:feedCall" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/free:feedCall" %t14, i64 %a1, 1
  %t18 = insertvalue %"compiler/free:feedCall" %t16, i64 %a2, 2
  %t20 = insertvalue %"compiler/free:feedCall" %t18, i64 %a3, 3
  %t22 = insertvalue %"compiler/free:feedCall" %t20, i64 %a4, 4
  %t24 = insertvalue %"compiler/free:feedCall" %t22, i1 %a5, 5
  store %"compiler/free:feedCall" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:feedCall", ptr %rv
  ret %"compiler/free:feedCall" %rr
}

define dso_local %"compiler/free:feed" @compiler_2ffree_3afeed_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, { i64, [2 x i64] } %a4, { i64, [2 x i64] } %a5) #0 {
entry:
  %rv = alloca %"compiler/free:feed"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/free:feed" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/free:feed" %t14, i64 %a1, 1
  %t18 = insertvalue %"compiler/free:feed" %t16, i64 %a2, 2
  %t20 = insertvalue %"compiler/free:feed" %t18, i64 %a3, 3
  %t22 = insertvalue %"compiler/free:feed" %t20, { i64, [2 x i64] } %a4, 4
  %t24 = insertvalue %"compiler/free:feed" %t22, { i64, [2 x i64] } %a5, 5
  %t26 = insertvalue %"compiler/free:feed" %t24, i64 -1, 6
  store %"compiler/free:feed" %t26, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:feed", ptr %rv
  ret %"compiler/free:feed" %rr
}

define dso_local void @compiler_2ffree_3awalker_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i1
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca i32
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l41 = alloca i64
  %l42 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca i64
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca i64
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca i64
  %l72 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l74 = alloca i64
  %l76 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l79 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca i64
  %l82 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l84 = alloca i64
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca i64
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l96 = alloca i64
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca i64
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l104 = alloca i64
  %l106 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca i64
  %l110 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l112 = alloca i64
  %l114 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca i64
  %l118 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l120 = alloca i64
  %l122 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l124 = alloca i64
  %l126 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l128 = alloca i64
  %l130 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l132 = alloca i64
  %l134 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca i64
  %l138 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l141 = alloca i64
  %l143 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l145 = alloca i64
  %l147 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l149 = alloca i64
  %l151 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l153 = alloca i64
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca %"compiler/source:Span"
  %l158 = alloca i64
  %l160 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l162 = alloca i64
  %l164 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l166 = alloca i64
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l170 = alloca i64
  %l172 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l174 = alloca i64
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l178 = alloca i64
  %l180 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l182 = alloca i64
  %l184 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l186 = alloca i64
  %l188 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l190 = alloca i64
  %l192 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l194 = alloca i64
  %l196 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l198 = alloca i64
  %l200 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l202 = alloca i64
  %l204 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l206 = alloca i64
  %l208 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l210 = alloca i64
  %l212 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l214 = alloca %"compiler/free:walker"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  store i64 %a1, ptr %l4, !tbaa !24
  store i1 %a2, ptr %l5, !tbaa !21
  %t7 = ptrtoint ptr %v1 to i64
  store i64 %t7, ptr %l62, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e3
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v1)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l62, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l62
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t13, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l64
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e3
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l62
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr null
  %t25 = icmp eq ptr %t24, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t25)
  br label %bb5
bb5:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l6
  %t27 = ptrtoint ptr %v1 to i64
  store i64 %t27, ptr %l66, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e4
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = call ptr @__olang_region_make(ptr %v1)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l66, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l66
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t33, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l68
  br label %bb8
bb8:
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e4
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t37 = load i64, ptr %l66
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68, i32 0, i32 0
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t38
  call void @__olang_region_settle(ptr %t38, i1 %t45)
  br label %bb10
bb10:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l7
  store i1 false, ptr %l8, !tbaa !21
  %t47 = ptrtoint ptr %v1 to i64
  store i64 %t47, ptr %l70, !tbaa !24
  %t48 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e6
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = call ptr @__olang_region_make(ptr %v1)
  %t51 = ptrtoint ptr %t50 to i64
  store i64 %t51, ptr %l70, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l70
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t53)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %l72
  br label %bb13
bb13:
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e6
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t57 = load i64, ptr %l70
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72, i32 0, i32 2
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = icmp ne ptr %t62, null
  %t64 = select i1 %t63, ptr %t62, ptr null
  %t65 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr %t64
  %t71 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr %t70
  %t77 = icmp eq ptr %t76, %t58
  call void @__olang_region_settle(ptr %t58, i1 %t77)
  br label %bb15
bb15:
  %t78 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t78, ptr %l9
  %t79 = ptrtoint ptr %v1 to i64
  store i64 %t79, ptr %l74, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e7
  br i1 %t80, label %bb16, label %bb17
bb16:
  %t82 = call ptr @__olang_region_make(ptr %v1)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l74, !tbaa !24
  br label %bb17
bb17:
  %t84 = load i64, ptr %l74
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t85)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t86, ptr %l76
  br label %bb18
bb18:
  %t87 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e7
  br i1 %t87, label %bb19, label %bb20
bb19:
  %t89 = load i64, ptr %l74
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l76, i32 0, i32 2
  %t92 = load { i64, ptr }, ptr %t91
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = call ptr @__olang_region_or(ptr %t93, ptr null)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr null
  %t97 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l76, i32 0, i32 1
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = icmp ne ptr %t100, null
  %t102 = select i1 %t101, ptr %t100, ptr %t96
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l76, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = call ptr @__olang_region_or(ptr %t105, ptr null)
  %t107 = icmp ne ptr %t106, null
  %t108 = select i1 %t107, ptr %t106, ptr %t102
  %t109 = icmp eq ptr %t108, %t90
  call void @__olang_region_settle(ptr %t90, i1 %t109)
  br label %bb20
bb20:
  %t110 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l76
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t110, ptr %l10
  %t111 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t111, ptr %l11, !tbaa !23
  %t113 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t113, ptr %l79
  br label %bb21
bb21:
  %t114 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t114, ptr %l12
  %t115 = ptrtoint ptr %v1 to i64
  store i64 %t115, ptr %l80, !tbaa !24
  %t116 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e10
  br i1 %t116, label %bb22, label %bb23
bb22:
  %t118 = call ptr @__olang_region_make(ptr %v1)
  %t119 = ptrtoint ptr %t118 to i64
  store i64 %t119, ptr %l80, !tbaa !24
  br label %bb23
bb23:
  %t120 = load i64, ptr %l80
  %t121 = inttoptr i64 %t120 to ptr
  %t122 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t121, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %l82
  br label %bb24
bb24:
  %t123 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e10
  br i1 %t123, label %bb25, label %bb26
bb25:
  %t125 = load i64, ptr %l80
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82, i32 0, i32 0
  %t128 = load { i64, ptr }, ptr %t127
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = call ptr @__olang_region_or(ptr %t129, ptr null)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr null
  %t133 = icmp eq ptr %t132, %t126
  call void @__olang_region_settle(ptr %t126, i1 %t133)
  br label %bb26
bb26:
  %t134 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  %t135 = ptrtoint ptr %v1 to i64
  store i64 %t135, ptr %l84, !tbaa !24
  %t136 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e13
  br i1 %t136, label %bb27, label %bb28
bb27:
  %t138 = call ptr @__olang_region_make(ptr %v1)
  %t139 = ptrtoint ptr %t138 to i64
  store i64 %t139, ptr %l84, !tbaa !24
  br label %bb28
bb28:
  %t140 = load i64, ptr %l84
  %t141 = inttoptr i64 %t140 to ptr
  %t142 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t141, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l86
  br label %bb29
bb29:
  %t143 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e13
  br i1 %t143, label %bb30, label %bb31
bb30:
  %t145 = load i64, ptr %l84
  %t146 = inttoptr i64 %t145 to ptr
  %t147 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t148 = load { i64, ptr }, ptr %t147
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = call ptr @__olang_region_or(ptr %t149, ptr null)
  %t151 = icmp ne ptr %t150, null
  %t152 = select i1 %t151, ptr %t150, ptr null
  %t153 = icmp eq ptr %t152, %t146
  call void @__olang_region_settle(ptr %t146, i1 %t153)
  br label %bb31
bb31:
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l16
  %t155 = ptrtoint ptr %v1 to i64
  store i64 %t155, ptr %l88, !tbaa !24
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e14
  br i1 %t156, label %bb32, label %bb33
bb32:
  %t158 = call ptr @__olang_region_make(ptr %v1)
  %t159 = ptrtoint ptr %t158 to i64
  store i64 %t159, ptr %l88, !tbaa !24
  br label %bb33
bb33:
  %t160 = load i64, ptr %l88
  %t161 = inttoptr i64 %t160 to ptr
  %t162 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t161, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %l90
  br label %bb34
bb34:
  %t163 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e14
  br i1 %t163, label %bb35, label %bb36
bb35:
  %t165 = load i64, ptr %l88
  %t166 = inttoptr i64 %t165 to ptr
  %t167 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90, i32 0, i32 0
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr null
  %t173 = icmp eq ptr %t172, %t166
  call void @__olang_region_settle(ptr %t166, i1 %t173)
  br label %bb36
bb36:
  %t174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %l17
  %t175 = ptrtoint ptr %v1 to i64
  store i64 %t175, ptr %l92, !tbaa !24
  %t176 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e15
  br i1 %t176, label %bb37, label %bb38
bb37:
  %t178 = call ptr @__olang_region_make(ptr %v1)
  %t179 = ptrtoint ptr %t178 to i64
  store i64 %t179, ptr %l92, !tbaa !24
  br label %bb38
bb38:
  %t180 = load i64, ptr %l92
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t181, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %l94
  br label %bb39
bb39:
  %t183 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e15
  br i1 %t183, label %bb40, label %bb41
bb40:
  %t185 = load i64, ptr %l92
  %t186 = inttoptr i64 %t185 to ptr
  %t187 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94, i32 0, i32 0
  %t188 = load { i64, ptr }, ptr %t187
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = call ptr @__olang_region_or(ptr %t189, ptr null)
  %t191 = icmp ne ptr %t190, null
  %t192 = select i1 %t191, ptr %t190, ptr null
  %t193 = icmp eq ptr %t192, %t186
  call void @__olang_region_settle(ptr %t186, i1 %t193)
  br label %bb41
bb41:
  %t194 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t194, ptr %l18
  %t195 = ptrtoint ptr %v1 to i64
  store i64 %t195, ptr %l96, !tbaa !24
  %t196 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e16
  br i1 %t196, label %bb42, label %bb43
bb42:
  %t198 = call ptr @__olang_region_make(ptr %v1)
  %t199 = ptrtoint ptr %t198 to i64
  store i64 %t199, ptr %l96, !tbaa !24
  br label %bb43
bb43:
  %t200 = load i64, ptr %l96
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t201, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t202, ptr %l98
  br label %bb44
bb44:
  %t203 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e16
  br i1 %t203, label %bb45, label %bb46
bb45:
  %t205 = load i64, ptr %l96
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98, i32 0, i32 0
  %t208 = load { i64, ptr }, ptr %t207
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = call ptr @__olang_region_or(ptr %t209, ptr null)
  %t211 = icmp ne ptr %t210, null
  %t212 = select i1 %t211, ptr %t210, ptr null
  %t213 = icmp eq ptr %t212, %t206
  call void @__olang_region_settle(ptr %t206, i1 %t213)
  br label %bb46
bb46:
  %t214 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t214, ptr %l19
  %t215 = ptrtoint ptr %v1 to i64
  store i64 %t215, ptr %l100, !tbaa !24
  %t216 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e17
  br i1 %t216, label %bb47, label %bb48
bb47:
  %t218 = call ptr @__olang_region_make(ptr %v1)
  %t219 = ptrtoint ptr %t218 to i64
  store i64 %t219, ptr %l100, !tbaa !24
  br label %bb48
bb48:
  %t220 = load i64, ptr %l100
  %t221 = inttoptr i64 %t220 to ptr
  %t222 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t221, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t222, ptr %l102
  br label %bb49
bb49:
  %t223 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e17
  br i1 %t223, label %bb50, label %bb51
bb50:
  %t225 = load i64, ptr %l100
  %t226 = inttoptr i64 %t225 to ptr
  %t227 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102, i32 0, i32 0
  %t228 = load { i64, ptr }, ptr %t227
  %t229 = extractvalue { i64, ptr } %t228, 1
  %t230 = call ptr @__olang_region_or(ptr %t229, ptr null)
  %t231 = icmp ne ptr %t230, null
  %t232 = select i1 %t231, ptr %t230, ptr null
  %t233 = icmp eq ptr %t232, %t226
  call void @__olang_region_settle(ptr %t226, i1 %t233)
  br label %bb51
bb51:
  %t234 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %l20
  %t235 = ptrtoint ptr %v1 to i64
  store i64 %t235, ptr %l104, !tbaa !24
  %t236 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e18
  br i1 %t236, label %bb52, label %bb53
bb52:
  %t238 = call ptr @__olang_region_make(ptr %v1)
  %t239 = ptrtoint ptr %t238 to i64
  store i64 %t239, ptr %l104, !tbaa !24
  br label %bb53
bb53:
  %t240 = load i64, ptr %l104
  %t241 = inttoptr i64 %t240 to ptr
  %t242 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t241, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t242, ptr %l106
  br label %bb54
bb54:
  %t243 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e18
  br i1 %t243, label %bb55, label %bb56
bb55:
  %t245 = load i64, ptr %l104
  %t246 = inttoptr i64 %t245 to ptr
  %t247 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106, i32 0, i32 0
  %t248 = load { i64, ptr }, ptr %t247
  %t249 = extractvalue { i64, ptr } %t248, 1
  %t250 = call ptr @__olang_region_or(ptr %t249, ptr null)
  %t251 = icmp ne ptr %t250, null
  %t252 = select i1 %t251, ptr %t250, ptr null
  %t253 = icmp eq ptr %t252, %t246
  call void @__olang_region_settle(ptr %t246, i1 %t253)
  br label %bb56
bb56:
  %t254 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t254, ptr %l21
  %t255 = ptrtoint ptr %v1 to i64
  store i64 %t255, ptr %l108, !tbaa !24
  %t256 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e19
  br i1 %t256, label %bb57, label %bb58
bb57:
  %t258 = call ptr @__olang_region_make(ptr %v1)
  %t259 = ptrtoint ptr %t258 to i64
  store i64 %t259, ptr %l108, !tbaa !24
  br label %bb58
bb58:
  %t260 = load i64, ptr %l108
  %t261 = inttoptr i64 %t260 to ptr
  %t262 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t261, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t262, ptr %l110
  br label %bb59
bb59:
  %t263 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e19
  br i1 %t263, label %bb60, label %bb61
bb60:
  %t265 = load i64, ptr %l108
  %t266 = inttoptr i64 %t265 to ptr
  %t267 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110, i32 0, i32 0
  %t268 = load { i64, ptr }, ptr %t267
  %t269 = extractvalue { i64, ptr } %t268, 1
  %t270 = call ptr @__olang_region_or(ptr %t269, ptr null)
  %t271 = icmp ne ptr %t270, null
  %t272 = select i1 %t271, ptr %t270, ptr null
  %t273 = icmp eq ptr %t272, %t266
  call void @__olang_region_settle(ptr %t266, i1 %t273)
  br label %bb61
bb61:
  %t274 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t274, ptr %l22
  %t275 = ptrtoint ptr %v1 to i64
  store i64 %t275, ptr %l112, !tbaa !24
  %t276 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e20
  br i1 %t276, label %bb62, label %bb63
bb62:
  %t278 = call ptr @__olang_region_make(ptr %v1)
  %t279 = ptrtoint ptr %t278 to i64
  store i64 %t279, ptr %l112, !tbaa !24
  br label %bb63
bb63:
  %t280 = load i64, ptr %l112
  %t281 = inttoptr i64 %t280 to ptr
  %t282 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t281, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %l114
  br label %bb64
bb64:
  %t283 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e20
  br i1 %t283, label %bb65, label %bb66
bb65:
  %t285 = load i64, ptr %l112
  %t286 = inttoptr i64 %t285 to ptr
  %t287 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l114, i32 0, i32 0
  %t288 = load { i64, ptr }, ptr %t287
  %t289 = extractvalue { i64, ptr } %t288, 1
  %t290 = call ptr @__olang_region_or(ptr %t289, ptr null)
  %t291 = icmp ne ptr %t290, null
  %t292 = select i1 %t291, ptr %t290, ptr null
  %t293 = icmp eq ptr %t292, %t286
  call void @__olang_region_settle(ptr %t286, i1 %t293)
  br label %bb66
bb66:
  %t294 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l114
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %l23
  %t295 = ptrtoint ptr %v1 to i64
  store i64 %t295, ptr %l116, !tbaa !24
  %t296 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e21
  br i1 %t296, label %bb67, label %bb68
bb67:
  %t298 = call ptr @__olang_region_make(ptr %v1)
  %t299 = ptrtoint ptr %t298 to i64
  store i64 %t299, ptr %l116, !tbaa !24
  br label %bb68
bb68:
  %t300 = load i64, ptr %l116
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t301, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %l118
  br label %bb69
bb69:
  %t303 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e21
  br i1 %t303, label %bb70, label %bb71
bb70:
  %t305 = load i64, ptr %l116
  %t306 = inttoptr i64 %t305 to ptr
  %t307 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118, i32 0, i32 0
  %t308 = load { i64, ptr }, ptr %t307
  %t309 = extractvalue { i64, ptr } %t308, 1
  %t310 = call ptr @__olang_region_or(ptr %t309, ptr null)
  %t311 = icmp ne ptr %t310, null
  %t312 = select i1 %t311, ptr %t310, ptr null
  %t313 = icmp eq ptr %t312, %t306
  call void @__olang_region_settle(ptr %t306, i1 %t313)
  br label %bb71
bb71:
  %t314 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t314, ptr %l24
  %t315 = ptrtoint ptr %v1 to i64
  store i64 %t315, ptr %l120, !tbaa !24
  %t316 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e22
  br i1 %t316, label %bb72, label %bb73
bb72:
  %t318 = call ptr @__olang_region_make(ptr %v1)
  %t319 = ptrtoint ptr %t318 to i64
  store i64 %t319, ptr %l120, !tbaa !24
  br label %bb73
bb73:
  %t320 = load i64, ptr %l120
  %t321 = inttoptr i64 %t320 to ptr
  %t322 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t321, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t322, ptr %l122
  br label %bb74
bb74:
  %t323 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e22
  br i1 %t323, label %bb75, label %bb76
bb75:
  %t325 = load i64, ptr %l120
  %t326 = inttoptr i64 %t325 to ptr
  %t327 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122, i32 0, i32 0
  %t328 = load { i64, ptr }, ptr %t327
  %t329 = extractvalue { i64, ptr } %t328, 1
  %t330 = call ptr @__olang_region_or(ptr %t329, ptr null)
  %t331 = icmp ne ptr %t330, null
  %t332 = select i1 %t331, ptr %t330, ptr null
  %t333 = icmp eq ptr %t332, %t326
  call void @__olang_region_settle(ptr %t326, i1 %t333)
  br label %bb76
bb76:
  %t334 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t334, ptr %l25
  store i64 0, ptr %l26, !tbaa !24
  %t335 = ptrtoint ptr %v1 to i64
  store i64 %t335, ptr %l124, !tbaa !24
  %t336 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e24
  br i1 %t336, label %bb77, label %bb78
bb77:
  %t338 = call ptr @__olang_region_make(ptr %v1)
  %t339 = ptrtoint ptr %t338 to i64
  store i64 %t339, ptr %l124, !tbaa !24
  br label %bb78
bb78:
  %t340 = load i64, ptr %l124
  %t341 = inttoptr i64 %t340 to ptr
  %t342 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t341, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t342, ptr %l126
  br label %bb79
bb79:
  %t343 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e24
  br i1 %t343, label %bb80, label %bb81
bb80:
  %t345 = load i64, ptr %l124
  %t346 = inttoptr i64 %t345 to ptr
  %t347 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l126, i32 0, i32 0
  %t348 = load { i64, ptr }, ptr %t347
  %t349 = extractvalue { i64, ptr } %t348, 1
  %t350 = call ptr @__olang_region_or(ptr %t349, ptr null)
  %t351 = icmp ne ptr %t350, null
  %t352 = select i1 %t351, ptr %t350, ptr null
  %t353 = icmp eq ptr %t352, %t346
  call void @__olang_region_settle(ptr %t346, i1 %t353)
  br label %bb81
bb81:
  %t354 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l126
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t354, ptr %l27
  %t355 = ptrtoint ptr %v1 to i64
  store i64 %t355, ptr %l128, !tbaa !24
  %t356 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e25
  br i1 %t356, label %bb82, label %bb83
bb82:
  %t358 = call ptr @__olang_region_make(ptr %v1)
  %t359 = ptrtoint ptr %t358 to i64
  store i64 %t359, ptr %l128, !tbaa !24
  br label %bb83
bb83:
  %t360 = load i64, ptr %l128
  %t361 = inttoptr i64 %t360 to ptr
  %t362 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t361, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, ptr %l130
  br label %bb84
bb84:
  %t363 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e25
  br i1 %t363, label %bb85, label %bb86
bb85:
  %t365 = load i64, ptr %l128
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l130, i32 0, i32 0
  %t368 = load { i64, ptr }, ptr %t367
  %t369 = extractvalue { i64, ptr } %t368, 1
  %t370 = call ptr @__olang_region_or(ptr %t369, ptr null)
  %t371 = icmp ne ptr %t370, null
  %t372 = select i1 %t371, ptr %t370, ptr null
  %t373 = icmp eq ptr %t372, %t366
  call void @__olang_region_settle(ptr %t366, i1 %t373)
  br label %bb86
bb86:
  %t374 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l130
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374, ptr %l28
  %t375 = ptrtoint ptr %v1 to i64
  store i64 %t375, ptr %l132, !tbaa !24
  %t376 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e26
  br i1 %t376, label %bb87, label %bb88
bb87:
  %t378 = call ptr @__olang_region_make(ptr %v1)
  %t379 = ptrtoint ptr %t378 to i64
  store i64 %t379, ptr %l132, !tbaa !24
  br label %bb88
bb88:
  %t380 = load i64, ptr %l132
  %t381 = inttoptr i64 %t380 to ptr
  %t382 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t381, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t382, ptr %l134
  br label %bb89
bb89:
  %t383 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e26
  br i1 %t383, label %bb90, label %bb91
bb90:
  %t385 = load i64, ptr %l132
  %t386 = inttoptr i64 %t385 to ptr
  %t387 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134, i32 0, i32 0
  %t388 = load { i64, ptr }, ptr %t387
  %t389 = extractvalue { i64, ptr } %t388, 1
  %t390 = call ptr @__olang_region_or(ptr %t389, ptr null)
  %t391 = icmp ne ptr %t390, null
  %t392 = select i1 %t391, ptr %t390, ptr null
  %t393 = icmp eq ptr %t392, %t386
  call void @__olang_region_settle(ptr %t386, i1 %t393)
  br label %bb91
bb91:
  %t394 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t394, ptr %l29
  %t395 = ptrtoint ptr %v1 to i64
  store i64 %t395, ptr %l136, !tbaa !24
  %t396 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e27
  br i1 %t396, label %bb92, label %bb93
bb92:
  %t398 = call ptr @__olang_region_make(ptr %v1)
  %t399 = ptrtoint ptr %t398 to i64
  store i64 %t399, ptr %l136, !tbaa !24
  br label %bb93
bb93:
  %t400 = load i64, ptr %l136
  %t401 = inttoptr i64 %t400 to ptr
  %t402 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t401, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %l138
  br label %bb94
bb94:
  %t403 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e27
  br i1 %t403, label %bb95, label %bb96
bb95:
  %t405 = load i64, ptr %l136
  %t406 = inttoptr i64 %t405 to ptr
  %t407 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138, i32 0, i32 0
  %t408 = load { i64, ptr }, ptr %t407
  %t409 = extractvalue { i64, ptr } %t408, 1
  %t410 = call ptr @__olang_region_or(ptr %t409, ptr null)
  %t411 = icmp ne ptr %t410, null
  %t412 = select i1 %t411, ptr %t410, ptr null
  %t413 = icmp eq ptr %t412, %t406
  call void @__olang_region_settle(ptr %t406, i1 %t413)
  br label %bb96
bb96:
  %t414 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t414, ptr %l30
  store i64 0, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  store i64 -1, ptr %l33, !tbaa !24
  store i64 -1, ptr %l34, !tbaa !24
  store i64 -1, ptr %l35, !tbaa !24
  %t415 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t415, ptr %l140
  br label %bb97
bb97:
  %t416 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l140
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t416, ptr %l36
  store i64 -1, ptr %l37, !tbaa !24
  store i64 -1, ptr %l38, !tbaa !24
  %t417 = ptrtoint ptr %v1 to i64
  store i64 %t417, ptr %l141, !tbaa !24
  %t418 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e36
  br i1 %t418, label %bb98, label %bb99
bb98:
  %t420 = call ptr @__olang_region_make(ptr %v1)
  %t421 = ptrtoint ptr %t420 to i64
  store i64 %t421, ptr %l141, !tbaa !24
  br label %bb99
bb99:
  %t422 = load i64, ptr %l141
  %t423 = inttoptr i64 %t422 to ptr
  %t424 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t423, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t424, ptr %l143
  br label %bb100
bb100:
  %t425 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e36
  br i1 %t425, label %bb101, label %bb102
bb101:
  %t427 = load i64, ptr %l141
  %t428 = inttoptr i64 %t427 to ptr
  %t429 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143, i32 0, i32 0
  %t430 = load { i64, ptr }, ptr %t429
  %t431 = extractvalue { i64, ptr } %t430, 1
  %t432 = call ptr @__olang_region_or(ptr %t431, ptr null)
  %t433 = icmp ne ptr %t432, null
  %t434 = select i1 %t433, ptr %t432, ptr null
  %t435 = icmp eq ptr %t434, %t428
  call void @__olang_region_settle(ptr %t428, i1 %t435)
  br label %bb102
bb102:
  %t436 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t436, ptr %l39
  %t437 = ptrtoint ptr %v1 to i64
  store i64 %t437, ptr %l145, !tbaa !24
  %t438 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e37
  br i1 %t438, label %bb103, label %bb104
bb103:
  %t440 = call ptr @__olang_region_make(ptr %v1)
  %t441 = ptrtoint ptr %t440 to i64
  store i64 %t441, ptr %l145, !tbaa !24
  br label %bb104
bb104:
  %t442 = load i64, ptr %l145
  %t443 = inttoptr i64 %t442 to ptr
  %t444 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H8ba8de7724048003f4d7cc05c69a72ae(ptr %t443)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t444, ptr %l147
  br label %bb105
bb105:
  %t445 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e37
  br i1 %t445, label %bb106, label %bb107
bb106:
  %t447 = load i64, ptr %l145
  %t448 = inttoptr i64 %t447 to ptr
  %t449 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147, i32 0, i32 2
  %t450 = load { i64, ptr }, ptr %t449
  %t451 = extractvalue { i64, ptr } %t450, 1
  %t452 = call ptr @__olang_region_or(ptr %t451, ptr null)
  %t453 = icmp ne ptr %t452, null
  %t454 = select i1 %t453, ptr %t452, ptr null
  %t455 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147, i32 0, i32 1
  %t456 = load { i64, ptr }, ptr %t455
  %t457 = extractvalue { i64, ptr } %t456, 1
  %t458 = call ptr @__olang_region_or(ptr %t457, ptr null)
  %t459 = icmp ne ptr %t458, null
  %t460 = select i1 %t459, ptr %t458, ptr %t454
  %t461 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147, i32 0, i32 0
  %t462 = load { i64, ptr }, ptr %t461
  %t463 = extractvalue { i64, ptr } %t462, 1
  %t464 = call ptr @__olang_region_or(ptr %t463, ptr null)
  %t465 = icmp ne ptr %t464, null
  %t466 = select i1 %t465, ptr %t464, ptr %t460
  %t467 = icmp eq ptr %t466, %t448
  call void @__olang_region_settle(ptr %t448, i1 %t467)
  br label %bb107
bb107:
  %t468 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t468, ptr %l40
  store i64 0, ptr %l41, !tbaa !24
  %t469 = ptrtoint ptr %v1 to i64
  store i64 %t469, ptr %l149, !tbaa !24
  %t470 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e39
  br i1 %t470, label %bb108, label %bb109
bb108:
  %t472 = call ptr @__olang_region_make(ptr %v1)
  %t473 = ptrtoint ptr %t472 to i64
  store i64 %t473, ptr %l149, !tbaa !24
  br label %bb109
bb109:
  %t474 = load i64, ptr %l149
  %t475 = inttoptr i64 %t474 to ptr
  %t476 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t475)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t476, ptr %l151
  br label %bb110
bb110:
  %t477 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e39
  br i1 %t477, label %bb111, label %bb112
bb111:
  %t479 = load i64, ptr %l149
  %t480 = inttoptr i64 %t479 to ptr
  %t481 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151, i32 0, i32 2
  %t482 = load { i64, ptr }, ptr %t481
  %t483 = extractvalue { i64, ptr } %t482, 1
  %t484 = call ptr @__olang_region_or(ptr %t483, ptr null)
  %t485 = icmp ne ptr %t484, null
  %t486 = select i1 %t485, ptr %t484, ptr null
  %t487 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151, i32 0, i32 1
  %t488 = load { i64, ptr }, ptr %t487
  %t489 = extractvalue { i64, ptr } %t488, 1
  %t490 = call ptr @__olang_region_or(ptr %t489, ptr null)
  %t491 = icmp ne ptr %t490, null
  %t492 = select i1 %t491, ptr %t490, ptr %t486
  %t493 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151, i32 0, i32 0
  %t494 = load { i64, ptr }, ptr %t493
  %t495 = extractvalue { i64, ptr } %t494, 1
  %t496 = call ptr @__olang_region_or(ptr %t495, ptr null)
  %t497 = icmp ne ptr %t496, null
  %t498 = select i1 %t497, ptr %t496, ptr %t492
  %t499 = icmp eq ptr %t498, %t480
  call void @__olang_region_settle(ptr %t480, i1 %t499)
  br label %bb112
bb112:
  %t500 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t500, ptr %l42
  %t501 = ptrtoint ptr %v1 to i64
  store i64 %t501, ptr %l153, !tbaa !24
  %t502 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e40
  br i1 %t502, label %bb113, label %bb114
bb113:
  %t504 = call ptr @__olang_region_make(ptr %v1)
  %t505 = ptrtoint ptr %t504 to i64
  store i64 %t505, ptr %l153, !tbaa !24
  br label %bb114
bb114:
  %t506 = load i64, ptr %l153
  %t507 = inttoptr i64 %t506 to ptr
  %t508 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t507, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t508, ptr %l155
  br label %bb115
bb115:
  %t509 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e40
  br i1 %t509, label %bb116, label %bb117
bb116:
  %t511 = load i64, ptr %l153
  %t512 = inttoptr i64 %t511 to ptr
  %t513 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155, i32 0, i32 0
  %t514 = load { i64, ptr }, ptr %t513
  %t515 = extractvalue { i64, ptr } %t514, 1
  %t516 = call ptr @__olang_region_or(ptr %t515, ptr null)
  %t517 = icmp ne ptr %t516, null
  %t518 = select i1 %t517, ptr %t516, ptr null
  %t519 = icmp eq ptr %t518, %t512
  call void @__olang_region_settle(ptr %t512, i1 %t519)
  br label %bb117
bb117:
  %t520 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t520, ptr %l43
  %t521 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 0, i32 0)
  store %"compiler/source:Span" %t521, ptr %l157
  br label %bb118
bb118:
  %t522 = load %"compiler/source:Span", ptr %l157
  store %"compiler/source:Span" %t522, ptr %l44
  %t523 = ptrtoint ptr %v1 to i64
  store i64 %t523, ptr %l158, !tbaa !24
  %t524 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e42
  br i1 %t524, label %bb119, label %bb120
bb119:
  %t526 = call ptr @__olang_region_make(ptr %v1)
  %t527 = ptrtoint ptr %t526 to i64
  store i64 %t527, ptr %l158, !tbaa !24
  br label %bb120
bb120:
  %t528 = load i64, ptr %l158
  %t529 = inttoptr i64 %t528 to ptr
  %t530 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t529, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t530, ptr %l160
  br label %bb121
bb121:
  %t531 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e42
  br i1 %t531, label %bb122, label %bb123
bb122:
  %t533 = load i64, ptr %l158
  %t534 = inttoptr i64 %t533 to ptr
  %t535 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l160, i32 0, i32 0
  %t536 = load { i64, ptr }, ptr %t535
  %t537 = extractvalue { i64, ptr } %t536, 1
  %t538 = call ptr @__olang_region_or(ptr %t537, ptr null)
  %t539 = icmp ne ptr %t538, null
  %t540 = select i1 %t539, ptr %t538, ptr null
  %t541 = icmp eq ptr %t540, %t534
  call void @__olang_region_settle(ptr %t534, i1 %t541)
  br label %bb123
bb123:
  %t542 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l160
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t542, ptr %l45
  %t543 = ptrtoint ptr %v1 to i64
  store i64 %t543, ptr %l162, !tbaa !24
  %t544 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e43
  br i1 %t544, label %bb124, label %bb125
bb124:
  %t546 = call ptr @__olang_region_make(ptr %v1)
  %t547 = ptrtoint ptr %t546 to i64
  store i64 %t547, ptr %l162, !tbaa !24
  br label %bb125
bb125:
  %t548 = load i64, ptr %l162
  %t549 = inttoptr i64 %t548 to ptr
  %t550 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t549, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t550, ptr %l164
  br label %bb126
bb126:
  %t551 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e43
  br i1 %t551, label %bb127, label %bb128
bb127:
  %t553 = load i64, ptr %l162
  %t554 = inttoptr i64 %t553 to ptr
  %t555 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l164, i32 0, i32 0
  %t556 = load { i64, ptr }, ptr %t555
  %t557 = extractvalue { i64, ptr } %t556, 1
  %t558 = call ptr @__olang_region_or(ptr %t557, ptr null)
  %t559 = icmp ne ptr %t558, null
  %t560 = select i1 %t559, ptr %t558, ptr null
  %t561 = icmp eq ptr %t560, %t554
  call void @__olang_region_settle(ptr %t554, i1 %t561)
  br label %bb128
bb128:
  %t562 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l164
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t562, ptr %l46
  %t563 = ptrtoint ptr %v1 to i64
  store i64 %t563, ptr %l166, !tbaa !24
  %t564 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e44
  br i1 %t564, label %bb129, label %bb130
bb129:
  %t566 = call ptr @__olang_region_make(ptr %v1)
  %t567 = ptrtoint ptr %t566 to i64
  store i64 %t567, ptr %l166, !tbaa !24
  br label %bb130
bb130:
  %t568 = load i64, ptr %l166
  %t569 = inttoptr i64 %t568 to ptr
  %t570 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t569, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t570, ptr %l168
  br label %bb131
bb131:
  %t571 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e44
  br i1 %t571, label %bb132, label %bb133
bb132:
  %t573 = load i64, ptr %l166
  %t574 = inttoptr i64 %t573 to ptr
  %t575 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168, i32 0, i32 0
  %t576 = load { i64, ptr }, ptr %t575
  %t577 = extractvalue { i64, ptr } %t576, 1
  %t578 = call ptr @__olang_region_or(ptr %t577, ptr null)
  %t579 = icmp ne ptr %t578, null
  %t580 = select i1 %t579, ptr %t578, ptr null
  %t581 = icmp eq ptr %t580, %t574
  call void @__olang_region_settle(ptr %t574, i1 %t581)
  br label %bb133
bb133:
  %t582 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t582, ptr %l47
  %t583 = ptrtoint ptr %v1 to i64
  store i64 %t583, ptr %l170, !tbaa !24
  %t584 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e45
  br i1 %t584, label %bb134, label %bb135
bb134:
  %t586 = call ptr @__olang_region_make(ptr %v1)
  %t587 = ptrtoint ptr %t586 to i64
  store i64 %t587, ptr %l170, !tbaa !24
  br label %bb135
bb135:
  %t588 = load i64, ptr %l170
  %t589 = inttoptr i64 %t588 to ptr
  %t590 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t589, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t590, ptr %l172
  br label %bb136
bb136:
  %t591 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e45
  br i1 %t591, label %bb137, label %bb138
bb137:
  %t593 = load i64, ptr %l170
  %t594 = inttoptr i64 %t593 to ptr
  %t595 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l172, i32 0, i32 0
  %t596 = load { i64, ptr }, ptr %t595
  %t597 = extractvalue { i64, ptr } %t596, 1
  %t598 = call ptr @__olang_region_or(ptr %t597, ptr null)
  %t599 = icmp ne ptr %t598, null
  %t600 = select i1 %t599, ptr %t598, ptr null
  %t601 = icmp eq ptr %t600, %t594
  call void @__olang_region_settle(ptr %t594, i1 %t601)
  br label %bb138
bb138:
  %t602 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l172
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t602, ptr %l48
  %t603 = ptrtoint ptr %v1 to i64
  store i64 %t603, ptr %l174, !tbaa !24
  %t604 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e46
  br i1 %t604, label %bb139, label %bb140
bb139:
  %t606 = call ptr @__olang_region_make(ptr %v1)
  %t607 = ptrtoint ptr %t606 to i64
  store i64 %t607, ptr %l174, !tbaa !24
  br label %bb140
bb140:
  %t608 = load i64, ptr %l174
  %t609 = inttoptr i64 %t608 to ptr
  %t610 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t609, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t610, ptr %l176
  br label %bb141
bb141:
  %t611 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e46
  br i1 %t611, label %bb142, label %bb143
bb142:
  %t613 = load i64, ptr %l174
  %t614 = inttoptr i64 %t613 to ptr
  %t615 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176, i32 0, i32 0
  %t616 = load { i64, ptr }, ptr %t615
  %t617 = extractvalue { i64, ptr } %t616, 1
  %t618 = call ptr @__olang_region_or(ptr %t617, ptr null)
  %t619 = icmp ne ptr %t618, null
  %t620 = select i1 %t619, ptr %t618, ptr null
  %t621 = icmp eq ptr %t620, %t614
  call void @__olang_region_settle(ptr %t614, i1 %t621)
  br label %bb143
bb143:
  %t622 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t622, ptr %l49
  %t623 = ptrtoint ptr %v1 to i64
  store i64 %t623, ptr %l178, !tbaa !24
  %t624 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e47
  br i1 %t624, label %bb144, label %bb145
bb144:
  %t626 = call ptr @__olang_region_make(ptr %v1)
  %t627 = ptrtoint ptr %t626 to i64
  store i64 %t627, ptr %l178, !tbaa !24
  br label %bb145
bb145:
  %t628 = load i64, ptr %l178
  %t629 = inttoptr i64 %t628 to ptr
  %t630 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t629, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t630, ptr %l180
  br label %bb146
bb146:
  %t631 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e47
  br i1 %t631, label %bb147, label %bb148
bb147:
  %t633 = load i64, ptr %l178
  %t634 = inttoptr i64 %t633 to ptr
  %t635 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l180, i32 0, i32 0
  %t636 = load { i64, ptr }, ptr %t635
  %t637 = extractvalue { i64, ptr } %t636, 1
  %t638 = call ptr @__olang_region_or(ptr %t637, ptr null)
  %t639 = icmp ne ptr %t638, null
  %t640 = select i1 %t639, ptr %t638, ptr null
  %t641 = icmp eq ptr %t640, %t634
  call void @__olang_region_settle(ptr %t634, i1 %t641)
  br label %bb148
bb148:
  %t642 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l180
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t642, ptr %l50
  %t643 = ptrtoint ptr %v1 to i64
  store i64 %t643, ptr %l182, !tbaa !24
  %t644 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e48
  br i1 %t644, label %bb149, label %bb150
bb149:
  %t646 = call ptr @__olang_region_make(ptr %v1)
  %t647 = ptrtoint ptr %t646 to i64
  store i64 %t647, ptr %l182, !tbaa !24
  br label %bb150
bb150:
  %t648 = load i64, ptr %l182
  %t649 = inttoptr i64 %t648 to ptr
  %t650 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t649, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t650, ptr %l184
  br label %bb151
bb151:
  %t651 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e48
  br i1 %t651, label %bb152, label %bb153
bb152:
  %t653 = load i64, ptr %l182
  %t654 = inttoptr i64 %t653 to ptr
  %t655 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l184, i32 0, i32 0
  %t656 = load { i64, ptr }, ptr %t655
  %t657 = extractvalue { i64, ptr } %t656, 1
  %t658 = call ptr @__olang_region_or(ptr %t657, ptr null)
  %t659 = icmp ne ptr %t658, null
  %t660 = select i1 %t659, ptr %t658, ptr null
  %t661 = icmp eq ptr %t660, %t654
  call void @__olang_region_settle(ptr %t654, i1 %t661)
  br label %bb153
bb153:
  %t662 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l184
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t662, ptr %l51
  %t663 = ptrtoint ptr %v1 to i64
  store i64 %t663, ptr %l186, !tbaa !24
  %t664 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e49
  br i1 %t664, label %bb154, label %bb155
bb154:
  %t666 = call ptr @__olang_region_make(ptr %v1)
  %t667 = ptrtoint ptr %t666 to i64
  store i64 %t667, ptr %l186, !tbaa !24
  br label %bb155
bb155:
  %t668 = load i64, ptr %l186
  %t669 = inttoptr i64 %t668 to ptr
  %t670 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t669, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t670, ptr %l188
  br label %bb156
bb156:
  %t671 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e49
  br i1 %t671, label %bb157, label %bb158
bb157:
  %t673 = load i64, ptr %l186
  %t674 = inttoptr i64 %t673 to ptr
  %t675 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l188, i32 0, i32 0
  %t676 = load { i64, ptr }, ptr %t675
  %t677 = extractvalue { i64, ptr } %t676, 1
  %t678 = call ptr @__olang_region_or(ptr %t677, ptr null)
  %t679 = icmp ne ptr %t678, null
  %t680 = select i1 %t679, ptr %t678, ptr null
  %t681 = icmp eq ptr %t680, %t674
  call void @__olang_region_settle(ptr %t674, i1 %t681)
  br label %bb158
bb158:
  %t682 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l188
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t682, ptr %l52
  %t683 = ptrtoint ptr %v1 to i64
  store i64 %t683, ptr %l190, !tbaa !24
  %t684 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e50
  br i1 %t684, label %bb159, label %bb160
bb159:
  %t686 = call ptr @__olang_region_make(ptr %v1)
  %t687 = ptrtoint ptr %t686 to i64
  store i64 %t687, ptr %l190, !tbaa !24
  br label %bb160
bb160:
  %t688 = load i64, ptr %l190
  %t689 = inttoptr i64 %t688 to ptr
  %t690 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t689, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t690, ptr %l192
  br label %bb161
bb161:
  %t691 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e50
  br i1 %t691, label %bb162, label %bb163
bb162:
  %t693 = load i64, ptr %l190
  %t694 = inttoptr i64 %t693 to ptr
  %t695 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l192, i32 0, i32 0
  %t696 = load { i64, ptr }, ptr %t695
  %t697 = extractvalue { i64, ptr } %t696, 1
  %t698 = call ptr @__olang_region_or(ptr %t697, ptr null)
  %t699 = icmp ne ptr %t698, null
  %t700 = select i1 %t699, ptr %t698, ptr null
  %t701 = icmp eq ptr %t700, %t694
  call void @__olang_region_settle(ptr %t694, i1 %t701)
  br label %bb163
bb163:
  %t702 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l192
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t702, ptr %l53
  %t703 = ptrtoint ptr %v1 to i64
  store i64 %t703, ptr %l194, !tbaa !24
  %t704 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e51
  br i1 %t704, label %bb164, label %bb165
bb164:
  %t706 = call ptr @__olang_region_make(ptr %v1)
  %t707 = ptrtoint ptr %t706 to i64
  store i64 %t707, ptr %l194, !tbaa !24
  br label %bb165
bb165:
  %t708 = load i64, ptr %l194
  %t709 = inttoptr i64 %t708 to ptr
  %t710 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t709, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t710, ptr %l196
  br label %bb166
bb166:
  %t711 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e51
  br i1 %t711, label %bb167, label %bb168
bb167:
  %t713 = load i64, ptr %l194
  %t714 = inttoptr i64 %t713 to ptr
  %t715 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l196, i32 0, i32 0
  %t716 = load { i64, ptr }, ptr %t715
  %t717 = extractvalue { i64, ptr } %t716, 1
  %t718 = call ptr @__olang_region_or(ptr %t717, ptr null)
  %t719 = icmp ne ptr %t718, null
  %t720 = select i1 %t719, ptr %t718, ptr null
  %t721 = icmp eq ptr %t720, %t714
  call void @__olang_region_settle(ptr %t714, i1 %t721)
  br label %bb168
bb168:
  %t722 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l196
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t722, ptr %l54
  %t723 = ptrtoint ptr %v1 to i64
  store i64 %t723, ptr %l198, !tbaa !24
  %t724 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e52
  br i1 %t724, label %bb169, label %bb170
bb169:
  %t726 = call ptr @__olang_region_make(ptr %v1)
  %t727 = ptrtoint ptr %t726 to i64
  store i64 %t727, ptr %l198, !tbaa !24
  br label %bb170
bb170:
  %t728 = load i64, ptr %l198
  %t729 = inttoptr i64 %t728 to ptr
  %t730 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t729, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t730, ptr %l200
  br label %bb171
bb171:
  %t731 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e52
  br i1 %t731, label %bb172, label %bb173
bb172:
  %t733 = load i64, ptr %l198
  %t734 = inttoptr i64 %t733 to ptr
  %t735 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l200, i32 0, i32 0
  %t736 = load { i64, ptr }, ptr %t735
  %t737 = extractvalue { i64, ptr } %t736, 1
  %t738 = call ptr @__olang_region_or(ptr %t737, ptr null)
  %t739 = icmp ne ptr %t738, null
  %t740 = select i1 %t739, ptr %t738, ptr null
  %t741 = icmp eq ptr %t740, %t734
  call void @__olang_region_settle(ptr %t734, i1 %t741)
  br label %bb173
bb173:
  %t742 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l200
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t742, ptr %l55
  %t743 = ptrtoint ptr %v1 to i64
  store i64 %t743, ptr %l202, !tbaa !24
  %t744 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e53
  br i1 %t744, label %bb174, label %bb175
bb174:
  %t746 = call ptr @__olang_region_make(ptr %v1)
  %t747 = ptrtoint ptr %t746 to i64
  store i64 %t747, ptr %l202, !tbaa !24
  br label %bb175
bb175:
  %t748 = load i64, ptr %l202
  %t749 = inttoptr i64 %t748 to ptr
  %t750 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t749, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t750, ptr %l204
  br label %bb176
bb176:
  %t751 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e53
  br i1 %t751, label %bb177, label %bb178
bb177:
  %t753 = load i64, ptr %l202
  %t754 = inttoptr i64 %t753 to ptr
  %t755 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l204, i32 0, i32 0
  %t756 = load { i64, ptr }, ptr %t755
  %t757 = extractvalue { i64, ptr } %t756, 1
  %t758 = call ptr @__olang_region_or(ptr %t757, ptr null)
  %t759 = icmp ne ptr %t758, null
  %t760 = select i1 %t759, ptr %t758, ptr null
  %t761 = icmp eq ptr %t760, %t754
  call void @__olang_region_settle(ptr %t754, i1 %t761)
  br label %bb178
bb178:
  %t762 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l204
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t762, ptr %l56
  %t763 = ptrtoint ptr %v1 to i64
  store i64 %t763, ptr %l206, !tbaa !24
  %t764 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e54
  br i1 %t764, label %bb179, label %bb180
bb179:
  %t766 = call ptr @__olang_region_make(ptr %v1)
  %t767 = ptrtoint ptr %t766 to i64
  store i64 %t767, ptr %l206, !tbaa !24
  br label %bb180
bb180:
  %t768 = load i64, ptr %l206
  %t769 = inttoptr i64 %t768 to ptr
  %t770 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t769, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t770, ptr %l208
  br label %bb181
bb181:
  %t771 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e54
  br i1 %t771, label %bb182, label %bb183
bb182:
  %t773 = load i64, ptr %l206
  %t774 = inttoptr i64 %t773 to ptr
  %t775 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l208, i32 0, i32 0
  %t776 = load { i64, ptr }, ptr %t775
  %t777 = extractvalue { i64, ptr } %t776, 1
  %t778 = call ptr @__olang_region_or(ptr %t777, ptr null)
  %t779 = icmp ne ptr %t778, null
  %t780 = select i1 %t779, ptr %t778, ptr null
  %t781 = icmp eq ptr %t780, %t774
  call void @__olang_region_settle(ptr %t774, i1 %t781)
  br label %bb183
bb183:
  %t782 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l208
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t782, ptr %l57
  %t783 = ptrtoint ptr %v1 to i64
  store i64 %t783, ptr %l210, !tbaa !24
  %t784 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e55
  br i1 %t784, label %bb184, label %bb185
bb184:
  %t786 = call ptr @__olang_region_make(ptr %v1)
  %t787 = ptrtoint ptr %t786 to i64
  store i64 %t787, ptr %l210, !tbaa !24
  br label %bb185
bb185:
  %t788 = load i64, ptr %l210
  %t789 = inttoptr i64 %t788 to ptr
  %t790 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t789)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t790, ptr %l212
  br label %bb186
bb186:
  %t791 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3awalker_2e55
  br i1 %t791, label %bb187, label %bb188
bb187:
  %t793 = load i64, ptr %l210
  %t794 = inttoptr i64 %t793 to ptr
  %t795 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l212, i32 0, i32 2
  %t796 = load { i64, ptr }, ptr %t795
  %t797 = extractvalue { i64, ptr } %t796, 1
  %t798 = call ptr @__olang_region_or(ptr %t797, ptr null)
  %t799 = icmp ne ptr %t798, null
  %t800 = select i1 %t799, ptr %t798, ptr null
  %t801 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l212, i32 0, i32 1
  %t802 = load { i64, ptr }, ptr %t801
  %t803 = extractvalue { i64, ptr } %t802, 1
  %t804 = call ptr @__olang_region_or(ptr %t803, ptr null)
  %t805 = icmp ne ptr %t804, null
  %t806 = select i1 %t805, ptr %t804, ptr %t800
  %t807 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l212, i32 0, i32 0
  %t808 = load { i64, ptr }, ptr %t807
  %t809 = extractvalue { i64, ptr } %t808, 1
  %t810 = call ptr @__olang_region_or(ptr %t809, ptr null)
  %t811 = icmp ne ptr %t810, null
  %t812 = select i1 %t811, ptr %t810, ptr %t806
  %t813 = icmp eq ptr %t812, %t794
  call void @__olang_region_settle(ptr %t794, i1 %t813)
  br label %bb188
bb188:
  %t814 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l212
  %t815 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 0
  %t816 = load ptr, ptr %l3, !tbaa !29
  store ptr %t816, ptr %t815, !tbaa !29
  %t817 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 1
  %t818 = load i64, ptr %l4, !tbaa !24
  store i64 %t818, ptr %t817, !tbaa !24
  %t819 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 2
  %t820 = load i1, ptr %l5, !tbaa !21
  store i1 %t820, ptr %t819, !tbaa !21
  %t821 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 3
  %t822 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t822, ptr %t821
  %t823 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 4
  %t824 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t824, ptr %t823
  %t825 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 5
  %t826 = load i1, ptr %l8, !tbaa !21
  store i1 %t826, ptr %t825, !tbaa !21
  %t827 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 6
  %t828 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t828, ptr %t827
  %t829 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 7
  %t830 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t830, ptr %t829
  %t831 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 8
  %t832 = load i32, ptr %l11, !tbaa !23
  store i32 %t832, ptr %t831, !tbaa !23
  %t833 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 9
  %t834 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t834, ptr %t833
  %t835 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 10
  %t836 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t836, ptr %t835
  %t837 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 11
  %t838 = load i64, ptr %l14, !tbaa !24
  store i64 %t838, ptr %t837, !tbaa !24
  %t839 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 12
  %t840 = load i64, ptr %l15, !tbaa !24
  store i64 %t840, ptr %t839, !tbaa !24
  %t841 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 13
  %t842 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t842, ptr %t841
  %t843 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 14
  %t844 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t844, ptr %t843
  %t845 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 15
  %t846 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t846, ptr %t845
  %t847 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 16
  %t848 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t848, ptr %t847
  %t849 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 17
  %t850 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t850, ptr %t849
  %t851 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 18
  %t852 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t852, ptr %t851
  %t853 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 19
  %t854 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t854, ptr %t853
  %t855 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 20
  %t856 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t856, ptr %t855
  %t857 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 21
  %t858 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t858, ptr %t857
  %t859 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 22
  %t860 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t860, ptr %t859
  %t861 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 23
  %t862 = load i64, ptr %l26, !tbaa !24
  store i64 %t862, ptr %t861, !tbaa !24
  %t863 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 24
  %t864 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t864, ptr %t863
  %t865 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 25
  %t866 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t866, ptr %t865
  %t867 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 26
  %t868 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t868, ptr %t867
  %t869 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 27
  %t870 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t870, ptr %t869
  %t871 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 28
  %t872 = load i64, ptr %l31, !tbaa !24
  store i64 %t872, ptr %t871, !tbaa !24
  %t873 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 29
  %t874 = load i64, ptr %l32, !tbaa !24
  store i64 %t874, ptr %t873, !tbaa !24
  %t875 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 30
  %t876 = load i64, ptr %l33, !tbaa !24
  store i64 %t876, ptr %t875, !tbaa !24
  %t877 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 31
  %t878 = load i64, ptr %l34, !tbaa !24
  store i64 %t878, ptr %t877, !tbaa !24
  %t879 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 32
  %t880 = load i64, ptr %l35, !tbaa !24
  store i64 %t880, ptr %t879, !tbaa !24
  %t881 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 33
  %t882 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t882, ptr %t881
  %t883 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 34
  %t884 = load i64, ptr %l37, !tbaa !24
  store i64 %t884, ptr %t883, !tbaa !24
  %t885 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 35
  %t886 = load i64, ptr %l38, !tbaa !24
  store i64 %t886, ptr %t885, !tbaa !24
  %t887 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 36
  %t888 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t888, ptr %t887
  %t889 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 37
  %t890 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t890, ptr %t889
  %t891 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 38
  %t892 = load i64, ptr %l41, !tbaa !24
  store i64 %t892, ptr %t891, !tbaa !24
  %t893 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 39
  %t894 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t894, ptr %t893
  %t895 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 40
  %t896 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t896, ptr %t895
  %t897 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 41
  %t898 = load %"compiler/source:Span", ptr %l44
  store %"compiler/source:Span" %t898, ptr %t897
  %t899 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 42
  %t900 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t900, ptr %t899
  %t901 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 43
  %t902 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t902, ptr %t901
  %t903 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 44
  %t904 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t904, ptr %t903
  %t905 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 45
  %t906 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t906, ptr %t905
  %t907 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 46
  %t908 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t908, ptr %t907
  %t909 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 47
  %t910 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t910, ptr %t909
  %t911 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 48
  %t912 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t912, ptr %t911
  %t913 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 49
  %t914 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t914, ptr %t913
  %t915 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 50
  %t916 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t916, ptr %t915
  %t917 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 51
  %t918 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t918, ptr %t917
  %t919 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 52
  %t920 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t920, ptr %t919
  %t921 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 53
  %t922 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t922, ptr %t921
  %t923 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 54
  %t924 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t924, ptr %t923
  %t925 = getelementptr %"compiler/free:walker", ptr %l214, i32 0, i32 55
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t814, ptr %t925
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l214, i64 1624, i1 false)
  br label %ret
ret:
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
@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" handle" }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"place " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d5 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" sole " }>, align 8
@.c6 = private unnamed_addr constant [5 x i8] c"true\00"
@.c7 = private unnamed_addr constant [6 x i8] c"false\00"
@.d8 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" lets " }>, align 8
@.d9 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" stores " }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" why " }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d12 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"store place " }>, align 8
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" body " }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" kind " }>, align 8
@.d15 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" site " }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d18 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"letgo place " }>, align 8
@.d19 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" body " }>, align 8
@.d20 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" kind " }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d24 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"body " }>, align 8
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
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d26 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" stored " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2emut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %a0, !tbaa !29
  store ptr %t2, ptr %l2, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t4 = icmp ne ptr %t3, null
  br i1 %t4, label %bb1, label %bb3
bb1:
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sge i64 %t6, 8
  br i1 %t7, label %bb4, label %bb5
bb2:
  br label %ret
bb3:
  %t9 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb2
bb4:
  %t11 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb2
bb5:
  %t13 = load i64, ptr %l1, !tbaa !24
  %t14 = add i64 %t13, 1
  store i64 %t14, ptr %l5, !tbaa !24
  %t15 = load ptr, ptr %l2, !tbaa !29
  store ptr %t15, ptr %l6, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l6, !tbaa !29
  %t17 = call ptr @__olang_scope_of(ptr %t16, ptr null)
  %t18 = ptrtoint ptr %t17 to i64
  %t20 = inttoptr i64 %t18 to ptr
  %t21 = load ptr, ptr %l6, !tbaa !29
  %t22 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eStr_3cI64_3e(ptr %t20, ptr %s1, ptr %t21)
  store { i64, ptr } %t22, ptr %l7
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  call void @__olang_sb_put(ptr %v0, ptr %t24, i64 %t25)
  call void @__olang_scope_close(ptr %s1)
  br label %bb2
ret:
  ret void
}

@.d27 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" esc " }>, align 8
@.d28 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" multi " }>, align 8
@.d29 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" whole " }>, align 8
@.d30 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" res " }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_sb_done(ptr)
@.d32 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"tasks " }>, align 8
@.d33 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" hidden " }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"its elements" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d38 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"a task can reach it: nothing is freed early where a program has tasks" }>, align 8
@.d39 = private constant <{ i64, [130 x i8] }> <{ i64 0, [130 x i8] c"C may call an export fn from a thread of its own: nothing is freed early where C is given one, links C of its own, or is a library" }>, align 8
@.d40 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"a destructor, Str, Eq or Hash lets go of it where no call is written" }>, align 8
@.d41 = private constant <{ i64, [144 x i8] }> <{ i64 0, [144 x i8] c"its new value may hold an instance whose destructor is still to run (O16), which a let-go would run early: build that instance outside the value" }>, align 8
@.d42 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c"a value built into what it holds may hold an instance whose destructor is still to run (O16)" }>, align 8
@.d43 = private constant <{ i64, [98 x i8] }> <{ i64 0, [98 x i8] c"a call building into what it holds may register an instance whose destructor is still to run (O16)" }>, align 8
@olang_2esole_2ecompiler_2ffree_3areason_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d44 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"what is built for it is changed by a call that cannot build where it is: '" }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d46 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"its new value cannot be built in a region of its own here" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e_2ector(ptr %v0)
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

@.d47 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"its new value is built where another place's is" }>, align 8
@.d48 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"what it holds has a destructor still to run when it lets go (O15): its holder ends it" }>, align 8
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

@.d49 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"what holds it is an owner held in a place of early freeing, whose storage is one region" }>, align 8
@.d50 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"its new value is moved out of a place that keeps" }>, align 8
@.d51 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d52 = private constant <{ i64, [123 x i8] }> <{ i64 0, [123 x i8] c"what it holds is generational - a weak reference names its type - and is let go of by the count of its owning places (T13d)" }>, align 8
define linkonce_odr %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/free:leaf"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/free:leaf"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/free:leaf", ptr %a0
  store %"compiler/free:leaf" %t2, ptr %l1
  %t3 = getelementptr %"compiler/free:leaf", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"compiler/free:leaf", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/free:leaf", ptr %l1
  store %"compiler/free:leaf" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:leaf", ptr %rv
  ret %"compiler/free:leaf" %rr
}

@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"value" }>, align 8
@.d56 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"value" }>, align 8
@.d57 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"tree" }>, align 8
@.d58 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"value" }>, align 8
@olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2earm_2elocal_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d59 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@.d60 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"a value of it read in this statement is in use when '" }>, align 8
@.d61 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"' lets go of it; read what you need first" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d63 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"' (line " }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d65 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" from '" }>, align 8
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d69 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d70 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", '" }>, align 8
@.d71 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'," }>, align 8
@.d72 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d73 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"what the loop on line " }>, align 8
@.d74 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" walks" }>, align 8
@.d75 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d76 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d77 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"after '" }>, align 8
@.d78 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"' (line " }>, align 8
@.d79 = private constant <{ i64, [68 x i8] }> <{ i64 0, [68 x i8] c"), where the generator's caller may let go of it; read what you need" }>, align 8
@.d80 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" before the yield" }>, align 8
@.d81 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"after it lets go of it (line " }>, align 8
@.d82 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"); read what you need" }>, align 8
@.d83 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" before" }>, align 8
@.d84 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"after '" }>, align 8
@.d85 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"' (line " }>, align 8
@.d86 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"), which " }>, align 8
@.d87 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"; read what you need" }>, align 8
@.d88 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" before the call" }>, align 8
@.d89 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is used here, " }>, align 8
@olang_2esole_2ecompiler_2ffree_3awalker_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e6 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2ffree_3awalker_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e24 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e25 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e26 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e27 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ffree_3awalker_2e36 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e37 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H8ba8de7724048003f4d7cc05c69a72ae(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ffree_3awalker_2e39 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e40 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e42 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e43 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e44 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e45 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e46 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e47 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e48 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e49 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e50 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e51 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e52 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e53 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e54 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3awalker_2e55 = weak hidden constant i1 false
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d90 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d91 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0)
declare %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %a0)
declare %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_8f29d0df7ac0b0b1_5a3f673e10b5ae55 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsSole(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/free:reason" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eAt_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisOwnLocal(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ffree_2eLAssign = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2erecvOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:letGo" %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
@olang_loc_77e2c420ac7907a9_804235f2ad53d = external constant [0 x i8]
@G_2ecompiler_2ffree_2eLCall = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eLLeaf = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRTask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare i1 @compiler_2ffree_2ehas(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eRDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eSFresh = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_834ee64634399a9c_46784e5d37862958 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eLen_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %a0)
declare %"compiler/free:orStore" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eAt_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eLen_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %a0)
declare %"compiler/free:orCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eAt_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eLen_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %a0)
declare %"compiler/free:feedCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eAt_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedFits(ptr %v0, ptr %a0, %"compiler/free:feedCall" %a1)
declare %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eRInPlace = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceable(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:store" %a1)
@olang_loc_dcc3c6712d01991_ec14a6947a12b86d = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ffree_2eRMade = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eouterFirst(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1c3c578240008a_e9f41163a0859586 = external constant [0 x i8]
@olang_loc_66d907e33dd98677_4991ee91581ac48b = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
@G_2ecompiler_2ffree_2eRNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eheldPlaces(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ffree_2eRCopied = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eSMove = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eLen_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_7bd178b281ab108b_bca5961225cfb287 = external constant [0 x i8]
@olang_loc_54a8cb88ede7d99c_f1d49282556d5568 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_df2621a9cc7e5891_c8dc80a57ad57a3d = external constant [0 x i8]
@olang_loc_d176219a3bee3f8a_90c874c8f8700e56 = external constant [0 x i8]
@olang_loc_3832ed25f787c577_46d12f44adcfa45b = external constant [0 x i8]
@olang_loc_78b7d87e61167558_7d12aa6674d4d96c = external constant [0 x i8]
@olang_loc_5c0fdc79e2d66a14_68e7480db742a728 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Ha270003b2266a12c55eea6eacf9a4be1(ptr %v0, ptr %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2egenPlace(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erefCand(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0)
declare %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eonlyPath(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_bdafa441ac13699b_f5af7a3548cb73f = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@G_2ecompiler_2ffree_2eOPl = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eOMov = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ffree_2eoval(i64 %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsOwner(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eOPar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eOParC = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ffree_2eorig(i64 %a0, i64 %a1)
declare i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ffree_2eMustTop = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eplaceMust(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ffree_2eMovBase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\40\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eMustNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2ecallMust(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2etryMust(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ffree_2eisConversion(ptr %v0, i32 %a0, { i64, ptr } %a1)
@olang_loc_2f86b0bb9e05ec4_6260055ddf2cdd10 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egive(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_304dd9f782c5c299_7aedab6f7faf5da5 = external constant [0 x i8]
@olang_loc_ceff65db82d42b72_bd0ee798a65f80fe = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1c2ece56a8f93bb3_9a04e0623a4a84af = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereadOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, i1 %a4, i64 %a5, i64 %a6)
@olang_loc_4638628f5b2e3f80_2351d26d56dc1634 = external constant [0 x i8]
declare i64 @compiler_2ffree_2eownCopySite(ptr %v0, ptr %a0)
declare i64 @compiler_2ffree_2ereadLocalOf(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_95c175a58ff05fe9_ec975816cf48fd1d = external constant [0 x i8]
@olang_loc_c3a39e1a8321cbe9_14cb6b0bd5f3e345 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2edtorCallsOf(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@G_2ecompiler_2ffree_2eLVacate = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
@olang_loc_5c8710160ed2ee88_42fe4478e6ab17dc = external constant [0 x i8]
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ffree_2eLDrop = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2ffree_2ereceiverSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0)
@olang_loc_e32699ce7a94654a_1a46213a714ace46 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_Ha64a825bb0b4fc6c7596ac96329c2853(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2ffree_2eLHeld = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@G_2ecompiler_2ffree_2eLYield = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/free:letGo" @compiler_2ffree_3aletGo_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/source:Span" %a4, i64 %a5, %"compiler/source:Span" %a6, i64 %a7, i1 %a8)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2ePush_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0, %"compiler/free:letGo" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_a02d4e2a18cd3a61_9c6a7f96807aa8b5 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_720a25314e6ed839_22eb7101f62f811d = external constant [0 x i8]
@olang_loc_71c754545de4040c_468b95bb5168a5f8 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_350c73b6578d6328_239abab62451b64c = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_2a6707270ca06c1b_81c43f034781ce2f = external constant [0 x i8]
@olang_loc_de370d56f621a286_665adcb3259bb65a = external constant [0 x i8]
@olang_loc_61a66e32b2a4c4a5_788650647dbfbbd9 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisDtor(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeepView(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eusedAfter(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2eremoves(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_228ad70617d44d77_1dee412aac6cbab = external constant [0 x i8]
@olang_loc_5e2122fa9519644f_a9d9059c63542dd3 = external constant [0 x i8]
@olang_loc_c3fd4e13fe372032_611898922dc4483e = external constant [0 x i8]
@olang_loc_16263ed1acd4aa7e_23dcb8f717a142b2 = external constant [0 x i8]
declare ptr @compiler_2ffree_2efindCallPlace(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ea2e0f0d6ffcb248_fe73fa1c8e55849c = external constant [0 x i8]
declare ptr @compiler_2ffree_2efindCallStmt(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_6e2453cb19a4d71d_88f1503d6cec0391 = external constant [0 x i8]
@olang_loc_a8e684701cb727b6_7b41502ddc5bea8a = external constant [0 x i8]
@olang_loc_3e8b13b2a7075e62_22250d1a20f2250e = external constant [0 x i8]
@olang_loc_73267d5e0cab398e_8c6ff0bab5f15012 = external constant [0 x i8]
@olang_loc_a4448d4b24e169cf_c9af2cff75b97a13 = external constant [0 x i8]
declare i1 @compiler_2ffree_2estmtMoves(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eStr_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v0)

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
