source_filename = "compiler_scope-10.quick.ll"
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
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/scope:agreeAt" = type { { i64, [2 x i64] }, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
define dso_local ptr @compiler_2fscope_2eadapterRecv(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %rv = alloca ptr
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
  %t8 = icmp eq i64 %t6, 15
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
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l9, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 3}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { i32, ptr, i32 }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  store ptr %t31, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_9f0c519cc5cbfc38_501f2fba46fc3fe4)
  unreachable
bb16:
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_a49123b9ad752209_94dfdd7272e659d5)
  unreachable
bb22:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eSummary(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:rel"
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
  %l25 = alloca %"std/prelude/text:StringBuilder"
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca %"compiler/scope:rel"
  %l40 = alloca ptr
  %l41 = alloca { i64, [2 x i64] }
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, [2 x i64] }
  %l47 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l59 = alloca i64
  %l63 = alloca i64
  %l66 = alloca i64
  %l84 = alloca ptr
  %l85 = alloca i64
  %l89 = alloca i1
  %l93 = alloca i1
  %l100 = alloca i64
  %l104 = alloca i64
  %l107 = alloca i64
  %l125 = alloca ptr
  %l126 = alloca i64
  %l130 = alloca i1
  %l134 = alloca i1
  %l138 = alloca i1
  %l145 = alloca i64
  %l149 = alloca i64
  %l152 = alloca i64
  %l170 = alloca ptr
  %l171 = alloca i64
  %l175 = alloca { i64, [2 x i64] }
  %l177 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.builder
  %s16room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l25
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l25
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t5 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 6
  %t9 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t5, i64 %a1)
  store ptr %t9, ptr %l29
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l29, !tbaa !29
  store ptr %t10, ptr %l3, !tbaa !29
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"compiler/scope:summary", ptr %t11, i32 0, i32 0
  store ptr %t13, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t15 = load i64, ptr %l5, !tbaa !24
  store i64 %t15, ptr %l32, !tbaa !24
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l34
  br label %bb4
bb4:
  %t19 = load i64, ptr %l32, !tbaa !24
  %t20 = load i64, ptr %l34, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb6:
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t25, i64 %t26)
  store %"compiler/scope:rel" %t29, ptr %l39
  br label %bb8
bb8:
  %t30 = load %"compiler/scope:rel", ptr %l39
  store %"compiler/scope:rel" %t30, ptr %l6
  store ptr %l2, ptr %l40, !tbaa !29
  %t31 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t32 = load { i64, [2 x i64] }, ptr %t31
  store { i64, [2 x i64] } %t32, ptr %l41
  %t33 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 2
  %t34 = load i1, ptr %t33, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l43, !tbaa !27
  br label %bb11
bb10:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l43, !tbaa !27
  br label %bb11
bb11:
  %t36 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 1
  %t37 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t37, ptr %l44
  %t38 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 4
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = icmp ne i64 %t39, 0
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 4
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t48 = call i64 @__olang_fmt_i64(ptr null, i64 %t44)
  %t49 = add i64 %t46, %t48
  %t50 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t49)
  call void @olang_textcopy(ptr %t50, ptr %t45, i64 %t46)
  %t51 = getelementptr i8, ptr %t50, i64 %t46
  %t52 = call i64 @__olang_fmt_i64(ptr %t51, i64 %t44)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t50, 1
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t57 = extractvalue { i64, ptr } %t54, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l47, !tbaa !27
  br label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l47, !tbaa !27
  br label %bb14
bb14:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t63 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t63, i64 %t64)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s4, ptr %l41, i64 0)
  br label %bb15
bb15:
  %t66 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  call void @__olang_sb_put(ptr %s4, ptr %t67, i64 %t68)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s4, ptr %l44, i64 0)
  br label %bb16
bb16:
  %t70 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  call void @__olang_sb_put(ptr %s4, ptr %t71, i64 %t72)
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t73, i64 %t74)
  %t75 = load ptr, ptr %s4
  %t76 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t77 = load i64, ptr %t76
  %t78 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t77)
  call void @olang_textcopy(ptr %t78, ptr %t75, i64 %t77)
  %t79 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  store { i64, ptr } %t80, ptr %l53, !tbaa !27
  %t81 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t82 = load ptr, ptr %t81
  %t83 = icmp ne ptr %t82, null
  br i1 %t83, label %sbgrew.84, label %sbdone.85
sbgrew.84:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.85
sbdone.85:
  %t86 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t93 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t93, { i64, ptr } %t92)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t95 = load i64, ptr %l5, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l5, !tbaa !24
  br label %bb3
bb19:
  store i64 0, ptr %l7, !tbaa !24
  %t99 = load ptr, ptr %l3, !tbaa !29
  %t101 = getelementptr %"compiler/scope:summary", ptr %t99, i32 0, i32 1
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t101)
  store i64 %t103, ptr %l59
  br label %bb20
bb20:
  %t104 = load i64, ptr %l59, !tbaa !24
  store i64 %t104, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l8, !tbaa !24
  %t106 = load i64, ptr %l7, !tbaa !24
  %t109 = icmp sgt i64 %t105, %t106
  br i1 %t109, label %bb21, label %bb22
bb21:
  %t111 = load i64, ptr %l9, !tbaa !24
  %t113 = icmp sgt i64 %t111, 0
  br i1 %t113, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb26
bb23:
  %t115 = load i64, ptr %l8, !tbaa !24
  %t116 = load i64, ptr %l7, !tbaa !24
  %t119 = sub i64 %t115, %t116
  %t120 = load i64, ptr %l9, !tbaa !24
  %t123 = add i64 %t119, %t120
  %t125 = sub i64 %t123, 1
  %t126 = load i64, ptr %l9, !tbaa !24
  %t129 = sdiv i64 %t125, %t126
  store i64 %t129, ptr %l66, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb25
bb25:
  %t131 = load i64, ptr %l66, !tbaa !24
  store i64 %t131, ptr %l63, !tbaa !24
  br label %bb26
bb26:
  %t132 = load i64, ptr %l63, !tbaa !24
  store i64 %t132, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  %t133 = load i64, ptr %l11, !tbaa !24
  %t134 = load i64, ptr %l10, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s7)
  br label %bb35
bb29:
  br label %bb30
bb30:
  %t141 = load i64, ptr %l7, !tbaa !24
  %t142 = load i64, ptr %l11, !tbaa !24
  %t143 = load i64, ptr %l9, !tbaa !24
  %t146 = mul i64 %t142, %t143
  %t149 = add i64 %t141, %t146
  store i64 %t149, ptr %l12, !tbaa !24
  store ptr %l2, ptr %l84, !tbaa !29
  %t151 = load i64, ptr %l12, !tbaa !24
  store i64 %t151, ptr %l85, !tbaa !24
  %t152 = load ptr, ptr %l3, !tbaa !29
  %t154 = getelementptr %"compiler/scope:summary", ptr %t152, i32 0, i32 1
  %t155 = load i64, ptr %l12, !tbaa !24
  %t158 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t154, i64 %t155)
  store i1 %t158, ptr %l89
  br label %bb31
bb31:
  %t159 = load ptr, ptr %l3, !tbaa !29
  %t161 = getelementptr %"compiler/scope:summary", ptr %t159, i32 0, i32 2
  %t162 = load i64, ptr %l12, !tbaa !24
  %t165 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t161, i64 %t162)
  store i1 %t165, ptr %l93
  br label %bb32
bb32:
  %t166 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t168 = load i64, ptr %l85, !tbaa !24
  %t169 = call i64 @__olang_fmt_i64(ptr null, i64 %t168)
  %t170 = add i64 %t167, %t169
  %t171 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t174 = load i1, ptr %l89, !tbaa !21
  %t175 = select i1 %t174, ptr @.c8, ptr @.c9
  %t176 = select i1 %t174, i64 4, i64 5
  %t177 = add i64 %t173, %t176
  %t178 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t180 = add i64 %t177, %t179
  %t181 = load i1, ptr %l93, !tbaa !21
  %t182 = select i1 %t181, ptr @.c8, ptr @.c9
  %t183 = select i1 %t181, i64 4, i64 5
  %t184 = add i64 %t180, %t183
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t187 = add i64 %t184, %t186
  %t188 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t187)
  call void @olang_textcopy(ptr %t188, ptr %t166, i64 %t167)
  %t189 = getelementptr i8, ptr %t188, i64 %t167
  %t190 = call i64 @__olang_fmt_i64(ptr %t189, i64 %t168)
  %t191 = getelementptr i8, ptr %t189, i64 %t169
  call void @olang_textcopy(ptr %t191, ptr %t171, i64 %t172)
  %t192 = getelementptr i8, ptr %t191, i64 %t172
  call void @olang_textcopy(ptr %t192, ptr %t175, i64 %t176)
  %t193 = getelementptr i8, ptr %t192, i64 %t176
  call void @olang_textcopy(ptr %t193, ptr %t178, i64 %t179)
  %t194 = getelementptr i8, ptr %t193, i64 %t179
  call void @olang_textcopy(ptr %t194, ptr %t182, i64 %t183)
  %t195 = getelementptr i8, ptr %t194, i64 %t183
  call void @olang_textcopy(ptr %t195, ptr %t185, i64 %t186)
  %t196 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t188, 1
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t200 = extractvalue { i64, ptr } %t197, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  %t205 = load ptr, ptr %l84, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t205, { i64, ptr } %t204)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s7)
  br label %bb34
bb34:
  %t207 = load i64, ptr %l11, !tbaa !24
  %t209 = add i64 %t207, 1
  store i64 %t209, ptr %l11, !tbaa !24
  br label %bb27
bb35:
  store i64 0, ptr %l13, !tbaa !24
  %t211 = load ptr, ptr %l3, !tbaa !29
  %t213 = getelementptr %"compiler/scope:summary", ptr %t211, i32 0, i32 5
  %t215 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t213)
  store i64 %t215, ptr %l100
  br label %bb36
bb36:
  %t216 = load i64, ptr %l100, !tbaa !24
  store i64 %t216, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t217 = load i64, ptr %l14, !tbaa !24
  %t218 = load i64, ptr %l13, !tbaa !24
  %t221 = icmp sgt i64 %t217, %t218
  br i1 %t221, label %bb37, label %bb38
bb37:
  %t223 = load i64, ptr %l15, !tbaa !24
  %t225 = icmp sgt i64 %t223, 0
  br i1 %t225, label %bb39, label %bb40
bb38:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb42
bb39:
  %t227 = load i64, ptr %l14, !tbaa !24
  %t228 = load i64, ptr %l13, !tbaa !24
  %t231 = sub i64 %t227, %t228
  %t232 = load i64, ptr %l15, !tbaa !24
  %t235 = add i64 %t231, %t232
  %t237 = sub i64 %t235, 1
  %t238 = load i64, ptr %l15, !tbaa !24
  %t241 = sdiv i64 %t237, %t238
  store i64 %t241, ptr %l107, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb41
bb41:
  %t243 = load i64, ptr %l107, !tbaa !24
  store i64 %t243, ptr %l104, !tbaa !24
  br label %bb42
bb42:
  %t244 = load i64, ptr %l104, !tbaa !24
  store i64 %t244, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb43
bb43:
  store %olang.scope zeroinitializer, ptr %s11
  %t245 = load i64, ptr %l17, !tbaa !24
  %t246 = load i64, ptr %l16, !tbaa !24
  %t249 = icmp slt i64 %t245, %t246
  %t251 = xor i1 %t249, true
  br i1 %t251, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s11)
  br label %bb52
bb45:
  br label %bb46
bb46:
  %t253 = load i64, ptr %l13, !tbaa !24
  %t254 = load i64, ptr %l17, !tbaa !24
  %t255 = load i64, ptr %l15, !tbaa !24
  %t258 = mul i64 %t254, %t255
  %t261 = add i64 %t253, %t258
  store i64 %t261, ptr %l18, !tbaa !24
  store ptr %l2, ptr %l125, !tbaa !29
  %t263 = load i64, ptr %l18, !tbaa !24
  store i64 %t263, ptr %l126, !tbaa !24
  %t264 = load ptr, ptr %l3, !tbaa !29
  %t266 = getelementptr %"compiler/scope:summary", ptr %t264, i32 0, i32 5
  %t267 = load i64, ptr %l18, !tbaa !24
  %t270 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t266, i64 %t267)
  store i1 %t270, ptr %l130
  br label %bb47
bb47:
  %t271 = load ptr, ptr %l3, !tbaa !29
  %t273 = getelementptr %"compiler/scope:summary", ptr %t271, i32 0, i32 6
  %t274 = load i64, ptr %l18, !tbaa !24
  %t277 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t273, i64 %t274)
  store i1 %t277, ptr %l134
  br label %bb48
bb48:
  %t278 = load ptr, ptr %l3, !tbaa !29
  %t280 = getelementptr %"compiler/scope:summary", ptr %t278, i32 0, i32 7
  %t281 = load i64, ptr %l18, !tbaa !24
  %t284 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t280, i64 %t281)
  store i1 %t284, ptr %l138
  br label %bb49
bb49:
  %t285 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t286 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t287 = load i64, ptr %l126, !tbaa !24
  %t288 = call i64 @__olang_fmt_i64(ptr null, i64 %t287)
  %t289 = add i64 %t286, %t288
  %t290 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t291 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t292 = add i64 %t289, %t291
  %t293 = load i1, ptr %l130, !tbaa !21
  %t294 = select i1 %t293, ptr @.c8, ptr @.c9
  %t295 = select i1 %t293, i64 4, i64 5
  %t296 = add i64 %t292, %t295
  %t297 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t298 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t299 = add i64 %t296, %t298
  %t300 = load i1, ptr %l134, !tbaa !21
  %t301 = select i1 %t300, ptr @.c8, ptr @.c9
  %t302 = select i1 %t300, i64 4, i64 5
  %t303 = add i64 %t299, %t302
  %t304 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t306 = add i64 %t303, %t305
  %t307 = load i1, ptr %l138, !tbaa !21
  %t308 = select i1 %t307, ptr @.c8, ptr @.c9
  %t309 = select i1 %t307, i64 4, i64 5
  %t310 = add i64 %t306, %t309
  %t311 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t312 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t313 = add i64 %t310, %t312
  %t314 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t313)
  call void @olang_textcopy(ptr %t314, ptr %t285, i64 %t286)
  %t315 = getelementptr i8, ptr %t314, i64 %t286
  %t316 = call i64 @__olang_fmt_i64(ptr %t315, i64 %t287)
  %t317 = getelementptr i8, ptr %t315, i64 %t288
  call void @olang_textcopy(ptr %t317, ptr %t290, i64 %t291)
  %t318 = getelementptr i8, ptr %t317, i64 %t291
  call void @olang_textcopy(ptr %t318, ptr %t294, i64 %t295)
  %t319 = getelementptr i8, ptr %t318, i64 %t295
  call void @olang_textcopy(ptr %t319, ptr %t297, i64 %t298)
  %t320 = getelementptr i8, ptr %t319, i64 %t298
  call void @olang_textcopy(ptr %t320, ptr %t301, i64 %t302)
  %t321 = getelementptr i8, ptr %t320, i64 %t302
  call void @olang_textcopy(ptr %t321, ptr %t304, i64 %t305)
  %t322 = getelementptr i8, ptr %t321, i64 %t305
  call void @olang_textcopy(ptr %t322, ptr %t308, i64 %t309)
  %t323 = getelementptr i8, ptr %t322, i64 %t309
  call void @olang_textcopy(ptr %t323, ptr %t311, i64 %t312)
  %t324 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t314, 1
  %t327 = extractvalue { i64, ptr } %t325, 0
  %t328 = extractvalue { i64, ptr } %t325, 1
  %t329 = mul i64 %t327, 1
  %t330 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t329)
  call void @llvm.memcpy.p0.p0.i64(ptr %t330, ptr %t328, i64 %t329, i1 false)
  %t331 = insertvalue { i64, ptr } undef, i64 %t327, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t330, 1
  %t333 = load ptr, ptr %l125, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t333, { i64, ptr } %t332)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s11)
  br label %bb51
bb51:
  %t335 = load i64, ptr %l17, !tbaa !24
  %t337 = add i64 %t335, 1
  store i64 %t337, ptr %l17, !tbaa !24
  br label %bb43
bb52:
  store i64 0, ptr %l19, !tbaa !24
  %t339 = load ptr, ptr %l3, !tbaa !29
  %t341 = getelementptr %"compiler/scope:summary", ptr %t339, i32 0, i32 11
  %t343 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t341)
  store i64 %t343, ptr %l145
  br label %bb53
bb53:
  %t344 = load i64, ptr %l145, !tbaa !24
  store i64 %t344, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t345 = load i64, ptr %l20, !tbaa !24
  %t346 = load i64, ptr %l19, !tbaa !24
  %t349 = icmp sgt i64 %t345, %t346
  br i1 %t349, label %bb54, label %bb55
bb54:
  %t351 = load i64, ptr %l21, !tbaa !24
  %t353 = icmp sgt i64 %t351, 0
  br i1 %t353, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb59
bb56:
  %t355 = load i64, ptr %l20, !tbaa !24
  %t356 = load i64, ptr %l19, !tbaa !24
  %t359 = sub i64 %t355, %t356
  %t360 = load i64, ptr %l21, !tbaa !24
  %t363 = add i64 %t359, %t360
  %t365 = sub i64 %t363, 1
  %t366 = load i64, ptr %l21, !tbaa !24
  %t369 = sdiv i64 %t365, %t366
  store i64 %t369, ptr %l152, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb58
bb58:
  %t371 = load i64, ptr %l152, !tbaa !24
  store i64 %t371, ptr %l149, !tbaa !24
  br label %bb59
bb59:
  %t372 = load i64, ptr %l149, !tbaa !24
  store i64 %t372, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s15
  %t373 = load i64, ptr %l23, !tbaa !24
  %t374 = load i64, ptr %l22, !tbaa !24
  %t377 = icmp slt i64 %t373, %t374
  %t379 = xor i1 %t377, true
  br i1 %t379, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s15)
  br label %bb68
bb62:
  br label %bb63
bb63:
  %t381 = load i64, ptr %l19, !tbaa !24
  %t382 = load i64, ptr %l23, !tbaa !24
  %t383 = load i64, ptr %l21, !tbaa !24
  %t386 = mul i64 %t382, %t383
  %t389 = add i64 %t381, %t386
  store i64 %t389, ptr %l24, !tbaa !24
  store ptr %l2, ptr %l170, !tbaa !29
  %t391 = load i64, ptr %l24, !tbaa !24
  store i64 %t391, ptr %l171, !tbaa !24
  %t392 = load ptr, ptr %l3, !tbaa !29
  %t394 = getelementptr %"compiler/scope:summary", ptr %t392, i32 0, i32 11
  %t395 = load i64, ptr %l24, !tbaa !24
  %t398 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t394, i64 %t395)
  store { i64, [2 x i64] } %t398, ptr %l175
  br label %bb64
bb64:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s16
  store ptr %s16room, ptr %s16
  %t399 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t400 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s16, ptr %t399, i64 %t400)
  %t401 = load i64, ptr %l171, !tbaa !24
  %t402 = call ptr @__olang_sb_room(ptr %s16, i64 24)
  %t403 = call i64 @__olang_fmt_i64(ptr %t402, i64 %t401)
  call void @__olang_sb_add(ptr %s16, i64 %t403)
  %t404 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t405 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s16, ptr %t404, i64 %t405)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s16, ptr %l175, i64 0)
  br label %bb65
bb65:
  %t407 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t408 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s16, ptr %t407, i64 %t408)
  %t409 = load ptr, ptr %s16
  %t410 = getelementptr %olang.builder, ptr %s16, i32 0, i32 1
  %t411 = load i64, ptr %t410
  %t412 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t411)
  call void @olang_textcopy(ptr %t412, ptr %t409, i64 %t411)
  %t413 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t414 = insertvalue { i64, ptr } %t413, ptr %t412, 1
  store { i64, ptr } %t414, ptr %l177, !tbaa !27
  %t415 = getelementptr %olang.builder, ptr %s16, i32 0, i32 3
  %t416 = load ptr, ptr %t415
  %t417 = icmp ne ptr %t416, null
  br i1 %t417, label %sbgrew.418, label %sbdone.419
sbgrew.418:
  call void @__olang_sb_done(ptr %s16)
  br label %sbdone.419
sbdone.419:
  %t420 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t421 = extractvalue { i64, ptr } %t420, 0
  %t422 = extractvalue { i64, ptr } %t420, 1
  %t423 = mul i64 %t421, 1
  %t424 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t423)
  call void @llvm.memcpy.p0.p0.i64(ptr %t424, ptr %t422, i64 %t423, i1 false)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t424, 1
  %t427 = load ptr, ptr %l170, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %t427, { i64, ptr } %t426)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s15)
  br label %bb67
bb67:
  %t429 = load i64, ptr %l23, !tbaa !24
  %t431 = add i64 %t429, 1
  store i64 %t431, ptr %l23, !tbaa !24
  br label %bb60
bb68:
  %t434 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t434, ptr %l182
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s0)
  %t435 = load { i64, ptr }, ptr %l182, !tbaa !27
  store { i64, ptr } %t435, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l22 = alloca i32
  %l31 = alloca { i64, ptr }
  %l43 = alloca i64
  %l46 = alloca i64
  %l69 = alloca i64
  %l72 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 -1, ptr %l3, !tbaa !24
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i64, ptr %l4, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb8:
  call void @__olang_check_failed(ptr @olang_loc_85776ac018629bcc_231804c012e3a7c0)
  unreachable
bb9:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t17 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t13, ptr %t14)
  store i32 %t17, ptr %l22
  br label %bb10
bb10:
  %t18 = load i32, ptr %l22, !tbaa !23
  store i32 %t18, ptr %l5, !tbaa !23
  %t19 = load i32, ptr %l5, !tbaa !23
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t23 = icmp eq i32 %t19, %t20
  br i1 %t23, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l5, !tbaa !23
  %t35 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t31, i32 %t32)
  store { i64, ptr } %t35, ptr %l31
  br label %bb14
bb14:
  %t36 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t36, ptr %l6, !tbaa !27
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t43 = icmp sge i64 %t37, %t40
  br i1 %t43, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  store i64 0, ptr %l7, !tbaa !24
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Call", ptr %t46, i32 0, i32 1
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb18, label %bb19
bb18:
  %t59 = load i64, ptr %l9, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb23
bb20:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l9, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l46, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb22
bb22:
  %t79 = load i64, ptr %l46, !tbaa !24
  store i64 %t79, ptr %l43, !tbaa !24
  br label %bb23
bb23:
  %t80 = load i64, ptr %l43, !tbaa !24
  store i64 %t80, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb24
bb24:
  %t81 = load i64, ptr %l11, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb25, label %bb26
bb25:
  br label %bb36
bb26:
  br label %bb27
bb27:
  %t89 = load i64, ptr %l7, !tbaa !24
  %t90 = load i64, ptr %l11, !tbaa !24
  %t91 = load i64, ptr %l9, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l12, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/scope:Scoper", ptr %t99, i32 0, i32 0
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %l5, !tbaa !23
  %t106 = load i64, ptr %l12, !tbaa !24
  %t110 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t104, i32 %t105, i64 %t106)
  store i64 %t110, ptr %l69
  br label %bb28
bb28:
  %t111 = load i64, ptr %l69, !tbaa !24
  store i64 %t111, ptr %l13, !tbaa !24
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = icmp sge i64 %t112, 0
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = load i64, ptr %l13, !tbaa !24
  store i64 %t116, ptr %l72, !tbaa !24
  br label %bb31
bb30:
  %t118 = load i64, ptr %l12, !tbaa !24
  store i64 %t118, ptr %l72, !tbaa !24
  br label %bb31
bb31:
  %t120 = load i64, ptr %l72, !tbaa !24
  %t122 = load i64, ptr %l3, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i64, ptr %t125, i64 %t122
  %t127 = load i64, ptr %t126, !tbaa !34
  %t130 = icmp eq i64 %t120, %t127
  br i1 %t130, label %bb32, label %bb33
bb32:
  %t132 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t132, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t134 = load i64, ptr %l11, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l11, !tbaa !24
  br label %bb24
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRec(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l13 = alloca ptr
  %l17 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t7 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t2, ptr %a1)
  store ptr %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %s0, ptr %s0, ptr %t8, ptr %t9)
  store ptr %t10, ptr %l10
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l10, !tbaa !29
  store ptr %t11, ptr %l2, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t15 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s0, ptr %s0, ptr %t12)
  store ptr %t15, ptr %l13
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l13, !tbaa !29
  store ptr %t16, ptr %l3, !tbaa !29
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = icmp eq ptr %t17, null
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 49
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Call", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  %t34 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t25, i64 %t31)
  %t35 = extractvalue { i32, i64 } %t34, 1
  %t36 = extractvalue { i32, i64 } %t34, 0
  store i32 %t36, ptr %l24
  %t37 = icmp ne i32 %t36, 0
  br i1 %t37, label %bb7, label %ok.38, !prof !99
ok.38:
  store i64 %t35, ptr %l23
  br label %bb6
bb5:
  br label %bb10
bb6:
  %t39 = load i64, ptr %l23, !tbaa !24
  store i64 %t39, ptr %l17, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l17, !tbaa !24
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load i64, ptr %l17, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
bb10:
  %t41 = load ptr, ptr %l2, !tbaa !29
  store ptr %t41, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t42 = load ptr, ptr %l25, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load ptr, ptr %l25, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 18}
  %t48 = icmp eq i64 %t46, 2
  store i1 %t48, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t49 = load i1, ptr %l26, !tbaa !21
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr { i64, [5 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t52, i32 0, i32 2
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l4, !tbaa !29
  br label %bb19
bb14:
  %t56 = load ptr, ptr %l2, !tbaa !29
  store ptr %t56, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t57 = load ptr, ptr %l31, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t60 = load ptr, ptr %l31, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 18}
  %t63 = icmp eq i64 %t61, 3
  store i1 %t63, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t64 = load i1, ptr %l32, !tbaa !21
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t75 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecOf(ptr %v0, ptr %s0, ptr %t71, ptr %t72)
  store i64 %t75, ptr %l39
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t76 = load i64, ptr %l39, !tbaa !24
  store i64 %t76, ptr %rv
  br label %ret
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb25:
  call void @__olang_check_failed(ptr @olang_loc_2489ab739aea8b00_863e154a28bdb8e4)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca i1
  %l51 = alloca ptr
  %l53 = alloca ptr
  %l63 = alloca %"compiler/typed:Local"
  %l66 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i1
  %l78 = alloca i64
  %l81 = alloca i1
  %l92 = alloca i1
  %l101 = alloca %"compiler/typed:Local"
  %l105 = alloca ptr
  %l107 = alloca ptr
  %l109 = alloca i64
  %l112 = alloca ptr
  %l113 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l153 = alloca ptr
  %l154 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca i1
  %l180 = alloca ptr
  %l181 = alloca i1
  %l189 = alloca ptr
  %l190 = alloca i1
  %l204 = alloca ptr
  %l205 = alloca i1
  %l213 = alloca ptr
  %l214 = alloca i1
  %l222 = alloca ptr
  %l223 = alloca i1
  %l240 = alloca { i64, ptr }
  %l248 = alloca ptr
  %l249 = alloca i1
  %l262 = alloca { i64, ptr }
  %l270 = alloca ptr
  %l272 = alloca i32
  %l273 = alloca i1
  %l274 = alloca i1
  %l295 = alloca { i64, ptr }
  %l304 = alloca ptr
  %l305 = alloca i1
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
  store ptr %t5, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t6 = load ptr, ptr %l37, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l37, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 17}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l38, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l38, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb21
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 104
  %t29 = load i1, ptr %t28, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t34 = sext i32 %t32 to i64
  %t35 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndDef(ptr %v0, ptr %v1, ptr %t31, i64 %t34, ptr %t35)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l51, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  store ptr %t40, ptr %l53, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 26
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_eaa381098a4cba91_8661e0f292bb03a5)
  unreachable
bb14:
  br label %bb15
bb15:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 26
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 7
  %t56 = load i32, ptr %l2, !tbaa !23
  %t58 = sext i32 %t56 to i64
  %t61 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t55, i64 %t58)
  store %"compiler/typed:Local" %t61, ptr %l63
  br label %bb16
bb16:
  %t62 = getelementptr %"compiler/typed:Local", ptr %l63, i32 0, i32 4
  %t63 = load i32, ptr %t62, !range !{i32 0, i32 7}
  %t65 = trunc i64 6 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb17, label %bb18
bb17:
  %t68 = load i64, ptr @G_2ecompiler_2fscope_2eBndStore, !tbaa !24
  store i64 %t68, ptr %l66, !tbaa !24
  br label %bb19
bb18:
  %t70 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  store i64 %t70, ptr %l66, !tbaa !24
  br label %bb19
bb19:
  %t72 = load ptr, ptr %l51, !tbaa !29
  %t73 = load ptr, ptr %l53, !tbaa !29
  %t74 = load i64, ptr %l66, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t72, ptr %t73, i64 %t74)
  br label %bb20
bb20:
  br label %bb180
bb21:
  %t75 = load ptr, ptr %l1, !tbaa !29
  store ptr %t75, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t76 = load ptr, ptr %l69, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t79 = load ptr, ptr %l69, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 17}
  %t82 = icmp eq i64 %t80, 1
  store i1 %t82, ptr %l70, !tbaa !21
  br label %bb23
bb23:
  %t83 = load i1, ptr %l70, !tbaa !21
  br i1 %t83, label %bb24, label %bb25
bb24:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t86, i32 0, i32 1
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l4, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr { i64, [3 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t92, i32 0, i32 2
  %t94 = load ptr, ptr %t93
  store ptr %t94, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb47
bb26:
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t98 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t96)
  store i64 %t98, ptr %l78
  br label %bb27
bb27:
  %t99 = load i64, ptr %l78, !tbaa !24
  store i64 %t99, ptr %l6, !tbaa !24
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = icmp sge i64 %t100, 0
  br i1 %t102, label %bb28, label %bb29
bb28:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %t104, i32 0, i32 104
  %t107 = load i1, ptr %t106, !tbaa !21
  store i1 %t107, ptr %l81, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb30
bb30:
  %t109 = load i1, ptr %l81, !tbaa !21
  br i1 %t109, label %bb31, label %bb32
bb31:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l6, !tbaa !24
  %t112 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndDef(ptr %v0, ptr %v1, ptr %t110, i64 %t111, ptr %t112)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t116, ptr %t117)
  br label %bb35
bb35:
  %t121 = load i64, ptr %l6, !tbaa !24
  %t123 = icmp sge i64 %t121, 0
  br i1 %t123, label %bb36, label %bb37
bb36:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 26
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = icmp eq ptr %t128, null
  br i1 %t130, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb42
bb38:
  call void @__olang_check_failed(ptr @olang_loc_dcf380f9f9bca18a_c8831d1bb96b26fe)
  unreachable
bb39:
  br label %bb40
bb40:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 26
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Body", ptr %t135, i32 0, i32 7
  %t139 = load i64, ptr %l6, !tbaa !24
  %t142 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t138, i64 %t139)
  store %"compiler/typed:Local" %t142, ptr %l101
  br label %bb41
bb41:
  %t143 = getelementptr %"compiler/typed:Local", ptr %l101, i32 0, i32 4
  %t144 = load i32, ptr %t143, !range !{i32 0, i32 7}
  %t146 = trunc i64 6 to i32
  %t147 = icmp eq i32 %t144, %t146
  %t149 = xor i1 %t147, true
  store i1 %t149, ptr %l92, !tbaa !21
  br label %bb42
bb42:
  %t151 = load i1, ptr %l92, !tbaa !21
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l105, !tbaa !29
  %t153 = load ptr, ptr %l5, !tbaa !29
  store ptr %t153, ptr %l107, !tbaa !29
  br i1 %t151, label %bb43, label %bb44
bb43:
  %t157 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  store i64 %t157, ptr %l109, !tbaa !24
  br label %bb45
bb44:
  %t159 = load i64, ptr @G_2ecompiler_2fscope_2eBndStore, !tbaa !24
  store i64 %t159, ptr %l109, !tbaa !24
  br label %bb45
bb45:
  %t161 = load ptr, ptr %l105, !tbaa !29
  %t162 = load ptr, ptr %l107, !tbaa !29
  %t163 = load i64, ptr %l109, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t161, ptr %t162, i64 %t163)
  br label %bb46
bb46:
  br label %bb180
bb47:
  %t164 = load ptr, ptr %l1, !tbaa !29
  store ptr %t164, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t165 = load ptr, ptr %l112, !tbaa !29
  %t166 = icmp ne ptr %t165, null
  br i1 %t166, label %bb48, label %bb49
bb48:
  %t168 = load ptr, ptr %l112, !tbaa !29
  %t169 = load i64, ptr %t168, !range !{i64 0, i64 17}
  %t171 = icmp eq i64 %t169, 2
  store i1 %t171, ptr %l113, !tbaa !21
  br label %bb49
bb49:
  %t172 = load i1, ptr %l113, !tbaa !21
  br i1 %t172, label %bb50, label %bb51
bb50:
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t175 = getelementptr { i64, [3 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", ptr }, ptr %t175, i32 0, i32 1
  %t177 = load ptr, ptr %t176
  store ptr %t177, ptr %l8, !tbaa !29
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l8, !tbaa !29
  %t182 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t179, ptr %t180, i64 %t182)
  br label %bb53
bb53:
  br label %bb180
bb54:
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t187 = load ptr, ptr %l122, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb55, label %bb56
bb55:
  %t190 = load ptr, ptr %l122, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 17}
  %t193 = icmp eq i64 %t191, 3
  store i1 %t193, ptr %l123, !tbaa !21
  br label %bb56
bb56:
  %t194 = load i1, ptr %l123, !tbaa !21
  br i1 %t194, label %bb57, label %bb58
bb57:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [3 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", ptr }, ptr %t197, i32 0, i32 1
  %t199 = load ptr, ptr %t198
  store ptr %t199, ptr %l9, !tbaa !29
  br label %bb59
bb58:
  br label %bb63
bb59:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l9, !tbaa !29
  %t204 = getelementptr %"compiler/typed:If", ptr %t202, i32 0, i32 0
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t201, ptr %t205, i64 %t207)
  br label %bb60
bb60:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load ptr, ptr %l9, !tbaa !29
  %t214 = getelementptr %"compiler/typed:If", ptr %t212, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t211, ptr %t215)
  br label %bb61
bb61:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l9, !tbaa !29
  %t222 = getelementptr %"compiler/typed:If", ptr %t220, i32 0, i32 2
  %t223 = load ptr, ptr %t222, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t219, ptr %t223)
  br label %bb62
bb62:
  br label %bb180
bb63:
  %t226 = load ptr, ptr %l1, !tbaa !29
  store ptr %t226, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t227 = load ptr, ptr %l140, !tbaa !29
  %t228 = icmp ne ptr %t227, null
  br i1 %t228, label %bb64, label %bb65
bb64:
  %t230 = load ptr, ptr %l140, !tbaa !29
  %t231 = load i64, ptr %t230, !range !{i64 0, i64 17}
  %t233 = icmp eq i64 %t231, 4
  store i1 %t233, ptr %l141, !tbaa !21
  br label %bb65
bb65:
  %t234 = load i1, ptr %l141, !tbaa !21
  br i1 %t234, label %bb66, label %bb67
bb66:
  %t235 = load ptr, ptr %l1, !tbaa !29
  %t237 = getelementptr { i64, [3 x i64] }, ptr %t235, i32 0, i32 1
  %t238 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t237, i32 0, i32 1
  %t239 = load ptr, ptr %t238
  store ptr %t239, ptr %l10, !tbaa !29
  %t241 = load ptr, ptr %l1, !tbaa !29
  %t243 = getelementptr { i64, [3 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t243, i32 0, i32 2
  %t245 = load ptr, ptr %t244
  store ptr %t245, ptr %l11, !tbaa !29
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t247, ptr %t248)
  br label %bb69
bb69:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t252, ptr %t253)
  br label %bb70
bb70:
  br label %bb180
bb71:
  %t256 = load ptr, ptr %l1, !tbaa !29
  store ptr %t256, ptr %l153, !tbaa !29
  store i1 false, ptr %l154, !tbaa !21
  %t257 = load ptr, ptr %l153, !tbaa !29
  %t258 = icmp ne ptr %t257, null
  br i1 %t258, label %bb72, label %bb73
bb72:
  %t260 = load ptr, ptr %l153, !tbaa !29
  %t261 = load i64, ptr %t260, !range !{i64 0, i64 17}
  %t263 = icmp eq i64 %t261, 6
  store i1 %t263, ptr %l154, !tbaa !21
  br label %bb73
bb73:
  %t264 = load i1, ptr %l154, !tbaa !21
  br i1 %t264, label %bb74, label %bb75
bb74:
  %t265 = load ptr, ptr %l1, !tbaa !29
  %t267 = getelementptr { i64, [3 x i64] }, ptr %t265, i32 0, i32 1
  %t268 = getelementptr { %"compiler/source:Span", ptr }, ptr %t267, i32 0, i32 1
  %t269 = load ptr, ptr %t268
  store ptr %t269, ptr %l12, !tbaa !29
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndReturn(ptr %v0, ptr %v1, ptr %t271, ptr %t272)
  br label %bb77
bb77:
  br label %bb180
bb78:
  %t275 = load ptr, ptr %l1, !tbaa !29
  store ptr %t275, ptr %l161, !tbaa !29
  store i1 false, ptr %l162, !tbaa !21
  %t276 = load ptr, ptr %l161, !tbaa !29
  %t277 = icmp ne ptr %t276, null
  br i1 %t277, label %bb79, label %bb80
bb79:
  %t279 = load ptr, ptr %l161, !tbaa !29
  %t280 = load i64, ptr %t279, !range !{i64 0, i64 17}
  %t282 = icmp eq i64 %t280, 16
  store i1 %t282, ptr %l162, !tbaa !21
  br label %bb80
bb80:
  %t283 = load i1, ptr %l162, !tbaa !21
  br i1 %t283, label %bb81, label %bb82
bb81:
  %t284 = load ptr, ptr %l1, !tbaa !29
  %t286 = getelementptr { i64, [3 x i64] }, ptr %t284, i32 0, i32 1
  %t287 = getelementptr { %"compiler/source:Span", ptr }, ptr %t286, i32 0, i32 1
  %t288 = load ptr, ptr %t287
  store ptr %t288, ptr %l13, !tbaa !29
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load ptr, ptr %l13, !tbaa !29
  %t292 = load i64, ptr @G_2ecompiler_2fscope_2eBndYield, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t290, ptr %t291, i64 %t292)
  br label %bb84
bb84:
  br label %bb180
bb85:
  %t296 = load ptr, ptr %l1, !tbaa !29
  store ptr %t296, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t297 = load ptr, ptr %l170, !tbaa !29
  %t298 = icmp ne ptr %t297, null
  br i1 %t298, label %bb86, label %bb87
bb86:
  %t300 = load ptr, ptr %l170, !tbaa !29
  %t301 = load i64, ptr %t300, !range !{i64 0, i64 17}
  %t303 = icmp eq i64 %t301, 8
  store i1 %t303, ptr %l171, !tbaa !21
  br label %bb87
bb87:
  %t304 = load i1, ptr %l171, !tbaa !21
  br i1 %t304, label %bb88, label %bb89
bb88:
  %t305 = load ptr, ptr %l1, !tbaa !29
  %t307 = getelementptr { i64, [3 x i64] }, ptr %t305, i32 0, i32 1
  %t308 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t307, i32 0, i32 1
  %t309 = load ptr, ptr %t308
  store ptr %t309, ptr %l14, !tbaa !29
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load ptr, ptr %l14, !tbaa !29
  %t314 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t311, ptr %t312, i64 %t314)
  br label %bb91
bb91:
  br label %bb180
bb92:
  %t318 = load ptr, ptr %l1, !tbaa !29
  store ptr %t318, ptr %l180, !tbaa !29
  store i1 false, ptr %l181, !tbaa !21
  %t319 = load ptr, ptr %l180, !tbaa !29
  %t320 = icmp ne ptr %t319, null
  br i1 %t320, label %bb93, label %bb94
bb93:
  %t322 = load ptr, ptr %l180, !tbaa !29
  %t323 = load i64, ptr %t322, !range !{i64 0, i64 17}
  %t325 = icmp eq i64 %t323, 9
  store i1 %t325, ptr %l181, !tbaa !21
  br label %bb94
bb94:
  %t326 = load i1, ptr %l181, !tbaa !21
  br i1 %t326, label %bb95, label %bb96
bb95:
  %t327 = load ptr, ptr %l1, !tbaa !29
  %t329 = getelementptr { i64, [3 x i64] }, ptr %t327, i32 0, i32 1
  %t330 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t329, i32 0, i32 2
  %t331 = load ptr, ptr %t330
  store ptr %t331, ptr %l15, !tbaa !29
  br label %bb97
bb96:
  br label %bb99
bb97:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load ptr, ptr %l15, !tbaa !29
  %t335 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t333, ptr %t334, i64 %t335)
  br label %bb98
bb98:
  br label %bb180
bb99:
  %t339 = load ptr, ptr %l1, !tbaa !29
  store ptr %t339, ptr %l189, !tbaa !29
  store i1 false, ptr %l190, !tbaa !21
  %t340 = load ptr, ptr %l189, !tbaa !29
  %t341 = icmp ne ptr %t340, null
  br i1 %t341, label %bb100, label %bb101
bb100:
  %t343 = load ptr, ptr %l189, !tbaa !29
  %t344 = load i64, ptr %t343, !range !{i64 0, i64 17}
  %t346 = icmp eq i64 %t344, 10
  store i1 %t346, ptr %l190, !tbaa !21
  br label %bb101
bb101:
  %t347 = load i1, ptr %l190, !tbaa !21
  br i1 %t347, label %bb102, label %bb103
bb102:
  %t348 = load ptr, ptr %l1, !tbaa !29
  %t350 = getelementptr { i64, [3 x i64] }, ptr %t348, i32 0, i32 1
  %t351 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t350, i32 0, i32 1
  %t352 = load ptr, ptr %t351
  store ptr %t352, ptr %l16, !tbaa !29
  %t354 = load ptr, ptr %l1, !tbaa !29
  %t356 = getelementptr { i64, [3 x i64] }, ptr %t354, i32 0, i32 1
  %t357 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t356, i32 0, i32 2
  %t358 = load ptr, ptr %t357
  store ptr %t358, ptr %l17, !tbaa !29
  br label %bb104
bb103:
  br label %bb107
bb104:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load ptr, ptr %l16, !tbaa !29
  %t363 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t360, ptr %t361, i64 %t363)
  br label %bb105
bb105:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load ptr, ptr %l17, !tbaa !29
  %t369 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t367, ptr %t368, i64 %t369)
  br label %bb106
bb106:
  br label %bb180
bb107:
  %t373 = load ptr, ptr %l1, !tbaa !29
  store ptr %t373, ptr %l204, !tbaa !29
  store i1 false, ptr %l205, !tbaa !21
  %t374 = load ptr, ptr %l204, !tbaa !29
  %t375 = icmp ne ptr %t374, null
  br i1 %t375, label %bb108, label %bb109
bb108:
  %t377 = load ptr, ptr %l204, !tbaa !29
  %t378 = load i64, ptr %t377, !range !{i64 0, i64 17}
  %t380 = icmp eq i64 %t378, 11
  store i1 %t380, ptr %l205, !tbaa !21
  br label %bb109
bb109:
  %t381 = load i1, ptr %l205, !tbaa !21
  br i1 %t381, label %bb110, label %bb111
bb110:
  %t382 = load ptr, ptr %l1, !tbaa !29
  %t384 = getelementptr { i64, [3 x i64] }, ptr %t382, i32 0, i32 1
  %t385 = getelementptr { %"compiler/source:Span", ptr }, ptr %t384, i32 0, i32 1
  %t386 = load ptr, ptr %t385
  store ptr %t386, ptr %l18, !tbaa !29
  br label %bb112
bb111:
  br label %bb114
bb112:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t388, ptr %t389)
  br label %bb113
bb113:
  br label %bb180
bb114:
  %t393 = load ptr, ptr %l1, !tbaa !29
  store ptr %t393, ptr %l213, !tbaa !29
  store i1 false, ptr %l214, !tbaa !21
  %t394 = load ptr, ptr %l213, !tbaa !29
  %t395 = icmp ne ptr %t394, null
  br i1 %t395, label %bb115, label %bb116
bb115:
  %t397 = load ptr, ptr %l213, !tbaa !29
  %t398 = load i64, ptr %t397, !range !{i64 0, i64 17}
  %t400 = icmp eq i64 %t398, 12
  store i1 %t400, ptr %l214, !tbaa !21
  br label %bb116
bb116:
  %t401 = load i1, ptr %l214, !tbaa !21
  br i1 %t401, label %bb117, label %bb118
bb117:
  %t402 = load ptr, ptr %l1, !tbaa !29
  %t404 = getelementptr { i64, [3 x i64] }, ptr %t402, i32 0, i32 1
  %t405 = getelementptr { %"compiler/source:Span", ptr }, ptr %t404, i32 0, i32 1
  %t406 = load ptr, ptr %t405
  store ptr %t406, ptr %l19, !tbaa !29
  br label %bb119
bb118:
  br label %bb121
bb119:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t409 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t408, ptr %t409)
  br label %bb120
bb120:
  br label %bb180
bb121:
  %t413 = load ptr, ptr %l1, !tbaa !29
  store ptr %t413, ptr %l222, !tbaa !29
  store i1 false, ptr %l223, !tbaa !21
  %t414 = load ptr, ptr %l222, !tbaa !29
  %t415 = icmp ne ptr %t414, null
  br i1 %t415, label %bb122, label %bb123
bb122:
  %t417 = load ptr, ptr %l222, !tbaa !29
  %t418 = load i64, ptr %t417, !range !{i64 0, i64 17}
  %t420 = icmp eq i64 %t418, 13
  store i1 %t420, ptr %l223, !tbaa !21
  br label %bb123
bb123:
  %t421 = load i1, ptr %l223, !tbaa !21
  br i1 %t421, label %bb124, label %bb125
bb124:
  %t422 = load ptr, ptr %l1, !tbaa !29
  %t424 = getelementptr { i64, [3 x i64] }, ptr %t422, i32 0, i32 1
  %t425 = getelementptr { %"compiler/source:Span", ptr }, ptr %t424, i32 0, i32 1
  %t426 = load ptr, ptr %t425
  store ptr %t426, ptr %l20, !tbaa !29
  br label %bb126
bb125:
  br label %bb135
bb126:
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t429 = load ptr, ptr %l20, !tbaa !29
  %t431 = getelementptr %"compiler/typed:Join", ptr %t429, i32 0, i32 0
  %t432 = load ptr, ptr %t431, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t428, ptr %t432)
  br label %bb127
bb127:
  %t436 = load ptr, ptr %l20, !tbaa !29
  %t438 = getelementptr %"compiler/typed:Join", ptr %t436, i32 0, i32 2
  %t439 = load { i64, ptr }, ptr %t438, !tbaa !27
  store { i64, ptr } %t439, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t441 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t441, 0
  store i64 %t443, ptr %l23, !tbaa !24
  br label %bb128
bb128:
  %t445 = load i64, ptr %l22, !tbaa !24
  %t446 = load i64, ptr %l23, !tbaa !24
  %t449 = icmp slt i64 %t445, %t446
  %t451 = xor i1 %t449, true
  br i1 %t451, label %bb129, label %bb130
bb129:
  br label %bb134
bb130:
  br label %bb131
bb131:
  %t453 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t453, ptr %l240, !tbaa !27
  %t454 = load i64, ptr %l22, !tbaa !24
  %t456 = getelementptr { i64, ptr }, ptr %l240, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !27
  %t458 = getelementptr ptr, ptr %t457, i64 %t454
  %t459 = load ptr, ptr %t458, !tbaa !39
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t464 = getelementptr %"compiler/typed:Clause", ptr %t459, i32 0, i32 3
  %t465 = load ptr, ptr %t464, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t461, ptr %t465)
  br label %bb132
bb132:
  br label %bb133
bb133:
  %t468 = load i64, ptr %l22, !tbaa !24
  %t470 = add i64 %t468, 1
  store i64 %t470, ptr %l22, !tbaa !24
  br label %bb128
bb134:
  br label %bb180
bb135:
  %t472 = load ptr, ptr %l1, !tbaa !29
  store ptr %t472, ptr %l248, !tbaa !29
  store i1 false, ptr %l249, !tbaa !21
  %t473 = load ptr, ptr %l248, !tbaa !29
  %t474 = icmp ne ptr %t473, null
  br i1 %t474, label %bb136, label %bb137
bb136:
  %t476 = load ptr, ptr %l248, !tbaa !29
  %t477 = load i64, ptr %t476, !range !{i64 0, i64 17}
  %t479 = icmp eq i64 %t477, 14
  store i1 %t479, ptr %l249, !tbaa !21
  br label %bb137
bb137:
  %t480 = load i1, ptr %l249, !tbaa !21
  br i1 %t480, label %bb138, label %bb139
bb138:
  %t481 = load ptr, ptr %l1, !tbaa !29
  %t483 = getelementptr { i64, [3 x i64] }, ptr %t481, i32 0, i32 1
  %t484 = getelementptr { %"compiler/source:Span", ptr }, ptr %t483, i32 0, i32 1
  %t485 = load ptr, ptr %t484
  store ptr %t485, ptr %l25, !tbaa !29
  br label %bb140
bb139:
  br label %bb168
bb140:
  %t487 = load ptr, ptr %l25, !tbaa !29
  %t489 = getelementptr %"compiler/typed:Spawn", ptr %t487, i32 0, i32 0
  %t490 = load { i64, ptr }, ptr %t489, !tbaa !27
  store { i64, ptr } %t490, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t492 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t494 = extractvalue { i64, ptr } %t492, 0
  store i64 %t494, ptr %l28, !tbaa !24
  br label %bb141
bb141:
  %t496 = load i64, ptr %l27, !tbaa !24
  %t497 = load i64, ptr %l28, !tbaa !24
  %t500 = icmp slt i64 %t496, %t497
  %t502 = xor i1 %t500, true
  br i1 %t502, label %bb142, label %bb143
bb142:
  br label %bb159
bb143:
  br label %bb144
bb144:
  %t504 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t504, ptr %l262, !tbaa !27
  %t505 = load i64, ptr %l27, !tbaa !24
  %t507 = getelementptr { i64, ptr }, ptr %l262, i32 0, i32 1
  %t508 = load ptr, ptr %t507, !tbaa !27
  %t509 = getelementptr ptr, ptr %t508, i64 %t505
  %t510 = load ptr, ptr %t509, !tbaa !39
  store ptr %t510, ptr %l29, !tbaa !29
  %t512 = load ptr, ptr %l29, !tbaa !29
  %t514 = icmp eq ptr %t512, null
  br i1 %t514, label %bb145, label %bb146
bb145:
  br label %bb158
bb146:
  br label %bb147
bb147:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load ptr, ptr %l29, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t516, ptr %t517)
  br label %bb148
bb148:
  %t521 = load ptr, ptr %l0, !tbaa !29
  store ptr %t521, ptr %l270, !tbaa !29
  %t522 = load ptr, ptr %l29, !tbaa !29
  %t524 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t522)
  store i32 %t524, ptr %l272
  br label %bb149
bb149:
  %t525 = load ptr, ptr %l270, !tbaa !29
  %t526 = load i32, ptr %l272, !tbaa !23
  %t527 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t525, i32 %t526)
  store i1 %t527, ptr %l273
  br label %bb150
bb150:
  %t528 = load i1, ptr %l273, !tbaa !21
  br i1 %t528, label %bb151, label %bb152
bb151:
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t531 = getelementptr %"compiler/scope:Scoper", ptr %t529, i32 0, i32 104
  %t532 = load i1, ptr %t531, !tbaa !21
  %t534 = xor i1 %t532, true
  store i1 %t534, ptr %l274, !tbaa !21
  br label %bb153
bb152:
  store i1 false, ptr %l274, !tbaa !21
  br label %bb153
bb153:
  %t536 = load i1, ptr %l274, !tbaa !21
  br i1 %t536, label %bb154, label %bb155
bb154:
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t538 = load ptr, ptr %l25, !tbaa !29
  %t540 = getelementptr %"compiler/typed:Spawn", ptr %t538, i32 0, i32 1
  %t541 = load ptr, ptr %t540, !tbaa !29
  %t542 = load i64, ptr @G_2ecompiler_2fscope_2eBndTask, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundary(ptr %v0, ptr %v1, ptr %t537, ptr %t541, i64 %t542)
  br label %bb156
bb155:
  br label %bb157
bb156:
  br label %bb157
bb157:
  br label %bb158
bb158:
  %t546 = load i64, ptr %l27, !tbaa !24
  %t548 = add i64 %t546, 1
  store i64 %t548, ptr %l27, !tbaa !24
  br label %bb141
bb159:
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t551 = load ptr, ptr %l25, !tbaa !29
  %t553 = getelementptr %"compiler/typed:Spawn", ptr %t551, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndTask(ptr %v0, ptr %v1, ptr %t550, ptr %t554)
  br label %bb160
bb160:
  %t557 = load ptr, ptr %l25, !tbaa !29
  %t559 = getelementptr %"compiler/typed:Spawn", ptr %t557, i32 0, i32 2
  %t560 = load { i64, ptr }, ptr %t559, !tbaa !27
  store { i64, ptr } %t560, ptr %l30, !tbaa !27
  store i64 0, ptr %l31, !tbaa !24
  %t562 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t564 = extractvalue { i64, ptr } %t562, 0
  store i64 %t564, ptr %l32, !tbaa !24
  br label %bb161
bb161:
  %t566 = load i64, ptr %l31, !tbaa !24
  %t567 = load i64, ptr %l32, !tbaa !24
  %t570 = icmp slt i64 %t566, %t567
  %t572 = xor i1 %t570, true
  br i1 %t572, label %bb162, label %bb163
bb162:
  br label %bb167
bb163:
  br label %bb164
bb164:
  %t574 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t574, ptr %l295, !tbaa !27
  %t575 = load i64, ptr %l31, !tbaa !24
  %t577 = getelementptr { i64, ptr }, ptr %l295, i32 0, i32 1
  %t578 = load ptr, ptr %t577, !tbaa !27
  %t579 = getelementptr ptr, ptr %t578, i64 %t575
  %t580 = load ptr, ptr %t579, !tbaa !39
  %t582 = load ptr, ptr %l0, !tbaa !29
  %t585 = getelementptr %"compiler/typed:TaskClause", ptr %t580, i32 0, i32 3
  %t586 = load ptr, ptr %t585, !tbaa !29
  %t587 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t582, ptr %t586, i64 %t587)
  br label %bb165
bb165:
  br label %bb166
bb166:
  %t591 = load i64, ptr %l31, !tbaa !24
  %t593 = add i64 %t591, 1
  store i64 %t593, ptr %l31, !tbaa !24
  br label %bb161
bb167:
  br label %bb180
bb168:
  %t595 = load ptr, ptr %l1, !tbaa !29
  store ptr %t595, ptr %l304, !tbaa !29
  store i1 false, ptr %l305, !tbaa !21
  %t596 = load ptr, ptr %l304, !tbaa !29
  %t597 = icmp ne ptr %t596, null
  br i1 %t597, label %bb169, label %bb170
bb169:
  %t599 = load ptr, ptr %l304, !tbaa !29
  %t600 = load i64, ptr %t599, !range !{i64 0, i64 17}
  %t602 = icmp eq i64 %t600, 15
  store i1 %t602, ptr %l305, !tbaa !21
  br label %bb170
bb170:
  %t603 = load i1, ptr %l305, !tbaa !21
  br i1 %t603, label %bb171, label %bb172
bb171:
  %t604 = load ptr, ptr %l1, !tbaa !29
  %t606 = getelementptr { i64, [3 x i64] }, ptr %t604, i32 0, i32 1
  %t607 = getelementptr { %"compiler/source:Span", ptr }, ptr %t606, i32 0, i32 1
  %t608 = load ptr, ptr %t607
  store ptr %t608, ptr %l34, !tbaa !29
  br label %bb173
bb172:
  br label %bb175
bb173:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t611 = load ptr, ptr %l34, !tbaa !29
  %t613 = load i64, ptr @G_2ecompiler_2fscope_2eBndStore, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t610, ptr %t611, i64 %t613)
  br label %bb174
bb174:
  br label %bb180
bb175:
  br i1 true, label %bb176, label %bb177
bb176:
  br label %bb178
bb177:
  br label %bb179
bb178:
  br label %bb180
bb179:
  call void @__olang_check_failed(ptr @olang_loc_9ceb5e4b647bcfb2_89396b6881b55af6)
  unreachable
bb180:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca i1
  %l38 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l50 = alloca ptr
  %l53 = alloca i1
  %l56 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca i64
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l14
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l14, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %v2, ptr %v2, ptr %t7)
  store ptr %t8, ptr %l15
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l15, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t11 = load ptr, ptr %l16, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l16, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 14
  store i1 %t17, ptr %l17, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l17, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 0
  %t23 = load %"compiler/source:Span", ptr %t22
  store %"compiler/source:Span" %t23, ptr %l3
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 1
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l4, !tbaa !23
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  %t40 = getelementptr %"compiler/typed:Try", ptr %t35, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = icmp eq ptr %t41, null
  %t45 = xor i1 %t43, true
  store i1 %t45, ptr %l20, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t47 = load i1, ptr %l20, !tbaa !21
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 0
  %t52 = load %"compiler/source:Span", ptr %t51
  store %"compiler/source:Span" %t52, ptr %l6
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 1
  %t58 = load i32, ptr %t57
  store i32 %t58, ptr %l7, !tbaa !23
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l38, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Try", ptr %t64, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  store ptr %t71, ptr %l9, !tbaa !29
  %t73 = load ptr, ptr %l9, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  br i1 %t75, label %bb10, label %bb11
bb9:
  br label %bb15
bb10:
  call void @__olang_check_failed(ptr @olang_loc_464d30f55bb3bd9f_ade33f29fdfc09bb)
  unreachable
bb11:
  br label %bb12
bb12:
  %t77 = load ptr, ptr %l9, !tbaa !29
  %t79 = load ptr, ptr %l38, !tbaa !29
  %t81 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v2, ptr %v2, ptr %t79, ptr %t77)
  store ptr %t81, ptr %l46
  br label %bb13
bb13:
  %t82 = load ptr, ptr %l46, !tbaa !29
  %t83 = call ptr @compiler_2fscope_2eunPassed(ptr %v2, ptr %v2, ptr %t82)
  store ptr %t83, ptr %l47
  br label %bb14
bb14:
  %t84 = load ptr, ptr %l47, !tbaa !29
  store ptr %t84, ptr %l2, !tbaa !29
  br label %bb15
bb15:
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t88 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v2, ptr %v2, ptr %t85)
  store ptr %t88, ptr %l50
  br label %bb16
bb16:
  %t89 = load ptr, ptr %l50, !tbaa !29
  store ptr %t89, ptr %l10, !tbaa !29
  %t90 = load ptr, ptr %l10, !tbaa !29
  %t92 = icmp eq ptr %t90, null
  br i1 %t92, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb21
bb18:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/scope:Scoper", ptr %t94, i32 0, i32 0
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  store ptr %t99, ptr %l56, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l10, !tbaa !29
  %t104 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v2, ptr %t100, ptr %t101)
  store i32 %t104, ptr %l59
  br label %bb19
bb19:
  %t105 = load ptr, ptr %l56, !tbaa !29
  %t106 = load i32, ptr %l59, !tbaa !23
  %t107 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t105, i32 %t106, i64 0)
  store i64 %t107, ptr %l60
  br label %bb20
bb20:
  %t108 = load i64, ptr %l60, !tbaa !24
  %t109 = icmp slt i64 %t108, 0
  store i1 %t109, ptr %l53, !tbaa !21
  br label %bb21
bb21:
  %t111 = load i1, ptr %l53, !tbaa !21
  br i1 %t111, label %bb22, label %bb23
bb22:
  store ptr null, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t113 = load ptr, ptr %l10, !tbaa !29
  store ptr %t113, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l18 = alloca %"compiler/source:Span"
  %l20 = alloca i32
  %rv = alloca ptr
  %t34 = alloca { i64, [5 x i64] }, align 8
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %a0, ptr %t2)
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
  br label %bb8
bb6:
  %t29 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t29, ptr %l18
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t32 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t30)
  store i32 %t32, ptr %l20
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l4, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 0
  store i64 2, ptr %t35
  %t36 = load %"compiler/source:Span", ptr %l18
  %t37 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t36, 0
  %t38 = load i32, ptr %l20, !tbaa !23
  %t39 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t37, i32 %t38, 1
  %t41 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t39, ptr %t33, 2
  %t42 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t41, i32 -1, 3
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t42, ptr %t43
  %t44 = load { i64, [5 x i64] }, ptr %t34
  %t46 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t44, ptr %t46
  store ptr %t46, ptr %l9, !tbaa !29
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l9, !tbaa !29
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_cc53225111d23812_6db663f7efd109e)
  unreachable
bb13:
  %t50 = load ptr, ptr %l9, !tbaa !29
  store ptr %t50, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsThrough(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l11 = alloca i1
  %l14 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca i1
  %l25 = alloca ptr
  %l28 = alloca i1
  %l29 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca i64
  %l41 = alloca i1
  %l42 = alloca i64
  %l46 = alloca ptr
  %l49 = alloca i64
  %l51 = alloca i1
  %l55 = alloca ptr
  %l59 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca { i64, [2 x i64] }
  %l65 = alloca %"compiler/source:Span"
  %l69 = alloca ptr
  %l73 = alloca i64
  %l77 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l82 = alloca ptr
  %l83 = alloca { i64, [2 x i64] }
  %l84 = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = call i1 @compiler_2fscope_2eisDerived({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load i1, ptr %l8, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sge i64 %t5, 0
  br i1 %t7, label %bb5, label %bb6
bb5:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  store i1 %t11, ptr %l11, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t13 = load i1, ptr %l11, !tbaa !21
  br i1 %t13, label %bb8, label %bb9
bb8:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 6
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  store ptr %t20, ptr %l18
  br label %bb10
bb9:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb15
bb10:
  %t21 = load ptr, ptr %l18, !tbaa !29
  %t23 = getelementptr %"compiler/scope:summary", ptr %t21, i32 0, i32 19
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb14
bb12:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 6
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store ptr %t32, ptr %l25
  br label %bb13
bb13:
  %t33 = load ptr, ptr %l25, !tbaa !29
  %t35 = getelementptr %"compiler/scope:summary", ptr %t33, i32 0, i32 20
  %t36 = load i1, ptr %t35, !tbaa !21
  store i1 %t36, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t38 = load i1, ptr %l21, !tbaa !21
  store i1 %t38, ptr %l14, !tbaa !21
  br label %bb15
bb15:
  %t39 = load i1, ptr %l14, !tbaa !21
  br i1 %t39, label %bb16, label %bb17
bb16:
  %t40 = load i64, ptr %l4, !tbaa !24
  store i64 %t40, ptr %l29, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 6
  %t44 = load i64, ptr %l3, !tbaa !24
  %t47 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t43, i64 %t44)
  store ptr %t47, ptr %l33
  br label %bb18
bb17:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb20
bb18:
  %t48 = load ptr, ptr %l33, !tbaa !29
  %t50 = getelementptr %"compiler/scope:summary", ptr %t48, i32 0, i32 4
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t50)
  store i64 %t52, ptr %l36
  br label %bb19
bb19:
  %t53 = load i64, ptr %l29, !tbaa !24
  %t54 = load i64, ptr %l36, !tbaa !24
  %t55 = icmp slt i64 %t53, %t54
  store i1 %t55, ptr %l28, !tbaa !21
  br label %bb20
bb20:
  %t57 = load i1, ptr %l28, !tbaa !21
  store i1 %t57, ptr %l5, !tbaa !21
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 63
  %t61 = load i1, ptr %t60, !tbaa !21
  store i1 %t61, ptr %l6, !tbaa !21
  %t63 = load i1, ptr %l5, !tbaa !21
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t65 = load i64, ptr %l4, !tbaa !24
  store i64 %t65, ptr %l42, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 6
  %t69 = load i64, ptr %l3, !tbaa !24
  %t72 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store ptr %t72, ptr %l46
  br label %bb23
bb22:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb25
bb23:
  %t73 = load ptr, ptr %l46, !tbaa !29
  %t75 = getelementptr %"compiler/scope:summary", ptr %t73, i32 0, i32 2
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t75)
  store i64 %t77, ptr %l49
  br label %bb24
bb24:
  %t78 = load i64, ptr %l42, !tbaa !24
  %t79 = load i64, ptr %l49, !tbaa !24
  %t80 = icmp slt i64 %t78, %t79
  store i1 %t80, ptr %l41, !tbaa !21
  br label %bb25
bb25:
  %t82 = load i1, ptr %l41, !tbaa !21
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 6
  %t86 = load i64, ptr %l3, !tbaa !24
  %t89 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t85, i64 %t86)
  store ptr %t89, ptr %l55
  br label %bb28
bb27:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb30
bb28:
  %t90 = load ptr, ptr %l55, !tbaa !29
  %t92 = getelementptr %"compiler/scope:summary", ptr %t90, i32 0, i32 2
  %t93 = load i64, ptr %l4, !tbaa !24
  %t96 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t92, i64 %t93)
  store i1 %t96, ptr %l59
  br label %bb29
bb29:
  %t97 = load i1, ptr %l59, !tbaa !21
  %t98 = xor i1 %t97, true
  store i1 %t98, ptr %l51, !tbaa !21
  br label %bb30
bb30:
  %t100 = load i1, ptr %l51, !tbaa !21
  br i1 %t100, label %bb31, label %bb32
bb31:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/scope:Scoper", ptr %t101, i32 0, i32 63
  store i1 true, ptr %t103, !tbaa !21
  br label %bb33
bb32:
  br label %bb33
bb33:
  %t104 = load i1, ptr %l5, !tbaa !21
  br i1 %t104, label %bb34, label %bb35
bb34:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l63, !tbaa !29
  %t107 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t107, ptr %l64
  %t108 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t108, ptr %l65
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %t109, i32 0, i32 6
  %t112 = load i64, ptr %l3, !tbaa !24
  %t115 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t111, i64 %t112)
  store ptr %t115, ptr %l69
  br label %bb36
bb35:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l82, !tbaa !29
  %t117 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t117, ptr %l83
  %t118 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t118, ptr %l84
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %t119, i32 0, i32 26
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  br i1 %t124, label %bb41, label %bb42
bb36:
  %t126 = load ptr, ptr %l69, !tbaa !29
  %t128 = getelementptr %"compiler/scope:summary", ptr %t126, i32 0, i32 3
  %t129 = load i64, ptr %l4, !tbaa !24
  %t132 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t128, i64 %t129)
  store i64 %t132, ptr %l73
  br label %bb37
bb37:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/scope:Scoper", ptr %t133, i32 0, i32 6
  %t136 = load i64, ptr %l3, !tbaa !24
  %t139 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t135, i64 %t136)
  store ptr %t139, ptr %l77
  br label %bb38
bb38:
  %t140 = load ptr, ptr %l77, !tbaa !29
  %t142 = getelementptr %"compiler/scope:summary", ptr %t140, i32 0, i32 4
  %t143 = load i64, ptr %l4, !tbaa !24
  %t146 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t142, i64 %t143)
  store %"compiler/source:Span" %t146, ptr %l81
  br label %bb39
bb39:
  %t147 = load ptr, ptr %l63, !tbaa !29
  %t148 = load { i64, [2 x i64] }, ptr %l64
  %t149 = load %"compiler/source:Span", ptr %l65
  %t150 = load i64, ptr %l73, !tbaa !24
  %t151 = load %"compiler/source:Span", ptr %l81
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %t147, { i64, [2 x i64] } %t148, %"compiler/source:Span" %t149, i64 %t150, %"compiler/source:Span" %t151)
  br label %bb40
bb40:
  br label %bb45
bb41:
  call void @__olang_check_failed(ptr @olang_loc_43515980f8c6aee5_797864ac7e38a2e9)
  unreachable
bb42:
  br label %bb43
bb43:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 26
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t158 = getelementptr %"compiler/typed:Body", ptr %t155, i32 0, i32 3
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = load %"compiler/source:Span", ptr %l2
  %t161 = load ptr, ptr %l82, !tbaa !29
  %t162 = load { i64, [2 x i64] }, ptr %l83
  %t163 = load %"compiler/source:Span", ptr %l84
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %t161, { i64, [2 x i64] } %t162, %"compiler/source:Span" %t163, i64 %t159, %"compiler/source:Span" %t160)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i1, ptr %l6, !tbaa !21
  %t170 = getelementptr %"compiler/scope:Scoper", ptr %t166, i32 0, i32 63
  store i1 %t167, ptr %t170, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleePutsArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca i64
  %l26 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca i1
  %l35 = alloca ptr
  %l39 = alloca i1
  %l43 = alloca ptr
  %l47 = alloca i1
  %l48 = alloca i64
  %l52 = alloca ptr
  %l55 = alloca i64
  %l61 = alloca ptr
  %l65 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l82 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
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
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb28
bb5:
  %t21 = load i32, ptr %l4, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l5, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 6
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t31, ptr %l19
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t34 = getelementptr %"compiler/scope:summary", ptr %t32, i32 0, i32 20
  %t35 = load i1, ptr %t34, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l2, !tbaa !24
  store i64 %t37, ptr %l22, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 6
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t40, i64 %t41)
  store ptr %t44, ptr %l26
  br label %bb9
bb8:
  br label %bb16
bb9:
  %t45 = load ptr, ptr %l26, !tbaa !29
  %t47 = getelementptr %"compiler/scope:summary", ptr %t45, i32 0, i32 7
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t47)
  store i64 %t49, ptr %l29
  br label %bb10
bb10:
  %t50 = load i64, ptr %l22, !tbaa !24
  %t51 = load i64, ptr %l29, !tbaa !24
  %t52 = icmp slt i64 %t50, %t51
  br i1 %t52, label %bb11, label %bb12
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 6
  %t57 = load i64, ptr %l5, !tbaa !24
  %t60 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store ptr %t60, ptr %l35
  br label %bb13
bb12:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb15
bb13:
  %t61 = load ptr, ptr %l35, !tbaa !29
  %t63 = getelementptr %"compiler/scope:summary", ptr %t61, i32 0, i32 7
  %t64 = load i64, ptr %l2, !tbaa !24
  %t67 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t63, i64 %t64)
  store i1 %t67, ptr %l39
  br label %bb14
bb14:
  %t68 = load i1, ptr %l39, !tbaa !21
  store i1 %t68, ptr %l31, !tbaa !21
  br label %bb15
bb15:
  %t69 = load i1, ptr %l31, !tbaa !21
  store i1 %t69, ptr %rv
  br label %ret
bb16:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %t70, i32 0, i32 6
  %t73 = load i64, ptr %l5, !tbaa !24
  %t76 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t72, i64 %t73)
  store ptr %t76, ptr %l43
  br label %bb17
bb17:
  %t77 = load ptr, ptr %l43, !tbaa !29
  %t79 = getelementptr %"compiler/scope:summary", ptr %t77, i32 0, i32 19
  %t80 = load i1, ptr %t79, !tbaa !21
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb22
bb19:
  %t84 = load i64, ptr %l2, !tbaa !24
  store i64 %t84, ptr %l48, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 6
  %t88 = load i64, ptr %l5, !tbaa !24
  %t91 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t87, i64 %t88)
  store ptr %t91, ptr %l52
  br label %bb20
bb20:
  %t92 = load ptr, ptr %l52, !tbaa !29
  %t94 = getelementptr %"compiler/scope:summary", ptr %t92, i32 0, i32 7
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t94)
  store i64 %t96, ptr %l55
  br label %bb21
bb21:
  %t97 = load i64, ptr %l48, !tbaa !24
  %t98 = load i64, ptr %l55, !tbaa !24
  %t99 = icmp sge i64 %t97, %t98
  store i1 %t99, ptr %l47, !tbaa !21
  br label %bb22
bb22:
  %t101 = load i1, ptr %l47, !tbaa !21
  br i1 %t101, label %bb23, label %bb24
bb23:
  store i1 true, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/scope:Scoper", ptr %t103, i32 0, i32 6
  %t106 = load i64, ptr %l5, !tbaa !24
  %t109 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t105, i64 %t106)
  store ptr %t109, ptr %l61
  br label %bb26
bb26:
  %t110 = load ptr, ptr %l61, !tbaa !29
  %t112 = getelementptr %"compiler/scope:summary", ptr %t110, i32 0, i32 7
  %t113 = load i64, ptr %l2, !tbaa !24
  %t116 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t112, i64 %t113)
  store i1 %t116, ptr %l65
  br label %bb27
bb27:
  %t117 = load i1, ptr %l65, !tbaa !21
  store i1 %t117, ptr %rv
  br label %ret
bb28:
  %t118 = load ptr, ptr %l3, !tbaa !29
  store ptr %t118, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t119 = load ptr, ptr %l66, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb29, label %bb30
bb29:
  %t122 = load ptr, ptr %l66, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 5}
  %t125 = icmp eq i64 %t123, 1
  store i1 %t125, ptr %l67, !tbaa !21
  br label %bb30
bb30:
  %t126 = load i1, ptr %l67, !tbaa !21
  br i1 %t126, label %bb31, label %bb32
bb31:
  br label %bb37
bb32:
  %t127 = load ptr, ptr %l3, !tbaa !29
  store ptr %t127, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t128 = load ptr, ptr %l70, !tbaa !29
  %t129 = icmp ne ptr %t128, null
  br i1 %t129, label %bb33, label %bb34
bb33:
  %t131 = load ptr, ptr %l70, !tbaa !29
  %t132 = load i64, ptr %t131, !range !{i64 0, i64 5}
  %t134 = icmp eq i64 %t132, 4
  store i1 %t134, ptr %l71, !tbaa !21
  br label %bb34
bb34:
  %t135 = load i1, ptr %l71, !tbaa !21
  br i1 %t135, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i1 false, ptr %rv
  br label %ret
bb38:
  %t137 = load ptr, ptr %l3, !tbaa !29
  store ptr %t137, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t138 = load ptr, ptr %l75, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb39, label %bb40
bb39:
  %t141 = load ptr, ptr %l75, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 5}
  %t144 = icmp eq i64 %t142, 2
  store i1 %t144, ptr %l76, !tbaa !21
  br label %bb40
bb40:
  %t145 = load i1, ptr %l76, !tbaa !21
  br i1 %t145, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l1, !tbaa !29
  %t148 = load i64, ptr %l2, !tbaa !24
  %t152 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueArgBy(ptr %v0, ptr %v1, ptr %t146, ptr %t147, i64 %t148, i64 1)
  store i1 %t152, ptr %l82
  br label %bb44
bb44:
  %t153 = load i1, ptr %l82, !tbaa !21
  store i1 %t153, ptr %rv
  br label %ret
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i1 true, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_afca299d588086d2_4faebb8dc8bed846)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallsItself(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 13
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i64, ptr %l11, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 13
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = add i64 %t12, 1
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t11, i64 %t14)
  store i64 %t17, ptr %l16
  br label %bb2
bb2:
  %t18 = load i64, ptr %l16, !tbaa !24
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
  store i64 0, ptr %l20, !tbaa !24
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
  store i64 %t43, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l23, !tbaa !24
  store i64 %t45, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l20, !tbaa !24
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
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 14
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t67, i64 %t63)
  store i64 %t71, ptr %l44
  br label %bb13
bb13:
  %t72 = load i64, ptr %l1, !tbaa !24
  %t73 = load i64, ptr %l44, !tbaa !24
  %t75 = icmp eq i64 %t73, %t72
  br i1 %t75, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l6, !tbaa !24
  br label %bb9
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapPassed(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca i1
  %l4 = alloca i1
  %l7 = alloca { i64, [2 x i64] }
  %rv = alloca i1
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = call i1 @compiler_2fscope_2ecapTerm({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t9 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %t6, i64 -1)
  store { i64, [2 x i64] } %t9, ptr %l7
  br label %bb4
bb3:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb5
bb4:
  %t10 = load { i64, [2 x i64] }, ptr %l7
  %t12 = extractvalue { i64, [2 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 0
  %t15 = xor i1 %t13, true
  store i1 %t15, ptr %l4, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l4, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaptureTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l26 = alloca { i64, [1 x i64] }
  %l27 = alloca i1
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
  br label %bb24
bb3:
  %t10 = load i64, ptr %l2, !tbaa !24
  store i64 %t10, ptr %l7, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_fb22e57a4d25fb73_7399fc8ad6df692f)
  unreachable
bb5:
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 26
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 6
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l15
  br label %bb7
bb7:
  %t27 = load i64, ptr %l7, !tbaa !24
  %t28 = load i64, ptr %l15, !tbaa !24
  %t29 = icmp sge i64 %t27, %t28
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 26
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_484116b6187c51a4_a28253a9c61223d0)
  unreachable
bb12:
  br label %bb13
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 26
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Body", ptr %t42, i32 0, i32 6
  %t46 = load i64, ptr %l2, !tbaa !24
  %t49 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t45, i64 %t46)
  store { i64, [1 x i64] } %t49, ptr %l26
  br label %bb14
bb14:
  %t50 = load { i64, [1 x i64] }, ptr %l26
  %t53 = extractvalue { i64, [1 x i64] } %t50, 0
  %t54 = icmp eq i64 %t53, 4
  br i1 %t54, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_6565225f22a9410_9e144c80289592dc)
  unreachable
bb23:
  %t56 = load i1, ptr %l27, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 false, ptr %rv
  br label %ret
bb28:
  call void @__olang_check_failed(ptr @olang_loc_51d544a4138e8ea1_353538615dae2c0d)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaseFrom(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t6 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %t2, ptr %t3)
  store i64 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 198
  store i64 %t7, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepsStorage(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store i1 %t15, ptr %l9
  br label %bb2
bb2:
  %t16 = load i1, ptr %l9, !tbaa !21
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 199
  store i1 %t16, ptr %t18, !tbaa !21
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t25 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t20, ptr %t21)
  store ptr %t25, ptr %l14
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t27 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t26)
  store ptr %t27, ptr %l15
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t29 = call i1 @compiler_2fscope_2epartRead(ptr %s0, ptr %t28)
  store i1 %t29, ptr %l16
  br label %bb5
bb5:
  %t30 = load i1, ptr %l16, !tbaa !21
  %t31 = load ptr, ptr %l10, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 200
  store i1 %t30, ptr %t32, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edone(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l24 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb8
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l5, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 6
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store ptr %t29, ptr %l19
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t32 = getelementptr %"compiler/scope:summary", ptr %t30, i32 0, i32 19
  store i1 true, ptr %t32, !tbaa !21
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 6
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t35, i64 %t36)
  store ptr %t39, ptr %l24
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t42 = getelementptr %"compiler/scope:summary", ptr %t40, i32 0, i32 20
  store i1 false, ptr %t42, !tbaa !21
  br label %bb7
bb7:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb1
bb8:
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
  %t54 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 26
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
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 26
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l32, !tbaa !27
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i64
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
  %l37 = alloca i1
  %l40 = alloca { i64, ptr }
  %l43 = alloca i64
  %l46 = alloca i1
  %l50 = alloca i1
  %l56 = alloca i64
  %l59 = alloca i64
  %l80 = alloca i1
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l84 = alloca { i64, ptr }
  %l90 = alloca i64
  %l92 = alloca i64
  %l97 = alloca i64
  %l108 = alloca i64
  %l111 = alloca i64
  %l132 = alloca i1
  %l134 = alloca i1
  %l137 = alloca { i64, ptr }
  %l140 = alloca i1
  %l146 = alloca i64
  %l149 = alloca i64
  %l171 = alloca { i64, ptr }
  %l175 = alloca i64
  %l180 = alloca i1
  %l181 = alloca i1
  %l183 = alloca { i64, ptr }
  %l187 = alloca i1
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp eq i64 %t8, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 137
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = icmp eq i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t23 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisMethodCall(ptr %v0, ptr %v1, ptr %t19, ptr %t20)
  store i1 %t23, ptr %l37
  br label %bb6
bb5:
  br label %bb45
bb6:
  %t24 = load i1, ptr %l37, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Call", ptr %t27, i32 0, i32 1
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l40, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr ptr, ptr %t32, i64 0
  %t34 = load ptr, ptr %t33, !tbaa !39
  %t37 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v1, ptr %t34)
  store i64 %t37, ptr %l43
  br label %bb10
bb10:
  %t38 = load i64, ptr %l43, !tbaa !24
  store i64 %t38, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t41 = icmp slt i64 %t39, 0
  br i1 %t41, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb14
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 134
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = call i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %t45, i64 %t46)
  store i1 %t49, ptr %l50
  br label %bb13
bb13:
  %t50 = load i1, ptr %l50, !tbaa !21
  %t51 = xor i1 %t50, true
  store i1 %t51, ptr %l46, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l46, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  store i64 1, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  store i64 %t54, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = icmp sgt i64 %t56, %t57
  br i1 %t60, label %bb18, label %bb19
bb18:
  %t62 = load i64, ptr %l6, !tbaa !24
  %t64 = icmp sgt i64 %t62, 0
  br i1 %t64, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb23
bb20:
  %t66 = load i64, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l4, !tbaa !24
  %t70 = sub i64 %t66, %t67
  %t71 = load i64, ptr %l6, !tbaa !24
  %t74 = add i64 %t70, %t71
  %t76 = sub i64 %t74, 1
  %t77 = load i64, ptr %l6, !tbaa !24
  %t80 = sdiv i64 %t76, %t77
  store i64 %t80, ptr %l59, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb22
bb22:
  %t82 = load i64, ptr %l59, !tbaa !24
  store i64 %t82, ptr %l56, !tbaa !24
  br label %bb23
bb23:
  %t83 = load i64, ptr %l56, !tbaa !24
  store i64 %t83, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb24
bb24:
  %t84 = load i64, ptr %l8, !tbaa !24
  %t85 = load i64, ptr %l7, !tbaa !24
  %t88 = icmp slt i64 %t84, %t85
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb25, label %bb26
bb25:
  br label %bb44
bb26:
  br label %bb27
bb27:
  %t92 = load i64, ptr %l4, !tbaa !24
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t97 = mul i64 %t93, %t94
  %t100 = add i64 %t92, %t97
  store i64 %t100, ptr %l9, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t104 = load i64, ptr %l9, !tbaa !24
  %t108 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %t102, ptr %t103, i64 %t104)
  store i1 %t108, ptr %l80
  br label %bb28
bb28:
  %t109 = load i1, ptr %l80, !tbaa !21
  br i1 %t109, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s7
  %t110 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l81
  br label %bb31
bb30:
  br label %bb42
bb31:
  %t111 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t111, ptr %l10
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Call", ptr %t113, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %l84, !tbaa !27
  %t117 = load i64, ptr %l9, !tbaa !24
  %t119 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr ptr, ptr %t120, i64 %t117
  %t122 = load ptr, ptr %t121, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %s7, ptr %t112, ptr %t122, ptr %l10)
  br label %bb32
bb32:
  store ptr %l10, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb33
bb33:
  %t128 = load i64, ptr %l12, !tbaa !24
  store i64 %t128, ptr %l90, !tbaa !24
  %t129 = load ptr, ptr %l11, !tbaa !29
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s7, ptr %t129)
  store i64 %t131, ptr %l92
  br label %bb34
bb34:
  %t132 = load i64, ptr %l90, !tbaa !24
  %t133 = load i64, ptr %l92, !tbaa !24
  %t134 = icmp slt i64 %t132, %t133
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb35, label %bb36
bb35:
  br label %bb41
bb36:
  br label %bb37
bb37:
  %t138 = load ptr, ptr %l11, !tbaa !29
  %t139 = load i64, ptr %l12, !tbaa !24
  %t142 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s7, ptr %t138, i64 %t139)
  store i64 %t142, ptr %l97
  br label %bb38
bb38:
  %t143 = load i64, ptr %l97, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflAdd(ptr %v0, ptr %t144, i64 %t143)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t148 = load i64, ptr %l12, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l12, !tbaa !24
  br label %bb33
bb41:
  call void @__olang_scope_close(ptr %s7)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t152 = load i64, ptr %l8, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l8, !tbaa !24
  br label %bb24
bb44:
  br label %ret
bb45:
  store i64 0, ptr %l14, !tbaa !24
  %t156 = load i64, ptr %l2, !tbaa !24
  store i64 %t156, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t158 = load i64, ptr %l15, !tbaa !24
  %t159 = load i64, ptr %l14, !tbaa !24
  %t162 = icmp sgt i64 %t158, %t159
  br i1 %t162, label %bb46, label %bb47
bb46:
  %t164 = load i64, ptr %l16, !tbaa !24
  %t166 = icmp sgt i64 %t164, 0
  br i1 %t166, label %bb48, label %bb49
bb47:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb51
bb48:
  %t168 = load i64, ptr %l15, !tbaa !24
  %t169 = load i64, ptr %l14, !tbaa !24
  %t172 = sub i64 %t168, %t169
  %t173 = load i64, ptr %l16, !tbaa !24
  %t176 = add i64 %t172, %t173
  %t178 = sub i64 %t176, 1
  %t179 = load i64, ptr %l16, !tbaa !24
  %t182 = sdiv i64 %t178, %t179
  store i64 %t182, ptr %l111, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb50
bb50:
  %t184 = load i64, ptr %l111, !tbaa !24
  store i64 %t184, ptr %l108, !tbaa !24
  br label %bb51
bb51:
  %t185 = load i64, ptr %l108, !tbaa !24
  store i64 %t185, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb52
bb52:
  %t186 = load i64, ptr %l18, !tbaa !24
  %t187 = load i64, ptr %l17, !tbaa !24
  %t190 = icmp slt i64 %t186, %t187
  %t192 = xor i1 %t190, true
  br i1 %t192, label %bb53, label %bb54
bb53:
  br label %bb93
bb54:
  br label %bb55
bb55:
  %t194 = load i64, ptr %l14, !tbaa !24
  %t195 = load i64, ptr %l18, !tbaa !24
  %t196 = load i64, ptr %l16, !tbaa !24
  %t199 = mul i64 %t195, %t196
  %t202 = add i64 %t194, %t199
  store i64 %t202, ptr %l19, !tbaa !24
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t206 = load i64, ptr %l19, !tbaa !24
  %t210 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %t204, ptr %t205, i64 %t206)
  store i1 %t210, ptr %l132
  br label %bb56
bb56:
  %t211 = load i1, ptr %l132, !tbaa !21
  %t212 = xor i1 %t211, true
  br i1 %t212, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb60
bb58:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = getelementptr %"compiler/typed:Call", ptr %t215, i32 0, i32 1
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  store { i64, ptr } %t218, ptr %l137, !tbaa !27
  %t219 = load i64, ptr %l19, !tbaa !24
  %t221 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr ptr, ptr %t222, i64 %t219
  %t224 = load ptr, ptr %t223, !tbaa !39
  %t227 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarries(ptr %v0, ptr %v1, ptr %t214, ptr %t224)
  store i1 %t227, ptr %l140
  br label %bb59
bb59:
  %t228 = load i1, ptr %l140, !tbaa !21
  %t229 = xor i1 %t228, true
  store i1 %t229, ptr %l134, !tbaa !21
  br label %bb60
bb60:
  %t231 = load i1, ptr %l134, !tbaa !21
  br i1 %t231, label %bb61, label %bb62
bb61:
  br label %bb92
bb62:
  br label %bb63
bb63:
  store i64 0, ptr %l20, !tbaa !24
  %t232 = load i64, ptr %l2, !tbaa !24
  store i64 %t232, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t234 = load i64, ptr %l21, !tbaa !24
  %t235 = load i64, ptr %l20, !tbaa !24
  %t238 = icmp sgt i64 %t234, %t235
  br i1 %t238, label %bb64, label %bb65
bb64:
  %t240 = load i64, ptr %l22, !tbaa !24
  %t242 = icmp sgt i64 %t240, 0
  br i1 %t242, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l146, !tbaa !24
  br label %bb69
bb66:
  %t244 = load i64, ptr %l21, !tbaa !24
  %t245 = load i64, ptr %l20, !tbaa !24
  %t248 = sub i64 %t244, %t245
  %t249 = load i64, ptr %l22, !tbaa !24
  %t252 = add i64 %t248, %t249
  %t254 = sub i64 %t252, 1
  %t255 = load i64, ptr %l22, !tbaa !24
  %t258 = sdiv i64 %t254, %t255
  store i64 %t258, ptr %l149, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb68
bb68:
  %t260 = load i64, ptr %l149, !tbaa !24
  store i64 %t260, ptr %l146, !tbaa !24
  br label %bb69
bb69:
  %t261 = load i64, ptr %l146, !tbaa !24
  store i64 %t261, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb70
bb70:
  %t262 = load i64, ptr %l24, !tbaa !24
  %t263 = load i64, ptr %l23, !tbaa !24
  %t266 = icmp slt i64 %t262, %t263
  %t268 = xor i1 %t266, true
  br i1 %t268, label %bb71, label %bb72
bb71:
  br label %bb91
bb72:
  br label %bb73
bb73:
  %t270 = load i64, ptr %l20, !tbaa !24
  %t271 = load i64, ptr %l24, !tbaa !24
  %t272 = load i64, ptr %l22, !tbaa !24
  %t275 = mul i64 %t271, %t272
  %t278 = add i64 %t270, %t275
  store i64 %t278, ptr %l25, !tbaa !24
  %t280 = load i64, ptr %l25, !tbaa !24
  %t281 = load i64, ptr %l19, !tbaa !24
  %t284 = icmp eq i64 %t280, %t281
  br i1 %t284, label %bb74, label %bb75
bb74:
  br label %bb90
bb75:
  br label %bb76
bb76:
  %t286 = load ptr, ptr %l1, !tbaa !29
  %t288 = getelementptr %"compiler/typed:Call", ptr %t286, i32 0, i32 1
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  store { i64, ptr } %t289, ptr %l171, !tbaa !27
  %t290 = load i64, ptr %l25, !tbaa !24
  %t292 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = getelementptr ptr, ptr %t293, i64 %t290
  %t295 = load ptr, ptr %t294, !tbaa !39
  %t298 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v1, ptr %t295)
  store i64 %t298, ptr %l175
  br label %bb77
bb77:
  %t299 = load i64, ptr %l175, !tbaa !24
  store i64 %t299, ptr %l26, !tbaa !24
  %t300 = load i64, ptr %l26, !tbaa !24
  %t302 = icmp slt i64 %t300, 0
  br i1 %t302, label %bb78, label %bb79
bb78:
  br label %bb90
bb79:
  br label %bb80
bb80:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i64, ptr %l26, !tbaa !24
  %t308 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoutside(ptr %v0, ptr %t304, i64 %t305)
  store i1 %t308, ptr %l180
  br label %bb81
bb81:
  %t309 = load i1, ptr %l180, !tbaa !21
  br i1 %t309, label %bb82, label %bb83
bb82:
  store i1 true, ptr %l181, !tbaa !21
  br label %bb85
bb83:
  %t310 = load ptr, ptr %l1, !tbaa !29
  %t312 = getelementptr %"compiler/typed:Call", ptr %t310, i32 0, i32 1
  %t313 = load { i64, ptr }, ptr %t312, !tbaa !27
  store { i64, ptr } %t313, ptr %l183, !tbaa !27
  %t314 = load i64, ptr %l25, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr ptr, ptr %t317, i64 %t314
  %t319 = load ptr, ptr %t318, !tbaa !39
  %t322 = call i1 @compiler_2fscope_2eflThroughRefExpr(ptr %v1, ptr %t319)
  store i1 %t322, ptr %l187
  br label %bb84
bb84:
  %t323 = load i1, ptr %l187, !tbaa !21
  store i1 %t323, ptr %l181, !tbaa !21
  br label %bb85
bb85:
  %t324 = load i1, ptr %l181, !tbaa !21
  br i1 %t324, label %bb86, label %bb87
bb86:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/scope:Scoper", ptr %t325, i32 0, i32 136
  store i1 true, ptr %t327, !tbaa !21
  br label %ret
bb87:
  br label %bb88
bb88:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load i64, ptr %l26, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflAdd(ptr %v0, ptr %t328, i64 %t329)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t332 = load i64, ptr %l24, !tbaa !24
  %t334 = add i64 %t332, 1
  store i64 %t334, ptr %l24, !tbaa !24
  br label %bb70
bb91:
  br label %bb92
bb92:
  %t336 = load i64, ptr %l18, !tbaa !24
  %t338 = add i64 %t336, 1
  store i64 %t338, ptr %l18, !tbaa !24
  br label %bb52
bb93:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflInto(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l12 = alloca i1
  %l15 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l33 = alloca i1
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca i64
  %l55 = alloca i1
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l2, !tbaa !23
  %t9 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l15
  br label %bb3
bb3:
  %t10 = load i1, ptr %l15, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l12, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 137
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = icmp eq i64 %t17, 0
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = icmp sge i64 %t21, 0
  br i1 %t23, label %bb10, label %bb11
bb9:
  br label %bb35
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 134
  %t28 = load i64, ptr %l1, !tbaa !24
  %t31 = call i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %t27, i64 %t28)
  store i1 %t31, ptr %l26
  br label %bb12
bb11:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb13
bb12:
  %t32 = load i1, ptr %l26, !tbaa !21
  store i1 %t32, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t33 = load i1, ptr %l22, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  br i1 %a5, label %bb16, label %bb17
bb15:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb20
bb16:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t42 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplainCopyOf(ptr %v0, ptr %v1, ptr %t36, ptr %t37, i32 %t38)
  store i1 %t42, ptr %l33
  br label %bb18
bb17:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb19
bb18:
  %t43 = load i1, ptr %l33, !tbaa !21
  store i1 %t43, ptr %l29, !tbaa !21
  br label %bb19
bb19:
  %t44 = load i1, ptr %l29, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l27, !tbaa !21
  br label %bb20
bb20:
  %t47 = load i1, ptr %l27, !tbaa !21
  br i1 %t47, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l35
  br label %bb23
bb22:
  br label %bb34
bb23:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l6
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %s3, ptr %t50, ptr %t51, ptr %l6)
  br label %bb24
bb24:
  store ptr %l6, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb25
bb25:
  %t57 = load i64, ptr %l8, !tbaa !24
  store i64 %t57, ptr %l41, !tbaa !24
  %t58 = load ptr, ptr %l7, !tbaa !29
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s3, ptr %t58)
  store i64 %t60, ptr %l43
  br label %bb26
bb26:
  %t61 = load i64, ptr %l41, !tbaa !24
  %t62 = load i64, ptr %l43, !tbaa !24
  %t63 = icmp slt i64 %t61, %t62
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  br label %bb29
bb29:
  %t67 = load ptr, ptr %l7, !tbaa !29
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s3, ptr %t67, i64 %t68)
  store i64 %t71, ptr %l48
  br label %bb30
bb30:
  %t72 = load i64, ptr %l48, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflAdd(ptr %v0, ptr %t73, i64 %t72)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t77 = load i64, ptr %l8, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l8, !tbaa !24
  br label %bb25
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb34:
  br label %ret
bb35:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t85 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarries(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  store i1 %t85, ptr %l55
  br label %bb36
bb36:
  %t86 = load i1, ptr %l55, !tbaa !21
  %t87 = xor i1 %t86, true
  br i1 %t87, label %bb37, label %bb38
bb37:
  br label %ret
bb38:
  br label %bb39
bb39:
  br i1 %a4, label %bb40, label %bb41
bb40:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scope:Scoper", ptr %t91, i32 0, i32 136
  store i1 true, ptr %t93, !tbaa !21
  br label %ret
bb41:
  br label %bb42
bb42:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflAdd(ptr %v0, ptr %t94, i64 %t95)
  br label %bb43
bb43:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egivenLocal(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l9 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l23 = alloca { i64, [2 x i64] }
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 36
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t9, i64 %t10)
  store i1 %t13, ptr %l9
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t14 = load i1, ptr %l9, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %t19, i64 %t20)
  store i1 %t23, ptr %l14
  br label %bb9
bb9:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 42
  %t28 = load i64, ptr %t27, !tbaa !24
  %t30 = icmp sge i64 %t28, 0
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb12
bb12:
  %t32 = load i1, ptr %l15, !tbaa !21
  br i1 %t32, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 35
  %t37 = load i64, ptr %l1, !tbaa !24
  %t40 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t36, i64 %t37)
  store { i64, [2 x i64] } %t40, ptr %l23
  br label %bb16
bb16:
  %t41 = load { i64, [2 x i64] }, ptr %l23
  %t42 = call i1 @compiler_2fscope_2etermGiven({ i64, [2 x i64] } %t41)
  store i1 %t42, ptr %l24
  br label %bb17
bb17:
  %t43 = load i1, ptr %l24, !tbaa !21
  store i1 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandedRegion(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca i1
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i1
  %l46 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l3, !tbaa !23
  %t33 = sext i32 %t31 to i64
  store i64 %t33, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_9d00f6934855daa_c9673762d5df43fe)
  unreachable
bb16:
  br label %bb43
bb17:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb18, label %bb19
bb18:
  %t39 = load ptr, ptr %l21, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 3
  store i1 %t42, ptr %l22, !tbaa !21
  br label %bb19
bb19:
  %t43 = load i1, ptr %l22, !tbaa !21
  br i1 %t43, label %bb20, label %bb21
bb20:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = call i64 @compiler_2fscope_2eregionRoot(ptr %v1, ptr %t50)
  store i64 %t52, ptr %l28
  br label %bb23
bb23:
  %t53 = load i64, ptr %l28, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
bb24:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t55 = load ptr, ptr %l29, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb25, label %bb26
bb25:
  %t58 = load ptr, ptr %l29, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 18}
  %t61 = icmp eq i64 %t59, 10
  store i1 %t61, ptr %l30, !tbaa !21
  br label %bb26
bb26:
  %t62 = load i1, ptr %l30, !tbaa !21
  br i1 %t62, label %bb27, label %bb28
bb27:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l5, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Slice", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = call i64 @compiler_2fscope_2eregionRoot(ptr %v1, ptr %t72)
  store i64 %t74, ptr %l37
  br label %bb30
bb30:
  %t75 = load i64, ptr %l37, !tbaa !24
  store i64 %t75, ptr %rv
  br label %ret
bb31:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t77 = load ptr, ptr %l38, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb32, label %bb33
bb32:
  %t80 = load ptr, ptr %l38, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 18}
  %t83 = icmp eq i64 %t81, 17
  store i1 %t83, ptr %l39, !tbaa !21
  br label %bb33
bb33:
  %t84 = load i1, ptr %l39, !tbaa !21
  br i1 %t84, label %bb34, label %bb35
bb34:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [5 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l6, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t95 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandedRegion(ptr %v0, ptr %v1, ptr %a0, ptr %t92)
  store i64 %t95, ptr %l46
  br label %bb37
bb37:
  %t96 = load i64, ptr %l46, !tbaa !24
  store i64 %t96, ptr %rv
  br label %ret
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_6f89170392198c6b_c18aa73f993179ff)
  unreachable
bb43:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eindexCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l44 = alloca i1
  %l46 = alloca i1
  %l47 = alloca i1
  %l49 = alloca i1
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
  br label %bb32
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
  br label %bb26
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
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t77, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) })
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
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t81, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t83, ptr %l43
  br label %bb16
bb16:
  %t84 = load i1, ptr %l43, !tbaa !21
  store i1 %t84, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t85 = load i1, ptr %l41, !tbaa !21
  br i1 %t85, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb21
bb19:
  %t86 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t86, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t88, ptr %l46
  br label %bb20
bb20:
  %t89 = load i1, ptr %l46, !tbaa !21
  store i1 %t89, ptr %l44, !tbaa !21
  br label %bb21
bb21:
  %t90 = load i1, ptr %l44, !tbaa !21
  br i1 %t90, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb25
bb23:
  %t91 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t93 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t91, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t93, ptr %l49
  br label %bb24
bb24:
  %t94 = load i1, ptr %l49, !tbaa !21
  store i1 %t94, ptr %l47, !tbaa !21
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s2)
  %t95 = load i1, ptr %l47, !tbaa !21
  store i1 %t95, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_2d8599dd2a60d272_f2da26d46793a2d6)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_8dedfa134432c6f3_d3b15d93042206f7)
  unreachable
bb37:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwHanded(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %s0 = alloca %olang.scope
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
  br label %bb8
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %s0, ptr %t23, ptr %t24)
  br label %bb7
bb7:
  br label %bb22
bb8:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l17, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 10
  store i1 %t34, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l18, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l4, !tbaa !29
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Slice", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %s0, ptr %t42, ptr %t46)
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Slice", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %s0, ptr %t49, ptr %t53, i1 true)
  br label %bb15
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Slice", ptr %t58, i32 0, i32 2
  %t61 = load ptr, ptr %t60, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %s0, ptr %t57, ptr %t61, i1 true)
  br label %bb16
bb16:
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_4f09217bbbe73e28_17ebc948c6ad3e44)
  unreachable
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftAtCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/scope:rel" %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/scope:rel"
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca i32
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l19 = alloca { i64, [2 x i64] }
  %l21 = alloca i1
  %l22 = alloca i1
  %l26 = alloca { i64, [2 x i64] }
  %l28 = alloca { i64, [2 x i64] }
  %l30 = alloca i1
  %l31 = alloca i1
  %l36 = alloca { i64, ptr }
  %l40 = alloca i1
  %l45 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i64
  %l57 = alloca i1
  %l60 = alloca i1
  %l67 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca i32
  %l74 = alloca i1
  %l75 = alloca i1
  %l82 = alloca i1
  %l85 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/scope:rel" %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/scope:rel", ptr %l2, i32 0, i32 0
  %t4 = load { i64, [2 x i64] }, ptr %t3
  %t8 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v1, ptr %t1, ptr %t2, { i64, [2 x i64] } %t4)
  store i64 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i64, ptr %l11, !tbaa !24
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Call", ptr %t15, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l16, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t27 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRefs(ptr %v0, ptr %v1, ptr %t14, ptr %t24)
  store { i64, [2 x i64] } %t27, ptr %l19
  br label %bb4
bb3:
  br label %bb19
bb4:
  %t28 = load { i64, [2 x i64] }, ptr %l19
  store { i64, [2 x i64] } %t28, ptr %l5
  %t29 = load { i64, [2 x i64] }, ptr %l5
  %t31 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t29)
  store i1 %t31, ptr %l21
  br label %bb5
bb5:
  %t32 = load i1, ptr %l21, !tbaa !21
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load { i64, [2 x i64] }, ptr %l5
  %t35 = load { i64, [2 x i64] }, ptr %l3
  %t39 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t33, { i64, [2 x i64] } %t34, { i64, [2 x i64] } %t35)
  store { i64, [2 x i64] } %t39, ptr %l26
  br label %bb8
bb7:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb10
bb8:
  %t40 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t40, ptr %l28
  %t43 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l26, ptr %l28)
  store i1 %t43, ptr %l30
  br label %bb9
bb9:
  %t44 = load i1, ptr %l30, !tbaa !21
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  %t46 = getelementptr %"compiler/scope:rel", ptr %l2, i32 0, i32 6
  %t47 = load i1, ptr %t46, !tbaa !21
  %t49 = xor i1 %t47, true
  store i1 %t49, ptr %l31, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb13
bb13:
  %t51 = load i1, ptr %l31, !tbaa !21
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Call", ptr %t53, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l36, !tbaa !27
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr ptr, ptr %t60, i64 %t57
  %t62 = load ptr, ptr %t61, !tbaa !39
  %t63 = load { i64, [2 x i64] }, ptr %l5
  %t67 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplit(ptr %v0, ptr %v1, ptr %t52, ptr %t62, { i64, [2 x i64] } %t63)
  store i1 %t67, ptr %l40
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/scope:rel", ptr %l2, i32 0, i32 6
  %t70 = load i1, ptr %t69, !tbaa !21
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 206
  store i1 %t70, ptr %t73, !tbaa !21
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Call", ptr %t75, i32 0, i32 1
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l45, !tbaa !27
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr ptr, ptr %t82, i64 %t79
  %t84 = load ptr, ptr %t83, !tbaa !39
  %t85 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %t74, ptr %t84, { i64, [2 x i64] } %t85)
  br label %bb18
bb18:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/scope:Scoper", ptr %t89, i32 0, i32 206
  store i1 false, ptr %t91, !tbaa !21
  br label %ret
bb19:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l50, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t97 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t93, ptr %t94)
  store i32 %t97, ptr %l53
  br label %bb20
bb20:
  %t98 = load ptr, ptr %l50, !tbaa !29
  %t99 = load i32, ptr %l53, !tbaa !23
  %t100 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t98, i32 %t99)
  store i64 %t100, ptr %l54
  br label %bb21
bb21:
  %t101 = load i64, ptr %l54, !tbaa !24
  store i64 %t101, ptr %l6, !tbaa !24
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = icmp slt i64 %t102, 0
  br i1 %t104, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb27
bb23:
  %t106 = getelementptr %"compiler/scope:rel", ptr %l2, i32 0, i32 0
  %t107 = load { i64, [2 x i64] }, ptr %t106
  %t109 = extractvalue { i64, [2 x i64] } %t107, 0
  %t110 = icmp eq i64 %t109, 2
  br i1 %t110, label %bb24, label %bb25
bb24:
  %t112 = getelementptr %"compiler/scope:rel", ptr %l2, i32 0, i32 0
  %t113 = getelementptr { i64, [2 x i64] }, ptr %t112, i32 0, i32 1
  %t114 = getelementptr { i64 }, ptr %t113, i32 0, i32 0
  %t115 = load i64, ptr %t114
  %t116 = load i64, ptr %l6, !tbaa !24
  %t119 = icmp eq i64 %t115, %t116
  store i1 %t119, ptr %l60, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb26
bb26:
  %t121 = load i1, ptr %l60, !tbaa !21
  %t122 = xor i1 %t121, true
  store i1 %t122, ptr %l57, !tbaa !21
  br label %bb27
bb27:
  %t124 = load i1, ptr %l57, !tbaa !21
  br i1 %t124, label %bb28, label %bb29
bb28:
  br label %ret
bb29:
  br label %bb30
bb30:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/generic:Program", ptr %t128, i32 0, i32 2
  store ptr %t130, ptr %l67, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l1, !tbaa !29
  %t135 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t131, ptr %t132)
  store i32 %t135, ptr %l70
  br label %bb31
bb31:
  %t136 = load ptr, ptr %l67, !tbaa !29
  %t137 = load i32, ptr %l70, !tbaa !23
  %t138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t138, ptr %l71
  br label %bb32
bb32:
  %t139 = load i32, ptr %l71, !tbaa !23
  store i32 %t139, ptr %l7, !tbaa !23
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l7, !tbaa !23
  %t144 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %t140, i32 %t141)
  store i1 %t144, ptr %l74
  br label %bb33
bb33:
  %t145 = load i1, ptr %l74, !tbaa !21
  br i1 %t145, label %bb34, label %bb35
bb34:
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Call", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %t148, !tbaa !23
  %t151 = sext i32 %t149 to i64
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 203
  %t155 = load i64, ptr %t154, !tbaa !24
  %t158 = icmp ne i64 %t151, %t155
  br i1 %t158, label %bb36, label %bb37
bb35:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb40
bb36:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb39
bb37:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l7, !tbaa !23
  %t164 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorThroughRef(ptr %v0, ptr %t160, i32 %t161)
  store i1 %t164, ptr %l85
  br label %bb38
bb38:
  %t165 = load i1, ptr %l85, !tbaa !21
  store i1 %t165, ptr %l82, !tbaa !21
  br label %bb39
bb39:
  %t166 = load i1, ptr %l82, !tbaa !21
  store i1 %t166, ptr %l75, !tbaa !21
  br label %bb40
bb40:
  %t167 = load i1, ptr %l75, !tbaa !21
  br i1 %t167, label %bb41, label %bb42
bb41:
  br label %ret
bb42:
  br label %bb43
bb43:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Call", ptr %t169, i32 0, i32 2
  %t172 = load i32, ptr %t171, !tbaa !23
  %t174 = sext i32 %t172 to i64
  %t175 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %t168, i64 %t174, { i64, [2 x i64] } %t175)
  br label %bb44
bb44:
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
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 27
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t30, i64 %t31)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34, ptr %l25
  br label %bb16
bb16:
  %t35 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l25
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t35, ptr %l4
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 152
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
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 152
  %t71 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t72 = load { i64, [2 x i64] }, ptr %l6
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H240bd86caf003ea6de374cb77d0dbfc6(ptr %v0, ptr %t70, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t71, { i64, [2 x i64] } %t72)
  br label %bb26
bb26:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/scope:Scoper", ptr %t76, i32 0, i32 148
  store i1 true, ptr %t78, !tbaa !21
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %t79, i32 0, i32 185
  store i1 true, ptr %t81, !tbaa !21
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 226
  %t85 = load i1, ptr %t84, !tbaa !21
  br i1 %t85, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s4
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 256
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
  %t107 = getelementptr %"compiler/scope:Scoper", ptr %t105, i32 0, i32 26
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
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t112, i32 0, i32 26
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
  %t132 = getelementptr %"compiler/scope:Scoper", ptr %t130, i32 0, i32 26
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
  %t139 = getelementptr %"compiler/scope:Scoper", ptr %t137, i32 0, i32 26
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
  %t154 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t154, i64 %t155)
  %t156 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  call void @__olang_sb_put(ptr %s5, ptr %t157, i64 %t158)
  %t159 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t159, i64 %t160)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s5, ptr %l70, i64 0)
  br label %bb41
bb41:
  %t162 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalRegions(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i1
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i1
  %l49 = alloca i64
  %l52 = alloca i64
  %l54 = alloca i1
  %l58 = alloca i64
  %l60 = alloca i1
  %l61 = alloca ptr
  %l70 = alloca %"compiler/typed:Local"
  %l72 = alloca i1
  %l73 = alloca i64
  %l77 = alloca i64
  %l81 = alloca i1
  %l82 = alloca i1
  %l83 = alloca ptr
  %l92 = alloca %"compiler/typed:Local"
  %l94 = alloca i1
  %l95 = alloca i1
  %l98 = alloca i1
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l10, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 122
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l13
  br label %bb3
bb3:
  %t11 = load i64, ptr %l10, !tbaa !24
  %t12 = load i64, ptr %l13, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l9, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 122
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l18
  br label %bb8
bb8:
  %t23 = load i64, ptr %l18, !tbaa !24
  %t24 = icmp sge i64 %t23, 0
  br i1 %t24, label %bb9, label %bb10
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 122
  %t29 = load i64, ptr %l1, !tbaa !24
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t28, i64 %t29)
  store i64 %t32, ptr %l23
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t33 = load i64, ptr %l23, !tbaa !24
  store i64 %t33, ptr %l1, !tbaa !24
  br label %bb12
bb12:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t34, i64 %t35)
  store i1 %t38, ptr %l26
  br label %bb13
bb13:
  %t39 = load i1, ptr %l26, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %s4, ptr %t40, i64 %t41)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l29
  br label %bb16
bb15:
  br label %bb31
bb16:
  %t46 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s4, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l31
  br label %bb17
bb17:
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t48 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %t48
  store ptr %t48, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb18
bb18:
  %t50 = load i64, ptr %l4, !tbaa !24
  store i64 %t50, ptr %l33, !tbaa !24
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s4, ptr %t51)
  store i64 %t53, ptr %l35
  br label %bb19
bb19:
  %t54 = load i64, ptr %l33, !tbaa !24
  %t55 = load i64, ptr %l35, !tbaa !24
  %t56 = icmp slt i64 %t54, %t55
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb20, label %bb21
bb20:
  br label %bb30
bb21:
  br label %bb22
bb22:
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s4, ptr %t60, i64 %t61)
  store i64 %t64, ptr %l40
  br label %bb23
bb23:
  %t65 = load i64, ptr %l40, !tbaa !24
  store i64 %t65, ptr %l5, !tbaa !24
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t67 = load i64, ptr %l5, !tbaa !24
  %t70 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t66, i64 %t67)
  store i1 %t70, ptr %l43
  br label %bb24
bb24:
  %t71 = load i1, ptr %l43, !tbaa !21
  %t72 = xor i1 %t71, true
  br i1 %t72, label %bb25, label %bb26
bb25:
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t75 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t74, i64 %t75)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t78 = load i64, ptr %l4, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l4, !tbaa !24
  br label %bb18
bb30:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
bb31:
  %t82 = load i64, ptr %l1, !tbaa !24
  store i64 %t82, ptr %l49, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 121
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l52
  br label %bb32
bb32:
  %t88 = load i64, ptr %l49, !tbaa !24
  %t89 = load i64, ptr %l52, !tbaa !24
  %t90 = icmp slt i64 %t88, %t89
  br i1 %t90, label %bb33, label %bb34
bb33:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/scope:Scoper", ptr %t92, i32 0, i32 121
  %t95 = load i64, ptr %l1, !tbaa !24
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t94, i64 %t95)
  store i64 %t98, ptr %l58
  br label %bb35
bb34:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb36
bb35:
  %t99 = load i64, ptr %l58, !tbaa !24
  %t100 = icmp sge i64 %t99, 0
  store i1 %t100, ptr %l54, !tbaa !21
  br label %bb36
bb36:
  %t102 = load i1, ptr %l54, !tbaa !21
  br i1 %t102, label %bb37, label %bb38
bb37:
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l61, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %t104, i32 0, i32 26
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = icmp eq ptr %t107, null
  br i1 %t109, label %bb39, label %bb40
bb38:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb44
bb39:
  call void @__olang_check_failed(ptr @olang_loc_30265a370842a0bf_7ea43995978c50bb)
  unreachable
bb40:
  br label %bb41
bb41:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/scope:Scoper", ptr %t111, i32 0, i32 26
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Body", ptr %t114, i32 0, i32 7
  %t118 = load i64, ptr %l1, !tbaa !24
  %t121 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t117, i64 %t118)
  store %"compiler/typed:Local" %t121, ptr %l70
  br label %bb42
bb42:
  %t122 = getelementptr %"compiler/typed:Local", ptr %l70, i32 0, i32 2
  %t123 = load i32, ptr %t122, !tbaa !23
  %t124 = load ptr, ptr %l61, !tbaa !29
  %t126 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t124, i32 %t123)
  store i1 %t126, ptr %l72
  br label %bb43
bb43:
  %t127 = load i1, ptr %l72, !tbaa !21
  store i1 %t127, ptr %l60, !tbaa !21
  br label %bb44
bb44:
  %t128 = load i1, ptr %l60, !tbaa !21
  br i1 %t128, label %bb45, label %bb46
bb45:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/scope:Scoper", ptr %t129, i32 0, i32 121
  %t132 = load i64, ptr %l1, !tbaa !24
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t131, i64 %t132)
  store i64 %t135, ptr %l77
  br label %bb47
bb46:
  %t136 = load i64, ptr %l1, !tbaa !24
  store i64 %t136, ptr %l73, !tbaa !24
  br label %bb48
bb47:
  %t138 = load i64, ptr %l77, !tbaa !24
  store i64 %t138, ptr %l73, !tbaa !24
  br label %bb48
bb48:
  %t139 = load i64, ptr %l73, !tbaa !24
  store i64 %t139, ptr %l6, !tbaa !24
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i64, ptr %l6, !tbaa !24
  %t144 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %t140, i64 %t141)
  store i1 %t144, ptr %l81
  br label %bb49
bb49:
  %t145 = load i1, ptr %l81, !tbaa !21
  br i1 %t145, label %bb50, label %bb51
bb50:
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l83, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/scope:Scoper", ptr %t147, i32 0, i32 26
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = icmp eq ptr %t150, null
  br i1 %t152, label %bb52, label %bb53
bb51:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb57
bb52:
  call void @__olang_check_failed(ptr @olang_loc_34654a73490c6ea0_7e86f88310c4f44c)
  unreachable
bb53:
  br label %bb54
bb54:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/scope:Scoper", ptr %t154, i32 0, i32 26
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Body", ptr %t157, i32 0, i32 7
  %t161 = load i64, ptr %l6, !tbaa !24
  %t164 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t160, i64 %t161)
  store %"compiler/typed:Local" %t164, ptr %l92
  br label %bb55
bb55:
  %t165 = getelementptr %"compiler/typed:Local", ptr %l92, i32 0, i32 2
  %t166 = load i32, ptr %t165, !tbaa !23
  %t167 = load ptr, ptr %l83, !tbaa !29
  %t169 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t167, i32 %t166)
  store i1 %t169, ptr %l94
  br label %bb56
bb56:
  %t170 = load i1, ptr %l94, !tbaa !21
  store i1 %t170, ptr %l82, !tbaa !21
  br label %bb57
bb57:
  %t171 = load i1, ptr %l82, !tbaa !21
  br i1 %t171, label %bb58, label %bb59
bb58:
  %t172 = load ptr, ptr %l2, !tbaa !29
  %t173 = load i64, ptr %l6, !tbaa !24
  %t176 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t172, i64 %t173)
  store i1 %t176, ptr %l98
  br label %bb60
bb59:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb61
bb60:
  %t177 = load i1, ptr %l98, !tbaa !21
  %t178 = xor i1 %t177, true
  store i1 %t178, ptr %l95, !tbaa !21
  br label %bb61
bb61:
  %t180 = load i1, ptr %l95, !tbaa !21
  br i1 %t180, label %bb62, label %bb63
bb62:
  %t181 = load ptr, ptr %l2, !tbaa !29
  %t182 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t181, i64 %t182)
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb65
bb65:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopElement(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/typed:Local"
  %l3 = alloca %"compiler/typed:BlockInfo"
  %l12 = alloca %"compiler/typed:Local"
  %l16 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i64
  %l30 = alloca i64
  %l42 = alloca %"compiler/typed:BlockInfo"
  %l45 = alloca i1
  %l49 = alloca i1
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
  call void @__olang_check_failed(ptr @olang_loc_406ffa91c23643d5_a8a413026b137651)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 7
  %t18 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t14, i64 %a1)
  store %"compiler/typed:Local" %t18, ptr %l12
  br label %bb4
bb4:
  %t19 = load %"compiler/typed:Local", ptr %l12
  store %"compiler/typed:Local" %t19, ptr %l2
  %t20 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 4
  %t21 = load i32, ptr %t20, !range !{i32 0, i32 7}
  %t23 = trunc i64 1 to i32
  %t24 = icmp eq i32 %t21, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb7
bb6:
  %t28 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 3
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  %t33 = icmp sle i64 %t31, 0
  store i1 %t33, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l16, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb14
bb9:
  %t36 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 3
  %t37 = load i32, ptr %t36, !tbaa !23
  %t39 = sext i32 %t37 to i64
  store i64 %t39, ptr %l22, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %t40, i32 0, i32 26
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_a53dc1127e8f642e_8cd05a2a2a6c7d4a)
  unreachable
bb11:
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 26
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Body", ptr %t50, i32 0, i32 8
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %t53)
  store i64 %t55, ptr %l30
  br label %bb13
bb13:
  %t56 = load i64, ptr %l22, !tbaa !24
  %t57 = load i64, ptr %l30, !tbaa !24
  %t58 = icmp sge i64 %t56, %t57
  store i1 %t58, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t60 = load i1, ptr %l20, !tbaa !21
  br i1 %t60, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 26
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = icmp eq ptr %t65, null
  br i1 %t67, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_ce604c7c8d78c55f_37d65431cab9ef4b)
  unreachable
bb19:
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/scope:Scoper", ptr %t69, i32 0, i32 26
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Body", ptr %t72, i32 0, i32 8
  %t76 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 3
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  %t82 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t75, i64 %t79)
  store %"compiler/typed:BlockInfo" %t82, ptr %l42
  br label %bb21
bb21:
  %t83 = load %"compiler/typed:BlockInfo", ptr %l42
  store %"compiler/typed:BlockInfo" %t83, ptr %l3
  %t84 = getelementptr %"compiler/typed:BlockInfo", ptr %l3, i32 0, i32 1
  %t85 = load i32, ptr %t84, !range !{i32 0, i32 10}
  %t87 = trunc i64 2 to i32
  %t88 = icmp eq i32 %t85, %t87
  br i1 %t88, label %bb22, label %bb23
bb22:
  %t90 = getelementptr %"compiler/typed:BlockInfo", ptr %l3, i32 0, i32 2
  %t91 = getelementptr %"compiler/source:Span", ptr %t90, i32 0, i32 0
  %t92 = load i32, ptr %t91, !tbaa !23
  %t93 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 1
  %t94 = getelementptr %"compiler/source:Span", ptr %t93, i32 0, i32 0
  %t95 = load i32, ptr %t94, !tbaa !23
  %t98 = icmp eq i32 %t92, %t95
  store i1 %t98, ptr %l45, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb24
bb24:
  %t100 = load i1, ptr %l45, !tbaa !21
  br i1 %t100, label %bb25, label %bb26
bb25:
  %t101 = getelementptr %"compiler/typed:BlockInfo", ptr %l3, i32 0, i32 2
  %t102 = getelementptr %"compiler/source:Span", ptr %t101, i32 0, i32 1
  %t103 = load i32, ptr %t102, !tbaa !23
  %t104 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 1
  %t105 = getelementptr %"compiler/source:Span", ptr %t104, i32 0, i32 1
  %t106 = load i32, ptr %t105, !tbaa !23
  %t109 = icmp eq i32 %t103, %t106
  store i1 %t109, ptr %l49, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb27
bb27:
  %t111 = load i1, ptr %l49, !tbaa !21
  store i1 %t111, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteDisagree(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, { i64, [2 x i64] } %a3, ptr %a4, { i64, [2 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l10 = alloca i64
  %l14 = alloca i1
  %l15 = alloca i1
  %l17 = alloca i1
  %l24 = alloca i1
  %l26 = alloca ptr
  %l29 = alloca ptr
  %l31 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i64
  %l45 = alloca ptr
  %l54 = alloca %"compiler/typed:Local"
  %l56 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a4, ptr %l4
  store { i64, [2 x i64] } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  store ptr %t3, ptr %l7, !tbaa !29
  %t7 = call i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %a3)
  store i1 %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load i1, ptr %l14, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t9 = load { i64, [2 x i64] }, ptr %l5
  %t11 = call i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %t9)
  store i1 %t11, ptr %l17
  br label %bb4
bb3:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb5
bb4:
  %t12 = load i1, ptr %l17, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l15, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = load ptr, ptr %l4, !tbaa !29
  store ptr %t16, ptr %l6, !tbaa !29
  store ptr %t18, ptr %l7, !tbaa !29
  br label %bb12
bb7:
  %t24 = load { i64, [2 x i64] }, ptr %l5
  %t26 = call i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %t24)
  store i1 %t26, ptr %l24
  br label %bb8
bb8:
  %t27 = load i1, ptr %l24, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l26, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l7, !tbaa !29
  store ptr %t32, ptr %l29, !tbaa !29
  %t34 = load ptr, ptr %l29, !tbaa !29
  %t35 = call ptr @__olang_scope_of(ptr %t34, ptr null)
  %t36 = ptrtoint ptr %t35 to i64
  %t38 = inttoptr i64 %t36 to ptr
  %t40 = load ptr, ptr %l29, !tbaa !29
  %t41 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %t38, ptr %s0, ptr %t31, ptr %t40)
  store ptr %t41, ptr %l31
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l31, !tbaa !29
  %t44 = call i64 @compiler_2fscope_2eflRootExpr(ptr %s0, ptr %t42)
  store i64 %t44, ptr %l33
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l26, !tbaa !29
  %t46 = load i64, ptr %l33, !tbaa !24
  %t47 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eshownLocal(ptr %v0, ptr %t45, i64 %t46, i64 0)
  store i64 %t47, ptr %l34
  br label %bb15
bb15:
  %t48 = load i64, ptr %l34, !tbaa !24
  store i64 %t48, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t51 = icmp slt i64 %t49, 0
  br i1 %t51, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  br label %bb18
bb18:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l37, !tbaa !29
  store i64 %a1, ptr %l38, !tbaa !24
  %t55 = load ptr, ptr %l6, !tbaa !29
  store ptr %t55, ptr %l40, !tbaa !29
  %t57 = load i64, ptr %l10, !tbaa !24
  store i64 %t57, ptr %l41, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/load:Loader", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l45, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 26
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_e3b1519f2cd9e3f_ab06c290896c8a23)
  unreachable
bb20:
  br label %bb21
bb21:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t75, i32 0, i32 26
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t78, i32 0, i32 7
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t81, i64 %t82)
  store %"compiler/typed:Local" %t85, ptr %l54
  br label %bb22
bb22:
  %t86 = getelementptr %"compiler/typed:Local", ptr %l54, i32 0, i32 0
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = load ptr, ptr %l45, !tbaa !29
  %t90 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t88, i32 %t87)
  store { i64, ptr } %t90, ptr %l56
  br label %bb23
bb23:
  %t91 = load ptr, ptr %l40, !tbaa !29
  %t92 = call ptr @__olang_scope_of(ptr %t91, ptr null)
  %t93 = ptrtoint ptr %t92 to i64
  %t95 = inttoptr i64 %t93 to ptr
  %t96 = load ptr, ptr %l37, !tbaa !29
  %t97 = load i64, ptr %l38, !tbaa !24
  %t98 = load ptr, ptr %l40, !tbaa !29
  %t99 = load i64, ptr %l41, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l56, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %t95, ptr %v0, ptr %t96, i64 %t97, ptr %t98, i64 %t99, { i64, ptr } %t100, i64 0)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i64
  %l11 = alloca i1
  %l14 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t2, ptr %a1)
  store i32 %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t8 = load i32, ptr %l7, !tbaa !23
  %t9 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sge i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load { i64, [2 x i64] }, ptr %l2
  %t17 = extractvalue { i64, [2 x i64] } %t15, 0
  %t18 = icmp eq i64 %t17, 2
  br i1 %t18, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb8
bb5:
  %t20 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t21 = getelementptr { i64 }, ptr %t20, i32 0, i32 0
  %t22 = load i64, ptr %t21
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp eq i64 %t22, %t23
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l14, !tbaa !21
  store i1 %t28, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l11, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoutermostLoop(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i32
  %l24 = alloca %"compiler/typed:BlockInfo"
  %l28 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 37
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t15, i64 %t16)
  store i32 %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load i32, ptr %l14, !tbaa !23
  store i32 %t20, ptr %l3, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 26
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_ba9f0d4a6ce4dfd1_bbc533a76e9c726d)
  unreachable
bb8:
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 26
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Body", ptr %t31, i32 0, i32 8
  %t35 = load i32, ptr %l3, !tbaa !23
  %t37 = sext i32 %t35 to i64
  %t40 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t34, i64 %t37)
  store %"compiler/typed:BlockInfo" %t40, ptr %l24
  br label %bb10
bb10:
  %t41 = getelementptr %"compiler/typed:BlockInfo", ptr %l24, i32 0, i32 1
  %t42 = load i32, ptr %t41, !range !{i32 0, i32 10}
  store i32 %t42, ptr %l4
  %t44 = load i32, ptr %l4, !range !{i32 0, i32 10}
  %t46 = trunc i64 2 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb13
bb12:
  %t49 = load i32, ptr %l4, !range !{i32 0, i32 10}
  %t51 = trunc i64 9 to i32
  %t52 = icmp eq i32 %t49, %t51
  store i1 %t52, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t54 = load i1, ptr %l28, !tbaa !21
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t55 = load i32, ptr %l3, !tbaa !23
  store i32 %t55, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t57 = load i64, ptr %l2, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l2, !tbaa !24
  br label %bb1
bb18:
  store i32 -1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOfOwn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i1
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
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %t2)
  store ptr %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l5, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t8, ptr %l6
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t10 = call i1 @compiler_2fscope_2epartRead(ptr %s0, ptr %t9)
  store i1 %t10, ptr %l7
  br label %bb3
bb3:
  %t11 = load i1, ptr %l7, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l9, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t17 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %t13, ptr %t14)
  store i64 %t17, ptr %l12
  br label %bb6
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb8
bb6:
  %t18 = load ptr, ptr %l9, !tbaa !29
  %t19 = load i64, ptr %l12, !tbaa !24
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsOwn(ptr %v0, ptr %t18, i64 %t19)
  store i1 %t20, ptr %l13
  br label %bb7
bb7:
  %t21 = load i1, ptr %l13, !tbaa !21
  store i1 %t21, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t22 = load i1, ptr %l8, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca i1
  %l27 = alloca { i64, [2 x i64] }
  %l31 = alloca { i64, [2 x i64] }
  %l37 = alloca { i64, [2 x i64] }
  %l38 = alloca ptr
  %l39 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l53 = alloca %"compiler/scope:Val"
  %l55 = alloca ptr
  %l56 = alloca i1
  %l66 = alloca { i64, [2 x i64] }
  %l67 = alloca ptr
  %l68 = alloca i1
  %l76 = alloca { i64, [2 x i64] }
  %l77 = alloca ptr
  %l78 = alloca i1
  %l86 = alloca { i64, [2 x i64] }
  %l87 = alloca ptr
  %l88 = alloca i1
  %l98 = alloca { i64, [2 x i64] }
  %l99 = alloca ptr
  %l100 = alloca i1
  %l105 = alloca i64
  %l107 = alloca ptr
  %l109 = alloca ptr
  %l112 = alloca i64
  %l114 = alloca ptr
  %l115 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t26 = alloca { i64, [2 x i64] }, align 8
  %t71 = alloca { i64, [2 x i64] }, align 8
  %t93 = alloca { i64, [2 x i64] }, align 8
  %t244 = alloca { i64, [2 x i64] }, align 8
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
  br label %bb15
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 36
  %t19 = load i32, ptr %l2, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t18, i64 %t21)
  store i1 %t24, ptr %l21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l21, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  store { i64, [2 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 0
  store i64 1, ptr %t27
  %t28 = insertvalue { i32 } undef, i32 0, 0
  %t29 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  store { i32 } %t28, ptr %t29
  %t30 = load { i64, [2 x i64] }, ptr %t26
  store { i64, [2 x i64] } %t30, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 34
  %t35 = load i32, ptr %l2, !tbaa !23
  %t37 = sext i32 %t35 to i64
  %t40 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t34, i64 %t37)
  store { i64, [2 x i64] } %t40, ptr %l27
  br label %bb10
bb10:
  %t41 = load { i64, [2 x i64] }, ptr %l27
  store { i64, [2 x i64] } %t41, ptr %l3
  %t42 = load { i64, [2 x i64] }, ptr %l3
  %t44 = extractvalue { i64, [2 x i64] } %t42, 0
  %t45 = icmp eq i64 %t44, 0
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t49 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t49, ptr %l31
  br label %bb14
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 35
  %t54 = load i32, ptr %l2, !tbaa !23
  %t56 = sext i32 %t54 to i64
  %t59 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t53, i64 %t56)
  store { i64, [2 x i64] } %t59, ptr %l37
  br label %bb13
bb13:
  %t60 = load { i64, [2 x i64] }, ptr %l37
  store { i64, [2 x i64] } %t60, ptr %l31
  br label %bb14
bb14:
  %t61 = load { i64, [2 x i64] }, ptr %l31
  store { i64, [2 x i64] } %t61, ptr %rv
  br label %ret
bb15:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t63 = load ptr, ptr %l38, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = load ptr, ptr %l38, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 8}
  %t69 = icmp eq i64 %t67, 1
  store i1 %t69, ptr %l39, !tbaa !21
  br label %bb17
bb17:
  %t70 = load i1, ptr %l39, !tbaa !21
  br i1 %t70, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store { i64, [2 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 0
  store i64 3, ptr %t72
  %t73 = load { i64, [2 x i64] }, ptr %t71
  store { i64, [2 x i64] } %t73, ptr %rv
  br label %ret
bb21:
  %t75 = load ptr, ptr %l1, !tbaa !29
  store ptr %t75, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t76 = load ptr, ptr %l43, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 8}
  %t82 = icmp eq i64 %t80, 2
  store i1 %t82, ptr %l44, !tbaa !21
  br label %bb23
bb23:
  %t83 = load i1, ptr %l44, !tbaa !21
  br i1 %t83, label %bb24, label %bb25
bb24:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l4, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l4, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [2 x i64] }, ptr %t93, i32 0, i32 0
  store i64 0, ptr %t94
  %t95 = load { i64, [2 x i64] }, ptr %t93
  %t99 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t90, ptr %t91, { i64, [2 x i64] } %t95)
  store %"compiler/scope:Val" %t99, ptr %l53
  br label %bb27
bb27:
  %t100 = getelementptr %"compiler/scope:Val", ptr %l53, i32 0, i32 1
  %t101 = load { i64, [2 x i64] }, ptr %t100
  store { i64, [2 x i64] } %t101, ptr %rv
  br label %ret
bb28:
  %t103 = load ptr, ptr %l1, !tbaa !29
  store ptr %t103, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t104 = load ptr, ptr %l55, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb29, label %bb30
bb29:
  %t107 = load ptr, ptr %l55, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 8}
  %t110 = icmp eq i64 %t108, 3
  store i1 %t110, ptr %l56, !tbaa !21
  br label %bb30
bb30:
  %t111 = load i1, ptr %l56, !tbaa !21
  br i1 %t111, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t114, i32 0, i32 2
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l5, !tbaa !29
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t120, i32 0, i32 3
  %t122 = load i64, ptr %t121
  store i64 %t122, ptr %l6, !tbaa !24
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l5, !tbaa !29
  %t126 = load i64, ptr %l6, !tbaa !24
  %t130 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldTerm(ptr %v0, ptr %v1, ptr %t124, ptr %t125, i64 %t126)
  store { i64, [2 x i64] } %t130, ptr %l66
  br label %bb34
bb34:
  %t131 = load { i64, [2 x i64] }, ptr %l66
  store { i64, [2 x i64] } %t131, ptr %rv
  br label %ret
bb35:
  %t132 = load ptr, ptr %l1, !tbaa !29
  store ptr %t132, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t133 = load ptr, ptr %l67, !tbaa !29
  %t134 = icmp ne ptr %t133, null
  br i1 %t134, label %bb36, label %bb37
bb36:
  %t136 = load ptr, ptr %l67, !tbaa !29
  %t137 = load i64, ptr %t136, !range !{i64 0, i64 8}
  %t139 = icmp eq i64 %t137, 4
  store i1 %t139, ptr %l68, !tbaa !21
  br label %bb37
bb37:
  %t140 = load i1, ptr %l68, !tbaa !21
  br i1 %t140, label %bb38, label %bb39
bb38:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr { i64, [4 x i64] }, ptr %t141, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t143, i32 0, i32 2
  %t145 = load ptr, ptr %t144
  store ptr %t145, ptr %l7, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l7, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Elem", ptr %t148, i32 0, i32 0
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t154 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t147, ptr %t151)
  store { i64, [2 x i64] } %t154, ptr %l76
  br label %bb41
bb41:
  %t155 = load { i64, [2 x i64] }, ptr %l76
  store { i64, [2 x i64] } %t155, ptr %rv
  br label %ret
bb42:
  %t156 = load ptr, ptr %l1, !tbaa !29
  store ptr %t156, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t157 = load ptr, ptr %l77, !tbaa !29
  %t158 = icmp ne ptr %t157, null
  br i1 %t158, label %bb43, label %bb44
bb43:
  %t160 = load ptr, ptr %l77, !tbaa !29
  %t161 = load i64, ptr %t160, !range !{i64 0, i64 8}
  %t163 = icmp eq i64 %t161, 5
  store i1 %t163, ptr %l78, !tbaa !21
  br label %bb44
bb44:
  %t164 = load i1, ptr %l78, !tbaa !21
  br i1 %t164, label %bb45, label %bb46
bb45:
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t167, i32 0, i32 2
  %t169 = load ptr, ptr %t168
  store ptr %t169, ptr %l8, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l8, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Payload", ptr %t172, i32 0, i32 0
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t178 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t171, ptr %t175)
  store { i64, [2 x i64] } %t178, ptr %l86
  br label %bb48
bb48:
  %t179 = load { i64, [2 x i64] }, ptr %l86
  store { i64, [2 x i64] } %t179, ptr %rv
  br label %ret
bb49:
  %t180 = load ptr, ptr %l1, !tbaa !29
  store ptr %t180, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t181 = load ptr, ptr %l87, !tbaa !29
  %t182 = icmp ne ptr %t181, null
  br i1 %t182, label %bb50, label %bb51
bb50:
  %t184 = load ptr, ptr %l87, !tbaa !29
  %t185 = load i64, ptr %t184, !range !{i64 0, i64 8}
  %t187 = icmp eq i64 %t185, 6
  store i1 %t187, ptr %l88, !tbaa !21
  br label %bb51
bb51:
  %t188 = load i1, ptr %l88, !tbaa !21
  br i1 %t188, label %bb52, label %bb53
bb52:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t191, i32 0, i32 2
  %t193 = load ptr, ptr %t192
  store ptr %t193, ptr %l9, !tbaa !29
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t197, i32 0, i32 3
  %t199 = load i32, ptr %t198
  store i32 %t199, ptr %l10, !tbaa !23
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l9, !tbaa !29
  %t203 = load i32, ptr %l10, !tbaa !23
  %t207 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempTerm(ptr %v0, ptr %v1, ptr %t201, ptr %t202, i32 %t203)
  store { i64, [2 x i64] } %t207, ptr %l98
  br label %bb55
bb55:
  %t208 = load { i64, [2 x i64] }, ptr %l98
  store { i64, [2 x i64] } %t208, ptr %rv
  br label %ret
bb56:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t210 = load ptr, ptr %l99, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb57, label %bb58
bb57:
  %t213 = load ptr, ptr %l99, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 8}
  %t216 = icmp eq i64 %t214, 7
  store i1 %t216, ptr %l100, !tbaa !21
  br label %bb58
bb58:
  %t217 = load i1, ptr %l100, !tbaa !21
  br i1 %t217, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb69
bb61:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/scope:Scoper", ptr %t218, i32 0, i32 60
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t220)
  store i64 %t222, ptr %l105
  br label %bb62
bb62:
  %t223 = load i64, ptr %l105, !tbaa !24
  %t224 = icmp sge i64 %t223, 2
  br i1 %t224, label %bb63, label %bb64
bb63:
  %t226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t226, ptr %l107, !tbaa !29
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/scope:Scoper", ptr %t227, i32 0, i32 60
  store ptr %t229, ptr %l109, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/scope:Scoper", ptr %t230, i32 0, i32 60
  %t234 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t232)
  store i64 %t234, ptr %l112
  br label %bb65
bb64:
  br label %bb68
bb65:
  %t235 = load i64, ptr %l112, !tbaa !24
  %t236 = sub i64 %t235, 2
  %t237 = load ptr, ptr %l109, !tbaa !29
  %t239 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t237, i64 %t236)
  store ptr %t239, ptr %l114
  br label %bb66
bb66:
  %t240 = load ptr, ptr %l107, !tbaa !29
  %t241 = load ptr, ptr %l114, !tbaa !29
  %t242 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v0, ptr %t240, ptr %t241)
  store { i64, [2 x i64] } %t242, ptr %l115
  br label %bb67
bb67:
  %t243 = load { i64, [2 x i64] }, ptr %l115
  store { i64, [2 x i64] } %t243, ptr %rv
  br label %ret
bb68:
  store { i64, [2 x i64] } zeroinitializer, ptr %t244
  %t245 = getelementptr { i64, [2 x i64] }, ptr %t244, i32 0, i32 0
  store i64 6, ptr %t245
  %t246 = load { i64, [2 x i64] }, ptr %t244
  store { i64, [2 x i64] } %t246, ptr %rv
  br label %ret
bb69:
  call void @__olang_check_failed(ptr @olang_loc_35a0db4bb33c4eca_64047b23f4523846)
  unreachable
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epayloadAgree(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i32
  %l14 = alloca %"compiler/scope:agreeAt"
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l52 = alloca i1
  %l53 = alloca { i64, ptr }
  %l56 = alloca i1
  %l58 = alloca i1
  %l59 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i1
  %l65 = alloca i32
  %l68 = alloca i1
  %l69 = alloca i1
  %l72 = alloca i1
  %l75 = alloca i1
  %l76 = alloca %"compiler/scope:agreeAt"
  %l80 = alloca { i64, ptr }
  %l84 = alloca %"compiler/scope:agreeAt"
  %l85 = alloca i32
  %l86 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i64
  %rv = alloca i1
  %t1 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [2 x i64] } zeroinitializer, ptr %t1
  %t2 = getelementptr { i64, [2 x i64] }, ptr %t1, i32 0, i32 0
  store i64 0, ptr %t2
  %t3 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t3, ptr %l3
  store i1 false, ptr %l4, !tbaa !21
  store i64 0, ptr %l5, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l7, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l9, !tbaa !24
  %t38 = load i64, ptr %l8, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb38
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l10, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l44, !tbaa !27
  %t56 = load i64, ptr %l10, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  store ptr %t61, ptr %l11, !tbaa !29
  %t63 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t63, ptr %l47, !tbaa !27
  %t64 = load i64, ptr %l10, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"compiler/scope:Val", ptr %t67, i64 %t64
  %t69 = getelementptr %"compiler/scope:Val", ptr %t68, i32 0, i32 0
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 5}
  %t72 = trunc i64 3 to i32
  %t73 = icmp eq i32 %t70, %t72
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb14
bb12:
  %t77 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t77, ptr %l53, !tbaa !27
  %t78 = load i64, ptr %l10, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr %"compiler/scope:Val", ptr %t81, i64 %t78
  %t83 = getelementptr %"compiler/scope:Val", ptr %t82, i32 0, i32 1
  %t84 = load { i64, [2 x i64] }, ptr %t83
  %t86 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t84)
  store i1 %t86, ptr %l56
  br label %bb13
bb13:
  %t87 = load i1, ptr %l56, !tbaa !21
  %t88 = xor i1 %t87, true
  store i1 %t88, ptr %l52, !tbaa !21
  br label %bb14
bb14:
  %t90 = load i1, ptr %l52, !tbaa !21
  br i1 %t90, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb19
bb16:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l59, !tbaa !29
  %t92 = load ptr, ptr %l11, !tbaa !29
  %t94 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t92)
  store i32 %t94, ptr %l61
  br label %bb17
bb17:
  %t95 = load ptr, ptr %l59, !tbaa !29
  %t96 = load i32, ptr %l61, !tbaa !23
  %t97 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t95, i32 %t96)
  store i1 %t97, ptr %l62
  br label %bb18
bb18:
  %t98 = load i1, ptr %l62, !tbaa !21
  %t99 = xor i1 %t98, true
  store i1 %t99, ptr %l58, !tbaa !21
  br label %bb19
bb19:
  %t101 = load i1, ptr %l58, !tbaa !21
  br i1 %t101, label %bb20, label %bb21
bb20:
  br label %bb37
bb21:
  br label %bb22
bb22:
  %t102 = load ptr, ptr %l11, !tbaa !29
  %t104 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t102)
  store i32 %t104, ptr %l65
  br label %bb23
bb23:
  %t105 = load i32, ptr %l65, !tbaa !23
  store i32 %t105, ptr %l12, !tbaa !23
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l12, !tbaa !23
  %t110 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t106, i32 %t107)
  store i1 %t110, ptr %l68
  br label %bb24
bb24:
  %t111 = load i1, ptr %l68, !tbaa !21
  br i1 %t111, label %bb25, label %bb26
bb25:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l12, !tbaa !23
  %t116 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l72
  br label %bb27
bb26:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l12, !tbaa !23
  %t121 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %t117, i32 %t118)
  store i1 %t121, ptr %l75
  br label %bb28
bb27:
  %t122 = load i1, ptr %l72, !tbaa !21
  store i1 %t122, ptr %l69, !tbaa !21
  br label %bb29
bb28:
  %t123 = load i1, ptr %l75, !tbaa !21
  store i1 %t123, ptr %l69, !tbaa !21
  br label %bb29
bb29:
  %t124 = load i1, ptr %l69, !tbaa !21
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load { i64, [2 x i64] }, ptr %l3
  %t127 = load i1, ptr %l4, !tbaa !21
  %t128 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t128, ptr %l80, !tbaa !27
  %t129 = load i64, ptr %l10, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr %"compiler/scope:Val", ptr %t132, i64 %t129
  %t134 = getelementptr %"compiler/scope:Val", ptr %t133, i32 0, i32 1
  %t135 = load { i64, [2 x i64] }, ptr %t134
  %t142 = call { i32, %"compiler/scope:agreeAt" } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eagreeStep(ptr %v0, ptr %t125, { i64, [2 x i64] } %t126, i1 %t127, { i64, [2 x i64] } %t135, i1 %t124)
  %t143 = extractvalue { i32, %"compiler/scope:agreeAt" } %t142, 1
  %t144 = extractvalue { i32, %"compiler/scope:agreeAt" } %t142, 0
  store i32 %t144, ptr %l85
  %t145 = icmp ne i32 %t144, 0
  br i1 %t145, label %bb31, label %ok.146, !prof !99
ok.146:
  store %"compiler/scope:agreeAt" %t143, ptr %l84
  br label %bb30
bb30:
  %t147 = load %"compiler/scope:agreeAt", ptr %l84
  store %"compiler/scope:agreeAt" %t147, ptr %l76
  br label %bb36
bb31:
  br label %bb32
bb32:
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l86, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l11, !tbaa !29
  %t153 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %t149, ptr %t150)
  store %"compiler/source:Span" %t153, ptr %l89
  br label %bb33
bb33:
  %t154 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadScopesDisagree(ptr %v0)
  store %"compiler/diagmsg:Msg" %t154, ptr %l90
  br label %bb34
bb34:
  %t155 = load ptr, ptr %l86, !tbaa !29
  %t156 = load %"compiler/source:Span", ptr %l89
  %t157 = load %"compiler/diagmsg:Msg", ptr %l90
  %t158 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t155, %"compiler/source:Span" %t156, %"compiler/diagmsg:Msg" %t157)
  store i64 %t158, ptr %l91
  br label %bb35
bb35:
  store i1 false, ptr %rv
  br label %ret
bb36:
  %t160 = load %"compiler/scope:agreeAt", ptr %l76
  store %"compiler/scope:agreeAt" %t160, ptr %l14
  %t161 = getelementptr %"compiler/scope:agreeAt", ptr %l14, i32 0, i32 0
  %t162 = load { i64, [2 x i64] }, ptr %t161
  %t164 = getelementptr %"compiler/scope:agreeAt", ptr %l14, i32 0, i32 1
  %t165 = load i1, ptr %t164, !tbaa !21
  store { i64, [2 x i64] } %t162, ptr %l3
  store i1 %t165, ptr %l4, !tbaa !21
  br label %bb37
bb37:
  %t171 = load i64, ptr %l9, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l9, !tbaa !24
  br label %bb7
bb38:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeFrom(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3, i64 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i1
  %l22 = alloca i1
  %l23 = alloca ptr
  %l32 = alloca %"compiler/typed:Local"
  %l34 = alloca i1
  %l38 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l66 = alloca i1
  %l67 = alloca i64
  %l70 = alloca i64
  %l74 = alloca i1
  %l77 = alloca i1
  %l86 = alloca i64
  %l88 = alloca i64
  %l92 = alloca i64
  %l93 = alloca i32
  %l97 = alloca i64
  %l102 = alloca i1
  %l103 = alloca i64
  %l106 = alloca i64
  %l108 = alloca i1
  %l112 = alloca i64
  %l114 = alloca i1
  %l117 = alloca i64
  %l119 = alloca ptr
  %l123 = alloca ptr
  %l124 = alloca i32
  %l128 = alloca i1
  %l131 = alloca ptr
  %l134 = alloca i1
  %l137 = alloca i1
  %l147 = alloca i1
  %l148 = alloca i64
  %l151 = alloca i64
  %l153 = alloca i1
  %l157 = alloca i64
  %l159 = alloca ptr
  %l163 = alloca ptr
  %l164 = alloca i32
  %l168 = alloca i1
  %l172 = alloca ptr
  %l173 = alloca ptr
  %l174 = alloca i1
  %l175 = alloca i1
  %l178 = alloca i1
  %l179 = alloca i1
  %l181 = alloca i1
  %l182 = alloca i1
  %l185 = alloca i1
  %l200 = alloca i1
  %l204 = alloca ptr
  %l205 = alloca ptr
  %l206 = alloca ptr
  %l213 = alloca i1
  %l215 = alloca i1
  %l216 = alloca i1
  %l219 = alloca i1
  %l220 = alloca i1
  %l221 = alloca ptr
  %l230 = alloca %"compiler/typed:Local"
  %l232 = alloca i1
  %l234 = alloca i1
  %l237 = alloca i1
  %l244 = alloca i64
  %l247 = alloca i1
  %l251 = alloca i64
  %l261 = alloca ptr
  %l262 = alloca i64
  %l263 = alloca { i64, [2 x i64] }
  %l264 = alloca ptr
  %l273 = alloca %"compiler/typed:Local"
  %l275 = alloca i1
  %l278 = alloca i1
  %l282 = alloca i1
  %l283 = alloca ptr
  %l287 = alloca ptr
  %l288 = alloca i32
  %l294 = alloca i64
  %l297 = alloca i64
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  store i1 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load { i64, [2 x i64] }, ptr %l2
  %t4 = load i1, ptr %l3, !tbaa !21
  %t9 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftBinding(ptr %v0, ptr %t1, i64 %t2, { i64, [2 x i64] } %t3, i1 %t4)
  store i1 %t9, ptr %l21
  br label %bb1
bb1:
  %t10 = load i1, ptr %l21, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l23, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 26
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb9
bb4:
  call void @__olang_check_failed(ptr @olang_loc_77b9c3fe239f8a15_7d2ae6753660d6f1)
  unreachable
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 26
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Body", ptr %t22, i32 0, i32 7
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t25, i64 %t26)
  store %"compiler/typed:Local" %t29, ptr %l32
  br label %bb7
bb7:
  %t30 = getelementptr %"compiler/typed:Local", ptr %l32, i32 0, i32 2
  %t31 = load i32, ptr %t30, !tbaa !23
  %t32 = load ptr, ptr %l23, !tbaa !29
  %t34 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t32, i32 %t31)
  store i1 %t34, ptr %l34
  br label %bb8
bb8:
  %t35 = load i1, ptr %l34, !tbaa !21
  %t36 = xor i1 %t35, true
  store i1 %t36, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l22, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  br label %ret
bb11:
  br label %bb12
bb12:
  store i64 0, ptr %l6, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 194
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l38
  br label %bb13
bb13:
  %t44 = load i64, ptr %l38, !tbaa !24
  %t45 = add i64 %t44, 1
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp sgt i64 %t47, %t48
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp sgt i64 %t53, 0
  br i1 %t55, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb19
bb16:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = sub i64 %t57, %t58
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t61, %t62
  %t67 = sub i64 %t65, 1
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = sdiv i64 %t67, %t68
  store i64 %t71, ptr %l46, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb18
bb18:
  %t73 = load i64, ptr %l46, !tbaa !24
  store i64 %t73, ptr %l43, !tbaa !24
  br label %bb19
bb19:
  %t74 = load i64, ptr %l43, !tbaa !24
  store i64 %t74, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb20
bb20:
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb21, label %bb22
bb21:
  br label %bb49
bb22:
  br label %bb23
bb23:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = mul i64 %t84, %t85
  %t91 = add i64 %t83, %t88
  store i64 %t91, ptr %l11, !tbaa !24
  %t93 = load i64, ptr %l1, !tbaa !24
  %t95 = icmp slt i64 %t93, 0
  br i1 %t95, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb27
bb25:
  %t97 = load i64, ptr %l1, !tbaa !24
  store i64 %t97, ptr %l67, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/scope:Scoper", ptr %t98, i32 0, i32 194
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l70
  br label %bb26
bb26:
  %t103 = load i64, ptr %l67, !tbaa !24
  %t104 = load i64, ptr %l70, !tbaa !24
  %t105 = icmp sge i64 %t103, %t104
  store i1 %t105, ptr %l66, !tbaa !21
  br label %bb27
bb27:
  %t107 = load i1, ptr %l66, !tbaa !21
  br i1 %t107, label %bb28, label %bb29
bb28:
  br label %bb49
bb29:
  br label %bb30
bb30:
  %t108 = load i1, ptr %l5, !tbaa !21
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l1, !tbaa !24
  %t116 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t112, i64 %t113)
  store i1 %t116, ptr %l77
  br label %bb33
bb32:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb34
bb33:
  %t117 = load i1, ptr %l77, !tbaa !21
  store i1 %t117, ptr %l74, !tbaa !21
  br label %bb34
bb34:
  %t118 = load i1, ptr %l74, !tbaa !21
  br i1 %t118, label %bb35, label %bb36
bb35:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i64, ptr %l1, !tbaa !24
  %t121 = load { i64, [2 x i64] }, ptr %l2
  %t122 = load i1, ptr %l3, !tbaa !21
  %t123 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCursor(ptr %v0, ptr %t119, i64 %t120, { i64, [2 x i64] } %t121, i1 %t122, i64 %t123)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %ret
bb38:
  store i1 false, ptr %l5, !tbaa !21
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/scope:Scoper", ptr %t129, i32 0, i32 194
  %t132 = load i64, ptr %l1, !tbaa !24
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t131, i64 %t132)
  store i64 %t135, ptr %l86
  br label %bb39
bb39:
  %t136 = load i64, ptr %l86, !tbaa !24
  %t137 = icmp slt i64 %t136, 0
  br i1 %t137, label %bb40, label %bb41
bb40:
  br label %bb49
bb41:
  br label %bb42
bb42:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/scope:Scoper", ptr %t139, i32 0, i32 189
  %t142 = load i64, ptr %l1, !tbaa !24
  %t145 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t141, i64 %t142)
  %t146 = extractvalue { i32, i64 } %t145, 1
  %t147 = extractvalue { i32, i64 } %t145, 0
  store i32 %t147, ptr %l93
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb44, label %ok.149, !prof !99
ok.149:
  store i64 %t146, ptr %l92
  br label %bb43
bb43:
  %t150 = load i64, ptr %l92, !tbaa !24
  store i64 %t150, ptr %l88, !tbaa !24
  br label %bb46
bb44:
  br label %bb45
bb45:
  store i64 -1, ptr %l88, !tbaa !24
  br label %bb46
bb46:
  %t151 = load i64, ptr %l88, !tbaa !24
  store i64 %t151, ptr %l4, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 194
  %t155 = load i64, ptr %l1, !tbaa !24
  %t158 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t154, i64 %t155)
  store i64 %t158, ptr %l97
  br label %bb47
bb47:
  %t159 = load i64, ptr %l97, !tbaa !24
  store i64 %t159, ptr %l1, !tbaa !24
  br label %bb48
bb48:
  %t160 = load i64, ptr %l10, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l10, !tbaa !24
  br label %bb20
bb49:
  %t164 = load i64, ptr %l1, !tbaa !24
  %t166 = icmp sge i64 %t164, 0
  br i1 %t166, label %bb50, label %bb51
bb50:
  %t168 = load i64, ptr %l1, !tbaa !24
  store i64 %t168, ptr %l103, !tbaa !24
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/scope:Scoper", ptr %t169, i32 0, i32 194
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t171)
  store i64 %t173, ptr %l106
  br label %bb52
bb51:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb53
bb52:
  %t174 = load i64, ptr %l103, !tbaa !24
  %t175 = load i64, ptr %l106, !tbaa !24
  %t176 = icmp slt i64 %t174, %t175
  store i1 %t176, ptr %l102, !tbaa !21
  br label %bb53
bb53:
  %t178 = load i1, ptr %l102, !tbaa !21
  br i1 %t178, label %bb54, label %bb55
bb54:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/scope:Scoper", ptr %t179, i32 0, i32 194
  %t182 = load i64, ptr %l1, !tbaa !24
  %t185 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t181, i64 %t182)
  store i64 %t185, ptr %l112
  br label %bb56
bb55:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb57
bb56:
  %t186 = load i64, ptr %l112, !tbaa !24
  %t187 = icmp eq i64 %t186, -2
  store i1 %t187, ptr %l108, !tbaa !21
  br label %bb57
bb57:
  %t189 = load i1, ptr %l108, !tbaa !21
  br i1 %t189, label %bb58, label %bb59
bb58:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i64, ptr %l1, !tbaa !24
  %t194 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewedBy(ptr %v0, ptr %t190, i64 %t191)
  store i64 %t194, ptr %l117
  br label %bb60
bb59:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb61
bb60:
  %t195 = load i64, ptr %l117, !tbaa !24
  %t196 = icmp slt i64 %t195, 0
  store i1 %t196, ptr %l114, !tbaa !21
  br label %bb61
bb61:
  %t198 = load i1, ptr %l114, !tbaa !21
  br i1 %t198, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s8
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/scope:Scoper", ptr %t199, i32 0, i32 45
  %t202 = load i64, ptr %l1, !tbaa !24
  %t205 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t201, i64 %t202)
  %t206 = extractvalue { i32, ptr } %t205, 1
  %t207 = extractvalue { i32, ptr } %t205, 0
  store i32 %t207, ptr %l124
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb65, label %ok.209, !prof !99
ok.209:
  store ptr %t206, ptr %l123
  br label %bb64
bb63:
  br label %bb83
bb64:
  %t210 = load ptr, ptr %l123, !tbaa !29
  store ptr %t210, ptr %l119, !tbaa !29
  br label %bb67
bb65:
  br label %bb66
bb66:
  store ptr null, ptr %l119, !tbaa !29
  br label %bb67
bb67:
  %t211 = load ptr, ptr %l119, !tbaa !29
  store ptr %t211, ptr %l12, !tbaa !29
  %t212 = load ptr, ptr %l12, !tbaa !29
  %t214 = icmp eq ptr %t212, null
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb68, label %bb69
bb68:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load ptr, ptr %l12, !tbaa !29
  %t222 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedCall(ptr %v0, ptr %v0, ptr %s8, ptr %t218, ptr %t219)
  store ptr %t222, ptr %l131
  br label %bb70
bb69:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb75
bb70:
  %t223 = load ptr, ptr %l131, !tbaa !29
  %t224 = icmp eq ptr %t223, null
  %t226 = xor i1 %t224, true
  br i1 %t226, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb74
bb72:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load ptr, ptr %l12, !tbaa !29
  %t232 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceInit(ptr %v0, ptr %v0, ptr %t228, ptr %t229)
  store i1 %t232, ptr %l137
  br label %bb73
bb73:
  %t233 = load i1, ptr %l137, !tbaa !21
  store i1 %t233, ptr %l134, !tbaa !21
  br label %bb74
bb74:
  %t234 = load i1, ptr %l134, !tbaa !21
  store i1 %t234, ptr %l128, !tbaa !21
  br label %bb75
bb75:
  %t235 = load i1, ptr %l128, !tbaa !21
  br i1 %t235, label %bb76, label %bb77
bb76:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/scope:Scoper", ptr %t236, i32 0, i32 207
  %t239 = load i1, ptr %t238, !tbaa !21
  %t241 = xor i1 %t239, true
  br i1 %t241, label %bb78, label %bb79
bb77:
  br label %bb82
bb78:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/scope:Scoper", ptr %t243, i32 0, i32 210
  store i1 true, ptr %t245, !tbaa !21
  call void @__olang_scope_close(ptr %s8)
  br label %ret
bb79:
  br label %bb80
bb80:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l12, !tbaa !29
  %t248 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v0, ptr %t246, ptr %t247, { i64, [2 x i64] } %t248)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s8)
  br label %ret
bb82:
  call void @__olang_scope_close(ptr %s8)
  br label %bb83
bb83:
  %t252 = load i64, ptr %l1, !tbaa !24
  %t254 = icmp sge i64 %t252, 0
  br i1 %t254, label %bb84, label %bb85
bb84:
  %t256 = load i64, ptr %l1, !tbaa !24
  store i64 %t256, ptr %l148, !tbaa !24
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/scope:Scoper", ptr %t257, i32 0, i32 194
  %t261 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t259)
  store i64 %t261, ptr %l151
  br label %bb86
bb85:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb87
bb86:
  %t262 = load i64, ptr %l148, !tbaa !24
  %t263 = load i64, ptr %l151, !tbaa !24
  %t264 = icmp slt i64 %t262, %t263
  store i1 %t264, ptr %l147, !tbaa !21
  br label %bb87
bb87:
  %t266 = load i1, ptr %l147, !tbaa !21
  br i1 %t266, label %bb88, label %bb89
bb88:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/scope:Scoper", ptr %t267, i32 0, i32 194
  %t270 = load i64, ptr %l1, !tbaa !24
  %t273 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t269, i64 %t270)
  store i64 %t273, ptr %l157
  br label %bb90
bb89:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb91
bb90:
  %t274 = load i64, ptr %l157, !tbaa !24
  %t275 = icmp eq i64 %t274, -2
  store i1 %t275, ptr %l153, !tbaa !21
  br label %bb91
bb91:
  %t277 = load i1, ptr %l153, !tbaa !21
  br i1 %t277, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s11
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/scope:Scoper", ptr %t278, i32 0, i32 45
  %t281 = load i64, ptr %l1, !tbaa !24
  %t284 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t280, i64 %t281)
  %t285 = extractvalue { i32, ptr } %t284, 1
  %t286 = extractvalue { i32, ptr } %t284, 0
  store i32 %t286, ptr %l164
  %t287 = icmp ne i32 %t286, 0
  br i1 %t287, label %bb95, label %ok.288, !prof !99
ok.288:
  store ptr %t285, ptr %l163
  br label %bb94
bb93:
  br label %bb158
bb94:
  %t289 = load ptr, ptr %l163, !tbaa !29
  store ptr %t289, ptr %l159, !tbaa !29
  br label %bb97
bb95:
  br label %bb96
bb96:
  store ptr null, ptr %l159, !tbaa !29
  br label %bb97
bb97:
  %t290 = load ptr, ptr %l159, !tbaa !29
  store ptr %t290, ptr %l13, !tbaa !29
  %t291 = load ptr, ptr %l13, !tbaa !29
  %t293 = icmp eq ptr %t291, null
  %t295 = xor i1 %t293, true
  br i1 %t295, label %bb98, label %bb99
bb98:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load ptr, ptr %l13, !tbaa !29
  %t302 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v0, ptr %s11, ptr %t297, ptr %t298)
  store ptr %t302, ptr %l172
  br label %bb100
bb99:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb103
bb100:
  %t303 = load ptr, ptr %l172, !tbaa !29
  %t304 = call ptr @compiler_2fscope_2eunPassed(ptr %s11, ptr %s11, ptr %t303)
  store ptr %t304, ptr %l173
  br label %bb101
bb101:
  %t305 = load ptr, ptr %l173, !tbaa !29
  %t306 = call i1 @compiler_2fscope_2eisLambda(ptr %s11, ptr %t305)
  store i1 %t306, ptr %l174
  br label %bb102
bb102:
  %t307 = load i1, ptr %l174, !tbaa !21
  store i1 %t307, ptr %l168, !tbaa !21
  br label %bb103
bb103:
  %t308 = load i1, ptr %l168, !tbaa !21
  br i1 %t308, label %bb104, label %bb105
bb104:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load i64, ptr %l1, !tbaa !24
  %t313 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %t309, i64 %t310)
  store i1 %t313, ptr %l178
  br label %bb106
bb105:
  store i1 false, ptr %l175, !tbaa !21
  br label %bb107
bb106:
  %t314 = load i1, ptr %l178, !tbaa !21
  store i1 %t314, ptr %l175, !tbaa !21
  br label %bb107
bb107:
  %t315 = load i1, ptr %l175, !tbaa !21
  br i1 %t315, label %bb108, label %bb109
bb108:
  %t316 = load { i64, [2 x i64] }, ptr %l2
  %t318 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t316)
  store i1 %t318, ptr %l181
  br label %bb110
bb109:
  store i1 false, ptr %l179, !tbaa !21
  br label %bb111
bb110:
  %t319 = load i1, ptr %l181, !tbaa !21
  store i1 %t319, ptr %l179, !tbaa !21
  br label %bb111
bb111:
  %t320 = load i1, ptr %l179, !tbaa !21
  br i1 %t320, label %bb112, label %bb113
bb112:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load { i64, [2 x i64] }, ptr %l2
  %t325 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %t321, { i64, [2 x i64] } %t322)
  store i1 %t325, ptr %l185
  br label %bb114
bb113:
  store i1 false, ptr %l182, !tbaa !21
  br label %bb115
bb114:
  %t326 = load i1, ptr %l185, !tbaa !21
  %t327 = xor i1 %t326, true
  store i1 %t327, ptr %l182, !tbaa !21
  br label %bb115
bb115:
  %t329 = load i1, ptr %l182, !tbaa !21
  br i1 %t329, label %bb116, label %bb117
bb116:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/scope:Scoper", ptr %t330, i32 0, i32 207
  %t333 = load i1, ptr %t332, !tbaa !21
  %t335 = xor i1 %t333, true
  br i1 %t335, label %bb118, label %bb119
bb117:
  br label %bb123
bb118:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/scope:Scoper", ptr %t337, i32 0, i32 210
  store i1 true, ptr %t339, !tbaa !21
  call void @__olang_scope_close(ptr %s11)
  br label %ret
bb119:
  br label %bb120
bb120:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load i64, ptr %l1, !tbaa !24
  %t342 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftStorage(ptr %v0, ptr %t340, i64 %t341, { i64, [2 x i64] } %t342)
  br label %bb121
bb121:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load ptr, ptr %l13, !tbaa !29
  %t348 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v0, ptr %t346, ptr %t347, { i64, [2 x i64] } %t348)
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s11)
  br label %ret
bb123:
  %t352 = load ptr, ptr %l13, !tbaa !29
  %t354 = icmp eq ptr %t352, null
  %t356 = xor i1 %t354, true
  br i1 %t356, label %bb124, label %bb125
bb124:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load ptr, ptr %l13, !tbaa !29
  %t363 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v0, ptr %s11, ptr %t358, ptr %t359)
  store ptr %t363, ptr %l204
  br label %bb126
bb125:
  store i1 false, ptr %l200, !tbaa !21
  br label %bb129
bb126:
  %t364 = load ptr, ptr %l204, !tbaa !29
  %t365 = call ptr @compiler_2fscope_2eunPassed(ptr %s11, ptr %s11, ptr %t364)
  store ptr %t365, ptr %l205
  br label %bb127
bb127:
  %t366 = load ptr, ptr %l205, !tbaa !29
  %t367 = call ptr @compiler_2fscope_2eprojectedCall(ptr %s11, ptr %s11, ptr %t366)
  store ptr %t367, ptr %l206
  br label %bb128
bb128:
  %t368 = load ptr, ptr %l206, !tbaa !29
  %t369 = icmp eq ptr %t368, null
  %t371 = xor i1 %t369, true
  store i1 %t371, ptr %l200, !tbaa !21
  br label %bb129
bb129:
  %t373 = load i1, ptr %l200, !tbaa !21
  br i1 %t373, label %bb130, label %bb131
bb130:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t375 = load ptr, ptr %l13, !tbaa !29
  %t376 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v0, ptr %t374, ptr %t375, { i64, [2 x i64] } %t376)
  br label %bb132
bb131:
  br label %bb157
bb132:
  %t380 = load i1, ptr %l3, !tbaa !21
  br i1 %t380, label %bb133, label %bb134
bb133:
  %t382 = load { i64, [2 x i64] }, ptr %l2
  %t384 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t382)
  store i1 %t384, ptr %l215
  br label %bb135
bb134:
  store i1 false, ptr %l213, !tbaa !21
  br label %bb136
bb135:
  %t385 = load i1, ptr %l215, !tbaa !21
  store i1 %t385, ptr %l213, !tbaa !21
  br label %bb136
bb136:
  %t386 = load i1, ptr %l213, !tbaa !21
  br i1 %t386, label %bb137, label %bb138
bb137:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load i64, ptr %l1, !tbaa !24
  %t391 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %t387, i64 %t388)
  store i1 %t391, ptr %l219
  br label %bb139
bb138:
  store i1 false, ptr %l216, !tbaa !21
  br label %bb140
bb139:
  %t392 = load i1, ptr %l219, !tbaa !21
  store i1 %t392, ptr %l216, !tbaa !21
  br label %bb140
bb140:
  %t393 = load i1, ptr %l216, !tbaa !21
  br i1 %t393, label %bb141, label %bb142
bb141:
  %t394 = load ptr, ptr %l0, !tbaa !29
  store ptr %t394, ptr %l221, !tbaa !29
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/scope:Scoper", ptr %t395, i32 0, i32 26
  %t398 = load ptr, ptr %t397, !tbaa !29
  %t400 = icmp eq ptr %t398, null
  br i1 %t400, label %bb143, label %bb144
bb142:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb148
bb143:
  call void @__olang_check_failed(ptr @olang_loc_6ccee791db7b4e6e_13269d22c1889aea)
  unreachable
bb144:
  br label %bb145
bb145:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr %"compiler/scope:Scoper", ptr %t402, i32 0, i32 26
  %t405 = load ptr, ptr %t404, !tbaa !29
  %t408 = getelementptr %"compiler/typed:Body", ptr %t405, i32 0, i32 7
  %t409 = load i64, ptr %l1, !tbaa !24
  %t412 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t408, i64 %t409)
  store %"compiler/typed:Local" %t412, ptr %l230
  br label %bb146
bb146:
  %t413 = getelementptr %"compiler/typed:Local", ptr %l230, i32 0, i32 2
  %t414 = load i32, ptr %t413, !tbaa !23
  %t415 = load ptr, ptr %l221, !tbaa !29
  %t417 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t415, i32 %t414)
  store i1 %t417, ptr %l232
  br label %bb147
bb147:
  %t418 = load i1, ptr %l232, !tbaa !21
  %t419 = xor i1 %t418, true
  store i1 %t419, ptr %l220, !tbaa !21
  br label %bb148
bb148:
  %t421 = load i1, ptr %l220, !tbaa !21
  br i1 %t421, label %bb149, label %bb150
bb149:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load { i64, [2 x i64] }, ptr %l2
  %t426 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %t422, { i64, [2 x i64] } %t423)
  store i1 %t426, ptr %l237
  br label %bb151
bb150:
  store i1 false, ptr %l234, !tbaa !21
  br label %bb152
bb151:
  %t427 = load i1, ptr %l237, !tbaa !21
  %t428 = xor i1 %t427, true
  store i1 %t428, ptr %l234, !tbaa !21
  br label %bb152
bb152:
  %t430 = load i1, ptr %l234, !tbaa !21
  br i1 %t430, label %bb153, label %bb154
bb153:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load i64, ptr %l1, !tbaa !24
  %t433 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftStorage(ptr %v0, ptr %t431, i64 %t432, { i64, [2 x i64] } %t433)
  br label %bb155
bb154:
  br label %bb156
bb155:
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s11)
  br label %ret
bb157:
  call void @__olang_scope_close(ptr %s11)
  br label %bb158
bb158:
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load i64, ptr %l1, !tbaa !24
  %t441 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewedBy(ptr %v0, ptr %t437, i64 %t438)
  store i64 %t441, ptr %l244
  br label %bb159
bb159:
  %t442 = load i64, ptr %l244, !tbaa !24
  store i64 %t442, ptr %l14, !tbaa !24
  %t443 = load i64, ptr %l14, !tbaa !24
  %t445 = icmp sge i64 %t443, 0
  br i1 %t445, label %bb160, label %bb161
bb160:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/scope:Scoper", ptr %t447, i32 0, i32 194
  %t450 = load i64, ptr %l1, !tbaa !24
  %t453 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t449, i64 %t450)
  store i64 %t453, ptr %l251
  br label %bb162
bb161:
  store i1 false, ptr %l247, !tbaa !21
  br label %bb163
bb162:
  %t454 = load i64, ptr %l251, !tbaa !24
  %t455 = icmp eq i64 %t454, -2
  store i1 %t455, ptr %l247, !tbaa !21
  br label %bb163
bb163:
  %t457 = load i1, ptr %l247, !tbaa !21
  br i1 %t457, label %bb164, label %bb165
bb164:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/scope:Scoper", ptr %t458, i32 0, i32 207
  %t461 = load i1, ptr %t460, !tbaa !21
  %t463 = xor i1 %t461, true
  br i1 %t463, label %bb166, label %bb167
bb165:
  br label %bb176
bb166:
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t467 = getelementptr %"compiler/scope:Scoper", ptr %t465, i32 0, i32 210
  store i1 true, ptr %t467, !tbaa !21
  br label %ret
bb167:
  br label %bb168
bb168:
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t469 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceView, !tbaa !24
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t472 = getelementptr %"compiler/scope:Scoper", ptr %t470, i32 0, i32 215
  %t473 = load %"compiler/source:Span", ptr %t472
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %t468, i64 %t469, %"compiler/source:Span" %t473)
  br label %bb169
bb169:
  %t477 = load ptr, ptr %l0, !tbaa !29
  store ptr %t477, ptr %l261, !tbaa !29
  %t478 = load i64, ptr %l14, !tbaa !24
  store i64 %t478, ptr %l262, !tbaa !24
  %t479 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t479, ptr %l263
  %t480 = load ptr, ptr %l0, !tbaa !29
  store ptr %t480, ptr %l264, !tbaa !29
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = getelementptr %"compiler/scope:Scoper", ptr %t481, i32 0, i32 26
  %t484 = load ptr, ptr %t483, !tbaa !29
  %t486 = icmp eq ptr %t484, null
  br i1 %t486, label %bb170, label %bb171
bb170:
  call void @__olang_check_failed(ptr @olang_loc_68c26a056650fe9f_5036bfb83c207a6b)
  unreachable
bb171:
  br label %bb172
bb172:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t490 = getelementptr %"compiler/scope:Scoper", ptr %t488, i32 0, i32 26
  %t491 = load ptr, ptr %t490, !tbaa !29
  %t494 = getelementptr %"compiler/typed:Body", ptr %t491, i32 0, i32 7
  %t495 = load i64, ptr %l14, !tbaa !24
  %t498 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t494, i64 %t495)
  store %"compiler/typed:Local" %t498, ptr %l273
  br label %bb173
bb173:
  %t499 = getelementptr %"compiler/typed:Local", ptr %l273, i32 0, i32 2
  %t500 = load i32, ptr %t499, !tbaa !23
  %t501 = load ptr, ptr %l264, !tbaa !29
  %t503 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t501, i32 %t500)
  store i1 %t503, ptr %l275
  br label %bb174
bb174:
  %t504 = load ptr, ptr %l261, !tbaa !29
  %t505 = load i64, ptr %l262, !tbaa !24
  %t506 = load { i64, [2 x i64] }, ptr %l263
  %t507 = load i1, ptr %l275, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeStorage(ptr %v0, ptr %t504, i64 %t505, { i64, [2 x i64] } %t506, i1 %t507)
  br label %bb175
bb175:
  br label %ret
bb176:
  %t508 = load i64, ptr %l1, !tbaa !24
  %t510 = icmp sge i64 %t508, 0
  br i1 %t510, label %bb177, label %bb178
bb177:
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t514 = getelementptr %"compiler/scope:Scoper", ptr %t512, i32 0, i32 43
  %t515 = load i64, ptr %l1, !tbaa !24
  %t518 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %t514, i64 %t515)
  store i1 %t518, ptr %l282
  br label %bb179
bb178:
  store i1 false, ptr %l278, !tbaa !21
  br label %bb180
bb179:
  %t519 = load i1, ptr %l282, !tbaa !21
  store i1 %t519, ptr %l278, !tbaa !21
  br label %bb180
bb180:
  %t520 = load i1, ptr %l278, !tbaa !21
  br i1 %t520, label %bb181, label %bb182
bb181:
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t523 = getelementptr %"compiler/scope:Scoper", ptr %t521, i32 0, i32 43
  %t524 = load i64, ptr %l1, !tbaa !24
  %t527 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t523, i64 %t524)
  %t528 = extractvalue { i32, ptr } %t527, 1
  %t529 = extractvalue { i32, ptr } %t527, 0
  store i32 %t529, ptr %l288
  %t530 = icmp ne i32 %t529, 0
  br i1 %t530, label %bb184, label %ok.531, !prof !99
ok.531:
  store ptr %t528, ptr %l287
  br label %bb183
bb182:
  br label %bb188
bb183:
  %t532 = load ptr, ptr %l287, !tbaa !29
  store ptr %t532, ptr %l283, !tbaa !29
  br label %bb186
bb184:
  br label %bb185
bb185:
  br label %ret
bb186:
  %t533 = load ptr, ptr %l283, !tbaa !29
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t536 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %v0, ptr %t534, ptr %t533, { i64, [2 x i64] } %t536)
  br label %bb187
bb187:
  br label %ret
bb188:
  %t540 = load i64, ptr %l1, !tbaa !24
  %t542 = icmp sge i64 %t540, 0
  br i1 %t542, label %bb189, label %bb190
bb189:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t545 = load i64, ptr %l1, !tbaa !24
  %t548 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldCall(ptr %v0, ptr %t544, i64 %t545)
  store i64 %t548, ptr %l297
  br label %bb191
bb190:
  store i64 -1, ptr %l294, !tbaa !24
  br label %bb192
bb191:
  %t549 = load i64, ptr %l297, !tbaa !24
  store i64 %t549, ptr %l294, !tbaa !24
  br label %bb192
bb192:
  %t550 = load i64, ptr %l294, !tbaa !24
  store i64 %t550, ptr %l16, !tbaa !24
  %t551 = load i64, ptr %l16, !tbaa !24
  %t553 = icmp sge i64 %t551, 0
  br i1 %t553, label %bb193, label %bb194
bb193:
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t556 = load i64, ptr %l16, !tbaa !24
  %t557 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %t555, i64 %t556, { i64, [2 x i64] } %t557)
  br label %bb195
bb194:
  br label %bb196
bb195:
  br label %ret
bb196:
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t562 = load i64, ptr %l1, !tbaa !24
  %t563 = load { i64, [2 x i64] }, ptr %l2
  %t564 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftLocal(ptr %v0, ptr %t561, i64 %t562, { i64, [2 x i64] } %t563, i1 %t564)
  br label %bb197
bb197:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereachFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l11 = alloca i1
  %l14 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca i64
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a2, ptr %l3, !tbaa !24
  %t3 = load i64, ptr %l3, !tbaa !24
  %t5 = icmp slt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 190
  %t10 = load i64, ptr %t9, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp slt i64 %t12, 0
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 163
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l14
  br label %bb6
bb5:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb6:
  %t21 = load i64, ptr %l14, !tbaa !24
  %t22 = icmp sgt i64 %t21, 0
  store i1 %t22, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 163
  store ptr %t27, ptr %l17, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 163
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l20
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t33 = load i64, ptr %l20, !tbaa !24
  %t34 = sub i64 %t33, 1
  %t35 = load ptr, ptr %l17, !tbaa !29
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t35, i64 %t34)
  store i64 %t37, ptr %l22
  br label %bb11
bb11:
  %t38 = load i64, ptr %l22, !tbaa !24
  store i64 %t38, ptr %l3, !tbaa !24
  br label %bb12
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 159
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8906caa07fce1c41_2423601c580ca5fd)
  unreachable
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 159
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load i64, ptr %l3, !tbaa !24
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReaching(ptr %v0, ptr %v1, ptr %t49, i64 %t50, i64 %a1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l30
  br label %bb16
bb16:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecBeta(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/scope:fnRec" %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:fnRec"
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %lp11 = alloca ptr
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
  %l31 = alloca i64
  %l34 = alloca i64
  %l52 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, [2 x i64] }
  %l73 = alloca i64
  %l76 = alloca i64
  %l95 = alloca { i64, ptr }
  %l105 = alloca i64
  %l108 = alloca i64
  %l126 = alloca { i64, ptr }
  %l132 = alloca i64
  %l134 = alloca i64
  %l136 = alloca i1
  %l139 = alloca { i64, [2 x i64] }
  %l143 = alloca { i64, ptr }
  %l145 = alloca i64
  %l148 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, ptr }
  %t82 = alloca { i64, [2 x i64] }, align 8
  %t95 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/scope:fnRec" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l7, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l34, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l34, !tbaa !24
  store i64 %t35, ptr %l31, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l31, !tbaa !24
  store i64 %t36, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l9, !tbaa !24
  %t38 = load i64, ptr %l8, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l10, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t55, ptr %l52, !tbaa !27
  %t56 = load i64, ptr %l10, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i64, ptr %t59, i64 %t56
  %t61 = load i64, ptr %t60, !tbaa !34
  %t62 = load i64, ptr %l4, !tbaa !24
  %t65 = icmp sge i64 %t61, %t62
  br i1 %t65, label %bb11, label %bb12
bb11:
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t67, ptr %l57, !tbaa !27
  %t68 = load i64, ptr %l10, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 %t68
  %t73 = load i64, ptr %t72, !tbaa !34
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l4, !tbaa !24
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t77 = load i64, ptr %l9, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l9, !tbaa !24
  br label %bb7
bb15:
  %t81 = load i64, ptr %l4, !tbaa !24
  store i64 %t81, ptr %l63, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t82
  %t83 = getelementptr { i64, [2 x i64] }, ptr %t82, i32 0, i32 0
  store i64 6, ptr %t83
  %t84 = load { i64, [2 x i64] }, ptr %t82
  store { i64, [2 x i64] } %t84, ptr %l64
  %t85 = load i64, ptr %l63, !tbaa !24
  %t86 = icmp sge i64 %t85, 0
  br i1 %t86, label %bb16, label %bb17
bb16:
  %t88 = load i64, ptr %l63, !tbaa !24
  %t89 = icmp sle i64 %t88, 384307168202282325
  br i1 %t89, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_7e21c4142f0bda85_cfc7aa0bb53bfe81)
  unreachable
bb18:
  %t91 = load i64, ptr %l63, !tbaa !24
  %t92 = mul i64 %t91, 24
  %t93 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t92)
  %t94 = load { i64, [2 x i64] }, ptr %l64
  store i64 0, ptr %t95
  br label %fill.96
fill.96:
  %t99 = load i64, ptr %t95
  %t100 = icmp slt i64 %t99, %t91
  br i1 %t100, label %fillb.97, label %filld.98
fillb.97:
  %t101 = getelementptr { i64, [2 x i64] }, ptr %t93, i64 %t99
  store { i64, [2 x i64] } %t94, ptr %t101
  %t102 = add i64 %t99, 1
  store i64 %t102, ptr %t95
  br label %fill.96
filld.98:
  %t103 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t93, 1
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t105, ptr %lp11
  %t107 = load ptr, ptr %lp11
  store { i64, ptr } %t104, ptr %t107, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  store i64 %t110, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t112 = load i64, ptr %l13, !tbaa !24
  %t113 = load i64, ptr %l12, !tbaa !24
  %t116 = icmp sgt i64 %t112, %t113
  br i1 %t116, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_7e21c4142f0bda85_cfc7aa0bb53bfe81)
  unreachable
bb20:
  %t118 = load i64, ptr %l14, !tbaa !24
  %t120 = icmp sgt i64 %t118, 0
  br i1 %t120, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb25
bb22:
  %t122 = load i64, ptr %l13, !tbaa !24
  %t123 = load i64, ptr %l12, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t127 = load i64, ptr %l14, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t132 = sub i64 %t130, 1
  %t133 = load i64, ptr %l14, !tbaa !24
  %t136 = sdiv i64 %t132, %t133
  store i64 %t136, ptr %l76, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb24
bb24:
  %t138 = load i64, ptr %l76, !tbaa !24
  store i64 %t138, ptr %l73, !tbaa !24
  br label %bb25
bb25:
  %t139 = load i64, ptr %l73, !tbaa !24
  store i64 %t139, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb26
bb26:
  %t140 = load i64, ptr %l16, !tbaa !24
  %t141 = load i64, ptr %l15, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  br label %bb29
bb29:
  %t148 = load i64, ptr %l12, !tbaa !24
  %t149 = load i64, ptr %l16, !tbaa !24
  %t150 = load i64, ptr %l14, !tbaa !24
  %t153 = mul i64 %t149, %t150
  %t156 = add i64 %t148, %t153
  store i64 %t156, ptr %l17, !tbaa !24
  %t158 = load i64, ptr %l17, !tbaa !24
  %t159 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t159, ptr %l95, !tbaa !27
  %t160 = load i64, ptr %l17, !tbaa !24
  %t162 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr { i64, [2 x i64] }, ptr %t163, i64 %t160
  %t165 = load { i64, [2 x i64] }, ptr %t164
  %t167 = load ptr, ptr %lp11
  %t169 = getelementptr { i64, ptr }, ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr { i64, [2 x i64] }, ptr %t170, i64 %t158
  store { i64, [2 x i64] } %t165, ptr %t171
  br label %bb30
bb30:
  %t172 = load i64, ptr %l16, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l16, !tbaa !24
  br label %bb26
bb31:
  store i64 0, ptr %l18, !tbaa !24
  %t176 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t176, 0
  store i64 %t178, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t180 = load i64, ptr %l19, !tbaa !24
  %t181 = load i64, ptr %l18, !tbaa !24
  %t184 = icmp sgt i64 %t180, %t181
  br i1 %t184, label %bb32, label %bb33
bb32:
  %t186 = load i64, ptr %l20, !tbaa !24
  %t188 = icmp sgt i64 %t186, 0
  br i1 %t188, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb37
bb34:
  %t190 = load i64, ptr %l19, !tbaa !24
  %t191 = load i64, ptr %l18, !tbaa !24
  %t194 = sub i64 %t190, %t191
  %t195 = load i64, ptr %l20, !tbaa !24
  %t198 = add i64 %t194, %t195
  %t200 = sub i64 %t198, 1
  %t201 = load i64, ptr %l20, !tbaa !24
  %t204 = sdiv i64 %t200, %t201
  store i64 %t204, ptr %l108, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb36
bb36:
  %t206 = load i64, ptr %l108, !tbaa !24
  store i64 %t206, ptr %l105, !tbaa !24
  br label %bb37
bb37:
  %t207 = load i64, ptr %l105, !tbaa !24
  store i64 %t207, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb38
bb38:
  %t208 = load i64, ptr %l22, !tbaa !24
  %t209 = load i64, ptr %l21, !tbaa !24
  %t212 = icmp slt i64 %t208, %t209
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb39, label %bb40
bb39:
  br label %bb55
bb40:
  br label %bb41
bb41:
  %t216 = load i64, ptr %l18, !tbaa !24
  %t217 = load i64, ptr %l22, !tbaa !24
  %t218 = load i64, ptr %l20, !tbaa !24
  %t221 = mul i64 %t217, %t218
  %t224 = add i64 %t216, %t221
  store i64 %t224, ptr %l23, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t226, ptr %l126, !tbaa !27
  %t227 = load i64, ptr %l23, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr i64, ptr %t230, i64 %t227
  %t232 = load i64, ptr %t231, !tbaa !34
  %t233 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t233, 0
  %t238 = icmp slt i64 %t232, %t235
  br i1 %t238, label %bb42, label %bb43
bb42:
  br label %bb54
bb43:
  br label %bb44
bb44:
  %t240 = load i64, ptr %l23, !tbaa !24
  store i64 %t240, ptr %l132, !tbaa !24
  %t241 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t243 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t241)
  store i64 %t243, ptr %l134
  br label %bb45
bb45:
  %t244 = load i64, ptr %l132, !tbaa !24
  %t245 = load i64, ptr %l134, !tbaa !24
  %t246 = icmp slt i64 %t244, %t245
  br i1 %t246, label %bb46, label %bb47
bb46:
  %t248 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t249 = load i64, ptr %l23, !tbaa !24
  %t252 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t248, i64 %t249)
  store { i64, [2 x i64] } %t252, ptr %l139
  br label %bb48
bb47:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb49
bb48:
  %t253 = load { i64, [2 x i64] }, ptr %l139
  %t255 = extractvalue { i64, [2 x i64] } %t253, 0
  %t256 = icmp eq i64 %t255, 0
  %t258 = xor i1 %t256, true
  store i1 %t258, ptr %l136, !tbaa !21
  br label %bb49
bb49:
  %t260 = load i1, ptr %l136, !tbaa !21
  br i1 %t260, label %bb50, label %bb51
bb50:
  %t261 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t261, ptr %l143, !tbaa !27
  %t262 = load i64, ptr %l23, !tbaa !24
  %t264 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr i64, ptr %t265, i64 %t262
  %t267 = load i64, ptr %t266, !tbaa !34
  store i64 %t267, ptr %l145, !tbaa !24
  %t268 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t269 = load i64, ptr %l23, !tbaa !24
  %t272 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t268, i64 %t269)
  store { i64, [2 x i64] } %t272, ptr %l148
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t273 = load { i64, [2 x i64] }, ptr %l148
  %t274 = load ptr, ptr %lp11
  %t275 = load i64, ptr %l145, !tbaa !24
  %t276 = getelementptr { i64, ptr }, ptr %t274, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr { i64, [2 x i64] }, ptr %t277, i64 %t275
  store { i64, [2 x i64] } %t273, ptr %t278
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t279 = load i64, ptr %l22, !tbaa !24
  %t281 = add i64 %t279, 1
  store i64 %t281, ptr %l22, !tbaa !24
  br label %bb38
bb55:
  %t283 = load ptr, ptr %lp11
  %t284 = load { i64, ptr }, ptr %t283, !tbaa !27
  store { i64, ptr } %t284, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecsOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"compiler/scope:fnRecs"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 104, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"compiler/scope:fnRecs", ptr %l3
  %t4 = load ptr, ptr %lp2
  store %"compiler/scope:fnRecs" %t3, ptr %t4
  %t5 = load ptr, ptr %lp2
  %t6 = getelementptr %"compiler/scope:fnRecs", ptr %t5, i32 0, i32 1
  store i1 true, ptr %t6, !tbaa !21
  %t8 = load ptr, ptr %lp2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v2, ptr %v1, ptr %a0, ptr %t8, ptr %a1)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %lp2
  %t14 = load %"compiler/scope:fnRecs", ptr %t13
  store %"compiler/scope:fnRecs" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionLocals(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l53 = alloca i64
  %l56 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 121
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  store i64 0, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Body", ptr %t5, i32 0, i32 7
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t7)
  store i64 %t9, ptr %l18
  br label %bb2
bb2:
  %t10 = load i64, ptr %l18, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l25, !tbaa !24
  store i64 %t37, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l22, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l7, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 121
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t59, i64 -1)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l6, !tbaa !24
  br label %bb9
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Body", ptr %t66, i32 0, i32 11
  %t69 = load ptr, ptr %t68, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t65, ptr %t69, i64 0)
  br label %bb16
bb16:
  store i64 0, ptr %l8, !tbaa !24
  store i64 8, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb17, label %bb18
bb17:
  %t78 = load i64, ptr %l10, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb22
bb19:
  %t82 = load i64, ptr %l9, !tbaa !24
  %t83 = load i64, ptr %l8, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l10, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l10, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l56, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb21
bb21:
  %t98 = load i64, ptr %l56, !tbaa !24
  store i64 %t98, ptr %l53, !tbaa !24
  br label %bb22
bb22:
  %t99 = load i64, ptr %l53, !tbaa !24
  store i64 %t99, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb23
bb23:
  %t100 = load i64, ptr %l12, !tbaa !24
  %t101 = load i64, ptr %l11, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb24, label %bb25
bb24:
  br label %bb32
bb25:
  br label %bb26
bb26:
  %t108 = load i64, ptr %l8, !tbaa !24
  %t109 = load i64, ptr %l12, !tbaa !24
  %t110 = load i64, ptr %l10, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  store i64 %t116, ptr %l13, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/scope:Scoper", ptr %t118, i32 0, i32 124
  store i1 false, ptr %t120, !tbaa !21
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Body", ptr %t122, i32 0, i32 11
  %t125 = load ptr, ptr %t124, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t121, ptr %t125, i64 1)
  br label %bb27
bb27:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/scope:Scoper", ptr %t128, i32 0, i32 124
  %t131 = load i1, ptr %t130, !tbaa !21
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb28, label %bb29
bb28:
  br label %bb32
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t135 = load i64, ptr %l12, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l12, !tbaa !24
  br label %bb23
bb32:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erequiredIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:rel"
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l17 = alloca %"compiler/scope:rel"
  %l20 = alloca i1
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca { i64, ptr }
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  %t122 = alloca { i64, [2 x i64] }, align 8
  %t130 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l5, !tbaa !24
  store i64 %t3, ptr %l10, !tbaa !24
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l12
  br label %bb2
bb2:
  %t7 = load i64, ptr %l10, !tbaa !24
  %t8 = load i64, ptr %l12, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb44
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t13, i64 %t14)
  store %"compiler/scope:rel" %t17, ptr %l17
  br label %bb6
bb6:
  %t18 = load %"compiler/scope:rel", ptr %l17
  store %"compiler/scope:rel" %t18, ptr %l6
  %t19 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t20 = load { i64, [2 x i64] }, ptr %t19
  %t22 = extractvalue { i64, [2 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 2
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 1
  %t27 = getelementptr { i64 }, ptr %t26, i32 0, i32 0
  %t28 = load i64, ptr %t27
  %t32 = icmp eq i64 %t28, %a2
  store i1 %t32, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l20, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb10, label %bb11
bb10:
  br label %bb43
bb11:
  br label %bb12
bb12:
  %t37 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 1
  %t38 = load { i64, [2 x i64] }, ptr %t37
  store { i64, [2 x i64] } %t38, ptr %l7
  %t40 = load { i64, [2 x i64] }, ptr %l7
  %t42 = extractvalue { i64, [2 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 2
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t46 = getelementptr { i64 }, ptr %t45, i32 0, i32 0
  %t47 = load i64, ptr %t46
  store i64 %t47, ptr %l8, !tbaa !24
  br label %bb15
bb14:
  br label %bb33
bb15:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t55 = icmp slt i64 %t49, %t52
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t57, ptr %l34, !tbaa !27
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i64 %t58
  %t63 = load { i64, [2 x i64] }, ptr %t62
  %t65 = extractvalue { i64, [2 x i64] } %t63, 0
  %t66 = icmp eq i64 %t65, 0
  %t68 = xor i1 %t66, true
  store i1 %t68, ptr %l33, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb18
bb18:
  %t70 = load i1, ptr %l33, !tbaa !21
  br i1 %t70, label %bb19, label %bb20
bb19:
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t71, ptr %l40, !tbaa !27
  %t72 = load i64, ptr %l8, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, [2 x i64] }, ptr %t75, i64 %t72
  %t77 = load { i64, [2 x i64] }, ptr %t76
  %t79 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t77)
  store i1 %t79, ptr %l43
  br label %bb21
bb20:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb22
bb21:
  %t80 = load i1, ptr %l43, !tbaa !21
  store i1 %t80, ptr %l39, !tbaa !21
  br label %bb22
bb22:
  %t81 = load i1, ptr %l39, !tbaa !21
  br i1 %t81, label %bb23, label %bb24
bb23:
  %t82 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t82, ptr %l44, !tbaa !27
  %t83 = load i64, ptr %l8, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr { i64, [2 x i64] }, ptr %t86, i64 %t83
  %t88 = load { i64, [2 x i64] }, ptr %t87
  store { i64, [2 x i64] } %t88, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t90 = load i64, ptr %l8, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t96 = icmp slt i64 %t90, %t93
  br i1 %t96, label %bb26, label %bb27
bb26:
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t98, ptr %l52, !tbaa !27
  %t99 = load i64, ptr %l8, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr { i64, [2 x i64] }, ptr %t102, i64 %t99
  %t104 = load { i64, [2 x i64] }, ptr %t103
  %t106 = call i1 @compiler_2fscope_2ecapTerm({ i64, [2 x i64] } %t104)
  store i1 %t106, ptr %l55
  br label %bb28
bb27:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb29
bb28:
  %t107 = load i1, ptr %l55, !tbaa !21
  store i1 %t107, ptr %l51, !tbaa !21
  br label %bb29
bb29:
  %t108 = load i1, ptr %l51, !tbaa !21
  br i1 %t108, label %bb30, label %bb31
bb30:
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t109, ptr %l56, !tbaa !27
  %t110 = load i64, ptr %l8, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, [2 x i64] }, ptr %t113, i64 %t110
  %t115 = load { i64, [2 x i64] }, ptr %t114
  store { i64, [2 x i64] } %t115, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb42
bb33:
  %t117 = load { i64, [2 x i64] }, ptr %l7
  %t119 = extractvalue { i64, [2 x i64] } %t117, 0
  %t120 = icmp eq i64 %t119, 3
  br i1 %t120, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store { i64, [2 x i64] } zeroinitializer, ptr %t122
  %t123 = getelementptr { i64, [2 x i64] }, ptr %t122, i32 0, i32 0
  store i64 3, ptr %t123
  %t124 = load { i64, [2 x i64] }, ptr %t122
  store { i64, [2 x i64] } %t124, ptr %rv
  br label %ret
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_ed814b94f6a98b8c_ead1babe88bc22e8)
  unreachable
bb42:
  br label %bb43
bb43:
  %t126 = load i64, ptr %l5, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l5, !tbaa !24
  br label %bb1
bb44:
  store { i64, [2 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [2 x i64] }, ptr %t130, i32 0, i32 0
  store i64 0, ptr %t131
  %t132 = load { i64, [2 x i64] }, ptr %t130
  store { i64, [2 x i64] } %t132, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/scope:fnRec"
  %l11 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca %"compiler/scope:fnRecs"
  %l21 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l48 = alloca %"compiler/scope:fnRec"
  %l50 = alloca %"compiler/scope:fnRec"
  %l54 = alloca ptr
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i64
  %l83 = alloca ptr
  %l87 = alloca i1
  %l88 = alloca { i64, [2 x i64] }
  %l89 = alloca i64
  %l92 = alloca i64
  %l97 = alloca ptr
  %l101 = alloca %"compiler/scope:fnRec"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/scope:fnRecs"
  %t143 = alloca { i64, [2 x i64] }, align 8
  %t147 = alloca { i64, [2 x i64] }, align 8
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v2)
  store %"compiler/scope:fnRecs" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 104, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"compiler/scope:fnRecs", ptr %l19
  %t4 = load ptr, ptr %lp3
  store %"compiler/scope:fnRecs" %t3, ptr %t4
  %t5 = load ptr, ptr %lp3
  %t6 = getelementptr %"compiler/scope:fnRecs", ptr %t5, i32 0, i32 1
  store i1 true, ptr %t6, !tbaa !21
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %t7)
  store i64 %t9, ptr %l21
  br label %bb2
bb2:
  %t10 = load i64, ptr %l21, !tbaa !24
  store i64 %t10, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l6, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb8
bb5:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l28, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l28, !tbaa !24
  store i64 %t37, ptr %l25, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l25, !tbaa !24
  store i64 %t38, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb39
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l9, !tbaa !24
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t58 = load i64, ptr %l9, !tbaa !24
  %t61 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %v1, ptr %t57, i64 %t58)
  store %"compiler/scope:fnRec" %t61, ptr %l48
  br label %bb13
bb13:
  %t63 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s2, ptr %l48)
  store %"compiler/scope:fnRec" %t63, ptr %l50
  br label %bb14
bb14:
  %t64 = load %"compiler/scope:fnRec", ptr %l50
  store %"compiler/scope:fnRec" %t64, ptr %l10
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 1
  %t68 = getelementptr %"compiler/scope:fnRec", ptr %l10, i32 0, i32 0
  %t69 = load i64, ptr %t68, !tbaa !24
  %t72 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t67, i64 %t69)
  store ptr %t72, ptr %l54
  br label %bb15
bb15:
  %t73 = load ptr, ptr %l54, !tbaa !29
  store ptr %t73, ptr %l11, !tbaa !29
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l55
  br label %bb16
bb16:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l12
  store i64 0, ptr %l13, !tbaa !24
  %t76 = load ptr, ptr %l11, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Body", ptr %t76, i32 0, i32 6
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t78)
  store i64 %t80, ptr %l58
  br label %bb17
bb17:
  %t81 = load i64, ptr %l58, !tbaa !24
  store i64 %t81, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t82 = load i64, ptr %l14, !tbaa !24
  %t83 = load i64, ptr %l13, !tbaa !24
  %t86 = icmp sgt i64 %t82, %t83
  br i1 %t86, label %bb18, label %bb19
bb18:
  %t88 = load i64, ptr %l15, !tbaa !24
  %t90 = icmp sgt i64 %t88, 0
  br i1 %t90, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb23
bb20:
  %t92 = load i64, ptr %l14, !tbaa !24
  %t93 = load i64, ptr %l13, !tbaa !24
  %t96 = sub i64 %t92, %t93
  %t97 = load i64, ptr %l15, !tbaa !24
  %t100 = add i64 %t96, %t97
  %t102 = sub i64 %t100, 1
  %t103 = load i64, ptr %l15, !tbaa !24
  %t106 = sdiv i64 %t102, %t103
  store i64 %t106, ptr %l65, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb22
bb22:
  %t108 = load i64, ptr %l65, !tbaa !24
  store i64 %t108, ptr %l62, !tbaa !24
  br label %bb23
bb23:
  %t109 = load i64, ptr %l62, !tbaa !24
  store i64 %t109, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb24
bb24:
  %t110 = load i64, ptr %l17, !tbaa !24
  %t111 = load i64, ptr %l16, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb25, label %bb26
bb25:
  br label %bb35
bb26:
  br label %bb27
bb27:
  %t118 = load i64, ptr %l13, !tbaa !24
  %t119 = load i64, ptr %l17, !tbaa !24
  %t120 = load i64, ptr %l15, !tbaa !24
  %t123 = mul i64 %t119, %t120
  %t126 = add i64 %t118, %t123
  store i64 %t126, ptr %l18, !tbaa !24
  store ptr %l12, ptr %l83, !tbaa !29
  %t128 = load ptr, ptr %l11, !tbaa !29
  %t129 = load i64, ptr %l18, !tbaa !24
  %t130 = getelementptr %"compiler/scope:fnRec", ptr %l10, i32 0, i32 2
  %t131 = load i1, ptr %t130, !tbaa !21
  %t135 = call i1 @compiler_2fscope_2ecapVarOf(ptr %v0, ptr %t128, i64 %t129, i1 %t131)
  store i1 %t135, ptr %l87
  br label %bb28
bb28:
  %t136 = load i1, ptr %l87, !tbaa !21
  br i1 %t136, label %bb29, label %bb30
bb29:
  store i64 %a2, ptr %l89, !tbaa !24
  %t138 = load i64, ptr %l9, !tbaa !24
  %t139 = load i64, ptr %l18, !tbaa !24
  %t142 = call i64 @compiler_2fscope_2ecapCode(i64 %t138, i64 %t139)
  store i64 %t142, ptr %l92
  br label %bb31
bb30:
  store { i64, [2 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [2 x i64] }, ptr %t143, i32 0, i32 0
  store i64 0, ptr %t144
  %t145 = load { i64, [2 x i64] }, ptr %t143
  store { i64, [2 x i64] } %t145, ptr %l88
  br label %bb32
bb31:
  store { i64, [2 x i64] } zeroinitializer, ptr %t147
  %t148 = getelementptr { i64, [2 x i64] }, ptr %t147, i32 0, i32 0
  store i64 4, ptr %t148
  %t149 = load i64, ptr %l89, !tbaa !24
  %t150 = insertvalue { i64, i64 } undef, i64 %t149, 0
  %t151 = load i64, ptr %l92, !tbaa !24
  %t152 = insertvalue { i64, i64 } %t150, i64 %t151, 1
  %t153 = getelementptr { i64, [2 x i64] }, ptr %t147, i32 0, i32 1
  store { i64, i64 } %t152, ptr %t153
  %t154 = load { i64, [2 x i64] }, ptr %t147
  store { i64, [2 x i64] } %t154, ptr %l88
  br label %bb32
bb32:
  %t156 = load ptr, ptr %l83, !tbaa !29
  %t157 = load { i64, [2 x i64] }, ptr %l88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %t156, { i64, [2 x i64] } %t157)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t158 = load i64, ptr %l17, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l17, !tbaa !24
  br label %bb24
bb35:
  %t162 = load ptr, ptr %lp3
  %t163 = getelementptr %"compiler/scope:fnRecs", ptr %t162, i32 0, i32 0
  store ptr %t163, ptr %l97, !tbaa !29
  %t164 = getelementptr %"compiler/scope:fnRec", ptr %l10, i32 0, i32 0
  %t165 = load i64, ptr %t164, !tbaa !24
  %t166 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t167 = getelementptr %"compiler/scope:fnRec", ptr %l10, i32 0, i32 2
  %t168 = load i1, ptr %t167, !tbaa !21
  %t172 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s2, ptr %s2, i64 %t165, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t166, i1 %t168)
  store %"compiler/scope:fnRec" %t172, ptr %l101
  br label %bb36
bb36:
  %t173 = load ptr, ptr %l97, !tbaa !29
  %t174 = load %"compiler/scope:fnRec", ptr %l101
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %s2, ptr %t173, %"compiler/scope:fnRec" %t174)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s2)
  br label %bb38
bb38:
  %t175 = load i64, ptr %l8, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l8, !tbaa !24
  br label %bb9
bb39:
  %t179 = load ptr, ptr %lp3
  %t180 = load %"compiler/scope:fnRecs", ptr %t179
  store %"compiler/scope:fnRecs" %t180, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca i1
  %l126 = alloca ptr
  %l127 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l153 = alloca { i64, ptr }
  %l161 = alloca ptr
  %l162 = alloca i1
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
  store i1 true, ptr %l20, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 139
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l20, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l20, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t12 = load ptr, ptr %l23, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l23, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 17}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l24, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l2, !tbaa !29
  br label %bb19
bb10:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t27 = load ptr, ptr %l29, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t30 = load ptr, ptr %l29, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 17}
  %t33 = icmp eq i64 %t31, 2
  store i1 %t33, ptr %l30, !tbaa !21
  br label %bb12
bb12:
  %t34 = load i1, ptr %l30, !tbaa !21
  br i1 %t34, label %bb13, label %bb14
bb13:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [3 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", ptr }, ptr %t37, i32 0, i32 1
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l2, !tbaa !29
  br label %bb19
bb14:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t42 = load ptr, ptr %l35, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb15, label %bb16
bb15:
  %t45 = load ptr, ptr %l35, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 17}
  %t48 = icmp eq i64 %t46, 15
  store i1 %t48, ptr %l36, !tbaa !21
  br label %bb16
bb16:
  %t49 = load i1, ptr %l36, !tbaa !21
  br i1 %t49, label %bb17, label %bb18
bb17:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [3 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", ptr }, ptr %t52, i32 0, i32 1
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l2, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t56, ptr %t57, i1 true)
  br label %bb20
bb20:
  br label %bb106
bb21:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t62 = load ptr, ptr %l44, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb22, label %bb23
bb22:
  %t65 = load ptr, ptr %l44, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 17}
  %t68 = icmp eq i64 %t66, 1
  store i1 %t68, ptr %l45, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l45, !tbaa !21
  br i1 %t69, label %bb24, label %bb25
bb24:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t72, i32 0, i32 1
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l3, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [3 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l4, !tbaa !29
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t82, ptr %t83, i1 true)
  br label %bb27
bb27:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t86, ptr %t87, i1 true)
  br label %bb28
bb28:
  br label %bb106
bb29:
  %t91 = load ptr, ptr %l1, !tbaa !29
  store ptr %t91, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t92 = load ptr, ptr %l57, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb30, label %bb31
bb30:
  %t95 = load ptr, ptr %l57, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 17}
  %t98 = icmp eq i64 %t96, 3
  store i1 %t98, ptr %l58, !tbaa !21
  br label %bb31
bb31:
  %t99 = load i1, ptr %l58, !tbaa !21
  br i1 %t99, label %bb32, label %bb33
bb32:
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr { i64, [3 x i64] }, ptr %t100, i32 0, i32 1
  %t103 = getelementptr { %"compiler/source:Span", ptr }, ptr %t102, i32 0, i32 1
  %t104 = load ptr, ptr %t103
  store ptr %t104, ptr %l5, !tbaa !29
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t109 = getelementptr %"compiler/typed:If", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t106, ptr %t110, i1 true)
  br label %bb35
bb35:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr %"compiler/typed:If", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t114, ptr %t118)
  br label %bb36
bb36:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l5, !tbaa !29
  %t125 = getelementptr %"compiler/typed:If", ptr %t123, i32 0, i32 2
  %t126 = load ptr, ptr %t125, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t122, ptr %t126)
  br label %bb37
bb37:
  br label %bb106
bb38:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t130 = load ptr, ptr %l74, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb39, label %bb40
bb39:
  %t133 = load ptr, ptr %l74, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 17}
  %t136 = icmp eq i64 %t134, 4
  store i1 %t136, ptr %l75, !tbaa !21
  br label %bb40
bb40:
  %t137 = load i1, ptr %l75, !tbaa !21
  br i1 %t137, label %bb41, label %bb42
bb41:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [3 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t140, i32 0, i32 1
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l6, !tbaa !29
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [3 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t146, i32 0, i32 2
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l7, !tbaa !29
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t150, ptr %t151)
  br label %bb44
bb44:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t155, ptr %t156)
  br label %bb45
bb45:
  br label %bb106
bb46:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t160 = load ptr, ptr %l87, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb47, label %bb48
bb47:
  %t163 = load ptr, ptr %l87, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 17}
  %t166 = icmp eq i64 %t164, 6
  store i1 %t166, ptr %l88, !tbaa !21
  br label %bb48
bb48:
  %t167 = load i1, ptr %l88, !tbaa !21
  br i1 %t167, label %bb49, label %bb50
bb49:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [3 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", ptr }, ptr %t170, i32 0, i32 1
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l8, !tbaa !29
  br label %bb59
bb50:
  %t174 = load ptr, ptr %l1, !tbaa !29
  store ptr %t174, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t175 = load ptr, ptr %l93, !tbaa !29
  %t176 = icmp ne ptr %t175, null
  br i1 %t176, label %bb51, label %bb52
bb51:
  %t178 = load ptr, ptr %l93, !tbaa !29
  %t179 = load i64, ptr %t178, !range !{i64 0, i64 17}
  %t181 = icmp eq i64 %t179, 9
  store i1 %t181, ptr %l94, !tbaa !21
  br label %bb52
bb52:
  %t182 = load i1, ptr %l94, !tbaa !21
  br i1 %t182, label %bb53, label %bb54
bb53:
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr { i64, [3 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t185, i32 0, i32 2
  %t187 = load ptr, ptr %t186
  store ptr %t187, ptr %l8, !tbaa !29
  br label %bb59
bb54:
  %t189 = load ptr, ptr %l1, !tbaa !29
  store ptr %t189, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t190 = load ptr, ptr %l99, !tbaa !29
  %t191 = icmp ne ptr %t190, null
  br i1 %t191, label %bb55, label %bb56
bb55:
  %t193 = load ptr, ptr %l99, !tbaa !29
  %t194 = load i64, ptr %t193, !range !{i64 0, i64 17}
  %t196 = icmp eq i64 %t194, 16
  store i1 %t196, ptr %l100, !tbaa !21
  br label %bb56
bb56:
  %t197 = load i1, ptr %l100, !tbaa !21
  br i1 %t197, label %bb57, label %bb58
bb57:
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t200 = getelementptr { i64, [3 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", ptr }, ptr %t200, i32 0, i32 1
  %t202 = load ptr, ptr %t201
  store ptr %t202, ptr %l8, !tbaa !29
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t204, ptr %t205, i1 true)
  br label %bb60
bb60:
  br label %bb106
bb61:
  %t208 = load ptr, ptr %l1, !tbaa !29
  store ptr %t208, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t209 = load ptr, ptr %l107, !tbaa !29
  %t210 = icmp ne ptr %t209, null
  br i1 %t210, label %bb62, label %bb63
bb62:
  %t212 = load ptr, ptr %l107, !tbaa !29
  %t213 = load i64, ptr %t212, !range !{i64 0, i64 17}
  %t215 = icmp eq i64 %t213, 10
  store i1 %t215, ptr %l108, !tbaa !21
  br label %bb63
bb63:
  %t216 = load i1, ptr %l108, !tbaa !21
  br i1 %t216, label %bb64, label %bb65
bb64:
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr { i64, [3 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t219, i32 0, i32 1
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l9, !tbaa !29
  %t223 = load ptr, ptr %l1, !tbaa !29
  %t225 = getelementptr { i64, [3 x i64] }, ptr %t223, i32 0, i32 1
  %t226 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t225, i32 0, i32 2
  %t227 = load ptr, ptr %t226
  store ptr %t227, ptr %l10, !tbaa !29
  br label %bb66
bb65:
  br label %bb69
bb66:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t229, ptr %t230, i1 true)
  br label %bb67
bb67:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t234, ptr %t235, i1 true)
  br label %bb68
bb68:
  br label %bb106
bb69:
  %t238 = load ptr, ptr %l1, !tbaa !29
  store ptr %t238, ptr %l120, !tbaa !29
  store i1 false, ptr %l121, !tbaa !21
  %t239 = load ptr, ptr %l120, !tbaa !29
  %t240 = icmp ne ptr %t239, null
  br i1 %t240, label %bb70, label %bb71
bb70:
  %t242 = load ptr, ptr %l120, !tbaa !29
  %t243 = load i64, ptr %t242, !range !{i64 0, i64 17}
  %t245 = icmp eq i64 %t243, 11
  store i1 %t245, ptr %l121, !tbaa !21
  br label %bb71
bb71:
  %t246 = load i1, ptr %l121, !tbaa !21
  br i1 %t246, label %bb72, label %bb73
bb72:
  %t247 = load ptr, ptr %l1, !tbaa !29
  %t249 = getelementptr { i64, [3 x i64] }, ptr %t247, i32 0, i32 1
  %t250 = getelementptr { %"compiler/source:Span", ptr }, ptr %t249, i32 0, i32 1
  %t251 = load ptr, ptr %t250
  store ptr %t251, ptr %l11, !tbaa !29
  br label %bb78
bb73:
  %t253 = load ptr, ptr %l1, !tbaa !29
  store ptr %t253, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t254 = load ptr, ptr %l126, !tbaa !29
  %t255 = icmp ne ptr %t254, null
  br i1 %t255, label %bb74, label %bb75
bb74:
  %t257 = load ptr, ptr %l126, !tbaa !29
  %t258 = load i64, ptr %t257, !range !{i64 0, i64 17}
  %t260 = icmp eq i64 %t258, 12
  store i1 %t260, ptr %l127, !tbaa !21
  br label %bb75
bb75:
  %t261 = load i1, ptr %l127, !tbaa !21
  br i1 %t261, label %bb76, label %bb77
bb76:
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr { i64, [3 x i64] }, ptr %t262, i32 0, i32 1
  %t265 = getelementptr { %"compiler/source:Span", ptr }, ptr %t264, i32 0, i32 1
  %t266 = load ptr, ptr %t265
  store ptr %t266, ptr %l11, !tbaa !29
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t268, ptr %t269)
  br label %bb79
bb79:
  br label %bb106
bb80:
  %t273 = load ptr, ptr %l1, !tbaa !29
  store ptr %t273, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t274 = load ptr, ptr %l135, !tbaa !29
  %t275 = icmp ne ptr %t274, null
  br i1 %t275, label %bb81, label %bb82
bb81:
  %t277 = load ptr, ptr %l135, !tbaa !29
  %t278 = load i64, ptr %t277, !range !{i64 0, i64 17}
  %t280 = icmp eq i64 %t278, 13
  store i1 %t280, ptr %l136, !tbaa !21
  br label %bb82
bb82:
  %t281 = load i1, ptr %l136, !tbaa !21
  br i1 %t281, label %bb83, label %bb84
bb83:
  %t282 = load ptr, ptr %l1, !tbaa !29
  %t284 = getelementptr { i64, [3 x i64] }, ptr %t282, i32 0, i32 1
  %t285 = getelementptr { %"compiler/source:Span", ptr }, ptr %t284, i32 0, i32 1
  %t286 = load ptr, ptr %t285
  store ptr %t286, ptr %l12, !tbaa !29
  br label %bb85
bb84:
  br label %bb94
bb85:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load ptr, ptr %l12, !tbaa !29
  %t291 = getelementptr %"compiler/typed:Join", ptr %t289, i32 0, i32 0
  %t292 = load ptr, ptr %t291, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t288, ptr %t292)
  br label %bb86
bb86:
  %t296 = load ptr, ptr %l12, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Join", ptr %t296, i32 0, i32 2
  %t299 = load { i64, ptr }, ptr %t298, !tbaa !27
  store { i64, ptr } %t299, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t301 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t301, 0
  store i64 %t303, ptr %l15, !tbaa !24
  br label %bb87
bb87:
  %t305 = load i64, ptr %l14, !tbaa !24
  %t306 = load i64, ptr %l15, !tbaa !24
  %t309 = icmp slt i64 %t305, %t306
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb88, label %bb89
bb88:
  br label %bb93
bb89:
  br label %bb90
bb90:
  %t313 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t313, ptr %l153, !tbaa !27
  %t314 = load i64, ptr %l14, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr ptr, ptr %t317, i64 %t314
  %t319 = load ptr, ptr %t318, !tbaa !39
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/typed:Clause", ptr %t319, i32 0, i32 3
  %t325 = load ptr, ptr %t324, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t321, ptr %t325)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t328 = load i64, ptr %l14, !tbaa !24
  %t330 = add i64 %t328, 1
  store i64 %t330, ptr %l14, !tbaa !24
  br label %bb87
bb93:
  br label %bb106
bb94:
  %t332 = load ptr, ptr %l1, !tbaa !29
  store ptr %t332, ptr %l161, !tbaa !29
  store i1 false, ptr %l162, !tbaa !21
  %t333 = load ptr, ptr %l161, !tbaa !29
  %t334 = icmp ne ptr %t333, null
  br i1 %t334, label %bb95, label %bb96
bb95:
  %t336 = load ptr, ptr %l161, !tbaa !29
  %t337 = load i64, ptr %t336, !range !{i64 0, i64 17}
  %t339 = icmp eq i64 %t337, 14
  store i1 %t339, ptr %l162, !tbaa !21
  br label %bb96
bb96:
  %t340 = load i1, ptr %l162, !tbaa !21
  br i1 %t340, label %bb97, label %bb98
bb97:
  %t341 = load ptr, ptr %l1, !tbaa !29
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t341, i32 0, i32 1
  %t344 = getelementptr { %"compiler/source:Span", ptr }, ptr %t343, i32 0, i32 1
  %t345 = load ptr, ptr %t344
  store ptr %t345, ptr %l17, !tbaa !29
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load ptr, ptr %l17, !tbaa !29
  %t350 = getelementptr %"compiler/typed:Spawn", ptr %t348, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t347, ptr %t351, i1 true)
  br label %bb100
bb100:
  br label %bb106
bb101:
  br i1 true, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_check_failed(ptr @olang_loc_ae81d4d244f6a670_8f3729da339b0a94)
  unreachable
bb106:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estrReceiver(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/scope:rel"
  %l4 = alloca i1
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"compiler/scope:rel"
  %l29 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l40 = alloca { i64, [2 x i64] }
  %l42 = alloca { i64, [2 x i64] }
  %l44 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca %"compiler/diagmsg:Msg"
  %l64 = alloca i64
  %l69 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i64
  %l97 = alloca i1
  %l99 = alloca i1
  %l103 = alloca i1
  %l105 = alloca ptr
  %l109 = alloca %"compiler/source:Span"
  %l110 = alloca %"compiler/diagmsg:Msg"
  %l111 = alloca i64
  %l115 = alloca i64
  %l124 = alloca i1
  %l128 = alloca %"compiler/source:Span"
  %l129 = alloca i32
  %l133 = alloca %"compiler/source:Span"
  %l136 = alloca ptr
  %l137 = alloca i64
  %l141 = alloca i64
  %l145 = alloca %"compiler/source:Span"
  %l146 = alloca %"compiler/diagmsg:Msg"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 38
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l17, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l19
  br label %bb2
bb2:
  %t9 = load i64, ptr %l17, !tbaa !24
  %t10 = load i64, ptr %l19, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb39
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/scope:rel" %t19, ptr %l24
  br label %bb6
bb6:
  %t20 = load %"compiler/scope:rel", ptr %l24
  store %"compiler/scope:rel" %t20, ptr %l3
  store i1 false, ptr %l4, !tbaa !21
  %t21 = getelementptr %"compiler/scope:rel", ptr %l3, i32 0, i32 1
  %t22 = load { i64, [2 x i64] }, ptr %t21
  store { i64, [2 x i64] } %t22, ptr %l5
  %t24 = load { i64, [2 x i64] }, ptr %l5
  %t26 = extractvalue { i64, [2 x i64] } %t24, 0
  %t27 = icmp eq i64 %t26, 2
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t30 = getelementptr { i64 }, ptr %t29, i32 0, i32 0
  %t31 = load i64, ptr %t30
  store i64 %t31, ptr %l6, !tbaa !24
  br label %bb9
bb8:
  br label %bb19
bb9:
  %t33 = load i64, ptr %l6, !tbaa !24
  store i64 %t33, ptr %l29, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 69
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l32
  br label %bb10
bb10:
  %t39 = load i64, ptr %l29, !tbaa !24
  %t40 = load i64, ptr %l32, !tbaa !24
  %t41 = icmp slt i64 %t39, %t40
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 69
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t45, i64 %t46)
  store i1 %t49, ptr %l38
  br label %bb13
bb12:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb14
bb13:
  %t50 = load i1, ptr %l38, !tbaa !21
  store i1 %t50, ptr %l34, !tbaa !21
  br label %bb14
bb14:
  %t51 = load i1, ptr %l34, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t52 = getelementptr %"compiler/scope:rel", ptr %l3, i32 0, i32 0
  %t53 = load { i64, [2 x i64] }, ptr %t52
  store { i64, [2 x i64] } %t53, ptr %l40
  %t54 = getelementptr %"compiler/scope:rel", ptr %l3, i32 0, i32 1
  %t55 = load { i64, [2 x i64] }, ptr %t54
  store { i64, [2 x i64] } %t55, ptr %l42
  %t58 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l40, ptr %l42)
  store i1 %t58, ptr %l44
  br label %bb17
bb16:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb18
bb17:
  %t59 = load i1, ptr %l44, !tbaa !21
  %t60 = xor i1 %t59, true
  store i1 %t60, ptr %l39, !tbaa !21
  br label %bb18
bb18:
  %t62 = load i1, ptr %l39, !tbaa !21
  store i1 %t62, ptr %l4, !tbaa !21
  br label %bb28
bb19:
  %t63 = load { i64, [2 x i64] }, ptr %l5
  %t65 = extractvalue { i64, [2 x i64] } %t63, 0
  %t66 = icmp eq i64 %t65, 4
  br i1 %t66, label %bb20, label %bb21
bb20:
  %t68 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t69 = getelementptr { i64, i64 }, ptr %t68, i32 0, i32 0
  %t70 = load i64, ptr %t69
  store i64 %t70, ptr %l7, !tbaa !24
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = icmp sge i64 %t72, 0
  store i1 %t74, ptr %l4, !tbaa !21
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_678543b1c51fd044_bcff5a6e112a6af8)
  unreachable
bb28:
  %t76 = load i1, ptr %l4, !tbaa !21
  br i1 %t76, label %bb29, label %bb30
bb29:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l52, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l53, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %t80, i32 0, i32 26
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  br i1 %t85, label %bb31, label %bb32
bb30:
  br label %bb37
bb31:
  call void @__olang_check_failed(ptr @olang_loc_90a9d28716f9cb6_29834bc9108cc36a)
  unreachable
bb32:
  br label %bb33
bb33:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 26
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Body", ptr %t90, i32 0, i32 3
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = getelementptr %"compiler/scope:rel", ptr %l3, i32 0, i32 3
  %t96 = load %"compiler/source:Span", ptr %t95
  %t97 = load ptr, ptr %l53, !tbaa !29
  %t100 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t97, i64 %t94, %"compiler/source:Span" %t96)
  store %"compiler/source:Span" %t100, ptr %l62
  br label %bb34
bb34:
  %t101 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrStoresInReceiver(ptr %v0)
  store %"compiler/diagmsg:Msg" %t101, ptr %l63
  br label %bb35
bb35:
  %t102 = load ptr, ptr %l52, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l62
  %t104 = load %"compiler/diagmsg:Msg", ptr %l63
  %t105 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t102, %"compiler/source:Span" %t103, %"compiler/diagmsg:Msg" %t104)
  store i64 %t105, ptr %l64
  br label %bb36
bb36:
  br label %ret
bb37:
  br label %bb38
bb38:
  %t106 = load i64, ptr %l2, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l2, !tbaa !24
  br label %bb1
bb39:
  store i64 0, ptr %l8, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 69
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l69
  br label %bb40
bb40:
  %t115 = load i64, ptr %l69, !tbaa !24
  store i64 %t115, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t116 = load i64, ptr %l9, !tbaa !24
  %t117 = load i64, ptr %l8, !tbaa !24
  %t120 = icmp sgt i64 %t116, %t117
  br i1 %t120, label %bb41, label %bb42
bb41:
  %t122 = load i64, ptr %l10, !tbaa !24
  %t124 = icmp sgt i64 %t122, 0
  br i1 %t124, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb46
bb43:
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load i64, ptr %l8, !tbaa !24
  %t130 = sub i64 %t126, %t127
  %t131 = load i64, ptr %l10, !tbaa !24
  %t134 = add i64 %t130, %t131
  %t136 = sub i64 %t134, 1
  %t137 = load i64, ptr %l10, !tbaa !24
  %t140 = sdiv i64 %t136, %t137
  store i64 %t140, ptr %l76, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb45
bb45:
  %t142 = load i64, ptr %l76, !tbaa !24
  store i64 %t142, ptr %l73, !tbaa !24
  br label %bb46
bb46:
  %t143 = load i64, ptr %l73, !tbaa !24
  store i64 %t143, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb47
bb47:
  %t144 = load i64, ptr %l12, !tbaa !24
  %t145 = load i64, ptr %l11, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb48, label %bb49
bb48:
  br label %bb79
bb49:
  br label %bb50
bb50:
  %t152 = load i64, ptr %l8, !tbaa !24
  %t153 = load i64, ptr %l12, !tbaa !24
  %t154 = load i64, ptr %l10, !tbaa !24
  %t157 = mul i64 %t153, %t154
  %t160 = add i64 %t152, %t157
  store i64 %t160, ptr %l13, !tbaa !24
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/scope:Scoper", ptr %t162, i32 0, i32 69
  %t165 = load i64, ptr %l13, !tbaa !24
  %t168 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t164, i64 %t165)
  store i1 %t168, ptr %l97
  br label %bb51
bb51:
  %t169 = load i1, ptr %l97, !tbaa !21
  %t170 = xor i1 %t169, true
  br i1 %t170, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb55
bb53:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/scope:Scoper", ptr %t172, i32 0, i32 61
  %t175 = load i64, ptr %l13, !tbaa !24
  %t178 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t174, i64 %t175)
  store i1 %t178, ptr %l103
  br label %bb54
bb54:
  %t179 = load i1, ptr %l103, !tbaa !21
  %t180 = xor i1 %t179, true
  store i1 %t180, ptr %l99, !tbaa !21
  br label %bb55
bb55:
  %t182 = load i1, ptr %l99, !tbaa !21
  br i1 %t182, label %bb56, label %bb57
bb56:
  br label %bb78
bb57:
  br label %bb58
bb58:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l105, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/scope:Scoper", ptr %t184, i32 0, i32 66
  %t187 = load i64, ptr %l13, !tbaa !24
  %t190 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t186, i64 %t187)
  store %"compiler/source:Span" %t190, ptr %l109
  br label %bb59
bb59:
  %t191 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrStoresInReceiver(ptr %v0)
  store %"compiler/diagmsg:Msg" %t191, ptr %l110
  br label %bb60
bb60:
  %t192 = load ptr, ptr %l105, !tbaa !29
  %t193 = load %"compiler/source:Span", ptr %l109
  %t194 = load %"compiler/diagmsg:Msg", ptr %l110
  %t195 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t192, %"compiler/source:Span" %t193, %"compiler/diagmsg:Msg" %t194)
  store i64 %t195, ptr %l111
  br label %bb61
bb61:
  %t196 = load i64, ptr %l111, !tbaa !24
  store i64 %t196, ptr %l14, !tbaa !24
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/scope:Scoper", ptr %t197, i32 0, i32 67
  %t200 = load i64, ptr %l13, !tbaa !24
  %t203 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t199, i64 %t200)
  store i64 %t203, ptr %l115
  br label %bb62
bb62:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %t204, i32 0, i32 26
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t209 = icmp eq ptr %t207, null
  br i1 %t209, label %bb63, label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_a7a579971a154b67_66936e5e8b24a2eb)
  unreachable
bb64:
  br label %bb65
bb65:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/scope:Scoper", ptr %t211, i32 0, i32 26
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t217 = getelementptr %"compiler/typed:Body", ptr %t214, i32 0, i32 3
  %t218 = load i64, ptr %t217, !tbaa !24
  %t219 = load i64, ptr %l115, !tbaa !24
  %t221 = icmp ne i64 %t219, %t218
  br i1 %t221, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l124, !tbaa !21
  br label %bb70
bb67:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/scope:Scoper", ptr %t223, i32 0, i32 68
  %t226 = load i64, ptr %l13, !tbaa !24
  %t229 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t225, i64 %t226)
  store %"compiler/source:Span" %t229, ptr %l128
  br label %bb68
bb68:
  %t230 = getelementptr %"compiler/source:Span", ptr %l128, i32 0, i32 0
  %t231 = load i32, ptr %t230, !tbaa !23
  store i32 %t231, ptr %l129, !tbaa !23
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/scope:Scoper", ptr %t232, i32 0, i32 66
  %t235 = load i64, ptr %l13, !tbaa !24
  %t238 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t234, i64 %t235)
  store %"compiler/source:Span" %t238, ptr %l133
  br label %bb69
bb69:
  %t239 = getelementptr %"compiler/source:Span", ptr %l133, i32 0, i32 0
  %t240 = load i32, ptr %t239, !tbaa !23
  %t241 = load i32, ptr %l129, !tbaa !23
  %t243 = icmp ne i32 %t241, %t240
  store i1 %t243, ptr %l124, !tbaa !21
  br label %bb70
bb70:
  %t245 = load i1, ptr %l124, !tbaa !21
  br i1 %t245, label %bb71, label %bb72
bb71:
  %t246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t246, ptr %l136, !tbaa !29
  %t247 = load i64, ptr %l14, !tbaa !24
  store i64 %t247, ptr %l137, !tbaa !24
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %t248, i32 0, i32 67
  %t251 = load i64, ptr %l13, !tbaa !24
  %t254 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t250, i64 %t251)
  store i64 %t254, ptr %l141
  br label %bb73
bb72:
  br label %bb77
bb73:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/scope:Scoper", ptr %t255, i32 0, i32 68
  %t258 = load i64, ptr %l13, !tbaa !24
  %t261 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t257, i64 %t258)
  store %"compiler/source:Span" %t261, ptr %l145
  br label %bb74
bb74:
  %t262 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteStrBuildsHere(ptr %v0)
  store %"compiler/diagmsg:Msg" %t262, ptr %l146
  br label %bb75
bb75:
  %t263 = load ptr, ptr %l136, !tbaa !29
  %t264 = load i64, ptr %l137, !tbaa !24
  %t265 = load i64, ptr %l141, !tbaa !24
  %t266 = load %"compiler/source:Span", ptr %l145
  %t267 = load %"compiler/diagmsg:Msg", ptr %l146
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v0, ptr %t263, i64 %t264, i64 %t265, %"compiler/source:Span" %t266, %"compiler/diagmsg:Msg" %t267)
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %ret
bb78:
  %t268 = load i64, ptr %l12, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l12, !tbaa !24
  br label %bb47
bb79:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailTakes(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l15 = alloca { i64, ptr }
  %l21 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t31 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakenLocal(ptr %v0, ptr %v1, ptr %a0, ptr %t24)
  store i64 %t31, ptr %l21
  br label %bb5
bb5:
  %t33 = load i64, ptr %l21, !tbaa !24
  %t35 = icmp eq i64 %t33, %a2
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l4, !tbaa !24
  br label %bb1
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etaskArgsLast(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, [2 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca %"compiler/scope:Val"
  %l21 = alloca i1
  %l28 = alloca i64
  %l31 = alloca i64
  %l50 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca i1
  %l61 = alloca i1
  %l68 = alloca ptr
  %l71 = alloca { i64, [2 x i64] }
  %l73 = alloca i1
  %l81 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca %"compiler/diagmsg:Msg"
  %l86 = alloca i64
  %l87 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l93 = alloca i1
  %l97 = alloca i1
  %l101 = alloca i1
  %l102 = alloca ptr
  %l103 = alloca i1
  %l107 = alloca i1
  %l108 = alloca ptr
  %l110 = alloca i32
  %l111 = alloca i1
  %l112 = alloca i1
  %l117 = alloca i1
  %l119 = alloca { i64, ptr }
  %l122 = alloca i1
  %l123 = alloca ptr
  %l126 = alloca %"compiler/source:Span"
  %l128 = alloca i1
  %l129 = alloca ptr
  %l131 = alloca i32
  %l132 = alloca i1
  %l134 = alloca %"compiler/diagmsg:Msg"
  %l135 = alloca %"compiler/diagmsg:Msg"
  %l136 = alloca %"compiler/diagmsg:Msg"
  %l137 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a4, ptr %l4
  store { i64, [2 x i64] } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l6, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l8, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = load i64, ptr %l6, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l8, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l8, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l31, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l31, !tbaa !24
  store i64 %t34, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l28, !tbaa !24
  store i64 %t35, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l10, !tbaa !24
  %t37 = load i64, ptr %l9, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb62
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l10, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l11, !tbaa !24
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Call", ptr %t54, i32 0, i32 1
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l50, !tbaa !27
  %t58 = load i64, ptr %l11, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 %t58
  %t63 = load ptr, ptr %t62, !tbaa !39
  store ptr %t63, ptr %l12, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l12, !tbaa !29
  %t70 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t65, ptr %t66)
  store ptr %t70, ptr %l56
  br label %bb11
bb11:
  %t71 = load ptr, ptr %l56, !tbaa !29
  store ptr %t71, ptr %l13, !tbaa !29
  %t72 = load ptr, ptr %l13, !tbaa !29
  store ptr %t72, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t73 = load ptr, ptr %l57, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb12, label %bb13
bb12:
  %t76 = load ptr, ptr %l57, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 18}
  %t79 = icmp eq i64 %t77, 3
  store i1 %t79, ptr %l58, !tbaa !21
  br label %bb13
bb13:
  %t80 = load i1, ptr %l58, !tbaa !21
  br i1 %t80, label %bb14, label %bb15
bb14:
  %t81 = load ptr, ptr %l13, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 0
  %t85 = load %"compiler/source:Span", ptr %t84
  store %"compiler/source:Span" %t85, ptr %l14
  %t87 = load ptr, ptr %l13, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 1
  %t91 = load i32, ptr %t90
  store i32 %t91, ptr %l15, !tbaa !23
  %t93 = load ptr, ptr %l13, !tbaa !29
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t95, i32 0, i32 2
  %t97 = load ptr, ptr %t96
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l68, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t104 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t100, ptr %t97, i1 false)
  store { i64, [2 x i64] } %t104, ptr %l71
  br label %bb16
bb15:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb18
bb16:
  %t105 = load { i64, [2 x i64] }, ptr %l5
  %t106 = load ptr, ptr %l68, !tbaa !29
  %t107 = load { i64, [2 x i64] }, ptr %l71
  %t109 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %t106, { i64, [2 x i64] } %t107, { i64, [2 x i64] } %t105)
  store i1 %t109, ptr %l73
  br label %bb17
bb17:
  %t110 = load i1, ptr %l73, !tbaa !21
  %t111 = xor i1 %t110, true
  store i1 %t111, ptr %l61, !tbaa !21
  br label %bb18
bb18:
  %t113 = load i1, ptr %l61, !tbaa !21
  br i1 %t113, label %bb19, label %bb20
bb19:
  %t114 = load ptr, ptr %l13, !tbaa !29
  %t116 = getelementptr { i64, [5 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t116, i32 0, i32 0
  %t118 = load %"compiler/source:Span", ptr %t117
  store %"compiler/source:Span" %t118, ptr %l17
  %t120 = load ptr, ptr %l13, !tbaa !29
  %t122 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t122, i32 0, i32 1
  %t124 = load i32, ptr %t123
  store i32 %t124, ptr %l18, !tbaa !23
  %t126 = load ptr, ptr %l13, !tbaa !29
  %t128 = getelementptr { i64, [5 x i64] }, ptr %t126, i32 0, i32 1
  %t129 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t128, i32 0, i32 2
  %t130 = load ptr, ptr %t129
  store ptr %t130, ptr %l19, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l81, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l12, !tbaa !29
  %t137 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t133, ptr %t134)
  store %"compiler/source:Span" %t137, ptr %l84
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t138 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgTooShort(ptr %v0)
  store %"compiler/diagmsg:Msg" %t138, ptr %l85
  br label %bb22
bb22:
  %t139 = load ptr, ptr %l81, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l84
  %t141 = load %"compiler/diagmsg:Msg", ptr %l85
  %t142 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t139, %"compiler/source:Span" %t140, %"compiler/diagmsg:Msg" %t141)
  store i64 %t142, ptr %l86
  br label %bb23
bb23:
  br label %bb61
bb24:
  store { i64, ptr } %a2, ptr %l87, !tbaa !27
  %t144 = load i64, ptr %l11, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr %"compiler/scope:Val", ptr %t147, i64 %t144
  %t149 = load %"compiler/scope:Val", ptr %t148
  store %"compiler/scope:Val" %t149, ptr %l20
  store { i64, ptr } %a3, ptr %l90, !tbaa !27
  %t152 = load i64, ptr %l11, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr i1, ptr %t155, i64 %t152
  %t157 = load i1, ptr %t156, !tbaa !31
  br i1 %t157, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb27
bb26:
  %t159 = getelementptr %"compiler/scope:Val", ptr %l20, i32 0, i32 0
  %t160 = load i32, ptr %t159, !range !{i32 0, i32 5}
  %t162 = trunc i64 3 to i32
  %t163 = icmp eq i32 %t160, %t162
  %t165 = xor i1 %t163, true
  store i1 %t165, ptr %l93, !tbaa !21
  br label %bb27
bb27:
  %t167 = load i1, ptr %l93, !tbaa !21
  br i1 %t167, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb31
bb29:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/scope:Val", ptr %l20, i32 0, i32 1
  %t170 = load { i64, [2 x i64] }, ptr %t169
  %t171 = load { i64, [2 x i64] }, ptr %l5
  %t175 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %t168, { i64, [2 x i64] } %t170, { i64, [2 x i64] } %t171)
  store i1 %t175, ptr %l101
  br label %bb30
bb30:
  %t176 = load i1, ptr %l101, !tbaa !21
  store i1 %t176, ptr %l97, !tbaa !21
  br label %bb31
bb31:
  %t177 = load i1, ptr %l97, !tbaa !21
  br i1 %t177, label %bb32, label %bb33
bb32:
  br label %bb61
bb33:
  br label %bb34
bb34:
  %t178 = load ptr, ptr %l13, !tbaa !29
  store ptr %t178, ptr %l102, !tbaa !29
  store i1 false, ptr %l103, !tbaa !21
  %t179 = load ptr, ptr %l102, !tbaa !29
  %t180 = icmp ne ptr %t179, null
  br i1 %t180, label %bb35, label %bb36
bb35:
  %t182 = load ptr, ptr %l102, !tbaa !29
  %t183 = load i64, ptr %t182, !range !{i64 0, i64 18}
  %t185 = icmp eq i64 %t183, 3
  store i1 %t185, ptr %l103, !tbaa !21
  br label %bb36
bb36:
  %t186 = load i1, ptr %l103, !tbaa !21
  %t187 = xor i1 %t186, true
  br i1 %t187, label %bb37, label %bb38
bb37:
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l108, !tbaa !29
  %t190 = load ptr, ptr %l13, !tbaa !29
  %t192 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t190)
  store i32 %t192, ptr %l110
  br label %bb39
bb38:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb48
bb39:
  %t193 = load ptr, ptr %l108, !tbaa !29
  %t194 = load i32, ptr %l110, !tbaa !23
  %t195 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t193, i32 %t194)
  store i1 %t195, ptr %l111
  br label %bb40
bb40:
  %t196 = load i1, ptr %l111, !tbaa !21
  br i1 %t196, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l112, !tbaa !21
  br label %bb47
bb42:
  %t197 = load i64, ptr %l11, !tbaa !24
  %t198 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t203 = icmp slt i64 %t197, %t200
  br i1 %t203, label %bb43, label %bb44
bb43:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t206, ptr %l119, !tbaa !27
  %t207 = load i64, ptr %l11, !tbaa !24
  %t209 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr i32, ptr %t210, i64 %t207
  %t212 = load i32, ptr %t211, !tbaa !33
  %t215 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t205, i32 %t212)
  store i1 %t215, ptr %l122
  br label %bb45
bb44:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb46
bb45:
  %t216 = load i1, ptr %l122, !tbaa !21
  store i1 %t216, ptr %l117, !tbaa !21
  br label %bb46
bb46:
  %t217 = load i1, ptr %l117, !tbaa !21
  store i1 %t217, ptr %l112, !tbaa !21
  br label %bb47
bb47:
  %t218 = load i1, ptr %l112, !tbaa !21
  store i1 %t218, ptr %l107, !tbaa !21
  br label %bb48
bb48:
  %t219 = load i1, ptr %l107, !tbaa !21
  store i1 %t219, ptr %l21, !tbaa !21
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l123, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load ptr, ptr %l12, !tbaa !29
  %t225 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t221, ptr %t222)
  store %"compiler/source:Span" %t225, ptr %l126
  br label %bb49
bb49:
  %t226 = load i1, ptr %l21, !tbaa !21
  br i1 %t226, label %bb50, label %bb51
bb50:
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l129, !tbaa !29
  %t229 = load ptr, ptr %l13, !tbaa !29
  %t231 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t229)
  store i32 %t231, ptr %l131
  br label %bb52
bb51:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb54
bb52:
  %t232 = load ptr, ptr %l129, !tbaa !29
  %t233 = load i32, ptr %l131, !tbaa !23
  %t234 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t232, i32 %t233)
  store i1 %t234, ptr %l132
  br label %bb53
bb53:
  %t235 = load i1, ptr %l132, !tbaa !21
  %t236 = xor i1 %t235, true
  store i1 %t236, ptr %l128, !tbaa !21
  br label %bb54
bb54:
  %t238 = load i1, ptr %l128, !tbaa !21
  br i1 %t238, label %bb55, label %bb56
bb55:
  %t239 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgTooShort(ptr %v0)
  store %"compiler/diagmsg:Msg" %t239, ptr %l135
  br label %bb57
bb56:
  %t240 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgHoldsShort(ptr %v0)
  store %"compiler/diagmsg:Msg" %t240, ptr %l136
  br label %bb58
bb57:
  %t241 = load %"compiler/diagmsg:Msg", ptr %l135
  store %"compiler/diagmsg:Msg" %t241, ptr %l134
  br label %bb59
bb58:
  %t242 = load %"compiler/diagmsg:Msg", ptr %l136
  store %"compiler/diagmsg:Msg" %t242, ptr %l134
  br label %bb59
bb59:
  %t243 = load ptr, ptr %l123, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l126
  %t245 = load %"compiler/diagmsg:Msg", ptr %l134
  %t246 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t243, %"compiler/source:Span" %t244, %"compiler/diagmsg:Msg" %t245)
  store i64 %t246, ptr %l137
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t247 = load i64, ptr %l10, !tbaa !24
  %t249 = add i64 %t247, 1
  store i64 %t249, ptr %l10, !tbaa !24
  br label %bb7
bb62:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i32
  %l26 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca { i64, ptr }
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l67 = alloca i64
  %l70 = alloca i64
  %l88 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %l98 = alloca i64
  %l99 = alloca i64
  %l100 = alloca i64
  %l105 = alloca { i64, ptr }
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 11
  store ptr %t3, ptr %l14, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 26
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_b5bf758209bf0a7b_bacb7224757f2cdf)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l14, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l23
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l22
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t26, ptr %l12, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l12, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t28 = load i32, ptr %l1, !tbaa !23
  %t30 = icmp slt i32 %t28, 0
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb10
bb9:
  %t32 = load i32, ptr %l1, !tbaa !23
  %t34 = sext i32 %t32 to i64
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = icmp sgt i64 %t34, %t37
  store i1 %t40, ptr %l26, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l26, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t43, ptr %l33, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  store i64 %t45, ptr %l34, !tbaa !24
  %t46 = load i64, ptr %l34, !tbaa !24
  %t47 = mul i64 %t46, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l35, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l34, !tbaa !24
  %t56 = mul i64 %t55, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t52, ptr %t54, i64 %t56, i1 false)
  %t57 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t57, ptr %l33, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t58 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t58, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t59 = load i32, ptr %l1, !tbaa !23
  %t61 = sext i32 %t59 to i64
  store i64 %t61, ptr %l3, !tbaa !24
  br label %bb14
bb14:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t67, ptr %l41, !tbaa !27
  %t68 = load i64, ptr %l3, !tbaa !24
  %t70 = sub i64 %t68, 1
  %t72 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i8, ptr %t73, i64 %t70
  %t75 = load i8, ptr %t74, !tbaa !32
  %t77 = icmp ne i8 %t75, 10
  store i1 %t77, ptr %l40, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb17
bb17:
  %t79 = load i1, ptr %l40, !tbaa !21
  %t80 = xor i1 %t79, true
  br i1 %t80, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t82 = load i64, ptr %l3, !tbaa !24
  %t84 = sub i64 %t82, 1
  store i64 %t84, ptr %l3, !tbaa !24
  br label %bb21
bb21:
  br label %bb14
bb22:
  %t86 = load i32, ptr %l1, !tbaa !23
  %t88 = sext i32 %t86 to i64
  store i64 %t88, ptr %l4, !tbaa !24
  br label %bb23
bb23:
  %t90 = load i64, ptr %l4, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t96 = icmp slt i64 %t90, %t93
  br i1 %t96, label %bb24, label %bb25
bb24:
  %t98 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t98, ptr %l56, !tbaa !27
  %t99 = load i64, ptr %l4, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i8, ptr %t102, i64 %t99
  %t104 = load i8, ptr %t103, !tbaa !32
  %t106 = icmp ne i8 %t104, 10
  store i1 %t106, ptr %l55, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb26
bb26:
  %t108 = load i1, ptr %l55, !tbaa !21
  %t109 = xor i1 %t108, true
  br i1 %t109, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  br label %bb29
bb29:
  %t111 = load i64, ptr %l4, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l4, !tbaa !24
  br label %bb30
bb30:
  br label %bb23
bb31:
  store i64 1, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t115 = load i64, ptr %l3, !tbaa !24
  store i64 %t115, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t117 = load i64, ptr %l7, !tbaa !24
  %t118 = load i64, ptr %l6, !tbaa !24
  %t121 = icmp sgt i64 %t117, %t118
  br i1 %t121, label %bb32, label %bb33
bb32:
  %t123 = load i64, ptr %l8, !tbaa !24
  %t125 = icmp sgt i64 %t123, 0
  br i1 %t125, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb37
bb34:
  %t127 = load i64, ptr %l7, !tbaa !24
  %t128 = load i64, ptr %l6, !tbaa !24
  %t131 = sub i64 %t127, %t128
  %t132 = load i64, ptr %l8, !tbaa !24
  %t135 = add i64 %t131, %t132
  %t137 = sub i64 %t135, 1
  %t138 = load i64, ptr %l8, !tbaa !24
  %t141 = sdiv i64 %t137, %t138
  store i64 %t141, ptr %l70, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb36
bb36:
  %t143 = load i64, ptr %l70, !tbaa !24
  store i64 %t143, ptr %l67, !tbaa !24
  br label %bb37
bb37:
  %t144 = load i64, ptr %l67, !tbaa !24
  store i64 %t144, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb38
bb38:
  %t145 = load i64, ptr %l10, !tbaa !24
  %t146 = load i64, ptr %l9, !tbaa !24
  %t149 = icmp slt i64 %t145, %t146
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb39, label %bb40
bb39:
  br label %bb46
bb40:
  br label %bb41
bb41:
  %t153 = load i64, ptr %l6, !tbaa !24
  %t154 = load i64, ptr %l10, !tbaa !24
  %t155 = load i64, ptr %l8, !tbaa !24
  %t158 = mul i64 %t154, %t155
  %t161 = add i64 %t153, %t158
  %t163 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t163, ptr %l88, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i8, ptr %t167, i64 %t161
  %t169 = load i8, ptr %t168, !tbaa !32
  %t171 = icmp eq i8 %t169, 10
  br i1 %t171, label %bb42, label %bb43
bb42:
  %t173 = load i64, ptr %l5, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l5, !tbaa !24
  br label %bb44
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t177 = load i64, ptr %l10, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l10, !tbaa !24
  br label %bb38
bb46:
  %t181 = load i64, ptr %l5, !tbaa !24
  store i64 %t181, ptr %l96, !tbaa !24
  %t182 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t182, ptr %l97, !tbaa !27
  %t183 = load i64, ptr %l3, !tbaa !24
  store i64 %t183, ptr %l98, !tbaa !24
  %t184 = load i64, ptr %l4, !tbaa !24
  store i64 %t184, ptr %l99, !tbaa !24
  %t185 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 0
  store i64 %t186, ptr %l100, !tbaa !24
  %t187 = load i64, ptr %l98, !tbaa !24
  %t188 = icmp sge i64 %t187, 0
  br i1 %t188, label %bb47, label %bb48
bb47:
  %t190 = load i64, ptr %l98, !tbaa !24
  %t191 = load i64, ptr %l99, !tbaa !24
  %t192 = icmp sle i64 %t190, %t191
  br i1 %t192, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_f8a0ade9f5ab7564_a569fa0439998a48)
  unreachable
bb49:
  %t194 = load i64, ptr %l99, !tbaa !24
  %t195 = load i64, ptr %l100, !tbaa !24
  %t196 = icmp sle i64 %t194, %t195
  br i1 %t196, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_f8a0ade9f5ab7564_a569fa0439998a48)
  unreachable
bb51:
  %t198 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = load i64, ptr %l98, !tbaa !24
  %t201 = load i64, ptr %l99, !tbaa !24
  %t202 = getelementptr i8, ptr %t199, i64 %t200
  %t203 = sub i64 %t201, %t200
  %t204 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t202, 1
  %t207 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t205)
  store { i64, ptr } %t207, ptr %l105
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_f8a0ade9f5ab7564_a569fa0439998a48)
  unreachable
bb53:
  %t208 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t209 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t210 = load i64, ptr %l96, !tbaa !24
  %t211 = call i64 @__olang_fmt_i64(ptr null, i64 %t210)
  %t212 = add i64 %t209, %t211
  %t213 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t216 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t219 = add i64 %t215, %t218
  %t220 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t219)
  call void @olang_textcopy(ptr %t220, ptr %t208, i64 %t209)
  %t221 = getelementptr i8, ptr %t220, i64 %t209
  %t222 = call i64 @__olang_fmt_i64(ptr %t221, i64 %t210)
  %t223 = getelementptr i8, ptr %t221, i64 %t211
  call void @olang_textcopy(ptr %t223, ptr %t213, i64 %t214)
  %t224 = getelementptr i8, ptr %t223, i64 %t214
  call void @olang_textcopy(ptr %t224, ptr %t217, i64 %t218)
  %t225 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t220, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t226, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etypeKeeps(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i1
  %l19 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca i64
  %s0 = alloca %olang.scope
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
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i1, ptr %l12, !tbaa !21
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
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %s0, ptr %t15, i32 %t16)
  store { i64, ptr } %t19, ptr %l19
  br label %bb5
bb5:
  %t20 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t25 = sdiv i64 %t23, 3
  store i64 %t25, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = icmp sgt i64 %t27, %t28
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb11
bb8:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = sub i64 %t37, %t38
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = add i64 %t41, %t42
  %t47 = sub i64 %t45, 1
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = sdiv i64 %t47, %t48
  store i64 %t51, ptr %l29, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb10
bb10:
  %t53 = load i64, ptr %l29, !tbaa !24
  store i64 %t53, ptr %l26, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l26, !tbaa !24
  store i64 %t54, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb13, label %bb14
bb13:
  br label %bb20
bb14:
  br label %bb15
bb15:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = mul i64 %t64, %t65
  %t71 = add i64 %t63, %t68
  %t75 = mul i64 3, %t71
  %t77 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 %t75
  %t80 = load i64, ptr %t79, !tbaa !34
  %t84 = icmp eq i64 %t80, %a2
  br i1 %t84, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t87 = load i64, ptr %l8, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l8, !tbaa !24
  br label %bb12
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueArgBy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/scope:fnRecs"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/scope:fnRec"
  %l8 = alloca i64
  %l10 = alloca %"compiler/scope:fnRecs"
  %l16 = alloca %"compiler/scope:fnRecs"
  %l17 = alloca i32
  %l19 = alloca %"compiler/scope:fnRecs"
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/scope:fnRec"
  %l34 = alloca i64
  %l40 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  %l51 = alloca i1
  %l55 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 96
  %t6 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 2
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t12 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v0, ptr %t3, i64 %t9)
  %t13 = extractvalue { i32, %"compiler/scope:fnRecs" } %t12, 1
  %t14 = extractvalue { i32, %"compiler/scope:fnRecs" } %t12, 0
  store i32 %t14, ptr %l17
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb2, label %ok.16, !prof !99
ok.16:
  store %"compiler/scope:fnRecs" %t13, ptr %l16
  br label %bb1
bb1:
  %t18 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s0, ptr %l16)
  store %"compiler/scope:fnRecs" %t18, ptr %l19
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb4:
  %t20 = load %"compiler/scope:fnRecs", ptr %l19
  store %"compiler/scope:fnRecs" %t20, ptr %l10
  br label %bb5
bb5:
  %t21 = load %"compiler/scope:fnRecs", ptr %l10
  store %"compiler/scope:fnRecs" %t21, ptr %l4
  %t22 = getelementptr %"compiler/scope:fnRecs", ptr %l4, i32 0, i32 1
  %t23 = load i1, ptr %t22, !tbaa !21
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = getelementptr %"compiler/scope:fnRecs", ptr %l4, i32 0, i32 0
  store ptr %t28, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t30 = load i64, ptr %l6, !tbaa !24
  store i64 %t30, ptr %l25, !tbaa !24
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t31)
  store i64 %t33, ptr %l27
  br label %bb10
bb10:
  %t34 = load i64, ptr %l25, !tbaa !24
  %t35 = load i64, ptr %l27, !tbaa !24
  %t36 = icmp slt i64 %t34, %t35
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb11, label %bb12
bb11:
  br label %bb31
bb12:
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t40, i64 %t41)
  store %"compiler/scope:fnRec" %t44, ptr %l32
  br label %bb14
bb14:
  %t45 = load %"compiler/scope:fnRec", ptr %l32
  store %"compiler/scope:fnRec" %t45, ptr %l7
  %t46 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 2
  %t47 = load i1, ptr %t46, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l34, !tbaa !24
  br label %bb17
bb16:
  %t53 = load i64, ptr %l2, !tbaa !24
  store i64 %t53, ptr %l34, !tbaa !24
  br label %bb17
bb17:
  %t55 = load i64, ptr %l34, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = icmp eq i64 %t56, 0
  br i1 %t58, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 0
  %t62 = load i64, ptr %t61, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t67 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumKeeps(ptr %v0, ptr %t60, i64 %t62, i64 %t63)
  store i1 %t67, ptr %l44
  br label %bb20
bb19:
  %t68 = load i64, ptr %l3, !tbaa !24
  %t70 = icmp eq i64 %t68, 1
  br i1 %t70, label %bb21, label %bb22
bb20:
  %t72 = load i1, ptr %l44, !tbaa !21
  store i1 %t72, ptr %l40, !tbaa !21
  br label %bb26
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 0
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t80 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumPuts(ptr %v0, ptr %t73, i64 %t75, i64 %t76)
  store i1 %t80, ptr %l51
  br label %bb23
bb22:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  %t88 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %t81, i64 %t83, i64 %t84)
  store i1 %t88, ptr %l55
  br label %bb24
bb23:
  %t89 = load i1, ptr %l51, !tbaa !21
  store i1 %t89, ptr %l47, !tbaa !21
  br label %bb25
bb24:
  %t90 = load i1, ptr %l55, !tbaa !21
  store i1 %t90, ptr %l47, !tbaa !21
  br label %bb25
bb25:
  %t91 = load i1, ptr %l47, !tbaa !21
  store i1 %t91, ptr %l40, !tbaa !21
  br label %bb26
bb26:
  %t92 = load i1, ptr %l40, !tbaa !21
  br i1 %t92, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t96 = load i64, ptr %l6, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l6, !tbaa !24
  br label %bb9
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everLeave(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, [2 x i64] }
  %l9 = alloca ptr
  %l10 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l27 = alloca { i64, [2 x i64] }
  %l33 = alloca { i64, [2 x i64] }
  %l34 = alloca ptr
  %l44 = alloca i64
  %t50 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t8 = load ptr, ptr %l1, !tbaa !29
  store ptr %t8, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 17}
  %t15 = icmp eq i64 %t13, 0
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb6:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr { i64, [3 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t19, i32 0, i32 0
  %t21 = load %"compiler/source:Span", ptr %t20
  store %"compiler/source:Span" %t21, ptr %l2
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr { i64, [3 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t25, i32 0, i32 1
  %t27 = load i32, ptr %t26
  store i32 %t27, ptr %l3, !tbaa !23
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [3 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l4, !tbaa !29
  br label %bb8
bb7:
  br label %bb23
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l3, !tbaa !23
  %t38 = sext i32 %t36 to i64
  %t41 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t35, i64 %t38)
  store i1 %t41, ptr %l22
  br label %bb9
bb9:
  %t42 = load i1, ptr %l22, !tbaa !21
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t48 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enullLit(ptr %v0, ptr %v1, ptr %t43, ptr %t44)
  store i1 %t48, ptr %l26
  br label %bb12
bb11:
  br label %bb22
bb12:
  %t49 = load i1, ptr %l26, !tbaa !21
  br i1 %t49, label %bb13, label %bb14
bb13:
  store { i64, [2 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 0
  store i64 0, ptr %t51
  %t52 = load { i64, [2 x i64] }, ptr %t50
  store { i64, [2 x i64] } %t52, ptr %l27
  br label %bb16
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 34
  %t57 = load i32, ptr %l3, !tbaa !23
  %t59 = sext i32 %t57 to i64
  %t62 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t56, i64 %t59)
  store { i64, [2 x i64] } %t62, ptr %l33
  br label %bb15
bb15:
  %t63 = load { i64, [2 x i64] }, ptr %l33
  store { i64, [2 x i64] } %t63, ptr %l27
  br label %bb16
bb16:
  %t64 = load { i64, [2 x i64] }, ptr %l27
  store { i64, [2 x i64] } %t64, ptr %l5
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l34, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 159
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_f9efe5e3021b7317_b2d7cb5f351874eb)
  unreachable
bb18:
  br label %bb19
bb19:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/scope:Scoper", ptr %t73, i32 0, i32 159
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t77 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = sext i32 %t78 to i64
  %t81 = load i32, ptr %l3, !tbaa !23
  %t83 = sext i32 %t81 to i64
  %t87 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %t76, i64 %t80, i64 %t83)
  store i64 %t87, ptr %l44
  br label %bb20
bb20:
  %t88 = load { i64, [2 x i64] }, ptr %l5
  %t89 = load ptr, ptr %l34, !tbaa !29
  %t90 = load i64, ptr %l44, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everDefine(ptr %v0, ptr %t89, i64 %t90, { i64, [2 x i64] } %t88)
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_c58b4ef247f2f2ef_dcef76d0364f9513)
  unreachable
bb28:
  %t92 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everPop(ptr %v0, ptr %t92)
  br label %bb29
bb29:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fscope_2ecopiedView(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l23 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t15 = load ptr, ptr %l12, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb7
bb5:
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 8}
  %t21 = icmp eq i64 %t19, 2
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l10, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l1, !tbaa !29
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 10
  store i1 %t41, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t42 = load i1, ptr %l20, !tbaa !21
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t45, i32 0, i32 0
  %t47 = load %"compiler/source:Span", ptr %t46
  store %"compiler/source:Span" %t47, ptr %l2
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 1
  %t53 = load i32, ptr %t52
  store i32 %t53, ptr %l3, !tbaa !23
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l4, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l23, !tbaa !29
  br label %bb15
bb14:
  store ptr null, ptr %l23, !tbaa !29
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l23, !tbaa !29
  store ptr %t64, ptr %l5, !tbaa !29
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store ptr null, ptr %l5, !tbaa !29
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_5cea26a29927212c_bdea4cf59f2468a8)
  unreachable
bb21:
  %t65 = load ptr, ptr %l5, !tbaa !29
  store ptr %t65, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fscope_2eisLambda(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
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
  %t8 = icmp eq i64 %t6, 15
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
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l9, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 3}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l10, !tbaa !21
  store i1 %t24, ptr %l2, !tbaa !21
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_9119d5dcc37d622_28739e61904becb6)
  unreachable
bb13:
  %t25 = load i1, ptr %l2, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i1 @compiler_2fscope_2eisParamRead(ptr %v0, ptr %t16, i64 %t17)
  store i1 %t20, ptr %l15
  br label %bb6
bb6:
  %t21 = load i1, ptr %l15, !tbaa !21
  store i1 %t21, ptr %l6, !tbaa !21
  br label %bb33
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %t37, i64 %t38)
  store i1 %t41, ptr %l24
  br label %bb13
bb13:
  %t42 = load i1, ptr %l24, !tbaa !21
  store i1 %t42, ptr %l6, !tbaa !21
  br label %bb33
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t44 = load ptr, ptr %l25, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 4
  store i1 %t50, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l26, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t54, i32 0, i32 2
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Elem", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = call i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %t61, i64 %t62)
  store i1 %t65, ptr %l34
  br label %bb20
bb20:
  %t66 = load i1, ptr %l34, !tbaa !21
  store i1 %t66, ptr %l6, !tbaa !21
  br label %bb33
bb21:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t68 = load ptr, ptr %l35, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t71 = load ptr, ptr %l35, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 8}
  %t74 = icmp eq i64 %t72, 5
  store i1 %t74, ptr %l36, !tbaa !21
  br label %bb23
bb23:
  %t75 = load i1, ptr %l36, !tbaa !21
  br i1 %t75, label %bb24, label %bb25
bb24:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Payload", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  %t89 = call i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %t85, i64 %t86)
  store i1 %t89, ptr %l44
  br label %bb27
bb27:
  %t90 = load i1, ptr %l44, !tbaa !21
  store i1 %t90, ptr %l6, !tbaa !21
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_de08ebb91f95dcfa_b585075445edabbe)
  unreachable
bb33:
  %t91 = load i1, ptr %l6, !tbaa !21
  store i1 %t91, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2esamePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l51 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l75 = alloca i1
  %l78 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i1
  %l96 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i1
  %l114 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t2 = load ptr, ptr %l16, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l16, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l17, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t17 = load ptr, ptr %l22, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l22, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l23, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l2, !tbaa !23
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = icmp eq i32 %t31, %t32
  store i1 %t35, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_a2e1872fc279d8a_8a79a1b2bcdb44de)
  unreachable
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t39 = load ptr, ptr %l32, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb17, label %bb18
bb17:
  %t42 = load ptr, ptr %l32, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 1
  store i1 %t45, ptr %l33, !tbaa !21
  br label %bb18
bb18:
  %t46 = load i1, ptr %l33, !tbaa !21
  br i1 %t46, label %bb19, label %bb20
bb19:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t49, i32 0, i32 2
  %t51 = load i64, ptr %t50
  store i64 %t51, ptr %l4, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t55, i32 0, i32 3
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l5, !tbaa !23
  br label %bb21
bb20:
  br label %bb35
bb21:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t60 = load ptr, ptr %l40, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t63 = load ptr, ptr %l40, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 1
  store i1 %t66, ptr %l41, !tbaa !21
  br label %bb23
bb23:
  %t67 = load i1, ptr %l41, !tbaa !21
  br i1 %t67, label %bb24, label %bb25
bb24:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t70, i32 0, i32 2
  %t72 = load i64, ptr %t71
  store i64 %t72, ptr %l6, !tbaa !24
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t76, i32 0, i32 3
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l7, !tbaa !23
  br label %bb26
bb25:
  br label %bb30
bb26:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l6, !tbaa !24
  %t84 = icmp eq i64 %t80, %t81
  br i1 %t84, label %bb27, label %bb28
bb27:
  %t86 = load i32, ptr %l5, !tbaa !23
  %t87 = load i32, ptr %l7, !tbaa !23
  %t90 = icmp eq i32 %t86, %t87
  store i1 %t90, ptr %l51, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb29
bb29:
  %t92 = load i1, ptr %l51, !tbaa !21
  store i1 %t92, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_47ef840e900de1cb_a6f9bafba919115f)
  unreachable
bb35:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t95 = load ptr, ptr %l56, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb36, label %bb37
bb36:
  %t98 = load ptr, ptr %l56, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 8}
  %t101 = icmp eq i64 %t99, 3
  store i1 %t101, ptr %l57, !tbaa !21
  br label %bb37
bb37:
  %t102 = load i1, ptr %l57, !tbaa !21
  br i1 %t102, label %bb38, label %bb39
bb38:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t105, i32 0, i32 2
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l8, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t111, i32 0, i32 3
  %t113 = load i64, ptr %t112
  store i64 %t113, ptr %l9, !tbaa !24
  br label %bb40
bb39:
  br label %bb55
bb40:
  %t115 = load ptr, ptr %l1, !tbaa !29
  store ptr %t115, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t116 = load ptr, ptr %l64, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb41, label %bb42
bb41:
  %t119 = load ptr, ptr %l64, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 8}
  %t122 = icmp eq i64 %t120, 3
  store i1 %t122, ptr %l65, !tbaa !21
  br label %bb42
bb42:
  %t123 = load i1, ptr %l65, !tbaa !21
  br i1 %t123, label %bb43, label %bb44
bb43:
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t126, i32 0, i32 2
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l10, !tbaa !29
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t132, i32 0, i32 3
  %t134 = load i64, ptr %t133
  store i64 %t134, ptr %l11, !tbaa !24
  br label %bb45
bb44:
  br label %bb50
bb45:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t140 = icmp eq i64 %t136, %t137
  br i1 %t140, label %bb46, label %bb47
bb46:
  %t142 = load ptr, ptr %l8, !tbaa !29
  %t143 = load ptr, ptr %l10, !tbaa !29
  %t146 = call i1 @compiler_2fscope_2esamePlace(ptr %v0, ptr %v1, ptr %t142, ptr %t143)
  store i1 %t146, ptr %l78
  br label %bb48
bb47:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb49
bb48:
  %t147 = load i1, ptr %l78, !tbaa !21
  store i1 %t147, ptr %l75, !tbaa !21
  br label %bb49
bb49:
  %t148 = load i1, ptr %l75, !tbaa !21
  store i1 %t148, ptr %rv
  br label %ret
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store i1 false, ptr %rv
  br label %ret
bb54:
  call void @__olang_check_failed(ptr @olang_loc_d4d529aa71cebe90_28028db684dcc724)
  unreachable
bb55:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t151 = load ptr, ptr %l80, !tbaa !29
  %t152 = icmp ne ptr %t151, null
  br i1 %t152, label %bb56, label %bb57
bb56:
  %t154 = load ptr, ptr %l80, !tbaa !29
  %t155 = load i64, ptr %t154, !range !{i64 0, i64 8}
  %t157 = icmp eq i64 %t155, 4
  store i1 %t157, ptr %l81, !tbaa !21
  br label %bb57
bb57:
  %t158 = load i1, ptr %l81, !tbaa !21
  br i1 %t158, label %bb58, label %bb59
bb58:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t161, i32 0, i32 2
  %t163 = load ptr, ptr %t162
  store ptr %t163, ptr %l12, !tbaa !29
  br label %bb60
bb59:
  br label %bb72
bb60:
  %t165 = load ptr, ptr %l1, !tbaa !29
  store ptr %t165, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t166 = load ptr, ptr %l86, !tbaa !29
  %t167 = icmp ne ptr %t166, null
  br i1 %t167, label %bb61, label %bb62
bb61:
  %t169 = load ptr, ptr %l86, !tbaa !29
  %t170 = load i64, ptr %t169, !range !{i64 0, i64 8}
  %t172 = icmp eq i64 %t170, 4
  store i1 %t172, ptr %l87, !tbaa !21
  br label %bb62
bb62:
  %t173 = load i1, ptr %l87, !tbaa !21
  br i1 %t173, label %bb63, label %bb64
bb63:
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr { i64, [4 x i64] }, ptr %t174, i32 0, i32 1
  %t177 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t176, i32 0, i32 2
  %t178 = load ptr, ptr %t177
  store ptr %t178, ptr %l13, !tbaa !29
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t180 = load ptr, ptr %l12, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Elem", ptr %t180, i32 0, i32 0
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t184 = load ptr, ptr %l13, !tbaa !29
  %t186 = getelementptr %"compiler/typed:Elem", ptr %t184, i32 0, i32 0
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t190 = call i1 @compiler_2fscope_2esamePlace(ptr %v0, ptr %v1, ptr %t183, ptr %t187)
  store i1 %t190, ptr %l96
  br label %bb66
bb66:
  %t191 = load i1, ptr %l96, !tbaa !21
  store i1 %t191, ptr %rv
  br label %ret
bb67:
  br i1 true, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  store i1 false, ptr %rv
  br label %ret
bb71:
  call void @__olang_check_failed(ptr @olang_loc_20541c289332b921_710be4ff0c873615)
  unreachable
bb72:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t194 = load ptr, ptr %l98, !tbaa !29
  %t195 = icmp ne ptr %t194, null
  br i1 %t195, label %bb73, label %bb74
bb73:
  %t197 = load ptr, ptr %l98, !tbaa !29
  %t198 = load i64, ptr %t197, !range !{i64 0, i64 8}
  %t200 = icmp eq i64 %t198, 5
  store i1 %t200, ptr %l99, !tbaa !21
  br label %bb74
bb74:
  %t201 = load i1, ptr %l99, !tbaa !21
  br i1 %t201, label %bb75, label %bb76
bb75:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr { i64, [4 x i64] }, ptr %t202, i32 0, i32 1
  %t205 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t204, i32 0, i32 2
  %t206 = load ptr, ptr %t205
  store ptr %t206, ptr %l14, !tbaa !29
  br label %bb77
bb76:
  br label %bb89
bb77:
  %t208 = load ptr, ptr %l1, !tbaa !29
  store ptr %t208, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t209 = load ptr, ptr %l104, !tbaa !29
  %t210 = icmp ne ptr %t209, null
  br i1 %t210, label %bb78, label %bb79
bb78:
  %t212 = load ptr, ptr %l104, !tbaa !29
  %t213 = load i64, ptr %t212, !range !{i64 0, i64 8}
  %t215 = icmp eq i64 %t213, 5
  store i1 %t215, ptr %l105, !tbaa !21
  br label %bb79
bb79:
  %t216 = load i1, ptr %l105, !tbaa !21
  br i1 %t216, label %bb80, label %bb81
bb80:
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t219, i32 0, i32 2
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l15, !tbaa !29
  br label %bb82
bb81:
  br label %bb84
bb82:
  %t223 = load ptr, ptr %l14, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Payload", ptr %t223, i32 0, i32 0
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t227 = load ptr, ptr %l15, !tbaa !29
  %t229 = getelementptr %"compiler/typed:Payload", ptr %t227, i32 0, i32 0
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t233 = call i1 @compiler_2fscope_2esamePlace(ptr %v0, ptr %v1, ptr %t226, ptr %t230)
  store i1 %t233, ptr %l114
  br label %bb83
bb83:
  %t234 = load i1, ptr %l114, !tbaa !21
  store i1 %t234, ptr %rv
  br label %ret
bb84:
  br i1 true, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  store i1 false, ptr %rv
  br label %ret
bb88:
  call void @__olang_check_failed(ptr @olang_loc_12c86fa30b0192c6_499939c2df2a8642)
  unreachable
bb89:
  br i1 true, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb93
bb92:
  store i1 false, ptr %rv
  br label %ret
bb93:
  call void @__olang_check_failed(ptr @olang_loc_d994985b967908a7_8595dfdeaadacdc3)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2etempOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l5, !tbaa !29
  br label %bb32
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l15, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = call ptr @compiler_2fscope_2etempOf(ptr %v0, ptr %v1, ptr %t34)
  store ptr %t36, ptr %l21
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l21, !tbaa !29
  store ptr %t37, ptr %l5, !tbaa !29
  br label %bb32
bb13:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 4
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb15
bb15:
  %t46 = load i1, ptr %l23, !tbaa !21
  br i1 %t46, label %bb16, label %bb17
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Elem", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = call ptr @compiler_2fscope_2etempOf(ptr %v0, ptr %v1, ptr %t56)
  store ptr %t58, ptr %l30
  br label %bb19
bb19:
  %t59 = load ptr, ptr %l30, !tbaa !29
  store ptr %t59, ptr %l5, !tbaa !29
  br label %bb32
bb20:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t61 = load ptr, ptr %l31, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb21, label %bb22
bb21:
  %t64 = load ptr, ptr %l31, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 8}
  %t67 = icmp eq i64 %t65, 5
  store i1 %t67, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t68 = load i1, ptr %l32, !tbaa !21
  br i1 %t68, label %bb23, label %bb24
bb23:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 2
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Payload", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = call ptr @compiler_2fscope_2etempOf(ptr %v0, ptr %v1, ptr %t78)
  store ptr %t80, ptr %l39
  br label %bb26
bb26:
  %t81 = load ptr, ptr %l39, !tbaa !29
  store ptr %t81, ptr %l5, !tbaa !29
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store ptr null, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_b9adacf3a4390842_d068b36fad944ba6)
  unreachable
bb32:
  %t82 = load ptr, ptr %l5, !tbaa !29
  store ptr %t82, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

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
@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" == " }>, align 8
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" >= " }>, align 8
@.d2 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" why " }>, align 8
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
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"rel " }>, align 8
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
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  br label %bb1
bb3:
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t8, i64 %t9)
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t15 = sext i32 %t13 to i64
  %t16 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t17 = call i64 @__olang_fmt_i64(ptr %t16, i64 %t15)
  call void @__olang_sb_add(ptr %v0, i64 %t17)
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t18, i64 %t19)
  br label %bb1
bb4:
  %t20 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t20, i64 %t21)
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t22, i64 %t23)
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 1
  %t26 = getelementptr { i64 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  %t29 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t27)
  call void @__olang_sb_add(ptr %v0, i64 %t30)
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb5:
  %t33 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb6:
  %t35 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  %t41 = getelementptr { i64, i64 }, ptr %t40, i32 0, i32 0
  %t42 = load i64, ptr %t41
  %t44 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t45 = call i64 @__olang_fmt_i64(ptr %t44, i64 %t42)
  call void @__olang_sb_add(ptr %v0, i64 %t45)
  %t46 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t46, i64 %t47)
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  %t50 = getelementptr { i64, i64 }, ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50
  %t53 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t54 = call i64 @__olang_fmt_i64(ptr %t53, i64 %t51)
  call void @__olang_sb_add(ptr %v0, i64 %t54)
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb7:
  %t57 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i32 0, i32 1
  %t63 = getelementptr { i64 }, ptr %t62, i32 0, i32 0
  %t64 = load i64, ptr %t63
  %t66 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t67 = call i64 @__olang_fmt_i64(ptr %t66, i64 %t64)
  call void @__olang_sb_add(ptr %v0, i64 %t67)
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t68, i64 %t69)
  br label %bb1
bb8:
  %t70 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t70, i64 %t71)
  br label %bb1
ret:
  ret void
}

@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_sb_done(ptr)
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"var " }>, align 8
@.d7 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" builds " }>, align 8
@.c8 = private unnamed_addr constant [5 x i8] c"true\00"
@.c9 = private unnamed_addr constant [6 x i8] c"false\00"
@.d10 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" real " }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d12 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"param " }>, align 8
@.d13 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" keeps " }>, align 8
@.d14 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" stores " }>, align 8
@.d15 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" puts " }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d17 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"result binds " }>, align 8
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
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"at" }>, align 8
@.d23 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"SetAt" }>, align 8
@.d24 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"setAt" }>, align 8
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
@.d25 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"lift param " }>, align 8
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
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

declare ptr @__olang_scope_of(ptr, ptr) noinline
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

@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d30 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"line " }>, align 8
@.d31 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
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
@.d32 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"scope.Term.None" }>, align 8
@.d33 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"scope.Term.Block" }>, align 8
@.d34 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d35 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d36 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Var" }>, align 8
@.d37 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Program" }>, align 8
@.d38 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Derived" }>, align 8
@.d39 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d40 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Set" }>, align 8
@.d41 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"scope.Term.Untraced" }>, align 8
declare ptr @__olang_sb_grow(ptr, i64) noinline
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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

@olang_loc_9f0c519cc5cbfc38_501f2fba46fc3fe4 = external constant [0 x i8]
@olang_loc_a49123b9ad752209_94dfdd7272e659d5 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_85776ac018629bcc_231804c012e3a7c0 = external constant [0 x i8]
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_2489ab739aea8b00_863e154a28bdb8e4 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndDef(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_eaa381098a4cba91_8661e0f292bb03a5 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fscope_2eBndStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_dcf380f9f9bca18a_c8831d1bb96b26fe = external constant [0 x i8]
@G_2ecompiler_2fscope_2eBndOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndReturn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fscope_2eBndYield = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eBndTask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundary(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndTask(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_9ceb5e4b647bcfb2_89396b6881b55af6 = external constant [0 x i8]
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_464d30f55bb3bd9f_ade33f29fdfc09bb = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_cc53225111d23812_6db663f7efd109e = external constant [0 x i8]
declare i1 @compiler_2fscope_2eisDerived({ i64, [2 x i64] } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, %"compiler/source:Span" %a4)
@olang_loc_43515980f8c6aee5_797864ac7e38a2e9 = external constant [0 x i8]
@olang_loc_afca299d588086d2_4faebb8dc8bed846 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecapTerm({ i64, [2 x i64] } %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
@olang_loc_fb22e57a4d25fb73_7399fc8ad6df692f = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
@olang_loc_484116b6187c51a4_a28253a9c61223d0 = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6565225f22a9410_9e144c80289592dc = external constant [0 x i8]
@olang_loc_51d544a4138e8ea1_353538615dae2c0d = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepsStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2epartRead(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_f7f7e8cd8f874575_c4b9e23387941a21 = external constant [0 x i8]
@olang_loc_fdfd3ee9277a2fdd_9e10cfc7d92600f9 = external constant [0 x i8]
@olang_loc_933cba94e4afba7f_7f3963489057e55b = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisMethodCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarried(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflAdd(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecarries(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoutside(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eflThroughRefExpr(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplainCopyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2etermGiven({ i64, [2 x i64] } %a0)
@olang_loc_9d00f6934855daa_c9673762d5df43fe = external constant [0 x i8]
declare i64 @compiler_2fscope_2eregionRoot(ptr %v0, ptr %a0)
@olang_loc_6f89170392198c6b_c18aa73f993179ff = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_2d8599dd2a60d272_f2da26d46793a2d6 = external constant [0 x i8]
@olang_loc_8dedfa134432c6f3_d3b15d93042206f7 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_4f09217bbbe73e28_17ebc948c6ad3e44 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRefs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorThroughRef(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOwn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H240bd86caf003ea6de374cb77d0dbfc6(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, [2 x i64] } %a2)
@olang_loc_d64177be35f4f565_932d783fbb65d231 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_30265a370842a0bf_7ea43995978c50bb = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_34654a73490c6ea0_7e86f88310c4f44c = external constant [0 x i8]
@olang_loc_406ffa91c23643d5_a8a413026b137651 = external constant [0 x i8]
@olang_loc_a53dc1127e8f642e_8cd05a2a2a6c7d4a = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %a0)
@olang_loc_ce604c7c8d78c55f_37d65431cab9ef4b = external constant [0 x i8]
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eshownLocal(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_e3b1519f2cd9e3f_ab06c290896c8a23 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ba9f0d4a6ce4dfd1_bbc533a76e9c726d = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsOwn(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_35a0db4bb33c4eca_64047b23f4523846 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %a0, i32 %a1)
declare { i32, %"compiler/scope:agreeAt" } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eagreeStep(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2, { i64, [2 x i64] } %a3, i1 %a4)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadScopesDisagree(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftBinding(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3)
@olang_loc_77b9c3fe239f8a15_7d2ae6753660d6f1 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCursor(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3, i64 %a4)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewedBy(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftStorage(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare ptr @compiler_2fscope_2eprojectedCall(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_6ccee791db7b4e6e_13269d22c1889aea = external constant [0 x i8]
@G_2ecompiler_2fscope_2ePlaceView = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
@olang_loc_68c26a056650fe9f_5036bfb83c207a6b = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeStorage(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldCall(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftLocal(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3)
@olang_loc_8906caa07fce1c41_2423601c580ca5fd = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReaching(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_7e21c4142f0bda85_cfc7aa0bb53bfe81 = external constant [0 x i8]
declare %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_ed814b94f6a98b8c_ead1babe88bc22e8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fscope_2ecapVarOf(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @compiler_2fscope_2ecapCode(i64 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ae81d4d244f6a670_8f3729da339b0a94 = external constant [0 x i8]
@olang_loc_678543b1c51fd044_bcff5a6e112a6af8 = external constant [0 x i8]
@olang_loc_90a9d28716f9cb6_29834bc9108cc36a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrStoresInReceiver(ptr %v0)
@olang_loc_a7a579971a154b67_66936e5e8b24a2eb = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteStrBuildsHere(ptr %v0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/diagmsg:Msg" %a4)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakenLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgTooShort(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgHoldsShort(ptr %v0)
@olang_loc_b5bf758209bf0a7b_bacb7224757f2cdf = external constant [0 x i8]
@olang_loc_f8a0ade9f5ab7564_a569fa0439998a48 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumKeeps(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumPuts(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enullLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f9efe5e3021b7317_b2d7cb5f351874eb = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everDefine(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_c58b4ef247f2f2ef_dcef76d0364f9513 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everPop(ptr %v0, ptr %a0)
@olang_loc_5cea26a29927212c_bdea4cf59f2468a8 = external constant [0 x i8]
@olang_loc_9119d5dcc37d622_28739e61904becb6 = external constant [0 x i8]
declare i1 @compiler_2fscope_2eisParamRead(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_de08ebb91f95dcfa_b585075445edabbe = external constant [0 x i8]
@olang_loc_a2e1872fc279d8a_8a79a1b2bcdb44de = external constant [0 x i8]
@olang_loc_47ef840e900de1cb_a6f9bafba919115f = external constant [0 x i8]
@olang_loc_d4d529aa71cebe90_28028db684dcc724 = external constant [0 x i8]
@olang_loc_20541c289332b921_710be4ff0c873615 = external constant [0 x i8]
@olang_loc_12c86fa30b0192c6_499939c2df2a8642 = external constant [0 x i8]
@olang_loc_d994985b967908a7_8595dfdeaadacdc3 = external constant [0 x i8]
@olang_loc_b9adacf3a4390842_d068b36fad944ba6 = external constant [0 x i8]

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
