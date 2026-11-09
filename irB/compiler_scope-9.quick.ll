source_filename = "compiler_scope-9.quick.ll"
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
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/scope:verAtom" = type { i64, i64, i64, i64, i64, i64, i1, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/scope:placeSlot" = type { { i64, [2 x i64] }, i1, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
define dso_local i1 @compiler_2fscope_2eanyArrayBox(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l12 = alloca i1
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
  %t8 = icmp eq i64 %t6, 7
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
  br label %bb9
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 0 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Make", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l12, !tbaa !21
  store i1 %t33, ptr %l2, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_815ce866d8282155_e428af91c79b2b69)
  unreachable
bb14:
  %t34 = load i1, ptr %l2, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecapTerm({ i64, [2 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca i64
  %l2 = alloca i1
  %l7 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t7 = getelementptr { i64, i64 }, ptr %t6, i32 0, i32 1
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l1, !tbaa !24
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = call i1 @compiler_2fscope_2eisCapCode(i64 %t10)
  store i1 %t12, ptr %l7
  br label %bb4
bb4:
  %t13 = load i1, ptr %l7, !tbaa !21
  store i1 %t13, ptr %l2, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e28869e71ec53a97_6d2b94b7891eb373)
  unreachable
bb10:
  %t14 = load i1, ptr %l2, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ePlacedReport(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/scope:Placement"
  %l8 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca %"compiler/scope:Placement"
  %l32 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l60 = alloca i64
  %l65 = alloca ptr
  %l66 = alloca i64
  %l69 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l75 = alloca i64
  %l78 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l1, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ePlacements(ptr %v0, ptr %s0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l14
  br label %bb1
bb1:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l2
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eLen__H4d2672aa7d845ec0c6fc38a004384ece(ptr %s0, ptr %l2)
  store i64 %t17, ptr %l16
  br label %bb2
bb2:
  %t18 = load i64, ptr %l16, !tbaa !24
  %t19 = icmp eq i64 %t18, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t21, ptr %l19, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l20, !tbaa !24
  %t24 = load i64, ptr %l20, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l21, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l20, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t35, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t36 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t37 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t37, ptr %l22
  br label %bb6
bb6:
  %t38 = load %"std/prelude/text:StringBuilder", ptr %l22
  store %"std/prelude/text:StringBuilder" %t38, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  store ptr %l2, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t40 = load i64, ptr %l6, !tbaa !24
  store i64 %t40, ptr %l24, !tbaa !24
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eLen__H4d2672aa7d845ec0c6fc38a004384ece(ptr %s0, ptr %t41)
  store i64 %t43, ptr %l26
  br label %bb8
bb8:
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = load i64, ptr %l26, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb10:
  br label %bb11
bb11:
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = call %"compiler/scope:Placement" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eAt_3ccompiler_2fscope_3aPlacement_3e(ptr %s0, ptr %s0, ptr %t50, i64 %t51)
  store %"compiler/scope:Placement" %t54, ptr %l31
  br label %bb12
bb12:
  %t55 = load %"compiler/scope:Placement", ptr %l31
  store %"compiler/scope:Placement" %t55, ptr %l7
  store ptr %l3, ptr %l32, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 0
  %t58 = load i64, ptr %t57, !tbaa !24
  %t59 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 1
  %t60 = load i64, ptr %t59, !tbaa !24
  %t64 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s3, ptr %t56, i64 %t58, i64 %t60)
  store { i64, ptr } %t64, ptr %l36
  br label %bb13
bb13:
  %t65 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 4
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t72 = add i64 %t69, %t71
  %t74 = extractvalue { i64, ptr } %t66, 1
  %t75 = extractvalue { i64, ptr } %t66, 0
  %t76 = add i64 %t72, %t75
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t68, i64 %t69)
  %t81 = getelementptr i8, ptr %t80, i64 %t69
  call void @olang_textcopy(ptr %t81, ptr %t70, i64 %t71)
  %t82 = getelementptr i8, ptr %t81, i64 %t71
  call void @olang_textcopy(ptr %t82, ptr %t74, i64 %t75)
  %t83 = getelementptr i8, ptr %t82, i64 %t75
  call void @olang_textcopy(ptr %t83, ptr %t77, i64 %t78)
  %t84 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t80, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } %t85, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t93 = load ptr, ptr %l32, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t93, { i64, ptr } %t92)
  br label %bb14
bb14:
  %t95 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 5
  %t96 = load i1, ptr %t95, !tbaa !21
  br i1 %t96, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  store ptr %l3, ptr %l41, !tbaa !29
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 0
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 3
  %t102 = load i64, ptr %t101, !tbaa !24
  %t106 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s5, ptr %t98, i64 %t100, i64 %t102)
  store { i64, ptr } %t106, ptr %l45
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t107 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = extractvalue { i64, ptr } %t107, 0
  %t110 = extractvalue { i64, ptr } { i64 112, ptr getelementptr inbounds (<{ i64, [112 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 112, ptr getelementptr inbounds (<{ i64, [112 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t113 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t108, i64 %t109)
  %t114 = getelementptr i8, ptr %t113, i64 %t109
  call void @olang_textcopy(ptr %t114, ptr %t110, i64 %t111)
  %t115 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t113, 1
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t119 = extractvalue { i64, ptr } %t116, 1
  %t120 = mul i64 %t118, 1
  %t121 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t120)
  call void @llvm.memcpy.p0.p0.i64(ptr %t121, ptr %t119, i64 %t120, i1 false)
  %t122 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  %t124 = load ptr, ptr %l41, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t124, { i64, ptr } %t123)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb19:
  %t126 = load i64, ptr %l4, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l4, !tbaa !24
  store ptr %l3, ptr %l50, !tbaa !29
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 0
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = getelementptr %"compiler/scope:Placement", ptr %l7, i32 0, i32 3
  %t134 = load i64, ptr %t133, !tbaa !24
  %t138 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s3, ptr %t130, i64 %t132, i64 %t134)
  store { i64, ptr } %t138, ptr %l54
  br label %bb20
bb20:
  %t139 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 1
  %t141 = extractvalue { i64, ptr } %t139, 0
  %t142 = extractvalue { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t144)
  call void @olang_textcopy(ptr %t145, ptr %t140, i64 %t141)
  %t146 = getelementptr i8, ptr %t145, i64 %t141
  call void @olang_textcopy(ptr %t146, ptr %t142, i64 %t143)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t145, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = extractvalue { i64, ptr } %t148, 1
  %t152 = mul i64 %t150, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t152)
  call void @llvm.memcpy.p0.p0.i64(ptr %t153, ptr %t151, i64 %t152, i1 false)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  %t156 = load ptr, ptr %l50, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t156, { i64, ptr } %t155)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t158 = load i64, ptr %l6, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l6, !tbaa !24
  br label %bb7
bb23:
  %t163 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eLen__H4d2672aa7d845ec0c6fc38a004384ece(ptr %s0, ptr %l2)
  store i64 %t163, ptr %l60
  br label %bb24
bb24:
  %t164 = load i64, ptr %l4, !tbaa !24
  %t165 = load i64, ptr %l60, !tbaa !24
  %t167 = sub i64 %t165, %t164
  store i64 %t167, ptr %l8, !tbaa !24
  %t169 = load i64, ptr %l4, !tbaa !24
  %t171 = icmp sgt i64 %t169, 0
  br i1 %t171, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s9
  store ptr %l3, ptr %l65, !tbaa !29
  %t173 = load i64, ptr %l4, !tbaa !24
  store i64 %t173, ptr %l66, !tbaa !24
  %t174 = load i64, ptr %l4, !tbaa !24
  %t176 = icmp eq i64 %t174, 1
  br i1 %t176, label %bb27, label %bb28
bb26:
  br label %bb31
bb27:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb29
bb28:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb29
bb29:
  %t178 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t180 = load i64, ptr %l66, !tbaa !24
  %t181 = call i64 @__olang_fmt_i64(ptr null, i64 %t180)
  %t182 = add i64 %t179, %t181
  %t183 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 1
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t193 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t178, i64 %t179)
  %t194 = getelementptr i8, ptr %t193, i64 %t179
  %t195 = call i64 @__olang_fmt_i64(ptr %t194, i64 %t180)
  %t196 = getelementptr i8, ptr %t194, i64 %t181
  call void @olang_textcopy(ptr %t196, ptr %t183, i64 %t184)
  %t197 = getelementptr i8, ptr %t196, i64 %t184
  call void @olang_textcopy(ptr %t197, ptr %t187, i64 %t188)
  %t198 = getelementptr i8, ptr %t197, i64 %t188
  call void @olang_textcopy(ptr %t198, ptr %t190, i64 %t191)
  %t199 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t193, 1
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t203 = extractvalue { i64, ptr } %t200, 1
  %t204 = mul i64 %t202, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t204)
  call void @llvm.memcpy.p0.p0.i64(ptr %t205, ptr %t203, i64 %t204, i1 false)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t208 = load ptr, ptr %l65, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t208, { i64, ptr } %t207)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s9)
  br label %bb31
bb31:
  %t210 = load i64, ptr %l8, !tbaa !24
  %t212 = icmp sgt i64 %t210, 0
  br i1 %t212, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s11
  store ptr %l3, ptr %l74, !tbaa !29
  %t214 = load i64, ptr %l8, !tbaa !24
  store i64 %t214, ptr %l75, !tbaa !24
  %t215 = load i64, ptr %l8, !tbaa !24
  %t217 = icmp eq i64 %t215, 1
  br i1 %t217, label %bb34, label %bb35
bb33:
  br label %bb38
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l78, !tbaa !27
  br label %bb36
bb35:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l78, !tbaa !27
  br label %bb36
bb36:
  %t219 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t221 = load i64, ptr %l75, !tbaa !24
  %t222 = call i64 @__olang_fmt_i64(ptr null, i64 %t221)
  %t223 = add i64 %t220, %t222
  %t224 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t226 = add i64 %t223, %t225
  %t227 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t227, 1
  %t229 = extractvalue { i64, ptr } %t227, 0
  %t230 = add i64 %t226, %t229
  %t231 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t232 = extractvalue { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t233 = add i64 %t230, %t232
  %t234 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t233)
  call void @olang_textcopy(ptr %t234, ptr %t219, i64 %t220)
  %t235 = getelementptr i8, ptr %t234, i64 %t220
  %t236 = call i64 @__olang_fmt_i64(ptr %t235, i64 %t221)
  %t237 = getelementptr i8, ptr %t235, i64 %t222
  call void @olang_textcopy(ptr %t237, ptr %t224, i64 %t225)
  %t238 = getelementptr i8, ptr %t237, i64 %t225
  call void @olang_textcopy(ptr %t238, ptr %t228, i64 %t229)
  %t239 = getelementptr i8, ptr %t238, i64 %t229
  call void @olang_textcopy(ptr %t239, ptr %t231, i64 %t232)
  %t240 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t234, 1
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t244 = extractvalue { i64, ptr } %t241, 1
  %t245 = mul i64 %t243, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t245)
  call void @llvm.memcpy.p0.p0.i64(ptr %t246, ptr %t244, i64 %t245, i1 false)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  %t249 = load ptr, ptr %l74, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t249, { i64, ptr } %t248)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s11)
  br label %bb38
bb38:
  %t252 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l3)
  store { i64, ptr } %t252, ptr %l82
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t253 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t253, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinCount(ptr %v0, ptr %a0) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 227
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/scope:twinTab", ptr %t4, i32 0, i32 1
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l4
  br label %bb1
bb1:
  %t9 = load i64, ptr %l4, !tbaa !24
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinStats(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l9 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca i64
  %l18 = alloca i64
  %l23 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 227
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/scope:twinTab", ptr %t4, i32 0, i32 7
  %t8 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eView_3cBool_3e(ptr %v0, ptr %v0, ptr %t6)
  store { i64, ptr } %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_15, 0
  %t10 = insertvalue { ptr, ptr } %t9, ptr null, 1
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t13 = extractvalue { ptr, ptr } %t10, 0
  %t14 = extractvalue { ptr, ptr } %t10, 1
  %t15 = call i64 @std_2fprelude_2farray_2eArray_3cBool_3e_2eCount_3cBool_2c_20_3f_3e(ptr %v0, ptr %s0, { i64, ptr } %t11, ptr %t13, ptr %t14)
  store i64 %t15, ptr %l11
  br label %bb2
bb2:
  %t16 = load i64, ptr %l11, !tbaa !24
  store i64 %t16, ptr %l1, !tbaa !24
  %t17 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t17, ptr %l12
  br label %bb3
bb3:
  %t18 = load %"std/prelude/text:StringBuilder", ptr %l12
  store %"std/prelude/text:StringBuilder" %t18, ptr %l2
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 227
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/scope:twinTab", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load i64, ptr %l4, !tbaa !24
  store i64 %t26, ptr %l16, !tbaa !24
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eLen_H327daf8a5f05e7deba4c08807621a9fe(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l18
  br label %bb5
bb5:
  %t30 = load i64, ptr %l16, !tbaa !24
  %t31 = load i64, ptr %l18, !tbaa !24
  %t32 = icmp slt i64 %t30, %t31
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb7:
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eAt__Hb06c5aa34d45867a1decef3b510ab43e(ptr %v0, ptr %s2, ptr %t36, i64 %t37)
  store { i64, ptr } %t40, ptr %l23
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t43 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t46 = extractvalue { i64, ptr } %t41, 1
  %t47 = extractvalue { i64, ptr } %t41, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t51)
  call void @olang_textcopy(ptr %t52, ptr %t43, i64 %t44)
  %t53 = getelementptr i8, ptr %t52, i64 %t44
  call void @olang_textcopy(ptr %t53, ptr %t46, i64 %t47)
  %t54 = getelementptr i8, ptr %t53, i64 %t47
  call void @olang_textcopy(ptr %t54, ptr %t49, i64 %t50)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t52, 1
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = extractvalue { i64, ptr } %t56, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } %t63)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l4, !tbaa !24
  br label %bb4
bb12:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %t70, i32 0, i32 227
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/scope:twinTab", ptr %t73, i32 0, i32 1
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t75)
  store i64 %t77, ptr %l33
  br label %bb13
bb13:
  %t78 = load i64, ptr %l1, !tbaa !24
  store i64 %t78, ptr %l34, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %t79, i32 0, i32 239
  %t83 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hbb62dd24bb9d6650f5b387479de8a86f(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l37
  br label %bb14
bb14:
  %t85 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t85, ptr %l39
  br label %bb15
bb15:
  %t86 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t88 = load i64, ptr %l33, !tbaa !24
  %t89 = call i64 @__olang_fmt_i64(ptr null, i64 %t88)
  %t90 = add i64 %t87, %t89
  %t91 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t93 = add i64 %t90, %t92
  %t94 = load i64, ptr %l34, !tbaa !24
  %t95 = call i64 @__olang_fmt_i64(ptr null, i64 %t94)
  %t96 = add i64 %t93, %t95
  %t97 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t99 = add i64 %t96, %t98
  %t100 = load i64, ptr %l37, !tbaa !24
  %t101 = call i64 @__olang_fmt_i64(ptr null, i64 %t100)
  %t102 = add i64 %t99, %t101
  %t103 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t106 = add i64 %t102, %t105
  %t107 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t106)
  call void @olang_textcopy(ptr %t107, ptr %t86, i64 %t87)
  %t108 = getelementptr i8, ptr %t107, i64 %t87
  %t109 = call i64 @__olang_fmt_i64(ptr %t108, i64 %t88)
  %t110 = getelementptr i8, ptr %t108, i64 %t89
  call void @olang_textcopy(ptr %t110, ptr %t91, i64 %t92)
  %t111 = getelementptr i8, ptr %t110, i64 %t92
  %t112 = call i64 @__olang_fmt_i64(ptr %t111, i64 %t94)
  %t113 = getelementptr i8, ptr %t111, i64 %t95
  call void @olang_textcopy(ptr %t113, ptr %t97, i64 %t98)
  %t114 = getelementptr i8, ptr %t113, i64 %t98
  %t115 = call i64 @__olang_fmt_i64(ptr %t114, i64 %t100)
  %t116 = getelementptr i8, ptr %t114, i64 %t101
  call void @olang_textcopy(ptr %t116, ptr %t104, i64 %t105)
  %t117 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t107, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l19 = alloca i1
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l43 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 14
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Try", ptr %t21, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = icmp eq i64 %t26, 0
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Try", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t37 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatCall(ptr %v0, ptr %v1, ptr %t30, ptr %t34)
  store i1 %t37, ptr %l23
  br label %bb11
bb10:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb12
bb11:
  %t38 = load i1, ptr %l23, !tbaa !21
  store i1 %t38, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l19, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
bb13:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t41 = load ptr, ptr %l24, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 17
  store i1 %t47, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb16, label %bb17
bb16:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t60 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatCall(ptr %v0, ptr %v1, ptr %t55, ptr %t56)
  store i1 %t60, ptr %l33
  br label %bb19
bb19:
  %t61 = load i1, ptr %l33, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
bb20:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb21, label %bb22
bb21:
  %t66 = load ptr, ptr %l34, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 18}
  %t69 = icmp eq i64 %t67, 12
  store i1 %t69, ptr %l35, !tbaa !21
  br label %bb22
bb22:
  %t70 = load i1, ptr %l35, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t80 = getelementptr %"compiler/typed:Seq", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t84 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatCall(ptr %v0, ptr %v1, ptr %t77, ptr %t81)
  store i1 %t84, ptr %l43
  br label %bb26
bb26:
  %t85 = load i1, ptr %l43, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
bb27:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t87 = load ptr, ptr %l44, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb28, label %bb29
bb28:
  %t90 = load ptr, ptr %l44, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 18}
  %t93 = icmp eq i64 %t91, 6
  store i1 %t93, ptr %l45, !tbaa !21
  br label %bb29
bb29:
  %t94 = load i1, ptr %l45, !tbaa !21
  br i1 %t94, label %bb30, label %bb31
bb30:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [5 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l5, !tbaa !29
  %t105 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallsAt(ptr %v0, ptr %v1, ptr %t101, ptr %t102)
  store i1 %t105, ptr %l52
  br label %bb33
bb33:
  %t106 = load i1, ptr %l52, !tbaa !21
  store i1 %t106, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_f283d3e51abc3259_cd3e85ac91a669a5)
  unreachable
bb39:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eatomTerm(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1) #0 {
entry:
  %l1 = alloca %"compiler/scope:verAtom"
  %l2 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l27 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t13 = alloca { i64, [2 x i64] }, align 8
  %t26 = alloca { i64, [2 x i64] }, align 8
  %t37 = alloca { i64, [2 x i64] }, align 8
  %t49 = alloca { i64, [2 x i64] }, align 8
  %t68 = alloca { i64, [2 x i64] }, align 8
  store %"compiler/scope:verAtom" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  store i64 %t2, ptr %l2, !tbaa !24
  %t4 = load i64, ptr %l2, !tbaa !24
  %t6 = icmp eq i64 %t4, 1
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t8 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 1
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = trunc i64 %t9 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t13
  %t14 = getelementptr { i64, [2 x i64] }, ptr %t13, i32 0, i32 0
  store i64 1, ptr %t14
  %t16 = insertvalue { i32 } undef, i32 %t11, 0
  %t17 = getelementptr { i64, [2 x i64] }, ptr %t13, i32 0, i32 1
  store { i32 } %t16, ptr %t17
  %t18 = load { i64, [2 x i64] }, ptr %t13
  store { i64, [2 x i64] } %t18, ptr %l4
  br label %bb26
bb4:
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = icmp eq i64 %t20, 2
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t24 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 1
  %t25 = load i64, ptr %t24, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 0
  store i64 2, ptr %t27
  %t29 = insertvalue { i64 } undef, i64 %t25, 0
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  store { i64 } %t29, ptr %t30
  %t31 = load { i64, [2 x i64] }, ptr %t26
  store { i64, [2 x i64] } %t31, ptr %l4
  br label %bb26
bb8:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t35 = icmp eq i64 %t33, 3
  br i1 %t35, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, [2 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 0
  store i64 3, ptr %t38
  %t39 = load { i64, [2 x i64] }, ptr %t37
  store { i64, [2 x i64] } %t39, ptr %l4
  br label %bb26
bb12:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = icmp eq i64 %t41, 4
  br i1 %t43, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t45 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 1
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = getelementptr %"compiler/scope:verAtom", ptr %l1, i32 0, i32 2
  %t48 = load i64, ptr %t47, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t49
  %t50 = getelementptr { i64, [2 x i64] }, ptr %t49, i32 0, i32 0
  store i64 4, ptr %t50
  %t52 = insertvalue { i64, i64 } undef, i64 %t46, 0
  %t54 = insertvalue { i64, i64 } %t52, i64 %t48, 1
  %t55 = getelementptr { i64, [2 x i64] }, ptr %t49, i32 0, i32 1
  store { i64, i64 } %t54, ptr %t55
  %t56 = load { i64, [2 x i64] }, ptr %t49
  store { i64, [2 x i64] } %t56, ptr %l4
  br label %bb26
bb16:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t60 = icmp eq i64 %t58, 6
  br i1 %t60, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t63 = load %"compiler/scope:verAtom", ptr %l1
  %t66 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunderOf(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %t63)
  store { i64, [2 x i64] } %t66, ptr %l27
  br label %bb20
bb20:
  %t67 = load { i64, [2 x i64] }, ptr %l27
  store { i64, [2 x i64] } %t67, ptr %l4
  br label %bb26
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store { i64, [2 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [2 x i64] }, ptr %t68, i32 0, i32 0
  store i64 6, ptr %t69
  %t70 = load { i64, [2 x i64] }, ptr %t68
  store { i64, [2 x i64] } %t70, ptr %l4
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_707d6e13efba424b_e32702988c40a9af)
  unreachable
bb26:
  %t72 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t72, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaptureVar(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, [1 x i64] }
  %l11 = alloca i32
  %l15 = alloca ptr
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l48 = alloca { i64, [1 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l15, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 6
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l17
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s0, ptr %l17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l19
  br label %bb2
bb2:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s0, ptr %l3)
  store i64 %t16, ptr %l21
  br label %bb3
bb3:
  %t17 = load i64, ptr %l21, !tbaa !24
  store i64 %t17, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb9
bb6:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l28, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l28, !tbaa !24
  store i64 %t44, ptr %l25, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l25, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb11, label %bb12
bb11:
  br label %bb28
bb12:
  br label %bb13
bb13:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s0, ptr %l3, i64 %t64)
  store { i64, [1 x i64] } %t67, ptr %l48
  br label %bb14
bb14:
  %t68 = load { i64, [1 x i64] }, ptr %l48
  store { i64, [1 x i64] } %t68, ptr %l10
  %t69 = load { i64, [1 x i64] }, ptr %l10
  %t71 = extractvalue { i64, [1 x i64] } %t69, 0
  %t72 = icmp eq i64 %t71, 4
  br i1 %t72, label %bb15, label %bb16
bb15:
  %t74 = getelementptr { i64, [1 x i64] }, ptr %l10, i32 0, i32 1
  %t75 = getelementptr { i32 }, ptr %t74, i32 0, i32 0
  %t76 = load i32, ptr %t75
  store i32 %t76, ptr %l11, !tbaa !23
  br label %bb17
bb16:
  br label %bb21
bb17:
  %t78 = load i32, ptr %l11, !tbaa !23
  %t82 = icmp eq i32 %t78, %a2
  br i1 %t82, label %bb18, label %bb19
bb18:
  %t84 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t84, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb26
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_5cb72587228936ff_1a6837af5c2cdca3)
  unreachable
bb26:
  br label %bb27
bb27:
  %t86 = load i64, ptr %l8, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l8, !tbaa !24
  br label %bb10
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomponent(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i1
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %l37 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l63 = alloca i64
  %l66 = alloca i64
  %l72 = alloca ptr
  %l75 = alloca i64
  %l78 = alloca i1
  %l81 = alloca i64
  %l90 = alloca i1
  %l92 = alloca { i64, ptr }
  %l95 = alloca i1
  %l101 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l106 = alloca i1
  %l116 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t8, ptr %l24, !tbaa !27
  %t9 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr i64, ptr %t10, i64 0
  %t12 = load i64, ptr %t11, !tbaa !34
  %t15 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallsItself(ptr %v0, ptr %t7, i64 %t12)
  store i1 %t15, ptr %l26
  br label %bb3
bb3:
  %t16 = load i1, ptr %l26, !tbaa !21
  store i1 %t16, ptr %l22, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l22, !tbaa !21
  store i1 %t17, ptr %l3, !tbaa !21
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i1, ptr %l3, !tbaa !21
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 100
  store i1 %t19, ptr %t22, !tbaa !21
  %t23 = load i1, ptr %l3, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t25, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l6, !tbaa !24
  br label %bb7
bb6:
  br label %bb39
bb7:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb13
bb9:
  br label %bb10
bb10:
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t39, ptr %l37, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr i64, ptr %t43, i64 %t40
  %t45 = load i64, ptr %t44, !tbaa !34
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 6
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t49, i64 %t45)
  store ptr %t53, ptr %l43
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l43, !tbaa !29
  %t56 = getelementptr %"compiler/scope:summary", ptr %t54, i32 0, i32 20
  store i1 true, ptr %t56, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l5, !tbaa !24
  br label %bb7
bb13:
  br label %bb14
bb14:
  store i1 false, ptr %l8, !tbaa !21
  %t61 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t61, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  store i64 %t65, ptr %l11, !tbaa !24
  br label %bb15
bb15:
  %t67 = load i64, ptr %l10, !tbaa !24
  %t68 = load i64, ptr %l11, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb16, label %bb17
bb16:
  br label %bb33
bb17:
  br label %bb18
bb18:
  %t75 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t75, ptr %l54, !tbaa !27
  %t76 = load i64, ptr %l10, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i64, ptr %t79, i64 %t76
  %t81 = load i64, ptr %t80, !tbaa !34
  store i64 %t81, ptr %l12, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 6
  %t86 = load i64, ptr %l12, !tbaa !24
  %t89 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t85, i64 %t86)
  store ptr %t89, ptr %l60
  br label %bb19
bb19:
  %t90 = load ptr, ptr %l60, !tbaa !29
  %t92 = getelementptr %"compiler/scope:summary", ptr %t90, i32 0, i32 0
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t92)
  store i64 %t94, ptr %l63
  br label %bb20
bb20:
  %t95 = load i64, ptr %l63, !tbaa !24
  store i64 %t95, ptr %l13, !tbaa !24
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i64, ptr %l12, !tbaa !24
  %t100 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efacts(ptr %v0, ptr %t96, i64 %t97)
  store i64 %t100, ptr %l66
  br label %bb21
bb21:
  %t101 = load i64, ptr %l66, !tbaa !24
  store i64 %t101, ptr %l14, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferClaims(ptr %v0, ptr %t102, i64 %t103)
  br label %bb22
bb22:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 6
  %t109 = load i64, ptr %l12, !tbaa !24
  %t112 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t108, i64 %t109)
  store ptr %t112, ptr %l72
  br label %bb23
bb23:
  %t113 = load ptr, ptr %l72, !tbaa !29
  %t115 = getelementptr %"compiler/scope:summary", ptr %t113, i32 0, i32 0
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t115)
  store i64 %t117, ptr %l75
  br label %bb24
bb24:
  %t118 = load i64, ptr %l13, !tbaa !24
  %t119 = load i64, ptr %l75, !tbaa !24
  %t121 = icmp ne i64 %t119, %t118
  br i1 %t121, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb28
bb26:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i64, ptr %l12, !tbaa !24
  %t127 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efacts(ptr %v0, ptr %t123, i64 %t124)
  store i64 %t127, ptr %l81
  br label %bb27
bb27:
  %t128 = load i64, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l81, !tbaa !24
  %t131 = icmp ne i64 %t129, %t128
  store i1 %t131, ptr %l78, !tbaa !21
  br label %bb28
bb28:
  %t133 = load i1, ptr %l78, !tbaa !21
  br i1 %t133, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t134 = load i64, ptr %l10, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l10, !tbaa !24
  br label %bb15
bb33:
  %t138 = load i1, ptr %l8, !tbaa !21
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb14
bb38:
  br label %bb39
bb39:
  %t142 = load i1, ptr %l3, !tbaa !21
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb40, label %bb41
bb40:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t147, ptr %l92, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 0
  %t151 = load i64, ptr %t150, !tbaa !34
  %t152 = load i1, ptr %l2, !tbaa !21
  %t156 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeOnce(ptr %v0, ptr %t146, i64 %t151, i1 %t152)
  store i1 %t156, ptr %l95
  br label %bb42
bb41:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb43
bb42:
  %t157 = load i1, ptr %l95, !tbaa !21
  store i1 %t157, ptr %l90, !tbaa !21
  br label %bb43
bb43:
  %t158 = load i1, ptr %l90, !tbaa !21
  br i1 %t158, label %bb44, label %bb45
bb44:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edone(ptr %v0, ptr %v1, ptr %t159, { i64, ptr } %t160)
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %ret
bb47:
  %t163 = load i1, ptr %l3, !tbaa !21
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb48, label %bb49
bb48:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t168, ptr %l101, !tbaa !27
  %t169 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr i64, ptr %t170, i64 0
  %t172 = load i64, ptr %t171, !tbaa !34
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferClaims(ptr %v0, ptr %t167, i64 %t172)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l103, !tbaa !29
  %t176 = load i1, ptr %l2, !tbaa !21
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l106, !tbaa !21
  br label %bb54
bb53:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/scope:Scoper", ptr %t180, i32 0, i32 217
  %t183 = load i1, ptr %t182, !tbaa !21
  store i1 %t183, ptr %l106, !tbaa !21
  br label %bb54
bb54:
  %t185 = load i1, ptr %l106, !tbaa !21
  %t186 = load ptr, ptr %l103, !tbaa !29
  %t187 = getelementptr %"compiler/scope:Scoper", ptr %t186, i32 0, i32 220
  store i1 %t185, ptr %t187, !tbaa !21
  %t188 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t188, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t190 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t190, 0
  store i64 %t192, ptr %l17, !tbaa !24
  br label %bb55
bb55:
  %t194 = load i64, ptr %l16, !tbaa !24
  %t195 = load i64, ptr %l17, !tbaa !24
  %t198 = icmp slt i64 %t194, %t195
  %t200 = xor i1 %t198, true
  br i1 %t200, label %bb56, label %bb57
bb56:
  br label %bb61
bb57:
  br label %bb58
bb58:
  %t202 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t202, ptr %l116, !tbaa !27
  %t203 = load i64, ptr %l16, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i64, ptr %t206, i64 %t203
  %t208 = load i64, ptr %t207, !tbaa !34
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %t210, i64 %t208, i1 %t212)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t216 = load i64, ptr %l16, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l16, !tbaa !24
  br label %bb55
bb61:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/scope:Scoper", ptr %t220, i32 0, i32 220
  store i1 false, ptr %t222, !tbaa !21
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edone(ptr %v0, ptr %v1, ptr %t223, { i64, ptr } %t224)
  br label %bb62
bb62:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertsStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l20 = alloca ptr
  %l25 = alloca i64
  %l28 = alloca i1
  %l29 = alloca ptr
  %l38 = alloca %"compiler/typed:Local"
  %l40 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i64
  %l50 = alloca %"compiler/source:Span"
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
  store ptr %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l10, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 5
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l3, !tbaa !29
  br label %bb7
bb6:
  br label %bb29
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Promote", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t32 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertedPlace(ptr %v0, ptr %s0, ptr %s0, ptr %t25, ptr %t29)
  store ptr %t32, ptr %l20
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l20, !tbaa !29
  store ptr %t33, ptr %l4, !tbaa !29
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t41 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s0, ptr %t39)
  store i64 %t41, ptr %l25
  br label %bb12
bb12:
  %t42 = load i64, ptr %l25, !tbaa !24
  store i64 %t42, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t43, 0
  br i1 %t45, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb20
bb14:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l29, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 26
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_55a665eedd831f0e_1c92b15ee56319f2)
  unreachable
bb16:
  br label %bb17
bb17:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 26
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Body", ptr %t58, i32 0, i32 7
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t61, i64 %t62)
  store %"compiler/typed:Local" %t65, ptr %l38
  br label %bb18
bb18:
  %t66 = getelementptr %"compiler/typed:Local", ptr %l38, i32 0, i32 2
  %t67 = load i32, ptr %t66, !tbaa !23
  %t68 = load ptr, ptr %l29, !tbaa !29
  %t70 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t68, i32 %t67)
  store i1 %t70, ptr %l40
  br label %bb19
bb19:
  %t71 = load i1, ptr %l40, !tbaa !21
  store i1 %t71, ptr %l28, !tbaa !21
  br label %bb20
bb20:
  %t72 = load i1, ptr %l28, !tbaa !21
  br i1 %t72, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 207
  %t77 = load i1, ptr %t76, !tbaa !21
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/scope:Scoper", ptr %t81, i32 0, i32 210
  store i1 true, ptr %t83, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l47, !tbaa !29
  %t86 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceView, !tbaa !24
  store i64 %t86, ptr %l48, !tbaa !24
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t87)
  store %"compiler/source:Span" %t89, ptr %l50
  br label %bb27
bb27:
  %t90 = load ptr, ptr %l47, !tbaa !29
  %t91 = load i64, ptr %l48, !tbaa !24
  %t92 = load %"compiler/source:Span", ptr %l50
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %t90, i64 %t91, %"compiler/source:Span" %t92)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb33:
  call void @__olang_check_failed(ptr @olang_loc_7348807c7ba2826c_db6342dcac0c01d0)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i32
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l6
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %rv
  br label %ret
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 123
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %t13, i64 %t14)
  %t18 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t17, 1
  %t19 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t17, 0
  store i32 %t19, ptr %l12
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb7, label %ok.21, !prof !99
ok.21:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l11
  br label %bb6
bb6:
  %t23 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v1, ptr %l11)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l14
  br label %bb9
bb7:
  br label %bb8
bb8:
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l15
  br label %bb10
bb9:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l7
  br label %bb11
bb10:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l7
  br label %bb11
bb11:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  store i1 %t12, ptr %l3, !tbaa !21
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_d29996678377eee3_d1b974339c283baf)
  unreachable
bb9:
  %t14 = load i1, ptr %l3, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropLifts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l2
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
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
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i64, ptr %t21, i64 %t18
  %t23 = load i64, ptr %t22, !tbaa !34
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l2, i64 %t23, i1 true)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb2
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 149
  call void @compiler_2fscope_2edropKeyed_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %s0, ptr %t34, ptr %l2)
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 150
  call void @compiler_2fscope_2edropKeyed_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %s0, ptr %t39, ptr %l2)
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 151
  call void @compiler_2fscope_2edropKeyed_3cBool_3e(ptr %v0, ptr %s0, ptr %t44, ptr %l2)
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 152
  call void @compiler_2fscope_2edropKeyed_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %s0, ptr %t49, ptr %l2)
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 155
  call void @compiler_2fscope_2edropKeyed_3cBool_3e(ptr %v0, ptr %s0, ptr %t54, ptr %l2)
  br label %bb13
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 156
  call void @compiler_2fscope_2edropKeyed_3cBool_3e(ptr %v0, ptr %s0, ptr %t59, ptr %l2)
  br label %bb14
bb14:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 216
  call void @compiler_2fscope_2edropKeyed_3ccompiler_2fscope_3aplacedRow_3e(ptr %v0, ptr %s0, ptr %t64, ptr %l2)
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/scope:Scoper", ptr %t67, i32 0, i32 171
  call void @compiler_2fscope_2edropKeyed_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %s0, ptr %t69, ptr %l2)
  br label %bb16
bb16:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 170
  call void @compiler_2fscope_2edropKeyed_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_3e(ptr %v0, ptr %s0, ptr %t74, ptr %l2)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorBody(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i1
  %l13 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l10
  br label %bb2
bb2:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  store ptr %t23, ptr %l13, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l18
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t34 = load ptr, ptr %l13, !tbaa !29
  %t35 = load i32, ptr %l18, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l19
  br label %bb6
bb6:
  %t37 = load i32, ptr %l19, !tbaa !23
  store i32 %t37, ptr %l2, !tbaa !23
  br label %bb7
bb7:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 8
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t40, i32 %t41)
  %t45 = extractvalue { i32, i64 } %t44, 1
  %t46 = extractvalue { i32, i64 } %t44, 0
  store i32 %t46, ptr %l25
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %bb9, label %ok.48, !prof !99
ok.48:
  store i64 %t45, ptr %l24
  br label %bb8
bb8:
  %t49 = load i64, ptr %l24, !tbaa !24
  store i64 %t49, ptr %l20, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i64 -1, ptr %l20, !tbaa !24
  br label %bb11
bb11:
  %t50 = load i64, ptr %l20, !tbaa !24
  store i64 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efacts(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 6
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/scope:summary", ptr %t9, i32 0, i32 1
  %t13 = call i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l9
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr %"compiler/scope:summary", ptr %t14, i32 0, i32 2
  %t18 = call i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l12
  br label %bb3
bb3:
  %t19 = load i64, ptr %l9, !tbaa !24
  %t20 = load i64, ptr %l12, !tbaa !24
  %t21 = add i64 %t19, %t20
  store i64 %t21, ptr %l13, !tbaa !24
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/scope:summary", ptr %t22, i32 0, i32 5
  %t26 = call i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l16
  br label %bb4
bb4:
  %t27 = load i64, ptr %l13, !tbaa !24
  %t28 = load i64, ptr %l16, !tbaa !24
  %t29 = add i64 %t27, %t28
  store i64 %t29, ptr %l17, !tbaa !24
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/scope:summary", ptr %t30, i32 0, i32 6
  %t34 = call i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l20
  br label %bb5
bb5:
  %t35 = load i64, ptr %l17, !tbaa !24
  %t36 = load i64, ptr %l20, !tbaa !24
  %t37 = add i64 %t35, %t36
  store i64 %t37, ptr %l21, !tbaa !24
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/scope:summary", ptr %t38, i32 0, i32 7
  %t42 = call i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l21, !tbaa !24
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = add i64 %t43, %t44
  store i64 %t45, ptr %l25, !tbaa !24
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr %"compiler/scope:summary", ptr %t46, i32 0, i32 8
  %t50 = call i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %t48)
  store i64 %t50, ptr %l28
  br label %bb7
bb7:
  %t51 = load i64, ptr %l25, !tbaa !24
  %t52 = load i64, ptr %l28, !tbaa !24
  %t53 = add i64 %t51, %t52
  store i64 %t53, ptr %l29, !tbaa !24
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr %"compiler/scope:summary", ptr %t54, i32 0, i32 9
  %t58 = call i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l32
  br label %bb8
bb8:
  %t59 = load i64, ptr %l29, !tbaa !24
  %t60 = load i64, ptr %l32, !tbaa !24
  %t61 = add i64 %t59, %t60
  store i64 %t61, ptr %l33, !tbaa !24
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"compiler/scope:summary", ptr %t62, i32 0, i32 10
  %t66 = call i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l36
  br label %bb9
bb9:
  %t67 = load i64, ptr %l33, !tbaa !24
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = add i64 %t67, %t68
  store i64 %t69, ptr %l37, !tbaa !24
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t72 = getelementptr %"compiler/scope:summary", ptr %t70, i32 0, i32 17
  %t73 = load i1, ptr %t72, !tbaa !21
  br i1 %t73, label %bb10, label %bb11
bb10:
  store i64 1, ptr %l40, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb12
bb12:
  %t75 = load i64, ptr %l37, !tbaa !24
  %t76 = load i64, ptr %l40, !tbaa !24
  %t77 = add i64 %t75, %t76
  store i64 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlaceRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i1
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i1
  %l36 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i1
  %l46 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca i1
  %l56 = alloca i64
  %l58 = alloca i64
  %rv = alloca i64
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
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
  %t20 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlaceRoot(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i64 %t20, ptr %l16
  br label %bb6
bb6:
  %t21 = load i64, ptr %l16, !tbaa !24
  store i64 %t21, ptr %l7, !tbaa !24
  br label %bb41
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Elem", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlaceRoot(ptr %v0, ptr %v1, ptr %t37, ptr %t41)
  store i64 %t44, ptr %l26
  br label %bb13
bb13:
  %t45 = load i64, ptr %l26, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  br label %bb41
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t47 = load ptr, ptr %l27, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l27, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 5
  store i1 %t53, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l28, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Payload", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t68 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlaceRoot(ptr %v0, ptr %v1, ptr %t61, ptr %t65)
  store i64 %t68, ptr %l36
  br label %bb20
bb20:
  %t69 = load i64, ptr %l36, !tbaa !24
  store i64 %t69, ptr %l7, !tbaa !24
  br label %bb41
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l37, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 2
  store i1 %t77, ptr %l38, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l38, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t90 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExprRoot(ptr %v0, ptr %v1, ptr %t85, ptr %t86)
  store i64 %t90, ptr %l46
  br label %bb27
bb27:
  %t91 = load i64, ptr %l46, !tbaa !24
  store i64 %t91, ptr %l7, !tbaa !24
  br label %bb41
bb28:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t93 = load ptr, ptr %l47, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb29, label %bb30
bb29:
  %t96 = load ptr, ptr %l47, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 8}
  %t99 = icmp eq i64 %t97, 6
  store i1 %t99, ptr %l48, !tbaa !21
  br label %bb30
bb30:
  %t100 = load i1, ptr %l48, !tbaa !21
  br i1 %t100, label %bb31, label %bb32
bb31:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l6, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l6, !tbaa !29
  %t112 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExprRoot(ptr %v0, ptr %v1, ptr %t107, ptr %t108)
  store i64 %t112, ptr %l56
  br label %bb34
bb34:
  %t113 = load i64, ptr %l56, !tbaa !24
  store i64 %t113, ptr %l7, !tbaa !24
  br label %bb41
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t114)
  store i64 %t116, ptr %l58
  br label %bb39
bb39:
  %t117 = load i64, ptr %l58, !tbaa !24
  store i64 %t117, ptr %l7, !tbaa !24
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_e9ea5d5d3867ce51_dfb99b888a23f285)
  unreachable
bb41:
  %t118 = load i64, ptr %l7, !tbaa !24
  store i64 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efloorOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l8 = alloca i1
  %l11 = alloca i64
  %l14 = alloca i64
  %l21 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t41 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = sub i64 0, %t14
  %t18 = sub i64 %t16, 1
  store i64 %t18, ptr %l11, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 110
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l14
  br label %bb6
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb6:
  %t24 = load i64, ptr %l11, !tbaa !24
  %t25 = load i64, ptr %l14, !tbaa !24
  %t26 = icmp slt i64 %t24, %t25
  store i1 %t26, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l8, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 110
  %t32 = load i64, ptr %l2, !tbaa !24
  %t34 = sub i64 0, %t32
  %t36 = sub i64 %t34, 1
  %t39 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t31, i64 %t36)
  store { i64, [2 x i64] } %t39, ptr %l21
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t40 = load { i64, [2 x i64] }, ptr %l21
  store { i64, [2 x i64] } %t40, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_7a90b7bdb9714c43_1678fcc4f66eb1af)
  unreachable
bb17:
  store { i64, [2 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [2 x i64] }, ptr %t41, i32 0, i32 0
  store i64 0, ptr %t42
  %t43 = load { i64, [2 x i64] }, ptr %t41
  store { i64, [2 x i64] } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efollowable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/scope:fnRecs"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:fnRec"
  %l9 = alloca %"compiler/scope:fnRecs"
  %l12 = alloca i1
  %l14 = alloca i64
  %l16 = alloca i1
  %l18 = alloca i64
  %l20 = alloca i1
  %l22 = alloca i64
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca %"compiler/scope:fnRec"
  %l35 = alloca %"compiler/scope:fnRec"
  %l38 = alloca i1
  %l39 = alloca i64
  %l42 = alloca i64
  %l44 = alloca i1
  %l48 = alloca ptr
  %l52 = alloca i1
  %l56 = alloca ptr
  %l65 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeyRecs(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a1)
  store %"compiler/scope:fnRecs" %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:fnRecs", ptr %l9
  store %"compiler/scope:fnRecs" %t6, ptr %l3
  %t7 = getelementptr %"compiler/scope:fnRecs", ptr %l3, i32 0, i32 1
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb5
bb3:
  %t12 = getelementptr %"compiler/scope:fnRecs", ptr %l3, i32 0, i32 0
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t12)
  store i64 %t14, ptr %l14
  br label %bb4
bb4:
  %t15 = load i64, ptr %l14, !tbaa !24
  %t16 = icmp eq i64 %t15, 0
  store i1 %t16, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb9
bb7:
  %t19 = getelementptr %"compiler/scope:fnRecs", ptr %l3, i32 0, i32 2
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t19)
  store i64 %t21, ptr %l18
  br label %bb8
bb8:
  %t22 = load i64, ptr %l18, !tbaa !24
  %t23 = icmp sgt i64 %t22, 0
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t25 = load i1, ptr %l16, !tbaa !21
  br i1 %t25, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb13
bb11:
  %t26 = getelementptr %"compiler/scope:fnRecs", ptr %l3, i32 0, i32 3
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t26)
  store i64 %t28, ptr %l22
  br label %bb12
bb12:
  %t29 = load i64, ptr %l22, !tbaa !24
  %t30 = icmp sgt i64 %t29, 0
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l20, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t34 = getelementptr %"compiler/scope:fnRecs", ptr %l3, i32 0, i32 0
  store ptr %t34, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t36 = load i64, ptr %l5, !tbaa !24
  store i64 %t36, ptr %l26, !tbaa !24
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t37)
  store i64 %t39, ptr %l28
  br label %bb18
bb18:
  %t40 = load i64, ptr %l26, !tbaa !24
  %t41 = load i64, ptr %l28, !tbaa !24
  %t42 = icmp slt i64 %t40, %t41
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb20:
  br label %bb21
bb21:
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t46, i64 %t47)
  store %"compiler/scope:fnRec" %t50, ptr %l33
  br label %bb22
bb22:
  %t52 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s3, ptr %l33)
  store %"compiler/scope:fnRec" %t52, ptr %l35
  br label %bb23
bb23:
  %t53 = load %"compiler/scope:fnRec", ptr %l35
  store %"compiler/scope:fnRec" %t53, ptr %l6
  %t54 = getelementptr %"compiler/scope:fnRec", ptr %l6, i32 0, i32 0
  %t55 = load i64, ptr %t54, !tbaa !24
  %t57 = icmp slt i64 %t55, 0
  br i1 %t57, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb27
bb25:
  %t59 = getelementptr %"compiler/scope:fnRec", ptr %l6, i32 0, i32 0
  %t60 = load i64, ptr %t59, !tbaa !24
  store i64 %t60, ptr %l39, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/scope:Scoper", ptr %t61, i32 0, i32 6
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %t63)
  store i64 %t65, ptr %l42
  br label %bb26
bb26:
  %t66 = load i64, ptr %l39, !tbaa !24
  %t67 = load i64, ptr %l42, !tbaa !24
  %t68 = icmp sge i64 %t66, %t67
  store i1 %t68, ptr %l38, !tbaa !21
  br label %bb27
bb27:
  %t70 = load i1, ptr %l38, !tbaa !21
  br i1 %t70, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb31
bb29:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 6
  %t74 = getelementptr %"compiler/scope:fnRec", ptr %l6, i32 0, i32 0
  %t75 = load i64, ptr %t74, !tbaa !24
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t73, i64 %t75)
  store ptr %t78, ptr %l48
  br label %bb30
bb30:
  %t79 = load ptr, ptr %l48, !tbaa !29
  %t81 = getelementptr %"compiler/scope:summary", ptr %t79, i32 0, i32 19
  %t82 = load i1, ptr %t81, !tbaa !21
  %t84 = xor i1 %t82, true
  store i1 %t84, ptr %l44, !tbaa !21
  br label %bb31
bb31:
  %t86 = load i1, ptr %l44, !tbaa !21
  br i1 %t86, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb35
bb33:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/scope:Scoper", ptr %t87, i32 0, i32 6
  %t90 = getelementptr %"compiler/scope:fnRec", ptr %l6, i32 0, i32 0
  %t91 = load i64, ptr %t90, !tbaa !24
  %t94 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t89, i64 %t91)
  store ptr %t94, ptr %l56
  br label %bb34
bb34:
  %t95 = load ptr, ptr %l56, !tbaa !29
  %t97 = getelementptr %"compiler/scope:summary", ptr %t95, i32 0, i32 20
  %t98 = load i1, ptr %t97, !tbaa !21
  store i1 %t98, ptr %l52, !tbaa !21
  br label %bb35
bb35:
  %t100 = load i1, ptr %l52, !tbaa !21
  br i1 %t100, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb39:
  %t102 = load i64, ptr %l5, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l5, !tbaa !24
  br label %bb17
bb40:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t111 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esomeUncovered(ptr %v0, ptr %s0, ptr %t106, ptr %l3, i32 %a2)
  store i1 %t111, ptr %l65
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t112 = load i1, ptr %l65, !tbaa !21
  store i1 %t112, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 217
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 220
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l7, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t16, ptr %a1)
  store ptr %t21, ptr %l14
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t23 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t22)
  store ptr %t23, ptr %l15
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l15, !tbaa !29
  store ptr %t24, ptr %l2, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  store ptr %t25, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 2
  store i1 %t32, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  br label %bb17
bb12:
  %t40 = load ptr, ptr %l2, !tbaa !29
  store ptr %t40, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 3
  store i1 %t47, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t48 = load i1, ptr %l23, !tbaa !21
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l3, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %s0, ptr %t55, ptr %t56)
  br label %bb18
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
  call void @__olang_check_failed(ptr @olang_loc_fe279d5820b85dad_458b53b3da9c6ff1)
  unreachable
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveTargets(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, [2 x i64] } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"compiler/scope:placeSlot"
  %l10 = alloca i1
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i1
  %l24 = alloca { i64, ptr }
  %l29 = alloca i1
  %l30 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca i1
  %l37 = alloca %"compiler/scope:placeSlot"
  %l41 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca i64
  %l57 = alloca ptr
  %l66 = alloca %"compiler/source:Span"
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Spawn", ptr %a2, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  %t11 = load i64, ptr %l7, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb32
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t18, ptr %l24, !tbaa !27
  %t19 = load i64, ptr %l6, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l8, !tbaa !29
  %t26 = load ptr, ptr %l8, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb9
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l30, !tbaa !29
  %t31 = load ptr, ptr %l8, !tbaa !29
  %t33 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t31)
  store i32 %t33, ptr %l32
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l30, !tbaa !29
  %t35 = load i32, ptr %l32, !tbaa !23
  %t36 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t36, ptr %l33
  br label %bb8
bb8:
  %t37 = load i1, ptr %l33, !tbaa !21
  %t38 = xor i1 %t37, true
  store i1 %t38, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l29, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  br label %bb31
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l8, !tbaa !29
  %t45 = call %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %t41, ptr %t42)
  store %"compiler/scope:placeSlot" %t45, ptr %l37
  br label %bb13
bb13:
  %t46 = load %"compiler/scope:placeSlot", ptr %l37
  store %"compiler/scope:placeSlot" %t46, ptr %l9
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l8, !tbaa !29
  %t49 = getelementptr %"compiler/scope:placeSlot", ptr %l9, i32 0, i32 0
  %t50 = load { i64, [2 x i64] }, ptr %t49
  %t54 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindingUnknown(ptr %v0, ptr %v1, ptr %t47, ptr %t48, { i64, [2 x i64] } %t50)
  store i1 %t54, ptr %l41
  br label %bb14
bb14:
  %t55 = load i1, ptr %l41, !tbaa !21
  br i1 %t55, label %bb15, label %bb16
bb15:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %t56, ptr %t57)
  br label %bb17
bb16:
  br label %bb25
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %t60, i32 0, i32 28
  %t63 = load i1, ptr %t62, !tbaa !21
  br i1 %t63, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l46, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l47, !tbaa !29
  %t67 = load ptr, ptr %l8, !tbaa !29
  %t69 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t67)
  store %"compiler/source:Span" %t69, ptr %l49
  br label %bb20
bb19:
  br label %bb24
bb20:
  %t70 = load ptr, ptr %l47, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l49
  %t72 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %t70, %"compiler/source:Span" %t71)
  store %"compiler/source:Span" %t72, ptr %l50
  br label %bb21
bb21:
  %t73 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldBindingUnknown(ptr %s5)
  store %"compiler/diagmsg:Msg" %t73, ptr %l51
  br label %bb22
bb22:
  %t74 = load ptr, ptr %l46, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l50
  %t76 = load %"compiler/diagmsg:Msg", ptr %l51
  %t77 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s5, ptr %t74, %"compiler/source:Span" %t75, %"compiler/diagmsg:Msg" %t76)
  store i64 %t77, ptr %l52
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb24
bb24:
  br label %bb31
bb25:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Scoper", ptr %t78, i32 0, i32 90
  %t81 = load i1, ptr %t80, !tbaa !21
  store i1 %t81, ptr %l10, !tbaa !21
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 91
  %t86 = load %"compiler/source:Span", ptr %t85
  store %"compiler/source:Span" %t86, ptr %l11
  store i1 true, ptr %l12, !tbaa !21
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l57, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/scope:Scoper", ptr %t89, i32 0, i32 26
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  br i1 %t94, label %bb26, label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_3f83cc843b74f60a_734d81dd8b549c1e)
  unreachable
bb27:
  br label %bb28
bb28:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t96, i32 0, i32 26
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Body", ptr %t99, i32 0, i32 3
  %t103 = load i64, ptr %t102, !tbaa !24
  %t105 = load ptr, ptr %l57, !tbaa !29
  %t108 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t105, i64 %t103, %"compiler/source:Span" %a1)
  store %"compiler/source:Span" %t108, ptr %l66
  br label %bb29
bb29:
  %t109 = load %"compiler/source:Span", ptr %l66
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i1, ptr %l12, !tbaa !21
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 90
  store i1 %t111, ptr %t114, !tbaa !21
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/scope:Scoper", ptr %t115, i32 0, i32 91
  store %"compiler/source:Span" %t109, ptr %t119
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/scope:placeSlot", ptr %l9, i32 0, i32 0
  %t123 = load { i64, [2 x i64] }, ptr %t122
  %t124 = getelementptr %"compiler/scope:placeSlot", ptr %l9, i32 0, i32 1
  %t125 = load i1, ptr %t124, !tbaa !21
  %t127 = getelementptr %"compiler/scope:placeSlot", ptr %l9, i32 0, i32 2
  %t128 = load i64, ptr %t127, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v2, ptr %t120, { i64, [2 x i64] } %a3, { i64, [2 x i64] } %t123, i1 %t125, ptr %a4, i64 %t128)
  br label %bb30
bb30:
  %t135 = load i1, ptr %l10, !tbaa !21
  %t137 = load %"compiler/source:Span", ptr %l11
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/scope:Scoper", ptr %t139, i32 0, i32 90
  store i1 %t135, ptr %t143, !tbaa !21
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/scope:Scoper", ptr %t144, i32 0, i32 91
  store %"compiler/source:Span" %t137, ptr %t148
  br label %bb31
bb31:
  %t149 = load i64, ptr %l6, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l6, !tbaa !24
  br label %bb1
bb32:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisText(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l12 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i1
  %l21 = alloca i32
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
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d21, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i32 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i32, ptr %l5, !tbaa !23
  store i32 %t7, ptr %l2, !tbaa !23
  %t8 = load i32, ptr %l2, !tbaa !23
  %t10 = icmp slt i32 %t8, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load i32, ptr %l1, !tbaa !23
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = icmp eq i32 %t13, %t14
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l15
  br label %bb7
bb7:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l21
  br label %bb10
bb9:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb11
bb10:
  %t35 = load i32, ptr %l2, !tbaa !23
  %t36 = load i32, ptr %l21, !tbaa !23
  %t38 = icmp eq i32 %t36, %t35
  store i1 %t38, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l16, !tbaa !21
  store i1 %t40, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t41 = load i1, ptr %l12, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eletRegion(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l13 = alloca i1
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i1
  %l31 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %t2)
  store ptr %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = call i64 @compiler_2fscope_2eregionLocal(ptr %s0, ptr %t7)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l10, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t17 = sext i32 %a1 to i64
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereassigned(ptr %v0, ptr %t14, i64 %t17)
  store i1 %t20, ptr %l17
  br label %bb5
bb5:
  %t21 = load i1, ptr %l17, !tbaa !21
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t23 = load i64, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t23, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t30 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t25, ptr %t26)
  store ptr %t30, ptr %l22
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l22, !tbaa !29
  store ptr %t31, ptr %l4, !tbaa !29
  %t32 = load ptr, ptr %l4, !tbaa !29
  store ptr %t32, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t33 = load ptr, ptr %l24, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l24, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 18}
  %t39 = icmp eq i64 %t37, 3
  store i1 %t39, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l25, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t41 = load ptr, ptr %l4, !tbaa !29
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t43, i32 0, i32 2
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t49 = call i64 @compiler_2fscope_2eregionRoot(ptr %s0, ptr %t47)
  store i64 %t49, ptr %l31
  br label %bb16
bb16:
  %t50 = load i64, ptr %l31, !tbaa !24
  store i64 %t50, ptr %l23, !tbaa !24
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t51 = load i64, ptr %l3, !tbaa !24
  store i64 %t51, ptr %l23, !tbaa !24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_5522d97a67b9c6cd_b4761099589b85d1)
  unreachable
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load i64, ptr %l23, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l44 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l74 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l84 = alloca i1
  %l85 = alloca i1
  %l89 = alloca i1
  %l91 = alloca { i64, ptr }
  %l94 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i1
  %l110 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca i1
  %l120 = alloca i1
  %l121 = alloca i1
  %l126 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l135 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t7 = load ptr, ptr %l16, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l16, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 6
  store i1 %t13, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l17, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t16 = load ptr, ptr %l20, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l20, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 7
  store i1 %t22, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l21, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t25 = load ptr, ptr %l24, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l24, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 8
  store i1 %t31, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l25, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb103
bb17:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t34 = load ptr, ptr %l28, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb18, label %bb19
bb18:
  %t37 = load ptr, ptr %l28, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 18}
  %t40 = icmp eq i64 %t38, 5
  store i1 %t40, ptr %l29, !tbaa !21
  br label %bb19
bb19:
  %t41 = load i1, ptr %l29, !tbaa !21
  br i1 %t41, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  %t42 = load ptr, ptr %l1, !tbaa !29
  store ptr %t42, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t43 = load ptr, ptr %l32, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb22, label %bb23
bb22:
  %t46 = load ptr, ptr %l32, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 18}
  %t49 = icmp eq i64 %t47, 16
  store i1 %t49, ptr %l33, !tbaa !21
  br label %bb23
bb23:
  %t50 = load i1, ptr %l33, !tbaa !21
  br i1 %t50, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb103
bb27:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t52 = load ptr, ptr %l36, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb28, label %bb29
bb28:
  %t55 = load ptr, ptr %l36, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 18}
  %t58 = icmp eq i64 %t56, 0
  store i1 %t58, ptr %l37, !tbaa !21
  br label %bb29
bb29:
  %t59 = load i1, ptr %l37, !tbaa !21
  br i1 %t59, label %bb30, label %bb31
bb30:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t62, i32 0, i32 1
  %t64 = load i32, ptr %t63
  store i32 %t64, ptr %l2, !tbaa !23
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l2, !tbaa !23
  %t70 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t66, i32 %t67)
  store i1 %t70, ptr %l44
  br label %bb33
bb33:
  %t71 = load i1, ptr %l44, !tbaa !21
  store i1 %t71, ptr %l15, !tbaa !21
  br label %bb103
bb34:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t73 = load ptr, ptr %l45, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb35, label %bb36
bb35:
  %t76 = load ptr, ptr %l45, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 18}
  %t79 = icmp eq i64 %t77, 14
  store i1 %t79, ptr %l46, !tbaa !21
  br label %bb36
bb36:
  %t80 = load i1, ptr %l46, !tbaa !21
  br i1 %t80, label %bb37, label %bb38
bb37:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l3, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l3, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Try", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t94 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t87, ptr %t91)
  store i1 %t94, ptr %l54
  br label %bb40
bb40:
  %t95 = load i1, ptr %l54, !tbaa !21
  store i1 %t95, ptr %l15, !tbaa !21
  br label %bb103
bb41:
  %t96 = load ptr, ptr %l1, !tbaa !29
  store ptr %t96, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t97 = load ptr, ptr %l55, !tbaa !29
  %t98 = icmp ne ptr %t97, null
  br i1 %t98, label %bb42, label %bb43
bb42:
  %t100 = load ptr, ptr %l55, !tbaa !29
  %t101 = load i64, ptr %t100, !range !{i64 0, i64 18}
  %t103 = icmp eq i64 %t101, 17
  store i1 %t103, ptr %l56, !tbaa !21
  br label %bb43
bb43:
  %t104 = load i1, ptr %l56, !tbaa !21
  br i1 %t104, label %bb44, label %bb45
bb44:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t105, i32 0, i32 1
  %t108 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t107, i32 0, i32 2
  %t109 = load ptr, ptr %t108
  store ptr %t109, ptr %l4, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l4, !tbaa !29
  %t116 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t111, ptr %t112)
  store i1 %t116, ptr %l64
  br label %bb47
bb47:
  %t117 = load i1, ptr %l64, !tbaa !21
  store i1 %t117, ptr %l15, !tbaa !21
  br label %bb103
bb48:
  %t118 = load ptr, ptr %l1, !tbaa !29
  store ptr %t118, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t119 = load ptr, ptr %l65, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb49, label %bb50
bb49:
  %t122 = load ptr, ptr %l65, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 18}
  %t125 = icmp eq i64 %t123, 12
  store i1 %t125, ptr %l66, !tbaa !21
  br label %bb50
bb50:
  %t126 = load i1, ptr %l66, !tbaa !21
  br i1 %t126, label %bb51, label %bb52
bb51:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t129, i32 0, i32 2
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l5, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l5, !tbaa !29
  %t136 = getelementptr %"compiler/typed:Seq", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t140 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t133, ptr %t137)
  store i1 %t140, ptr %l74
  br label %bb54
bb54:
  %t141 = load i1, ptr %l74, !tbaa !21
  store i1 %t141, ptr %l15, !tbaa !21
  br label %bb103
bb55:
  %t142 = load ptr, ptr %l1, !tbaa !29
  store ptr %t142, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t143 = load ptr, ptr %l75, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb56, label %bb57
bb56:
  %t146 = load ptr, ptr %l75, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 18}
  %t149 = icmp eq i64 %t147, 9
  store i1 %t149, ptr %l76, !tbaa !21
  br label %bb57
bb57:
  %t150 = load i1, ptr %l76, !tbaa !21
  br i1 %t150, label %bb58, label %bb59
bb58:
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = getelementptr { i64, [5 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t153, i32 0, i32 2
  %t155 = load i32, ptr %t154, !range !{i32 0, i32 52}
  store i32 %t155, ptr %l6
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr { i64, [5 x i64] }, ptr %t157, i32 0, i32 1
  %t160 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t159, i32 0, i32 4
  %t161 = load { i64, ptr }, ptr %t160
  store { i64, ptr } %t161, ptr %l7, !tbaa !27
  br label %bb60
bb59:
  br label %bb69
bb60:
  %t163 = load i32, ptr %l6, !range !{i32 0, i32 52}
  %t165 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t163)
  store i1 %t165, ptr %l84
  br label %bb61
bb61:
  %t166 = load i1, ptr %l84, !tbaa !21
  br i1 %t166, label %bb62, label %bb63
bb62:
  %t167 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t171 = icmp sgt i64 %t169, 0
  store i1 %t171, ptr %l85, !tbaa !21
  br label %bb64
bb63:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb64
bb64:
  %t173 = load i1, ptr %l85, !tbaa !21
  br i1 %t173, label %bb65, label %bb66
bb65:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t175, ptr %l91, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr ptr, ptr %t177, i64 0
  %t179 = load ptr, ptr %t178, !tbaa !39
  %t183 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t174, ptr %t179)
  store i1 %t183, ptr %l94
  br label %bb67
bb66:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb68
bb67:
  %t184 = load i1, ptr %l94, !tbaa !21
  store i1 %t184, ptr %l89, !tbaa !21
  br label %bb68
bb68:
  %t185 = load i1, ptr %l89, !tbaa !21
  store i1 %t185, ptr %l15, !tbaa !21
  br label %bb103
bb69:
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t187 = load ptr, ptr %l95, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb70, label %bb71
bb70:
  %t190 = load ptr, ptr %l95, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 18}
  %t193 = icmp eq i64 %t191, 2
  store i1 %t193, ptr %l96, !tbaa !21
  br label %bb71
bb71:
  %t194 = load i1, ptr %l96, !tbaa !21
  br i1 %t194, label %bb72, label %bb73
bb72:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t197, i32 0, i32 1
  %t199 = load i32, ptr %t198
  store i32 %t199, ptr %l8, !tbaa !23
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr { i64, [5 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t203, i32 0, i32 2
  %t205 = load ptr, ptr %t204
  store ptr %t205, ptr %l9, !tbaa !29
  br label %bb74
bb73:
  br label %bb80
bb74:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l9, !tbaa !29
  %t211 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldPart(ptr %v0, ptr %v1, ptr %t207, ptr %t208)
  store i1 %t211, ptr %l105
  br label %bb75
bb75:
  %t212 = load i1, ptr %l105, !tbaa !21
  br i1 %t212, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l106, !tbaa !21
  br label %bb79
bb77:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l9, !tbaa !29
  %t215 = load i32, ptr %l8, !tbaa !23
  %t219 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstCopy(ptr %v0, ptr %v1, ptr %t213, ptr %t214, i32 %t215)
  store i1 %t219, ptr %l110
  br label %bb78
bb78:
  %t220 = load i1, ptr %l110, !tbaa !21
  store i1 %t220, ptr %l106, !tbaa !21
  br label %bb79
bb79:
  %t221 = load i1, ptr %l106, !tbaa !21
  store i1 %t221, ptr %l15, !tbaa !21
  br label %bb103
bb80:
  %t222 = load ptr, ptr %l1, !tbaa !29
  store ptr %t222, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t223 = load ptr, ptr %l111, !tbaa !29
  %t224 = icmp ne ptr %t223, null
  br i1 %t224, label %bb81, label %bb82
bb81:
  %t226 = load ptr, ptr %l111, !tbaa !29
  %t227 = load i64, ptr %t226, !range !{i64 0, i64 18}
  %t229 = icmp eq i64 %t227, 11
  store i1 %t229, ptr %l112, !tbaa !21
  br label %bb82
bb82:
  %t230 = load i1, ptr %l112, !tbaa !21
  br i1 %t230, label %bb83, label %bb84
bb83:
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = getelementptr { i64, [5 x i64] }, ptr %t231, i32 0, i32 1
  %t234 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t233, i32 0, i32 2
  %t235 = load ptr, ptr %t234
  store ptr %t235, ptr %l10, !tbaa !29
  br label %bb85
bb84:
  br label %bb91
bb85:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load ptr, ptr %l10, !tbaa !29
  %t240 = getelementptr %"compiler/typed:Cond", ptr %t238, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t244 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t237, ptr %t241)
  store i1 %t244, ptr %l120
  br label %bb86
bb86:
  %t245 = load i1, ptr %l120, !tbaa !21
  br i1 %t245, label %bb87, label %bb88
bb87:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l10, !tbaa !29
  %t249 = getelementptr %"compiler/typed:Cond", ptr %t247, i32 0, i32 2
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t254 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %t246, ptr %t250)
  store i1 %t254, ptr %l126
  br label %bb89
bb88:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb90
bb89:
  %t255 = load i1, ptr %l126, !tbaa !21
  store i1 %t255, ptr %l121, !tbaa !21
  br label %bb90
bb90:
  %t256 = load i1, ptr %l121, !tbaa !21
  store i1 %t256, ptr %l15, !tbaa !21
  br label %bb103
bb91:
  %t257 = load ptr, ptr %l1, !tbaa !29
  store ptr %t257, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t258 = load ptr, ptr %l127, !tbaa !29
  %t259 = icmp ne ptr %t258, null
  br i1 %t259, label %bb92, label %bb93
bb92:
  %t261 = load ptr, ptr %l127, !tbaa !29
  %t262 = load i64, ptr %t261, !range !{i64 0, i64 18}
  %t264 = icmp eq i64 %t262, 13
  store i1 %t264, ptr %l128, !tbaa !21
  br label %bb93
bb93:
  %t265 = load i1, ptr %l128, !tbaa !21
  br i1 %t265, label %bb94, label %bb95
bb94:
  %t266 = load ptr, ptr %l1, !tbaa !29
  %t268 = getelementptr { i64, [5 x i64] }, ptr %t266, i32 0, i32 1
  %t269 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t268, i32 0, i32 2
  %t270 = load ptr, ptr %t269
  store ptr %t270, ptr %l11, !tbaa !29
  br label %bb96
bb95:
  br label %bb98
bb96:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load ptr, ptr %l11, !tbaa !29
  %t276 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ematchMadeHere(ptr %v0, ptr %v1, ptr %t272, ptr %t273)
  store i1 %t276, ptr %l135
  br label %bb97
bb97:
  %t277 = load i1, ptr %l135, !tbaa !21
  store i1 %t277, ptr %l15, !tbaa !21
  br label %bb103
bb98:
  br i1 true, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_717fbf6233ca6ed7_9b693e4aa4ffeed3)
  unreachable
bb103:
  %t278 = load i1, ptr %l15, !tbaa !21
  store i1 %t278, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enarrowingMatters(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsHome(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l9
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t17 = load i1, ptr %l9, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l12
  br label %bb6
bb6:
  %t23 = load i1, ptr %l12, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb10
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l16
  br label %bb9
bb9:
  %t29 = load i1, ptr %l16, !tbaa !21
  store i1 %t29, ptr %l13, !tbaa !21
  br label %bb10
bb10:
  %t30 = load i1, ptr %l13, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteFieldRecs(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, [2 x i64] }
  %l36 = alloca i64
  %l38 = alloca i64
  %l43 = alloca i32
  %l44 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i32
  %l51 = alloca ptr
  %l61 = alloca %"compiler/typed:Local"
  %l63 = alloca i64
  %l66 = alloca i1
  %l69 = alloca i1
  %l72 = alloca i64
  %l75 = alloca i64
  %l80 = alloca ptr
  %l83 = alloca i64
  %l88 = alloca i64
  %l91 = alloca i64
  %l114 = alloca { i64, [2 x i64] }
  %l115 = alloca i1
  %l121 = alloca ptr
  %l123 = alloca { i64, [2 x i64] }
  %t219 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/scope:summary", ptr %t1, i32 0, i32 12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v1, ptr %t3)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/scope:summary", ptr %t5, i32 0, i32 13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t7)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 26
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_5073d45cb29e2b2c_5271f582f3c3830)
  unreachable
bb4:
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 26
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 1
  %t23 = load { i64, [2 x i64] }, ptr %t22
  %t27 = extractvalue { i64, [2 x i64] } %t23, 0
  %t28 = icmp eq i64 %t27, 1
  br i1 %t28, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_e97645627b4ddb42_25acdb187fd0af56)
  unreachable
bb14:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 26
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  br i1 %t35, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_1193222288ba1b5a_e9751e9a82c409de)
  unreachable
bb16:
  br label %bb17
bb17:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 26
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t40, i32 0, i32 10
  store ptr %t43, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb18
bb18:
  %t45 = load i64, ptr %l4, !tbaa !24
  store i64 %t45, ptr %l36, !tbaa !24
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t46)
  store i64 %t48, ptr %l38
  br label %bb19
bb19:
  %t49 = load i64, ptr %l36, !tbaa !24
  %t50 = load i64, ptr %l38, !tbaa !24
  %t51 = icmp slt i64 %t49, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb20, label %bb21
bb20:
  br label %bb75
bb21:
  br label %bb22
bb22:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t55, i64 %t56)
  store i32 %t59, ptr %l43
  br label %bb23
bb23:
  %t60 = load i32, ptr %l43, !tbaa !23
  store i32 %t60, ptr %l5, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/scope:Scoper", ptr %t61, i32 0, i32 46
  %t64 = load i32, ptr %l5, !tbaa !23
  %t66 = sext i32 %t64 to i64
  %t69 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t63, i64 %t66)
  %t70 = extractvalue { i32, i64 } %t69, 1
  %t71 = extractvalue { i32, i64 } %t69, 0
  store i32 %t71, ptr %l50
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb25, label %ok.73, !prof !99
ok.73:
  store i64 %t70, ptr %l49
  br label %bb24
bb24:
  %t74 = load i64, ptr %l49, !tbaa !24
  store i64 %t74, ptr %l44, !tbaa !24
  br label %bb27
bb25:
  br label %bb26
bb26:
  store i64 -1, ptr %l44, !tbaa !24
  br label %bb27
bb27:
  %t75 = load i64, ptr %l44, !tbaa !24
  store i64 %t75, ptr %l6, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l51, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 26
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = icmp eq ptr %t80, null
  br i1 %t82, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_677694645a0d3ce1_ddba560673e185)
  unreachable
bb29:
  br label %bb30
bb30:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/scope:Scoper", ptr %t84, i32 0, i32 26
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Body", ptr %t87, i32 0, i32 7
  %t91 = load i32, ptr %l5, !tbaa !23
  %t93 = sext i32 %t91 to i64
  %t96 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t90, i64 %t93)
  store %"compiler/typed:Local" %t96, ptr %l61
  br label %bb31
bb31:
  %t97 = getelementptr %"compiler/typed:Local", ptr %l61, i32 0, i32 2
  %t98 = load i32, ptr %t97, !tbaa !23
  %t99 = load ptr, ptr %l51, !tbaa !29
  %t101 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParams(ptr %v0, ptr %t99, i32 %t98)
  store i64 %t101, ptr %l63
  br label %bb32
bb32:
  %t102 = load i64, ptr %l63, !tbaa !24
  store i64 %t102, ptr %l7, !tbaa !24
  %t103 = load i64, ptr %l6, !tbaa !24
  %t105 = icmp slt i64 %t103, 0
  br i1 %t105, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb35
bb34:
  %t107 = load i64, ptr %l7, !tbaa !24
  %t109 = icmp eq i64 %t107, 0
  store i1 %t109, ptr %l66, !tbaa !21
  br label %bb35
bb35:
  %t111 = load i1, ptr %l66, !tbaa !21
  br i1 %t111, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb39
bb37:
  %t112 = load i64, ptr %l6, !tbaa !24
  %t113 = load i64, ptr %l7, !tbaa !24
  %t116 = add i64 %t112, %t113
  store i64 %t116, ptr %l72, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/scope:Scoper", ptr %t117, i32 0, i32 47
  %t121 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t119)
  store i64 %t121, ptr %l75
  br label %bb38
bb38:
  %t122 = load i64, ptr %l72, !tbaa !24
  %t123 = load i64, ptr %l75, !tbaa !24
  %t124 = icmp sgt i64 %t122, %t123
  store i1 %t124, ptr %l69, !tbaa !21
  br label %bb39
bb39:
  %t126 = load i1, ptr %l69, !tbaa !21
  br i1 %t126, label %bb40, label %bb41
bb40:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr %"compiler/scope:summary", ptr %t127, i32 0, i32 12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t129, i64 -1)
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb74
bb43:
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t133 = getelementptr %"compiler/scope:summary", ptr %t131, i32 0, i32 12
  store ptr %t133, ptr %l80, !tbaa !29
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t136 = getelementptr %"compiler/scope:summary", ptr %t134, i32 0, i32 13
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t136)
  store i64 %t138, ptr %l83
  br label %bb44
bb44:
  %t139 = load ptr, ptr %l80, !tbaa !29
  %t140 = load i64, ptr %l83, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t139, i64 %t140)
  br label %bb45
bb45:
  store i64 0, ptr %l8, !tbaa !24
  %t141 = load i64, ptr %l7, !tbaa !24
  store i64 %t141, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t143 = load i64, ptr %l9, !tbaa !24
  %t144 = load i64, ptr %l8, !tbaa !24
  %t147 = icmp sgt i64 %t143, %t144
  br i1 %t147, label %bb46, label %bb47
bb46:
  %t149 = load i64, ptr %l10, !tbaa !24
  %t151 = icmp sgt i64 %t149, 0
  br i1 %t151, label %bb48, label %bb49
bb47:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb51
bb48:
  %t153 = load i64, ptr %l9, !tbaa !24
  %t154 = load i64, ptr %l8, !tbaa !24
  %t157 = sub i64 %t153, %t154
  %t158 = load i64, ptr %l10, !tbaa !24
  %t161 = add i64 %t157, %t158
  %t163 = sub i64 %t161, 1
  %t164 = load i64, ptr %l10, !tbaa !24
  %t167 = sdiv i64 %t163, %t164
  store i64 %t167, ptr %l91, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb50
bb50:
  %t169 = load i64, ptr %l91, !tbaa !24
  store i64 %t169, ptr %l88, !tbaa !24
  br label %bb51
bb51:
  %t170 = load i64, ptr %l88, !tbaa !24
  store i64 %t170, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb52
bb52:
  %t171 = load i64, ptr %l12, !tbaa !24
  %t172 = load i64, ptr %l11, !tbaa !24
  %t175 = icmp slt i64 %t171, %t172
  %t177 = xor i1 %t175, true
  br i1 %t177, label %bb53, label %bb54
bb53:
  br label %bb73
bb54:
  br label %bb55
bb55:
  %t179 = load i64, ptr %l8, !tbaa !24
  %t180 = load i64, ptr %l12, !tbaa !24
  %t181 = load i64, ptr %l10, !tbaa !24
  %t184 = mul i64 %t180, %t181
  %t187 = add i64 %t179, %t184
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/scope:Scoper", ptr %t189, i32 0, i32 47
  %t192 = load i64, ptr %l6, !tbaa !24
  %t196 = add i64 %t192, %t187
  %t199 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t191, i64 %t196)
  store { i64, [2 x i64] } %t199, ptr %l114
  br label %bb56
bb56:
  %t200 = load { i64, [2 x i64] }, ptr %l114
  store { i64, [2 x i64] } %t200, ptr %l14
  %t201 = load { i64, [2 x i64] }, ptr %l14
  %t203 = extractvalue { i64, [2 x i64] } %t201, 0
  %t204 = icmp eq i64 %t203, 2
  br i1 %t204, label %bb57, label %bb58
bb57:
  br label %bb61
bb58:
  %t206 = load { i64, [2 x i64] }, ptr %l14
  %t208 = extractvalue { i64, [2 x i64] } %t206, 0
  %t209 = icmp eq i64 %t208, 3
  br i1 %t209, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i1 true, ptr %l115, !tbaa !21
  br label %bb67
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_46d6c69b453c665f_cff2ba6bc4bd85db)
  unreachable
bb67:
  %t211 = load i1, ptr %l115, !tbaa !21
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr %"compiler/scope:summary", ptr %t212, i32 0, i32 13
  store ptr %t214, ptr %l121, !tbaa !29
  br i1 %t211, label %bb68, label %bb69
bb68:
  %t217 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t217, ptr %l123
  br label %bb70
bb69:
  store { i64, [2 x i64] } zeroinitializer, ptr %t219
  %t220 = getelementptr { i64, [2 x i64] }, ptr %t219, i32 0, i32 0
  store i64 6, ptr %t220
  %t221 = load { i64, [2 x i64] }, ptr %t219
  store { i64, [2 x i64] } %t221, ptr %l123
  br label %bb70
bb70:
  %t223 = load ptr, ptr %l121, !tbaa !29
  %t224 = load { i64, [2 x i64] }, ptr %l123
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t223, { i64, [2 x i64] } %t224)
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t225 = load i64, ptr %l12, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l12, !tbaa !24
  br label %bb52
bb73:
  br label %bb74
bb74:
  %t229 = load i64, ptr %l4, !tbaa !24
  %t231 = add i64 %t229, 1
  store i64 %t231, ptr %l4, !tbaa !24
  br label %bb18
bb75:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteResBind(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca i64
  %l15 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l29 = alloca i1
  %l38 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i64
  %l45 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i32
  %l55 = alloca i64
  %l58 = alloca i64
  %l79 = alloca i1
  %l82 = alloca i64
  %l85 = alloca i64
  %l92 = alloca { i64, [2 x i64] }
  %l93 = alloca i1
  %l112 = alloca i64
  %l115 = alloca i64
  %l117 = alloca i1
  %l121 = alloca { i64, [2 x i64] }
  %l123 = alloca { i64, [2 x i64] }
  %l125 = alloca i1
  %s0 = alloca %olang.scope
  %t123 = alloca { i64, [2 x i64] }, align 8
  %t186 = alloca { i64, [2 x i64] }, align 8
  %t232 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l15, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t2)
  store i32 %t4, ptr %l17
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l15, !tbaa !29
  %t6 = load i32, ptr %l17, !tbaa !23
  %t7 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParams(ptr %v0, ptr %t5, i32 %t6)
  store i64 %t7, ptr %l18
  br label %bb2
bb2:
  %t8 = load i64, ptr %l18, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t17 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %s0, ptr %t13, ptr %t14)
  store ptr %t17, ptr %l23
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l23, !tbaa !29
  %t20 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s0, ptr %s0, ptr %t18)
  store ptr %t20, ptr %l25
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l25, !tbaa !29
  store ptr %t21, ptr %l4, !tbaa !29
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Call", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %t30, !tbaa !23
  %t33 = sext i32 %t31 to i64
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 56
  %t37 = load i64, ptr %t36, !tbaa !24
  %t40 = icmp eq i64 %t33, %t37
  store i1 %t40, ptr %l29, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l29, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 57
  %t46 = load i64, ptr %t45, !tbaa !24
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb22
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l38, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t53 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %v1, ptr %t49, ptr %t50)
  store ptr %t53, ptr %l41
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l38, !tbaa !29
  %t55 = load ptr, ptr %l41, !tbaa !29
  %t56 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %v1, ptr %t54, ptr %t55)
  store i64 %t56, ptr %l42
  br label %bb14
bb14:
  %t57 = load i64, ptr %l42, !tbaa !24
  store i64 %t57, ptr %l5, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = icmp sge i64 %t58, 0
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 46
  %t65 = load i64, ptr %l5, !tbaa !24
  %t68 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t64, i64 %t65)
  %t69 = extractvalue { i32, i64 } %t68, 1
  %t70 = extractvalue { i32, i64 } %t68, 0
  store i32 %t70, ptr %l50
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb18, label %ok.72, !prof !99
ok.72:
  store i64 %t69, ptr %l49
  br label %bb17
bb16:
  br label %bb21
bb17:
  %t73 = load i64, ptr %l49, !tbaa !24
  store i64 %t73, ptr %l45, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  store i64 -1, ptr %l45, !tbaa !24
  br label %bb20
bb20:
  %t74 = load i64, ptr %l45, !tbaa !24
  store i64 %t74, ptr %l3, !tbaa !24
  br label %bb21
bb21:
  br label %bb22
bb22:
  store i64 0, ptr %l6, !tbaa !24
  %t75 = load i64, ptr %l2, !tbaa !24
  store i64 %t75, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = icmp sgt i64 %t77, %t78
  br i1 %t81, label %bb23, label %bb24
bb23:
  %t83 = load i64, ptr %l8, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb28
bb25:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t88 = load i64, ptr %l6, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t92 = load i64, ptr %l8, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  store i64 %t101, ptr %l58, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb27
bb27:
  %t103 = load i64, ptr %l58, !tbaa !24
  store i64 %t103, ptr %l55, !tbaa !24
  br label %bb28
bb28:
  %t104 = load i64, ptr %l55, !tbaa !24
  store i64 %t104, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb29
bb29:
  %t105 = load i64, ptr %l10, !tbaa !24
  %t106 = load i64, ptr %l9, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb30, label %bb31
bb30:
  br label %bb74
bb31:
  br label %bb32
bb32:
  %t113 = load i64, ptr %l6, !tbaa !24
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l8, !tbaa !24
  %t118 = mul i64 %t114, %t115
  %t121 = add i64 %t113, %t118
  store i64 %t121, ptr %l11, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [2 x i64] }, ptr %t123, i32 0, i32 0
  store i64 6, ptr %t124
  %t125 = load { i64, [2 x i64] }, ptr %t123
  store { i64, [2 x i64] } %t125, ptr %l12
  %t127 = load i64, ptr %l3, !tbaa !24
  %t129 = icmp sge i64 %t127, 0
  br i1 %t129, label %bb33, label %bb34
bb33:
  %t131 = load i64, ptr %l3, !tbaa !24
  %t132 = load i64, ptr %l11, !tbaa !24
  %t135 = add i64 %t131, %t132
  store i64 %t135, ptr %l82, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/scope:Scoper", ptr %t136, i32 0, i32 47
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t138)
  store i64 %t140, ptr %l85
  br label %bb35
bb34:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb36
bb35:
  %t141 = load i64, ptr %l82, !tbaa !24
  %t142 = load i64, ptr %l85, !tbaa !24
  %t143 = icmp slt i64 %t141, %t142
  store i1 %t143, ptr %l79, !tbaa !21
  br label %bb36
bb36:
  %t145 = load i1, ptr %l79, !tbaa !21
  br i1 %t145, label %bb37, label %bb38
bb37:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/scope:Scoper", ptr %t146, i32 0, i32 47
  %t149 = load i64, ptr %l3, !tbaa !24
  %t150 = load i64, ptr %l11, !tbaa !24
  %t153 = add i64 %t149, %t150
  %t156 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t148, i64 %t153)
  store { i64, [2 x i64] } %t156, ptr %l92
  br label %bb39
bb38:
  br label %bb58
bb39:
  %t157 = load { i64, [2 x i64] }, ptr %l92
  store { i64, [2 x i64] } %t157, ptr %l12
  %t158 = load { i64, [2 x i64] }, ptr %l12
  %t160 = extractvalue { i64, [2 x i64] } %t158, 0
  %t161 = icmp eq i64 %t160, 2
  br i1 %t161, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  %t163 = load { i64, [2 x i64] }, ptr %l12
  %t165 = extractvalue { i64, [2 x i64] } %t163, 0
  %t166 = icmp eq i64 %t165, 3
  br i1 %t166, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb54
bb45:
  %t168 = load { i64, [2 x i64] }, ptr %l12
  %t170 = extractvalue { i64, [2 x i64] } %t168, 0
  %t171 = icmp eq i64 %t170, 4
  br i1 %t171, label %bb46, label %bb47
bb46:
  %t173 = getelementptr { i64, [2 x i64] }, ptr %l12, i32 0, i32 1
  %t174 = getelementptr { i64, i64 }, ptr %t173, i32 0, i32 0
  %t175 = load i64, ptr %t174
  store i64 %t175, ptr %l13, !tbaa !24
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t177 = load i64, ptr %l13, !tbaa !24
  %t179 = icmp sge i64 %t177, 0
  store i1 %t179, ptr %l93, !tbaa !21
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_656a50bef236af79_704de06f4de36bbd)
  unreachable
bb54:
  %t181 = load i1, ptr %l93, !tbaa !21
  %t184 = xor i1 %t181, true
  br i1 %t184, label %bb55, label %bb56
bb55:
  store { i64, [2 x i64] } zeroinitializer, ptr %t186
  %t187 = getelementptr { i64, [2 x i64] }, ptr %t186, i32 0, i32 0
  store i64 6, ptr %t187
  %t188 = load { i64, [2 x i64] }, ptr %t186
  store { i64, [2 x i64] } %t188, ptr %l12
  br label %bb57
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/scope:Scoper", ptr %t190, i32 0, i32 59
  %t193 = load i1, ptr %t192, !tbaa !21
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb59, label %bb60
bb59:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/scope:Scoper", ptr %t197, i32 0, i32 58
  %t200 = load { i64, [2 x i64] }, ptr %l12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t199, { i64, [2 x i64] } %t200)
  br label %bb61
bb60:
  %t203 = load i64, ptr %l11, !tbaa !24
  store i64 %t203, ptr %l112, !tbaa !24
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %t204, i32 0, i32 58
  %t208 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t206)
  store i64 %t208, ptr %l115
  br label %bb62
bb61:
  br label %bb72
bb62:
  %t209 = load i64, ptr %l112, !tbaa !24
  %t210 = load i64, ptr %l115, !tbaa !24
  %t211 = icmp slt i64 %t209, %t210
  br i1 %t211, label %bb63, label %bb64
bb63:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/scope:Scoper", ptr %t213, i32 0, i32 58
  %t216 = load i64, ptr %l11, !tbaa !24
  %t219 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t215, i64 %t216)
  store { i64, [2 x i64] } %t219, ptr %l121
  br label %bb65
bb64:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb67
bb65:
  %t220 = load { i64, [2 x i64] }, ptr %l12
  store { i64, [2 x i64] } %t220, ptr %l123
  %t223 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l121, ptr %l123)
  store i1 %t223, ptr %l125
  br label %bb66
bb66:
  %t224 = load i1, ptr %l125, !tbaa !21
  %t225 = xor i1 %t224, true
  store i1 %t225, ptr %l117, !tbaa !21
  br label %bb67
bb67:
  %t227 = load i1, ptr %l117, !tbaa !21
  br i1 %t227, label %bb68, label %bb69
bb68:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/scope:Scoper", ptr %t228, i32 0, i32 58
  %t231 = load i64, ptr %l11, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t232
  %t233 = getelementptr { i64, [2 x i64] }, ptr %t232, i32 0, i32 0
  store i64 6, ptr %t233
  %t234 = load { i64, [2 x i64] }, ptr %t232
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t230, i64 %t231, { i64, [2 x i64] } %t234)
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb71
bb71:
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t238 = load i64, ptr %l10, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l10, !tbaa !24
  br label %bb29
bb74:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/scope:Scoper", ptr %t242, i32 0, i32 59
  store i1 true, ptr %t244, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonlyCalled(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l12 = alloca %"compiler/typed:Local"
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a3, ptr %l3
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
  call void @__olang_check_failed(ptr @olang_loc_b076c1f6c97c7ed4_fcdcfd5688cdce70)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 7
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t14, i64 %t15)
  store %"compiler/typed:Local" %t18, ptr %l12
  br label %bb4
bb4:
  %t19 = getelementptr %"compiler/typed:Local", ptr %l12, i32 0, i32 4
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 7}
  %t22 = trunc i64 6 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i64, ptr %l3, !tbaa !24
  %t34 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %t26, { i64, ptr } %a1, i64 %a2, i64 %t29, i1 false)
  store i1 %t34, ptr %l20
  br label %bb8
bb8:
  %t35 = load i1, ptr %l20, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOwn(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/typed:Local"
  %l5 = alloca i1
  %l6 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i1
  %l24 = alloca i1
  %l42 = alloca %"compiler/typed:Local"
  %l45 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb7
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 26
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_e92fb2d155625a74_c88e6cd6ff5e81b8)
  unreachable
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 26
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 7
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l14
  br label %bb6
bb6:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l14, !tbaa !24
  %t24 = icmp sge i64 %t22, %t23
  store i1 %t24, ptr %l5, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l5, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb13
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 26
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  br i1 %t32, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e92fb2d155625a74_c88e6cd6ff5e81b8)
  unreachable
bb11:
  br label %bb12
bb12:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 26
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Body", ptr %t37, i32 0, i32 14
  %t41 = load i1, ptr %t40, !tbaa !21
  store i1 %t41, ptr %l16, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l16, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb19
bb15:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 26
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = icmp eq ptr %t47, null
  br i1 %t49, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_e92fb2d155625a74_c88e6cd6ff5e81b8)
  unreachable
bb17:
  br label %bb18
bb18:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 26
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Body", ptr %t54, i32 0, i32 11
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  store i1 %t60, ptr %l24, !tbaa !21
  br label %bb19
bb19:
  %t62 = load i1, ptr %l24, !tbaa !21
  br i1 %t62, label %bb20, label %bb21
bb20:
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/scope:Scoper", ptr %t64, i32 0, i32 26
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_f8f6531b7e7caa03_cb21dd644e652dd7)
  unreachable
bb24:
  br label %bb25
bb25:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 26
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 7
  %t78 = load i64, ptr %l1, !tbaa !24
  %t81 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t77, i64 %t78)
  store %"compiler/typed:Local" %t81, ptr %l42
  br label %bb26
bb26:
  %t82 = load %"compiler/typed:Local", ptr %l42
  store %"compiler/typed:Local" %t82, ptr %l2
  %t83 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 4
  %t84 = load i32, ptr %t83, !range !{i32 0, i32 7}
  %t86 = trunc i64 0 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb27, label %bb28
bb27:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 2
  %t91 = load i32, ptr %t90, !tbaa !23
  %t94 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t89, i32 %t91)
  store i1 %t94, ptr %l48
  br label %bb29
bb28:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb30
bb29:
  %t95 = load i1, ptr %l48, !tbaa !21
  %t96 = xor i1 %t95, true
  store i1 %t96, ptr %l45, !tbaa !21
  br label %bb30
bb30:
  %t98 = load i1, ptr %l45, !tbaa !21
  br i1 %t98, label %bb31, label %bb32
bb31:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 2
  %t101 = load i32, ptr %t100, !tbaa !23
  %t104 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t99, i32 %t101)
  store i1 %t104, ptr %l53
  br label %bb33
bb32:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb34
bb33:
  %t105 = load i1, ptr %l53, !tbaa !21
  %t106 = xor i1 %t105, true
  store i1 %t106, ptr %l50, !tbaa !21
  br label %bb34
bb34:
  %t108 = load i1, ptr %l50, !tbaa !21
  br i1 %t108, label %bb35, label %bb36
bb35:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 2
  %t111 = load i32, ptr %t110, !tbaa !23
  %t114 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %t109, i32 %t111)
  store i1 %t114, ptr %l58
  br label %bb37
bb36:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb38
bb37:
  %t115 = load i1, ptr %l58, !tbaa !21
  %t116 = xor i1 %t115, true
  store i1 %t116, ptr %l55, !tbaa !21
  br label %bb38
bb38:
  %t118 = load i1, ptr %l55, !tbaa !21
  store i1 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca i64
  %l38 = alloca i1
  %l47 = alloca %"compiler/typed:Local"
  %l50 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i1
  %l66 = alloca %"compiler/typed:Local"
  %l69 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l10
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l10, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t9 = load ptr, ptr %l11, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l11, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 6
  store i1 %t15, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l12, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l3, !tbaa !29
  br label %bb6
bb5:
  br label %bb11
bb6:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Call", ptr %t23, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Call", ptr %t33, i32 0, i32 1
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l23, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr ptr, ptr %t38, i64 0
  %t40 = load ptr, ptr %t39, !tbaa !39
  %t43 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamRoot(ptr %v0, ptr %v1, ptr %t32, ptr %t40)
  store i64 %t43, ptr %l25
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %rv
  br label %ret
bb10:
  store i64 -1, ptr %rv
  br label %ret
bb11:
  %t46 = load ptr, ptr %l2, !tbaa !29
  store ptr %t46, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t47 = load ptr, ptr %l27, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb12, label %bb13
bb12:
  %t50 = load ptr, ptr %l27, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 18}
  %t53 = icmp eq i64 %t51, 10
  store i1 %t53, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t54 = load i1, ptr %l28, !tbaa !21
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb28
bb16:
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Slice", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t64)
  store i64 %t66, ptr %l35
  br label %bb17
bb17:
  %t67 = load i64, ptr %l35, !tbaa !24
  store i64 %t67, ptr %l5, !tbaa !24
  %t68 = load i64, ptr %l5, !tbaa !24
  %t70 = icmp sge i64 %t68, 0
  br i1 %t70, label %bb18, label %bb19
bb18:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 26
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = icmp eq ptr %t75, null
  br i1 %t77, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb24
bb20:
  call void @__olang_check_failed(ptr @olang_loc_702142de3e583242_5b34302bf43ef4be)
  unreachable
bb21:
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %t79, i32 0, i32 26
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Body", ptr %t82, i32 0, i32 7
  %t86 = load i64, ptr %l5, !tbaa !24
  %t89 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t85, i64 %t86)
  store %"compiler/typed:Local" %t89, ptr %l47
  br label %bb23
bb23:
  %t90 = getelementptr %"compiler/typed:Local", ptr %l47, i32 0, i32 4
  %t91 = load i32, ptr %t90, !range !{i32 0, i32 7}
  %t93 = trunc i64 0 to i32
  %t94 = icmp eq i32 %t91, %t93
  store i1 %t94, ptr %l38, !tbaa !21
  br label %bb24
bb24:
  %t96 = load i1, ptr %l38, !tbaa !21
  br i1 %t96, label %bb25, label %bb26
bb25:
  %t97 = load i64, ptr %l5, !tbaa !24
  store i64 %t97, ptr %l50, !tbaa !24
  br label %bb27
bb26:
  store i64 -1, ptr %l50, !tbaa !24
  br label %bb27
bb27:
  %t99 = load i64, ptr %l50, !tbaa !24
  store i64 %t99, ptr %rv
  br label %ret
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_6b87ff60a3433260_ddeea5c0b8316e1c)
  unreachable
bb33:
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t103 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v1, ptr %t100)
  store i64 %t103, ptr %l54
  br label %bb34
bb34:
  %t104 = load i64, ptr %l54, !tbaa !24
  store i64 %t104, ptr %l6, !tbaa !24
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = icmp sge i64 %t105, 0
  br i1 %t107, label %bb35, label %bb36
bb35:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %t109, i32 0, i32 26
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = icmp eq ptr %t112, null
  br i1 %t114, label %bb37, label %bb38
bb36:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb41
bb37:
  call void @__olang_check_failed(ptr @olang_loc_dc42a5a165461c34_eb9bc5161264db10)
  unreachable
bb38:
  br label %bb39
bb39:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t116, i32 0, i32 26
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Body", ptr %t119, i32 0, i32 7
  %t123 = load i64, ptr %l6, !tbaa !24
  %t126 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t122, i64 %t123)
  store %"compiler/typed:Local" %t126, ptr %l66
  br label %bb40
bb40:
  %t127 = getelementptr %"compiler/typed:Local", ptr %l66, i32 0, i32 4
  %t128 = load i32, ptr %t127, !range !{i32 0, i32 7}
  %t130 = trunc i64 0 to i32
  %t131 = icmp eq i32 %t128, %t130
  store i1 %t131, ptr %l57, !tbaa !21
  br label %bb41
bb41:
  %t133 = load i1, ptr %l57, !tbaa !21
  br i1 %t133, label %bb42, label %bb43
bb42:
  %t134 = load i64, ptr %l6, !tbaa !24
  store i64 %t134, ptr %l69, !tbaa !24
  br label %bb44
bb43:
  store i64 -1, ptr %l69, !tbaa !24
  br label %bb44
bb44:
  %t136 = load i64, ptr %l69, !tbaa !24
  store i64 %t136, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsReach(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %l21 = alloca i1
  %rv = alloca i1
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
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  store i32 %t21, ptr %l5, !tbaa !23
  %t23 = load i32, ptr %l5, !tbaa !23
  %t25 = icmp ne i32 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t28 = load i32, ptr %l5, !tbaa !23
  %t31 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorThroughRef(ptr %v0, ptr %a0, i32 %t28)
  store i1 %t31, ptr %l21
  br label %bb7
bb6:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb8
bb7:
  %t32 = load i1, ptr %l21, !tbaa !21
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb1
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca i1
  %l7 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i1
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l25 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l40 = alloca %"compiler/typed:Local"
  %l42 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i1, ptr %l4, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l7, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t9)
  store i64 %t11, ptr %l9
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l7, !tbaa !29
  %t13 = load i64, ptr %l9, !tbaa !24
  %t14 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionParam(ptr %v0, ptr %t12, i64 %t13)
  store i64 %t14, ptr %l10
  br label %bb6
bb6:
  %t15 = load i64, ptr %l10, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = icmp sge i64 %t16, 0
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %v0, ptr %t20, i64 %t21)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l16
  br label %bb9
bb8:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb12
bb9:
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l16)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l18
  br label %bb10
bb10:
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %l18)
  store i64 %t28, ptr %l20
  br label %bb11
bb11:
  %t29 = load i64, ptr %l20, !tbaa !24
  %t30 = icmp sgt i64 %t29, 1
  store i1 %t30, ptr %l13, !tbaa !21
  br label %bb12
bb12:
  %t32 = load i1, ptr %l13, !tbaa !21
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t33 = load i64, ptr %l2, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t35 = load i64, ptr %l2, !tbaa !24
  %t37 = icmp slt i64 %t35, 0
  br i1 %t37, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb19
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %t39, i64 %t40)
  store i1 %t43, ptr %l28
  br label %bb18
bb18:
  %t44 = load i1, ptr %l28, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l25, !tbaa !21
  br label %bb19
bb19:
  %t47 = load i1, ptr %l25, !tbaa !21
  br i1 %t47, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb27
bb21:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l31, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 26
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  br i1 %t54, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_f5041371eec86b2_55455b7784c43256)
  unreachable
bb23:
  br label %bb24
bb24:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 26
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t59, i32 0, i32 7
  %t63 = load i64, ptr %l2, !tbaa !24
  %t66 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t62, i64 %t63)
  store %"compiler/typed:Local" %t66, ptr %l40
  br label %bb25
bb25:
  %t67 = getelementptr %"compiler/typed:Local", ptr %l40, i32 0, i32 2
  %t68 = load i32, ptr %t67, !tbaa !23
  %t69 = load ptr, ptr %l31, !tbaa !29
  %t71 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t69, i32 %t68)
  store i1 %t71, ptr %l42
  br label %bb26
bb26:
  %t72 = load i1, ptr %l42, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l30, !tbaa !21
  br label %bb27
bb27:
  %t75 = load i1, ptr %l30, !tbaa !21
  br i1 %t75, label %bb28, label %bb29
bb28:
  store i64 -1, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t77 = load i64, ptr %l2, !tbaa !24
  store i64 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca { i64, [2 x i64] }
  %l11 = alloca ptr
  %l17 = alloca { i64, [2 x i64] }
  %l18 = alloca { i64, [2 x i64] }
  %l21 = alloca { i64, [2 x i64] }
  %l26 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t56 = alloca { i64, [2 x i64] }, align 8
  %t73 = alloca { i64, [2 x i64] }, align 8
  %t85 = alloca { i64, [2 x i64] }, align 8
  %t89 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %t1, { i64, [2 x i64] } %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l8, !tbaa !29
  %t8 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t8, ptr %l9
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 33
  store ptr %t11, ptr %l11, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 64
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  br i1 %t17, label %bb4, label %bb5
bb3:
  br label %bb9
bb4:
  call void @__olang_check_failed(ptr @olang_loc_41b194f396ff5aba_8e762fa3be794326)
  unreachable
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 64
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load ptr, ptr %l11, !tbaa !29
  %t25 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v0, ptr %t23, ptr %t22)
  store { i64, [2 x i64] } %t25, ptr %l17
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l8, !tbaa !29
  %t27 = load { i64, [2 x i64] }, ptr %l9
  %t28 = load { i64, [2 x i64] }, ptr %l17
  %t29 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efoundOr(ptr %v0, ptr %t26, { i64, [2 x i64] } %t27, { i64, [2 x i64] } %t28)
  store { i64, [2 x i64] } %t29, ptr %l18
  br label %bb8
bb8:
  %t30 = load { i64, [2 x i64] }, ptr %l18
  store { i64, [2 x i64] } %t30, ptr %rv
  br label %ret
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load { i64, [2 x i64] }, ptr %l1
  %t35 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %t31, { i64, [2 x i64] } %t32, i64 -1)
  store { i64, [2 x i64] } %t35, ptr %l21
  br label %bb10
bb10:
  %t36 = load { i64, [2 x i64] }, ptr %l21
  store { i64, [2 x i64] } %t36, ptr %l2
  %t37 = load { i64, [2 x i64] }, ptr %l2
  %t39 = extractvalue { i64, [2 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 0
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t44, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t46 = load { i64, [2 x i64] }, ptr %l1
  %t48 = extractvalue { i64, [2 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 1
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t51 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t52 = getelementptr { i32 }, ptr %t51, i32 0, i32 0
  %t53 = load i32, ptr %t52
  store i32 %t53, ptr %l3, !tbaa !23
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t55 = load i32, ptr %l3, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t56
  %t57 = getelementptr { i64, [2 x i64] }, ptr %t56, i32 0, i32 0
  store i64 1, ptr %t57
  %t59 = insertvalue { i32 } undef, i32 %t55, 0
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t56, i32 0, i32 1
  store { i32 } %t59, ptr %t60
  %t61 = load { i64, [2 x i64] }, ptr %t56
  store { i64, [2 x i64] } %t61, ptr %l26
  br label %bb30
bb17:
  %t63 = load { i64, [2 x i64] }, ptr %l1
  %t65 = extractvalue { i64, [2 x i64] } %t63, 0
  %t66 = icmp eq i64 %t65, 2
  br i1 %t66, label %bb18, label %bb19
bb18:
  %t68 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t69 = getelementptr { i64 }, ptr %t68, i32 0, i32 0
  %t70 = load i64, ptr %t69
  store i64 %t70, ptr %l4, !tbaa !24
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t72 = load i64, ptr %l4, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [2 x i64] }, ptr %t73, i32 0, i32 0
  store i64 2, ptr %t74
  %t76 = insertvalue { i64 } undef, i64 %t72, 0
  %t77 = getelementptr { i64, [2 x i64] }, ptr %t73, i32 0, i32 1
  store { i64 } %t76, ptr %t77
  %t78 = load { i64, [2 x i64] }, ptr %t73
  store { i64, [2 x i64] } %t78, ptr %l26
  br label %bb30
bb21:
  %t80 = load { i64, [2 x i64] }, ptr %l1
  %t82 = extractvalue { i64, [2 x i64] } %t80, 0
  %t83 = icmp eq i64 %t82, 3
  br i1 %t83, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store { i64, [2 x i64] } zeroinitializer, ptr %t85
  %t86 = getelementptr { i64, [2 x i64] }, ptr %t85, i32 0, i32 0
  store i64 3, ptr %t86
  %t87 = load { i64, [2 x i64] }, ptr %t85
  store { i64, [2 x i64] } %t87, ptr %l26
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store { i64, [2 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [2 x i64] }, ptr %t89, i32 0, i32 0
  store i64 6, ptr %t90
  %t91 = load { i64, [2 x i64] }, ptr %t89
  store { i64, [2 x i64] } %t91, ptr %l26
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_68659d99246c63c8_1993ced10b5a02b4)
  unreachable
bb30:
  %t93 = load { i64, [2 x i64] }, ptr %l26
  store { i64, [2 x i64] } %t93, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseededRecs(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l7 = alloca i1
  %l11 = alloca i1
  %l12 = alloca %"compiler/scope:fnRecs"
  %l16 = alloca %"compiler/scope:fnRecs"
  %l17 = alloca i32
  %l19 = alloca %"compiler/scope:fnRecs"
  %l20 = alloca %"compiler/scope:fnRecs"
  %l21 = alloca %"compiler/scope:fnRecs"
  %l23 = alloca ptr
  %l27 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l28 = alloca %"compiler/scope:fnRecs"
  %l29 = alloca i32
  %l31 = alloca %"compiler/scope:fnRecs"
  %l32 = alloca %"compiler/scope:fnRecs"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/scope:fnRecs"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H4d9dd4678cabff1b2f88ea0996ab01db(ptr %v0, ptr %t15, i64 %t16)
  store i1 %t19, ptr %l11
  br label %bb3
bb2:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  %t20 = load i1, ptr %l11, !tbaa !21
  store i1 %t20, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l7, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 231
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v1, ptr %t24, i64 %t25)
  %t29 = extractvalue { i32, %"compiler/scope:fnRecs" } %t28, 1
  %t30 = extractvalue { i32, %"compiler/scope:fnRecs" } %t28, 0
  store i32 %t30, ptr %l17
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb8, label %ok.32, !prof !99
ok.32:
  store %"compiler/scope:fnRecs" %t29, ptr %l16
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t34 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v1, ptr %l16)
  store %"compiler/scope:fnRecs" %t34, ptr %l19
  br label %bb10
bb8:
  br label %bb9
bb9:
  %t35 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v1)
  store %"compiler/scope:fnRecs" %t35, ptr %l20
  br label %bb11
bb10:
  %t36 = load %"compiler/scope:fnRecs", ptr %l19
  store %"compiler/scope:fnRecs" %t36, ptr %l12
  br label %bb12
bb11:
  %t37 = load %"compiler/scope:fnRecs", ptr %l20
  store %"compiler/scope:fnRecs" %t37, ptr %l12
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load %"compiler/scope:fnRecs", ptr %l12
  store %"compiler/scope:fnRecs" %t38, ptr %rv
  br label %ret
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 239
  store ptr %t41, ptr %l23, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 27
  %t45 = load i64, ptr %t44, !tbaa !24
  %t46 = load i64, ptr %l1, !tbaa !24
  %t49 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t45, i64 %t46)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t49, ptr %l27
  br label %bb14
bb14:
  %t50 = load ptr, ptr %l23, !tbaa !29
  %t51 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l27
  %t52 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcfaf91d2f69b0f478c1276e68071930d(ptr %v0, ptr %v1, ptr %t50, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t51)
  %t53 = extractvalue { i32, %"compiler/scope:fnRecs" } %t52, 1
  %t54 = extractvalue { i32, %"compiler/scope:fnRecs" } %t52, 0
  store i32 %t54, ptr %l29
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb16, label %ok.56, !prof !99
ok.56:
  store %"compiler/scope:fnRecs" %t53, ptr %l28
  br label %bb15
bb15:
  %t58 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v1, ptr %l28)
  store %"compiler/scope:fnRecs" %t58, ptr %l31
  br label %bb18
bb16:
  br label %bb17
bb17:
  %t59 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v1)
  store %"compiler/scope:fnRecs" %t59, ptr %l32
  br label %bb19
bb18:
  %t60 = load %"compiler/scope:fnRecs", ptr %l31
  store %"compiler/scope:fnRecs" %t60, ptr %l21
  br label %bb20
bb19:
  %t61 = load %"compiler/scope:fnRecs", ptr %l32
  store %"compiler/scope:fnRecs" %t61, ptr %l21
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t62 = load %"compiler/scope:fnRecs", ptr %l21
  store %"compiler/scope:fnRecs" %t62, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOpenAt(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca ptr
  %l44 = alloca { i64, [2 x i64] }
  %l46 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 39
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i64, ptr %l12, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t9, i64 %t10)
  store i64 %t13, ptr %l15
  br label %bb2
bb2:
  %t14 = load i64, ptr %l15, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l22, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l22, !tbaa !24
  store i64 %t41, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l19, !tbaa !24
  store i64 %t42, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  br label %bb19
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l40, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 40
  %t68 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t64, i64 %t59)
  store { i64, [2 x i64] } %t68, ptr %l44
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = load { i64, [2 x i64] }, ptr %l44
  %t73 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopenAt(ptr %v0, ptr %t70, { i64, [2 x i64] } %t71, i32 %a2)
  store i1 %t73, ptr %l46
  br label %bb14
bb14:
  %t74 = load i1, ptr %l46, !tbaa !21
  %t75 = xor i1 %t74, true
  br i1 %t75, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l7, !tbaa !24
  br label %bb9
bb19:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esizeComponents(ptr %v0, ptr %a0) #0 {
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
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l53 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l79 = alloca i64
  %l82 = alloca i64
  %l84 = alloca i64
  %l89 = alloca i64
  %l92 = alloca i64
  %l96 = alloca i64
  %l101 = alloca i64
  %l104 = alloca i64
  %l123 = alloca ptr
  %l127 = alloca i64
  %l128 = alloca i64
  %l132 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i64, ptr %l22, !tbaa !24
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
  store i64 0, ptr %l26, !tbaa !24
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
  store i64 %t31, ptr %l29, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l29, !tbaa !24
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l26, !tbaa !24
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
  br label %bb14
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
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 236
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t55, i64 1)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l5, !tbaa !24
  br label %bb8
bb14:
  store i64 0, ptr %l7, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/scope:Scoper", ptr %t61, i32 0, i32 24
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t63)
  store i64 %t65, ptr %l53
  br label %bb15
bb15:
  %t66 = load i64, ptr %l53, !tbaa !24
  store i64 %t66, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t67 = load i64, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = icmp sgt i64 %t67, %t68
  br i1 %t71, label %bb16, label %bb17
bb16:
  %t73 = load i64, ptr %l9, !tbaa !24
  %t75 = icmp sgt i64 %t73, 0
  br i1 %t75, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb21
bb18:
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = sub i64 %t77, %t78
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = add i64 %t81, %t82
  %t87 = sub i64 %t85, 1
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = sdiv i64 %t87, %t88
  store i64 %t91, ptr %l60, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb20
bb20:
  %t93 = load i64, ptr %l60, !tbaa !24
  store i64 %t93, ptr %l57, !tbaa !24
  br label %bb21
bb21:
  %t94 = load i64, ptr %l57, !tbaa !24
  store i64 %t94, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb22
bb22:
  %t95 = load i64, ptr %l11, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t99 = icmp slt i64 %t95, %t96
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb23, label %bb24
bb23:
  br label %bb49
bb24:
  br label %bb25
bb25:
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l11, !tbaa !24
  %t105 = load i64, ptr %l9, !tbaa !24
  %t108 = mul i64 %t104, %t105
  %t111 = add i64 %t103, %t108
  store i64 %t111, ptr %l12, !tbaa !24
  %t113 = load i64, ptr %l12, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l79, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t116, i32 0, i32 24
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t118)
  store i64 %t120, ptr %l82
  br label %bb26
bb26:
  %t121 = load i64, ptr %l79, !tbaa !24
  %t122 = load i64, ptr %l82, !tbaa !24
  %t123 = icmp slt i64 %t121, %t122
  br i1 %t123, label %bb27, label %bb28
bb27:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/scope:Scoper", ptr %t125, i32 0, i32 24
  %t128 = load i64, ptr %l12, !tbaa !24
  %t130 = add i64 %t128, 1
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t127, i64 %t130)
  store i64 %t133, ptr %l89
  br label %bb29
bb28:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/scope:Scoper", ptr %t134, i32 0, i32 25
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t136)
  store i64 %t138, ptr %l92
  br label %bb30
bb29:
  %t139 = load i64, ptr %l89, !tbaa !24
  store i64 %t139, ptr %l84, !tbaa !24
  br label %bb31
bb30:
  %t140 = load i64, ptr %l92, !tbaa !24
  store i64 %t140, ptr %l84, !tbaa !24
  br label %bb31
bb31:
  %t141 = load i64, ptr %l84, !tbaa !24
  store i64 %t141, ptr %l13, !tbaa !24
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/scope:Scoper", ptr %t142, i32 0, i32 24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t144, i64 %t145)
  store i64 %t148, ptr %l96
  br label %bb32
bb32:
  %t149 = load i64, ptr %l96, !tbaa !24
  store i64 %t149, ptr %l14, !tbaa !24
  %t150 = load i64, ptr %l13, !tbaa !24
  store i64 %t150, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t152 = load i64, ptr %l15, !tbaa !24
  %t153 = load i64, ptr %l14, !tbaa !24
  %t156 = icmp sgt i64 %t152, %t153
  br i1 %t156, label %bb33, label %bb34
bb33:
  %t158 = load i64, ptr %l16, !tbaa !24
  %t160 = icmp sgt i64 %t158, 0
  br i1 %t160, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb38
bb35:
  %t162 = load i64, ptr %l15, !tbaa !24
  %t163 = load i64, ptr %l14, !tbaa !24
  %t166 = sub i64 %t162, %t163
  %t167 = load i64, ptr %l16, !tbaa !24
  %t170 = add i64 %t166, %t167
  %t172 = sub i64 %t170, 1
  %t173 = load i64, ptr %l16, !tbaa !24
  %t176 = sdiv i64 %t172, %t173
  store i64 %t176, ptr %l104, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb37
bb37:
  %t178 = load i64, ptr %l104, !tbaa !24
  store i64 %t178, ptr %l101, !tbaa !24
  br label %bb38
bb38:
  %t179 = load i64, ptr %l101, !tbaa !24
  store i64 %t179, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb39
bb39:
  %t180 = load i64, ptr %l18, !tbaa !24
  %t181 = load i64, ptr %l17, !tbaa !24
  %t184 = icmp slt i64 %t180, %t181
  %t186 = xor i1 %t184, true
  br i1 %t186, label %bb40, label %bb41
bb40:
  br label %bb47
bb41:
  br label %bb42
bb42:
  %t188 = load i64, ptr %l14, !tbaa !24
  %t189 = load i64, ptr %l18, !tbaa !24
  %t190 = load i64, ptr %l16, !tbaa !24
  %t193 = mul i64 %t189, %t190
  %t196 = add i64 %t188, %t193
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/scope:Scoper", ptr %t198, i32 0, i32 236
  store ptr %t200, ptr %l123, !tbaa !29
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/scope:Scoper", ptr %t201, i32 0, i32 25
  %t207 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t203, i64 %t196)
  store i64 %t207, ptr %l127
  br label %bb43
bb43:
  %t208 = load i64, ptr %l13, !tbaa !24
  store i64 %t208, ptr %l128, !tbaa !24
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %t209, i32 0, i32 24
  %t212 = load i64, ptr %l12, !tbaa !24
  %t215 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t211, i64 %t212)
  store i64 %t215, ptr %l132
  br label %bb44
bb44:
  %t216 = load i64, ptr %l128, !tbaa !24
  %t217 = load i64, ptr %l132, !tbaa !24
  %t218 = sub i64 %t216, %t217
  %t219 = load ptr, ptr %l123, !tbaa !29
  %t220 = load i64, ptr %l127, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t219, i64 %t220, i64 %t218)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t222 = load i64, ptr %l18, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l18, !tbaa !24
  br label %bb39
bb47:
  br label %bb48
bb48:
  %t226 = load i64, ptr %l11, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l11, !tbaa !24
  br label %bb22
bb49:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticLiteral(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l25 = alloca i32
  %l29 = alloca i1
  %l34 = alloca i64
  %l42 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l52 = alloca i1
  %l56 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [5 x i64] }, ptr %t13, i32 0, i32 1
  %t16 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t15, i32 0, i32 0
  %t17 = load %"compiler/source:Span", ptr %t16
  store %"compiler/source:Span" %t17, ptr %l2
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 1
  %t23 = load i32, ptr %t22
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l4, !tbaa !29
  store i32 %t23, ptr %l5, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l5, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l25
  br label %bb6
bb6:
  %t43 = load i32, ptr %l25, !range !{i32 0, i32 33}
  %t45 = trunc i64 20 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb10
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l5, !tbaa !23
  %t59 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t55, i32 %t56)
  store i64 %t59, ptr %l34
  br label %bb9
bb9:
  %t60 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t61 = load i64, ptr %l34, !tbaa !24
  %t63 = and i64 %t61, %t60
  %t65 = icmp ne i64 %t63, 0
  store i1 %t65, ptr %l29, !tbaa !21
  br label %bb10
bb10:
  %t67 = load i1, ptr %l29, !tbaa !21
  br i1 %t67, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Promote", ptr %t69, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  store ptr %t73, ptr %l6, !tbaa !29
  %t75 = load ptr, ptr %l6, !tbaa !29
  store ptr %t75, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t76 = load ptr, ptr %l43, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb14, label %bb15
bb14:
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 18}
  %t82 = icmp eq i64 %t80, 7
  store i1 %t82, ptr %l44, !tbaa !21
  br label %bb15
bb15:
  %t83 = load i1, ptr %l44, !tbaa !21
  br i1 %t83, label %bb16, label %bb17
bb16:
  %t84 = load ptr, ptr %l6, !tbaa !29
  %t86 = getelementptr { i64, [5 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l7, !tbaa !29
  br label %bb18
bb17:
  br label %bb23
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t90 = load ptr, ptr %l7, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Make", ptr %t90, i32 0, i32 0
  %t93 = load i32, ptr %t92, !range !{i32 0, i32 5}
  %t95 = trunc i64 2 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb19, label %bb20
bb19:
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Make", ptr %t98, i32 0, i32 2
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  %t102 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_23, 0
  %t103 = insertvalue { ptr, ptr } %t102, ptr null, 1
  %t106 = extractvalue { ptr, ptr } %t103, 0
  %t107 = extractvalue { ptr, ptr } %t103, 1
  %t108 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2ftyped_3aExpr_26_3e_2eEvery_3ccompiler_2ftyped_3aExpr_26_2c_20_3f_3e(ptr %v1, ptr %s3, { i64, ptr } %t101, ptr %t106, ptr %t107)
  store i1 %t108, ptr %l56
  br label %bb21
bb20:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb22
bb21:
  %t109 = load i1, ptr %l56, !tbaa !21
  store i1 %t109, ptr %l52, !tbaa !21
  br label %bb22
bb22:
  %t110 = load i1, ptr %l52, !tbaa !21
  store i1 %t110, ptr %l42, !tbaa !21
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_ecfbbef7cda902e1_3bafa02f8f932e5d)
  unreachable
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t111 = load i1, ptr %l42, !tbaa !21
  store i1 %t111, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailCloses(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l13 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l40 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t10 = getelementptr { i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10
  store i32 %t11, ptr %l2, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 31
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 27
  %t19 = load i64, ptr %t18, !tbaa !24
  %t22 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_H146d7ec8c8d698270e6878a3ddf78bf0(ptr %v0, ptr %s0, ptr %t15, i64 %t19)
  %t23 = extractvalue { i32, { i64, ptr } } %t22, 1
  %t24 = extractvalue { i32, { i64, ptr } } %t22, 0
  store i32 %t24, ptr %l19
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb5, label %ok.26, !prof !99
ok.26:
  store { i64, ptr } %t23, ptr %l18
  br label %bb4
bb4:
  %t27 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  store i64 %t28, ptr %l20, !tbaa !24
  %t29 = load i64, ptr %l20, !tbaa !24
  %t30 = mul i64 %t29, 4
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l21, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = mul i64 %t38, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t35, ptr %t37, i64 %t39, i1 false)
  %t40 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t40, ptr %l13, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  %t42 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t42, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t49 = load i64, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb9, label %bb10
bb9:
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t57 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t57, ptr %l30, !tbaa !27
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i32, ptr %t61, i64 %t58
  %t63 = load i32, ptr %t62, !tbaa !33
  store i32 %t63, ptr %l7, !tbaa !23
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 26
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = icmp eq ptr %t68, null
  br i1 %t70, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_5940eb06b2dde928_1562a964672b5f14)
  unreachable
bb13:
  br label %bb14
bb14:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 26
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t76 = load i32, ptr %l2, !tbaa !23
  %t77 = load i32, ptr %l7, !tbaa !23
  %t81 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t75, i32 %t76, i32 %t77)
  store i1 %t81, ptr %l40
  br label %bb15
bb15:
  %t82 = load i1, ptr %l40, !tbaa !21
  br i1 %t82, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t84 = load i64, ptr %l5, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l5, !tbaa !24
  br label %bb8
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i1
  %l9 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %rv = alloca ptr
  %t28 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t2)
  store i32 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load i1, ptr %l5, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erootOf(ptr %v0, ptr %v1, ptr %v2, ptr %t11, ptr %t12)
  store ptr %t15, ptr %l9
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l9, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb6:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = call i1 @compiler_2ftyped_2ePurePlace(ptr %v1, ptr %t17)
  store i1 %t19, ptr %l11
  br label %bb7
bb7:
  %t20 = load i1, ptr %l11, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t21)
  store %"compiler/source:Span" %t23, ptr %l14
  br label %bb10
bb9:
  store ptr null, ptr %l12, !tbaa !29
  br label %bb12
bb10:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t24)
  store i32 %t26, ptr %l16
  br label %bb11
bb11:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 0
  store i64 2, ptr %t29
  %t30 = load %"compiler/source:Span", ptr %l14
  %t31 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t30, 0
  %t32 = load i32, ptr %l16, !tbaa !23
  %t33 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t31, i32 %t32, 1
  %t35 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t33, ptr %t27, 2
  %t36 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t35, i32 -1, 3
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t36, ptr %t37
  %t38 = load { i64, [5 x i64] }, ptr %t28
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t38, ptr %t40
  store ptr %t40, ptr %l12, !tbaa !29
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l12, !tbaa !29
  store ptr %t42, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinFor(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/scope:fnRec"
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i1
  %l30 = alloca ptr
  %l34 = alloca i1
  %l37 = alloca i1
  %l43 = alloca ptr
  %l46 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l54 = alloca %"std/prelude/text:StringBuilder"
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l66 = alloca i64
  %l69 = alloca i64
  %l91 = alloca i1
  %l92 = alloca i64
  %l95 = alloca i64
  %l97 = alloca i1
  %l101 = alloca { i64, ptr }
  %l104 = alloca i1
  %l106 = alloca i1
  %l109 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l115 = alloca i1
  %l119 = alloca { i64, ptr }
  %l122 = alloca %"compiler/scope:fnRecs"
  %l124 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l130 = alloca i64
  %l132 = alloca i64
  %l137 = alloca %"compiler/scope:fnRec"
  %l138 = alloca ptr
  %l139 = alloca i64
  %l141 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l150 = alloca i32
  %l151 = alloca i64
  %l155 = alloca %"compiler/scope:fnRecs"
  %l157 = alloca i64
  %l166 = alloca { i64, ptr }
  %l167 = alloca i64
  %l172 = alloca i64
  %l173 = alloca i32
  %l177 = alloca i1
  %l178 = alloca i1
  %l185 = alloca i64
  %l189 = alloca ptr
  %l193 = alloca i1
  %l197 = alloca ptr
  %l200 = alloca i1
  %l201 = alloca i64
  %l204 = alloca i64
  %l206 = alloca i1
  %l210 = alloca i64
  %l215 = alloca i64
  %l220 = alloca i1
  %l225 = alloca i64
  %l230 = alloca i64
  %l235 = alloca i64
  %l240 = alloca i1
  %l250 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l21, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 1
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l21, !tbaa !24
  %t8 = load i64, ptr %l24, !tbaa !24
  %t9 = icmp sge i64 %t7, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l30
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l30, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t18, i32 0, i32 11
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = icmp eq ptr %t21, null
  store i1 %t23, ptr %l26, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l26, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb9
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinnable(ptr %v0, ptr %t26, i64 %t27)
  store i1 %t30, ptr %l37
  br label %bb8
bb8:
  %t31 = load i1, ptr %l37, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l34, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l34, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 1
  %t39 = load i64, ptr %l2, !tbaa !24
  %t42 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t38, i64 %t39)
  store ptr %t42, ptr %l43
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l43, !tbaa !29
  store ptr %t43, ptr %l4, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  store ptr %t49, ptr %l46, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Body", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %t58, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t55, i32 %t59)
  store i32 %t62, ptr %l52
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l46, !tbaa !29
  %t64 = load i32, ptr %l52, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t63, i32 %t64)
  store { i64, ptr } %t65, ptr %l53
  br label %bb15
bb15:
  %t66 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t66, ptr %l5, !tbaa !27
  %t67 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t67, ptr %l54
  br label %bb16
bb16:
  %t68 = load %"std/prelude/text:StringBuilder", ptr %l54
  store %"std/prelude/text:StringBuilder" %t68, ptr %l6
  %t69 = load i64, ptr %l2, !tbaa !24
  %t71 = call i64 @__olang_fmt_i64(ptr null, i64 %t69)
  %t72 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t71)
  %t73 = call i64 @__olang_fmt_i64(ptr %t72, i64 %t69)
  %t74 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t72, 1
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t78 = extractvalue { i64, ptr } %t75, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t82)
  br label %bb17
bb17:
  %t85 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t85, ptr %l59
  br label %bb18
bb18:
  %t86 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t86, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Call", ptr %t87, i32 0, i32 1
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  store i64 %t92, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t94 = load i64, ptr %l10, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t98 = icmp sgt i64 %t94, %t95
  br i1 %t98, label %bb19, label %bb20
bb19:
  %t100 = load i64, ptr %l11, !tbaa !24
  %t102 = icmp sgt i64 %t100, 0
  br i1 %t102, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb24
bb21:
  %t104 = load i64, ptr %l10, !tbaa !24
  %t105 = load i64, ptr %l9, !tbaa !24
  %t108 = sub i64 %t104, %t105
  %t109 = load i64, ptr %l11, !tbaa !24
  %t112 = add i64 %t108, %t109
  %t114 = sub i64 %t112, 1
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = sdiv i64 %t114, %t115
  store i64 %t118, ptr %l69, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb23
bb23:
  %t120 = load i64, ptr %l69, !tbaa !24
  store i64 %t120, ptr %l66, !tbaa !24
  br label %bb24
bb24:
  %t121 = load i64, ptr %l66, !tbaa !24
  store i64 %t121, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t122 = load i64, ptr %l13, !tbaa !24
  %t123 = load i64, ptr %l12, !tbaa !24
  %t126 = icmp slt i64 %t122, %t123
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb66
bb27:
  br label %bb28
bb28:
  %t130 = load i64, ptr %l9, !tbaa !24
  %t131 = load i64, ptr %l13, !tbaa !24
  %t132 = load i64, ptr %l11, !tbaa !24
  %t135 = mul i64 %t131, %t132
  %t138 = add i64 %t130, %t135
  store i64 %t138, ptr %l14, !tbaa !24
  %t140 = load i64, ptr %l14, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t146 = icmp sge i64 %t140, %t143
  br i1 %t146, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb32
bb30:
  %t148 = load i64, ptr %l14, !tbaa !24
  store i64 %t148, ptr %l92, !tbaa !24
  %t149 = load ptr, ptr %l4, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Body", ptr %t149, i32 0, i32 5
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t151)
  store i64 %t153, ptr %l95
  br label %bb31
bb31:
  %t154 = load i64, ptr %l92, !tbaa !24
  %t155 = load i64, ptr %l95, !tbaa !24
  %t156 = icmp sge i64 %t154, %t155
  store i1 %t156, ptr %l91, !tbaa !21
  br label %bb32
bb32:
  %t158 = load i1, ptr %l91, !tbaa !21
  br i1 %t158, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb35
bb34:
  %t159 = load i64, ptr %l14, !tbaa !24
  %t161 = icmp sge i64 %t159, 62
  store i1 %t161, ptr %l97, !tbaa !21
  br label %bb35
bb35:
  %t163 = load i1, ptr %l97, !tbaa !21
  br i1 %t163, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s4)
  br label %bb66
bb37:
  br label %bb38
bb38:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t165, ptr %l101, !tbaa !27
  %t166 = load i64, ptr %l14, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i32, ptr %t169, i64 %t166
  %t171 = load i32, ptr %t170, !tbaa !33
  %t174 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t164, i32 %t171)
  store i1 %t174, ptr %l104
  br label %bb39
bb39:
  %t175 = load i1, ptr %l104, !tbaa !21
  %t176 = xor i1 %t175, true
  br i1 %t176, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l106, !tbaa !21
  br label %bb43
bb41:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Call", ptr %t179, i32 0, i32 1
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  store { i64, ptr } %t182, ptr %l109, !tbaa !27
  %t183 = load i64, ptr %l14, !tbaa !24
  %t185 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = getelementptr ptr, ptr %t186, i64 %t183
  %t188 = load ptr, ptr %t187, !tbaa !39
  %t189 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t189, ptr %l112, !tbaa !27
  %t190 = load i64, ptr %l14, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr i32, ptr %t193, i64 %t190
  %t195 = load i32, ptr %t194, !tbaa !33
  %t199 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efollowable(ptr %v0, ptr %v1, ptr %t178, ptr %t188, i32 %t195)
  store i1 %t199, ptr %l115
  br label %bb42
bb42:
  %t200 = load i1, ptr %l115, !tbaa !21
  %t201 = xor i1 %t200, true
  store i1 %t201, ptr %l106, !tbaa !21
  br label %bb43
bb43:
  %t203 = load i1, ptr %l106, !tbaa !21
  br i1 %t203, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s4)
  br label %bb65
bb45:
  br label %bb46
bb46:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr %"compiler/typed:Call", ptr %t205, i32 0, i32 1
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  store { i64, ptr } %t208, ptr %l119, !tbaa !27
  %t209 = load i64, ptr %l14, !tbaa !24
  %t211 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr ptr, ptr %t212, i64 %t209
  %t214 = load ptr, ptr %t213, !tbaa !39
  %t217 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeyRecs(ptr %v0, ptr %v1, ptr %s4, ptr %t204, ptr %t214)
  store %"compiler/scope:fnRecs" %t217, ptr %l122
  br label %bb47
bb47:
  %t218 = getelementptr %"compiler/scope:fnRecs", ptr %l122, i32 0, i32 0
  %t220 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2esortedRecs(ptr %s4, ptr %s4, ptr %t218)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t220, ptr %l124
  br label %bb48
bb48:
  %t221 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l124
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t221, ptr %l15
  %t222 = load i64, ptr %l14, !tbaa !24
  %t223 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t226 = call i64 @__olang_fmt_i64(ptr null, i64 %t222)
  %t227 = add i64 %t224, %t226
  %t228 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t229 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t230 = add i64 %t227, %t229
  %t231 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t230)
  call void @olang_textcopy(ptr %t231, ptr %t223, i64 %t224)
  %t232 = getelementptr i8, ptr %t231, i64 %t224
  %t233 = call i64 @__olang_fmt_i64(ptr %t232, i64 %t222)
  %t234 = getelementptr i8, ptr %t232, i64 %t226
  call void @olang_textcopy(ptr %t234, ptr %t228, i64 %t229)
  %t235 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t231, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = extractvalue { i64, ptr } %t236, 1
  %t240 = mul i64 %t238, 1
  %t241 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t240)
  call void @llvm.memcpy.p0.p0.i64(ptr %t241, ptr %t239, i64 %t240, i1 false)
  %t242 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t241, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l6, { i64, ptr } %t243)
  br label %bb49
bb49:
  store ptr %l15, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb50
bb50:
  store %olang.scope zeroinitializer, ptr %s9
  %t247 = load i64, ptr %l17, !tbaa !24
  store i64 %t247, ptr %l130, !tbaa !24
  %t248 = load ptr, ptr %l16, !tbaa !29
  %t250 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s4, ptr %t248)
  store i64 %t250, ptr %l132
  br label %bb51
bb51:
  %t251 = load i64, ptr %l130, !tbaa !24
  %t252 = load i64, ptr %l132, !tbaa !24
  %t253 = icmp slt i64 %t251, %t252
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s9)
  br label %bb61
bb53:
  br label %bb54
bb54:
  %t257 = load ptr, ptr %l16, !tbaa !29
  %t258 = load i64, ptr %l17, !tbaa !24
  %t261 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s4, ptr %s4, ptr %t257, i64 %t258)
  store %"compiler/scope:fnRec" %t261, ptr %l137
  br label %bb55
bb55:
  %t262 = load %"compiler/scope:fnRec", ptr %l137
  store %"compiler/scope:fnRec" %t262, ptr %l18
  store ptr %l6, ptr %l138, !tbaa !29
  %t263 = getelementptr %"compiler/scope:fnRec", ptr %l18, i32 0, i32 0
  %t264 = load i64, ptr %t263, !tbaa !24
  store i64 %t264, ptr %l139, !tbaa !24
  %t265 = getelementptr %"compiler/scope:fnRec", ptr %l18, i32 0, i32 2
  %t266 = load i1, ptr %t265, !tbaa !21
  br i1 %t266, label %bb56, label %bb57
bb56:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l141, !tbaa !27
  br label %bb58
bb57:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l141, !tbaa !27
  br label %bb58
bb58:
  %t268 = load i64, ptr %l139, !tbaa !24
  %t269 = call i64 @__olang_fmt_i64(ptr null, i64 %t268)
  %t270 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = extractvalue { i64, ptr } %t270, 0
  %t273 = add i64 %t269, %t272
  %t274 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t276 = add i64 %t273, %t275
  %t277 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t276)
  %t278 = call i64 @__olang_fmt_i64(ptr %t277, i64 %t268)
  %t279 = getelementptr i8, ptr %t277, i64 %t269
  call void @olang_textcopy(ptr %t279, ptr %t271, i64 %t272)
  %t280 = getelementptr i8, ptr %t279, i64 %t272
  call void @olang_textcopy(ptr %t280, ptr %t274, i64 %t275)
  %t281 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t277, 1
  %t284 = extractvalue { i64, ptr } %t282, 0
  %t285 = extractvalue { i64, ptr } %t282, 1
  %t286 = mul i64 %t284, 1
  %t287 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t286)
  call void @llvm.memcpy.p0.p0.i64(ptr %t287, ptr %t285, i64 %t286, i1 false)
  %t288 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  %t290 = load ptr, ptr %l138, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t290, { i64, ptr } %t289)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s9)
  br label %bb60
bb60:
  %t292 = load i64, ptr %l17, !tbaa !24
  %t294 = add i64 %t292, 1
  store i64 %t294, ptr %l17, !tbaa !24
  br label %bb50
bb61:
  store ptr %l7, ptr %l146, !tbaa !29
  %t296 = load ptr, ptr %l4, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Body", ptr %t296, i32 0, i32 5
  %t299 = load i64, ptr %l14, !tbaa !24
  %t302 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t298, i64 %t299)
  store i32 %t302, ptr %l150
  br label %bb62
bb62:
  %t303 = load i32, ptr %l150, !tbaa !23
  %t304 = sext i32 %t303 to i64
  store i64 %t304, ptr %l151, !tbaa !24
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load i64, ptr %l14, !tbaa !24
  %t310 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedOf(ptr %v0, ptr %s4, ptr %s4, ptr %t305, ptr %l15, i64 %t306)
  store %"compiler/scope:fnRecs" %t310, ptr %l155
  br label %bb63
bb63:
  %t311 = load ptr, ptr %l146, !tbaa !29
  %t312 = load i64, ptr %l151, !tbaa !24
  %t313 = load %"compiler/scope:fnRecs", ptr %l155
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %s0, ptr %s4, ptr %t311, i64 %t312, %"compiler/scope:fnRecs" %t313)
  br label %bb64
bb64:
  %t314 = load i64, ptr %l8, !tbaa !24
  %t315 = load i64, ptr %l14, !tbaa !24
  store i64 %t315, ptr %l157, !tbaa !24
  %t316 = load i64, ptr %l157, !tbaa !24
  %t317 = load i64, ptr %l157, !tbaa !24
  %t318 = shl i64 1, %t317
  %t321 = or i64 %t314, %t318
  store i64 %t321, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb65
bb65:
  %t323 = load i64, ptr %l13, !tbaa !24
  %t325 = add i64 %t323, 1
  store i64 %t325, ptr %l13, !tbaa !24
  br label %bb25
bb66:
  %t327 = load i64, ptr %l8, !tbaa !24
  %t329 = icmp eq i64 %t327, 0
  br i1 %t329, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb68:
  br label %bb69
bb69:
  %t333 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t333, ptr %l166
  br label %bb70
bb70:
  %t334 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t334, ptr %l19, !tbaa !27
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/scope:Scoper", ptr %t335, i32 0, i32 227
  %t338 = load ptr, ptr %t337, !tbaa !29
  %t340 = getelementptr %"compiler/scope:twinTab", ptr %t338, i32 0, i32 0
  %t341 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t344 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %v0, ptr %t340, { i64, ptr } %t341)
  %t345 = extractvalue { i32, i64 } %t344, 1
  %t346 = extractvalue { i32, i64 } %t344, 0
  store i32 %t346, ptr %l173
  %t347 = icmp ne i32 %t346, 0
  br i1 %t347, label %bb72, label %ok.348, !prof !99
ok.348:
  store i64 %t345, ptr %l172
  br label %bb71
bb71:
  %t349 = load i64, ptr %l172, !tbaa !24
  store i64 %t349, ptr %l167, !tbaa !24
  br label %bb74
bb72:
  br label %bb73
bb73:
  store i64 -1, ptr %l167, !tbaa !24
  br label %bb74
bb74:
  %t350 = load i64, ptr %l167, !tbaa !24
  store i64 %t350, ptr %l20, !tbaa !24
  %t351 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/scope:Scoper", ptr %t352, i32 0, i32 228
  %t355 = load { i64, ptr }, ptr %t354, !tbaa !27
  %t358 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t351, { i64, ptr } %t355)
  store i1 %t358, ptr %l177
  br label %bb75
bb75:
  %t359 = load i1, ptr %l177, !tbaa !21
  br i1 %t359, label %bb76, label %bb77
bb76:
  %t360 = load i64, ptr %l20, !tbaa !24
  %t362 = icmp sge i64 %t360, 0
  store i1 %t362, ptr %l178, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb78
bb78:
  %t364 = load i1, ptr %l178, !tbaa !21
  br i1 %t364, label %bb79, label %bb80
bb79:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t366 = load ptr, ptr %l1, !tbaa !29
  %t367 = load i64, ptr %l20, !tbaa !24
  %t368 = load i64, ptr %l8, !tbaa !24
  %t373 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinMarked(ptr %v0, ptr %v1, ptr %t365, ptr %t366, i64 %t367, i64 %t368)
  store i64 %t373, ptr %l185
  br label %bb81
bb80:
  br label %bb82
bb81:
  call void @__olang_scope_close(ptr %s0)
  %t374 = load i64, ptr %l185, !tbaa !24
  store i64 %t374, ptr %rv
  br label %ret
bb82:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/scope:Scoper", ptr %t375, i32 0, i32 6
  %t378 = load i64, ptr %l2, !tbaa !24
  %t381 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t377, i64 %t378)
  store ptr %t381, ptr %l189
  br label %bb83
bb83:
  %t382 = load ptr, ptr %l189, !tbaa !29
  %t384 = getelementptr %"compiler/scope:summary", ptr %t382, i32 0, i32 19
  %t385 = load i1, ptr %t384, !tbaa !21
  %t387 = xor i1 %t385, true
  br i1 %t387, label %bb84, label %bb85
bb84:
  store i1 true, ptr %l193, !tbaa !21
  br label %bb87
bb85:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/scope:Scoper", ptr %t389, i32 0, i32 6
  %t392 = load i64, ptr %l2, !tbaa !24
  %t395 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t391, i64 %t392)
  store ptr %t395, ptr %l197
  br label %bb86
bb86:
  %t396 = load ptr, ptr %l197, !tbaa !29
  %t398 = getelementptr %"compiler/scope:summary", ptr %t396, i32 0, i32 20
  %t399 = load i1, ptr %t398, !tbaa !21
  store i1 %t399, ptr %l193, !tbaa !21
  br label %bb87
bb87:
  %t401 = load i1, ptr %l193, !tbaa !21
  br i1 %t401, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l200, !tbaa !21
  br label %bb91
bb89:
  %t402 = load i64, ptr %l2, !tbaa !24
  store i64 %t402, ptr %l201, !tbaa !24
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/scope:Scoper", ptr %t403, i32 0, i32 236
  %t407 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t405)
  store i64 %t407, ptr %l204
  br label %bb90
bb90:
  %t408 = load i64, ptr %l201, !tbaa !24
  %t409 = load i64, ptr %l204, !tbaa !24
  %t410 = icmp sge i64 %t408, %t409
  store i1 %t410, ptr %l200, !tbaa !21
  br label %bb91
bb91:
  %t412 = load i1, ptr %l200, !tbaa !21
  br i1 %t412, label %bb92, label %bb93
bb92:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb95
bb93:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"compiler/scope:Scoper", ptr %t413, i32 0, i32 236
  %t416 = load i64, ptr %l2, !tbaa !24
  %t419 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t415, i64 %t416)
  store i64 %t419, ptr %l210
  br label %bb94
bb94:
  %t420 = load i64, ptr %l210, !tbaa !24
  %t421 = icmp sgt i64 %t420, 1
  store i1 %t421, ptr %l206, !tbaa !21
  br label %bb95
bb95:
  %t423 = load i1, ptr %l206, !tbaa !21
  br i1 %t423, label %bb96, label %bb97
bb96:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load ptr, ptr %l1, !tbaa !29
  %t426 = load i64, ptr %l8, !tbaa !24
  %t430 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinLimited(ptr %v0, ptr %v1, ptr %t424, ptr %t425, i64 %t426)
  store i64 %t430, ptr %l215
  br label %bb98
bb97:
  br label %bb99
bb98:
  call void @__olang_scope_close(ptr %s0)
  %t431 = load i64, ptr %l215, !tbaa !24
  store i64 %t431, ptr %rv
  br label %ret
bb99:
  %t432 = load i64, ptr %l20, !tbaa !24
  %t434 = icmp slt i64 %t432, 0
  br i1 %t434, label %bb100, label %bb101
bb100:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load i64, ptr %l2, !tbaa !24
  %t440 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinRoom(ptr %v0, ptr %t436, i64 %t437)
  store i1 %t440, ptr %l220
  br label %bb102
bb101:
  br label %bb108
bb102:
  %t441 = load i1, ptr %l220, !tbaa !21
  %t442 = xor i1 %t441, true
  br i1 %t442, label %bb103, label %bb104
bb103:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t445 = load ptr, ptr %l1, !tbaa !29
  %t446 = load i64, ptr %l8, !tbaa !24
  %t450 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinLimited(ptr %v0, ptr %v1, ptr %t444, ptr %t445, i64 %t446)
  store i64 %t450, ptr %l225
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_scope_close(ptr %s0)
  %t451 = load i64, ptr %l225, !tbaa !24
  store i64 %t451, ptr %rv
  br label %ret
bb106:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load i64, ptr %l2, !tbaa !24
  %t454 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t459 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewTwin(ptr %v0, ptr %s0, ptr %s0, ptr %t452, i64 %t453, { i64, ptr } %t454, ptr %l7)
  store i64 %t459, ptr %l230
  br label %bb107
bb107:
  %t460 = load i64, ptr %l230, !tbaa !24
  store i64 %t460, ptr %l20, !tbaa !24
  br label %bb108
bb108:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t463 = getelementptr %"compiler/scope:Scoper", ptr %t461, i32 0, i32 227
  %t464 = load ptr, ptr %t463, !tbaa !29
  %t466 = getelementptr %"compiler/scope:twinTab", ptr %t464, i32 0, i32 8
  %t467 = load i64, ptr %l20, !tbaa !24
  %t470 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t466, i64 %t467)
  store i64 %t470, ptr %l235
  br label %bb109
bb109:
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t473 = getelementptr %"compiler/scope:Scoper", ptr %t471, i32 0, i32 227
  %t474 = load ptr, ptr %t473, !tbaa !29
  %t476 = getelementptr %"compiler/scope:twinTab", ptr %t474, i32 0, i32 9
  %t477 = load i64, ptr %t476, !tbaa !24
  %t478 = load i64, ptr %l235, !tbaa !24
  %t480 = icmp ne i64 %t478, %t477
  br i1 %t480, label %bb110, label %bb111
bb110:
  store i1 true, ptr %l240, !tbaa !21
  br label %bb112
bb111:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/scope:Scoper", ptr %t482, i32 0, i32 28
  %t485 = load i1, ptr %t484, !tbaa !21
  store i1 %t485, ptr %l240, !tbaa !21
  br label %bb112
bb112:
  %t487 = load i1, ptr %l240, !tbaa !21
  br i1 %t487, label %bb113, label %bb114
bb113:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeTwin(ptr %v0, ptr %t488, i64 %t489, %"compiler/source:Span" %a3)
  br label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb116
bb116:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load ptr, ptr %l1, !tbaa !29
  %t496 = load i64, ptr %l20, !tbaa !24
  %t497 = load i64, ptr %l8, !tbaa !24
  %t502 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinMarked(ptr %v0, ptr %v1, ptr %t494, ptr %t495, i64 %t496, i64 %t497)
  store i64 %t502, ptr %l250
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s0)
  %t503 = load i64, ptr %l250, !tbaa !24
  store i64 %t503, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/scope:fnRec"
  %l9 = alloca i64
  %l12 = alloca i1
  %l15 = alloca i1
  %l23 = alloca i1
  %l28 = alloca i1
  %l29 = alloca i32
  %l34 = alloca i32
  %l39 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca i64
  %l49 = alloca %"compiler/scope:fnRec"
  %l51 = alloca %"compiler/scope:fnRec"
  %l52 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca i1
  %l57 = alloca i1
  %l58 = alloca i32
  %l63 = alloca ptr
  %l67 = alloca i64
  %s4 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %t5, i64 %t6)
  store i1 %t9, ptr %l15
  br label %bb3
bb3:
  %t10 = load i1, ptr %l15, !tbaa !21
  store i1 %t10, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l12, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  store i64 -1, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t13, i64 %t14, i1 true)
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t20 = load i32, ptr %l3, !tbaa !23
  %t25 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueOK(ptr %v0, ptr %t17, i64 %t18, i1 %a2, i32 %t20)
  store i1 %t25, ptr %l23
  br label %bb9
bb9:
  %t26 = load i1, ptr %l23, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb10, label %bb11
bb10:
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l28
  br label %bb13
bb13:
  %t36 = load i1, ptr %l28, !tbaa !21
  br i1 %t36, label %bb14, label %bb15
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l34
  br label %bb16
bb15:
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t47, ptr %l29, !tbaa !23
  br label %bb17
bb16:
  %t49 = load i32, ptr %l34, !tbaa !23
  store i32 %t49, ptr %l29, !tbaa !23
  br label %bb17
bb17:
  %t50 = load i32, ptr %l29, !tbaa !23
  store i32 %t50, ptr %l5, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 6
  %t54 = load i64, ptr %l1, !tbaa !24
  %t57 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t53, i64 %t54)
  store ptr %t57, ptr %l39
  br label %bb18
bb18:
  %t58 = load ptr, ptr %l39, !tbaa !29
  %t60 = getelementptr %"compiler/scope:summary", ptr %t58, i32 0, i32 16
  %t61 = getelementptr %"compiler/scope:fnRecs", ptr %t60, i32 0, i32 0
  store ptr %t61, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t63 = load i64, ptr %l7, !tbaa !24
  store i64 %t63, ptr %l42, !tbaa !24
  %t64 = load ptr, ptr %l6, !tbaa !29
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l44
  br label %bb20
bb20:
  %t67 = load i64, ptr %l42, !tbaa !24
  %t68 = load i64, ptr %l44, !tbaa !24
  %t69 = icmp slt i64 %t67, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb36
bb22:
  br label %bb23
bb23:
  %t73 = load ptr, ptr %l6, !tbaa !29
  %t74 = load i64, ptr %l7, !tbaa !24
  %t77 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v0, ptr %t73, i64 %t74)
  store %"compiler/scope:fnRec" %t77, ptr %l49
  br label %bb24
bb24:
  %t79 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s4, ptr %l49)
  store %"compiler/scope:fnRec" %t79, ptr %l51
  br label %bb25
bb25:
  %t80 = load %"compiler/scope:fnRec", ptr %l51
  store %"compiler/scope:fnRec" %t80, ptr %l8
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l52, !tbaa !29
  %t82 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  store i64 %t83, ptr %l53, !tbaa !24
  %t84 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 2
  %t85 = load i1, ptr %t84, !tbaa !21
  store i1 %t85, ptr %l54, !tbaa !21
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l5, !tbaa !23
  %t90 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t86, i32 %t87)
  store i1 %t90, ptr %l57
  br label %bb26
bb26:
  %t91 = load i1, ptr %l57, !tbaa !21
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t92 = load i32, ptr %l5, !tbaa !23
  store i32 %t92, ptr %l58, !tbaa !23
  br label %bb30
bb28:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/scope:Scoper", ptr %t94, i32 0, i32 1
  %t97 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 0
  %t98 = load i64, ptr %t97, !tbaa !24
  %t101 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t96, i64 %t98)
  store ptr %t101, ptr %l63
  br label %bb29
bb29:
  %t102 = load ptr, ptr %l63, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Body", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %t104, !tbaa !23
  store i32 %t105, ptr %l58, !tbaa !23
  br label %bb30
bb30:
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t108 = load ptr, ptr %l52, !tbaa !29
  %t109 = load i64, ptr %l53, !tbaa !24
  %t110 = load i1, ptr %l54, !tbaa !21
  %t111 = load i32, ptr %l58, !tbaa !23
  %t113 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euncovered(ptr %v0, ptr %v1, ptr %t108, i64 %t109, i1 %t110, i32 %t111, ptr %t107)
  store i64 %t113, ptr %l67
  br label %bb31
bb31:
  %t114 = load i64, ptr %l67, !tbaa !24
  store i64 %t114, ptr %l9, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t117 = icmp sge i64 %t115, 0
  br i1 %t117, label %bb32, label %bb33
bb32:
  %t119 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  store i64 %t119, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb35:
  %t121 = load i64, ptr %l7, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l7, !tbaa !24
  br label %bb19
bb36:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunknownBinding(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i1
  %l23 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 4
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb11
bb5:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = sub i64 0, %t14
  %t18 = sub i64 %t16, 1
  store i64 %t18, ptr %l12, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 111
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l15
  br label %bb6
bb6:
  %t24 = load i64, ptr %l12, !tbaa !24
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = icmp slt i64 %t24, %t25
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 111
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = sub i64 0, %t31
  %t35 = sub i64 %t33, 1
  %t38 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t30, i64 %t35)
  store i1 %t38, ptr %l23
  br label %bb9
bb8:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb10
bb9:
  %t39 = load i1, ptr %l23, !tbaa !21
  store i1 %t39, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l17, !tbaa !21
  store i1 %t40, ptr %l9, !tbaa !21
  br label %bb11
bb11:
  %t41 = load i1, ptr %l9, !tbaa !21
  store i1 %t41, ptr %l3, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_32e8be698fa34edf_ce62f399ed2770f3)
  unreachable
bb17:
  %t42 = load i1, ptr %l3, !tbaa !21
  store i1 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRels(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l18 = alloca { i64, [2 x i64] }
  %l19 = alloca { i64, [2 x i64] }
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l31 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l61 = alloca { i64, ptr }
  %l65 = alloca i1
  %l66 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l82 = alloca i64
  %l84 = alloca i64
  %l89 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l95 = alloca { i64, [2 x i64] }
  %l101 = alloca { i64, [2 x i64] }
  %l104 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca { i64, [2 x i64] }
  %l109 = alloca { i64, [2 x i64] }
  %l110 = alloca %"compiler/source:Span"
  %l114 = alloca i1
  %l118 = alloca %"compiler/scope:rel"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t37 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l20
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp6
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  %t4 = load ptr, ptr %lp6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  store ptr %t10, ptr %l23, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l1, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l28
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l23, !tbaa !29
  %t22 = load i32, ptr %l28, !tbaa !23
  %t23 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t21, i32 %t22)
  store { i64, ptr } %t23, ptr %l29
  br label %bb3
bb3:
  %t24 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t24, ptr %l7, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l31, !tbaa !24
  %t28 = load i64, ptr %l31, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t31 = load i64, ptr %l31, !tbaa !24
  %t32 = icmp sle i64 %t31, 1152921504606846975
  br i1 %t32, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_a44d9e5ac8889d36_f62ebd6095d4b7fa)
  unreachable
bb6:
  %t34 = load i64, ptr %l31, !tbaa !24
  %t35 = mul i64 %t34, 8
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t34
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr i64, ptr %t36, i64 %t41
  store i64 -1, ptr %t43
  %t44 = add i64 %t41, 1
  store i64 %t44, ptr %t37
  br label %fill.38
filld.40:
  %t45 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t36, 1
  store { i64, ptr } %t46, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t52 = load i64, ptr %l10, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t56 = icmp sgt i64 %t52, %t53
  br i1 %t56, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_a44d9e5ac8889d36_f62ebd6095d4b7fa)
  unreachable
bb8:
  %t58 = load i64, ptr %l11, !tbaa !24
  %t60 = icmp sgt i64 %t58, 0
  br i1 %t60, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb13
bb10:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t67 = load i64, ptr %l11, !tbaa !24
  %t70 = add i64 %t66, %t67
  %t72 = sub i64 %t70, 1
  %t73 = load i64, ptr %l11, !tbaa !24
  %t76 = sdiv i64 %t72, %t73
  store i64 %t76, ptr %l43, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb12
bb12:
  %t78 = load i64, ptr %l43, !tbaa !24
  store i64 %t78, ptr %l40, !tbaa !24
  br label %bb13
bb13:
  %t79 = load i64, ptr %l40, !tbaa !24
  store i64 %t79, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb14
bb14:
  %t80 = load i64, ptr %l13, !tbaa !24
  %t81 = load i64, ptr %l12, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb15, label %bb16
bb15:
  br label %bb25
bb16:
  br label %bb17
bb17:
  %t88 = load i64, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l13, !tbaa !24
  %t90 = load i64, ptr %l11, !tbaa !24
  %t93 = mul i64 %t89, %t90
  %t96 = add i64 %t88, %t93
  store i64 %t96, ptr %l14, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t98, ptr %l61, !tbaa !27
  %t99 = load i64, ptr %l14, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i64, ptr %t102, i64 %t99
  %t104 = load i64, ptr %t103, !tbaa !34
  %t106 = icmp sge i64 %t104, 0
  br i1 %t106, label %bb18, label %bb19
bb18:
  %t108 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t108, ptr %l66, !tbaa !27
  %t109 = load i64, ptr %l14, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i64, ptr %t112, i64 %t109
  %t114 = load i64, ptr %t113, !tbaa !34
  %t115 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t120 = icmp slt i64 %t114, %t117
  store i1 %t120, ptr %l65, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb20
bb20:
  %t122 = load i1, ptr %l65, !tbaa !21
  br i1 %t122, label %bb21, label %bb22
bb21:
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t123, ptr %l72, !tbaa !27
  %t124 = load i64, ptr %l14, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i64, ptr %t127, i64 %t124
  %t129 = load i64, ptr %t128, !tbaa !34
  %t130 = load i64, ptr %l14, !tbaa !24
  %t133 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i64, ptr %t134, i64 %t129
  store i64 %t130, ptr %t135, !tbaa !34
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t136 = load i64, ptr %l13, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l13, !tbaa !24
  br label %bb14
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l1, !tbaa !23
  %t144 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundEdges(ptr %v0, ptr %s5, ptr %t140, i32 %t141)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %l80
  br label %bb26
bb26:
  %t145 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  %t146 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t145, ptr %t146
  store ptr %t146, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t148 = load i64, ptr %l16, !tbaa !24
  store i64 %t148, ptr %l82, !tbaa !24
  %t149 = load ptr, ptr %l15, !tbaa !29
  %t151 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %s5, ptr %t149)
  store i64 %t151, ptr %l84
  br label %bb28
bb28:
  %t152 = load i64, ptr %l82, !tbaa !24
  %t153 = load i64, ptr %l84, !tbaa !24
  %t154 = icmp slt i64 %t152, %t153
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s6)
  br label %bb47
bb30:
  br label %bb31
bb31:
  %t158 = load ptr, ptr %l15, !tbaa !29
  %t159 = load i64, ptr %l16, !tbaa !24
  %t162 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %s5, ptr %t158, i64 %t159)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t162, ptr %l89
  br label %bb32
bb32:
  %t163 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l89
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t163, ptr %l17
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l17, i32 0, i32 0
  %t166 = load i64, ptr %t165, !tbaa !24
  %t167 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t168 = load i64, ptr %l3, !tbaa !24
  %t169 = load i64, ptr %l5, !tbaa !24
  %t175 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundTerm(ptr %v0, ptr %s0, ptr %t164, i64 %t166, { i64, ptr } %t167, i64 %t168, i64 %t169)
  store { i64, [2 x i64] } %t175, ptr %l95
  br label %bb33
bb33:
  %t176 = load { i64, [2 x i64] }, ptr %l95
  store { i64, [2 x i64] } %t176, ptr %l18
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l17, i32 0, i32 1
  %t179 = load i64, ptr %t178, !tbaa !24
  %t180 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t181 = load i64, ptr %l3, !tbaa !24
  %t182 = load i64, ptr %l5, !tbaa !24
  %t188 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundTerm(ptr %v0, ptr %s0, ptr %t177, i64 %t179, { i64, ptr } %t180, i64 %t181, i64 %t182)
  store { i64, [2 x i64] } %t188, ptr %l101
  br label %bb34
bb34:
  %t189 = load { i64, [2 x i64] }, ptr %l101
  store { i64, [2 x i64] } %t189, ptr %l19
  %t190 = load { i64, [2 x i64] }, ptr %l18
  %t192 = extractvalue { i64, [2 x i64] } %t190, 0
  %t193 = icmp eq i64 %t192, 0
  br i1 %t193, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb37
bb36:
  %t195 = load { i64, [2 x i64] }, ptr %l19
  %t197 = extractvalue { i64, [2 x i64] } %t195, 0
  %t198 = icmp eq i64 %t197, 0
  store i1 %t198, ptr %l104, !tbaa !21
  br label %bb37
bb37:
  %t200 = load i1, ptr %l104, !tbaa !21
  br i1 %t200, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s6)
  br label %bb46
bb39:
  br label %bb40
bb40:
  %t201 = load ptr, ptr %lp6
  store ptr %t201, ptr %l107, !tbaa !29
  %t202 = load { i64, [2 x i64] }, ptr %l18
  store { i64, [2 x i64] } %t202, ptr %l108
  %t203 = load { i64, [2 x i64] }, ptr %l19
  store { i64, [2 x i64] } %t203, ptr %l109
  store %"compiler/source:Span" %a4, ptr %l110
  %t205 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l17, i32 0, i32 0
  %t206 = load i64, ptr %t205, !tbaa !24
  %t207 = load i64, ptr @G_2ecompiler_2fscope_2ePosResult, !tbaa !24
  %t210 = icmp eq i64 %t206, %t207
  br i1 %t210, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb43
bb42:
  %t212 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l17, i32 0, i32 1
  %t213 = load i64, ptr %t212, !tbaa !24
  %t214 = load i64, ptr @G_2ecompiler_2fscope_2ePosResult, !tbaa !24
  %t217 = icmp eq i64 %t213, %t214
  store i1 %t217, ptr %l114, !tbaa !21
  br label %bb43
bb43:
  %t219 = load { i64, [2 x i64] }, ptr %l108
  %t220 = load { i64, [2 x i64] }, ptr %l109
  %t221 = load %"compiler/source:Span", ptr %l110
  %t222 = load i1, ptr %l114, !tbaa !21
  %t223 = call %"compiler/scope:rel" @compiler_2fscope_3arel_2ector(ptr %s6, { i64, [2 x i64] } %t219, { i64, [2 x i64] } %t220, i1 false, %"compiler/source:Span" %t221, i64 0, i1 %t222, i1 false)
  store %"compiler/scope:rel" %t223, ptr %l118
  br label %bb44
bb44:
  %t224 = load ptr, ptr %l107, !tbaa !29
  %t225 = load %"compiler/scope:rel", ptr %l118
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v2, ptr %t224, %"compiler/scope:rel" %t225)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s6)
  br label %bb46
bb46:
  %t226 = load i64, ptr %l16, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l16, !tbaa !24
  br label %bb27
bb47:
  call void @__olang_scope_close(ptr %s5)
  %t230 = load ptr, ptr %lp6
  %t231 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t230
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t231, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i1
  %l26 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l35 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
  %l47 = alloca i64
  %l50 = alloca i64
  %l71 = alloca { i64, ptr }
  %l74 = alloca i1
  %l78 = alloca i1
  %l80 = alloca { i64, ptr }
  %l83 = alloca i1
  %l93 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l107 = alloca i1
  %l114 = alloca ptr
  %rv = alloca ptr
  %t182 = alloca { i64, [4 x i64] }, align 8
  %t196 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t2 = load ptr, ptr %l14, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l14, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l15, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l15, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb42
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l26
  br label %bb6
bb6:
  %t33 = load i1, ptr %l26, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb10
bb8:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = call i1 @compiler_2ftyped_2ePurePlace(ptr %v1, ptr %t36)
  store i1 %t38, ptr %l30
  br label %bb9
bb9:
  %t39 = load i1, ptr %l30, !tbaa !21
  %t40 = xor i1 %t39, true
  store i1 %t40, ptr %l28, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l28, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  store ptr null, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  store ptr %t49, ptr %l35, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l3, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l40
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l35, !tbaa !29
  %t61 = load i32, ptr %l40, !tbaa !23
  %t62 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t60, i32 %t61)
  store { i64, ptr } %t62, ptr %l41
  br label %bb15
bb15:
  %t63 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t63, ptr %l5, !tbaa !27
  store i64 -1, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  store i64 %t66, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = icmp sgt i64 %t68, %t69
  br i1 %t72, label %bb16, label %bb17
bb16:
  %t74 = load i64, ptr %l9, !tbaa !24
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb21
bb18:
  %t78 = load i64, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = sub i64 %t78, %t79
  %t83 = load i64, ptr %l9, !tbaa !24
  %t86 = add i64 %t82, %t83
  %t88 = sub i64 %t86, 1
  %t89 = load i64, ptr %l9, !tbaa !24
  %t92 = sdiv i64 %t88, %t89
  store i64 %t92, ptr %l50, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb20
bb20:
  %t94 = load i64, ptr %l50, !tbaa !24
  store i64 %t94, ptr %l47, !tbaa !24
  br label %bb21
bb21:
  %t95 = load i64, ptr %l47, !tbaa !24
  store i64 %t95, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb22
bb22:
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb23, label %bb24
bb23:
  br label %bb38
bb24:
  br label %bb25
bb25:
  %t104 = load i64, ptr %l7, !tbaa !24
  %t105 = load i64, ptr %l11, !tbaa !24
  %t106 = load i64, ptr %l9, !tbaa !24
  %t109 = mul i64 %t105, %t106
  %t112 = add i64 %t104, %t109
  store i64 %t112, ptr %l12, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %t114, i32 0, i32 0
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 2
  %t120 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t120, ptr %l71, !tbaa !27
  %t121 = load i64, ptr %l12, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr i32, ptr %t124, i64 %t121
  %t126 = load i32, ptr %t125, !tbaa !33
  %t129 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t119, i32 %t126)
  store i1 %t129, ptr %l74
  br label %bb26
bb26:
  %t130 = load i1, ptr %l74, !tbaa !21
  %t131 = xor i1 %t130, true
  br i1 %t131, label %bb27, label %bb28
bb27:
  br label %bb37
bb28:
  br label %bb29
bb29:
  %t133 = load i64, ptr %l6, !tbaa !24
  %t135 = icmp sge i64 %t133, 0
  br i1 %t135, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb33
bb31:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t138, ptr %l80, !tbaa !27
  %t139 = load i64, ptr %l12, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i32, ptr %t142, i64 %t139
  %t144 = load i32, ptr %t143, !tbaa !33
  %t147 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t137, i32 %t144)
  store i1 %t147, ptr %l83
  br label %bb32
bb32:
  %t148 = load i1, ptr %l83, !tbaa !21
  %t149 = xor i1 %t148, true
  store i1 %t149, ptr %l78, !tbaa !21
  br label %bb33
bb33:
  %t151 = load i1, ptr %l78, !tbaa !21
  br i1 %t151, label %bb34, label %bb35
bb34:
  store ptr null, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t153 = load i64, ptr %l12, !tbaa !24
  store i64 %t153, ptr %l6, !tbaa !24
  br label %bb37
bb37:
  %t155 = load i64, ptr %l11, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l11, !tbaa !24
  br label %bb22
bb38:
  %t159 = load i64, ptr %l6, !tbaa !24
  %t161 = icmp slt i64 %t159, 0
  br i1 %t161, label %bb39, label %bb40
bb39:
  store ptr null, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t164 = load %"compiler/source:Span", ptr %l2
  %t165 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t165, ptr %l93, !tbaa !27
  %t166 = load i64, ptr %l6, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i32, ptr %t169, i64 %t166
  %t171 = load i32, ptr %t170, !tbaa !33
  %t172 = load %"compiler/source:Span", ptr %l2
  %t173 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t173, ptr %l97, !tbaa !27
  %t174 = load i64, ptr %l6, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i32, ptr %t177, i64 %t174
  %t179 = load i32, ptr %t178, !tbaa !33
  %t180 = load ptr, ptr %l4, !tbaa !29
  %t181 = load i64, ptr %l6, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t182
  %t183 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 0
  store i64 3, ptr %t183
  %t185 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t172, 0
  %t187 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t185, i32 %t179, 1
  %t189 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t187, ptr %t180, 2
  %t191 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t189, i64 %t181, 3
  %t192 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t191, ptr %t192
  %t193 = load { i64, [4 x i64] }, ptr %t182
  %t195 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t193, ptr %t195
  store { i64, [5 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 0
  store i64 2, ptr %t197
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t164, 0
  %t201 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t199, i32 %t171, 1
  %t203 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t201, ptr %t195, 2
  %t204 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t203, i32 -1, 3
  %t205 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t204, ptr %t205
  %t206 = load { i64, [5 x i64] }, ptr %t196
  %t208 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t206, ptr %t208
  store ptr %t208, ptr %rv
  br label %ret
bb42:
  %t210 = load ptr, ptr %l1, !tbaa !29
  store ptr %t210, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t211 = load ptr, ptr %l106, !tbaa !29
  %t212 = icmp ne ptr %t211, null
  br i1 %t212, label %bb43, label %bb44
bb43:
  %t214 = load ptr, ptr %l106, !tbaa !29
  %t215 = load i64, ptr %t214, !range !{i64 0, i64 18}
  %t217 = icmp eq i64 %t215, 17
  store i1 %t217, ptr %l107, !tbaa !21
  br label %bb44
bb44:
  %t218 = load i1, ptr %l107, !tbaa !21
  br i1 %t218, label %bb45, label %bb46
bb45:
  %t219 = load ptr, ptr %l1, !tbaa !29
  %t221 = getelementptr { i64, [5 x i64] }, ptr %t219, i32 0, i32 1
  %t222 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t221, i32 0, i32 2
  %t223 = load ptr, ptr %t222
  store ptr %t223, ptr %l13, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %l13, !tbaa !29
  %t229 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRoot(ptr %v0, ptr %v1, ptr %v2, ptr %t225, ptr %t226)
  store ptr %t229, ptr %l114
  br label %bb48
bb48:
  %t230 = load ptr, ptr %l114, !tbaa !29
  store ptr %t230, ptr %rv
  br label %ret
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store ptr null, ptr %rv
  br label %ret
bb53:
  call void @__olang_check_failed(ptr @olang_loc_5a7a0b628e28a39_53e329e973d10c8d)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 213
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp ne i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 213
  store i64 %a1, ptr %t12, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 214
  store %"compiler/source:Span" %a2, ptr %t17
  br label %ret
ret:
  ret void
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca %"compiler/scope:rel"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca i64
  %l20 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca i1
  %l28 = alloca i1
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca { { i64, ptr }, { i64, ptr } }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l48 = alloca ptr
  %l52 = alloca %"compiler/scope:rel"
  %l57 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i1
  %l69 = alloca i1
  %l73 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca { { i64, ptr }, { i64, ptr } }
  %l78 = alloca { i64, ptr }
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l83 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l145 = alloca i1
  %l146 = alloca { i64, ptr }
  %l148 = alloca { i64, ptr }
  %l150 = alloca { { i64, ptr }, { i64, ptr } }
  %l151 = alloca { i64, ptr }
  %l152 = alloca i64
  %l153 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l155 = alloca i64
  %l156 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb2:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l16, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 6
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t8, i64 %t9)
  store ptr %t12, ptr %l20
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l20, !tbaa !29
  %t15 = getelementptr %"compiler/scope:summary", ptr %t13, i32 0, i32 0
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l23
  br label %bb4
bb4:
  %t18 = load i64, ptr %l16, !tbaa !24
  %t19 = load i64, ptr %l23, !tbaa !24
  %t20 = icmp sge i64 %t18, %t19
  store i1 %t20, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l15, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb9
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l28
  br label %bb8
bb8:
  %t28 = load i1, ptr %l28, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l25, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t35 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t32, 0
  %t37 = insertvalue { { i64, ptr }, { i64, ptr } } %t35, { i64, ptr } %t33, 1
  store { { i64, ptr }, { i64, ptr } } %t37, ptr %l34
  %t38 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l34, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  store { i64, ptr } %t39, ptr %l35, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l36, !tbaa !24
  %t42 = load i64, ptr %l36, !tbaa !24
  %t43 = mul i64 %t42, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  store { i64, ptr } %t46, ptr %l37, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l36, !tbaa !24
  %t52 = mul i64 %t51, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %t50, i64 %t52, i1 false)
  %t53 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t54 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l34, i32 0, i32 0
  store { i64, ptr } %t53, ptr %t54, !tbaa !27
  %t55 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l34, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l38, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 0
  store i64 %t58, ptr %l39, !tbaa !24
  %t59 = load i64, ptr %l39, !tbaa !24
  %t60 = mul i64 %t59, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t60)
  %t62 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  store { i64, ptr } %t63, ptr %l40, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = load i64, ptr %l39, !tbaa !24
  %t69 = mul i64 %t68, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t65, ptr %t67, i64 %t69, i1 false)
  %t70 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t71 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l34, i32 0, i32 1
  store { i64, ptr } %t70, ptr %t71, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t72 = load { { i64, ptr }, { i64, ptr } }, ptr %l34
  store { { i64, ptr }, { i64, ptr } } %t72, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/scope:Scoper", ptr %t73, i32 0, i32 1
  %t76 = load i64, ptr %l1, !tbaa !24
  %t79 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t75, i64 %t76)
  store ptr %t79, ptr %l44
  br label %bb13
bb13:
  %t80 = load ptr, ptr %l44, !tbaa !29
  store ptr %t80, ptr %l5, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/scope:Scoper", ptr %t81, i32 0, i32 6
  %t84 = load i64, ptr %l1, !tbaa !24
  %t87 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t83, i64 %t84)
  store ptr %t87, ptr %l48
  br label %bb14
bb14:
  %t88 = load ptr, ptr %l48, !tbaa !29
  %t90 = getelementptr %"compiler/scope:summary", ptr %t88, i32 0, i32 0
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t90, i64 %t91)
  store %"compiler/scope:rel" %t94, ptr %l52
  br label %bb15
bb15:
  %t95 = load %"compiler/scope:rel", ptr %l52
  store %"compiler/scope:rel" %t95, ptr %l6
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l5, !tbaa !29
  %t98 = load i1, ptr %l2, !tbaa !21
  %t99 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t100 = load { i64, [2 x i64] }, ptr %t99
  %t105 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposOf(ptr %v0, ptr %v0, ptr %t96, ptr %t97, i1 %t98, { i64, [2 x i64] } %t100)
  store i64 %t105, ptr %l57
  br label %bb16
bb16:
  %t106 = load i64, ptr %l57, !tbaa !24
  store i64 %t106, ptr %l7, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t109 = load i1, ptr %l2, !tbaa !21
  %t110 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 1
  %t111 = load { i64, [2 x i64] }, ptr %t110
  %t116 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposOf(ptr %v0, ptr %v0, ptr %t107, ptr %t108, i1 %t109, { i64, [2 x i64] } %t111)
  store i64 %t116, ptr %l62
  br label %bb17
bb17:
  %t117 = load i64, ptr %l62, !tbaa !24
  store i64 %t117, ptr %l8, !tbaa !24
  %t118 = load i64, ptr %l7, !tbaa !24
  %t120 = icmp slt i64 %t118, 0
  br i1 %t120, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb20
bb19:
  %t122 = load i64, ptr %l7, !tbaa !24
  %t123 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t126 = icmp sge i64 %t122, %t123
  store i1 %t126, ptr %l65, !tbaa !21
  br label %bb20
bb20:
  %t128 = load i1, ptr %l65, !tbaa !21
  br i1 %t128, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb23
bb22:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t130 = load i64, ptr @G_2ecompiler_2fscope_2ePosNone, !tbaa !24
  %t133 = icmp eq i64 %t129, %t130
  store i1 %t133, ptr %l69, !tbaa !21
  br label %bb23
bb23:
  %t135 = load i1, ptr %l69, !tbaa !21
  br i1 %t135, label %bb24, label %bb25
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l73, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l75, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t139 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t136, 0
  %t141 = insertvalue { { i64, ptr }, { i64, ptr } } %t139, { i64, ptr } %t137, 1
  store { { i64, ptr }, { i64, ptr } } %t141, ptr %l77
  %t142 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l77, i32 0, i32 0
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l78, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  store i64 %t145, ptr %l79, !tbaa !24
  %t146 = load i64, ptr %l79, !tbaa !24
  %t147 = mul i64 %t146, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t147)
  %t149 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l80, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = load i64, ptr %l79, !tbaa !24
  %t156 = mul i64 %t155, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t152, ptr %t154, i64 %t156, i1 false)
  %t157 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t158 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l77, i32 0, i32 0
  store { i64, ptr } %t157, ptr %t158, !tbaa !27
  %t159 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l77, i32 0, i32 1
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  store { i64, ptr } %t160, ptr %l81, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  store i64 %t162, ptr %l82, !tbaa !24
  %t163 = load i64, ptr %l82, !tbaa !24
  %t164 = mul i64 %t163, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t164)
  %t166 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  store { i64, ptr } %t167, ptr %l83, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = load i64, ptr %l82, !tbaa !24
  %t173 = mul i64 %t172, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t169, ptr %t171, i64 %t173, i1 false)
  %t174 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t175 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l77, i32 0, i32 1
  store { i64, ptr } %t174, ptr %t175, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t176 = load { { i64, ptr }, { i64, ptr } }, ptr %l77
  store { { i64, ptr }, { i64, ptr } } %t176, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l3, !tbaa !23
  %t179 = load ptr, ptr %l5, !tbaa !29
  %t180 = load i1, ptr %l2, !tbaa !21
  %t181 = load i64, ptr %l7, !tbaa !24
  %t187 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposName(ptr %v0, ptr %v0, ptr %s0, ptr %t177, i32 %t178, ptr %t179, i1 %t180, i64 %t181)
  store { i64, ptr } %t187, ptr %l89
  br label %bb27
bb27:
  %t188 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t188, ptr %l9, !tbaa !27
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load ptr, ptr %l5, !tbaa !29
  %t191 = load i1, ptr %l2, !tbaa !21
  %t192 = load i64, ptr %l7, !tbaa !24
  %t197 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyParamName(ptr %v0, ptr %v0, ptr %s0, ptr %t189, ptr %t190, i1 %t191, i64 %t192)
  store { i64, ptr } %t197, ptr %l94
  br label %bb28
bb28:
  %t198 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t198, ptr %l10, !tbaa !27
  %t199 = load i64, ptr %l8, !tbaa !24
  %t200 = load i64, ptr @G_2ecompiler_2fscope_2ePosResult, !tbaa !24
  %t203 = icmp eq i64 %t199, %t200
  br i1 %t203, label %bb29, label %bb30
bb29:
  %t205 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t206 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t209 = extractvalue { i64, ptr } %t205, 1
  %t210 = extractvalue { i64, ptr } %t205, 0
  %t211 = add i64 %t207, %t210
  %t212 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t211)
  call void @olang_textcopy(ptr %t212, ptr %t206, i64 %t207)
  %t213 = getelementptr i8, ptr %t212, i64 %t207
  call void @olang_textcopy(ptr %t213, ptr %t209, i64 %t210)
  %t214 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t212, 1
  %t216 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t217 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t218 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t220 = extractvalue { i64, ptr } %t216, 1
  %t221 = extractvalue { i64, ptr } %t216, 0
  %t222 = add i64 %t218, %t221
  %t223 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t226 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t225)
  call void @olang_textcopy(ptr %t226, ptr %t217, i64 %t218)
  %t227 = getelementptr i8, ptr %t226, i64 %t218
  call void @olang_textcopy(ptr %t227, ptr %t220, i64 %t221)
  %t228 = getelementptr i8, ptr %t227, i64 %t221
  call void @olang_textcopy(ptr %t228, ptr %t223, i64 %t224)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t226, 1
  %t232 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t215, 0
  %t234 = insertvalue { { i64, ptr }, { i64, ptr } } %t232, { i64, ptr } %t230, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t234, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t236 = load i64, ptr %l8, !tbaa !24
  %t237 = load i64, ptr @G_2ecompiler_2fscope_2ePosHome, !tbaa !24
  %t240 = icmp eq i64 %t236, %t237
  br i1 %t240, label %bb32, label %bb33
bb32:
  %t242 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t243 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t244 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t246 = extractvalue { i64, ptr } %t242, 1
  %t247 = extractvalue { i64, ptr } %t242, 0
  %t248 = add i64 %t244, %t247
  %t249 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t248)
  call void @olang_textcopy(ptr %t249, ptr %t243, i64 %t244)
  %t250 = getelementptr i8, ptr %t249, i64 %t244
  call void @olang_textcopy(ptr %t250, ptr %t246, i64 %t247)
  %t251 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t249, 1
  store { i64, ptr } %t252, ptr %l107, !tbaa !27
  %t253 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t253, ptr %l108, !tbaa !27
  %t254 = load i1, ptr %l2, !tbaa !21
  br i1 %t254, label %bb34, label %bb35
bb33:
  br label %bb37
bb34:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l110, !tbaa !27
  br label %bb36
bb35:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l110, !tbaa !27
  br label %bb36
bb36:
  %t256 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t258 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t261 = add i64 %t257, %t260
  %t262 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t264 = add i64 %t261, %t263
  %t265 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 1
  %t267 = extractvalue { i64, ptr } %t265, 0
  %t268 = add i64 %t264, %t267
  %t269 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t268)
  call void @olang_textcopy(ptr %t269, ptr %t256, i64 %t257)
  %t270 = getelementptr i8, ptr %t269, i64 %t257
  call void @olang_textcopy(ptr %t270, ptr %t259, i64 %t260)
  %t271 = getelementptr i8, ptr %t270, i64 %t260
  call void @olang_textcopy(ptr %t271, ptr %t262, i64 %t263)
  %t272 = getelementptr i8, ptr %t271, i64 %t263
  call void @olang_textcopy(ptr %t272, ptr %t266, i64 %t267)
  %t273 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t269, 1
  %t275 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t276 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t275, 0
  %t278 = insertvalue { { i64, ptr }, { i64, ptr } } %t276, { i64, ptr } %t274, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t278, ptr %rv
  br label %ret
bb37:
  %t280 = load i64, ptr %l8, !tbaa !24
  %t281 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t284 = icmp slt i64 %t280, %t281
  br i1 %t284, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s9
  %t286 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t286, ptr %l116, !tbaa !27
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load i32, ptr %l3, !tbaa !23
  %t289 = load ptr, ptr %l5, !tbaa !29
  %t290 = load i1, ptr %l2, !tbaa !21
  %t291 = load i64, ptr %l8, !tbaa !24
  %t297 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposName(ptr %v0, ptr %v0, ptr %s9, ptr %t287, i32 %t288, ptr %t289, i1 %t290, i64 %t291)
  store { i64, ptr } %t297, ptr %l122
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t298 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t299 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t300 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t300, 1
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t303 = add i64 %t299, %t302
  %t304 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t306 = add i64 %t303, %t305
  %t307 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t307, 1
  %t309 = extractvalue { i64, ptr } %t307, 0
  %t310 = add i64 %t306, %t309
  %t311 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t310)
  call void @olang_textcopy(ptr %t311, ptr %t298, i64 %t299)
  %t312 = getelementptr i8, ptr %t311, i64 %t299
  call void @olang_textcopy(ptr %t312, ptr %t301, i64 %t302)
  %t313 = getelementptr i8, ptr %t312, i64 %t302
  call void @olang_textcopy(ptr %t313, ptr %t304, i64 %t305)
  %t314 = getelementptr i8, ptr %t313, i64 %t305
  call void @olang_textcopy(ptr %t314, ptr %t308, i64 %t309)
  %t315 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t311, 1
  store { i64, ptr } %t316, ptr %l123, !tbaa !27
  %t317 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t317, ptr %l124, !tbaa !27
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load ptr, ptr %l5, !tbaa !29
  %t320 = load i1, ptr %l2, !tbaa !21
  %t321 = load i64, ptr %l8, !tbaa !24
  %t326 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyParamName(ptr %v0, ptr %v0, ptr %s9, ptr %t318, ptr %t319, i1 %t320, i64 %t321)
  store { i64, ptr } %t326, ptr %l129
  br label %bb41
bb41:
  %t327 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t329 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 1
  %t331 = extractvalue { i64, ptr } %t329, 0
  %t332 = add i64 %t328, %t331
  %t333 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t334 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t335 = add i64 %t332, %t334
  %t336 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t337 = extractvalue { i64, ptr } %t336, 1
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t339 = add i64 %t335, %t338
  %t340 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t341 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t342 = add i64 %t339, %t341
  %t343 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t342)
  call void @olang_textcopy(ptr %t343, ptr %t327, i64 %t328)
  %t344 = getelementptr i8, ptr %t343, i64 %t328
  call void @olang_textcopy(ptr %t344, ptr %t330, i64 %t331)
  %t345 = getelementptr i8, ptr %t344, i64 %t331
  call void @olang_textcopy(ptr %t345, ptr %t333, i64 %t334)
  %t346 = getelementptr i8, ptr %t345, i64 %t334
  call void @olang_textcopy(ptr %t346, ptr %t337, i64 %t338)
  %t347 = getelementptr i8, ptr %t346, i64 %t338
  call void @olang_textcopy(ptr %t347, ptr %t340, i64 %t341)
  %t348 = insertvalue { i64, ptr } undef, i64 %t342, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t343, 1
  %t350 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t351 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t350, 0
  %t353 = insertvalue { { i64, ptr }, { i64, ptr } } %t351, { i64, ptr } %t349, 1
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t353, ptr %rv
  br label %ret
bb42:
  %t355 = load i64, ptr %l8, !tbaa !24
  %t356 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t359 = sub i64 %t355, %t356
  %t361 = sdiv i64 %t359, 65536
  store i64 %t361, ptr %l11, !tbaa !24
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load i32, ptr %l3, !tbaa !23
  %t365 = load i64, ptr %l11, !tbaa !24
  %t366 = load i64, ptr %l8, !tbaa !24
  %t367 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t370 = sub i64 %t366, %t367
  %t372 = srem i64 %t370, 65536
  %t377 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedField(ptr %v0, ptr %s0, ptr %t363, i32 %t364, i64 %t365, i64 %t372)
  store { i64, ptr } %t377, ptr %l143
  br label %bb43
bb43:
  %t378 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t378, ptr %l12, !tbaa !27
  %t379 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t381 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t379, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t381, ptr %l145
  br label %bb44
bb44:
  %t382 = load i1, ptr %l145, !tbaa !21
  br i1 %t382, label %bb45, label %bb46
bb45:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l146, !tbaa !27
  %t383 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l148, !tbaa !27
  %t384 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t386 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t383, 0
  %t388 = insertvalue { { i64, ptr }, { i64, ptr } } %t386, { i64, ptr } %t384, 1
  store { { i64, ptr }, { i64, ptr } } %t388, ptr %l150
  %t389 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l150, i32 0, i32 0
  %t390 = load { i64, ptr }, ptr %t389, !tbaa !27
  store { i64, ptr } %t390, ptr %l151, !tbaa !27
  %t391 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t392 = extractvalue { i64, ptr } %t391, 0
  store i64 %t392, ptr %l152, !tbaa !24
  %t393 = load i64, ptr %l152, !tbaa !24
  %t394 = mul i64 %t393, 1
  %t395 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t394)
  %t396 = insertvalue { i64, ptr } undef, i64 %t393, 0
  %t397 = insertvalue { i64, ptr } %t396, ptr %t395, 1
  store { i64, ptr } %t397, ptr %l153, !tbaa !27
  %t398 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = load i64, ptr %l152, !tbaa !24
  %t403 = mul i64 %t402, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t399, ptr %t401, i64 %t403, i1 false)
  %t404 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t405 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l150, i32 0, i32 0
  store { i64, ptr } %t404, ptr %t405, !tbaa !27
  %t406 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l150, i32 0, i32 1
  %t407 = load { i64, ptr }, ptr %t406, !tbaa !27
  store { i64, ptr } %t407, ptr %l154, !tbaa !27
  %t408 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t408, 0
  store i64 %t409, ptr %l155, !tbaa !24
  %t410 = load i64, ptr %l155, !tbaa !24
  %t411 = mul i64 %t410, 1
  %t412 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t411)
  %t413 = insertvalue { i64, ptr } undef, i64 %t410, 0
  %t414 = insertvalue { i64, ptr } %t413, ptr %t412, 1
  store { i64, ptr } %t414, ptr %l156, !tbaa !27
  %t415 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !27
  %t417 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !27
  %t419 = load i64, ptr %l155, !tbaa !24
  %t420 = mul i64 %t419, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t416, ptr %t418, i64 %t420, i1 false)
  %t421 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t422 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l150, i32 0, i32 1
  store { i64, ptr } %t421, ptr %t422, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t423 = load { { i64, ptr }, { i64, ptr } }, ptr %l150
  store { { i64, ptr }, { i64, ptr } } %t423, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t424 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t424, ptr %l157, !tbaa !27
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t426 = load i32, ptr %l3, !tbaa !23
  %t427 = load ptr, ptr %l5, !tbaa !29
  %t428 = load i1, ptr %l2, !tbaa !21
  %t429 = load i64, ptr %l11, !tbaa !24
  %t435 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposName(ptr %v0, ptr %v0, ptr %s0, ptr %t425, i32 %t426, ptr %t427, i1 %t428, i64 %t429)
  store { i64, ptr } %t435, ptr %l163
  br label %bb48
bb48:
  %t436 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t437 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t438 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t439 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t440 = extractvalue { i64, ptr } %t439, 1
  %t441 = extractvalue { i64, ptr } %t439, 0
  %t442 = add i64 %t438, %t441
  %t443 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t444 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t445 = add i64 %t442, %t444
  %t446 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t446, 1
  %t448 = extractvalue { i64, ptr } %t446, 0
  %t449 = add i64 %t445, %t448
  %t450 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t452 = add i64 %t449, %t451
  %t454 = extractvalue { i64, ptr } %t436, 1
  %t455 = extractvalue { i64, ptr } %t436, 0
  %t456 = add i64 %t452, %t455
  %t457 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t456)
  call void @olang_textcopy(ptr %t457, ptr %t437, i64 %t438)
  %t458 = getelementptr i8, ptr %t457, i64 %t438
  call void @olang_textcopy(ptr %t458, ptr %t440, i64 %t441)
  %t459 = getelementptr i8, ptr %t458, i64 %t441
  call void @olang_textcopy(ptr %t459, ptr %t443, i64 %t444)
  %t460 = getelementptr i8, ptr %t459, i64 %t444
  call void @olang_textcopy(ptr %t460, ptr %t447, i64 %t448)
  %t461 = getelementptr i8, ptr %t460, i64 %t448
  call void @olang_textcopy(ptr %t461, ptr %t450, i64 %t451)
  %t462 = getelementptr i8, ptr %t461, i64 %t451
  call void @olang_textcopy(ptr %t462, ptr %t454, i64 %t455)
  %t463 = insertvalue { i64, ptr } undef, i64 %t456, 0
  %t464 = insertvalue { i64, ptr } %t463, ptr %t457, 1
  store { i64, ptr } %t464, ptr %l165, !tbaa !27
  %t465 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t465, ptr %l166, !tbaa !27
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load ptr, ptr %l5, !tbaa !29
  %t468 = load i1, ptr %l2, !tbaa !21
  %t469 = load i64, ptr %l11, !tbaa !24
  %t474 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyParamName(ptr %v0, ptr %v0, ptr %s0, ptr %t466, ptr %t467, i1 %t468, i64 %t469)
  store { i64, ptr } %t474, ptr %l171
  br label %bb49
bb49:
  %t475 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t476 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t477 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t478 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t478, 1
  %t480 = extractvalue { i64, ptr } %t478, 0
  %t481 = add i64 %t477, %t480
  %t482 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t483 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t484 = add i64 %t481, %t483
  %t485 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t486 = extractvalue { i64, ptr } %t485, 1
  %t487 = extractvalue { i64, ptr } %t485, 0
  %t488 = add i64 %t484, %t487
  %t489 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t490 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t491 = add i64 %t488, %t490
  %t493 = extractvalue { i64, ptr } %t475, 1
  %t494 = extractvalue { i64, ptr } %t475, 0
  %t495 = add i64 %t491, %t494
  %t496 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t497 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t498 = add i64 %t495, %t497
  %t499 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t498)
  call void @olang_textcopy(ptr %t499, ptr %t476, i64 %t477)
  %t500 = getelementptr i8, ptr %t499, i64 %t477
  call void @olang_textcopy(ptr %t500, ptr %t479, i64 %t480)
  %t501 = getelementptr i8, ptr %t500, i64 %t480
  call void @olang_textcopy(ptr %t501, ptr %t482, i64 %t483)
  %t502 = getelementptr i8, ptr %t501, i64 %t483
  call void @olang_textcopy(ptr %t502, ptr %t486, i64 %t487)
  %t503 = getelementptr i8, ptr %t502, i64 %t487
  call void @olang_textcopy(ptr %t503, ptr %t489, i64 %t490)
  %t504 = getelementptr i8, ptr %t503, i64 %t490
  call void @olang_textcopy(ptr %t504, ptr %t493, i64 %t494)
  %t505 = getelementptr i8, ptr %t504, i64 %t494
  call void @olang_textcopy(ptr %t505, ptr %t496, i64 %t497)
  %t506 = insertvalue { i64, ptr } undef, i64 %t498, 0
  %t507 = insertvalue { i64, ptr } %t506, ptr %t499, 1
  %t508 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t509 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t508, 0
  %t511 = insertvalue { { i64, ptr }, { i64, ptr } } %t509, { i64, ptr } %t507, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t511, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0) #0 {
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
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca i1
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
  %t8 = icmp eq i64 %t6, 2
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
  br label %bb32
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
  %t27 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %t25)
  store i1 %t27, ptr %l16
  br label %bb12
bb12:
  %t28 = load i1, ptr %l16, !tbaa !21
  store i1 %t28, ptr %l4, !tbaa !21
  br label %bb32
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
  %t36 = icmp eq i64 %t34, 4
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
  br label %bb20
bb18:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Elem", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %t47)
  store i1 %t49, ptr %l25
  br label %bb19
bb19:
  %t50 = load i1, ptr %l25, !tbaa !21
  store i1 %t50, ptr %l4, !tbaa !21
  br label %bb32
bb20:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb21, label %bb22
bb21:
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 8}
  %t58 = icmp eq i64 %t56, 5
  store i1 %t58, ptr %l27, !tbaa !21
  br label %bb22
bb22:
  %t59 = load i1, ptr %l27, !tbaa !21
  br i1 %t59, label %bb23, label %bb24
bb23:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l3, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Payload", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %t69)
  store i1 %t71, ptr %l34
  br label %bb26
bb26:
  %t72 = load i1, ptr %l34, !tbaa !21
  store i1 %t72, ptr %l4, !tbaa !21
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_aab467fd51570cd7_b7c12dbd63ae1fe3)
  unreachable
bb32:
  %t73 = load i1, ptr %l4, !tbaa !21
  store i1 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2eprojectedCall(ptr %v0, ptr %v1, ptr %a0) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i1
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t2 = load ptr, ptr %l14, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l14, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l15, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l15, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store ptr null, ptr %l13, !tbaa !29
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_764a523dff210c41_e3e3347f75b3332d)
  unreachable
bb11:
  %t19 = load ptr, ptr %l13, !tbaa !29
  store ptr %t19, ptr %l2, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  br i1 %t22, label %bb12, label %bb13
bb12:
  store ptr null, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  store i64 0, ptr %l3, !tbaa !24
  store i64 64, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb15, label %bb16
bb15:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb20
bb17:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l31, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb19
bb19:
  %t51 = load i64, ptr %l31, !tbaa !24
  store i64 %t51, ptr %l28, !tbaa !24
  br label %bb20
bb20:
  %t52 = load i64, ptr %l28, !tbaa !24
  store i64 %t52, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb21
bb21:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb22, label %bb23
bb22:
  br label %bb52
bb23:
  br label %bb24
bb24:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l8, !tbaa !24
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb25, label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_98383f10a7207879_8a1e77a14825545)
  unreachable
bb26:
  br label %bb27
bb27:
  %t75 = load ptr, ptr %l2, !tbaa !29
  store ptr %t75, ptr %l9, !tbaa !29
  %t77 = load ptr, ptr %l9, !tbaa !29
  store ptr %t77, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t78 = load ptr, ptr %l52, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb28, label %bb29
bb28:
  %t81 = load ptr, ptr %l52, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 8}
  %t84 = icmp eq i64 %t82, 3
  store i1 %t84, ptr %l53, !tbaa !21
  br label %bb29
bb29:
  %t85 = load i1, ptr %l53, !tbaa !21
  br i1 %t85, label %bb30, label %bb31
bb30:
  %t86 = load ptr, ptr %l9, !tbaa !29
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l10, !tbaa !29
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t92 = load ptr, ptr %l10, !tbaa !29
  store ptr %t92, ptr %l2, !tbaa !29
  br label %bb50
bb33:
  %t95 = load ptr, ptr %l9, !tbaa !29
  store ptr %t95, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t96 = load ptr, ptr %l60, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb34, label %bb35
bb34:
  %t99 = load ptr, ptr %l60, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 8}
  %t102 = icmp eq i64 %t100, 4
  store i1 %t102, ptr %l61, !tbaa !21
  br label %bb35
bb35:
  %t103 = load i1, ptr %l61, !tbaa !21
  br i1 %t103, label %bb36, label %bb37
bb36:
  %t104 = load ptr, ptr %l9, !tbaa !29
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t106, i32 0, i32 2
  %t108 = load ptr, ptr %t107
  store ptr %t108, ptr %l11, !tbaa !29
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t110 = load ptr, ptr %l11, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Elem", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  store ptr %t113, ptr %l2, !tbaa !29
  br label %bb50
bb39:
  %t116 = load ptr, ptr %l9, !tbaa !29
  store ptr %t116, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t117 = load ptr, ptr %l69, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb40, label %bb41
bb40:
  %t120 = load ptr, ptr %l69, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 8}
  %t123 = icmp eq i64 %t121, 6
  store i1 %t123, ptr %l70, !tbaa !21
  br label %bb41
bb41:
  %t124 = load i1, ptr %l70, !tbaa !21
  br i1 %t124, label %bb42, label %bb43
bb42:
  %t125 = load ptr, ptr %l9, !tbaa !29
  %t127 = getelementptr { i64, [4 x i64] }, ptr %t125, i32 0, i32 1
  %t128 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t127, i32 0, i32 2
  %t129 = load ptr, ptr %t128
  store ptr %t129, ptr %l12, !tbaa !29
  br label %bb44
bb43:
  br label %bb45
bb44:
  %t131 = load ptr, ptr %l12, !tbaa !29
  store ptr %t131, ptr %rv
  br label %ret
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store ptr null, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_412d1edc95755ceb_618602de92883937)
  unreachable
bb50:
  br label %bb51
bb51:
  %t135 = load i64, ptr %l7, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l7, !tbaa !24
  br label %bb21
bb52:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fscope_2ethroughElem(ptr %v0, ptr %a0) #0 {
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
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
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
  %t8 = icmp eq i64 %t6, 4
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
  br label %bb38
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
  %t27 = call i1 @compiler_2fscope_2ethroughElem(ptr %v0, ptr %t25)
  store i1 %t27, ptr %l16
  br label %bb12
bb12:
  %t28 = load i1, ptr %l16, !tbaa !21
  store i1 %t28, ptr %l4, !tbaa !21
  br label %bb38
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
  %t36 = icmp eq i64 %t34, 5
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
  br label %bb20
bb18:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Payload", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = call i1 @compiler_2fscope_2ethroughElem(ptr %v0, ptr %t47)
  store i1 %t49, ptr %l25
  br label %bb19
bb19:
  %t50 = load i1, ptr %l25, !tbaa !21
  store i1 %t50, ptr %l4, !tbaa !21
  br label %bb38
bb20:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb21, label %bb22
bb21:
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 8}
  %t58 = icmp eq i64 %t56, 2
  store i1 %t58, ptr %l27, !tbaa !21
  br label %bb22
bb22:
  %t59 = load i1, ptr %l27, !tbaa !21
  br i1 %t59, label %bb23, label %bb24
bb23:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l3, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t69 = call i1 @compiler_2fscope_2ethroughElemExpr(ptr %v0, ptr %t66)
  store i1 %t69, ptr %l34
  br label %bb26
bb26:
  %t70 = load i1, ptr %l34, !tbaa !21
  store i1 %t70, ptr %l4, !tbaa !21
  br label %bb38
bb27:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t72 = load ptr, ptr %l35, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb28, label %bb29
bb28:
  %t75 = load ptr, ptr %l35, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 8}
  %t78 = icmp eq i64 %t76, 6
  store i1 %t78, ptr %l36, !tbaa !21
  br label %bb29
bb29:
  %t79 = load i1, ptr %l36, !tbaa !21
  br i1 %t79, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_c25c9d2f1e472363_8be32a0de7941d67)
  unreachable
bb38:
  %t80 = load i1, ptr %l4, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d1 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c": memory: " }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d3 = private constant <{ i64, [112 x i8] }> <{ i64 0, [112 x i8] c": note: made here - handing on a value instead, or writing 'return' and the call, would let it go with its step\0A" }>, align 8
@.d4 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c": note: made here - a copy of what is kept ('$x', 'x.Copy()') would let it go with its turn\0A" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d7 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"memory: " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d8 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" placement" }>, align 8
@.d9 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c" made for a view kept longer than its storage (O27)\0A" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d12 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"memory: " }>, align 8
@.d13 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" placement" }>, align 8
@.d14 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c" made for a become's chain, kept as long as its first call's result (S21)\0A" }>, align 8
define internal i1 @olang_lambda_15(ptr %env, i1 %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 %a0, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" [" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d18 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"twins " }>, align 8
@.d19 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", with code of their own " }>, align 8
@.d20 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", captures followed " }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0) #0 {
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

@.d21 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"std/prelude/text" }>, align 8
@.d22 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
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

define internal i1 @olang_lambda_23(ptr %env, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  store i1 false, ptr %l2, !tbaa !21
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2ector(ptr %v0)
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

@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"borrows " }>, align 8
@.d34 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"gives back what '" }>, align 8
@.d35 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"' refers to" }>, align 8
@.d36 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"keeps " }>, align 8
@.d37 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"its instance" }>, align 8
@.d38 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"what it captured" }>, align 8
@.d39 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"keeps '" }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"' in " }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"keeps " }>, align 8
@.d42 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d43 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"keeps '" }>, align 8
@.d44 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"' in '" }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d47 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d49 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"keeps " }>, align 8
@.d50 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d52 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"keeps '" }>, align 8
@.d53 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"' in '" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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

@olang_loc_815ce866d8282155_e428af91c79b2b69 = external constant [0 x i8]
declare i1 @compiler_2fscope_2eisCapCode(i64 %a0)
@olang_loc_e28869e71ec53a97_6d2b94b7891eb373 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ePlacements(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eLen__H4d2672aa7d845ec0c6fc38a004384ece(ptr %v0, ptr %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"compiler/scope:Placement" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eAt_3ccompiler_2fscope_3aPlacement_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eView_3cBool_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2farray_2eArray_3cBool_3e_2eCount_3cBool_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eLen_H327daf8a5f05e7deba4c08807621a9fe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eAt__Hb06c5aa34d45867a1decef3b510ab43e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hbb62dd24bb9d6650f5b387479de8a86f(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallsAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f283d3e51abc3259_cd3e85ac91a669a5 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunderOf(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
@olang_loc_707d6e13efba424b_e32702988c40a9af = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_5cb72587228936ff_1a6837af5c2cdca3 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecallsItself(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferClaims(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeOnce(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edone(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
@olang_loc_55a665eedd831f0e_1c92b15ee56319f2 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2ePlaceView = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_7348807c7ba2826c_db6342dcac0c01d0 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_d29996678377eee3_d1b974339c283baf = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fscope_2edropKeyed_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2edropKeyed_3cBool_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2edropKeyed_3ccompiler_2fscope_3aplacedRow_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2edropKeyed_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExprRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
@olang_loc_e9ea5d5d3867ce51_dfb99b888a23f285 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7a90b7bdb9714c43_1678fcc4f66eb1af = external constant [0 x i8]
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeyRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H9c3932eb53016bf6f47a08eef06aacbe(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esomeUncovered(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_fe279d5820b85dad_458b53b3da9c6ff1 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/scope:placeSlot" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eslotOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebindingUnknown(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eeqAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldBindingUnknown(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_3f83cc843b74f60a_734d81dd8b549c1e = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3, ptr %a4, i64 %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fscope_2eregionLocal(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereassigned(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2eregionRoot(ptr %v0, ptr %a0)
@olang_loc_5522d97a67b9c6cd_b4761099589b85d1 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econstCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ematchMadeHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_717fbf6233ca6ed7_9b693e4aa4ffeed3 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsHome(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
@olang_loc_5073d45cb29e2b2c_5271f582f3c3830 = external constant [0 x i8]
@olang_loc_e97645627b4ddb42_25acdb187fd0af56 = external constant [0 x i8]
@olang_loc_1193222288ba1b5a_e9751e9a82c409de = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_677694645a0d3ce1_ddba560673e185 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParams(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_46d6c69b453c665f_cff2ba6bc4bd85db = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunPromoted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_656a50bef236af79_704de06f4de36bbd = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_b076c1f6c97c7ed4_fcdcfd5688cdce70 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eocStmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i1 %a4)
@olang_loc_e92fb2d155625a74_c88e6cd6ff5e81b8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
@olang_loc_f8f6531b7e7caa03_cb21dd644e652dd7 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_702142de3e583242_5b34302bf43ef4be = external constant [0 x i8]
@olang_loc_6b87ff60a3433260_ddeea5c0b8316e1c = external constant [0 x i8]
declare i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0)
@olang_loc_dc42a5a165461c34_eb9bc5161264db10 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorThroughRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionParam(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f5041371eec86b2_55455b7784c43256 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_41b194f396ff5aba_8e762fa3be794326 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efoundOr(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
@olang_loc_68659d99246c63c8_1993ced10b5a02b4 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H4d9dd4678cabff1b2f88ea0996ab01db(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcfaf91d2f69b0f478c1276e68071930d(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopenAt(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2ftyped_3aExpr_26_3e_2eEvery_3ccompiler_2ftyped_3aExpr_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
@olang_loc_ecfbbef7cda902e1_3bafa02f8f932e5d = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_H146d7ec8c8d698270e6878a3ddf78bf0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_5940eb06b2dde928_1562a964672b5f14 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erootOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePurePlace(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinnable(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2esortedRecs(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eseedOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/scope:fnRecs" %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinMarked(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinLimited(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinRoom(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enewTwin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, ptr %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudgeTwin(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueOK(ptr %v0, ptr %a0, i64 %a1, i1 %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_32e8be698fa34edf_ce62f399ed2770f3 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_a44d9e5ac8889d36_f62ebd6095d4b7fa = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundEdges(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundTerm(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3, i64 %a4)
@G_2ecompiler_2fscope_2ePosResult = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare %"compiler/scope:rel" @compiler_2fscope_3arel_2ector(ptr %v0, { i64, [2 x i64] } %a0, { i64, [2 x i64] } %a1, i1 %a2, %"compiler/source:Span" %a3, i64 %a4, i1 %a5, i1 %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, %"compiler/scope:rel" %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5a7a0b628e28a39_53e329e973d10c8d = external constant [0 x i8]
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, { i64, [2 x i64] } %a3)
@G_2ecompiler_2fscope_2ePosDerived = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\01\00\00" }>, align 8
@G_2ecompiler_2fscope_2ePosNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, i1 %a3, i64 %a4)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyParamName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
@G_2ecompiler_2fscope_2ePosHome = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedField(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i64 %a3)
@olang_loc_aab467fd51570cd7_b7c12dbd63ae1fe3 = external constant [0 x i8]
@olang_loc_764a523dff210c41_e3e3347f75b3332d = external constant [0 x i8]
@olang_loc_98383f10a7207879_8a1e77a14825545 = external constant [0 x i8]
@olang_loc_412d1edc95755ceb_618602de92883937 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ethroughElemExpr(ptr %v0, ptr %a0)
@olang_loc_c25c9d2f1e472363_8be32a0de7941d67 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2ector(ptr %v0)

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
