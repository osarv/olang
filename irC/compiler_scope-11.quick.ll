source_filename = "compiler_scope-11.quick.ll"
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
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/scope:placeSlot" = type { { i64, [2 x i64] }, i1, i64 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" = type { { i64, ptr }, i64 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/scope:agreeAt" = type { { i64, [2 x i64] }, i1 }
%"compiler/scope:placedRow" = type { %"compiler/source:Span", i64 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i1 @compiler_2fscope_2ecapVarOf(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca i32
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 6
  %t7 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t3, i64 %a1)
  store { i64, [1 x i64] } %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load { i64, [1 x i64] }, ptr %l8
  store { i64, [1 x i64] } %t8, ptr %l3
  %t9 = load { i64, [1 x i64] }, ptr %l3
  %t11 = extractvalue { i64, [1 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 4
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb18
bb5:
  %t14 = load { i64, [1 x i64] }, ptr %l3
  %t16 = extractvalue { i64, [1 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 0
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = getelementptr { i64, [1 x i64] }, ptr %l3, i32 0, i32 1
  %t20 = getelementptr { i32 }, ptr %t19, i32 0, i32 0
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l4, !tbaa !23
  br label %bb8
bb7:
  br label %bb13
bb8:
  br i1 %a2, label %bb9, label %bb10
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l4, !tbaa !23
  %t29 = call i64 @compiler_2fscope_2eparamPos(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l19
  br label %bb11
bb10:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb12
bb11:
  %t30 = load i64, ptr %l19, !tbaa !24
  %t31 = icmp eq i64 %t30, 0
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l16, !tbaa !21
  store i1 %t33, ptr %l9, !tbaa !21
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_feef46b3c06a5dff_8464d86ba5980c13)
  unreachable
bb18:
  %t34 = load i1, ptr %l9, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eRun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca %"compiler/scope:fnRec"
  %l25 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l56 = alloca ptr
  %l73 = alloca ptr
  %l78 = alloca i32
  %l86 = alloca i64
  %l88 = alloca i64
  %l93 = alloca ptr
  %l98 = alloca i1
  %l103 = alloca ptr
  %l105 = alloca i64
  %l118 = alloca i1
  %l124 = alloca i64
  %l128 = alloca i64
  %l131 = alloca i64
  %l152 = alloca ptr
  %l155 = alloca i64
  %l157 = alloca i1
  %l158 = alloca ptr
  %l159 = alloca i64
  %l163 = alloca ptr
  %l165 = alloca ptr
  %l169 = alloca ptr
  %l172 = alloca i1
  %l179 = alloca ptr
  %l182 = alloca i64
  %l184 = alloca i1
  %l185 = alloca ptr
  %l189 = alloca ptr
  %l192 = alloca i1
  %l194 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l199 = alloca ptr
  %l203 = alloca ptr
  %l206 = alloca i32
  %l210 = alloca ptr
  %l213 = alloca i64
  %l215 = alloca i64
  %l220 = alloca %"compiler/scope:fnRec"
  %l222 = alloca %"compiler/scope:fnRec"
  %l228 = alloca i64
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l28
  br label %bb1
bb1:
  %t6 = load i64, ptr %l28, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l35, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l35, !tbaa !24
  store i64 %t33, ptr %l32, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l32, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb33
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l6, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l56
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l56, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 1
  %t63 = load { i64, [2 x i64] }, ptr %t62
  store { i64, [2 x i64] } %t63, ptr %l7
  %t65 = load { i64, [2 x i64] }, ptr %l7
  %t67 = extractvalue { i64, [2 x i64] } %t65, 0
  %t68 = icmp eq i64 %t67, 1
  br i1 %t68, label %bb13, label %bb14
bb13:
  %t70 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t71 = getelementptr { i32, i32 }, ptr %t70, i32 0, i32 0
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l8, !tbaa !23
  %t74 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t75 = getelementptr { i32, i32 }, ptr %t74, i32 0, i32 1
  %t76 = load i32, ptr %t75
  store i32 %t76, ptr %l9, !tbaa !23
  br label %bb15
bb14:
  br label %bb20
bb15:
  %t78 = load i32, ptr %l9, !tbaa !23
  %t80 = icmp eq i32 %t78, 0
  br i1 %t80, label %bb16, label %bb17
bb16:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 7
  %t85 = load i32, ptr %l8, !tbaa !23
  %t86 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t84, i32 %t85, i64 %t86)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb31
bb20:
  %t90 = load { i64, [2 x i64] }, ptr %l7
  %t92 = extractvalue { i64, [2 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 3
  br i1 %t93, label %bb21, label %bb22
bb21:
  %t95 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t96 = getelementptr { i32 }, ptr %t95, i32 0, i32 0
  %t97 = load i32, ptr %t96
  store i32 %t97, ptr %l10, !tbaa !23
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/scope:Scoper", ptr %t99, i32 0, i32 8
  store ptr %t101, ptr %l73, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/scope:Scoper", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load i32, ptr %l10, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l78
  br label %bb24
bb24:
  %t112 = load i64, ptr %l6, !tbaa !24
  %t113 = load ptr, ptr %l73, !tbaa !29
  %t114 = load i32, ptr %l78, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t113, i32 %t114, i64 %t112)
  br label %bb25
bb25:
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_c8704b3f07e6b10d_5332dc31294ce6e9)
  unreachable
bb31:
  br label %bb32
bb32:
  %t116 = load i64, ptr %l5, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l5, !tbaa !24
  br label %bb8
bb33:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/scope:Scoper", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 10
  store ptr %t128, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb34
bb34:
  %t130 = load i64, ptr %l12, !tbaa !24
  store i64 %t130, ptr %l86, !tbaa !24
  %t131 = load ptr, ptr %l11, !tbaa !29
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t131)
  store i64 %t133, ptr %l88
  br label %bb35
bb35:
  %t134 = load i64, ptr %l86, !tbaa !24
  %t135 = load i64, ptr %l88, !tbaa !24
  %t136 = icmp slt i64 %t134, %t135
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb36, label %bb37
bb36:
  br label %bb51
bb37:
  br label %bb38
bb38:
  %t140 = load ptr, ptr %l11, !tbaa !29
  %t141 = load i64, ptr %l12, !tbaa !24
  %t144 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t140, i64 %t141)
  store ptr %t144, ptr %l93
  br label %bb39
bb39:
  %t145 = load ptr, ptr %l93, !tbaa !29
  store ptr %t145, ptr %l13, !tbaa !29
  %t146 = load ptr, ptr %l13, !tbaa !29
  %t148 = getelementptr %"compiler/load:Module", ptr %t146, i32 0, i32 6
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = icmp eq ptr %t149, null
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb40, label %bb41
bb40:
  %t155 = load ptr, ptr %l13, !tbaa !29
  %t157 = getelementptr %"compiler/load:Module", ptr %t155, i32 0, i32 4
  %t158 = load i64, ptr %t157, !tbaa !24
  %t160 = icmp sge i64 %t158, 0
  store i1 %t160, ptr %l98, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb42
bb42:
  %t162 = load i1, ptr %l98, !tbaa !21
  br i1 %t162, label %bb43, label %bb44
bb43:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 11
  store ptr %t165, ptr %l103, !tbaa !29
  %t166 = load ptr, ptr %l13, !tbaa !29
  %t168 = getelementptr %"compiler/load:Module", ptr %t166, i32 0, i32 4
  %t169 = load i64, ptr %t168, !tbaa !24
  store i64 %t169, ptr %l105, !tbaa !24
  %t170 = load ptr, ptr %l13, !tbaa !29
  %t172 = getelementptr %"compiler/load:Module", ptr %t170, i32 0, i32 6
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = icmp eq ptr %t173, null
  br i1 %t175, label %bb45, label %bb46
bb44:
  br label %bb49
bb45:
  call void @__olang_check_failed(ptr @olang_loc_55cad4987e546125_96caed8b3b7df491)
  unreachable
bb46:
  br label %bb47
bb47:
  %t177 = load ptr, ptr %l13, !tbaa !29
  %t179 = getelementptr %"compiler/load:Module", ptr %t177, i32 0, i32 6
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t183 = getelementptr %"compiler/source:Source", ptr %t180, i32 0, i32 1
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  %t185 = load ptr, ptr %l103, !tbaa !29
  %t186 = load i64, ptr %l105, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v0, ptr %t185, i64 %t186, { i64, ptr } %t184)
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t188 = load i64, ptr %l12, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l12, !tbaa !24
  br label %bb34
bb51:
  %t192 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomponents(ptr %v0, ptr %t192)
  br label %bb52
bb52:
  %t194 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esizeComponents(ptr %v0, ptr %t194)
  br label %bb53
bb53:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferFields(ptr %v0, ptr %t196)
  store i1 %t198, ptr %l118
  br label %bb54
bb54:
  %t199 = load i1, ptr %l118, !tbaa !21
  %t200 = xor i1 %t199, true
  br i1 %t200, label %bb55, label %bb56
bb55:
  %t202 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeAll(ptr %v0, ptr %t202, i1 true)
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb58
bb58:
  %t204 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinsOwn(ptr %v0, ptr %t204)
  br label %bb59
bb59:
  store i64 0, ptr %l14, !tbaa !24
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/scope:Scoper", ptr %t206, i32 0, i32 6
  %t210 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %t208)
  store i64 %t210, ptr %l124
  br label %bb60
bb60:
  %t211 = load i64, ptr %l124, !tbaa !24
  store i64 %t211, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t212 = load i64, ptr %l15, !tbaa !24
  %t213 = load i64, ptr %l14, !tbaa !24
  %t216 = icmp sgt i64 %t212, %t213
  br i1 %t216, label %bb61, label %bb62
bb61:
  %t218 = load i64, ptr %l16, !tbaa !24
  %t220 = icmp sgt i64 %t218, 0
  br i1 %t220, label %bb63, label %bb64
bb62:
  store i64 0, ptr %l128, !tbaa !24
  br label %bb66
bb63:
  %t222 = load i64, ptr %l15, !tbaa !24
  %t223 = load i64, ptr %l14, !tbaa !24
  %t226 = sub i64 %t222, %t223
  %t227 = load i64, ptr %l16, !tbaa !24
  %t230 = add i64 %t226, %t227
  %t232 = sub i64 %t230, 1
  %t233 = load i64, ptr %l16, !tbaa !24
  %t236 = sdiv i64 %t232, %t233
  store i64 %t236, ptr %l131, !tbaa !24
  br label %bb65
bb64:
  store i64 0, ptr %l131, !tbaa !24
  br label %bb65
bb65:
  %t238 = load i64, ptr %l131, !tbaa !24
  store i64 %t238, ptr %l128, !tbaa !24
  br label %bb66
bb66:
  %t239 = load i64, ptr %l128, !tbaa !24
  store i64 %t239, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb67
bb67:
  store %olang.scope zeroinitializer, ptr %s14
  %t240 = load i64, ptr %l18, !tbaa !24
  %t241 = load i64, ptr %l17, !tbaa !24
  %t244 = icmp slt i64 %t240, %t241
  %t246 = xor i1 %t244, true
  br i1 %t246, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s14)
  br label %bb113
bb69:
  br label %bb70
bb70:
  %t248 = load i64, ptr %l14, !tbaa !24
  %t249 = load i64, ptr %l18, !tbaa !24
  %t250 = load i64, ptr %l16, !tbaa !24
  %t253 = mul i64 %t249, %t250
  %t256 = add i64 %t248, %t253
  store i64 %t256, ptr %l19, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/scope:Scoper", ptr %t258, i32 0, i32 6
  %t261 = load i64, ptr %l19, !tbaa !24
  %t264 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t260, i64 %t261)
  store ptr %t264, ptr %l152
  br label %bb71
bb71:
  %t265 = load ptr, ptr %l152, !tbaa !29
  %t267 = getelementptr %"compiler/scope:summary", ptr %t265, i32 0, i32 0
  %t269 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t267)
  store i64 %t269, ptr %l155
  br label %bb72
bb72:
  %t270 = load i64, ptr %l155, !tbaa !24
  %t271 = icmp sgt i64 %t270, 0
  br i1 %t271, label %bb73, label %bb74
bb73:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l158, !tbaa !29
  %t274 = load i64, ptr %l19, !tbaa !24
  store i64 %t274, ptr %l159, !tbaa !24
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/scope:Scoper", ptr %t275, i32 0, i32 6
  %t278 = load i64, ptr %l19, !tbaa !24
  %t281 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t277, i64 %t278)
  store ptr %t281, ptr %l163
  br label %bb75
bb74:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb78
bb75:
  %t282 = load ptr, ptr %l163, !tbaa !29
  %t284 = getelementptr %"compiler/scope:summary", ptr %t282, i32 0, i32 0
  store ptr %t284, ptr %l165, !tbaa !29
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/scope:Scoper", ptr %t285, i32 0, i32 1
  %t288 = load i64, ptr %l19, !tbaa !24
  %t291 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t287, i64 %t288)
  store ptr %t291, ptr %l169
  br label %bb76
bb76:
  %t292 = load ptr, ptr %l169, !tbaa !29
  %t294 = getelementptr %"compiler/typed:Body", ptr %t292, i32 0, i32 2
  %t295 = load i32, ptr %t294, !tbaa !23
  %t296 = load ptr, ptr %l158, !tbaa !29
  %t297 = load i64, ptr %l159, !tbaa !24
  %t298 = load ptr, ptr %l165, !tbaa !29
  %t300 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueCovered(ptr %v0, ptr %v0, ptr %t296, i64 %t297, ptr %t298, i32 %t295, i1 false)
  store i1 %t300, ptr %l172
  br label %bb77
bb77:
  %t301 = load i1, ptr %l172, !tbaa !21
  store i1 %t301, ptr %l157, !tbaa !21
  br label %bb78
bb78:
  %t302 = load i1, ptr %l157, !tbaa !21
  br i1 %t302, label %bb79, label %bb80
bb79:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/scope:Scoper", ptr %t303, i32 0, i32 241
  %t306 = load i64, ptr %l19, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t305, i64 %t306, i1 true)
  br label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb82
bb82:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/scope:Scoper", ptr %t309, i32 0, i32 6
  %t312 = load i64, ptr %l19, !tbaa !24
  %t315 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t311, i64 %t312)
  store ptr %t315, ptr %l179
  br label %bb83
bb83:
  %t316 = load ptr, ptr %l179, !tbaa !29
  %t318 = getelementptr %"compiler/scope:summary", ptr %t316, i32 0, i32 16
  %t319 = getelementptr %"compiler/scope:fnRecs", ptr %t318, i32 0, i32 0
  %t321 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t319)
  store i64 %t321, ptr %l182
  br label %bb84
bb84:
  %t322 = load i64, ptr %l182, !tbaa !24
  %t323 = icmp eq i64 %t322, 0
  br i1 %t323, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l184, !tbaa !21
  br label %bb89
bb86:
  %t325 = load ptr, ptr %l0, !tbaa !29
  store ptr %t325, ptr %l185, !tbaa !29
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/scope:Scoper", ptr %t326, i32 0, i32 1
  %t329 = load i64, ptr %l19, !tbaa !24
  %t332 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t328, i64 %t329)
  store ptr %t332, ptr %l189
  br label %bb87
bb87:
  %t333 = load ptr, ptr %l189, !tbaa !29
  %t335 = getelementptr %"compiler/typed:Body", ptr %t333, i32 0, i32 2
  %t336 = load i32, ptr %t335, !tbaa !23
  %t337 = load ptr, ptr %l185, !tbaa !29
  %t339 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t337, i32 %t336)
  store i1 %t339, ptr %l192
  br label %bb88
bb88:
  %t340 = load i1, ptr %l192, !tbaa !21
  %t341 = xor i1 %t340, true
  store i1 %t341, ptr %l184, !tbaa !21
  br label %bb89
bb89:
  %t343 = load i1, ptr %l184, !tbaa !21
  br i1 %t343, label %bb90, label %bb91
bb90:
  call void @__olang_scope_close(ptr %s14)
  br label %bb112
bb91:
  br label %bb92
bb92:
  %t344 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s14)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t344, ptr %l194
  br label %bb93
bb93:
  %t345 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l194
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t345, ptr %l20
  %t346 = load i64, ptr %l19, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s14, ptr %l20, i64 %t346, i1 true)
  br label %bb94
bb94:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/scope:Scoper", ptr %t349, i32 0, i32 0
  %t352 = load ptr, ptr %t351, !tbaa !29
  %t354 = getelementptr %"compiler/generic:Program", ptr %t352, i32 0, i32 2
  store ptr %t354, ptr %l199, !tbaa !29
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = getelementptr %"compiler/scope:Scoper", ptr %t355, i32 0, i32 1
  %t358 = load i64, ptr %l19, !tbaa !24
  %t361 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t357, i64 %t358)
  store ptr %t361, ptr %l203
  br label %bb95
bb95:
  %t362 = load ptr, ptr %l203, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Body", ptr %t362, i32 0, i32 2
  %t365 = load i32, ptr %t364, !tbaa !23
  %t366 = load ptr, ptr %l199, !tbaa !29
  %t368 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t366, i32 %t365)
  store i32 %t368, ptr %l206
  br label %bb96
bb96:
  %t369 = load i32, ptr %l206, !tbaa !23
  store i32 %t369, ptr %l21, !tbaa !23
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/scope:Scoper", ptr %t370, i32 0, i32 6
  %t373 = load i64, ptr %l19, !tbaa !24
  %t376 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t372, i64 %t373)
  store ptr %t376, ptr %l210
  br label %bb97
bb97:
  %t377 = load ptr, ptr %l210, !tbaa !29
  %t379 = getelementptr %"compiler/scope:summary", ptr %t377, i32 0, i32 16
  %t380 = getelementptr %"compiler/scope:fnRecs", ptr %t379, i32 0, i32 0
  store ptr %t380, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb98
bb98:
  store %olang.scope zeroinitializer, ptr %s18
  %t382 = load i64, ptr %l23, !tbaa !24
  store i64 %t382, ptr %l213, !tbaa !24
  %t383 = load ptr, ptr %l22, !tbaa !29
  %t385 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t383)
  store i64 %t385, ptr %l215
  br label %bb99
bb99:
  %t386 = load i64, ptr %l213, !tbaa !24
  %t387 = load i64, ptr %l215, !tbaa !24
  %t388 = icmp slt i64 %t386, %t387
  %t390 = xor i1 %t388, true
  br i1 %t390, label %bb100, label %bb101
bb100:
  call void @__olang_scope_close(ptr %s18)
  br label %bb111
bb101:
  br label %bb102
bb102:
  %t392 = load ptr, ptr %l22, !tbaa !29
  %t393 = load i64, ptr %l23, !tbaa !24
  %t396 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v0, ptr %t392, i64 %t393)
  store %"compiler/scope:fnRec" %t396, ptr %l220
  br label %bb103
bb103:
  %t398 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s18, ptr %l220)
  store %"compiler/scope:fnRec" %t398, ptr %l222
  br label %bb104
bb104:
  %t399 = load %"compiler/scope:fnRec", ptr %l222
  store %"compiler/scope:fnRec" %t399, ptr %l24
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/scope:fnRec", ptr %l24, i32 0, i32 0
  %t402 = load i64, ptr %t401, !tbaa !24
  %t403 = getelementptr %"compiler/scope:fnRec", ptr %l24, i32 0, i32 2
  %t404 = load i1, ptr %t403, !tbaa !21
  %t405 = load i32, ptr %l21, !tbaa !23
  %t411 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %s14, ptr %t400, i64 %t402, i1 %t404, i32 %t405, ptr %l20)
  store i64 %t411, ptr %l228
  br label %bb105
bb105:
  %t412 = load i64, ptr %l228, !tbaa !24
  store i64 %t412, ptr %l25, !tbaa !24
  %t413 = load i64, ptr %l25, !tbaa !24
  %t415 = icmp slt i64 %t413, 0
  br i1 %t415, label %bb106, label %bb107
bb106:
  call void @__olang_scope_close(ptr %s18)
  br label %bb110
bb107:
  br label %bb108
bb108:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"compiler/scope:Scoper", ptr %t417, i32 0, i32 242
  %t420 = load i64, ptr %l19, !tbaa !24
  %t421 = load i64, ptr %l25, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t419, i64 %t420, i64 %t421)
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s18)
  br label %bb111
bb110:
  %t425 = load i64, ptr %l23, !tbaa !24
  %t427 = add i64 %t425, 1
  store i64 %t427, ptr %l23, !tbaa !24
  br label %bb98
bb111:
  call void @__olang_scope_close(ptr %s14)
  br label %bb112
bb112:
  %t429 = load i64, ptr %l18, !tbaa !24
  %t431 = add i64 %t429, 1
  store i64 %t431, ptr %l18, !tbaa !24
  br label %bb67
bb113:
  %t433 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eanyTables(ptr %v0, ptr %t433)
  br label %bb114
bb114:
  %t435 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eexports(ptr %v0, ptr %t435)
  br label %bb115
bb115:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinPlan(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l6 = alloca %"compiler/typed:Plan"
  %l8 = alloca %"compiler/typed:Plan"
  %t8 = alloca %"compiler/typed:Plan", align 8
  %t11 = alloca %"compiler/typed:Plan", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 227
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/scope:twinTab", ptr %t4, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t8, ptr %v0, ptr %v1, ptr %t6, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t8, i64 536, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t11, ptr %v1, ptr %l6)
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %t11, i64 536, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l8, i64 536, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eVarRels(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/scope:rel"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i1
  %l10 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i1
  %l19 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca %"compiler/scope:rel"
  %l40 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca ptr
  %l48 = alloca i64
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
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
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp slt i64 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 6
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l13
  br label %bb4
bb4:
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l13, !tbaa !24
  %t15 = icmp sge i64 %t13, %t14
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l9, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb9
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 12
  %t21 = load i64, ptr %l1, !tbaa !24
  %t24 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t20, i64 %t21)
  store i1 %t24, ptr %l19
  br label %bb8
bb8:
  %t25 = load i1, ptr %l19, !tbaa !21
  %t26 = xor i1 %t25, true
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t30 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s1, ptr %l2)
  store { i64, ptr } %t30, ptr %l22
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t31, ptr %l23, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l24, !tbaa !24
  %t34 = load i64, ptr %l24, !tbaa !24
  %t35 = mul i64 %t34, 8
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l25, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l24, !tbaa !24
  %t44 = mul i64 %t43, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %t42, i64 %t44, i1 false)
  %t45 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t45, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t46 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t46, ptr %rv
  br label %ret
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 6
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l29
  br label %bb14
bb14:
  %t54 = load ptr, ptr %l29, !tbaa !29
  %t56 = getelementptr %"compiler/scope:summary", ptr %t54, i32 0, i32 0
  store ptr %t56, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l4, !tbaa !24
  store i64 %t58, ptr %l32, !tbaa !24
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l34
  br label %bb16
bb16:
  %t62 = load i64, ptr %l32, !tbaa !24
  %t63 = load i64, ptr %l34, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb17, label %bb18
bb17:
  br label %bb30
bb18:
  br label %bb19
bb19:
  %t68 = load ptr, ptr %l3, !tbaa !29
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t68, i64 %t69)
  store %"compiler/scope:rel" %t72, ptr %l39
  br label %bb20
bb20:
  %t73 = load %"compiler/scope:rel", ptr %l39
  store %"compiler/scope:rel" %t73, ptr %l5
  store ptr %l2, ptr %l40, !tbaa !29
  %t74 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 0
  %t75 = load { i64, [2 x i64] }, ptr %t74
  %t77 = call i64 @compiler_2fscope_2erelVar({ i64, [2 x i64] } %t75)
  store i64 %t77, ptr %l42
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = load i64, ptr %l42, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t78, i64 %t79)
  br label %bb22
bb22:
  store ptr %l2, ptr %l43, !tbaa !29
  %t80 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 1
  %t81 = load { i64, [2 x i64] }, ptr %t80
  %t83 = call i64 @compiler_2fscope_2erelVar({ i64, [2 x i64] } %t81)
  store i64 %t83, ptr %l45
  br label %bb23
bb23:
  %t84 = load ptr, ptr %l43, !tbaa !29
  %t85 = load i64, ptr %l45, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t84, i64 %t85)
  br label %bb24
bb24:
  store ptr %l2, ptr %l46, !tbaa !29
  %t86 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 2
  %t87 = load i1, ptr %t86, !tbaa !21
  br i1 %t87, label %bb25, label %bb26
bb25:
  store i64 1, ptr %l48, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb27
bb27:
  %t89 = load ptr, ptr %l46, !tbaa !29
  %t90 = load i64, ptr %l48, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t89, i64 %t90)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t91 = load i64, ptr %l4, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l4, !tbaa !24
  br label %bb15
bb30:
  %t96 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t96, ptr %l52
  br label %bb31
bb31:
  %t97 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t97, ptr %l53, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  store i64 %t99, ptr %l54, !tbaa !24
  %t100 = load i64, ptr %l54, !tbaa !24
  %t101 = mul i64 %t100, 8
  %t102 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t101)
  %t103 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l55, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l54, !tbaa !24
  %t110 = mul i64 %t109, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t106, ptr %t108, i64 %t110, i1 false)
  %t111 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t111, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t112 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t112, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eanyTables(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/generic:AnyTable"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, [3 x i64] }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l19 = alloca i64
  %l21 = alloca i64
  %l26 = alloca %"compiler/generic:AnyTable"
  %l28 = alloca %"compiler/generic:AnyTable"
  %l32 = alloca { i64, ptr }
  %l34 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i64
  %l67 = alloca i1
  %l71 = alloca ptr
  %l74 = alloca i64
  %l85 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l139 = alloca { i64, [3 x i64] }
  %l143 = alloca %"compiler/diagmsg:Msg"
  %l144 = alloca i64
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t130 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 61
  store ptr %t6, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = load i64, ptr %l2, !tbaa !24
  store i64 %t8, ptr %l19, !tbaa !24
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l21
  br label %bb2
bb2:
  %t12 = load i64, ptr %l19, !tbaa !24
  %t13 = load i64, ptr %l21, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call %"compiler/generic:AnyTable" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eAt__He9601a52fe5cfa5abe1b41d520aed001(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store %"compiler/generic:AnyTable" %t22, ptr %l26
  br label %bb6
bb6:
  %t24 = call %"compiler/generic:AnyTable" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aAnyTable(ptr %s2, ptr %l26)
  store %"compiler/generic:AnyTable" %t24, ptr %l28
  br label %bb7
bb7:
  %t25 = load %"compiler/generic:AnyTable", ptr %l28
  store %"compiler/generic:AnyTable" %t25, ptr %l3
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t30 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 1
  %t31 = load i32, ptr %t30, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t29, i32 %t31)
  store { i64, ptr } %t34, ptr %l32
  br label %bb8
bb8:
  %t35 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t36 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 5
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t36)
  store i64 %t38, ptr %l34
  br label %bb9
bb9:
  %t39 = load i64, ptr %l34, !tbaa !24
  store i64 %t39, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb15
bb12:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l41, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb14
bb14:
  %t66 = load i64, ptr %l41, !tbaa !24
  store i64 %t66, ptr %l38, !tbaa !24
  br label %bb15
bb15:
  %t67 = load i64, ptr %l38, !tbaa !24
  store i64 %t67, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t68 = load i64, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb53
bb18:
  br label %bb19
bb19:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t77 = load i64, ptr %l9, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  store i64 %t84, ptr %l10, !tbaa !24
  %t86 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 5
  %t87 = load i64, ptr %l10, !tbaa !24
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t86, i64 %t87)
  store i64 %t90, ptr %l61
  br label %bb20
bb20:
  %t91 = load i64, ptr %l61, !tbaa !24
  store i64 %t91, ptr %l11, !tbaa !24
  %t92 = load i64, ptr %l11, !tbaa !24
  store i64 %t92, ptr %l62, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/scope:Scoper", ptr %t93, i32 0, i32 6
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l65
  br label %bb21
bb21:
  %t98 = load i64, ptr %l62, !tbaa !24
  %t99 = load i64, ptr %l65, !tbaa !24
  %t100 = icmp sge i64 %t98, %t99
  br i1 %t100, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb26
bb23:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/scope:Scoper", ptr %t102, i32 0, i32 6
  %t105 = load i64, ptr %l11, !tbaa !24
  %t108 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t104, i64 %t105)
  store ptr %t108, ptr %l71
  br label %bb24
bb24:
  %t109 = load ptr, ptr %l71, !tbaa !29
  %t111 = getelementptr %"compiler/scope:summary", ptr %t109, i32 0, i32 0
  %t113 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t111)
  store i64 %t113, ptr %l74
  br label %bb25
bb25:
  %t114 = load i64, ptr %l74, !tbaa !24
  %t115 = icmp eq i64 %t114, 0
  store i1 %t115, ptr %l67, !tbaa !21
  br label %bb26
bb26:
  %t117 = load i1, ptr %l67, !tbaa !21
  br i1 %t117, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s4)
  br label %bb52
bb28:
  br label %bb29
bb29:
  %t118 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 3
  %t119 = load i64, ptr %t118, !tbaa !24
  %t120 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 4
  %t121 = getelementptr %"compiler/source:Span", ptr %t120, i32 0, i32 0
  %t122 = load i32, ptr %t121, !tbaa !23
  %t124 = sext i32 %t122 to i64
  %t125 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 4
  %t126 = getelementptr %"compiler/source:Span", ptr %t125, i32 0, i32 1
  %t127 = load i32, ptr %t126, !tbaa !23
  %t129 = sext i32 %t127 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [3 x i64] }, ptr %t130, i32 0, i32 0
  store i64 3, ptr %t131
  %t133 = insertvalue { i64, i64, i64 } undef, i64 %t119, 0
  %t135 = insertvalue { i64, i64, i64 } %t133, i64 %t124, 1
  %t137 = insertvalue { i64, i64, i64 } %t135, i64 %t129, 2
  %t138 = getelementptr { i64, [3 x i64] }, ptr %t130, i32 0, i32 1
  store { i64, i64, i64 } %t137, ptr %t138
  %t139 = load { i64, [3 x i64] }, ptr %t130
  store { i64, [3 x i64] } %t139, ptr %l12
  %t141 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t145 = icmp sgt i64 %t143, 0
  br i1 %t145, label %bb30, label %bb31
bb30:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/scope:Scoper", ptr %t147, i32 0, i32 0
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/generic:Program", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/load:Loader", ptr %t153, i32 0, i32 3
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t157 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t157, ptr %l90, !tbaa !27
  %t158 = load i64, ptr %l10, !tbaa !24
  %t159 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t164 = srem i64 %t158, %t161
  %t166 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr %"compiler/generic:AnySlot", ptr %t167, i64 %t164
  %t169 = getelementptr %"compiler/generic:AnySlot", ptr %t168, i32 0, i32 0
  %t170 = load i32, ptr %t169, !tbaa !23
  %t173 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t156, i32 %t170)
  store { i64, ptr } %t173, ptr %l96
  br label %bb32
bb31:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l85, !tbaa !27
  br label %bb33
bb32:
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t176 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t174, i64 %t175)
  %t184 = getelementptr i8, ptr %t183, i64 %t175
  call void @olang_textcopy(ptr %t184, ptr %t177, i64 %t178)
  %t185 = getelementptr i8, ptr %t184, i64 %t178
  call void @olang_textcopy(ptr %t185, ptr %t180, i64 %t181)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t183, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = extractvalue { i64, ptr } %t187, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  store { i64, ptr } %t194, ptr %l85, !tbaa !27
  br label %bb33
bb33:
  %t196 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t196, ptr %l13, !tbaa !27
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/scope:Scoper", ptr %t197, i32 0, i32 5
  %t200 = load { ptr, ptr }, ptr %t199
  %t202 = extractvalue { ptr, ptr } %t200, 0
  %t203 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t204 = icmp eq ptr %t202, %t203
  %t205 = extractvalue { ptr, ptr } %t200, 1
  %t206 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t207 = icmp eq ptr %t205, %t206
  %t208 = and i1 %t204, %t207
  %t210 = xor i1 %t208, true
  br i1 %t210, label %bb34, label %bb35
bb34:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/scope:Scoper", ptr %t212, i32 0, i32 5
  %t215 = load { ptr, ptr }, ptr %t214
  %t217 = extractvalue { ptr, ptr } %t215, 0
  %t218 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t219 = icmp eq ptr %t217, %t218
  %t220 = extractvalue { ptr, ptr } %t215, 1
  %t221 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t222 = icmp eq ptr %t220, %t221
  %t223 = and i1 %t219, %t222
  br i1 %t223, label %bb36, label %bb37
bb35:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/scope:Scoper", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 2
  %t231 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 0
  %t232 = load i32, ptr %t231, !tbaa !23
  %t234 = inttoptr i64 0 to ptr
  %t237 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s4, ptr %t234, ptr %t230, i32 %t232)
  store { i64, ptr } %t237, ptr %l116
  br label %bb40
bb36:
  call void @__olang_check_failed(ptr @olang_loc_184b8ada395c33d8_be996404d2b66d74)
  unreachable
bb37:
  br label %bb38
bb38:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/scope:Scoper", ptr %t238, i32 0, i32 5
  %t241 = load { ptr, ptr }, ptr %t240
  %t242 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 0
  %t243 = load i32, ptr %t242, !tbaa !23
  %t245 = extractvalue { ptr, ptr } %t241, 0
  %t246 = extractvalue { ptr, ptr } %t241, 1
  %t248 = call { i64, ptr } %t245(ptr %t246, ptr %s4, i32 %t243)
  store { i64, ptr } %t248, ptr %l110
  br label %bb39
bb39:
  %t249 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t249, ptr %l103, !tbaa !27
  br label %bb41
bb40:
  %t250 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t250, ptr %l103, !tbaa !27
  br label %bb41
bb41:
  %t251 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t251, ptr %l14, !tbaa !27
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/scope:Scoper", ptr %t252, i32 0, i32 5
  %t255 = load { ptr, ptr }, ptr %t254
  %t257 = extractvalue { ptr, ptr } %t255, 0
  %t258 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t259 = icmp eq ptr %t257, %t258
  %t260 = extractvalue { ptr, ptr } %t255, 1
  %t261 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t262 = icmp eq ptr %t260, %t261
  %t263 = and i1 %t259, %t262
  %t265 = xor i1 %t263, true
  br i1 %t265, label %bb42, label %bb43
bb42:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/scope:Scoper", ptr %t267, i32 0, i32 5
  %t270 = load { ptr, ptr }, ptr %t269
  %t272 = extractvalue { ptr, ptr } %t270, 0
  %t273 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t274 = icmp eq ptr %t272, %t273
  %t275 = extractvalue { ptr, ptr } %t270, 1
  %t276 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t277 = icmp eq ptr %t275, %t276
  %t278 = and i1 %t274, %t277
  br i1 %t278, label %bb44, label %bb45
bb43:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/scope:Scoper", ptr %t280, i32 0, i32 0
  %t283 = load ptr, ptr %t282, !tbaa !29
  %t285 = getelementptr %"compiler/generic:Program", ptr %t283, i32 0, i32 2
  %t286 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 1
  %t287 = load i32, ptr %t286, !tbaa !23
  %t289 = inttoptr i64 0 to ptr
  %t292 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s4, ptr %t289, ptr %t285, i32 %t287)
  store { i64, ptr } %t292, ptr %l134
  br label %bb48
bb44:
  call void @__olang_check_failed(ptr @olang_loc_d7c69f81cfcd83f7_ce60044efbd0bd03)
  unreachable
bb45:
  br label %bb46
bb46:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/scope:Scoper", ptr %t293, i32 0, i32 5
  %t296 = load { ptr, ptr }, ptr %t295
  %t297 = getelementptr %"compiler/generic:AnyTable", ptr %l3, i32 0, i32 1
  %t298 = load i32, ptr %t297, !tbaa !23
  %t300 = extractvalue { ptr, ptr } %t296, 0
  %t301 = extractvalue { ptr, ptr } %t296, 1
  %t303 = call { i64, ptr } %t300(ptr %t301, ptr %s4, i32 %t298)
  store { i64, ptr } %t303, ptr %l128
  br label %bb47
bb47:
  %t304 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t304, ptr %l121, !tbaa !27
  br label %bb49
bb48:
  %t305 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t305, ptr %l121, !tbaa !27
  br label %bb49
bb49:
  %t306 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/scope:Scoper", ptr %t307, i32 0, i32 0
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = getelementptr %"compiler/generic:Program", ptr %t310, i32 0, i32 0
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t315 = getelementptr %"compiler/load:Loader", ptr %t313, i32 0, i32 4
  %t316 = load ptr, ptr %t315, !tbaa !29
  store ptr %t316, ptr %l138, !tbaa !29
  %t317 = load { i64, [3 x i64] }, ptr %l12
  store { i64, [3 x i64] } %t317, ptr %l139
  %t318 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t319 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t324 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyMethodObligations(ptr %s4, ptr %s4, ptr %s4, ptr %v0, { i64, ptr } %t318, { i64, ptr } %t319, { i64, ptr } %t306)
  store %"compiler/diagmsg:Msg" %t324, ptr %l143
  br label %bb50
bb50:
  %t325 = load ptr, ptr %l138, !tbaa !29
  %t326 = load { i64, [3 x i64] }, ptr %l139
  %t327 = load %"compiler/diagmsg:Msg", ptr %l143
  %t328 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t325, { i64, [3 x i64] } %t326, %"compiler/diagmsg:Msg" %t327)
  store i64 %t328, ptr %l144
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s4)
  br label %bb53
bb52:
  %t329 = load i64, ptr %l9, !tbaa !24
  %t331 = add i64 %t329, 1
  store i64 %t331, ptr %l9, !tbaa !24
  br label %bb16
bb53:
  call void @__olang_scope_close(ptr %s2)
  br label %bb54
bb54:
  %t333 = load i64, ptr %l2, !tbaa !24
  %t335 = add i64 %t333, 1
  store i64 %t335, ptr %l2, !tbaa !24
  br label %bb1
bb55:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargVal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i64 %a2, i32 %a3, { i64, ptr } %a4, { i64, ptr } %a5, i64 %a6, { i64, [2 x i64] } %a7, { i64, ptr } %a8, { i64, [2 x i64] } %a9) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l13 = alloca %"compiler/scope:Val"
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca %"compiler/scope:Val"
  %l17 = alloca %"compiler/scope:Val"
  %l19 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l29 = alloca i64
  %l35 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i1
  %l52 = alloca i1
  %l60 = alloca %"compiler/scope:Val"
  %l62 = alloca ptr
  %l64 = alloca i32
  %l67 = alloca { i64, [2 x i64] }
  %l70 = alloca i1
  %l71 = alloca ptr
  %l74 = alloca { i64, [2 x i64] }
  %l76 = alloca i1
  %l83 = alloca { i64, ptr }
  %l88 = alloca %"compiler/scope:Val"
  %l91 = alloca i1
  %l95 = alloca i1
  %l96 = alloca i1
  %l101 = alloca i1
  %l109 = alloca %"compiler/scope:Val"
  %l114 = alloca i1
  %l118 = alloca i1
  %l119 = alloca ptr
  %l121 = alloca ptr
  %l124 = alloca i64
  %l126 = alloca ptr
  %l127 = alloca %"compiler/scope:placeSlot"
  %l130 = alloca i1
  %l131 = alloca { i64, [2 x i64] }
  %l134 = alloca { i64, [2 x i64] }
  %l140 = alloca %"compiler/scope:Val"
  %l145 = alloca { i64, ptr }
  %l148 = alloca %"compiler/scope:Val"
  %l152 = alloca i1
  %l157 = alloca i1
  %l159 = alloca i1
  %l160 = alloca ptr
  %l163 = alloca i32
  %l164 = alloca i1
  %l165 = alloca i1
  %l173 = alloca %"compiler/scope:Val"
  %l174 = alloca ptr
  %l176 = alloca i32
  %l178 = alloca { i64, [2 x i64] }
  %l179 = alloca { i64, ptr }
  %l183 = alloca i1
  %l187 = alloca i1
  %l188 = alloca i1
  %l193 = alloca i1
  %l195 = alloca i1
  %l201 = alloca i1
  %l208 = alloca ptr
  %l211 = alloca %"compiler/source:Span"
  %l212 = alloca %"compiler/diagmsg:Msg"
  %l213 = alloca i64
  %l217 = alloca %"compiler/scope:Val"
  %l222 = alloca i1
  %l223 = alloca i1
  %l226 = alloca i1
  %l232 = alloca %"compiler/scope:Val"
  %l234 = alloca { i64, ptr }
  %l239 = alloca %"compiler/scope:Val"
  %l244 = alloca i1
  %l245 = alloca i1
  %l248 = alloca i1
  %l249 = alloca %"compiler/scope:Val"
  %l260 = alloca %"compiler/scope:Val"
  %rv = alloca %"compiler/scope:Val"
  %t83 = alloca { i64, [2 x i64] }, align 8
  %t250 = alloca { i64, [2 x i64] }, align 8
  %t318 = alloca { i64, [2 x i64] }, align 8
  %t442 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a8, ptr %l8
  store { i64, [2 x i64] } %a9, ptr %l9
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l19, !tbaa !27
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr ptr, ptr %t8, i64 %t5
  %t10 = load ptr, ptr %t9, !tbaa !39
  store ptr %t10, ptr %l10, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l10, !tbaa !29
  %t16 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epromoted(ptr %v0, ptr %v1, ptr %v1, ptr %t12, ptr %t13)
  store ptr %t16, ptr %l24
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l24, !tbaa !29
  store ptr %t17, ptr %l11, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t27 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t23, i32 %a3)
  store i64 %t27, ptr %l29
  br label %bb2
bb2:
  %t28 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t29 = load i64, ptr %l29, !tbaa !24
  %t31 = icmp eq i64 %t29, %t28
  store i1 %t31, ptr %l12, !tbaa !21
  %t33 = load ptr, ptr %l11, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb3, label %bb4
bb3:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l11, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Promote", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t47 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t39, ptr %t43)
  store i1 %t47, ptr %l40
  br label %bb5
bb4:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb6
bb5:
  %t48 = load i1, ptr %l40, !tbaa !21
  store i1 %t48, ptr %l35, !tbaa !21
  br label %bb6
bb6:
  %t49 = load i1, ptr %l35, !tbaa !21
  br i1 %t49, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l11, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Promote", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t57 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLands(ptr %v0, ptr %v1, ptr %t50, ptr %t54)
  store i1 %t57, ptr %l45
  br label %bb9
bb8:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb10
bb9:
  %t58 = load i1, ptr %l45, !tbaa !21
  store i1 %t58, ptr %l41, !tbaa !21
  br label %bb10
bb10:
  %t59 = load i1, ptr %l41, !tbaa !21
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t60 = load i1, ptr %l12, !tbaa !21
  br i1 %t60, label %bb13, label %bb14
bb12:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb17
bb13:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t64 = load i64, ptr %l2, !tbaa !24
  %t68 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsArg(ptr %v0, ptr %v1, ptr %t62, ptr %t63, i64 %t64)
  store i1 %t68, ptr %l52
  br label %bb15
bb14:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb16
bb15:
  %t69 = load i1, ptr %l52, !tbaa !21
  store i1 %t69, ptr %l48, !tbaa !21
  br label %bb16
bb16:
  %t70 = load i1, ptr %l48, !tbaa !21
  %t71 = xor i1 %t70, true
  store i1 %t71, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t73 = load i1, ptr %l46, !tbaa !21
  br i1 %t73, label %bb18, label %bb19
bb18:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 128
  store i1 true, ptr %t76, !tbaa !21
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l11, !tbaa !29
  %t80 = getelementptr %"compiler/typed:Promote", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t83
  %t84 = getelementptr { i64, [2 x i64] }, ptr %t83, i32 0, i32 0
  store i64 0, ptr %t84
  %t85 = load { i64, [2 x i64] }, ptr %t83
  %t89 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t77, ptr %t81, { i64, [2 x i64] } %t85)
  store %"compiler/scope:Val" %t89, ptr %l60
  br label %bb20
bb19:
  br label %bb48
bb20:
  %t90 = load %"compiler/scope:Val", ptr %l60
  store %"compiler/scope:Val" %t90, ptr %l13
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scope:Scoper", ptr %t91, i32 0, i32 128
  store i1 false, ptr %t93, !tbaa !21
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l62, !tbaa !29
  %t95 = load ptr, ptr %l11, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Promote", ptr %t95, i32 0, i32 1
  %t98 = load i32, ptr %t97, !tbaa !23
  store i32 %t98, ptr %l64, !tbaa !23
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l11, !tbaa !29
  %t103 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHere(ptr %v0, ptr %v1, ptr %t99, ptr %t100)
  store { i64, [2 x i64] } %t103, ptr %l67
  br label %bb21
bb21:
  %t104 = load ptr, ptr %l62, !tbaa !29
  %t105 = load i32, ptr %l64, !tbaa !23
  %t106 = load { i64, [2 x i64] }, ptr %l67
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t104, i32 %t105, { i64, [2 x i64] } %t106)
  br label %bb22
bb22:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/scope:Scoper", ptr %t107, i32 0, i32 147
  %t110 = load i1, ptr %t109, !tbaa !21
  br i1 %t110, label %bb23, label %bb24
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l71, !tbaa !29
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load ptr, ptr %l11, !tbaa !29
  %t117 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHere(ptr %v0, ptr %v1, ptr %t113, ptr %t114)
  store { i64, [2 x i64] } %t117, ptr %l74
  br label %bb25
bb24:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb27
bb25:
  %t118 = load { i64, [2 x i64] }, ptr %l9
  %t119 = load ptr, ptr %l71, !tbaa !29
  %t120 = load { i64, [2 x i64] }, ptr %l74
  %t122 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %t119, { i64, [2 x i64] } %t120, { i64, [2 x i64] } %t118)
  store i1 %t122, ptr %l76
  br label %bb26
bb26:
  %t123 = load i1, ptr %l76, !tbaa !21
  %t124 = xor i1 %t123, true
  store i1 %t124, ptr %l70, !tbaa !21
  br label %bb27
bb27:
  %t126 = load i1, ptr %l70, !tbaa !21
  br i1 %t126, label %bb28, label %bb29
bb28:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l11, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Promote", ptr %t128, i32 0, i32 1
  %t131 = load i32, ptr %t130, !tbaa !23
  %t133 = sext i32 %t131 to i64
  %t134 = load { i64, [2 x i64] }, ptr %l9
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %t127, i64 %t133, { i64, [2 x i64] } %t134)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t138 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t138, ptr %l83, !tbaa !27
  %t139 = load i64, ptr %l2, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i1, ptr %t142, i64 %t139
  store i1 true, ptr %t143, !tbaa !31
  %t144 = getelementptr %"compiler/scope:Val", ptr %l13, i32 0, i32 0
  %t145 = load i32, ptr %t144, !range !{i32 0, i32 5}
  %t147 = trunc i64 2 to i32
  %t148 = icmp eq i32 %t145, %t147
  br i1 %t148, label %bb32, label %bb33
bb32:
  %t150 = getelementptr %"compiler/scope:Val", ptr %l13, i32 0, i32 1
  %t151 = load { i64, [2 x i64] }, ptr %t150
  %t153 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t151)
  store %"compiler/scope:Val" %t153, ptr %l88
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t154 = load %"compiler/scope:Val", ptr %l88
  store %"compiler/scope:Val" %t154, ptr %l13
  br label %bb35
bb35:
  %t155 = load i1, ptr %l12, !tbaa !21
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb36, label %bb37
bb36:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l1, !tbaa !29
  %t161 = load i64, ptr %l2, !tbaa !24
  %t165 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsArg(ptr %v0, ptr %v1, ptr %t159, ptr %t160, i64 %t161)
  store i1 %t165, ptr %l95
  br label %bb38
bb37:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb39
bb38:
  %t166 = load i1, ptr %l95, !tbaa !21
  store i1 %t166, ptr %l91, !tbaa !21
  br label %bb39
bb39:
  %t167 = load i1, ptr %l91, !tbaa !21
  br i1 %t167, label %bb40, label %bb41
bb40:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t170 = load i64, ptr %l2, !tbaa !24
  %t171 = load ptr, ptr %l10, !tbaa !29
  %t176 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandleLent(ptr %v0, ptr %v1, ptr %v1, ptr %t168, ptr %t169, i64 %t170, ptr %t171)
  store i1 %t176, ptr %l101
  br label %bb42
bb41:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb43
bb42:
  %t177 = load i1, ptr %l101, !tbaa !21
  %t178 = xor i1 %t177, true
  store i1 %t178, ptr %l96, !tbaa !21
  br label %bb43
bb43:
  %t180 = load i1, ptr %l96, !tbaa !21
  br i1 %t180, label %bb44, label %bb45
bb44:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t183 = load i64, ptr %l2, !tbaa !24
  %t184 = load ptr, ptr %l10, !tbaa !29
  %t185 = load ptr, ptr %l11, !tbaa !29
  %t186 = load %"compiler/scope:Val", ptr %l13
  %t193 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptCopy(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t181, ptr %t182, i64 %t183, ptr %t184, ptr %t185, %"compiler/scope:Val" %t186)
  store %"compiler/scope:Val" %t193, ptr %l109
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t194 = load %"compiler/scope:Val", ptr %l109
  store %"compiler/scope:Val" %t194, ptr %l13
  br label %bb47
bb47:
  %t195 = load %"compiler/scope:Val", ptr %l13
  store %"compiler/scope:Val" %t195, ptr %rv
  br label %ret
bb48:
  %t197 = load ptr, ptr %l11, !tbaa !29
  %t199 = icmp eq ptr %t197, null
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb49, label %bb50
bb49:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l11, !tbaa !29
  %t206 = getelementptr %"compiler/typed:Promote", ptr %t204, i32 0, i32 0
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t210 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoldValue(ptr %v0, ptr %v1, ptr %t203, ptr %t207)
  store i1 %t210, ptr %l118
  br label %bb51
bb50:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb52
bb51:
  %t211 = load i1, ptr %l118, !tbaa !21
  store i1 %t211, ptr %l114, !tbaa !21
  br label %bb52
bb52:
  %t212 = load i1, ptr %l114, !tbaa !21
  br i1 %t212, label %bb53, label %bb54
bb53:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l119, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/scope:Scoper", ptr %t214, i32 0, i32 60
  store ptr %t216, ptr %l121, !tbaa !29
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/scope:Scoper", ptr %t217, i32 0, i32 60
  %t221 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t219)
  store i64 %t221, ptr %l124
  br label %bb55
bb54:
  br label %bb66
bb55:
  %t222 = load i64, ptr %l124, !tbaa !24
  %t223 = sub i64 %t222, 1
  %t224 = load ptr, ptr %l121, !tbaa !29
  %t226 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t224, i64 %t223)
  store ptr %t226, ptr %l126
  br label %bb56
bb56:
  %t227 = load ptr, ptr %l119, !tbaa !29
  %t228 = load ptr, ptr %l126, !tbaa !29
  %t229 = call %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v0, ptr %t227, ptr %t228)
  store %"compiler/scope:placeSlot" %t229, ptr %l127
  br label %bb57
bb57:
  %t230 = getelementptr %"compiler/scope:placeSlot", ptr %l127, i32 0, i32 0
  %t231 = load { i64, [2 x i64] }, ptr %t230
  store { i64, [2 x i64] } %t231, ptr %l14
  %t233 = load { i64, [2 x i64] }, ptr %l14
  %t235 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t233)
  store i1 %t235, ptr %l130
  br label %bb58
bb58:
  %t236 = load i1, ptr %l130, !tbaa !21
  br i1 %t236, label %bb59, label %bb60
bb59:
  %t237 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t237, ptr %l131
  br label %bb62
bb60:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t239)
  store { i64, [2 x i64] } %t241, ptr %l134
  br label %bb61
bb61:
  %t242 = load { i64, [2 x i64] }, ptr %l134
  store { i64, [2 x i64] } %t242, ptr %l131
  br label %bb62
bb62:
  %t243 = load { i64, [2 x i64] }, ptr %l131
  store { i64, [2 x i64] } %t243, ptr %l15
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load ptr, ptr %l11, !tbaa !29
  %t247 = getelementptr %"compiler/typed:Promote", ptr %t245, i32 0, i32 0
  %t248 = load ptr, ptr %t247, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t250
  %t251 = getelementptr { i64, [2 x i64] }, ptr %t250, i32 0, i32 0
  store i64 0, ptr %t251
  %t252 = load { i64, [2 x i64] }, ptr %t250
  %t256 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t244, ptr %t248, { i64, [2 x i64] } %t252)
  store %"compiler/scope:Val" %t256, ptr %l140
  br label %bb63
bb63:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load ptr, ptr %l11, !tbaa !29
  %t260 = getelementptr %"compiler/typed:Promote", ptr %t258, i32 0, i32 1
  %t261 = load i32, ptr %t260, !tbaa !23
  %t262 = load { i64, [2 x i64] }, ptr %l15
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t257, i32 %t261, { i64, [2 x i64] } %t262)
  br label %bb64
bb64:
  %t266 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t266, ptr %l145, !tbaa !27
  %t267 = load i64, ptr %l2, !tbaa !24
  %t269 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr i1, ptr %t270, i64 %t267
  store i1 true, ptr %t271, !tbaa !31
  %t272 = load { i64, [2 x i64] }, ptr %l15
  %t274 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t272)
  store %"compiler/scope:Val" %t274, ptr %l148
  br label %bb65
bb65:
  %t275 = load %"compiler/scope:Val", ptr %l148
  store %"compiler/scope:Val" %t275, ptr %rv
  br label %ret
bb66:
  %t276 = load ptr, ptr %l11, !tbaa !29
  %t278 = icmp eq ptr %t276, null
  %t280 = xor i1 %t278, true
  br i1 %t280, label %bb67, label %bb68
bb67:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load ptr, ptr %l11, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Promote", ptr %t283, i32 0, i32 0
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t290 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t282, ptr %t286)
  store i1 %t290, ptr %l157
  br label %bb69
bb68:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb70
bb69:
  %t291 = load i1, ptr %l157, !tbaa !21
  %t292 = xor i1 %t291, true
  store i1 %t292, ptr %l152, !tbaa !21
  br label %bb70
bb70:
  %t294 = load i1, ptr %l152, !tbaa !21
  br i1 %t294, label %bb71, label %bb72
bb71:
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l160, !tbaa !29
  %t296 = load ptr, ptr %l11, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Promote", ptr %t296, i32 0, i32 0
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t301 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t299)
  store i32 %t301, ptr %l163
  br label %bb73
bb72:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb75
bb73:
  %t302 = load ptr, ptr %l160, !tbaa !29
  %t303 = load i32, ptr %l163, !tbaa !23
  %t304 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t302, i32 %t303)
  store i1 %t304, ptr %l164
  br label %bb74
bb74:
  %t305 = load i1, ptr %l164, !tbaa !21
  store i1 %t305, ptr %l159, !tbaa !21
  br label %bb75
bb75:
  %t306 = load i1, ptr %l159, !tbaa !21
  br i1 %t306, label %bb76, label %bb77
bb76:
  %t307 = load i1, ptr %l12, !tbaa !21
  %t309 = xor i1 %t307, true
  store i1 %t309, ptr %l165, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l165, !tbaa !21
  br label %bb78
bb78:
  %t311 = load i1, ptr %l165, !tbaa !21
  br i1 %t311, label %bb79, label %bb80
bb79:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load ptr, ptr %l11, !tbaa !29
  %t315 = getelementptr %"compiler/typed:Promote", ptr %t313, i32 0, i32 0
  %t316 = load ptr, ptr %t315, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t318
  %t319 = getelementptr { i64, [2 x i64] }, ptr %t318, i32 0, i32 0
  store i64 0, ptr %t319
  %t320 = load { i64, [2 x i64] }, ptr %t318
  %t324 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t312, ptr %t316, { i64, [2 x i64] } %t320)
  store %"compiler/scope:Val" %t324, ptr %l173
  br label %bb81
bb80:
  br label %bb110
bb81:
  %t325 = load %"compiler/scope:Val", ptr %l173
  store %"compiler/scope:Val" %t325, ptr %l16
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l174, !tbaa !29
  %t327 = load ptr, ptr %l11, !tbaa !29
  %t329 = getelementptr %"compiler/typed:Promote", ptr %t327, i32 0, i32 1
  %t330 = load i32, ptr %t329, !tbaa !23
  store i32 %t330, ptr %l176, !tbaa !23
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t331)
  store { i64, [2 x i64] } %t333, ptr %l178
  br label %bb82
bb82:
  %t334 = load ptr, ptr %l174, !tbaa !29
  %t335 = load i32, ptr %l176, !tbaa !23
  %t336 = load { i64, [2 x i64] }, ptr %l178
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t334, i32 %t335, { i64, [2 x i64] } %t336)
  br label %bb83
bb83:
  %t337 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t337, ptr %l179, !tbaa !27
  %t338 = load i64, ptr %l2, !tbaa !24
  %t340 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = getelementptr i1, ptr %t341, i64 %t338
  store i1 true, ptr %t342, !tbaa !31
  %t343 = getelementptr %"compiler/scope:Val", ptr %l16, i32 0, i32 0
  %t344 = load i32, ptr %t343, !range !{i32 0, i32 5}
  %t346 = trunc i64 3 to i32
  %t347 = icmp eq i32 %t344, %t346
  br i1 %t347, label %bb84, label %bb85
bb84:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load ptr, ptr %l1, !tbaa !29
  %t351 = load i64, ptr %l2, !tbaa !24
  %t355 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsArg(ptr %v0, ptr %v1, ptr %t349, ptr %t350, i64 %t351)
  store i1 %t355, ptr %l187
  br label %bb86
bb85:
  store i1 false, ptr %l183, !tbaa !21
  br label %bb87
bb86:
  %t356 = load i1, ptr %l187, !tbaa !21
  store i1 %t356, ptr %l183, !tbaa !21
  br label %bb87
bb87:
  %t357 = load i1, ptr %l183, !tbaa !21
  br i1 %t357, label %bb88, label %bb89
bb88:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load ptr, ptr %l1, !tbaa !29
  %t360 = load i64, ptr %l2, !tbaa !24
  %t361 = load ptr, ptr %l10, !tbaa !29
  %t366 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandleLent(ptr %v0, ptr %v1, ptr %v1, ptr %t358, ptr %t359, i64 %t360, ptr %t361)
  store i1 %t366, ptr %l193
  br label %bb90
bb89:
  store i1 false, ptr %l188, !tbaa !21
  br label %bb91
bb90:
  %t367 = load i1, ptr %l193, !tbaa !21
  %t368 = xor i1 %t367, true
  store i1 %t368, ptr %l188, !tbaa !21
  br label %bb91
bb91:
  %t370 = load i1, ptr %l188, !tbaa !21
  br i1 %t370, label %bb92, label %bb93
bb92:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load ptr, ptr %l1, !tbaa !29
  %t373 = load i64, ptr %l2, !tbaa !24
  %t374 = load ptr, ptr %l11, !tbaa !29
  %t375 = load %"compiler/scope:Val", ptr %l16
  %t381 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitLent(ptr %v0, ptr %v1, ptr %v1, ptr %t371, ptr %t372, i64 %t373, ptr %t374, %"compiler/scope:Val" %t375)
  store i1 %t381, ptr %l201
  br label %bb94
bb93:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb95
bb94:
  %t382 = load i1, ptr %l201, !tbaa !21
  %t383 = xor i1 %t382, true
  store i1 %t383, ptr %l195, !tbaa !21
  br label %bb95
bb95:
  %t385 = load i1, ptr %l195, !tbaa !21
  br i1 %t385, label %bb96, label %bb97
bb96:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load ptr, ptr %l11, !tbaa !29
  %t389 = getelementptr %"compiler/typed:Promote", ptr %t387, i32 0, i32 0
  %t390 = load ptr, ptr %t389, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v1, ptr %t386, ptr %t390)
  br label %bb98
bb97:
  br label %bb105
bb98:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/scope:Scoper", ptr %t393, i32 0, i32 28
  %t396 = load i1, ptr %t395, !tbaa !21
  br i1 %t396, label %bb99, label %bb100
bb99:
  %t398 = load ptr, ptr %l0, !tbaa !29
  store ptr %t398, ptr %l208, !tbaa !29
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load ptr, ptr %l10, !tbaa !29
  %t403 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %t399, ptr %t400)
  store %"compiler/source:Span" %t403, ptr %l211
  br label %bb101
bb100:
  br label %bb104
bb101:
  %t404 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitScopes(ptr %v0)
  store %"compiler/diagmsg:Msg" %t404, ptr %l212
  br label %bb102
bb102:
  %t405 = load ptr, ptr %l208, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l211
  %t407 = load %"compiler/diagmsg:Msg", ptr %l212
  %t408 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t405, %"compiler/source:Span" %t406, %"compiler/diagmsg:Msg" %t407)
  store i64 %t408, ptr %l213
  br label %bb103
bb103:
  br label %bb104
bb104:
  br label %bb105
bb105:
  %t409 = getelementptr %"compiler/scope:Val", ptr %l16, i32 0, i32 0
  %t410 = load i32, ptr %t409, !range !{i32 0, i32 5}
  %t412 = trunc i64 2 to i32
  %t413 = icmp eq i32 %t410, %t412
  br i1 %t413, label %bb106, label %bb107
bb106:
  %t415 = getelementptr %"compiler/scope:Val", ptr %l16, i32 0, i32 1
  %t416 = load { i64, [2 x i64] }, ptr %t415
  %t418 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t416)
  store %"compiler/scope:Val" %t418, ptr %l217
  br label %bb108
bb107:
  br label %bb109
bb108:
  %t419 = load %"compiler/scope:Val", ptr %l217
  store %"compiler/scope:Val" %t419, ptr %l16
  br label %bb109
bb109:
  %t420 = load %"compiler/scope:Val", ptr %l16
  store %"compiler/scope:Val" %t420, ptr %rv
  br label %ret
bb110:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load ptr, ptr %l10, !tbaa !29
  %t427 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t422, ptr %t423)
  store i1 %t427, ptr %l222
  br label %bb111
bb111:
  %t428 = load i1, ptr %l222, !tbaa !21
  br i1 %t428, label %bb112, label %bb113
bb112:
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load ptr, ptr %l10, !tbaa !29
  %t433 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLands(ptr %v0, ptr %v1, ptr %t429, ptr %t430)
  store i1 %t433, ptr %l226
  br label %bb114
bb113:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb115
bb114:
  %t434 = load i1, ptr %l226, !tbaa !21
  store i1 %t434, ptr %l223, !tbaa !21
  br label %bb115
bb115:
  %t435 = load i1, ptr %l223, !tbaa !21
  br i1 %t435, label %bb116, label %bb117
bb116:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t438 = getelementptr %"compiler/scope:Scoper", ptr %t436, i32 0, i32 128
  store i1 true, ptr %t438, !tbaa !21
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load ptr, ptr %l10, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t442
  %t443 = getelementptr { i64, [2 x i64] }, ptr %t442, i32 0, i32 0
  store i64 0, ptr %t443
  %t444 = load { i64, [2 x i64] }, ptr %t442
  %t448 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t439, ptr %t440, { i64, [2 x i64] } %t444)
  store %"compiler/scope:Val" %t448, ptr %l232
  br label %bb118
bb117:
  br label %bb123
bb118:
  %t449 = load %"compiler/scope:Val", ptr %l232
  store %"compiler/scope:Val" %t449, ptr %l17
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t452 = getelementptr %"compiler/scope:Scoper", ptr %t450, i32 0, i32 128
  store i1 false, ptr %t452, !tbaa !21
  %t453 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t453, ptr %l234, !tbaa !27
  %t454 = load i64, ptr %l2, !tbaa !24
  %t456 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !27
  %t458 = getelementptr i1, ptr %t457, i64 %t454
  store i1 true, ptr %t458, !tbaa !31
  %t459 = getelementptr %"compiler/scope:Val", ptr %l17, i32 0, i32 0
  %t460 = load i32, ptr %t459, !range !{i32 0, i32 5}
  %t462 = trunc i64 2 to i32
  %t463 = icmp eq i32 %t460, %t462
  br i1 %t463, label %bb119, label %bb120
bb119:
  %t465 = getelementptr %"compiler/scope:Val", ptr %l17, i32 0, i32 1
  %t466 = load { i64, [2 x i64] }, ptr %t465
  %t468 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t466)
  store %"compiler/scope:Val" %t468, ptr %l239
  br label %bb121
bb120:
  br label %bb122
bb121:
  %t469 = load %"compiler/scope:Val", ptr %l239
  store %"compiler/scope:Val" %t469, ptr %l17
  br label %bb122
bb122:
  %t470 = load %"compiler/scope:Val", ptr %l17
  store %"compiler/scope:Val" %t470, ptr %rv
  br label %ret
bb123:
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t473 = load ptr, ptr %l10, !tbaa !29
  %t477 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t472, ptr %t473)
  store i1 %t477, ptr %l244
  br label %bb124
bb124:
  %t478 = load i1, ptr %l244, !tbaa !21
  br i1 %t478, label %bb125, label %bb126
bb125:
  store i1 true, ptr %l245, !tbaa !21
  br label %bb128
bb126:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load ptr, ptr %l10, !tbaa !29
  %t483 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHeldFresh(ptr %v0, ptr %v1, ptr %t479, ptr %t480)
  store i1 %t483, ptr %l248
  br label %bb127
bb127:
  %t484 = load i1, ptr %l248, !tbaa !21
  store i1 %t484, ptr %l245, !tbaa !21
  br label %bb128
bb128:
  %t485 = load i1, ptr %l245, !tbaa !21
  br i1 %t485, label %bb129, label %bb130
bb129:
  %t486 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t486, ptr %l249
  br label %bb131
bb130:
  br label %bb132
bb131:
  %t487 = load %"compiler/scope:Val", ptr %l249
  store %"compiler/scope:Val" %t487, ptr %rv
  br label %ret
bb132:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load ptr, ptr %l1, !tbaa !29
  %t490 = load i64, ptr %l2, !tbaa !24
  %t495 = load { i64, [2 x i64] }, ptr %l9
  %t497 = extractvalue { i64, [2 x i64] } %t495, 0
  %t498 = icmp eq i64 %t497, 0
  %t500 = xor i1 %t498, true
  %t509 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargExisting(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t488, ptr %t489, i64 %t490, { i64, ptr } %a4, { i64, ptr } %a5, i64 %a6, { i64, [2 x i64] } %a7, i1 %t500)
  store %"compiler/scope:Val" %t509, ptr %l260
  br label %bb133
bb133:
  %t510 = load %"compiler/scope:Val", ptr %l260
  store %"compiler/scope:Val" %t510, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca %"compiler/scope:placeSlot"
  %l6 = alloca %"compiler/scope:Val"
  %l7 = alloca %"compiler/scope:placeSlot"
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca i1
  %l17 = alloca %"compiler/scope:Val"
  %l20 = alloca i1
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i1
  %l35 = alloca i32
  %l42 = alloca i1
  %l43 = alloca i1
  %l48 = alloca i1
  %l51 = alloca %"compiler/scope:placeSlot"
  %l52 = alloca ptr
  %l54 = alloca ptr
  %l56 = alloca i1
  %l57 = alloca { i64, [2 x i64] }
  %l60 = alloca { i64, [2 x i64] }
  %l61 = alloca %"compiler/scope:Val"
  %l71 = alloca i1
  %l73 = alloca i1
  %l75 = alloca i1
  %l83 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca i32
  %l90 = alloca i1
  %l92 = alloca ptr
  %l94 = alloca ptr
  %l97 = alloca i1
  %l98 = alloca { i64, [2 x i64] }
  %l101 = alloca { i64, [2 x i64] }
  %l103 = alloca %"compiler/scope:Val"
  %l104 = alloca ptr
  %l107 = alloca ptr
  %l108 = alloca i32
  %l111 = alloca %"compiler/scope:placeSlot"
  %l117 = alloca i1
  %l126 = alloca ptr
  %l133 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l136 = alloca %"compiler/source:Span"
  %l141 = alloca ptr
  %l143 = alloca i64
  %l147 = alloca i1
  %l148 = alloca ptr
  %l150 = alloca ptr
  %l152 = alloca i1
  %l153 = alloca i1
  %l155 = alloca { i64, [2 x i64] }
  %l158 = alloca { i64, [2 x i64] }
  %l159 = alloca %"compiler/scope:Val"
  %l170 = alloca i64
  %l172 = alloca ptr
  %l174 = alloca i64
  %l178 = alloca i1
  %l182 = alloca i1
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l190 = alloca %"compiler/source:Span"
  %l191 = alloca %"compiler/source:Span"
  %l192 = alloca %"compiler/diagmsg:Msg"
  %l193 = alloca i64
  %l194 = alloca ptr
  %l197 = alloca ptr
  %l198 = alloca i32
  %l201 = alloca i1
  %l205 = alloca i1
  %l209 = alloca i1
  %l210 = alloca ptr
  %l213 = alloca ptr
  %l214 = alloca i32
  %l224 = alloca ptr
  %l226 = alloca %"compiler/source:Span"
  %l227 = alloca %"compiler/source:Span"
  %l232 = alloca ptr
  %l234 = alloca i64
  %l236 = alloca i64
  %l238 = alloca i64
  %l242 = alloca i64
  %l258 = alloca i1
  %l260 = alloca i1
  %l262 = alloca i1
  %l266 = alloca i1
  %l273 = alloca ptr
  %l276 = alloca ptr
  %l277 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %t156 = alloca { i64, [2 x i64] }, align 8
  %t286 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l26, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t2)
  store i64 %t4, ptr %l28
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l26, !tbaa !29
  %t6 = load i64, ptr %l28, !tbaa !24
  %t7 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t5, i64 %t6)
  store i1 %t7, ptr %l29
  br label %bb2
bb2:
  %t8 = load i1, ptr %l29, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorAssign(ptr %v0, ptr %v1, ptr %v2, ptr %t9, %"compiler/source:Span" %t10, ptr %t11, ptr %t12)
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t17)
  store i32 %t19, ptr %l35
  br label %bb7
bb7:
  %t20 = load i32, ptr %l35, !tbaa !23
  store i32 %t20, ptr %l4, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 60
  %t24 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %t23, ptr %t24)
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %t27, ptr %t28)
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call i1 @compiler_2ftyped_2ePartOf(ptr %v1, ptr %t31)
  store i1 %t33, ptr %l42
  br label %bb10
bb10:
  %t34 = load i1, ptr %l42, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l4, !tbaa !23
  %t44 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t44, ptr %l48
  br label %bb13
bb12:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  %t45 = load i1, ptr %l48, !tbaa !21
  store i1 %t45, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l43, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t51 = call %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %t47, ptr %t48)
  store %"compiler/scope:placeSlot" %t51, ptr %l51
  br label %bb17
bb16:
  br label %bb43
bb17:
  %t52 = load %"compiler/scope:placeSlot", ptr %l51
  store %"compiler/scope:placeSlot" %t52, ptr %l5
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l52, !tbaa !29
  %t54 = load ptr, ptr %l3, !tbaa !29
  store ptr %t54, ptr %l54, !tbaa !29
  %t56 = getelementptr %"compiler/scope:placeSlot", ptr %l5, i32 0, i32 0
  %t57 = load { i64, [2 x i64] }, ptr %t56
  %t59 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t57)
  store i1 %t59, ptr %l56
  br label %bb18
bb18:
  %t60 = load i1, ptr %l56, !tbaa !21
  br i1 %t60, label %bb19, label %bb20
bb19:
  %t61 = getelementptr %"compiler/scope:placeSlot", ptr %l5, i32 0, i32 0
  %t62 = load { i64, [2 x i64] }, ptr %t61
  store { i64, [2 x i64] } %t62, ptr %l57
  br label %bb22
bb20:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t64)
  store { i64, [2 x i64] } %t66, ptr %l60
  br label %bb21
bb21:
  %t67 = load { i64, [2 x i64] }, ptr %l60
  store { i64, [2 x i64] } %t67, ptr %l57
  br label %bb22
bb22:
  %t68 = load ptr, ptr %l52, !tbaa !29
  %t69 = load ptr, ptr %l54, !tbaa !29
  %t70 = load { i64, [2 x i64] }, ptr %l57
  %t71 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v2, ptr %t68, ptr %t69, { i64, [2 x i64] } %t70)
  store %"compiler/scope:Val" %t71, ptr %l61
  br label %bb23
bb23:
  %t72 = load %"compiler/scope:Val", ptr %l61
  store %"compiler/scope:Val" %t72, ptr %l6
  %t73 = getelementptr %"compiler/scope:Val", ptr %l6, i32 0, i32 0
  %t74 = load i32, ptr %t73, !range !{i32 0, i32 5}
  %t76 = trunc i64 3 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Val", ptr %l6, i32 0, i32 1
  %t81 = load { i64, [2 x i64] }, ptr %t80
  %t82 = getelementptr %"compiler/scope:placeSlot", ptr %l5, i32 0, i32 0
  %t83 = load { i64, [2 x i64] }, ptr %t82
  %t84 = load ptr, ptr %l3, !tbaa !29
  %t85 = getelementptr %"compiler/scope:placeSlot", ptr %l5, i32 0, i32 2
  %t86 = load i64, ptr %t85, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v2, ptr %t79, { i64, [2 x i64] } %t81, { i64, [2 x i64] } %t83, i1 true, ptr %t84, i64 %t86)
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t92 = getelementptr %"compiler/scope:Val", ptr %l6, i32 0, i32 0
  %t93 = load i32, ptr %t92, !range !{i32 0, i32 5}
  %t95 = trunc i64 2 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb28, label %bb29
bb28:
  %t98 = getelementptr %"compiler/scope:placeSlot", ptr %l5, i32 0, i32 0
  %t99 = load { i64, [2 x i64] }, ptr %t98
  %t101 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t99)
  store i1 %t101, ptr %l73
  br label %bb30
bb29:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb31
bb30:
  %t102 = load i1, ptr %l73, !tbaa !21
  %t103 = xor i1 %t102, true
  store i1 %t103, ptr %l71, !tbaa !21
  br label %bb31
bb31:
  %t105 = load i1, ptr %l71, !tbaa !21
  br i1 %t105, label %bb32, label %bb33
bb32:
  %t106 = getelementptr %"compiler/scope:placeSlot", ptr %l5, i32 0, i32 0
  %t107 = load { i64, [2 x i64] }, ptr %t106
  %t109 = extractvalue { i64, [2 x i64] } %t107, 0
  %t110 = icmp eq i64 %t109, 0
  %t112 = xor i1 %t110, true
  store i1 %t112, ptr %l75, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb34
bb34:
  %t114 = load i1, ptr %l75, !tbaa !21
  br i1 %t114, label %bb35, label %bb36
bb35:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t118 = getelementptr %"compiler/scope:placeSlot", ptr %l5, i32 0, i32 0
  %t119 = load { i64, [2 x i64] }, ptr %t118
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efreshIntoUnknown(ptr %v0, ptr %v1, ptr %t115, %"compiler/source:Span" %t116, ptr %t117, { i64, [2 x i64] } %t119)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb38
bb38:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 60
  %t128 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %s2, ptr %t126)
  %t129 = extractvalue { i32, ptr } %t128, 1
  %t130 = extractvalue { i32, ptr } %t128, 0
  store i32 %t130, ptr %l87
  %t131 = icmp ne i32 %t130, 0
  br i1 %t131, label %bb40, label %ok.132, !prof !99
ok.132:
  store ptr %t129, ptr %l86
  br label %bb39
bb39:
  %t133 = load ptr, ptr %l86, !tbaa !29
  store ptr %t133, ptr %l83, !tbaa !29
  br label %bb42
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb43:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l4, !tbaa !23
  %t138 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t134, i32 %t135)
  store i1 %t138, ptr %l90
  br label %bb44
bb44:
  %t139 = load i1, ptr %l90, !tbaa !21
  %t140 = xor i1 %t139, true
  br i1 %t140, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s6
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l92, !tbaa !29
  %t143 = load ptr, ptr %l3, !tbaa !29
  store ptr %t143, ptr %l94, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i32, ptr %l4, !tbaa !23
  %t149 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t145, i32 %t146)
  store i1 %t149, ptr %l97
  br label %bb47
bb46:
  br label %bb57
bb47:
  %t150 = load i1, ptr %l97, !tbaa !21
  br i1 %t150, label %bb48, label %bb49
bb48:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l2, !tbaa !29
  %t155 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t151, ptr %t152, i1 false)
  store { i64, [2 x i64] } %t155, ptr %l101
  br label %bb50
bb49:
  store { i64, [2 x i64] } zeroinitializer, ptr %t156
  %t157 = getelementptr { i64, [2 x i64] }, ptr %t156, i32 0, i32 0
  store i64 0, ptr %t157
  %t158 = load { i64, [2 x i64] }, ptr %t156
  store { i64, [2 x i64] } %t158, ptr %l98
  br label %bb51
bb50:
  %t160 = load { i64, [2 x i64] }, ptr %l101
  store { i64, [2 x i64] } %t160, ptr %l98
  br label %bb51
bb51:
  %t161 = load ptr, ptr %l92, !tbaa !29
  %t162 = load ptr, ptr %l94, !tbaa !29
  %t163 = load { i64, [2 x i64] }, ptr %l98
  %t164 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v2, ptr %t161, ptr %t162, { i64, [2 x i64] } %t163)
  store %"compiler/scope:Val" %t164, ptr %l103
  br label %bb52
bb52:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/scope:Scoper", ptr %t165, i32 0, i32 60
  %t169 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %s6, ptr %t167)
  %t170 = extractvalue { i32, ptr } %t169, 1
  %t171 = extractvalue { i32, ptr } %t169, 0
  store i32 %t171, ptr %l108
  %t172 = icmp ne i32 %t171, 0
  br i1 %t172, label %bb54, label %ok.173, !prof !99
ok.173:
  store ptr %t170, ptr %l107
  br label %bb53
bb53:
  %t174 = load ptr, ptr %l107, !tbaa !29
  store ptr %t174, ptr %l104, !tbaa !29
  br label %bb56
bb54:
  br label %bb55
bb55:
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb57:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t179 = call %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %t175, ptr %t176)
  store %"compiler/scope:placeSlot" %t179, ptr %l111
  br label %bb58
bb58:
  %t180 = load %"compiler/scope:placeSlot", ptr %l111
  store %"compiler/scope:placeSlot" %t180, ptr %l7
  %t181 = getelementptr %"compiler/scope:placeSlot", ptr %l7, i32 0, i32 0
  %t182 = load { i64, [2 x i64] }, ptr %t181
  store { i64, [2 x i64] } %t182, ptr %l8
  %t184 = getelementptr %"compiler/scope:placeSlot", ptr %l7, i32 0, i32 1
  %t185 = load i1, ptr %t184, !tbaa !21
  store i1 %t185, ptr %l9, !tbaa !21
  %t187 = getelementptr %"compiler/scope:placeSlot", ptr %l7, i32 0, i32 2
  %t188 = load i64, ptr %t187, !tbaa !24
  store i64 %t188, ptr %l10, !tbaa !24
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i32, ptr %l4, !tbaa !23
  %t194 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t190, i32 %t191)
  store i1 %t194, ptr %l117
  br label %bb59
bb59:
  %t195 = load i1, ptr %l117, !tbaa !21
  br i1 %t195, label %bb60, label %bb61
bb60:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitBorrow(ptr %v0, ptr %v2, ptr %t196, ptr %t197)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/scope:Scoper", ptr %t200, i32 0, i32 145
  %t203 = load i64, ptr %t202, !tbaa !24
  store i64 %t203, ptr %l11, !tbaa !24
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/scope:Scoper", ptr %t205, i32 0, i32 146
  %t208 = load %"compiler/source:Span", ptr %t207
  store %"compiler/source:Span" %t208, ptr %l12
  %t210 = load ptr, ptr %l3, !tbaa !29
  %t213 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v2, ptr %v2, ptr %t210)
  store ptr %t213, ptr %l126
  br label %bb64
bb64:
  %t214 = load ptr, ptr %l126, !tbaa !29
  store ptr %t214, ptr %l13, !tbaa !29
  %t215 = load ptr, ptr %l13, !tbaa !29
  %t217 = icmp eq ptr %t215, null
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb65, label %bb66
bb65:
  %t221 = load ptr, ptr %l13, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Call", ptr %t221, i32 0, i32 2
  %t224 = load i32, ptr %t223, !tbaa !23
  %t226 = sext i32 %t224 to i64
  store i64 %t226, ptr %l14, !tbaa !24
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l133, !tbaa !29
  %t229 = load ptr, ptr %l2, !tbaa !29
  %t231 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t229)
  store %"compiler/source:Span" %t231, ptr %l135
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t232 = load ptr, ptr %l133, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l135
  %t234 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %t232, %"compiler/source:Span" %t233)
  store %"compiler/source:Span" %t234, ptr %l136
  br label %bb68
bb68:
  %t235 = load %"compiler/source:Span", ptr %l136
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i64, ptr %l14, !tbaa !24
  %t240 = getelementptr %"compiler/scope:Scoper", ptr %t236, i32 0, i32 145
  store i64 %t237, ptr %t240, !tbaa !24
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/scope:Scoper", ptr %t241, i32 0, i32 146
  store %"compiler/source:Span" %t235, ptr %t245
  br label %bb69
bb69:
  %t246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t246, ptr %l141, !tbaa !29
  %t247 = load ptr, ptr %l2, !tbaa !29
  %t249 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t247)
  store i64 %t249, ptr %l143
  br label %bb70
bb70:
  %t250 = load i64, ptr %l143, !tbaa !24
  %t251 = load ptr, ptr %l141, !tbaa !29
  %t252 = getelementptr %"compiler/scope:Scoper", ptr %t251, i32 0, i32 198
  store i64 %t250, ptr %t252, !tbaa !24
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load ptr, ptr %l2, !tbaa !29
  %t255 = load { i64, [2 x i64] }, ptr %l8
  %t259 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efindInto(ptr %v0, ptr %v1, ptr %t253, ptr %t254, { i64, [2 x i64] } %t255)
  store i1 %t259, ptr %l147
  br label %bb71
bb71:
  %t260 = load i1, ptr %l147, !tbaa !21
  store i1 %t260, ptr %l16, !tbaa !21
  %t261 = load ptr, ptr %l0, !tbaa !29
  store ptr %t261, ptr %l148, !tbaa !29
  %t262 = load ptr, ptr %l3, !tbaa !29
  store ptr %t262, ptr %l150, !tbaa !29
  %t264 = load { i64, [2 x i64] }, ptr %l8
  %t266 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t264)
  store i1 %t266, ptr %l152
  br label %bb72
bb72:
  %t267 = load i1, ptr %l152, !tbaa !21
  br i1 %t267, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l153, !tbaa !21
  br label %bb75
bb74:
  %t268 = load i1, ptr %l16, !tbaa !21
  store i1 %t268, ptr %l153, !tbaa !21
  br label %bb75
bb75:
  %t270 = load i1, ptr %l153, !tbaa !21
  br i1 %t270, label %bb76, label %bb77
bb76:
  %t271 = load { i64, [2 x i64] }, ptr %l8
  store { i64, [2 x i64] } %t271, ptr %l155
  br label %bb79
bb77:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t273)
  store { i64, [2 x i64] } %t275, ptr %l158
  br label %bb78
bb78:
  %t276 = load { i64, [2 x i64] }, ptr %l158
  store { i64, [2 x i64] } %t276, ptr %l155
  br label %bb79
bb79:
  %t277 = load ptr, ptr %l148, !tbaa !29
  %t278 = load ptr, ptr %l150, !tbaa !29
  %t279 = load { i64, [2 x i64] }, ptr %l155
  %t280 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v2, ptr %t277, ptr %t278, { i64, [2 x i64] } %t279)
  store %"compiler/scope:Val" %t280, ptr %l159
  br label %bb80
bb80:
  %t281 = load %"compiler/scope:Val", ptr %l159
  store %"compiler/scope:Val" %t281, ptr %l17
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/scope:Scoper", ptr %t282, i32 0, i32 64
  store ptr null, ptr %t284, !tbaa !29
  %t285 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t286
  %t287 = getelementptr { i64, [2 x i64] }, ptr %t286, i32 0, i32 0
  store i64 0, ptr %t287
  %t288 = load { i64, [2 x i64] }, ptr %t286
  %t291 = getelementptr %"compiler/scope:Scoper", ptr %t285, i32 0, i32 65
  store { i64, [2 x i64] } %t288, ptr %t291
  %t292 = load i64, ptr %l11, !tbaa !24
  %t294 = load %"compiler/source:Span", ptr %l12
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/scope:Scoper", ptr %t296, i32 0, i32 145
  store i64 %t292, ptr %t300, !tbaa !24
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/scope:Scoper", ptr %t301, i32 0, i32 146
  store %"compiler/source:Span" %t294, ptr %t305
  %t306 = load ptr, ptr %l2, !tbaa !29
  %t308 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t306)
  store i64 %t308, ptr %l170
  br label %bb81
bb81:
  %t309 = load i64, ptr %l170, !tbaa !24
  %t310 = icmp sge i64 %t309, 0
  br i1 %t310, label %bb82, label %bb83
bb82:
  %t312 = load ptr, ptr %l0, !tbaa !29
  store ptr %t312, ptr %l172, !tbaa !29
  %t313 = load ptr, ptr %l2, !tbaa !29
  %t315 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t313)
  store i64 %t315, ptr %l174
  br label %bb84
bb83:
  br label %bb86
bb84:
  %t316 = load ptr, ptr %l3, !tbaa !29
  %t317 = load ptr, ptr %l172, !tbaa !29
  %t318 = load i64, ptr %l174, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLate(ptr %v0, ptr %v2, ptr %t317, i64 %t318, ptr %t316)
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t320 = getelementptr %"compiler/scope:Val", ptr %l17, i32 0, i32 0
  %t321 = load i32, ptr %t320, !range !{i32 0, i32 5}
  %t323 = trunc i64 3 to i32
  %t324 = icmp eq i32 %t321, %t323
  br i1 %t324, label %bb87, label %bb88
bb87:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load ptr, ptr %l2, !tbaa !29
  %t328 = load { i64, [2 x i64] }, ptr %l8
  %t332 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindingUnknown(ptr %v0, ptr %v1, ptr %t326, ptr %t327, { i64, [2 x i64] } %t328)
  store i1 %t332, ptr %l182
  br label %bb89
bb88:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb90
bb89:
  %t333 = load i1, ptr %l182, !tbaa !21
  store i1 %t333, ptr %l178, !tbaa !21
  br label %bb90
bb90:
  %t334 = load i1, ptr %l178, !tbaa !21
  br i1 %t334, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s11
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %t335, ptr %t336)
  br label %bb93
bb92:
  br label %bb105
bb93:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/scope:Scoper", ptr %t339, i32 0, i32 28
  %t342 = load i1, ptr %t341, !tbaa !21
  br i1 %t342, label %bb94, label %bb95
bb94:
  %t344 = load ptr, ptr %l0, !tbaa !29
  store ptr %t344, ptr %l187, !tbaa !29
  %t345 = load ptr, ptr %l0, !tbaa !29
  store ptr %t345, ptr %l188, !tbaa !29
  %t346 = load ptr, ptr %l2, !tbaa !29
  %t348 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t346)
  store %"compiler/source:Span" %t348, ptr %l190
  br label %bb96
bb95:
  br label %bb100
bb96:
  %t349 = load ptr, ptr %l188, !tbaa !29
  %t350 = load %"compiler/source:Span", ptr %l190
  %t351 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %t349, %"compiler/source:Span" %t350)
  store %"compiler/source:Span" %t351, ptr %l191
  br label %bb97
bb97:
  %t352 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldBindingUnknown(ptr %v0)
  store %"compiler/diagmsg:Msg" %t352, ptr %l192
  br label %bb98
bb98:
  %t353 = load ptr, ptr %l187, !tbaa !29
  %t354 = load %"compiler/source:Span", ptr %l191
  %t355 = load %"compiler/diagmsg:Msg", ptr %l192
  %t356 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t353, %"compiler/source:Span" %t354, %"compiler/diagmsg:Msg" %t355)
  store i64 %t356, ptr %l193
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/scope:Scoper", ptr %t357, i32 0, i32 60
  %t361 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %s11, ptr %t359)
  %t362 = extractvalue { i32, ptr } %t361, 1
  %t363 = extractvalue { i32, ptr } %t361, 0
  store i32 %t363, ptr %l198
  %t364 = icmp ne i32 %t363, 0
  br i1 %t364, label %bb102, label %ok.365, !prof !99
ok.365:
  store ptr %t362, ptr %l197
  br label %bb101
bb101:
  %t366 = load ptr, ptr %l197, !tbaa !29
  store ptr %t366, ptr %l194, !tbaa !29
  br label %bb104
bb102:
  br label %bb103
bb103:
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb105:
  %t367 = getelementptr %"compiler/scope:Val", ptr %l17, i32 0, i32 0
  %t368 = load i32, ptr %t367, !range !{i32 0, i32 5}
  %t370 = trunc i64 3 to i32
  %t371 = icmp eq i32 %t368, %t370
  br i1 %t371, label %bb106, label %bb107
bb106:
  %t373 = load i64, ptr %l10, !tbaa !24
  %t374 = load i64, ptr @G_2ecompiler_2fscope_2eFitGlobal, !tbaa !24
  %t377 = icmp ne i64 %t373, %t374
  store i1 %t377, ptr %l201, !tbaa !21
  br label %bb108
bb107:
  store i1 false, ptr %l201, !tbaa !21
  br label %bb108
bb108:
  %t379 = load i1, ptr %l201, !tbaa !21
  br i1 %t379, label %bb109, label %bb110
bb109:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load ptr, ptr %l3, !tbaa !29
  %t382 = load { i64, [2 x i64] }, ptr %l8
  %t386 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceOutlivesArg(ptr %v0, ptr %v2, ptr %t380, ptr %t381, { i64, [2 x i64] } %t382)
  store i1 %t386, ptr %l209
  br label %bb111
bb110:
  store i1 false, ptr %l205, !tbaa !21
  br label %bb112
bb111:
  %t387 = load i1, ptr %l209, !tbaa !21
  store i1 %t387, ptr %l205, !tbaa !21
  br label %bb112
bb112:
  %t388 = load i1, ptr %l205, !tbaa !21
  br i1 %t388, label %bb113, label %bb114
bb113:
  store %olang.scope zeroinitializer, ptr %s14
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/scope:Scoper", ptr %t389, i32 0, i32 60
  %t393 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %s14, ptr %t391)
  %t394 = extractvalue { i32, ptr } %t393, 1
  %t395 = extractvalue { i32, ptr } %t393, 0
  store i32 %t395, ptr %l214
  %t396 = icmp ne i32 %t395, 0
  br i1 %t396, label %bb116, label %ok.397, !prof !99
ok.397:
  store ptr %t394, ptr %l213
  br label %bb115
bb114:
  br label %bb119
bb115:
  %t398 = load ptr, ptr %l213, !tbaa !29
  store ptr %t398, ptr %l210, !tbaa !29
  br label %bb118
bb116:
  br label %bb117
bb117:
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb119:
  %t399 = getelementptr %"compiler/scope:Val", ptr %l17, i32 0, i32 0
  %t400 = load i32, ptr %t399, !range !{i32 0, i32 5}
  %t402 = trunc i64 3 to i32
  %t403 = icmp eq i32 %t400, %t402
  br i1 %t403, label %bb120, label %bb121
bb120:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/scope:Scoper", ptr %t405, i32 0, i32 90
  %t408 = load i1, ptr %t407, !tbaa !21
  store i1 %t408, ptr %l20, !tbaa !21
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = getelementptr %"compiler/scope:Scoper", ptr %t410, i32 0, i32 91
  %t413 = load %"compiler/source:Span", ptr %t412
  store %"compiler/source:Span" %t413, ptr %l21
  %t415 = load i64, ptr %l10, !tbaa !24
  %t416 = load i64, ptr @G_2ecompiler_2fscope_2eFitGlobal, !tbaa !24
  %t419 = icmp ne i64 %t415, %t416
  store i1 %t419, ptr %l22, !tbaa !21
  %t421 = load ptr, ptr %l0, !tbaa !29
  store ptr %t421, ptr %l224, !tbaa !29
  %t422 = load ptr, ptr %l2, !tbaa !29
  %t424 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t422)
  store %"compiler/source:Span" %t424, ptr %l226
  br label %bb122
bb121:
  br label %bb131
bb122:
  %t425 = load ptr, ptr %l224, !tbaa !29
  %t426 = load %"compiler/source:Span", ptr %l226
  %t427 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %t425, %"compiler/source:Span" %t426)
  store %"compiler/source:Span" %t427, ptr %l227
  br label %bb123
bb123:
  %t428 = load %"compiler/source:Span", ptr %l227
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load i1, ptr %l22, !tbaa !21
  %t433 = getelementptr %"compiler/scope:Scoper", ptr %t429, i32 0, i32 90
  store i1 %t430, ptr %t433, !tbaa !21
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t438 = getelementptr %"compiler/scope:Scoper", ptr %t434, i32 0, i32 91
  store %"compiler/source:Span" %t428, ptr %t438
  %t439 = load ptr, ptr %l0, !tbaa !29
  store ptr %t439, ptr %l232, !tbaa !29
  %t440 = load ptr, ptr %l2, !tbaa !29
  %t442 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t440)
  store i64 %t442, ptr %l234
  br label %bb124
bb124:
  %t443 = load i64, ptr %l234, !tbaa !24
  %t444 = icmp sge i64 %t443, 0
  br i1 %t444, label %bb125, label %bb126
bb125:
  %t446 = load ptr, ptr %l2, !tbaa !29
  %t448 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t446)
  store i64 %t448, ptr %l238
  br label %bb127
bb126:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t450 = load ptr, ptr %l2, !tbaa !29
  %t451 = load { i64, [2 x i64] }, ptr %l8
  %t455 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughLocal(ptr %v0, ptr %v1, ptr %t449, ptr %t450, { i64, [2 x i64] } %t451)
  store i64 %t455, ptr %l242
  br label %bb128
bb127:
  %t456 = load i64, ptr %l238, !tbaa !24
  store i64 %t456, ptr %l236, !tbaa !24
  br label %bb129
bb128:
  %t457 = load i64, ptr %l242, !tbaa !24
  store i64 %t457, ptr %l236, !tbaa !24
  br label %bb129
bb129:
  %t458 = load i64, ptr %l236, !tbaa !24
  %t459 = load ptr, ptr %l232, !tbaa !29
  %t460 = getelementptr %"compiler/scope:Scoper", ptr %t459, i32 0, i32 196
  store i64 %t458, ptr %t460, !tbaa !24
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/scope:Val", ptr %l17, i32 0, i32 1
  %t463 = load { i64, [2 x i64] }, ptr %t462
  %t464 = load { i64, [2 x i64] }, ptr %l8
  %t465 = load i1, ptr %l9, !tbaa !21
  %t466 = load ptr, ptr %l3, !tbaa !29
  %t467 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v2, ptr %t461, { i64, [2 x i64] } %t463, { i64, [2 x i64] } %t464, i1 %t465, ptr %t466, i64 %t467)
  br label %bb130
bb130:
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t476 = getelementptr %"compiler/scope:Scoper", ptr %t474, i32 0, i32 196
  store i64 -1, ptr %t476, !tbaa !24
  %t477 = load i1, ptr %l20, !tbaa !21
  %t479 = load %"compiler/source:Span", ptr %l21
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t485 = getelementptr %"compiler/scope:Scoper", ptr %t481, i32 0, i32 90
  store i1 %t477, ptr %t485, !tbaa !21
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t490 = getelementptr %"compiler/scope:Scoper", ptr %t486, i32 0, i32 91
  store %"compiler/source:Span" %t479, ptr %t490
  br label %bb131
bb131:
  %t491 = getelementptr %"compiler/scope:Val", ptr %l17, i32 0, i32 0
  %t492 = load i32, ptr %t491, !range !{i32 0, i32 5}
  %t494 = trunc i64 2 to i32
  %t495 = icmp eq i32 %t492, %t494
  br i1 %t495, label %bb132, label %bb133
bb132:
  %t497 = load { i64, [2 x i64] }, ptr %l8
  %t499 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t497)
  store i1 %t499, ptr %l260
  br label %bb134
bb133:
  store i1 false, ptr %l258, !tbaa !21
  br label %bb135
bb134:
  %t500 = load i1, ptr %l260, !tbaa !21
  %t501 = xor i1 %t500, true
  store i1 %t501, ptr %l258, !tbaa !21
  br label %bb135
bb135:
  %t503 = load i1, ptr %l258, !tbaa !21
  br i1 %t503, label %bb136, label %bb137
bb136:
  %t504 = load { i64, [2 x i64] }, ptr %l8
  %t506 = extractvalue { i64, [2 x i64] } %t504, 0
  %t507 = icmp eq i64 %t506, 0
  %t509 = xor i1 %t507, true
  store i1 %t509, ptr %l262, !tbaa !21
  br label %bb138
bb137:
  store i1 false, ptr %l262, !tbaa !21
  br label %bb138
bb138:
  %t511 = load i1, ptr %l262, !tbaa !21
  br i1 %t511, label %bb139, label %bb140
bb139:
  %t512 = load i1, ptr %l16, !tbaa !21
  %t514 = xor i1 %t512, true
  store i1 %t514, ptr %l266, !tbaa !21
  br label %bb141
bb140:
  store i1 false, ptr %l266, !tbaa !21
  br label %bb141
bb141:
  %t516 = load i1, ptr %l266, !tbaa !21
  br i1 %t516, label %bb142, label %bb143
bb142:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = load %"compiler/source:Span", ptr %l1
  %t519 = load ptr, ptr %l2, !tbaa !29
  %t520 = load { i64, [2 x i64] }, ptr %l8
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efreshIntoUnknown(ptr %v0, ptr %v1, ptr %t517, %"compiler/source:Span" %t518, ptr %t519, { i64, [2 x i64] } %t520)
  br label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb145
bb145:
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t527 = getelementptr %"compiler/scope:Scoper", ptr %t525, i32 0, i32 60
  %t529 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %s0, ptr %t527)
  %t530 = extractvalue { i32, ptr } %t529, 1
  %t531 = extractvalue { i32, ptr } %t529, 0
  store i32 %t531, ptr %l277
  %t532 = icmp ne i32 %t531, 0
  br i1 %t532, label %bb147, label %ok.533, !prof !99
ok.533:
  store ptr %t530, ptr %l276
  br label %bb146
bb146:
  %t534 = load ptr, ptr %l276, !tbaa !29
  store ptr %t534, ptr %l273, !tbaa !29
  br label %bb149
bb147:
  br label %bb148
bb148:
  br label %bb149
bb149:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebeyondBound(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/scope:rel"
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca ptr
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l55 = alloca %"compiler/scope:rel"
  %l60 = alloca i64
  %l65 = alloca i64
  %l69 = alloca i1
  %l77 = alloca i1
  %l81 = alloca i1
  %l85 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load i64, ptr %l17, !tbaa !24
  %t5 = icmp eq i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundEdges(ptr %v0, ptr %s0, ptr %t8, i32 %a3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l22
  br label %bb5
bb5:
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l5
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 1
  %t20 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t16, i64 %a1)
  store ptr %t20, ptr %l26
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l26, !tbaa !29
  store ptr %t21, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t22)
  store i64 %t24, ptr %l28
  br label %bb7
bb7:
  %t25 = load i64, ptr %l28, !tbaa !24
  store i64 %t25, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l8, !tbaa !24
  %t27 = load i64, ptr %l7, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l9, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb13
bb10:
  %t36 = load i64, ptr %l8, !tbaa !24
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l9, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l35, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l35, !tbaa !24
  store i64 %t52, ptr %l32, !tbaa !24
  br label %bb13
bb13:
  %t53 = load i64, ptr %l32, !tbaa !24
  store i64 %t53, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  %t54 = load i64, ptr %l11, !tbaa !24
  %t55 = load i64, ptr %l10, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb15, label %bb16
bb15:
  br label %bb39
bb16:
  br label %bb17
bb17:
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l11, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l12, !tbaa !24
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t73 = load i64, ptr %l12, !tbaa !24
  %t76 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v1, ptr %t72, i64 %t73)
  store %"compiler/scope:rel" %t76, ptr %l55
  br label %bb18
bb18:
  %t77 = load %"compiler/scope:rel", ptr %l55
  store %"compiler/scope:rel" %t77, ptr %l13
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l6, !tbaa !29
  %t80 = load i1, ptr %l4, !tbaa !21
  %t81 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 0
  %t82 = load { i64, [2 x i64] }, ptr %t81
  %t87 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposOf(ptr %v0, ptr %v0, ptr %t78, ptr %t79, i1 %t80, { i64, [2 x i64] } %t82)
  store i64 %t87, ptr %l60
  br label %bb19
bb19:
  %t88 = load i64, ptr %l60, !tbaa !24
  store i64 %t88, ptr %l14, !tbaa !24
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t91 = load i1, ptr %l4, !tbaa !21
  %t92 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 1
  %t93 = load { i64, [2 x i64] }, ptr %t92
  %t98 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposOf(ptr %v0, ptr %v0, ptr %t89, ptr %t90, i1 %t91, { i64, [2 x i64] } %t93)
  store i64 %t98, ptr %l65
  br label %bb20
bb20:
  %t99 = load i64, ptr %l65, !tbaa !24
  store i64 %t99, ptr %l15, !tbaa !24
  %t100 = load i64, ptr %l14, !tbaa !24
  %t101 = load i64, ptr @G_2ecompiler_2fscope_2ePosNone, !tbaa !24
  %t104 = icmp eq i64 %t100, %t101
  br i1 %t104, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb23
bb22:
  %t106 = load i64, ptr %l15, !tbaa !24
  %t107 = load i64, ptr @G_2ecompiler_2fscope_2ePosNone, !tbaa !24
  %t110 = icmp eq i64 %t106, %t107
  store i1 %t110, ptr %l69, !tbaa !21
  br label %bb23
bb23:
  %t112 = load i1, ptr %l69, !tbaa !21
  br i1 %t112, label %bb24, label %bb25
bb24:
  %t113 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t113, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t115 = load i64, ptr %l14, !tbaa !24
  %t116 = load i64, ptr %l15, !tbaa !24
  %t120 = call i1 @compiler_2fscope_2ereaches(ptr %s0, ptr %l5, i64 %t115, i64 %t116)
  store i1 %t120, ptr %l77
  br label %bb27
bb27:
  %t121 = load i1, ptr %l77, !tbaa !21
  %t122 = xor i1 %t121, true
  br i1 %t122, label %bb28, label %bb29
bb28:
  %t124 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t124, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t126 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 2
  %t127 = load i1, ptr %t126, !tbaa !21
  br i1 %t127, label %bb31, label %bb32
bb31:
  %t129 = load i64, ptr %l15, !tbaa !24
  %t130 = load i64, ptr %l14, !tbaa !24
  %t134 = call i1 @compiler_2fscope_2ereaches(ptr %s0, ptr %l5, i64 %t129, i64 %t130)
  store i1 %t134, ptr %l85
  br label %bb33
bb32:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb34
bb33:
  %t135 = load i1, ptr %l85, !tbaa !21
  %t136 = xor i1 %t135, true
  store i1 %t136, ptr %l81, !tbaa !21
  br label %bb34
bb34:
  %t138 = load i1, ptr %l81, !tbaa !21
  br i1 %t138, label %bb35, label %bb36
bb35:
  %t139 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t139, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t141 = load i64, ptr %l11, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l11, !tbaa !24
  br label %bb14
bb39:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca %"compiler/scope:fnRecs"
  %l30 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca %"compiler/scope:fnRec"
  %l34 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca ptr
  %l47 = alloca i64
  %l48 = alloca %"compiler/scope:fnRec"
  %l49 = alloca ptr
  %l50 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l85 = alloca i1
  %l90 = alloca { i64, ptr }
  %l94 = alloca ptr
  %l95 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i1
  %l133 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l155 = alloca ptr
  %l156 = alloca i1
  %l173 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l195 = alloca ptr
  %l196 = alloca i1
  %l201 = alloca ptr
  %l202 = alloca i1
  %l207 = alloca ptr
  %l209 = alloca i64
  %l210 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l211 = alloca %"compiler/scope:fnRec"
  %l212 = alloca ptr
  %l213 = alloca i1
  %l218 = alloca ptr
  %l220 = alloca i64
  %l221 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l222 = alloca %"compiler/scope:fnRec"
  %l223 = alloca ptr
  %l224 = alloca i1
  %l229 = alloca ptr
  %l231 = alloca i64
  %l232 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l233 = alloca %"compiler/scope:fnRec"
  %l234 = alloca ptr
  %l235 = alloca i1
  %l240 = alloca ptr
  %l241 = alloca i1
  %l246 = alloca ptr
  %l247 = alloca i1
  %l253 = alloca i64
  %l256 = alloca i1
  %l260 = alloca i1
  %l266 = alloca %"compiler/scope:fnRecs"
  %l268 = alloca %"compiler/scope:fnRecs"
  %l270 = alloca i64
  %l272 = alloca i64
  %l277 = alloca %"compiler/scope:fnRec"
  %l278 = alloca ptr
  %l279 = alloca i64
  %l280 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l282 = alloca %"compiler/scope:fnRec"
  %l285 = alloca ptr
  %l289 = alloca ptr
  %l290 = alloca i32
  %l291 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l294 = alloca i64
  %l296 = alloca i64
  %l301 = alloca ptr
  %l308 = alloca ptr
  %l309 = alloca i1
  %l316 = alloca ptr
  %l317 = alloca i1
  %l326 = alloca i64
  %l329 = alloca ptr
  %l334 = alloca ptr
  %l339 = alloca ptr
  %l342 = alloca i64
  %l344 = alloca i64
  %l349 = alloca %"compiler/scope:fnRec"
  %l351 = alloca %"compiler/scope:fnRec"
  %l356 = alloca ptr
  %l357 = alloca i1
  %l362 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l368 = alloca i64
  %l370 = alloca i64
  %l375 = alloca %"compiler/scope:fnRec"
  %l377 = alloca %"compiler/scope:fnRec"
  %l381 = alloca ptr
  %l384 = alloca i64
  %l386 = alloca i64
  %l391 = alloca %"compiler/scope:fnRec"
  %l393 = alloca %"compiler/scope:fnRec"
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s41 = alloca %olang.scope
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
  store ptr %t5, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t6 = load ptr, ptr %l54, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l54, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 17
  store i1 %t12, ptr %l55, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l55, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t20, ptr %t21, ptr %t23)
  br label %bb9
bb9:
  br label %bb235
bb10:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t28 = load ptr, ptr %l64, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l64, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 5
  store i1 %t34, ptr %l65, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l65, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Promote", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t42, ptr %t46, ptr %t48)
  br label %bb16
bb16:
  br label %bb235
bb17:
  %t52 = load ptr, ptr %l1, !tbaa !29
  store ptr %t52, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t53 = load ptr, ptr %l75, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t56 = load ptr, ptr %l75, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 18}
  %t59 = icmp eq i64 %t57, 9
  store i1 %t59, ptr %l76, !tbaa !21
  br label %bb19
bb19:
  %t60 = load i1, ptr %l76, !tbaa !21
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [5 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t63, i32 0, i32 2
  %t65 = load i32, ptr %t64, !range !{i32 0, i32 52}
  store i32 %t65, ptr %l5
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t69, i32 0, i32 4
  %t71 = load { i64, ptr }, ptr %t70
  store { i64, ptr } %t71, ptr %l6, !tbaa !27
  br label %bb22
bb21:
  br label %bb30
bb22:
  %t73 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t75 = trunc i64 20 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb23, label %bb24
bb23:
  %t78 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t82 = icmp eq i64 %t80, 1
  store i1 %t82, ptr %l85, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb25
bb25:
  %t84 = load i1, ptr %l85, !tbaa !21
  br i1 %t84, label %bb26, label %bb27
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t86, ptr %l90, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr ptr, ptr %t88, i64 0
  %t90 = load ptr, ptr %t89, !tbaa !39
  %t92 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t85, ptr %t90, ptr %t92)
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb29
bb29:
  br label %bb235
bb30:
  %t96 = load ptr, ptr %l1, !tbaa !29
  store ptr %t96, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t97 = load ptr, ptr %l94, !tbaa !29
  %t98 = icmp ne ptr %t97, null
  br i1 %t98, label %bb31, label %bb32
bb31:
  %t100 = load ptr, ptr %l94, !tbaa !29
  %t101 = load i64, ptr %t100, !range !{i64 0, i64 18}
  %t103 = icmp eq i64 %t101, 12
  store i1 %t103, ptr %l95, !tbaa !21
  br label %bb32
bb32:
  %t104 = load i1, ptr %l95, !tbaa !21
  br i1 %t104, label %bb33, label %bb34
bb33:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t105, i32 0, i32 1
  %t108 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t107, i32 0, i32 2
  %t109 = load ptr, ptr %t108
  store ptr %t109, ptr %l7, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l7, !tbaa !29
  %t114 = getelementptr %"compiler/typed:Seq", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t116 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t111, ptr %t115, ptr %t116)
  br label %bb36
bb36:
  br label %bb235
bb37:
  %t120 = load ptr, ptr %l1, !tbaa !29
  store ptr %t120, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t121 = load ptr, ptr %l104, !tbaa !29
  %t122 = icmp ne ptr %t121, null
  br i1 %t122, label %bb38, label %bb39
bb38:
  %t124 = load ptr, ptr %l104, !tbaa !29
  %t125 = load i64, ptr %t124, !range !{i64 0, i64 18}
  %t127 = icmp eq i64 %t125, 11
  store i1 %t127, ptr %l105, !tbaa !21
  br label %bb39
bb39:
  %t128 = load i1, ptr %l105, !tbaa !21
  br i1 %t128, label %bb40, label %bb41
bb40:
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr { i64, [5 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t131, i32 0, i32 2
  %t133 = load ptr, ptr %t132
  store ptr %t133, ptr %l8, !tbaa !29
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l8, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Cond", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t140 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t135, ptr %t139, ptr %t140)
  br label %bb43
bb43:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l8, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Cond", ptr %t145, i32 0, i32 2
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t144, ptr %t148, ptr %t150)
  br label %bb44
bb44:
  br label %bb235
bb45:
  %t154 = load ptr, ptr %l1, !tbaa !29
  store ptr %t154, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t155 = load ptr, ptr %l119, !tbaa !29
  %t156 = icmp ne ptr %t155, null
  br i1 %t156, label %bb46, label %bb47
bb46:
  %t158 = load ptr, ptr %l119, !tbaa !29
  %t159 = load i64, ptr %t158, !range !{i64 0, i64 18}
  %t161 = icmp eq i64 %t159, 13
  store i1 %t161, ptr %l120, !tbaa !21
  br label %bb47
bb47:
  %t162 = load i1, ptr %l120, !tbaa !21
  br i1 %t162, label %bb48, label %bb49
bb48:
  %t163 = load ptr, ptr %l1, !tbaa !29
  %t165 = getelementptr { i64, [5 x i64] }, ptr %t163, i32 0, i32 1
  %t166 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t165, i32 0, i32 2
  %t167 = load ptr, ptr %t166
  store ptr %t167, ptr %l9, !tbaa !29
  br label %bb50
bb49:
  br label %bb65
bb50:
  %t169 = load ptr, ptr %l9, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Match", ptr %t169, i32 0, i32 1
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  store { i64, ptr } %t172, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t174 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t174, 0
  store i64 %t176, ptr %l12, !tbaa !24
  br label %bb51
bb51:
  %t178 = load i64, ptr %l11, !tbaa !24
  %t179 = load i64, ptr %l12, !tbaa !24
  %t182 = icmp slt i64 %t178, %t179
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb52, label %bb53
bb52:
  br label %bb57
bb53:
  br label %bb54
bb54:
  %t186 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t186, ptr %l133, !tbaa !27
  %t187 = load i64, ptr %l11, !tbaa !24
  %t189 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr ptr, ptr %t190, i64 %t187
  %t192 = load ptr, ptr %t191, !tbaa !39
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/typed:Arm", ptr %t192, i32 0, i32 4
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t199 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t194, ptr %t198, ptr %t199)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t203 = load i64, ptr %l11, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l11, !tbaa !24
  br label %bb51
bb57:
  %t207 = load ptr, ptr %l9, !tbaa !29
  %t209 = getelementptr %"compiler/typed:Match", ptr %t207, i32 0, i32 2
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t212 = icmp eq ptr %t210, null
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb58, label %bb59
bb58:
  %t216 = load ptr, ptr %l0, !tbaa !29
  store ptr %t216, ptr %l146, !tbaa !29
  %t217 = load ptr, ptr %l9, !tbaa !29
  %t219 = getelementptr %"compiler/typed:Match", ptr %t217, i32 0, i32 2
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = icmp eq ptr %t220, null
  br i1 %t222, label %bb60, label %bb61
bb59:
  br label %bb64
bb60:
  call void @__olang_check_failed(ptr @olang_loc_aff30252d9d9b8bc_45e5abb6a66ed480)
  unreachable
bb61:
  br label %bb62
bb62:
  %t224 = load ptr, ptr %l9, !tbaa !29
  %t226 = getelementptr %"compiler/typed:Match", ptr %t224, i32 0, i32 2
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t230 = getelementptr %"compiler/typed:Arm", ptr %t227, i32 0, i32 4
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t232 = load ptr, ptr %l2, !tbaa !29
  %t233 = load ptr, ptr %l146, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t233, ptr %t231, ptr %t232)
  br label %bb63
bb63:
  br label %bb64
bb64:
  br label %bb235
bb65:
  %t236 = load ptr, ptr %l1, !tbaa !29
  store ptr %t236, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t237 = load ptr, ptr %l155, !tbaa !29
  %t238 = icmp ne ptr %t237, null
  br i1 %t238, label %bb66, label %bb67
bb66:
  %t240 = load ptr, ptr %l155, !tbaa !29
  %t241 = load i64, ptr %t240, !range !{i64 0, i64 18}
  %t243 = icmp eq i64 %t241, 14
  store i1 %t243, ptr %l156, !tbaa !21
  br label %bb67
bb67:
  %t244 = load i1, ptr %l156, !tbaa !21
  br i1 %t244, label %bb68, label %bb69
bb68:
  %t245 = load ptr, ptr %l1, !tbaa !29
  %t247 = getelementptr { i64, [5 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t247, i32 0, i32 2
  %t249 = load ptr, ptr %t248
  store ptr %t249, ptr %l14, !tbaa !29
  br label %bb70
bb69:
  br label %bb85
bb70:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load ptr, ptr %l14, !tbaa !29
  %t254 = getelementptr %"compiler/typed:Try", ptr %t252, i32 0, i32 0
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t256 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t251, ptr %t255, ptr %t256)
  br label %bb71
bb71:
  %t260 = load ptr, ptr %l14, !tbaa !29
  %t262 = getelementptr %"compiler/typed:Try", ptr %t260, i32 0, i32 1
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  store { i64, ptr } %t263, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t265 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t265, 0
  store i64 %t267, ptr %l17, !tbaa !24
  br label %bb72
bb72:
  %t269 = load i64, ptr %l16, !tbaa !24
  %t270 = load i64, ptr %l17, !tbaa !24
  %t273 = icmp slt i64 %t269, %t270
  %t275 = xor i1 %t273, true
  br i1 %t275, label %bb73, label %bb74
bb73:
  br label %bb84
bb74:
  br label %bb75
bb75:
  %t277 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t277, ptr %l173, !tbaa !27
  %t278 = load i64, ptr %l16, !tbaa !24
  %t280 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr ptr, ptr %t281, i64 %t278
  %t283 = load ptr, ptr %t282, !tbaa !39
  %t287 = getelementptr %"compiler/typed:Clause", ptr %t283, i32 0, i32 4
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  store { i64, ptr } %t288, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t290 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  store i64 %t292, ptr %l21, !tbaa !24
  br label %bb76
bb76:
  %t294 = load i64, ptr %l20, !tbaa !24
  %t295 = load i64, ptr %l21, !tbaa !24
  %t298 = icmp slt i64 %t294, %t295
  %t300 = xor i1 %t298, true
  br i1 %t300, label %bb77, label %bb78
bb77:
  br label %bb82
bb78:
  br label %bb79
bb79:
  %t302 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t302, ptr %l184, !tbaa !27
  %t303 = load i64, ptr %l20, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr ptr, ptr %t306, i64 %t303
  %t308 = load ptr, ptr %t307, !tbaa !39
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t313 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %v2, ptr %t310, ptr %t308, ptr %t313)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t317 = load i64, ptr %l20, !tbaa !24
  %t319 = add i64 %t317, 1
  store i64 %t319, ptr %l20, !tbaa !24
  br label %bb76
bb82:
  br label %bb83
bb83:
  %t321 = load i64, ptr %l16, !tbaa !24
  %t323 = add i64 %t321, 1
  store i64 %t323, ptr %l16, !tbaa !24
  br label %bb72
bb84:
  br label %bb235
bb85:
  %t325 = load ptr, ptr %l1, !tbaa !29
  store ptr %t325, ptr %l195, !tbaa !29
  store i1 false, ptr %l196, !tbaa !21
  %t326 = load ptr, ptr %l195, !tbaa !29
  %t327 = icmp ne ptr %t326, null
  br i1 %t327, label %bb86, label %bb87
bb86:
  %t329 = load ptr, ptr %l195, !tbaa !29
  %t330 = load i64, ptr %t329, !range !{i64 0, i64 18}
  %t332 = icmp eq i64 %t330, 15
  store i1 %t332, ptr %l196, !tbaa !21
  br label %bb87
bb87:
  %t333 = load i1, ptr %l196, !tbaa !21
  br i1 %t333, label %bb88, label %bb89
bb88:
  %t334 = load ptr, ptr %l1, !tbaa !29
  %t336 = getelementptr { i64, [5 x i64] }, ptr %t334, i32 0, i32 1
  %t337 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t336, i32 0, i32 2
  %t338 = load ptr, ptr %t337
  store ptr %t338, ptr %l23, !tbaa !29
  br label %bb90
bb89:
  br label %bb119
bb90:
  %t340 = load ptr, ptr %l23, !tbaa !29
  store ptr %t340, ptr %l201, !tbaa !29
  store i1 false, ptr %l202, !tbaa !21
  %t341 = load ptr, ptr %l201, !tbaa !29
  %t342 = icmp ne ptr %t341, null
  br i1 %t342, label %bb91, label %bb92
bb91:
  %t344 = load ptr, ptr %l201, !tbaa !29
  %t345 = load i64, ptr %t344, !range !{i64 0, i64 3}
  %t347 = icmp eq i64 %t345, 0
  store i1 %t347, ptr %l202, !tbaa !21
  br label %bb92
bb92:
  %t348 = load i1, ptr %l202, !tbaa !21
  br i1 %t348, label %bb93, label %bb94
bb93:
  %t349 = load ptr, ptr %l23, !tbaa !29
  %t351 = getelementptr { i64, [4 x i64] }, ptr %t349, i32 0, i32 1
  %t352 = getelementptr { i32 }, ptr %t351, i32 0, i32 0
  %t353 = load i32, ptr %t352
  store i32 %t353, ptr %l24, !tbaa !23
  br label %bb95
bb94:
  br label %bb99
bb95:
  store %olang.scope zeroinitializer, ptr %s21
  %t355 = load ptr, ptr %l2, !tbaa !29
  store ptr %t355, ptr %l207, !tbaa !29
  %t356 = load i32, ptr %l24, !tbaa !23
  %t358 = sext i32 %t356 to i64
  store i64 %t358, ptr %l209, !tbaa !24
  %t359 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s21, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t359, ptr %l210
  br label %bb96
bb96:
  %t360 = load i64, ptr %l209, !tbaa !24
  %t361 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l210
  %t362 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s21, ptr %s21, i64 %t360, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t361, i1 false)
  store %"compiler/scope:fnRec" %t362, ptr %l211
  br label %bb97
bb97:
  %t363 = load ptr, ptr %l207, !tbaa !29
  %t364 = load %"compiler/scope:fnRec", ptr %l211
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %s21, ptr %t363, %"compiler/scope:fnRec" %t364)
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s21)
  br label %bb118
bb99:
  %t365 = load ptr, ptr %l23, !tbaa !29
  store ptr %t365, ptr %l212, !tbaa !29
  store i1 false, ptr %l213, !tbaa !21
  %t366 = load ptr, ptr %l212, !tbaa !29
  %t367 = icmp ne ptr %t366, null
  br i1 %t367, label %bb100, label %bb101
bb100:
  %t369 = load ptr, ptr %l212, !tbaa !29
  %t370 = load i64, ptr %t369, !range !{i64 0, i64 3}
  %t372 = icmp eq i64 %t370, 1
  store i1 %t372, ptr %l213, !tbaa !21
  br label %bb101
bb101:
  %t373 = load i1, ptr %l213, !tbaa !21
  br i1 %t373, label %bb102, label %bb103
bb102:
  %t374 = load ptr, ptr %l23, !tbaa !29
  %t376 = getelementptr { i64, [4 x i64] }, ptr %t374, i32 0, i32 1
  %t377 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t376, i32 0, i32 0
  %t378 = load i32, ptr %t377
  store i32 %t378, ptr %l25, !tbaa !23
  br label %bb104
bb103:
  br label %bb108
bb104:
  store %olang.scope zeroinitializer, ptr %s22
  %t380 = load ptr, ptr %l2, !tbaa !29
  store ptr %t380, ptr %l218, !tbaa !29
  %t381 = load i32, ptr %l25, !tbaa !23
  %t383 = sext i32 %t381 to i64
  store i64 %t383, ptr %l220, !tbaa !24
  %t384 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s22, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t384, ptr %l221
  br label %bb105
bb105:
  %t385 = load i64, ptr %l220, !tbaa !24
  %t386 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l221
  %t387 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s22, ptr %s22, i64 %t385, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t386, i1 false)
  store %"compiler/scope:fnRec" %t387, ptr %l222
  br label %bb106
bb106:
  %t388 = load ptr, ptr %l218, !tbaa !29
  %t389 = load %"compiler/scope:fnRec", ptr %l222
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %s22, ptr %t388, %"compiler/scope:fnRec" %t389)
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s22)
  br label %bb118
bb108:
  %t390 = load ptr, ptr %l23, !tbaa !29
  store ptr %t390, ptr %l223, !tbaa !29
  store i1 false, ptr %l224, !tbaa !21
  %t391 = load ptr, ptr %l223, !tbaa !29
  %t392 = icmp ne ptr %t391, null
  br i1 %t392, label %bb109, label %bb110
bb109:
  %t394 = load ptr, ptr %l223, !tbaa !29
  %t395 = load i64, ptr %t394, !range !{i64 0, i64 3}
  %t397 = icmp eq i64 %t395, 2
  store i1 %t397, ptr %l224, !tbaa !21
  br label %bb110
bb110:
  %t398 = load i1, ptr %l224, !tbaa !21
  br i1 %t398, label %bb111, label %bb112
bb111:
  %t399 = load ptr, ptr %l23, !tbaa !29
  %t401 = getelementptr { i64, [4 x i64] }, ptr %t399, i32 0, i32 1
  %t402 = getelementptr { i32, ptr, i32 }, ptr %t401, i32 0, i32 0
  %t403 = load i32, ptr %t402
  store i32 %t403, ptr %l26, !tbaa !23
  br label %bb113
bb112:
  br label %bb117
bb113:
  store %olang.scope zeroinitializer, ptr %s23
  %t405 = load ptr, ptr %l2, !tbaa !29
  store ptr %t405, ptr %l229, !tbaa !29
  %t406 = load i32, ptr %l26, !tbaa !23
  %t408 = sext i32 %t406 to i64
  store i64 %t408, ptr %l231, !tbaa !24
  %t409 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s23, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t409, ptr %l232
  br label %bb114
bb114:
  %t410 = load i64, ptr %l231, !tbaa !24
  %t411 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l232
  %t412 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s23, ptr %s23, i64 %t410, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t411, i1 true)
  store %"compiler/scope:fnRec" %t412, ptr %l233
  br label %bb115
bb115:
  %t413 = load ptr, ptr %l229, !tbaa !29
  %t414 = load %"compiler/scope:fnRec", ptr %l233
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %s23, ptr %t413, %"compiler/scope:fnRec" %t414)
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s23)
  br label %bb118
bb117:
  call void @__olang_check_failed(ptr @olang_loc_8313d1eebcffdf52_2ed3c82d87a6db66)
  unreachable
bb118:
  br label %bb235
bb119:
  %t415 = load ptr, ptr %l1, !tbaa !29
  store ptr %t415, ptr %l234, !tbaa !29
  store i1 false, ptr %l235, !tbaa !21
  %t416 = load ptr, ptr %l234, !tbaa !29
  %t417 = icmp ne ptr %t416, null
  br i1 %t417, label %bb120, label %bb121
bb120:
  %t419 = load ptr, ptr %l234, !tbaa !29
  %t420 = load i64, ptr %t419, !range !{i64 0, i64 18}
  %t422 = icmp eq i64 %t420, 2
  store i1 %t422, ptr %l235, !tbaa !21
  br label %bb121
bb121:
  %t423 = load i1, ptr %l235, !tbaa !21
  br i1 %t423, label %bb122, label %bb123
bb122:
  %t424 = load ptr, ptr %l1, !tbaa !29
  %t426 = getelementptr { i64, [5 x i64] }, ptr %t424, i32 0, i32 1
  %t427 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t426, i32 0, i32 2
  %t428 = load ptr, ptr %t427
  store ptr %t428, ptr %l27, !tbaa !29
  br label %bb132
bb123:
  %t430 = load ptr, ptr %l1, !tbaa !29
  store ptr %t430, ptr %l240, !tbaa !29
  store i1 false, ptr %l241, !tbaa !21
  %t431 = load ptr, ptr %l240, !tbaa !29
  %t432 = icmp ne ptr %t431, null
  br i1 %t432, label %bb124, label %bb125
bb124:
  %t434 = load ptr, ptr %l240, !tbaa !29
  %t435 = load i64, ptr %t434, !range !{i64 0, i64 18}
  %t437 = icmp eq i64 %t435, 4
  store i1 %t437, ptr %l241, !tbaa !21
  br label %bb125
bb125:
  %t438 = load i1, ptr %l241, !tbaa !21
  br i1 %t438, label %bb126, label %bb127
bb126:
  %t439 = load ptr, ptr %l1, !tbaa !29
  %t441 = getelementptr { i64, [5 x i64] }, ptr %t439, i32 0, i32 1
  %t442 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t441, i32 0, i32 2
  %t443 = load ptr, ptr %t442
  store ptr %t443, ptr %l27, !tbaa !29
  br label %bb132
bb127:
  %t445 = load ptr, ptr %l1, !tbaa !29
  store ptr %t445, ptr %l246, !tbaa !29
  store i1 false, ptr %l247, !tbaa !21
  %t446 = load ptr, ptr %l246, !tbaa !29
  %t447 = icmp ne ptr %t446, null
  br i1 %t447, label %bb128, label %bb129
bb128:
  %t449 = load ptr, ptr %l246, !tbaa !29
  %t450 = load i64, ptr %t449, !range !{i64 0, i64 18}
  %t452 = icmp eq i64 %t450, 3
  store i1 %t452, ptr %l247, !tbaa !21
  br label %bb129
bb129:
  %t453 = load i1, ptr %l247, !tbaa !21
  br i1 %t453, label %bb130, label %bb131
bb130:
  %t454 = load ptr, ptr %l1, !tbaa !29
  %t456 = getelementptr { i64, [5 x i64] }, ptr %t454, i32 0, i32 1
  %t457 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t456, i32 0, i32 2
  %t458 = load ptr, ptr %t457
  store ptr %t458, ptr %l27, !tbaa !29
  br label %bb132
bb131:
  br label %bb169
bb132:
  store %olang.scope zeroinitializer, ptr %s24
  %t460 = load ptr, ptr %l27, !tbaa !29
  %t462 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t460)
  store i64 %t462, ptr %l253
  br label %bb133
bb133:
  %t463 = load i64, ptr %l253, !tbaa !24
  store i64 %t463, ptr %l28, !tbaa !24
  %t464 = load i64, ptr %l28, !tbaa !24
  %t466 = icmp slt i64 %t464, 0
  br i1 %t466, label %bb134, label %bb135
bb134:
  store i1 true, ptr %l256, !tbaa !21
  br label %bb137
bb135:
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t470 = getelementptr %"compiler/scope:Scoper", ptr %t468, i32 0, i32 103
  %t471 = load i64, ptr %l28, !tbaa !24
  %t474 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t470, i64 %t471)
  store i1 %t474, ptr %l260
  br label %bb136
bb136:
  %t475 = load i1, ptr %l260, !tbaa !21
  store i1 %t475, ptr %l256, !tbaa !21
  br label %bb137
bb137:
  %t476 = load i1, ptr %l256, !tbaa !21
  br i1 %t476, label %bb138, label %bb139
bb138:
  call void @__olang_scope_close(ptr %s24)
  br label %ret
bb139:
  br label %bb140
bb140:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/scope:Scoper", ptr %t477, i32 0, i32 103
  %t480 = load i64, ptr %l28, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t479, i64 %t480, i1 true)
  br label %bb141
bb141:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load i64, ptr %l28, !tbaa !24
  %t487 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseededRecs(ptr %v0, ptr %s24, ptr %t483, i64 %t484)
  store %"compiler/scope:fnRecs" %t487, ptr %l266
  br label %bb142
bb142:
  %t489 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s24, ptr %l266)
  store %"compiler/scope:fnRecs" %t489, ptr %l268
  br label %bb143
bb143:
  %t490 = load %"compiler/scope:fnRecs", ptr %l268
  store %"compiler/scope:fnRecs" %t490, ptr %l29
  %t491 = getelementptr %"compiler/scope:fnRecs", ptr %l29, i32 0, i32 0
  store ptr %t491, ptr %l30, !tbaa !29
  store i64 0, ptr %l31, !tbaa !24
  br label %bb144
bb144:
  store %olang.scope zeroinitializer, ptr %s27
  %t493 = load i64, ptr %l31, !tbaa !24
  store i64 %t493, ptr %l270, !tbaa !24
  %t494 = load ptr, ptr %l30, !tbaa !29
  %t496 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s24, ptr %t494)
  store i64 %t496, ptr %l272
  br label %bb145
bb145:
  %t497 = load i64, ptr %l270, !tbaa !24
  %t498 = load i64, ptr %l272, !tbaa !24
  %t499 = icmp slt i64 %t497, %t498
  %t501 = xor i1 %t499, true
  br i1 %t501, label %bb146, label %bb147
bb146:
  call void @__olang_scope_close(ptr %s27)
  br label %bb154
bb147:
  br label %bb148
bb148:
  %t503 = load ptr, ptr %l30, !tbaa !29
  %t504 = load i64, ptr %l31, !tbaa !24
  %t507 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s24, ptr %s24, ptr %t503, i64 %t504)
  store %"compiler/scope:fnRec" %t507, ptr %l277
  br label %bb149
bb149:
  %t508 = load %"compiler/scope:fnRec", ptr %l277
  store %"compiler/scope:fnRec" %t508, ptr %l32
  %t509 = load ptr, ptr %l2, !tbaa !29
  store ptr %t509, ptr %l278, !tbaa !29
  %t510 = getelementptr %"compiler/scope:fnRec", ptr %l32, i32 0, i32 0
  %t511 = load i64, ptr %t510, !tbaa !24
  store i64 %t511, ptr %l279, !tbaa !24
  %t512 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t512, ptr %l280
  br label %bb150
bb150:
  %t513 = getelementptr %"compiler/scope:fnRec", ptr %l32, i32 0, i32 2
  %t514 = load i1, ptr %t513, !tbaa !21
  %t515 = load i64, ptr %l279, !tbaa !24
  %t516 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l280
  %t518 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s27, ptr %s27, i64 %t515, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t516, i1 %t514)
  store %"compiler/scope:fnRec" %t518, ptr %l282
  br label %bb151
bb151:
  %t519 = load ptr, ptr %l278, !tbaa !29
  %t520 = load %"compiler/scope:fnRec", ptr %l282
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %s27, ptr %t519, %"compiler/scope:fnRec" %t520)
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s27)
  br label %bb153
bb153:
  %t521 = load i64, ptr %l31, !tbaa !24
  %t523 = add i64 %t521, 1
  store i64 %t523, ptr %l31, !tbaa !24
  br label %bb144
bb154:
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t527 = getelementptr %"compiler/scope:Scoper", ptr %t525, i32 0, i32 102
  %t528 = load i64, ptr %l28, !tbaa !24
  %t531 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H97b95e9ae0becdc6438cd4b7dda0e1e4(ptr %v0, ptr %v0, ptr %t527, i64 %t528)
  %t532 = extractvalue { i32, ptr } %t531, 1
  %t533 = extractvalue { i32, ptr } %t531, 0
  store i32 %t533, ptr %l290
  %t534 = icmp ne i32 %t533, 0
  br i1 %t534, label %bb156, label %ok.535, !prof !99
ok.535:
  store ptr %t532, ptr %l289
  br label %bb155
bb155:
  %t536 = load ptr, ptr %l289, !tbaa !29
  store ptr %t536, ptr %l285, !tbaa !29
  br label %bb159
bb156:
  br label %bb157
bb157:
  %t537 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t537, ptr %l291
  br label %bb158
bb158:
  %t538 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l291
  %t539 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t538, ptr %t539
  store ptr %t539, ptr %l285, !tbaa !29
  br label %bb159
bb159:
  %t541 = load ptr, ptr %l285, !tbaa !29
  store ptr %t541, ptr %l34, !tbaa !29
  store i64 0, ptr %l35, !tbaa !24
  br label %bb160
bb160:
  %t544 = load i64, ptr %l35, !tbaa !24
  store i64 %t544, ptr %l294, !tbaa !24
  %t545 = load ptr, ptr %l34, !tbaa !29
  %t547 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t545)
  store i64 %t547, ptr %l296
  br label %bb161
bb161:
  %t548 = load i64, ptr %l294, !tbaa !24
  %t549 = load i64, ptr %l296, !tbaa !24
  %t550 = icmp slt i64 %t548, %t549
  %t552 = xor i1 %t550, true
  br i1 %t552, label %bb162, label %bb163
bb162:
  br label %bb168
bb163:
  br label %bb164
bb164:
  %t554 = load ptr, ptr %l34, !tbaa !29
  %t555 = load i64, ptr %l35, !tbaa !24
  %t558 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t554, i64 %t555)
  store ptr %t558, ptr %l301
  br label %bb165
bb165:
  %t559 = load ptr, ptr %l301, !tbaa !29
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t563 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v0, ptr %v2, ptr %t560, ptr %t559, ptr %t563)
  br label %bb166
bb166:
  br label %bb167
bb167:
  %t567 = load i64, ptr %l35, !tbaa !24
  %t569 = add i64 %t567, 1
  store i64 %t569, ptr %l35, !tbaa !24
  br label %bb160
bb168:
  call void @__olang_scope_close(ptr %s24)
  br label %bb235
bb169:
  %t571 = load ptr, ptr %l1, !tbaa !29
  store ptr %t571, ptr %l308, !tbaa !29
  store i1 false, ptr %l309, !tbaa !21
  %t572 = load ptr, ptr %l308, !tbaa !29
  %t573 = icmp ne ptr %t572, null
  br i1 %t573, label %bb170, label %bb171
bb170:
  %t575 = load ptr, ptr %l308, !tbaa !29
  %t576 = load i64, ptr %t575, !range !{i64 0, i64 18}
  %t578 = icmp eq i64 %t576, 6
  store i1 %t578, ptr %l309, !tbaa !21
  br label %bb171
bb171:
  %t579 = load i1, ptr %l309, !tbaa !21
  br i1 %t579, label %bb172, label %bb173
bb172:
  %t580 = load ptr, ptr %l1, !tbaa !29
  %t582 = getelementptr { i64, [5 x i64] }, ptr %t580, i32 0, i32 1
  %t583 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t582, i32 0, i32 2
  %t584 = load ptr, ptr %t583
  store ptr %t584, ptr %l37, !tbaa !29
  br label %bb174
bb173:
  br label %bb230
bb174:
  %t586 = load ptr, ptr %l37, !tbaa !29
  %t588 = getelementptr %"compiler/typed:Call", ptr %t586, i32 0, i32 0
  %t589 = load ptr, ptr %t588, !tbaa !29
  store ptr %t589, ptr %l38, !tbaa !29
  %t591 = load ptr, ptr %l38, !tbaa !29
  store ptr %t591, ptr %l316, !tbaa !29
  store i1 false, ptr %l317, !tbaa !21
  %t592 = load ptr, ptr %l316, !tbaa !29
  %t593 = icmp ne ptr %t592, null
  br i1 %t593, label %bb175, label %bb176
bb175:
  %t595 = load ptr, ptr %l316, !tbaa !29
  %t596 = load i64, ptr %t595, !range !{i64 0, i64 5}
  %t598 = icmp eq i64 %t596, 0
  store i1 %t598, ptr %l317, !tbaa !21
  br label %bb176
bb176:
  %t599 = load i1, ptr %l317, !tbaa !21
  br i1 %t599, label %bb177, label %bb178
bb177:
  %t600 = load ptr, ptr %l38, !tbaa !29
  %t602 = getelementptr { i64, [3 x i64] }, ptr %t600, i32 0, i32 1
  %t603 = getelementptr { i32 }, ptr %t602, i32 0, i32 0
  %t604 = load i32, ptr %t603
  store i32 %t604, ptr %l39, !tbaa !23
  br label %bb179
bb178:
  br label %bb196
bb179:
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t608 = getelementptr %"compiler/scope:Scoper", ptr %t606, i32 0, i32 33
  %t609 = load ptr, ptr %l37, !tbaa !29
  %t611 = getelementptr %"compiler/typed:Call", ptr %t609, i32 0, i32 2
  %t612 = load i32, ptr %t611, !tbaa !23
  %t615 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eTwin(ptr %v0, ptr %t608, i32 %t612)
  store i64 %t615, ptr %l326
  br label %bb180
bb180:
  %t616 = load i64, ptr %l326, !tbaa !24
  store i64 %t616, ptr %l40, !tbaa !24
  %t617 = load i64, ptr %l40, !tbaa !24
  %t619 = icmp sge i64 %t617, 0
  br i1 %t619, label %bb181, label %bb182
bb181:
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = getelementptr %"compiler/scope:Scoper", ptr %t621, i32 0, i32 227
  %t624 = load ptr, ptr %t623, !tbaa !29
  %t626 = getelementptr %"compiler/scope:twinTab", ptr %t624, i32 0, i32 4
  %t627 = load i64, ptr %l40, !tbaa !24
  %t630 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t626, i64 %t627)
  store ptr %t630, ptr %l334
  br label %bb183
bb182:
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t633 = getelementptr %"compiler/scope:Scoper", ptr %t631, i32 0, i32 6
  %t634 = load i32, ptr %l39, !tbaa !23
  %t636 = sext i32 %t634 to i64
  %t639 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t633, i64 %t636)
  store ptr %t639, ptr %l339
  br label %bb184
bb183:
  %t640 = load ptr, ptr %l334, !tbaa !29
  store ptr %t640, ptr %l329, !tbaa !29
  br label %bb185
bb184:
  %t641 = load ptr, ptr %l339, !tbaa !29
  store ptr %t641, ptr %l329, !tbaa !29
  br label %bb185
bb185:
  %t642 = load ptr, ptr %l329, !tbaa !29
  %t644 = getelementptr %"compiler/scope:summary", ptr %t642, i32 0, i32 16
  %t645 = getelementptr %"compiler/scope:fnRecs", ptr %t644, i32 0, i32 0
  store ptr %t645, ptr %l41, !tbaa !29
  store i64 0, ptr %l42, !tbaa !24
  br label %bb186
bb186:
  store %olang.scope zeroinitializer, ptr %s35
  %t647 = load i64, ptr %l42, !tbaa !24
  store i64 %t647, ptr %l342, !tbaa !24
  %t648 = load ptr, ptr %l41, !tbaa !29
  %t650 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t648)
  store i64 %t650, ptr %l344
  br label %bb187
bb187:
  %t651 = load i64, ptr %l342, !tbaa !24
  %t652 = load i64, ptr %l344, !tbaa !24
  %t653 = icmp slt i64 %t651, %t652
  %t655 = xor i1 %t653, true
  br i1 %t655, label %bb188, label %bb189
bb188:
  call void @__olang_scope_close(ptr %s35)
  br label %bb195
bb189:
  br label %bb190
bb190:
  %t657 = load ptr, ptr %l41, !tbaa !29
  %t658 = load i64, ptr %l42, !tbaa !24
  %t661 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v0, ptr %t657, i64 %t658)
  store %"compiler/scope:fnRec" %t661, ptr %l349
  br label %bb191
bb191:
  %t663 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s35, ptr %l349)
  store %"compiler/scope:fnRec" %t663, ptr %l351
  br label %bb192
bb192:
  %t664 = load %"compiler/scope:fnRec", ptr %l351
  %t665 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %s35, ptr %t665, %"compiler/scope:fnRec" %t664)
  br label %bb193
bb193:
  call void @__olang_scope_close(ptr %s35)
  br label %bb194
bb194:
  %t669 = load i64, ptr %l42, !tbaa !24
  %t671 = add i64 %t669, 1
  store i64 %t671, ptr %l42, !tbaa !24
  br label %bb186
bb195:
  br label %bb229
bb196:
  %t673 = load ptr, ptr %l38, !tbaa !29
  store ptr %t673, ptr %l356, !tbaa !29
  store i1 false, ptr %l357, !tbaa !21
  %t674 = load ptr, ptr %l356, !tbaa !29
  %t675 = icmp ne ptr %t674, null
  br i1 %t675, label %bb197, label %bb198
bb197:
  %t677 = load ptr, ptr %l356, !tbaa !29
  %t678 = load i64, ptr %t677, !range !{i64 0, i64 5}
  %t680 = icmp eq i64 %t678, 2
  store i1 %t680, ptr %l357, !tbaa !21
  br label %bb198
bb198:
  %t681 = load i1, ptr %l357, !tbaa !21
  br i1 %t681, label %bb199, label %bb200
bb199:
  %t682 = load ptr, ptr %l38, !tbaa !29
  %t684 = getelementptr { i64, [3 x i64] }, ptr %t682, i32 0, i32 1
  %t685 = getelementptr { ptr }, ptr %t684, i32 0, i32 0
  %t686 = load ptr, ptr %t685
  store ptr %t686, ptr %l44, !tbaa !29
  br label %bb201
bb200:
  br label %bb224
bb201:
  store %olang.scope zeroinitializer, ptr %s37
  %t688 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %s37, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t688, ptr %l362
  br label %bb202
bb202:
  %t689 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l362
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t689, ptr %l45
  %t690 = load ptr, ptr %l0, !tbaa !29
  %t691 = load ptr, ptr %l44, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndRecs(ptr %v0, ptr %v1, ptr %s37, ptr %t690, ptr %t691, ptr %l45)
  br label %bb203
bb203:
  store ptr %l45, ptr %l46, !tbaa !29
  store i64 0, ptr %l47, !tbaa !24
  br label %bb204
bb204:
  store %olang.scope zeroinitializer, ptr %s39
  %t697 = load i64, ptr %l47, !tbaa !24
  store i64 %t697, ptr %l368, !tbaa !24
  %t698 = load ptr, ptr %l46, !tbaa !29
  %t700 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s37, ptr %t698)
  store i64 %t700, ptr %l370
  br label %bb205
bb205:
  %t701 = load i64, ptr %l368, !tbaa !24
  %t702 = load i64, ptr %l370, !tbaa !24
  %t703 = icmp slt i64 %t701, %t702
  %t705 = xor i1 %t703, true
  br i1 %t705, label %bb206, label %bb207
bb206:
  call void @__olang_scope_close(ptr %s39)
  br label %bb223
bb207:
  br label %bb208
bb208:
  %t707 = load ptr, ptr %l46, !tbaa !29
  %t708 = load i64, ptr %l47, !tbaa !24
  %t711 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s37, ptr %s37, ptr %t707, i64 %t708)
  store %"compiler/scope:fnRec" %t711, ptr %l375
  br label %bb209
bb209:
  %t713 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s39, ptr %l375)
  store %"compiler/scope:fnRec" %t713, ptr %l377
  br label %bb210
bb210:
  %t714 = load %"compiler/scope:fnRec", ptr %l377
  store %"compiler/scope:fnRec" %t714, ptr %l48
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t717 = getelementptr %"compiler/scope:Scoper", ptr %t715, i32 0, i32 6
  %t718 = getelementptr %"compiler/scope:fnRec", ptr %l48, i32 0, i32 0
  %t719 = load i64, ptr %t718, !tbaa !24
  %t722 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t717, i64 %t719)
  store ptr %t722, ptr %l381
  br label %bb211
bb211:
  %t723 = load ptr, ptr %l381, !tbaa !29
  %t725 = getelementptr %"compiler/scope:summary", ptr %t723, i32 0, i32 16
  %t726 = getelementptr %"compiler/scope:fnRecs", ptr %t725, i32 0, i32 0
  store ptr %t726, ptr %l49, !tbaa !29
  store i64 0, ptr %l50, !tbaa !24
  br label %bb212
bb212:
  store %olang.scope zeroinitializer, ptr %s41
  %t728 = load i64, ptr %l50, !tbaa !24
  store i64 %t728, ptr %l384, !tbaa !24
  %t729 = load ptr, ptr %l49, !tbaa !29
  %t731 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t729)
  store i64 %t731, ptr %l386
  br label %bb213
bb213:
  %t732 = load i64, ptr %l384, !tbaa !24
  %t733 = load i64, ptr %l386, !tbaa !24
  %t734 = icmp slt i64 %t732, %t733
  %t736 = xor i1 %t734, true
  br i1 %t736, label %bb214, label %bb215
bb214:
  call void @__olang_scope_close(ptr %s41)
  br label %bb221
bb215:
  br label %bb216
bb216:
  %t738 = load ptr, ptr %l49, !tbaa !29
  %t739 = load i64, ptr %l50, !tbaa !24
  %t742 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v0, ptr %t738, i64 %t739)
  store %"compiler/scope:fnRec" %t742, ptr %l391
  br label %bb217
bb217:
  %t744 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s41, ptr %l391)
  store %"compiler/scope:fnRec" %t744, ptr %l393
  br label %bb218
bb218:
  %t745 = load %"compiler/scope:fnRec", ptr %l393
  %t746 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %s41, ptr %t746, %"compiler/scope:fnRec" %t745)
  br label %bb219
bb219:
  call void @__olang_scope_close(ptr %s41)
  br label %bb220
bb220:
  %t750 = load i64, ptr %l50, !tbaa !24
  %t752 = add i64 %t750, 1
  store i64 %t752, ptr %l50, !tbaa !24
  br label %bb212
bb221:
  call void @__olang_scope_close(ptr %s39)
  br label %bb222
bb222:
  %t754 = load i64, ptr %l47, !tbaa !24
  %t756 = add i64 %t754, 1
  store i64 %t756, ptr %l47, !tbaa !24
  br label %bb204
bb223:
  call void @__olang_scope_close(ptr %s37)
  br label %bb229
bb224:
  br i1 true, label %bb225, label %bb226
bb225:
  br label %bb227
bb226:
  br label %bb228
bb227:
  br label %bb229
bb228:
  call void @__olang_check_failed(ptr @olang_loc_848be87240c0f709_4bda5bf2bafa5dfd)
  unreachable
bb229:
  br label %bb235
bb230:
  br i1 true, label %bb231, label %bb232
bb231:
  br label %bb233
bb232:
  br label %bb234
bb233:
  br label %bb235
bb234:
  call void @__olang_check_failed(ptr @olang_loc_7f0716555917d138_9decbc974df583cc)
  unreachable
bb235:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndTask(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i1
  %l38 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t1)
  store ptr %t4, ptr %l11
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  store ptr %t5, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = load i64, ptr @G_2ecompiler_2fscope_2eBndTask, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t10, ptr %t11, i64 %t13)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %ret
bb5:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Call", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t23 = load ptr, ptr %l20, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l20, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 5}
  %t29 = icmp eq i64 %t27, 2
  store i1 %t29, ptr %l21, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l21, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr { i64, [3 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { ptr }, ptr %t33, i32 0, i32 0
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t40 = load i64, ptr @G_2ecompiler_2fscope_2eBndTask, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t37, ptr %t38, i64 %t40)
  br label %bb11
bb11:
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_2b4fe6e94d6a7479_c916946ab1cc6fcd)
  unreachable
bb17:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Call", ptr %t44, i32 0, i32 1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb19, label %bb20
bb19:
  br label %bb24
bb20:
  br label %bb21
bb21:
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t61, ptr %l38, !tbaa !27
  %t62 = load i64, ptr %l6, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr ptr, ptr %t65, i64 %t62
  %t67 = load ptr, ptr %t66, !tbaa !39
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr @G_2ecompiler_2fscope_2eBndTask, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t69, ptr %t67, i64 %t72)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l6, !tbaa !24
  br label %bb18
bb24:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca i64
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
  br label %bb6
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l4, !tbaa !24
  br label %bb18
bb6:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t21 = load ptr, ptr %l13, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 2
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t38 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v1, ptr %t35)
  store i64 %t38, ptr %l21
  br label %bb12
bb12:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_43bfbe21df81ba11_dcc42dbc8d435385)
  unreachable
bb18:
  %t40 = load i64, ptr %l4, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i64
  %l33 = alloca i1
  %l34 = alloca ptr
  %l43 = alloca %"compiler/typed:Local"
  %l45 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l11
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l11, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t8, ptr %l12
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l12, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l13, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l14, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 0
  %t26 = load %"compiler/source:Span", ptr %t25
  store %"compiler/source:Span" %t26, ptr %l3
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t30, i32 0, i32 1
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l4, !tbaa !23
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l6, !tbaa !29
  %t42 = load ptr, ptr %l6, !tbaa !29
  %t44 = call i1 @compiler_2fscope_2eflThroughRef(ptr %s0, ptr %t42)
  store i1 %t44, ptr %l27
  br label %bb8
bb8:
  %t45 = load i1, ptr %l27, !tbaa !21
  br i1 %t45, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l6, !tbaa !29
  %t49 = call i64 @compiler_2fscope_2eflRoot(ptr %s0, ptr %t47)
  store i64 %t49, ptr %l30
  br label %bb12
bb12:
  %t50 = load i64, ptr %l30, !tbaa !24
  store i64 %t50, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t53 = icmp slt i64 %t51, 0
  br i1 %t53, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb20
bb14:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l34, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 26
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  br i1 %t61, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_6394424831553130_d700826afb80c48c)
  unreachable
bb16:
  br label %bb17
bb17:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 26
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t66, i32 0, i32 7
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t69, i64 %t70)
  store %"compiler/typed:Local" %t73, ptr %l43
  br label %bb18
bb18:
  %t74 = getelementptr %"compiler/typed:Local", ptr %l43, i32 0, i32 2
  %t75 = load i32, ptr %t74, !tbaa !23
  %t76 = load ptr, ptr %l34, !tbaa !29
  %t78 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t76, i32 %t75)
  store i1 %t78, ptr %l45
  br label %bb19
bb19:
  %t79 = load i1, ptr %l45, !tbaa !21
  store i1 %t79, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t80 = load i1, ptr %l33, !tbaa !21
  br i1 %t80, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t82 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l24 = alloca ptr
  %l31 = alloca { i64, [2 x i64] }
  %l40 = alloca i64
  %rv = alloca { i64, [2 x i64] }
  %t8 = alloca { i64, [2 x i64] }, align 8
  %t29 = alloca { i64, [2 x i64] }, align 8
  %t80 = alloca { i64, [2 x i64] }, align 8
  %t89 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 70
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store { i64, [2 x i64] } zeroinitializer, ptr %t8
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t8, i32 0, i32 0
  store i64 0, ptr %t9
  %t10 = load { i64, [2 x i64] }, ptr %t8
  store { i64, [2 x i64] } %t10, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load { i64, [2 x i64] }, ptr %l1
  %t14 = extractvalue { i64, [2 x i64] } %t12, 0
  %t15 = icmp eq i64 %t14, 4
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t18 = getelementptr { i64, i64 }, ptr %t17, i32 0, i32 0
  %t19 = load i64, ptr %t18
  store i64 %t19, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t22 = getelementptr { i64, i64 }, ptr %t21, i32 0, i32 1
  %t23 = load i64, ptr %t22
  store i64 %t23, ptr %l4, !tbaa !24
  br label %bb6
bb5:
  br label %bb28
bb6:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp slt i64 %t25, 0
  br i1 %t27, label %bb7, label %bb8
bb7:
  store { i64, [2 x i64] } zeroinitializer, ptr %t29
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t29, i32 0, i32 0
  store i64 0, ptr %t30
  %t31 = load { i64, [2 x i64] }, ptr %t29
  store { i64, [2 x i64] } %t31, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t43 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedRoot(ptr %v0, ptr %v0, ptr %t37, i64 %t38, i64 %t39)
  store ptr %t43, ptr %l24
  br label %bb12
bb11:
  br label %bb26
bb12:
  %t44 = load ptr, ptr %l24, !tbaa !29
  store ptr %t44, ptr %l5, !tbaa !29
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 33
  %t54 = load ptr, ptr %l5, !tbaa !29
  %t57 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v0, ptr %t53, ptr %t54)
  store { i64, [2 x i64] } %t57, ptr %l31
  br label %bb15
bb14:
  br label %bb25
bb15:
  %t58 = load { i64, [2 x i64] }, ptr %l31
  store { i64, [2 x i64] } %t58, ptr %l6
  %t59 = load { i64, [2 x i64] }, ptr %l6
  %t61 = extractvalue { i64, [2 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 7
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t65 = getelementptr { i64 }, ptr %t64, i32 0, i32 0
  %t66 = load i64, ptr %t65
  store i64 %t66, ptr %l7, !tbaa !24
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t68 = load i64, ptr %l7, !tbaa !24
  store i64 %t68, ptr %l2, !tbaa !24
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
  call void @__olang_check_failed(ptr @olang_loc_29fa10d4159aba3b_16edb076e72dde47)
  unreachable
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %t70, i32 0, i32 33
  %t73 = load i64, ptr %l3, !tbaa !24
  %t74 = load i64, ptr %l4, !tbaa !24
  %t78 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDerivedSlot(ptr %v0, ptr %t72, i64 %t73, i64 %t74)
  store i64 %t78, ptr %l40
  br label %bb27
bb27:
  %t79 = load i64, ptr %l2, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 0
  store i64 8, ptr %t81
  %t82 = load i64, ptr %l40, !tbaa !24
  %t83 = insertvalue { i64, i64 } undef, i64 %t82, 0
  %t85 = insertvalue { i64, i64 } %t83, i64 %t79, 1
  %t86 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 1
  store { i64, i64 } %t85, ptr %t86
  %t87 = load { i64, [2 x i64] }, ptr %t80
  store { i64, [2 x i64] } %t87, ptr %rv
  br label %ret
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, [2 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [2 x i64] }, ptr %t89, i32 0, i32 0
  store i64 0, ptr %t90
  %t91 = load { i64, [2 x i64] }, ptr %t89
  store { i64, [2 x i64] } %t91, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_ea8bc9cbfbc12dba_2b605625354de9e6)
  unreachable
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efindInto(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca i1
  %l14 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i1, ptr %l7, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t5 = load { i64, [2 x i64] }, ptr %l2
  %t7 = extractvalue { i64, [2 x i64] } %t5, 0
  %t8 = icmp eq i64 %t7, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t10 = load i1, ptr %l8, !tbaa !21
  br i1 %t10, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t16 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erootOf(ptr %v0, ptr %v1, ptr %v1, ptr %t12, ptr %a1)
  store ptr %t16, ptr %l14
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l14, !tbaa !29
  store ptr %t17, ptr %l3, !tbaa !29
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t26 = load { i64, [2 x i64] }, ptr %l2
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 64
  store ptr %t23, ptr %t32, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 65
  store { i64, [2 x i64] } %t26, ptr %t37
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l16 = alloca i1
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l31 = alloca i1
  %l44 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 11
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l11
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l10
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l6, !tbaa !27
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  %t14 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t17 = sext i32 %t15 to i64
  store i64 %t17, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp slt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb7
bb6:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t29 = icmp sge i64 %t23, %t26
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t32 = load %"compiler/source:Span", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t32, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t34 = load i64, ptr %l4, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t42 = icmp slt i64 %t36, %t39
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t44, ptr %l28, !tbaa !27
  %t45 = load i64, ptr %l5, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i8, ptr %t48, i64 %t45
  %t50 = load i8, ptr %t49, !tbaa !32
  %t52 = call i1 @compiler_2fscope_2eisNameChar(i8 %t50)
  store i1 %t52, ptr %l31
  br label %bb14
bb13:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb15
bb14:
  %t53 = load i1, ptr %l31, !tbaa !21
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t54 = load i1, ptr %l27, !tbaa !21
  %t55 = xor i1 %t54, true
  br i1 %t55, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l5, !tbaa !24
  br label %bb19
bb19:
  br label %bb11
bb20:
  %t61 = load i64, ptr %l5, !tbaa !24
  %t62 = load i64, ptr %l4, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t67 = load i64, ptr %l4, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l5, !tbaa !24
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = trunc i64 %t71 to i32
  %t74 = load i64, ptr %l5, !tbaa !24
  %t76 = trunc i64 %t74 to i32
  %t79 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t73, i32 %t76)
  store %"compiler/source:Span" %t79, ptr %l44
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t80 = load %"compiler/source:Span", ptr %l44
  store %"compiler/source:Span" %t80, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnBoundsDefs(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 102
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H4527323723b724269d0557de47b57e0e(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 104
  store i1 true, ptr %t7, !tbaa !21
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 26
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_9860a08c2c4d05d2_294127fb02ae07ae)
  unreachable
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 26
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 11
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v0, ptr %t24, ptr %t23)
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 104
  store i1 false, ptr %t28, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eforWrap(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i32
  %l20 = alloca %"compiler/typed:BlockInfo"
  %l24 = alloca i1
  %l36 = alloca i64
  %l39 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca i1
  %l73 = alloca i1
  %l83 = alloca %"compiler/typed:Local"
  %l88 = alloca ptr
  %l89 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  call void @__olang_check_failed(ptr @olang_loc_6b4093eaa9dab6e0_ebbf8088c45502d4)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 8
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Block", ptr %t15, i32 0, i32 0
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t14, i64 %t20)
  store %"compiler/typed:BlockInfo" %t23, ptr %l20
  br label %bb4
bb4:
  %t24 = getelementptr %"compiler/typed:BlockInfo", ptr %l20, i32 0, i32 1
  %t25 = load i32, ptr %t24, !range !{i32 0, i32 10}
  %t27 = trunc i64 1 to i32
  %t28 = icmp eq i32 %t25, %t27
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb7
bb6:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Block", ptr %t32, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp slt i64 %t37, 2
  store i1 %t39, ptr %l24, !tbaa !21
  br label %bb7
bb7:
  %t41 = load i1, ptr %l24, !tbaa !21
  br i1 %t41, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  store i64 0, ptr %l2, !tbaa !24
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Block", ptr %t43, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  store i64 %t48, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  %t54 = icmp sgt i64 %t50, %t51
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb16
bb13:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t61 = load i64, ptr %l2, !tbaa !24
  %t64 = sub i64 %t60, %t61
  %t65 = load i64, ptr %l4, !tbaa !24
  %t68 = add i64 %t64, %t65
  %t70 = sub i64 %t68, 1
  %t71 = load i64, ptr %l4, !tbaa !24
  %t74 = sdiv i64 %t70, %t71
  store i64 %t74, ptr %l39, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb15
bb15:
  %t76 = load i64, ptr %l39, !tbaa !24
  store i64 %t76, ptr %l36, !tbaa !24
  br label %bb16
bb16:
  %t77 = load i64, ptr %l36, !tbaa !24
  store i64 %t77, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb17
bb17:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l5, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb18, label %bb19
bb18:
  br label %bb52
bb19:
  br label %bb20
bb20:
  %t86 = load i64, ptr %l2, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = mul i64 %t87, %t88
  %t94 = add i64 %t86, %t91
  store i64 %t94, ptr %l7, !tbaa !24
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Block", ptr %t96, i32 0, i32 1
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  store { i64, ptr } %t99, ptr %l58, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr ptr, ptr %t103, i64 %t100
  %t105 = load ptr, ptr %t104, !tbaa !39
  store ptr %t105, ptr %l8, !tbaa !29
  %t107 = load ptr, ptr %l8, !tbaa !29
  store ptr %t107, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t108 = load ptr, ptr %l61, !tbaa !29
  %t109 = icmp ne ptr %t108, null
  br i1 %t109, label %bb21, label %bb22
bb21:
  %t111 = load ptr, ptr %l61, !tbaa !29
  %t112 = load i64, ptr %t111, !range !{i64 0, i64 17}
  %t114 = icmp eq i64 %t112, 0
  store i1 %t114, ptr %l62, !tbaa !21
  br label %bb22
bb22:
  %t115 = load i1, ptr %l62, !tbaa !21
  br i1 %t115, label %bb23, label %bb24
bb23:
  %t116 = load ptr, ptr %l8, !tbaa !29
  %t118 = getelementptr { i64, [3 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t118, i32 0, i32 1
  %t120 = load i32, ptr %t119
  store i32 %t120, ptr %l9, !tbaa !23
  br label %bb25
bb24:
  br label %bb36
bb25:
  %t122 = load i64, ptr %l7, !tbaa !24
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Block", ptr %t123, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t130 = sub i64 %t128, 1
  %t133 = icmp eq i64 %t122, %t130
  br i1 %t133, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb32
bb27:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/scope:Scoper", ptr %t135, i32 0, i32 26
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = icmp eq ptr %t138, null
  br i1 %t140, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_a83726b6934b3ff_5f714cf565db93e3)
  unreachable
bb29:
  br label %bb30
bb30:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/scope:Scoper", ptr %t142, i32 0, i32 26
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Body", ptr %t145, i32 0, i32 7
  %t149 = load i32, ptr %l9, !tbaa !23
  %t151 = sext i32 %t149 to i64
  %t154 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t148, i64 %t151)
  store %"compiler/typed:Local" %t154, ptr %l83
  br label %bb31
bb31:
  %t155 = getelementptr %"compiler/typed:Local", ptr %l83, i32 0, i32 4
  %t156 = load i32, ptr %t155, !range !{i32 0, i32 7}
  %t158 = trunc i64 1 to i32
  %t159 = icmp eq i32 %t156, %t158
  %t161 = xor i1 %t159, true
  store i1 %t161, ptr %l73, !tbaa !21
  br label %bb32
bb32:
  %t163 = load i1, ptr %l73, !tbaa !21
  br i1 %t163, label %bb33, label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  br label %bb50
bb36:
  %t165 = load ptr, ptr %l8, !tbaa !29
  store ptr %t165, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t166 = load ptr, ptr %l88, !tbaa !29
  %t167 = icmp ne ptr %t166, null
  br i1 %t167, label %bb37, label %bb38
bb37:
  %t169 = load ptr, ptr %l88, !tbaa !29
  %t170 = load i64, ptr %t169, !range !{i64 0, i64 17}
  %t172 = icmp eq i64 %t170, 4
  store i1 %t172, ptr %l89, !tbaa !21
  br label %bb38
bb38:
  %t173 = load i1, ptr %l89, !tbaa !21
  br i1 %t173, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb45
bb41:
  %t174 = load i64, ptr %l7, !tbaa !24
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr %"compiler/typed:Block", ptr %t175, i32 0, i32 1
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t182 = sub i64 %t180, 1
  %t185 = icmp ne i64 %t174, %t182
  br i1 %t185, label %bb42, label %bb43
bb42:
  store i1 false, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i1 false, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_2e96c7acbe66a05d_c52c59876e2a2911)
  unreachable
bb50:
  br label %bb51
bb51:
  %t189 = load i64, ptr %l6, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l6, !tbaa !24
  br label %bb17
bb52:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eforced(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 6
  %t8 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t4, i64 %a1)
  store ptr %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l7, !tbaa !29
  %t11 = getelementptr %"compiler/scope:summary", ptr %t9, i32 0, i32 0
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t16 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eforcedBy(ptr %v0, ptr %v0, ptr %t13, ptr %t11, i64 %a2)
  store i1 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i1, ptr %l11, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandedOn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l8 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l18 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call i1 @compiler_2fscope_2eisParamRead(ptr %v1, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i1, ptr %l8, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i64 1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l1, !tbaa !29
  store ptr %t8, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t9 = load ptr, ptr %l10, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 3
  store i1 %t15, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l11, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l3, !tbaa !29
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = call i64 @compiler_2fscope_2eownField(ptr %v1, ptr %t23, i64 %t24)
  store i64 %t27, ptr %l18
  br label %bb10
bb10:
  %t28 = load i64, ptr %l18, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb11, label %bb12
bb11:
  store i64 2, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb40
bb14:
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb15, label %bb16
bb15:
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 18}
  %t39 = icmp eq i64 %t37, 2
  store i1 %t39, ptr %l22, !tbaa !21
  br label %bb16
bb16:
  %t40 = load i1, ptr %l22, !tbaa !21
  br i1 %t40, label %bb17, label %bb18
bb17:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t43, i32 0, i32 2
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb35
bb19:
  %t47 = load ptr, ptr %l4, !tbaa !29
  store ptr %t47, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t48 = load ptr, ptr %l27, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb20, label %bb21
bb20:
  %t51 = load ptr, ptr %l27, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 8}
  %t54 = icmp eq i64 %t52, 2
  store i1 %t54, ptr %l28, !tbaa !21
  br label %bb21
bb21:
  %t55 = load i1, ptr %l28, !tbaa !21
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 2
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l5, !tbaa !29
  br label %bb24
bb23:
  br label %bb29
bb24:
  %t62 = load ptr, ptr %l5, !tbaa !29
  %t63 = load i64, ptr %l2, !tbaa !24
  %t66 = call i1 @compiler_2fscope_2eisParamRead(ptr %v1, ptr %t62, i64 %t63)
  store i1 %t66, ptr %l35
  br label %bb25
bb25:
  %t67 = load i1, ptr %l35, !tbaa !21
  br i1 %t67, label %bb26, label %bb27
bb26:
  store i64 3, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_9c7ebd2b12e06561_d1b788b185a2a0b5)
  unreachable
bb34:
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
  call void @__olang_check_failed(ptr @olang_loc_e6e67a80e175cfd0_914d29e7454711c4)
  unreachable
bb40:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisMethodCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca ptr
  %l25 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca ptr
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
  br label %bb18
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
  br label %bb12
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l25, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t51, i64 %t52)
  store i64 %t55, ptr %l29
  br label %bb10
bb10:
  %t56 = load ptr, ptr %l25, !tbaa !29
  %t57 = load i64, ptr %l29, !tbaa !24
  %t58 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store ptr %t58, ptr %l30
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l30, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Func", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  %t66 = xor i1 %t64, true
  store i1 %t66, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_97396c871582ed15_57852cddb00c7721)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_4e30153e8dd87e24_c063a5f8ea87c90)
  unreachable
bb23:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eitemKind(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t3 = trunc i64 1 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load i64, ptr @G_2ecompiler_2fscope_2eFitPayload, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  br label %bb15
bb4:
  %t8 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t10 = trunc i64 2 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t13 = load i32, ptr %l1, !range !{i32 0, i32 5}
  %t15 = trunc i64 3 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t18 = load i64, ptr @G_2ecompiler_2fscope_2eFitElem, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t20 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  store i64 %t20, ptr %l2, !tbaa !24
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_6eab74aa3e0b63d9_475cda0f5b688a85)
  unreachable
bb15:
  %t22 = load i64, ptr %l2, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptCopy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3, ptr %a4, %"compiler/scope:Val" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"compiler/scope:Val"
  %l6 = alloca ptr
  %l12 = alloca i1
  %l13 = alloca i1
  %l17 = alloca i1
  %l21 = alloca { i64, [2 x i64] }
  %l22 = alloca %"compiler/scope:Val"
  %l28 = alloca i1
  %l32 = alloca i1
  %l35 = alloca ptr
  %l45 = alloca i1
  %l46 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca i64
  %l53 = alloca ptr
  %l56 = alloca %"compiler/source:Span"
  %l57 = alloca %"compiler/diagmsg:Msg"
  %l58 = alloca i64
  %rv = alloca %"compiler/scope:Val"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a4, ptr %l4
  store %"compiler/scope:Val" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Promote", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t11 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatCall(ptr %v0, ptr %v3, ptr %t6, ptr %t7)
  store i1 %t11, ptr %l12
  br label %bb1
bb1:
  %t12 = load i1, ptr %l12, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = load i64, ptr %l2, !tbaa !24
  %t19 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeStoresArg(ptr %v0, ptr %v1, ptr %t13, ptr %t14, i64 %t15)
  store i1 %t19, ptr %l17
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb5
bb4:
  %t20 = load i1, ptr %l17, !tbaa !21
  %t21 = xor i1 %t20, true
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l13, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t28 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHere(ptr %v0, ptr %v3, ptr %t24, ptr %t25)
  store { i64, [2 x i64] } %t28, ptr %l21
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t29 = load { i64, [2 x i64] }, ptr %l21
  %t30 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t29)
  store %"compiler/scope:Val" %t30, ptr %l22
  br label %bb9
bb9:
  %t31 = load %"compiler/scope:Val", ptr %l22
  store %"compiler/scope:Val" %t31, ptr %rv
  br label %ret
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t34 = load i64, ptr %l2, !tbaa !24
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t36 = load %"compiler/scope:Val", ptr %l5
  %t42 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitLent(ptr %v0, ptr %v1, ptr %v3, ptr %t32, ptr %t33, i64 %t34, ptr %t35, %"compiler/scope:Val" %t36)
  store i1 %t42, ptr %l28
  br label %bb11
bb11:
  %t43 = load i1, ptr %l28, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t44 = load %"compiler/scope:Val", ptr %l5
  store %"compiler/scope:Val" %t44, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 217
  %t49 = load i1, ptr %t48, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 220
  %t54 = load i1, ptr %t53, !tbaa !21
  store i1 %t54, ptr %l32, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t56 = load i1, ptr %l32, !tbaa !21
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l35, !tbaa !29
  %t58 = load ptr, ptr %l35, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 218
  %t60 = load i64, ptr %t59, !tbaa !24
  %t62 = add i64 %t60, 1
  %t64 = load ptr, ptr %l35, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t64, i32 0, i32 218
  store i64 %t62, ptr %t65, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v3, ptr %t66, ptr %t67)
  br label %bb20
bb19:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %t70, i32 0, i32 28
  %t73 = load i1, ptr %t72, !tbaa !21
  br i1 %t73, label %bb21, label %bb22
bb20:
  br label %bb34
bb21:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l6, !tbaa !29
  %t80 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatCall(ptr %v0, ptr %v3, ptr %t75, ptr %t76)
  store i1 %t80, ptr %l45
  br label %bb23
bb22:
  br label %bb33
bb23:
  %t81 = load i1, ptr %l45, !tbaa !21
  br i1 %t81, label %bb24, label %bb25
bb24:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l46, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l6, !tbaa !29
  %t88 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eelemAt(ptr %v0, ptr %v3, ptr %t83, ptr %t84)
  store %"compiler/source:Span" %t88, ptr %l50
  br label %bb26
bb25:
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l53, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t94 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v2, ptr %t90, ptr %a3)
  store %"compiler/source:Span" %t94, ptr %l56
  br label %bb29
bb26:
  %t95 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteThroughAtBuilds(ptr %v0)
  store %"compiler/diagmsg:Msg" %t95, ptr %l51
  br label %bb27
bb27:
  %t96 = load ptr, ptr %l46, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l50
  %t98 = load %"compiler/diagmsg:Msg", ptr %l51
  %t99 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t96, %"compiler/source:Span" %t97, %"compiler/diagmsg:Msg" %t98)
  store i64 %t99, ptr %l52
  br label %bb28
bb28:
  br label %bb32
bb29:
  %t100 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitScopes(ptr %v0)
  store %"compiler/diagmsg:Msg" %t100, ptr %l57
  br label %bb30
bb30:
  %t101 = load ptr, ptr %l53, !tbaa !29
  %t102 = load %"compiler/source:Span", ptr %l56
  %t103 = load %"compiler/diagmsg:Msg", ptr %l57
  %t104 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t101, %"compiler/source:Span" %t102, %"compiler/diagmsg:Msg" %t103)
  store i64 %t104, ptr %l58
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t105 = load %"compiler/scope:Val", ptr %l5
  store %"compiler/scope:Val" %t105, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/scope:rel"
  %l6 = alloca { i64, [2 x i64] }
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca i32
  %l10 = alloca i32
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"compiler/scope:rel"
  %l28 = alloca { i64, [1 x i64] }
  %l35 = alloca ptr
  %l40 = alloca %"compiler/typed:Local"
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l59 = alloca %"compiler/typed:Local"
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l12, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v2, ptr %t4)
  store i64 %t6, ptr %l14
  br label %bb2
bb2:
  %t7 = load i64, ptr %l12, !tbaa !24
  %t8 = load i64, ptr %l14, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb32
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v2, ptr %t13, i64 %t14)
  store %"compiler/scope:rel" %t17, ptr %l19
  br label %bb6
bb6:
  %t18 = load %"compiler/scope:rel", ptr %l19
  store %"compiler/scope:rel" %t18, ptr %l5
  %t19 = getelementptr %"compiler/scope:rel", ptr %l5, i32 0, i32 0
  %t20 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t20, ptr %l6
  %t22 = load { i64, [2 x i64] }, ptr %l6
  %t24 = extractvalue { i64, [2 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 2
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  br label %bb31
bb8:
  br label %bb9
bb9:
  %t29 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t30 = getelementptr { i64 }, ptr %t29, i32 0, i32 0
  %t31 = load i64, ptr %t30
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 6
  %t39 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v1, ptr %t35, i64 %t31)
  store { i64, [1 x i64] } %t39, ptr %l28
  br label %bb10
bb10:
  %t40 = load { i64, [1 x i64] }, ptr %l28
  store { i64, [1 x i64] } %t40, ptr %l8
  %t41 = load { i64, [1 x i64] }, ptr %l8
  %t43 = extractvalue { i64, [1 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 0
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = getelementptr { i64, [1 x i64] }, ptr %l8, i32 0, i32 1
  %t47 = getelementptr { i32 }, ptr %t46, i32 0, i32 0
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l9, !tbaa !23
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/load:Loader", ptr %t56, i32 0, i32 3
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l35, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 7
  %t63 = load i32, ptr %l9, !tbaa !23
  %t65 = sext i32 %t63 to i64
  %t68 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t62, i64 %t65)
  store %"compiler/typed:Local" %t68, ptr %l40
  br label %bb14
bb14:
  %t69 = getelementptr %"compiler/typed:Local", ptr %l40, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t71 = load ptr, ptr %l35, !tbaa !29
  %t73 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v3, ptr %t71, i32 %t70)
  store { i64, ptr } %t73, ptr %l42
  br label %bb15
bb15:
  %t74 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t74, ptr %l43, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  store i64 %t76, ptr %l44, !tbaa !24
  %t77 = load i64, ptr %l44, !tbaa !24
  %t78 = mul i64 %t77, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t78)
  %t80 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l45, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = load i64, ptr %l44, !tbaa !24
  %t87 = mul i64 %t86, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t83, ptr %t85, i64 %t87, i1 false)
  %t88 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t88, ptr %l43, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t89, ptr %rv
  br label %ret
bb16:
  %t90 = load { i64, [1 x i64] }, ptr %l8
  %t92 = extractvalue { i64, [1 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 4
  br i1 %t93, label %bb17, label %bb18
bb17:
  %t95 = getelementptr { i64, [1 x i64] }, ptr %l8, i32 0, i32 1
  %t96 = getelementptr { i32 }, ptr %t95, i32 0, i32 0
  %t97 = load i32, ptr %t96
  store i32 %t97, ptr %l10, !tbaa !23
  br label %bb19
bb18:
  br label %bb25
bb19:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Body", ptr %t99, i32 0, i32 14
  %t102 = load i1, ptr %t101, !tbaa !21
  br i1 %t102, label %bb20, label %bb21
bb20:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/load:Loader", ptr %t110, i32 0, i32 3
  %t113 = load ptr, ptr %t112, !tbaa !29
  store ptr %t113, ptr %l54, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Body", ptr %t114, i32 0, i32 7
  %t117 = load i32, ptr %l10, !tbaa !23
  %t119 = sext i32 %t117 to i64
  %t122 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t116, i64 %t119)
  store %"compiler/typed:Local" %t122, ptr %l59
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t123 = getelementptr %"compiler/typed:Local", ptr %l59, i32 0, i32 0
  %t124 = load i32, ptr %t123, !tbaa !23
  %t125 = load ptr, ptr %l54, !tbaa !29
  %t127 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v3, ptr %t125, i32 %t124)
  store { i64, ptr } %t127, ptr %l61
  br label %bb23
bb23:
  %t128 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t128, ptr %l62, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  store i64 %t130, ptr %l63, !tbaa !24
  %t131 = load i64, ptr %l63, !tbaa !24
  %t132 = mul i64 %t131, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l64, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = load i64, ptr %l63, !tbaa !24
  %t141 = mul i64 %t140, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t137, ptr %t139, i64 %t141, i1 false)
  %t142 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t142, ptr %l62, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
bb24:
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_2906ca9d29f69631_82ae3e269cbacfc5)
  unreachable
bb30:
  br label %bb31
bb31:
  %t144 = load i64, ptr %l4, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l4, !tbaa !24
  br label %bb1
bb32:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l67, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t148, ptr %l68, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  store i64 %t150, ptr %l69, !tbaa !24
  %t151 = load i64, ptr %l69, !tbaa !24
  %t152 = mul i64 %t151, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t152)
  %t154 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l70, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l69, !tbaa !24
  %t161 = mul i64 %t160, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t157, ptr %t159, i64 %t161, i1 false)
  %t162 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t162, ptr %l68, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t163, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca ptr
  %l19 = alloca i64
  %l22 = alloca i64
  %l41 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l45 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l63 = alloca i1
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
  store i64 0, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Block", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb9
bb6:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l22, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l22, !tbaa !24
  store i64 %t38, ptr %l19, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l19, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb11, label %bb12
bb11:
  br label %bb35
bb12:
  br label %bb13
bb13:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l7, !tbaa !24
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Block", ptr %t58, i32 0, i32 1
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  store { i64, ptr } %t61, ptr %l41, !tbaa !27
  %t62 = load i64, ptr %l7, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr ptr, ptr %t65, i64 %t62
  %t67 = load ptr, ptr %t66, !tbaa !39
  store ptr %t67, ptr %l8, !tbaa !29
  %t69 = load ptr, ptr %l8, !tbaa !29
  store ptr %t69, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t70 = load ptr, ptr %l44, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t73 = load ptr, ptr %l44, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 17}
  %t76 = icmp eq i64 %t74, 0
  store i1 %t76, ptr %l45, !tbaa !21
  br label %bb15
bb15:
  %t77 = load i1, ptr %l45, !tbaa !21
  br i1 %t77, label %bb16, label %bb17
bb16:
  %t78 = load ptr, ptr %l8, !tbaa !29
  %t80 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t80, i32 0, i32 1
  %t82 = load i32, ptr %t81
  store i32 %t82, ptr %l9, !tbaa !23
  %t84 = load ptr, ptr %l8, !tbaa !29
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l10, !tbaa !29
  br label %bb18
bb17:
  br label %bb27
bb18:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l10, !tbaa !29
  %t94 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturingLambda(ptr %v0, ptr %v1, ptr %t90, ptr %t91)
  store i1 %t94, ptr %l54
  br label %bb19
bb19:
  %t95 = load i1, ptr %l54, !tbaa !21
  br i1 %t95, label %bb20, label %bb21
bb20:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Block", ptr %t97, i32 0, i32 1
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  %t101 = load i64, ptr %l7, !tbaa !24
  %t103 = add i64 %t101, 1
  %t104 = load i32, ptr %l9, !tbaa !23
  %t106 = sext i32 %t104 to i64
  %t111 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonlyCalled(ptr %v0, ptr %v1, ptr %t96, { i64, ptr } %t100, i64 %t103, i64 %t106)
  store i1 %t111, ptr %l63
  br label %bb22
bb21:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb23
bb22:
  %t112 = load i1, ptr %l63, !tbaa !21
  store i1 %t112, ptr %l55, !tbaa !21
  br label %bb23
bb23:
  %t113 = load i1, ptr %l55, !tbaa !21
  br i1 %t113, label %bb24, label %bb25
bb24:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %t114, i32 0, i32 143
  store i1 true, ptr %t116, !tbaa !21
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_fc6a508fadcedae3_fc22fb2e32e5f087)
  unreachable
bb32:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwStmt(ptr %v0, ptr %v1, ptr %t117, ptr %t118)
  br label %bb33
bb33:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/scope:Scoper", ptr %t122, i32 0, i32 143
  store i1 false, ptr %t124, !tbaa !21
  br label %bb34
bb34:
  %t125 = load i64, ptr %l6, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l6, !tbaa !24
  br label %bb10
bb35:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
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
  %l24 = alloca ptr
  %l30 = alloca i32
  %l34 = alloca i64
  %l37 = alloca i1
  %l40 = alloca i1
  %l47 = alloca i64
  %l53 = alloca i64
  %l61 = alloca { i64, ptr }
  %l63 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i64
  %l99 = alloca i64
  %l102 = alloca i64
  %l110 = alloca i64
  %l113 = alloca i64
  %l135 = alloca i1
  %l140 = alloca i64
  %l143 = alloca { i64, ptr }
  %l147 = alloca { i64, [2 x i64] }
  %l151 = alloca i64
  %l154 = alloca { i64, ptr }
  %l157 = alloca { i64, [2 x i64] }
  %l166 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t10 = alloca { i64, [2 x i64] }, align 8
  %t42 = alloca { i64, [2 x i64] }, align 8
  %t61 = alloca { i64, [2 x i64] }, align 8
  %t75 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t4, ptr %l24
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l24, !tbaa !29
  store ptr %t5, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  br i1 %t8, label %bb2, label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t10
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 0
  store i64 0, ptr %t11
  %t12 = load { i64, [2 x i64] }, ptr %t10
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t12, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t18 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t14, ptr %t15)
  store i32 %t18, ptr %l30
  br label %bb5
bb5:
  %t19 = load i32, ptr %l30, !tbaa !23
  store i32 %t19, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Call", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t27 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t20, ptr %t24)
  store i64 %t27, ptr %l34
  br label %bb6
bb6:
  %t28 = load i64, ptr %l34, !tbaa !24
  store i64 %t28, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t31 = icmp slt i64 %t29, 0
  br i1 %t31, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb10
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %t33, i64 %t34)
  store i1 %t37, ptr %l40
  br label %bb9
bb9:
  %t38 = load i1, ptr %l40, !tbaa !21
  %t39 = xor i1 %t38, true
  store i1 %t39, ptr %l37, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l37, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  store { i64, [2 x i64] } zeroinitializer, ptr %t42
  %t43 = getelementptr { i64, [2 x i64] }, ptr %t42, i32 0, i32 0
  store i64 0, ptr %t43
  %t44 = load { i64, [2 x i64] }, ptr %t42
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t44, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 0
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l3, !tbaa !23
  %t55 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t51, i32 %t52)
  store i64 %t55, ptr %l47
  br label %bb14
bb14:
  %t56 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t57 = load i64, ptr %l47, !tbaa !24
  %t59 = icmp eq i64 %t57, %t56
  br i1 %t59, label %bb15, label %bb16
bb15:
  store { i64, [2 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i32 0, i32 0
  store i64 0, ptr %t62
  %t63 = load { i64, [2 x i64] }, ptr %t61
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t63, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l3, !tbaa !23
  %t69 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t65, i32 %t66)
  store i64 %t69, ptr %l53
  br label %bb18
bb18:
  %t70 = load i64, ptr %l53, !tbaa !24
  store i64 %t70, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = icmp slt i64 %t71, 0
  br i1 %t73, label %bb19, label %bb20
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [2 x i64] }, ptr %t75, i32 0, i32 0
  store i64 0, ptr %t76
  %t77 = load { i64, [2 x i64] }, ptr %t75
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t77, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %l3, !tbaa !23
  %t88 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t84, i32 %t85)
  store { i64, ptr } %t88, ptr %l61
  br label %bb22
bb22:
  %t89 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t89, ptr %l6, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  store i64 %t92, ptr %l63, !tbaa !24
  %t93 = load i64, ptr %l63, !tbaa !24
  %t94 = icmp sge i64 %t93, 0
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t96 = load i64, ptr %l63, !tbaa !24
  %t97 = icmp sle i64 %t96, 384307168202282325
  br i1 %t97, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_ec2dd22d28cc6988_9d0975400b204864)
  unreachable
bb25:
  %t99 = load i64, ptr %l63, !tbaa !24
  %t100 = mul i64 %t99, 24
  %t101 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t100)
  %t102 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  store { i64, ptr } %t103, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Call", ptr %t105, i32 0, i32 1
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  store i64 %t110, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t112 = load i64, ptr %l9, !tbaa !24
  %t113 = load i64, ptr %l8, !tbaa !24
  %t116 = icmp sgt i64 %t112, %t113
  br i1 %t116, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_ec2dd22d28cc6988_9d0975400b204864)
  unreachable
bb27:
  %t118 = load i64, ptr %l10, !tbaa !24
  %t120 = icmp sgt i64 %t118, 0
  br i1 %t120, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb32
bb29:
  %t122 = load i64, ptr %l9, !tbaa !24
  %t123 = load i64, ptr %l8, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t127 = load i64, ptr %l10, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t132 = sub i64 %t130, 1
  %t133 = load i64, ptr %l10, !tbaa !24
  %t136 = sdiv i64 %t132, %t133
  store i64 %t136, ptr %l76, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb31
bb31:
  %t138 = load i64, ptr %l76, !tbaa !24
  store i64 %t138, ptr %l73, !tbaa !24
  br label %bb32
bb32:
  %t139 = load i64, ptr %l73, !tbaa !24
  store i64 %t139, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb33
bb33:
  %t140 = load i64, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l11, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb34, label %bb35
bb34:
  br label %bb65
bb35:
  br label %bb36
bb36:
  %t148 = load i64, ptr %l8, !tbaa !24
  %t149 = load i64, ptr %l12, !tbaa !24
  %t150 = load i64, ptr %l10, !tbaa !24
  %t153 = mul i64 %t149, %t150
  %t156 = add i64 %t148, %t153
  store i64 %t156, ptr %l13, !tbaa !24
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/scope:Scoper", ptr %t158, i32 0, i32 0
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  %t164 = load i32, ptr %l3, !tbaa !23
  %t165 = load i64, ptr %l13, !tbaa !24
  %t169 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t163, i32 %t164, i64 %t165)
  store i64 %t169, ptr %l99
  br label %bb37
bb37:
  %t170 = load i64, ptr %l99, !tbaa !24
  store i64 %t170, ptr %l14, !tbaa !24
  %t171 = load i64, ptr %l14, !tbaa !24
  %t173 = icmp sge i64 %t171, 0
  br i1 %t173, label %bb38, label %bb39
bb38:
  %t175 = load i64, ptr %l14, !tbaa !24
  store i64 %t175, ptr %l102, !tbaa !24
  br label %bb40
bb39:
  %t177 = load i64, ptr %l13, !tbaa !24
  store i64 %t177, ptr %l102, !tbaa !24
  br label %bb40
bb40:
  %t179 = load i64, ptr %l102, !tbaa !24
  store i64 %t179, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  %t180 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t180, 0
  store i64 %t182, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t184 = load i64, ptr %l17, !tbaa !24
  %t185 = load i64, ptr %l16, !tbaa !24
  %t188 = icmp sgt i64 %t184, %t185
  br i1 %t188, label %bb41, label %bb42
bb41:
  %t190 = load i64, ptr %l18, !tbaa !24
  %t192 = icmp sgt i64 %t190, 0
  br i1 %t192, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb46
bb43:
  %t194 = load i64, ptr %l17, !tbaa !24
  %t195 = load i64, ptr %l16, !tbaa !24
  %t198 = sub i64 %t194, %t195
  %t199 = load i64, ptr %l18, !tbaa !24
  %t202 = add i64 %t198, %t199
  %t204 = sub i64 %t202, 1
  %t205 = load i64, ptr %l18, !tbaa !24
  %t208 = sdiv i64 %t204, %t205
  store i64 %t208, ptr %l113, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb45
bb45:
  %t210 = load i64, ptr %l113, !tbaa !24
  store i64 %t210, ptr %l110, !tbaa !24
  br label %bb46
bb46:
  %t211 = load i64, ptr %l110, !tbaa !24
  store i64 %t211, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb47
bb47:
  %t212 = load i64, ptr %l20, !tbaa !24
  %t213 = load i64, ptr %l19, !tbaa !24
  %t216 = icmp slt i64 %t212, %t213
  %t218 = xor i1 %t216, true
  br i1 %t218, label %bb48, label %bb49
bb48:
  br label %bb63
bb49:
  br label %bb50
bb50:
  %t220 = load i64, ptr %l16, !tbaa !24
  %t221 = load i64, ptr %l20, !tbaa !24
  %t222 = load i64, ptr %l18, !tbaa !24
  %t225 = mul i64 %t221, %t222
  %t228 = add i64 %t220, %t225
  store i64 %t228, ptr %l21, !tbaa !24
  %t230 = load i64, ptr %l21, !tbaa !24
  %t232 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr i64, ptr %t233, i64 %t230
  %t235 = load i64, ptr %t234, !tbaa !34
  %t236 = load i64, ptr %l15, !tbaa !24
  %t239 = icmp ne i64 %t235, %t236
  br i1 %t239, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb53
bb52:
  %t241 = load i64, ptr %l21, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr { i64, [2 x i64] }, ptr %t244, i64 %t241
  %t246 = load { i64, [2 x i64] }, ptr %t245
  %t248 = extractvalue { i64, [2 x i64] } %t246, 0
  %t249 = icmp eq i64 %t248, 0
  %t251 = xor i1 %t249, true
  store i1 %t251, ptr %l135, !tbaa !21
  br label %bb53
bb53:
  %t253 = load i1, ptr %l135, !tbaa !21
  br i1 %t253, label %bb54, label %bb55
bb54:
  br label %bb62
bb55:
  br label %bb56
bb56:
  %t254 = load i64, ptr %l21, !tbaa !24
  store i64 %t254, ptr %l140, !tbaa !24
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load ptr, ptr %l2, !tbaa !29
  %t258 = getelementptr %"compiler/typed:Call", ptr %t256, i32 0, i32 1
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  store { i64, ptr } %t259, ptr %l143, !tbaa !27
  %t260 = load i64, ptr %l13, !tbaa !24
  %t262 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr ptr, ptr %t263, i64 %t260
  %t265 = load ptr, ptr %t264, !tbaa !39
  %t269 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %t255, ptr %t265)
  store { i64, [2 x i64] } %t269, ptr %l147
  br label %bb57
bb57:
  %t270 = load { i64, [2 x i64] }, ptr %l147
  %t271 = load i64, ptr %l140, !tbaa !24
  %t272 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr { i64, [2 x i64] }, ptr %t273, i64 %t271
  store { i64, [2 x i64] } %t270, ptr %t274
  %t275 = load i64, ptr %l21, !tbaa !24
  %t277 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = getelementptr { i64, [2 x i64] }, ptr %t278, i64 %t275
  %t280 = load { i64, [2 x i64] }, ptr %t279
  %t282 = extractvalue { i64, [2 x i64] } %t280, 0
  %t283 = icmp eq i64 %t282, 0
  br i1 %t283, label %bb58, label %bb59
bb58:
  %t285 = load i64, ptr %l21, !tbaa !24
  store i64 %t285, ptr %l151, !tbaa !24
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load ptr, ptr %l2, !tbaa !29
  %t289 = getelementptr %"compiler/typed:Call", ptr %t287, i32 0, i32 1
  %t290 = load { i64, ptr }, ptr %t289, !tbaa !27
  store { i64, ptr } %t290, ptr %l154, !tbaa !27
  %t291 = load i64, ptr %l13, !tbaa !24
  %t293 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = getelementptr ptr, ptr %t294, i64 %t291
  %t296 = load ptr, ptr %t295, !tbaa !39
  %t299 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandTerm(ptr %v0, ptr %v1, ptr %t286, ptr %t296)
  store { i64, [2 x i64] } %t299, ptr %l157
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t300 = load { i64, [2 x i64] }, ptr %l157
  %t301 = load i64, ptr %l151, !tbaa !24
  %t302 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = getelementptr { i64, [2 x i64] }, ptr %t303, i64 %t301
  store { i64, [2 x i64] } %t300, ptr %t304
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t305 = load i64, ptr %l20, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l20, !tbaa !24
  br label %bb47
bb63:
  br label %bb64
bb64:
  %t309 = load i64, ptr %l12, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l12, !tbaa !24
  br label %bb33
bb65:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load ptr, ptr %l2, !tbaa !29
  %t315 = load i64, ptr %l5, !tbaa !24
  %t316 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t321 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandByObligations(ptr %v0, ptr %v1, ptr %s0, ptr %t313, ptr %t314, i64 %t315, { i64, ptr } %t316)
  store { i64, [2 x i64] } %t321, ptr %l166
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  %t322 = load { i64, [2 x i64] }, ptr %l166
  store { i64, [2 x i64] } %t322, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elateDef(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l17 = alloca ptr
  %l19 = alloca i32
  %l21 = alloca i1
  %l26 = alloca i1
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca %"compiler/scope:fnRec"
  %l41 = alloca %"compiler/scope:fnRec"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l8, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 159
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_40f69a1a72292384_3f2388abecda0b30)
  unreachable
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 159
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Versions", ptr %t14, i32 0, i32 6
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %s0, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l17
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l8, !tbaa !29
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t25 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %s0, ptr %s0, ptr %t22, ptr %t23, ptr %l3)
  store i32 %t25, ptr %l19
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb7, label %ok.27, !prof !99
ok.27:
  br label %bb6
bb6:
  br label %bb14
bb7:
  %t28 = load i32, ptr %l19, !tbaa !23
  %t29 = ashr i32 %t28, 16
  %t31 = icmp eq i32 %t29, 1
  store i1 %t31, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/scope:fnRecs", ptr %t32, i32 0, i32 1
  store i1 false, ptr %t34, !tbaa !21
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/scope:fnRecs", ptr %t35, i32 0, i32 2
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t37, i64 %t38)
  store i1 %t41, ptr %l26
  br label %bb9
bb9:
  %t42 = load i1, ptr %l26, !tbaa !21
  %t43 = xor i1 %t42, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr %"compiler/scope:fnRecs", ptr %t45, i32 0, i32 2
  %t48 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t47, i64 %t48)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  store ptr %l3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t52 = load i64, ptr %l5, !tbaa !24
  store i64 %t52, ptr %l32, !tbaa !24
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t53)
  store i64 %t55, ptr %l34
  br label %bb16
bb16:
  %t56 = load i64, ptr %l32, !tbaa !24
  %t57 = load i64, ptr %l34, !tbaa !24
  %t58 = icmp slt i64 %t56, %t57
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb24
bb18:
  br label %bb19
bb19:
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t62, i64 %t63)
  store %"compiler/scope:fnRec" %t66, ptr %l39
  br label %bb20
bb20:
  %t68 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s4, ptr %l39)
  store %"compiler/scope:fnRec" %t68, ptr %l41
  br label %bb21
bb21:
  %t69 = load %"compiler/scope:fnRec", ptr %l41
  %t70 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2eaddRec(ptr %v1, ptr %s4, ptr %t70, %"compiler/scope:fnRec" %t69)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  %t74 = load i64, ptr %l5, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l5, !tbaa !24
  br label %bb15
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eletBody(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/typed:Local"
  %l5 = alloca i32
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca %"compiler/scope:Val"
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l16 = alloca { i64, [2 x i64] }
  %l17 = alloca { i64, [1 x i64] }
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca { i64, [1 x i64] }
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca { i64, [2 x i64] }
  %l24 = alloca ptr
  %l25 = alloca %"compiler/scope:Val"
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca { i64, [2 x i64] }
  %l31 = alloca { i64, [2 x i64] }
  %l32 = alloca i64
  %l34 = alloca %"compiler/scope:Val"
  %l36 = alloca i1
  %l37 = alloca i1
  %l38 = alloca i64
  %l48 = alloca %"compiler/typed:Local"
  %l77 = alloca i1
  %l90 = alloca { i64, [2 x i64] }
  %l94 = alloca i1
  %l96 = alloca ptr
  %l101 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l102 = alloca i1
  %l106 = alloca { i64, [2 x i64] }
  %l110 = alloca { i64, [2 x i64] }
  %l113 = alloca ptr
  %l115 = alloca i64
  %l118 = alloca { i64, [2 x i64] }
  %l121 = alloca i1
  %l124 = alloca i1
  %l126 = alloca i1
  %l129 = alloca i1
  %l133 = alloca i1
  %l134 = alloca i1
  %l139 = alloca i1
  %l141 = alloca { i64, [2 x i64] }
  %l143 = alloca i1
  %l150 = alloca { i64, ptr }
  %l152 = alloca i64
  %l155 = alloca { i64, [2 x i64] }
  %l156 = alloca ptr
  %l157 = alloca { i64, [2 x i64] }
  %l158 = alloca %"compiler/source:Span"
  %l177 = alloca i1
  %l185 = alloca { i64, ptr }
  %l187 = alloca i64
  %l190 = alloca { i64, [2 x i64] }
  %l191 = alloca ptr
  %l192 = alloca { i64, [2 x i64] }
  %l196 = alloca %"compiler/source:Span"
  %l203 = alloca i64
  %l207 = alloca %"compiler/source:Span"
  %l211 = alloca %"compiler/scope:Val"
  %l212 = alloca ptr
  %l213 = alloca i32
  %l219 = alloca ptr
  %l220 = alloca { i64, [2 x i64] }
  %l221 = alloca { i64, [2 x i64] }
  %l224 = alloca i1
  %l225 = alloca i1
  %l228 = alloca i1
  %l235 = alloca i1
  %l240 = alloca %"compiler/scope:Val"
  %l243 = alloca i1
  %l248 = alloca i32
  %l251 = alloca i1
  %l253 = alloca ptr
  %l258 = alloca i1
  %l260 = alloca i1
  %l263 = alloca i1
  %l265 = alloca ptr
  %l267 = alloca i64
  %l278 = alloca i1
  %l281 = alloca i1
  %l284 = alloca ptr
  %l285 = alloca ptr
  %l286 = alloca i1
  %l291 = alloca ptr
  %l294 = alloca i32
  %l295 = alloca i1
  %l296 = alloca i1
  %l301 = alloca i1
  %l302 = alloca i1
  %l306 = alloca i1
  %l307 = alloca ptr
  %l309 = alloca i32
  %l312 = alloca { i64, [2 x i64] }
  %l315 = alloca %"compiler/source:Span"
  %l322 = alloca %"compiler/scope:Val"
  %l325 = alloca ptr
  %l327 = alloca i64
  %l328 = alloca ptr
  %l329 = alloca %"compiler/scope:Val"
  %l332 = alloca { i64, [2 x i64] }
  %l333 = alloca { i64, [2 x i64] }
  %l336 = alloca i1
  %l337 = alloca ptr
  %l341 = alloca i1
  %l342 = alloca ptr
  %l343 = alloca ptr
  %l346 = alloca { i64, [2 x i64] }
  %l347 = alloca %"compiler/scope:Val"
  %l356 = alloca { i64, [2 x i64] }
  %l360 = alloca i1
  %l367 = alloca i1
  %l384 = alloca { i64, [2 x i64] }
  %l393 = alloca ptr
  %l396 = alloca { i64, [2 x i64] }
  %l398 = alloca { i64, [2 x i64] }
  %l401 = alloca { i64, [2 x i64] }
  %l404 = alloca i1
  %l405 = alloca i1
  %l409 = alloca i1
  %l413 = alloca ptr
  %l419 = alloca i1
  %l420 = alloca i1
  %l423 = alloca ptr
  %l424 = alloca i1
  %l431 = alloca i1
  %l432 = alloca i1
  %l435 = alloca i1
  %l437 = alloca ptr
  %l439 = alloca i64
  %l442 = alloca { i64, [2 x i64] }
  %l448 = alloca { i64, [2 x i64] }
  %l452 = alloca { i64, [2 x i64] }
  %l461 = alloca i1
  %l463 = alloca i1
  %l468 = alloca i1
  %l469 = alloca ptr
  %l470 = alloca ptr
  %l475 = alloca ptr
  %l477 = alloca ptr
  %l478 = alloca ptr
  %l482 = alloca i64
  %l486 = alloca ptr
  %l488 = alloca i1
  %l491 = alloca i1
  %l495 = alloca ptr
  %l497 = alloca i1
  %l500 = alloca i64
  %l506 = alloca %"compiler/scope:Val"
  %l512 = alloca ptr
  %l514 = alloca i64
  %l521 = alloca i1
  %l522 = alloca i1
  %l526 = alloca i1
  %l542 = alloca ptr
  %l546 = alloca i64
  %l549 = alloca i1
  %l553 = alloca i1
  %l555 = alloca ptr
  %l557 = alloca i64
  %l558 = alloca i64
  %l562 = alloca i64
  %l563 = alloca i32
  %l567 = alloca ptr
  %l572 = alloca ptr
  %l573 = alloca ptr
  %l575 = alloca ptr
  %l579 = alloca i1
  %l586 = alloca { i64, ptr }
  %l588 = alloca i64
  %l591 = alloca i1
  %l595 = alloca i1
  %l597 = alloca ptr
  %l599 = alloca i64
  %l600 = alloca i64
  %l604 = alloca i64
  %l605 = alloca i32
  %l606 = alloca ptr
  %l607 = alloca i32
  %l612 = alloca ptr
  %l614 = alloca i64
  %l618 = alloca { i64, [2 x i64] }
  %l619 = alloca ptr
  %l620 = alloca i32
  %l624 = alloca i1
  %l634 = alloca ptr
  %l642 = alloca { i64, [2 x i64] }
  %l647 = alloca { i64, [2 x i64] }
  %l648 = alloca i32
  %l664 = alloca i1
  %l667 = alloca i64
  %l670 = alloca i64
  %l672 = alloca i1
  %l678 = alloca i1
  %l679 = alloca ptr
  %l685 = alloca ptr
  %l686 = alloca ptr
  %l690 = alloca %"compiler/source:Span"
  %l691 = alloca %"compiler/source:Span"
  %l692 = alloca %"compiler/diagmsg:Msg"
  %l693 = alloca i64
  %l701 = alloca i1
  %l704 = alloca i1
  %l705 = alloca i1
  %l706 = alloca ptr
  %l710 = alloca i1
  %l719 = alloca %"compiler/scope:Val"
  %l722 = alloca ptr
  %l723 = alloca i32
  %l734 = alloca i1
  %l737 = alloca ptr
  %l738 = alloca { i64, [2 x i64] }
  %l739 = alloca { i64, [2 x i64] }
  %l740 = alloca i1
  %l743 = alloca ptr
  %l745 = alloca i64
  %l751 = alloca i1
  %l754 = alloca i1
  %l755 = alloca i1
  %l756 = alloca ptr
  %l760 = alloca i1
  %l768 = alloca i1
  %l771 = alloca i1
  %l774 = alloca i1
  %l775 = alloca ptr
  %l776 = alloca ptr
  %l780 = alloca %"compiler/source:Span"
  %l781 = alloca %"compiler/diagmsg:Msg"
  %l782 = alloca i64
  %l785 = alloca i1
  %l788 = alloca i1
  %l789 = alloca { i64, [2 x i64] }
  %l791 = alloca { i64, [2 x i64] }
  %l793 = alloca i1
  %l795 = alloca i1
  %l797 = alloca i1
  %l800 = alloca ptr
  %l801 = alloca { i64, [2 x i64] }
  %l802 = alloca { i64, [2 x i64] }
  %l812 = alloca i1
  %l818 = alloca i1
  %l820 = alloca i64
  %l828 = alloca ptr
  %l829 = alloca { i64, [2 x i64] }
  %l830 = alloca { i64, [2 x i64] }
  %l831 = alloca i1
  %s0 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %t97 = alloca { i64, [2 x i64] }, align 8
  %t428 = alloca { i64, [2 x i64] }, align 8
  %t502 = alloca { i64, [2 x i64] }, align 8
  %t604 = alloca { i64, [2 x i64] }, align 8
  %t671 = alloca { i64, [2 x i64] }, align 8
  %t717 = alloca { i64, [2 x i64] }, align 8
  %t1006 = alloca { i64, [2 x i64] }, align 8
  %t1143 = alloca { i64, [2 x i64] }, align 8
  %t1317 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
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
  call void @__olang_check_failed(ptr @olang_loc_2b2b1c5bca7382ee_3254cae318351912)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 7
  %t15 = load i32, ptr %l2, !tbaa !23
  %t17 = sext i32 %t15 to i64
  %t20 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t14, i64 %t17)
  store %"compiler/typed:Local" %t20, ptr %l48
  br label %bb4
bb4:
  %t21 = load %"compiler/typed:Local", ptr %l48
  store %"compiler/typed:Local" %t21, ptr %l4
  %t22 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t23 = load i32, ptr %t22, !tbaa !23
  store i32 %t23, ptr %l5, !tbaa !23
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 45
  %t34 = load i32, ptr %l2, !tbaa !23
  %t36 = sext i32 %t34 to i64
  %t37 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_He8fa2eab054d0b98ccbd3d6295fac885(ptr %v0, ptr %v1, ptr %t33, i64 %t36, ptr %t37)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 126
  %t44 = load { i64, [2 x i64] }, ptr %t43
  store { i64, [2 x i64] } %t44, ptr %l6
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 127
  %t49 = load i1, ptr %t48, !tbaa !21
  store i1 %t49, ptr %l7, !tbaa !21
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 130
  %t54 = load i1, ptr %t53, !tbaa !21
  store i1 %t54, ptr %l8, !tbaa !21
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 159
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb9, label %bb10
bb9:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 189
  %t68 = load i32, ptr %l2, !tbaa !23
  %t70 = sext i32 %t68 to i64
  %t71 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t72 = load i32, ptr %t71, !tbaa !23
  %t74 = sext i32 %t72 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t67, i64 %t70, i64 %t74)
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l2, !tbaa !23
  %t81 = sext i32 %t79 to i64
  %t84 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t78, i64 %t81)
  store i1 %t84, ptr %l77
  br label %bb12
bb12:
  %t85 = load i1, ptr %l77, !tbaa !21
  br i1 %t85, label %bb13, label %bb14
bb13:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/scope:Scoper", ptr %t86, i32 0, i32 188
  %t89 = load i32, ptr %l2, !tbaa !23
  %t91 = sext i32 %t89 to i64
  %t92 = load { i64, [2 x i64] }, ptr %l6
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %t88, i64 %t91, { i64, [2 x i64] } %t92)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [2 x i64] }, ptr %t97, i32 0, i32 0
  store i64 0, ptr %t98
  %t99 = load { i64, [2 x i64] }, ptr %t97
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t96, i32 0, i32 126
  store { i64, [2 x i64] } %t99, ptr %t102
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/scope:Scoper", ptr %t103, i32 0, i32 127
  store i1 false, ptr %t105, !tbaa !21
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 130
  store i1 false, ptr %t108, !tbaa !21
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i32, ptr %l2, !tbaa !23
  %t112 = sext i32 %t110 to i64
  %t115 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftOf(ptr %v0, ptr %t109, i64 %t112)
  store { i64, [2 x i64] } %t115, ptr %l90
  br label %bb18
bb18:
  %t116 = load { i64, [2 x i64] }, ptr %l90
  store { i64, [2 x i64] } %t116, ptr %l9
  %t117 = load { i64, [2 x i64] }, ptr %l9
  %t119 = extractvalue { i64, [2 x i64] } %t117, 0
  %t120 = icmp eq i64 %t119, 0
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb19, label %bb20
bb19:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 151
  store ptr %t126, ptr %l96, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/scope:Scoper", ptr %t127, i32 0, i32 27
  %t130 = load i64, ptr %t129, !tbaa !24
  %t131 = load i32, ptr %l2, !tbaa !23
  %t133 = sext i32 %t131 to i64
  %t136 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t130, i64 %t133)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t136, ptr %l101
  br label %bb21
bb20:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb23
bb21:
  %t137 = load ptr, ptr %l96, !tbaa !29
  %t138 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l101
  %t139 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t137, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t138)
  store i1 %t139, ptr %l102
  br label %bb22
bb22:
  %t140 = load i1, ptr %l102, !tbaa !21
  store i1 %t140, ptr %l94, !tbaa !21
  br label %bb23
bb23:
  %t141 = load i1, ptr %l94, !tbaa !21
  br i1 %t141, label %bb24, label %bb25
bb24:
  %t142 = load { i64, [2 x i64] }, ptr %l6
  %t144 = extractvalue { i64, [2 x i64] } %t142, 0
  %t145 = icmp eq i64 %t144, 0
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb26, label %bb27
bb25:
  br label %bb30
bb26:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load { i64, [2 x i64] }, ptr %l6
  %t151 = load { i64, [2 x i64] }, ptr %l9
  %t155 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t149, { i64, [2 x i64] } %t150, { i64, [2 x i64] } %t151)
  store { i64, [2 x i64] } %t155, ptr %l110
  br label %bb28
bb27:
  %t156 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t156, ptr %l106
  br label %bb29
bb28:
  %t158 = load { i64, [2 x i64] }, ptr %l110
  store { i64, [2 x i64] } %t158, ptr %l106
  br label %bb29
bb29:
  %t159 = load { i64, [2 x i64] }, ptr %l106
  store { i64, [2 x i64] } %t159, ptr %l6
  br label %bb30
bb30:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/scope:Scoper", ptr %t160, i32 0, i32 35
  store ptr %t162, ptr %l113, !tbaa !29
  %t163 = load i32, ptr %l2, !tbaa !23
  %t165 = sext i32 %t163 to i64
  store i64 %t165, ptr %l115, !tbaa !24
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 3
  %t168 = load i32, ptr %t167, !tbaa !23
  %t171 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t166, i32 %t168)
  store { i64, [2 x i64] } %t171, ptr %l118
  br label %bb31
bb31:
  %t172 = load ptr, ptr %l113, !tbaa !29
  %t173 = load i64, ptr %l115, !tbaa !24
  %t174 = load { i64, [2 x i64] }, ptr %l118
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t172, i64 %t173, { i64, [2 x i64] } %t174)
  br label %bb32
bb32:
  %t175 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t176 = load i32, ptr %t175, !range !{i32 0, i32 7}
  %t178 = trunc i64 6 to i32
  %t179 = icmp eq i32 %t176, %t178
  br i1 %t179, label %bb33, label %bb34
bb33:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i32, ptr %l5, !tbaa !23
  %t185 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t181, i32 %t182)
  store i1 %t185, ptr %l124
  br label %bb35
bb34:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb36
bb35:
  %t186 = load i1, ptr %l124, !tbaa !21
  %t187 = xor i1 %t186, true
  store i1 %t187, ptr %l121, !tbaa !21
  br label %bb36
bb36:
  %t189 = load i1, ptr %l121, !tbaa !21
  br i1 %t189, label %bb37, label %bb38
bb37:
  %t190 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 3
  %t191 = load i32, ptr %t190, !tbaa !23
  %t193 = icmp eq i32 %t191, 0
  store i1 %t193, ptr %l126, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb39
bb39:
  %t195 = load i1, ptr %l126, !tbaa !21
  br i1 %t195, label %bb40, label %bb41
bb40:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load i32, ptr %l2, !tbaa !23
  %t199 = sext i32 %t197 to i64
  %t202 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowed(ptr %v0, ptr %t196, i64 %t199)
  store i1 %t202, ptr %l133
  br label %bb42
bb41:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb47
bb42:
  %t203 = load i1, ptr %l133, !tbaa !21
  br i1 %t203, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb46
bb44:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %t204, i32 0, i32 0
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t209 = getelementptr %"compiler/generic:Program", ptr %t207, i32 0, i32 2
  %t210 = load i32, ptr %l5, !tbaa !23
  %t213 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t209, i32 %t210)
  store i1 %t213, ptr %l139
  br label %bb45
bb45:
  %t214 = load i1, ptr %l139, !tbaa !21
  store i1 %t214, ptr %l134, !tbaa !21
  br label %bb46
bb46:
  %t215 = load i1, ptr %l134, !tbaa !21
  store i1 %t215, ptr %l129, !tbaa !21
  br label %bb47
bb47:
  %t216 = load i1, ptr %l129, !tbaa !21
  br i1 %t216, label %bb48, label %bb49
bb48:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t217, i32 0)
  store { i64, [2 x i64] } %t219, ptr %l141
  br label %bb50
bb49:
  br label %bb61
bb50:
  %t220 = load { i64, [2 x i64] }, ptr %l141
  store { i64, [2 x i64] } %t220, ptr %l10
  %t221 = load { i64, [2 x i64] }, ptr %l10
  %t223 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t221)
  store i1 %t223, ptr %l143
  br label %bb51
bb51:
  %t224 = load i1, ptr %l143, !tbaa !21
  br i1 %t224, label %bb52, label %bb53
bb52:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/scope:Scoper", ptr %t225, i32 0, i32 35
  %t228 = load i32, ptr %l2, !tbaa !23
  %t230 = sext i32 %t228 to i64
  %t231 = load { i64, [2 x i64] }, ptr %l10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t227, i64 %t230, { i64, [2 x i64] } %t231)
  br label %bb54
bb53:
  br label %bb60
bb54:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/scope:Scoper", ptr %t235, i32 0, i32 33
  %t238 = getelementptr %"compiler/typed:Plan", ptr %t237, i32 0, i32 1
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !27
  store { i64, ptr } %t239, ptr %l150, !tbaa !27
  %t240 = load i32, ptr %l2, !tbaa !23
  %t242 = sext i32 %t240 to i64
  store i64 %t242, ptr %l152, !tbaa !24
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load { i64, [2 x i64] }, ptr %l10
  %t247 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t243, { i64, [2 x i64] } %t244)
  store { i64, [2 x i64] } %t247, ptr %l155
  br label %bb55
bb55:
  %t248 = load { i64, [2 x i64] }, ptr %l155
  %t249 = load i64, ptr %l152, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr { i64, [2 x i64] }, ptr %t251, i64 %t249
  store { i64, [2 x i64] } %t248, ptr %t252
  %t253 = load ptr, ptr %l0, !tbaa !29
  store ptr %t253, ptr %l156, !tbaa !29
  %t254 = load { i64, [2 x i64] }, ptr %l10
  store { i64, [2 x i64] } %t254, ptr %l157
  %t255 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t255, ptr %l158
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/scope:Scoper", ptr %t256, i32 0, i32 26
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = icmp eq ptr %t259, null
  br i1 %t261, label %bb56, label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_3615f8c81297be95_8f4c76758aae1d39)
  unreachable
bb57:
  br label %bb58
bb58:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/scope:Scoper", ptr %t263, i32 0, i32 26
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t269 = getelementptr %"compiler/typed:Body", ptr %t266, i32 0, i32 3
  %t270 = load i64, ptr %t269, !tbaa !24
  %t271 = load %"compiler/source:Span", ptr %l1
  %t272 = load ptr, ptr %l156, !tbaa !29
  %t273 = load { i64, [2 x i64] }, ptr %l157
  %t274 = load %"compiler/source:Span", ptr %l158
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %t272, { i64, [2 x i64] } %t273, %"compiler/source:Span" %t274, i64 %t270, %"compiler/source:Span" %t271)
  br label %bb59
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t277 = load { i64, [2 x i64] }, ptr %l6
  %t279 = extractvalue { i64, [2 x i64] } %t277, 0
  %t280 = icmp eq i64 %t279, 0
  %t282 = xor i1 %t280, true
  br i1 %t282, label %bb62, label %bb63
bb62:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/scope:Scoper", ptr %t284, i32 0, i32 34
  %t287 = load i32, ptr %l2, !tbaa !23
  %t289 = sext i32 %t287 to i64
  %t290 = load { i64, [2 x i64] }, ptr %l6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t286, i64 %t289, { i64, [2 x i64] } %t290)
  br label %bb64
bb63:
  br label %bb100
bb64:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i32, ptr %l5, !tbaa !23
  %t298 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t294, i32 %t295)
  store i1 %t298, ptr %l177
  br label %bb65
bb65:
  %t299 = load i1, ptr %l177, !tbaa !21
  %t300 = xor i1 %t299, true
  br i1 %t300, label %bb66, label %bb67
bb66:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/scope:Scoper", ptr %t302, i32 0, i32 35
  %t305 = load i32, ptr %l2, !tbaa !23
  %t307 = sext i32 %t305 to i64
  %t308 = load { i64, [2 x i64] }, ptr %l6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t304, i64 %t307, { i64, [2 x i64] } %t308)
  br label %bb68
bb67:
  br label %bb82
bb68:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/scope:Scoper", ptr %t312, i32 0, i32 33
  %t315 = getelementptr %"compiler/typed:Plan", ptr %t314, i32 0, i32 1
  %t316 = load { i64, ptr }, ptr %t315, !tbaa !27
  store { i64, ptr } %t316, ptr %l185, !tbaa !27
  %t317 = load i32, ptr %l2, !tbaa !23
  %t319 = sext i32 %t317 to i64
  store i64 %t319, ptr %l187, !tbaa !24
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load { i64, [2 x i64] }, ptr %l6
  %t324 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t320, { i64, [2 x i64] } %t321)
  store { i64, [2 x i64] } %t324, ptr %l190
  br label %bb69
bb69:
  %t325 = load { i64, [2 x i64] }, ptr %l190
  %t326 = load i64, ptr %l187, !tbaa !24
  %t327 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr { i64, [2 x i64] }, ptr %t328, i64 %t326
  store { i64, [2 x i64] } %t325, ptr %t329
  %t330 = load ptr, ptr %l0, !tbaa !29
  store ptr %t330, ptr %l191, !tbaa !29
  %t331 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t331, ptr %l192
  %t332 = load ptr, ptr %l3, !tbaa !29
  %t334 = icmp eq ptr %t332, null
  br i1 %t334, label %bb70, label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_8512c8e5a34c1680_11a04901f462dc84)
  unreachable
bb71:
  br label %bb72
bb72:
  %t336 = load ptr, ptr %l3, !tbaa !29
  %t338 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t336)
  store %"compiler/source:Span" %t338, ptr %l196
  br label %bb73
bb73:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/scope:Scoper", ptr %t339, i32 0, i32 26
  %t342 = load ptr, ptr %t341, !tbaa !29
  %t344 = icmp eq ptr %t342, null
  br i1 %t344, label %bb74, label %bb75
bb74:
  call void @__olang_check_failed(ptr @olang_loc_8512c8e5a34c1680_11a04901f462dc84)
  unreachable
bb75:
  br label %bb76
bb76:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/scope:Scoper", ptr %t346, i32 0, i32 26
  %t349 = load ptr, ptr %t348, !tbaa !29
  %t352 = getelementptr %"compiler/typed:Body", ptr %t349, i32 0, i32 3
  %t353 = load i64, ptr %t352, !tbaa !24
  store i64 %t353, ptr %l203, !tbaa !24
  %t354 = load ptr, ptr %l3, !tbaa !29
  %t356 = icmp eq ptr %t354, null
  br i1 %t356, label %bb77, label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_8512c8e5a34c1680_11a04901f462dc84)
  unreachable
bb78:
  br label %bb79
bb79:
  %t358 = load ptr, ptr %l3, !tbaa !29
  %t360 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t358)
  store %"compiler/source:Span" %t360, ptr %l207
  br label %bb80
bb80:
  %t361 = load ptr, ptr %l191, !tbaa !29
  %t362 = load { i64, [2 x i64] }, ptr %l192
  %t363 = load %"compiler/source:Span", ptr %l196
  %t364 = load i64, ptr %l203, !tbaa !24
  %t365 = load %"compiler/source:Span", ptr %l207
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %t361, { i64, [2 x i64] } %t362, %"compiler/source:Span" %t363, i64 %t364, %"compiler/source:Span" %t365)
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load ptr, ptr %l3, !tbaa !29
  %t368 = load { i64, [2 x i64] }, ptr %l6
  %t372 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t366, ptr %t367, { i64, [2 x i64] } %t368)
  store %"compiler/scope:Val" %t372, ptr %l211
  br label %bb83
bb83:
  %t373 = load %"compiler/scope:Val", ptr %l211
  store %"compiler/scope:Val" %t373, ptr %l11
  %t374 = load ptr, ptr %l0, !tbaa !29
  store ptr %t374, ptr %l212, !tbaa !29
  %t375 = load i32, ptr %l2, !tbaa !23
  store i32 %t375, ptr %l213, !tbaa !23
  %t376 = load ptr, ptr %l3, !tbaa !29
  %t378 = icmp eq ptr %t376, null
  br i1 %t378, label %bb84, label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_271e9ecf5549331f_fa1bdfb41feb4a53)
  unreachable
bb85:
  br label %bb86
bb86:
  %t380 = load ptr, ptr %l3, !tbaa !29
  %t381 = load ptr, ptr %l212, !tbaa !29
  %t382 = load i32, ptr %l213, !tbaa !23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindLocal(ptr %v0, ptr %v1, ptr %t381, i32 %t382, ptr %t380)
  br label %bb87
bb87:
  %t384 = getelementptr %"compiler/scope:Val", ptr %l11, i32 0, i32 0
  %t385 = load i32, ptr %t384, !range !{i32 0, i32 5}
  %t387 = trunc i64 3 to i32
  %t388 = icmp eq i32 %t385, %t387
  br i1 %t388, label %bb88, label %bb89
bb88:
  %t390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t390, ptr %l219, !tbaa !29
  %t391 = getelementptr %"compiler/scope:Val", ptr %l11, i32 0, i32 1
  %t392 = load { i64, [2 x i64] }, ptr %t391
  store { i64, [2 x i64] } %t392, ptr %l220
  %t393 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t393, ptr %l221
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load i32, ptr %l5, !tbaa !23
  %t398 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t394, i32 %t395)
  store i1 %t398, ptr %l224
  br label %bb90
bb89:
  br label %bb99
bb90:
  %t399 = load i1, ptr %l224, !tbaa !21
  br i1 %t399, label %bb91, label %bb92
bb91:
  store i1 true, ptr %l225, !tbaa !21
  br label %bb94
bb92:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load i32, ptr %l5, !tbaa !23
  %t404 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t400, i32 %t401)
  store i1 %t404, ptr %l228
  br label %bb93
bb93:
  %t405 = load i1, ptr %l228, !tbaa !21
  store i1 %t405, ptr %l225, !tbaa !21
  br label %bb94
bb94:
  %t406 = load ptr, ptr %l3, !tbaa !29
  %t408 = icmp eq ptr %t406, null
  br i1 %t408, label %bb95, label %bb96
bb95:
  call void @__olang_check_failed(ptr @olang_loc_333095c8aa3d0ed2_eefb3089191ecb2e)
  unreachable
bb96:
  br label %bb97
bb97:
  %t410 = load ptr, ptr %l3, !tbaa !29
  %t411 = load i64, ptr @G_2ecompiler_2fscope_2eFitLocal, !tbaa !24
  %t412 = load ptr, ptr %l219, !tbaa !29
  %t413 = load { i64, [2 x i64] }, ptr %l220
  %t414 = load { i64, [2 x i64] }, ptr %l221
  %t415 = load i1, ptr %l225, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t412, { i64, [2 x i64] } %t413, { i64, [2 x i64] } %t414, i1 %t415, ptr %t410, i64 %t411)
  br label %bb98
bb98:
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb100:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t419 = load i32, ptr %l5, !tbaa !23
  %t422 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t418, i32 %t419)
  store i1 %t422, ptr %l235
  br label %bb101
bb101:
  %t423 = load i1, ptr %l235, !tbaa !21
  %t424 = xor i1 %t423, true
  br i1 %t424, label %bb102, label %bb103
bb102:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = load ptr, ptr %l3, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t428
  %t429 = getelementptr { i64, [2 x i64] }, ptr %t428, i32 0, i32 0
  store i64 0, ptr %t429
  %t430 = load { i64, [2 x i64] }, ptr %t428
  %t434 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t426, ptr %t427, { i64, [2 x i64] } %t430)
  store %"compiler/scope:Val" %t434, ptr %l240
  br label %bb104
bb103:
  br label %bb105
bb104:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb105:
  %t435 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t436 = load i32, ptr %t435, !range !{i32 0, i32 7}
  %t438 = trunc i64 3 to i32
  %t439 = icmp eq i32 %t436, %t438
  br i1 %t439, label %bb106, label %bb107
bb106:
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t443 = getelementptr %"compiler/scope:Scoper", ptr %t441, i32 0, i32 0
  %t444 = load ptr, ptr %t443, !tbaa !29
  %t446 = getelementptr %"compiler/generic:Program", ptr %t444, i32 0, i32 2
  %t447 = load i32, ptr %l5, !tbaa !23
  %t450 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t446, i32 %t447)
  store i32 %t450, ptr %l248
  br label %bb108
bb107:
  store i1 false, ptr %l243, !tbaa !21
  br label %bb109
bb108:
  %t451 = load i32, ptr %l248, !range !{i32 0, i32 33}
  %t453 = trunc i64 22 to i32
  %t454 = icmp eq i32 %t451, %t453
  store i1 %t454, ptr %l243, !tbaa !21
  br label %bb109
bb109:
  %t456 = load i1, ptr %l243, !tbaa !21
  br i1 %t456, label %bb110, label %bb111
bb110:
  %t457 = load ptr, ptr %l3, !tbaa !29
  %t459 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %s0, ptr %t457)
  store ptr %t459, ptr %l253
  br label %bb112
bb111:
  store i1 false, ptr %l251, !tbaa !21
  br label %bb113
bb112:
  %t460 = load ptr, ptr %l253, !tbaa !29
  %t461 = icmp eq ptr %t460, null
  %t463 = xor i1 %t461, true
  store i1 %t463, ptr %l251, !tbaa !21
  br label %bb113
bb113:
  %t465 = load i1, ptr %l251, !tbaa !21
  store i1 %t465, ptr %l12, !tbaa !21
  %t466 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t467 = load i32, ptr %t466, !range !{i32 0, i32 7}
  %t469 = trunc i64 2 to i32
  %t470 = icmp eq i32 %t467, %t469
  br i1 %t470, label %bb114, label %bb115
bb114:
  store i1 true, ptr %l258, !tbaa !21
  br label %bb116
bb115:
  %t472 = load i1, ptr %l12, !tbaa !21
  store i1 %t472, ptr %l258, !tbaa !21
  br label %bb116
bb116:
  %t474 = load i1, ptr %l258, !tbaa !21
  br i1 %t474, label %bb117, label %bb118
bb117:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t476 = load ptr, ptr %l3, !tbaa !29
  %t479 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t475, ptr %t476)
  store i1 %t479, ptr %l263
  br label %bb119
bb118:
  store i1 false, ptr %l260, !tbaa !21
  br label %bb120
bb119:
  %t480 = load i1, ptr %l263, !tbaa !21
  store i1 %t480, ptr %l260, !tbaa !21
  br label %bb120
bb120:
  %t481 = load i1, ptr %l260, !tbaa !21
  br i1 %t481, label %bb121, label %bb122
bb121:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/scope:Scoper", ptr %t482, i32 0, i32 43
  store ptr %t484, ptr %l265, !tbaa !29
  %t485 = load i32, ptr %l2, !tbaa !23
  %t487 = sext i32 %t485 to i64
  store i64 %t487, ptr %l267, !tbaa !24
  %t488 = load ptr, ptr %l3, !tbaa !29
  %t490 = icmp eq ptr %t488, null
  br i1 %t490, label %bb123, label %bb124
bb122:
  br label %bb128
bb123:
  call void @__olang_check_failed(ptr @olang_loc_eb3169e1e84098f9_8a2d6a085cc5aad5)
  unreachable
bb124:
  br label %bb125
bb125:
  %t492 = load ptr, ptr %l3, !tbaa !29
  %t493 = load ptr, ptr %l265, !tbaa !29
  %t494 = load i64, ptr %l267, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_He8fa2eab054d0b98ccbd3d6295fac885(ptr %v0, ptr %v1, ptr %t493, i64 %t494, ptr %t492)
  br label %bb126
bb126:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/scope:Scoper", ptr %t496, i32 0, i32 34
  %t499 = load i32, ptr %l2, !tbaa !23
  %t501 = sext i32 %t499 to i64
  store { i64, [2 x i64] } zeroinitializer, ptr %t502
  %t503 = getelementptr { i64, [2 x i64] }, ptr %t502, i32 0, i32 0
  store i64 0, ptr %t503
  %t504 = load { i64, [2 x i64] }, ptr %t502
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t498, i64 %t501, { i64, [2 x i64] } %t504)
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb128:
  %t508 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t509 = load i32, ptr %t508, !range !{i32 0, i32 7}
  %t511 = trunc i64 3 to i32
  %t512 = icmp eq i32 %t509, %t511
  br i1 %t512, label %bb129, label %bb130
bb129:
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load i32, ptr %l5, !tbaa !23
  %t518 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t514, i32 %t515)
  store i1 %t518, ptr %l281
  br label %bb131
bb130:
  store i1 false, ptr %l278, !tbaa !21
  br label %bb132
bb131:
  %t519 = load i1, ptr %l281, !tbaa !21
  store i1 %t519, ptr %l278, !tbaa !21
  br label %bb132
bb132:
  %t520 = load i1, ptr %l278, !tbaa !21
  br i1 %t520, label %bb133, label %bb134
bb133:
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t522 = load ptr, ptr %l3, !tbaa !29
  %t525 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v0, ptr %t521, ptr %t522)
  store ptr %t525, ptr %l284
  br label %bb135
bb134:
  br label %bb167
bb135:
  %t526 = load ptr, ptr %l284, !tbaa !29
  store ptr %t526, ptr %l13, !tbaa !29
  %t527 = load ptr, ptr %l13, !tbaa !29
  store ptr %t527, ptr %l285, !tbaa !29
  store i1 false, ptr %l286, !tbaa !21
  %t528 = load ptr, ptr %l285, !tbaa !29
  %t529 = icmp ne ptr %t528, null
  br i1 %t529, label %bb136, label %bb137
bb136:
  %t531 = load ptr, ptr %l285, !tbaa !29
  %t532 = load i64, ptr %t531, !range !{i64 0, i64 18}
  %t534 = icmp eq i64 %t532, 5
  store i1 %t534, ptr %l286, !tbaa !21
  br label %bb137
bb137:
  %t535 = load i1, ptr %l286, !tbaa !21
  br i1 %t535, label %bb138, label %bb139
bb138:
  %t536 = load ptr, ptr %l13, !tbaa !29
  %t538 = getelementptr { i64, [5 x i64] }, ptr %t536, i32 0, i32 1
  %t539 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t538, i32 0, i32 2
  %t540 = load ptr, ptr %t539
  store ptr %t540, ptr %l14, !tbaa !29
  br label %bb140
bb139:
  br label %bb161
bb140:
  %t542 = load ptr, ptr %l0, !tbaa !29
  store ptr %t542, ptr %l291, !tbaa !29
  %t543 = load ptr, ptr %l14, !tbaa !29
  %t545 = getelementptr %"compiler/typed:Promote", ptr %t543, i32 0, i32 0
  %t546 = load ptr, ptr %t545, !tbaa !29
  %t548 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %t546)
  store i32 %t548, ptr %l294
  br label %bb141
bb141:
  %t549 = load ptr, ptr %l291, !tbaa !29
  %t550 = load i32, ptr %l294, !tbaa !23
  %t551 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %t549, i32 %t550)
  store i1 %t551, ptr %l295
  br label %bb142
bb142:
  %t552 = load i1, ptr %l295, !tbaa !21
  br i1 %t552, label %bb143, label %bb144
bb143:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = load ptr, ptr %l14, !tbaa !29
  %t556 = getelementptr %"compiler/typed:Promote", ptr %t554, i32 0, i32 0
  %t557 = load ptr, ptr %t556, !tbaa !29
  %t561 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v0, ptr %t553, ptr %t557)
  store i1 %t561, ptr %l301
  br label %bb145
bb144:
  store i1 false, ptr %l296, !tbaa !21
  br label %bb146
bb145:
  %t562 = load i1, ptr %l301, !tbaa !21
  store i1 %t562, ptr %l296, !tbaa !21
  br label %bb146
bb146:
  %t563 = load i1, ptr %l296, !tbaa !21
  br i1 %t563, label %bb147, label %bb148
bb147:
  %t564 = load ptr, ptr %l0, !tbaa !29
  %t565 = load ptr, ptr %l14, !tbaa !29
  %t567 = getelementptr %"compiler/typed:Promote", ptr %t565, i32 0, i32 0
  %t568 = load ptr, ptr %t567, !tbaa !29
  %t571 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLands(ptr %v0, ptr %v0, ptr %t564, ptr %t568)
  store i1 %t571, ptr %l306
  br label %bb149
bb148:
  store i1 false, ptr %l302, !tbaa !21
  br label %bb150
bb149:
  %t572 = load i1, ptr %l306, !tbaa !21
  store i1 %t572, ptr %l302, !tbaa !21
  br label %bb150
bb150:
  %t573 = load i1, ptr %l302, !tbaa !21
  br i1 %t573, label %bb151, label %bb152
bb151:
  %t574 = load ptr, ptr %l0, !tbaa !29
  store ptr %t574, ptr %l307, !tbaa !29
  %t575 = load ptr, ptr %l14, !tbaa !29
  %t577 = getelementptr %"compiler/typed:Promote", ptr %t575, i32 0, i32 1
  %t578 = load i32, ptr %t577, !tbaa !23
  store i32 %t578, ptr %l309, !tbaa !23
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 3
  %t581 = load i32, ptr %t580, !tbaa !23
  %t584 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t579, i32 %t581)
  store { i64, [2 x i64] } %t584, ptr %l312
  br label %bb153
bb152:
  br label %bb160
bb153:
  %t585 = load ptr, ptr %l14, !tbaa !29
  %t587 = getelementptr %"compiler/typed:Promote", ptr %t585, i32 0, i32 0
  %t588 = load ptr, ptr %t587, !tbaa !29
  %t590 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %t588)
  store %"compiler/source:Span" %t590, ptr %l315
  br label %bb154
bb154:
  %t591 = load ptr, ptr %l307, !tbaa !29
  %t592 = load i32, ptr %l309, !tbaa !23
  %t593 = load { i64, [2 x i64] }, ptr %l312
  %t594 = load %"compiler/source:Span", ptr %l315
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %t591, i32 %t592, { i64, [2 x i64] } %t593, %"compiler/source:Span" %t594)
  br label %bb155
bb155:
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t597 = getelementptr %"compiler/scope:Scoper", ptr %t595, i32 0, i32 128
  store i1 true, ptr %t597, !tbaa !21
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t599 = load ptr, ptr %l14, !tbaa !29
  %t601 = getelementptr %"compiler/typed:Promote", ptr %t599, i32 0, i32 0
  %t602 = load ptr, ptr %t601, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t604
  %t605 = getelementptr { i64, [2 x i64] }, ptr %t604, i32 0, i32 0
  store i64 0, ptr %t605
  %t606 = load { i64, [2 x i64] }, ptr %t604
  %t610 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v0, ptr %t598, ptr %t602, { i64, [2 x i64] } %t606)
  store %"compiler/scope:Val" %t610, ptr %l322
  br label %bb156
bb156:
  %t611 = load %"compiler/scope:Val", ptr %l322
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t614 = getelementptr %"compiler/scope:Scoper", ptr %t612, i32 0, i32 128
  store i1 false, ptr %t614, !tbaa !21
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t617 = getelementptr %"compiler/scope:Scoper", ptr %t615, i32 0, i32 34
  store ptr %t617, ptr %l325, !tbaa !29
  %t618 = load i32, ptr %l2, !tbaa !23
  %t620 = sext i32 %t618 to i64
  store i64 %t620, ptr %l327, !tbaa !24
  %t621 = load ptr, ptr %l0, !tbaa !29
  store ptr %t621, ptr %l328, !tbaa !29
  store %"compiler/scope:Val" %t611, ptr %l329
  %t623 = load ptr, ptr %l0, !tbaa !29
  %t624 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 3
  %t625 = load i32, ptr %t624, !tbaa !23
  %t628 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t623, i32 %t625)
  store { i64, [2 x i64] } %t628, ptr %l332
  br label %bb157
bb157:
  %t629 = load ptr, ptr %l328, !tbaa !29
  %t630 = load %"compiler/scope:Val", ptr %l329
  %t631 = load { i64, [2 x i64] }, ptr %l332
  %t632 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %t629, %"compiler/scope:Val" %t630, { i64, [2 x i64] } %t631)
  store { i64, [2 x i64] } %t632, ptr %l333
  br label %bb158
bb158:
  %t633 = load ptr, ptr %l325, !tbaa !29
  %t634 = load i64, ptr %l327, !tbaa !24
  %t635 = load { i64, [2 x i64] }, ptr %l333
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t633, i64 %t634, { i64, [2 x i64] } %t635)
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_9577440ef01a2a6b_ad29297969b69207)
  unreachable
bb166:
  br label %bb167
bb167:
  %t636 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t637 = load i32, ptr %t636, !range !{i32 0, i32 7}
  %t639 = trunc i64 3 to i32
  %t640 = icmp eq i32 %t637, %t639
  br i1 %t640, label %bb168, label %bb169
bb168:
  %t642 = load ptr, ptr %l0, !tbaa !29
  store ptr %t642, ptr %l337, !tbaa !29
  %t643 = load ptr, ptr %l3, !tbaa !29
  %t645 = icmp eq ptr %t643, null
  br i1 %t645, label %bb170, label %bb171
bb169:
  store i1 false, ptr %l336, !tbaa !21
  br label %bb174
bb170:
  call void @__olang_check_failed(ptr @olang_loc_24ce0aa2bd73a813_181dbbf328082c5f)
  unreachable
bb171:
  br label %bb172
bb172:
  %t647 = load ptr, ptr %l3, !tbaa !29
  %t648 = load ptr, ptr %l337, !tbaa !29
  %t650 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %v1, ptr %t648, ptr %t647)
  store i1 %t650, ptr %l341
  br label %bb173
bb173:
  %t651 = load i1, ptr %l341, !tbaa !21
  store i1 %t651, ptr %l336, !tbaa !21
  br label %bb174
bb174:
  %t652 = load i1, ptr %l336, !tbaa !21
  br i1 %t652, label %bb175, label %bb176
bb175:
  %t653 = load ptr, ptr %l0, !tbaa !29
  store ptr %t653, ptr %l342, !tbaa !29
  %t654 = load ptr, ptr %l3, !tbaa !29
  store ptr %t654, ptr %l343, !tbaa !29
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t656 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 3
  %t657 = load i32, ptr %t656, !tbaa !23
  %t660 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t655, i32 %t657)
  store { i64, [2 x i64] } %t660, ptr %l346
  br label %bb177
bb176:
  br label %bb180
bb177:
  %t661 = load ptr, ptr %l342, !tbaa !29
  %t662 = load ptr, ptr %l343, !tbaa !29
  %t663 = load { i64, [2 x i64] }, ptr %l346
  %t664 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t661, ptr %t662, { i64, [2 x i64] } %t663)
  store %"compiler/scope:Val" %t664, ptr %l347
  br label %bb178
bb178:
  %t665 = load ptr, ptr %l0, !tbaa !29
  %t667 = getelementptr %"compiler/scope:Scoper", ptr %t665, i32 0, i32 34
  %t668 = load i32, ptr %l2, !tbaa !23
  %t670 = sext i32 %t668 to i64
  store { i64, [2 x i64] } zeroinitializer, ptr %t671
  %t672 = getelementptr { i64, [2 x i64] }, ptr %t671, i32 0, i32 0
  store i64 3, ptr %t672
  %t673 = load { i64, [2 x i64] }, ptr %t671
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t667, i64 %t670, { i64, [2 x i64] } %t673)
  br label %bb179
bb179:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb180:
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t678 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 5
  %t679 = load { i64, [1 x i64] }, ptr %t678
  %t680 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 3
  %t681 = load i32, ptr %t680, !tbaa !23
  %t685 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emarkTerm(ptr %v0, ptr %t677, { i64, [1 x i64] } %t679, i32 %t681)
  store { i64, [2 x i64] } %t685, ptr %l356
  br label %bb181
bb181:
  %t686 = load { i64, [2 x i64] }, ptr %l356
  store { i64, [2 x i64] } %t686, ptr %l16
  %t687 = load { i64, [2 x i64] }, ptr %l9
  %t689 = extractvalue { i64, [2 x i64] } %t687, 0
  %t690 = icmp eq i64 %t689, 0
  %t692 = xor i1 %t690, true
  br i1 %t692, label %bb182, label %bb183
bb182:
  %t694 = load { i64, [2 x i64] }, ptr %l16
  %t696 = extractvalue { i64, [2 x i64] } %t694, 0
  %t697 = icmp eq i64 %t696, 0
  %t699 = xor i1 %t697, true
  store i1 %t699, ptr %l360, !tbaa !21
  br label %bb184
bb183:
  store i1 false, ptr %l360, !tbaa !21
  br label %bb184
bb184:
  %t701 = load i1, ptr %l360, !tbaa !21
  br i1 %t701, label %bb185, label %bb186
bb185:
  %t702 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t702, ptr %l16
  br label %bb187
bb186:
  br label %bb187
bb187:
  %t704 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t705 = load i32, ptr %t704, !range !{i32 0, i32 7}
  %t707 = trunc i64 1 to i32
  %t708 = icmp eq i32 %t705, %t707
  br i1 %t708, label %bb188, label %bb189
bb188:
  %t710 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 5
  %t711 = load { i64, [1 x i64] }, ptr %t710
  %t713 = extractvalue { i64, [1 x i64] } %t711, 0
  %t714 = icmp eq i64 %t713, 1
  store i1 %t714, ptr %l367, !tbaa !21
  br label %bb190
bb189:
  store i1 false, ptr %l367, !tbaa !21
  br label %bb190
bb190:
  %t716 = load i1, ptr %l367, !tbaa !21
  br i1 %t716, label %bb191, label %bb192
bb191:
  store { i64, [2 x i64] } zeroinitializer, ptr %t717
  %t718 = getelementptr { i64, [2 x i64] }, ptr %t717, i32 0, i32 0
  store i64 0, ptr %t718
  %t719 = load { i64, [2 x i64] }, ptr %t717
  store { i64, [2 x i64] } %t719, ptr %l16
  br label %bb193
bb192:
  br label %bb193
bb193:
  %t721 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 5
  %t722 = load { i64, [1 x i64] }, ptr %t721
  store { i64, [1 x i64] } %t722, ptr %l17
  %t724 = load { i64, [1 x i64] }, ptr %l17
  %t726 = extractvalue { i64, [1 x i64] } %t724, 0
  %t727 = icmp eq i64 %t726, 2
  br i1 %t727, label %bb194, label %bb195
bb194:
  %t729 = getelementptr { i64, [1 x i64] }, ptr %l17, i32 0, i32 1
  %t730 = getelementptr { i32 }, ptr %t729, i32 0, i32 0
  %t731 = load i32, ptr %t730
  store i32 %t731, ptr %l18, !tbaa !23
  br label %bb196
bb195:
  br label %bb205
bb196:
  %t733 = load { i64, [2 x i64] }, ptr %l16
  %t735 = extractvalue { i64, [2 x i64] } %t733, 0
  %t736 = icmp eq i64 %t735, 5
  br i1 %t736, label %bb197, label %bb198
bb197:
  %t738 = getelementptr { i64, [2 x i64] }, ptr %l16, i32 0, i32 1
  %t739 = getelementptr { i64 }, ptr %t738, i32 0, i32 0
  %t740 = load i64, ptr %t739
  store i64 %t740, ptr %l19, !tbaa !24
  %t742 = load ptr, ptr %l0, !tbaa !29
  %t744 = getelementptr %"compiler/scope:Scoper", ptr %t742, i32 0, i32 28
  %t745 = load i1, ptr %t744, !tbaa !21
  br i1 %t745, label %bb199, label %bb200
bb198:
  br label %bb204
bb199:
  %t747 = load ptr, ptr %l0, !tbaa !29
  %t748 = load i32, ptr %l18, !tbaa !23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunknownMark(ptr %v0, ptr %t747, i32 %t748)
  br label %bb201
bb200:
  br label %bb202
bb201:
  br label %bb202
bb202:
  %t751 = load ptr, ptr %l0, !tbaa !29
  %t752 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 3
  %t753 = load i32, ptr %t752, !tbaa !23
  %t756 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t751, i32 %t753)
  store { i64, [2 x i64] } %t756, ptr %l384
  br label %bb203
bb203:
  %t757 = load { i64, [2 x i64] }, ptr %l384
  store { i64, [2 x i64] } %t757, ptr %l16
  br label %bb204
bb204:
  br label %bb210
bb205:
  br i1 true, label %bb206, label %bb207
bb206:
  br label %bb208
bb207:
  br label %bb209
bb208:
  br label %bb210
bb209:
  call void @__olang_check_failed(ptr @olang_loc_4e3f45266a1861e5_407b603c1e8329c9)
  unreachable
bb210:
  %t758 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t759 = load i32, ptr %t758, !range !{i32 0, i32 7}
  %t761 = trunc i64 6 to i32
  %t762 = icmp eq i32 %t759, %t761
  br i1 %t762, label %bb211, label %bb212
bb211:
  %t764 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 5
  %t765 = load { i64, [1 x i64] }, ptr %t764
  store { i64, [1 x i64] } %t765, ptr %l20
  %t767 = load { i64, [1 x i64] }, ptr %l20
  %t769 = extractvalue { i64, [1 x i64] } %t767, 0
  %t770 = icmp eq i64 %t769, 2
  br i1 %t770, label %bb213, label %bb214
bb212:
  br label %bb226
bb213:
  %t772 = getelementptr { i64, [1 x i64] }, ptr %l20, i32 0, i32 1
  %t773 = getelementptr { i32 }, ptr %t772, i32 0, i32 0
  %t774 = load i32, ptr %t773
  store i32 %t774, ptr %l21, !tbaa !23
  br label %bb215
bb214:
  br label %bb219
bb215:
  %t776 = load ptr, ptr %l0, !tbaa !29
  %t777 = load i64, ptr @G_2ecompiler_2fscope_2eWhyField, !tbaa !24
  %t780 = getelementptr %"compiler/scope:Scoper", ptr %t776, i32 0, i32 125
  store i64 %t777, ptr %t780, !tbaa !24
  %t781 = load ptr, ptr %l0, !tbaa !29
  store ptr %t781, ptr %l393, !tbaa !29
  %t782 = load ptr, ptr %l0, !tbaa !29
  %t783 = load i32, ptr %l21, !tbaa !23
  %t786 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhereLives(ptr %v0, ptr %t782, i32 %t783)
  store { i64, [2 x i64] } %t786, ptr %l396
  br label %bb216
bb216:
  %t787 = load ptr, ptr %l0, !tbaa !29
  %t789 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t787, i32 0)
  store { i64, [2 x i64] } %t789, ptr %l398
  br label %bb217
bb217:
  %t790 = load ptr, ptr %l393, !tbaa !29
  %t791 = load { i64, [2 x i64] }, ptr %l396
  %t792 = load { i64, [2 x i64] }, ptr %l398
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %t790, { i64, [2 x i64] } %t791, { i64, [2 x i64] } %t792, i1 false)
  br label %bb218
bb218:
  %t793 = load ptr, ptr %l0, !tbaa !29
  %t795 = getelementptr %"compiler/scope:Scoper", ptr %t793, i32 0, i32 125
  store i64 0, ptr %t795, !tbaa !24
  br label %bb225
bb219:
  br i1 true, label %bb220, label %bb221
bb220:
  br label %bb222
bb221:
  br label %bb224
bb222:
  %t796 = load ptr, ptr %l0, !tbaa !29
  %t798 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t796, i32 0)
  store { i64, [2 x i64] } %t798, ptr %l401
  br label %bb223
bb223:
  %t799 = load { i64, [2 x i64] }, ptr %l401
  store { i64, [2 x i64] } %t799, ptr %l16
  br label %bb225
bb224:
  call void @__olang_check_failed(ptr @olang_loc_f93cd3b3e6e55ab4_45fd206fd1f47ef8)
  unreachable
bb225:
  br label %bb226
bb226:
  %t800 = load ptr, ptr %l0, !tbaa !29
  %t801 = load i32, ptr %l5, !tbaa !23
  %t804 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t800, i32 %t801)
  store i1 %t804, ptr %l404
  br label %bb227
bb227:
  %t805 = load i1, ptr %l404, !tbaa !21
  br i1 %t805, label %bb228, label %bb229
bb228:
  %t806 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t807 = load i32, ptr %t806, !range !{i32 0, i32 7}
  %t809 = trunc i64 3 to i32
  %t810 = icmp eq i32 %t807, %t809
  %t812 = xor i1 %t810, true
  store i1 %t812, ptr %l405, !tbaa !21
  br label %bb230
bb229:
  store i1 false, ptr %l405, !tbaa !21
  br label %bb230
bb230:
  %t814 = load i1, ptr %l405, !tbaa !21
  br i1 %t814, label %bb231, label %bb232
bb231:
  %t815 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t816 = load i32, ptr %t815, !range !{i32 0, i32 7}
  %t818 = trunc i64 2 to i32
  %t819 = icmp eq i32 %t816, %t818
  %t821 = xor i1 %t819, true
  store i1 %t821, ptr %l409, !tbaa !21
  br label %bb233
bb232:
  store i1 false, ptr %l409, !tbaa !21
  br label %bb233
bb233:
  %t823 = load i1, ptr %l409, !tbaa !21
  br i1 %t823, label %bb234, label %bb235
bb234:
  %t824 = load ptr, ptr %l0, !tbaa !29
  store ptr %t824, ptr %l413, !tbaa !29
  %t825 = load ptr, ptr %l3, !tbaa !29
  %t827 = icmp eq ptr %t825, null
  br i1 %t827, label %bb236, label %bb237
bb235:
  br label %bb240
bb236:
  call void @__olang_check_failed(ptr @olang_loc_cdf46faaecc001bd_4d9c5c30fc95ab59)
  unreachable
bb237:
  br label %bb238
bb238:
  %t829 = load ptr, ptr %l3, !tbaa !29
  %t830 = load ptr, ptr %l413, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitBorrow(ptr %v0, ptr %v1, ptr %t830, ptr %t829)
  br label %bb239
bb239:
  br label %bb240
bb240:
  %t832 = load ptr, ptr %l0, !tbaa !29
  %t833 = load i32, ptr %l5, !tbaa !23
  %t836 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t832, i32 %t833)
  store i1 %t836, ptr %l419
  br label %bb241
bb241:
  %t837 = load i1, ptr %l419, !tbaa !21
  br i1 %t837, label %bb242, label %bb243
bb242:
  %t838 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t839 = load i32, ptr %t838, !range !{i32 0, i32 7}
  %t841 = trunc i64 3 to i32
  %t842 = icmp eq i32 %t839, %t841
  store i1 %t842, ptr %l420, !tbaa !21
  br label %bb244
bb243:
  store i1 false, ptr %l420, !tbaa !21
  br label %bb244
bb244:
  %t844 = load i1, ptr %l420, !tbaa !21
  br i1 %t844, label %bb245, label %bb246
bb245:
  %t845 = load ptr, ptr %l3, !tbaa !29
  store ptr %t845, ptr %l423, !tbaa !29
  store i1 false, ptr %l424, !tbaa !21
  %t846 = load ptr, ptr %l423, !tbaa !29
  %t847 = icmp ne ptr %t846, null
  br i1 %t847, label %bb247, label %bb248
bb246:
  br label %bb268
bb247:
  %t849 = load ptr, ptr %l423, !tbaa !29
  %t850 = load i64, ptr %t849, !range !{i64 0, i64 18}
  %t852 = icmp eq i64 %t850, 3
  store i1 %t852, ptr %l424, !tbaa !21
  br label %bb248
bb248:
  %t853 = load i1, ptr %l424, !tbaa !21
  br i1 %t853, label %bb249, label %bb250
bb249:
  %t854 = load ptr, ptr %l3, !tbaa !29
  %t856 = getelementptr { i64, [5 x i64] }, ptr %t854, i32 0, i32 1
  %t857 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t856, i32 0, i32 2
  %t858 = load ptr, ptr %t857
  store ptr %t858, ptr %l22, !tbaa !29
  br label %bb251
bb250:
  br label %bb262
bb251:
  %t860 = load ptr, ptr %l0, !tbaa !29
  %t861 = load ptr, ptr %l22, !tbaa !29
  %t864 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %v1, ptr %t860, ptr %t861)
  store i1 %t864, ptr %l431
  br label %bb252
bb252:
  %t865 = load i1, ptr %l431, !tbaa !21
  br i1 %t865, label %bb253, label %bb254
bb253:
  store i1 true, ptr %l432, !tbaa !21
  br label %bb256
bb254:
  %t866 = load ptr, ptr %l0, !tbaa !29
  %t867 = load ptr, ptr %l22, !tbaa !29
  %t870 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitHeld(ptr %v0, ptr %v1, ptr %t866, ptr %t867)
  store i1 %t870, ptr %l435
  br label %bb255
bb255:
  %t871 = load i1, ptr %l435, !tbaa !21
  store i1 %t871, ptr %l432, !tbaa !21
  br label %bb256
bb256:
  %t872 = load i1, ptr %l432, !tbaa !21
  br i1 %t872, label %bb257, label %bb258
bb257:
  %t873 = load ptr, ptr %l0, !tbaa !29
  %t875 = getelementptr %"compiler/scope:Scoper", ptr %t873, i32 0, i32 44
  store ptr %t875, ptr %l437, !tbaa !29
  %t876 = load i32, ptr %l2, !tbaa !23
  %t878 = sext i32 %t876 to i64
  store i64 %t878, ptr %l439, !tbaa !24
  %t879 = load ptr, ptr %l0, !tbaa !29
  %t880 = load ptr, ptr %l22, !tbaa !29
  %t883 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t879, ptr %t880)
  store { i64, [2 x i64] } %t883, ptr %l442
  br label %bb259
bb258:
  br label %bb261
bb259:
  %t884 = load ptr, ptr %l437, !tbaa !29
  %t885 = load i64, ptr %l439, !tbaa !24
  %t886 = load { i64, [2 x i64] }, ptr %l442
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %t884, i64 %t885, { i64, [2 x i64] } %t886)
  br label %bb260
bb260:
  br label %bb261
bb261:
  br label %bb267
bb262:
  br i1 true, label %bb263, label %bb264
bb263:
  br label %bb265
bb264:
  br label %bb266
bb265:
  br label %bb267
bb266:
  call void @__olang_check_failed(ptr @olang_loc_8a01e9430b40cdd5_116fbcb2b32a38a1)
  unreachable
bb267:
  br label %bb268
bb268:
  %t887 = load { i64, [2 x i64] }, ptr %l16
  %t889 = extractvalue { i64, [2 x i64] } %t887, 0
  %t890 = icmp eq i64 %t889, 0
  br i1 %t890, label %bb269, label %bb270
bb269:
  store %olang.scope zeroinitializer, ptr %s31
  %t892 = load { i64, [2 x i64] }, ptr %l9
  %t894 = extractvalue { i64, [2 x i64] } %t892, 0
  %t895 = icmp eq i64 %t894, 0
  %t897 = xor i1 %t895, true
  br i1 %t897, label %bb271, label %bb272
bb270:
  br label %bb429
bb271:
  %t899 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t899, ptr %l448
  br label %bb274
bb272:
  %t901 = load ptr, ptr %l0, !tbaa !29
  %t902 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 3
  %t903 = load i32, ptr %t902, !tbaa !23
  %t906 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t901, i32 %t903)
  store { i64, [2 x i64] } %t906, ptr %l452
  br label %bb273
bb273:
  %t907 = load { i64, [2 x i64] }, ptr %l452
  store { i64, [2 x i64] } %t907, ptr %l448
  br label %bb274
bb274:
  %t908 = load { i64, [2 x i64] }, ptr %l448
  store { i64, [2 x i64] } %t908, ptr %l23
  %t909 = load ptr, ptr %l0, !tbaa !29
  %t910 = load i32, ptr %l2, !tbaa !23
  %t912 = sext i32 %t910 to i64
  %t915 = getelementptr %"compiler/scope:Scoper", ptr %t909, i32 0, i32 197
  store i64 %t912, ptr %t915, !tbaa !24
  %t916 = load ptr, ptr %l0, !tbaa !29
  %t917 = load i32, ptr %l2, !tbaa !23
  %t919 = sext i32 %t917 to i64
  %t922 = getelementptr %"compiler/scope:Scoper", ptr %t916, i32 0, i32 198
  store i64 %t919, ptr %t922, !tbaa !24
  %t923 = load ptr, ptr %l0, !tbaa !29
  %t924 = load i32, ptr %l5, !tbaa !23
  %t927 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t923, i32 %t924)
  store i1 %t927, ptr %l461
  br label %bb275
bb275:
  %t928 = load i1, ptr %l461, !tbaa !21
  %t929 = xor i1 %t928, true
  br i1 %t929, label %bb276, label %bb277
bb276:
  %t931 = load ptr, ptr %l0, !tbaa !29
  %t933 = getelementptr %"compiler/scope:Scoper", ptr %t931, i32 0, i32 0
  %t934 = load ptr, ptr %t933, !tbaa !29
  %t936 = getelementptr %"compiler/generic:Program", ptr %t934, i32 0, i32 2
  %t937 = load i32, ptr %l5, !tbaa !23
  %t940 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t936, i32 %t937)
  store i1 %t940, ptr %l468
  br label %bb278
bb277:
  store i1 false, ptr %l463, !tbaa !21
  br label %bb279
bb278:
  %t941 = load i1, ptr %l468, !tbaa !21
  store i1 %t941, ptr %l463, !tbaa !21
  br label %bb279
bb279:
  %t942 = load i1, ptr %l463, !tbaa !21
  br i1 %t942, label %bb280, label %bb281
bb280:
  %t943 = load ptr, ptr %l0, !tbaa !29
  store ptr %t943, ptr %l470, !tbaa !29
  %t944 = load ptr, ptr %l3, !tbaa !29
  %t946 = icmp eq ptr %t944, null
  br i1 %t946, label %bb282, label %bb283
bb281:
  store ptr null, ptr %l469, !tbaa !29
  br label %bb287
bb282:
  call void @__olang_check_failed(ptr @olang_loc_c1bd851797ba3a07_3a08c51eb1b81973)
  unreachable
bb283:
  br label %bb284
bb284:
  %t948 = load ptr, ptr %l3, !tbaa !29
  %t950 = load ptr, ptr %l470, !tbaa !29
  %t952 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s31, ptr %t950, ptr %t948)
  store ptr %t952, ptr %l475
  br label %bb285
bb285:
  %t953 = load ptr, ptr %l475, !tbaa !29
  %t955 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s31, ptr %s31, ptr %t953)
  store ptr %t955, ptr %l477
  br label %bb286
bb286:
  %t956 = load ptr, ptr %l477, !tbaa !29
  store ptr %t956, ptr %l469, !tbaa !29
  br label %bb287
bb287:
  %t957 = load ptr, ptr %l469, !tbaa !29
  store ptr %t957, ptr %l24, !tbaa !29
  %t958 = load ptr, ptr %l0, !tbaa !29
  store ptr %t958, ptr %l478, !tbaa !29
  %t959 = load ptr, ptr %l24, !tbaa !29
  %t961 = icmp eq ptr %t959, null
  %t963 = xor i1 %t961, true
  br i1 %t963, label %bb288, label %bb289
bb288:
  %t965 = load ptr, ptr %l24, !tbaa !29
  %t967 = getelementptr %"compiler/typed:Call", ptr %t965, i32 0, i32 2
  %t968 = load i32, ptr %t967, !tbaa !23
  %t970 = sext i32 %t968 to i64
  store i64 %t970, ptr %l482, !tbaa !24
  br label %bb290
bb289:
  store i64 -1, ptr %l482, !tbaa !24
  br label %bb290
bb290:
  %t972 = load i64, ptr %l482, !tbaa !24
  %t973 = load ptr, ptr %l478, !tbaa !29
  %t974 = getelementptr %"compiler/scope:Scoper", ptr %t973, i32 0, i32 203
  store i64 %t972, ptr %t974, !tbaa !24
  %t975 = load ptr, ptr %l0, !tbaa !29
  store ptr %t975, ptr %l486, !tbaa !29
  %t976 = load i1, ptr %l7, !tbaa !21
  br i1 %t976, label %bb291, label %bb292
bb291:
  %t978 = load i1, ptr %l8, !tbaa !21
  %t980 = xor i1 %t978, true
  store i1 %t980, ptr %l488, !tbaa !21
  br label %bb293
bb292:
  store i1 false, ptr %l488, !tbaa !21
  br label %bb293
bb293:
  %t982 = load i1, ptr %l488, !tbaa !21
  br i1 %t982, label %bb294, label %bb295
bb294:
  %t983 = load { i64, [2 x i64] }, ptr %l9
  %t985 = extractvalue { i64, [2 x i64] } %t983, 0
  %t986 = icmp eq i64 %t985, 0
  store i1 %t986, ptr %l491, !tbaa !21
  br label %bb296
bb295:
  store i1 false, ptr %l491, !tbaa !21
  br label %bb296
bb296:
  %t988 = load i1, ptr %l491, !tbaa !21
  %t989 = load ptr, ptr %l486, !tbaa !29
  %t990 = getelementptr %"compiler/scope:Scoper", ptr %t989, i32 0, i32 128
  store i1 %t988, ptr %t990, !tbaa !21
  %t991 = load i1, ptr %l8, !tbaa !21
  br i1 %t991, label %bb297, label %bb298
bb297:
  %t993 = load ptr, ptr %l0, !tbaa !29
  store ptr %t993, ptr %l495, !tbaa !29
  %t994 = load i1, ptr %l7, !tbaa !21
  br i1 %t994, label %bb299, label %bb300
bb298:
  br label %bb305
bb299:
  %t996 = load { i64, [2 x i64] }, ptr %l9
  %t998 = extractvalue { i64, [2 x i64] } %t996, 0
  %t999 = icmp eq i64 %t998, 0
  store i1 %t999, ptr %l497, !tbaa !21
  br label %bb301
bb300:
  store i1 false, ptr %l497, !tbaa !21
  br label %bb301
bb301:
  %t1001 = load i1, ptr %l497, !tbaa !21
  br i1 %t1001, label %bb302, label %bb303
bb302:
  store i64 1, ptr %l500, !tbaa !24
  br label %bb304
bb303:
  store i64 0, ptr %l500, !tbaa !24
  br label %bb304
bb304:
  %t1002 = load i64, ptr %l500, !tbaa !24
  %t1003 = load ptr, ptr %l495, !tbaa !29
  %t1004 = getelementptr %"compiler/scope:Scoper", ptr %t1003, i32 0, i32 131
  store i64 %t1002, ptr %t1004, !tbaa !24
  br label %bb305
bb305:
  %t1005 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t1006
  %t1007 = getelementptr { i64, [2 x i64] }, ptr %t1006, i32 0, i32 0
  store i64 0, ptr %t1007
  %t1008 = load { i64, [2 x i64] }, ptr %t1006
  %t1011 = getelementptr %"compiler/scope:Scoper", ptr %t1005, i32 0, i32 74
  store { i64, [2 x i64] } %t1008, ptr %t1011
  %t1012 = load ptr, ptr %l0, !tbaa !29
  %t1013 = load ptr, ptr %l3, !tbaa !29
  %t1014 = load { i64, [2 x i64] }, ptr %l23
  %t1018 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1012, ptr %t1013, { i64, [2 x i64] } %t1014)
  store %"compiler/scope:Val" %t1018, ptr %l506
  br label %bb306
bb306:
  %t1019 = load %"compiler/scope:Val", ptr %l506
  store %"compiler/scope:Val" %t1019, ptr %l25
  %t1020 = load ptr, ptr %l0, !tbaa !29
  %t1022 = getelementptr %"compiler/scope:Scoper", ptr %t1020, i32 0, i32 197
  store i64 -1, ptr %t1022, !tbaa !24
  %t1023 = load ptr, ptr %l0, !tbaa !29
  %t1025 = getelementptr %"compiler/scope:Scoper", ptr %t1023, i32 0, i32 198
  store i64 -1, ptr %t1025, !tbaa !24
  %t1026 = load ptr, ptr %l0, !tbaa !29
  %t1028 = getelementptr %"compiler/scope:Scoper", ptr %t1026, i32 0, i32 203
  store i64 -1, ptr %t1028, !tbaa !24
  %t1029 = load ptr, ptr %l0, !tbaa !29
  %t1031 = getelementptr %"compiler/scope:Scoper", ptr %t1029, i32 0, i32 128
  store i1 false, ptr %t1031, !tbaa !21
  %t1032 = load ptr, ptr %l0, !tbaa !29
  %t1034 = getelementptr %"compiler/scope:Scoper", ptr %t1032, i32 0, i32 131
  store i64 -1, ptr %t1034, !tbaa !24
  %t1035 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1035, ptr %l512, !tbaa !29
  %t1036 = load i32, ptr %l2, !tbaa !23
  %t1038 = sext i32 %t1036 to i64
  store i64 %t1038, ptr %l514, !tbaa !24
  %t1039 = load ptr, ptr %l3, !tbaa !29
  %t1041 = icmp eq ptr %t1039, null
  br i1 %t1041, label %bb307, label %bb308
bb307:
  call void @__olang_check_failed(ptr @olang_loc_f6ec8187c757dce8_8726f65a7d0e6fa4)
  unreachable
bb308:
  br label %bb309
bb309:
  %t1043 = load ptr, ptr %l3, !tbaa !29
  %t1044 = load %"compiler/scope:Val", ptr %l25
  %t1045 = load ptr, ptr %l512, !tbaa !29
  %t1046 = load i64, ptr %l514, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteOrigin(ptr %v0, ptr %v1, ptr %t1045, i64 %t1046, ptr %t1043, %"compiler/scope:Val" %t1044)
  br label %bb310
bb310:
  %t1049 = load ptr, ptr %l0, !tbaa !29
  %t1051 = getelementptr %"compiler/scope:Scoper", ptr %t1049, i32 0, i32 74
  %t1052 = load { i64, [2 x i64] }, ptr %t1051
  %t1054 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1052)
  store i1 %t1054, ptr %l521
  br label %bb311
bb311:
  %t1055 = load i1, ptr %l521, !tbaa !21
  br i1 %t1055, label %bb312, label %bb313
bb312:
  %t1056 = load ptr, ptr %l0, !tbaa !29
  %t1057 = load i32, ptr %l2, !tbaa !23
  %t1059 = sext i32 %t1057 to i64
  %t1062 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewalkLocal(ptr %v0, ptr %t1056, i64 %t1059)
  store i1 %t1062, ptr %l526
  br label %bb314
bb313:
  store i1 false, ptr %l522, !tbaa !21
  br label %bb315
bb314:
  %t1063 = load i1, ptr %l526, !tbaa !21
  store i1 %t1063, ptr %l522, !tbaa !21
  br label %bb315
bb315:
  %t1064 = load i1, ptr %l522, !tbaa !21
  br i1 %t1064, label %bb316, label %bb317
bb316:
  %t1065 = load ptr, ptr %l0, !tbaa !29
  %t1067 = getelementptr %"compiler/scope:Scoper", ptr %t1065, i32 0, i32 73
  %t1068 = load i32, ptr %l2, !tbaa !23
  %t1070 = sext i32 %t1068 to i64
  %t1071 = load ptr, ptr %l0, !tbaa !29
  %t1073 = getelementptr %"compiler/scope:Scoper", ptr %t1071, i32 0, i32 74
  %t1074 = load { i64, [2 x i64] }, ptr %t1073
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %t1067, i64 %t1070, { i64, [2 x i64] } %t1074)
  br label %bb318
bb317:
  br label %bb319
bb318:
  br label %bb319
bb319:
  %t1078 = load ptr, ptr %l0, !tbaa !29
  %t1080 = getelementptr %"compiler/scope:Scoper", ptr %t1078, i32 0, i32 76
  %t1081 = load i64, ptr %t1080, !tbaa !24
  %t1083 = icmp sge i64 %t1081, 0
  br i1 %t1083, label %bb320, label %bb321
bb320:
  %t1085 = load ptr, ptr %l0, !tbaa !29
  %t1087 = getelementptr %"compiler/scope:Scoper", ptr %t1085, i32 0, i32 75
  %t1088 = load i32, ptr %l2, !tbaa !23
  %t1090 = sext i32 %t1088 to i64
  %t1091 = load ptr, ptr %l0, !tbaa !29
  %t1093 = getelementptr %"compiler/scope:Scoper", ptr %t1091, i32 0, i32 76
  %t1094 = load i64, ptr %t1093, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t1087, i64 %t1090, i64 %t1094)
  br label %bb322
bb321:
  br label %bb323
bb322:
  br label %bb323
bb323:
  %t1098 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1098, ptr %l542, !tbaa !29
  %t1099 = load ptr, ptr %l3, !tbaa !29
  %t1101 = icmp eq ptr %t1099, null
  br i1 %t1101, label %bb324, label %bb325
bb324:
  call void @__olang_check_failed(ptr @olang_loc_91699d3516f660a1_aa0e11d9464965f5)
  unreachable
bb325:
  br label %bb326
bb326:
  %t1103 = load ptr, ptr %l3, !tbaa !29
  %t1104 = load ptr, ptr %l542, !tbaa !29
  %t1106 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %v1, ptr %t1104, ptr %t1103)
  store i64 %t1106, ptr %l546
  br label %bb327
bb327:
  %t1107 = load i64, ptr %l546, !tbaa !24
  store i64 %t1107, ptr %l26, !tbaa !24
  %t1108 = load i64, ptr %l26, !tbaa !24
  %t1110 = icmp sge i64 %t1108, 0
  br i1 %t1110, label %bb328, label %bb329
bb328:
  %t1112 = load ptr, ptr %l0, !tbaa !29
  %t1114 = getelementptr %"compiler/scope:Scoper", ptr %t1112, i32 0, i32 75
  %t1115 = load i64, ptr %l26, !tbaa !24
  %t1118 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t1114, i64 %t1115)
  store i1 %t1118, ptr %l553
  br label %bb330
bb329:
  store i1 false, ptr %l549, !tbaa !21
  br label %bb331
bb330:
  %t1119 = load i1, ptr %l553, !tbaa !21
  store i1 %t1119, ptr %l549, !tbaa !21
  br label %bb331
bb331:
  %t1120 = load i1, ptr %l549, !tbaa !21
  br i1 %t1120, label %bb332, label %bb333
bb332:
  %t1121 = load ptr, ptr %l0, !tbaa !29
  %t1123 = getelementptr %"compiler/scope:Scoper", ptr %t1121, i32 0, i32 75
  store ptr %t1123, ptr %l555, !tbaa !29
  %t1124 = load i32, ptr %l2, !tbaa !23
  %t1126 = sext i32 %t1124 to i64
  store i64 %t1126, ptr %l557, !tbaa !24
  %t1127 = load ptr, ptr %l0, !tbaa !29
  %t1129 = getelementptr %"compiler/scope:Scoper", ptr %t1127, i32 0, i32 75
  %t1130 = load i64, ptr %l26, !tbaa !24
  %t1133 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t1129, i64 %t1130)
  %t1134 = extractvalue { i32, i64 } %t1133, 1
  %t1135 = extractvalue { i32, i64 } %t1133, 0
  store i32 %t1135, ptr %l563
  %t1136 = icmp ne i32 %t1135, 0
  br i1 %t1136, label %bb335, label %ok.1137, !prof !99
ok.1137:
  store i64 %t1134, ptr %l562
  br label %bb334
bb333:
  br label %bb339
bb334:
  %t1138 = load i64, ptr %l562, !tbaa !24
  store i64 %t1138, ptr %l558, !tbaa !24
  br label %bb337
bb335:
  br label %bb336
bb336:
  store i64 -1, ptr %l558, !tbaa !24
  br label %bb337
bb337:
  %t1139 = load ptr, ptr %l555, !tbaa !29
  %t1140 = load i64, ptr %l557, !tbaa !24
  %t1141 = load i64, ptr %l558, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t1139, i64 %t1140, i64 %t1141)
  br label %bb338
bb338:
  br label %bb339
bb339:
  %t1142 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t1143
  %t1144 = getelementptr { i64, [2 x i64] }, ptr %t1143, i32 0, i32 0
  store i64 0, ptr %t1144
  %t1145 = load { i64, [2 x i64] }, ptr %t1143
  %t1148 = getelementptr %"compiler/scope:Scoper", ptr %t1142, i32 0, i32 74
  store { i64, [2 x i64] } %t1145, ptr %t1148
  %t1149 = load ptr, ptr %l0, !tbaa !29
  %t1151 = getelementptr %"compiler/scope:Scoper", ptr %t1149, i32 0, i32 76
  store i64 -1, ptr %t1151, !tbaa !24
  %t1152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1152, ptr %l567, !tbaa !29
  %t1153 = load ptr, ptr %l3, !tbaa !29
  %t1155 = icmp eq ptr %t1153, null
  br i1 %t1155, label %bb340, label %bb341
bb340:
  call void @__olang_check_failed(ptr @olang_loc_d8ab151ef39a0b1a_493c405c799b164e)
  unreachable
bb341:
  br label %bb342
bb342:
  %t1157 = load ptr, ptr %l3, !tbaa !29
  %t1159 = load ptr, ptr %l567, !tbaa !29
  %t1161 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s31, ptr %t1159, ptr %t1157)
  store ptr %t1161, ptr %l572
  br label %bb343
bb343:
  %t1162 = load ptr, ptr %l572, !tbaa !29
  %t1163 = call ptr @compiler_2fscope_2eunPassed(ptr %s31, ptr %s31, ptr %t1162)
  store ptr %t1163, ptr %l573
  br label %bb344
bb344:
  %t1164 = load ptr, ptr %l573, !tbaa !29
  %t1166 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s31, ptr %s31, ptr %t1164)
  store ptr %t1166, ptr %l575
  br label %bb345
bb345:
  %t1167 = load ptr, ptr %l575, !tbaa !29
  store ptr %t1167, ptr %l27, !tbaa !29
  %t1168 = load ptr, ptr %l27, !tbaa !29
  %t1170 = icmp eq ptr %t1168, null
  %t1172 = xor i1 %t1170, true
  br i1 %t1172, label %bb346, label %bb347
bb346:
  %t1174 = load ptr, ptr %l27, !tbaa !29
  %t1176 = getelementptr %"compiler/typed:Call", ptr %t1174, i32 0, i32 1
  %t1177 = load { i64, ptr }, ptr %t1176, !tbaa !27
  %t1179 = extractvalue { i64, ptr } %t1177, 0
  %t1181 = icmp sgt i64 %t1179, 0
  store i1 %t1181, ptr %l579, !tbaa !21
  br label %bb348
bb347:
  store i1 false, ptr %l579, !tbaa !21
  br label %bb348
bb348:
  %t1183 = load i1, ptr %l579, !tbaa !21
  br i1 %t1183, label %bb349, label %bb350
bb349:
  %t1184 = load ptr, ptr %l0, !tbaa !29
  %t1185 = load ptr, ptr %l27, !tbaa !29
  %t1187 = getelementptr %"compiler/typed:Call", ptr %t1185, i32 0, i32 1
  %t1188 = load { i64, ptr }, ptr %t1187, !tbaa !27
  store { i64, ptr } %t1188, ptr %l586, !tbaa !27
  %t1189 = getelementptr { i64, ptr }, ptr %l586, i32 0, i32 1
  %t1190 = load ptr, ptr %t1189, !tbaa !27
  %t1191 = getelementptr ptr, ptr %t1190, i64 0
  %t1192 = load ptr, ptr %t1191, !tbaa !39
  %t1195 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %s31, ptr %t1184, ptr %t1192)
  store i64 %t1195, ptr %l588
  br label %bb351
bb350:
  br label %bb364
bb351:
  %t1196 = load i64, ptr %l588, !tbaa !24
  store i64 %t1196, ptr %l28, !tbaa !24
  %t1197 = load i64, ptr %l28, !tbaa !24
  %t1199 = icmp sge i64 %t1197, 0
  br i1 %t1199, label %bb352, label %bb353
bb352:
  %t1201 = load ptr, ptr %l0, !tbaa !29
  %t1203 = getelementptr %"compiler/scope:Scoper", ptr %t1201, i32 0, i32 75
  %t1204 = load i64, ptr %l28, !tbaa !24
  %t1207 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t1203, i64 %t1204)
  store i1 %t1207, ptr %l595
  br label %bb354
bb353:
  store i1 false, ptr %l591, !tbaa !21
  br label %bb355
bb354:
  %t1208 = load i1, ptr %l595, !tbaa !21
  store i1 %t1208, ptr %l591, !tbaa !21
  br label %bb355
bb355:
  %t1209 = load i1, ptr %l591, !tbaa !21
  br i1 %t1209, label %bb356, label %bb357
bb356:
  %t1210 = load ptr, ptr %l0, !tbaa !29
  %t1212 = getelementptr %"compiler/scope:Scoper", ptr %t1210, i32 0, i32 75
  store ptr %t1212, ptr %l597, !tbaa !29
  %t1213 = load i32, ptr %l2, !tbaa !23
  %t1215 = sext i32 %t1213 to i64
  store i64 %t1215, ptr %l599, !tbaa !24
  %t1216 = load ptr, ptr %l0, !tbaa !29
  %t1218 = getelementptr %"compiler/scope:Scoper", ptr %t1216, i32 0, i32 75
  %t1219 = load i64, ptr %l28, !tbaa !24
  %t1222 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t1218, i64 %t1219)
  %t1223 = extractvalue { i32, i64 } %t1222, 1
  %t1224 = extractvalue { i32, i64 } %t1222, 0
  store i32 %t1224, ptr %l605
  %t1225 = icmp ne i32 %t1224, 0
  br i1 %t1225, label %bb359, label %ok.1226, !prof !99
ok.1226:
  store i64 %t1223, ptr %l604
  br label %bb358
bb357:
  br label %bb363
bb358:
  %t1227 = load i64, ptr %l604, !tbaa !24
  store i64 %t1227, ptr %l600, !tbaa !24
  br label %bb361
bb359:
  br label %bb360
bb360:
  store i64 -1, ptr %l600, !tbaa !24
  br label %bb361
bb361:
  %t1228 = load ptr, ptr %l597, !tbaa !29
  %t1229 = load i64, ptr %l599, !tbaa !24
  %t1230 = load i64, ptr %l600, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t1228, i64 %t1229, i64 %t1230)
  br label %bb362
bb362:
  br label %bb363
bb363:
  br label %bb364
bb364:
  %t1231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1231, ptr %l606, !tbaa !29
  %t1232 = load i32, ptr %l2, !tbaa !23
  store i32 %t1232, ptr %l607, !tbaa !23
  %t1233 = load ptr, ptr %l3, !tbaa !29
  %t1235 = icmp eq ptr %t1233, null
  br i1 %t1235, label %bb365, label %bb366
bb365:
  call void @__olang_check_failed(ptr @olang_loc_4be91e4a1fba2bdb_4552e3a09b71daff)
  unreachable
bb366:
  br label %bb367
bb367:
  %t1237 = load ptr, ptr %l3, !tbaa !29
  %t1238 = load ptr, ptr %l606, !tbaa !29
  %t1239 = load i32, ptr %l607, !tbaa !23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindLocal(ptr %v0, ptr %v1, ptr %t1238, i32 %t1239, ptr %t1237)
  br label %bb368
bb368:
  %t1241 = load ptr, ptr %l0, !tbaa !29
  %t1243 = getelementptr %"compiler/scope:Scoper", ptr %t1241, i32 0, i32 34
  store ptr %t1243, ptr %l612, !tbaa !29
  %t1244 = load i32, ptr %l2, !tbaa !23
  %t1246 = sext i32 %t1244 to i64
  store i64 %t1246, ptr %l614, !tbaa !24
  %t1247 = load ptr, ptr %l0, !tbaa !29
  %t1248 = load %"compiler/scope:Val", ptr %l25
  %t1249 = load { i64, [2 x i64] }, ptr %l23
  %t1253 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %t1247, %"compiler/scope:Val" %t1248, { i64, [2 x i64] } %t1249)
  store { i64, [2 x i64] } %t1253, ptr %l618
  br label %bb369
bb369:
  %t1254 = load ptr, ptr %l612, !tbaa !29
  %t1255 = load i64, ptr %l614, !tbaa !24
  %t1256 = load { i64, [2 x i64] }, ptr %l618
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t1254, i64 %t1255, { i64, [2 x i64] } %t1256)
  br label %bb370
bb370:
  %t1257 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1257, ptr %l619, !tbaa !29
  %t1258 = load i32, ptr %l5, !tbaa !23
  store i32 %t1258, ptr %l620, !tbaa !23
  %t1259 = load ptr, ptr %l3, !tbaa !29
  %t1261 = icmp eq ptr %t1259, null
  br i1 %t1261, label %bb371, label %bb372
bb371:
  call void @__olang_check_failed(ptr @olang_loc_822a996be6bf60ec_a610051fdc17dde0)
  unreachable
bb372:
  br label %bb373
bb373:
  %t1263 = load ptr, ptr %l3, !tbaa !29
  %t1264 = load ptr, ptr %l619, !tbaa !29
  %t1265 = load i32, ptr %l620, !tbaa !23
  %t1267 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownCall(ptr %v0, ptr %v1, ptr %t1264, i32 %t1265, ptr %t1263)
  store i1 %t1267, ptr %l624
  br label %bb374
bb374:
  %t1268 = load i1, ptr %l624, !tbaa !21
  br i1 %t1268, label %bb375, label %bb376
bb375:
  %t1269 = load ptr, ptr %l0, !tbaa !29
  %t1271 = getelementptr %"compiler/scope:Scoper", ptr %t1269, i32 0, i32 34
  %t1272 = load i32, ptr %l2, !tbaa !23
  %t1274 = sext i32 %t1272 to i64
  %t1275 = load { i64, [2 x i64] }, ptr %l23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t1271, i64 %t1274, { i64, [2 x i64] } %t1275)
  br label %bb377
bb376:
  br label %bb386
bb377:
  %t1279 = load ptr, ptr %l3, !tbaa !29
  %t1281 = icmp eq ptr %t1279, null
  br i1 %t1281, label %bb378, label %bb379
bb378:
  call void @__olang_check_failed(ptr @olang_loc_20bba8d7d253ea85_a129e3e310279d91)
  unreachable
bb379:
  br label %bb380
bb380:
  %t1283 = load ptr, ptr %l3, !tbaa !29
  %t1286 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t1283)
  store ptr %t1286, ptr %l634
  br label %bb381
bb381:
  %t1287 = load ptr, ptr %l634, !tbaa !29
  store ptr %t1287, ptr %l29, !tbaa !29
  %t1288 = load ptr, ptr %l29, !tbaa !29
  %t1290 = icmp eq ptr %t1288, null
  %t1292 = xor i1 %t1290, true
  br i1 %t1292, label %bb382, label %bb383
bb382:
  %t1294 = load ptr, ptr %l0, !tbaa !29
  %t1295 = load ptr, ptr %l29, !tbaa !29
  %t1297 = getelementptr %"compiler/typed:Call", ptr %t1295, i32 0, i32 2
  %t1298 = load i32, ptr %t1297, !tbaa !23
  %t1299 = load { i64, [2 x i64] }, ptr %l23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t1294, i32 %t1298, { i64, [2 x i64] } %t1299)
  br label %bb384
bb383:
  br label %bb385
bb384:
  br label %bb385
bb385:
  br label %bb386
bb386:
  %t1303 = load ptr, ptr %l0, !tbaa !29
  %t1305 = getelementptr %"compiler/scope:Scoper", ptr %t1303, i32 0, i32 44
  %t1306 = load i32, ptr %l2, !tbaa !23
  %t1308 = sext i32 %t1306 to i64
  %t1311 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t1305, i64 %t1308)
  %t1312 = extractvalue { i32, { i64, [2 x i64] } } %t1311, 1
  %t1313 = extractvalue { i32, { i64, [2 x i64] } } %t1311, 0
  store i32 %t1313, ptr %l648
  %t1314 = icmp ne i32 %t1313, 0
  br i1 %t1314, label %bb388, label %ok.1315, !prof !99
ok.1315:
  store { i64, [2 x i64] } %t1312, ptr %l647
  br label %bb387
bb387:
  %t1316 = load { i64, [2 x i64] }, ptr %l647
  store { i64, [2 x i64] } %t1316, ptr %l642
  br label %bb390
bb388:
  br label %bb389
bb389:
  store { i64, [2 x i64] } zeroinitializer, ptr %t1317
  %t1318 = getelementptr { i64, [2 x i64] }, ptr %t1317, i32 0, i32 0
  store i64 0, ptr %t1318
  %t1319 = load { i64, [2 x i64] }, ptr %t1317
  store { i64, [2 x i64] } %t1319, ptr %l642
  br label %bb390
bb390:
  %t1321 = load { i64, [2 x i64] }, ptr %l642
  store { i64, [2 x i64] } %t1321, ptr %l30
  %t1322 = load { i64, [2 x i64] }, ptr %l30
  %t1324 = extractvalue { i64, [2 x i64] } %t1322, 0
  %t1325 = icmp eq i64 %t1324, 0
  %t1327 = xor i1 %t1325, true
  br i1 %t1327, label %bb391, label %bb392
bb391:
  %t1329 = load ptr, ptr %l0, !tbaa !29
  %t1331 = getelementptr %"compiler/scope:Scoper", ptr %t1329, i32 0, i32 34
  %t1332 = load i32, ptr %l2, !tbaa !23
  %t1334 = sext i32 %t1332 to i64
  %t1335 = load { i64, [2 x i64] }, ptr %l30
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t1331, i64 %t1334, { i64, [2 x i64] } %t1335)
  br label %bb393
bb392:
  br label %bb394
bb393:
  br label %bb394
bb394:
  %t1339 = getelementptr %"compiler/scope:Val", ptr %l25, i32 0, i32 1
  %t1340 = load { i64, [2 x i64] }, ptr %t1339
  store { i64, [2 x i64] } %t1340, ptr %l31
  %t1342 = load { i64, [2 x i64] }, ptr %l31
  %t1344 = extractvalue { i64, [2 x i64] } %t1342, 0
  %t1345 = icmp eq i64 %t1344, 4
  br i1 %t1345, label %bb395, label %bb396
bb395:
  %t1347 = getelementptr { i64, [2 x i64] }, ptr %l31, i32 0, i32 1
  %t1348 = getelementptr { i64, i64 }, ptr %t1347, i32 0, i32 0
  %t1349 = load i64, ptr %t1348
  store i64 %t1349, ptr %l32, !tbaa !24
  br label %bb397
bb396:
  br label %bb423
bb397:
  %t1351 = load i64, ptr %l32, !tbaa !24
  %t1353 = icmp slt i64 %t1351, 0
  br i1 %t1353, label %bb398, label %bb399
bb398:
  %t1355 = load i64, ptr %l32, !tbaa !24
  %t1357 = sub i64 0, %t1355
  %t1359 = sub i64 %t1357, 1
  store i64 %t1359, ptr %l667, !tbaa !24
  %t1360 = load ptr, ptr %l0, !tbaa !29
  %t1362 = getelementptr %"compiler/scope:Scoper", ptr %t1360, i32 0, i32 111
  %t1364 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t1362)
  store i64 %t1364, ptr %l670
  br label %bb400
bb399:
  store i1 false, ptr %l664, !tbaa !21
  br label %bb401
bb400:
  %t1365 = load i64, ptr %l667, !tbaa !24
  %t1366 = load i64, ptr %l670, !tbaa !24
  %t1367 = icmp slt i64 %t1365, %t1366
  store i1 %t1367, ptr %l664, !tbaa !21
  br label %bb401
bb401:
  %t1369 = load i1, ptr %l664, !tbaa !21
  br i1 %t1369, label %bb402, label %bb403
bb402:
  %t1370 = load ptr, ptr %l0, !tbaa !29
  %t1372 = getelementptr %"compiler/scope:Scoper", ptr %t1370, i32 0, i32 111
  %t1373 = load i64, ptr %l32, !tbaa !24
  %t1375 = sub i64 0, %t1373
  %t1377 = sub i64 %t1375, 1
  %t1380 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1372, i64 %t1377)
  store i1 %t1380, ptr %l678
  br label %bb404
bb403:
  store i1 false, ptr %l672, !tbaa !21
  br label %bb405
bb404:
  %t1381 = load i1, ptr %l678, !tbaa !21
  store i1 %t1381, ptr %l672, !tbaa !21
  br label %bb405
bb405:
  %t1382 = load i1, ptr %l672, !tbaa !21
  br i1 %t1382, label %bb406, label %bb407
bb406:
  %t1383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1383, ptr %l679, !tbaa !29
  %t1384 = load ptr, ptr %l3, !tbaa !29
  %t1386 = icmp eq ptr %t1384, null
  br i1 %t1386, label %bb408, label %bb409
bb407:
  br label %bb422
bb408:
  call void @__olang_check_failed(ptr @olang_loc_9530d1c4ea412de_9379e3d37f97848a)
  unreachable
bb409:
  br label %bb410
bb410:
  %t1388 = load ptr, ptr %l3, !tbaa !29
  %t1389 = load ptr, ptr %l679, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackExpr(ptr %v0, ptr %v1, ptr %t1389, ptr %t1388)
  br label %bb411
bb411:
  %t1391 = load ptr, ptr %l0, !tbaa !29
  %t1393 = getelementptr %"compiler/scope:Scoper", ptr %t1391, i32 0, i32 28
  %t1394 = load i1, ptr %t1393, !tbaa !21
  br i1 %t1394, label %bb412, label %bb413
bb412:
  %t1396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1396, ptr %l685, !tbaa !29
  %t1397 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1397, ptr %l686, !tbaa !29
  %t1398 = load ptr, ptr %l3, !tbaa !29
  %t1400 = icmp eq ptr %t1398, null
  br i1 %t1400, label %bb414, label %bb415
bb413:
  br label %bb421
bb414:
  call void @__olang_check_failed(ptr @olang_loc_ac920da97f69d3ae_2bb2c283cdbb4f6a)
  unreachable
bb415:
  br label %bb416
bb416:
  %t1402 = load ptr, ptr %l3, !tbaa !29
  %t1404 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t1402)
  store %"compiler/source:Span" %t1404, ptr %l690
  br label %bb417
bb417:
  %t1405 = load ptr, ptr %l686, !tbaa !29
  %t1406 = load %"compiler/source:Span", ptr %l690
  %t1407 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %t1405, %"compiler/source:Span" %t1406)
  store %"compiler/source:Span" %t1407, ptr %l691
  br label %bb418
bb418:
  %t1408 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildThroughUnknownScope(ptr %v0)
  store %"compiler/diagmsg:Msg" %t1408, ptr %l692
  br label %bb419
bb419:
  %t1409 = load ptr, ptr %l685, !tbaa !29
  %t1410 = load %"compiler/source:Span", ptr %l691
  %t1411 = load %"compiler/diagmsg:Msg", ptr %l692
  %t1412 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t1409, %"compiler/source:Span" %t1410, %"compiler/diagmsg:Msg" %t1411)
  store i64 %t1412, ptr %l693
  br label %bb420
bb420:
  br label %bb421
bb421:
  br label %bb422
bb422:
  br label %bb428
bb423:
  br i1 true, label %bb424, label %bb425
bb424:
  br label %bb426
bb425:
  br label %bb427
bb426:
  br label %bb428
bb427:
  call void @__olang_check_failed(ptr @olang_loc_5c49853202d9fa8c_ad203b077ad42ef8)
  unreachable
bb428:
  call void @__olang_scope_close(ptr %s31)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb429:
  %t1413 = load ptr, ptr %l0, !tbaa !29
  %t1415 = getelementptr %"compiler/scope:Scoper", ptr %t1413, i32 0, i32 34
  %t1416 = load i32, ptr %l2, !tbaa !23
  %t1418 = sext i32 %t1416 to i64
  %t1419 = load { i64, [2 x i64] }, ptr %l16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t1415, i64 %t1418, { i64, [2 x i64] } %t1419)
  br label %bb430
bb430:
  %t1423 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 5
  %t1424 = load { i64, [1 x i64] }, ptr %t1423
  %t1426 = extractvalue { i64, [1 x i64] } %t1424, 0
  %t1427 = icmp eq i64 %t1426, 1
  br i1 %t1427, label %bb431, label %bb432
bb431:
  %t1429 = load ptr, ptr %l0, !tbaa !29
  %t1430 = load i32, ptr %l5, !tbaa !23
  %t1433 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t1429, i32 %t1430)
  store i1 %t1433, ptr %l704
  br label %bb433
bb432:
  store i1 false, ptr %l701, !tbaa !21
  br label %bb434
bb433:
  %t1434 = load i1, ptr %l704, !tbaa !21
  store i1 %t1434, ptr %l701, !tbaa !21
  br label %bb434
bb434:
  %t1435 = load i1, ptr %l701, !tbaa !21
  br i1 %t1435, label %bb435, label %bb436
bb435:
  %t1436 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1436, ptr %l706, !tbaa !29
  %t1437 = load ptr, ptr %l3, !tbaa !29
  %t1439 = icmp eq ptr %t1437, null
  br i1 %t1439, label %bb437, label %bb438
bb436:
  store i1 false, ptr %l705, !tbaa !21
  br label %bb441
bb437:
  call void @__olang_check_failed(ptr @olang_loc_e598343033241940_f023ba5342a3ff7c)
  unreachable
bb438:
  br label %bb439
bb439:
  %t1441 = load ptr, ptr %l3, !tbaa !29
  %t1442 = load ptr, ptr %l706, !tbaa !29
  %t1444 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceOfRefs(ptr %v0, ptr %v1, ptr %t1442, ptr %t1441)
  store i1 %t1444, ptr %l710
  br label %bb440
bb440:
  %t1445 = load i1, ptr %l710, !tbaa !21
  store i1 %t1445, ptr %l705, !tbaa !21
  br label %bb441
bb441:
  %t1446 = load i1, ptr %l705, !tbaa !21
  %t1447 = load ptr, ptr %l0, !tbaa !29
  %t1451 = getelementptr %"compiler/scope:Scoper", ptr %t1447, i32 0, i32 144
  store i1 %t1446, ptr %t1451, !tbaa !21
  %t1452 = load ptr, ptr %l0, !tbaa !29
  %t1453 = load i32, ptr %l2, !tbaa !23
  %t1455 = sext i32 %t1453 to i64
  %t1458 = getelementptr %"compiler/scope:Scoper", ptr %t1452, i32 0, i32 198
  store i64 %t1455, ptr %t1458, !tbaa !24
  %t1459 = load ptr, ptr %l0, !tbaa !29
  %t1460 = load ptr, ptr %l3, !tbaa !29
  %t1461 = load { i64, [2 x i64] }, ptr %l16
  %t1465 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t1459, ptr %t1460, { i64, [2 x i64] } %t1461)
  store %"compiler/scope:Val" %t1465, ptr %l719
  br label %bb442
bb442:
  %t1466 = load %"compiler/scope:Val", ptr %l719
  store %"compiler/scope:Val" %t1466, ptr %l34
  %t1467 = load ptr, ptr %l0, !tbaa !29
  %t1469 = getelementptr %"compiler/scope:Scoper", ptr %t1467, i32 0, i32 198
  store i64 -1, ptr %t1469, !tbaa !24
  %t1470 = load ptr, ptr %l0, !tbaa !29
  %t1472 = getelementptr %"compiler/scope:Scoper", ptr %t1470, i32 0, i32 144
  store i1 false, ptr %t1472, !tbaa !21
  %t1473 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1473, ptr %l722, !tbaa !29
  %t1474 = load i32, ptr %l2, !tbaa !23
  store i32 %t1474, ptr %l723, !tbaa !23
  %t1475 = load ptr, ptr %l3, !tbaa !29
  %t1477 = icmp eq ptr %t1475, null
  br i1 %t1477, label %bb443, label %bb444
bb443:
  call void @__olang_check_failed(ptr @olang_loc_d5b499138e5334df_68c2e51948532eeb)
  unreachable
bb444:
  br label %bb445
bb445:
  %t1479 = load ptr, ptr %l3, !tbaa !29
  %t1480 = load ptr, ptr %l722, !tbaa !29
  %t1481 = load i32, ptr %l723, !tbaa !23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindLocal(ptr %v0, ptr %v1, ptr %t1480, i32 %t1481, ptr %t1479)
  br label %bb446
bb446:
  %t1483 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 1
  %t1484 = load { i64, [2 x i64] }, ptr %t1483
  %t1488 = extractvalue { i64, [2 x i64] } %t1484, 0
  %t1489 = icmp eq i64 %t1488, 5
  br i1 %t1489, label %bb447, label %bb448
bb447:
  br label %bb449
bb448:
  br label %bb476
bb449:
  %t1491 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t1492 = load i32, ptr %t1491, !range !{i32 0, i32 7}
  %t1494 = trunc i64 6 to i32
  %t1495 = icmp eq i32 %t1492, %t1494
  br i1 %t1495, label %bb450, label %bb451
bb450:
  %t1497 = load ptr, ptr %l0, !tbaa !29
  %t1498 = load i32, ptr %l5, !tbaa !23
  %t1501 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t1497, i32 %t1498)
  store i1 %t1501, ptr %l734
  br label %bb452
bb451:
  br label %bb460
bb452:
  %t1502 = load i1, ptr %l734, !tbaa !21
  store i1 %t1502, ptr %l36, !tbaa !21
  %t1503 = load ptr, ptr %l0, !tbaa !29
  %t1504 = load i64, ptr @G_2ecompiler_2fscope_2eWhyHolds, !tbaa !24
  %t1507 = getelementptr %"compiler/scope:Scoper", ptr %t1503, i32 0, i32 125
  store i64 %t1504, ptr %t1507, !tbaa !24
  %t1508 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1508, ptr %l737, !tbaa !29
  %t1509 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 1
  %t1510 = load { i64, [2 x i64] }, ptr %t1509
  store { i64, [2 x i64] } %t1510, ptr %l738
  %t1511 = load { i64, [2 x i64] }, ptr %l16
  store { i64, [2 x i64] } %t1511, ptr %l739
  %t1512 = load i1, ptr %l36, !tbaa !21
  store i1 %t1512, ptr %l740, !tbaa !21
  %t1513 = load ptr, ptr %l3, !tbaa !29
  %t1515 = icmp eq ptr %t1513, null
  br i1 %t1515, label %bb453, label %bb454
bb453:
  call void @__olang_check_failed(ptr @olang_loc_efeba8037e802192_fbb9be0cbeac966)
  unreachable
bb454:
  br label %bb455
bb455:
  %t1517 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1517, ptr %l743, !tbaa !29
  %t1518 = load i1, ptr %l36, !tbaa !21
  br i1 %t1518, label %bb456, label %bb457
bb456:
  %t1520 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  store i64 %t1520, ptr %l745, !tbaa !24
  br label %bb458
bb457:
  %t1522 = load i64, ptr @G_2ecompiler_2fscope_2eFitDecl, !tbaa !24
  store i64 %t1522, ptr %l745, !tbaa !24
  br label %bb458
bb458:
  %t1524 = load ptr, ptr %l737, !tbaa !29
  %t1525 = load { i64, [2 x i64] }, ptr %l738
  %t1526 = load { i64, [2 x i64] }, ptr %l739
  %t1527 = load i1, ptr %l740, !tbaa !21
  %t1528 = load ptr, ptr %l743, !tbaa !29
  %t1529 = load i64, ptr %l745, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t1524, { i64, [2 x i64] } %t1525, { i64, [2 x i64] } %t1526, i1 %t1527, ptr %t1528, i64 %t1529)
  br label %bb459
bb459:
  %t1530 = load ptr, ptr %l0, !tbaa !29
  %t1532 = getelementptr %"compiler/scope:Scoper", ptr %t1530, i32 0, i32 125
  store i64 0, ptr %t1532, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb460:
  %t1533 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 5
  %t1534 = load { i64, [1 x i64] }, ptr %t1533
  %t1536 = extractvalue { i64, [1 x i64] } %t1534, 0
  %t1537 = icmp eq i64 %t1536, 1
  br i1 %t1537, label %bb461, label %bb462
bb461:
  %t1539 = load ptr, ptr %l0, !tbaa !29
  %t1540 = load i32, ptr %l5, !tbaa !23
  %t1543 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t1539, i32 %t1540)
  store i1 %t1543, ptr %l754
  br label %bb463
bb462:
  store i1 false, ptr %l751, !tbaa !21
  br label %bb464
bb463:
  %t1544 = load i1, ptr %l754, !tbaa !21
  store i1 %t1544, ptr %l751, !tbaa !21
  br label %bb464
bb464:
  %t1545 = load i1, ptr %l751, !tbaa !21
  br i1 %t1545, label %bb465, label %bb466
bb465:
  %t1546 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1546, ptr %l756, !tbaa !29
  %t1547 = load ptr, ptr %l3, !tbaa !29
  %t1549 = icmp eq ptr %t1547, null
  br i1 %t1549, label %bb467, label %bb468
bb466:
  store i1 false, ptr %l755, !tbaa !21
  br label %bb471
bb467:
  call void @__olang_check_failed(ptr @olang_loc_4ce35395f0f925b9_cbae4bbebb7ea34d)
  unreachable
bb468:
  br label %bb469
bb469:
  %t1551 = load ptr, ptr %l3, !tbaa !29
  %t1552 = load ptr, ptr %l756, !tbaa !29
  %t1554 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceOfRefs(ptr %v0, ptr %v1, ptr %t1552, ptr %t1551)
  store i1 %t1554, ptr %l760
  br label %bb470
bb470:
  %t1555 = load i1, ptr %l760, !tbaa !21
  store i1 %t1555, ptr %l755, !tbaa !21
  br label %bb471
bb471:
  %t1556 = load i1, ptr %l755, !tbaa !21
  br i1 %t1556, label %bb472, label %bb473
bb472:
  %t1557 = load ptr, ptr %l0, !tbaa !29
  %t1559 = getelementptr %"compiler/scope:Scoper", ptr %t1557, i32 0, i32 34
  %t1560 = load i32, ptr %l2, !tbaa !23
  %t1562 = sext i32 %t1560 to i64
  %t1563 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 1
  %t1564 = load { i64, [2 x i64] }, ptr %t1563
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t1559, i64 %t1562, { i64, [2 x i64] } %t1564)
  br label %bb474
bb473:
  br label %bb475
bb474:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb475:
  br label %bb481
bb476:
  br i1 true, label %bb477, label %bb478
bb477:
  br label %bb479
bb478:
  br label %bb480
bb479:
  br label %bb481
bb480:
  call void @__olang_check_failed(ptr @olang_loc_ef194281b7e9372b_4f5022b99d00b52f)
  unreachable
bb481:
  %t1568 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 0
  %t1569 = load i32, ptr %t1568, !range !{i32 0, i32 5}
  %t1571 = trunc i64 2 to i32
  %t1572 = icmp eq i32 %t1569, %t1571
  br i1 %t1572, label %bb482, label %bb483
bb482:
  %t1574 = load ptr, ptr %l0, !tbaa !29
  %t1576 = getelementptr %"compiler/scope:Scoper", ptr %t1574, i32 0, i32 28
  %t1577 = load i1, ptr %t1576, !tbaa !21
  store i1 %t1577, ptr %l768, !tbaa !21
  br label %bb484
bb483:
  store i1 false, ptr %l768, !tbaa !21
  br label %bb484
bb484:
  %t1579 = load i1, ptr %l768, !tbaa !21
  br i1 %t1579, label %bb485, label %bb486
bb485:
  %t1580 = load ptr, ptr %l0, !tbaa !29
  %t1581 = load { i64, [2 x i64] }, ptr %l16
  %t1584 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunknownBinding(ptr %v0, ptr %t1580, { i64, [2 x i64] } %t1581)
  store i1 %t1584, ptr %l774
  br label %bb487
bb486:
  store i1 false, ptr %l771, !tbaa !21
  br label %bb488
bb487:
  %t1585 = load i1, ptr %l774, !tbaa !21
  store i1 %t1585, ptr %l771, !tbaa !21
  br label %bb488
bb488:
  %t1586 = load i1, ptr %l771, !tbaa !21
  br i1 %t1586, label %bb489, label %bb490
bb489:
  %t1587 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1587, ptr %l775, !tbaa !29
  %t1588 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1588, ptr %l776, !tbaa !29
  %t1589 = load ptr, ptr %l3, !tbaa !29
  %t1591 = icmp eq ptr %t1589, null
  br i1 %t1591, label %bb491, label %bb492
bb490:
  br label %bb497
bb491:
  call void @__olang_check_failed(ptr @olang_loc_b7b2bcd4863652d3_99a604389ddb6357)
  unreachable
bb492:
  br label %bb493
bb493:
  %t1593 = load ptr, ptr %l3, !tbaa !29
  %t1594 = load ptr, ptr %l776, !tbaa !29
  %t1596 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t1594, ptr %t1593)
  store %"compiler/source:Span" %t1596, ptr %l780
  br label %bb494
bb494:
  %t1597 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildThroughUnknownScope(ptr %v0)
  store %"compiler/diagmsg:Msg" %t1597, ptr %l781
  br label %bb495
bb495:
  %t1598 = load ptr, ptr %l775, !tbaa !29
  %t1599 = load %"compiler/source:Span", ptr %l780
  %t1600 = load %"compiler/diagmsg:Msg", ptr %l781
  %t1601 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t1598, %"compiler/source:Span" %t1599, %"compiler/diagmsg:Msg" %t1600)
  store i64 %t1601, ptr %l782
  br label %bb496
bb496:
  br label %bb497
bb497:
  %t1602 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t1603 = load i32, ptr %t1602, !range !{i32 0, i32 7}
  %t1605 = trunc i64 6 to i32
  %t1606 = icmp eq i32 %t1603, %t1605
  br i1 %t1606, label %bb498, label %bb499
bb498:
  %t1608 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 0
  %t1609 = load i32, ptr %t1608, !range !{i32 0, i32 5}
  %t1611 = trunc i64 2 to i32
  %t1612 = icmp eq i32 %t1609, %t1611
  store i1 %t1612, ptr %l785, !tbaa !21
  br label %bb500
bb499:
  store i1 false, ptr %l785, !tbaa !21
  br label %bb500
bb500:
  %t1614 = load i1, ptr %l785, !tbaa !21
  br i1 %t1614, label %bb501, label %bb502
bb501:
  %t1615 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 1
  %t1616 = load { i64, [2 x i64] }, ptr %t1615
  store { i64, [2 x i64] } %t1616, ptr %l789
  %t1617 = load { i64, [2 x i64] }, ptr %l16
  store { i64, [2 x i64] } %t1617, ptr %l791
  %t1620 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l789, ptr %l791)
  store i1 %t1620, ptr %l793
  br label %bb503
bb502:
  store i1 false, ptr %l788, !tbaa !21
  br label %bb504
bb503:
  %t1621 = load i1, ptr %l793, !tbaa !21
  %t1622 = xor i1 %t1621, true
  store i1 %t1622, ptr %l788, !tbaa !21
  br label %bb504
bb504:
  %t1624 = load i1, ptr %l788, !tbaa !21
  br i1 %t1624, label %bb505, label %bb506
bb505:
  %t1625 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 1
  %t1626 = load { i64, [2 x i64] }, ptr %t1625
  %t1628 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRelatable({ i64, [2 x i64] } %t1626)
  store i1 %t1628, ptr %l797
  br label %bb507
bb506:
  store i1 false, ptr %l795, !tbaa !21
  br label %bb508
bb507:
  %t1629 = load i1, ptr %l797, !tbaa !21
  store i1 %t1629, ptr %l795, !tbaa !21
  br label %bb508
bb508:
  %t1630 = load i1, ptr %l795, !tbaa !21
  br i1 %t1630, label %bb509, label %bb510
bb509:
  %t1631 = load ptr, ptr %l0, !tbaa !29
  %t1632 = load i64, ptr @G_2ecompiler_2fscope_2eWhyField, !tbaa !24
  %t1635 = getelementptr %"compiler/scope:Scoper", ptr %t1631, i32 0, i32 125
  store i64 %t1632, ptr %t1635, !tbaa !24
  %t1636 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1636, ptr %l800, !tbaa !29
  %t1637 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 1
  %t1638 = load { i64, [2 x i64] }, ptr %t1637
  store { i64, [2 x i64] } %t1638, ptr %l801
  %t1639 = load { i64, [2 x i64] }, ptr %l16
  store { i64, [2 x i64] } %t1639, ptr %l802
  %t1640 = load ptr, ptr %l3, !tbaa !29
  %t1642 = icmp eq ptr %t1640, null
  br i1 %t1642, label %bb511, label %bb512
bb510:
  br label %bb515
bb511:
  call void @__olang_check_failed(ptr @olang_loc_867a81ac657fc1e6_792cc237e4eb2912)
  unreachable
bb512:
  br label %bb513
bb513:
  %t1644 = load ptr, ptr %l3, !tbaa !29
  %t1645 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  %t1646 = load ptr, ptr %l800, !tbaa !29
  %t1647 = load { i64, [2 x i64] }, ptr %l801
  %t1648 = load { i64, [2 x i64] }, ptr %l802
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t1646, { i64, [2 x i64] } %t1647, { i64, [2 x i64] } %t1648, i1 false, ptr %t1644, i64 %t1645)
  br label %bb514
bb514:
  %t1651 = load ptr, ptr %l0, !tbaa !29
  %t1653 = getelementptr %"compiler/scope:Scoper", ptr %t1651, i32 0, i32 125
  store i64 0, ptr %t1653, !tbaa !24
  br label %bb515
bb515:
  %t1654 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 0
  %t1655 = load i32, ptr %t1654, !range !{i32 0, i32 5}
  %t1657 = trunc i64 3 to i32
  %t1658 = icmp eq i32 %t1655, %t1657
  br i1 %t1658, label %bb516, label %bb517
bb516:
  %t1660 = load ptr, ptr %l0, !tbaa !29
  %t1661 = load i32, ptr %l5, !tbaa !23
  %t1664 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enarrowingMatters(ptr %v0, ptr %t1660, i32 %t1661)
  store i1 %t1664, ptr %l812
  br label %bb518
bb517:
  br label %bb530
bb518:
  %t1665 = load i1, ptr %l812, !tbaa !21
  store i1 %t1665, ptr %l37, !tbaa !21
  %t1666 = load i64, ptr @G_2ecompiler_2fscope_2eFitLocal, !tbaa !24
  store i64 %t1666, ptr %l38, !tbaa !24
  %t1668 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t1669 = load i32, ptr %t1668, !range !{i32 0, i32 7}
  %t1671 = trunc i64 6 to i32
  %t1672 = icmp eq i32 %t1669, %t1671
  br i1 %t1672, label %bb519, label %bb520
bb519:
  %t1674 = load ptr, ptr %l0, !tbaa !29
  %t1675 = load i32, ptr %l5, !tbaa !23
  %t1678 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t1674, i32 %t1675)
  store i1 %t1678, ptr %l818
  br label %bb521
bb520:
  br label %bb525
bb521:
  %t1679 = load i1, ptr %l818, !tbaa !21
  store i1 %t1679, ptr %l37, !tbaa !21
  %t1680 = load i1, ptr %l37, !tbaa !21
  br i1 %t1680, label %bb522, label %bb523
bb522:
  %t1682 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  store i64 %t1682, ptr %l820, !tbaa !24
  br label %bb524
bb523:
  %t1684 = load i64, ptr @G_2ecompiler_2fscope_2eFitDecl, !tbaa !24
  store i64 %t1684, ptr %l820, !tbaa !24
  br label %bb524
bb524:
  %t1686 = load i64, ptr %l820, !tbaa !24
  store i64 %t1686, ptr %l38, !tbaa !24
  %t1687 = load ptr, ptr %l0, !tbaa !29
  %t1688 = load i64, ptr @G_2ecompiler_2fscope_2eWhyHolds, !tbaa !24
  %t1691 = getelementptr %"compiler/scope:Scoper", ptr %t1687, i32 0, i32 125
  store i64 %t1688, ptr %t1691, !tbaa !24
  br label %bb525
bb525:
  %t1692 = load ptr, ptr %l0, !tbaa !29
  %t1693 = load i32, ptr %l2, !tbaa !23
  %t1695 = sext i32 %t1693 to i64
  %t1698 = getelementptr %"compiler/scope:Scoper", ptr %t1692, i32 0, i32 196
  store i64 %t1695, ptr %t1698, !tbaa !24
  %t1699 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1699, ptr %l828, !tbaa !29
  %t1700 = getelementptr %"compiler/scope:Val", ptr %l34, i32 0, i32 1
  %t1701 = load { i64, [2 x i64] }, ptr %t1700
  store { i64, [2 x i64] } %t1701, ptr %l829
  %t1702 = load { i64, [2 x i64] }, ptr %l16
  store { i64, [2 x i64] } %t1702, ptr %l830
  %t1703 = load i1, ptr %l37, !tbaa !21
  store i1 %t1703, ptr %l831, !tbaa !21
  %t1704 = load ptr, ptr %l3, !tbaa !29
  %t1706 = icmp eq ptr %t1704, null
  br i1 %t1706, label %bb526, label %bb527
bb526:
  call void @__olang_check_failed(ptr @olang_loc_426d318a55139bcd_d6246dca57642d39)
  unreachable
bb527:
  br label %bb528
bb528:
  %t1708 = load ptr, ptr %l3, !tbaa !29
  %t1709 = load i64, ptr %l38, !tbaa !24
  %t1710 = load ptr, ptr %l828, !tbaa !29
  %t1711 = load { i64, [2 x i64] }, ptr %l829
  %t1712 = load { i64, [2 x i64] }, ptr %l830
  %t1713 = load i1, ptr %l831, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t1710, { i64, [2 x i64] } %t1711, { i64, [2 x i64] } %t1712, i1 %t1713, ptr %t1708, i64 %t1709)
  br label %bb529
bb529:
  %t1716 = load ptr, ptr %l0, !tbaa !29
  %t1718 = getelementptr %"compiler/scope:Scoper", ptr %t1716, i32 0, i32 196
  store i64 -1, ptr %t1718, !tbaa !24
  %t1719 = load ptr, ptr %l0, !tbaa !29
  %t1721 = getelementptr %"compiler/scope:Scoper", ptr %t1719, i32 0, i32 125
  store i64 0, ptr %t1721, !tbaa !24
  br label %bb530
bb530:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftCopied(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l6 = alloca i1
  %l8 = alloca i1
  %l16 = alloca i64
  %l19 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l34 = alloca %"compiler/typed:Local"
  %l36 = alloca i1
  %l37 = alloca i1
  %l46 = alloca %"compiler/typed:Local"
  %l48 = alloca ptr
  %l57 = alloca %"compiler/typed:Local"
  %l59 = alloca { i64, [2 x i64] }
  %l63 = alloca { i64, [2 x i64] }
  %l65 = alloca { i64, [2 x i64] }
  %l67 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Make", ptr %t7, i32 0, i32 4
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = icmp slt i32 %t10, 0
  store i1 %t12, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 4
  %t19 = load i32, ptr %t18, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastCopy(ptr %v0, ptr %t15, i64 %t21)
  store i64 %t24, ptr %l16
  br label %bb8
bb8:
  %t25 = load i64, ptr %l16, !tbaa !24
  store i64 %t25, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = icmp slt i64 %t26, 0
  br i1 %t28, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb12
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %t30, i64 %t31)
  store i1 %t34, ptr %l22
  br label %bb11
bb11:
  %t35 = load i1, ptr %l22, !tbaa !21
  %t36 = xor i1 %t35, true
  store i1 %t36, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t38 = load i1, ptr %l19, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb20
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l25, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %t40, i32 0, i32 26
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  br i1 %t45, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_2da9196a4802a87e_4c8be8a34b4612f2)
  unreachable
bb16:
  br label %bb17
bb17:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 26
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Body", ptr %t50, i32 0, i32 7
  %t54 = load i64, ptr %l3, !tbaa !24
  %t57 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t53, i64 %t54)
  store %"compiler/typed:Local" %t57, ptr %l34
  br label %bb18
bb18:
  %t58 = getelementptr %"compiler/typed:Local", ptr %l34, i32 0, i32 2
  %t59 = load i32, ptr %t58, !tbaa !23
  %t60 = load ptr, ptr %l25, !tbaa !29
  %t62 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t60, i32 %t59)
  store i1 %t62, ptr %l36
  br label %bb19
bb19:
  %t63 = load i1, ptr %l36, !tbaa !21
  store i1 %t63, ptr %l24, !tbaa !21
  br label %bb20
bb20:
  %t64 = load i1, ptr %l24, !tbaa !21
  br i1 %t64, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb27
bb22:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 26
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = icmp eq ptr %t68, null
  br i1 %t70, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_2da9196a4802a87e_4c8be8a34b4612f2)
  unreachable
bb24:
  br label %bb25
bb25:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 26
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Body", ptr %t75, i32 0, i32 7
  %t79 = load i64, ptr %l3, !tbaa !24
  %t82 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t78, i64 %t79)
  store %"compiler/typed:Local" %t82, ptr %l46
  br label %bb26
bb26:
  %t83 = getelementptr %"compiler/typed:Local", ptr %l46, i32 0, i32 6
  %t84 = load i1, ptr %t83, !tbaa !21
  store i1 %t84, ptr %l37, !tbaa !21
  br label %bb27
bb27:
  %t86 = load i1, ptr %l37, !tbaa !21
  br i1 %t86, label %bb28, label %bb29
bb28:
  br label %ret
bb29:
  br label %bb30
bb30:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l48, !tbaa !29
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/scope:Scoper", ptr %t88, i32 0, i32 26
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  br i1 %t93, label %bb31, label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_eb87dd4121528525_adda5cbf4b37aa19)
  unreachable
bb32:
  br label %bb33
bb33:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/scope:Scoper", ptr %t95, i32 0, i32 26
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Body", ptr %t98, i32 0, i32 7
  %t102 = load i64, ptr %l3, !tbaa !24
  %t105 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t101, i64 %t102)
  store %"compiler/typed:Local" %t105, ptr %l57
  br label %bb34
bb34:
  %t106 = getelementptr %"compiler/typed:Local", ptr %l57, i32 0, i32 3
  %t107 = load i32, ptr %t106, !tbaa !23
  %t108 = load ptr, ptr %l48, !tbaa !29
  %t110 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t108, i32 %t107)
  store { i64, [2 x i64] } %t110, ptr %l59
  br label %bb35
bb35:
  %t111 = load { i64, [2 x i64] }, ptr %l59
  store { i64, [2 x i64] } %t111, ptr %l4
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, [2 x i64] }, ptr %l4
  %t114 = load { i64, [2 x i64] }, ptr %l2
  %t118 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t112, { i64, [2 x i64] } %t113, { i64, [2 x i64] } %t114)
  store { i64, [2 x i64] } %t118, ptr %l63
  br label %bb36
bb36:
  %t119 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t119, ptr %l65
  %t122 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l63, ptr %l65)
  store i1 %t122, ptr %l67
  br label %bb37
bb37:
  %t123 = load i1, ptr %l67, !tbaa !21
  br i1 %t123, label %bb38, label %bb39
bb38:
  br label %ret
bb39:
  br label %bb40
bb40:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l3, !tbaa !24
  %t126 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftLocal(ptr %v0, ptr %t124, i64 %t125, { i64, [2 x i64] } %t126, i1 true)
  br label %bb41
bb41:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l55 = alloca { i64, [2 x i64] }
  %l57 = alloca { i64, [2 x i64] }
  %l59 = alloca i1
  %l68 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
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
  %t5 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRoot(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store i64 %t15, ptr %l16
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t16 = load i64, ptr %l16, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sge i64 %t17, 0
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = ptrtoint ptr %s0 to i64
  store i64 %t21, ptr %l20, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2estd_2fprelude_2farray_3aArrayIter_3cI64_3e_2e0
  br i1 %t22, label %bb8, label %bb9
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceRoots(ptr %v0, ptr %v1, ptr %s0, ptr %t24, ptr %t25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l29
  br label %bb12
bb8:
  %t29 = call ptr @__olang_region_make(ptr %s0)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = mul i64 1, 8
  %t33 = load i64, ptr %l20
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call ptr @__olang_scope_alloc_zeroed(ptr %t34, i64 %t32)
  %t36 = insertvalue { i64, ptr } undef, i64 1, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l23, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i64, ptr %t40, i64 0
  store i64 %t31, ptr %t41, !tbaa !34
  %t42 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t43 = call %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %s0, ptr %s0, { i64, ptr } %t42)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t43, ptr %l24
  br label %bb10
bb10:
  %t44 = load %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %l24
  %t45 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t44, ptr %t45
  %t47 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %s0, ptr %s0, ptr %t45)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l26
  br label %bb11
bb11:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l19
  br label %bb13
bb12:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l19
  br label %bb13
bb13:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l4
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l4)
  store i64 %t52, ptr %l31
  br label %bb14
bb14:
  %t53 = load i64, ptr %l31, !tbaa !24
  %t54 = icmp eq i64 %t53, 0
  br i1 %t54, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  store i1 true, ptr %l5, !tbaa !21
  store ptr %l4, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  %t58 = load i64, ptr %l7, !tbaa !24
  store i64 %t58, ptr %l35, !tbaa !24
  %t59 = load ptr, ptr %l6, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t59)
  store i64 %t61, ptr %l37
  br label %bb19
bb19:
  %t62 = load i64, ptr %l35, !tbaa !24
  %t63 = load i64, ptr %l37, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb20, label %bb21
bb20:
  br label %bb42
bb21:
  br label %bb22
bb22:
  %t68 = load ptr, ptr %l6, !tbaa !29
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l42
  br label %bb23
bb23:
  %t73 = load i64, ptr %l42, !tbaa !24
  store i64 %t73, ptr %l8, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %t74, i64 %t75)
  store i1 %t78, ptr %l45
  br label %bb24
bb24:
  %t79 = load i1, ptr %l45, !tbaa !21
  %t80 = xor i1 %t79, true
  br i1 %t80, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb28
bb26:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load { i64, [2 x i64] }, ptr %l2
  %t86 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %t82, { i64, [2 x i64] } %t83)
  store i1 %t86, ptr %l50
  br label %bb27
bb27:
  %t87 = load i1, ptr %l50, !tbaa !21
  store i1 %t87, ptr %l47, !tbaa !21
  br label %bb28
bb28:
  %t88 = load i1, ptr %l47, !tbaa !21
  br i1 %t88, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %t90, i32 0, i32 35
  %t93 = load i64, ptr %l8, !tbaa !24
  %t96 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t92, i64 %t93)
  store { i64, [2 x i64] } %t96, ptr %l55
  br label %bb32
bb32:
  %t97 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t97, ptr %l57
  %t100 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l55, ptr %l57)
  store i1 %t100, ptr %l59
  br label %bb33
bb33:
  %t101 = load i1, ptr %l59, !tbaa !21
  br i1 %t101, label %bb34, label %bb35
bb34:
  br label %bb41
bb35:
  br label %bb36
bb36:
  store i1 false, ptr %l5, !tbaa !21
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/scope:Scoper", ptr %t102, i32 0, i32 147
  %t105 = load i1, ptr %t104, !tbaa !21
  br i1 %t105, label %bb37, label %bb38
bb37:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i64, ptr %l8, !tbaa !24
  %t109 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftStorage(ptr %v0, ptr %t107, i64 %t108, { i64, [2 x i64] } %t109)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t113 = load i64, ptr %l7, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l7, !tbaa !24
  br label %bb18
bb42:
  %t117 = load i1, ptr %l5, !tbaa !21
  br i1 %t117, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb45
bb44:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %t119, i32 0, i32 147
  %t122 = load i1, ptr %t121, !tbaa !21
  store i1 %t122, ptr %l68, !tbaa !21
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t124 = load i1, ptr %l68, !tbaa !21
  store i1 %t124, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteRecs(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"compiler/scope:fnRecs"
  %l5 = alloca i64
  %l6 = alloca ptr
  %l15 = alloca %"compiler/typed:Local"
  %l17 = alloca i1
  %l22 = alloca %"compiler/scope:fnRecs"
  %l26 = alloca %"compiler/scope:fnRecs"
  %l27 = alloca %"compiler/scope:fnRecs"
  %l30 = alloca i1
  %l39 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca %"compiler/scope:fnRecs"
  %l47 = alloca %"compiler/scope:fnRecs"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 26
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_1af6112f776024f0_9f71501f5f48544c)
  unreachable
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 26
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 7
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/typed:Local" %t19, ptr %l15
  br label %bb4
bb4:
  %t20 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 2
  %t21 = load i32, ptr %t20, !tbaa !23
  %t22 = load ptr, ptr %l6, !tbaa !29
  %t24 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t22, i32 %t21)
  store i1 %t24, ptr %l17
  br label %bb5
bb5:
  %t25 = load i1, ptr %l17, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t39 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecsOf(ptr %v0, ptr %v1, ptr %s0, ptr %t34, ptr %t35)
  store %"compiler/scope:fnRecs" %t39, ptr %l26
  br label %bb11
bb10:
  %t40 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %s0)
  store %"compiler/scope:fnRecs" %t40, ptr %l27
  br label %bb12
bb11:
  %t41 = load %"compiler/scope:fnRecs", ptr %l26
  store %"compiler/scope:fnRecs" %t41, ptr %l22
  br label %bb13
bb12:
  %t42 = load %"compiler/scope:fnRecs", ptr %l27
  store %"compiler/scope:fnRecs" %t42, ptr %l22
  br label %bb13
bb13:
  %t43 = load %"compiler/scope:fnRecs", ptr %l22
  store %"compiler/scope:fnRecs" %t43, ptr %l4
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t44, i64 %t45)
  store i1 %t48, ptr %l30
  br label %bb14
bb14:
  %t49 = load i1, ptr %l30, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 159
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = icmp eq ptr %t53, null
  br i1 %t55, label %bb17, label %bb18
bb16:
  br label %bb26
bb17:
  call void @__olang_check_failed(ptr @olang_loc_53628e95619551cf_9f8e9131e60fb0bb)
  unreachable
bb18:
  br label %bb19
bb19:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 159
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t62 = load i32, ptr %t61, !tbaa !23
  %t64 = sext i32 %t62 to i64
  %t65 = load i64, ptr %l2, !tbaa !24
  %t69 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %t60, i64 %t64, i64 %t65)
  store i64 %t69, ptr %l39
  br label %bb20
bb20:
  %t70 = load i64, ptr %l39, !tbaa !24
  store i64 %t70, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = icmp sge i64 %t71, 0
  br i1 %t73, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t75, i32 0, i32 94
  store ptr %t77, ptr %l43, !tbaa !29
  %t78 = load i64, ptr %l5, !tbaa !24
  store i64 %t78, ptr %l44, !tbaa !24
  %t79 = load %"compiler/scope:fnRecs", ptr %l4
  store %"compiler/scope:fnRecs" %t79, ptr %l45
  %t81 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s3, ptr %l45)
  store %"compiler/scope:fnRecs" %t81, ptr %l47
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t82 = load ptr, ptr %l43, !tbaa !29
  %t83 = load i64, ptr %l44, !tbaa !24
  %t84 = load %"compiler/scope:fnRecs", ptr %l47
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %v0, ptr %s3, ptr %t82, i64 %t83, %"compiler/scope:fnRecs" %t84)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 93
  %t88 = load i64, ptr %l2, !tbaa !24
  %t89 = load %"compiler/scope:fnRecs", ptr %l4
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %v0, ptr %s0, ptr %t87, i64 %t88, %"compiler/scope:fnRecs" %t89)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l31 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l42 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l62 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l74 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l86 = alloca i1
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
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l4, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = icmp ne i64 %t18, %t19
  store i1 %t22, ptr %rv
  br label %ret
bb6:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t25 = load ptr, ptr %l20, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l20, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 8}
  %t31 = icmp eq i64 %t29, 2
  store i1 %t31, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l21, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l5, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i1, ptr %l3, !tbaa !21
  %t48 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t39, ptr %t40, i64 %t42, i1 %t43)
  store i1 %t48, ptr %l31
  br label %bb12
bb12:
  %t49 = load i1, ptr %l31, !tbaa !21
  store i1 %t49, ptr %rv
  br label %ret
bb13:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t51 = load ptr, ptr %l32, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l32, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 8}
  %t57 = icmp eq i64 %t55, 3
  store i1 %t57, ptr %l33, !tbaa !21
  br label %bb15
bb15:
  %t58 = load i1, ptr %l33, !tbaa !21
  br i1 %t58, label %bb16, label %bb17
bb16:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l6, !tbaa !29
  %t67 = load i64, ptr %l2, !tbaa !24
  %t68 = load i1, ptr %l3, !tbaa !21
  %t73 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocPlace(ptr %v0, ptr %v1, ptr %t65, ptr %t66, i64 %t67, i1 %t68)
  store i1 %t73, ptr %l42
  br label %bb19
bb19:
  %t74 = load i1, ptr %l42, !tbaa !21
  store i1 %t74, ptr %rv
  br label %ret
bb20:
  %t75 = load ptr, ptr %l1, !tbaa !29
  store ptr %t75, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t76 = load ptr, ptr %l43, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb21, label %bb22
bb21:
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 8}
  %t82 = icmp eq i64 %t80, 4
  store i1 %t82, ptr %l44, !tbaa !21
  br label %bb22
bb22:
  %t83 = load i1, ptr %l44, !tbaa !21
  br i1 %t83, label %bb23, label %bb24
bb23:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l7, !tbaa !29
  br label %bb25
bb24:
  br label %bb31
bb25:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l7, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Elem", ptr %t91, i32 0, i32 0
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t95 = load i64, ptr %l2, !tbaa !24
  %t96 = load i1, ptr %l3, !tbaa !21
  %t101 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocPlace(ptr %v0, ptr %v1, ptr %t90, ptr %t94, i64 %t95, i1 %t96)
  store i1 %t101, ptr %l54
  br label %bb26
bb26:
  %t102 = load i1, ptr %l54, !tbaa !21
  br i1 %t102, label %bb27, label %bb28
bb27:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l7, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Elem", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = load i64, ptr %l2, !tbaa !24
  %t110 = load i1, ptr %l3, !tbaa !21
  %t115 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t103, ptr %t107, i64 %t109, i1 %t110)
  store i1 %t115, ptr %l62
  br label %bb29
bb28:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb30
bb29:
  %t116 = load i1, ptr %l62, !tbaa !21
  store i1 %t116, ptr %l55, !tbaa !21
  br label %bb30
bb30:
  %t117 = load i1, ptr %l55, !tbaa !21
  store i1 %t117, ptr %rv
  br label %ret
bb31:
  %t118 = load ptr, ptr %l1, !tbaa !29
  store ptr %t118, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t119 = load ptr, ptr %l63, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb32, label %bb33
bb32:
  %t122 = load ptr, ptr %l63, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 8}
  %t125 = icmp eq i64 %t123, 5
  store i1 %t125, ptr %l64, !tbaa !21
  br label %bb33
bb33:
  %t126 = load i1, ptr %l64, !tbaa !21
  br i1 %t126, label %bb34, label %bb35
bb34:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr { i64, [4 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t129, i32 0, i32 2
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l8, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l8, !tbaa !29
  %t136 = getelementptr %"compiler/typed:Payload", ptr %t134, i32 0, i32 0
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t138 = load i64, ptr %l2, !tbaa !24
  %t139 = load i1, ptr %l3, !tbaa !21
  %t144 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocPlace(ptr %v0, ptr %v1, ptr %t133, ptr %t137, i64 %t138, i1 %t139)
  store i1 %t144, ptr %l74
  br label %bb37
bb37:
  %t145 = load i1, ptr %l74, !tbaa !21
  store i1 %t145, ptr %rv
  br label %ret
bb38:
  %t146 = load ptr, ptr %l1, !tbaa !29
  store ptr %t146, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t147 = load ptr, ptr %l75, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb39, label %bb40
bb39:
  %t150 = load ptr, ptr %l75, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 8}
  %t153 = icmp eq i64 %t151, 6
  store i1 %t153, ptr %l76, !tbaa !21
  br label %bb40
bb40:
  %t154 = load i1, ptr %l76, !tbaa !21
  br i1 %t154, label %bb41, label %bb42
bb41:
  %t155 = load ptr, ptr %l1, !tbaa !29
  %t157 = getelementptr { i64, [4 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t157, i32 0, i32 2
  %t159 = load ptr, ptr %t158
  store ptr %t159, ptr %l9, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l9, !tbaa !29
  %t164 = load i64, ptr %l2, !tbaa !24
  %t165 = load i1, ptr %l3, !tbaa !21
  %t170 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %t161, ptr %t162, i64 %t164, i1 %t165)
  store i1 %t170, ptr %l86
  br label %bb44
bb44:
  %t171 = load i1, ptr %l86, !tbaa !21
  store i1 %t171, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_a3d67bab0a0a1a9_82466bf787f25fd)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l39 = alloca { i64, ptr }
  %l45 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a2, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l7, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l7, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l20, !tbaa !24
  store i64 %t33, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l17, !tbaa !24
  store i64 %t34, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l9, !tbaa !24
  %t36 = load i64, ptr %l8, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t54, ptr %l39, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr ptr, ptr %t58, i64 %t51
  %t60 = load ptr, ptr %t59, !tbaa !39
  %t68 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmt(ptr %v0, ptr %v1, ptr %a0, ptr %t60, i64 %a3, i1 %a4)
  store i1 %t68, ptr %l45
  br label %bb11
bb11:
  %t69 = load i1, ptr %l45, !tbaa !21
  %t70 = xor i1 %t69, true
  br i1 %t70, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t73 = load i64, ptr %l9, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l9, !tbaa !24
  br label %bb7
bb16:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopenAt(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i1
  %l23 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l33 = alloca { i64, [2 x i64] }
  %l35 = alloca i1
  %l42 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb7
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 2
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  %t11 = load { i64, [2 x i64] }, ptr %l1
  %t13 = extractvalue { i64, [2 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 3
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb35
bb8:
  %t16 = load { i64, [2 x i64] }, ptr %l1
  %t18 = extractvalue { i64, [2 x i64] } %t16, 0
  %t19 = icmp eq i64 %t18, 1
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t21 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t22 = getelementptr { i32 }, ptr %t21, i32 0, i32 0
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l3, !tbaa !23
  br label %bb11
bb10:
  br label %bb16
bb11:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 26
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_14455cde4f54c772_c18dc270901e4076)
  unreachable
bb13:
  br label %bb14
bb14:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 26
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i32, ptr %l3, !tbaa !23
  %t37 = load i32, ptr %l2, !tbaa !23
  %t41 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t35, i32 %t36, i32 %t37)
  store i1 %t41, ptr %l23
  br label %bb15
bb15:
  %t42 = load i1, ptr %l23, !tbaa !21
  store i1 %t42, ptr %l6, !tbaa !21
  br label %bb35
bb16:
  %t43 = load { i64, [2 x i64] }, ptr %l1
  %t45 = extractvalue { i64, [2 x i64] } %t43, 0
  %t46 = icmp eq i64 %t45, 4
  br i1 %t46, label %bb17, label %bb18
bb17:
  %t48 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t49 = getelementptr { i64, i64 }, ptr %t48, i32 0, i32 0
  %t50 = load i64, ptr %t49
  store i64 %t50, ptr %l4, !tbaa !24
  br label %bb19
bb18:
  br label %bb25
bb19:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t54 = icmp sge i64 %t52, 0
  br i1 %t54, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb24
bb21:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l30, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, [2 x i64] }, ptr %l1
  %t61 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %t57, { i64, [2 x i64] } %t58)
  store { i64, [2 x i64] } %t61, ptr %l33
  br label %bb22
bb22:
  %t62 = load i32, ptr %l2, !tbaa !23
  %t63 = load ptr, ptr %l30, !tbaa !29
  %t64 = load { i64, [2 x i64] }, ptr %l33
  %t66 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopenAt(ptr %v0, ptr %t63, { i64, [2 x i64] } %t64, i32 %t62)
  store i1 %t66, ptr %l35
  br label %bb23
bb23:
  %t67 = load i1, ptr %l35, !tbaa !21
  store i1 %t67, ptr %l29, !tbaa !21
  br label %bb24
bb24:
  %t68 = load i1, ptr %l29, !tbaa !21
  store i1 %t68, ptr %l6, !tbaa !21
  br label %bb35
bb25:
  %t69 = load { i64, [2 x i64] }, ptr %l1
  %t71 = extractvalue { i64, [2 x i64] } %t69, 0
  %t72 = icmp eq i64 %t71, 5
  br i1 %t72, label %bb26, label %bb27
bb26:
  %t74 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t75 = getelementptr { i64 }, ptr %t74, i32 0, i32 0
  %t76 = load i64, ptr %t75
  store i64 %t76, ptr %l5, !tbaa !24
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i64, ptr %l5, !tbaa !24
  %t80 = load i32, ptr %l2, !tbaa !23
  %t84 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOpenAt(ptr %v0, ptr %t78, i64 %t79, i32 %t80)
  store i1 %t84, ptr %l42
  br label %bb29
bb29:
  %t85 = load i1, ptr %l42, !tbaa !21
  store i1 %t85, ptr %l6, !tbaa !21
  br label %bb35
bb30:
  %t86 = load { i64, [2 x i64] }, ptr %l1
  %t88 = extractvalue { i64, [2 x i64] } %t86, 0
  %t89 = icmp eq i64 %t88, 6
  br i1 %t89, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_4a184edc0e9e6e50_84275d6964bd8c04)
  unreachable
bb35:
  %t91 = load i1, ptr %l6, !tbaa !21
  store i1 %t91, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca ptr
  %l5 = alloca %"compiler/scope:Val"
  %l19 = alloca { i64, ptr }
  %l25 = alloca %"compiler/scope:Val"
  %l28 = alloca i1
  %l33 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca { i64, [2 x i64] }
  %l36 = alloca { i64, [2 x i64] }
  %l39 = alloca i1
  %l43 = alloca %"compiler/scope:Val"
  %rv = alloca %"compiler/scope:Val"
  %t40 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Make", ptr %t1, i32 0, i32 4
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp sge i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Make", ptr %t9, i32 0, i32 4
  %t12 = load i32, ptr %t11, !tbaa !23
  %t13 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t8, i32 %t12, { i64, [2 x i64] } %t13)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 147
  %t20 = load i1, ptr %t19, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t24 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftCopied(ptr %v0, ptr %v1, ptr %t22, ptr %t23, { i64, [2 x i64] } %t24)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Make", ptr %t28, i32 0, i32 2
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr ptr, ptr %t33, i64 0
  %t35 = load ptr, ptr %t34, !tbaa !39
  store ptr %t35, ptr %l4, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l4, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 0
  store i64 0, ptr %t41
  %t42 = load { i64, [2 x i64] }, ptr %t40
  %t46 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t37, ptr %t38, { i64, [2 x i64] } %t42)
  store %"compiler/scope:Val" %t46, ptr %l25
  br label %bb9
bb9:
  %t47 = load %"compiler/scope:Val", ptr %l25
  store %"compiler/scope:Val" %t47, ptr %l5
  %t48 = getelementptr %"compiler/scope:Val", ptr %l5, i32 0, i32 0
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 5}
  %t51 = trunc i64 3 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb10, label %bb11
bb10:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l2, !tbaa !23
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %t59, i32 %t60)
  store i1 %t63, ptr %l33
  br label %bb12
bb11:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb13
bb12:
  %t64 = load i1, ptr %l33, !tbaa !21
  store i1 %t64, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t65 = load i1, ptr %l28, !tbaa !21
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l34, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Val", ptr %l5, i32 0, i32 1
  %t68 = load { i64, [2 x i64] }, ptr %t67
  store { i64, [2 x i64] } %t68, ptr %l35
  %t69 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t69, ptr %l36
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l2, !tbaa !23
  %t74 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t70, i32 %t71)
  store i1 %t74, ptr %l39
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t76 = load i64, ptr @G_2ecompiler_2fscope_2eFitValue, !tbaa !24
  %t77 = load ptr, ptr %l34, !tbaa !29
  %t78 = load { i64, [2 x i64] }, ptr %l35
  %t79 = load { i64, [2 x i64] }, ptr %l36
  %t80 = load i1, ptr %l39, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t77, { i64, [2 x i64] } %t78, { i64, [2 x i64] } %t79, i1 %t80, ptr %t75, i64 %t76)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t83 = load { i64, [2 x i64] }, ptr %l3
  %t85 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %t83)
  store %"compiler/scope:Val" %t85, ptr %l43
  br label %bb19
bb19:
  %t86 = load %"compiler/scope:Val", ptr %l43
  store %"compiler/scope:Val" %t86, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownIntoResult(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l18 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a2, ptr %l2
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
  call void @__olang_check_failed(ptr @olang_loc_8238268b26f31dac_815f599ed0aacad8)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 1
  %t15 = load { i64, [2 x i64] }, ptr %t14
  %t19 = extractvalue { i64, [2 x i64] } %t15, 0
  %t20 = icmp eq i64 %t19, 1
  br i1 %t20, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_aa39aa4c0e664ec2_f7b48f4e1663008e)
  unreachable
bb12:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 42
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb13, label %bb14
bb13:
  %t30 = load { i64, [2 x i64] }, ptr %l2
  %t32 = extractvalue { i64, [2 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 2
  br i1 %t33, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb18
bb15:
  %t35 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t36 = getelementptr { i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 42
  %t41 = load i64, ptr %t40, !tbaa !24
  %t44 = icmp eq i64 %t37, %t41
  store i1 %t44, ptr %l21, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb17
bb17:
  %t46 = load i1, ptr %l21, !tbaa !21
  store i1 %t46, ptr %l18, !tbaa !21
  br label %bb18
bb18:
  %t47 = load i1, ptr %l18, !tbaa !21
  br i1 %t47, label %bb19, label %bb20
bb19:
  %t48 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t49 = getelementptr { i64 }, ptr %t48, i32 0, i32 0
  %t50 = load i64, ptr %t49
  store i64 %t50, ptr %l4, !tbaa !24
  %t54 = call i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %a1)
  store i1 %t54, ptr %l29
  br label %bb21
bb20:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb22
bb21:
  %t55 = load i1, ptr %l29, !tbaa !21
  store i1 %t55, ptr %l26, !tbaa !21
  br label %bb22
bb22:
  %t56 = load i1, ptr %l26, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamIndex(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l48 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 26
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_f4a3544f2707870_d9666a31439b8584)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 5
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l15
  br label %bb4
bb4:
  %t17 = load i64, ptr %l15, !tbaa !24
  store i64 %t17, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb10
bb7:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l22, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l22, !tbaa !24
  store i64 %t44, ptr %l19, !tbaa !24
  br label %bb10
bb10:
  %t45 = load i64, ptr %l19, !tbaa !24
  store i64 %t45, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb12, label %bb13
bb12:
  br label %bb23
bb13:
  br label %bb14
bb14:
  %t54 = load i64, ptr %l2, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l7, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/scope:Scoper", ptr %t64, i32 0, i32 26
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_47b6b2aadca5a54f_c1e200e36f23f353)
  unreachable
bb16:
  br label %bb17
bb17:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 26
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 5
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t77, i64 %t78)
  store i32 %t81, ptr %l48
  br label %bb18
bb18:
  %t82 = load i32, ptr %l48, !tbaa !23
  %t83 = sext i32 %t82 to i64
  %t87 = icmp eq i64 %t83, %a1
  br i1 %t87, label %bb19, label %bb20
bb19:
  %t89 = load i64, ptr %l7, !tbaa !24
  store i64 %t89, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l6, !tbaa !24
  br label %bb11
bb23:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultTerm(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca ptr
  %l15 = alloca i32
  %l20 = alloca { i64, [2 x i64] }
  %l22 = alloca { i64, [2 x i64] }
  %l29 = alloca ptr
  %l38 = alloca i64
  %l41 = alloca i64
  %l49 = alloca i64
  %l59 = alloca i32
  %l64 = alloca { i64, [2 x i64] }
  %l67 = alloca i1
  %l71 = alloca i1
  %l76 = alloca { i64, [2 x i64] }
  %l81 = alloca { i64, [2 x i64] }
  %l86 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t143 = alloca { i64, [2 x i64] }, align 8
  %t155 = alloca { i64, [2 x i64] }, align 8
  %t170 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 26
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_17b5555e490eca40_3a72f19dfd1cef0c)
  unreachable
bb2:
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 26
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t17, i32 0, i32 2
  %t21 = load i32, ptr %t20, !tbaa !23
  %t22 = load ptr, ptr %l7, !tbaa !29
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t22, i32 %t21)
  store i32 %t24, ptr %l15
  br label %bb4
bb4:
  %t25 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t27 = trunc i64 21 to i32
  %t28 = icmp eq i32 %t25, %t27
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t32)
  store { i64, [2 x i64] } %t34, ptr %l20
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t35 = load { i64, [2 x i64] }, ptr %l20
  store { i64, [2 x i64] } %t35, ptr %rv
  br label %ret
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenElemTerm(ptr %v0, ptr %t36)
  store { i64, [2 x i64] } %t38, ptr %l22
  br label %bb9
bb9:
  %t39 = load { i64, [2 x i64] }, ptr %l22
  store { i64, [2 x i64] } %t39, ptr %l2
  %t40 = load { i64, [2 x i64] }, ptr %l2
  %t42 = extractvalue { i64, [2 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 0
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t47, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l29, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 26
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  br i1 %t60, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_7d1ba41a43de5df_b306ac45f9e7717b)
  unreachable
bb14:
  br label %bb15
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 26
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Body", ptr %t65, i32 0, i32 2
  %t69 = load i32, ptr %t68, !tbaa !23
  %t71 = load ptr, ptr %l29, !tbaa !29
  %t74 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t71, i32 %t69, i64 %a1)
  store i64 %t74, ptr %l38
  br label %bb16
bb16:
  %t75 = load i64, ptr %l38, !tbaa !24
  store i64 %t75, ptr %l3, !tbaa !24
  %t76 = load i64, ptr %l3, !tbaa !24
  %t78 = icmp sge i64 %t76, 0
  br i1 %t78, label %bb17, label %bb18
bb17:
  %t80 = load i64, ptr %l3, !tbaa !24
  store i64 %t80, ptr %l41, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/scope:Scoper", ptr %t81, i32 0, i32 26
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb19, label %bb20
bb18:
  br label %bb39
bb19:
  call void @__olang_check_failed(ptr @olang_loc_deaf2ed7955484ae_e8df1e0ec0ac14ba)
  unreachable
bb20:
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/scope:Scoper", ptr %t88, i32 0, i32 26
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Body", ptr %t91, i32 0, i32 5
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t94)
  store i64 %t96, ptr %l49
  br label %bb22
bb22:
  %t97 = load i64, ptr %l41, !tbaa !24
  %t98 = load i64, ptr %l49, !tbaa !24
  %t99 = icmp slt i64 %t97, %t98
  br i1 %t99, label %bb23, label %bb24
bb23:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/scope:Scoper", ptr %t101, i32 0, i32 26
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  br i1 %t106, label %bb25, label %bb26
bb24:
  br label %bb38
bb25:
  call void @__olang_check_failed(ptr @olang_loc_79e16856d8fb6455_e8daf01bb6fb0841)
  unreachable
bb26:
  br label %bb27
bb27:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/scope:Scoper", ptr %t108, i32 0, i32 26
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t114 = getelementptr %"compiler/typed:Body", ptr %t111, i32 0, i32 5
  %t115 = load i64, ptr %l3, !tbaa !24
  %t118 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t114, i64 %t115)
  store i32 %t118, ptr %l59
  br label %bb28
bb28:
  %t119 = load i32, ptr %l59, !tbaa !23
  %t120 = sext i32 %t119 to i64
  store i64 %t120, ptr %l4, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/scope:Scoper", ptr %t122, i32 0, i32 34
  %t125 = load i64, ptr %l4, !tbaa !24
  %t128 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t124, i64 %t125)
  store { i64, [2 x i64] } %t128, ptr %l64
  br label %bb29
bb29:
  %t129 = load { i64, [2 x i64] }, ptr %l64
  %t131 = extractvalue { i64, [2 x i64] } %t129, 0
  %t132 = icmp eq i64 %t131, 0
  br i1 %t132, label %bb30, label %bb31
bb30:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/scope:Scoper", ptr %t134, i32 0, i32 36
  %t137 = load i64, ptr %l4, !tbaa !24
  %t140 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t136, i64 %t137)
  store i1 %t140, ptr %l71
  br label %bb32
bb31:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb33
bb32:
  %t141 = load i1, ptr %l71, !tbaa !21
  store i1 %t141, ptr %l67, !tbaa !21
  br label %bb33
bb33:
  %t142 = load i1, ptr %l67, !tbaa !21
  br i1 %t142, label %bb34, label %bb35
bb34:
  store { i64, [2 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [2 x i64] }, ptr %t143, i32 0, i32 0
  store i64 3, ptr %t144
  %t145 = load { i64, [2 x i64] }, ptr %t143
  store { i64, [2 x i64] } %t145, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/scope:Scoper", ptr %t147, i32 0, i32 34
  %t150 = load i64, ptr %l4, !tbaa !24
  %t153 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t149, i64 %t150)
  store { i64, [2 x i64] } %t153, ptr %l76
  br label %bb37
bb37:
  %t154 = load { i64, [2 x i64] }, ptr %l76
  store { i64, [2 x i64] } %t154, ptr %rv
  br label %ret
bb38:
  store { i64, [2 x i64] } zeroinitializer, ptr %t155
  %t156 = getelementptr { i64, [2 x i64] }, ptr %t155, i32 0, i32 0
  store i64 6, ptr %t156
  %t157 = load { i64, [2 x i64] }, ptr %t155
  store { i64, [2 x i64] } %t157, ptr %rv
  br label %ret
bb39:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/scope:Scoper", ptr %t159, i32 0, i32 42
  %t162 = load i64, ptr %t161, !tbaa !24
  %t164 = icmp sge i64 %t162, 0
  br i1 %t164, label %bb40, label %bb41
bb40:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/scope:Scoper", ptr %t166, i32 0, i32 42
  %t169 = load i64, ptr %t168, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t170
  %t171 = getelementptr { i64, [2 x i64] }, ptr %t170, i32 0, i32 0
  store i64 2, ptr %t171
  %t173 = insertvalue { i64 } undef, i64 %t169, 0
  %t174 = getelementptr { i64, [2 x i64] }, ptr %t170, i32 0, i32 1
  store { i64 } %t173, ptr %t174
  %t175 = load { i64, [2 x i64] }, ptr %t170
  store { i64, [2 x i64] } %t175, ptr %l81
  br label %bb43
bb41:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t177)
  store { i64, [2 x i64] } %t179, ptr %l86
  br label %bb42
bb42:
  %t180 = load { i64, [2 x i64] }, ptr %l86
  store { i64, [2 x i64] } %t180, ptr %l81
  br label %bb43
bb43:
  %t181 = load { i64, [2 x i64] }, ptr %l81
  store { i64, [2 x i64] } %t181, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/scope:rel"
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i64
  %l28 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i64
  %l35 = alloca i64
  %l41 = alloca ptr
  %l44 = alloca i64
  %l46 = alloca i64
  %l51 = alloca %"compiler/scope:rel"
  %l54 = alloca i1
  %l58 = alloca i1
  %l62 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t7 = load ptr, ptr %l13, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l13, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l14, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load i32, ptr %l4, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l12, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_186ca373cb9efbb9_53813e15cbf900dd)
  unreachable
bb11:
  %t25 = load i64, ptr %l12, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l21, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t31 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t27, ptr %t28)
  store i32 %t31, ptr %l24
  br label %bb12
bb12:
  %t32 = load ptr, ptr %l21, !tbaa !29
  %t33 = load i32, ptr %l24, !tbaa !23
  %t34 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t32, i32 %t33)
  store i64 %t34, ptr %l25
  br label %bb13
bb13:
  %t35 = load i64, ptr %l25, !tbaa !24
  store i64 %t35, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp slt i64 %t36, 0
  br i1 %t38, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb16
bb15:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp slt i64 %t40, 0
  store i1 %t42, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t44 = load i1, ptr %l28, !tbaa !21
  br i1 %t44, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb20
bb18:
  %t45 = load i64, ptr %l5, !tbaa !24
  store i64 %t45, ptr %l32, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 6
  %t50 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %t48)
  store i64 %t50, ptr %l35
  br label %bb19
bb19:
  %t51 = load i64, ptr %l32, !tbaa !24
  %t52 = load i64, ptr %l35, !tbaa !24
  %t53 = icmp sge i64 %t51, %t52
  store i1 %t53, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t55 = load i1, ptr %l31, !tbaa !21
  br i1 %t55, label %bb21, label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 6
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l41
  br label %bb24
bb24:
  %t64 = load ptr, ptr %l41, !tbaa !29
  %t66 = getelementptr %"compiler/scope:summary", ptr %t64, i32 0, i32 0
  store ptr %t66, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb25
bb25:
  %t68 = load i64, ptr %l8, !tbaa !24
  store i64 %t68, ptr %l44, !tbaa !24
  %t69 = load ptr, ptr %l7, !tbaa !29
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t69)
  store i64 %t71, ptr %l46
  br label %bb26
bb26:
  %t72 = load i64, ptr %l44, !tbaa !24
  %t73 = load i64, ptr %l46, !tbaa !24
  %t74 = icmp slt i64 %t72, %t73
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb27, label %bb28
bb27:
  br label %bb42
bb28:
  br label %bb29
bb29:
  %t78 = load ptr, ptr %l7, !tbaa !29
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t78, i64 %t79)
  store %"compiler/scope:rel" %t82, ptr %l51
  br label %bb30
bb30:
  %t83 = load %"compiler/scope:rel", ptr %l51
  store %"compiler/scope:rel" %t83, ptr %l9
  %t84 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 1
  %t85 = load { i64, [2 x i64] }, ptr %t84
  %t87 = extractvalue { i64, [2 x i64] } %t85, 0
  %t88 = icmp eq i64 %t87, 2
  br i1 %t88, label %bb31, label %bb32
bb31:
  %t90 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 1
  %t91 = getelementptr { i64, [2 x i64] }, ptr %t90, i32 0, i32 1
  %t92 = getelementptr { i64 }, ptr %t91, i32 0, i32 0
  %t93 = load i64, ptr %t92
  %t94 = load i64, ptr %l6, !tbaa !24
  %t97 = icmp eq i64 %t93, %t94
  store i1 %t97, ptr %l54, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb33
bb33:
  %t99 = load i1, ptr %l54, !tbaa !21
  br i1 %t99, label %bb34, label %bb35
bb34:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/scope:rel", ptr %l9, i32 0, i32 0
  %t103 = load { i64, [2 x i64] }, ptr %t102
  %t107 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v1, ptr %t100, ptr %t101, { i64, [2 x i64] } %t103)
  store i64 %t107, ptr %l62
  br label %bb36
bb35:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb37
bb36:
  %t109 = load i64, ptr %l62, !tbaa !24
  %t111 = icmp eq i64 %t109, %a2
  store i1 %t111, ptr %l58, !tbaa !21
  br label %bb37
bb37:
  %t113 = load i1, ptr %l58, !tbaa !21
  br i1 %t113, label %bb38, label %bb39
bb38:
  store i1 true, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t115 = load i64, ptr %l8, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l8, !tbaa !24
  br label %bb25
bb42:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedFollowed(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l10 = alloca %"compiler/scope:fnRecs"
  %l19 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l20 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l25 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca %"compiler/scope:fnRecs"
  %l33 = alloca %"compiler/scope:fnRecs"
  %l34 = alloca i32
  %l36 = alloca %"compiler/scope:fnRecs"
  %l37 = alloca %"compiler/scope:fnRecs"
  %l38 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i32
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l60 = alloca i64
  %l68 = alloca i64
  %l70 = alloca i1
  %l71 = alloca ptr
  %l80 = alloca %"compiler/typed:Local"
  %l82 = alloca i1
  %l87 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l91 = alloca i1
  %l93 = alloca i1
  %l97 = alloca i1
  %l104 = alloca %"compiler/scope:fnRecs"
  %l106 = alloca i64
  %l112 = alloca %"compiler/scope:fnRecs"
  %l116 = alloca %"compiler/scope:fnRecs"
  %l117 = alloca i32
  %l119 = alloca %"compiler/scope:fnRecs"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 27
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 230
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = icmp eq i64 %t4, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 231
  %t17 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Ha465a93158402c796c1a3186ea412a3d(ptr %v0, ptr %v0, ptr %t15)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t17, ptr %l19
  br label %bb3
bb2:
  br label %bb18
bb3:
  %t18 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l19
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t18, ptr %l1
  br label %bb4
bb4:
  %t20 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20compiler_2fscope_3afnR_H1ecc1125ed7287356979ca161cc461cb(ptr %v0, ptr %l1)
  %t21 = extractvalue { i32, i64 } %t20, 1
  %t22 = extractvalue { i32, i64 } %t20, 0
  store i32 %t22, ptr %l23
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb6, label %ok.24, !prof !99
ok.24:
  store i64 %t21, ptr %l22
  br label %bb5
bb5:
  %t25 = load i64, ptr %l22, !tbaa !24
  store i64 %t25, ptr %l20, !tbaa !24
  br label %bb8
bb6:
  %t26 = load i32, ptr %l23, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l25, !tbaa !21
  br label %bb7
bb7:
  br label %bb17
bb8:
  %t30 = load i64, ptr %l20, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 93
  store ptr %t33, ptr %l27, !tbaa !29
  %t34 = load i64, ptr %l2, !tbaa !24
  store i64 %t34, ptr %l28, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 231
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v0, ptr %t37, i64 %t38)
  %t42 = extractvalue { i32, %"compiler/scope:fnRecs" } %t41, 1
  %t43 = extractvalue { i32, %"compiler/scope:fnRecs" } %t41, 0
  store i32 %t43, ptr %l34
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb10, label %ok.45, !prof !99
ok.45:
  store %"compiler/scope:fnRecs" %t42, ptr %l33
  br label %bb9
bb9:
  %t47 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %l33)
  store %"compiler/scope:fnRecs" %t47, ptr %l36
  br label %bb12
bb10:
  br label %bb11
bb11:
  %t48 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
  store %"compiler/scope:fnRecs" %t48, ptr %l37
  br label %bb13
bb12:
  %t49 = load %"compiler/scope:fnRecs", ptr %l36
  store %"compiler/scope:fnRecs" %t49, ptr %l29
  br label %bb14
bb13:
  %t50 = load %"compiler/scope:fnRecs", ptr %l37
  store %"compiler/scope:fnRecs" %t50, ptr %l29
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l27, !tbaa !29
  %t52 = load i64, ptr %l28, !tbaa !24
  %t53 = load %"compiler/scope:fnRecs", ptr %l29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %v0, ptr %v0, ptr %t51, i64 %t52, %"compiler/scope:fnRecs" %t53)
  br label %bb15
bb15:
  br label %bb16
bb16:
  br label %bb4
bb17:
  br label %bb18
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 235
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 27
  %t60 = load i64, ptr %t59, !tbaa !24
  %t63 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCa_H51434cdf1adf882bf8df91930f0b3746(ptr %v0, ptr %v0, ptr %t56, i64 %t60)
  %t64 = extractvalue { i32, { i64, ptr } } %t63, 1
  %t65 = extractvalue { i32, { i64, ptr } } %t63, 0
  store i32 %t65, ptr %l44
  %t66 = icmp ne i32 %t65, 0
  br i1 %t66, label %bb20, label %ok.67, !prof !99
ok.67:
  store { i64, ptr } %t64, ptr %l43
  br label %bb19
bb19:
  %t68 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l45, !tbaa !24
  %t70 = load i64, ptr %l45, !tbaa !24
  %t71 = mul i64 %t70, 8
  %t72 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t71)
  %t73 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l46, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = load i64, ptr %l45, !tbaa !24
  %t80 = mul i64 %t79, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t76, ptr %t78, i64 %t80, i1 false)
  %t81 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t81, ptr %l38, !tbaa !27
  br label %bb22
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  %t82 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t82, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  store i64 %t87, ptr %l6, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t89 = load i64, ptr %l5, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = icmp slt i64 %t89, %t90
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s6)
  br label %bb66
bb25:
  br label %bb26
bb26:
  %t97 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t97, ptr %l54, !tbaa !27
  %t98 = load i64, ptr %l5, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr ptr, ptr %t101, i64 %t98
  %t103 = load ptr, ptr %t102, !tbaa !39
  store ptr %t103, ptr %l7, !tbaa !29
  %t105 = load ptr, ptr %l7, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Capture", ptr %t105, i32 0, i32 0
  %t108 = load i32, ptr %t107, !tbaa !23
  %t110 = sext i32 %t108 to i64
  store i64 %t110, ptr %l8, !tbaa !24
  %t112 = load i64, ptr %l8, !tbaa !24
  store i64 %t112, ptr %l60, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/scope:Scoper", ptr %t113, i32 0, i32 26
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = icmp eq ptr %t116, null
  br i1 %t118, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_f93cae1f2b16e9ca_2853a1bde02f9166)
  unreachable
bb28:
  br label %bb29
bb29:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/scope:Scoper", ptr %t120, i32 0, i32 26
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Body", ptr %t123, i32 0, i32 7
  %t128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t126)
  store i64 %t128, ptr %l68
  br label %bb30
bb30:
  %t129 = load i64, ptr %l60, !tbaa !24
  %t130 = load i64, ptr %l68, !tbaa !24
  %t131 = icmp sge i64 %t129, %t130
  br i1 %t131, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb38
bb32:
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l71, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/scope:Scoper", ptr %t134, i32 0, i32 26
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = icmp eq ptr %t137, null
  br i1 %t139, label %bb33, label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_f93cae1f2b16e9ca_2853a1bde02f9166)
  unreachable
bb34:
  br label %bb35
bb35:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/scope:Scoper", ptr %t141, i32 0, i32 26
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Body", ptr %t144, i32 0, i32 7
  %t148 = load i64, ptr %l8, !tbaa !24
  %t151 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t147, i64 %t148)
  store %"compiler/typed:Local" %t151, ptr %l80
  br label %bb36
bb36:
  %t152 = getelementptr %"compiler/typed:Local", ptr %l80, i32 0, i32 2
  %t153 = load i32, ptr %t152, !tbaa !23
  %t154 = load ptr, ptr %l71, !tbaa !29
  %t156 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t154, i32 %t153)
  store i1 %t156, ptr %l82
  br label %bb37
bb37:
  %t157 = load i1, ptr %l82, !tbaa !21
  %t158 = xor i1 %t157, true
  store i1 %t158, ptr %l70, !tbaa !21
  br label %bb38
bb38:
  %t160 = load i1, ptr %l70, !tbaa !21
  br i1 %t160, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s6)
  br label %bb65
bb40:
  br label %bb41
bb41:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/scope:Scoper", ptr %t161, i32 0, i32 27
  %t164 = load i64, ptr %t163, !tbaa !24
  %t165 = load i64, ptr %l8, !tbaa !24
  %t168 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s6, i64 %t164, i64 %t165)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t168, ptr %l87
  br label %bb42
bb42:
  %t169 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l87
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t169, ptr %l9
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/scope:Scoper", ptr %t170, i32 0, i32 239
  %t173 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l9
  %t176 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hfa1443b78b370663a08d66c4df09c693(ptr %v0, ptr %t172, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t173)
  store i1 %t176, ptr %l91
  br label %bb43
bb43:
  %t177 = load i1, ptr %l91, !tbaa !21
  %t178 = xor i1 %t177, true
  br i1 %t178, label %bb44, label %bb45
bb44:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/scope:Scoper", ptr %t180, i32 0, i32 240
  %t183 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l9
  %t186 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t182, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t183)
  store i1 %t186, ptr %l97
  br label %bb46
bb45:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb47
bb46:
  %t187 = load i1, ptr %l97, !tbaa !21
  %t188 = xor i1 %t187, true
  store i1 %t188, ptr %l93, !tbaa !21
  br label %bb47
bb47:
  %t190 = load i1, ptr %l93, !tbaa !21
  br i1 %t190, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s8
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/scope:Scoper", ptr %t191, i32 0, i32 240
  %t194 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l9
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t193, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t194, i1 true)
  br label %bb50
bb49:
  br label %bb57
bb50:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load ptr, ptr %l7, !tbaa !29
  %t201 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturedRecs(ptr %v0, ptr %s0, ptr %s8, ptr %t197, ptr %t198)
  store %"compiler/scope:fnRecs" %t201, ptr %l104
  br label %bb51
bb51:
  %t202 = load %"compiler/scope:fnRecs", ptr %l104
  store %"compiler/scope:fnRecs" %t202, ptr %l10
  %t203 = getelementptr %"compiler/scope:fnRecs", ptr %l10, i32 0, i32 0
  %t205 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s8, ptr %t203)
  store i64 %t205, ptr %l106
  br label %bb52
bb52:
  %t206 = load i64, ptr %l106, !tbaa !24
  %t207 = icmp sgt i64 %t206, 0
  br i1 %t207, label %bb53, label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s9
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %t209, i32 0, i32 239
  %t212 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l9
  %t213 = load %"compiler/scope:fnRecs", ptr %l10
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H7db3b405224a110a9f0254eb7b8474c7(ptr %v0, ptr %s9, ptr %t211, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t212, %"compiler/scope:fnRecs" %t213)
  br label %bb55
bb54:
  br label %bb56
bb55:
  call void @__olang_scope_close(ptr %s9)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s8)
  br label %bb57
bb57:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/scope:Scoper", ptr %t217, i32 0, i32 239
  %t220 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l9
  %t223 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcfaf91d2f69b0f478c1276e68071930d(ptr %v0, ptr %v0, ptr %t219, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t220)
  %t224 = extractvalue { i32, %"compiler/scope:fnRecs" } %t223, 1
  %t225 = extractvalue { i32, %"compiler/scope:fnRecs" } %t223, 0
  store i32 %t225, ptr %l117
  %t226 = icmp ne i32 %t225, 0
  br i1 %t226, label %bb59, label %ok.227, !prof !99
ok.227:
  store %"compiler/scope:fnRecs" %t224, ptr %l116
  br label %bb58
bb58:
  %t229 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s6, ptr %l116)
  store %"compiler/scope:fnRecs" %t229, ptr %l119
  br label %bb61
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s6)
  br label %bb65
bb61:
  %t230 = load %"compiler/scope:fnRecs", ptr %l119
  store %"compiler/scope:fnRecs" %t230, ptr %l112
  br label %bb62
bb62:
  %t231 = load %"compiler/scope:fnRecs", ptr %l112
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/scope:Scoper", ptr %t232, i32 0, i32 93
  %t235 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %v0, ptr %s6, ptr %t234, i64 %t235, %"compiler/scope:fnRecs" %t231)
  br label %bb63
bb63:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/scope:Scoper", ptr %t240, i32 0, i32 234
  %t243 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l9
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t242, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t243, i1 true)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s6)
  br label %bb65
bb65:
  %t246 = load i64, ptr %l5, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l5, !tbaa !24
  br label %bb23
bb66:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 1
  store i64 %t3, ptr %l3, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 39
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 39
  %t16 = load i64, ptr %l1, !tbaa !24
  %t18 = add i64 %t16, 1
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t15, i64 %t18)
  store i64 %t21, ptr %l13
  br label %bb4
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 40
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l16
  br label %bb5
bb4:
  %t27 = load i64, ptr %l13, !tbaa !24
  store i64 %t27, ptr %l8, !tbaa !24
  br label %bb6
bb5:
  %t28 = load i64, ptr %l16, !tbaa !24
  store i64 %t28, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t29 = load i64, ptr %l8, !tbaa !24
  store i64 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i1
  %l109 = alloca ptr
  %l110 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca i1
  %l155 = alloca { i64, ptr }
  %l163 = alloca ptr
  %l164 = alloca i1
  %l173 = alloca ptr
  %l174 = alloca i1
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
  store i1 true, ptr %l23, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 139
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l23, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l23, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t12 = load ptr, ptr %l26, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l26, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 17}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l27, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l27, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t26, ptr %t27, i1 false)
  br label %bb12
bb12:
  br label %bb115
bb13:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t32 = load ptr, ptr %l35, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb14, label %bb15
bb14:
  %t35 = load ptr, ptr %l35, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 17}
  %t38 = icmp eq i64 %t36, 1
  store i1 %t38, ptr %l36, !tbaa !21
  br label %bb15
bb15:
  %t39 = load i1, ptr %l36, !tbaa !21
  br i1 %t39, label %bb16, label %bb17
bb16:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t42, i32 0, i32 1
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l3, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t52, ptr %t53, i1 false)
  br label %bb19
bb19:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t56, ptr %t57, i1 false)
  br label %bb20
bb20:
  br label %bb115
bb21:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t62 = load ptr, ptr %l48, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb22, label %bb23
bb22:
  %t65 = load ptr, ptr %l48, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 17}
  %t68 = icmp eq i64 %t66, 2
  store i1 %t68, ptr %l49, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l49, !tbaa !21
  br i1 %t69, label %bb24, label %bb25
bb24:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", ptr }, ptr %t72, i32 0, i32 1
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t76, ptr %t77, i1 false)
  br label %bb27
bb27:
  br label %bb115
bb28:
  %t81 = load ptr, ptr %l1, !tbaa !29
  store ptr %t81, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t82 = load ptr, ptr %l57, !tbaa !29
  %t83 = icmp ne ptr %t82, null
  br i1 %t83, label %bb29, label %bb30
bb29:
  %t85 = load ptr, ptr %l57, !tbaa !29
  %t86 = load i64, ptr %t85, !range !{i64 0, i64 17}
  %t88 = icmp eq i64 %t86, 3
  store i1 %t88, ptr %l58, !tbaa !21
  br label %bb30
bb30:
  %t89 = load i1, ptr %l58, !tbaa !21
  br i1 %t89, label %bb31, label %bb32
bb31:
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr { i64, [3 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", ptr }, ptr %t92, i32 0, i32 1
  %t94 = load ptr, ptr %t93
  store ptr %t94, ptr %l6, !tbaa !29
  br label %bb33
bb32:
  br label %bb37
bb33:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr %"compiler/typed:If", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t96, ptr %t100, i1 false)
  br label %bb34
bb34:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l6, !tbaa !29
  %t107 = getelementptr %"compiler/typed:If", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t104, ptr %t108)
  br label %bb35
bb35:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t115 = getelementptr %"compiler/typed:If", ptr %t113, i32 0, i32 2
  %t116 = load ptr, ptr %t115, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t112, ptr %t116)
  br label %bb36
bb36:
  br label %bb115
bb37:
  %t119 = load ptr, ptr %l1, !tbaa !29
  store ptr %t119, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t120 = load ptr, ptr %l74, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb38, label %bb39
bb38:
  %t123 = load ptr, ptr %l74, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 17}
  %t126 = icmp eq i64 %t124, 4
  store i1 %t126, ptr %l75, !tbaa !21
  br label %bb39
bb39:
  %t127 = load i1, ptr %l75, !tbaa !21
  br i1 %t127, label %bb40, label %bb41
bb40:
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr { i64, [3 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t130, i32 0, i32 1
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l7, !tbaa !29
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t136 = getelementptr { i64, [3 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t136, i32 0, i32 2
  %t138 = load ptr, ptr %t137
  store ptr %t138, ptr %l8, !tbaa !29
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t140, ptr %t141)
  br label %bb43
bb43:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t145, ptr %t146)
  br label %bb44
bb44:
  br label %bb115
bb45:
  %t149 = load ptr, ptr %l1, !tbaa !29
  store ptr %t149, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t150 = load ptr, ptr %l87, !tbaa !29
  %t151 = icmp ne ptr %t150, null
  br i1 %t151, label %bb46, label %bb47
bb46:
  %t153 = load ptr, ptr %l87, !tbaa !29
  %t154 = load i64, ptr %t153, !range !{i64 0, i64 17}
  %t156 = icmp eq i64 %t154, 6
  store i1 %t156, ptr %l88, !tbaa !21
  br label %bb47
bb47:
  %t157 = load i1, ptr %l88, !tbaa !21
  br i1 %t157, label %bb48, label %bb49
bb48:
  %t158 = load ptr, ptr %l1, !tbaa !29
  %t160 = getelementptr { i64, [3 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", ptr }, ptr %t160, i32 0, i32 1
  %t162 = load ptr, ptr %t161
  store ptr %t162, ptr %l9, !tbaa !29
  br label %bb54
bb49:
  %t164 = load ptr, ptr %l1, !tbaa !29
  store ptr %t164, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t165 = load ptr, ptr %l93, !tbaa !29
  %t166 = icmp ne ptr %t165, null
  br i1 %t166, label %bb50, label %bb51
bb50:
  %t168 = load ptr, ptr %l93, !tbaa !29
  %t169 = load i64, ptr %t168, !range !{i64 0, i64 17}
  %t171 = icmp eq i64 %t169, 16
  store i1 %t171, ptr %l94, !tbaa !21
  br label %bb51
bb51:
  %t172 = load i1, ptr %l94, !tbaa !21
  br i1 %t172, label %bb52, label %bb53
bb52:
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t175 = getelementptr { i64, [3 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", ptr }, ptr %t175, i32 0, i32 1
  %t177 = load ptr, ptr %t176
  store ptr %t177, ptr %l9, !tbaa !29
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t179, ptr %t180, i1 false)
  br label %bb55
bb55:
  br label %bb115
bb56:
  %t183 = load ptr, ptr %l1, !tbaa !29
  store ptr %t183, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t184 = load ptr, ptr %l101, !tbaa !29
  %t185 = icmp ne ptr %t184, null
  br i1 %t185, label %bb57, label %bb58
bb57:
  %t187 = load ptr, ptr %l101, !tbaa !29
  %t188 = load i64, ptr %t187, !range !{i64 0, i64 17}
  %t190 = icmp eq i64 %t188, 9
  store i1 %t190, ptr %l102, !tbaa !21
  br label %bb58
bb58:
  %t191 = load i1, ptr %l102, !tbaa !21
  br i1 %t191, label %bb59, label %bb60
bb59:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t194 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 1
  %t195 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t194, i32 0, i32 2
  %t196 = load ptr, ptr %t195
  store ptr %t196, ptr %l10, !tbaa !29
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t198, ptr %t199, i1 false)
  br label %bb62
bb62:
  br label %bb115
bb63:
  %t202 = load ptr, ptr %l1, !tbaa !29
  store ptr %t202, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t203 = load ptr, ptr %l109, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb64, label %bb65
bb64:
  %t206 = load ptr, ptr %l109, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 17}
  %t209 = icmp eq i64 %t207, 10
  store i1 %t209, ptr %l110, !tbaa !21
  br label %bb65
bb65:
  %t210 = load i1, ptr %l110, !tbaa !21
  br i1 %t210, label %bb66, label %bb67
bb66:
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t213 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t213, i32 0, i32 1
  %t215 = load ptr, ptr %t214
  store ptr %t215, ptr %l11, !tbaa !29
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr { i64, [3 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t219, i32 0, i32 2
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l12, !tbaa !29
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t223, ptr %t224, i1 false)
  br label %bb69
bb69:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t228, ptr %t229, i1 false)
  br label %bb70
bb70:
  br label %bb115
bb71:
  %t232 = load ptr, ptr %l1, !tbaa !29
  store ptr %t232, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t233 = load ptr, ptr %l122, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb72, label %bb73
bb72:
  %t236 = load ptr, ptr %l122, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 17}
  %t239 = icmp eq i64 %t237, 11
  store i1 %t239, ptr %l123, !tbaa !21
  br label %bb73
bb73:
  %t240 = load i1, ptr %l123, !tbaa !21
  br i1 %t240, label %bb74, label %bb75
bb74:
  %t241 = load ptr, ptr %l1, !tbaa !29
  %t243 = getelementptr { i64, [3 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", ptr }, ptr %t243, i32 0, i32 1
  %t245 = load ptr, ptr %t244
  store ptr %t245, ptr %l13, !tbaa !29
  br label %bb80
bb75:
  %t247 = load ptr, ptr %l1, !tbaa !29
  store ptr %t247, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t248 = load ptr, ptr %l128, !tbaa !29
  %t249 = icmp ne ptr %t248, null
  br i1 %t249, label %bb76, label %bb77
bb76:
  %t251 = load ptr, ptr %l128, !tbaa !29
  %t252 = load i64, ptr %t251, !range !{i64 0, i64 17}
  %t254 = icmp eq i64 %t252, 12
  store i1 %t254, ptr %l129, !tbaa !21
  br label %bb77
bb77:
  %t255 = load i1, ptr %l129, !tbaa !21
  br i1 %t255, label %bb78, label %bb79
bb78:
  %t256 = load ptr, ptr %l1, !tbaa !29
  %t258 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", ptr }, ptr %t258, i32 0, i32 1
  %t260 = load ptr, ptr %t259
  store ptr %t260, ptr %l13, !tbaa !29
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t262, ptr %t263)
  br label %bb81
bb81:
  br label %bb115
bb82:
  %t267 = load ptr, ptr %l1, !tbaa !29
  store ptr %t267, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t268 = load ptr, ptr %l137, !tbaa !29
  %t269 = icmp ne ptr %t268, null
  br i1 %t269, label %bb83, label %bb84
bb83:
  %t271 = load ptr, ptr %l137, !tbaa !29
  %t272 = load i64, ptr %t271, !range !{i64 0, i64 17}
  %t274 = icmp eq i64 %t272, 13
  store i1 %t274, ptr %l138, !tbaa !21
  br label %bb84
bb84:
  %t275 = load i1, ptr %l138, !tbaa !21
  br i1 %t275, label %bb85, label %bb86
bb85:
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t278 = getelementptr { i64, [3 x i64] }, ptr %t276, i32 0, i32 1
  %t279 = getelementptr { %"compiler/source:Span", ptr }, ptr %t278, i32 0, i32 1
  %t280 = load ptr, ptr %t279
  store ptr %t280, ptr %l14, !tbaa !29
  br label %bb87
bb86:
  br label %bb96
bb87:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load ptr, ptr %l14, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Join", ptr %t283, i32 0, i32 0
  %t286 = load ptr, ptr %t285, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t282, ptr %t286)
  br label %bb88
bb88:
  %t290 = load ptr, ptr %l14, !tbaa !29
  %t292 = getelementptr %"compiler/typed:Join", ptr %t290, i32 0, i32 2
  %t293 = load { i64, ptr }, ptr %t292, !tbaa !27
  store { i64, ptr } %t293, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t295 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t295, 0
  store i64 %t297, ptr %l17, !tbaa !24
  br label %bb89
bb89:
  %t299 = load i64, ptr %l16, !tbaa !24
  %t300 = load i64, ptr %l17, !tbaa !24
  %t303 = icmp slt i64 %t299, %t300
  %t305 = xor i1 %t303, true
  br i1 %t305, label %bb90, label %bb91
bb90:
  br label %bb95
bb91:
  br label %bb92
bb92:
  %t307 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t307, ptr %l155, !tbaa !27
  %t308 = load i64, ptr %l16, !tbaa !24
  %t310 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr ptr, ptr %t311, i64 %t308
  %t313 = load ptr, ptr %t312, !tbaa !39
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/typed:Clause", ptr %t313, i32 0, i32 3
  %t319 = load ptr, ptr %t318, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t315, ptr %t319)
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t322 = load i64, ptr %l16, !tbaa !24
  %t324 = add i64 %t322, 1
  store i64 %t324, ptr %l16, !tbaa !24
  br label %bb89
bb95:
  br label %bb115
bb96:
  %t326 = load ptr, ptr %l1, !tbaa !29
  store ptr %t326, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t327 = load ptr, ptr %l163, !tbaa !29
  %t328 = icmp ne ptr %t327, null
  br i1 %t328, label %bb97, label %bb98
bb97:
  %t330 = load ptr, ptr %l163, !tbaa !29
  %t331 = load i64, ptr %t330, !range !{i64 0, i64 17}
  %t333 = icmp eq i64 %t331, 14
  store i1 %t333, ptr %l164, !tbaa !21
  br label %bb98
bb98:
  %t334 = load i1, ptr %l164, !tbaa !21
  br i1 %t334, label %bb99, label %bb100
bb99:
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t337 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 1
  %t338 = getelementptr { %"compiler/source:Span", ptr }, ptr %t337, i32 0, i32 1
  %t339 = load ptr, ptr %t338
  store ptr %t339, ptr %l19, !tbaa !29
  br label %bb101
bb100:
  br label %bb103
bb101:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load ptr, ptr %l19, !tbaa !29
  %t344 = getelementptr %"compiler/typed:Spawn", ptr %t342, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t341, ptr %t345, i1 true)
  br label %bb102
bb102:
  br label %bb115
bb103:
  %t349 = load ptr, ptr %l1, !tbaa !29
  store ptr %t349, ptr %l173, !tbaa !29
  store i1 false, ptr %l174, !tbaa !21
  %t350 = load ptr, ptr %l173, !tbaa !29
  %t351 = icmp ne ptr %t350, null
  br i1 %t351, label %bb104, label %bb105
bb104:
  %t353 = load ptr, ptr %l173, !tbaa !29
  %t354 = load i64, ptr %t353, !range !{i64 0, i64 17}
  %t356 = icmp eq i64 %t354, 15
  store i1 %t356, ptr %l174, !tbaa !21
  br label %bb105
bb105:
  %t357 = load i1, ptr %l174, !tbaa !21
  br i1 %t357, label %bb106, label %bb107
bb106:
  %t358 = load ptr, ptr %l1, !tbaa !29
  %t360 = getelementptr { i64, [3 x i64] }, ptr %t358, i32 0, i32 1
  %t361 = getelementptr { %"compiler/source:Span", ptr }, ptr %t360, i32 0, i32 1
  %t362 = load ptr, ptr %t361
  store ptr %t362, ptr %l20, !tbaa !29
  br label %bb108
bb107:
  br label %bb110
bb108:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t364, ptr %t365, i1 false)
  br label %bb109
bb109:
  br label %bb115
bb110:
  br i1 true, label %bb111, label %bb112
bb111:
  br label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb115
bb114:
  call void @__olang_check_failed(ptr @olang_loc_9b30aadb18eb277f_192cdcf64c29ca93)
  unreachable
bb115:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca ptr
  %l16 = alloca i64
  %l19 = alloca i64
  %l37 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i1
  %l60 = alloca i1
  %l61 = alloca i1
  %l68 = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l19, !tbaa !24
  store i64 %t31, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l16, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb37
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t51, ptr %l37, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  store ptr %t57, ptr %l8, !tbaa !29
  %t59 = load ptr, ptr %l8, !tbaa !29
  store ptr %t59, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t60 = load ptr, ptr %l40, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t63 = load ptr, ptr %l40, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 17}
  %t66 = icmp eq i64 %t64, 0
  store i1 %t66, ptr %l41, !tbaa !21
  br label %bb12
bb12:
  %t67 = load i1, ptr %l41, !tbaa !21
  br i1 %t67, label %bb13, label %bb14
bb13:
  %t68 = load ptr, ptr %l8, !tbaa !29
  %t70 = getelementptr { i64, [3 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l9, !tbaa !23
  %t74 = load ptr, ptr %l8, !tbaa !29
  %t76 = getelementptr { i64, [3 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l10, !tbaa !29
  br label %bb15
bb14:
  br label %bb29
bb15:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l9, !tbaa !23
  %t82 = load ptr, ptr %l10, !tbaa !29
  %t83 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t84 = load i64, ptr %l7, !tbaa !24
  %t86 = add i64 %t84, 1
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edecide(ptr %v0, ptr %v1, ptr %v1, ptr %t80, i32 %t81, ptr %t82, { i64, ptr } %t83, i64 %t86)
  br label %bb16
bb16:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l10, !tbaa !29
  %t96 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturingLambda(ptr %v0, ptr %v1, ptr %t92, ptr %t93)
  store i1 %t96, ptr %l56
  br label %bb17
bb17:
  %t97 = load i1, ptr %l56, !tbaa !21
  br i1 %t97, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb21
bb19:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l10, !tbaa !29
  %t102 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisAdapter(ptr %v0, ptr %v1, ptr %t98, ptr %t99)
  store i1 %t102, ptr %l60
  br label %bb20
bb20:
  %t103 = load i1, ptr %l60, !tbaa !21
  store i1 %t103, ptr %l57, !tbaa !21
  br label %bb21
bb21:
  %t104 = load i1, ptr %l57, !tbaa !21
  br i1 %t104, label %bb22, label %bb23
bb22:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t107 = load i64, ptr %l7, !tbaa !24
  %t109 = add i64 %t107, 1
  %t110 = load i32, ptr %l9, !tbaa !23
  %t112 = sext i32 %t110 to i64
  %t117 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonlyCalled(ptr %v0, ptr %v1, ptr %t105, { i64, ptr } %t106, i64 %t109, i64 %t112)
  store i1 %t117, ptr %l68
  br label %bb24
bb23:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb25
bb24:
  %t118 = load i1, ptr %l68, !tbaa !21
  store i1 %t118, ptr %l61, !tbaa !21
  br label %bb25
bb25:
  %t119 = load i1, ptr %l61, !tbaa !21
  br i1 %t119, label %bb26, label %bb27
bb26:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/scope:Scoper", ptr %t120, i32 0, i32 77
  store i1 true, ptr %t122, !tbaa !21
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_894def51c550c10b_edf695233d65cd0f)
  unreachable
bb34:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmt(ptr %v0, ptr %v1, ptr %t123, ptr %t124)
  br label %bb35
bb35:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/scope:Scoper", ptr %t128, i32 0, i32 77
  store i1 false, ptr %t130, !tbaa !21
  br label %bb36
bb36:
  %t131 = load i64, ptr %l6, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l6, !tbaa !24
  br label %bb7
bb37:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca ptr
  %l8 = alloca i1
  %l12 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 6
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l5, !tbaa !29
  %t10 = getelementptr %"compiler/scope:summary", ptr %t8, i32 0, i32 19
  %t11 = load i1, ptr %t10, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 6
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l12
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t22 = getelementptr %"compiler/scope:summary", ptr %t20, i32 0, i32 20
  %t23 = load i1, ptr %t22, !tbaa !21
  store i1 %t23, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l8, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempVal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca i1
  %l25 = alloca i1
  %l30 = alloca %"compiler/scope:Val"
  %l33 = alloca ptr
  %l36 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i1
  %l49 = alloca %"compiler/scope:Val"
  %l52 = alloca ptr
  %l54 = alloca ptr
  %l56 = alloca { i64, [2 x i64] }
  %l57 = alloca %"compiler/scope:Val"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  %t45 = alloca { i64, [2 x i64] }, align 8
  %t81 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 131
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 131
  store i64 -1, ptr %t8, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 132
  %t12 = load i1, ptr %t11, !tbaa !21
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 132
  store i1 false, ptr %t16, !tbaa !21
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp eq i64 %t19, -1
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t23 = load i1, ptr %l12, !tbaa !21
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t27 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %s0, ptr %t24)
  store ptr %t27, ptr %l18
  br label %bb6
bb5:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb7
bb6:
  %t28 = load ptr, ptr %l18, !tbaa !29
  %t29 = icmp eq ptr %t28, null
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l15, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t39 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t34, ptr %t35)
  store i1 %t39, ptr %l25
  br label %bb10
bb9:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb10:
  %t40 = load i1, ptr %l25, !tbaa !21
  store i1 %t40, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t41 = load i1, ptr %l21, !tbaa !21
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t45
  %t46 = getelementptr { i64, [2 x i64] }, ptr %t45, i32 0, i32 0
  store i64 0, ptr %t46
  %t47 = load { i64, [2 x i64] }, ptr %t45
  %t51 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t42, ptr %t43, { i64, [2 x i64] } %t47)
  store %"compiler/scope:Val" %t51, ptr %l30
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t52 = load %"compiler/scope:Val", ptr %l30
  store %"compiler/scope:Val" %t52, ptr %rv
  br label %ret
bb15:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t56 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %s0, ptr %t53)
  store ptr %t56, ptr %l33
  br label %bb16
bb16:
  %t57 = load ptr, ptr %l33, !tbaa !29
  %t58 = icmp eq ptr %t57, null
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb17, label %bb18
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t67 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  store i1 %t67, ptr %l40
  br label %bb19
bb18:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb20
bb19:
  %t68 = load i1, ptr %l40, !tbaa !21
  store i1 %t68, ptr %l36, !tbaa !21
  br label %bb20
bb20:
  %t69 = load i1, ptr %l36, !tbaa !21
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t70 = load i64, ptr %l2, !tbaa !24
  %t72 = icmp ne i64 %t70, 0
  store i1 %t72, ptr %l41, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb23
bb23:
  %t74 = load i1, ptr %l41, !tbaa !21
  br i1 %t74, label %bb24, label %bb25
bb24:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t75, i32 0, i32 128
  store i1 true, ptr %t77, !tbaa !21
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l1, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [2 x i64] }, ptr %t81, i32 0, i32 0
  store i64 0, ptr %t82
  %t83 = load { i64, [2 x i64] }, ptr %t81
  %t87 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t78, ptr %t79, { i64, [2 x i64] } %t83)
  store %"compiler/scope:Val" %t87, ptr %l49
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t88 = load %"compiler/scope:Val", ptr %l49
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/scope:Scoper", ptr %t89, i32 0, i32 128
  store i1 false, ptr %t91, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/scope:Val" %t88, ptr %rv
  br label %ret
bb27:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l52, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  store ptr %t95, ptr %l54, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t97)
  store { i64, [2 x i64] } %t99, ptr %l56
  br label %bb28
bb28:
  %t100 = load ptr, ptr %l52, !tbaa !29
  %t101 = load ptr, ptr %l54, !tbaa !29
  %t102 = load { i64, [2 x i64] }, ptr %l56
  %t103 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t100, ptr %t101, { i64, [2 x i64] } %t102)
  store %"compiler/scope:Val" %t103, ptr %l57
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t104 = load %"compiler/scope:Val", ptr %l57
  store %"compiler/scope:Val" %t104, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l29 = alloca i1
  %l37 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l62 = alloca i1
  %l63 = alloca i1
  %l71 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i1
  %l84 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l97 = alloca i1
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
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l5, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp ne i64 %t18, %t19
  store i1 %t22, ptr %rv
  br label %ret
bb6:
  %t24 = load ptr, ptr %l2, !tbaa !29
  store ptr %t24, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t25 = load ptr, ptr %l21, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l21, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 8}
  %t31 = icmp eq i64 %t29, 2
  store i1 %t31, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l22, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l6, !tbaa !29
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t39 = load ptr, ptr %l6, !tbaa !29
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = call i1 @compiler_2fscope_2eisParamRead(ptr %v2, ptr %t39, i64 %t40)
  store i1 %t43, ptr %l29
  br label %bb12
bb12:
  %t44 = load i1, ptr %l29, !tbaa !21
  br i1 %t44, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t57 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t46, ptr %t47, ptr %t48, i64 %t50, i64 %t51)
  store i1 %t57, ptr %l37
  br label %bb16
bb16:
  %t58 = load i1, ptr %l37, !tbaa !21
  store i1 %t58, ptr %rv
  br label %ret
bb17:
  %t59 = load ptr, ptr %l2, !tbaa !29
  store ptr %t59, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t60 = load ptr, ptr %l38, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t63 = load ptr, ptr %l38, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 3
  store i1 %t66, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t67 = load i1, ptr %l39, !tbaa !21
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t76 = load ptr, ptr %l7, !tbaa !29
  %t77 = load i64, ptr %l3, !tbaa !24
  %t78 = load i64, ptr %l4, !tbaa !24
  %t84 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t74, ptr %t75, ptr %t76, i64 %t77, i64 %t78)
  store i1 %t84, ptr %l49
  br label %bb23
bb23:
  %t85 = load i1, ptr %l49, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
bb24:
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t87 = load ptr, ptr %l50, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l50, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 8}
  %t93 = icmp eq i64 %t91, 4
  store i1 %t93, ptr %l51, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l51, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l8, !tbaa !29
  br label %bb29
bb28:
  br label %bb35
bb29:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t103 = load ptr, ptr %l8, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Elem", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t107 = load i64, ptr %l3, !tbaa !24
  %t108 = load i64, ptr %l4, !tbaa !24
  %t114 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t101, ptr %t102, ptr %t106, i64 %t107, i64 %t108)
  store i1 %t114, ptr %l62
  br label %bb30
bb30:
  %t115 = load i1, ptr %l62, !tbaa !21
  br i1 %t115, label %bb31, label %bb32
bb31:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t118 = load ptr, ptr %l8, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Elem", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = load i64, ptr %l3, !tbaa !24
  %t124 = load i64, ptr %l4, !tbaa !24
  %t130 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t116, ptr %t117, ptr %t121, i64 %t123, i64 %t124)
  store i1 %t130, ptr %l71
  br label %bb33
bb32:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb34
bb33:
  %t131 = load i1, ptr %l71, !tbaa !21
  store i1 %t131, ptr %l63, !tbaa !21
  br label %bb34
bb34:
  %t132 = load i1, ptr %l63, !tbaa !21
  store i1 %t132, ptr %rv
  br label %ret
bb35:
  %t133 = load ptr, ptr %l2, !tbaa !29
  store ptr %t133, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t134 = load ptr, ptr %l72, !tbaa !29
  %t135 = icmp ne ptr %t134, null
  br i1 %t135, label %bb36, label %bb37
bb36:
  %t137 = load ptr, ptr %l72, !tbaa !29
  %t138 = load i64, ptr %t137, !range !{i64 0, i64 8}
  %t140 = icmp eq i64 %t138, 5
  store i1 %t140, ptr %l73, !tbaa !21
  br label %bb37
bb37:
  %t141 = load i1, ptr %l73, !tbaa !21
  br i1 %t141, label %bb38, label %bb39
bb38:
  %t142 = load ptr, ptr %l2, !tbaa !29
  %t144 = getelementptr { i64, [4 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t144, i32 0, i32 2
  %t146 = load ptr, ptr %t145
  store ptr %t146, ptr %l9, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t150 = load ptr, ptr %l9, !tbaa !29
  %t152 = getelementptr %"compiler/typed:Payload", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t154 = load i64, ptr %l3, !tbaa !24
  %t155 = load i64, ptr %l4, !tbaa !24
  %t161 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t148, ptr %t149, ptr %t153, i64 %t154, i64 %t155)
  store i1 %t161, ptr %l84
  br label %bb41
bb41:
  %t162 = load i1, ptr %l84, !tbaa !21
  store i1 %t162, ptr %rv
  br label %ret
bb42:
  %t163 = load ptr, ptr %l2, !tbaa !29
  store ptr %t163, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t164 = load ptr, ptr %l85, !tbaa !29
  %t165 = icmp ne ptr %t164, null
  br i1 %t165, label %bb43, label %bb44
bb43:
  %t167 = load ptr, ptr %l85, !tbaa !29
  %t168 = load i64, ptr %t167, !range !{i64 0, i64 8}
  %t170 = icmp eq i64 %t168, 6
  store i1 %t170, ptr %l86, !tbaa !21
  br label %bb44
bb44:
  %t171 = load i1, ptr %l86, !tbaa !21
  br i1 %t171, label %bb45, label %bb46
bb45:
  %t172 = load ptr, ptr %l2, !tbaa !29
  %t174 = getelementptr { i64, [4 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t174, i32 0, i32 2
  %t176 = load ptr, ptr %t175
  store ptr %t176, ptr %l10, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t180 = load ptr, ptr %l10, !tbaa !29
  %t182 = load i64, ptr %l3, !tbaa !24
  %t183 = load i64, ptr %l4, !tbaa !24
  %t189 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t178, ptr %t179, ptr %t180, i64 %t182, i64 %t183)
  store i1 %t189, ptr %l97
  br label %bb48
bb48:
  %t190 = load i1, ptr %l97, !tbaa !21
  store i1 %t190, ptr %rv
  br label %ret
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i1 true, ptr %rv
  br label %ret
bb53:
  call void @__olang_check_failed(ptr @olang_loc_70f3ad61916a5f6d_25d9c99e76c50229)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueSliceBounds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l30 = alloca i1
  %l31 = alloca i1
  %l39 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l51 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l63 = alloca i1
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
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 10
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t18 = load ptr, ptr %l5, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Slice", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t29 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17, ptr %t21, i64 %t22, i64 %t23)
  store i1 %t29, ptr %l21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l21, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t33 = load ptr, ptr %l5, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Slice", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t45 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t31, ptr %t32, ptr %t36, i64 %t38, i64 %t39)
  store i1 %t45, ptr %l30
  br label %bb9
bb8:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb10
bb9:
  %t46 = load i1, ptr %l30, !tbaa !21
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t47 = load i1, ptr %l22, !tbaa !21
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Slice", ptr %t50, i32 0, i32 2
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = load i64, ptr %l3, !tbaa !24
  %t56 = load i64, ptr %l4, !tbaa !24
  %t62 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t48, ptr %t49, ptr %t53, i64 %t55, i64 %t56)
  store i1 %t62, ptr %l39
  br label %bb13
bb12:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb14
bb13:
  %t63 = load i1, ptr %l39, !tbaa !21
  store i1 %t63, ptr %l31, !tbaa !21
  br label %bb14
bb14:
  %t64 = load i1, ptr %l31, !tbaa !21
  store i1 %t64, ptr %l8, !tbaa !21
  br label %bb34
bb15:
  %t65 = load ptr, ptr %l2, !tbaa !29
  store ptr %t65, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t66 = load ptr, ptr %l40, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb16, label %bb17
bb16:
  %t69 = load ptr, ptr %l40, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 18}
  %t72 = icmp eq i64 %t70, 3
  store i1 %t72, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t73 = load i1, ptr %l41, !tbaa !21
  br i1 %t73, label %bb18, label %bb19
bb18:
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l6, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t82 = load ptr, ptr %l6, !tbaa !29
  %t83 = load i64, ptr %l3, !tbaa !24
  %t84 = load i64, ptr %l4, !tbaa !24
  %t90 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %t80, ptr %t81, ptr %t82, i64 %t83, i64 %t84)
  store i1 %t90, ptr %l51
  br label %bb21
bb21:
  %t91 = load i1, ptr %l51, !tbaa !21
  store i1 %t91, ptr %l8, !tbaa !21
  br label %bb34
bb22:
  %t92 = load ptr, ptr %l2, !tbaa !29
  store ptr %t92, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t93 = load ptr, ptr %l52, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t96 = load ptr, ptr %l52, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 18}
  %t99 = icmp eq i64 %t97, 17
  store i1 %t99, ptr %l53, !tbaa !21
  br label %bb24
bb24:
  %t100 = load i1, ptr %l53, !tbaa !21
  br i1 %t100, label %bb25, label %bb26
bb25:
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t103 = getelementptr { i64, [5 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l7, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t109 = load ptr, ptr %l7, !tbaa !29
  %t110 = load i64, ptr %l3, !tbaa !24
  %t111 = load i64, ptr %l4, !tbaa !24
  %t117 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueSliceBounds(ptr %v0, ptr %v1, ptr %v2, ptr %t107, ptr %t108, ptr %t109, i64 %t110, i64 %t111)
  store i1 %t117, ptr %l63
  br label %bb28
bb28:
  %t118 = load i1, ptr %l63, !tbaa !21
  store i1 %t118, ptr %l8, !tbaa !21
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_85be90d3c3ac368d_8b18b6e2569eb819)
  unreachable
bb34:
  %t119 = load i1, ptr %l8, !tbaa !21
  store i1 %t119, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca ptr
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  call void @__olang_check_failed(ptr @olang_loc_c1e814726b785cf2_df631aab7cf532ee)
  unreachable
bb4:
  br label %bb5
bb5:
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %rv
  br label %ret
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l8, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 18}
  %t18 = icmp eq i64 %t16, 17
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t31 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %t27)
  store ptr %t31, ptr %l17
  br label %bb12
bb12:
  %t32 = load ptr, ptr %l17, !tbaa !29
  store ptr %t32, ptr %rv
  br label %ret
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_21e064470a3252d0_305537a6acb289cc)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %t2)
  store ptr %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l7, !tbaa !29
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
  %t15 = icmp eq i64 %t13, 5
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
  br label %bb7
bb6:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Promote", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l8, !tbaa !29
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l8, !tbaa !29
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_f9519574182490d7_42fc30f708795ccb)
  unreachable
bb12:
  %t30 = load ptr, ptr %l8, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewInit(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l10 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 45
  %t7 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  %t8 = extractvalue { i32, ptr } %t7, 1
  %t9 = extractvalue { i32, ptr } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store ptr %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l7, !tbaa !29
  store ptr %t12, ptr %l3, !tbaa !29
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb4:
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v0, ptr %s0, ptr %t16, ptr %t14)
  store ptr %t21, ptr %l14
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t23 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t22)
  store ptr %t23, ptr %l15
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l10, !tbaa !29
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewCall(ptr %v0, ptr %s0, ptr %t24, ptr %t25)
  store i64 %t26, ptr %l16
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t27 = load i64, ptr %l16, !tbaa !24
  store i64 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantExact(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca i1
  %l12 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 217
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t8 = load i32, ptr %l1, !tbaa !23
  %t9 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t12 = icmp eq i32 %t8, %t9
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %t15, i32 %t16)
  store i64 %t19, ptr %l12
  br label %bb7
bb7:
  %t20 = load i64, ptr %l12, !tbaa !24
  store i64 %t20, ptr %l2, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sge i64 %t21, 0
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewant(ptr %v0, ptr %t25, i64 %t26)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fscope_2eletIn(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l37 = alloca ptr
  %l41 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca i1
  %l59 = alloca ptr
  %l63 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l84 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t7 = load ptr, ptr %l13, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l13, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 17}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l14, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l2, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t27 = load i32, ptr %l2, !tbaa !23
  %t29 = sext i32 %t27 to i64
  %t30 = load i64, ptr %l1, !tbaa !24
  %t33 = icmp eq i64 %t29, %t30
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l3, !tbaa !29
  store ptr %t35, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb50
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t39 = load ptr, ptr %l27, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = load ptr, ptr %l27, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 17}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l28, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l28, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [3 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr }, ptr %t49, i32 0, i32 1
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l4, !tbaa !29
  br label %bb17
bb16:
  br label %bb23
bb17:
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t55 = getelementptr %"compiler/typed:If", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  %t61 = call ptr @compiler_2fscope_2eletOf(ptr %v0, ptr %v1, ptr %t56, i64 %t58)
  store ptr %t61, ptr %l37
  br label %bb18
bb18:
  %t62 = load ptr, ptr %l37, !tbaa !29
  store ptr %t62, ptr %l5, !tbaa !29
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t69 = load ptr, ptr %l5, !tbaa !29
  store ptr %t69, ptr %l41, !tbaa !29
  br label %bb22
bb20:
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t74 = getelementptr %"compiler/typed:If", ptr %t72, i32 0, i32 2
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t79 = call ptr @compiler_2fscope_2eletOf(ptr %v0, ptr %v1, ptr %t75, i64 %t76)
  store ptr %t79, ptr %l47
  br label %bb21
bb21:
  %t80 = load ptr, ptr %l47, !tbaa !29
  store ptr %t80, ptr %l41, !tbaa !29
  br label %bb22
bb22:
  %t81 = load ptr, ptr %l41, !tbaa !29
  store ptr %t81, ptr %rv
  br label %ret
bb23:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t83 = load ptr, ptr %l48, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb24, label %bb25
bb24:
  %t86 = load ptr, ptr %l48, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 17}
  %t89 = icmp eq i64 %t87, 4
  store i1 %t89, ptr %l49, !tbaa !21
  br label %bb25
bb25:
  %t90 = load i1, ptr %l49, !tbaa !21
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr { i64, [3 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t93, i32 0, i32 1
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l6, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr { i64, [3 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t99, i32 0, i32 2
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l7, !tbaa !29
  br label %bb28
bb27:
  br label %bb34
bb28:
  %t103 = load ptr, ptr %l6, !tbaa !29
  %t105 = load i64, ptr %l1, !tbaa !24
  %t108 = call ptr @compiler_2fscope_2eletOf(ptr %v0, ptr %v1, ptr %t103, i64 %t105)
  store ptr %t108, ptr %l59
  br label %bb29
bb29:
  %t109 = load ptr, ptr %l59, !tbaa !29
  store ptr %t109, ptr %l8, !tbaa !29
  %t110 = load ptr, ptr %l8, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb30, label %bb31
bb30:
  %t116 = load ptr, ptr %l8, !tbaa !29
  store ptr %t116, ptr %l63, !tbaa !29
  br label %bb33
bb31:
  %t119 = load ptr, ptr %l7, !tbaa !29
  %t120 = load i64, ptr %l1, !tbaa !24
  %t123 = call ptr @compiler_2fscope_2eletOf(ptr %v0, ptr %v1, ptr %t119, i64 %t120)
  store ptr %t123, ptr %l68
  br label %bb32
bb32:
  %t124 = load ptr, ptr %l68, !tbaa !29
  store ptr %t124, ptr %l63, !tbaa !29
  br label %bb33
bb33:
  %t125 = load ptr, ptr %l63, !tbaa !29
  store ptr %t125, ptr %rv
  br label %ret
bb34:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t127 = load ptr, ptr %l69, !tbaa !29
  %t128 = icmp ne ptr %t127, null
  br i1 %t128, label %bb35, label %bb36
bb35:
  %t130 = load ptr, ptr %l69, !tbaa !29
  %t131 = load i64, ptr %t130, !range !{i64 0, i64 17}
  %t133 = icmp eq i64 %t131, 11
  store i1 %t133, ptr %l70, !tbaa !21
  br label %bb36
bb36:
  %t134 = load i1, ptr %l70, !tbaa !21
  br i1 %t134, label %bb37, label %bb38
bb37:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr { i64, [3 x i64] }, ptr %t135, i32 0, i32 1
  %t138 = getelementptr { %"compiler/source:Span", ptr }, ptr %t137, i32 0, i32 1
  %t139 = load ptr, ptr %t138
  store ptr %t139, ptr %l9, !tbaa !29
  br label %bb43
bb38:
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t142 = load ptr, ptr %l75, !tbaa !29
  %t143 = icmp ne ptr %t142, null
  br i1 %t143, label %bb39, label %bb40
bb39:
  %t145 = load ptr, ptr %l75, !tbaa !29
  %t146 = load i64, ptr %t145, !range !{i64 0, i64 17}
  %t148 = icmp eq i64 %t146, 12
  store i1 %t148, ptr %l76, !tbaa !21
  br label %bb40
bb40:
  %t149 = load i1, ptr %l76, !tbaa !21
  br i1 %t149, label %bb41, label %bb42
bb41:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr { i64, [3 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", ptr }, ptr %t152, i32 0, i32 1
  %t154 = load ptr, ptr %t153
  store ptr %t154, ptr %l9, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t156 = load ptr, ptr %l9, !tbaa !29
  %t158 = load i64, ptr %l1, !tbaa !24
  %t161 = call ptr @compiler_2fscope_2eletOf(ptr %v0, ptr %v1, ptr %t156, i64 %t158)
  store ptr %t161, ptr %l84
  br label %bb44
bb44:
  %t162 = load ptr, ptr %l84, !tbaa !29
  store ptr %t162, ptr %rv
  br label %ret
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_4998bbf808a57bb_722e3eb13605292f)
  unreachable
bb50:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fscope_2evarOf({ i64, [2 x i64] } %a0) #0 {
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
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_9fa5a1e2ff44b071_c7b2f6de12c9b12d)
  unreachable
bb9:
  %t12 = load i64, ptr %l2, !tbaa !24
  store i64 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i1
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
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
  store i64 %t18, ptr %l2, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_8ae797379831bd51_629aae10c041c6e5)
  unreachable
bb11:
  %t20 = load i64, ptr %l2, !tbaa !24
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/scope:agreeAt" @compiler_2fscope_3aagreeAt_2ector(ptr %v0, { i64, [2 x i64] } %a0, i1 %a1) #0 {
entry:
  %rv = alloca %"compiler/scope:agreeAt"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/scope:agreeAt" undef, { i64, [2 x i64] } %a0, 0
  %t8 = insertvalue %"compiler/scope:agreeAt" %t6, i1 %a1, 1
  store %"compiler/scope:agreeAt" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:agreeAt", ptr %rv
  ret %"compiler/scope:agreeAt" %rr
}

define dso_local %"compiler/scope:placedRow" @compiler_2fscope_3aplacedRow_2ector(ptr %v0, %"compiler/source:Span" %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/scope:placedRow"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/scope:placedRow" undef, %"compiler/source:Span" %a0, 0
  %t8 = insertvalue %"compiler/scope:placedRow" %t6, i64 %a1, 1
  store %"compiler/scope:placedRow" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:placedRow", ptr %rv
  ret %"compiler/scope:placedRow" %rr
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/typed:Plan"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 536, i1 false)
  %t2 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 10
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 14
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 15
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 536, i1 false)
  br label %ret
ret:
  ret void
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
define linkonce_odr %"compiler/generic:AnyTable" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aAnyTable(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/generic:AnyTable"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/generic:AnyTable"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/generic:AnyTable", ptr %a0
  store %"compiler/generic:AnyTable" %t2, ptr %l1
  %t3 = getelementptr %"compiler/generic:AnyTable", ptr %l1, i32 0, i32 5
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/generic:AnyTable", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/generic:AnyTable", ptr %l1
  store %"compiler/generic:AnyTable" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:AnyTable", ptr %rv
  ret %"compiler/generic:AnyTable" %rr
}

@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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

@olang_2esole_2estd_2fprelude_2farray_3aArrayIter_3cI64_3e_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Hc31c075a081277beb11a6149e950d3c3(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = mul i64 %t13, 8
  %t15 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = mul i64 %t22, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t24, ptr %t25, !tbaa !27
  %t26 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l9, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = mul i64 %t39, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t41, ptr %t42, !tbaa !27
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e(ptr %v0, { i64, ptr } %t4)
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

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Hc31c075a081277beb11a6149e950d3c3(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
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
  %t4 = mul i64 %t3, 40
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hc8a994261b444ea12c5b83da9413a98f(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %t4 = mul i64 %t3, 32
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
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %t15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22, i64 %t20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hc8a994261b444ea12c5b83da9413a98f(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %a0
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %rv
  ret %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 40
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 40
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

declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2eparamPos(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_feef46b3c06a5dff_8464d86ba5980c13 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_c8704b3f07e6b10d_5332dc31294ce6e9 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_55cad4987e546125_96caed8b3b7df491 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomponents(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esizeComponents(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferFields(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeAll(ptr %v0, ptr %a0, i1 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinsOwn(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueCovered(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i1 %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2, i32 %a3, ptr %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eexports(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2erelVar({ i64, [2 x i64] } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %a0)
declare %"compiler/generic:AnyTable" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eAt__He9601a52fe5cfa5abe1b41d520aed001(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_184b8ada395c33d8_be996404d2b66d74 = external constant [0 x i8]
@olang_loc_d7c69f81cfcd83f7_ce60044efbd0bd03 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyMethodObligations(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epromoted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLands(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandleLent(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoldValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitLent(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3, %"compiler/scope:Val" %a4)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBorrowSplitScopes(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHeldFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargExisting(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i64 %a5, { i64, [2 x i64] } %a6, i1 %a7)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorAssign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceOperands(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePartOf(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3, ptr %a4, i64 %a5)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efreshIntoUnknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, [2 x i64] } %a3)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitBorrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindingUnknown(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldBindingUnknown(ptr %v0)
@G_2ecompiler_2fscope_2eFitGlobal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceOutlivesArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundEdges(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, { i64, [2 x i64] } %a3)
@G_2ecompiler_2fscope_2ePosNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i1 @compiler_2fscope_2ereaches(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_aff30252d9d9b8bc_45e5abb6a66ed480 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
@olang_loc_8313d1eebcffdf52_2ed3c82d87a6db66 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseededRecs(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H97b95e9ae0becdc6438cd4b7dda0e1e4(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eTwin(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_848be87240c0f709_4bda5bf2bafa5dfd = external constant [0 x i8]
@olang_loc_7f0716555917d138_9decbc974df583cc = external constant [0 x i8]
@G_2ecompiler_2fscope_2eBndTask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_2b4fe6e94d6a7479_c916946ab1cc6fcd = external constant [0 x i8]
declare i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0)
@olang_loc_43bfbe21df81ba11_dcc42dbc8d435385 = external constant [0 x i8]
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
@olang_loc_6394424831553130_d700826afb80c48c = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedRoot(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_29fa10d4159aba3b_16edb076e72dde47 = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDerivedSlot(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_ea8bc9cbfbc12dba_2b605625354de9e6 = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erootOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2eisNameChar(i8 %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H4527323723b724269d0557de47b57e0e(ptr %v0, ptr %a0)
@olang_loc_9860a08c2c4d05d2_294127fb02ae07ae = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_6b4093eaa9dab6e0_ebbf8088c45502d4 = external constant [0 x i8]
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a83726b6934b3ff_5f714cf565db93e3 = external constant [0 x i8]
@olang_loc_2e96c7acbe66a05d_c52c59876e2a2911 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eforcedBy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2fscope_2eisParamRead(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2eownField(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9c7ebd2b12e06561_d1b788b185a2a0b5 = external constant [0 x i8]
@olang_loc_e6e67a80e175cfd0_914d29e7454711c4 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_97396c871582ed15_57852cddb00c7721 = external constant [0 x i8]
@olang_loc_4e30153e8dd87e24_c063a5f8ea87c90 = external constant [0 x i8]
@G_2ecompiler_2fscope_2eFitPayload = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitElem = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_6eab74aa3e0b63d9_475cda0f5b688a85 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeStoresArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eelemAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWriteThroughAtBuilds(ptr %v0)
@olang_loc_2906ca9d29f69631_82ae3e269cbacfc5 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturingLambda(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonlyCalled(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3)
@olang_loc_fc6a508fadcedae3_fc22fb2e32e5f087 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_ec2dd22d28cc6988_9d0975400b204864 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandByObligations(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3)
@olang_loc_40f69a1a72292384_3f2388abecda0b30 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2eaddRec(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
@olang_loc_2b2b1c5bca7382ee_3254cae318351912 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_He8fa2eab054d0b98ccbd3d6295fac885(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftOf(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowed(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_3615f8c81297be95_8f4c76758aae1d39 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, %"compiler/source:Span" %a4)
@olang_loc_8512c8e5a34c1680_11a04901f462dc84 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_271e9ecf5549331f_fa1bdfb41feb4a53 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindLocal(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_333095c8aa3d0ed2_eefb3089191ecb2e = external constant [0 x i8]
@G_2ecompiler_2fscope_2eFitLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_eb3169e1e84098f9_8a2d6a085cc5aad5 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, { i64, [2 x i64] } %a2)
@olang_loc_9577440ef01a2a6b_ad29297969b69207 = external constant [0 x i8]
@olang_loc_24ce0aa2bd73a813_181dbbf328082c5f = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emarkTerm(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunknownMark(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4e3f45266a1861e5_407b603c1e8329c9 = external constant [0 x i8]
@G_2ecompiler_2fscope_2eWhyField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhereLives(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3)
@olang_loc_f93cd3b3e6e55ab4_45fd206fd1f47ef8 = external constant [0 x i8]
@olang_loc_cdf46faaecc001bd_4d9c5c30fc95ab59 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitHeld(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8a01e9430b40cdd5_116fbcb2b32a38a1 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_c1bd851797ba3a07_3a08c51eb1b81973 = external constant [0 x i8]
@olang_loc_f6ec8187c757dce8_8726f65a7d0e6fa4 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteOrigin(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/scope:Val" %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewalkLocal(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_91699d3516f660a1_aa0e11d9464965f5 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d8ab151ef39a0b1a_493c405c799b164e = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_4be91e4a1fba2bdb_4552e3a09b71daff = external constant [0 x i8]
@olang_loc_822a996be6bf60ec_a610051fdc17dde0 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownCall(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
@olang_loc_20bba8d7d253ea85_a129e3e310279d91 = external constant [0 x i8]
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
@olang_loc_9530d1c4ea412de_9379e3d37f97848a = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ac920da97f69d3ae_2bb2c283cdbb4f6a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastName(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildThroughUnknownScope(ptr %v0)
@olang_loc_5c49853202d9fa8c_ad203b077ad42ef8 = external constant [0 x i8]
@olang_loc_e598343033241940_f023ba5342a3ff7c = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceOfRefs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_d5b499138e5334df_68c2e51948532eeb = external constant [0 x i8]
@G_2ecompiler_2fscope_2eWhyHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_efeba8037e802192_fbb9be0cbeac966 = external constant [0 x i8]
@G_2ecompiler_2fscope_2eFitDecl = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@olang_loc_4ce35395f0f925b9_cbae4bbebb7ea34d = external constant [0 x i8]
@olang_loc_ef194281b7e9372b_4f5022b99d00b52f = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunknownBinding(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_b7b2bcd4863652d3_99a604389ddb6357 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRelatable({ i64, [2 x i64] } %a0)
@olang_loc_867a81ac657fc1e6_792cc237e4eb2912 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enarrowingMatters(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_426d318a55139bcd_d6246dca57642d39 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastCopy(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_2da9196a4802a87e_4c8be8a34b4612f2 = external constant [0 x i8]
@olang_loc_eb87dd4121528525_adda5cbf4b37aa19 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftLocal(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftStorage(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_1af6112f776024f0_9f71501f5f48544c = external constant [0 x i8]
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecsOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
@olang_loc_53628e95619551cf_9f8e9131e60fb0bb = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/scope:fnRecs" %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
@olang_loc_a3d67bab0a0a1a9_82466bf787f25fd = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
@olang_loc_14455cde4f54c772_c18dc270901e4076 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOpenAt(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_4a184edc0e9e6e50_84275d6964bd8c04 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eFitValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %a0)
@olang_loc_8238268b26f31dac_815f599ed0aacad8 = external constant [0 x i8]
@olang_loc_aa39aa4c0e664ec2_f7b48f4e1663008e = external constant [0 x i8]
declare i1 @compiler_2fscope_2eisBlockTerm({ i64, [2 x i64] } %a0)
@olang_loc_f4a3544f2707870_d9666a31439b8584 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
@olang_loc_47b6b2aadca5a54f_c1e200e36f23f353 = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_17b5555e490eca40_3a72f19dfd1cef0c = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenElemTerm(ptr %v0, ptr %a0)
@olang_loc_7d1ba41a43de5df_b306ac45f9e7717b = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_deaf2ed7955484ae_e8df1e0ec0ac14ba = external constant [0 x i8]
@olang_loc_79e16856d8fb6455_e8daf01bb6fb0841 = external constant [0 x i8]
@olang_loc_186ca373cb9efbb9_53813e15cbf900dd = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Ha465a93158402c796c1a3186ea412a3d(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20compiler_2fscope_3afnR_H1ecc1125ed7287356979ca161cc461cb(ptr %v0, ptr %a0)
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCa_H51434cdf1adf882bf8df91930f0b3746(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_f93cae1f2b16e9ca_2853a1bde02f9166 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hfa1443b78b370663a08d66c4df09c693(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturedRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H7db3b405224a110a9f0254eb7b8474c7(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, %"compiler/scope:fnRecs" %a2)
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcfaf91d2f69b0f478c1276e68071930d(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_9b30aadb18eb277f_192cdcf64c29ca93 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, { i64, ptr } %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisAdapter(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_894def51c550c10b_edf695233d65cd0f = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
@olang_loc_70f3ad61916a5f6d_25d9c99e76c50229 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
@olang_loc_85be90d3c3ac368d_8b18b6e2569eb819 = external constant [0 x i8]
@olang_loc_c1e814726b785cf2_df631aab7cf532ee = external constant [0 x i8]
@olang_loc_21e064470a3252d0_305537a6acb289cc = external constant [0 x i8]
@olang_loc_f9519574182490d7_42fc30f708795ccb = external constant [0 x i8]
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewant(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2eletOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_4998bbf808a57bb_722e3eb13605292f = external constant [0 x i8]
@olang_loc_9fa5a1e2ff44b071_c7b2f6de12c9b12d = external constant [0 x i8]
@olang_loc_8ae797379831bd51_629aae10c041c6e5 = external constant [0 x i8]
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
