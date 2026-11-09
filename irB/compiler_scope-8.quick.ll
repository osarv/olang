source_filename = "compiler_scope-8.quick.ll"
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
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/scope:verAtom" = type { i64, i64, i64, i64, i64, i64, i1, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/scope:compRun" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/diag:Taken", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/diag:Taken" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/scope:walked" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local void @compiler_2fscope_2eaddRec(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:fnRec"
  %l3 = alloca ptr
  %l4 = alloca %"compiler/scope:fnRec"
  %l6 = alloca %"compiler/scope:fnRec"
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca %"compiler/scope:fnRec"
  %l13 = alloca %"compiler/scope:fnRec"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/scope:fnRec" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:fnRecs", ptr %t1, i32 0, i32 0
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load %"compiler/scope:fnRec", ptr %l1
  store %"compiler/scope:fnRec" %t4, ptr %l4
  %t6 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s0, ptr %l4)
  store %"compiler/scope:fnRec" %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t8 = load %"compiler/scope:fnRec", ptr %l6
  %t9 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eHas_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %s0, ptr %t7, %"compiler/scope:fnRec" %t8)
  store i1 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i1, ptr %l7, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:fnRecs", ptr %t13, i32 0, i32 0
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = load %"compiler/scope:fnRec", ptr %l1
  store %"compiler/scope:fnRec" %t16, ptr %l11
  %t18 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s1, ptr %l11)
  store %"compiler/scope:fnRec" %t18, ptr %l13
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t19 = load ptr, ptr %l10, !tbaa !29
  %t20 = load %"compiler/scope:fnRec", ptr %l13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %s1, ptr %t19, %"compiler/scope:fnRec" %t20)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eComponents(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 24
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLands(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l4 = alloca { i64, [2 x i64] }
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  store { i64, [2 x i64] } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l4
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  %t11 = xor i1 %t9, true
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca i64
  %l8 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i1
  %l21 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRoot(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sge i64 %t6, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t16 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedRead(ptr %v0, ptr %v1, ptr %v1, ptr %t12, ptr %t13)
  store ptr %t16, ptr %l11
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t17 = load ptr, ptr %l8, !tbaa !29
  %t18 = load ptr, ptr %l11, !tbaa !29
  %t19 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRoot(ptr %v0, ptr %v1, ptr %v2, ptr %t17, ptr %t18)
  store ptr %t19, ptr %l12
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l12, !tbaa !29
  store ptr %t20, ptr %rv
  br label %ret
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l13, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t22)
  store i32 %t24, ptr %l15
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load i32, ptr %l15, !tbaa !23
  %t27 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t27, ptr %l16
  br label %bb8
bb8:
  %t28 = load i1, ptr %l16, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t36 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRoot(ptr %v0, ptr %v1, ptr %v2, ptr %t32, ptr %t33)
  store ptr %t36, ptr %l21
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l21, !tbaa !29
  store ptr %t37, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndReturn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l26 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l37 = alloca ptr
  %l40 = alloca i64
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
  store ptr %t5, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t6 = load ptr, ptr %l9, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 7
  store i1 %t12, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb19
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Make", ptr %t20, i32 0, i32 0
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 5}
  %t25 = trunc i64 0 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Make", ptr %t28, i32 0, i32 2
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l5, !tbaa !24
  br label %bb11
bb10:
  br label %bb18
bb11:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t45 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t45, ptr %l26, !tbaa !27
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr ptr, ptr %t49, i64 %t46
  %t51 = load ptr, ptr %t50, !tbaa !39
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr @G_2ecompiler_2fscope_2eBndReturn, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t53, ptr %t51, i64 %t56)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l4, !tbaa !24
  br label %bb11
bb17:
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_dafb57c7e6be4360_64c24756b9afbb1c)
  unreachable
bb24:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l35, !tbaa !29
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l37, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/scope:Scoper", ptr %t67, i32 0, i32 99
  %t70 = load i1, ptr %t69, !tbaa !21
  br i1 %t70, label %bb25, label %bb26
bb25:
  %t72 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  store i64 %t72, ptr %l40, !tbaa !24
  br label %bb27
bb26:
  %t74 = load i64, ptr @G_2ecompiler_2fscope_2eBndReturn, !tbaa !24
  store i64 %t74, ptr %l40, !tbaa !24
  br label %bb27
bb27:
  %t76 = load ptr, ptr %l35, !tbaa !29
  %t77 = load ptr, ptr %l37, !tbaa !29
  %t78 = load i64, ptr %l40, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t76, ptr %t77, i64 %t78)
  br label %bb28
bb28:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsSelf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l19 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
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
  br label %bb7
bb5:
  %t22 = load i32, ptr %l4, !tbaa !23
  %t24 = sext i32 %t22 to i64
  %t26 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t31 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %a0, i64 %t24, i64 %a2, i64 %t26)
  store i1 %t31, ptr %l19
  br label %bb6
bb6:
  %t32 = load i1, ptr %l19, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l7, !tbaa !21
  br label %bb22
bb7:
  %t35 = load ptr, ptr %l3, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l21, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 5}
  %t42 = icmp eq i64 %t40, 1
  store i1 %t42, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l22, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t44 = load ptr, ptr %l3, !tbaa !29
  store ptr %t44, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t45 = load ptr, ptr %l25, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = load ptr, ptr %l25, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 5}
  %t51 = icmp eq i64 %t49, 4
  store i1 %t51, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_fffe9faf12a835a0_66d5050fe7e20ca4)
  unreachable
bb22:
  %t53 = load i1, ptr %l7, !tbaa !21
  store i1 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t1, i32 %a2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l3, !tbaa !29
  br label %bb9
bb8:
  br label %bb22
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t30 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s2, ptr %t25, ptr %t26)
  store ptr %t30, ptr %l19
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l19, !tbaa !29
  store ptr %t31, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 18}
  %t39 = icmp eq i64 %t37, 1
  store i1 %t39, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l22, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_fc2d23a56a9972c4_138c6d588cf96ab0)
  unreachable
bb21:
  call void @__olang_scope_close(ptr %s2)
  %t41 = load i1, ptr %l20, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store i1 false, ptr %rv
  br label %ret
bb26:
  call void @__olang_check_failed(ptr @olang_loc_3c97826faaf501b5_26e177716b83aa41)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstLiteral(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i1
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t21 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s1, ptr %t16, ptr %t17)
  store ptr %t21, ptr %l14
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t23 = call i1 @compiler_2fscope_2econstItems(ptr %s1, ptr %t22)
  store i1 %t23, ptr %l15
  br label %bb7
bb7:
  %t24 = load i1, ptr %l15, !tbaa !21
  store i1 %t24, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 8}
  %t32 = icmp eq i64 %t30, 2
  store i1 %t32, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  br label %bb13
bb12:
  br label %bb16
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l22, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t46 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s2, ptr %t41, ptr %t42)
  store ptr %t46, ptr %l26
  br label %bb14
bb14:
  %t47 = load ptr, ptr %l22, !tbaa !29
  %t48 = load ptr, ptr %l26, !tbaa !29
  %t49 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %s2, ptr %t47, ptr %t48)
  store i1 %t49, ptr %l27
  br label %bb15
bb15:
  %t50 = load i1, ptr %l27, !tbaa !21
  store i1 %t50, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_1613ed059cb03484_3323568ce669da90)
  unreachable
bb21:
  %t51 = load i1, ptr %l4, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedBuilds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l34 = alloca i1
  %l41 = alloca { i64, ptr }
  %l44 = alloca i1
  %l50 = alloca { i64, ptr }
  %l55 = alloca i64
  %l58 = alloca i64
  %l81 = alloca i64
  %s5 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a4, ptr %l14, !tbaa !27
  %t2 = load i64, ptr %l3, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i64 %t2
  %t7 = load { i64, [2 x i64] }, ptr %t6
  %t11 = extractvalue { i64, [2 x i64] } %t7, 0
  %t12 = icmp eq i64 %t11, 4
  br i1 %t12, label %bb1, label %bb2
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
  store i1 true, ptr %rv
  br label %ret
bb8:
  call void @__olang_check_failed(ptr @olang_loc_5143053d218562e2_13c44612613aa94e)
  unreachable
bb9:
  store { i64, ptr } %a2, ptr %l20, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l6, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l25, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l1, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l30
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t40 = load i32, ptr %l30, !tbaa !23
  %t41 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t39, i32 %t40)
  store { i64, ptr } %t41, ptr %l31
  br label %bb11
bb11:
  %t42 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t42, ptr %l7, !tbaa !27
  %t43 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t43, 0
  br i1 %t45, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb14
bb13:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t53 = icmp sge i64 %t47, %t50
  store i1 %t53, ptr %l34, !tbaa !21
  br label %bb14
bb14:
  %t55 = load i1, ptr %l34, !tbaa !21
  br i1 %t55, label %bb15, label %bb16
bb15:
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t58, ptr %l41, !tbaa !27
  %t59 = load i64, ptr %l6, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i32, ptr %t62, i64 %t59
  %t64 = load i32, ptr %t63, !tbaa !33
  %t67 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %t57, i32 %t64)
  store i1 %t67, ptr %l44
  br label %bb18
bb18:
  %t68 = load i1, ptr %l44, !tbaa !21
  br i1 %t68, label %bb19, label %bb20
bb19:
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  store i64 0, ptr %l8, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s5, ptr %t75, i32 %t76)
  store { i64, ptr } %t79, ptr %l50
  br label %bb22
bb22:
  %t80 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  store i64 %t81, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t83 = load i64, ptr %l9, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  %t87 = icmp sgt i64 %t83, %t84
  br i1 %t87, label %bb23, label %bb24
bb23:
  %t89 = load i64, ptr %l10, !tbaa !24
  %t91 = icmp sgt i64 %t89, 0
  br i1 %t91, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb28
bb25:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t97 = sub i64 %t93, %t94
  %t98 = load i64, ptr %l10, !tbaa !24
  %t101 = add i64 %t97, %t98
  %t103 = sub i64 %t101, 1
  %t104 = load i64, ptr %l10, !tbaa !24
  %t107 = sdiv i64 %t103, %t104
  store i64 %t107, ptr %l58, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb27
bb27:
  %t109 = load i64, ptr %l58, !tbaa !24
  store i64 %t109, ptr %l55, !tbaa !24
  br label %bb28
bb28:
  %t110 = load i64, ptr %l55, !tbaa !24
  store i64 %t110, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb29
bb29:
  %t111 = load i64, ptr %l12, !tbaa !24
  %t112 = load i64, ptr %l11, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb30, label %bb31
bb30:
  br label %bb38
bb31:
  br label %bb32
bb32:
  %t119 = load i64, ptr %l8, !tbaa !24
  %t120 = load i64, ptr %l12, !tbaa !24
  %t121 = load i64, ptr %l10, !tbaa !24
  %t124 = mul i64 %t120, %t121
  %t127 = add i64 %t119, %t124
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/scope:Scoper", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 2
  %t135 = load i32, ptr %l1, !tbaa !23
  %t140 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t134, i32 %t135, i64 %t127)
  store i64 %t140, ptr %l81
  br label %bb33
bb33:
  %t141 = load i64, ptr %l6, !tbaa !24
  %t142 = load i64, ptr %l81, !tbaa !24
  %t144 = icmp eq i64 %t142, %t141
  br i1 %t144, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s5)
  store i1 true, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t147 = load i64, ptr %l12, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l12, !tbaa !24
  br label %bb29
bb38:
  call void @__olang_scope_close(ptr %s5)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edischarge(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3, ptr %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l7
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/scope:Scoper", ptr %t3, i32 0, i32 6
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t5, i64 %t6)
  store ptr %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l11, !tbaa !29
  %t12 = getelementptr %"compiler/scope:summary", ptr %t10, i32 0, i32 0
  %t13 = load i64, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t18 = load %"compiler/source:Span", ptr %l7
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edischargeRels(ptr %v0, ptr %v0, ptr %v1, ptr %v2, ptr %t17, %"compiler/source:Span" %t18, ptr %t12, i64 %t13, { i64, ptr } %a3, ptr %a4, i1 %a5)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l6 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l15 = alloca { i64, [2 x i64] }
  %l18 = alloca { i64, [2 x i64] }
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 64
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load { i64, [2 x i64] }, ptr %l1
  %t12 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t10)
  store i1 %t12, ptr %l8
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i1, ptr %l8, !tbaa !21
  %t14 = xor i1 %t13, true
  store i1 %t14, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l6, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t17 = load { i64, [2 x i64] }, ptr %l1
  %t19 = extractvalue { i64, [2 x i64] } %t17, 0
  %t20 = icmp eq i64 %t19, 0
  %t22 = xor i1 %t20, true
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t25, ptr %l15
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 65
  %t29 = load { i64, [2 x i64] }, ptr %t28
  store { i64, [2 x i64] } %t29, ptr %l18
  %t32 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l15, ptr %l18)
  store i1 %t32, ptr %l20
  br label %bb10
bb9:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb11
bb10:
  %t33 = load i1, ptr %l20, !tbaa !21
  store i1 %t33, ptr %l14, !tbaa !21
  br label %bb11
bb11:
  %t34 = load i1, ptr %l14, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l20 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
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
  %t7 = getelementptr %"compiler/typed:Arm", ptr %t5, i32 0, i32 1
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
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l20, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Alt", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t30, ptr %t34)
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Alt", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t55, ptr %l35, !tbaa !27
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Bind", ptr %t61, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t63, ptr %t67)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l7, !tbaa !24
  br label %bb9
bb15:
  br label %bb16
bb16:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l3, !tbaa !24
  br label %bb4
bb17:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Arm", ptr %t80, i32 0, i32 2
  %t83 = load ptr, ptr %t82, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t79, ptr %t83)
  br label %bb18
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Arm", ptr %t87, i32 0, i32 3
  %t90 = load ptr, ptr %t89, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %t86, ptr %t90)
  br label %bb19
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Arm", ptr %t94, i32 0, i32 4
  %t97 = load ptr, ptr %t96, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %t93, ptr %t97)
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efromAtoms(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/scope:verAtom"
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca { i64, [2 x i64] }
  %l25 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb3
bb3:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb11
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %v1, ptr %t15, i64 %t16)
  store %"compiler/scope:verAtom" %t19, ptr %l15
  br label %bb7
bb7:
  %t20 = load %"compiler/scope:verAtom", ptr %l15
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l16, !tbaa !29
  store ptr %l2, ptr %l17, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t26 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomTerm(ptr %v0, ptr %t22, %"compiler/scope:verAtom" %t20)
  store { i64, [2 x i64] } %t26, ptr %l20
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t29 = load { i64, [2 x i64] }, ptr %l20
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %s0, ptr %t27, ptr %t28, { i64, [2 x i64] } %t29)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l4, !tbaa !24
  br label %bb2
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t37 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermOf(ptr %v0, ptr %s0, ptr %t34, ptr %l2)
  store { i64, [2 x i64] } %t37, ptr %l25
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load { i64, [2 x i64] }, ptr %l25
  store { i64, [2 x i64] } %t38, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBack(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l7 = alloca i1
  %l11 = alloca i1
  %l16 = alloca ptr
  %l18 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l19 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l26 = alloca ptr
  %l28 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l30 = alloca ptr
  %l32 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 217
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 220
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l4, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 63
  %t15 = load i1, ptr %t14, !tbaa !21
  %t17 = xor i1 %t15, true
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l7, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  %t20 = load i64, ptr %l1, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  store i1 %t22, ptr %l11, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l11, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 222
  store ptr %t29, ptr %l16, !tbaa !29
  %t30 = load i64, ptr %l1, !tbaa !24
  %t32 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t30, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t32, ptr %l18
  br label %bb13
bb13:
  %t33 = load ptr, ptr %l16, !tbaa !29
  %t34 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l18
  %t35 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t33, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34)
  store i1 %t35, ptr %l19
  br label %bb14
bb14:
  %t36 = load i1, ptr %l19, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 255
  store ptr %t41, ptr %l22, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t44 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t42, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t44, ptr %l24
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t45 = load ptr, ptr %l22, !tbaa !29
  %t46 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %t45, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t46)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 222
  store ptr %t49, ptr %l26, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t52 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t50, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t52, ptr %l28
  br label %bb20
bb20:
  %t53 = load ptr, ptr %l26, !tbaa !29
  %t54 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l28
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t53, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t54, i1 true)
  br label %bb21
bb21:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 253
  store ptr %t57, ptr %l30, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  %t60 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t58, i64 -1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t60, ptr %l32
  br label %bb22
bb22:
  %t61 = load ptr, ptr %l30, !tbaa !29
  %t62 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %t61, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t62)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveTails(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l17 = alloca ptr
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l62 = alloca i64
  %l64 = alloca i1
  %l65 = alloca ptr
  %l68 = alloca i64
  %l69 = alloca i1
  %l70 = alloca ptr
  %l73 = alloca i64
  %l74 = alloca i1
  %l76 = alloca ptr
  %l79 = alloca i64
  %l80 = alloca ptr
  %l83 = alloca i64
  %l87 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l88 = alloca i64
  %l90 = alloca i64
  %l91 = alloca i32
  %l93 = alloca i1
  %l97 = alloca ptr
  %l103 = alloca { i64, ptr }
  %l106 = alloca i1
  %l107 = alloca ptr
  %l114 = alloca i32
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %t202 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l4
  store ptr %a3, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l6, !tbaa !24
  store i64 %t5, ptr %l20, !tbaa !24
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v3, ptr %t6)
  store i64 %t8, ptr %l22
  br label %bb3
bb3:
  %t9 = load i64, ptr %l20, !tbaa !24
  %t10 = load i64, ptr %l22, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v3, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l27
  br label %bb7
bb7:
  %t20 = load i64, ptr %l27, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l4, i64 %t20, i1 true)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = add i64 %t24, 1
  store i64 %t26, ptr %l6, !tbaa !24
  br label %bb2
bb10:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb11
bb11:
  %t28 = load i1, ptr %l8, !tbaa !21
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb12, label %bb13
bb12:
  br label %bb44
bb13:
  br label %bb14
bb14:
  store i1 false, ptr %l8, !tbaa !21
  store i64 0, ptr %l9, !tbaa !24
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t32)
  store i64 %t34, ptr %l35
  br label %bb15
bb15:
  %t35 = load i64, ptr %l35, !tbaa !24
  store i64 %t35, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t36 = load i64, ptr %l10, !tbaa !24
  %t37 = load i64, ptr %l9, !tbaa !24
  %t40 = icmp sgt i64 %t36, %t37
  br i1 %t40, label %bb16, label %bb17
bb16:
  %t42 = load i64, ptr %l11, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb21
bb18:
  %t46 = load i64, ptr %l10, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = sub i64 %t46, %t47
  %t51 = load i64, ptr %l11, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = sub i64 %t54, 1
  %t57 = load i64, ptr %l11, !tbaa !24
  %t60 = sdiv i64 %t56, %t57
  store i64 %t60, ptr %l42, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb20
bb20:
  %t62 = load i64, ptr %l42, !tbaa !24
  store i64 %t62, ptr %l39, !tbaa !24
  br label %bb21
bb21:
  %t63 = load i64, ptr %l39, !tbaa !24
  store i64 %t63, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb22
bb22:
  %t64 = load i64, ptr %l13, !tbaa !24
  %t65 = load i64, ptr %l12, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb23, label %bb24
bb23:
  br label %bb42
bb24:
  br label %bb25
bb25:
  %t72 = load i64, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l13, !tbaa !24
  %t74 = load i64, ptr %l11, !tbaa !24
  %t77 = mul i64 %t73, %t74
  %t80 = add i64 %t72, %t77
  store i64 %t80, ptr %l14, !tbaa !24
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t83 = load i64, ptr %l14, !tbaa !24
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t82, i64 %t83)
  store i64 %t86, ptr %l62
  br label %bb26
bb26:
  %t87 = load i64, ptr %l62, !tbaa !24
  %t88 = icmp slt i64 %t87, 0
  br i1 %t88, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb33
bb28:
  store ptr %l4, ptr %l65, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t91 = load i64, ptr %l14, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l68
  br label %bb29
bb29:
  %t95 = load ptr, ptr %l65, !tbaa !29
  %t96 = load i64, ptr %l68, !tbaa !24
  %t97 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %t95, i64 %t96)
  store i1 %t97, ptr %l69
  br label %bb30
bb30:
  store ptr %l4, ptr %l70, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t99 = load i64, ptr %l14, !tbaa !24
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t98, i64 %t99)
  store i64 %t102, ptr %l73
  br label %bb31
bb31:
  %t103 = load ptr, ptr %l70, !tbaa !29
  %t104 = load i64, ptr %l73, !tbaa !24
  %t105 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %t103, i64 %t104)
  store i1 %t105, ptr %l74
  br label %bb32
bb32:
  %t106 = load i1, ptr %l69, !tbaa !21
  %t107 = load i1, ptr %l74, !tbaa !21
  %t108 = icmp eq i1 %t106, %t107
  store i1 %t108, ptr %l64, !tbaa !21
  br label %bb33
bb33:
  %t110 = load i1, ptr %l64, !tbaa !21
  br i1 %t110, label %bb34, label %bb35
bb34:
  br label %bb41
bb35:
  br label %bb36
bb36:
  store ptr %l4, ptr %l76, !tbaa !29
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t112 = load i64, ptr %l14, !tbaa !24
  %t115 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t111, i64 %t112)
  store i64 %t115, ptr %l79
  br label %bb37
bb37:
  %t116 = load ptr, ptr %l76, !tbaa !29
  %t117 = load i64, ptr %l79, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %t116, i64 %t117, i1 true)
  br label %bb38
bb38:
  store ptr %l4, ptr %l80, !tbaa !29
  %t118 = load ptr, ptr %l2, !tbaa !29
  %t119 = load i64, ptr %l14, !tbaa !24
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t118, i64 %t119)
  store i64 %t122, ptr %l83
  br label %bb39
bb39:
  %t123 = load ptr, ptr %l80, !tbaa !29
  %t124 = load i64, ptr %l83, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %t123, i64 %t124, i1 true)
  br label %bb40
bb40:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb41
bb41:
  %t125 = load i64, ptr %l13, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l13, !tbaa !24
  br label %bb22
bb42:
  br label %bb43
bb43:
  br label %bb11
bb44:
  %t130 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %s0, ptr %s0, ptr %l4)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t130, ptr %l87
  br label %bb45
bb45:
  %t131 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l87
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t131, ptr %l15
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s10
  %t133 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %s0, ptr %l15)
  %t134 = extractvalue { i32, i64 } %t133, 1
  %t135 = extractvalue { i32, i64 } %t133, 0
  store i32 %t135, ptr %l91
  %t136 = icmp ne i32 %t135, 0
  br i1 %t136, label %bb48, label %ok.137, !prof !99
ok.137:
  store i64 %t134, ptr %l90
  br label %bb47
bb47:
  %t138 = load i64, ptr %l90, !tbaa !24
  store i64 %t138, ptr %l88, !tbaa !24
  br label %bb50
bb48:
  %t139 = load i32, ptr %l91, !tbaa !23
  %t140 = ashr i32 %t139, 16
  %t142 = icmp eq i32 %t140, 1
  store i1 %t142, ptr %l93, !tbaa !21
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s10)
  br label %bb60
bb50:
  %t143 = load i64, ptr %l88, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/scope:Scoper", ptr %t144, i32 0, i32 1
  %t150 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t146, i64 %t143)
  store ptr %t150, ptr %l97
  br label %bb51
bb51:
  %t151 = load ptr, ptr %l97, !tbaa !29
  store ptr %t151, ptr %l17, !tbaa !29
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/generic:Program", ptr %t155, i32 0, i32 2
  %t158 = load ptr, ptr %l17, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Body", ptr %t158, i32 0, i32 2
  %t161 = load i32, ptr %t160, !tbaa !23
  %t164 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s10, ptr %t157, i32 %t161)
  store { i64, ptr } %t164, ptr %l103
  br label %bb52
bb52:
  %t165 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  %t167 = extractvalue { i64, ptr } %t165, 1
  %t168 = mul i64 %t166, 8
  %t169 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t172 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t173 = insertvalue { ptr, ptr } %t172, ptr null, 1
  %t176 = extractvalue { ptr, ptr } %t173, 0
  %t177 = extractvalue { ptr, ptr } %t173, 1
  %t178 = call i1 @std_2fprelude_2farray_2eArray_3cI64_3e_2eSome_3cI64_2c_20_3f_3e(ptr %s10, ptr %s10, { i64, ptr } %t171, ptr %t176, ptr %t177)
  store i1 %t178, ptr %l106
  br label %bb53
bb53:
  %t179 = load i1, ptr %l106, !tbaa !21
  br i1 %t179, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb55:
  br label %bb56
bb56:
  %t180 = load ptr, ptr %l17, !tbaa !29
  store ptr %t180, ptr %l107, !tbaa !29
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/scope:Scoper", ptr %t181, i32 0, i32 0
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = getelementptr %"compiler/generic:Program", ptr %t184, i32 0, i32 2
  %t187 = load ptr, ptr %l17, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Body", ptr %t187, i32 0, i32 2
  %t190 = load i32, ptr %t189, !tbaa !23
  %t191 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleTail, !tbaa !24
  %t195 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithRole(ptr %v0, ptr %t186, i32 %t190, i64 %t191)
  store i32 %t195, ptr %l114
  br label %bb57
bb57:
  %t196 = load i32, ptr %l114, !tbaa !23
  %t197 = load ptr, ptr %l107, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Body", ptr %t197, i32 0, i32 2
  store i32 %t196, ptr %t198, !tbaa !23
  %t199 = load ptr, ptr %l17, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Body", ptr %t199, i32 0, i32 6
  store { i64, [1 x i64] } zeroinitializer, ptr %t202
  %t203 = getelementptr { i64, [1 x i64] }, ptr %t202, i32 0, i32 0
  store i64 1, ptr %t203
  %t204 = load { i64, [1 x i64] }, ptr %t202
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t201, { i64, [1 x i64] } %t204)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb59:
  br label %bb46
bb60:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egivenPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l50 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l59 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t22 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egivenLocal(ptr %v0, ptr %t16, i64 %t19)
  store i1 %t22, ptr %l17
  br label %bb6
bb6:
  %t23 = load i1, ptr %l17, !tbaa !21
  store i1 %t23, ptr %l7, !tbaa !21
  br label %bb46
bb7:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t25 = load ptr, ptr %l18, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l18, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 8}
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l19, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb46
bb13:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t34 = load ptr, ptr %l22, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb14, label %bb15
bb14:
  %t37 = load ptr, ptr %l22, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 8}
  %t40 = icmp eq i64 %t38, 3
  store i1 %t40, ptr %l23, !tbaa !21
  br label %bb15
bb15:
  %t41 = load i1, ptr %l23, !tbaa !21
  br i1 %t41, label %bb16, label %bb17
bb16:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t44, i32 0, i32 2
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t52 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egivenPlace(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store i1 %t52, ptr %l30
  br label %bb19
bb19:
  %t53 = load i1, ptr %l30, !tbaa !21
  store i1 %t53, ptr %l7, !tbaa !21
  br label %bb46
bb20:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t55 = load ptr, ptr %l31, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb21, label %bb22
bb21:
  %t58 = load ptr, ptr %l31, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 8}
  %t61 = icmp eq i64 %t59, 4
  store i1 %t61, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t62 = load i1, ptr %l32, !tbaa !21
  br i1 %t62, label %bb23, label %bb24
bb23:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Elem", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t76 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egivenPlace(ptr %v0, ptr %v1, ptr %t69, ptr %t73)
  store i1 %t76, ptr %l40
  br label %bb26
bb26:
  %t77 = load i1, ptr %l40, !tbaa !21
  store i1 %t77, ptr %l7, !tbaa !21
  br label %bb46
bb27:
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t79 = load ptr, ptr %l41, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb28, label %bb29
bb28:
  %t82 = load ptr, ptr %l41, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 8}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l42, !tbaa !21
  br label %bb29
bb29:
  %t86 = load i1, ptr %l42, !tbaa !21
  br i1 %t86, label %bb30, label %bb31
bb30:
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l5, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Payload", ptr %t94, i32 0, i32 0
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t100 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egivenPlace(ptr %v0, ptr %v1, ptr %t93, ptr %t97)
  store i1 %t100, ptr %l50
  br label %bb33
bb33:
  %t101 = load i1, ptr %l50, !tbaa !21
  store i1 %t101, ptr %l7, !tbaa !21
  br label %bb46
bb34:
  %t102 = load ptr, ptr %l1, !tbaa !29
  store ptr %t102, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t103 = load ptr, ptr %l51, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb35, label %bb36
bb35:
  %t106 = load ptr, ptr %l51, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 8}
  %t109 = icmp eq i64 %t107, 2
  store i1 %t109, ptr %l52, !tbaa !21
  br label %bb36
bb36:
  %t110 = load i1, ptr %l52, !tbaa !21
  br i1 %t110, label %bb37, label %bb38
bb37:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %t114
  store ptr %t115, ptr %l6, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l6, !tbaa !29
  %t121 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egivenRef(ptr %v0, ptr %v1, ptr %t117, ptr %t118)
  store i1 %t121, ptr %l59
  br label %bb40
bb40:
  %t122 = load i1, ptr %l59, !tbaa !21
  store i1 %t122, ptr %l7, !tbaa !21
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_d375f47869e73b1e_ab7f910edbf0dc32)
  unreachable
bb46:
  %t123 = load i1, ptr %l7, !tbaa !21
  store i1 %t123, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egivenRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l10 = alloca i1
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i1
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
  store ptr %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = call i64 @compiler_2fscope_2elocalRead(ptr %s0, ptr %t7)
  store i64 %t8, ptr %l7
  br label %bb2
bb2:
  %t9 = load i64, ptr %l7, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 34
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t16, i64 %t17)
  store { i64, [2 x i64] } %t20, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb7
bb5:
  %t21 = load { i64, [2 x i64] }, ptr %l14
  %t22 = call i1 @compiler_2fscope_2etermGiven({ i64, [2 x i64] } %t21)
  store i1 %t22, ptr %l15
  br label %bb6
bb6:
  %t23 = load i1, ptr %l15, !tbaa !21
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t24 = load i1, ptr %l10, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %rv = alloca { i64, [2 x i64] }
  %t55 = alloca { i64, [2 x i64] }, align 8
  %t72 = alloca { i64, [2 x i64] }, align 8
  %t77 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 37
  store ptr %t4, ptr %l5, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 37
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = sub i64 %t10, 1
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t14 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t12, i64 %t11)
  store i32 %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i32, ptr %l10, !tbaa !23
  %t17 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elift(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load i32, ptr %l11, !tbaa !23
  store i32 %t18, ptr %l1, !tbaa !23
  %t19 = load i32, ptr %l1, !tbaa !23
  %t21 = icmp eq i32 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 26
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb6, label %bb7
bb5:
  br label %bb27
bb6:
  call void @__olang_check_failed(ptr @olang_loc_c4815f8d08aa5069_e0d3df7c014ad4fd)
  unreachable
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 26
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 1
  %t37 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t37, ptr %l2
  %t39 = load { i64, [2 x i64] }, ptr %l2
  %t41 = extractvalue { i64, [2 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 1
  br i1 %t42, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 42
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = icmp sge i64 %t47, 0
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 42
  %t54 = load i64, ptr %t53, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 0
  store i64 2, ptr %t56
  %t58 = insertvalue { i64 } undef, i64 %t54, 0
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 1
  store { i64 } %t58, ptr %t59
  %t60 = load { i64, [2 x i64] }, ptr %t55
  store { i64, [2 x i64] } %t60, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb26
bb15:
  %t62 = load { i64, [2 x i64] }, ptr %l2
  %t64 = extractvalue { i64, [2 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 6
  br i1 %t65, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  %t67 = load { i64, [2 x i64] }, ptr %l2
  %t69 = extractvalue { i64, [2 x i64] } %t67, 0
  %t70 = icmp eq i64 %t69, 7
  br i1 %t70, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store { i64, [2 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [2 x i64] }, ptr %t72, i32 0, i32 0
  store i64 3, ptr %t73
  %t74 = load { i64, [2 x i64] }, ptr %t72
  store { i64, [2 x i64] } %t74, ptr %rv
  br label %ret
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_f2ff34bd09efe7b1_f9738b06cf9c6415)
  unreachable
bb26:
  br label %bb27
bb27:
  %t76 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [2 x i64] }, ptr %t77, i32 0, i32 0
  store i64 1, ptr %t78
  %t80 = insertvalue { i32 } undef, i32 %t76, 0
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t77, i32 0, i32 1
  store { i32 } %t80, ptr %t81
  %t82 = load { i64, [2 x i64] }, ptr %t77
  store { i64, [2 x i64] } %t82, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceOutlivesArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"compiler/scope:rel"
  %l14 = alloca i64
  %l15 = alloca { i64, [2 x i64] }
  %l17 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i1
  %l31 = alloca i64
  %l34 = alloca i1
  %l35 = alloca ptr
  %l44 = alloca %"compiler/typed:Local"
  %l46 = alloca i1
  %l48 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i32
  %l54 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i32
  %l63 = alloca ptr
  %l66 = alloca ptr
  %l68 = alloca ptr
  %l71 = alloca i1
  %l74 = alloca i1
  %l77 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca i64
  %l88 = alloca i64
  %l89 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca i64
  %l96 = alloca i1
  %l99 = alloca i1
  %l102 = alloca i1
  %l108 = alloca ptr
  %l111 = alloca i64
  %l113 = alloca i64
  %l118 = alloca %"compiler/scope:rel"
  %l121 = alloca i1
  %l124 = alloca i1
  %l132 = alloca i64
  %l135 = alloca i1
  %l138 = alloca i64
  %l141 = alloca i64
  %l148 = alloca { i64, [2 x i64] }
  %l150 = alloca i1
  %l152 = alloca i1
  %l156 = alloca i64
  %l159 = alloca i1
  %l162 = alloca { i64, ptr }
  %l166 = alloca i1
  %l167 = alloca i1
  %l170 = alloca { i64, ptr }
  %l174 = alloca i64
  %l180 = alloca { i64, ptr }
  %l186 = alloca ptr
  %l189 = alloca { i64, ptr }
  %l192 = alloca %"compiler/source:Span"
  %l195 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l200 = alloca %"compiler/diagmsg:Msg"
  %l201 = alloca i64
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load i1, ptr %l17, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t13 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t8, ptr %a1)
  store ptr %t13, ptr %l23
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l23, !tbaa !29
  store ptr %t14, ptr %l4, !tbaa !29
  %t15 = load ptr, ptr %l4, !tbaa !29
  store ptr %t15, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t16 = load ptr, ptr %l24, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l24, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 2
  store i1 %t22, ptr %l25, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l25, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l5, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s0, ptr %t30)
  store i64 %t32, ptr %l31
  br label %bb11
bb11:
  %t33 = load i64, ptr %l31, !tbaa !24
  store i64 %t33, ptr %l3, !tbaa !24
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
  call void @__olang_check_failed(ptr @olang_loc_3f250a06b21cc3f2_59a5c5e8895f34f6)
  unreachable
bb17:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = icmp slt i64 %t34, 0
  br i1 %t36, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb25
bb19:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l35, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 26
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_8ee4ae07259e8dc_de6076a554649350)
  unreachable
bb21:
  br label %bb22
bb22:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 26
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t49, i32 0, i32 7
  %t53 = load i64, ptr %l3, !tbaa !24
  %t56 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t52, i64 %t53)
  store %"compiler/typed:Local" %t56, ptr %l44
  br label %bb23
bb23:
  %t57 = getelementptr %"compiler/typed:Local", ptr %l44, i32 0, i32 2
  %t58 = load i32, ptr %t57, !tbaa !23
  %t59 = load ptr, ptr %l35, !tbaa !29
  %t61 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t59, i32 %t58)
  store i1 %t61, ptr %l46
  br label %bb24
bb24:
  %t62 = load i1, ptr %l46, !tbaa !21
  store i1 %t62, ptr %l34, !tbaa !21
  br label %bb25
bb25:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 46
  %t68 = load i64, ptr %l3, !tbaa !24
  %t71 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t67, i64 %t68)
  %t72 = extractvalue { i32, i64 } %t71, 1
  %t73 = extractvalue { i32, i64 } %t71, 0
  store i32 %t73, ptr %l53
  %t74 = icmp ne i32 %t73, 0
  br i1 %t74, label %bb30, label %ok.75, !prof !99
ok.75:
  store i64 %t72, ptr %l52
  br label %bb29
bb29:
  %t76 = load i64, ptr %l52, !tbaa !24
  store i64 %t76, ptr %l48, !tbaa !24
  br label %bb32
bb30:
  br label %bb31
bb31:
  store i64 -1, ptr %l48, !tbaa !24
  br label %bb32
bb32:
  %t77 = load i64, ptr %l48, !tbaa !24
  store i64 %t77, ptr %l6, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Scoper", ptr %t78, i32 0, i32 45
  %t81 = load i64, ptr %l3, !tbaa !24
  %t84 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t80, i64 %t81)
  %t85 = extractvalue { i32, ptr } %t84, 1
  %t86 = extractvalue { i32, ptr } %t84, 0
  store i32 %t86, ptr %l59
  %t87 = icmp ne i32 %t86, 0
  br i1 %t87, label %bb34, label %ok.88, !prof !99
ok.88:
  store ptr %t85, ptr %l58
  br label %bb33
bb33:
  %t89 = load ptr, ptr %l58, !tbaa !29
  store ptr %t89, ptr %l54, !tbaa !29
  br label %bb36
bb34:
  br label %bb35
bb35:
  store ptr null, ptr %l54, !tbaa !29
  br label %bb36
bb36:
  %t90 = load ptr, ptr %l54, !tbaa !29
  store ptr %t90, ptr %l7, !tbaa !29
  %t91 = load ptr, ptr %l7, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb37, label %bb38
bb37:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t101 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v0, ptr %s0, ptr %t97, ptr %t98)
  store ptr %t101, ptr %l66
  br label %bb39
bb38:
  store ptr null, ptr %l63, !tbaa !29
  br label %bb41
bb39:
  %t102 = load ptr, ptr %l66, !tbaa !29
  %t104 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s0, ptr %s0, ptr %t102)
  store ptr %t104, ptr %l68
  br label %bb40
bb40:
  %t105 = load ptr, ptr %l68, !tbaa !29
  store ptr %t105, ptr %l63, !tbaa !29
  br label %bb41
bb41:
  %t106 = load ptr, ptr %l63, !tbaa !29
  store ptr %t106, ptr %l8, !tbaa !29
  %t107 = load i64, ptr %l6, !tbaa !24
  %t109 = icmp slt i64 %t107, 0
  br i1 %t109, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb44
bb43:
  %t111 = load ptr, ptr %l8, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  store i1 %t113, ptr %l71, !tbaa !21
  br label %bb44
bb44:
  %t115 = load i1, ptr %l71, !tbaa !21
  br i1 %t115, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb49
bb46:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 2
  store ptr %t121, ptr %l77, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l8, !tbaa !29
  %t126 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %s0, ptr %t122, ptr %t123)
  store i32 %t126, ptr %l80
  br label %bb47
bb47:
  %t127 = load ptr, ptr %l77, !tbaa !29
  %t128 = load i32, ptr %l80, !tbaa !23
  %t129 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t127, i32 %t128)
  store i64 %t129, ptr %l81
  br label %bb48
bb48:
  %t130 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t131 = load i64, ptr %l81, !tbaa !24
  %t133 = icmp ne i64 %t131, %t130
  store i1 %t133, ptr %l74, !tbaa !21
  br label %bb49
bb49:
  %t135 = load i1, ptr %l74, !tbaa !21
  br i1 %t135, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load ptr, ptr %l8, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Call", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t144 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %s0, ptr %t137, ptr %t141)
  store i64 %t144, ptr %l88
  br label %bb53
bb53:
  %t145 = load i64, ptr %l88, !tbaa !24
  store i64 %t145, ptr %l9, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l89, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l8, !tbaa !29
  %t151 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %s0, ptr %t147, ptr %t148)
  store i32 %t151, ptr %l92
  br label %bb54
bb54:
  %t152 = load ptr, ptr %l89, !tbaa !29
  %t153 = load i32, ptr %l92, !tbaa !23
  %t154 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t152, i32 %t153)
  store i64 %t154, ptr %l93
  br label %bb55
bb55:
  %t155 = load i64, ptr %l93, !tbaa !24
  store i64 %t155, ptr %l10, !tbaa !24
  %t156 = load i64, ptr %l9, !tbaa !24
  %t158 = icmp slt i64 %t156, 0
  br i1 %t158, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb58
bb57:
  %t160 = load i64, ptr %l10, !tbaa !24
  %t162 = icmp slt i64 %t160, 0
  store i1 %t162, ptr %l96, !tbaa !21
  br label %bb58
bb58:
  %t164 = load i1, ptr %l96, !tbaa !21
  br i1 %t164, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb62
bb60:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i64, ptr %l9, !tbaa !24
  %t169 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %t165, i64 %t166)
  store i1 %t169, ptr %l102
  br label %bb61
bb61:
  %t170 = load i1, ptr %l102, !tbaa !21
  %t171 = xor i1 %t170, true
  store i1 %t171, ptr %l99, !tbaa !21
  br label %bb62
bb62:
  %t173 = load i1, ptr %l99, !tbaa !21
  br i1 %t173, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/scope:Scoper", ptr %t175, i32 0, i32 6
  %t178 = load i64, ptr %l9, !tbaa !24
  %t181 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t177, i64 %t178)
  store ptr %t181, ptr %l108
  br label %bb66
bb66:
  %t182 = load ptr, ptr %l108, !tbaa !29
  %t184 = getelementptr %"compiler/scope:summary", ptr %t182, i32 0, i32 0
  store ptr %t184, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb67
bb67:
  %t186 = load i64, ptr %l12, !tbaa !24
  store i64 %t186, ptr %l111, !tbaa !24
  %t187 = load ptr, ptr %l11, !tbaa !29
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t187)
  store i64 %t189, ptr %l113
  br label %bb68
bb68:
  %t190 = load i64, ptr %l111, !tbaa !24
  %t191 = load i64, ptr %l113, !tbaa !24
  %t192 = icmp slt i64 %t190, %t191
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb69, label %bb70
bb69:
  br label %bb119
bb70:
  br label %bb71
bb71:
  %t196 = load ptr, ptr %l11, !tbaa !29
  %t197 = load i64, ptr %l12, !tbaa !24
  %t200 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t196, i64 %t197)
  store %"compiler/scope:rel" %t200, ptr %l118
  br label %bb72
bb72:
  %t201 = load %"compiler/scope:rel", ptr %l118
  store %"compiler/scope:rel" %t201, ptr %l13
  %t202 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 4
  %t203 = load i64, ptr %t202, !tbaa !24
  %t205 = icmp eq i64 %t203, 0
  br i1 %t205, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l121, !tbaa !21
  br label %bb78
bb74:
  %t207 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 1
  %t208 = load { i64, [2 x i64] }, ptr %t207
  %t210 = extractvalue { i64, [2 x i64] } %t208, 0
  %t211 = icmp eq i64 %t210, 2
  br i1 %t211, label %bb75, label %bb76
bb75:
  %t213 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 1
  %t214 = getelementptr { i64, [2 x i64] }, ptr %t213, i32 0, i32 1
  %t215 = getelementptr { i64 }, ptr %t214, i32 0, i32 0
  %t216 = load i64, ptr %t215
  %t217 = load i64, ptr %l10, !tbaa !24
  %t220 = icmp eq i64 %t216, %t217
  store i1 %t220, ptr %l124, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb77
bb77:
  %t222 = load i1, ptr %l124, !tbaa !21
  %t223 = xor i1 %t222, true
  store i1 %t223, ptr %l121, !tbaa !21
  br label %bb78
bb78:
  %t225 = load i1, ptr %l121, !tbaa !21
  br i1 %t225, label %bb79, label %bb80
bb79:
  br label %bb118
bb80:
  br label %bb81
bb81:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load ptr, ptr %l8, !tbaa !29
  %t228 = getelementptr %"compiler/scope:rel", ptr %l13, i32 0, i32 0
  %t229 = load { i64, [2 x i64] }, ptr %t228
  %t233 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %s0, ptr %t226, ptr %t227, { i64, [2 x i64] } %t229)
  store i64 %t233, ptr %l132
  br label %bb82
bb82:
  %t234 = load i64, ptr %l132, !tbaa !24
  store i64 %t234, ptr %l14, !tbaa !24
  %t235 = load i64, ptr %l14, !tbaa !24
  %t237 = icmp slt i64 %t235, 0
  br i1 %t237, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb86
bb84:
  %t239 = load i64, ptr %l6, !tbaa !24
  %t240 = load i64, ptr %l14, !tbaa !24
  %t243 = add i64 %t239, %t240
  store i64 %t243, ptr %l138, !tbaa !24
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/scope:Scoper", ptr %t244, i32 0, i32 47
  %t248 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t246)
  store i64 %t248, ptr %l141
  br label %bb85
bb85:
  %t249 = load i64, ptr %l138, !tbaa !24
  %t250 = load i64, ptr %l141, !tbaa !24
  %t251 = icmp sge i64 %t249, %t250
  store i1 %t251, ptr %l135, !tbaa !21
  br label %bb86
bb86:
  %t253 = load i1, ptr %l135, !tbaa !21
  br i1 %t253, label %bb87, label %bb88
bb87:
  br label %bb118
bb88:
  br label %bb89
bb89:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/scope:Scoper", ptr %t254, i32 0, i32 47
  %t257 = load i64, ptr %l6, !tbaa !24
  %t258 = load i64, ptr %l14, !tbaa !24
  %t261 = add i64 %t257, %t258
  %t264 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t256, i64 %t261)
  store { i64, [2 x i64] } %t264, ptr %l148
  br label %bb90
bb90:
  %t265 = load { i64, [2 x i64] }, ptr %l148
  store { i64, [2 x i64] } %t265, ptr %l15
  %t266 = load { i64, [2 x i64] }, ptr %l15
  %t268 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t266)
  store i1 %t268, ptr %l150
  br label %bb91
bb91:
  %t269 = load i1, ptr %l150, !tbaa !21
  %t270 = xor i1 %t269, true
  br i1 %t270, label %bb92, label %bb93
bb92:
  store i1 true, ptr %l152, !tbaa !21
  br label %bb95
bb93:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load { i64, [2 x i64] }, ptr %l15
  %t274 = load { i64, [2 x i64] }, ptr %l2
  %t278 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t272, { i64, [2 x i64] } %t273, { i64, [2 x i64] } %t274)
  store i64 %t278, ptr %l156
  br label %bb94
bb94:
  %t279 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t280 = load i64, ptr %l156, !tbaa !24
  %t282 = icmp ne i64 %t280, %t279
  store i1 %t282, ptr %l152, !tbaa !21
  br label %bb95
bb95:
  %t284 = load i1, ptr %l152, !tbaa !21
  br i1 %t284, label %bb96, label %bb97
bb96:
  store i1 true, ptr %l159, !tbaa !21
  br label %bb99
bb97:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load ptr, ptr %l8, !tbaa !29
  %t288 = getelementptr %"compiler/typed:Call", ptr %t286, i32 0, i32 1
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  store { i64, ptr } %t289, ptr %l162, !tbaa !27
  %t290 = load i64, ptr %l14, !tbaa !24
  %t292 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = getelementptr ptr, ptr %t293, i64 %t290
  %t295 = load ptr, ptr %t294, !tbaa !39
  %t299 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %s0, ptr %t285, ptr %t295)
  store i1 %t299, ptr %l166
  br label %bb98
bb98:
  %t300 = load i1, ptr %l166, !tbaa !21
  store i1 %t300, ptr %l159, !tbaa !21
  br label %bb99
bb99:
  %t301 = load i1, ptr %l159, !tbaa !21
  br i1 %t301, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l167, !tbaa !21
  br label %bb103
bb101:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load ptr, ptr %l8, !tbaa !29
  %t305 = getelementptr %"compiler/typed:Call", ptr %t303, i32 0, i32 1
  %t306 = load { i64, ptr }, ptr %t305, !tbaa !27
  store { i64, ptr } %t306, ptr %l170, !tbaa !27
  %t307 = load i64, ptr %l14, !tbaa !24
  %t309 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr ptr, ptr %t310, i64 %t307
  %t312 = load ptr, ptr %t311, !tbaa !39
  %t316 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %s0, ptr %t302, ptr %t312, i64 0)
  store i64 %t316, ptr %l174
  br label %bb102
bb102:
  %t317 = load i64, ptr %l174, !tbaa !24
  %t318 = icmp slt i64 %t317, 0
  store i1 %t318, ptr %l167, !tbaa !21
  br label %bb103
bb103:
  %t320 = load i1, ptr %l167, !tbaa !21
  br i1 %t320, label %bb104, label %bb105
bb104:
  br label %bb118
bb105:
  br label %bb106
bb106:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = getelementptr %"compiler/scope:Scoper", ptr %t321, i32 0, i32 147
  %t324 = load i1, ptr %t323, !tbaa !21
  br i1 %t324, label %bb107, label %bb108
bb107:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load ptr, ptr %l8, !tbaa !29
  %t329 = getelementptr %"compiler/typed:Call", ptr %t327, i32 0, i32 1
  %t330 = load { i64, ptr }, ptr %t329, !tbaa !27
  store { i64, ptr } %t330, ptr %l180, !tbaa !27
  %t331 = load i64, ptr %l14, !tbaa !24
  %t333 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr ptr, ptr %t334, i64 %t331
  %t336 = load ptr, ptr %t335, !tbaa !39
  %t337 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %s0, ptr %t326, ptr %t336, { i64, [2 x i64] } %t337)
  br label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb110
bb110:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/scope:Scoper", ptr %t341, i32 0, i32 28
  %t344 = load i1, ptr %t343, !tbaa !21
  br i1 %t344, label %bb111, label %bb112
bb111:
  store %olang.scope zeroinitializer, ptr %s13
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l186, !tbaa !29
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load ptr, ptr %l8, !tbaa !29
  %t350 = getelementptr %"compiler/typed:Call", ptr %t348, i32 0, i32 1
  %t351 = load { i64, ptr }, ptr %t350, !tbaa !27
  store { i64, ptr } %t351, ptr %l189, !tbaa !27
  %t352 = load i64, ptr %l14, !tbaa !24
  %t354 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t355 = load ptr, ptr %t354, !tbaa !27
  %t356 = getelementptr ptr, ptr %t355, i64 %t352
  %t357 = load ptr, ptr %t356, !tbaa !39
  %t360 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %s0, ptr %t347, ptr %t357)
  store %"compiler/source:Span" %t360, ptr %l192
  br label %bb113
bb112:
  br label %bb117
bb113:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load ptr, ptr %l8, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Call", ptr %t362, i32 0, i32 1
  %t365 = load { i64, ptr }, ptr %t364, !tbaa !27
  store { i64, ptr } %t365, ptr %l195, !tbaa !27
  %t366 = load i64, ptr %l14, !tbaa !24
  %t368 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t369 = load ptr, ptr %t368, !tbaa !27
  %t370 = getelementptr ptr, ptr %t369, i64 %t366
  %t371 = load ptr, ptr %t370, !tbaa !39
  %t374 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHint(ptr %v0, ptr %s0, ptr %s13, ptr %t361, ptr %t371)
  store { i64, ptr } %t374, ptr %l198
  br label %bb114
bb114:
  %t375 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t375, 0
  %t377 = extractvalue { i64, ptr } %t375, 1
  %t378 = mul i64 %t376, 1
  %t379 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t378)
  call void @llvm.memcpy.p0.p0.i64(ptr %t379, ptr %t377, i64 %t378, i1 false)
  %t380 = insertvalue { i64, ptr } undef, i64 %t376, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t379, 1
  %t383 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceOutlivesArg(ptr %s13, ptr %s13, { i64, ptr } %t381)
  store %"compiler/diagmsg:Msg" %t383, ptr %l200
  br label %bb115
bb115:
  %t384 = load ptr, ptr %l186, !tbaa !29
  %t385 = load %"compiler/source:Span", ptr %l192
  %t386 = load %"compiler/diagmsg:Msg", ptr %l200
  %t387 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s13, ptr %t384, %"compiler/source:Span" %t385, %"compiler/diagmsg:Msg" %t386)
  store i64 %t387, ptr %l201
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s13)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb118:
  %t389 = load i64, ptr %l12, !tbaa !24
  %t391 = add i64 %t389, 1
  store i64 %t391, ptr %l12, !tbaa !24
  br label %bb67
bb119:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeAll(ptr %v0, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l30 = alloca i1
  %l33 = alloca i64
  %l36 = alloca i64
  %l39 = alloca ptr
  %l83 = alloca i64
  %l87 = alloca i64
  %l90 = alloca i64
  %l109 = alloca ptr
  %l113 = alloca ptr
  %l114 = alloca %"compiler/typed:Plan"
  %l116 = alloca ptr
  %l117 = alloca %"compiler/scope:summary"
  %l125 = alloca i64
  %l129 = alloca i64
  %l132 = alloca i64
  %l151 = alloca i64
  %l154 = alloca i64
  %l156 = alloca i64
  %l161 = alloca i64
  %l164 = alloca i64
  %l165 = alloca i64
  %l169 = alloca i64
  %l170 = alloca i64
  %l179 = alloca i64
  %l182 = alloca i64
  %l200 = alloca i64
  %l202 = alloca ptr
  %l206 = alloca i64
  %l209 = alloca i64
  %l215 = alloca ptr
  %l216 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l220 = alloca ptr
  %l224 = alloca ptr
  %l227 = alloca ptr
  %l231 = alloca ptr
  %l238 = alloca ptr
  %l239 = alloca i64
  %l240 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l245 = alloca ptr
  %l254 = alloca ptr
  %l255 = alloca i64
  %l257 = alloca i64
  %l259 = alloca i64
  %l260 = alloca i64
  %l264 = alloca ptr
  %l266 = alloca { i64, [2 x i64] }
  %l270 = alloca ptr
  %l273 = alloca i64
  %l276 = alloca { i64, ptr }
  %l278 = alloca { i64, ptr }
  %l283 = alloca ptr
  %l285 = alloca i64
  %l288 = alloca i32
  %l292 = alloca ptr
  %l296 = alloca ptr
  %l302 = alloca i64
  %l304 = alloca i64
  %l309 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l312 = alloca i1
  %s6 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.builder
  %s14room = alloca [64 x i8], align 8
  %t174 = alloca %"compiler/typed:Plan", align 8
  %t177 = alloca %"compiler/typed:Plan", align 8
  %t181 = alloca %"compiler/scope:summary", align 8
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 243
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 249
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H43e0789510fdd6e46eb40242e8ebac44(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l33
  br label %bb3
bb2:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 24
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l36
  br label %bb4
bb4:
  %t16 = load i64, ptr %l33, !tbaa !24
  %t17 = load i64, ptr %l36, !tbaa !24
  %t18 = icmp eq i64 %t16, %t17
  store i1 %t18, ptr %l30, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l30, !tbaa !21
  store i1 %t20, ptr %l2, !tbaa !21
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 227
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l39, !tbaa !29
  %t25 = load ptr, ptr %l39, !tbaa !29
  %t26 = getelementptr %"compiler/scope:twinTab", ptr %t25, i32 0, i32 9
  %t27 = load i64, ptr %t26, !tbaa !24
  %t29 = add i64 %t27, 1
  %t31 = load ptr, ptr %l39, !tbaa !29
  %t32 = getelementptr %"compiler/scope:twinTab", ptr %t31, i32 0, i32 9
  store i64 %t29, ptr %t32, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eClear_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t35)
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hb3d964ef0eb61dc0aac0e28cb3eb3e8e(ptr %v0, ptr %t39)
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t43)
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %t45, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eClear_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %t47)
  br label %bb9
bb9:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 117
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H29200dc1bd0d45eeb387753ed6b896d3(ptr %v0, ptr %t51)
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 118
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H29200dc1bd0d45eeb387753ed6b896d3(ptr %v0, ptr %t55)
  br label %bb11
bb11:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 119
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H36d0fbd0f5d2507a31346de6cb3a1ecc(ptr %v0, ptr %t59)
  br label %bb12
bb12:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/scope:Scoper", ptr %t61, i32 0, i32 51
  store i64 -1, ptr %t63, !tbaa !24
  %t64 = load i1, ptr %l2, !tbaa !21
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 149
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc04321ec8f7b4032ca78905f7b4ad50d(ptr %v0, ptr %t70)
  br label %bb15
bb14:
  br label %bb26
bb15:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 150
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc04321ec8f7b4032ca78905f7b4ad50d(ptr %v0, ptr %t74)
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/scope:Scoper", ptr %t76, i32 0, i32 151
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H28d9ab5e291734bc3f5dada0ed141e4b(ptr %v0, ptr %t78)
  br label %bb17
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %t80, i32 0, i32 152
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc04321ec8f7b4032ca78905f7b4ad50d(ptr %v0, ptr %t82)
  br label %bb18
bb18:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/scope:Scoper", ptr %t84, i32 0, i32 155
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H28d9ab5e291734bc3f5dada0ed141e4b(ptr %v0, ptr %t86)
  br label %bb19
bb19:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/scope:Scoper", ptr %t88, i32 0, i32 156
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H28d9ab5e291734bc3f5dada0ed141e4b(ptr %v0, ptr %t90)
  br label %bb20
bb20:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/scope:Scoper", ptr %t92, i32 0, i32 216
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0e60dbfe6a2fd08e5866d9c9948f525a(ptr %v0, ptr %t94)
  br label %bb21
bb21:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t96, i32 0, i32 171
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc04321ec8f7b4032ca78905f7b4ad50d(ptr %v0, ptr %t98)
  br label %bb22
bb22:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t100, i32 0, i32 170
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1843ba46fd3fd0c25c7605a67c4ed5a8(ptr %v0, ptr %t102)
  br label %bb23
bb23:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %t104, i32 0, i32 177
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H28d9ab5e291734bc3f5dada0ed141e4b(ptr %v0, ptr %t106)
  br label %bb24
bb24:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/scope:Scoper", ptr %t108, i32 0, i32 249
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H62ce913989fc72267aa9da7aaa7454ed(ptr %v0, ptr %t110)
  br label %bb25
bb25:
  br label %bb26
bb26:
  store i64 0, ptr %l3, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t112, i32 0, i32 1
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t114)
  store i64 %t116, ptr %l83
  br label %bb27
bb27:
  %t117 = load i64, ptr %l83, !tbaa !24
  store i64 %t117, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t118 = load i64, ptr %l4, !tbaa !24
  %t119 = load i64, ptr %l3, !tbaa !24
  %t122 = icmp sgt i64 %t118, %t119
  br i1 %t122, label %bb28, label %bb29
bb28:
  %t124 = load i64, ptr %l5, !tbaa !24
  %t126 = icmp sgt i64 %t124, 0
  br i1 %t126, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb33
bb30:
  %t128 = load i64, ptr %l4, !tbaa !24
  %t129 = load i64, ptr %l3, !tbaa !24
  %t132 = sub i64 %t128, %t129
  %t133 = load i64, ptr %l5, !tbaa !24
  %t136 = add i64 %t132, %t133
  %t138 = sub i64 %t136, 1
  %t139 = load i64, ptr %l5, !tbaa !24
  %t142 = sdiv i64 %t138, %t139
  store i64 %t142, ptr %l90, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb32
bb32:
  %t144 = load i64, ptr %l90, !tbaa !24
  store i64 %t144, ptr %l87, !tbaa !24
  br label %bb33
bb33:
  %t145 = load i64, ptr %l87, !tbaa !24
  store i64 %t145, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb34
bb34:
  %t146 = load i64, ptr %l7, !tbaa !24
  %t147 = load i64, ptr %l6, !tbaa !24
  %t150 = icmp slt i64 %t146, %t147
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb35, label %bb36
bb35:
  br label %bb45
bb36:
  br label %bb37
bb37:
  %t154 = load i64, ptr %l3, !tbaa !24
  %t155 = load i64, ptr %l7, !tbaa !24
  %t156 = load i64, ptr %l5, !tbaa !24
  %t159 = mul i64 %t155, %t156
  %t162 = add i64 %t154, %t159
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/scope:Scoper", ptr %t164, i32 0, i32 2
  store ptr %t166, ptr %l109, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/scope:Scoper", ptr %t167, i32 0, i32 1
  %t173 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t169, i64 %t162)
  store ptr %t173, ptr %l113
  br label %bb38
bb38:
  %t175 = load ptr, ptr %l113, !tbaa !29
  call void @compiler_2ftyped_2ePlan_2eNew(ptr %t174, ptr %v0, ptr %v0, ptr %t175)
  call void @llvm.memmove.p0.p0.i64(ptr %l114, ptr %t174, i64 536, i1 false)
  br label %bb39
bb39:
  %t176 = load ptr, ptr %l109, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t177, ptr %l114, i64 536, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ePush_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t176, ptr %t177)
  br label %bb40
bb40:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/scope:Scoper", ptr %t178, i32 0, i32 6
  store ptr %t180, ptr %l116, !tbaa !29
  call void @compiler_2fscope_3asummary_2ector(ptr %t181, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l117, ptr %t181, i64 624, i1 false)
  br label %bb41
bb41:
  %t182 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 624, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t182, ptr %l117, i64 624, i1 false)
  %t183 = load ptr, ptr %l116, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H6c9b3c63d1bd8a9585cb935569d90c26(ptr %v0, ptr %v0, ptr %t183, ptr %t182)
  br label %bb42
bb42:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/scope:Scoper", ptr %t185, i32 0, i32 12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t187, i1 false)
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t189 = load i64, ptr %l7, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l7, !tbaa !24
  br label %bb34
bb45:
  store i64 0, ptr %l9, !tbaa !24
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/scope:Scoper", ptr %t193, i32 0, i32 24
  %t197 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t195)
  store i64 %t197, ptr %l125
  br label %bb46
bb46:
  %t198 = load i64, ptr %l125, !tbaa !24
  store i64 %t198, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t199 = load i64, ptr %l10, !tbaa !24
  %t200 = load i64, ptr %l9, !tbaa !24
  %t203 = icmp sgt i64 %t199, %t200
  br i1 %t203, label %bb47, label %bb48
bb47:
  %t205 = load i64, ptr %l11, !tbaa !24
  %t207 = icmp sgt i64 %t205, 0
  br i1 %t207, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l129, !tbaa !24
  br label %bb52
bb49:
  %t209 = load i64, ptr %l10, !tbaa !24
  %t210 = load i64, ptr %l9, !tbaa !24
  %t213 = sub i64 %t209, %t210
  %t214 = load i64, ptr %l11, !tbaa !24
  %t217 = add i64 %t213, %t214
  %t219 = sub i64 %t217, 1
  %t220 = load i64, ptr %l11, !tbaa !24
  %t223 = sdiv i64 %t219, %t220
  store i64 %t223, ptr %l132, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb51
bb51:
  %t225 = load i64, ptr %l132, !tbaa !24
  store i64 %t225, ptr %l129, !tbaa !24
  br label %bb52
bb52:
  %t226 = load i64, ptr %l129, !tbaa !24
  store i64 %t226, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb53
bb53:
  store %olang.scope zeroinitializer, ptr %s6
  %t227 = load i64, ptr %l13, !tbaa !24
  %t228 = load i64, ptr %l12, !tbaa !24
  %t231 = icmp slt i64 %t227, %t228
  %t233 = xor i1 %t231, true
  br i1 %t233, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s6)
  br label %bb145
bb55:
  br label %bb56
bb56:
  %t235 = load i64, ptr %l9, !tbaa !24
  %t236 = load i64, ptr %l13, !tbaa !24
  %t237 = load i64, ptr %l11, !tbaa !24
  %t240 = mul i64 %t236, %t237
  %t243 = add i64 %t235, %t240
  store i64 %t243, ptr %l14, !tbaa !24
  %t245 = load i64, ptr %l14, !tbaa !24
  %t247 = add i64 %t245, 1
  store i64 %t247, ptr %l151, !tbaa !24
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %t248, i32 0, i32 24
  %t252 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t250)
  store i64 %t252, ptr %l154
  br label %bb57
bb57:
  %t253 = load i64, ptr %l151, !tbaa !24
  %t254 = load i64, ptr %l154, !tbaa !24
  %t255 = icmp slt i64 %t253, %t254
  br i1 %t255, label %bb58, label %bb59
bb58:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/scope:Scoper", ptr %t257, i32 0, i32 24
  %t260 = load i64, ptr %l14, !tbaa !24
  %t262 = add i64 %t260, 1
  %t265 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t259, i64 %t262)
  store i64 %t265, ptr %l161
  br label %bb60
bb59:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/scope:Scoper", ptr %t266, i32 0, i32 25
  %t270 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t268)
  store i64 %t270, ptr %l164
  br label %bb61
bb60:
  %t271 = load i64, ptr %l161, !tbaa !24
  store i64 %t271, ptr %l156, !tbaa !24
  br label %bb62
bb61:
  %t272 = load i64, ptr %l164, !tbaa !24
  store i64 %t272, ptr %l156, !tbaa !24
  br label %bb62
bb62:
  %t273 = load i64, ptr %l156, !tbaa !24
  store i64 %t273, ptr %l165, !tbaa !24
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/scope:Scoper", ptr %t275, i32 0, i32 24
  %t278 = load i64, ptr %l14, !tbaa !24
  %t281 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t277, i64 %t278)
  store i64 %t281, ptr %l169
  br label %bb63
bb63:
  %t282 = load i64, ptr %l165, !tbaa !24
  %t283 = load i64, ptr %l169, !tbaa !24
  %t284 = sub i64 %t282, %t283
  store i64 %t284, ptr %l170, !tbaa !24
  %t285 = load i64, ptr %l170, !tbaa !24
  %t286 = icmp sge i64 %t285, 0
  br i1 %t286, label %bb64, label %bb65
bb64:
  %t288 = load i64, ptr %l170, !tbaa !24
  %t289 = icmp sle i64 %t288, 1152921504606846975
  br i1 %t289, label %bb66, label %bb67
bb65:
  call void @__olang_check_failed(ptr @olang_loc_9cca7b999499be9f_376b703cb8c12c3b)
  unreachable
bb66:
  %t291 = load i64, ptr %l170, !tbaa !24
  %t292 = mul i64 %t291, 8
  %t293 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t292)
  %t294 = insertvalue { i64, ptr } undef, i64 %t291, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  store { i64, ptr } %t295, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t297 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t297, 0
  store i64 %t299, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t301 = load i64, ptr %l18, !tbaa !24
  %t302 = load i64, ptr %l17, !tbaa !24
  %t305 = icmp sgt i64 %t301, %t302
  br i1 %t305, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_9cca7b999499be9f_376b703cb8c12c3b)
  unreachable
bb68:
  %t307 = load i64, ptr %l19, !tbaa !24
  %t309 = icmp sgt i64 %t307, 0
  br i1 %t309, label %bb70, label %bb71
bb69:
  store i64 0, ptr %l179, !tbaa !24
  br label %bb73
bb70:
  %t311 = load i64, ptr %l18, !tbaa !24
  %t312 = load i64, ptr %l17, !tbaa !24
  %t315 = sub i64 %t311, %t312
  %t316 = load i64, ptr %l19, !tbaa !24
  %t319 = add i64 %t315, %t316
  %t321 = sub i64 %t319, 1
  %t322 = load i64, ptr %l19, !tbaa !24
  %t325 = sdiv i64 %t321, %t322
  store i64 %t325, ptr %l182, !tbaa !24
  br label %bb72
bb71:
  store i64 0, ptr %l182, !tbaa !24
  br label %bb72
bb72:
  %t327 = load i64, ptr %l182, !tbaa !24
  store i64 %t327, ptr %l179, !tbaa !24
  br label %bb73
bb73:
  %t328 = load i64, ptr %l179, !tbaa !24
  store i64 %t328, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb74
bb74:
  %t329 = load i64, ptr %l21, !tbaa !24
  %t330 = load i64, ptr %l20, !tbaa !24
  %t333 = icmp slt i64 %t329, %t330
  %t335 = xor i1 %t333, true
  br i1 %t335, label %bb75, label %bb76
bb75:
  br label %bb81
bb76:
  br label %bb77
bb77:
  %t337 = load i64, ptr %l17, !tbaa !24
  %t338 = load i64, ptr %l21, !tbaa !24
  %t339 = load i64, ptr %l19, !tbaa !24
  %t342 = mul i64 %t338, %t339
  %t345 = add i64 %t337, %t342
  store i64 %t345, ptr %l22, !tbaa !24
  %t347 = load i64, ptr %l22, !tbaa !24
  store i64 %t347, ptr %l200, !tbaa !24
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/scope:Scoper", ptr %t348, i32 0, i32 25
  store ptr %t350, ptr %l202, !tbaa !29
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t353 = getelementptr %"compiler/scope:Scoper", ptr %t351, i32 0, i32 24
  %t354 = load i64, ptr %l14, !tbaa !24
  %t357 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t353, i64 %t354)
  store i64 %t357, ptr %l206
  br label %bb78
bb78:
  %t358 = load i64, ptr %l22, !tbaa !24
  %t359 = load i64, ptr %l206, !tbaa !24
  %t361 = add i64 %t359, %t358
  %t362 = load ptr, ptr %l202, !tbaa !29
  %t364 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t362, i64 %t361)
  store i64 %t364, ptr %l209
  br label %bb79
bb79:
  %t365 = load i64, ptr %l209, !tbaa !24
  %t366 = load i64, ptr %l200, !tbaa !24
  %t367 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t368 = load ptr, ptr %t367, !tbaa !27
  %t369 = getelementptr i64, ptr %t368, i64 %t366
  store i64 %t365, ptr %t369, !tbaa !34
  br label %bb80
bb80:
  %t370 = load i64, ptr %l21, !tbaa !24
  %t372 = add i64 %t370, 1
  store i64 %t372, ptr %l21, !tbaa !24
  br label %bb74
bb81:
  %t374 = load i1, ptr %l2, !tbaa !21
  %t376 = xor i1 %t374, true
  br i1 %t376, label %bb82, label %bb83
bb82:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = getelementptr %"compiler/scope:Scoper", ptr %t378, i32 0, i32 249
  store ptr %t380, ptr %l215, !tbaa !29
  %t381 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t381, ptr %l216
  br label %bb84
bb83:
  br label %bb89
bb84:
  %t382 = load ptr, ptr %l215, !tbaa !29
  %t383 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l216
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Ha27721164864093d8065d46fbe969218(ptr %v0, ptr %v0, ptr %t382, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383)
  br label %bb85
bb85:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/scope:Scoper", ptr %t384, i32 0, i32 249
  %t387 = load i64, ptr %l14, !tbaa !24
  %t390 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H1cf5fc557ad2be946465a784b28afba9(ptr %v0, ptr %v0, ptr %t386, i64 %t387)
  store ptr %t390, ptr %l220
  br label %bb86
bb86:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t393 = load i1, ptr %l1, !tbaa !21
  %t397 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeComp(ptr %v0, ptr %s6, ptr %v0, ptr %t391, { i64, ptr } %t392, i1 %t393)
  store ptr %t397, ptr %l224
  br label %bb87
bb87:
  %t398 = load ptr, ptr %l220, !tbaa !29
  %t399 = load ptr, ptr %l224, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_Hf6320a2822fca13d1c1aca71b9a494ca(ptr %v0, ptr %v0, ptr %t398, ptr %t399)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s6)
  br label %bb144
bb89:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load i64, ptr %l14, !tbaa !24
  %t404 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakeable(ptr %v0, ptr %v0, ptr %t400, i64 %t401)
  store ptr %t404, ptr %l227
  br label %bb90
bb90:
  %t405 = load ptr, ptr %l227, !tbaa !29
  store ptr %t405, ptr %l23, !tbaa !29
  %t406 = load ptr, ptr %l23, !tbaa !29
  %t408 = icmp eq ptr %t406, null
  %t410 = xor i1 %t408, true
  br i1 %t410, label %bb91, label %bb92
bb91:
  %t412 = load ptr, ptr %l0, !tbaa !29
  store ptr %t412, ptr %l231, !tbaa !29
  %t413 = load ptr, ptr %l231, !tbaa !29
  %t414 = getelementptr %"compiler/scope:Scoper", ptr %t413, i32 0, i32 248
  %t415 = load i64, ptr %t414, !tbaa !24
  %t417 = add i64 %t415, 1
  %t419 = load ptr, ptr %l231, !tbaa !29
  %t420 = getelementptr %"compiler/scope:Scoper", ptr %t419, i32 0, i32 248
  store i64 %t417, ptr %t420, !tbaa !24
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = getelementptr %"compiler/scope:Scoper", ptr %t421, i32 0, i32 246
  %t424 = load i1, ptr %t423, !tbaa !21
  br i1 %t424, label %bb93, label %bb94
bb92:
  br label %bb100
bb93:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropLifts(ptr %v0, ptr %s6, ptr %t426, { i64, ptr } %t427)
  br label %bb95
bb94:
  br label %bb98
bb95:
  %t430 = load ptr, ptr %l0, !tbaa !29
  store ptr %t430, ptr %l238, !tbaa !29
  %t431 = load i64, ptr %l14, !tbaa !24
  store i64 %t431, ptr %l239, !tbaa !24
  %t432 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t432, ptr %l240, !tbaa !27
  %t433 = load ptr, ptr %l23, !tbaa !29
  store ptr %t433, ptr %l241, !tbaa !29
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t435 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t436 = load i1, ptr %l1, !tbaa !21
  %t440 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeComp(ptr %v0, ptr %s6, ptr %v0, ptr %t434, { i64, ptr } %t435, i1 %t436)
  store ptr %t440, ptr %l245
  br label %bb96
bb96:
  %t441 = load ptr, ptr %l238, !tbaa !29
  %t442 = load i64, ptr %l239, !tbaa !24
  %t443 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t444 = load ptr, ptr %l241, !tbaa !29
  %t445 = load ptr, ptr %l245, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echeckReuse(ptr %v0, ptr %s6, ptr %v0, ptr %v0, ptr %t441, i64 %t442, { i64, ptr } %t443, ptr %t444, ptr %t445)
  br label %bb97
bb97:
  br label %bb98
bb98:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = load ptr, ptr %l23, !tbaa !29
  %t448 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eretake(ptr %v0, ptr %v0, ptr %s6, ptr %t446, ptr %t447, { i64, ptr } %t448)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s6)
  br label %bb144
bb100:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropLifts(ptr %v0, ptr %s6, ptr %t452, { i64, ptr } %t453)
  br label %bb101
bb101:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/scope:Scoper", ptr %t456, i32 0, i32 226
  %t459 = load i1, ptr %t458, !tbaa !21
  br i1 %t459, label %bb102, label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s13
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t463 = getelementptr %"compiler/scope:Scoper", ptr %t461, i32 0, i32 256
  store ptr %t463, ptr %l254, !tbaa !29
  %t464 = ptrtoint ptr %v0 to i64
  store i64 %t464, ptr %l255, !tbaa !24
  %t465 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t465, label %bb104, label %bb105
bb103:
  br label %bb112
bb104:
  %t467 = call ptr @__olang_region_make(ptr %v0)
  %t468 = ptrtoint ptr %t467 to i64
  store i64 %t468, ptr %l255, !tbaa !24
  br label %bb105
bb105:
  %t469 = load i64, ptr %l14, !tbaa !24
  store i64 %t469, ptr %l257, !tbaa !24
  %t470 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t472 = extractvalue { i64, ptr } %t470, 0
  store i64 %t472, ptr %l259, !tbaa !24
  %t473 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !27
  %t475 = getelementptr i64, ptr %t474, i64 0
  %t476 = load i64, ptr %t475, !tbaa !34
  store i64 %t476, ptr %l260, !tbaa !24
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/scope:Scoper", ptr %t477, i32 0, i32 1
  %t480 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t481 = load ptr, ptr %t480, !tbaa !27
  %t482 = getelementptr i64, ptr %t481, i64 0
  %t483 = load i64, ptr %t482, !tbaa !34
  %t486 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t479, i64 %t483)
  store ptr %t486, ptr %l264
  br label %bb106
bb106:
  %t487 = load ptr, ptr %l264, !tbaa !29
  %t489 = getelementptr %"compiler/typed:Body", ptr %t487, i32 0, i32 1
  %t490 = load { i64, [2 x i64] }, ptr %t489
  store { i64, [2 x i64] } %t490, ptr %l266
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t493 = getelementptr %"compiler/scope:Scoper", ptr %t491, i32 0, i32 1
  %t494 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t495 = load ptr, ptr %t494, !tbaa !27
  %t496 = getelementptr i64, ptr %t495, i64 0
  %t497 = load i64, ptr %t496, !tbaa !34
  %t500 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t493, i64 %t497)
  store ptr %t500, ptr %l270
  br label %bb107
bb107:
  %t501 = load ptr, ptr %l270, !tbaa !29
  %t503 = getelementptr %"compiler/typed:Body", ptr %t501, i32 0, i32 9
  %t505 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eLen_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t503)
  store i64 %t505, ptr %l273
  br label %bb108
bb108:
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t507 = load i64, ptr %l14, !tbaa !24
  %t510 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhyNot(ptr %v0, ptr %s13, ptr %t506, i64 %t507)
  store { i64, ptr } %t510, ptr %l276
  br label %bb109
bb109:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s14
  store ptr %s14room, ptr %s14
  %t511 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t512 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t511, i64 %t512)
  %t513 = load i64, ptr %l257, !tbaa !24
  %t514 = call ptr @__olang_sb_room(ptr %s14, i64 24)
  %t515 = call i64 @__olang_fmt_i64(ptr %t514, i64 %t513)
  call void @__olang_sb_add(ptr %s14, i64 %t515)
  %t516 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t517 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t516, i64 %t517)
  %t518 = load i64, ptr %l259, !tbaa !24
  %t519 = call ptr @__olang_sb_room(ptr %s14, i64 24)
  %t520 = call i64 @__olang_fmt_i64(ptr %t519, i64 %t518)
  call void @__olang_sb_add(ptr %s14, i64 %t520)
  %t521 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t522 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t521, i64 %t522)
  %t523 = load i64, ptr %l260, !tbaa !24
  %t524 = call ptr @__olang_sb_room(ptr %s14, i64 24)
  %t525 = call i64 @__olang_fmt_i64(ptr %t524, i64 %t523)
  call void @__olang_sb_add(ptr %s14, i64 %t525)
  %t526 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t527 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t526, i64 %t527)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aBodyOf(ptr %s14, ptr %l266, i64 0)
  br label %bb110
bb110:
  %t529 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t530 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t529, i64 %t530)
  %t531 = load i64, ptr %l273, !tbaa !24
  %t532 = call ptr @__olang_sb_room(ptr %s14, i64 24)
  %t533 = call i64 @__olang_fmt_i64(ptr %t532, i64 %t531)
  call void @__olang_sb_add(ptr %s14, i64 %t533)
  %t534 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t535 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t534, i64 %t535)
  %t536 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t536, 1
  %t538 = extractvalue { i64, ptr } %t536, 0
  call void @__olang_sb_put(ptr %s14, ptr %t537, i64 %t538)
  %t539 = load ptr, ptr %s14
  %t540 = getelementptr %olang.builder, ptr %s14, i32 0, i32 1
  %t541 = load i64, ptr %t540
  %t542 = load i64, ptr %l255
  %t543 = inttoptr i64 %t542 to ptr
  %t544 = call ptr @__olang_scope_alloc(ptr %t543, i64 %t541)
  call void @olang_textcopy(ptr %t544, ptr %t539, i64 %t541)
  %t545 = insertvalue { i64, ptr } undef, i64 %t541, 0
  %t546 = insertvalue { i64, ptr } %t545, ptr %t544, 1
  store { i64, ptr } %t546, ptr %l278, !tbaa !27
  %t547 = getelementptr %olang.builder, ptr %s14, i32 0, i32 3
  %t548 = load ptr, ptr %t547
  %t549 = icmp ne ptr %t548, null
  br i1 %t549, label %sbgrew.550, label %sbdone.551
sbgrew.550:
  call void @__olang_sb_done(ptr %s14)
  br label %sbdone.551
sbdone.551:
  %t552 = load { i64, ptr }, ptr %l278, !tbaa !27
  %t553 = load i64, ptr %l255
  %t554 = inttoptr i64 %t553 to ptr
  %t555 = extractvalue { i64, ptr } %t552, 0
  %t556 = extractvalue { i64, ptr } %t552, 1
  %t557 = mul i64 %t555, 1
  %t558 = call ptr @__olang_scope_alloc(ptr %t554, i64 %t557)
  call void @llvm.memcpy.p0.p0.i64(ptr %t558, ptr %t556, i64 %t557, i1 false)
  %t559 = insertvalue { i64, ptr } undef, i64 %t555, 0
  %t560 = insertvalue { i64, ptr } %t559, ptr %t558, 1
  %t561 = load ptr, ptr %l254, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t561, { i64, ptr } %t560)
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s13)
  br label %bb112
bb112:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t565 = getelementptr %"compiler/scope:Scoper", ptr %t563, i32 0, i32 249
  %t566 = load i64, ptr %l14, !tbaa !24
  %t569 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H1cf5fc557ad2be946465a784b28afba9(ptr %v0, ptr %v0, ptr %t565, i64 %t566)
  store ptr %t569, ptr %l283
  br label %bb113
bb113:
  %t570 = load ptr, ptr %l283, !tbaa !29
  store ptr %t570, ptr %l24, !tbaa !29
  %t571 = load ptr, ptr %l24, !tbaa !29
  %t573 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v0, ptr %t571)
  store i64 %t573, ptr %l285
  br label %bb114
bb114:
  %t574 = load i64, ptr %l285, !tbaa !24
  %t575 = icmp sge i64 %t574, 4
  br i1 %t575, label %bb115, label %bb116
bb115:
  %t577 = load ptr, ptr %l24, !tbaa !29
  %t579 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_Hde01c20c473402e23cc757f365f90f80(ptr %v0, ptr %t577, i64 0)
  store i32 %t579, ptr %l288
  %t580 = icmp ne i32 %t579, 0
  br i1 %t580, label %bb118, label %ok.581, !prof !99
ok.581:
  br label %bb117
bb116:
  br label %bb126
bb117:
  br label %bb125
bb118:
  %t582 = load i32, ptr %l288, !tbaa !23
  %t583 = icmp eq i32 %t582, 65536
  br i1 %t583, label %bb119, label %bb120
bb119:
  call void @__olang_bang_failed_plain(ptr @olang_loc_20e79843cec2bd9a_647d68dc60a398b6)
  unreachable
bb120:
  %t585 = load i32, ptr %l288, !tbaa !23
  %t586 = icmp eq i32 %t585, 65537
  br i1 %t586, label %bb121, label %bb122
bb121:
  call void @__olang_bang_failed_plain(ptr @olang_loc_144d04cb4af239f1_4707c2a62d7d857d)
  unreachable
bb122:
  %t588 = load i32, ptr %l288, !tbaa !23
  %t589 = icmp eq i32 %t588, 65538
  br i1 %t589, label %bb123, label %bb124
bb123:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c71a24a54e9b1fff_65ed36515b990e5b)
  unreachable
bb124:
  call void @__olang_bang_failed_plain(ptr @olang_loc_4bbd8aa524243e6b_788ee25fc6ea0e8f)
  unreachable
bb125:
  br label %bb126
bb126:
  %t591 = load ptr, ptr %l24, !tbaa !29
  store ptr %t591, ptr %l292, !tbaa !29
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t593 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t594 = load i1, ptr %l1, !tbaa !21
  %t598 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeComp(ptr %v0, ptr %s6, ptr %v0, ptr %t592, { i64, ptr } %t593, i1 %t594)
  store ptr %t598, ptr %l296
  br label %bb127
bb127:
  %t599 = load ptr, ptr %l292, !tbaa !29
  %t600 = load ptr, ptr %l296, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_Hf6320a2822fca13d1c1aca71b9a494ca(ptr %v0, ptr %v0, ptr %t599, ptr %t600)
  br label %bb128
bb128:
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t603 = getelementptr %"compiler/scope:Scoper", ptr %t601, i32 0, i32 217
  %t604 = load i1, ptr %t603, !tbaa !21
  %t606 = xor i1 %t604, true
  br i1 %t606, label %bb129, label %bb130
bb129:
  call void @__olang_scope_close(ptr %s6)
  br label %bb144
bb130:
  br label %bb131
bb131:
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t610 = getelementptr %"compiler/scope:Scoper", ptr %t608, i32 0, i32 253
  store ptr %t610, ptr %l25, !tbaa !29
  store i64 0, ptr %l26, !tbaa !24
  br label %bb132
bb132:
  %t612 = load i64, ptr %l26, !tbaa !24
  store i64 %t612, ptr %l302, !tbaa !24
  %t613 = load ptr, ptr %l25, !tbaa !29
  %t615 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %t613)
  store i64 %t615, ptr %l304
  br label %bb133
bb133:
  %t616 = load i64, ptr %l302, !tbaa !24
  %t617 = load i64, ptr %l304, !tbaa !24
  %t618 = icmp slt i64 %t616, %t617
  %t620 = xor i1 %t618, true
  br i1 %t620, label %bb134, label %bb135
bb134:
  br label %bb143
bb135:
  br label %bb136
bb136:
  %t622 = load ptr, ptr %l25, !tbaa !29
  %t623 = load i64, ptr %l26, !tbaa !24
  %t626 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %t622, i64 %t623)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t626, ptr %l309
  br label %bb137
bb137:
  %t627 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l309
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t627, ptr %l27
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t629 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l27, i32 0, i32 0
  %t630 = load i64, ptr %t629, !tbaa !24
  %t633 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDecl(ptr %v0, ptr %t628, i64 %t630)
  store i1 %t633, ptr %l312
  br label %bb138
bb138:
  %t634 = load i1, ptr %l312, !tbaa !21
  br i1 %t634, label %bb139, label %bb140
bb139:
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t637 = getelementptr %"compiler/scope:Scoper", ptr %t635, i32 0, i32 245
  store i1 true, ptr %t637, !tbaa !21
  br label %bb141
bb140:
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t638 = load i64, ptr %l26, !tbaa !24
  %t640 = add i64 %t638, 1
  store i64 %t640, ptr %l26, !tbaa !24
  br label %bb132
bb143:
  call void @__olang_scope_close(ptr %s6)
  br label %bb144
bb144:
  %t642 = load i64, ptr %l13, !tbaa !24
  %t644 = add i64 %t642, 1
  store i64 %t644, ptr %l13, !tbaa !24
  br label %bb53
bb145:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i1
  %l18 = alloca i64
  %l23 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 122
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 122
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l18
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t23 = load i64, ptr %l18, !tbaa !24
  %t24 = icmp sge i64 %t23, 0
  store i1 %t24, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l14, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 122
  %t30 = load i64, ptr %l1, !tbaa !24
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t29, i64 %t30)
  store i64 %t33, ptr %l23
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t34 = load i64, ptr %l23, !tbaa !24
  store i64 %t34, ptr %l1, !tbaa !24
  br label %bb12
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l1, !tbaa !24
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %s0, ptr %t35, i64 %t36)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l26
  br label %bb13
bb13:
  %t41 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41, ptr %l28
  br label %bb14
bb14:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l2
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t44, ptr %l30
  br label %bb15
bb15:
  %t45 = load i64, ptr %l30, !tbaa !24
  %t46 = icmp sgt i64 %t45, 0
  br i1 %t46, label %bb16, label %bb17
bb16:
  store ptr %l2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb18
bb17:
  br label %bb27
bb18:
  %t49 = load i64, ptr %l4, !tbaa !24
  store i64 %t49, ptr %l33, !tbaa !24
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t50)
  store i64 %t52, ptr %l35
  br label %bb19
bb19:
  %t53 = load i64, ptr %l33, !tbaa !24
  %t54 = load i64, ptr %l35, !tbaa !24
  %t55 = icmp slt i64 %t53, %t54
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  br label %bb22
bb22:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t59, i64 %t60)
  store i64 %t63, ptr %l40
  br label %bb23
bb23:
  %t64 = load i64, ptr %l40, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepOne(ptr %v0, ptr %t65, i64 %t64)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t69 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l4, !tbaa !24
  br label %bb18
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepOne(ptr %v0, ptr %t73, i64 %t74)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptAtHome(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/scope:fnRec" %a1, i32 %a2, { i64, [2 x i64] } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:fnRec"
  %l3 = alloca { i64, [2 x i64] }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/scope:rel"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [2 x i64] }
  %l13 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i64
  %l20 = alloca i64
  %l25 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca %"compiler/scope:rel"
  %l41 = alloca i64
  %l44 = alloca i1
  %l45 = alloca i64
  %l48 = alloca i64
  %l50 = alloca i1
  %l51 = alloca i64
  %l53 = alloca i64
  %l55 = alloca i1
  %l59 = alloca { i64, [1 x i64] }
  %l66 = alloca i64
  %l69 = alloca i1
  %l73 = alloca i1
  %l77 = alloca i1
  %l81 = alloca { i64, [2 x i64] }
  %l84 = alloca i1
  %l85 = alloca { i64, [2 x i64] }
  %l87 = alloca { i64, [2 x i64] }
  %l89 = alloca i1
  %l93 = alloca i1
  %l94 = alloca i1
  %l98 = alloca i1
  %l101 = alloca ptr
  %l104 = alloca %"compiler/source:Span"
  %l108 = alloca { i64, ptr }
  %l110 = alloca %"compiler/diagmsg:Msg"
  %l111 = alloca i64
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/scope:fnRec" %a1, ptr %l1
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 2
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb3
bb2:
  %t4 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t5 = load i64, ptr %t4, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  store i1 %t7, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb7
bb5:
  %t10 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l17, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 6
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l20
  br label %bb6
bb6:
  %t17 = load i64, ptr %l17, !tbaa !24
  %t18 = load i64, ptr %l20, !tbaa !24
  %t19 = icmp sge i64 %t17, %t18
  store i1 %t19, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t21 = load i1, ptr %l16, !tbaa !21
  br i1 %t21, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 1
  %t25 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t24, i64 %t26)
  store ptr %t29, ptr %l25
  br label %bb11
bb11:
  %t30 = load ptr, ptr %l25, !tbaa !29
  store ptr %t30, ptr %l5, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 6
  %t34 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  %t38 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t33, i64 %t35)
  store ptr %t38, ptr %l29
  br label %bb12
bb12:
  %t39 = load ptr, ptr %l29, !tbaa !29
  %t41 = getelementptr %"compiler/scope:summary", ptr %t39, i32 0, i32 0
  store ptr %t41, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t43 = load i64, ptr %l7, !tbaa !24
  store i64 %t43, ptr %l32, !tbaa !24
  %t44 = load ptr, ptr %l6, !tbaa !29
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l34
  br label %bb14
bb14:
  %t47 = load i64, ptr %l32, !tbaa !24
  %t48 = load i64, ptr %l34, !tbaa !24
  %t49 = icmp slt i64 %t47, %t48
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb15, label %bb16
bb15:
  br label %bb70
bb16:
  br label %bb17
bb17:
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t53, i64 %t54)
  store %"compiler/scope:rel" %t57, ptr %l39
  br label %bb18
bb18:
  %t58 = load %"compiler/scope:rel", ptr %l39
  store %"compiler/scope:rel" %t58, ptr %l8
  %t59 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 1
  %t60 = load { i64, [2 x i64] }, ptr %t59
  %t62 = call i64 @compiler_2fscope_2evarOf({ i64, [2 x i64] } %t60)
  store i64 %t62, ptr %l41
  br label %bb19
bb19:
  %t63 = load i64, ptr %l41, !tbaa !24
  store i64 %t63, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp slt i64 %t64, 0
  br i1 %t66, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb23
bb21:
  %t68 = load i64, ptr %l9, !tbaa !24
  store i64 %t68, ptr %l45, !tbaa !24
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 6
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l48
  br label %bb22
bb22:
  %t74 = load i64, ptr %l45, !tbaa !24
  %t75 = load i64, ptr %l48, !tbaa !24
  %t76 = icmp sge i64 %t74, %t75
  store i1 %t76, ptr %l44, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l44, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb27
bb25:
  %t79 = load i64, ptr %l9, !tbaa !24
  store i64 %t79, ptr %l51, !tbaa !24
  %t80 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t80)
  store i64 %t82, ptr %l53
  br label %bb26
bb26:
  %t83 = load i64, ptr %l51, !tbaa !24
  %t84 = load i64, ptr %l53, !tbaa !24
  %t85 = icmp sge i64 %t83, %t84
  store i1 %t85, ptr %l50, !tbaa !21
  br label %bb27
bb27:
  %t87 = load i1, ptr %l50, !tbaa !21
  br i1 %t87, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb31
bb29:
  %t88 = load ptr, ptr %l5, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Body", ptr %t88, i32 0, i32 6
  %t91 = load i64, ptr %l9, !tbaa !24
  %t94 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t90, i64 %t91)
  store { i64, [1 x i64] } %t94, ptr %l59
  br label %bb30
bb30:
  %t95 = load { i64, [1 x i64] }, ptr %l59
  %t97 = extractvalue { i64, [1 x i64] } %t95, 0
  %t98 = icmp eq i64 %t97, 4
  %t100 = xor i1 %t98, true
  store i1 %t100, ptr %l55, !tbaa !21
  br label %bb31
bb31:
  %t102 = load i1, ptr %l55, !tbaa !21
  br i1 %t102, label %bb32, label %bb33
bb32:
  br label %bb69
bb33:
  br label %bb34
bb34:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t105 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 0
  %t106 = load { i64, [2 x i64] }, ptr %t105
  %t110 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposOf(ptr %v0, ptr %v0, ptr %t103, ptr %t104, i1 false, { i64, [2 x i64] } %t106)
  store i64 %t110, ptr %l66
  br label %bb35
bb35:
  %t111 = load i64, ptr %l66, !tbaa !24
  store i64 %t111, ptr %l10, !tbaa !24
  %t112 = load i64, ptr %l10, !tbaa !24
  %t114 = icmp slt i64 %t112, 0
  br i1 %t114, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb38
bb37:
  %t116 = load i64, ptr %l10, !tbaa !24
  %t117 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t120 = icmp sge i64 %t116, %t117
  store i1 %t120, ptr %l69, !tbaa !21
  br label %bb38
bb38:
  %t122 = load i1, ptr %l69, !tbaa !21
  br i1 %t122, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb42
bb40:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l10, !tbaa !24
  %t129 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepsAtHome(ptr %v0, ptr %t123, i32 %a2, i64 %t125)
  store i1 %t129, ptr %l77
  br label %bb41
bb41:
  %t130 = load i1, ptr %l77, !tbaa !21
  %t131 = xor i1 %t130, true
  store i1 %t131, ptr %l73, !tbaa !21
  br label %bb42
bb42:
  %t133 = load i1, ptr %l73, !tbaa !21
  br i1 %t133, label %bb43, label %bb44
bb43:
  br label %bb69
bb44:
  br label %bb45
bb45:
  %t134 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t135 = load i64, ptr %l9, !tbaa !24
  %t138 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t134, i64 %t135)
  store { i64, [2 x i64] } %t138, ptr %l81
  br label %bb46
bb46:
  %t139 = load { i64, [2 x i64] }, ptr %l81
  store { i64, [2 x i64] } %t139, ptr %l11
  %t140 = load { i64, [2 x i64] }, ptr %l11
  %t142 = extractvalue { i64, [2 x i64] } %t140, 0
  %t143 = icmp eq i64 %t142, 0
  br i1 %t143, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb50
bb48:
  %t145 = load { i64, [2 x i64] }, ptr %l11
  store { i64, [2 x i64] } %t145, ptr %l85
  %t146 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t146, ptr %l87
  %t149 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l85, ptr %l87)
  store i1 %t149, ptr %l89
  br label %bb49
bb49:
  %t150 = load i1, ptr %l89, !tbaa !21
  store i1 %t150, ptr %l84, !tbaa !21
  br label %bb50
bb50:
  %t151 = load i1, ptr %l84, !tbaa !21
  br i1 %t151, label %bb51, label %bb52
bb51:
  br label %bb69
bb52:
  br label %bb53
bb53:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load { i64, [2 x i64] }, ptr %l11
  %t154 = load { i64, [2 x i64] }, ptr %l3
  %t158 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esameScope(ptr %v0, ptr %t152, { i64, [2 x i64] } %t153, { i64, [2 x i64] } %t154)
  store i1 %t158, ptr %l93
  br label %bb54
bb54:
  %t159 = load i1, ptr %l93, !tbaa !21
  br i1 %t159, label %bb55, label %bb56
bb55:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load { i64, [2 x i64] }, ptr %l3
  %t162 = load { i64, [2 x i64] }, ptr %l11
  %t166 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esameScope(ptr %v0, ptr %t160, { i64, [2 x i64] } %t161, { i64, [2 x i64] } %t162)
  store i1 %t166, ptr %l98
  br label %bb57
bb56:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb58
bb57:
  %t167 = load i1, ptr %l98, !tbaa !21
  store i1 %t167, ptr %l94, !tbaa !21
  br label %bb58
bb58:
  %t168 = load i1, ptr %l94, !tbaa !21
  br i1 %t168, label %bb59, label %bb60
bb59:
  br label %bb69
bb60:
  br label %bb61
bb61:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/scope:Scoper", ptr %t169, i32 0, i32 28
  %t172 = load i1, ptr %t171, !tbaa !21
  br i1 %t172, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s8
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l101, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t179 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v2, ptr %t175, ptr %a4)
  store %"compiler/source:Span" %t179, ptr %l104
  br label %bb64
bb63:
  br label %bb68
bb64:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load ptr, ptr %l5, !tbaa !29
  %t182 = load i64, ptr %l10, !tbaa !24
  %t186 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyParamName(ptr %v0, ptr %v0, ptr %s8, ptr %t180, ptr %t181, i1 false, i64 %t182)
  store { i64, ptr } %t186, ptr %l108
  br label %bb65
bb65:
  %t187 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  %t189 = extractvalue { i64, ptr } %t187, 1
  %t190 = mul i64 %t188, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t190)
  call void @llvm.memcpy.p0.p0.i64(ptr %t191, ptr %t189, i64 %t190, i1 false)
  %t192 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  %t195 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaKeepsOuter(ptr %s8, ptr %s8, { i64, ptr } %t193)
  store %"compiler/diagmsg:Msg" %t195, ptr %l110
  br label %bb66
bb66:
  %t196 = load ptr, ptr %l101, !tbaa !29
  %t197 = load %"compiler/source:Span", ptr %l104
  %t198 = load %"compiler/diagmsg:Msg", ptr %l110
  %t199 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s8, ptr %t196, %"compiler/source:Span" %t197, %"compiler/diagmsg:Msg" %t198)
  store i64 %t199, ptr %l111
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s8)
  br label %bb68
bb68:
  br label %ret
bb69:
  %t200 = load i64, ptr %l7, !tbaa !24
  %t202 = add i64 %t200, 1
  store i64 %t202, ptr %l7, !tbaa !24
  br label %bb13
bb70:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l21 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
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
  %t7 = getelementptr %"compiler/typed:Arm", ptr %t5, i32 0, i32 1
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
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l6, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l6, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Alt", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t30, ptr %t34, i1 true)
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l6, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Alt", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l8, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t55, ptr %l36, !tbaa !27
  %t56 = load i64, ptr %l8, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Bind", ptr %t61, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t63, ptr %t67, i1 false)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l8, !tbaa !24
  br label %bb9
bb15:
  br label %bb16
bb16:
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l4, !tbaa !24
  br label %bb4
bb17:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Arm", ptr %t80, i32 0, i32 2
  %t83 = load ptr, ptr %t82, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t79, ptr %t83, i1 true)
  br label %bb18
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Arm", ptr %t87, i32 0, i32 3
  %t90 = load ptr, ptr %t89, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t86, ptr %t90)
  br label %bb19
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Arm", ptr %t94, i32 0, i32 4
  %t97 = load ptr, ptr %t96, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t93, ptr %t97, i1 %a2)
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandArgPart(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i64 %a5, { i64, [2 x i64] } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l11 = alloca { i64, ptr }
  %l16 = alloca i64
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l27 = alloca { i64, [2 x i64] }
  %l28 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l37 = alloca { i64, [2 x i64] }
  %l39 = alloca i1
  %l42 = alloca ptr
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l51 = alloca { i64, [2 x i64] }
  %l54 = alloca i1
  %l55 = alloca { i64, ptr }
  %l60 = alloca i1
  %l62 = alloca i1
  %l65 = alloca i1
  %l67 = alloca i1
  %l68 = alloca { i64, [2 x i64] }
  %l69 = alloca ptr
  %l71 = alloca { i64, [2 x i64] }
  %l73 = alloca i1
  %l74 = alloca i1
  %l75 = alloca { i64, [2 x i64] }
  %l79 = alloca { i64, [2 x i64] }
  %l80 = alloca i32
  %rv = alloca i64
  %t145 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store i64 %a5, ptr %l5
  store { i64, [2 x i64] } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l11, !tbaa !27
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr ptr, ptr %t8, i64 %t5
  %t10 = load ptr, ptr %t9, !tbaa !39
  store ptr %t10, ptr %l7, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t16 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargPartCall(ptr %v0, ptr %v1, ptr %t12, ptr %t13)
  store i64 %t16, ptr %l16
  br label %bb1
bb1:
  %t17 = load i64, ptr %l16, !tbaa !24
  store i64 %t17, ptr %l8, !tbaa !24
  %t18 = load i64, ptr %l8, !tbaa !24
  %t20 = icmp slt i64 %t18, 0
  br i1 %t20, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb10
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l20, !tbaa !29
  %t23 = load ptr, ptr %l7, !tbaa !29
  store ptr %t23, ptr %l21, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t24, ptr %l22, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i64, ptr %t28, i64 %t25
  %t30 = load i64, ptr %t29, !tbaa !34
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp ne i64 %t30, %t31
  br i1 %t34, label %bb4, label %bb5
bb4:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l28, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Call", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t37, ptr %t41)
  store i64 %t44, ptr %l32
  br label %bb6
bb5:
  %t45 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t45, ptr %l27
  br label %bb8
bb6:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t47, ptr %l33, !tbaa !27
  %t48 = load i64, ptr %l2, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i64, ptr %t51, i64 %t48
  %t53 = load i64, ptr %t52, !tbaa !34
  %t54 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t55 = load ptr, ptr %l28, !tbaa !29
  %t56 = load i64, ptr %l32, !tbaa !24
  %t59 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erequiredBy(ptr %v0, ptr %v3, ptr %t55, i64 %t56, i64 %t53, { i64, ptr } %t54)
  store { i64, [2 x i64] } %t59, ptr %l37
  br label %bb7
bb7:
  %t60 = load { i64, [2 x i64] }, ptr %l37
  store { i64, [2 x i64] } %t60, ptr %l27
  br label %bb8
bb8:
  %t61 = load ptr, ptr %l20, !tbaa !29
  %t62 = load ptr, ptr %l21, !tbaa !29
  %t63 = load { i64, [2 x i64] }, ptr %l27
  %t64 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargPartOK(ptr %v0, ptr %v1, ptr %t61, ptr %t62, { i64, [2 x i64] } %t63)
  store i1 %t64, ptr %l39
  br label %bb9
bb9:
  %t65 = load i1, ptr %l39, !tbaa !21
  %t66 = xor i1 %t65, true
  store i1 %t66, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t68 = load i1, ptr %l19, !tbaa !21
  br i1 %t68, label %bb11, label %bb12
bb11:
  store i64 -1, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l42, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/typed:Call", ptr %t72, i32 0, i32 0
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t78 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t71, ptr %t75)
  store i64 %t78, ptr %l46
  br label %bb14
bb14:
  %t79 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t79, ptr %l47, !tbaa !27
  %t80 = load i64, ptr %l2, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i64, ptr %t83, i64 %t80
  %t85 = load i64, ptr %t84, !tbaa !34
  %t86 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t87 = load ptr, ptr %l42, !tbaa !29
  %t88 = load i64, ptr %l46, !tbaa !24
  %t91 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erequiredBy(ptr %v0, ptr %v3, ptr %t87, i64 %t88, i64 %t85, { i64, ptr } %t86)
  store { i64, [2 x i64] } %t91, ptr %l51
  br label %bb15
bb15:
  %t92 = load { i64, [2 x i64] }, ptr %l51
  store { i64, [2 x i64] } %t92, ptr %l9
  %t93 = load { i64, [2 x i64] }, ptr %l9
  %t95 = extractvalue { i64, [2 x i64] } %t93, 0
  %t96 = icmp eq i64 %t95, 0
  br i1 %t96, label %bb16, label %bb17
bb16:
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t98, ptr %l55, !tbaa !27
  %t99 = load i64, ptr %l2, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i64, ptr %t102, i64 %t99
  %t104 = load i64, ptr %t103, !tbaa !34
  %t105 = load i64, ptr %l5, !tbaa !24
  %t108 = icmp eq i64 %t104, %t105
  store i1 %t108, ptr %l54, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb18
bb18:
  %t110 = load i1, ptr %l54, !tbaa !21
  br i1 %t110, label %bb19, label %bb20
bb19:
  %t111 = load { i64, [2 x i64] }, ptr %l6
  %t113 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t111)
  store i1 %t113, ptr %l62
  br label %bb21
bb20:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb22
bb21:
  %t114 = load i1, ptr %l62, !tbaa !21
  store i1 %t114, ptr %l60, !tbaa !21
  br label %bb22
bb22:
  %t115 = load i1, ptr %l60, !tbaa !21
  br i1 %t115, label %bb23, label %bb24
bb23:
  %t116 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t116, ptr %l9
  br label %bb25
bb24:
  br label %bb25
bb25:
  %t118 = load { i64, [2 x i64] }, ptr %l9
  %t120 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t118)
  store i1 %t120, ptr %l65
  br label %bb26
bb26:
  %t121 = load i1, ptr %l65, !tbaa !21
  %t122 = xor i1 %t121, true
  br i1 %t122, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb31
bb28:
  %t124 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t124, ptr %l68
  store ptr %l68, ptr %l69, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t125)
  store { i64, [2 x i64] } %t127, ptr %l71
  br label %bb29
bb29:
  %t128 = load ptr, ptr %l69, !tbaa !29
  %t130 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %t128, ptr %l71)
  store i1 %t130, ptr %l73
  br label %bb30
bb30:
  %t131 = load i1, ptr %l73, !tbaa !21
  store i1 %t131, ptr %l67, !tbaa !21
  br label %bb31
bb31:
  %t132 = load i1, ptr %l67, !tbaa !21
  br i1 %t132, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb38
bb33:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/scope:Scoper", ptr %t133, i32 0, i32 114
  %t136 = load i64, ptr %l8, !tbaa !24
  %t139 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t135, i64 %t136)
  %t140 = extractvalue { i32, { i64, [2 x i64] } } %t139, 1
  %t141 = extractvalue { i32, { i64, [2 x i64] } } %t139, 0
  store i32 %t141, ptr %l80
  %t142 = icmp ne i32 %t141, 0
  br i1 %t142, label %bb35, label %ok.143, !prof !99
ok.143:
  store { i64, [2 x i64] } %t140, ptr %l79
  br label %bb34
bb34:
  %t144 = load { i64, [2 x i64] }, ptr %l79
  store { i64, [2 x i64] } %t144, ptr %l75
  br label %bb37
bb35:
  br label %bb36
bb36:
  store { i64, [2 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [2 x i64] }, ptr %t145, i32 0, i32 0
  store i64 0, ptr %t146
  %t147 = load { i64, [2 x i64] }, ptr %t145
  store { i64, [2 x i64] } %t147, ptr %l75
  br label %bb37
bb37:
  %t149 = load { i64, [2 x i64] }, ptr %l75
  %t151 = extractvalue { i64, [2 x i64] } %t149, 0
  %t152 = icmp eq i64 %t151, 0
  %t154 = xor i1 %t152, true
  store i1 %t154, ptr %l74, !tbaa !21
  br label %bb38
bb38:
  %t156 = load i1, ptr %l74, !tbaa !21
  br i1 %t156, label %bb39, label %bb40
bb39:
  store i64 -1, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/scope:Scoper", ptr %t158, i32 0, i32 114
  %t161 = load i64, ptr %l8, !tbaa !24
  %t162 = load { i64, [2 x i64] }, ptr %l9
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %t160, i64 %t161, { i64, [2 x i64] } %t162)
  br label %bb42
bb42:
  %t166 = load i64, ptr %l8, !tbaa !24
  store i64 %t166, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftedCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca i1
  %l18 = alloca { i64, [2 x i64] }
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
  store ptr %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t8, ptr %l7
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l7, !tbaa !29
  %t11 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s0, ptr %s0, ptr %t9)
  store ptr %t11, ptr %l9
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l9, !tbaa !29
  store ptr %t12, ptr %l2, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Call", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %t22, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t28 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t19, i64 %t25)
  store { i64, [2 x i64] } %t28, ptr %l18
  br label %bb6
bb5:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb7
bb6:
  %t29 = load { i64, [2 x i64] }, ptr %l18
  %t31 = extractvalue { i64, [2 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 0
  %t34 = xor i1 %t32, true
  store i1 %t34, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load i1, ptr %l13, !tbaa !21
  store i1 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca %"compiler/typed:Local"
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca i1
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i1
  %l56 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca i1
  %l68 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i1
  %l80 = alloca i64
  %l81 = alloca ptr
  %l82 = alloca i1
  %l97 = alloca %"compiler/typed:Local"
  %l98 = alloca ptr
  %l102 = alloca ptr
  %l103 = alloca i32
  %l116 = alloca i64
  %l123 = alloca ptr
  %l124 = alloca i1
  %l125 = alloca ptr
  %l126 = alloca i1
  %l129 = alloca ptr
  %l130 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca i1
  %l145 = alloca ptr
  %l148 = alloca i32
  %l149 = alloca i64
  %l154 = alloca ptr
  %l155 = alloca i1
  %l156 = alloca ptr
  %l157 = alloca i1
  %l162 = alloca i1
  %l165 = alloca i1
  %l167 = alloca i1
  %l176 = alloca i64
  %l179 = alloca i64
  %s7 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t7 = load ptr, ptr %l22, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l22, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 3
  store i1 %t13, ptr %l23, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l23, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t23 = load i64, ptr %l2, !tbaa !24
  %t25 = add i64 %t23, 1
  %t29 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadePlace(ptr %v0, ptr %v1, ptr %t21, ptr %t22, i64 %t25)
  store i64 %t29, ptr %l32
  br label %bb9
bb9:
  %t30 = load i64, ptr %l32, !tbaa !24
  store i64 %t30, ptr %rv
  br label %ret
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t32 = load ptr, ptr %l33, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l33, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 4
  store i1 %t38, ptr %l34, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l34, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Elem", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = add i64 %t51, 1
  %t57 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadePlace(ptr %v0, ptr %v1, ptr %t46, ptr %t50, i64 %t53)
  store i64 %t57, ptr %l44
  br label %bb16
bb16:
  %t58 = load i64, ptr %l44, !tbaa !24
  store i64 %t58, ptr %rv
  br label %ret
bb17:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t60 = load ptr, ptr %l45, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t63 = load ptr, ptr %l45, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 5
  store i1 %t66, ptr %l46, !tbaa !21
  br label %bb19
bb19:
  %t67 = load i1, ptr %l46, !tbaa !21
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l5, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l5, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Payload", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load i64, ptr %l2, !tbaa !24
  %t81 = add i64 %t79, 1
  %t85 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadePlace(ptr %v0, ptr %v1, ptr %t74, ptr %t78, i64 %t81)
  store i64 %t85, ptr %l56
  br label %bb23
bb23:
  %t86 = load i64, ptr %l56, !tbaa !24
  store i64 %t86, ptr %rv
  br label %ret
bb24:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t88 = load ptr, ptr %l57, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb25, label %bb26
bb25:
  %t91 = load ptr, ptr %l57, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 8}
  %t94 = icmp eq i64 %t92, 2
  store i1 %t94, ptr %l58, !tbaa !21
  br label %bb26
bb26:
  %t95 = load i1, ptr %l58, !tbaa !21
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t98, i32 0, i32 2
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l6, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l6, !tbaa !29
  %t105 = load i64, ptr %l2, !tbaa !24
  %t107 = add i64 %t105, 1
  %t111 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %t102, ptr %t103, i64 %t107)
  store i64 %t111, ptr %l68
  br label %bb30
bb30:
  %t112 = load i64, ptr %l68, !tbaa !24
  store i64 %t112, ptr %rv
  br label %ret
bb31:
  %t113 = load ptr, ptr %l1, !tbaa !29
  store ptr %t113, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t114 = load ptr, ptr %l69, !tbaa !29
  %t115 = icmp ne ptr %t114, null
  br i1 %t115, label %bb32, label %bb33
bb32:
  %t117 = load ptr, ptr %l69, !tbaa !29
  %t118 = load i64, ptr %t117, !range !{i64 0, i64 8}
  %t120 = icmp eq i64 %t118, 6
  store i1 %t120, ptr %l70, !tbaa !21
  br label %bb33
bb33:
  %t121 = load i1, ptr %l70, !tbaa !21
  br i1 %t121, label %bb34, label %bb35
bb34:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr { i64, [4 x i64] }, ptr %t122, i32 0, i32 1
  %t125 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t124, i32 0, i32 2
  %t126 = load ptr, ptr %t125
  store ptr %t126, ptr %l7, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l7, !tbaa !29
  %t131 = load i64, ptr %l2, !tbaa !24
  %t133 = add i64 %t131, 1
  %t137 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %t128, ptr %t129, i64 %t133)
  store i64 %t137, ptr %l80
  br label %bb37
bb37:
  %t138 = load i64, ptr %l80, !tbaa !24
  store i64 %t138, ptr %rv
  br label %ret
bb38:
  %t139 = load ptr, ptr %l1, !tbaa !29
  store ptr %t139, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t140 = load ptr, ptr %l81, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb39, label %bb40
bb39:
  %t143 = load ptr, ptr %l81, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 8}
  %t146 = icmp eq i64 %t144, 0
  store i1 %t146, ptr %l82, !tbaa !21
  br label %bb40
bb40:
  %t147 = load i1, ptr %l82, !tbaa !21
  br i1 %t147, label %bb41, label %bb42
bb41:
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = getelementptr { i64, [4 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t150, i32 0, i32 2
  %t152 = load i32, ptr %t151
  store i32 %t152, ptr %l8, !tbaa !23
  br label %bb43
bb42:
  br label %bb125
bb43:
  store %olang.scope zeroinitializer, ptr %s7
  %t154 = load i32, ptr %l8, !tbaa !23
  %t156 = sext i32 %t154 to i64
  store i64 %t156, ptr %l9, !tbaa !24
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/scope:Scoper", ptr %t158, i32 0, i32 26
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = icmp eq ptr %t161, null
  br i1 %t163, label %bb44, label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_e507d0d93dcb1267_6d41e0722b8ffb6b)
  unreachable
bb45:
  br label %bb46
bb46:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/scope:Scoper", ptr %t165, i32 0, i32 26
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Body", ptr %t168, i32 0, i32 7
  %t172 = load i64, ptr %l9, !tbaa !24
  %t175 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t171, i64 %t172)
  store %"compiler/typed:Local" %t175, ptr %l97
  br label %bb47
bb47:
  %t176 = load %"compiler/typed:Local", ptr %l97
  store %"compiler/typed:Local" %t176, ptr %l10
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/scope:Scoper", ptr %t177, i32 0, i32 45
  %t180 = load i64, ptr %l9, !tbaa !24
  %t183 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t179, i64 %t180)
  %t184 = extractvalue { i32, ptr } %t183, 1
  %t185 = extractvalue { i32, ptr } %t183, 0
  store i32 %t185, ptr %l103
  %t186 = icmp ne i32 %t185, 0
  br i1 %t186, label %bb49, label %ok.187, !prof !99
ok.187:
  store ptr %t184, ptr %l102
  br label %bb48
bb48:
  %t188 = load ptr, ptr %l102, !tbaa !29
  store ptr %t188, ptr %l98, !tbaa !29
  br label %bb51
bb49:
  br label %bb50
bb50:
  store ptr null, ptr %l98, !tbaa !29
  br label %bb51
bb51:
  %t189 = load ptr, ptr %l98, !tbaa !29
  store ptr %t189, ptr %l11, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 4
  %t191 = load i32, ptr %t190, !range !{i32 0, i32 7}
  store i32 %t191, ptr %l12
  %t193 = load i32, ptr %l12, !range !{i32 0, i32 7}
  %t195 = trunc i64 0 to i32
  %t196 = icmp eq i32 %t193, %t195
  br i1 %t196, label %bb52, label %bb53
bb52:
  br label %bb56
bb53:
  %t198 = load i32, ptr %l12, !range !{i32 0, i32 7}
  %t200 = trunc i64 5 to i32
  %t201 = icmp eq i32 %t198, %t200
  br i1 %t201, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  call void @__olang_scope_close(ptr %s7)
  store i64 -1, ptr %rv
  br label %ret
bb57:
  %t204 = load i32, ptr %l12, !range !{i32 0, i32 7}
  %t206 = trunc i64 2 to i32
  %t207 = icmp eq i32 %t204, %t206
  br i1 %t207, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load ptr, ptr %l11, !tbaa !29
  %t211 = load i64, ptr %l2, !tbaa !24
  %t213 = add i64 %t211, 1
  %t217 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v0, ptr %t209, ptr %t210, i64 %t213)
  store i64 %t217, ptr %l116
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s7)
  %t218 = load i64, ptr %l116, !tbaa !24
  store i64 %t218, ptr %rv
  br label %ret
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_bdf36c9557ac347f_98a403497664a493)
  unreachable
bb67:
  %t219 = load ptr, ptr %l11, !tbaa !29
  %t221 = icmp eq ptr %t219, null
  br i1 %t221, label %bb68, label %bb69
bb68:
  %t223 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  store i64 %t223, ptr %rv
  br label %ret
bb69:
  br label %bb70
bb70:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %l11, !tbaa !29
  %t230 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v0, ptr %s7, ptr %t225, ptr %t226)
  store ptr %t230, ptr %l123
  br label %bb71
bb71:
  %t231 = load ptr, ptr %l123, !tbaa !29
  store ptr %t231, ptr %l13, !tbaa !29
  %t232 = load ptr, ptr %l13, !tbaa !29
  store ptr %t232, ptr %l125, !tbaa !29
  store i1 false, ptr %l126, !tbaa !21
  %t233 = load ptr, ptr %l125, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb72, label %bb73
bb72:
  %t236 = load ptr, ptr %l125, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 18}
  %t239 = icmp eq i64 %t237, 2
  store i1 %t239, ptr %l126, !tbaa !21
  br label %bb73
bb73:
  %t240 = load i1, ptr %l126, !tbaa !21
  br i1 %t240, label %bb74, label %bb75
bb74:
  br label %bb84
bb75:
  %t241 = load ptr, ptr %l13, !tbaa !29
  store ptr %t241, ptr %l129, !tbaa !29
  store i1 false, ptr %l130, !tbaa !21
  %t242 = load ptr, ptr %l129, !tbaa !29
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %bb76, label %bb77
bb76:
  %t245 = load ptr, ptr %l129, !tbaa !29
  %t246 = load i64, ptr %t245, !range !{i64 0, i64 18}
  %t248 = icmp eq i64 %t246, 3
  store i1 %t248, ptr %l130, !tbaa !21
  br label %bb77
bb77:
  %t249 = load i1, ptr %l130, !tbaa !21
  br i1 %t249, label %bb78, label %bb79
bb78:
  br label %bb84
bb79:
  %t250 = load ptr, ptr %l13, !tbaa !29
  store ptr %t250, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t251 = load ptr, ptr %l133, !tbaa !29
  %t252 = icmp ne ptr %t251, null
  br i1 %t252, label %bb80, label %bb81
bb80:
  %t254 = load ptr, ptr %l133, !tbaa !29
  %t255 = load i64, ptr %t254, !range !{i64 0, i64 18}
  %t257 = icmp eq i64 %t255, 10
  store i1 %t257, ptr %l134, !tbaa !21
  br label %bb81
bb81:
  %t258 = load i1, ptr %l134, !tbaa !21
  br i1 %t258, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  store i1 true, ptr %l124, !tbaa !21
  br label %bb98
bb85:
  %t259 = load ptr, ptr %l13, !tbaa !29
  store ptr %t259, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t260 = load ptr, ptr %l137, !tbaa !29
  %t261 = icmp ne ptr %t260, null
  br i1 %t261, label %bb86, label %bb87
bb86:
  %t263 = load ptr, ptr %l137, !tbaa !29
  %t264 = load i64, ptr %t263, !range !{i64 0, i64 18}
  %t266 = icmp eq i64 %t264, 6
  store i1 %t266, ptr %l138, !tbaa !21
  br label %bb87
bb87:
  %t267 = load i1, ptr %l138, !tbaa !21
  br i1 %t267, label %bb88, label %bb89
bb88:
  %t268 = load ptr, ptr %l13, !tbaa !29
  %t270 = getelementptr { i64, [5 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t270, i32 0, i32 2
  %t272 = load ptr, ptr %t271
  store ptr %t272, ptr %l14, !tbaa !29
  br label %bb90
bb89:
  br label %bb93
bb90:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/scope:Scoper", ptr %t274, i32 0, i32 0
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Program", ptr %t277, i32 0, i32 2
  store ptr %t279, ptr %l145, !tbaa !29
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l14, !tbaa !29
  %t284 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %s7, ptr %t280, ptr %t281)
  store i32 %t284, ptr %l148
  br label %bb91
bb91:
  %t285 = load ptr, ptr %l145, !tbaa !29
  %t286 = load i32, ptr %l148, !tbaa !23
  %t287 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t285, i32 %t286, i64 0)
  store i64 %t287, ptr %l149
  br label %bb92
bb92:
  %t288 = load i64, ptr %l149, !tbaa !24
  %t289 = icmp sge i64 %t288, 0
  store i1 %t289, ptr %l124, !tbaa !21
  br label %bb98
bb93:
  br i1 true, label %bb94, label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb97
bb96:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb98
bb97:
  call void @__olang_check_failed(ptr @olang_loc_c3a4635b73df0d44_b0216f4acd182078)
  unreachable
bb98:
  %t291 = load i1, ptr %l124, !tbaa !21
  store i1 %t291, ptr %l15, !tbaa !21
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load ptr, ptr %l11, !tbaa !29
  %t297 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v0, ptr %s7, ptr %t292, ptr %t293)
  store ptr %t297, ptr %l154
  br label %bb99
bb99:
  %t298 = load ptr, ptr %l154, !tbaa !29
  store ptr %t298, ptr %l156, !tbaa !29
  store i1 false, ptr %l157, !tbaa !21
  %t300 = load ptr, ptr %l156, !tbaa !29
  %t301 = icmp ne ptr %t300, null
  br i1 %t301, label %bb100, label %bb101
bb100:
  %t303 = load ptr, ptr %l156, !tbaa !29
  %t304 = load i64, ptr %t303, !range !{i64 0, i64 18}
  %t306 = icmp eq i64 %t304, 10
  store i1 %t306, ptr %l157, !tbaa !21
  br label %bb101
bb101:
  %t307 = load i1, ptr %l157, !tbaa !21
  br i1 %t307, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  store i1 true, ptr %l155, !tbaa !21
  br label %bb110
bb105:
  br i1 true, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb109
bb108:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_40ec225b43a9c35_aa9faf1719a6cb49)
  unreachable
bb110:
  %t308 = load i1, ptr %l155, !tbaa !21
  store i1 %t308, ptr %l17, !tbaa !21
  %t309 = load i1, ptr %l15, !tbaa !21
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l162, !tbaa !21
  br label %bb117
bb112:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 2
  %t315 = load i32, ptr %t314, !tbaa !23
  %t318 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t313, i32 %t315)
  store i1 %t318, ptr %l165
  br label %bb113
bb113:
  %t319 = load i1, ptr %l165, !tbaa !21
  %t320 = xor i1 %t319, true
  br i1 %t320, label %bb114, label %bb115
bb114:
  %t322 = load i1, ptr %l17, !tbaa !21
  %t324 = xor i1 %t322, true
  store i1 %t324, ptr %l167, !tbaa !21
  br label %bb116
bb115:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb116
bb116:
  %t326 = load i1, ptr %l167, !tbaa !21
  store i1 %t326, ptr %l162, !tbaa !21
  br label %bb117
bb117:
  %t327 = load i1, ptr %l162, !tbaa !21
  br i1 %t327, label %bb118, label %bb119
bb118:
  %t328 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  store i64 %t328, ptr %rv
  br label %ret
bb119:
  br label %bb120
bb120:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load ptr, ptr %l11, !tbaa !29
  %t333 = load i64, ptr %l2, !tbaa !24
  %t335 = add i64 %t333, 1
  %t339 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v0, ptr %t330, ptr %t331, i64 %t335)
  store i64 %t339, ptr %l176
  br label %bb121
bb121:
  %t340 = load i64, ptr %l176, !tbaa !24
  store i64 %t340, ptr %l18, !tbaa !24
  %t341 = load i64, ptr %l18, !tbaa !24
  %t343 = icmp sge i64 %t341, 0
  br i1 %t343, label %bb122, label %bb123
bb122:
  %t345 = load i64, ptr %l18, !tbaa !24
  store i64 %t345, ptr %l179, !tbaa !24
  br label %bb124
bb123:
  %t347 = load i64, ptr %l9, !tbaa !24
  store i64 %t347, ptr %l179, !tbaa !24
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s7)
  %t349 = load i64, ptr %l179, !tbaa !24
  store i64 %t349, ptr %rv
  br label %ret
bb125:
  br i1 true, label %bb126, label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb129
bb128:
  br label %bb130
bb129:
  call void @__olang_check_failed(ptr @olang_loc_ee34d1998e8cb262_dc9f2cfe1a0305ee)
  unreachable
bb130:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteGenArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca ptr
  %l22 = alloca i64
  %l26 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l35 = alloca i1
  %l40 = alloca i1
  %l41 = alloca { i64, ptr }
  %l45 = alloca { i64, [2 x i64] }
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l55 = alloca i1
  %l61 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca i64
  %t92 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l12, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l5
  %t13 = load { i64, [2 x i64] }, ptr %l5
  %t15 = extractvalue { i64, [2 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 0
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t21 = getelementptr { i64 }, ptr %t20, i32 0, i32 0
  %t22 = load i64, ptr %t21
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t31 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t27, i64 %t22)
  store i64 %t31, ptr %l22
  br label %bb5
bb5:
  %t32 = load i64, ptr %l22, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t36, i64 %t37)
  store i1 %t40, ptr %l26
  br label %bb6
bb6:
  %t41 = load i1, ptr %l26, !tbaa !21
  %t42 = xor i1 %t41, true
  br i1 %t42, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t48 = load i64, ptr %l7, !tbaa !24
  %t51 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenElem(ptr %v0, ptr %t47, i64 %t48)
  store i64 %t51, ptr %l31
  br label %bb10
bb10:
  %t52 = load i64, ptr %l31, !tbaa !24
  store i64 %t52, ptr %l8, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l32, !tbaa !29
  %t54 = load i64, ptr %l8, !tbaa !24
  %t56 = icmp sge i64 %t54, 0
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t64 = icmp slt i64 %t58, %t61
  store i1 %t64, ptr %l35, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb13
bb13:
  %t66 = load i1, ptr %l35, !tbaa !21
  br i1 %t66, label %bb14, label %bb15
bb14:
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t67, ptr %l41, !tbaa !27
  %t68 = load i64, ptr %l8, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 %t68
  %t73 = load i64, ptr %t72, !tbaa !34
  %t75 = icmp sge i64 %t73, 0
  store i1 %t75, ptr %l40, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l40, !tbaa !21
  br i1 %t77, label %bb17, label %bb18
bb17:
  store { i64, ptr } %a2, ptr %l46, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t79, ptr %l47, !tbaa !27
  %t80 = load i64, ptr %l8, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i64, ptr %t83, i64 %t80
  %t85 = load i64, ptr %t84, !tbaa !34
  %t87 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr { i64, [2 x i64] }, ptr %t88, i64 %t85
  %t90 = load { i64, [2 x i64] }, ptr %t89
  store { i64, [2 x i64] } %t90, ptr %l45
  br label %bb19
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t92
  %t93 = getelementptr { i64, [2 x i64] }, ptr %t92, i32 0, i32 0
  store i64 0, ptr %t93
  %t94 = load { i64, [2 x i64] }, ptr %t92
  store { i64, [2 x i64] } %t94, ptr %l45
  br label %bb19
bb19:
  %t96 = load { i64, [2 x i64] }, ptr %l45
  %t97 = load ptr, ptr %l32, !tbaa !29
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t97, i32 0, i32 74
  store { i64, [2 x i64] } %t96, ptr %t98
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l52, !tbaa !29
  %t100 = load i64, ptr %l8, !tbaa !24
  %t102 = icmp sge i64 %t100, 0
  br i1 %t102, label %bb20, label %bb21
bb20:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load ptr, ptr %l4, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Call", ptr %t105, i32 0, i32 1
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t113 = icmp slt i64 %t104, %t110
  store i1 %t113, ptr %l55, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb22
bb22:
  %t115 = load i1, ptr %l55, !tbaa !21
  br i1 %t115, label %bb23, label %bb24
bb23:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l4, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Call", ptr %t117, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l64, !tbaa !27
  %t121 = load i64, ptr %l8, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr ptr, ptr %t124, i64 %t121
  %t126 = load ptr, ptr %t125, !tbaa !39
  %t129 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %v3, ptr %t116, ptr %t126)
  store i64 %t129, ptr %l67
  br label %bb25
bb24:
  store i64 -1, ptr %l61, !tbaa !24
  br label %bb26
bb25:
  %t130 = load i64, ptr %l67, !tbaa !24
  store i64 %t130, ptr %l61, !tbaa !24
  br label %bb26
bb26:
  %t131 = load i64, ptr %l61, !tbaa !24
  %t132 = load ptr, ptr %l52, !tbaa !29
  %t133 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 76
  store i64 %t131, ptr %t133, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, [2 x i64] }
  %l20 = alloca i64
  %l23 = alloca { i64, [2 x i64] }
  %l29 = alloca { i64, [2 x i64] }
  %l32 = alloca { i64, [2 x i64] }
  %l38 = alloca { i64, [2 x i64] }
  %l45 = alloca i64
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l76 = alloca { i64, [2 x i64] }
  %l80 = alloca i64
  %l95 = alloca i64
  %l98 = alloca i64
  %l102 = alloca i64
  %l105 = alloca i64
  %l126 = alloca { i64, [2 x i64] }
  %l130 = alloca i64
  %l143 = alloca i1
  %l147 = alloca i1
  %l149 = alloca ptr
  %l156 = alloca %"compiler/scope:rel"
  %l158 = alloca ptr
  %l165 = alloca %"compiler/scope:rel"
  %s0 = alloca %olang.scope
  %s16 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t5 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %t1, { i64, [2 x i64] } %t2)
  store { i64, [2 x i64] } %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load { i64, [2 x i64] }, ptr %l23
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load { i64, [2 x i64] }, ptr %l1
  %t17 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %t13, { i64, [2 x i64] } %t14)
  store { i64, [2 x i64] } %t17, ptr %l29
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t18 = load { i64, [2 x i64] }, ptr %l29
  store { i64, [2 x i64] } %t18, ptr %l1
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load { i64, [2 x i64] }, ptr %l2
  %t23 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %t19, { i64, [2 x i64] } %t20)
  store { i64, [2 x i64] } %t23, ptr %l32
  br label %bb6
bb6:
  %t24 = load { i64, [2 x i64] }, ptr %l32
  %t26 = extractvalue { i64, [2 x i64] } %t24, 0
  %t27 = icmp eq i64 %t26, 0
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load { i64, [2 x i64] }, ptr %l2
  %t35 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %t31, { i64, [2 x i64] } %t32)
  store { i64, [2 x i64] } %t35, ptr %l38
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t36 = load { i64, [2 x i64] }, ptr %l38
  store { i64, [2 x i64] } %t36, ptr %l2
  br label %bb10
bb10:
  %t37 = load { i64, [2 x i64] }, ptr %l1
  %t39 = extractvalue { i64, [2 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 5
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t42 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { i64 }, ptr %t42, i32 0, i32 0
  %t44 = load i64, ptr %t43
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb13
bb12:
  br label %bb34
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 39
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t48, i64 %t49)
  store i64 %t52, ptr %l45
  br label %bb14
bb14:
  %t53 = load i64, ptr %l45, !tbaa !24
  store i64 %t53, ptr %l5, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t54, i64 %t55)
  store i64 %t58, ptr %l48
  br label %bb15
bb15:
  %t59 = load i64, ptr %l48, !tbaa !24
  store i64 %t59, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = icmp sgt i64 %t60, %t61
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = load i64, ptr %l7, !tbaa !24
  %t68 = icmp sgt i64 %t66, 0
  br i1 %t68, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb21
bb18:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t71 = load i64, ptr %l5, !tbaa !24
  %t74 = sub i64 %t70, %t71
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = add i64 %t74, %t75
  %t80 = sub i64 %t78, 1
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = sdiv i64 %t80, %t81
  store i64 %t84, ptr %l55, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb20
bb20:
  %t86 = load i64, ptr %l55, !tbaa !24
  store i64 %t86, ptr %l52, !tbaa !24
  br label %bb21
bb21:
  %t87 = load i64, ptr %l52, !tbaa !24
  store i64 %t87, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb22
bb22:
  %t88 = load i64, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l8, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb23, label %bb24
bb23:
  br label %bb33
bb24:
  br label %bb25
bb25:
  %t96 = load i64, ptr %l5, !tbaa !24
  %t97 = load i64, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l7, !tbaa !24
  %t101 = mul i64 %t97, %t98
  %t104 = add i64 %t96, %t101
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 40
  %t112 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t108, i64 %t104)
  store { i64, [2 x i64] } %t112, ptr %l76
  br label %bb26
bb26:
  %t113 = load { i64, [2 x i64] }, ptr %l76
  store { i64, [2 x i64] } %t113, ptr %l11
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load { i64, [2 x i64] }, ptr %l11
  %t116 = load { i64, [2 x i64] }, ptr %l2
  %t120 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t114, { i64, [2 x i64] } %t115, { i64, [2 x i64] } %t116)
  store i64 %t120, ptr %l80
  br label %bb27
bb27:
  %t121 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t122 = load i64, ptr %l80, !tbaa !24
  %t124 = icmp eq i64 %t122, %t121
  br i1 %t124, label %bb28, label %bb29
bb28:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load { i64, [2 x i64] }, ptr %l11
  %t128 = load { i64, [2 x i64] }, ptr %l2
  %t129 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %t126, { i64, [2 x i64] } %t127, { i64, [2 x i64] } %t128, i1 %t129)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t134 = load i64, ptr %l9, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l9, !tbaa !24
  br label %bb22
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_322b5045d3cabfc4_8f4e43b4ddbaa588)
  unreachable
bb39:
  %t138 = load { i64, [2 x i64] }, ptr %l2
  %t140 = extractvalue { i64, [2 x i64] } %t138, 0
  %t141 = icmp eq i64 %t140, 5
  br i1 %t141, label %bb40, label %bb41
bb40:
  %t143 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t144 = getelementptr { i64 }, ptr %t143, i32 0, i32 0
  %t145 = load i64, ptr %t144
  store i64 %t145, ptr %l12, !tbaa !24
  br label %bb42
bb41:
  br label %bb63
bb42:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/scope:Scoper", ptr %t147, i32 0, i32 39
  %t150 = load i64, ptr %l12, !tbaa !24
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t149, i64 %t150)
  store i64 %t153, ptr %l95
  br label %bb43
bb43:
  %t154 = load i64, ptr %l95, !tbaa !24
  store i64 %t154, ptr %l13, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i64, ptr %l12, !tbaa !24
  %t159 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t155, i64 %t156)
  store i64 %t159, ptr %l98
  br label %bb44
bb44:
  %t160 = load i64, ptr %l98, !tbaa !24
  store i64 %t160, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t161 = load i64, ptr %l14, !tbaa !24
  %t162 = load i64, ptr %l13, !tbaa !24
  %t165 = icmp sgt i64 %t161, %t162
  br i1 %t165, label %bb45, label %bb46
bb45:
  %t167 = load i64, ptr %l15, !tbaa !24
  %t169 = icmp sgt i64 %t167, 0
  br i1 %t169, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb50
bb47:
  %t171 = load i64, ptr %l14, !tbaa !24
  %t172 = load i64, ptr %l13, !tbaa !24
  %t175 = sub i64 %t171, %t172
  %t176 = load i64, ptr %l15, !tbaa !24
  %t179 = add i64 %t175, %t176
  %t181 = sub i64 %t179, 1
  %t182 = load i64, ptr %l15, !tbaa !24
  %t185 = sdiv i64 %t181, %t182
  store i64 %t185, ptr %l105, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb49
bb49:
  %t187 = load i64, ptr %l105, !tbaa !24
  store i64 %t187, ptr %l102, !tbaa !24
  br label %bb50
bb50:
  %t188 = load i64, ptr %l102, !tbaa !24
  store i64 %t188, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb51
bb51:
  %t189 = load i64, ptr %l17, !tbaa !24
  %t190 = load i64, ptr %l16, !tbaa !24
  %t193 = icmp slt i64 %t189, %t190
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb52, label %bb53
bb52:
  br label %bb62
bb53:
  br label %bb54
bb54:
  %t197 = load i64, ptr %l13, !tbaa !24
  %t198 = load i64, ptr %l17, !tbaa !24
  %t199 = load i64, ptr %l15, !tbaa !24
  %t202 = mul i64 %t198, %t199
  %t205 = add i64 %t197, %t202
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/scope:Scoper", ptr %t207, i32 0, i32 40
  %t213 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t209, i64 %t205)
  store { i64, [2 x i64] } %t213, ptr %l126
  br label %bb55
bb55:
  %t214 = load { i64, [2 x i64] }, ptr %l126
  store { i64, [2 x i64] } %t214, ptr %l19
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load { i64, [2 x i64] }, ptr %l1
  %t217 = load { i64, [2 x i64] }, ptr %l19
  %t221 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t215, { i64, [2 x i64] } %t216, { i64, [2 x i64] } %t217)
  store i64 %t221, ptr %l130
  br label %bb56
bb56:
  %t222 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t223 = load i64, ptr %l130, !tbaa !24
  %t225 = icmp eq i64 %t223, %t222
  br i1 %t225, label %bb57, label %bb58
bb57:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load { i64, [2 x i64] }, ptr %l1
  %t229 = load { i64, [2 x i64] }, ptr %l19
  %t230 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoblige(ptr %v0, ptr %t227, { i64, [2 x i64] } %t228, { i64, [2 x i64] } %t229, i1 %t230)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t235 = load i64, ptr %l17, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l17, !tbaa !24
  br label %bb51
bb62:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_7295af1014264eb5_7e53551048ac1f59)
  unreachable
bb68:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/scope:Scoper", ptr %t239, i32 0, i32 125
  %t242 = load i64, ptr %t241, !tbaa !24
  store i64 %t242, ptr %l20, !tbaa !24
  %t244 = load i64, ptr %l20, !tbaa !24
  %t246 = icmp eq i64 %t244, 0
  br i1 %t246, label %bb69, label %bb70
bb69:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load { i64, [2 x i64] }, ptr %l1
  %t250 = load { i64, [2 x i64] }, ptr %l2
  %t254 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceRel(ptr %v0, ptr %t248, { i64, [2 x i64] } %t249, { i64, [2 x i64] } %t250)
  store i1 %t254, ptr %l147
  br label %bb71
bb70:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb72
bb71:
  %t255 = load i1, ptr %l147, !tbaa !21
  store i1 %t255, ptr %l143, !tbaa !21
  br label %bb72
bb72:
  %t256 = load i1, ptr %l143, !tbaa !21
  br i1 %t256, label %bb73, label %bb74
bb73:
  %t257 = load i64, ptr @G_2ecompiler_2fscope_2eWhyHolds, !tbaa !24
  store i64 %t257, ptr %l20, !tbaa !24
  br label %bb75
bb74:
  br label %bb75
bb75:
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l149, !tbaa !29
  %t260 = load { i64, [2 x i64] }, ptr %l1
  %t261 = load { i64, [2 x i64] }, ptr %l2
  %t262 = load i1, ptr %l3, !tbaa !21
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/scope:Scoper", ptr %t263, i32 0, i32 41
  %t266 = load %"compiler/source:Span", ptr %t265
  %t267 = load i64, ptr %l20, !tbaa !24
  %t273 = call %"compiler/scope:rel" @compiler_2fscope_3arel_2ector(ptr %s0, { i64, [2 x i64] } %t260, { i64, [2 x i64] } %t261, i1 %t262, %"compiler/source:Span" %t266, i64 %t267, i1 false, i1 false)
  store %"compiler/scope:rel" %t273, ptr %l156
  br label %bb76
bb76:
  %t274 = load ptr, ptr %l149, !tbaa !29
  %t275 = load %"compiler/scope:rel", ptr %l156
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRel(ptr %v0, ptr %t274, %"compiler/scope:rel" %t275)
  br label %bb77
bb77:
  %t276 = load i1, ptr %l3, !tbaa !21
  br i1 %t276, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s16
  %t278 = load ptr, ptr %l0, !tbaa !29
  store ptr %t278, ptr %l158, !tbaa !29
  %t279 = load { i64, [2 x i64] }, ptr %l2
  %t280 = load { i64, [2 x i64] }, ptr %l1
  %t281 = load i1, ptr %l3, !tbaa !21
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/scope:Scoper", ptr %t282, i32 0, i32 41
  %t285 = load %"compiler/source:Span", ptr %t284
  %t286 = load i64, ptr %l20, !tbaa !24
  %t292 = call %"compiler/scope:rel" @compiler_2fscope_3arel_2ector(ptr %s16, { i64, [2 x i64] } %t279, { i64, [2 x i64] } %t280, i1 %t281, %"compiler/source:Span" %t285, i64 %t286, i1 false, i1 false)
  store %"compiler/scope:rel" %t292, ptr %l165
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t293 = load ptr, ptr %l158, !tbaa !29
  %t294 = load %"compiler/scope:rel", ptr %l165
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRel(ptr %v0, ptr %t293, %"compiler/scope:rel" %t294)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s16)
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoldValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l24 = alloca ptr
  %l26 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca i1
  %l35 = alloca i1
  %l36 = alloca ptr
  %l38 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 60
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t15 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t10, ptr %a1)
  store ptr %t15, ptr %l12
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l12, !tbaa !29
  store ptr %t16, ptr %l2, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t18 = load ptr, ptr %l13, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l13, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 18}
  %t24 = icmp eq i64 %t22, 2
  store i1 %t24, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t28, i32 0, i32 2
  %t30 = load ptr, ptr %t29
  store ptr %t30, ptr %l3, !tbaa !29
  br label %bb10
bb9:
  br label %bb31
bb10:
  %t32 = load ptr, ptr %l3, !tbaa !29
  store ptr %t32, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t33 = load ptr, ptr %l19, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 8}
  %t39 = icmp eq i64 %t37, 7
  store i1 %t39, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l20, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb30
bb19:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l24, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 60
  store ptr %t45, ptr %l26, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 60
  %t50 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t48)
  store i64 %t50, ptr %l29
  br label %bb20
bb20:
  %t51 = load i64, ptr %l29, !tbaa !24
  %t52 = sub i64 %t51, 1
  %t53 = load ptr, ptr %l26, !tbaa !29
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t53, i64 %t52)
  store ptr %t55, ptr %l31
  br label %bb21
bb21:
  %t56 = load ptr, ptr %l31, !tbaa !29
  %t57 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t56)
  store i32 %t57, ptr %l32
  br label %bb22
bb22:
  %t58 = load ptr, ptr %l24, !tbaa !29
  %t59 = load i32, ptr %l32, !tbaa !23
  %t60 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t58, i32 %t59)
  store i1 %t60, ptr %l33
  br label %bb23
bb23:
  %t61 = load i1, ptr %l33, !tbaa !21
  %t62 = xor i1 %t61, true
  br i1 %t62, label %bb24, label %bb25
bb24:
  %t64 = load ptr, ptr %l3, !tbaa !29
  store ptr %t64, ptr %l36, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 60
  store ptr %t67, ptr %l38, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 60
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t70)
  store i64 %t72, ptr %l41
  br label %bb26
bb25:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb29
bb26:
  %t73 = load i64, ptr %l41, !tbaa !24
  %t74 = sub i64 %t73, 1
  %t75 = load ptr, ptr %l38, !tbaa !29
  %t77 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t75, i64 %t74)
  store ptr %t77, ptr %l43
  br label %bb27
bb27:
  %t78 = load ptr, ptr %l36, !tbaa !29
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = call i1 @compiler_2fscope_2ewithin(ptr %s0, ptr %v0, ptr %t78, ptr %t79)
  store i1 %t80, ptr %l44
  br label %bb28
bb28:
  %t81 = load i1, ptr %l44, !tbaa !21
  store i1 %t81, ptr %l35, !tbaa !21
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t82 = load i1, ptr %l35, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
bb30:
  call void @__olang_check_failed(ptr @olang_loc_40b97f37a7371750_40728193df6350fc)
  unreachable
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_f651c1e1d8a1ace1_d593723da6a130ad)
  unreachable
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOfTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca i32
  %l8 = alloca i64
  %l16 = alloca i64
  %l26 = alloca { i64, [1 x i64] }
  %l39 = alloca %"compiler/typed:Local"
  %l42 = alloca i64
  %rv = alloca i64
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
  br label %bb31
bb3:
  %t10 = load i64, ptr %l2, !tbaa !24
  store i64 %t10, ptr %l8, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_77d8df1bd6b52079_f0229fa895aca615)
  unreachable
bb5:
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 26
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 6
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l16
  br label %bb7
bb7:
  %t27 = load i64, ptr %l8, !tbaa !24
  %t28 = load i64, ptr %l16, !tbaa !24
  %t29 = icmp slt i64 %t27, %t28
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 26
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb10, label %bb11
bb9:
  br label %bb30
bb10:
  call void @__olang_check_failed(ptr @olang_loc_bfd80b0298b19652_e537c33c4d886a6e)
  unreachable
bb11:
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 26
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 6
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t44, i64 %t45)
  store { i64, [1 x i64] } %t48, ptr %l26
  br label %bb13
bb13:
  %t49 = load { i64, [1 x i64] }, ptr %l26
  store { i64, [1 x i64] } %t49, ptr %l3
  %t50 = load { i64, [1 x i64] }, ptr %l3
  %t52 = extractvalue { i64, [1 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 0
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = getelementptr { i64, [1 x i64] }, ptr %l3, i32 0, i32 1
  %t56 = getelementptr { i32 }, ptr %t55, i32 0, i32 0
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l4, !tbaa !23
  br label %bb16
bb15:
  br label %bb24
bb16:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 26
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  br i1 %t64, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_b1757fdcabe82f93_e12b45afd85e1a9f)
  unreachable
bb18:
  br label %bb19
bb19:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 26
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 7
  %t73 = load i32, ptr %l4, !tbaa !23
  %t75 = sext i32 %t73 to i64
  %t78 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t72, i64 %t75)
  store %"compiler/typed:Local" %t78, ptr %l39
  br label %bb20
bb20:
  %t79 = getelementptr %"compiler/typed:Local", ptr %l39, i32 0, i32 0
  %t80 = load i32, ptr %t79, !tbaa !23
  %t82 = icmp ne i32 %t80, 0
  br i1 %t82, label %bb21, label %bb22
bb21:
  %t84 = load i32, ptr %l4, !tbaa !23
  %t86 = sext i32 %t84 to i64
  store i64 %t86, ptr %l42, !tbaa !24
  br label %bb23
bb22:
  store i64 -1, ptr %l42, !tbaa !24
  br label %bb23
bb23:
  %t88 = load i64, ptr %l42, !tbaa !24
  store i64 %t88, ptr %rv
  br label %ret
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_a9000624b37114eb_4f5d8570083b5047)
  unreachable
bb29:
  br label %bb30
bb30:
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_6cb6018c48b7e44c_30fb4d691284a4b0)
  unreachable
bb36:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [1 x i64] }
  %l12 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i64
  %l20 = alloca i64
  %l26 = alloca i32
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l57 = alloca { i64, [1 x i64] }
  %rv = alloca i64
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l16, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l17, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 5
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l20
  br label %bb2
bb2:
  %t15 = load i64, ptr %l17, !tbaa !24
  %t16 = load i64, ptr %l20, !tbaa !24
  %t17 = icmp sge i64 %t15, %t16
  br i1 %t17, label %bb3, label %bb4
bb3:
  store i64 -1, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 5
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t22, i64 %t23)
  store i32 %t26, ptr %l26
  br label %bb6
bb6:
  %t27 = load i32, ptr %l26, !tbaa !23
  store i32 %t27, ptr %l4, !tbaa !23
  store i64 0, ptr %l5, !tbaa !24
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 6
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l29
  br label %bb7
bb7:
  %t33 = load i64, ptr %l29, !tbaa !24
  store i64 %t33, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load i64, ptr %l7, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb10:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l36, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l36, !tbaa !24
  store i64 %t60, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l33, !tbaa !24
  store i64 %t61, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb15, label %bb16
bb15:
  br label %bb32
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l7, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l10, !tbaa !24
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Body", ptr %t80, i32 0, i32 6
  %t83 = load i64, ptr %l10, !tbaa !24
  %t86 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t82, i64 %t83)
  store { i64, [1 x i64] } %t86, ptr %l57
  br label %bb18
bb18:
  %t87 = load { i64, [1 x i64] }, ptr %l57
  store { i64, [1 x i64] } %t87, ptr %l11
  %t88 = load { i64, [1 x i64] }, ptr %l11
  %t90 = extractvalue { i64, [1 x i64] } %t88, 0
  %t91 = icmp eq i64 %t90, 0
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t93 = getelementptr { i64, [1 x i64] }, ptr %l11, i32 0, i32 1
  %t94 = getelementptr { i32 }, ptr %t93, i32 0, i32 0
  %t95 = load i32, ptr %t94
  store i32 %t95, ptr %l12, !tbaa !23
  br label %bb21
bb20:
  br label %bb25
bb21:
  %t97 = load i32, ptr %l12, !tbaa !23
  %t98 = load i32, ptr %l4, !tbaa !23
  %t101 = icmp eq i32 %t97, %t98
  br i1 %t101, label %bb22, label %bb23
bb22:
  %t103 = load i64, ptr %l10, !tbaa !24
  store i64 %t103, ptr %rv
  br label %ret
bb23:
  br label %bb24
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
  call void @__olang_check_failed(ptr @olang_loc_50c5af6b9a55d13c_b172bff682b06040)
  unreachable
bb30:
  br label %bb31
bb31:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l9, !tbaa !24
  br label %bb14
bb32:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca ptr
  %l11 = alloca i1
  %l17 = alloca { i64, [2 x i64] }
  %l20 = alloca { i64, [2 x i64] }
  %l25 = alloca { i64, [2 x i64] }
  %l26 = alloca ptr
  %l27 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l40 = alloca { i64, [2 x i64] }
  %l41 = alloca ptr
  %l42 = alloca i1
  %l51 = alloca { i64, [2 x i64] }
  %l52 = alloca ptr
  %l53 = alloca i1
  %l58 = alloca ptr
  %l60 = alloca ptr
  %l62 = alloca i1
  %l63 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i1
  %l68 = alloca { i64, [2 x i64] }
  %l69 = alloca ptr
  %l70 = alloca i1
  %l78 = alloca { i64, [2 x i64] }
  %l79 = alloca ptr
  %l80 = alloca i1
  %l86 = alloca { i64, [2 x i64] }
  %l87 = alloca { i64, [2 x i64] }
  %l92 = alloca { i64, [2 x i64] }
  %l93 = alloca i32
  %rv = alloca { i64, [2 x i64] }
  %t44 = alloca { i64, [2 x i64] }, align 8
  %t187 = alloca { i64, [2 x i64] }, align 8
  %t192 = alloca { i64, [2 x i64] }, align 8
  %t198 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
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
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load i1, ptr %l2, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhereLives(ptr %v0, ptr %t18, i32 %t19)
  store { i64, [2 x i64] } %t22, ptr %l20
  br label %bb8
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 35
  %t26 = load i32, ptr %l3, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t31 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t25, i64 %t28)
  store { i64, [2 x i64] } %t31, ptr %l25
  br label %bb9
bb8:
  %t32 = load { i64, [2 x i64] }, ptr %l20
  store { i64, [2 x i64] } %t32, ptr %l17
  br label %bb10
bb9:
  %t33 = load { i64, [2 x i64] }, ptr %l25
  store { i64, [2 x i64] } %t33, ptr %l17
  br label %bb10
bb10:
  %t34 = load { i64, [2 x i64] }, ptr %l17
  store { i64, [2 x i64] } %t34, ptr %l9
  br label %bb68
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t36 = load ptr, ptr %l26, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l26, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 8}
  %t42 = icmp eq i64 %t40, 1
  store i1 %t42, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l27, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store { i64, [2 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [2 x i64] }, ptr %t44, i32 0, i32 0
  store i64 3, ptr %t45
  %t46 = load { i64, [2 x i64] }, ptr %t44
  store { i64, [2 x i64] } %t46, ptr %l9
  br label %bb68
bb17:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t49 = load ptr, ptr %l31, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb18, label %bb19
bb18:
  %t52 = load ptr, ptr %l31, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 8}
  %t55 = icmp eq i64 %t53, 3
  store i1 %t55, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t56 = load i1, ptr %l32, !tbaa !21
  br i1 %t56, label %bb20, label %bb21
bb20:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t59, i32 0, i32 2
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t65 = load i1, ptr %l2, !tbaa !21
  %t69 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t63, ptr %t64, i1 %t65)
  store { i64, [2 x i64] } %t69, ptr %l40
  br label %bb23
bb23:
  %t70 = load { i64, [2 x i64] }, ptr %l40
  store { i64, [2 x i64] } %t70, ptr %l9
  br label %bb68
bb24:
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t72 = load ptr, ptr %l41, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb25, label %bb26
bb25:
  %t75 = load ptr, ptr %l41, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 8}
  %t78 = icmp eq i64 %t76, 5
  store i1 %t78, ptr %l42, !tbaa !21
  br label %bb26
bb26:
  %t79 = load i1, ptr %l42, !tbaa !21
  br i1 %t79, label %bb27, label %bb28
bb27:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l5, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l5, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Payload", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t91 = load i1, ptr %l2, !tbaa !21
  %t95 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t86, ptr %t90, i1 %t91)
  store { i64, [2 x i64] } %t95, ptr %l51
  br label %bb30
bb30:
  %t96 = load { i64, [2 x i64] }, ptr %l51
  store { i64, [2 x i64] } %t96, ptr %l9
  br label %bb68
bb31:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t98 = load ptr, ptr %l52, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb32, label %bb33
bb32:
  %t101 = load ptr, ptr %l52, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 8}
  %t104 = icmp eq i64 %t102, 4
  store i1 %t104, ptr %l53, !tbaa !21
  br label %bb33
bb33:
  %t105 = load i1, ptr %l53, !tbaa !21
  br i1 %t105, label %bb34, label %bb35
bb34:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [4 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t108, i32 0, i32 2
  %t110 = load ptr, ptr %t109
  store ptr %t110, ptr %l6, !tbaa !29
  br label %bb36
bb35:
  br label %bb43
bb36:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l58, !tbaa !29
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Elem", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  store ptr %t116, ptr %l60, !tbaa !29
  %t117 = load i1, ptr %l2, !tbaa !21
  br i1 %t117, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb41
bb38:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l63, !tbaa !29
  %t120 = load ptr, ptr %l6, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Elem", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t123)
  store i32 %t125, ptr %l66
  br label %bb39
bb39:
  %t126 = load ptr, ptr %l63, !tbaa !29
  %t127 = load i32, ptr %l66, !tbaa !23
  %t128 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erunLength(ptr %v0, ptr %t126, i32 %t127)
  store i1 %t128, ptr %l67
  br label %bb40
bb40:
  %t129 = load i1, ptr %l67, !tbaa !21
  store i1 %t129, ptr %l62, !tbaa !21
  br label %bb41
bb41:
  %t130 = load ptr, ptr %l58, !tbaa !29
  %t131 = load ptr, ptr %l60, !tbaa !29
  %t132 = load i1, ptr %l62, !tbaa !21
  %t133 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t130, ptr %t131, i1 %t132)
  store { i64, [2 x i64] } %t133, ptr %l68
  br label %bb42
bb42:
  %t134 = load { i64, [2 x i64] }, ptr %l68
  store { i64, [2 x i64] } %t134, ptr %l9
  br label %bb68
bb43:
  %t135 = load ptr, ptr %l1, !tbaa !29
  store ptr %t135, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t136 = load ptr, ptr %l69, !tbaa !29
  %t137 = icmp ne ptr %t136, null
  br i1 %t137, label %bb44, label %bb45
bb44:
  %t139 = load ptr, ptr %l69, !tbaa !29
  %t140 = load i64, ptr %t139, !range !{i64 0, i64 8}
  %t142 = icmp eq i64 %t140, 2
  store i1 %t142, ptr %l70, !tbaa !21
  br label %bb45
bb45:
  %t143 = load i1, ptr %l70, !tbaa !21
  br i1 %t143, label %bb46, label %bb47
bb46:
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t146, i32 0, i32 2
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l7, !tbaa !29
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load ptr, ptr %l7, !tbaa !29
  %t155 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %t150, ptr %t151)
  store { i64, [2 x i64] } %t155, ptr %l78
  br label %bb49
bb49:
  %t156 = load { i64, [2 x i64] }, ptr %l78
  store { i64, [2 x i64] } %t156, ptr %l9
  br label %bb68
bb50:
  %t157 = load ptr, ptr %l1, !tbaa !29
  store ptr %t157, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t158 = load ptr, ptr %l79, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb51, label %bb52
bb51:
  %t161 = load ptr, ptr %l79, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 8}
  %t164 = icmp eq i64 %t162, 6
  store i1 %t164, ptr %l80, !tbaa !21
  br label %bb52
bb52:
  %t165 = load i1, ptr %l80, !tbaa !21
  br i1 %t165, label %bb53, label %bb54
bb53:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t168, i32 0, i32 3
  %t170 = load i32, ptr %t169
  store i32 %t170, ptr %l8, !tbaa !23
  br label %bb55
bb54:
  br label %bb63
bb55:
  %t172 = load i1, ptr %l2, !tbaa !21
  br i1 %t172, label %bb56, label %bb57
bb56:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/scope:Scoper", ptr %t174, i32 0, i32 113
  %t177 = load i32, ptr %l8, !tbaa !23
  %t179 = sext i32 %t177 to i64
  %t182 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t176, i64 %t179)
  %t183 = extractvalue { i32, { i64, [2 x i64] } } %t182, 1
  %t184 = extractvalue { i32, { i64, [2 x i64] } } %t182, 0
  store i32 %t184, ptr %l93
  %t185 = icmp ne i32 %t184, 0
  br i1 %t185, label %bb59, label %ok.186, !prof !99
ok.186:
  store { i64, [2 x i64] } %t183, ptr %l92
  br label %bb58
bb57:
  store { i64, [2 x i64] } zeroinitializer, ptr %t187
  %t188 = getelementptr { i64, [2 x i64] }, ptr %t187, i32 0, i32 0
  store i64 0, ptr %t188
  %t189 = load { i64, [2 x i64] }, ptr %t187
  store { i64, [2 x i64] } %t189, ptr %l86
  br label %bb62
bb58:
  %t191 = load { i64, [2 x i64] }, ptr %l92
  store { i64, [2 x i64] } %t191, ptr %l87
  br label %bb61
bb59:
  br label %bb60
bb60:
  store { i64, [2 x i64] } zeroinitializer, ptr %t192
  %t193 = getelementptr { i64, [2 x i64] }, ptr %t192, i32 0, i32 0
  store i64 0, ptr %t193
  %t194 = load { i64, [2 x i64] }, ptr %t192
  store { i64, [2 x i64] } %t194, ptr %l87
  br label %bb61
bb61:
  %t196 = load { i64, [2 x i64] }, ptr %l87
  store { i64, [2 x i64] } %t196, ptr %l86
  br label %bb62
bb62:
  %t197 = load { i64, [2 x i64] }, ptr %l86
  store { i64, [2 x i64] } %t197, ptr %l9
  br label %bb68
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  store { i64, [2 x i64] } zeroinitializer, ptr %t198
  %t199 = getelementptr { i64, [2 x i64] }, ptr %t198, i32 0, i32 0
  store i64 0, ptr %t199
  %t200 = load { i64, [2 x i64] }, ptr %t198
  store { i64, [2 x i64] } %t200, ptr %l9
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_7a4f424795892e70_52f604b9bdf9a7cc)
  unreachable
bb68:
  %t202 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t202, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l11 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l17 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 191
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 191
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 191
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp eq i64 %t13, 1
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 192
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t19)
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l11, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t22)
  store %"compiler/source:Span" %t24, ptr %l13
  br label %bb4
bb4:
  %t25 = load %"compiler/source:Span", ptr %l13
  %t26 = load ptr, ptr %l11, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 215
  store %"compiler/source:Span" %t25, ptr %t27
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v1, ptr %t28, ptr %t29, { i64, [2 x i64] } %a2)
  br label %bb6
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l17, !tbaa !29
  %t35 = load ptr, ptr %l17, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 191
  %t37 = load i64, ptr %t36, !tbaa !24
  %t39 = sub i64 %t37, 1
  %t41 = load ptr, ptr %l17, !tbaa !29
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 191
  store i64 %t39, ptr %t42, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 191
  %t46 = load i64, ptr %t45, !tbaa !24
  %t48 = icmp eq i64 %t46, 0
  br i1 %t48, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 213
  store i64 0, ptr %t52, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l11 = alloca %"compiler/typed:Local"
  %l15 = alloca i1
  %l18 = alloca i1
  %l19 = alloca ptr
  %l25 = alloca i1
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
  call void @__olang_check_failed(ptr @olang_loc_ef7f9cdde83b319d_c7773e471ac0d6b1)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 7
  %t18 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t14, i64 %a1)
  store %"compiler/typed:Local" %t18, ptr %l11
  br label %bb4
bb4:
  %t19 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 4
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 7}
  store i32 %t20, ptr %l2
  %t22 = load i32, ptr %l2, !range !{i32 0, i32 7}
  %t24 = trunc i64 0 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb14
bb6:
  %t27 = load i32, ptr %l2, !range !{i32 0, i32 7}
  %t29 = trunc i64 5 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l19, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 26
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  br i1 %t38, label %bb9, label %bb10
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb13
bb9:
  call void @__olang_check_failed(ptr @olang_loc_2a41cd82eb4d8236_be11ba524906eaaa)
  unreachable
bb10:
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %t40, i32 0, i32 26
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t44 = load ptr, ptr %l19, !tbaa !29
  %t46 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisLambda(ptr %v0, ptr %v0, ptr %t44, ptr %t43)
  store i1 %t46, ptr %l25
  br label %bb12
bb12:
  %t47 = load i1, ptr %l25, !tbaa !21
  store i1 %t47, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t48 = load i1, ptr %l18, !tbaa !21
  store i1 %t48, ptr %l15, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l15, !tbaa !21
  store i1 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eretake(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l50 = alloca i64
  %l54 = alloca %"compiler/typed:Plan"
  %l56 = alloca %"compiler/typed:Plan"
  %l58 = alloca ptr
  %l59 = alloca i64
  %l63 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca i64
  %l70 = alloca i1
  %l81 = alloca i64
  %l83 = alloca i64
  %l88 = alloca %"compiler/scope:Gap"
  %l96 = alloca i64
  %l98 = alloca i64
  %l103 = alloca i64
  %l111 = alloca i64
  %l113 = alloca i64
  %l118 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l124 = alloca ptr
  %t67 = alloca %"compiler/typed:Plan", align 8
  %t70 = alloca %"compiler/typed:Plan", align 8
  %t74 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l27, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l27, !tbaa !24
  store i64 %t31, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l24, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb19
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t51, ptr %l45, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i64, ptr %t55, i64 %t52
  %t57 = load i64, ptr %t56, !tbaa !34
  store i64 %t57, ptr %l9, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 2
  store ptr %t61, ptr %l49, !tbaa !29
  %t62 = load i64, ptr %l9, !tbaa !24
  store i64 %t62, ptr %l50, !tbaa !24
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/scope:compRun", ptr %t63, i32 0, i32 0
  %t66 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t67, ptr %v1, ptr %v1, ptr %t65, i64 %t66)
  call void @llvm.memmove.p0.p0.i64(ptr %l54, ptr %t67, i64 536, i1 false)
  br label %bb11
bb11:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t70, ptr %v1, ptr %l54)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t70, i64 536, i1 false)
  br label %bb12
bb12:
  %t72 = load ptr, ptr %l49, !tbaa !29
  %t73 = load i64, ptr %l50, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %l56, i64 536, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eSetAt_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %t72, i64 %t73, ptr %t74)
  br label %bb13
bb13:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t75, i32 0, i32 6
  store ptr %t77, ptr %l58, !tbaa !29
  %t78 = load i64, ptr %l9, !tbaa !24
  store i64 %t78, ptr %l59, !tbaa !24
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/scope:compRun", ptr %t79, i32 0, i32 1
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v1, ptr %v1, ptr %t81, i64 %t82)
  store ptr %t85, ptr %l63
  br label %bb14
bb14:
  %t86 = load ptr, ptr %l58, !tbaa !29
  %t87 = load i64, ptr %l59, !tbaa !24
  %t88 = load ptr, ptr %l63, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hdd18cd18fee7da2cefbfd21396944747(ptr %v0, ptr %v1, ptr %t86, i64 %t87, ptr %t88)
  br label %bb15
bb15:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/scope:Scoper", ptr %t89, i32 0, i32 12
  store ptr %t91, ptr %l65, !tbaa !29
  %t92 = load i64, ptr %l9, !tbaa !24
  store i64 %t92, ptr %l66, !tbaa !24
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr %"compiler/scope:compRun", ptr %t93, i32 0, i32 2
  %t96 = load i64, ptr %l8, !tbaa !24
  %t99 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t95, i64 %t96)
  store i1 %t99, ptr %l70
  br label %bb16
bb16:
  %t100 = load ptr, ptr %l65, !tbaa !29
  %t101 = load i64, ptr %l66, !tbaa !24
  %t102 = load i1, ptr %l70, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t100, i64 %t101, i1 %t102)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t103 = load i64, ptr %l7, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l7, !tbaa !24
  br label %bb7
bb19:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/scope:Scoper", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/load:Loader", ptr %t113, i32 0, i32 4
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr %"compiler/scope:compRun", ptr %t117, i32 0, i32 3
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReplay(ptr %v0, ptr %v1, ptr %t116, ptr %t119)
  br label %bb20
bb20:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/scope:compRun", ptr %t122, i32 0, i32 4
  store ptr %t124, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb21
bb21:
  %t126 = load i64, ptr %l11, !tbaa !24
  store i64 %t126, ptr %l81, !tbaa !24
  %t127 = load ptr, ptr %l10, !tbaa !29
  %t129 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eLen_3ccompiler_2fscope_3aGap_3e(ptr %v1, ptr %t127)
  store i64 %t129, ptr %l83
  br label %bb22
bb22:
  %t130 = load i64, ptr %l81, !tbaa !24
  %t131 = load i64, ptr %l83, !tbaa !24
  %t132 = icmp slt i64 %t130, %t131
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb23, label %bb24
bb23:
  br label %bb29
bb24:
  br label %bb25
bb25:
  %t136 = load ptr, ptr %l10, !tbaa !29
  %t137 = load i64, ptr %l11, !tbaa !24
  %t140 = call %"compiler/scope:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eAt_3ccompiler_2fscope_3aGap_3e(ptr %v1, ptr %v1, ptr %t136, i64 %t137)
  store %"compiler/scope:Gap" %t140, ptr %l88
  br label %bb26
bb26:
  %t141 = load %"compiler/scope:Gap", ptr %l88
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/scope:Scoper", ptr %t142, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2ePush_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %v1, ptr %t144, %"compiler/scope:Gap" %t141)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t148 = load i64, ptr %l11, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l11, !tbaa !24
  br label %bb21
bb29:
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr %"compiler/scope:compRun", ptr %t152, i32 0, i32 5
  store ptr %t154, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb30
bb30:
  %t156 = load i64, ptr %l14, !tbaa !24
  store i64 %t156, ptr %l96, !tbaa !24
  %t157 = load ptr, ptr %l13, !tbaa !29
  %t159 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t157)
  store i64 %t159, ptr %l98
  br label %bb31
bb31:
  %t160 = load i64, ptr %l96, !tbaa !24
  %t161 = load i64, ptr %l98, !tbaa !24
  %t162 = icmp slt i64 %t160, %t161
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb32, label %bb33
bb32:
  br label %bb38
bb33:
  br label %bb34
bb34:
  %t166 = load ptr, ptr %l13, !tbaa !29
  %t167 = load i64, ptr %l14, !tbaa !24
  %t170 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t166, i64 %t167)
  store i64 %t170, ptr %l103
  br label %bb35
bb35:
  %t171 = load i64, ptr %l103, !tbaa !24
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/scope:Scoper", ptr %t172, i32 0, i32 221
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t174, i64 %t171, i1 true)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t178 = load i64, ptr %l14, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l14, !tbaa !24
  br label %bb30
bb38:
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t184 = getelementptr %"compiler/scope:compRun", ptr %t182, i32 0, i32 6
  store ptr %t184, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb39
bb39:
  %t186 = load i64, ptr %l17, !tbaa !24
  store i64 %t186, ptr %l111, !tbaa !24
  %t187 = load ptr, ptr %l16, !tbaa !29
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v1, ptr %t187)
  store i64 %t189, ptr %l113
  br label %bb40
bb40:
  %t190 = load i64, ptr %l111, !tbaa !24
  %t191 = load i64, ptr %l113, !tbaa !24
  %t192 = icmp slt i64 %t190, %t191
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb41, label %bb42
bb41:
  br label %bb47
bb42:
  br label %bb43
bb43:
  %t196 = load ptr, ptr %l16, !tbaa !29
  %t197 = load i64, ptr %l17, !tbaa !24
  %t200 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v1, ptr %t196, i64 %t197)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t200, ptr %l118
  br label %bb44
bb44:
  %t201 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l118
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/scope:Scoper", ptr %t202, i32 0, i32 222
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t204, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t201, i1 true)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t208 = load i64, ptr %l17, !tbaa !24
  %t210 = add i64 %t208, 1
  store i64 %t210, ptr %l17, !tbaa !24
  br label %bb39
bb47:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l124, !tbaa !29
  %t213 = load ptr, ptr %l124, !tbaa !29
  %t214 = getelementptr %"compiler/scope:Scoper", ptr %t213, i32 0, i32 218
  %t215 = load i64, ptr %t214, !tbaa !24
  %t216 = load ptr, ptr %l1, !tbaa !29
  %t218 = getelementptr %"compiler/scope:compRun", ptr %t216, i32 0, i32 7
  %t219 = load i64, ptr %t218, !tbaa !24
  %t222 = add i64 %t215, %t219
  %t224 = load ptr, ptr %l124, !tbaa !29
  %t225 = getelementptr %"compiler/scope:Scoper", ptr %t224, i32 0, i32 218
  store i64 %t222, ptr %t225, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l4 = alloca ptr
  %l8 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t20 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 150
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 27
  %t7 = load i64, ptr %t6, !tbaa !24
  %t11 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t7, i64 %a1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t13 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  %t14 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %t12, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t13)
  %t15 = extractvalue { i32, { i64, [2 x i64] } } %t14, 1
  %t16 = extractvalue { i32, { i64, [2 x i64] } } %t14, 0
  store i32 %t16, ptr %l10
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb3, label %ok.18, !prof !99
ok.18:
  store { i64, [2 x i64] } %t15, ptr %l9
  br label %bb2
bb2:
  %t19 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t19, ptr %l2
  br label %bb5
bb3:
  br label %bb4
bb4:
  store { i64, [2 x i64] } zeroinitializer, ptr %t20
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 0
  store i64 0, ptr %t21
  %t22 = load { i64, [2 x i64] }, ptr %t20
  store { i64, [2 x i64] } %t22, ptr %l2
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t24 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i32
  %l14 = alloca { i64, [2 x i64] }
  %l19 = alloca i32
  %l22 = alloca i1
  %l27 = alloca i32
  %l31 = alloca { i64, [2 x i64] }
  %l34 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i32, ptr %l4, !tbaa !23
  store i32 %t4, ptr %l2, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t17 = trunc i64 20 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb3, label %bb4
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store { i64, [2 x i64] } %t24, ptr %l14
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t25 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t25, ptr %rv
  br label %ret
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l19
  br label %bb7
bb7:
  %t36 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t38 = trunc i64 19 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l27
  br label %bb10
bb9:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb11
bb10:
  %t51 = load i32, ptr %l27, !tbaa !23
  %t52 = icmp eq i32 %t51, 0
  store i1 %t52, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t54 = load i1, ptr %l22, !tbaa !21
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t59 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %t55, ptr %t56)
  store { i64, [2 x i64] } %t59, ptr %l31
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t60 = load { i64, [2 x i64] }, ptr %l31
  store { i64, [2 x i64] } %t60, ptr %rv
  br label %ret
bb15:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t65 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %t61, ptr %t62)
  store { i64, [2 x i64] } %t65, ptr %l34
  br label %bb16
bb16:
  %t66 = load { i64, [2 x i64] }, ptr %l34
  store { i64, [2 x i64] } %t66, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l67 = alloca ptr
  %l70 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i1
  %l102 = alloca ptr
  %l103 = alloca i1
  %l110 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l124 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l151 = alloca ptr
  %l152 = alloca i1
  %l159 = alloca ptr
  %l160 = alloca i1
  %l175 = alloca i64
  %l178 = alloca i64
  %l197 = alloca { i64, ptr }
  %l202 = alloca i1
  %l205 = alloca i1
  %l209 = alloca i1
  %l217 = alloca ptr
  %l218 = alloca i1
  %l235 = alloca { i64, ptr }
  %l244 = alloca ptr
  %l245 = alloca i1
  %l263 = alloca ptr
  %l264 = alloca i1
  %l278 = alloca { i64, ptr }
  %l283 = alloca i1
  %l285 = alloca i1
  %l287 = alloca i1
  %l290 = alloca i1
  %l297 = alloca ptr
  %l298 = alloca i1
  %l317 = alloca ptr
  %l318 = alloca i1
  %l331 = alloca { i64, ptr }
  %l347 = alloca ptr
  %l348 = alloca i1
  %l361 = alloca { i64, ptr }
  %l381 = alloca { i64, ptr }
  %l394 = alloca ptr
  %l395 = alloca i1
  %l412 = alloca { i64, ptr }
  %l430 = alloca { i64, ptr }
  %l441 = alloca ptr
  %l442 = alloca i1
  %l447 = alloca ptr
  %l448 = alloca i1
  %l460 = alloca { i64, ptr }
  %l469 = alloca ptr
  %l470 = alloca i1
  %l478 = alloca ptr
  %l479 = alloca i1
  %l492 = alloca { i64, ptr }
  %l495 = alloca ptr
  %l496 = alloca i1
  %l499 = alloca i1
  %l503 = alloca i1
  %l506 = alloca i1
  %l516 = alloca ptr
  %l517 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 139
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l70, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l70, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t12 = load ptr, ptr %l73, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l73, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 18}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l74, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l74, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t21 = load ptr, ptr %l77, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb11, label %bb12
bb11:
  %t24 = load ptr, ptr %l77, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 1
  store i1 %t27, ptr %l78, !tbaa !21
  br label %bb12
bb12:
  %t28 = load i1, ptr %l78, !tbaa !21
  br i1 %t28, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb302
bb16:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t30 = load ptr, ptr %l81, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb17, label %bb18
bb17:
  %t33 = load ptr, ptr %l81, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 18}
  %t36 = icmp eq i64 %t34, 2
  store i1 %t36, ptr %l82, !tbaa !21
  br label %bb18
bb18:
  %t37 = load i1, ptr %l82, !tbaa !21
  br i1 %t37, label %bb19, label %bb20
bb19:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb30
bb21:
  %t44 = load i1, ptr %l2, !tbaa !21
  br i1 %t44, label %bb22, label %bb23
bb22:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t50 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  store i1 %t50, ptr %l91
  br label %bb24
bb23:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb25
bb24:
  %t51 = load i1, ptr %l91, !tbaa !21
  store i1 %t51, ptr %l88, !tbaa !21
  br label %bb25
bb25:
  %t52 = load i1, ptr %l88, !tbaa !21
  br i1 %t52, label %bb26, label %bb27
bb26:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 139
  store i1 true, ptr %t55, !tbaa !21
  br label %ret
bb27:
  br label %bb28
bb28:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l3, !tbaa !29
  %t58 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t56, ptr %t57, i1 %t58)
  br label %bb29
bb29:
  br label %bb302
bb30:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l96, !tbaa !29
  store i1 false, ptr %l97, !tbaa !21
  %t63 = load ptr, ptr %l96, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb31, label %bb32
bb31:
  %t66 = load ptr, ptr %l96, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 18}
  %t69 = icmp eq i64 %t67, 3
  store i1 %t69, ptr %l97, !tbaa !21
  br label %bb32
bb32:
  %t70 = load i1, ptr %l97, !tbaa !21
  br i1 %t70, label %bb33, label %bb34
bb33:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l4, !tbaa !29
  br label %bb39
bb34:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l102, !tbaa !29
  store i1 false, ptr %l103, !tbaa !21
  %t78 = load ptr, ptr %l102, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb35, label %bb36
bb35:
  %t81 = load ptr, ptr %l102, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 18}
  %t84 = icmp eq i64 %t82, 4
  store i1 %t84, ptr %l103, !tbaa !21
  br label %bb36
bb36:
  %t85 = load i1, ptr %l103, !tbaa !21
  br i1 %t85, label %bb37, label %bb38
bb37:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l4, !tbaa !29
  br label %bb39
bb38:
  br label %bb45
bb39:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t96 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %t92, ptr %t93)
  store i1 %t96, ptr %l110
  br label %bb40
bb40:
  %t97 = load i1, ptr %l110, !tbaa !21
  br i1 %t97, label %bb41, label %bb42
bb41:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/scope:Scoper", ptr %t98, i32 0, i32 139
  store i1 true, ptr %t100, !tbaa !21
  br label %ret
bb42:
  br label %bb43
bb43:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l4, !tbaa !29
  %t103 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t101, ptr %t102, i1 %t103)
  br label %bb44
bb44:
  br label %bb302
bb45:
  %t107 = load ptr, ptr %l1, !tbaa !29
  store ptr %t107, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t108 = load ptr, ptr %l115, !tbaa !29
  %t109 = icmp ne ptr %t108, null
  br i1 %t109, label %bb46, label %bb47
bb46:
  %t111 = load ptr, ptr %l115, !tbaa !29
  %t112 = load i64, ptr %t111, !range !{i64 0, i64 18}
  %t114 = icmp eq i64 %t112, 10
  store i1 %t114, ptr %l116, !tbaa !21
  br label %bb47
bb47:
  %t115 = load i1, ptr %l116, !tbaa !21
  br i1 %t115, label %bb48, label %bb49
bb48:
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr { i64, [5 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t118, i32 0, i32 2
  %t120 = load ptr, ptr %t119
  store ptr %t120, ptr %l5, !tbaa !29
  br label %bb50
bb49:
  br label %bb58
bb50:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l5, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Slice", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t129 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %t122, ptr %t126)
  store i1 %t129, ptr %l124
  br label %bb51
bb51:
  %t130 = load i1, ptr %l124, !tbaa !21
  br i1 %t130, label %bb52, label %bb53
bb52:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/scope:Scoper", ptr %t131, i32 0, i32 139
  store i1 true, ptr %t133, !tbaa !21
  br label %ret
bb53:
  br label %bb54
bb54:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l5, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Slice", ptr %t135, i32 0, i32 0
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t139 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %t134, ptr %t138, i1 %t139)
  br label %bb55
bb55:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l5, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Slice", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t143, ptr %t147, i1 %t149)
  br label %bb56
bb56:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l5, !tbaa !29
  %t156 = getelementptr %"compiler/typed:Slice", ptr %t154, i32 0, i32 2
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t153, ptr %t157, i1 %t159)
  br label %bb57
bb57:
  br label %bb302
bb58:
  %t163 = load ptr, ptr %l1, !tbaa !29
  store ptr %t163, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t164 = load ptr, ptr %l140, !tbaa !29
  %t165 = icmp ne ptr %t164, null
  br i1 %t165, label %bb59, label %bb60
bb59:
  %t167 = load ptr, ptr %l140, !tbaa !29
  %t168 = load i64, ptr %t167, !range !{i64 0, i64 18}
  %t170 = icmp eq i64 %t168, 5
  store i1 %t170, ptr %l141, !tbaa !21
  br label %bb60
bb60:
  %t171 = load i1, ptr %l141, !tbaa !21
  br i1 %t171, label %bb61, label %bb62
bb61:
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = getelementptr { i64, [5 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t174, i32 0, i32 2
  %t176 = load ptr, ptr %t175
  store ptr %t176, ptr %l6, !tbaa !29
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load ptr, ptr %l6, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Promote", ptr %t179, i32 0, i32 0
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t178, ptr %t182, i1 %t184)
  br label %bb64
bb64:
  br label %bb302
bb65:
  %t188 = load ptr, ptr %l1, !tbaa !29
  store ptr %t188, ptr %l151, !tbaa !29
  store i1 false, ptr %l152, !tbaa !21
  %t189 = load ptr, ptr %l151, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb66, label %bb67
bb66:
  %t192 = load ptr, ptr %l151, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 18}
  %t195 = icmp eq i64 %t193, 6
  store i1 %t195, ptr %l152, !tbaa !21
  br label %bb67
bb67:
  %t196 = load i1, ptr %l152, !tbaa !21
  br i1 %t196, label %bb68, label %bb69
bb68:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr { i64, [5 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t199, i32 0, i32 2
  %t201 = load ptr, ptr %t200
  store ptr %t201, ptr %l7, !tbaa !29
  br label %bb70
bb69:
  br label %bb107
bb70:
  %t203 = load ptr, ptr %l7, !tbaa !29
  %t205 = getelementptr %"compiler/typed:Call", ptr %t203, i32 0, i32 0
  %t206 = load ptr, ptr %t205, !tbaa !29
  store ptr %t206, ptr %l8, !tbaa !29
  %t208 = load ptr, ptr %l8, !tbaa !29
  store ptr %t208, ptr %l159, !tbaa !29
  store i1 false, ptr %l160, !tbaa !21
  %t209 = load ptr, ptr %l159, !tbaa !29
  %t210 = icmp ne ptr %t209, null
  br i1 %t210, label %bb71, label %bb72
bb71:
  %t212 = load ptr, ptr %l159, !tbaa !29
  %t213 = load i64, ptr %t212, !range !{i64 0, i64 5}
  %t215 = icmp eq i64 %t213, 2
  store i1 %t215, ptr %l160, !tbaa !21
  br label %bb72
bb72:
  %t216 = load i1, ptr %l160, !tbaa !21
  br i1 %t216, label %bb73, label %bb74
bb73:
  %t217 = load ptr, ptr %l8, !tbaa !29
  %t219 = getelementptr { i64, [3 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { ptr }, ptr %t219, i32 0, i32 0
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l9, !tbaa !29
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load ptr, ptr %l9, !tbaa !29
  %t226 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t223, ptr %t224, i1 %t226)
  br label %bb76
bb76:
  br label %bb82
bb77:
  br i1 true, label %bb78, label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_df5619edc5954020_95eed2e83037cdb4)
  unreachable
bb82:
  store i64 0, ptr %l10, !tbaa !24
  %t230 = load ptr, ptr %l7, !tbaa !29
  %t232 = getelementptr %"compiler/typed:Call", ptr %t230, i32 0, i32 1
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t233, 0
  store i64 %t235, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t237 = load i64, ptr %l11, !tbaa !24
  %t238 = load i64, ptr %l10, !tbaa !24
  %t241 = icmp sgt i64 %t237, %t238
  br i1 %t241, label %bb83, label %bb84
bb83:
  %t243 = load i64, ptr %l12, !tbaa !24
  %t245 = icmp sgt i64 %t243, 0
  br i1 %t245, label %bb85, label %bb86
bb84:
  store i64 0, ptr %l175, !tbaa !24
  br label %bb88
bb85:
  %t247 = load i64, ptr %l11, !tbaa !24
  %t248 = load i64, ptr %l10, !tbaa !24
  %t251 = sub i64 %t247, %t248
  %t252 = load i64, ptr %l12, !tbaa !24
  %t255 = add i64 %t251, %t252
  %t257 = sub i64 %t255, 1
  %t258 = load i64, ptr %l12, !tbaa !24
  %t261 = sdiv i64 %t257, %t258
  store i64 %t261, ptr %l178, !tbaa !24
  br label %bb87
bb86:
  store i64 0, ptr %l178, !tbaa !24
  br label %bb87
bb87:
  %t263 = load i64, ptr %l178, !tbaa !24
  store i64 %t263, ptr %l175, !tbaa !24
  br label %bb88
bb88:
  %t264 = load i64, ptr %l175, !tbaa !24
  store i64 %t264, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb89
bb89:
  %t265 = load i64, ptr %l14, !tbaa !24
  %t266 = load i64, ptr %l13, !tbaa !24
  %t269 = icmp slt i64 %t265, %t266
  %t271 = xor i1 %t269, true
  br i1 %t271, label %bb90, label %bb91
bb90:
  br label %bb106
bb91:
  br label %bb92
bb92:
  %t273 = load i64, ptr %l10, !tbaa !24
  %t274 = load i64, ptr %l14, !tbaa !24
  %t275 = load i64, ptr %l12, !tbaa !24
  %t278 = mul i64 %t274, %t275
  %t281 = add i64 %t273, %t278
  store i64 %t281, ptr %l15, !tbaa !24
  %t283 = load ptr, ptr %l7, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Call", ptr %t283, i32 0, i32 1
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  store { i64, ptr } %t286, ptr %l197, !tbaa !27
  %t287 = load i64, ptr %l15, !tbaa !24
  %t289 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr ptr, ptr %t290, i64 %t287
  %t292 = load ptr, ptr %t291, !tbaa !39
  store ptr %t292, ptr %l16, !tbaa !29
  %t294 = load i1, ptr %l2, !tbaa !21
  %t296 = xor i1 %t294, true
  br i1 %t296, label %bb93, label %bb94
bb93:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load ptr, ptr %l16, !tbaa !29
  %t302 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %t298, ptr %t299)
  store i1 %t302, ptr %l205
  br label %bb95
bb94:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb96
bb95:
  %t303 = load i1, ptr %l205, !tbaa !21
  store i1 %t303, ptr %l202, !tbaa !21
  br label %bb96
bb96:
  %t304 = load i1, ptr %l202, !tbaa !21
  br i1 %t304, label %bb97, label %bb98
bb97:
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load ptr, ptr %l7, !tbaa !29
  %t307 = load i64, ptr %l15, !tbaa !24
  %t311 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %t305, ptr %t306, i64 %t307)
  store i1 %t311, ptr %l209
  br label %bb99
bb98:
  br label %bb103
bb99:
  %t312 = load i1, ptr %l209, !tbaa !21
  br i1 %t312, label %bb100, label %bb101
bb100:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/scope:Scoper", ptr %t313, i32 0, i32 139
  store i1 true, ptr %t315, !tbaa !21
  br label %bb102
bb101:
  br label %bb102
bb102:
  br label %bb105
bb103:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load ptr, ptr %l16, !tbaa !29
  %t319 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t316, ptr %t317, i1 %t319)
  br label %bb104
bb104:
  br label %bb105
bb105:
  %t323 = load i64, ptr %l14, !tbaa !24
  %t325 = add i64 %t323, 1
  store i64 %t325, ptr %l14, !tbaa !24
  br label %bb89
bb106:
  br label %bb302
bb107:
  %t327 = load ptr, ptr %l1, !tbaa !29
  store ptr %t327, ptr %l217, !tbaa !29
  store i1 false, ptr %l218, !tbaa !21
  %t328 = load ptr, ptr %l217, !tbaa !29
  %t329 = icmp ne ptr %t328, null
  br i1 %t329, label %bb108, label %bb109
bb108:
  %t331 = load ptr, ptr %l217, !tbaa !29
  %t332 = load i64, ptr %t331, !range !{i64 0, i64 18}
  %t334 = icmp eq i64 %t332, 7
  store i1 %t334, ptr %l218, !tbaa !21
  br label %bb109
bb109:
  %t335 = load i1, ptr %l218, !tbaa !21
  br i1 %t335, label %bb110, label %bb111
bb110:
  %t336 = load ptr, ptr %l1, !tbaa !29
  %t338 = getelementptr { i64, [5 x i64] }, ptr %t336, i32 0, i32 1
  %t339 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t338, i32 0, i32 2
  %t340 = load ptr, ptr %t339
  store ptr %t340, ptr %l17, !tbaa !29
  br label %bb112
bb111:
  br label %bb121
bb112:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l17, !tbaa !29
  %t345 = getelementptr %"compiler/typed:Make", ptr %t343, i32 0, i32 3
  %t346 = load ptr, ptr %t345, !tbaa !29
  %t347 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t342, ptr %t346, i1 %t347)
  br label %bb113
bb113:
  %t351 = load ptr, ptr %l17, !tbaa !29
  %t353 = getelementptr %"compiler/typed:Make", ptr %t351, i32 0, i32 2
  %t354 = load { i64, ptr }, ptr %t353, !tbaa !27
  store { i64, ptr } %t354, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t356 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t358 = extractvalue { i64, ptr } %t356, 0
  store i64 %t358, ptr %l20, !tbaa !24
  br label %bb114
bb114:
  %t360 = load i64, ptr %l19, !tbaa !24
  %t361 = load i64, ptr %l20, !tbaa !24
  %t364 = icmp slt i64 %t360, %t361
  %t366 = xor i1 %t364, true
  br i1 %t366, label %bb115, label %bb116
bb115:
  br label %bb120
bb116:
  br label %bb117
bb117:
  %t368 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t368, ptr %l235, !tbaa !27
  %t369 = load i64, ptr %l19, !tbaa !24
  %t371 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = getelementptr ptr, ptr %t372, i64 %t369
  %t374 = load ptr, ptr %t373, !tbaa !39
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t376, ptr %t374, i1 %t379)
  br label %bb118
bb118:
  br label %bb119
bb119:
  %t383 = load i64, ptr %l19, !tbaa !24
  %t385 = add i64 %t383, 1
  store i64 %t385, ptr %l19, !tbaa !24
  br label %bb114
bb120:
  br label %bb302
bb121:
  %t387 = load ptr, ptr %l1, !tbaa !29
  store ptr %t387, ptr %l244, !tbaa !29
  store i1 false, ptr %l245, !tbaa !21
  %t388 = load ptr, ptr %l244, !tbaa !29
  %t389 = icmp ne ptr %t388, null
  br i1 %t389, label %bb122, label %bb123
bb122:
  %t391 = load ptr, ptr %l244, !tbaa !29
  %t392 = load i64, ptr %t391, !range !{i64 0, i64 18}
  %t394 = icmp eq i64 %t392, 8
  store i1 %t394, ptr %l245, !tbaa !21
  br label %bb123
bb123:
  %t395 = load i1, ptr %l245, !tbaa !21
  br i1 %t395, label %bb124, label %bb125
bb124:
  %t396 = load ptr, ptr %l1, !tbaa !29
  %t398 = getelementptr { i64, [5 x i64] }, ptr %t396, i32 0, i32 1
  %t399 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t398, i32 0, i32 2
  %t400 = load ptr, ptr %t399
  store ptr %t400, ptr %l22, !tbaa !29
  br label %bb126
bb125:
  br label %bb133
bb126:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t403 = load ptr, ptr %l22, !tbaa !29
  %t405 = getelementptr %"compiler/typed:Collect", ptr %t403, i32 0, i32 0
  %t406 = load ptr, ptr %t405, !tbaa !29
  %t407 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t402, ptr %t406, i1 %t407)
  br label %bb127
bb127:
  %t411 = load i1, ptr %l2, !tbaa !21
  br i1 %t411, label %bb128, label %bb129
bb128:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t414 = load ptr, ptr %l22, !tbaa !29
  %t416 = getelementptr %"compiler/typed:Collect", ptr %t414, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t413, ptr %t417)
  br label %bb130
bb129:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load ptr, ptr %l22, !tbaa !29
  %t424 = getelementptr %"compiler/typed:Collect", ptr %t422, i32 0, i32 1
  %t425 = load ptr, ptr %t424, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t421, ptr %t425)
  br label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb132
bb132:
  br label %bb302
bb133:
  %t429 = load ptr, ptr %l1, !tbaa !29
  store ptr %t429, ptr %l263, !tbaa !29
  store i1 false, ptr %l264, !tbaa !21
  %t430 = load ptr, ptr %l263, !tbaa !29
  %t431 = icmp ne ptr %t430, null
  br i1 %t431, label %bb134, label %bb135
bb134:
  %t433 = load ptr, ptr %l263, !tbaa !29
  %t434 = load i64, ptr %t433, !range !{i64 0, i64 18}
  %t436 = icmp eq i64 %t434, 9
  store i1 %t436, ptr %l264, !tbaa !21
  br label %bb135
bb135:
  %t437 = load i1, ptr %l264, !tbaa !21
  br i1 %t437, label %bb136, label %bb137
bb136:
  %t438 = load ptr, ptr %l1, !tbaa !29
  %t440 = getelementptr { i64, [5 x i64] }, ptr %t438, i32 0, i32 1
  %t441 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t440, i32 0, i32 2
  %t442 = load i32, ptr %t441, !range !{i32 0, i32 52}
  store i32 %t442, ptr %l23
  %t444 = load ptr, ptr %l1, !tbaa !29
  %t446 = getelementptr { i64, [5 x i64] }, ptr %t444, i32 0, i32 1
  %t447 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t446, i32 0, i32 4
  %t448 = load { i64, ptr }, ptr %t447
  store { i64, ptr } %t448, ptr %l24, !tbaa !27
  br label %bb138
bb137:
  br label %bb157
bb138:
  %t450 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t450, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t452 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t454 = extractvalue { i64, ptr } %t452, 0
  store i64 %t454, ptr %l27, !tbaa !24
  br label %bb139
bb139:
  %t456 = load i64, ptr %l26, !tbaa !24
  %t457 = load i64, ptr %l27, !tbaa !24
  %t460 = icmp slt i64 %t456, %t457
  %t462 = xor i1 %t460, true
  br i1 %t462, label %bb140, label %bb141
bb140:
  br label %bb156
bb141:
  br label %bb142
bb142:
  %t464 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t464, ptr %l278, !tbaa !27
  %t465 = load i64, ptr %l26, !tbaa !24
  %t467 = getelementptr { i64, ptr }, ptr %l278, i32 0, i32 1
  %t468 = load ptr, ptr %t467, !tbaa !27
  %t469 = getelementptr ptr, ptr %t468, i64 %t465
  %t470 = load ptr, ptr %t469, !tbaa !39
  store ptr %t470, ptr %l28, !tbaa !29
  %t472 = load i1, ptr %l2, !tbaa !21
  %t474 = xor i1 %t472, true
  br i1 %t474, label %bb143, label %bb144
bb143:
  %t476 = load i32, ptr %l23, !range !{i32 0, i32 52}
  %t478 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t476)
  store i1 %t478, ptr %l285
  br label %bb145
bb144:
  store i1 false, ptr %l283, !tbaa !21
  br label %bb146
bb145:
  %t479 = load i1, ptr %l285, !tbaa !21
  %t480 = xor i1 %t479, true
  store i1 %t480, ptr %l283, !tbaa !21
  br label %bb146
bb146:
  %t482 = load i1, ptr %l283, !tbaa !21
  br i1 %t482, label %bb147, label %bb148
bb147:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load ptr, ptr %l28, !tbaa !29
  %t487 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %t483, ptr %t484)
  store i1 %t487, ptr %l290
  br label %bb149
bb148:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb150
bb149:
  %t488 = load i1, ptr %l290, !tbaa !21
  store i1 %t488, ptr %l287, !tbaa !21
  br label %bb150
bb150:
  %t489 = load i1, ptr %l287, !tbaa !21
  br i1 %t489, label %bb151, label %bb152
bb151:
  br label %bb155
bb152:
  br label %bb153
bb153:
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t491 = load ptr, ptr %l28, !tbaa !29
  %t493 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t490, ptr %t491, i1 %t493)
  br label %bb154
bb154:
  br label %bb155
bb155:
  %t497 = load i64, ptr %l26, !tbaa !24
  %t499 = add i64 %t497, 1
  store i64 %t499, ptr %l26, !tbaa !24
  br label %bb139
bb156:
  br label %bb302
bb157:
  %t501 = load ptr, ptr %l1, !tbaa !29
  store ptr %t501, ptr %l297, !tbaa !29
  store i1 false, ptr %l298, !tbaa !21
  %t502 = load ptr, ptr %l297, !tbaa !29
  %t503 = icmp ne ptr %t502, null
  br i1 %t503, label %bb158, label %bb159
bb158:
  %t505 = load ptr, ptr %l297, !tbaa !29
  %t506 = load i64, ptr %t505, !range !{i64 0, i64 18}
  %t508 = icmp eq i64 %t506, 11
  store i1 %t508, ptr %l298, !tbaa !21
  br label %bb159
bb159:
  %t509 = load i1, ptr %l298, !tbaa !21
  br i1 %t509, label %bb160, label %bb161
bb160:
  %t510 = load ptr, ptr %l1, !tbaa !29
  %t512 = getelementptr { i64, [5 x i64] }, ptr %t510, i32 0, i32 1
  %t513 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t512, i32 0, i32 2
  %t514 = load ptr, ptr %t513
  store ptr %t514, ptr %l29, !tbaa !29
  br label %bb162
bb161:
  br label %bb166
bb162:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load ptr, ptr %l29, !tbaa !29
  %t519 = getelementptr %"compiler/typed:Cond", ptr %t517, i32 0, i32 0
  %t520 = load ptr, ptr %t519, !tbaa !29
  %t522 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t516, ptr %t520, i1 %t522)
  br label %bb163
bb163:
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t527 = load ptr, ptr %l29, !tbaa !29
  %t529 = getelementptr %"compiler/typed:Cond", ptr %t527, i32 0, i32 1
  %t530 = load ptr, ptr %t529, !tbaa !29
  %t531 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t526, ptr %t530, i1 %t531)
  br label %bb164
bb164:
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t536 = load ptr, ptr %l29, !tbaa !29
  %t538 = getelementptr %"compiler/typed:Cond", ptr %t536, i32 0, i32 2
  %t539 = load ptr, ptr %t538, !tbaa !29
  %t541 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t535, ptr %t539, i1 %t541)
  br label %bb165
bb165:
  br label %bb302
bb166:
  %t545 = load ptr, ptr %l1, !tbaa !29
  store ptr %t545, ptr %l317, !tbaa !29
  store i1 false, ptr %l318, !tbaa !21
  %t546 = load ptr, ptr %l317, !tbaa !29
  %t547 = icmp ne ptr %t546, null
  br i1 %t547, label %bb167, label %bb168
bb167:
  %t549 = load ptr, ptr %l317, !tbaa !29
  %t550 = load i64, ptr %t549, !range !{i64 0, i64 18}
  %t552 = icmp eq i64 %t550, 12
  store i1 %t552, ptr %l318, !tbaa !21
  br label %bb168
bb168:
  %t553 = load i1, ptr %l318, !tbaa !21
  br i1 %t553, label %bb169, label %bb170
bb169:
  %t554 = load ptr, ptr %l1, !tbaa !29
  %t556 = getelementptr { i64, [5 x i64] }, ptr %t554, i32 0, i32 1
  %t557 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t556, i32 0, i32 2
  %t558 = load ptr, ptr %t557
  store ptr %t558, ptr %l30, !tbaa !29
  br label %bb171
bb170:
  br label %bb184
bb171:
  %t560 = load ptr, ptr %l30, !tbaa !29
  %t562 = getelementptr %"compiler/typed:Seq", ptr %t560, i32 0, i32 0
  %t563 = load { i64, ptr }, ptr %t562, !tbaa !27
  store { i64, ptr } %t563, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t565 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t567 = extractvalue { i64, ptr } %t565, 0
  store i64 %t567, ptr %l33, !tbaa !24
  br label %bb172
bb172:
  %t569 = load i64, ptr %l32, !tbaa !24
  %t570 = load i64, ptr %l33, !tbaa !24
  %t573 = icmp slt i64 %t569, %t570
  %t575 = xor i1 %t573, true
  br i1 %t575, label %bb173, label %bb174
bb173:
  br label %bb182
bb174:
  br label %bb175
bb175:
  %t577 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t577, ptr %l331, !tbaa !27
  %t578 = load i64, ptr %l32, !tbaa !24
  %t580 = getelementptr { i64, ptr }, ptr %l331, i32 0, i32 1
  %t581 = load ptr, ptr %t580, !tbaa !27
  %t582 = getelementptr ptr, ptr %t581, i64 %t578
  %t583 = load ptr, ptr %t582, !tbaa !39
  store ptr %t583, ptr %l34, !tbaa !29
  %t585 = load i1, ptr %l2, !tbaa !21
  br i1 %t585, label %bb176, label %bb177
bb176:
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t588 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictStmt(ptr %v0, ptr %v1, ptr %t587, ptr %t588)
  br label %bb178
bb177:
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t593 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %t592, ptr %t593)
  br label %bb179
bb178:
  br label %bb180
bb179:
  br label %bb180
bb180:
  br label %bb181
bb181:
  %t597 = load i64, ptr %l32, !tbaa !24
  %t599 = add i64 %t597, 1
  store i64 %t599, ptr %l32, !tbaa !24
  br label %bb172
bb182:
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t602 = load ptr, ptr %l30, !tbaa !29
  %t604 = getelementptr %"compiler/typed:Seq", ptr %t602, i32 0, i32 1
  %t605 = load ptr, ptr %t604, !tbaa !29
  %t606 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t601, ptr %t605, i1 %t606)
  br label %bb183
bb183:
  br label %bb302
bb184:
  %t610 = load ptr, ptr %l1, !tbaa !29
  store ptr %t610, ptr %l347, !tbaa !29
  store i1 false, ptr %l348, !tbaa !21
  %t611 = load ptr, ptr %l347, !tbaa !29
  %t612 = icmp ne ptr %t611, null
  br i1 %t612, label %bb185, label %bb186
bb185:
  %t614 = load ptr, ptr %l347, !tbaa !29
  %t615 = load i64, ptr %t614, !range !{i64 0, i64 18}
  %t617 = icmp eq i64 %t615, 13
  store i1 %t617, ptr %l348, !tbaa !21
  br label %bb186
bb186:
  %t618 = load i1, ptr %l348, !tbaa !21
  br i1 %t618, label %bb187, label %bb188
bb187:
  %t619 = load ptr, ptr %l1, !tbaa !29
  %t621 = getelementptr { i64, [5 x i64] }, ptr %t619, i32 0, i32 1
  %t622 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t621, i32 0, i32 2
  %t623 = load ptr, ptr %t622
  store ptr %t623, ptr %l35, !tbaa !29
  br label %bb189
bb188:
  br label %bb209
bb189:
  %t625 = load ptr, ptr %l35, !tbaa !29
  %t627 = getelementptr %"compiler/typed:Match", ptr %t625, i32 0, i32 0
  %t628 = load { i64, ptr }, ptr %t627, !tbaa !27
  store { i64, ptr } %t628, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  %t630 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t632 = extractvalue { i64, ptr } %t630, 0
  store i64 %t632, ptr %l38, !tbaa !24
  br label %bb190
bb190:
  %t634 = load i64, ptr %l37, !tbaa !24
  %t635 = load i64, ptr %l38, !tbaa !24
  %t638 = icmp slt i64 %t634, %t635
  %t640 = xor i1 %t638, true
  br i1 %t640, label %bb191, label %bb192
bb191:
  br label %bb200
bb192:
  br label %bb193
bb193:
  %t642 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t642, ptr %l361, !tbaa !27
  %t643 = load i64, ptr %l37, !tbaa !24
  %t645 = getelementptr { i64, ptr }, ptr %l361, i32 0, i32 1
  %t646 = load ptr, ptr %t645, !tbaa !27
  %t647 = getelementptr ptr, ptr %t646, i64 %t643
  %t648 = load ptr, ptr %t647, !tbaa !39
  store ptr %t648, ptr %l39, !tbaa !29
  %t650 = load i1, ptr %l2, !tbaa !21
  br i1 %t650, label %bb194, label %bb195
bb194:
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t653 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictStmt(ptr %v0, ptr %v1, ptr %t652, ptr %t653)
  br label %bb196
bb195:
  %t657 = load ptr, ptr %l0, !tbaa !29
  %t658 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %t657, ptr %t658)
  br label %bb197
bb196:
  br label %bb198
bb197:
  br label %bb198
bb198:
  br label %bb199
bb199:
  %t662 = load i64, ptr %l37, !tbaa !24
  %t664 = add i64 %t662, 1
  store i64 %t664, ptr %l37, !tbaa !24
  br label %bb190
bb200:
  %t666 = load ptr, ptr %l35, !tbaa !29
  %t668 = getelementptr %"compiler/typed:Match", ptr %t666, i32 0, i32 1
  %t669 = load { i64, ptr }, ptr %t668, !tbaa !27
  store { i64, ptr } %t669, ptr %l40, !tbaa !27
  store i64 0, ptr %l41, !tbaa !24
  %t671 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t673 = extractvalue { i64, ptr } %t671, 0
  store i64 %t673, ptr %l42, !tbaa !24
  br label %bb201
bb201:
  %t675 = load i64, ptr %l41, !tbaa !24
  %t676 = load i64, ptr %l42, !tbaa !24
  %t679 = icmp slt i64 %t675, %t676
  %t681 = xor i1 %t679, true
  br i1 %t681, label %bb202, label %bb203
bb202:
  br label %bb207
bb203:
  br label %bb204
bb204:
  %t683 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t683, ptr %l381, !tbaa !27
  %t684 = load i64, ptr %l41, !tbaa !24
  %t686 = getelementptr { i64, ptr }, ptr %l381, i32 0, i32 1
  %t687 = load ptr, ptr %t686, !tbaa !27
  %t688 = getelementptr ptr, ptr %t687, i64 %t684
  %t689 = load ptr, ptr %t688, !tbaa !39
  %t691 = load ptr, ptr %l0, !tbaa !29
  %t694 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleArm(ptr %v0, ptr %v1, ptr %t691, ptr %t689, i1 %t694)
  br label %bb205
bb205:
  br label %bb206
bb206:
  %t698 = load i64, ptr %l41, !tbaa !24
  %t700 = add i64 %t698, 1
  store i64 %t700, ptr %l41, !tbaa !24
  br label %bb201
bb207:
  %t702 = load ptr, ptr %l0, !tbaa !29
  %t703 = load ptr, ptr %l35, !tbaa !29
  %t705 = getelementptr %"compiler/typed:Match", ptr %t703, i32 0, i32 2
  %t706 = load ptr, ptr %t705, !tbaa !29
  %t707 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleArm(ptr %v0, ptr %v1, ptr %t702, ptr %t706, i1 %t707)
  br label %bb208
bb208:
  br label %bb302
bb209:
  %t711 = load ptr, ptr %l1, !tbaa !29
  store ptr %t711, ptr %l394, !tbaa !29
  store i1 false, ptr %l395, !tbaa !21
  %t712 = load ptr, ptr %l394, !tbaa !29
  %t713 = icmp ne ptr %t712, null
  br i1 %t713, label %bb210, label %bb211
bb210:
  %t715 = load ptr, ptr %l394, !tbaa !29
  %t716 = load i64, ptr %t715, !range !{i64 0, i64 18}
  %t718 = icmp eq i64 %t716, 14
  store i1 %t718, ptr %l395, !tbaa !21
  br label %bb211
bb211:
  %t719 = load i1, ptr %l395, !tbaa !21
  br i1 %t719, label %bb212, label %bb213
bb212:
  %t720 = load ptr, ptr %l1, !tbaa !29
  %t722 = getelementptr { i64, [5 x i64] }, ptr %t720, i32 0, i32 1
  %t723 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t722, i32 0, i32 2
  %t724 = load ptr, ptr %t723
  store ptr %t724, ptr %l44, !tbaa !29
  br label %bb214
bb213:
  br label %bb234
bb214:
  %t726 = load ptr, ptr %l0, !tbaa !29
  %t727 = load ptr, ptr %l44, !tbaa !29
  %t729 = getelementptr %"compiler/typed:Try", ptr %t727, i32 0, i32 0
  %t730 = load ptr, ptr %t729, !tbaa !29
  %t731 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t726, ptr %t730, i1 %t731)
  br label %bb215
bb215:
  %t735 = load ptr, ptr %l44, !tbaa !29
  %t737 = getelementptr %"compiler/typed:Try", ptr %t735, i32 0, i32 1
  %t738 = load { i64, ptr }, ptr %t737, !tbaa !27
  store { i64, ptr } %t738, ptr %l45, !tbaa !27
  store i64 0, ptr %l46, !tbaa !24
  %t740 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t742 = extractvalue { i64, ptr } %t740, 0
  store i64 %t742, ptr %l47, !tbaa !24
  br label %bb216
bb216:
  %t744 = load i64, ptr %l46, !tbaa !24
  %t745 = load i64, ptr %l47, !tbaa !24
  %t748 = icmp slt i64 %t744, %t745
  %t750 = xor i1 %t748, true
  br i1 %t750, label %bb217, label %bb218
bb217:
  br label %bb233
bb218:
  br label %bb219
bb219:
  %t752 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t752, ptr %l412, !tbaa !27
  %t753 = load i64, ptr %l46, !tbaa !24
  %t755 = getelementptr { i64, ptr }, ptr %l412, i32 0, i32 1
  %t756 = load ptr, ptr %t755, !tbaa !27
  %t757 = getelementptr ptr, ptr %t756, i64 %t753
  %t758 = load ptr, ptr %t757, !tbaa !39
  store ptr %t758, ptr %l48, !tbaa !29
  %t760 = load i1, ptr %l2, !tbaa !21
  br i1 %t760, label %bb220, label %bb221
bb220:
  %t762 = load ptr, ptr %l0, !tbaa !29
  %t763 = load ptr, ptr %l48, !tbaa !29
  %t765 = getelementptr %"compiler/typed:Clause", ptr %t763, i32 0, i32 3
  %t766 = load ptr, ptr %t765, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t762, ptr %t766)
  br label %bb222
bb221:
  %t769 = load ptr, ptr %l0, !tbaa !29
  %t770 = load ptr, ptr %l48, !tbaa !29
  %t772 = getelementptr %"compiler/typed:Clause", ptr %t770, i32 0, i32 3
  %t773 = load ptr, ptr %t772, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t769, ptr %t773)
  br label %bb223
bb222:
  br label %bb224
bb223:
  br label %bb224
bb224:
  %t776 = load ptr, ptr %l48, !tbaa !29
  %t778 = getelementptr %"compiler/typed:Clause", ptr %t776, i32 0, i32 4
  %t779 = load { i64, ptr }, ptr %t778, !tbaa !27
  store { i64, ptr } %t779, ptr %l49, !tbaa !27
  store i64 0, ptr %l50, !tbaa !24
  %t781 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t783 = extractvalue { i64, ptr } %t781, 0
  store i64 %t783, ptr %l51, !tbaa !24
  br label %bb225
bb225:
  %t785 = load i64, ptr %l50, !tbaa !24
  %t786 = load i64, ptr %l51, !tbaa !24
  %t789 = icmp slt i64 %t785, %t786
  %t791 = xor i1 %t789, true
  br i1 %t791, label %bb226, label %bb227
bb226:
  br label %bb231
bb227:
  br label %bb228
bb228:
  %t793 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t793, ptr %l430, !tbaa !27
  %t794 = load i64, ptr %l50, !tbaa !24
  %t796 = getelementptr { i64, ptr }, ptr %l430, i32 0, i32 1
  %t797 = load ptr, ptr %t796, !tbaa !27
  %t798 = getelementptr ptr, ptr %t797, i64 %t794
  %t799 = load ptr, ptr %t798, !tbaa !39
  %t801 = load ptr, ptr %l0, !tbaa !29
  %t804 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t801, ptr %t799, i1 %t804)
  br label %bb229
bb229:
  br label %bb230
bb230:
  %t808 = load i64, ptr %l50, !tbaa !24
  %t810 = add i64 %t808, 1
  store i64 %t810, ptr %l50, !tbaa !24
  br label %bb225
bb231:
  br label %bb232
bb232:
  %t812 = load i64, ptr %l46, !tbaa !24
  %t814 = add i64 %t812, 1
  store i64 %t814, ptr %l46, !tbaa !24
  br label %bb216
bb233:
  br label %bb302
bb234:
  %t816 = load ptr, ptr %l1, !tbaa !29
  store ptr %t816, ptr %l441, !tbaa !29
  store i1 false, ptr %l442, !tbaa !21
  %t817 = load ptr, ptr %l441, !tbaa !29
  %t818 = icmp ne ptr %t817, null
  br i1 %t818, label %bb235, label %bb236
bb235:
  %t820 = load ptr, ptr %l441, !tbaa !29
  %t821 = load i64, ptr %t820, !range !{i64 0, i64 18}
  %t823 = icmp eq i64 %t821, 15
  store i1 %t823, ptr %l442, !tbaa !21
  br label %bb236
bb236:
  %t824 = load i1, ptr %l442, !tbaa !21
  br i1 %t824, label %bb237, label %bb238
bb237:
  %t825 = load ptr, ptr %l1, !tbaa !29
  %t827 = getelementptr { i64, [5 x i64] }, ptr %t825, i32 0, i32 1
  %t828 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t827, i32 0, i32 2
  %t829 = load ptr, ptr %t828
  store ptr %t829, ptr %l53, !tbaa !29
  br label %bb239
bb238:
  br label %bb265
bb239:
  %t831 = load ptr, ptr %l53, !tbaa !29
  store ptr %t831, ptr %l447, !tbaa !29
  store i1 false, ptr %l448, !tbaa !21
  %t832 = load ptr, ptr %l447, !tbaa !29
  %t833 = icmp ne ptr %t832, null
  br i1 %t833, label %bb240, label %bb241
bb240:
  %t835 = load ptr, ptr %l447, !tbaa !29
  %t836 = load i64, ptr %t835, !range !{i64 0, i64 3}
  %t838 = icmp eq i64 %t836, 1
  store i1 %t838, ptr %l448, !tbaa !21
  br label %bb241
bb241:
  %t839 = load i1, ptr %l448, !tbaa !21
  br i1 %t839, label %bb242, label %bb243
bb242:
  %t840 = load ptr, ptr %l53, !tbaa !29
  %t842 = getelementptr { i64, [4 x i64] }, ptr %t840, i32 0, i32 1
  %t843 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t842, i32 0, i32 1
  %t844 = load { i64, ptr }, ptr %t843
  store { i64, ptr } %t844, ptr %l54, !tbaa !27
  br label %bb244
bb243:
  br label %bb252
bb244:
  %t846 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t846, ptr %l55, !tbaa !27
  store i64 0, ptr %l56, !tbaa !24
  %t848 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t850 = extractvalue { i64, ptr } %t848, 0
  store i64 %t850, ptr %l57, !tbaa !24
  br label %bb245
bb245:
  %t852 = load i64, ptr %l56, !tbaa !24
  %t853 = load i64, ptr %l57, !tbaa !24
  %t856 = icmp slt i64 %t852, %t853
  %t858 = xor i1 %t856, true
  br i1 %t858, label %bb246, label %bb247
bb246:
  br label %bb251
bb247:
  br label %bb248
bb248:
  %t860 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t860, ptr %l460, !tbaa !27
  %t861 = load i64, ptr %l56, !tbaa !24
  %t863 = getelementptr { i64, ptr }, ptr %l460, i32 0, i32 1
  %t864 = load ptr, ptr %t863, !tbaa !27
  %t865 = getelementptr ptr, ptr %t864, i64 %t861
  %t866 = load ptr, ptr %t865, !tbaa !39
  %t868 = load ptr, ptr %l0, !tbaa !29
  %t871 = getelementptr %"compiler/typed:Capture", ptr %t866, i32 0, i32 1
  %t872 = load ptr, ptr %t871, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t868, ptr %t872, i1 true)
  br label %bb249
bb249:
  br label %bb250
bb250:
  %t876 = load i64, ptr %l56, !tbaa !24
  %t878 = add i64 %t876, 1
  store i64 %t878, ptr %l56, !tbaa !24
  br label %bb245
bb251:
  br label %bb264
bb252:
  %t880 = load ptr, ptr %l53, !tbaa !29
  store ptr %t880, ptr %l469, !tbaa !29
  store i1 false, ptr %l470, !tbaa !21
  %t881 = load ptr, ptr %l469, !tbaa !29
  %t882 = icmp ne ptr %t881, null
  br i1 %t882, label %bb253, label %bb254
bb253:
  %t884 = load ptr, ptr %l469, !tbaa !29
  %t885 = load i64, ptr %t884, !range !{i64 0, i64 3}
  %t887 = icmp eq i64 %t885, 2
  store i1 %t887, ptr %l470, !tbaa !21
  br label %bb254
bb254:
  %t888 = load i1, ptr %l470, !tbaa !21
  br i1 %t888, label %bb255, label %bb256
bb255:
  %t889 = load ptr, ptr %l53, !tbaa !29
  %t891 = getelementptr { i64, [4 x i64] }, ptr %t889, i32 0, i32 1
  %t892 = getelementptr { i32, ptr, i32 }, ptr %t891, i32 0, i32 1
  %t893 = load ptr, ptr %t892
  store ptr %t893, ptr %l59, !tbaa !29
  br label %bb257
bb256:
  br label %bb259
bb257:
  %t895 = load ptr, ptr %l0, !tbaa !29
  %t896 = load ptr, ptr %l59, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t895, ptr %t896, i1 true)
  br label %bb258
bb258:
  br label %bb264
bb259:
  br i1 true, label %bb260, label %bb261
bb260:
  br label %bb262
bb261:
  br label %bb263
bb262:
  br label %bb264
bb263:
  call void @__olang_check_failed(ptr @olang_loc_80a42f326454c431_eaf1445ab36ad4e5)
  unreachable
bb264:
  br label %bb302
bb265:
  %t900 = load ptr, ptr %l1, !tbaa !29
  store ptr %t900, ptr %l478, !tbaa !29
  store i1 false, ptr %l479, !tbaa !21
  %t901 = load ptr, ptr %l478, !tbaa !29
  %t902 = icmp ne ptr %t901, null
  br i1 %t902, label %bb266, label %bb267
bb266:
  %t904 = load ptr, ptr %l478, !tbaa !29
  %t905 = load i64, ptr %t904, !range !{i64 0, i64 18}
  %t907 = icmp eq i64 %t905, 16
  store i1 %t907, ptr %l479, !tbaa !21
  br label %bb267
bb267:
  %t908 = load i1, ptr %l479, !tbaa !21
  br i1 %t908, label %bb268, label %bb269
bb268:
  %t909 = load ptr, ptr %l1, !tbaa !29
  %t911 = getelementptr { i64, [5 x i64] }, ptr %t909, i32 0, i32 1
  %t912 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t911, i32 0, i32 2
  %t913 = load ptr, ptr %t912
  store ptr %t913, ptr %l60, !tbaa !29
  br label %bb270
bb269:
  br label %bb290
bb270:
  %t915 = load ptr, ptr %l60, !tbaa !29
  %t917 = getelementptr %"compiler/typed:Text", ptr %t915, i32 0, i32 0
  %t918 = load { i64, ptr }, ptr %t917, !tbaa !27
  store { i64, ptr } %t918, ptr %l61, !tbaa !27
  store i64 0, ptr %l62, !tbaa !24
  %t920 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t922 = extractvalue { i64, ptr } %t920, 0
  store i64 %t922, ptr %l63, !tbaa !24
  br label %bb271
bb271:
  %t924 = load i64, ptr %l62, !tbaa !24
  %t925 = load i64, ptr %l63, !tbaa !24
  %t928 = icmp slt i64 %t924, %t925
  %t930 = xor i1 %t928, true
  br i1 %t930, label %bb272, label %bb273
bb272:
  br label %bb289
bb273:
  br label %bb274
bb274:
  %t932 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t932, ptr %l492, !tbaa !27
  %t933 = load i64, ptr %l62, !tbaa !24
  %t935 = getelementptr { i64, ptr }, ptr %l492, i32 0, i32 1
  %t936 = load ptr, ptr %t935, !tbaa !27
  %t937 = getelementptr ptr, ptr %t936, i64 %t933
  %t938 = load ptr, ptr %t937, !tbaa !39
  store ptr %t938, ptr %l64, !tbaa !29
  %t940 = load ptr, ptr %l64, !tbaa !29
  store ptr %t940, ptr %l495, !tbaa !29
  store i1 false, ptr %l496, !tbaa !21
  %t941 = load ptr, ptr %l495, !tbaa !29
  %t942 = icmp ne ptr %t941, null
  br i1 %t942, label %bb275, label %bb276
bb275:
  %t944 = load ptr, ptr %l495, !tbaa !29
  %t945 = load i64, ptr %t944, !range !{i64 0, i64 2}
  %t947 = icmp eq i64 %t945, 1
  store i1 %t947, ptr %l496, !tbaa !21
  br label %bb276
bb276:
  %t948 = load i1, ptr %l496, !tbaa !21
  br i1 %t948, label %bb277, label %bb278
bb277:
  %t949 = load ptr, ptr %l64, !tbaa !29
  %t951 = getelementptr { i64, [2 x i64] }, ptr %t949, i32 0, i32 1
  %t952 = getelementptr { ptr }, ptr %t951, i32 0, i32 0
  %t953 = load ptr, ptr %t952
  store ptr %t953, ptr %l65, !tbaa !29
  %t955 = load i1, ptr %l2, !tbaa !21
  br i1 %t955, label %bb279, label %bb280
bb278:
  store i1 false, ptr %l499, !tbaa !21
  br label %bb283
bb279:
  store i1 true, ptr %l503, !tbaa !21
  br label %bb282
bb280:
  %t957 = load ptr, ptr %l0, !tbaa !29
  %t958 = load ptr, ptr %l65, !tbaa !29
  %t961 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %t957, ptr %t958)
  store i1 %t961, ptr %l506
  br label %bb281
bb281:
  %t962 = load i1, ptr %l506, !tbaa !21
  %t963 = xor i1 %t962, true
  store i1 %t963, ptr %l503, !tbaa !21
  br label %bb282
bb282:
  %t965 = load i1, ptr %l503, !tbaa !21
  store i1 %t965, ptr %l499, !tbaa !21
  br label %bb283
bb283:
  %t966 = load i1, ptr %l499, !tbaa !21
  br i1 %t966, label %bb284, label %bb285
bb284:
  %t967 = load ptr, ptr %l64, !tbaa !29
  %t969 = getelementptr { i64, [2 x i64] }, ptr %t967, i32 0, i32 1
  %t970 = getelementptr { ptr }, ptr %t969, i32 0, i32 0
  %t971 = load ptr, ptr %t970
  %t973 = load ptr, ptr %l0, !tbaa !29
  %t976 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t973, ptr %t971, i1 %t976)
  br label %bb286
bb285:
  br label %bb287
bb286:
  br label %bb287
bb287:
  br label %bb288
bb288:
  %t980 = load i64, ptr %l62, !tbaa !24
  %t982 = add i64 %t980, 1
  store i64 %t982, ptr %l62, !tbaa !24
  br label %bb271
bb289:
  br label %bb302
bb290:
  %t984 = load ptr, ptr %l1, !tbaa !29
  store ptr %t984, ptr %l516, !tbaa !29
  store i1 false, ptr %l517, !tbaa !21
  %t985 = load ptr, ptr %l516, !tbaa !29
  %t986 = icmp ne ptr %t985, null
  br i1 %t986, label %bb291, label %bb292
bb291:
  %t988 = load ptr, ptr %l516, !tbaa !29
  %t989 = load i64, ptr %t988, !range !{i64 0, i64 18}
  %t991 = icmp eq i64 %t989, 17
  store i1 %t991, ptr %l517, !tbaa !21
  br label %bb292
bb292:
  %t992 = load i1, ptr %l517, !tbaa !21
  br i1 %t992, label %bb293, label %bb294
bb293:
  %t993 = load ptr, ptr %l1, !tbaa !29
  %t995 = getelementptr { i64, [5 x i64] }, ptr %t993, i32 0, i32 1
  %t996 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t995, i32 0, i32 2
  %t997 = load ptr, ptr %t996
  store ptr %t997, ptr %l67, !tbaa !29
  br label %bb295
bb294:
  br label %bb297
bb295:
  %t999 = load ptr, ptr %l0, !tbaa !29
  %t1000 = load ptr, ptr %l67, !tbaa !29
  %t1002 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t999, ptr %t1000, i1 %t1002)
  br label %bb296
bb296:
  br label %bb302
bb297:
  br i1 true, label %bb298, label %bb299
bb298:
  br label %bb300
bb299:
  br label %bb301
bb300:
  %t1006 = load ptr, ptr %l0, !tbaa !29
  %t1008 = getelementptr %"compiler/scope:Scoper", ptr %t1006, i32 0, i32 139
  store i1 true, ptr %t1008, !tbaa !21
  br label %bb302
bb301:
  call void @__olang_check_failed(ptr @olang_loc_fdb46d1d9262e41a_919c32215229332e)
  unreachable
bb302:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i64
  %l12 = alloca i32
  %l19 = alloca i64
  %l23 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i1
  %l30 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i1
  %l43 = alloca i1
  %l55 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i32
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca i32
  %l82 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i32
  %l89 = alloca i64
  %s7 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load i32, ptr %l12, !range !{i32 0, i32 33}
  store i32 %t11, ptr %l2
  %t12 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t14 = trunc i64 20 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb13
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t22, i32 %t23)
  store i64 %t26, ptr %l19
  br label %bb5
bb5:
  %t27 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t28 = load i64, ptr %l19, !tbaa !24
  %t30 = and i64 %t28, %t27
  %t32 = icmp eq i64 %t30, 0
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l28
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t45 = load ptr, ptr %l23, !tbaa !29
  %t46 = load i32, ptr %l28, !tbaa !23
  %t47 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsAt(ptr %v0, ptr %t45, i32 %t46, i1 false)
  store i1 %t47, ptr %l29
  br label %bb9
bb9:
  %t48 = load i1, ptr %l29, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
bb10:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l30, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l35
  br label %bb11
bb11:
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t61 = load i32, ptr %l35, !tbaa !23
  %t62 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignableHolds(ptr %v0, ptr %t60, i32 %t61)
  store i1 %t62, ptr %l36
  br label %bb12
bb12:
  %t63 = load i1, ptr %l36, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
bb13:
  %t64 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t66 = trunc i64 21 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/scope:Scoper", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t75 = load i32, ptr %l1, !tbaa !23
  %t78 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsHome(ptr %v0, ptr %t74, i32 %t75)
  store i1 %t78, ptr %l43
  br label %bb17
bb17:
  %t79 = load i1, ptr %l43, !tbaa !21
  store i1 %t79, ptr %rv
  br label %ret
bb18:
  %t80 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t82 = trunc i64 18 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb19, label %bb20
bb19:
  br label %bb29
bb20:
  %t85 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t87 = trunc i64 22 to i32
  %t88 = icmp eq i32 %t85, %t87
  br i1 %t88, label %bb21, label %bb22
bb21:
  br label %bb29
bb22:
  %t90 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t92 = trunc i64 23 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb23, label %bb24
bb23:
  br label %bb29
bb24:
  %t95 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t97 = trunc i64 19 to i32
  %t98 = icmp eq i32 %t95, %t97
  br i1 %t98, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  %t100 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t102 = trunc i64 24 to i32
  %t103 = icmp eq i32 %t100, %t102
  br i1 %t103, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb35
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
  call void @__olang_check_failed(ptr @olang_loc_fab9d5262c098304_b0d84a3f5fe3aa00)
  unreachable
bb35:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 9
  %t109 = load i32, ptr %l1, !tbaa !23
  %t112 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t108, i32 %t109)
  %t113 = extractvalue { i32, i64 } %t112, 1
  %t114 = extractvalue { i32, i64 } %t112, 0
  store i32 %t114, ptr %l60
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb37, label %ok.116, !prof !99
ok.116:
  store i64 %t113, ptr %l59
  br label %bb36
bb36:
  %t117 = load i64, ptr %l59, !tbaa !24
  store i64 %t117, ptr %l55, !tbaa !24
  br label %bb39
bb37:
  br label %bb38
bb38:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb39
bb39:
  %t118 = load i64, ptr %l55, !tbaa !24
  store i64 %t118, ptr %l3, !tbaa !24
  %t119 = load i64, ptr %l3, !tbaa !24
  %t121 = icmp ne i64 %t119, 0
  br i1 %t121, label %bb40, label %bb41
bb40:
  %t123 = load i64, ptr %l3, !tbaa !24
  %t125 = icmp eq i64 %t123, 3
  store i1 %t125, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/scope:Scoper", ptr %t127, i32 0, i32 9
  %t130 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t129, i32 %t130, i64 1)
  br label %bb43
bb43:
  store i1 false, ptr %l4, !tbaa !21
  store %olang.scope zeroinitializer, ptr %s7
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l1, !tbaa !23
  %t137 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparts(ptr %v0, ptr %s7, ptr %t133, i32 %t134)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t137, ptr %l70
  br label %bb44
bb44:
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  %t139 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %t139
  store ptr %t139, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb45
bb45:
  %t141 = load i64, ptr %l6, !tbaa !24
  store i64 %t141, ptr %l72, !tbaa !24
  %t142 = load ptr, ptr %l5, !tbaa !29
  %t144 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s7, ptr %t142)
  store i64 %t144, ptr %l74
  br label %bb46
bb46:
  %t145 = load i64, ptr %l72, !tbaa !24
  %t146 = load i64, ptr %l74, !tbaa !24
  %t147 = icmp slt i64 %t145, %t146
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb47, label %bb48
bb47:
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t151 = load ptr, ptr %l5, !tbaa !29
  %t152 = load i64, ptr %l6, !tbaa !24
  %t155 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s7, ptr %t151, i64 %t152)
  store i32 %t155, ptr %l79
  br label %bb50
bb50:
  %t156 = load i32, ptr %l79, !tbaa !23
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t161 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t157, i32 %t156)
  store i1 %t161, ptr %l82
  br label %bb51
bb51:
  %t162 = load i1, ptr %l82, !tbaa !21
  br i1 %t162, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb54
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t163 = load i64, ptr %l6, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l6, !tbaa !24
  br label %bb45
bb56:
  call void @__olang_scope_close(ptr %s7)
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/scope:Scoper", ptr %t167, i32 0, i32 9
  store ptr %t169, ptr %l86, !tbaa !29
  %t170 = load i32, ptr %l1, !tbaa !23
  store i32 %t170, ptr %l87, !tbaa !23
  %t171 = load i1, ptr %l4, !tbaa !21
  br i1 %t171, label %bb57, label %bb58
bb57:
  store i64 3, ptr %l89, !tbaa !24
  br label %bb59
bb58:
  store i64 2, ptr %l89, !tbaa !24
  br label %bb59
bb59:
  %t173 = load ptr, ptr %l86, !tbaa !29
  %t174 = load i32, ptr %l87, !tbaa !23
  %t175 = load i64, ptr %l89, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t173, i32 %t174, i64 %t175)
  br label %bb60
bb60:
  %t176 = load i1, ptr %l4, !tbaa !21
  store i1 %t176, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakenLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l39 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t11 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t6, ptr %t7)
  store ptr %t11, ptr %l12
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l12, !tbaa !29
  store ptr %t12, ptr %l2, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  store ptr %t13, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t14 = load ptr, ptr %l14, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l14, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 18}
  %t20 = icmp eq i64 %t18, 12
  store i1 %t20, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l3, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Seq", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t35 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakenLocal(ptr %v0, ptr %s0, ptr %t28, ptr %t32)
  store i64 %t35, ptr %l23
  br label %bb10
bb10:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l13, !tbaa !24
  br label %bb30
bb11:
  %t37 = load ptr, ptr %l2, !tbaa !29
  store ptr %t37, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t38 = load ptr, ptr %l24, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l24, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 18}
  %t44 = icmp eq i64 %t42, 4
  store i1 %t44, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l25, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t54 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s0, ptr %t52)
  store i64 %t54, ptr %l31
  br label %bb17
bb17:
  %t55 = load i64, ptr %l31, !tbaa !24
  store i64 %t55, ptr %l13, !tbaa !24
  br label %bb30
bb18:
  %t56 = load ptr, ptr %l2, !tbaa !29
  store ptr %t56, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t57 = load ptr, ptr %l32, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t60 = load ptr, ptr %l32, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 18}
  %t63 = icmp eq i64 %t61, 2
  store i1 %t63, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t64 = load i1, ptr %l33, !tbaa !21
  br i1 %t64, label %bb21, label %bb22
bb21:
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s0, ptr %t71)
  store i64 %t73, ptr %l39
  br label %bb24
bb24:
  %t74 = load i64, ptr %l39, !tbaa !24
  store i64 %t74, ptr %l13, !tbaa !24
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i64 -1, ptr %l13, !tbaa !24
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_c86c049519105f0c_80ba46eb618cd650)
  unreachable
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load i64, ptr %l13, !tbaa !24
  store i64 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca %"compiler/scope:Val"
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca { i64, [2 x i64] }
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca i32
  %l23 = alloca %"compiler/scope:Val"
  %l27 = alloca { i64, [2 x i64] }
  %l29 = alloca i1
  %l30 = alloca { i64, [2 x i64] }
  %l33 = alloca { i64, [2 x i64] }
  %l38 = alloca i1
  %l39 = alloca i1
  %l47 = alloca { i64, ptr }
  %l53 = alloca { i64, [2 x i64] }
  %l58 = alloca i1
  %l59 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i1
  %l63 = alloca i1
  %l66 = alloca ptr
  %l69 = alloca i1
  %l72 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t15 = alloca { i64, [2 x i64] }, align 8
  %t30 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 113
  %t4 = load i32, ptr %l2, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t9 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %t3, i64 %t6)
  %t10 = extractvalue { i32, { i64, [2 x i64] } } %t9, 1
  %t11 = extractvalue { i32, { i64, [2 x i64] } } %t9, 0
  store i32 %t11, ptr %l13
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store { i64, [2 x i64] } %t10, ptr %l12
  br label %bb1
bb1:
  %t14 = load { i64, [2 x i64] }, ptr %l12
  store { i64, [2 x i64] } %t14, ptr %l7
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, [2 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [2 x i64] }, ptr %t15, i32 0, i32 0
  store i64 6, ptr %t16
  %t17 = load { i64, [2 x i64] }, ptr %t15
  store { i64, [2 x i64] } %t17, ptr %l7
  br label %bb4
bb4:
  %t19 = load { i64, [2 x i64] }, ptr %l7
  store { i64, [2 x i64] } %t19, ptr %l3
  %t20 = load { i64, [2 x i64] }, ptr %l3
  %t22 = extractvalue { i64, [2 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 6
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load { i64, [2 x i64] }, ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t27, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t30
  %t31 = getelementptr { i64, [2 x i64] }, ptr %t30, i32 0, i32 0
  store i64 0, ptr %t31
  %t32 = load { i64, [2 x i64] }, ptr %t30
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 115
  store { i64, [2 x i64] } %t32, ptr %t35
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t40 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempVal(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  store %"compiler/scope:Val" %t40, ptr %l23
  br label %bb8
bb8:
  %t41 = load %"compiler/scope:Val", ptr %l23
  store %"compiler/scope:Val" %t41, ptr %l4
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t45 = sext i32 %t43 to i64
  %t48 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t42, i64 %t45)
  store { i64, [2 x i64] } %t48, ptr %l27
  br label %bb9
bb9:
  %t49 = load { i64, [2 x i64] }, ptr %l27
  store { i64, [2 x i64] } %t49, ptr %l5
  %t50 = load { i64, [2 x i64] }, ptr %l5
  %t52 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t50)
  store i1 %t52, ptr %l29
  br label %bb10
bb10:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb11, label %bb12
bb11:
  %t54 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t54, ptr %l30
  br label %bb14
bb12:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t56)
  store { i64, [2 x i64] } %t58, ptr %l33
  br label %bb13
bb13:
  %t59 = load { i64, [2 x i64] }, ptr %l33
  store { i64, [2 x i64] } %t59, ptr %l30
  br label %bb14
bb14:
  %t60 = load { i64, [2 x i64] }, ptr %l30
  store { i64, [2 x i64] } %t60, ptr %l6
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l2, !tbaa !23
  %t63 = load { i64, [2 x i64] }, ptr %l6
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t61, i32 %t62, { i64, [2 x i64] } %t63)
  br label %bb15
bb15:
  %t67 = load { i64, [2 x i64] }, ptr %l5
  %t69 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t67)
  store i1 %t69, ptr %l38
  br label %bb16
bb16:
  %t70 = load i1, ptr %l38, !tbaa !21
  br i1 %t70, label %bb17, label %bb18
bb17:
  %t71 = load i32, ptr %l2, !tbaa !23
  %t73 = sext i32 %t71 to i64
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 33
  %t77 = getelementptr %"compiler/typed:Plan", ptr %t76, i32 0, i32 4
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t83 = icmp slt i64 %t73, %t80
  store i1 %t83, ptr %l39, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l39, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/scope:Scoper", ptr %t86, i32 0, i32 33
  %t89 = getelementptr %"compiler/typed:Plan", ptr %t88, i32 0, i32 4
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  store { i64, ptr } %t90, ptr %l47, !tbaa !27
  %t91 = load i32, ptr %l2, !tbaa !23
  %t93 = sext i32 %t91 to i64
  %t95 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i1, ptr %t96, i64 %t93
  store i1 true, ptr %t97, !tbaa !31
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t98 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 1
  %t99 = load { i64, [2 x i64] }, ptr %t98
  %t101 = extractvalue { i64, [2 x i64] } %t99, 0
  %t102 = icmp eq i64 %t101, 0
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 1
  %t107 = load { i64, [2 x i64] }, ptr %t106
  store { i64, [2 x i64] } %t107, ptr %l53
  br label %bb25
bb24:
  %t109 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t109, ptr %l53
  br label %bb25
bb25:
  %t111 = load { i64, [2 x i64] }, ptr %l53
  store { i64, [2 x i64] } %t111, ptr %l3
  %t112 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 1
  %t113 = load { i64, [2 x i64] }, ptr %t112
  %t115 = extractvalue { i64, [2 x i64] } %t113, 0
  %t116 = icmp eq i64 %t115, 0
  br i1 %t116, label %bb26, label %bb27
bb26:
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l59, !tbaa !29
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t119)
  store i32 %t121, ptr %l61
  br label %bb28
bb27:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb30
bb28:
  %t122 = load ptr, ptr %l59, !tbaa !29
  %t123 = load i32, ptr %l61, !tbaa !23
  %t124 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t122, i32 %t123)
  store i1 %t124, ptr %l62
  br label %bb29
bb29:
  %t125 = load i1, ptr %l62, !tbaa !21
  store i1 %t125, ptr %l58, !tbaa !21
  br label %bb30
bb30:
  %t126 = load i1, ptr %l58, !tbaa !21
  br i1 %t126, label %bb31, label %bb32
bb31:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t130 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %s0, ptr %t127)
  store ptr %t130, ptr %l66
  br label %bb33
bb32:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb34
bb33:
  %t131 = load ptr, ptr %l66, !tbaa !29
  %t132 = icmp eq ptr %t131, null
  %t134 = xor i1 %t132, true
  store i1 %t134, ptr %l63, !tbaa !21
  br label %bb34
bb34:
  %t136 = load i1, ptr %l63, !tbaa !21
  br i1 %t136, label %bb35, label %bb36
bb35:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/scope:Scoper", ptr %t137, i32 0, i32 115
  %t140 = load { i64, [2 x i64] }, ptr %t139
  %t142 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t140)
  store i1 %t142, ptr %l72
  br label %bb37
bb36:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb38
bb37:
  %t143 = load i1, ptr %l72, !tbaa !21
  store i1 %t143, ptr %l69, !tbaa !21
  br label %bb38
bb38:
  %t144 = load i1, ptr %l69, !tbaa !21
  br i1 %t144, label %bb39, label %bb40
bb39:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/scope:Scoper", ptr %t145, i32 0, i32 115
  %t148 = load { i64, [2 x i64] }, ptr %t147
  store { i64, [2 x i64] } %t148, ptr %l3
  br label %bb41
bb40:
  br label %bb41
bb41:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/scope:Scoper", ptr %t150, i32 0, i32 113
  %t153 = load i32, ptr %l2, !tbaa !23
  %t155 = sext i32 %t153 to i64
  %t156 = load { i64, [2 x i64] }, ptr %l3
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %t152, i64 %t155, { i64, [2 x i64] } %t156)
  br label %bb42
bb42:
  %t160 = load { i64, [2 x i64] }, ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t160, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca %"compiler/typed:Local"
  %l20 = alloca i64
  %l23 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca i1
  %l67 = alloca i64
  %l68 = alloca ptr
  %l69 = alloca i1
  %l73 = alloca i64
  %l76 = alloca i1
  %l79 = alloca i1
  %l89 = alloca %"compiler/typed:Local"
  %l93 = alloca i1
  %l97 = alloca { i64, [2 x i64] }
  %l99 = alloca { i64, [2 x i64] }
  %l101 = alloca i1
  %s6 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  store i64 64, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t3 = load i64, ptr %l5, !tbaa !24
  %t4 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l23, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l23, !tbaa !24
  store i64 %t29, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l20, !tbaa !24
  store i64 %t30, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l8, !tbaa !24
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb23
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l9, !tbaa !24
  %t49 = load ptr, ptr %l3, !tbaa !29
  store ptr %t49, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t50 = load ptr, ptr %l41, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l41, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 8}
  %t56 = icmp eq i64 %t54, 3
  store i1 %t56, ptr %l42, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l42, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t60, i32 0, i32 2
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l10, !tbaa !29
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t64 = load ptr, ptr %l10, !tbaa !29
  store ptr %t64, ptr %l3, !tbaa !29
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb23
bb20:
  call void @__olang_check_failed(ptr @olang_loc_eee8da0a5b1ae122_c6584efc157c03ae)
  unreachable
bb21:
  br label %bb22
bb22:
  %t66 = load i64, ptr %l8, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l8, !tbaa !24
  br label %bb7
bb23:
  store i64 -1, ptr %l11, !tbaa !24
  %t70 = load ptr, ptr %l3, !tbaa !29
  store ptr %t70, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t71 = load ptr, ptr %l50, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb24, label %bb25
bb24:
  %t74 = load ptr, ptr %l50, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 2
  store i1 %t77, ptr %l51, !tbaa !21
  br label %bb25
bb25:
  %t78 = load i1, ptr %l51, !tbaa !21
  br i1 %t78, label %bb26, label %bb27
bb26:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l12, !tbaa !29
  br label %bb28
bb27:
  br label %bb42
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l12, !tbaa !29
  %t90 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s6, ptr %t85, ptr %t86)
  store ptr %t90, ptr %l59
  br label %bb29
bb29:
  %t91 = load ptr, ptr %l59, !tbaa !29
  store ptr %t91, ptr %l13, !tbaa !29
  %t92 = load ptr, ptr %l13, !tbaa !29
  store ptr %t92, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t93 = load ptr, ptr %l60, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb30, label %bb31
bb30:
  %t96 = load ptr, ptr %l60, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 18}
  %t99 = icmp eq i64 %t97, 2
  store i1 %t99, ptr %l61, !tbaa !21
  br label %bb31
bb31:
  %t100 = load i1, ptr %l61, !tbaa !21
  br i1 %t100, label %bb32, label %bb33
bb32:
  %t101 = load ptr, ptr %l13, !tbaa !29
  %t103 = getelementptr { i64, [5 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l14, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t107 = load ptr, ptr %l14, !tbaa !29
  %t109 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s6, ptr %t107)
  store i64 %t109, ptr %l67
  br label %bb35
bb35:
  %t110 = load i64, ptr %l67, !tbaa !24
  store i64 %t110, ptr %l11, !tbaa !24
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
  call void @__olang_check_failed(ptr @olang_loc_a252e787f5770223_1c17d2ffe47c806f)
  unreachable
bb41:
  call void @__olang_scope_close(ptr %s6)
  br label %bb54
bb42:
  %t111 = load ptr, ptr %l3, !tbaa !29
  store ptr %t111, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t112 = load ptr, ptr %l68, !tbaa !29
  %t113 = icmp ne ptr %t112, null
  br i1 %t113, label %bb43, label %bb44
bb43:
  %t115 = load ptr, ptr %l68, !tbaa !29
  %t116 = load i64, ptr %t115, !range !{i64 0, i64 8}
  %t118 = icmp eq i64 %t116, 0
  store i1 %t118, ptr %l69, !tbaa !21
  br label %bb44
bb44:
  %t119 = load i1, ptr %l69, !tbaa !21
  br i1 %t119, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t120 = load ptr, ptr %l3, !tbaa !29
  %t122 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t120)
  store i64 %t122, ptr %l73
  br label %bb48
bb48:
  %t123 = load i64, ptr %l73, !tbaa !24
  store i64 %t123, ptr %l11, !tbaa !24
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_afdfab168e064d48_caaaefc2f38a9e34)
  unreachable
bb54:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = icmp slt i64 %t124, 0
  br i1 %t126, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb58
bb56:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i64, ptr %l11, !tbaa !24
  %t132 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t128, i64 %t129)
  store i1 %t132, ptr %l79
  br label %bb57
bb57:
  %t133 = load i1, ptr %l79, !tbaa !21
  store i1 %t133, ptr %l76, !tbaa !21
  br label %bb58
bb58:
  %t134 = load i1, ptr %l76, !tbaa !21
  br i1 %t134, label %bb59, label %bb60
bb59:
  store i64 -1, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/scope:Scoper", ptr %t136, i32 0, i32 26
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = icmp eq ptr %t139, null
  br i1 %t141, label %bb62, label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_9231b6c842538f3a_12ad4acd8b8b2da6)
  unreachable
bb63:
  br label %bb64
bb64:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/scope:Scoper", ptr %t143, i32 0, i32 26
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Body", ptr %t146, i32 0, i32 7
  %t150 = load i64, ptr %l11, !tbaa !24
  %t153 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t149, i64 %t150)
  store %"compiler/typed:Local" %t153, ptr %l89
  br label %bb65
bb65:
  %t154 = load %"compiler/typed:Local", ptr %l89
  store %"compiler/typed:Local" %t154, ptr %l15
  %t155 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 4
  %t156 = load i32, ptr %t155, !range !{i32 0, i32 7}
  %t158 = trunc i64 1 to i32
  %t159 = icmp eq i32 %t156, %t158
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb70
bb67:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 34
  %t166 = load i64, ptr %l11, !tbaa !24
  %t169 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t165, i64 %t166)
  store { i64, [2 x i64] } %t169, ptr %l97
  br label %bb68
bb68:
  store { i64, [2 x i64] } %a2, ptr %l99
  %t173 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l97, ptr %l99)
  store i1 %t173, ptr %l101
  br label %bb69
bb69:
  %t174 = load i1, ptr %l101, !tbaa !21
  %t175 = xor i1 %t174, true
  store i1 %t175, ptr %l93, !tbaa !21
  br label %bb70
bb70:
  %t177 = load i1, ptr %l93, !tbaa !21
  br i1 %t177, label %bb71, label %bb72
bb71:
  store i64 -1, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  %t179 = load i64, ptr %l11, !tbaa !24
  store i64 %t179, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evarName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2, ptr %a3) #0 {
entry:
  %l2 = alloca { i64, [1 x i64] }
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, [1 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l4, !tbaa !23
  br label %bb5
bb2:
  %t10 = load { i64, [1 x i64] }, ptr %l2
  %t12 = extractvalue { i64, [1 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 4
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t21 = load i32, ptr %l4, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %t21, ptr %a3)
  store { i64, ptr } %t27, ptr %l16
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t28, ptr %l5, !tbaa !27
  br label %bb20
bb7:
  %t29 = load { i64, [1 x i64] }, ptr %l2
  %t31 = extractvalue { i64, [1 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 1
  br i1 %t32, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t34, ptr %l5, !tbaa !27
  br label %bb20
bb11:
  %t36 = load { i64, [1 x i64] }, ptr %l2
  %t38 = extractvalue { i64, [1 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 2
  br i1 %t39, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t41, ptr %l5, !tbaa !27
  br label %bb20
bb15:
  %t43 = load { i64, [1 x i64] }, ptr %l2
  %t45 = extractvalue { i64, [1 x i64] } %t43, 0
  %t46 = icmp eq i64 %t45, 3
  br i1 %t46, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t48, ptr %l5, !tbaa !27
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_33e8f6984fda8b38_987c5f6a5f702884)
  unreachable
bb20:
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  store i64 %t51, ptr %l29, !tbaa !24
  %t52 = load i64, ptr %l29, !tbaa !24
  %t53 = mul i64 %t52, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l30, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l29, !tbaa !24
  %t62 = mul i64 %t61, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t58, ptr %t60, i64 %t62, i1 false)
  %t63 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t63, ptr %l5, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t64, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotionOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l6 = alloca i1
  %l10 = alloca i1
  %l16 = alloca i64
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
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 220
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t20 = icmp eq i32 %t16, %t17
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l10, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %t23, i32 %t24)
  store i64 %t27, ptr %l16
  br label %bb10
bb10:
  %t28 = load i64, ptr %l16, !tbaa !24
  store i64 %t28, ptr %l2, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp sge i64 %t29, 0
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewant(ptr %v0, ptr %t33, i64 %t34)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l1, !tbaa !29
  br label %bb16
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t22 = load ptr, ptr %l13, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 3
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l14, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l1, !tbaa !29
  br label %bb16
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t37 = load ptr, ptr %l19, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l19, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 18}
  %t43 = icmp eq i64 %t41, 4
  store i1 %t43, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l20, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l1, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = call i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %t51)
  store i64 %t53, ptr %l26
  br label %bb17
bb17:
  %t54 = load i64, ptr %l26, !tbaa !24
  store i64 %t54, ptr %l6, !tbaa !24
  br label %bb30
bb18:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t56 = load ptr, ptr %l27, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l27, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 18}
  %t62 = icmp eq i64 %t60, 17
  store i1 %t62, ptr %l28, !tbaa !21
  br label %bb20
bb20:
  %t63 = load i1, ptr %l28, !tbaa !21
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l2, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t73 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %t70)
  store i64 %t73, ptr %l35
  br label %bb24
bb24:
  %t74 = load i64, ptr %l35, !tbaa !24
  store i64 %t74, ptr %l6, !tbaa !24
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_e9d57cf77a66352c_e30832457df38478)
  unreachable
bb30:
  %t75 = load i64, ptr %l6, !tbaa !24
  store i64 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2eownView(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %t16, i64 %t17)
  store i1 %t20, ptr %l14
  br label %bb6
bb6:
  %t21 = load i1, ptr %l14, !tbaa !21
  store i1 %t21, ptr %l5, !tbaa !21
  br label %bb26
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 18}
  %t29 = icmp eq i64 %t27, 10
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l16, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Slice", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = call i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %t40, i64 %t41)
  store i1 %t44, ptr %l24
  br label %bb13
bb13:
  %t45 = load i1, ptr %l24, !tbaa !21
  store i1 %t45, ptr %l5, !tbaa !21
  br label %bb26
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 18}
  %t53 = icmp eq i64 %t51, 17
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = call i1 @compiler_2fscope_2eownView(ptr %v0, ptr %t61, i64 %t62)
  store i1 %t65, ptr %l33
  br label %bb20
bb20:
  %t66 = load i1, ptr %l33, !tbaa !21
  store i1 %t66, ptr %l5, !tbaa !21
  br label %bb26
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_c2a3e0598e9fa972_fa6365d3848b2816)
  unreachable
bb26:
  %t67 = load i1, ptr %l5, !tbaa !21
  store i1 %t67, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l17 = alloca { i64, ptr }
  %l19 = alloca ptr
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
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 52}
  store i32 %t14, ptr %l1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t18, i32 0, i32 4
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t22 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t24 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t22)
  store i1 %t24, ptr %l12
  br label %bb6
bb6:
  %t25 = load i1, ptr %l12, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = icmp sgt i64 %t28, 0
  store i1 %t30, ptr %l13, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l13, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t33, ptr %l17, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr ptr, ptr %t35, i64 0
  %t37 = load ptr, ptr %t36, !tbaa !39
  %t39 = call ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %t37)
  store ptr %t39, ptr %l19
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t40 = load ptr, ptr %l19, !tbaa !29
  store ptr %t40, ptr %rv
  br label %ret
bb13:
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
  call void @__olang_check_failed(ptr @olang_loc_98d550604b653752_91ea903190c8437e)
  unreachable
bb19:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fscope_2eunWidened(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i1
  %l14 = alloca i1
  %l18 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca { i64, ptr }
  %rv = alloca ptr
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
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 52}
  store i32 %t14, ptr %l1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t18, i32 0, i32 4
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  br label %bb5
bb4:
  br label %bb23
bb5:
  %t22 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t24 = trunc i64 20 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l14, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t34, ptr %l18, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr ptr, ptr %t36, i64 0
  %t38 = load ptr, ptr %t37, !tbaa !39
  store ptr %t38, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t41 = load ptr, ptr %l20, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb11, label %bb12
bb10:
  br label %bb22
bb11:
  %t44 = load ptr, ptr %l20, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 10
  store i1 %t47, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t48 = load i1, ptr %l21, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t49 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t49, ptr %l24, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 0
  %t53 = load ptr, ptr %t52, !tbaa !39
  store ptr %t53, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_c76fb05b477ad754_aaa77e81edb6bb58)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_472a8ee29a396e05_19ea125b0d0f8e29)
  unreachable
bb28:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fscope_2ewalked_2ewalkBody(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/scope:walked"
  %l8 = alloca ptr
  %l16 = alloca %"compiler/scope:walked"
  %t1 = alloca %"compiler/scope:walked", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fscope_3awalked(ptr %t1, ptr %v1)
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %t1, i64 424, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 424, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l4, i64 424, i1 false)
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 1
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l8
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l8, !tbaa !29
  store ptr %t11, ptr %l3, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 11
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 11
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load ptr, ptr %lp2
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %t24, ptr %t25)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t28 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t28, i64 424, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l16, i64 424, i1 false)
  br label %ret
ret:
  ret void
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
define internal i1 @olang_lambda_0(ptr %env, i64 %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t5 = icmp eq i64 %a0, %t2
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d1 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"rejudged " }>, align 8
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
declare i64 @__olang_fmt_i64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
@.d2 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" size " }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" first " }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t8, i32 0, i32 1
  %t10 = getelementptr { i64 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  %t13 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t14 = call i64 @__olang_fmt_i64(ptr %t13, i64 %t11)
  call void @__olang_sb_add(ptr %v0, i64 %t14)
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb3:
  %t17 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  %t23 = getelementptr { i32, i32 }, ptr %t22, i32 0, i32 0
  %t24 = load i32, ptr %t23
  %t26 = sext i32 %t24 to i64
  %t27 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t28 = call i64 @__olang_fmt_i64(ptr %t27, i64 %t26)
  call void @__olang_sb_add(ptr %v0, i64 %t28)
  %t29 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr { i64, [2 x i64] }, ptr %t31, i32 0, i32 1
  %t33 = getelementptr { i32, i32 }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  %t36 = sext i32 %t34 to i64
  %t37 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t38 = call i64 @__olang_fmt_i64(ptr %t37, i64 %t36)
  call void @__olang_sb_add(ptr %v0, i64 %t38)
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t39, i64 %t40)
  br label %bb1
bb4:
  %t41 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t43, i64 %t44)
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [2 x i64] }, ptr %t45, i32 0, i32 1
  %t47 = getelementptr { i32, i64 }, ptr %t46, i32 0, i32 0
  %t48 = load i32, ptr %t47
  %t50 = sext i32 %t48 to i64
  %t51 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t52 = call i64 @__olang_fmt_i64(ptr %t51, i64 %t50)
  call void @__olang_sb_add(ptr %v0, i64 %t52)
  %t53 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 1
  %t57 = getelementptr { i32, i64 }, ptr %t56, i32 0, i32 1
  %t58 = load i64, ptr %t57
  %t60 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t61 = call i64 @__olang_fmt_i64(ptr %t60, i64 %t58)
  call void @__olang_sb_add(ptr %v0, i64 %t61)
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t62, i64 %t63)
  br label %bb1
bb5:
  %t64 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t64, i64 %t65)
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t66, i64 %t67)
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr { i64, [2 x i64] }, ptr %t68, i32 0, i32 1
  %t70 = getelementptr { i32 }, ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70
  %t73 = sext i32 %t71 to i64
  %t74 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t75 = call i64 @__olang_fmt_i64(ptr %t74, i64 %t73)
  call void @__olang_sb_add(ptr %v0, i64 %t75)
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t76, i64 %t77)
  br label %bb1
bb6:
  %t78 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t78, i64 %t79)
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t80, i64 %t81)
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr { i64, [2 x i64] }, ptr %t82, i32 0, i32 1
  %t84 = getelementptr { i32 }, ptr %t83, i32 0, i32 0
  %t85 = load i32, ptr %t84
  %t87 = sext i32 %t85 to i64
  %t88 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t89 = call i64 @__olang_fmt_i64(ptr %t88, i64 %t87)
  call void @__olang_sb_add(ptr %v0, i64 %t89)
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t90, i64 %t91)
  br label %bb1
bb7:
  %t92 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t92, i64 %t93)
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t94, i64 %t95)
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr { i64, [2 x i64] }, ptr %t96, i32 0, i32 1
  %t98 = getelementptr { i64 }, ptr %t97, i32 0, i32 0
  %t99 = load i64, ptr %t98
  %t101 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t99)
  call void @__olang_sb_add(ptr %v0, i64 %t102)
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t103, i64 %t104)
  br label %bb1
bb8:
  %t105 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t105, i64 %t106)
  %t107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t107, i64 %t108)
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr { i64, [2 x i64] }, ptr %t109, i32 0, i32 1
  %t111 = getelementptr { i64, i32 }, ptr %t110, i32 0, i32 0
  %t112 = load i64, ptr %t111
  %t114 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t115 = call i64 @__olang_fmt_i64(ptr %t114, i64 %t112)
  call void @__olang_sb_add(ptr %v0, i64 %t115)
  %t116 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t116, i64 %t117)
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [2 x i64] }, ptr %t118, i32 0, i32 1
  %t120 = getelementptr { i64, i32 }, ptr %t119, i32 0, i32 1
  %t121 = load i32, ptr %t120
  %t123 = sext i32 %t121 to i64
  %t124 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t125 = call i64 @__olang_fmt_i64(ptr %t124, i64 %t123)
  call void @__olang_sb_add(ptr %v0, i64 %t125)
  %t126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t126, i64 %t127)
  br label %bb1
bb9:
  %t128 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t128, i64 %t129)
  %t130 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t130, i64 %t131)
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t132, i32 0, i32 1
  %t134 = getelementptr { i64, i32 }, ptr %t133, i32 0, i32 0
  %t135 = load i64, ptr %t134
  %t137 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t138 = call i64 @__olang_fmt_i64(ptr %t137, i64 %t135)
  call void @__olang_sb_add(ptr %v0, i64 %t138)
  %t139 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t139, i64 %t140)
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr { i64, [2 x i64] }, ptr %t141, i32 0, i32 1
  %t143 = getelementptr { i64, i32 }, ptr %t142, i32 0, i32 1
  %t144 = load i32, ptr %t143
  %t146 = sext i32 %t144 to i64
  %t147 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t148 = call i64 @__olang_fmt_i64(ptr %t147, i64 %t146)
  call void @__olang_sb_add(ptr %v0, i64 %t148)
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t149, i64 %t150)
  br label %bb1
bb10:
  %t151 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t151, i64 %t152)
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t153, i64 %t154)
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr { i64, [2 x i64] }, ptr %t155, i32 0, i32 1
  %t157 = getelementptr { i32, i32, i64 }, ptr %t156, i32 0, i32 0
  %t158 = load i32, ptr %t157
  %t160 = sext i32 %t158 to i64
  %t161 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t162 = call i64 @__olang_fmt_i64(ptr %t161, i64 %t160)
  call void @__olang_sb_add(ptr %v0, i64 %t162)
  %t163 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t163, i64 %t164)
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr { i64, [2 x i64] }, ptr %t165, i32 0, i32 1
  %t167 = getelementptr { i32, i32, i64 }, ptr %t166, i32 0, i32 1
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aContractKind(ptr %v0, ptr %t167, i64 %a1)
  br label %bb13
bb11:
  %t170 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t170, i64 %t171)
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t172, i64 %t173)
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr { i64, [2 x i64] }, ptr %t174, i32 0, i32 1
  %t176 = getelementptr { i64, i64 }, ptr %t175, i32 0, i32 0
  %t177 = load i64, ptr %t176
  %t179 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t180 = call i64 @__olang_fmt_i64(ptr %t179, i64 %t177)
  call void @__olang_sb_add(ptr %v0, i64 %t180)
  %t181 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t181, i64 %t182)
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr { i64, [2 x i64] }, ptr %t183, i32 0, i32 1
  %t185 = getelementptr { i64, i64 }, ptr %t184, i32 0, i32 1
  %t186 = load i64, ptr %t185
  %t188 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t186)
  call void @__olang_sb_add(ptr %v0, i64 %t189)
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t190, i64 %t191)
  br label %bb1
bb12:
  %t192 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t192, i64 %t193)
  %t194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t194, i64 %t195)
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr { i64, [2 x i64] }, ptr %t196, i32 0, i32 1
  %t198 = getelementptr { i32, i64 }, ptr %t197, i32 0, i32 0
  %t199 = load i32, ptr %t198
  %t201 = sext i32 %t199 to i64
  %t202 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t203 = call i64 @__olang_fmt_i64(ptr %t202, i64 %t201)
  call void @__olang_sb_add(ptr %v0, i64 %t203)
  %t204 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t205 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t204, i64 %t205)
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr { i64, [2 x i64] }, ptr %t206, i32 0, i32 1
  %t208 = getelementptr { i32, i64 }, ptr %t207, i32 0, i32 1
  %t209 = load i64, ptr %t208
  %t211 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t212 = call i64 @__olang_fmt_i64(ptr %t211, i64 %t209)
  call void @__olang_sb_add(ptr %v0, i64 %t212)
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t213, i64 %t214)
  br label %bb1
bb13:
  %t215 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t216 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t215, i64 %t216)
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr { i64, [2 x i64] }, ptr %t217, i32 0, i32 1
  %t219 = getelementptr { i32, i32, i64 }, ptr %t218, i32 0, i32 2
  %t220 = load i64, ptr %t219
  %t222 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t223 = call i64 @__olang_fmt_i64(ptr %t222, i64 %t220)
  call void @__olang_sb_add(ptr %v0, i64 %t223)
  %t224 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t224, i64 %t225)
  br label %bb1
ret:
  ret void
}

@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" sites " }>, align 8
@.d6 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" why " }>, align 8
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
declare void @__olang_sb_done(ptr)
declare void @__olang_bang_failed_plain(ptr) cold noreturn
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

@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"return" }>, align 8
@.d8 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"the instance" }>, align 8
@.d9 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"the closing scope" }>, align 8
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d10 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.BodyOf.Fn" }>, align 8
@.d11 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d12 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d13 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Ctor" }>, align 8
@.d14 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d15 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Case" }>, align 8
@.d16 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Dtor" }>, align 8
@.d17 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.BodyOf.Lambda" }>, align 8
@.d18 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Test" }>, align 8
@.d19 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.BodyOf.Global" }>, align 8
@.d20 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Cond" }>, align 8
@.d21 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.BodyOf.Contract" }>, align 8
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
  %t5 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
ret:
  ret void
}

@.d22 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.BodyOf.Thunk" }>, align 8
@.d23 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.BodyOf.Slot" }>, align 8
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

@.d24 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.ContractKind.Req" }>, align 8
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

declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eHas_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eBndReturn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_dafb57c7e6be4360_64c24756b9afbb1c = external constant [0 x i8]
@G_2ecompiler_2fscope_2eBndNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eUseOwn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_fffe9faf12a835a0_66d5050fe7e20ca4 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_fc2d23a56a9972c4_138c6d588cf96ab0 = external constant [0 x i8]
@olang_loc_3c97826faaf501b5_26e177716b83aa41 = external constant [0 x i8]
declare i1 @compiler_2fscope_2econstItems(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1613ed059cb03484_3323568ce669da90 = external constant [0 x i8]
@olang_loc_5143053d218562e2_13c44612613aa94e = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsStores(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edischargeRels(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, ptr %a5, i1 %a6)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflBlockOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomTerm(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cI64_3e_2eSome_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
@G_2ecompiler_2ftypes_2eRoleTail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithRole(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egivenLocal(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d375f47869e73b1e_ab7f910edbf0dc32 = external constant [0 x i8]
declare i64 @compiler_2fscope_2elocalRead(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2etermGiven({ i64, [2 x i64] } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elift(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_c4815f8d08aa5069_e0d3df7c014ad4fd = external constant [0 x i8]
@olang_loc_f2ff34bd09efe7b1_f9738b06cf9c6415 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
@olang_loc_3f250a06b21cc3f2_59a5c5e8895f34f6 = external constant [0 x i8]
@olang_loc_8ee4ae07259e8dc_de6076a554649350 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eFailsBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInstanceOutlivesArg(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H43e0789510fdd6e46eb40242e8ebac44(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eClear_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hb3d964ef0eb61dc0aac0e28cb3eb3e8e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eClear_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H29200dc1bd0d45eeb387753ed6b896d3(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H36d0fbd0f5d2507a31346de6cb3a1ecc(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc04321ec8f7b4032ca78905f7b4ad50d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H28d9ab5e291734bc3f5dada0ed141e4b(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0e60dbfe6a2fd08e5866d9c9948f525a(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1843ba46fd3fd0c25c7605a67c4ed5a8(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H62ce913989fc72267aa9da7aaa7454ed(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ePlan_2eNew(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ePush_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_3asummary_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H6c9b3c63d1bd8a9585cb935569d90c26(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
@olang_loc_9cca7b999499be9f_376b703cb8c12c3b = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Ha27721164864093d8065d46fbe969218(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H1cf5fc557ad2be946465a784b28afba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeComp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_Hf6320a2822fca13d1c1aca71b9a494ca(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakeable(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropLifts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echeckReuse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, ptr %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eLen_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhyNot(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_H0296d27dcb58febef67dd9f1f1b292fb(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_Hde01c20c473402e23cc757f365f90f80(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_20e79843cec2bd9a_647d68dc60a398b6 = external constant [0 x i8]
@olang_loc_144d04cb4af239f1_4707c2a62d7d857d = external constant [0 x i8]
@olang_loc_c71a24a54e9b1fff_65ed36515b990e5b = external constant [0 x i8]
@olang_loc_4bbd8aa524243e6b_788ee25fc6ea0e8f = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDecl(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepOne(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2evarOf({ i64, [2 x i64] } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, { i64, [2 x i64] } %a3)
@G_2ecompiler_2fscope_2ePosDerived = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\01\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepsAtHome(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esameScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyParamName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaKeepsOuter(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargPartCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erequiredBy(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargPartOK(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H65b4b9a6d1679f5b3ddedaa5b2e336bd(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H38f9aff1b0310316a48dc5a28922f96e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_e507d0d93dcb1267_6d41e0722b8ffb6b = external constant [0 x i8]
@olang_loc_bdf36c9557ac347f_98a403497664a493 = external constant [0 x i8]
@olang_loc_c3a4635b73df0d44_b0216f4acd182078 = external constant [0 x i8]
@olang_loc_40ec225b43a9c35_aa9faf1719a6cb49 = external constant [0 x i8]
@olang_loc_ee34d1998e8cb262_dc9f2cfe1a0305ee = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenElem(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewholeRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fscope_2eObliged = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_322b5045d3cabfc4_8f4e43b4ddbaa588 = external constant [0 x i8]
@olang_loc_7295af1014264eb5_7e53551048ac1f59 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceRel(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eWhyHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/scope:rel" @compiler_2fscope_3arel_2ector(ptr %v0, { i64, [2 x i64] } %a0, { i64, [2 x i64] } %a1, i1 %a2, %"compiler/source:Span" %a3, i64 %a4, i1 %a5, i1 %a6)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRel(ptr %v0, ptr %a0, %"compiler/scope:rel" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ewithin(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_40b97f37a7371750_40728193df6350fc = external constant [0 x i8]
@olang_loc_f651c1e1d8a1ace1_d593723da6a130ad = external constant [0 x i8]
@olang_loc_77d8df1bd6b52079_f0229fa895aca615 = external constant [0 x i8]
@olang_loc_bfd80b0298b19652_e537c33c4d886a6e = external constant [0 x i8]
@olang_loc_b1757fdcabe82f93_e12b45afd85e1a9f = external constant [0 x i8]
@olang_loc_a9000624b37114eb_4f5d8570083b5047 = external constant [0 x i8]
@olang_loc_6cb6018c48b7e44c_30fb4d691284a4b0 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_50c5af6b9a55d13c_b172bff682b06040 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhereLives(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erunLength(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_7a4f424795892e70_52f604b9bdf9a7cc = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_ef7f9cdde83b319d_c7773e471ac0d6b1 = external constant [0 x i8]
@olang_loc_2a41cd82eb4d8236_be11ba524906eaaa = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisLambda(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eSetAt_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hdd18cd18fee7da2cefbfd21396944747(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReplay(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eLen_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eAt_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2ePush_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:Gap" %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H568ce559fa980123a387c6ba9ed21aca(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleRooted(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esolePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_df5619edc5954020_95eed2e83037cdb4 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBorrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_80a42f326454c431_eaf1445ab36ad4e5 = external constant [0 x i8]
@olang_loc_fdb46d1d9262e41a_919c32215229332e = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eadmitsAt(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignableHolds(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsHome(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_fab9d5262c098304_b0d84a3f5fe3aa00 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparts(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c86c049519105f0c_80ba46eb618cd650 = external constant [0 x i8]
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etempVal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
@olang_loc_eee8da0a5b1ae122_c6584efc157c03ae = external constant [0 x i8]
@olang_loc_a252e787f5770223_1c17d2ffe47c806f = external constant [0 x i8]
@olang_loc_afdfab168e064d48_caaaefc2f38a9e34 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9231b6c842538f3a_12ad4acd8b8b2da6 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3)
@olang_loc_33e8f6984fda8b38_987c5f6a5f702884 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewant(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
@olang_loc_e9d57cf77a66352c_e30832457df38478 = external constant [0 x i8]
declare i1 @compiler_2fscope_2eownRooted(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c2a3e0598e9fa972_fa6365d3848b2816 = external constant [0 x i8]
@olang_loc_98d550604b653752_91ea903190c8437e = external constant [0 x i8]
@olang_loc_c76fb05b477ad754_aaa77e81edb6bb58 = external constant [0 x i8]
@olang_loc_472a8ee29a396e05_19ea125b0d0f8e29 = external constant [0 x i8]
declare void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
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
